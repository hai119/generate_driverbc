; ModuleID = '../bcout/drivers/staging/comedi/drivers/dt9812.llvm.bc'
source_filename = "drivers/staging/comedi/drivers/dt9812.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_dt9812_driver_init6:\09\09\09"
module asm ".long\09dt9812_driver_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.comedi_driver = type { %struct.comedi_driver*, i8*, %struct.module*, i32 (%struct.comedi_device*, %struct.comedi_devconfig*)*, void (%struct.comedi_device*)*, i32 (%struct.comedi_device*, i64)*, i32, i8**, i32 }
%struct.module = type opaque
%struct.comedi_device = type { i32, %struct.comedi_driver*, %struct.comedi_8254*, i8*, %struct.device*, i32, i32, %struct.device*, i8*, i8*, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, %struct.comedi_subdevice*, i8*, i64, i64, i32, %struct.comedi_subdevice*, %struct.comedi_subdevice*, %struct.fasync_struct*, i32 (%struct.comedi_device*)*, void (%struct.comedi_device*)*, i32 (%struct.comedi_device*, %struct.comedi_insn*, i32*)*, i32 (%struct.comedi_device*, i32, i32*)* }
%struct.comedi_8254 = type opaque
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.64, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.64 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type { %union.anon, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.62, %struct.list_head, %struct.list_head, %union.anon.63 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.0, i8* }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.60 }
%union.anon.60 = type { %struct.anon.61 }
%struct.anon.61 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, i32, %struct.fsnotify_mark_connector*, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.super_block*, %struct.page*, i32)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.page = type { i64, %union.anon.1, %union.anon.52, %struct.atomic_t, [8 x i8] }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.52 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.53, i32 }
%union.anon.53 = type { %struct.kuid_t }
%struct.mem_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.kprojid_t = type { i32 }
%struct.quotactl_ops = type { i32 (%struct.super_block*, i32, i32, %struct.path*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32, %struct.qc_info*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.kqid*, %struct.qc_dqblk*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.qc_state*)*, i32 (%struct.super_block*, i32)* }
%struct.qc_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qc_dqblk = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32 }
%struct.qc_state = type { i32, [3 x %struct.qc_type_state] }
%struct.qc_type_state = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.export_operations = type opaque
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
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.45, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.mm_struct = type { %struct.anon.15, [0 x i64] }
%struct.anon.15 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.16, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.16 = type { %struct.rb_node, i64 }
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
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.17 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.22, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.23, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.24, %union.anon.28, %struct.key_restriction* }
%union.anon.22 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.23 = type { i64 }
%union.anon.24 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.25, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.25 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.28 = type { %union.key_payload }
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
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.31, %union.anon.32, i32 }
%struct.request_queue = type opaque
%union.anon.31 = type { %struct.list_head }
%union.anon.32 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.33 }
%struct.anon.33 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.37 }
%struct.anon.37 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.44, i32, [12 x i8] }
%union.anon.44 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.45 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.vm_struct = type { %struct.vm_struct*, i8*, i64, i64, %struct.page**, i32, i64, i8* }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { [3 x %struct.desc_struct], i64, i16, i16, i16, i16, i64, i64, [4 x %struct.perf_event*], i64, i64, i64, i64, i64, %struct.io_bitmap*, i64, i8, [47 x i8], %struct.fpu }
%struct.desc_struct = type { i16, i16, i32 }
%struct.perf_event = type opaque
%struct.io_bitmap = type opaque
%struct.fpu = type { i32, i64, [48 x i8], %union.fpregs_state }
%union.fpregs_state = type { %struct.xregs_state, [3520 x i8] }
%struct.xregs_state = type { %struct.fxregs_state, %struct.xstate_header, [0 x i8] }
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.46, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.49 }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { i64, i64 }
%union.anon.49 = type { [12 x i32] }
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
%union.anon.62 = type { %struct.list_head }
%union.anon.63 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.54, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.55, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.56, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.59, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%union.anon.54 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.55 = type { %struct.callback_head }
%union.anon.56 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.4 }
%union.anon.4 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.59 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.57 }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.57 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.atomic64_t = type { i64 }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.30 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.30 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.seq_file = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, void (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.vm_area_struct*, i32, i32, i64, i64, %struct.pmd_t*, %struct.pud_t*, %struct.pte_t, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.pte_t = type { i64 }
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
%struct.irq_domain = type opaque
%struct.dma_map_ops = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i64 }
%struct.dev_archdata = type {}
%struct.device_node = type opaque
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.comedi_subdevice = type { %struct.comedi_device*, i32, i32, i32, i32, i32, i8*, %struct.comedi_async*, i8*, i8*, i32, %struct.spinlock, i32, i32, i32*, %struct.comedi_lrange*, %struct.comedi_lrange**, i32*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)*, void (%struct.comedi_device*, %struct.comedi_subdevice*, i8*, i32, i32)*, i32, i32, %struct.device*, i32, i32* }
%struct.comedi_async = type { i8*, i32, %struct.comedi_buf_map*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.comedi_cmd, %struct.wait_queue_head, i32, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* }
%struct.comedi_buf_map = type { %struct.device*, %struct.comedi_buf_page*, i32, i32, %struct.kref }
%struct.comedi_buf_page = type { i8*, i64 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i16*, i32 }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.comedi_insn = type { i32, i32, i32*, i32, i32, [3 x i32] }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.comedi_devconfig = type { [20 x i8], [32 x i32] }
%struct.usb_driver = type { i8*, i32 (%struct.usb_interface*, %struct.usb_device_id*)*, void (%struct.usb_interface*)*, i32 (%struct.usb_interface*, i32, i8*)*, i32 (%struct.usb_interface*, i32)*, i32 (%struct.usb_interface*)*, i32 (%struct.usb_interface*)*, i32 (%struct.usb_interface*)*, i32 (%struct.usb_interface*)*, %struct.usb_device_id*, %struct.attribute_group**, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_interface = type { %struct.usb_host_interface*, %struct.usb_host_interface*, i32, %struct.usb_interface_assoc_descriptor*, i32, i32, i8, %struct.device, %struct.device*, %struct.work_struct }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, i8*, %struct.usb_host_endpoint*, i8* }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, i8*, %struct.ep_device*, i8*, i32, i32, i32, [4 x i8] }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.ep_device = type opaque
%struct.usb_interface_assoc_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i64 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.dt9812_private = type { %struct.mutex, %struct.anon.65, %struct.anon.65, i16 }
%struct.anon.65 = type { i8, i64 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, %struct.usb_tt*, i32, [2 x i32], [4 x i8], %struct.usb_device*, %struct.usb_bus*, %struct.usb_host_endpoint, %struct.device, %struct.usb_device_descriptor, [6 x i8], %struct.usb_host_bos*, %struct.usb_host_config*, %struct.usb_host_config*, [16 x %struct.usb_host_endpoint*], [16 x %struct.usb_host_endpoint*], i8**, i16, i8, i8, i8, i16, i8, i32, [4 x i8], i8*, i8*, i8*, %struct.list_head, i32, i32, %struct.atomic_t, [4 x i8], i64, i64, i8, [7 x i8], %struct.wusb_dev*, i32, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, i8 }>
%struct.usb_tt = type opaque
%struct.usb_bus = type { %struct.device*, %struct.device*, i32, i8*, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, %struct.usb_device*, %struct.usb_bus*, i32, i32, i32, i32 }
%struct.usb_devmap = type { [2 x i64] }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb_host_bos = type { %struct.usb_bos_descriptor*, %struct.usb_ext_cap_descriptor*, %struct.usb_ss_cap_descriptor*, %struct.usb_ssp_cap_descriptor*, %struct.usb_ss_container_id_descriptor*, %struct.usb_ptm_cap_descriptor* }
%struct.usb_bos_descriptor = type <{ i8, i8, i16, i8 }>
%struct.usb_ext_cap_descriptor = type <{ i8, i8, i8, i32 }>
%struct.usb_ss_cap_descriptor = type { i8, i8, i8, i8, i16, i8, i8, i16 }
%struct.usb_ssp_cap_descriptor = type { i8, i8, i8, i8, i32, i16, i16, [1 x i32] }
%struct.usb_ss_container_id_descriptor = type { i8, i8, i8, i8, [16 x i8] }
%struct.usb_ptm_cap_descriptor = type { i8, i8, i8 }
%struct.usb_host_config = type { %struct.usb_config_descriptor, i8*, [16 x %struct.usb_interface_assoc_descriptor*], [32 x %struct.usb_interface*], [32 x %struct.usb_interface_cache*], i8*, i32 }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_interface_cache = type { i32, %struct.kref, [0 x %struct.usb_host_interface] }
%struct.wusb_dev = type opaque
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.dt9812_usb_cmd = type { i32, %union.anon.66 }
%union.anon.66 = type { %struct.dt9812_flash_data, [24 x i8] }
%struct.dt9812_flash_data = type { i16, i16 }
%struct.dt9812_read_multi = type { i8, [27 x i8] }
%struct.dt9812_write_multi = type { i8, [13 x %struct.dt9812_write_byte] }
%struct.dt9812_write_byte = type { i8, i8 }
%struct.dt9812_rmw_byte = type { i8, i8, i8 }
%struct.dt9812_rmw_multi = type { i8, [9 x %struct.dt9812_rmw_byte] }

@__UNIQUE_ID___addressable_dt9812_driver_init238 = internal global i8* bitcast (i32 ()* @dt9812_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@dt9812_driver = internal global %struct.comedi_driver { %struct.comedi_driver* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), %struct.module* null, i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* null, void (%struct.comedi_device*)* @dt9812_detach, i32 (%struct.comedi_device*, i64)* @dt9812_auto_attach, i32 0, i8** null, i32 0 }, align 8, !dbg !233
@dt9812_usb_driver = internal global %struct.usb_driver { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 (%struct.usb_interface*, %struct.usb_device_id*)* @dt9812_usb_probe, void (%struct.usb_interface*)* @comedi_usb_auto_unconfig, i32 (%struct.usb_interface*, i32, i8*)* null, i32 (%struct.usb_interface*, i32)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, %struct.usb_device_id* getelementptr inbounds ([2 x %struct.usb_device_id], [2 x %struct.usb_device_id]* @dt9812_usb_table, i32 0, i32 0), %struct.attribute_group** null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, align 8, !dbg !4054
@__exitcall_dt9812_driver_exit = internal global void ()* @dt9812_driver_exit, section ".exitcall.exit", align 8, !dbg !204
@__UNIQUE_ID_author239 = internal constant [63 x i8] c"dt9812.author=Anders Blomdell <anders.blomdell@control.lth.se>\00", section ".modinfo", align 1, !dbg !211
@__UNIQUE_ID_description240 = internal constant [40 x i8] c"dt9812.description=Comedi DT9812 driver\00", section ".modinfo", align 1, !dbg !218
@__UNIQUE_ID_file241 = internal constant [50 x i8] c"dt9812.file=drivers/staging/comedi/drivers/dt9812\00", section ".modinfo", align 1, !dbg !223
@__UNIQUE_ID_license242 = internal constant [19 x i8] c"dt9812.license=GPL\00", section ".modinfo", align 1, !dbg !228
@.str = private unnamed_addr constant [7 x i8] c"dt9812\00", align 1
@dt9812_auto_attach.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4051
@.str.1 = private unnamed_addr constant [14 x i8] c"&devpriv->mut\00", align 1
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@range_unipolar2_5 = external dso_local constant %struct.comedi_lrange, align 4
@range_bipolar10 = external dso_local constant %struct.comedi_lrange, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Wrong number of endpoints\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Endpoint has wrong direction\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"unable to reset configuration\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"failed to read vendor id\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"failed to read product id\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"failed to read device id\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"failed to read serial number\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"USB DT9812 (%4.4x.%4.4x.%4.4x) #0x%8.8x\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"Unsupported device!\0A\00", align 1
@__const.dt9812_digital_in.reg = private unnamed_addr constant [2 x i8] c"\B0\90", align 1
@__const.dt9812_digital_out.reg = private unnamed_addr constant [1 x i8] c"\A0", align 1
@__const.dt9812_analog_in.reg = private unnamed_addr constant [3 x i8] c"\E8\BF\BE", align 1
@dt9812_usb_table = internal constant [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 2151, i16 -26606, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 0 }, %struct.usb_device_id zeroinitializer], align 16, !dbg !4204
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_dt9812_driver_init238 to i8*), i8* bitcast (void ()* @dt9812_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_dt9812_driver_exit to i8*), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__UNIQUE_ID_author239, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__UNIQUE_ID_description240, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__UNIQUE_ID_file241, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__UNIQUE_ID_license242, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @dt9812_driver_init() #0 section ".init.text" !dbg !4212 {
entry:
  %call = call i32 @comedi_usb_driver_register(%struct.comedi_driver* @dt9812_driver, %struct.usb_driver* @dt9812_usb_driver) #6, !dbg !4215
  ret i32 %call, !dbg !4215
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @dt9812_driver_exit() #0 section ".exit.text" !dbg !4216 {
entry:
  call void @comedi_usb_driver_unregister(%struct.comedi_driver* @dt9812_driver, %struct.usb_driver* @dt9812_usb_driver) #6, !dbg !4217
  ret void, !dbg !4217
}

; Function Attrs: noredzone
declare dso_local void @comedi_usb_driver_unregister(%struct.comedi_driver*, %struct.usb_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_usb_driver_register(%struct.comedi_driver*, %struct.usb_driver*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dt9812_detach(%struct.comedi_device* %dev) #2 !dbg !4218 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %intf = alloca %struct.usb_interface*, align 8
  %devpriv = alloca %struct.dt9812_private*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4219, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf, metadata !4221, metadata !DIExpression()), !dbg !4222
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4223
  %call = call %struct.usb_interface* @comedi_to_usb_interface(%struct.comedi_device* %0) #6, !dbg !4224
  store %struct.usb_interface* %call, %struct.usb_interface** %intf, align 8, !dbg !4222
  call void @llvm.dbg.declare(metadata %struct.dt9812_private** %devpriv, metadata !4225, metadata !DIExpression()), !dbg !4237
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4238
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %1, i32 0, i32 3, !dbg !4239
  %2 = load i8*, i8** %private, align 8, !dbg !4239
  %3 = bitcast i8* %2 to %struct.dt9812_private*, !dbg !4238
  store %struct.dt9812_private* %3, %struct.dt9812_private** %devpriv, align 8, !dbg !4237
  %4 = load %struct.dt9812_private*, %struct.dt9812_private** %devpriv, align 8, !dbg !4240
  %tobool = icmp ne %struct.dt9812_private* %4, null, !dbg !4240
  br i1 %tobool, label %if.end, label %if.then, !dbg !4242

if.then:                                          ; preds = %entry
  br label %return, !dbg !4243

if.end:                                           ; preds = %entry
  %5 = load %struct.dt9812_private*, %struct.dt9812_private** %devpriv, align 8, !dbg !4244
  %mut = getelementptr inbounds %struct.dt9812_private, %struct.dt9812_private* %5, i32 0, i32 0, !dbg !4245
  call void @mutex_destroy(%struct.mutex* %mut) #6, !dbg !4246
  %6 = load %struct.usb_interface*, %struct.usb_interface** %intf, align 8, !dbg !4247
  call void @usb_set_intfdata(%struct.usb_interface* %6, i8* null) #6, !dbg !4248
  br label %return, !dbg !4249

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4249
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dt9812_auto_attach(%struct.comedi_device* %dev, i64 %context) #2 !dbg !4053 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %context.addr = alloca i64, align 8
  %intf = alloca %struct.usb_interface*, align 8
  %devpriv = alloca %struct.dt9812_private*, align 8
  %s = alloca %struct.comedi_subdevice*, align 8
  %is_unipolar = alloca i8, align 1
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4250, metadata !DIExpression()), !dbg !4251
  store i64 %context, i64* %context.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %context.addr, metadata !4252, metadata !DIExpression()), !dbg !4253
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf, metadata !4254, metadata !DIExpression()), !dbg !4255
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4256
  %call = call %struct.usb_interface* @comedi_to_usb_interface(%struct.comedi_device* %0) #6, !dbg !4257
  store %struct.usb_interface* %call, %struct.usb_interface** %intf, align 8, !dbg !4255
  call void @llvm.dbg.declare(metadata %struct.dt9812_private** %devpriv, metadata !4258, metadata !DIExpression()), !dbg !4259
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s, metadata !4260, metadata !DIExpression()), !dbg !4261
  call void @llvm.dbg.declare(metadata i8* %is_unipolar, metadata !4262, metadata !DIExpression()), !dbg !4263
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4264, metadata !DIExpression()), !dbg !4265
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4266, metadata !DIExpression()), !dbg !4267
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4268
  %call1 = call i8* @comedi_alloc_devpriv(%struct.comedi_device* %1, i64 64) #6, !dbg !4269
  %2 = bitcast i8* %call1 to %struct.dt9812_private*, !dbg !4269
  store %struct.dt9812_private* %2, %struct.dt9812_private** %devpriv, align 8, !dbg !4270
  %3 = load %struct.dt9812_private*, %struct.dt9812_private** %devpriv, align 8, !dbg !4271
  %tobool = icmp ne %struct.dt9812_private* %3, null, !dbg !4271
  br i1 %tobool, label %if.end, label %if.then, !dbg !4273

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !4274
  br label %return, !dbg !4274

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !4275

do.body:                                          ; preds = %if.end
  %4 = load %struct.dt9812_private*, %struct.dt9812_private** %devpriv, align 8, !dbg !4276
  %mut = getelementptr inbounds %struct.dt9812_private, %struct.dt9812_private* %4, i32 0, i32 0, !dbg !4276
  call void @__mutex_init(%struct.mutex* %mut, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.lock_class_key* @dt9812_auto_attach.__key) #6, !dbg !4276
  br label %do.end, !dbg !4276

do.end:                                           ; preds = %do.body
  %5 = load %struct.usb_interface*, %struct.usb_interface** %intf, align 8, !dbg !4278
  %6 = load %struct.dt9812_private*, %struct.dt9812_private** %devpriv, align 8, !dbg !4279
  %7 = bitcast %struct.dt9812_private* %6 to i8*, !dbg !4279
  call void @usb_set_intfdata(%struct.usb_interface* %5, i8* %7) #6, !dbg !4280
  %8 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4281
  %call2 = call i32 @dt9812_find_endpoints(%struct.comedi_device* %8) #6, !dbg !4282
  store i32 %call2, i32* %ret, align 4, !dbg !4283
  %9 = load i32, i32* %ret, align 4, !dbg !4284
  %tobool3 = icmp ne i32 %9, 0, !dbg !4284
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4286

if.then4:                                         ; preds = %do.end
  %10 = load i32, i32* %ret, align 4, !dbg !4287
  store i32 %10, i32* %retval, align 4, !dbg !4288
  br label %return, !dbg !4288

if.end5:                                          ; preds = %do.end
  %11 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4289
  %call6 = call i32 @dt9812_reset_device(%struct.comedi_device* %11) #6, !dbg !4290
  store i32 %call6, i32* %ret, align 4, !dbg !4291
  %12 = load i32, i32* %ret, align 4, !dbg !4292
  %tobool7 = icmp ne i32 %12, 0, !dbg !4292
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !4294

if.then8:                                         ; preds = %if.end5
  %13 = load i32, i32* %ret, align 4, !dbg !4295
  store i32 %13, i32* %retval, align 4, !dbg !4296
  br label %return, !dbg !4296

if.end9:                                          ; preds = %if.end5
  %14 = load %struct.dt9812_private*, %struct.dt9812_private** %devpriv, align 8, !dbg !4297
  %device = getelementptr inbounds %struct.dt9812_private, %struct.dt9812_private* %14, i32 0, i32 3, !dbg !4298
  %15 = load i16, i16* %device, align 8, !dbg !4298
  %conv = zext i16 %15 to i32, !dbg !4297
  %cmp = icmp eq i32 %conv, 1, !dbg !4299
  %frombool = zext i1 %cmp to i8, !dbg !4300
  store i8 %frombool, i8* %is_unipolar, align 1, !dbg !4300
  %16 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4301
  %call11 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %16, i32 4) #6, !dbg !4302
  store i32 %call11, i32* %ret, align 4, !dbg !4303
  %17 = load i32, i32* %ret, align 4, !dbg !4304
  %tobool12 = icmp ne i32 %17, 0, !dbg !4304
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !4306

if.then13:                                        ; preds = %if.end9
  %18 = load i32, i32* %ret, align 4, !dbg !4307
  store i32 %18, i32* %retval, align 4, !dbg !4308
  br label %return, !dbg !4308

if.end14:                                         ; preds = %if.end9
  %19 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4309
  %subdevices = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 16, !dbg !4310
  %20 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices, align 8, !dbg !4310
  %arrayidx = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %20, i64 0, !dbg !4309
  store %struct.comedi_subdevice* %arrayidx, %struct.comedi_subdevice** %s, align 8, !dbg !4311
  %21 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4312
  %type = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %21, i32 0, i32 2, !dbg !4313
  store i32 3, i32* %type, align 4, !dbg !4314
  %22 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4315
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %22, i32 0, i32 4, !dbg !4316
  store i32 65536, i32* %subdev_flags, align 4, !dbg !4317
  %23 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4318
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %23, i32 0, i32 3, !dbg !4319
  store i32 8, i32* %n_chan, align 8, !dbg !4320
  %24 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4321
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %24, i32 0, i32 13, !dbg !4322
  store i32 1, i32* %maxdata, align 8, !dbg !4323
  %25 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4324
  %range_table = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %25, i32 0, i32 15, !dbg !4325
  store %struct.comedi_lrange* @range_unipolar5, %struct.comedi_lrange** %range_table, align 8, !dbg !4326
  %26 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4327
  %insn_bits = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %26, i32 0, i32 20, !dbg !4328
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @dt9812_di_insn_bits, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_bits, align 8, !dbg !4329
  %27 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4330
  %subdevices15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %27, i32 0, i32 16, !dbg !4331
  %28 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices15, align 8, !dbg !4331
  %arrayidx16 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %28, i64 1, !dbg !4330
  store %struct.comedi_subdevice* %arrayidx16, %struct.comedi_subdevice** %s, align 8, !dbg !4332
  %29 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4333
  %type17 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %29, i32 0, i32 2, !dbg !4334
  store i32 4, i32* %type17, align 4, !dbg !4335
  %30 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4336
  %subdev_flags18 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %30, i32 0, i32 4, !dbg !4337
  store i32 131072, i32* %subdev_flags18, align 4, !dbg !4338
  %31 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4339
  %n_chan19 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %31, i32 0, i32 3, !dbg !4340
  store i32 8, i32* %n_chan19, align 8, !dbg !4341
  %32 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4342
  %maxdata20 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %32, i32 0, i32 13, !dbg !4343
  store i32 1, i32* %maxdata20, align 8, !dbg !4344
  %33 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4345
  %range_table21 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %33, i32 0, i32 15, !dbg !4346
  store %struct.comedi_lrange* @range_unipolar5, %struct.comedi_lrange** %range_table21, align 8, !dbg !4347
  %34 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4348
  %insn_bits22 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %34, i32 0, i32 20, !dbg !4349
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @dt9812_do_insn_bits, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_bits22, align 8, !dbg !4350
  %35 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4351
  %subdevices23 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %35, i32 0, i32 16, !dbg !4352
  %36 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices23, align 8, !dbg !4352
  %arrayidx24 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %36, i64 2, !dbg !4351
  store %struct.comedi_subdevice* %arrayidx24, %struct.comedi_subdevice** %s, align 8, !dbg !4353
  %37 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4354
  %type25 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %37, i32 0, i32 2, !dbg !4355
  store i32 1, i32* %type25, align 4, !dbg !4356
  %38 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4357
  %subdev_flags26 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %38, i32 0, i32 4, !dbg !4358
  store i32 1114112, i32* %subdev_flags26, align 4, !dbg !4359
  %39 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4360
  %n_chan27 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %39, i32 0, i32 3, !dbg !4361
  store i32 8, i32* %n_chan27, align 8, !dbg !4362
  %40 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4363
  %maxdata28 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %40, i32 0, i32 13, !dbg !4364
  store i32 4095, i32* %maxdata28, align 8, !dbg !4365
  %41 = load i8, i8* %is_unipolar, align 1, !dbg !4366
  %tobool29 = trunc i8 %41 to i1, !dbg !4366
  %42 = zext i1 %tobool29 to i64, !dbg !4366
  %cond = select i1 %tobool29, %struct.comedi_lrange* @range_unipolar2_5, %struct.comedi_lrange* @range_bipolar10, !dbg !4366
  %43 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4367
  %range_table31 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %43, i32 0, i32 15, !dbg !4368
  store %struct.comedi_lrange* %cond, %struct.comedi_lrange** %range_table31, align 8, !dbg !4369
  %44 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4370
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %44, i32 0, i32 18, !dbg !4371
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @dt9812_ai_insn_read, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_read, align 8, !dbg !4372
  %45 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4373
  %subdevices32 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %45, i32 0, i32 16, !dbg !4374
  %46 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices32, align 8, !dbg !4374
  %arrayidx33 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %46, i64 3, !dbg !4373
  store %struct.comedi_subdevice* %arrayidx33, %struct.comedi_subdevice** %s, align 8, !dbg !4375
  %47 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4376
  %type34 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %47, i32 0, i32 2, !dbg !4377
  store i32 2, i32* %type34, align 4, !dbg !4378
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4379
  %subdev_flags35 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %48, i32 0, i32 4, !dbg !4380
  store i32 131072, i32* %subdev_flags35, align 4, !dbg !4381
  %49 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4382
  %n_chan36 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %49, i32 0, i32 3, !dbg !4383
  store i32 2, i32* %n_chan36, align 8, !dbg !4384
  %50 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4385
  %maxdata37 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %50, i32 0, i32 13, !dbg !4386
  store i32 4095, i32* %maxdata37, align 8, !dbg !4387
  %51 = load i8, i8* %is_unipolar, align 1, !dbg !4388
  %tobool38 = trunc i8 %51 to i1, !dbg !4388
  %52 = zext i1 %tobool38 to i64, !dbg !4388
  %cond40 = select i1 %tobool38, %struct.comedi_lrange* @range_unipolar2_5, %struct.comedi_lrange* @range_bipolar10, !dbg !4388
  %53 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4389
  %range_table41 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %53, i32 0, i32 15, !dbg !4390
  store %struct.comedi_lrange* %cond40, %struct.comedi_lrange** %range_table41, align 8, !dbg !4391
  %54 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4392
  %insn_write = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %54, i32 0, i32 19, !dbg !4393
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @dt9812_ao_insn_write, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_write, align 8, !dbg !4394
  %55 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4395
  %insn_read42 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %55, i32 0, i32 18, !dbg !4396
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @dt9812_ao_insn_read, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_read42, align 8, !dbg !4397
  %56 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4398
  %call43 = call i32 @comedi_alloc_subdev_readback(%struct.comedi_subdevice* %56) #6, !dbg !4399
  store i32 %call43, i32* %ret, align 4, !dbg !4400
  %57 = load i32, i32* %ret, align 4, !dbg !4401
  %tobool44 = icmp ne i32 %57, 0, !dbg !4401
  br i1 %tobool44, label %if.then45, label %if.end46, !dbg !4403

if.then45:                                        ; preds = %if.end14
  %58 = load i32, i32* %ret, align 4, !dbg !4404
  store i32 %58, i32* %retval, align 4, !dbg !4405
  br label %return, !dbg !4405

if.end46:                                         ; preds = %if.end14
  store i32 0, i32* %i, align 4, !dbg !4406
  br label %for.cond, !dbg !4408

for.cond:                                         ; preds = %for.inc, %if.end46
  %59 = load i32, i32* %i, align 4, !dbg !4409
  %60 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4411
  %n_chan47 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %60, i32 0, i32 3, !dbg !4412
  %61 = load i32, i32* %n_chan47, align 8, !dbg !4412
  %cmp48 = icmp slt i32 %59, %61, !dbg !4413
  br i1 %cmp48, label %for.body, label %for.end, !dbg !4414

for.body:                                         ; preds = %for.cond
  %62 = load i8, i8* %is_unipolar, align 1, !dbg !4415
  %tobool50 = trunc i8 %62 to i1, !dbg !4415
  %63 = zext i1 %tobool50 to i64, !dbg !4415
  %cond52 = select i1 %tobool50, i32 0, i32 2048, !dbg !4415
  %64 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4416
  %readback = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %64, i32 0, i32 32, !dbg !4417
  %65 = load i32*, i32** %readback, align 8, !dbg !4417
  %66 = load i32, i32* %i, align 4, !dbg !4418
  %idxprom = sext i32 %66 to i64, !dbg !4416
  %arrayidx53 = getelementptr i32, i32* %65, i64 %idxprom, !dbg !4416
  store i32 %cond52, i32* %arrayidx53, align 4, !dbg !4419
  br label %for.inc, !dbg !4416

for.inc:                                          ; preds = %for.body
  %67 = load i32, i32* %i, align 4, !dbg !4420
  %inc = add i32 %67, 1, !dbg !4420
  store i32 %inc, i32* %i, align 4, !dbg !4420
  br label %for.cond, !dbg !4421, !llvm.loop !4422

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !4424
  br label %return, !dbg !4424

return:                                           ; preds = %for.end, %if.then45, %if.then13, %if.then8, %if.then4, %if.then
  %68 = load i32, i32* %retval, align 4, !dbg !4425
  ret i32 %68, !dbg !4425
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noredzone
declare dso_local %struct.usb_interface* @comedi_to_usb_interface(%struct.comedi_device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mutex_destroy(%struct.mutex* %lock) #2 !dbg !4426 {
entry:
  %lock.addr = alloca %struct.mutex*, align 8
  store %struct.mutex* %lock, %struct.mutex** %lock.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mutex** %lock.addr, metadata !4430, metadata !DIExpression()), !dbg !4431
  ret void, !dbg !4432
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_set_intfdata(%struct.usb_interface* %intf, i8* %data) #2 !dbg !4433 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !4436, metadata !DIExpression()), !dbg !4437
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4438, metadata !DIExpression()), !dbg !4439
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4440
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !4441
  %1 = load i8*, i8** %data.addr, align 8, !dbg !4442
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #6, !dbg !4443
  ret void, !dbg !4444
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !4445 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4448, metadata !DIExpression()), !dbg !4449
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4450, metadata !DIExpression()), !dbg !4451
  %0 = load i8*, i8** %data.addr, align 8, !dbg !4452
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4453
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !4454
  store i8* %0, i8** %driver_data, align 8, !dbg !4455
  ret void, !dbg !4456
}

; Function Attrs: noredzone
declare dso_local i8* @comedi_alloc_devpriv(%struct.comedi_device*, i64) #1

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dt9812_find_endpoints(%struct.comedi_device* %dev) #2 !dbg !4457 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %intf = alloca %struct.usb_interface*, align 8
  %host = alloca %struct.usb_host_interface*, align 8
  %devpriv = alloca %struct.dt9812_private*, align 8
  %ep = alloca %struct.usb_endpoint_descriptor*, align 8
  %i = alloca i32, align 4
  %dir = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4458, metadata !DIExpression()), !dbg !4459
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf, metadata !4460, metadata !DIExpression()), !dbg !4461
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4462
  %call = call %struct.usb_interface* @comedi_to_usb_interface(%struct.comedi_device* %0) #6, !dbg !4463
  store %struct.usb_interface* %call, %struct.usb_interface** %intf, align 8, !dbg !4461
  call void @llvm.dbg.declare(metadata %struct.usb_host_interface** %host, metadata !4464, metadata !DIExpression()), !dbg !4465
  %1 = load %struct.usb_interface*, %struct.usb_interface** %intf, align 8, !dbg !4466
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %1, i32 0, i32 1, !dbg !4467
  %2 = load %struct.usb_host_interface*, %struct.usb_host_interface** %cur_altsetting, align 8, !dbg !4467
  store %struct.usb_host_interface* %2, %struct.usb_host_interface** %host, align 8, !dbg !4465
  call void @llvm.dbg.declare(metadata %struct.dt9812_private** %devpriv, metadata !4468, metadata !DIExpression()), !dbg !4469
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4470
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %3, i32 0, i32 3, !dbg !4471
  %4 = load i8*, i8** %private, align 8, !dbg !4471
  %5 = bitcast i8* %4 to %struct.dt9812_private*, !dbg !4470
  store %struct.dt9812_private* %5, %struct.dt9812_private** %devpriv, align 8, !dbg !4469
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %ep, metadata !4472, metadata !DIExpression()), !dbg !4474
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4475, metadata !DIExpression()), !dbg !4476
  %6 = load %struct.usb_host_interface*, %struct.usb_host_interface** %host, align 8, !dbg !4477
  %desc = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %6, i32 0, i32 0, !dbg !4479
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %desc, i32 0, i32 4, !dbg !4480
  %7 = load i8, i8* %bNumEndpoints, align 4, !dbg !4480
  %conv = zext i8 %7 to i32, !dbg !4477
  %cmp = icmp ne i32 %conv, 5, !dbg !4481
  br i1 %cmp, label %if.then, label %if.end, !dbg !4482

if.then:                                          ; preds = %entry
  %8 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4483
  %class_dev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 4, !dbg !4483
  %9 = load %struct.device*, %struct.device** %class_dev, align 8, !dbg !4483
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !4483
  store i32 -19, i32* %retval, align 4, !dbg !4485
  br label %return, !dbg !4485

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !4486
  br label %for.cond, !dbg !4488

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, i32* %i, align 4, !dbg !4489
  %11 = load %struct.usb_host_interface*, %struct.usb_host_interface** %host, align 8, !dbg !4491
  %desc2 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %11, i32 0, i32 0, !dbg !4492
  %bNumEndpoints3 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %desc2, i32 0, i32 4, !dbg !4493
  %12 = load i8, i8* %bNumEndpoints3, align 4, !dbg !4493
  %conv4 = zext i8 %12 to i32, !dbg !4491
  %cmp5 = icmp slt i32 %10, %conv4, !dbg !4494
  br i1 %cmp5, label %for.body, label %for.end, !dbg !4495

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %dir, metadata !4496, metadata !DIExpression()), !dbg !4498
  store i32 -1, i32* %dir, align 4, !dbg !4498
  %13 = load %struct.usb_host_interface*, %struct.usb_host_interface** %host, align 8, !dbg !4499
  %endpoint = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %13, i32 0, i32 3, !dbg !4500
  %14 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %endpoint, align 8, !dbg !4500
  %15 = load i32, i32* %i, align 4, !dbg !4501
  %idxprom = sext i32 %15 to i64, !dbg !4499
  %arrayidx = getelementptr %struct.usb_host_endpoint, %struct.usb_host_endpoint* %14, i64 %idxprom, !dbg !4499
  %desc7 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %arrayidx, i32 0, i32 0, !dbg !4502
  store %struct.usb_endpoint_descriptor* %desc7, %struct.usb_endpoint_descriptor** %ep, align 8, !dbg !4503
  %16 = load i32, i32* %i, align 4, !dbg !4504
  switch i32 %16, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
    i32 2, label %sw.bb12
    i32 3, label %sw.bb19
    i32 4, label %sw.bb20
  ], !dbg !4505

sw.bb:                                            ; preds = %for.body
  store i32 128, i32* %dir, align 4, !dbg !4506
  br label %sw.epilog, !dbg !4508

sw.bb8:                                           ; preds = %for.body
  store i32 0, i32* %dir, align 4, !dbg !4509
  %17 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep, align 8, !dbg !4510
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %17, i32 0, i32 2, !dbg !4511
  %18 = load i8, i8* %bEndpointAddress, align 1, !dbg !4511
  %19 = load %struct.dt9812_private*, %struct.dt9812_private** %devpriv, align 8, !dbg !4512
  %cmd_wr = getelementptr inbounds %struct.dt9812_private, %struct.dt9812_private* %19, i32 0, i32 1, !dbg !4513
  %addr = getelementptr inbounds %struct.anon.65, %struct.anon.65* %cmd_wr, i32 0, i32 0, !dbg !4514
  store i8 %18, i8* %addr, align 8, !dbg !4515
  %20 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep, align 8, !dbg !4516
  %call9 = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %20) #6, !dbg !4517
  %conv10 = sext i32 %call9 to i64, !dbg !4517
  %21 = load %struct.dt9812_private*, %struct.dt9812_private** %devpriv, align 8, !dbg !4518
  %cmd_wr11 = getelementptr inbounds %struct.dt9812_private, %struct.dt9812_private* %21, i32 0, i32 1, !dbg !4519
  %size = getelementptr inbounds %struct.anon.65, %struct.anon.65* %cmd_wr11, i32 0, i32 1, !dbg !4520
  store i64 %conv10, i64* %size, align 8, !dbg !4521
  br label %sw.epilog, !dbg !4522

sw.bb12:                                          ; preds = %for.body
  store i32 128, i32* %dir, align 4, !dbg !4523
  %22 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep, align 8, !dbg !4524
  %bEndpointAddress13 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %22, i32 0, i32 2, !dbg !4525
  %23 = load i8, i8* %bEndpointAddress13, align 1, !dbg !4525
  %24 = load %struct.dt9812_private*, %struct.dt9812_private** %devpriv, align 8, !dbg !4526
  %cmd_rd = getelementptr inbounds %struct.dt9812_private, %struct.dt9812_private* %24, i32 0, i32 2, !dbg !4527
  %addr14 = getelementptr inbounds %struct.anon.65, %struct.anon.65* %cmd_rd, i32 0, i32 0, !dbg !4528
  store i8 %23, i8* %addr14, align 8, !dbg !4529
  %25 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep, align 8, !dbg !4530
  %call15 = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %25) #6, !dbg !4531
  %conv16 = sext i32 %call15 to i64, !dbg !4531
  %26 = load %struct.dt9812_private*, %struct.dt9812_private** %devpriv, align 8, !dbg !4532
  %cmd_rd17 = getelementptr inbounds %struct.dt9812_private, %struct.dt9812_private* %26, i32 0, i32 2, !dbg !4533
  %size18 = getelementptr inbounds %struct.anon.65, %struct.anon.65* %cmd_rd17, i32 0, i32 1, !dbg !4534
  store i64 %conv16, i64* %size18, align 8, !dbg !4535
  br label %sw.epilog, !dbg !4536

sw.bb19:                                          ; preds = %for.body
  store i32 0, i32* %dir, align 4, !dbg !4537
  br label %sw.epilog, !dbg !4538

sw.bb20:                                          ; preds = %for.body
  store i32 128, i32* %dir, align 4, !dbg !4539
  br label %sw.epilog, !dbg !4540

sw.epilog:                                        ; preds = %for.body, %sw.bb20, %sw.bb19, %sw.bb12, %sw.bb8, %sw.bb
  %27 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %ep, align 8, !dbg !4541
  %bEndpointAddress21 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %27, i32 0, i32 2, !dbg !4543
  %28 = load i8, i8* %bEndpointAddress21, align 1, !dbg !4543
  %conv22 = zext i8 %28 to i32, !dbg !4541
  %and = and i32 %conv22, 128, !dbg !4544
  %29 = load i32, i32* %dir, align 4, !dbg !4545
  %cmp23 = icmp ne i32 %and, %29, !dbg !4546
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !4547

if.then25:                                        ; preds = %sw.epilog
  %30 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4548
  %class_dev26 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 4, !dbg !4548
  %31 = load %struct.device*, %struct.device** %class_dev26, align 8, !dbg !4548
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !4548
  store i32 -19, i32* %retval, align 4, !dbg !4550
  br label %return, !dbg !4550

if.end27:                                         ; preds = %sw.epilog
  br label %for.inc, !dbg !4551

for.inc:                                          ; preds = %if.end27
  %32 = load i32, i32* %i, align 4, !dbg !4552
  %inc = add i32 %32, 1, !dbg !4552
  store i32 %inc, i32* %i, align 4, !dbg !4552
  br label %for.cond, !dbg !4553, !llvm.loop !4554

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !4556
  br label %return, !dbg !4556

return:                                           ; preds = %for.end, %if.then25, %if.then
  %33 = load i32, i32* %retval, align 4, !dbg !4557
  ret i32 %33, !dbg !4557
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dt9812_reset_device(%struct.comedi_device* %dev) #2 !dbg !4558 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %usb = alloca %struct.usb_device*, align 8
  %devpriv = alloca %struct.dt9812_private*, align 8
  %serial = alloca i32, align 4
  %vendor = alloca i16, align 2
  %product = alloca i16, align 2
  %tmp8 = alloca i8, align 1
  %tmp16 = alloca i16, align 2
  %tmp32 = alloca i32, align 4
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4559, metadata !DIExpression()), !dbg !4560
  call void @llvm.dbg.declare(metadata %struct.usb_device** %usb, metadata !4561, metadata !DIExpression()), !dbg !4775
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4776
  %call = call %struct.usb_device* @comedi_to_usb_dev(%struct.comedi_device* %0) #6, !dbg !4777
  store %struct.usb_device* %call, %struct.usb_device** %usb, align 8, !dbg !4775
  call void @llvm.dbg.declare(metadata %struct.dt9812_private** %devpriv, metadata !4778, metadata !DIExpression()), !dbg !4779
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4780
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %1, i32 0, i32 3, !dbg !4781
  %2 = load i8*, i8** %private, align 8, !dbg !4781
  %3 = bitcast i8* %2 to %struct.dt9812_private*, !dbg !4780
  store %struct.dt9812_private* %3, %struct.dt9812_private** %devpriv, align 8, !dbg !4779
  call void @llvm.dbg.declare(metadata i32* %serial, metadata !4782, metadata !DIExpression()), !dbg !4783
  call void @llvm.dbg.declare(metadata i16* %vendor, metadata !4784, metadata !DIExpression()), !dbg !4785
  call void @llvm.dbg.declare(metadata i16* %product, metadata !4786, metadata !DIExpression()), !dbg !4787
  call void @llvm.dbg.declare(metadata i8* %tmp8, metadata !4788, metadata !DIExpression()), !dbg !4789
  call void @llvm.dbg.declare(metadata i16* %tmp16, metadata !4790, metadata !DIExpression()), !dbg !4791
  call void @llvm.dbg.declare(metadata i32* %tmp32, metadata !4792, metadata !DIExpression()), !dbg !4793
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4794, metadata !DIExpression()), !dbg !4795
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4796, metadata !DIExpression()), !dbg !4797
  %4 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4798
  %call1 = call i32 @dt9812_read_info(%struct.comedi_device* %4, i32 0, i8* %tmp8, i64 1) #6, !dbg !4799
  store i32 %call1, i32* %ret, align 4, !dbg !4800
  %5 = load i32, i32* %ret, align 4, !dbg !4801
  %tobool = icmp ne i32 %5, 0, !dbg !4801
  br i1 %tobool, label %if.then, label %if.end9, !dbg !4803

if.then:                                          ; preds = %entry
  %6 = load %struct.usb_device*, %struct.usb_device** %usb, align 8, !dbg !4804
  %call2 = call i32 @usb_reset_configuration(%struct.usb_device* %6) #6, !dbg !4806
  store i32 0, i32* %i, align 4, !dbg !4807
  br label %for.cond, !dbg !4809

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i32, i32* %i, align 4, !dbg !4810
  %cmp = icmp slt i32 %7, 10, !dbg !4812
  br i1 %cmp, label %for.body, label %for.end, !dbg !4813

for.body:                                         ; preds = %for.cond
  %8 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4814
  %call3 = call i32 @dt9812_read_info(%struct.comedi_device* %8, i32 1, i8* %tmp8, i64 1) #6, !dbg !4816
  store i32 %call3, i32* %ret, align 4, !dbg !4817
  %9 = load i32, i32* %ret, align 4, !dbg !4818
  %cmp4 = icmp eq i32 %9, 0, !dbg !4820
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !4821

if.then5:                                         ; preds = %for.body
  br label %for.end, !dbg !4822

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4823

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4, !dbg !4824
  %inc = add i32 %10, 1, !dbg !4824
  store i32 %inc, i32* %i, align 4, !dbg !4824
  br label %for.cond, !dbg !4825, !llvm.loop !4826

for.end:                                          ; preds = %if.then5, %for.cond
  %11 = load i32, i32* %ret, align 4, !dbg !4828
  %tobool6 = icmp ne i32 %11, 0, !dbg !4828
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !4830

if.then7:                                         ; preds = %for.end
  %12 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4831
  %class_dev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 4, !dbg !4831
  %13 = load %struct.device*, %struct.device** %class_dev, align 8, !dbg !4831
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !4831
  %14 = load i32, i32* %ret, align 4, !dbg !4833
  store i32 %14, i32* %retval, align 4, !dbg !4834
  br label %return, !dbg !4834

if.end8:                                          ; preds = %for.end
  br label %if.end9, !dbg !4835

if.end9:                                          ; preds = %if.end8, %entry
  %15 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4836
  %16 = bitcast i16* %tmp16 to i8*, !dbg !4837
  %call10 = call i32 @dt9812_read_info(%struct.comedi_device* %15, i32 1, i8* %16, i64 2) #6, !dbg !4838
  store i32 %call10, i32* %ret, align 4, !dbg !4839
  %17 = load i32, i32* %ret, align 4, !dbg !4840
  %tobool11 = icmp ne i32 %17, 0, !dbg !4840
  br i1 %tobool11, label %if.then12, label %if.end14, !dbg !4842

if.then12:                                        ; preds = %if.end9
  %18 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4843
  %class_dev13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 4, !dbg !4843
  %19 = load %struct.device*, %struct.device** %class_dev13, align 8, !dbg !4843
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !4843
  %20 = load i32, i32* %ret, align 4, !dbg !4845
  store i32 %20, i32* %retval, align 4, !dbg !4846
  br label %return, !dbg !4846

if.end14:                                         ; preds = %if.end9
  %21 = load i16, i16* %tmp16, align 2, !dbg !4847
  store i16 %21, i16* %vendor, align 2, !dbg !4848
  %22 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4849
  %23 = bitcast i16* %tmp16 to i8*, !dbg !4850
  %call15 = call i32 @dt9812_read_info(%struct.comedi_device* %22, i32 3, i8* %23, i64 2) #6, !dbg !4851
  store i32 %call15, i32* %ret, align 4, !dbg !4852
  %24 = load i32, i32* %ret, align 4, !dbg !4853
  %tobool16 = icmp ne i32 %24, 0, !dbg !4853
  br i1 %tobool16, label %if.then17, label %if.end19, !dbg !4855

if.then17:                                        ; preds = %if.end14
  %25 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4856
  %class_dev18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 4, !dbg !4856
  %26 = load %struct.device*, %struct.device** %class_dev18, align 8, !dbg !4856
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0)) #7, !dbg !4856
  %27 = load i32, i32* %ret, align 4, !dbg !4858
  store i32 %27, i32* %retval, align 4, !dbg !4859
  br label %return, !dbg !4859

if.end19:                                         ; preds = %if.end14
  %28 = load i16, i16* %tmp16, align 2, !dbg !4860
  store i16 %28, i16* %product, align 2, !dbg !4861
  %29 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4862
  %30 = bitcast i16* %tmp16 to i8*, !dbg !4863
  %call20 = call i32 @dt9812_read_info(%struct.comedi_device* %29, i32 5, i8* %30, i64 2) #6, !dbg !4864
  store i32 %call20, i32* %ret, align 4, !dbg !4865
  %31 = load i32, i32* %ret, align 4, !dbg !4866
  %tobool21 = icmp ne i32 %31, 0, !dbg !4866
  br i1 %tobool21, label %if.then22, label %if.end24, !dbg !4868

if.then22:                                        ; preds = %if.end19
  %32 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4869
  %class_dev23 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %32, i32 0, i32 4, !dbg !4869
  %33 = load %struct.device*, %struct.device** %class_dev23, align 8, !dbg !4869
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0)) #7, !dbg !4869
  %34 = load i32, i32* %ret, align 4, !dbg !4871
  store i32 %34, i32* %retval, align 4, !dbg !4872
  br label %return, !dbg !4872

if.end24:                                         ; preds = %if.end19
  %35 = load i16, i16* %tmp16, align 2, !dbg !4873
  %36 = load %struct.dt9812_private*, %struct.dt9812_private** %devpriv, align 8, !dbg !4874
  %device = getelementptr inbounds %struct.dt9812_private, %struct.dt9812_private* %36, i32 0, i32 3, !dbg !4875
  store i16 %35, i16* %device, align 8, !dbg !4876
  %37 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4877
  %38 = bitcast i32* %tmp32 to i8*, !dbg !4878
  %call25 = call i32 @dt9812_read_info(%struct.comedi_device* %37, i32 7, i8* %38, i64 4) #6, !dbg !4879
  store i32 %call25, i32* %ret, align 4, !dbg !4880
  %39 = load i32, i32* %ret, align 4, !dbg !4881
  %tobool26 = icmp ne i32 %39, 0, !dbg !4881
  br i1 %tobool26, label %if.then27, label %if.end29, !dbg !4883

if.then27:                                        ; preds = %if.end24
  %40 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4884
  %class_dev28 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %40, i32 0, i32 4, !dbg !4884
  %41 = load %struct.device*, %struct.device** %class_dev28, align 8, !dbg !4884
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0)) #7, !dbg !4884
  %42 = load i32, i32* %ret, align 4, !dbg !4886
  store i32 %42, i32* %retval, align 4, !dbg !4887
  br label %return, !dbg !4887

if.end29:                                         ; preds = %if.end24
  %43 = load i32, i32* %tmp32, align 4, !dbg !4888
  store i32 %43, i32* %serial, align 4, !dbg !4889
  %44 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4890
  %class_dev30 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %44, i32 0, i32 4, !dbg !4890
  %45 = load %struct.device*, %struct.device** %class_dev30, align 8, !dbg !4890
  %46 = load i16, i16* %vendor, align 2, !dbg !4890
  %conv = zext i16 %46 to i32, !dbg !4890
  %47 = load i16, i16* %product, align 2, !dbg !4890
  %conv31 = zext i16 %47 to i32, !dbg !4890
  %48 = load %struct.dt9812_private*, %struct.dt9812_private** %devpriv, align 8, !dbg !4890
  %device32 = getelementptr inbounds %struct.dt9812_private, %struct.dt9812_private* %48, i32 0, i32 3, !dbg !4890
  %49 = load i16, i16* %device32, align 8, !dbg !4890
  %conv33 = zext i16 %49 to i32, !dbg !4890
  %50 = load i32, i32* %serial, align 4, !dbg !4890
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %45, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i32 %conv, i32 %conv31, i32 %conv33, i32 %50) #7, !dbg !4890
  %51 = load %struct.dt9812_private*, %struct.dt9812_private** %devpriv, align 8, !dbg !4891
  %device34 = getelementptr inbounds %struct.dt9812_private, %struct.dt9812_private* %51, i32 0, i32 3, !dbg !4893
  %52 = load i16, i16* %device34, align 8, !dbg !4893
  %conv35 = zext i16 %52 to i32, !dbg !4891
  %cmp36 = icmp ne i32 %conv35, 0, !dbg !4894
  br i1 %cmp36, label %land.lhs.true, label %if.end44, !dbg !4895

land.lhs.true:                                    ; preds = %if.end29
  %53 = load %struct.dt9812_private*, %struct.dt9812_private** %devpriv, align 8, !dbg !4896
  %device38 = getelementptr inbounds %struct.dt9812_private, %struct.dt9812_private* %53, i32 0, i32 3, !dbg !4897
  %54 = load i16, i16* %device38, align 8, !dbg !4897
  %conv39 = zext i16 %54 to i32, !dbg !4896
  %cmp40 = icmp ne i32 %conv39, 1, !dbg !4898
  br i1 %cmp40, label %if.then42, label %if.end44, !dbg !4899

if.then42:                                        ; preds = %land.lhs.true
  %55 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4900
  %class_dev43 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %55, i32 0, i32 4, !dbg !4900
  %56 = load %struct.device*, %struct.device** %class_dev43, align 8, !dbg !4900
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %56, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0)) #7, !dbg !4900
  store i32 -22, i32* %retval, align 4, !dbg !4902
  br label %return, !dbg !4902

if.end44:                                         ; preds = %land.lhs.true, %if.end29
  store i32 0, i32* %retval, align 4, !dbg !4903
  br label %return, !dbg !4903

return:                                           ; preds = %if.end44, %if.then42, %if.then27, %if.then22, %if.then17, %if.then12, %if.then7
  %57 = load i32, i32* %retval, align 4, !dbg !4904
  ret i32 %57, !dbg !4904
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dt9812_di_insn_bits(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !4905 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %bits = alloca i8, align 1
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4906, metadata !DIExpression()), !dbg !4907
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4908, metadata !DIExpression()), !dbg !4909
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !4910, metadata !DIExpression()), !dbg !4911
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !4912, metadata !DIExpression()), !dbg !4913
  call void @llvm.dbg.declare(metadata i8* %bits, metadata !4914, metadata !DIExpression()), !dbg !4915
  store i8 0, i8* %bits, align 1, !dbg !4915
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4916, metadata !DIExpression()), !dbg !4917
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4918
  %call = call i32 @dt9812_digital_in(%struct.comedi_device* %0, i8* %bits) #6, !dbg !4919
  store i32 %call, i32* %ret, align 4, !dbg !4920
  %1 = load i32, i32* %ret, align 4, !dbg !4921
  %tobool = icmp ne i32 %1, 0, !dbg !4921
  br i1 %tobool, label %if.then, label %if.end, !dbg !4923

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !4924
  store i32 %2, i32* %retval, align 4, !dbg !4925
  br label %return, !dbg !4925

if.end:                                           ; preds = %entry
  %3 = load i8, i8* %bits, align 1, !dbg !4926
  %conv = zext i8 %3 to i32, !dbg !4926
  %4 = load i32*, i32** %data.addr, align 8, !dbg !4927
  %arrayidx = getelementptr i32, i32* %4, i64 1, !dbg !4927
  store i32 %conv, i32* %arrayidx, align 4, !dbg !4928
  %5 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4929
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %5, i32 0, i32 1, !dbg !4930
  %6 = load i32, i32* %n, align 4, !dbg !4930
  store i32 %6, i32* %retval, align 4, !dbg !4931
  br label %return, !dbg !4931

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !4932
  ret i32 %7, !dbg !4932
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dt9812_do_insn_bits(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !4933 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4934, metadata !DIExpression()), !dbg !4935
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4936, metadata !DIExpression()), !dbg !4937
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !4938, metadata !DIExpression()), !dbg !4939
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !4940, metadata !DIExpression()), !dbg !4941
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4942
  %1 = load i32*, i32** %data.addr, align 8, !dbg !4944
  %call = call i32 @comedi_dio_update_state(%struct.comedi_subdevice* %0, i32* %1) #6, !dbg !4945
  %tobool = icmp ne i32 %call, 0, !dbg !4945
  br i1 %tobool, label %if.then, label %if.end, !dbg !4946

if.then:                                          ; preds = %entry
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4947
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4948
  %state = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %3, i32 0, i32 29, !dbg !4949
  %4 = load i32, i32* %state, align 4, !dbg !4949
  %conv = trunc i32 %4 to i8, !dbg !4948
  %call1 = call i32 @dt9812_digital_out(%struct.comedi_device* %2, i8 zeroext %conv) #6, !dbg !4950
  br label %if.end, !dbg !4950

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4951
  %state2 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %5, i32 0, i32 29, !dbg !4952
  %6 = load i32, i32* %state2, align 4, !dbg !4952
  %7 = load i32*, i32** %data.addr, align 8, !dbg !4953
  %arrayidx = getelementptr i32, i32* %7, i64 1, !dbg !4953
  store i32 %6, i32* %arrayidx, align 4, !dbg !4954
  %8 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4955
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %8, i32 0, i32 1, !dbg !4956
  %9 = load i32, i32* %n, align 4, !dbg !4956
  ret i32 %9, !dbg !4957
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dt9812_ai_insn_read(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !4958 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %chan = alloca i32, align 4
  %val = alloca i16, align 2
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4959, metadata !DIExpression()), !dbg !4960
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4961, metadata !DIExpression()), !dbg !4962
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !4963, metadata !DIExpression()), !dbg !4964
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !4965, metadata !DIExpression()), !dbg !4966
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !4967, metadata !DIExpression()), !dbg !4968
  %0 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4969
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %0, i32 0, i32 4, !dbg !4969
  %1 = load i32, i32* %chanspec, align 4, !dbg !4969
  %and = and i32 %1, 65535, !dbg !4969
  store i32 %and, i32* %chan, align 4, !dbg !4968
  call void @llvm.dbg.declare(metadata i16* %val, metadata !4970, metadata !DIExpression()), !dbg !4971
  store i16 0, i16* %val, align 2, !dbg !4971
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4972, metadata !DIExpression()), !dbg !4973
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4974, metadata !DIExpression()), !dbg !4975
  store i32 0, i32* %i, align 4, !dbg !4976
  br label %for.cond, !dbg !4978

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !4979
  %3 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4981
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %3, i32 0, i32 1, !dbg !4982
  %4 = load i32, i32* %n, align 4, !dbg !4982
  %cmp = icmp ult i32 %2, %4, !dbg !4983
  br i1 %cmp, label %for.body, label %for.end, !dbg !4984

for.body:                                         ; preds = %for.cond
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4985
  %6 = load i32, i32* %chan, align 4, !dbg !4987
  %call = call i32 @dt9812_analog_in(%struct.comedi_device* %5, i32 %6, i16* %val, i32 4) #6, !dbg !4988
  store i32 %call, i32* %ret, align 4, !dbg !4989
  %7 = load i32, i32* %ret, align 4, !dbg !4990
  %tobool = icmp ne i32 %7, 0, !dbg !4990
  br i1 %tobool, label %if.then, label %if.end, !dbg !4992

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %ret, align 4, !dbg !4993
  store i32 %8, i32* %retval, align 4, !dbg !4994
  br label %return, !dbg !4994

if.end:                                           ; preds = %for.body
  %9 = load i16, i16* %val, align 2, !dbg !4995
  %conv = zext i16 %9 to i32, !dbg !4995
  %10 = load i32*, i32** %data.addr, align 8, !dbg !4996
  %11 = load i32, i32* %i, align 4, !dbg !4997
  %idxprom = sext i32 %11 to i64, !dbg !4996
  %arrayidx = getelementptr i32, i32* %10, i64 %idxprom, !dbg !4996
  store i32 %conv, i32* %arrayidx, align 4, !dbg !4998
  br label %for.inc, !dbg !4999

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4, !dbg !5000
  %inc = add i32 %12, 1, !dbg !5000
  store i32 %inc, i32* %i, align 4, !dbg !5000
  br label %for.cond, !dbg !5001, !llvm.loop !5002

for.end:                                          ; preds = %for.cond
  %13 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5004
  %n1 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %13, i32 0, i32 1, !dbg !5005
  %14 = load i32, i32* %n1, align 4, !dbg !5005
  store i32 %14, i32* %retval, align 4, !dbg !5006
  br label %return, !dbg !5006

return:                                           ; preds = %for.end, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !5007
  ret i32 %15, !dbg !5007
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dt9812_ao_insn_write(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5008 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %chan = alloca i32, align 4
  %i = alloca i32, align 4
  %val = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5009, metadata !DIExpression()), !dbg !5010
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5011, metadata !DIExpression()), !dbg !5012
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5013, metadata !DIExpression()), !dbg !5014
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5015, metadata !DIExpression()), !dbg !5016
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !5017, metadata !DIExpression()), !dbg !5018
  %0 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5019
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %0, i32 0, i32 4, !dbg !5019
  %1 = load i32, i32* %chanspec, align 4, !dbg !5019
  %and = and i32 %1, 65535, !dbg !5019
  store i32 %and, i32* %chan, align 4, !dbg !5018
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5020, metadata !DIExpression()), !dbg !5021
  store i32 0, i32* %i, align 4, !dbg !5022
  br label %for.cond, !dbg !5024

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !5025
  %3 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5027
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %3, i32 0, i32 1, !dbg !5028
  %4 = load i32, i32* %n, align 4, !dbg !5028
  %cmp = icmp ult i32 %2, %4, !dbg !5029
  br i1 %cmp, label %for.body, label %for.end, !dbg !5030

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %val, metadata !5031, metadata !DIExpression()), !dbg !5033
  %5 = load i32*, i32** %data.addr, align 8, !dbg !5034
  %6 = load i32, i32* %i, align 4, !dbg !5035
  %idxprom = sext i32 %6 to i64, !dbg !5034
  %arrayidx = getelementptr i32, i32* %5, i64 %idxprom, !dbg !5034
  %7 = load i32, i32* %arrayidx, align 4, !dbg !5034
  store i32 %7, i32* %val, align 4, !dbg !5033
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5036, metadata !DIExpression()), !dbg !5037
  %8 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5038
  %9 = load i32, i32* %chan, align 4, !dbg !5039
  %10 = load i32, i32* %val, align 4, !dbg !5040
  %conv = trunc i32 %10 to i16, !dbg !5040
  %call = call i32 @dt9812_analog_out(%struct.comedi_device* %8, i32 %9, i16 zeroext %conv) #6, !dbg !5041
  store i32 %call, i32* %ret, align 4, !dbg !5042
  %11 = load i32, i32* %ret, align 4, !dbg !5043
  %tobool = icmp ne i32 %11, 0, !dbg !5043
  br i1 %tobool, label %if.then, label %if.end, !dbg !5045

if.then:                                          ; preds = %for.body
  %12 = load i32, i32* %ret, align 4, !dbg !5046
  store i32 %12, i32* %retval, align 4, !dbg !5047
  br label %return, !dbg !5047

if.end:                                           ; preds = %for.body
  %13 = load i32, i32* %val, align 4, !dbg !5048
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5049
  %readback = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %14, i32 0, i32 32, !dbg !5050
  %15 = load i32*, i32** %readback, align 8, !dbg !5050
  %16 = load i32, i32* %chan, align 4, !dbg !5051
  %idxprom1 = zext i32 %16 to i64, !dbg !5049
  %arrayidx2 = getelementptr i32, i32* %15, i64 %idxprom1, !dbg !5049
  store i32 %13, i32* %arrayidx2, align 4, !dbg !5052
  br label %for.inc, !dbg !5053

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %i, align 4, !dbg !5054
  %inc = add i32 %17, 1, !dbg !5054
  store i32 %inc, i32* %i, align 4, !dbg !5054
  br label %for.cond, !dbg !5055, !llvm.loop !5056

for.end:                                          ; preds = %for.cond
  %18 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5058
  %n3 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %18, i32 0, i32 1, !dbg !5059
  %19 = load i32, i32* %n3, align 4, !dbg !5059
  store i32 %19, i32* %retval, align 4, !dbg !5060
  br label %return, !dbg !5060

return:                                           ; preds = %for.end, %if.then
  %20 = load i32, i32* %retval, align 4, !dbg !5061
  ret i32 %20, !dbg !5061
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dt9812_ao_insn_read(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5062 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %devpriv = alloca %struct.dt9812_private*, align 8
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5063, metadata !DIExpression()), !dbg !5064
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5065, metadata !DIExpression()), !dbg !5066
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5067, metadata !DIExpression()), !dbg !5068
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5069, metadata !DIExpression()), !dbg !5070
  call void @llvm.dbg.declare(metadata %struct.dt9812_private** %devpriv, metadata !5071, metadata !DIExpression()), !dbg !5072
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5073
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5074
  %1 = load i8*, i8** %private, align 8, !dbg !5074
  %2 = bitcast i8* %1 to %struct.dt9812_private*, !dbg !5073
  store %struct.dt9812_private* %2, %struct.dt9812_private** %devpriv, align 8, !dbg !5072
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5075, metadata !DIExpression()), !dbg !5076
  %3 = load %struct.dt9812_private*, %struct.dt9812_private** %devpriv, align 8, !dbg !5077
  %mut = getelementptr inbounds %struct.dt9812_private, %struct.dt9812_private* %3, i32 0, i32 0, !dbg !5078
  call void @mutex_lock(%struct.mutex* %mut) #6, !dbg !5079
  %4 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5080
  %5 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5081
  %6 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5082
  %7 = load i32*, i32** %data.addr, align 8, !dbg !5083
  %call = call i32 @comedi_readback_insn_read(%struct.comedi_device* %4, %struct.comedi_subdevice* %5, %struct.comedi_insn* %6, i32* %7) #6, !dbg !5084
  store i32 %call, i32* %ret, align 4, !dbg !5085
  %8 = load %struct.dt9812_private*, %struct.dt9812_private** %devpriv, align 8, !dbg !5086
  %mut1 = getelementptr inbounds %struct.dt9812_private, %struct.dt9812_private* %8, i32 0, i32 0, !dbg !5087
  call void @mutex_unlock(%struct.mutex* %mut1) #6, !dbg !5088
  %9 = load i32, i32* %ret, align 4, !dbg !5089
  ret i32 %9, !dbg !5090
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_alloc_subdev_readback(%struct.comedi_subdevice*) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !5091 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !5096, metadata !DIExpression()), !dbg !5097
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !5098
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 4, !dbg !5098
  %1 = load i16, i16* %wMaxPacketSize, align 1, !dbg !5098
  %conv = zext i16 %1 to i32, !dbg !5098
  %and = and i32 %conv, 2047, !dbg !5099
  ret i32 %and, !dbg !5100
}

; Function Attrs: noredzone
declare dso_local %struct.usb_device* @comedi_to_usb_dev(%struct.comedi_device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dt9812_read_info(%struct.comedi_device* %dev, i32 %offset, i8* %buf, i64 %buf_size) #2 !dbg !5101 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %offset.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %buf_size.addr = alloca i64, align 8
  %usb = alloca %struct.usb_device*, align 8
  %devpriv = alloca %struct.dt9812_private*, align 8
  %cmd = alloca %struct.dt9812_usb_cmd, align 4
  %count = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5104, metadata !DIExpression()), !dbg !5105
  store i32 %offset, i32* %offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %offset.addr, metadata !5106, metadata !DIExpression()), !dbg !5107
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5108, metadata !DIExpression()), !dbg !5109
  store i64 %buf_size, i64* %buf_size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %buf_size.addr, metadata !5110, metadata !DIExpression()), !dbg !5111
  call void @llvm.dbg.declare(metadata %struct.usb_device** %usb, metadata !5112, metadata !DIExpression()), !dbg !5113
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5114
  %call = call %struct.usb_device* @comedi_to_usb_dev(%struct.comedi_device* %0) #6, !dbg !5115
  store %struct.usb_device* %call, %struct.usb_device** %usb, align 8, !dbg !5113
  call void @llvm.dbg.declare(metadata %struct.dt9812_private** %devpriv, metadata !5116, metadata !DIExpression()), !dbg !5117
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5118
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %1, i32 0, i32 3, !dbg !5119
  %2 = load i8*, i8** %private, align 8, !dbg !5119
  %3 = bitcast i8* %2 to %struct.dt9812_private*, !dbg !5118
  store %struct.dt9812_private* %3, %struct.dt9812_private** %devpriv, align 8, !dbg !5117
  call void @llvm.dbg.declare(metadata %struct.dt9812_usb_cmd* %cmd, metadata !5120, metadata !DIExpression()), !dbg !5163
  call void @llvm.dbg.declare(metadata i32* %count, metadata !5164, metadata !DIExpression()), !dbg !5165
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5166, metadata !DIExpression()), !dbg !5167
  %cmd1 = getelementptr inbounds %struct.dt9812_usb_cmd, %struct.dt9812_usb_cmd* %cmd, i32 0, i32 0, !dbg !5168
  store i32 1, i32* %cmd1, align 4, !dbg !5169
  %4 = load i32, i32* %offset.addr, align 4, !dbg !5170
  %add = add i32 64511, %4, !dbg !5170
  %conv = trunc i32 %add to i16, !dbg !5170
  %u = getelementptr inbounds %struct.dt9812_usb_cmd, %struct.dt9812_usb_cmd* %cmd, i32 0, i32 1, !dbg !5171
  %flash_data_info = bitcast %union.anon.66* %u to %struct.dt9812_flash_data*, !dbg !5172
  %address = getelementptr inbounds %struct.dt9812_flash_data, %struct.dt9812_flash_data* %flash_data_info, i32 0, i32 1, !dbg !5173
  store i16 %conv, i16* %address, align 2, !dbg !5174
  %5 = load i64, i64* %buf_size.addr, align 8, !dbg !5175
  %conv2 = trunc i64 %5 to i16, !dbg !5175
  %u3 = getelementptr inbounds %struct.dt9812_usb_cmd, %struct.dt9812_usb_cmd* %cmd, i32 0, i32 1, !dbg !5176
  %flash_data_info4 = bitcast %union.anon.66* %u3 to %struct.dt9812_flash_data*, !dbg !5177
  %numbytes = getelementptr inbounds %struct.dt9812_flash_data, %struct.dt9812_flash_data* %flash_data_info4, i32 0, i32 0, !dbg !5178
  store i16 %conv2, i16* %numbytes, align 4, !dbg !5179
  %6 = load %struct.usb_device*, %struct.usb_device** %usb, align 8, !dbg !5180
  %7 = load %struct.usb_device*, %struct.usb_device** %usb, align 8, !dbg !5181
  %8 = load %struct.dt9812_private*, %struct.dt9812_private** %devpriv, align 8, !dbg !5181
  %cmd_wr = getelementptr inbounds %struct.dt9812_private, %struct.dt9812_private* %8, i32 0, i32 1, !dbg !5181
  %addr = getelementptr inbounds %struct.anon.65, %struct.anon.65* %cmd_wr, i32 0, i32 0, !dbg !5181
  %9 = load i8, i8* %addr, align 8, !dbg !5181
  %conv5 = zext i8 %9 to i32, !dbg !5181
  %call6 = call i32 @__create_pipe(%struct.usb_device* %7, i32 %conv5) #6, !dbg !5181
  %or = or i32 -1073741824, %call6, !dbg !5181
  %10 = bitcast %struct.dt9812_usb_cmd* %cmd to i8*, !dbg !5182
  %call7 = call i32 @usb_bulk_msg(%struct.usb_device* %6, i32 %or, i8* %10, i32 32, i32* %count, i32 1000) #6, !dbg !5183
  store i32 %call7, i32* %ret, align 4, !dbg !5184
  %11 = load i32, i32* %ret, align 4, !dbg !5185
  %tobool = icmp ne i32 %11, 0, !dbg !5185
  br i1 %tobool, label %if.then, label %if.end, !dbg !5187

if.then:                                          ; preds = %entry
  %12 = load i32, i32* %ret, align 4, !dbg !5188
  store i32 %12, i32* %retval, align 4, !dbg !5189
  br label %return, !dbg !5189

if.end:                                           ; preds = %entry
  %13 = load %struct.usb_device*, %struct.usb_device** %usb, align 8, !dbg !5190
  %14 = load %struct.usb_device*, %struct.usb_device** %usb, align 8, !dbg !5191
  %15 = load %struct.dt9812_private*, %struct.dt9812_private** %devpriv, align 8, !dbg !5191
  %cmd_rd = getelementptr inbounds %struct.dt9812_private, %struct.dt9812_private* %15, i32 0, i32 2, !dbg !5191
  %addr8 = getelementptr inbounds %struct.anon.65, %struct.anon.65* %cmd_rd, i32 0, i32 0, !dbg !5191
  %16 = load i8, i8* %addr8, align 8, !dbg !5191
  %conv9 = zext i8 %16 to i32, !dbg !5191
  %call10 = call i32 @__create_pipe(%struct.usb_device* %14, i32 %conv9) #6, !dbg !5191
  %or11 = or i32 -1073741824, %call10, !dbg !5191
  %or12 = or i32 %or11, 128, !dbg !5191
  %17 = load i8*, i8** %buf.addr, align 8, !dbg !5192
  %18 = load i64, i64* %buf_size.addr, align 8, !dbg !5193
  %conv13 = trunc i64 %18 to i32, !dbg !5193
  %call14 = call i32 @usb_bulk_msg(%struct.usb_device* %13, i32 %or12, i8* %17, i32 %conv13, i32* %count, i32 1000) #6, !dbg !5194
  store i32 %call14, i32* %retval, align 4, !dbg !5195
  br label %return, !dbg !5195

return:                                           ; preds = %if.end, %if.then
  %19 = load i32, i32* %retval, align 4, !dbg !5196
  ret i32 %19, !dbg !5196
}

; Function Attrs: noredzone
declare dso_local i32 @usb_reset_configuration(%struct.usb_device*) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #4

; Function Attrs: noredzone
declare dso_local i32 @usb_bulk_msg(%struct.usb_device*, i32, i8*, i32, i32*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__create_pipe(%struct.usb_device* %dev, i32 %endpoint) #2 !dbg !5197 {
entry:
  %dev.addr = alloca %struct.usb_device*, align 8
  %endpoint.addr = alloca i32, align 4
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5200, metadata !DIExpression()), !dbg !5201
  store i32 %endpoint, i32* %endpoint.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %endpoint.addr, metadata !5202, metadata !DIExpression()), !dbg !5203
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5204
  %devnum = getelementptr inbounds %struct.usb_device, %struct.usb_device* %0, i32 0, i32 0, !dbg !5205
  %1 = load i32, i32* %devnum, align 8, !dbg !5205
  %shl = shl i32 %1, 8, !dbg !5206
  %2 = load i32, i32* %endpoint.addr, align 4, !dbg !5207
  %shl1 = shl i32 %2, 15, !dbg !5208
  %or = or i32 %shl, %shl1, !dbg !5209
  ret i32 %or, !dbg !5210
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dt9812_digital_in(%struct.comedi_device* %dev, i8* %bits) #2 !dbg !5211 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %bits.addr = alloca i8*, align 8
  %devpriv = alloca %struct.dt9812_private*, align 8
  %reg = alloca [2 x i8], align 1
  %value = alloca [2 x i8], align 1
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5215, metadata !DIExpression()), !dbg !5216
  store i8* %bits, i8** %bits.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bits.addr, metadata !5217, metadata !DIExpression()), !dbg !5218
  call void @llvm.dbg.declare(metadata %struct.dt9812_private** %devpriv, metadata !5219, metadata !DIExpression()), !dbg !5220
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5221
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5222
  %1 = load i8*, i8** %private, align 8, !dbg !5222
  %2 = bitcast i8* %1 to %struct.dt9812_private*, !dbg !5221
  store %struct.dt9812_private* %2, %struct.dt9812_private** %devpriv, align 8, !dbg !5220
  call void @llvm.dbg.declare(metadata [2 x i8]* %reg, metadata !5223, metadata !DIExpression()), !dbg !5225
  %3 = bitcast [2 x i8]* %reg to i8*, !dbg !5225
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.dt9812_digital_in.reg, i32 0, i32 0), i64 2, i1 false), !dbg !5225
  call void @llvm.dbg.declare(metadata [2 x i8]* %value, metadata !5226, metadata !DIExpression()), !dbg !5227
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5228, metadata !DIExpression()), !dbg !5229
  %4 = load %struct.dt9812_private*, %struct.dt9812_private** %devpriv, align 8, !dbg !5230
  %mut = getelementptr inbounds %struct.dt9812_private, %struct.dt9812_private* %4, i32 0, i32 0, !dbg !5231
  call void @mutex_lock(%struct.mutex* %mut) #6, !dbg !5232
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5233
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %reg, i64 0, i64 0, !dbg !5234
  %arraydecay1 = getelementptr inbounds [2 x i8], [2 x i8]* %value, i64 0, i64 0, !dbg !5235
  %call = call i32 @dt9812_read_multiple_registers(%struct.comedi_device* %5, i32 2, i8* %arraydecay, i8* %arraydecay1) #6, !dbg !5236
  store i32 %call, i32* %ret, align 4, !dbg !5237
  %6 = load i32, i32* %ret, align 4, !dbg !5238
  %cmp = icmp eq i32 %6, 0, !dbg !5240
  br i1 %cmp, label %if.then, label %if.end, !dbg !5241

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr [2 x i8], [2 x i8]* %value, i64 0, i64 0, !dbg !5242
  %7 = load i8, i8* %arrayidx, align 1, !dbg !5242
  %conv = zext i8 %7 to i32, !dbg !5242
  %and = and i32 %conv, 127, !dbg !5244
  %arrayidx2 = getelementptr [2 x i8], [2 x i8]* %value, i64 0, i64 1, !dbg !5245
  %8 = load i8, i8* %arrayidx2, align 1, !dbg !5245
  %conv3 = zext i8 %8 to i32, !dbg !5245
  %and4 = and i32 %conv3, 8, !dbg !5246
  %shl = shl i32 %and4, 4, !dbg !5247
  %or = or i32 %and, %shl, !dbg !5248
  %conv5 = trunc i32 %or to i8, !dbg !5249
  %9 = load i8*, i8** %bits.addr, align 8, !dbg !5250
  store i8 %conv5, i8* %9, align 1, !dbg !5251
  br label %if.end, !dbg !5252

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.dt9812_private*, %struct.dt9812_private** %devpriv, align 8, !dbg !5253
  %mut6 = getelementptr inbounds %struct.dt9812_private, %struct.dt9812_private* %10, i32 0, i32 0, !dbg !5254
  call void @mutex_unlock(%struct.mutex* %mut6) #6, !dbg !5255
  %11 = load i32, i32* %ret, align 4, !dbg !5256
  ret i32 %11, !dbg !5257
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dt9812_read_multiple_registers(%struct.comedi_device* %dev, i32 %reg_count, i8* %address, i8* %value) #2 !dbg !5258 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %reg_count.addr = alloca i32, align 4
  %address.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %usb = alloca %struct.usb_device*, align 8
  %devpriv = alloca %struct.dt9812_private*, align 8
  %cmd = alloca %struct.dt9812_usb_cmd, align 4
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5261, metadata !DIExpression()), !dbg !5262
  store i32 %reg_count, i32* %reg_count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reg_count.addr, metadata !5263, metadata !DIExpression()), !dbg !5264
  store i8* %address, i8** %address.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %address.addr, metadata !5265, metadata !DIExpression()), !dbg !5266
  store i8* %value, i8** %value.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %value.addr, metadata !5267, metadata !DIExpression()), !dbg !5268
  call void @llvm.dbg.declare(metadata %struct.usb_device** %usb, metadata !5269, metadata !DIExpression()), !dbg !5270
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5271
  %call = call %struct.usb_device* @comedi_to_usb_dev(%struct.comedi_device* %0) #6, !dbg !5272
  store %struct.usb_device* %call, %struct.usb_device** %usb, align 8, !dbg !5270
  call void @llvm.dbg.declare(metadata %struct.dt9812_private** %devpriv, metadata !5273, metadata !DIExpression()), !dbg !5274
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5275
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %1, i32 0, i32 3, !dbg !5276
  %2 = load i8*, i8** %private, align 8, !dbg !5276
  %3 = bitcast i8* %2 to %struct.dt9812_private*, !dbg !5275
  store %struct.dt9812_private* %3, %struct.dt9812_private** %devpriv, align 8, !dbg !5274
  call void @llvm.dbg.declare(metadata %struct.dt9812_usb_cmd* %cmd, metadata !5277, metadata !DIExpression()), !dbg !5278
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5279, metadata !DIExpression()), !dbg !5280
  call void @llvm.dbg.declare(metadata i32* %count, metadata !5281, metadata !DIExpression()), !dbg !5282
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5283, metadata !DIExpression()), !dbg !5284
  %cmd1 = getelementptr inbounds %struct.dt9812_usb_cmd, %struct.dt9812_usb_cmd* %cmd, i32 0, i32 0, !dbg !5285
  store i32 4, i32* %cmd1, align 4, !dbg !5286
  %4 = load i32, i32* %reg_count.addr, align 4, !dbg !5287
  %conv = trunc i32 %4 to i8, !dbg !5287
  %u = getelementptr inbounds %struct.dt9812_usb_cmd, %struct.dt9812_usb_cmd* %cmd, i32 0, i32 1, !dbg !5288
  %read_multi_info = bitcast %union.anon.66* %u to %struct.dt9812_read_multi*, !dbg !5289
  %count2 = getelementptr inbounds %struct.dt9812_read_multi, %struct.dt9812_read_multi* %read_multi_info, i32 0, i32 0, !dbg !5290
  store i8 %conv, i8* %count2, align 4, !dbg !5291
  store i32 0, i32* %i, align 4, !dbg !5292
  br label %for.cond, !dbg !5294

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !dbg !5295
  %6 = load i32, i32* %reg_count.addr, align 4, !dbg !5297
  %cmp = icmp slt i32 %5, %6, !dbg !5298
  br i1 %cmp, label %for.body, label %for.end, !dbg !5299

for.body:                                         ; preds = %for.cond
  %7 = load i8*, i8** %address.addr, align 8, !dbg !5300
  %8 = load i32, i32* %i, align 4, !dbg !5301
  %idxprom = sext i32 %8 to i64, !dbg !5300
  %arrayidx = getelementptr i8, i8* %7, i64 %idxprom, !dbg !5300
  %9 = load i8, i8* %arrayidx, align 1, !dbg !5300
  %u4 = getelementptr inbounds %struct.dt9812_usb_cmd, %struct.dt9812_usb_cmd* %cmd, i32 0, i32 1, !dbg !5302
  %read_multi_info5 = bitcast %union.anon.66* %u4 to %struct.dt9812_read_multi*, !dbg !5303
  %address6 = getelementptr inbounds %struct.dt9812_read_multi, %struct.dt9812_read_multi* %read_multi_info5, i32 0, i32 1, !dbg !5304
  %10 = load i32, i32* %i, align 4, !dbg !5305
  %idxprom7 = sext i32 %10 to i64, !dbg !5306
  %arrayidx8 = getelementptr [27 x i8], [27 x i8]* %address6, i64 0, i64 %idxprom7, !dbg !5306
  store i8 %9, i8* %arrayidx8, align 1, !dbg !5307
  br label %for.inc, !dbg !5306

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !5308
  %inc = add i32 %11, 1, !dbg !5308
  store i32 %inc, i32* %i, align 4, !dbg !5308
  br label %for.cond, !dbg !5309, !llvm.loop !5310

for.end:                                          ; preds = %for.cond
  %12 = load %struct.usb_device*, %struct.usb_device** %usb, align 8, !dbg !5312
  %13 = load %struct.usb_device*, %struct.usb_device** %usb, align 8, !dbg !5313
  %14 = load %struct.dt9812_private*, %struct.dt9812_private** %devpriv, align 8, !dbg !5313
  %cmd_wr = getelementptr inbounds %struct.dt9812_private, %struct.dt9812_private* %14, i32 0, i32 1, !dbg !5313
  %addr = getelementptr inbounds %struct.anon.65, %struct.anon.65* %cmd_wr, i32 0, i32 0, !dbg !5313
  %15 = load i8, i8* %addr, align 8, !dbg !5313
  %conv9 = zext i8 %15 to i32, !dbg !5313
  %call10 = call i32 @__create_pipe(%struct.usb_device* %13, i32 %conv9) #6, !dbg !5313
  %or = or i32 -1073741824, %call10, !dbg !5313
  %16 = bitcast %struct.dt9812_usb_cmd* %cmd to i8*, !dbg !5314
  %call11 = call i32 @usb_bulk_msg(%struct.usb_device* %12, i32 %or, i8* %16, i32 32, i32* %count, i32 1000) #6, !dbg !5315
  store i32 %call11, i32* %ret, align 4, !dbg !5316
  %17 = load i32, i32* %ret, align 4, !dbg !5317
  %tobool = icmp ne i32 %17, 0, !dbg !5317
  br i1 %tobool, label %if.then, label %if.end, !dbg !5319

if.then:                                          ; preds = %for.end
  %18 = load i32, i32* %ret, align 4, !dbg !5320
  store i32 %18, i32* %retval, align 4, !dbg !5321
  br label %return, !dbg !5321

if.end:                                           ; preds = %for.end
  %19 = load %struct.usb_device*, %struct.usb_device** %usb, align 8, !dbg !5322
  %20 = load %struct.usb_device*, %struct.usb_device** %usb, align 8, !dbg !5323
  %21 = load %struct.dt9812_private*, %struct.dt9812_private** %devpriv, align 8, !dbg !5323
  %cmd_rd = getelementptr inbounds %struct.dt9812_private, %struct.dt9812_private* %21, i32 0, i32 2, !dbg !5323
  %addr12 = getelementptr inbounds %struct.anon.65, %struct.anon.65* %cmd_rd, i32 0, i32 0, !dbg !5323
  %22 = load i8, i8* %addr12, align 8, !dbg !5323
  %conv13 = zext i8 %22 to i32, !dbg !5323
  %call14 = call i32 @__create_pipe(%struct.usb_device* %20, i32 %conv13) #6, !dbg !5323
  %or15 = or i32 -1073741824, %call14, !dbg !5323
  %or16 = or i32 %or15, 128, !dbg !5323
  %23 = load i8*, i8** %value.addr, align 8, !dbg !5324
  %24 = load i32, i32* %reg_count.addr, align 4, !dbg !5325
  %call17 = call i32 @usb_bulk_msg(%struct.usb_device* %19, i32 %or16, i8* %23, i32 %24, i32* %count, i32 1000) #6, !dbg !5326
  store i32 %call17, i32* %retval, align 4, !dbg !5327
  br label %return, !dbg !5327

return:                                           ; preds = %if.end, %if.then
  %25 = load i32, i32* %retval, align 4, !dbg !5328
  ret i32 %25, !dbg !5328
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_dio_update_state(%struct.comedi_subdevice*, i32*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dt9812_digital_out(%struct.comedi_device* %dev, i8 zeroext %bits) #2 !dbg !5329 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %bits.addr = alloca i8, align 1
  %devpriv = alloca %struct.dt9812_private*, align 8
  %reg = alloca [1 x i8], align 1
  %value = alloca [1 x i8], align 1
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5332, metadata !DIExpression()), !dbg !5333
  store i8 %bits, i8* %bits.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %bits.addr, metadata !5334, metadata !DIExpression()), !dbg !5335
  call void @llvm.dbg.declare(metadata %struct.dt9812_private** %devpriv, metadata !5336, metadata !DIExpression()), !dbg !5337
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5338
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5339
  %1 = load i8*, i8** %private, align 8, !dbg !5339
  %2 = bitcast i8* %1 to %struct.dt9812_private*, !dbg !5338
  store %struct.dt9812_private* %2, %struct.dt9812_private** %devpriv, align 8, !dbg !5337
  call void @llvm.dbg.declare(metadata [1 x i8]* %reg, metadata !5340, metadata !DIExpression()), !dbg !5342
  %3 = bitcast [1 x i8]* %reg to i8*, !dbg !5342
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 getelementptr inbounds ([1 x i8], [1 x i8]* @__const.dt9812_digital_out.reg, i32 0, i32 0), i64 1, i1 false), !dbg !5342
  call void @llvm.dbg.declare(metadata [1 x i8]* %value, metadata !5343, metadata !DIExpression()), !dbg !5344
  %arrayinit.begin = getelementptr inbounds [1 x i8], [1 x i8]* %value, i64 0, i64 0, !dbg !5345
  %4 = load i8, i8* %bits.addr, align 1, !dbg !5346
  store i8 %4, i8* %arrayinit.begin, align 1, !dbg !5345
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5347, metadata !DIExpression()), !dbg !5348
  %5 = load %struct.dt9812_private*, %struct.dt9812_private** %devpriv, align 8, !dbg !5349
  %mut = getelementptr inbounds %struct.dt9812_private, %struct.dt9812_private* %5, i32 0, i32 0, !dbg !5350
  call void @mutex_lock(%struct.mutex* %mut) #6, !dbg !5351
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5352
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %reg, i64 0, i64 0, !dbg !5353
  %arraydecay1 = getelementptr inbounds [1 x i8], [1 x i8]* %value, i64 0, i64 0, !dbg !5354
  %call = call i32 @dt9812_write_multiple_registers(%struct.comedi_device* %6, i32 1, i8* %arraydecay, i8* %arraydecay1) #6, !dbg !5355
  store i32 %call, i32* %ret, align 4, !dbg !5356
  %7 = load %struct.dt9812_private*, %struct.dt9812_private** %devpriv, align 8, !dbg !5357
  %mut2 = getelementptr inbounds %struct.dt9812_private, %struct.dt9812_private* %7, i32 0, i32 0, !dbg !5358
  call void @mutex_unlock(%struct.mutex* %mut2) #6, !dbg !5359
  %8 = load i32, i32* %ret, align 4, !dbg !5360
  ret i32 %8, !dbg !5361
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dt9812_write_multiple_registers(%struct.comedi_device* %dev, i32 %reg_count, i8* %address, i8* %value) #2 !dbg !5362 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %reg_count.addr = alloca i32, align 4
  %address.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %usb = alloca %struct.usb_device*, align 8
  %devpriv = alloca %struct.dt9812_private*, align 8
  %cmd = alloca %struct.dt9812_usb_cmd, align 4
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5363, metadata !DIExpression()), !dbg !5364
  store i32 %reg_count, i32* %reg_count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reg_count.addr, metadata !5365, metadata !DIExpression()), !dbg !5366
  store i8* %address, i8** %address.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %address.addr, metadata !5367, metadata !DIExpression()), !dbg !5368
  store i8* %value, i8** %value.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %value.addr, metadata !5369, metadata !DIExpression()), !dbg !5370
  call void @llvm.dbg.declare(metadata %struct.usb_device** %usb, metadata !5371, metadata !DIExpression()), !dbg !5372
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5373
  %call = call %struct.usb_device* @comedi_to_usb_dev(%struct.comedi_device* %0) #6, !dbg !5374
  store %struct.usb_device* %call, %struct.usb_device** %usb, align 8, !dbg !5372
  call void @llvm.dbg.declare(metadata %struct.dt9812_private** %devpriv, metadata !5375, metadata !DIExpression()), !dbg !5376
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5377
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %1, i32 0, i32 3, !dbg !5378
  %2 = load i8*, i8** %private, align 8, !dbg !5378
  %3 = bitcast i8* %2 to %struct.dt9812_private*, !dbg !5377
  store %struct.dt9812_private* %3, %struct.dt9812_private** %devpriv, align 8, !dbg !5376
  call void @llvm.dbg.declare(metadata %struct.dt9812_usb_cmd* %cmd, metadata !5379, metadata !DIExpression()), !dbg !5380
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5381, metadata !DIExpression()), !dbg !5382
  call void @llvm.dbg.declare(metadata i32* %count, metadata !5383, metadata !DIExpression()), !dbg !5384
  %cmd1 = getelementptr inbounds %struct.dt9812_usb_cmd, %struct.dt9812_usb_cmd* %cmd, i32 0, i32 0, !dbg !5385
  store i32 5, i32* %cmd1, align 4, !dbg !5386
  %4 = load i32, i32* %reg_count.addr, align 4, !dbg !5387
  %conv = trunc i32 %4 to i8, !dbg !5387
  %u = getelementptr inbounds %struct.dt9812_usb_cmd, %struct.dt9812_usb_cmd* %cmd, i32 0, i32 1, !dbg !5388
  %read_multi_info = bitcast %union.anon.66* %u to %struct.dt9812_read_multi*, !dbg !5389
  %count2 = getelementptr inbounds %struct.dt9812_read_multi, %struct.dt9812_read_multi* %read_multi_info, i32 0, i32 0, !dbg !5390
  store i8 %conv, i8* %count2, align 4, !dbg !5391
  store i32 0, i32* %i, align 4, !dbg !5392
  br label %for.cond, !dbg !5394

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !dbg !5395
  %6 = load i32, i32* %reg_count.addr, align 4, !dbg !5397
  %cmp = icmp slt i32 %5, %6, !dbg !5398
  br i1 %cmp, label %for.body, label %for.end, !dbg !5399

for.body:                                         ; preds = %for.cond
  %7 = load i8*, i8** %address.addr, align 8, !dbg !5400
  %8 = load i32, i32* %i, align 4, !dbg !5402
  %idxprom = sext i32 %8 to i64, !dbg !5400
  %arrayidx = getelementptr i8, i8* %7, i64 %idxprom, !dbg !5400
  %9 = load i8, i8* %arrayidx, align 1, !dbg !5400
  %u4 = getelementptr inbounds %struct.dt9812_usb_cmd, %struct.dt9812_usb_cmd* %cmd, i32 0, i32 1, !dbg !5403
  %write_multi_info = bitcast %union.anon.66* %u4 to %struct.dt9812_write_multi*, !dbg !5404
  %write = getelementptr inbounds %struct.dt9812_write_multi, %struct.dt9812_write_multi* %write_multi_info, i32 0, i32 1, !dbg !5405
  %10 = load i32, i32* %i, align 4, !dbg !5406
  %idxprom5 = sext i32 %10 to i64, !dbg !5407
  %arrayidx6 = getelementptr [13 x %struct.dt9812_write_byte], [13 x %struct.dt9812_write_byte]* %write, i64 0, i64 %idxprom5, !dbg !5407
  %address7 = getelementptr inbounds %struct.dt9812_write_byte, %struct.dt9812_write_byte* %arrayidx6, i32 0, i32 0, !dbg !5408
  store i8 %9, i8* %address7, align 1, !dbg !5409
  %11 = load i8*, i8** %value.addr, align 8, !dbg !5410
  %12 = load i32, i32* %i, align 4, !dbg !5411
  %idxprom8 = sext i32 %12 to i64, !dbg !5410
  %arrayidx9 = getelementptr i8, i8* %11, i64 %idxprom8, !dbg !5410
  %13 = load i8, i8* %arrayidx9, align 1, !dbg !5410
  %u10 = getelementptr inbounds %struct.dt9812_usb_cmd, %struct.dt9812_usb_cmd* %cmd, i32 0, i32 1, !dbg !5412
  %write_multi_info11 = bitcast %union.anon.66* %u10 to %struct.dt9812_write_multi*, !dbg !5413
  %write12 = getelementptr inbounds %struct.dt9812_write_multi, %struct.dt9812_write_multi* %write_multi_info11, i32 0, i32 1, !dbg !5414
  %14 = load i32, i32* %i, align 4, !dbg !5415
  %idxprom13 = sext i32 %14 to i64, !dbg !5416
  %arrayidx14 = getelementptr [13 x %struct.dt9812_write_byte], [13 x %struct.dt9812_write_byte]* %write12, i64 0, i64 %idxprom13, !dbg !5416
  %value15 = getelementptr inbounds %struct.dt9812_write_byte, %struct.dt9812_write_byte* %arrayidx14, i32 0, i32 1, !dbg !5417
  store i8 %13, i8* %value15, align 1, !dbg !5418
  br label %for.inc, !dbg !5419

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !dbg !5420
  %inc = add i32 %15, 1, !dbg !5420
  store i32 %inc, i32* %i, align 4, !dbg !5420
  br label %for.cond, !dbg !5421, !llvm.loop !5422

for.end:                                          ; preds = %for.cond
  %16 = load %struct.usb_device*, %struct.usb_device** %usb, align 8, !dbg !5424
  %17 = load %struct.usb_device*, %struct.usb_device** %usb, align 8, !dbg !5425
  %18 = load %struct.dt9812_private*, %struct.dt9812_private** %devpriv, align 8, !dbg !5425
  %cmd_wr = getelementptr inbounds %struct.dt9812_private, %struct.dt9812_private* %18, i32 0, i32 1, !dbg !5425
  %addr = getelementptr inbounds %struct.anon.65, %struct.anon.65* %cmd_wr, i32 0, i32 0, !dbg !5425
  %19 = load i8, i8* %addr, align 8, !dbg !5425
  %conv16 = zext i8 %19 to i32, !dbg !5425
  %call17 = call i32 @__create_pipe(%struct.usb_device* %17, i32 %conv16) #6, !dbg !5425
  %or = or i32 -1073741824, %call17, !dbg !5425
  %20 = bitcast %struct.dt9812_usb_cmd* %cmd to i8*, !dbg !5426
  %call18 = call i32 @usb_bulk_msg(%struct.usb_device* %16, i32 %or, i8* %20, i32 32, i32* %count, i32 1000) #6, !dbg !5427
  ret i32 %call18, !dbg !5428
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dt9812_analog_in(%struct.comedi_device* %dev, i32 %channel, i16* %value, i32 %gain) #2 !dbg !5429 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %channel.addr = alloca i32, align 4
  %value.addr = alloca i16*, align 8
  %gain.addr = alloca i32, align 4
  %devpriv = alloca %struct.dt9812_private*, align 8
  %rmw = alloca [3 x %struct.dt9812_rmw_byte], align 1
  %reg = alloca [3 x i8], align 1
  %val = alloca [3 x i8], align 1
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5433, metadata !DIExpression()), !dbg !5434
  store i32 %channel, i32* %channel.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %channel.addr, metadata !5435, metadata !DIExpression()), !dbg !5436
  store i16* %value, i16** %value.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %value.addr, metadata !5437, metadata !DIExpression()), !dbg !5438
  store i32 %gain, i32* %gain.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gain.addr, metadata !5439, metadata !DIExpression()), !dbg !5440
  call void @llvm.dbg.declare(metadata %struct.dt9812_private** %devpriv, metadata !5441, metadata !DIExpression()), !dbg !5442
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5443
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5444
  %1 = load i8*, i8** %private, align 8, !dbg !5444
  %2 = bitcast i8* %1 to %struct.dt9812_private*, !dbg !5443
  store %struct.dt9812_private* %2, %struct.dt9812_private** %devpriv, align 8, !dbg !5442
  call void @llvm.dbg.declare(metadata [3 x %struct.dt9812_rmw_byte]* %rmw, metadata !5445, metadata !DIExpression()), !dbg !5447
  call void @llvm.dbg.declare(metadata [3 x i8]* %reg, metadata !5448, metadata !DIExpression()), !dbg !5450
  %3 = bitcast [3 x i8]* %reg to i8*, !dbg !5450
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.dt9812_analog_in.reg, i32 0, i32 0), i64 3, i1 false), !dbg !5450
  call void @llvm.dbg.declare(metadata [3 x i8]* %val, metadata !5451, metadata !DIExpression()), !dbg !5452
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5453, metadata !DIExpression()), !dbg !5454
  %4 = load %struct.dt9812_private*, %struct.dt9812_private** %devpriv, align 8, !dbg !5455
  %mut = getelementptr inbounds %struct.dt9812_private, %struct.dt9812_private* %4, i32 0, i32 0, !dbg !5456
  call void @mutex_lock(%struct.mutex* %mut) #6, !dbg !5457
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5458
  %arrayidx = getelementptr [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %rmw, i64 0, i64 0, !dbg !5459
  %6 = load i32, i32* %gain.addr, align 4, !dbg !5460
  call void @dt9812_configure_gain(%struct.comedi_device* %5, %struct.dt9812_rmw_byte* %arrayidx, i32 %6) #6, !dbg !5461
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5462
  %arrayidx1 = getelementptr [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %rmw, i64 0, i64 1, !dbg !5463
  %8 = load i32, i32* %channel.addr, align 4, !dbg !5464
  call void @dt9812_configure_mux(%struct.comedi_device* %7, %struct.dt9812_rmw_byte* %arrayidx1, i32 %8) #6, !dbg !5465
  %arrayidx2 = getelementptr [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %rmw, i64 0, i64 2, !dbg !5466
  %address = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %arrayidx2, i32 0, i32 0, !dbg !5467
  store i8 -24, i8* %address, align 1, !dbg !5468
  %arrayidx3 = getelementptr [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %rmw, i64 0, i64 2, !dbg !5469
  %and_mask = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %arrayidx3, i32 0, i32 1, !dbg !5470
  store i8 -1, i8* %and_mask, align 1, !dbg !5471
  %arrayidx4 = getelementptr [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %rmw, i64 0, i64 2, !dbg !5472
  %or_value = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %arrayidx4, i32 0, i32 2, !dbg !5473
  store i8 -112, i8* %or_value, align 1, !dbg !5474
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5475
  %arraydecay = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %rmw, i64 0, i64 0, !dbg !5476
  %call = call i32 @dt9812_rmw_multiple_registers(%struct.comedi_device* %9, i32 3, %struct.dt9812_rmw_byte* %arraydecay) #6, !dbg !5477
  store i32 %call, i32* %ret, align 4, !dbg !5478
  %10 = load i32, i32* %ret, align 4, !dbg !5479
  %tobool = icmp ne i32 %10, 0, !dbg !5479
  br i1 %tobool, label %if.then, label %if.end, !dbg !5481

if.then:                                          ; preds = %entry
  br label %exit, !dbg !5482

if.end:                                           ; preds = %entry
  %11 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5483
  %arraydecay5 = getelementptr inbounds [3 x i8], [3 x i8]* %reg, i64 0, i64 0, !dbg !5484
  %arraydecay6 = getelementptr inbounds [3 x i8], [3 x i8]* %val, i64 0, i64 0, !dbg !5485
  %call7 = call i32 @dt9812_read_multiple_registers(%struct.comedi_device* %11, i32 3, i8* %arraydecay5, i8* %arraydecay6) #6, !dbg !5486
  store i32 %call7, i32* %ret, align 4, !dbg !5487
  %12 = load i32, i32* %ret, align 4, !dbg !5488
  %tobool8 = icmp ne i32 %12, 0, !dbg !5488
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !5490

if.then9:                                         ; preds = %if.end
  br label %exit, !dbg !5491

if.end10:                                         ; preds = %if.end
  %arrayidx11 = getelementptr [3 x i8], [3 x i8]* %val, i64 0, i64 0, !dbg !5492
  %13 = load i8, i8* %arrayidx11, align 1, !dbg !5492
  %conv = zext i8 %13 to i32, !dbg !5492
  %and = and i32 %conv, 48, !dbg !5494
  %cmp = icmp eq i32 %and, 32, !dbg !5495
  br i1 %cmp, label %if.then13, label %if.end28, !dbg !5496

if.then13:                                        ; preds = %if.end10
  %14 = load %struct.dt9812_private*, %struct.dt9812_private** %devpriv, align 8, !dbg !5497
  %device = getelementptr inbounds %struct.dt9812_private, %struct.dt9812_private* %14, i32 0, i32 3, !dbg !5499
  %15 = load i16, i16* %device, align 8, !dbg !5499
  %conv14 = zext i16 %15 to i32, !dbg !5497
  switch i32 %conv14, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb20
  ], !dbg !5500

sw.bb:                                            ; preds = %if.then13
  %arrayidx15 = getelementptr [3 x i8], [3 x i8]* %val, i64 0, i64 1, !dbg !5501
  %16 = load i8, i8* %arrayidx15, align 1, !dbg !5501
  %conv16 = zext i8 %16 to i32, !dbg !5501
  %shl = shl i32 %conv16, 8, !dbg !5503
  %arrayidx17 = getelementptr [3 x i8], [3 x i8]* %val, i64 0, i64 2, !dbg !5504
  %17 = load i8, i8* %arrayidx17, align 1, !dbg !5504
  %conv18 = zext i8 %17 to i32, !dbg !5504
  %or = or i32 %shl, %conv18, !dbg !5505
  %add = add i32 %or, 2048, !dbg !5506
  %conv19 = trunc i32 %add to i16, !dbg !5507
  %18 = load i16*, i16** %value.addr, align 8, !dbg !5508
  store i16 %conv19, i16* %18, align 2, !dbg !5509
  br label %sw.epilog, !dbg !5510

sw.bb20:                                          ; preds = %if.then13
  %arrayidx21 = getelementptr [3 x i8], [3 x i8]* %val, i64 0, i64 1, !dbg !5511
  %19 = load i8, i8* %arrayidx21, align 1, !dbg !5511
  %conv22 = zext i8 %19 to i32, !dbg !5511
  %shl23 = shl i32 %conv22, 8, !dbg !5512
  %arrayidx24 = getelementptr [3 x i8], [3 x i8]* %val, i64 0, i64 2, !dbg !5513
  %20 = load i8, i8* %arrayidx24, align 1, !dbg !5513
  %conv25 = zext i8 %20 to i32, !dbg !5513
  %or26 = or i32 %shl23, %conv25, !dbg !5514
  %conv27 = trunc i32 %or26 to i16, !dbg !5515
  %21 = load i16*, i16** %value.addr, align 8, !dbg !5516
  store i16 %conv27, i16* %21, align 2, !dbg !5517
  br label %sw.epilog, !dbg !5518

sw.epilog:                                        ; preds = %if.then13, %sw.bb20, %sw.bb
  br label %if.end28, !dbg !5519

if.end28:                                         ; preds = %sw.epilog, %if.end10
  br label %exit, !dbg !5520

exit:                                             ; preds = %if.end28, %if.then9, %if.then
  call void @llvm.dbg.label(metadata !5521), !dbg !5522
  %22 = load %struct.dt9812_private*, %struct.dt9812_private** %devpriv, align 8, !dbg !5523
  %mut29 = getelementptr inbounds %struct.dt9812_private, %struct.dt9812_private* %22, i32 0, i32 0, !dbg !5524
  call void @mutex_unlock(%struct.mutex* %mut29) #6, !dbg !5525
  %23 = load i32, i32* %ret, align 4, !dbg !5526
  ret i32 %23, !dbg !5527
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dt9812_configure_gain(%struct.comedi_device* %dev, %struct.dt9812_rmw_byte* %rmw, i32 %gain) #2 !dbg !5528 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %rmw.addr = alloca %struct.dt9812_rmw_byte*, align 8
  %gain.addr = alloca i32, align 4
  %devpriv = alloca %struct.dt9812_private*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5532, metadata !DIExpression()), !dbg !5533
  store %struct.dt9812_rmw_byte* %rmw, %struct.dt9812_rmw_byte** %rmw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dt9812_rmw_byte** %rmw.addr, metadata !5534, metadata !DIExpression()), !dbg !5535
  store i32 %gain, i32* %gain.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gain.addr, metadata !5536, metadata !DIExpression()), !dbg !5537
  call void @llvm.dbg.declare(metadata %struct.dt9812_private** %devpriv, metadata !5538, metadata !DIExpression()), !dbg !5539
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5540
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5541
  %1 = load i8*, i8** %private, align 8, !dbg !5541
  %2 = bitcast i8* %1 to %struct.dt9812_private*, !dbg !5540
  store %struct.dt9812_private* %2, %struct.dt9812_private** %devpriv, align 8, !dbg !5539
  %3 = load %struct.dt9812_private*, %struct.dt9812_private** %devpriv, align 8, !dbg !5542
  %device = getelementptr inbounds %struct.dt9812_private, %struct.dt9812_private* %3, i32 0, i32 3, !dbg !5544
  %4 = load i16, i16* %device, align 8, !dbg !5544
  %conv = zext i16 %4 to i32, !dbg !5542
  %cmp = icmp eq i32 %conv, 0, !dbg !5545
  br i1 %cmp, label %if.then, label %if.end, !dbg !5546

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %gain.addr, align 4, !dbg !5547
  %shl = shl i32 %5, 1, !dbg !5547
  store i32 %shl, i32* %gain.addr, align 4, !dbg !5547
  br label %if.end, !dbg !5548

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.dt9812_rmw_byte*, %struct.dt9812_rmw_byte** %rmw.addr, align 8, !dbg !5549
  %address = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %6, i32 0, i32 0, !dbg !5550
  store i8 -68, i8* %address, align 1, !dbg !5551
  %7 = load %struct.dt9812_rmw_byte*, %struct.dt9812_rmw_byte** %rmw.addr, align 8, !dbg !5552
  %and_mask = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %7, i32 0, i32 1, !dbg !5553
  store i8 7, i8* %and_mask, align 1, !dbg !5554
  %8 = load i32, i32* %gain.addr, align 4, !dbg !5555
  switch i32 %8, label %sw.default [
    i32 2, label %sw.bb
    i32 4, label %sw.bb2
    i32 8, label %sw.bb4
    i32 16, label %sw.bb6
    i32 32, label %sw.bb8
    i32 64, label %sw.bb10
  ], !dbg !5556

sw.bb:                                            ; preds = %if.end
  %9 = load %struct.dt9812_rmw_byte*, %struct.dt9812_rmw_byte** %rmw.addr, align 8, !dbg !5557
  %or_value = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %9, i32 0, i32 2, !dbg !5559
  store i8 6, i8* %or_value, align 1, !dbg !5560
  br label %sw.epilog, !dbg !5561

sw.default:                                       ; preds = %if.end
  br label %sw.bb2, !dbg !5561

sw.bb2:                                           ; preds = %if.end, %sw.default
  %10 = load %struct.dt9812_rmw_byte*, %struct.dt9812_rmw_byte** %rmw.addr, align 8, !dbg !5562
  %or_value3 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %10, i32 0, i32 2, !dbg !5563
  store i8 0, i8* %or_value3, align 1, !dbg !5564
  br label %sw.epilog, !dbg !5565

sw.bb4:                                           ; preds = %if.end
  %11 = load %struct.dt9812_rmw_byte*, %struct.dt9812_rmw_byte** %rmw.addr, align 8, !dbg !5566
  %or_value5 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %11, i32 0, i32 2, !dbg !5567
  store i8 1, i8* %or_value5, align 1, !dbg !5568
  br label %sw.epilog, !dbg !5569

sw.bb6:                                           ; preds = %if.end
  %12 = load %struct.dt9812_rmw_byte*, %struct.dt9812_rmw_byte** %rmw.addr, align 8, !dbg !5570
  %or_value7 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %12, i32 0, i32 2, !dbg !5571
  store i8 2, i8* %or_value7, align 1, !dbg !5572
  br label %sw.epilog, !dbg !5573

sw.bb8:                                           ; preds = %if.end
  %13 = load %struct.dt9812_rmw_byte*, %struct.dt9812_rmw_byte** %rmw.addr, align 8, !dbg !5574
  %or_value9 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %13, i32 0, i32 2, !dbg !5575
  store i8 3, i8* %or_value9, align 1, !dbg !5576
  br label %sw.epilog, !dbg !5577

sw.bb10:                                          ; preds = %if.end
  %14 = load %struct.dt9812_rmw_byte*, %struct.dt9812_rmw_byte** %rmw.addr, align 8, !dbg !5578
  %or_value11 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %14, i32 0, i32 2, !dbg !5579
  store i8 4, i8* %or_value11, align 1, !dbg !5580
  br label %sw.epilog, !dbg !5581

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb
  ret void, !dbg !5582
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dt9812_configure_mux(%struct.comedi_device* %dev, %struct.dt9812_rmw_byte* %rmw, i32 %channel) #2 !dbg !5583 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %rmw.addr = alloca %struct.dt9812_rmw_byte*, align 8
  %channel.addr = alloca i32, align 4
  %devpriv = alloca %struct.dt9812_private*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5586, metadata !DIExpression()), !dbg !5587
  store %struct.dt9812_rmw_byte* %rmw, %struct.dt9812_rmw_byte** %rmw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dt9812_rmw_byte** %rmw.addr, metadata !5588, metadata !DIExpression()), !dbg !5589
  store i32 %channel, i32* %channel.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %channel.addr, metadata !5590, metadata !DIExpression()), !dbg !5591
  call void @llvm.dbg.declare(metadata %struct.dt9812_private** %devpriv, metadata !5592, metadata !DIExpression()), !dbg !5593
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5594
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5595
  %1 = load i8*, i8** %private, align 8, !dbg !5595
  %2 = bitcast i8* %1 to %struct.dt9812_private*, !dbg !5594
  store %struct.dt9812_private* %2, %struct.dt9812_private** %devpriv, align 8, !dbg !5593
  %3 = load %struct.dt9812_private*, %struct.dt9812_private** %devpriv, align 8, !dbg !5596
  %device = getelementptr inbounds %struct.dt9812_private, %struct.dt9812_private* %3, i32 0, i32 3, !dbg !5598
  %4 = load i16, i16* %device, align 8, !dbg !5598
  %conv = zext i16 %4 to i32, !dbg !5596
  %cmp = icmp eq i32 %conv, 0, !dbg !5599
  br i1 %cmp, label %if.then, label %if.else, !dbg !5600

if.then:                                          ; preds = %entry
  %5 = load %struct.dt9812_rmw_byte*, %struct.dt9812_rmw_byte** %rmw.addr, align 8, !dbg !5601
  %address = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %5, i32 0, i32 0, !dbg !5603
  store i8 -112, i8* %address, align 1, !dbg !5604
  %6 = load %struct.dt9812_rmw_byte*, %struct.dt9812_rmw_byte** %rmw.addr, align 8, !dbg !5605
  %and_mask = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %6, i32 0, i32 1, !dbg !5606
  store i8 -32, i8* %and_mask, align 1, !dbg !5607
  %7 = load i32, i32* %channel.addr, align 4, !dbg !5608
  %shl = shl i32 %7, 5, !dbg !5609
  %conv2 = trunc i32 %shl to i8, !dbg !5608
  %8 = load %struct.dt9812_rmw_byte*, %struct.dt9812_rmw_byte** %rmw.addr, align 8, !dbg !5610
  %or_value = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %8, i32 0, i32 2, !dbg !5611
  store i8 %conv2, i8* %or_value, align 1, !dbg !5612
  br label %if.end, !dbg !5613

if.else:                                          ; preds = %entry
  %9 = load %struct.dt9812_rmw_byte*, %struct.dt9812_rmw_byte** %rmw.addr, align 8, !dbg !5614
  %address3 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %9, i32 0, i32 0, !dbg !5616
  store i8 -69, i8* %address3, align 1, !dbg !5617
  %10 = load %struct.dt9812_rmw_byte*, %struct.dt9812_rmw_byte** %rmw.addr, align 8, !dbg !5618
  %and_mask4 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %10, i32 0, i32 1, !dbg !5619
  store i8 -1, i8* %and_mask4, align 1, !dbg !5620
  %11 = load i32, i32* %channel.addr, align 4, !dbg !5621
  %and = and i32 %11, 7, !dbg !5622
  %conv5 = trunc i32 %and to i8, !dbg !5621
  %12 = load %struct.dt9812_rmw_byte*, %struct.dt9812_rmw_byte** %rmw.addr, align 8, !dbg !5623
  %or_value6 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %12, i32 0, i32 2, !dbg !5624
  store i8 %conv5, i8* %or_value6, align 1, !dbg !5625
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !5626
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dt9812_rmw_multiple_registers(%struct.comedi_device* %dev, i32 %reg_count, %struct.dt9812_rmw_byte* %rmw) #2 !dbg !5627 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %reg_count.addr = alloca i32, align 4
  %rmw.addr = alloca %struct.dt9812_rmw_byte*, align 8
  %usb = alloca %struct.usb_device*, align 8
  %devpriv = alloca %struct.dt9812_private*, align 8
  %cmd = alloca %struct.dt9812_usb_cmd, align 4
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5630, metadata !DIExpression()), !dbg !5631
  store i32 %reg_count, i32* %reg_count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reg_count.addr, metadata !5632, metadata !DIExpression()), !dbg !5633
  store %struct.dt9812_rmw_byte* %rmw, %struct.dt9812_rmw_byte** %rmw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dt9812_rmw_byte** %rmw.addr, metadata !5634, metadata !DIExpression()), !dbg !5635
  call void @llvm.dbg.declare(metadata %struct.usb_device** %usb, metadata !5636, metadata !DIExpression()), !dbg !5637
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5638
  %call = call %struct.usb_device* @comedi_to_usb_dev(%struct.comedi_device* %0) #6, !dbg !5639
  store %struct.usb_device* %call, %struct.usb_device** %usb, align 8, !dbg !5637
  call void @llvm.dbg.declare(metadata %struct.dt9812_private** %devpriv, metadata !5640, metadata !DIExpression()), !dbg !5641
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5642
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %1, i32 0, i32 3, !dbg !5643
  %2 = load i8*, i8** %private, align 8, !dbg !5643
  %3 = bitcast i8* %2 to %struct.dt9812_private*, !dbg !5642
  store %struct.dt9812_private* %3, %struct.dt9812_private** %devpriv, align 8, !dbg !5641
  call void @llvm.dbg.declare(metadata %struct.dt9812_usb_cmd* %cmd, metadata !5644, metadata !DIExpression()), !dbg !5645
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5646, metadata !DIExpression()), !dbg !5647
  call void @llvm.dbg.declare(metadata i32* %count, metadata !5648, metadata !DIExpression()), !dbg !5649
  %cmd1 = getelementptr inbounds %struct.dt9812_usb_cmd, %struct.dt9812_usb_cmd* %cmd, i32 0, i32 0, !dbg !5650
  store i32 7, i32* %cmd1, align 4, !dbg !5651
  %4 = load i32, i32* %reg_count.addr, align 4, !dbg !5652
  %conv = trunc i32 %4 to i8, !dbg !5652
  %u = getelementptr inbounds %struct.dt9812_usb_cmd, %struct.dt9812_usb_cmd* %cmd, i32 0, i32 1, !dbg !5653
  %rmw_multi_info = bitcast %union.anon.66* %u to %struct.dt9812_rmw_multi*, !dbg !5654
  %count2 = getelementptr inbounds %struct.dt9812_rmw_multi, %struct.dt9812_rmw_multi* %rmw_multi_info, i32 0, i32 0, !dbg !5655
  store i8 %conv, i8* %count2, align 4, !dbg !5656
  store i32 0, i32* %i, align 4, !dbg !5657
  br label %for.cond, !dbg !5659

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !dbg !5660
  %6 = load i32, i32* %reg_count.addr, align 4, !dbg !5662
  %cmp = icmp slt i32 %5, %6, !dbg !5663
  br i1 %cmp, label %for.body, label %for.end, !dbg !5664

for.body:                                         ; preds = %for.cond
  %u4 = getelementptr inbounds %struct.dt9812_usb_cmd, %struct.dt9812_usb_cmd* %cmd, i32 0, i32 1, !dbg !5665
  %rmw_multi_info5 = bitcast %union.anon.66* %u4 to %struct.dt9812_rmw_multi*, !dbg !5666
  %rmw6 = getelementptr inbounds %struct.dt9812_rmw_multi, %struct.dt9812_rmw_multi* %rmw_multi_info5, i32 0, i32 1, !dbg !5667
  %7 = load i32, i32* %i, align 4, !dbg !5668
  %idxprom = sext i32 %7 to i64, !dbg !5669
  %arrayidx = getelementptr [9 x %struct.dt9812_rmw_byte], [9 x %struct.dt9812_rmw_byte]* %rmw6, i64 0, i64 %idxprom, !dbg !5669
  %8 = load %struct.dt9812_rmw_byte*, %struct.dt9812_rmw_byte** %rmw.addr, align 8, !dbg !5670
  %9 = load i32, i32* %i, align 4, !dbg !5671
  %idxprom7 = sext i32 %9 to i64, !dbg !5670
  %arrayidx8 = getelementptr %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %8, i64 %idxprom7, !dbg !5670
  %10 = bitcast %struct.dt9812_rmw_byte* %arrayidx to i8*, !dbg !5670
  %11 = bitcast %struct.dt9812_rmw_byte* %arrayidx8 to i8*, !dbg !5670
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 %11, i64 3, i1 false), !dbg !5670
  br label %for.inc, !dbg !5669

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !5672
  %inc = add i32 %12, 1, !dbg !5672
  store i32 %inc, i32* %i, align 4, !dbg !5672
  br label %for.cond, !dbg !5673, !llvm.loop !5674

for.end:                                          ; preds = %for.cond
  %13 = load %struct.usb_device*, %struct.usb_device** %usb, align 8, !dbg !5676
  %14 = load %struct.usb_device*, %struct.usb_device** %usb, align 8, !dbg !5677
  %15 = load %struct.dt9812_private*, %struct.dt9812_private** %devpriv, align 8, !dbg !5677
  %cmd_wr = getelementptr inbounds %struct.dt9812_private, %struct.dt9812_private* %15, i32 0, i32 1, !dbg !5677
  %addr = getelementptr inbounds %struct.anon.65, %struct.anon.65* %cmd_wr, i32 0, i32 0, !dbg !5677
  %16 = load i8, i8* %addr, align 8, !dbg !5677
  %conv9 = zext i8 %16 to i32, !dbg !5677
  %call10 = call i32 @__create_pipe(%struct.usb_device* %14, i32 %conv9) #6, !dbg !5677
  %or = or i32 -1073741824, %call10, !dbg !5677
  %17 = bitcast %struct.dt9812_usb_cmd* %cmd to i8*, !dbg !5678
  %call11 = call i32 @usb_bulk_msg(%struct.usb_device* %13, i32 %or, i8* %17, i32 32, i32* %count, i32 1000) #6, !dbg !5679
  ret i32 %call11, !dbg !5680
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dt9812_analog_out(%struct.comedi_device* %dev, i32 %channel, i16 zeroext %value) #2 !dbg !5681 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %channel.addr = alloca i32, align 4
  %value.addr = alloca i16, align 2
  %devpriv = alloca %struct.dt9812_private*, align 8
  %rmw = alloca [3 x %struct.dt9812_rmw_byte], align 1
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5684, metadata !DIExpression()), !dbg !5685
  store i32 %channel, i32* %channel.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %channel.addr, metadata !5686, metadata !DIExpression()), !dbg !5687
  store i16 %value, i16* %value.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %value.addr, metadata !5688, metadata !DIExpression()), !dbg !5689
  call void @llvm.dbg.declare(metadata %struct.dt9812_private** %devpriv, metadata !5690, metadata !DIExpression()), !dbg !5691
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5692
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5693
  %1 = load i8*, i8** %private, align 8, !dbg !5693
  %2 = bitcast i8* %1 to %struct.dt9812_private*, !dbg !5692
  store %struct.dt9812_private* %2, %struct.dt9812_private** %devpriv, align 8, !dbg !5691
  call void @llvm.dbg.declare(metadata [3 x %struct.dt9812_rmw_byte]* %rmw, metadata !5694, metadata !DIExpression()), !dbg !5695
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5696, metadata !DIExpression()), !dbg !5697
  %3 = load %struct.dt9812_private*, %struct.dt9812_private** %devpriv, align 8, !dbg !5698
  %mut = getelementptr inbounds %struct.dt9812_private, %struct.dt9812_private* %3, i32 0, i32 0, !dbg !5699
  call void @mutex_lock(%struct.mutex* %mut) #6, !dbg !5700
  %4 = load i32, i32* %channel.addr, align 4, !dbg !5701
  switch i32 %4, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb19
  ], !dbg !5702

sw.bb:                                            ; preds = %entry
  %arrayidx = getelementptr [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %rmw, i64 0, i64 0, !dbg !5703
  %address = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %arrayidx, i32 0, i32 0, !dbg !5705
  store i8 -44, i8* %address, align 1, !dbg !5706
  %arrayidx1 = getelementptr [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %rmw, i64 0, i64 0, !dbg !5707
  %and_mask = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %arrayidx1, i32 0, i32 1, !dbg !5708
  store i8 -1, i8* %and_mask, align 1, !dbg !5709
  %arrayidx2 = getelementptr [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %rmw, i64 0, i64 0, !dbg !5710
  %or_value = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %arrayidx2, i32 0, i32 2, !dbg !5711
  store i8 -128, i8* %or_value, align 1, !dbg !5712
  %arrayidx3 = getelementptr [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %rmw, i64 0, i64 1, !dbg !5713
  %address4 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %arrayidx3, i32 0, i32 0, !dbg !5714
  store i8 -46, i8* %address4, align 1, !dbg !5715
  %arrayidx5 = getelementptr [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %rmw, i64 0, i64 1, !dbg !5716
  %and_mask6 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %arrayidx5, i32 0, i32 1, !dbg !5717
  store i8 -1, i8* %and_mask6, align 1, !dbg !5718
  %5 = load i16, i16* %value.addr, align 2, !dbg !5719
  %conv = zext i16 %5 to i32, !dbg !5719
  %and = and i32 %conv, 255, !dbg !5720
  %conv7 = trunc i32 %and to i8, !dbg !5719
  %arrayidx8 = getelementptr [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %rmw, i64 0, i64 1, !dbg !5721
  %or_value9 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %arrayidx8, i32 0, i32 2, !dbg !5722
  store i8 %conv7, i8* %or_value9, align 1, !dbg !5723
  %arrayidx10 = getelementptr [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %rmw, i64 0, i64 2, !dbg !5724
  %address11 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %arrayidx10, i32 0, i32 0, !dbg !5725
  store i8 -45, i8* %address11, align 1, !dbg !5726
  %arrayidx12 = getelementptr [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %rmw, i64 0, i64 2, !dbg !5727
  %and_mask13 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %arrayidx12, i32 0, i32 1, !dbg !5728
  store i8 -1, i8* %and_mask13, align 1, !dbg !5729
  %6 = load i16, i16* %value.addr, align 2, !dbg !5730
  %conv14 = zext i16 %6 to i32, !dbg !5730
  %shr = ashr i32 %conv14, 8, !dbg !5731
  %and15 = and i32 %shr, 15, !dbg !5732
  %conv16 = trunc i32 %and15 to i8, !dbg !5733
  %arrayidx17 = getelementptr [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %rmw, i64 0, i64 2, !dbg !5734
  %or_value18 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %arrayidx17, i32 0, i32 2, !dbg !5735
  store i8 %conv16, i8* %or_value18, align 1, !dbg !5736
  br label %sw.epilog, !dbg !5737

sw.bb19:                                          ; preds = %entry
  %arrayidx20 = getelementptr [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %rmw, i64 0, i64 0, !dbg !5738
  %address21 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %arrayidx20, i32 0, i32 0, !dbg !5739
  store i8 -41, i8* %address21, align 1, !dbg !5740
  %arrayidx22 = getelementptr [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %rmw, i64 0, i64 0, !dbg !5741
  %and_mask23 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %arrayidx22, i32 0, i32 1, !dbg !5742
  store i8 -1, i8* %and_mask23, align 1, !dbg !5743
  %arrayidx24 = getelementptr [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %rmw, i64 0, i64 0, !dbg !5744
  %or_value25 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %arrayidx24, i32 0, i32 2, !dbg !5745
  store i8 -128, i8* %or_value25, align 1, !dbg !5746
  %arrayidx26 = getelementptr [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %rmw, i64 0, i64 1, !dbg !5747
  %address27 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %arrayidx26, i32 0, i32 0, !dbg !5748
  store i8 -43, i8* %address27, align 1, !dbg !5749
  %arrayidx28 = getelementptr [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %rmw, i64 0, i64 1, !dbg !5750
  %and_mask29 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %arrayidx28, i32 0, i32 1, !dbg !5751
  store i8 -1, i8* %and_mask29, align 1, !dbg !5752
  %7 = load i16, i16* %value.addr, align 2, !dbg !5753
  %conv30 = zext i16 %7 to i32, !dbg !5753
  %and31 = and i32 %conv30, 255, !dbg !5754
  %conv32 = trunc i32 %and31 to i8, !dbg !5753
  %arrayidx33 = getelementptr [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %rmw, i64 0, i64 1, !dbg !5755
  %or_value34 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %arrayidx33, i32 0, i32 2, !dbg !5756
  store i8 %conv32, i8* %or_value34, align 1, !dbg !5757
  %arrayidx35 = getelementptr [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %rmw, i64 0, i64 2, !dbg !5758
  %address36 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %arrayidx35, i32 0, i32 0, !dbg !5759
  store i8 -42, i8* %address36, align 1, !dbg !5760
  %arrayidx37 = getelementptr [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %rmw, i64 0, i64 2, !dbg !5761
  %and_mask38 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %arrayidx37, i32 0, i32 1, !dbg !5762
  store i8 -1, i8* %and_mask38, align 1, !dbg !5763
  %8 = load i16, i16* %value.addr, align 2, !dbg !5764
  %conv39 = zext i16 %8 to i32, !dbg !5764
  %shr40 = ashr i32 %conv39, 8, !dbg !5765
  %and41 = and i32 %shr40, 15, !dbg !5766
  %conv42 = trunc i32 %and41 to i8, !dbg !5767
  %arrayidx43 = getelementptr [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %rmw, i64 0, i64 2, !dbg !5768
  %or_value44 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %arrayidx43, i32 0, i32 2, !dbg !5769
  store i8 %conv42, i8* %or_value44, align 1, !dbg !5770
  br label %sw.epilog, !dbg !5771

sw.epilog:                                        ; preds = %entry, %sw.bb19, %sw.bb
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5772
  %arraydecay = getelementptr inbounds [3 x %struct.dt9812_rmw_byte], [3 x %struct.dt9812_rmw_byte]* %rmw, i64 0, i64 0, !dbg !5773
  %call = call i32 @dt9812_rmw_multiple_registers(%struct.comedi_device* %9, i32 3, %struct.dt9812_rmw_byte* %arraydecay) #6, !dbg !5774
  store i32 %call, i32* %ret, align 4, !dbg !5775
  %10 = load %struct.dt9812_private*, %struct.dt9812_private** %devpriv, align 8, !dbg !5776
  %mut45 = getelementptr inbounds %struct.dt9812_private, %struct.dt9812_private* %10, i32 0, i32 0, !dbg !5777
  call void @mutex_unlock(%struct.mutex* %mut45) #6, !dbg !5778
  %11 = load i32, i32* %ret, align 4, !dbg !5779
  ret i32 %11, !dbg !5780
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_readback_insn_read(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dt9812_usb_probe(%struct.usb_interface* %intf, %struct.usb_device_id* %id) #2 !dbg !5781 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %id.addr = alloca %struct.usb_device_id*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5782, metadata !DIExpression()), !dbg !5783
  store %struct.usb_device_id* %id, %struct.usb_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device_id** %id.addr, metadata !5784, metadata !DIExpression()), !dbg !5785
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5786
  %1 = load %struct.usb_device_id*, %struct.usb_device_id** %id.addr, align 8, !dbg !5787
  %driver_info = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %1, i32 0, i32 12, !dbg !5788
  %2 = load i64, i64* %driver_info, align 8, !dbg !5788
  %call = call i32 @comedi_usb_auto_config(%struct.usb_interface* %0, %struct.comedi_driver* @dt9812_driver, i64 %2) #6, !dbg !5789
  ret i32 %call, !dbg !5790
}

; Function Attrs: noredzone
declare dso_local void @comedi_usb_auto_unconfig(%struct.usb_interface*) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_usb_auto_config(%struct.usb_interface*, %struct.comedi_driver*, i64) #1

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { noredzone }
attributes #7 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4207, !4208, !4209, !4210}
!llvm.ident = !{!4211}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dt9812_driver_init238", scope: !2, file: !3, line: 867, type: !195, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !194, globals: !203, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/staging/comedi/drivers/dt9812.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !100, !107, !111, !127, !139, !148, !153, !185}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !6, line: 15, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !14, line: 546, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!15 = !{!16, !17, !18}
!16 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !20, line: 65, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!21 = !{!22, !23}
!22 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!23 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !25, line: 16, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!26 = !{!27, !28, !29}
!27 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!28 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!29 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !31, line: 59, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!32 = !{!33, !34, !35, !36}
!33 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!34 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!35 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!36 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !38, line: 54, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!39 = !{!40, !41, !42}
!40 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!41 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!42 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !44, line: 296, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!45 = !{!46, !47, !48, !49, !50, !51}
!46 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!47 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!48 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!49 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!50 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!51 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !53, line: 9, baseType: !7, size: 32, elements: !54)
!53 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!54 = !{!55, !56, !57, !58, !59}
!55 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!56 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!57 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!58 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!59 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !61, line: 26, baseType: !7, size: 32, elements: !62)
!61 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!62 = !{!63, !64, !65}
!63 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!64 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!65 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !67, line: 44, baseType: !7, size: 32, elements: !68)
!67 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!68 = !{!69, !70, !71}
!69 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!70 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!71 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !73, line: 343, baseType: !7, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!74 = !{!75, !76, !77, !78}
!75 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!76 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!77 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!78 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !80, line: 524, baseType: !7, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!81 = !{!82, !83, !84, !85, !86}
!82 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!83 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!84 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!85 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!86 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !80, line: 502, baseType: !7, size: 32, elements: !88)
!88 = !{!89, !90, !91, !92}
!89 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!90 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!91 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!92 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_data_direction", file: !94, line: 5, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/dma-direction.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !97, !98, !99}
!96 = !DIEnumerator(name: "DMA_BIDIRECTIONAL", value: 0, isUnsigned: true)
!97 = !DIEnumerator(name: "DMA_TO_DEVICE", value: 1, isUnsigned: true)
!98 = !DIEnumerator(name: "DMA_FROM_DEVICE", value: 2, isUnsigned: true)
!99 = !DIEnumerator(name: "DMA_NONE", value: 3, isUnsigned: true)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_interface_condition", file: !101, line: 96, baseType: !7, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/linux/usb.h", directory: "/home/lizy2001/genbc/linux")
!102 = !{!103, !104, !105, !106}
!103 = !DIEnumerator(name: "USB_INTERFACE_UNBOUND", value: 0, isUnsigned: true)
!104 = !DIEnumerator(name: "USB_INTERFACE_BINDING", value: 1, isUnsigned: true)
!105 = !DIEnumerator(name: "USB_INTERFACE_BOUND", value: 2, isUnsigned: true)
!106 = !DIEnumerator(name: "USB_INTERFACE_UNBINDING", value: 3, isUnsigned: true)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 76, baseType: !7, size: 32, elements: !108)
!108 = !{!109, !110}
!109 = !DIEnumerator(name: "DT9812_DEVID_DT9812_10", value: 0, isUnsigned: true)
!110 = !DIEnumerator(name: "DT9812_DEVID_DT9812_2PT5", value: 1, isUnsigned: true)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "comedi_subdevice_type", file: !112, line: 221, baseType: !7, size: 32, elements: !113)
!112 = !DIFile(filename: "drivers/staging/comedi/drivers/../comedi.h", directory: "/home/lizy2001/genbc/linux")
!113 = !{!114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126}
!114 = !DIEnumerator(name: "COMEDI_SUBD_UNUSED", value: 0, isUnsigned: true)
!115 = !DIEnumerator(name: "COMEDI_SUBD_AI", value: 1, isUnsigned: true)
!116 = !DIEnumerator(name: "COMEDI_SUBD_AO", value: 2, isUnsigned: true)
!117 = !DIEnumerator(name: "COMEDI_SUBD_DI", value: 3, isUnsigned: true)
!118 = !DIEnumerator(name: "COMEDI_SUBD_DO", value: 4, isUnsigned: true)
!119 = !DIEnumerator(name: "COMEDI_SUBD_DIO", value: 5, isUnsigned: true)
!120 = !DIEnumerator(name: "COMEDI_SUBD_COUNTER", value: 6, isUnsigned: true)
!121 = !DIEnumerator(name: "COMEDI_SUBD_TIMER", value: 7, isUnsigned: true)
!122 = !DIEnumerator(name: "COMEDI_SUBD_MEMORY", value: 8, isUnsigned: true)
!123 = !DIEnumerator(name: "COMEDI_SUBD_CALIB", value: 9, isUnsigned: true)
!124 = !DIEnumerator(name: "COMEDI_SUBD_PROC", value: 10, isUnsigned: true)
!125 = !DIEnumerator(name: "COMEDI_SUBD_SERIAL", value: 11, isUnsigned: true)
!126 = !DIEnumerator(name: "COMEDI_SUBD_PWM", value: 12, isUnsigned: true)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_state", file: !128, line: 1156, baseType: !7, size: 32, elements: !129)
!128 = !DIFile(filename: "./include/uapi/linux/usb/ch9.h", directory: "/home/lizy2001/genbc/linux")
!129 = !{!130, !131, !132, !133, !134, !135, !136, !137, !138}
!130 = !DIEnumerator(name: "USB_STATE_NOTATTACHED", value: 0, isUnsigned: true)
!131 = !DIEnumerator(name: "USB_STATE_ATTACHED", value: 1, isUnsigned: true)
!132 = !DIEnumerator(name: "USB_STATE_POWERED", value: 2, isUnsigned: true)
!133 = !DIEnumerator(name: "USB_STATE_RECONNECTING", value: 3, isUnsigned: true)
!134 = !DIEnumerator(name: "USB_STATE_UNAUTHENTICATED", value: 4, isUnsigned: true)
!135 = !DIEnumerator(name: "USB_STATE_DEFAULT", value: 5, isUnsigned: true)
!136 = !DIEnumerator(name: "USB_STATE_ADDRESS", value: 6, isUnsigned: true)
!137 = !DIEnumerator(name: "USB_STATE_CONFIGURED", value: 7, isUnsigned: true)
!138 = !DIEnumerator(name: "USB_STATE_SUSPENDED", value: 8, isUnsigned: true)
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_speed", file: !128, line: 1146, baseType: !7, size: 32, elements: !140)
!140 = !{!141, !142, !143, !144, !145, !146, !147}
!141 = !DIEnumerator(name: "USB_SPEED_UNKNOWN", value: 0, isUnsigned: true)
!142 = !DIEnumerator(name: "USB_SPEED_LOW", value: 1, isUnsigned: true)
!143 = !DIEnumerator(name: "USB_SPEED_FULL", value: 2, isUnsigned: true)
!144 = !DIEnumerator(name: "USB_SPEED_HIGH", value: 3, isUnsigned: true)
!145 = !DIEnumerator(name: "USB_SPEED_WIRELESS", value: 4, isUnsigned: true)
!146 = !DIEnumerator(name: "USB_SPEED_SUPER", value: 5, isUnsigned: true)
!147 = !DIEnumerator(name: "USB_SPEED_SUPER_PLUS", value: 6, isUnsigned: true)
!148 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_removable", file: !101, line: 476, baseType: !7, size: 32, elements: !149)
!149 = !{!150, !151, !152}
!150 = !DIEnumerator(name: "USB_DEVICE_REMOVABLE_UNKNOWN", value: 0, isUnsigned: true)
!151 = !DIEnumerator(name: "USB_DEVICE_REMOVABLE", value: 1, isUnsigned: true)
!152 = !DIEnumerator(name: "USB_DEVICE_FIXED", value: 2, isUnsigned: true)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 92, baseType: !7, size: 32, elements: !154)
!154 = !{!155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184}
!155 = !DIEnumerator(name: "DT9812_LEAST_USB_FIRMWARE_CMD_CODE", value: 0, isUnsigned: true)
!156 = !DIEnumerator(name: "DT9812_W_FLASH_DATA", value: 0, isUnsigned: true)
!157 = !DIEnumerator(name: "DT9812_R_FLASH_DATA", value: 1, isUnsigned: true)
!158 = !DIEnumerator(name: "DT9812_R_SINGLE_BYTE_REG", value: 2, isUnsigned: true)
!159 = !DIEnumerator(name: "DT9812_W_SINGLE_BYTE_REG", value: 3, isUnsigned: true)
!160 = !DIEnumerator(name: "DT9812_R_MULTI_BYTE_REG", value: 4, isUnsigned: true)
!161 = !DIEnumerator(name: "DT9812_W_MULTI_BYTE_REG", value: 5, isUnsigned: true)
!162 = !DIEnumerator(name: "DT9812_RMW_SINGLE_BYTE_REG", value: 6, isUnsigned: true)
!163 = !DIEnumerator(name: "DT9812_RMW_MULTI_BYTE_REG", value: 7, isUnsigned: true)
!164 = !DIEnumerator(name: "DT9812_R_SINGLE_BYTE_SMBUS", value: 8, isUnsigned: true)
!165 = !DIEnumerator(name: "DT9812_W_SINGLE_BYTE_SMBUS", value: 9, isUnsigned: true)
!166 = !DIEnumerator(name: "DT9812_R_MULTI_BYTE_SMBUS", value: 10, isUnsigned: true)
!167 = !DIEnumerator(name: "DT9812_W_MULTI_BYTE_SMBUS", value: 11, isUnsigned: true)
!168 = !DIEnumerator(name: "DT9812_R_SINGLE_BYTE_DEV", value: 12, isUnsigned: true)
!169 = !DIEnumerator(name: "DT9812_W_SINGLE_BYTE_DEV", value: 13, isUnsigned: true)
!170 = !DIEnumerator(name: "DT9812_R_MULTI_BYTE_DEV", value: 14, isUnsigned: true)
!171 = !DIEnumerator(name: "DT9812_W_MULTI_BYTE_DEV", value: 15, isUnsigned: true)
!172 = !DIEnumerator(name: "DT9812_W_DAC_THRESHOLD", value: 16, isUnsigned: true)
!173 = !DIEnumerator(name: "DT9812_W_INT_ON_CHANGE_MASK", value: 17, isUnsigned: true)
!174 = !DIEnumerator(name: "DT9812_W_CGL", value: 18, isUnsigned: true)
!175 = !DIEnumerator(name: "DT9812_R_MULTI_BYTE_USBMEM", value: 19, isUnsigned: true)
!176 = !DIEnumerator(name: "DT9812_W_MULTI_BYTE_USBMEM", value: 20, isUnsigned: true)
!177 = !DIEnumerator(name: "DT9812_START_SUBSYSTEM", value: 21, isUnsigned: true)
!178 = !DIEnumerator(name: "DT9812_STOP_SUBSYSTEM", value: 22, isUnsigned: true)
!179 = !DIEnumerator(name: "DT9812_CALIBRATE_POT", value: 23, isUnsigned: true)
!180 = !DIEnumerator(name: "DT9812_W_DAC_FIFO_SIZE", value: 24, isUnsigned: true)
!181 = !DIEnumerator(name: "DT9812_W_CGL_DAC", value: 25, isUnsigned: true)
!182 = !DIEnumerator(name: "DT9812_R_SINGLE_VALUE_CMD", value: 26, isUnsigned: true)
!183 = !DIEnumerator(name: "DT9812_W_SINGLE_VALUE_CMD", value: 27, isUnsigned: true)
!184 = !DIEnumerator(name: "DT9812_MAX_USB_FIRMWARE_CMD_CODE", value: 28, isUnsigned: true)
!185 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dt9812_gain", file: !3, line: 82, baseType: !7, size: 32, elements: !186)
!186 = !{!187, !188, !189, !190, !191, !192, !193}
!187 = !DIEnumerator(name: "DT9812_GAIN_0PT25", value: 1, isUnsigned: true)
!188 = !DIEnumerator(name: "DT9812_GAIN_0PT5", value: 2, isUnsigned: true)
!189 = !DIEnumerator(name: "DT9812_GAIN_1", value: 4, isUnsigned: true)
!190 = !DIEnumerator(name: "DT9812_GAIN_2", value: 8, isUnsigned: true)
!191 = !DIEnumerator(name: "DT9812_GAIN_4", value: 16, isUnsigned: true)
!192 = !DIEnumerator(name: "DT9812_GAIN_8", value: 32, isUnsigned: true)
!193 = !DIEnumerator(name: "DT9812_GAIN_16", value: 64, isUnsigned: true)
!194 = !{!195, !196, !199, !201, !202}
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !197, line: 24, baseType: !198)
!197 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!198 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !200, line: 29, baseType: !196)
!200 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !197, line: 27, baseType: !7)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !200, line: 31, baseType: !201)
!203 = !{!0, !204, !211, !218, !223, !228, !233, !4051, !4054, !4204}
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(name: "__exitcall_dt9812_driver_exit", scope: !2, file: !3, line: 867, type: !206, isLocal: true, isDefinition: true)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !207, line: 117, baseType: !208)
!207 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{null}
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author239", scope: !2, file: !3, line: 869, type: !213, isLocal: true, isDefinition: true, align: 8)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 504, elements: !216)
!214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!215 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!216 = !{!217}
!217 = !DISubrange(count: 63)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description240", scope: !2, file: !3, line: 870, type: !220, isLocal: true, isDefinition: true, align: 8)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 320, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 40)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file241", scope: !2, file: !3, line: 871, type: !225, isLocal: true, isDefinition: true, align: 8)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 400, elements: !226)
!226 = !{!227}
!227 = !DISubrange(count: 50)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license242", scope: !2, file: !3, line: 871, type: !230, isLocal: true, isDefinition: true, align: 8)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 152, elements: !231)
!231 = !{!232}
!232 = !DISubrange(count: 19)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(name: "dt9812_driver", scope: !2, file: !3, line: 842, type: !235, isLocal: true, isDefinition: true)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_driver", file: !236, line: 437, size: 576, elements: !237)
!236 = !DIFile(filename: "drivers/staging/comedi/drivers/../comedidev.h", directory: "/home/lizy2001/genbc/linux")
!237 = !{!238, !240, !242, !246, !4041, !4042, !4046, !4047, !4050}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !235, file: !236, line: 439, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !235, file: !236, line: 441, baseType: !241, size: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !235, file: !236, line: 442, baseType: !243, size: 64, offset: 128)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !245, line: 76, flags: DIFlagFwdDecl)
!245 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!246 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !235, file: !236, line: 443, baseType: !247, size: 64, offset: 192)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{!250, !251, !4034}
!250 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_device", file: !236, line: 541, size: 1920, elements: !253)
!253 = !{!254, !255, !256, !259, !260, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4022, !4026, !4030}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !252, file: !236, line: 542, baseType: !250, size: 32)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !252, file: !236, line: 543, baseType: !239, size: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "pacer", scope: !252, file: !236, line: 544, baseType: !257, size: 64, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_8254", file: !236, line: 544, flags: DIFlagFwdDecl)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !252, file: !236, line: 545, baseType: !195, size: 64, offset: 192)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !252, file: !236, line: 547, baseType: !261, size: 64, offset: 256)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !263)
!263 = !{!264, !3419, !3420, !3423, !3424, !3475, !3566, !3567, !3568, !3569, !3570, !3579, !3684, !3697, !3700, !3701, !3705, !3707, !3708, !3709, !3713, !3719, !3720, !3723, !3727, !3817, !3818, !3819, !3820, !3821, !3853, !3854, !3855, !3858, !3861, !3862, !3863, !3864}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !262, file: !73, line: 462, baseType: !265, size: 512)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !266, line: 64, size: 512, elements: !267)
!266 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!267 = !{!268, !269, !276, !278, !338, !3270, !3409, !3414, !3415, !3416, !3417, !3418}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !265, file: !266, line: 65, baseType: !241, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !265, file: !266, line: 66, baseType: !270, size: 128, offset: 64)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !271, line: 178, size: 128, elements: !272)
!271 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!272 = !{!273, !275}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !270, file: !271, line: 179, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !270, file: !271, line: 179, baseType: !274, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !265, file: !266, line: 67, baseType: !277, size: 64, offset: 192)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !265, file: !266, line: 68, baseType: !279, size: 64, offset: 256)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !266, line: 192, size: 704, elements: !281)
!281 = !{!282, !283, !299, !300}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !280, file: !266, line: 193, baseType: !270, size: 128)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !280, file: !266, line: 194, baseType: !284, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !285, line: 83, baseType: !286)
!285 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !285, line: 71, elements: !287)
!287 = !{!288}
!288 = !DIDerivedType(tag: DW_TAG_member, scope: !286, file: !285, line: 72, baseType: !289)
!289 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !286, file: !285, line: 72, elements: !290)
!290 = !{!291}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !289, file: !285, line: 73, baseType: !292)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !285, line: 20, elements: !293)
!293 = !{!294}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !292, file: !285, line: 21, baseType: !295)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !296, line: 25, baseType: !297)
!296 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !296, line: 25, elements: !298)
!298 = !{}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !280, file: !266, line: 195, baseType: !265, size: 512, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !280, file: !266, line: 196, baseType: !301, size: 64, offset: 640)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !303)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !266, line: 156, size: 192, elements: !304)
!304 = !{!305, !310, !315}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !303, file: !266, line: 157, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!250, !279, !277}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !303, file: !266, line: 158, baseType: !311, size: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !312)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{!241, !279, !277}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !303, file: !266, line: 159, baseType: !316, size: 64, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!250, !279, !277, !320}
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !266, line: 148, size: 20736, elements: !322)
!322 = !{!323, !328, !332, !333, !337}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !321, file: !266, line: 149, baseType: !324, size: 192)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 192, elements: !326)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!326 = !{!327}
!327 = !DISubrange(count: 3)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !321, file: !266, line: 150, baseType: !329, size: 4096, offset: 192)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 4096, elements: !330)
!330 = !{!331}
!331 = !DISubrange(count: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !321, file: !266, line: 151, baseType: !250, size: 32, offset: 4288)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !321, file: !266, line: 152, baseType: !334, size: 16384, offset: 4320)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 16384, elements: !335)
!335 = !{!336}
!336 = !DISubrange(count: 2048)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !321, file: !266, line: 153, baseType: !250, size: 32, offset: 20704)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !265, file: !266, line: 69, baseType: !339, size: 64, offset: 320)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !266, line: 138, size: 448, elements: !341)
!341 = !{!342, !346, !375, !377, !3232, !3260, !3264}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !340, file: !266, line: 139, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !277}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !340, file: !266, line: 140, baseType: !347, size: 64, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !349)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !350, line: 230, size: 128, elements: !351)
!350 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!351 = !{!352, !367}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !349, file: !350, line: 231, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{!356, !277, !361, !325}
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !271, line: 60, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !358, line: 73, baseType: !359)
!358 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !358, line: 15, baseType: !360)
!360 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !350, line: 30, size: 128, elements: !363)
!363 = !{!364, !365}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !362, file: !350, line: 31, baseType: !241, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !362, file: !350, line: 32, baseType: !366, size: 16, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !271, line: 19, baseType: !198)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !349, file: !350, line: 232, baseType: !368, size: 64, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DISubroutineType(types: !370)
!370 = !{!356, !277, !361, !241, !371}
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !271, line: 55, baseType: !372)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !358, line: 72, baseType: !373)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !358, line: 16, baseType: !374)
!374 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !340, file: !266, line: 141, baseType: !376, size: 64, offset: 128)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !340, file: !266, line: 142, baseType: !378, size: 64, offset: 192)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !381)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !350, line: 84, size: 320, elements: !382)
!382 = !{!383, !384, !388, !3229, !3230}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !381, file: !350, line: 85, baseType: !241, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !381, file: !350, line: 86, baseType: !385, size: 64, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{!366, !277, !361, !250}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !381, file: !350, line: 88, baseType: !389, size: 64, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{!366, !277, !392, !250}
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !350, line: 168, size: 448, elements: !394)
!394 = !{!395, !396, !397, !398, !3224, !3225}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !393, file: !350, line: 169, baseType: !362, size: 128)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !393, file: !350, line: 170, baseType: !371, size: 64, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !393, file: !350, line: 171, baseType: !195, size: 64, offset: 192)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !393, file: !350, line: 172, baseType: !399, size: 64, offset: 256)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DISubroutineType(types: !401)
!401 = !{!356, !402, !277, !392, !325, !579, !371}
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !404)
!404 = !{!405, !423, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3207, !3208, !3217, !3218, !3219, !3220, !3221, !3222, !3223}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !403, file: !44, line: 920, baseType: !406, size: 128)
!406 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !403, file: !44, line: 917, size: 128, elements: !407)
!407 = !{!408, !414}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !406, file: !44, line: 918, baseType: !409, size: 64)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !410, line: 58, size: 64, elements: !411)
!410 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!411 = !{!412}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !409, file: !410, line: 59, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !406, file: !44, line: 919, baseType: !415, size: 128, align: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !271, line: 216, size: 128, align: 64, elements: !416)
!416 = !{!417, !419}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !415, file: !271, line: 217, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !415, file: !271, line: 218, baseType: !420, size: 64, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !418}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !403, file: !44, line: 921, baseType: !424, size: 128, offset: 128)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !425, line: 8, size: 128, elements: !426)
!425 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!426 = !{!427, !431}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !424, file: !425, line: 9, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !430, line: 18, flags: DIFlagFwdDecl)
!430 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!431 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !424, file: !425, line: 10, baseType: !432, size: 64, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !430, line: 89, size: 1536, elements: !434)
!434 = !{!435, !436, !446, !454, !455, !476, !3157, !3159, !3171, !3172, !3173, !3174, !3175, !3181, !3182, !3183}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !433, file: !430, line: 91, baseType: !7, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !433, file: !430, line: 92, baseType: !437, size: 32, offset: 32)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !438, line: 277, baseType: !439)
!438 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !438, line: 277, size: 32, elements: !440)
!440 = !{!441}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !439, file: !438, line: 277, baseType: !442, size: 32)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !438, line: 70, baseType: !443)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !438, line: 65, size: 32, elements: !444)
!444 = !{!445}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !443, file: !438, line: 66, baseType: !7, size: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !433, file: !430, line: 93, baseType: !447, size: 128, offset: 64)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !448, line: 38, size: 128, elements: !449)
!448 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!449 = !{!450, !452}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !447, file: !448, line: 39, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !447, file: !448, line: 39, baseType: !453, size: 64, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !433, file: !430, line: 94, baseType: !432, size: 64, offset: 192)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !433, file: !430, line: 95, baseType: !456, size: 128, offset: 256)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !430, line: 47, size: 128, elements: !457)
!457 = !{!458, !472}
!458 = !DIDerivedType(tag: DW_TAG_member, scope: !456, file: !430, line: 48, baseType: !459, size: 64)
!459 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !456, file: !430, line: 48, size: 64, elements: !460)
!460 = !{!461, !468}
!461 = !DIDerivedType(tag: DW_TAG_member, scope: !459, file: !430, line: 49, baseType: !462, size: 64)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !459, file: !430, line: 49, size: 64, elements: !463)
!463 = !{!464, !467}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !462, file: !430, line: 50, baseType: !465, size: 32)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !466, line: 21, baseType: !201)
!466 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!467 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !462, file: !430, line: 50, baseType: !465, size: 32, offset: 32)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !459, file: !430, line: 52, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !466, line: 23, baseType: !470)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !197, line: 31, baseType: !471)
!471 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !456, file: !430, line: 54, baseType: !473, size: 64, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !475)
!475 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !433, file: !430, line: 96, baseType: !477, size: 64, offset: 384)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !479)
!479 = !{!480, !481, !482, !490, !497, !498, !646, !2869, !2870, !2871, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !3133, !3141, !3142, !3143, !3153, !3154, !3155, !3156}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !478, file: !44, line: 611, baseType: !366, size: 16)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !478, file: !44, line: 612, baseType: !198, size: 16, offset: 16)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !478, file: !44, line: 613, baseType: !483, size: 32, offset: 32)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !484, line: 23, baseType: !485)
!484 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !484, line: 21, size: 32, elements: !486)
!486 = !{!487}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !485, file: !484, line: 22, baseType: !488, size: 32)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !271, line: 32, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !358, line: 49, baseType: !7)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !478, file: !44, line: 614, baseType: !491, size: 32, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !484, line: 28, baseType: !492)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !484, line: 26, size: 32, elements: !493)
!493 = !{!494}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !492, file: !484, line: 27, baseType: !495, size: 32)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !271, line: 33, baseType: !496)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !358, line: 50, baseType: !7)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !478, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !478, file: !44, line: 622, baseType: !499, size: 64, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !501)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !502)
!502 = !{!503, !507, !520, !524, !530, !534, !540, !544, !548, !552, !556, !557, !563, !567, !593, !622, !626, !632, !637, !641, !642}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !501, file: !44, line: 1865, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!432, !477, !432, !7}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !501, file: !44, line: 1866, baseType: !508, size: 64, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!241, !432, !477, !511}
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !513, line: 10, size: 128, elements: !514)
!513 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!514 = !{!515, !519}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !512, file: !513, line: 11, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{null, !195}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !512, file: !513, line: 12, baseType: !195, size: 64, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !501, file: !44, line: 1867, baseType: !521, size: 64, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{!250, !477, !250}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !501, file: !44, line: 1868, baseType: !525, size: 64, offset: 192)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!528, !477, !250}
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !501, file: !44, line: 1870, baseType: !531, size: 64, offset: 256)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!250, !432, !325, !250}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !501, file: !44, line: 1872, baseType: !535, size: 64, offset: 320)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!250, !477, !432, !366, !538}
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !271, line: 30, baseType: !539)
!539 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !501, file: !44, line: 1873, baseType: !541, size: 64, offset: 384)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!250, !432, !477, !432}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !501, file: !44, line: 1874, baseType: !545, size: 64, offset: 448)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!250, !477, !432}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !501, file: !44, line: 1875, baseType: !549, size: 64, offset: 512)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{!250, !477, !432, !241}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !501, file: !44, line: 1876, baseType: !553, size: 64, offset: 576)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{!250, !477, !432, !366}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !501, file: !44, line: 1877, baseType: !545, size: 64, offset: 640)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !501, file: !44, line: 1878, baseType: !558, size: 64, offset: 704)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{!250, !477, !432, !366, !561}
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !271, line: 16, baseType: !562)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !271, line: 13, baseType: !465)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !501, file: !44, line: 1879, baseType: !564, size: 64, offset: 768)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{!250, !477, !432, !477, !432, !7}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !501, file: !44, line: 1881, baseType: !568, size: 64, offset: 832)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!250, !432, !571}
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !573)
!573 = !{!574, !575, !576, !577, !578, !582, !590, !591, !592}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !572, file: !44, line: 220, baseType: !7, size: 32)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !572, file: !44, line: 221, baseType: !366, size: 16, offset: 32)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !572, file: !44, line: 222, baseType: !483, size: 32, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !572, file: !44, line: 223, baseType: !491, size: 32, offset: 96)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !572, file: !44, line: 224, baseType: !579, size: 64, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !271, line: 46, baseType: !580)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !358, line: 88, baseType: !581)
!581 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !572, file: !44, line: 225, baseType: !583, size: 128, offset: 192)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !584, line: 13, size: 128, elements: !585)
!584 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!585 = !{!586, !589}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !583, file: !584, line: 14, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !584, line: 8, baseType: !588)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !197, line: 30, baseType: !581)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !583, file: !584, line: 15, baseType: !360, size: 64, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !572, file: !44, line: 226, baseType: !583, size: 128, offset: 320)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !572, file: !44, line: 227, baseType: !583, size: 128, offset: 448)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !572, file: !44, line: 234, baseType: !402, size: 64, offset: 576)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !501, file: !44, line: 1882, baseType: !594, size: 64, offset: 896)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{!250, !597, !599, !465, !7}
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !424)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !601, line: 22, size: 1152, elements: !602)
!601 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!602 = !{!603, !604, !605, !606, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !600, file: !601, line: 23, baseType: !465, size: 32)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !600, file: !601, line: 24, baseType: !366, size: 16, offset: 32)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !600, file: !601, line: 25, baseType: !7, size: 32, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !600, file: !601, line: 26, baseType: !607, size: 32, offset: 96)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !271, line: 104, baseType: !465)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !600, file: !601, line: 27, baseType: !469, size: 64, offset: 128)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !600, file: !601, line: 28, baseType: !469, size: 64, offset: 192)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !600, file: !601, line: 37, baseType: !469, size: 64, offset: 256)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !600, file: !601, line: 38, baseType: !561, size: 32, offset: 320)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !600, file: !601, line: 39, baseType: !561, size: 32, offset: 352)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !600, file: !601, line: 40, baseType: !483, size: 32, offset: 384)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !600, file: !601, line: 41, baseType: !491, size: 32, offset: 416)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !600, file: !601, line: 42, baseType: !579, size: 64, offset: 448)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !600, file: !601, line: 43, baseType: !583, size: 128, offset: 512)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !600, file: !601, line: 44, baseType: !583, size: 128, offset: 640)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !600, file: !601, line: 45, baseType: !583, size: 128, offset: 768)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !600, file: !601, line: 46, baseType: !583, size: 128, offset: 896)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !600, file: !601, line: 47, baseType: !469, size: 64, offset: 1024)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !600, file: !601, line: 48, baseType: !469, size: 64, offset: 1088)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !501, file: !44, line: 1883, baseType: !623, size: 64, offset: 960)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{!356, !432, !325, !371}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !501, file: !44, line: 1884, baseType: !627, size: 64, offset: 1024)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!250, !477, !630, !469, !469}
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !501, file: !44, line: 1886, baseType: !633, size: 64, offset: 1088)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{!250, !477, !636, !250}
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !501, file: !44, line: 1887, baseType: !638, size: 64, offset: 1152)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{!250, !477, !432, !402, !7, !366}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !501, file: !44, line: 1890, baseType: !553, size: 64, offset: 1216)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !501, file: !44, line: 1891, baseType: !643, size: 64, offset: 1280)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!250, !477, !528, !250}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !478, file: !44, line: 623, baseType: !647, size: 64, offset: 192)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !649)
!649 = !{!650, !651, !652, !653, !654, !655, !702, !2476, !2558, !2641, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2657, !2661, !2662, !2665, !2666, !2669, !2670, !2671, !2712, !2739, !2740, !2741, !2742, !2743, !2744, !2747, !2749, !2756, !2757, !2759, !2760, !2761, !2820, !2821, !2836, !2837, !2838, !2839, !2840, !2843, !2844, !2845, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !648, file: !44, line: 1417, baseType: !270, size: 128)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !648, file: !44, line: 1418, baseType: !561, size: 32, offset: 128)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !648, file: !44, line: 1419, baseType: !475, size: 8, offset: 160)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !648, file: !44, line: 1420, baseType: !374, size: 64, offset: 192)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !648, file: !44, line: 1421, baseType: !579, size: 64, offset: 256)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !648, file: !44, line: 1422, baseType: !656, size: 64, offset: 320)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !658)
!658 = !{!659, !660, !661, !668, !672, !676, !680, !681, !682, !692, !695, !696, !697, !699, !700, !701}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !657, file: !44, line: 2229, baseType: !241, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !657, file: !44, line: 2230, baseType: !250, size: 32, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !657, file: !44, line: 2238, baseType: !662, size: 64, offset: 128)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DISubroutineType(types: !664)
!664 = !{!250, !665}
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !667, line: 28, flags: DIFlagFwdDecl)
!667 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!668 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !657, file: !44, line: 2239, baseType: !669, size: 64, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !671)
!671 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !657, file: !44, line: 2240, baseType: !673, size: 64, offset: 256)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DISubroutineType(types: !675)
!675 = !{!432, !656, !250, !241, !195}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !657, file: !44, line: 2242, baseType: !677, size: 64, offset: 320)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{null, !647}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !657, file: !44, line: 2243, baseType: !243, size: 64, offset: 384)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !657, file: !44, line: 2244, baseType: !656, size: 64, offset: 448)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !657, file: !44, line: 2245, baseType: !683, size: 64, offset: 512)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !271, line: 182, size: 64, elements: !684)
!684 = !{!685}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !683, file: !271, line: 183, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !271, line: 186, size: 128, elements: !688)
!688 = !{!689, !690}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !687, file: !271, line: 187, baseType: !686, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !687, file: !271, line: 187, baseType: !691, size: 64, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !657, file: !44, line: 2247, baseType: !693, offset: 576)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !694, line: 187, elements: !298)
!694 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!695 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !657, file: !44, line: 2248, baseType: !693, offset: 576)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !657, file: !44, line: 2249, baseType: !693, offset: 576)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !657, file: !44, line: 2250, baseType: !698, offset: 576)
!698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !693, elements: !326)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !657, file: !44, line: 2252, baseType: !693, offset: 576)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !657, file: !44, line: 2253, baseType: !693, offset: 576)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !657, file: !44, line: 2254, baseType: !693, offset: 576)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !648, file: !44, line: 1423, baseType: !703, size: 64, offset: 384)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !705)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !706)
!706 = !{!707, !711, !715, !716, !720, !726, !730, !731, !732, !736, !740, !741, !742, !743, !749, !754, !755, !762, !763, !764, !765, !2460, !2475}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !705, file: !44, line: 1936, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!477, !647}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !705, file: !44, line: 1937, baseType: !712, size: 64, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DISubroutineType(types: !714)
!714 = !{null, !477}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !705, file: !44, line: 1938, baseType: !712, size: 64, offset: 128)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !705, file: !44, line: 1940, baseType: !717, size: 64, offset: 192)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DISubroutineType(types: !719)
!719 = !{null, !477, !250}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !705, file: !44, line: 1941, baseType: !721, size: 64, offset: 256)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{!250, !477, !724}
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !44, line: 289, flags: DIFlagFwdDecl)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !705, file: !44, line: 1942, baseType: !727, size: 64, offset: 320)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{!250, !477}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !705, file: !44, line: 1943, baseType: !712, size: 64, offset: 384)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !705, file: !44, line: 1944, baseType: !677, size: 64, offset: 448)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !705, file: !44, line: 1945, baseType: !733, size: 64, offset: 512)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!250, !647, !250}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !705, file: !44, line: 1946, baseType: !737, size: 64, offset: 576)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!250, !647}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !705, file: !44, line: 1947, baseType: !737, size: 64, offset: 640)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !705, file: !44, line: 1948, baseType: !737, size: 64, offset: 704)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !705, file: !44, line: 1949, baseType: !737, size: 64, offset: 768)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !705, file: !44, line: 1950, baseType: !744, size: 64, offset: 832)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DISubroutineType(types: !746)
!746 = !{!250, !432, !747}
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !705, file: !44, line: 1951, baseType: !750, size: 64, offset: 896)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{!250, !647, !753, !325}
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !705, file: !44, line: 1952, baseType: !677, size: 64, offset: 960)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !705, file: !44, line: 1954, baseType: !756, size: 64, offset: 1024)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!250, !759, !432}
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !761, line: 539, flags: DIFlagFwdDecl)
!761 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!762 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !705, file: !44, line: 1955, baseType: !756, size: 64, offset: 1088)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !705, file: !44, line: 1956, baseType: !756, size: 64, offset: 1152)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !705, file: !44, line: 1957, baseType: !756, size: 64, offset: 1216)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !705, file: !44, line: 1963, baseType: !766, size: 64, offset: 1280)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{!250, !647, !769, !792}
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !771, line: 68, size: 512, align: 128, elements: !772)
!771 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!772 = !{!773, !774, !2452, !2459}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !770, file: !771, line: 69, baseType: !374, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, scope: !770, file: !771, line: 77, baseType: !775, size: 320, offset: 64)
!775 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !770, file: !771, line: 77, size: 320, elements: !776)
!776 = !{!777, !964, !969, !997, !1005, !1011, !2383, !2451}
!777 = !DIDerivedType(tag: DW_TAG_member, scope: !775, file: !771, line: 78, baseType: !778, size: 320)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !775, file: !771, line: 78, size: 320, elements: !779)
!779 = !{!780, !781, !962, !963}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !778, file: !771, line: 84, baseType: !270, size: 128)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !778, file: !771, line: 86, baseType: !782, size: 64, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !784)
!784 = !{!785, !786, !794, !795, !800, !815, !831, !832, !833, !834, !955, !956, !959, !960, !961}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !783, file: !44, line: 452, baseType: !477, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !783, file: !44, line: 453, baseType: !787, size: 128, offset: 64)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !788, line: 292, size: 128, elements: !789)
!788 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!789 = !{!790, !791, !793}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !787, file: !788, line: 293, baseType: !284)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !787, file: !788, line: 295, baseType: !792, size: 32)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !271, line: 148, baseType: !7)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !787, file: !788, line: 296, baseType: !195, size: 64, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !783, file: !44, line: 454, baseType: !792, size: 32, offset: 192)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !783, file: !44, line: 455, baseType: !796, size: 32, offset: 224)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !271, line: 168, baseType: !797)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !271, line: 166, size: 32, elements: !798)
!798 = !{!799}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !797, file: !271, line: 167, baseType: !250, size: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !783, file: !44, line: 460, baseType: !801, size: 128, offset: 256)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !802, line: 125, size: 128, elements: !803)
!802 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!803 = !{!804, !814}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !801, file: !802, line: 126, baseType: !805, size: 64)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !802, line: 31, size: 64, elements: !806)
!806 = !{!807}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !805, file: !802, line: 32, baseType: !808, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !802, line: 24, size: 192, align: 64, elements: !810)
!810 = !{!811, !812, !813}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !809, file: !802, line: 25, baseType: !374, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !809, file: !802, line: 26, baseType: !808, size: 64, offset: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !809, file: !802, line: 27, baseType: !808, size: 64, offset: 128)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !801, file: !802, line: 127, baseType: !808, size: 64, offset: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !783, file: !44, line: 461, baseType: !816, size: 256, offset: 384)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !817, line: 35, size: 256, elements: !818)
!817 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!818 = !{!819, !827, !828, !830}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !816, file: !817, line: 36, baseType: !820, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !821, line: 13, baseType: !822)
!821 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !271, line: 175, baseType: !823)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !271, line: 173, size: 64, elements: !824)
!824 = !{!825}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !823, file: !271, line: 174, baseType: !826, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !466, line: 22, baseType: !588)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !816, file: !817, line: 42, baseType: !820, size: 64, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !816, file: !817, line: 46, baseType: !829, offset: 128)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !285, line: 29, baseType: !292)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !816, file: !817, line: 47, baseType: !270, size: 128, offset: 128)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !783, file: !44, line: 462, baseType: !374, size: 64, offset: 640)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !783, file: !44, line: 463, baseType: !374, size: 64, offset: 704)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !783, file: !44, line: 464, baseType: !374, size: 64, offset: 768)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !783, file: !44, line: 465, baseType: !835, size: 64, offset: 832)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !837)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !838)
!838 = !{!839, !843, !847, !851, !855, !859, !865, !871, !875, !880, !884, !888, !892, !919, !923, !929, !930, !931, !935, !940, !944, !951}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !837, file: !44, line: 368, baseType: !840, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{!250, !769, !724}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !837, file: !44, line: 369, baseType: !844, size: 64, offset: 64)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DISubroutineType(types: !846)
!846 = !{!250, !402, !769}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !837, file: !44, line: 372, baseType: !848, size: 64, offset: 128)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{!250, !782, !724}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !837, file: !44, line: 375, baseType: !852, size: 64, offset: 192)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{!250, !769}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !837, file: !44, line: 381, baseType: !856, size: 64, offset: 256)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DISubroutineType(types: !858)
!858 = !{!250, !402, !782, !274, !7}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !837, file: !44, line: 383, baseType: !860, size: 64, offset: 320)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{null, !863}
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !837, file: !44, line: 385, baseType: !866, size: 64, offset: 384)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{!250, !402, !782, !579, !7, !7, !869, !870}
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !837, file: !44, line: 388, baseType: !872, size: 64, offset: 448)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DISubroutineType(types: !874)
!874 = !{!250, !402, !782, !579, !7, !7, !769, !195}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !837, file: !44, line: 393, baseType: !876, size: 64, offset: 512)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DISubroutineType(types: !878)
!878 = !{!879, !782, !879}
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !271, line: 125, baseType: !469)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !837, file: !44, line: 394, baseType: !881, size: 64, offset: 576)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DISubroutineType(types: !883)
!883 = !{null, !769, !7, !7}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !837, file: !44, line: 395, baseType: !885, size: 64, offset: 640)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DISubroutineType(types: !887)
!887 = !{!250, !769, !792}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !837, file: !44, line: 396, baseType: !889, size: 64, offset: 704)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DISubroutineType(types: !891)
!891 = !{null, !769}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !837, file: !44, line: 397, baseType: !893, size: 64, offset: 768)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DISubroutineType(types: !895)
!895 = !{!356, !896, !917}
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !898)
!898 = !{!899, !900, !901, !905, !906, !907, !909, !910}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !897, file: !44, line: 321, baseType: !402, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !897, file: !44, line: 326, baseType: !579, size: 64, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !897, file: !44, line: 327, baseType: !902, size: 64, offset: 128)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DISubroutineType(types: !904)
!904 = !{null, !896, !360, !360}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !897, file: !44, line: 328, baseType: !195, size: 64, offset: 192)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !897, file: !44, line: 329, baseType: !250, size: 32, offset: 256)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !897, file: !44, line: 330, baseType: !908, size: 16, offset: 288)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !466, line: 19, baseType: !196)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !897, file: !44, line: 331, baseType: !908, size: 16, offset: 304)
!910 = !DIDerivedType(tag: DW_TAG_member, scope: !897, file: !44, line: 332, baseType: !911, size: 64, offset: 320)
!911 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !897, file: !44, line: 332, size: 64, elements: !912)
!912 = !{!913, !914}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !911, file: !44, line: 333, baseType: !7, size: 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !911, file: !44, line: 334, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !837, file: !44, line: 402, baseType: !920, size: 64, offset: 832)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DISubroutineType(types: !922)
!922 = !{!250, !782, !769, !769, !5}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !837, file: !44, line: 404, baseType: !924, size: 64, offset: 896)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DISubroutineType(types: !926)
!926 = !{!538, !769, !927}
!927 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !928, line: 305, baseType: !7)
!928 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!929 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !837, file: !44, line: 405, baseType: !889, size: 64, offset: 960)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !837, file: !44, line: 406, baseType: !852, size: 64, offset: 1024)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !837, file: !44, line: 407, baseType: !932, size: 64, offset: 1088)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{!250, !769, !374, !374}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !837, file: !44, line: 409, baseType: !936, size: 64, offset: 1152)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DISubroutineType(types: !938)
!938 = !{null, !769, !939, !939}
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !837, file: !44, line: 410, baseType: !941, size: 64, offset: 1216)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DISubroutineType(types: !943)
!943 = !{!250, !782, !769}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !837, file: !44, line: 413, baseType: !945, size: 64, offset: 1280)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{!250, !948, !402, !950}
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !837, file: !44, line: 415, baseType: !952, size: 64, offset: 1344)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DISubroutineType(types: !954)
!954 = !{null, !402}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !783, file: !44, line: 466, baseType: !374, size: 64, offset: 896)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !783, file: !44, line: 467, baseType: !957, size: 32, offset: 960)
!957 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !958, line: 8, baseType: !465)
!958 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!959 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !783, file: !44, line: 468, baseType: !284, offset: 992)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !783, file: !44, line: 469, baseType: !270, size: 128, offset: 1024)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !783, file: !44, line: 470, baseType: !195, size: 64, offset: 1152)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !778, file: !771, line: 87, baseType: !374, size: 64, offset: 192)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !778, file: !771, line: 94, baseType: !374, size: 64, offset: 256)
!964 = !DIDerivedType(tag: DW_TAG_member, scope: !775, file: !771, line: 96, baseType: !965, size: 64)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !775, file: !771, line: 96, size: 64, elements: !966)
!966 = !{!967}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !965, file: !771, line: 101, baseType: !968, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !271, line: 143, baseType: !469)
!969 = !DIDerivedType(tag: DW_TAG_member, scope: !775, file: !771, line: 103, baseType: !970, size: 320)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !775, file: !771, line: 103, size: 320, elements: !971)
!971 = !{!972, !982, !985, !986}
!972 = !DIDerivedType(tag: DW_TAG_member, scope: !970, file: !771, line: 104, baseType: !973, size: 128)
!973 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !970, file: !771, line: 104, size: 128, elements: !974)
!974 = !{!975, !976}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !973, file: !771, line: 105, baseType: !270, size: 128)
!976 = !DIDerivedType(tag: DW_TAG_member, scope: !973, file: !771, line: 106, baseType: !977, size: 128)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !973, file: !771, line: 106, size: 128, elements: !978)
!978 = !{!979, !980, !981}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !977, file: !771, line: 107, baseType: !769, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !977, file: !771, line: 109, baseType: !250, size: 32, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !977, file: !771, line: 110, baseType: !250, size: 32, offset: 96)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !970, file: !771, line: 117, baseType: !983, size: 64, offset: 128)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !771, line: 117, flags: DIFlagFwdDecl)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !970, file: !771, line: 119, baseType: !195, size: 64, offset: 192)
!986 = !DIDerivedType(tag: DW_TAG_member, scope: !970, file: !771, line: 120, baseType: !987, size: 64, offset: 256)
!987 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !970, file: !771, line: 120, size: 64, elements: !988)
!988 = !{!989, !990, !991}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !987, file: !771, line: 121, baseType: !195, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !987, file: !771, line: 122, baseType: !374, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, scope: !987, file: !771, line: 123, baseType: !992, size: 32)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !987, file: !771, line: 123, size: 32, elements: !993)
!993 = !{!994, !995, !996}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !992, file: !771, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !992, file: !771, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !992, file: !771, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!997 = !DIDerivedType(tag: DW_TAG_member, scope: !775, file: !771, line: 130, baseType: !998, size: 192)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !775, file: !771, line: 130, size: 192, elements: !999)
!999 = !{!1000, !1001, !1002, !1003, !1004}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !998, file: !771, line: 131, baseType: !374, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !998, file: !771, line: 134, baseType: !475, size: 8, offset: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !998, file: !771, line: 135, baseType: !475, size: 8, offset: 72)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !998, file: !771, line: 136, baseType: !796, size: 32, offset: 96)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !998, file: !771, line: 137, baseType: !7, size: 32, offset: 128)
!1005 = !DIDerivedType(tag: DW_TAG_member, scope: !775, file: !771, line: 139, baseType: !1006, size: 256)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !775, file: !771, line: 139, size: 256, elements: !1007)
!1007 = !{!1008, !1009, !1010}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1006, file: !771, line: 140, baseType: !374, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1006, file: !771, line: 141, baseType: !796, size: 32, offset: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1006, file: !771, line: 143, baseType: !270, size: 128, offset: 128)
!1011 = !DIDerivedType(tag: DW_TAG_member, scope: !775, file: !771, line: 145, baseType: !1012, size: 256)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !775, file: !771, line: 145, size: 256, elements: !1013)
!1013 = !{!1014, !1015, !1017, !1018, !2382}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1012, file: !771, line: 146, baseType: !374, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1012, file: !771, line: 147, baseType: !1016, size: 64, offset: 64)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !761, line: 509, baseType: !769)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1012, file: !771, line: 148, baseType: !374, size: 64, offset: 128)
!1018 = !DIDerivedType(tag: DW_TAG_member, scope: !1012, file: !771, line: 149, baseType: !1019, size: 64, offset: 192)
!1019 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1012, file: !771, line: 149, size: 64, elements: !1020)
!1020 = !{!1021, !2381}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1019, file: !771, line: 150, baseType: !1022, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !771, line: 388, size: 7296, elements: !1024)
!1024 = !{!1025, !2377}
!1025 = !DIDerivedType(tag: DW_TAG_member, scope: !1023, file: !771, line: 389, baseType: !1026, size: 7296)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1023, file: !771, line: 389, size: 7296, elements: !1027)
!1027 = !{!1028, !1146, !1147, !1148, !1152, !1153, !1154, !1155, !1156, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1197, !1205, !1208, !1254, !1255, !2361, !2362, !2365, !2366, !2367, !2370, !2371, !2372, !2375, !2376}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1026, file: !771, line: 390, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !771, line: 305, size: 1472, elements: !1031)
!1031 = !{!1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1046, !1047, !1052, !1053, !1056, !1140, !1141, !1142, !1143, !1144}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1030, file: !771, line: 308, baseType: !374, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1030, file: !771, line: 309, baseType: !374, size: 64, offset: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1030, file: !771, line: 313, baseType: !1029, size: 64, offset: 128)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1030, file: !771, line: 313, baseType: !1029, size: 64, offset: 192)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1030, file: !771, line: 315, baseType: !809, size: 192, align: 64, offset: 256)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1030, file: !771, line: 323, baseType: !374, size: 64, offset: 448)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1030, file: !771, line: 327, baseType: !1022, size: 64, offset: 512)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1030, file: !771, line: 333, baseType: !1040, size: 64, offset: 576)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !761, line: 284, baseType: !1041)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !761, line: 284, size: 64, elements: !1042)
!1042 = !{!1043}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1041, file: !761, line: 284, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1045, line: 19, baseType: !374)
!1045 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1030, file: !771, line: 334, baseType: !374, size: 64, offset: 640)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1030, file: !771, line: 343, baseType: !1048, size: 256, offset: 704)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1030, file: !771, line: 340, size: 256, elements: !1049)
!1049 = !{!1050, !1051}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1048, file: !771, line: 341, baseType: !809, size: 192, align: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1048, file: !771, line: 342, baseType: !374, size: 64, offset: 192)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1030, file: !771, line: 351, baseType: !270, size: 128, offset: 960)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1030, file: !771, line: 353, baseType: !1054, size: 64, offset: 1088)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !771, line: 353, flags: DIFlagFwdDecl)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1030, file: !771, line: 356, baseType: !1057, size: 64, offset: 1152)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1059)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1060)
!1060 = !{!1061, !1065, !1066, !1070, !1074, !1114, !1118, !1122, !1126, !1127, !1128, !1132, !1136}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1059, file: !14, line: 558, baseType: !1062, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{null, !1029}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1059, file: !14, line: 559, baseType: !1062, size: 64, offset: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1059, file: !14, line: 560, baseType: !1067, size: 64, offset: 128)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!250, !1029, !374}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1059, file: !14, line: 561, baseType: !1071, size: 64, offset: 192)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!250, !1029}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1059, file: !14, line: 562, baseType: !1075, size: 64, offset: 256)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!1078, !1079}
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !771, line: 682, baseType: !7)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1081)
!1081 = !{!1082, !1083, !1084, !1085, !1086, !1087, !1094, !1101, !1107, !1108, !1109, !1111, !1113}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1080, file: !14, line: 509, baseType: !1029, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1080, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1080, file: !14, line: 511, baseType: !792, size: 32, offset: 96)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1080, file: !14, line: 512, baseType: !374, size: 64, offset: 128)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1080, file: !14, line: 513, baseType: !374, size: 64, offset: 192)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1080, file: !14, line: 514, baseType: !1088, size: 64, offset: 256)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !761, line: 385, baseType: !1090)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !761, line: 385, size: 64, elements: !1091)
!1091 = !{!1092}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1090, file: !761, line: 385, baseType: !1093, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1045, line: 15, baseType: !374)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1080, file: !14, line: 516, baseType: !1095, size: 64, offset: 320)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !761, line: 359, baseType: !1097)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !761, line: 359, size: 64, elements: !1098)
!1098 = !{!1099}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1097, file: !761, line: 359, baseType: !1100, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1045, line: 16, baseType: !374)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1080, file: !14, line: 519, baseType: !1102, size: 64, offset: 384)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1045, line: 21, baseType: !1103)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1045, line: 21, size: 64, elements: !1104)
!1104 = !{!1105}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1103, file: !1045, line: 21, baseType: !1106, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1045, line: 14, baseType: !374)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1080, file: !14, line: 521, baseType: !769, size: 64, offset: 448)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1080, file: !14, line: 522, baseType: !769, size: 64, offset: 512)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1080, file: !14, line: 528, baseType: !1110, size: 64, offset: 576)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1080, file: !14, line: 532, baseType: !1112, size: 64, offset: 640)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1080, file: !14, line: 536, baseType: !1016, size: 64, offset: 704)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1059, file: !14, line: 563, baseType: !1115, size: 64, offset: 320)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!1078, !1079, !13}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1059, file: !14, line: 565, baseType: !1119, size: 64, offset: 384)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{null, !1079, !374, !374}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1059, file: !14, line: 567, baseType: !1123, size: 64, offset: 448)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!374, !1029}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1059, file: !14, line: 571, baseType: !1075, size: 64, offset: 512)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1059, file: !14, line: 574, baseType: !1075, size: 64, offset: 576)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1059, file: !14, line: 579, baseType: !1129, size: 64, offset: 640)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!250, !1029, !374, !195, !250, !250}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1059, file: !14, line: 585, baseType: !1133, size: 64, offset: 704)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!241, !1029}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1059, file: !14, line: 615, baseType: !1137, size: 64, offset: 768)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!769, !1029, !374}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1030, file: !771, line: 359, baseType: !374, size: 64, offset: 1216)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1030, file: !771, line: 361, baseType: !402, size: 64, offset: 1280)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1030, file: !771, line: 362, baseType: !195, size: 64, offset: 1344)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1030, file: !771, line: 365, baseType: !820, size: 64, offset: 1408)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1030, file: !771, line: 373, baseType: !1145, offset: 1472)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !771, line: 296, elements: !298)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1026, file: !771, line: 391, baseType: !805, size: 64, offset: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1026, file: !771, line: 392, baseType: !469, size: 64, offset: 128)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1026, file: !771, line: 394, baseType: !1149, size: 64, offset: 192)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!374, !402, !374, !374, !374, !374}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1026, file: !771, line: 398, baseType: !374, size: 64, offset: 256)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1026, file: !771, line: 399, baseType: !374, size: 64, offset: 320)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1026, file: !771, line: 405, baseType: !374, size: 64, offset: 384)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1026, file: !771, line: 406, baseType: !374, size: 64, offset: 448)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1026, file: !771, line: 407, baseType: !1157, size: 64, offset: 512)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !761, line: 286, baseType: !1159)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !761, line: 286, size: 64, elements: !1160)
!1160 = !{!1161}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1159, file: !761, line: 286, baseType: !1162, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1045, line: 18, baseType: !374)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1026, file: !771, line: 416, baseType: !796, size: 32, offset: 576)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1026, file: !771, line: 428, baseType: !796, size: 32, offset: 608)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1026, file: !771, line: 437, baseType: !796, size: 32, offset: 640)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1026, file: !771, line: 447, baseType: !796, size: 32, offset: 672)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1026, file: !771, line: 450, baseType: !820, size: 64, offset: 704)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1026, file: !771, line: 452, baseType: !250, size: 32, offset: 768)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1026, file: !771, line: 454, baseType: !284, offset: 800)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1026, file: !771, line: 457, baseType: !816, size: 256, offset: 832)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1026, file: !771, line: 459, baseType: !270, size: 128, offset: 1088)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1026, file: !771, line: 466, baseType: !374, size: 64, offset: 1216)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1026, file: !771, line: 467, baseType: !374, size: 64, offset: 1280)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1026, file: !771, line: 469, baseType: !374, size: 64, offset: 1344)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1026, file: !771, line: 470, baseType: !374, size: 64, offset: 1408)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1026, file: !771, line: 471, baseType: !822, size: 64, offset: 1472)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1026, file: !771, line: 472, baseType: !374, size: 64, offset: 1536)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1026, file: !771, line: 473, baseType: !374, size: 64, offset: 1600)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1026, file: !771, line: 474, baseType: !374, size: 64, offset: 1664)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1026, file: !771, line: 475, baseType: !374, size: 64, offset: 1728)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1026, file: !771, line: 477, baseType: !284, offset: 1792)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1026, file: !771, line: 478, baseType: !374, size: 64, offset: 1792)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1026, file: !771, line: 478, baseType: !374, size: 64, offset: 1856)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1026, file: !771, line: 478, baseType: !374, size: 64, offset: 1920)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1026, file: !771, line: 478, baseType: !374, size: 64, offset: 1984)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1026, file: !771, line: 479, baseType: !374, size: 64, offset: 2048)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1026, file: !771, line: 479, baseType: !374, size: 64, offset: 2112)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1026, file: !771, line: 479, baseType: !374, size: 64, offset: 2176)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1026, file: !771, line: 480, baseType: !374, size: 64, offset: 2240)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1026, file: !771, line: 480, baseType: !374, size: 64, offset: 2304)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1026, file: !771, line: 480, baseType: !374, size: 64, offset: 2368)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1026, file: !771, line: 480, baseType: !374, size: 64, offset: 2432)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1026, file: !771, line: 482, baseType: !1194, size: 2816, offset: 2496)
!1194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !374, size: 2816, elements: !1195)
!1195 = !{!1196}
!1196 = !DISubrange(count: 44)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1026, file: !771, line: 488, baseType: !1198, size: 256, offset: 5312)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1199, line: 60, size: 256, elements: !1200)
!1199 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1200 = !{!1201}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1198, file: !1199, line: 61, baseType: !1202, size: 256)
!1202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !820, size: 256, elements: !1203)
!1203 = !{!1204}
!1204 = !DISubrange(count: 4)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1026, file: !771, line: 490, baseType: !1206, size: 64, offset: 5568)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !771, line: 490, flags: DIFlagFwdDecl)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1026, file: !771, line: 493, baseType: !1209, size: 896, offset: 5632)
!1209 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1210, line: 53, baseType: !1211)
!1210 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1210, line: 13, size: 896, elements: !1212)
!1212 = !{!1213, !1214, !1215, !1216, !1219, !1220, !1227, !1228, !1248, !1249, !1250}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1211, file: !1210, line: 18, baseType: !469, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1211, file: !1210, line: 28, baseType: !822, size: 64, offset: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1211, file: !1210, line: 31, baseType: !816, size: 256, offset: 128)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1211, file: !1210, line: 32, baseType: !1217, size: 64, offset: 384)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1210, line: 32, flags: DIFlagFwdDecl)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1211, file: !1210, line: 37, baseType: !198, size: 16, offset: 448)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1211, file: !1210, line: 40, baseType: !1221, size: 192, offset: 512)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1222, line: 53, size: 192, elements: !1223)
!1222 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1223 = !{!1224, !1225, !1226}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1221, file: !1222, line: 54, baseType: !820, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1221, file: !1222, line: 55, baseType: !284, offset: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1221, file: !1222, line: 59, baseType: !270, size: 128, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1211, file: !1210, line: 41, baseType: !195, size: 64, offset: 704)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1211, file: !1210, line: 42, baseType: !1229, size: 64, offset: 768)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1231)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1232, line: 13, size: 896, elements: !1233)
!1232 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1233 = !{!1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1231, file: !1232, line: 14, baseType: !195, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1231, file: !1232, line: 15, baseType: !374, size: 64, offset: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1231, file: !1232, line: 17, baseType: !374, size: 64, offset: 128)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1231, file: !1232, line: 17, baseType: !374, size: 64, offset: 192)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1231, file: !1232, line: 19, baseType: !360, size: 64, offset: 256)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1231, file: !1232, line: 21, baseType: !360, size: 64, offset: 320)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1231, file: !1232, line: 22, baseType: !360, size: 64, offset: 384)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1231, file: !1232, line: 23, baseType: !360, size: 64, offset: 448)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1231, file: !1232, line: 24, baseType: !360, size: 64, offset: 512)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1231, file: !1232, line: 25, baseType: !360, size: 64, offset: 576)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1231, file: !1232, line: 26, baseType: !360, size: 64, offset: 640)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1231, file: !1232, line: 27, baseType: !360, size: 64, offset: 704)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1231, file: !1232, line: 28, baseType: !360, size: 64, offset: 768)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1231, file: !1232, line: 29, baseType: !360, size: 64, offset: 832)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1211, file: !1210, line: 44, baseType: !796, size: 32, offset: 832)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1211, file: !1210, line: 50, baseType: !908, size: 16, offset: 864)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1211, file: !1210, line: 51, baseType: !1251, size: 16, offset: 880)
!1251 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !466, line: 18, baseType: !1252)
!1252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !197, line: 23, baseType: !1253)
!1253 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1026, file: !771, line: 495, baseType: !374, size: 64, offset: 6528)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1026, file: !771, line: 497, baseType: !1256, size: 64, offset: 6592)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !771, line: 381, size: 384, elements: !1258)
!1258 = !{!1259, !1260, !2360}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1257, file: !771, line: 382, baseType: !796, size: 32)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1257, file: !771, line: 383, baseType: !1261, size: 128, offset: 64)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !771, line: 376, size: 128, elements: !1262)
!1262 = !{!1263, !2358}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1261, file: !771, line: 377, baseType: !1264, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1266, line: 640, size: 48640, elements: !1267)
!1266 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1267 = !{!1268, !1274, !1276, !1277, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1294, !1312, !1323, !1408, !1409, !1410, !1421, !1422, !1424, !1425, !1426, !1427, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1506, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1544, !1546, !1547, !1548, !1560, !1561, !1562, !1563, !1564, !1565, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1589, !1594, !1778, !1779, !1780, !1781, !1785, !1788, !1791, !1794, !1797, !1801, !1902, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1946, !1947, !1948, !1949, !1950, !1955, !1956, !1957, !1960, !1961, !1964, !1967, !1970, !1973, !2016, !2019, !2020, !2099, !2100, !2103, !2104, !2107, !2108, !2109, !2113, !2114, !2115, !2128, !2129, !2130, !2140, !2145, !2148, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1265, file: !1266, line: 646, baseType: !1269, size: 128)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1270, line: 56, size: 128, elements: !1271)
!1270 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1271 = !{!1272, !1273}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1269, file: !1270, line: 57, baseType: !374, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1269, file: !1270, line: 58, baseType: !465, size: 32, offset: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1265, file: !1266, line: 649, baseType: !1275, size: 64, offset: 128)
!1275 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !360)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1265, file: !1266, line: 657, baseType: !195, size: 64, offset: 192)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1265, file: !1266, line: 658, baseType: !1278, size: 32, offset: 256)
!1278 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1279, line: 113, baseType: !1280)
!1279 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1279, line: 111, size: 32, elements: !1281)
!1281 = !{!1282}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1280, file: !1279, line: 112, baseType: !796, size: 32)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1265, file: !1266, line: 660, baseType: !7, size: 32, offset: 288)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1265, file: !1266, line: 661, baseType: !7, size: 32, offset: 320)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1265, file: !1266, line: 684, baseType: !250, size: 32, offset: 352)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1265, file: !1266, line: 686, baseType: !250, size: 32, offset: 384)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1265, file: !1266, line: 687, baseType: !250, size: 32, offset: 416)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1265, file: !1266, line: 688, baseType: !250, size: 32, offset: 448)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1265, file: !1266, line: 689, baseType: !7, size: 32, offset: 480)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1265, file: !1266, line: 691, baseType: !1291, size: 64, offset: 512)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1293)
!1293 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1266, line: 691, flags: DIFlagFwdDecl)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1265, file: !1266, line: 692, baseType: !1295, size: 832, offset: 576)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1266, line: 451, size: 832, elements: !1296)
!1296 = !{!1297, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1295, file: !1266, line: 453, baseType: !1298, size: 128)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1266, line: 325, size: 128, elements: !1299)
!1299 = !{!1300, !1301}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1298, file: !1266, line: 326, baseType: !374, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1298, file: !1266, line: 327, baseType: !465, size: 32, offset: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1295, file: !1266, line: 454, baseType: !809, size: 192, align: 64, offset: 128)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1295, file: !1266, line: 455, baseType: !270, size: 128, offset: 320)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1295, file: !1266, line: 456, baseType: !7, size: 32, offset: 448)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1295, file: !1266, line: 458, baseType: !469, size: 64, offset: 512)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1295, file: !1266, line: 459, baseType: !469, size: 64, offset: 576)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1295, file: !1266, line: 460, baseType: !469, size: 64, offset: 640)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1295, file: !1266, line: 461, baseType: !469, size: 64, offset: 704)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1295, file: !1266, line: 463, baseType: !469, size: 64, offset: 768)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1295, file: !1266, line: 465, baseType: !1311, offset: 832)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1266, line: 415, elements: !298)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1265, file: !1266, line: 693, baseType: !1313, size: 384, offset: 1408)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1266, line: 489, size: 384, elements: !1314)
!1314 = !{!1315, !1316, !1317, !1318, !1319, !1320, !1321}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1313, file: !1266, line: 490, baseType: !270, size: 128)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1313, file: !1266, line: 491, baseType: !374, size: 64, offset: 128)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1313, file: !1266, line: 492, baseType: !374, size: 64, offset: 192)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1313, file: !1266, line: 493, baseType: !7, size: 32, offset: 256)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1313, file: !1266, line: 494, baseType: !198, size: 16, offset: 288)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1313, file: !1266, line: 495, baseType: !198, size: 16, offset: 304)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1313, file: !1266, line: 497, baseType: !1322, size: 64, offset: 320)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1265, file: !1266, line: 697, baseType: !1324, size: 1792, offset: 1792)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1266, line: 507, size: 1792, elements: !1325)
!1325 = !{!1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1405, !1406}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1324, file: !1266, line: 508, baseType: !809, size: 192, align: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1324, file: !1266, line: 515, baseType: !469, size: 64, offset: 192)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1324, file: !1266, line: 516, baseType: !469, size: 64, offset: 256)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1324, file: !1266, line: 517, baseType: !469, size: 64, offset: 320)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1324, file: !1266, line: 518, baseType: !469, size: 64, offset: 384)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1324, file: !1266, line: 519, baseType: !469, size: 64, offset: 448)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1324, file: !1266, line: 526, baseType: !826, size: 64, offset: 512)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1324, file: !1266, line: 527, baseType: !469, size: 64, offset: 576)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1324, file: !1266, line: 528, baseType: !7, size: 32, offset: 640)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1324, file: !1266, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1324, file: !1266, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1324, file: !1266, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1324, file: !1266, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1324, file: !1266, line: 563, baseType: !1340, size: 512, offset: 704)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1341)
!1341 = !{!1342, !1350, !1351, !1356, !1399, !1402, !1403, !1404}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1340, file: !20, line: 119, baseType: !1343, size: 256)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1344, line: 9, size: 256, elements: !1345)
!1344 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1345 = !{!1346, !1347}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1343, file: !1344, line: 10, baseType: !809, size: 192, align: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1343, file: !1344, line: 11, baseType: !1348, size: 64, offset: 192)
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1349, line: 29, baseType: !826)
!1349 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1340, file: !20, line: 120, baseType: !1348, size: 64, offset: 256)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1340, file: !20, line: 121, baseType: !1352, size: 64, offset: 320)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!19, !1355}
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1340, file: !20, line: 122, baseType: !1357, size: 64, offset: 384)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1359)
!1359 = !{!1360, !1380, !1381, !1384, !1389, !1390, !1394, !1398}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1358, file: !20, line: 160, baseType: !1361, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1363)
!1363 = !{!1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1362, file: !20, line: 215, baseType: !829)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1362, file: !20, line: 216, baseType: !7, size: 32)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1362, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1362, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1362, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1362, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1362, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1362, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1362, file: !20, line: 233, baseType: !1348, size: 64, offset: 128)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1362, file: !20, line: 234, baseType: !1355, size: 64, offset: 192)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1362, file: !20, line: 235, baseType: !1348, size: 64, offset: 256)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1362, file: !20, line: 236, baseType: !1355, size: 64, offset: 320)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1362, file: !20, line: 237, baseType: !1377, size: 4096, offset: 512)
!1377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1358, size: 4096, elements: !1378)
!1378 = !{!1379}
!1379 = !DISubrange(count: 8)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1358, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1358, file: !20, line: 162, baseType: !1382, size: 32, offset: 96)
!1382 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !271, line: 27, baseType: !1383)
!1383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !358, line: 96, baseType: !250)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1358, file: !20, line: 163, baseType: !1385, size: 32, offset: 128)
!1385 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !438, line: 276, baseType: !1386)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !438, line: 276, size: 32, elements: !1387)
!1387 = !{!1388}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1386, file: !438, line: 276, baseType: !442, size: 32)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1358, file: !20, line: 164, baseType: !1355, size: 64, offset: 192)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1358, file: !20, line: 165, baseType: !1391, size: 128, offset: 256)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1344, line: 14, size: 128, elements: !1392)
!1392 = !{!1393}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1391, file: !1344, line: 15, baseType: !801, size: 128)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1358, file: !20, line: 166, baseType: !1395, size: 64, offset: 384)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!1348}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1358, file: !20, line: 167, baseType: !1348, size: 64, offset: 448)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1340, file: !20, line: 123, baseType: !1400, size: 8, offset: 448)
!1400 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !466, line: 17, baseType: !1401)
!1401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !197, line: 21, baseType: !475)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1340, file: !20, line: 124, baseType: !1400, size: 8, offset: 456)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1340, file: !20, line: 125, baseType: !1400, size: 8, offset: 464)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1340, file: !20, line: 126, baseType: !1400, size: 8, offset: 472)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1324, file: !1266, line: 572, baseType: !1340, size: 512, offset: 1216)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1324, file: !1266, line: 580, baseType: !1407, size: 64, offset: 1728)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1265, file: !1266, line: 721, baseType: !7, size: 32, offset: 3584)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1265, file: !1266, line: 722, baseType: !250, size: 32, offset: 3616)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1265, file: !1266, line: 723, baseType: !1411, size: 64, offset: 3648)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1413)
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1414, line: 17, baseType: !1415)
!1414 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1414, line: 17, size: 64, elements: !1416)
!1416 = !{!1417}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1415, file: !1414, line: 17, baseType: !1418, size: 64)
!1418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !374, size: 64, elements: !1419)
!1419 = !{!1420}
!1420 = !DISubrange(count: 1)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1265, file: !1266, line: 724, baseType: !1413, size: 64, offset: 3712)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1265, file: !1266, line: 749, baseType: !1423, offset: 3776)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1266, line: 290, elements: !298)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1265, file: !1266, line: 751, baseType: !270, size: 128, offset: 3776)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1265, file: !1266, line: 757, baseType: !1022, size: 64, offset: 3904)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1265, file: !1266, line: 758, baseType: !1022, size: 64, offset: 3968)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1265, file: !1266, line: 761, baseType: !1428, size: 320, offset: 4032)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1199, line: 34, size: 320, elements: !1429)
!1429 = !{!1430, !1431}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1428, file: !1199, line: 35, baseType: !469, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1428, file: !1199, line: 36, baseType: !1432, size: 256, offset: 64)
!1432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1029, size: 256, elements: !1203)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1265, file: !1266, line: 766, baseType: !250, size: 32, offset: 4352)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1265, file: !1266, line: 767, baseType: !250, size: 32, offset: 4384)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1265, file: !1266, line: 768, baseType: !250, size: 32, offset: 4416)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1265, file: !1266, line: 770, baseType: !250, size: 32, offset: 4448)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1265, file: !1266, line: 772, baseType: !374, size: 64, offset: 4480)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1265, file: !1266, line: 775, baseType: !7, size: 32, offset: 4544)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1265, file: !1266, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1265, file: !1266, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1265, file: !1266, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1265, file: !1266, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1265, file: !1266, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1265, file: !1266, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1265, file: !1266, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1265, file: !1266, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1265, file: !1266, line: 831, baseType: !374, size: 64, offset: 4672)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1265, file: !1266, line: 833, baseType: !1449, size: 384, offset: 4736)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1450)
!1450 = !{!1451, !1456}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1449, file: !25, line: 26, baseType: !1452, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!360, !1455}
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, scope: !1449, file: !25, line: 27, baseType: !1457, size: 320, offset: 64)
!1457 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1449, file: !25, line: 27, size: 320, elements: !1458)
!1458 = !{!1459, !1469, !1496}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1457, file: !25, line: 36, baseType: !1460, size: 320)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1457, file: !25, line: 29, size: 320, elements: !1461)
!1461 = !{!1462, !1464, !1465, !1466, !1467, !1468}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1460, file: !25, line: 30, baseType: !1463, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1460, file: !25, line: 31, baseType: !465, size: 32, offset: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1460, file: !25, line: 32, baseType: !465, size: 32, offset: 96)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1460, file: !25, line: 33, baseType: !465, size: 32, offset: 128)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1460, file: !25, line: 34, baseType: !469, size: 64, offset: 192)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1460, file: !25, line: 35, baseType: !1463, size: 64, offset: 256)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1457, file: !25, line: 46, baseType: !1470, size: 192)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1457, file: !25, line: 38, size: 192, elements: !1471)
!1471 = !{!1472, !1473, !1474, !1495}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1470, file: !25, line: 39, baseType: !1382, size: 32)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1470, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1474 = !DIDerivedType(tag: DW_TAG_member, scope: !1470, file: !25, line: 41, baseType: !1475, size: 64, offset: 64)
!1475 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1470, file: !25, line: 41, size: 64, elements: !1476)
!1476 = !{!1477, !1485}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1475, file: !25, line: 42, baseType: !1478, size: 64)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1480, line: 7, size: 128, elements: !1481)
!1480 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1481 = !{!1482, !1484}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1479, file: !1480, line: 8, baseType: !1483, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !358, line: 93, baseType: !581)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1479, file: !1480, line: 9, baseType: !581, size: 64, offset: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1475, file: !25, line: 43, baseType: !1486, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1488, line: 7, size: 64, elements: !1489)
!1488 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1489 = !{!1490, !1494}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1487, file: !1488, line: 8, baseType: !1491, size: 32)
!1491 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1488, line: 5, baseType: !1492)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !466, line: 20, baseType: !1493)
!1493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !197, line: 26, baseType: !250)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1487, file: !1488, line: 9, baseType: !1492, size: 32, offset: 32)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1470, file: !25, line: 45, baseType: !469, size: 64, offset: 128)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1457, file: !25, line: 54, baseType: !1497, size: 256)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1457, file: !25, line: 48, size: 256, elements: !1498)
!1498 = !{!1499, !1502, !1503, !1504, !1505}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1497, file: !25, line: 49, baseType: !1500, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1497, file: !25, line: 50, baseType: !250, size: 32, offset: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1497, file: !25, line: 51, baseType: !250, size: 32, offset: 96)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1497, file: !25, line: 52, baseType: !374, size: 64, offset: 128)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1497, file: !25, line: 53, baseType: !374, size: 64, offset: 192)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1265, file: !1266, line: 835, baseType: !1507, size: 32, offset: 5120)
!1507 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !271, line: 22, baseType: !1508)
!1508 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !358, line: 28, baseType: !250)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1265, file: !1266, line: 836, baseType: !1507, size: 32, offset: 5152)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1265, file: !1266, line: 840, baseType: !374, size: 64, offset: 5184)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1265, file: !1266, line: 849, baseType: !1264, size: 64, offset: 5248)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1265, file: !1266, line: 852, baseType: !1264, size: 64, offset: 5312)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1265, file: !1266, line: 857, baseType: !270, size: 128, offset: 5376)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1265, file: !1266, line: 858, baseType: !270, size: 128, offset: 5504)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1265, file: !1266, line: 859, baseType: !1264, size: 64, offset: 5632)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1265, file: !1266, line: 867, baseType: !270, size: 128, offset: 5696)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1265, file: !1266, line: 868, baseType: !270, size: 128, offset: 5824)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1265, file: !1266, line: 871, baseType: !1519, size: 64, offset: 5952)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1521)
!1521 = !{!1522, !1523, !1524, !1525, !1527, !1528, !1535, !1536}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1520, file: !53, line: 61, baseType: !1278, size: 32)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1520, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1520, file: !53, line: 63, baseType: !284, offset: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1520, file: !53, line: 65, baseType: !1526, size: 256, offset: 64)
!1526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !683, size: 256, elements: !1203)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1520, file: !53, line: 66, baseType: !683, size: 64, offset: 320)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1520, file: !53, line: 68, baseType: !1529, size: 128, offset: 384)
!1529 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1530, line: 40, baseType: !1531)
!1530 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1530, line: 36, size: 128, elements: !1532)
!1532 = !{!1533, !1534}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1531, file: !1530, line: 37, baseType: !284)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1531, file: !1530, line: 38, baseType: !270, size: 128)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1520, file: !53, line: 69, baseType: !415, size: 128, align: 64, offset: 512)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1520, file: !53, line: 70, baseType: !1537, size: 128, offset: 640)
!1537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1538, size: 128, elements: !1419)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1539)
!1539 = !{!1540, !1541}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1538, file: !53, line: 55, baseType: !250, size: 32)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1538, file: !53, line: 56, baseType: !1542, size: 64, offset: 64)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1265, file: !1266, line: 872, baseType: !1545, size: 512, offset: 6016)
!1545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !687, size: 512, elements: !1203)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1265, file: !1266, line: 873, baseType: !270, size: 128, offset: 6528)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1265, file: !1266, line: 874, baseType: !270, size: 128, offset: 6656)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1265, file: !1266, line: 876, baseType: !1549, size: 64, offset: 6784)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1551, line: 26, size: 192, elements: !1552)
!1551 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1552 = !{!1553, !1554}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1550, file: !1551, line: 27, baseType: !7, size: 32)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1550, file: !1551, line: 28, baseType: !1555, size: 128, offset: 64)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1556, line: 43, size: 128, elements: !1557)
!1556 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1557 = !{!1558, !1559}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1555, file: !1556, line: 44, baseType: !829)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1555, file: !1556, line: 45, baseType: !270, size: 128)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1265, file: !1266, line: 879, baseType: !753, size: 64, offset: 6848)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1265, file: !1266, line: 882, baseType: !753, size: 64, offset: 6912)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1265, file: !1266, line: 884, baseType: !469, size: 64, offset: 6976)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1265, file: !1266, line: 885, baseType: !469, size: 64, offset: 7040)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1265, file: !1266, line: 890, baseType: !469, size: 64, offset: 7104)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1265, file: !1266, line: 891, baseType: !1566, size: 128, offset: 7168)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1266, line: 242, size: 128, elements: !1567)
!1567 = !{!1568, !1569, !1570}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1566, file: !1266, line: 244, baseType: !469, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1566, file: !1266, line: 245, baseType: !469, size: 64, offset: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1566, file: !1266, line: 246, baseType: !829, offset: 128)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1265, file: !1266, line: 900, baseType: !374, size: 64, offset: 7296)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1265, file: !1266, line: 901, baseType: !374, size: 64, offset: 7360)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1265, file: !1266, line: 904, baseType: !469, size: 64, offset: 7424)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1265, file: !1266, line: 907, baseType: !469, size: 64, offset: 7488)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1265, file: !1266, line: 910, baseType: !374, size: 64, offset: 7552)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1265, file: !1266, line: 911, baseType: !374, size: 64, offset: 7616)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1265, file: !1266, line: 914, baseType: !1578, size: 640, offset: 7680)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1579, line: 123, size: 640, elements: !1580)
!1579 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1580 = !{!1581, !1587, !1588}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1578, file: !1579, line: 124, baseType: !1582, size: 576)
!1582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1583, size: 576, elements: !326)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1579, line: 108, size: 192, elements: !1584)
!1584 = !{!1585, !1586}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1583, file: !1579, line: 109, baseType: !469, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1583, file: !1579, line: 110, baseType: !1391, size: 128, offset: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1578, file: !1579, line: 125, baseType: !7, size: 32, offset: 576)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1578, file: !1579, line: 126, baseType: !7, size: 32, offset: 608)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1265, file: !1266, line: 917, baseType: !1590, size: 192, offset: 8320)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1579, line: 134, size: 192, elements: !1591)
!1591 = !{!1592, !1593}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1590, file: !1579, line: 135, baseType: !415, size: 128, align: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1590, file: !1579, line: 136, baseType: !7, size: 32, offset: 128)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1265, file: !1266, line: 923, baseType: !1595, size: 64, offset: 8512)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1597)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1598, line: 111, size: 1280, elements: !1599)
!1598 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1599 = !{!1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1619, !1620, !1621, !1622, !1623, !1624, !1731, !1732, !1733, !1734, !1760, !1763, !1773}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1597, file: !1598, line: 112, baseType: !796, size: 32)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1597, file: !1598, line: 120, baseType: !483, size: 32, offset: 32)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1597, file: !1598, line: 121, baseType: !491, size: 32, offset: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1597, file: !1598, line: 122, baseType: !483, size: 32, offset: 96)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1597, file: !1598, line: 123, baseType: !491, size: 32, offset: 128)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1597, file: !1598, line: 124, baseType: !483, size: 32, offset: 160)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1597, file: !1598, line: 125, baseType: !491, size: 32, offset: 192)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1597, file: !1598, line: 126, baseType: !483, size: 32, offset: 224)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1597, file: !1598, line: 127, baseType: !491, size: 32, offset: 256)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1597, file: !1598, line: 128, baseType: !7, size: 32, offset: 288)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1597, file: !1598, line: 129, baseType: !1611, size: 64, offset: 320)
!1611 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1612, line: 26, baseType: !1613)
!1612 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1612, line: 24, size: 64, elements: !1614)
!1614 = !{!1615}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1613, file: !1612, line: 25, baseType: !1616, size: 64)
!1616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 64, elements: !1617)
!1617 = !{!1618}
!1618 = !DISubrange(count: 2)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1597, file: !1598, line: 130, baseType: !1611, size: 64, offset: 384)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1597, file: !1598, line: 131, baseType: !1611, size: 64, offset: 448)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1597, file: !1598, line: 132, baseType: !1611, size: 64, offset: 512)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1597, file: !1598, line: 133, baseType: !1611, size: 64, offset: 576)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1597, file: !1598, line: 135, baseType: !475, size: 8, offset: 640)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1597, file: !1598, line: 137, baseType: !1625, size: 64, offset: 704)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1627, line: 189, size: 1664, elements: !1628)
!1627 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1628 = !{!1629, !1630, !1633, !1638, !1639, !1642, !1643, !1648, !1649, !1650, !1651, !1653, !1654, !1655, !1656, !1657, !1695, !1716}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1626, file: !1627, line: 190, baseType: !1278, size: 32)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1626, file: !1627, line: 191, baseType: !1631, size: 32, offset: 32)
!1631 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1627, line: 28, baseType: !1632)
!1632 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !271, line: 98, baseType: !1492)
!1633 = !DIDerivedType(tag: DW_TAG_member, scope: !1626, file: !1627, line: 192, baseType: !1634, size: 192, offset: 64)
!1634 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1626, file: !1627, line: 192, size: 192, elements: !1635)
!1635 = !{!1636, !1637}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1634, file: !1627, line: 193, baseType: !270, size: 128)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1634, file: !1627, line: 194, baseType: !809, size: 192, align: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1626, file: !1627, line: 199, baseType: !816, size: 256, offset: 256)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1626, file: !1627, line: 200, baseType: !1640, size: 64, offset: 512)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1627, line: 200, flags: DIFlagFwdDecl)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1626, file: !1627, line: 201, baseType: !195, size: 64, offset: 576)
!1643 = !DIDerivedType(tag: DW_TAG_member, scope: !1626, file: !1627, line: 202, baseType: !1644, size: 64, offset: 640)
!1644 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1626, file: !1627, line: 202, size: 64, elements: !1645)
!1645 = !{!1646, !1647}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1644, file: !1627, line: 203, baseType: !587, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1644, file: !1627, line: 204, baseType: !587, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1626, file: !1627, line: 206, baseType: !587, size: 64, offset: 704)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1626, file: !1627, line: 207, baseType: !483, size: 32, offset: 768)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1626, file: !1627, line: 208, baseType: !491, size: 32, offset: 800)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1626, file: !1627, line: 209, baseType: !1652, size: 32, offset: 832)
!1652 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1627, line: 31, baseType: !607)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1626, file: !1627, line: 210, baseType: !198, size: 16, offset: 864)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1626, file: !1627, line: 211, baseType: !198, size: 16, offset: 880)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1626, file: !1627, line: 215, baseType: !1253, size: 16, offset: 896)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1626, file: !1627, line: 222, baseType: !374, size: 64, offset: 960)
!1657 = !DIDerivedType(tag: DW_TAG_member, scope: !1626, file: !1627, line: 239, baseType: !1658, size: 320, offset: 1024)
!1658 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1626, file: !1627, line: 239, size: 320, elements: !1659)
!1659 = !{!1660, !1687}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1658, file: !1627, line: 240, baseType: !1661, size: 320)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1627, line: 108, size: 320, elements: !1662)
!1662 = !{!1663, !1664, !1676, !1679, !1686}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1661, file: !1627, line: 110, baseType: !374, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, scope: !1661, file: !1627, line: 111, baseType: !1665, size: 64, offset: 64)
!1665 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1661, file: !1627, line: 111, size: 64, elements: !1666)
!1666 = !{!1667, !1675}
!1667 = !DIDerivedType(tag: DW_TAG_member, scope: !1665, file: !1627, line: 112, baseType: !1668, size: 64)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1665, file: !1627, line: 112, size: 64, elements: !1669)
!1669 = !{!1670, !1671}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1668, file: !1627, line: 114, baseType: !908, size: 16)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1668, file: !1627, line: 115, baseType: !1672, size: 48, offset: 16)
!1672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 48, elements: !1673)
!1673 = !{!1674}
!1674 = !DISubrange(count: 6)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1665, file: !1627, line: 121, baseType: !374, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1661, file: !1627, line: 123, baseType: !1677, size: 64, offset: 128)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1627, line: 96, flags: DIFlagFwdDecl)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1661, file: !1627, line: 124, baseType: !1680, size: 64, offset: 192)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1627, line: 102, size: 192, elements: !1682)
!1682 = !{!1683, !1684, !1685}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1681, file: !1627, line: 103, baseType: !415, size: 128, align: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1681, file: !1627, line: 104, baseType: !1278, size: 32, offset: 128)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1681, file: !1627, line: 105, baseType: !538, size: 8, offset: 160)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1661, file: !1627, line: 125, baseType: !241, size: 64, offset: 256)
!1687 = !DIDerivedType(tag: DW_TAG_member, scope: !1658, file: !1627, line: 241, baseType: !1688, size: 320)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1658, file: !1627, line: 241, size: 320, elements: !1689)
!1689 = !{!1690, !1691, !1692, !1693, !1694}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1688, file: !1627, line: 242, baseType: !374, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1688, file: !1627, line: 243, baseType: !374, size: 64, offset: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1688, file: !1627, line: 244, baseType: !1677, size: 64, offset: 128)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1688, file: !1627, line: 245, baseType: !1680, size: 64, offset: 192)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1688, file: !1627, line: 246, baseType: !325, size: 64, offset: 256)
!1695 = !DIDerivedType(tag: DW_TAG_member, scope: !1626, file: !1627, line: 254, baseType: !1696, size: 256, offset: 1344)
!1696 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1626, file: !1627, line: 254, size: 256, elements: !1697)
!1697 = !{!1698, !1704}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1696, file: !1627, line: 255, baseType: !1699, size: 256)
!1699 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1627, line: 128, size: 256, elements: !1700)
!1700 = !{!1701, !1702}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1699, file: !1627, line: 129, baseType: !195, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1699, file: !1627, line: 130, baseType: !1703, size: 256)
!1703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 256, elements: !1203)
!1704 = !DIDerivedType(tag: DW_TAG_member, scope: !1696, file: !1627, line: 256, baseType: !1705, size: 256)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1696, file: !1627, line: 256, size: 256, elements: !1706)
!1706 = !{!1707, !1708}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1705, file: !1627, line: 258, baseType: !270, size: 128)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1705, file: !1627, line: 259, baseType: !1709, size: 128, offset: 128)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1710, line: 22, size: 128, elements: !1711)
!1710 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1711 = !{!1712, !1715}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1709, file: !1710, line: 23, baseType: !1713, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1710, line: 23, flags: DIFlagFwdDecl)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1709, file: !1710, line: 24, baseType: !374, size: 64, offset: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1626, file: !1627, line: 274, baseType: !1717, size: 64, offset: 1600)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1627, line: 170, size: 192, elements: !1719)
!1719 = !{!1720, !1729, !1730}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1718, file: !1627, line: 171, baseType: !1721, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1627, line: 165, baseType: !1722)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{!250, !1625, !1725, !1727, !1625}
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1678)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1699)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1718, file: !1627, line: 172, baseType: !1625, size: 64, offset: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1718, file: !1627, line: 173, baseType: !1677, size: 64, offset: 128)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1597, file: !1598, line: 138, baseType: !1625, size: 64, offset: 768)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1597, file: !1598, line: 139, baseType: !1625, size: 64, offset: 832)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1597, file: !1598, line: 140, baseType: !1625, size: 64, offset: 896)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1597, file: !1598, line: 145, baseType: !1735, size: 64, offset: 960)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1737, line: 13, size: 896, elements: !1738)
!1737 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1738 = !{!1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1736, file: !1737, line: 14, baseType: !1278, size: 32)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1736, file: !1737, line: 15, baseType: !796, size: 32, offset: 32)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1736, file: !1737, line: 16, baseType: !796, size: 32, offset: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1736, file: !1737, line: 21, baseType: !820, size: 64, offset: 128)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1736, file: !1737, line: 27, baseType: !374, size: 64, offset: 192)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1736, file: !1737, line: 28, baseType: !374, size: 64, offset: 256)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1736, file: !1737, line: 29, baseType: !820, size: 64, offset: 320)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1736, file: !1737, line: 32, baseType: !687, size: 128, offset: 384)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1736, file: !1737, line: 33, baseType: !483, size: 32, offset: 512)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1736, file: !1737, line: 37, baseType: !820, size: 64, offset: 576)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1736, file: !1737, line: 44, baseType: !1750, size: 256, offset: 640)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1751, line: 15, size: 256, elements: !1752)
!1751 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1752 = !{!1753, !1754, !1755, !1756, !1757, !1758, !1759}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1750, file: !1751, line: 16, baseType: !829)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1750, file: !1751, line: 18, baseType: !250, size: 32)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1750, file: !1751, line: 19, baseType: !250, size: 32, offset: 32)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1750, file: !1751, line: 20, baseType: !250, size: 32, offset: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1750, file: !1751, line: 21, baseType: !250, size: 32, offset: 96)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1750, file: !1751, line: 22, baseType: !374, size: 64, offset: 128)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1750, file: !1751, line: 23, baseType: !374, size: 64, offset: 192)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1597, file: !1598, line: 146, baseType: !1761, size: 64, offset: 1024)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !484, line: 18, flags: DIFlagFwdDecl)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1597, file: !1598, line: 147, baseType: !1764, size: 64, offset: 1088)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1598, line: 25, size: 64, elements: !1766)
!1766 = !{!1767, !1768, !1769}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1765, file: !1598, line: 26, baseType: !796, size: 32)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1765, file: !1598, line: 27, baseType: !250, size: 32, offset: 32)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1765, file: !1598, line: 28, baseType: !1770, offset: 64)
!1770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !491, elements: !1771)
!1771 = !{!1772}
!1772 = !DISubrange(count: 0)
!1773 = !DIDerivedType(tag: DW_TAG_member, scope: !1597, file: !1598, line: 149, baseType: !1774, size: 128, offset: 1152)
!1774 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1597, file: !1598, line: 149, size: 128, elements: !1775)
!1775 = !{!1776, !1777}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1774, file: !1598, line: 150, baseType: !250, size: 32)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1774, file: !1598, line: 151, baseType: !415, size: 128, align: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1265, file: !1266, line: 926, baseType: !1595, size: 64, offset: 8576)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1265, file: !1266, line: 929, baseType: !1595, size: 64, offset: 8640)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1265, file: !1266, line: 933, baseType: !1625, size: 64, offset: 8704)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1265, file: !1266, line: 943, baseType: !1782, size: 128, offset: 8768)
!1782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 128, elements: !1783)
!1783 = !{!1784}
!1784 = !DISubrange(count: 16)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1265, file: !1266, line: 945, baseType: !1786, size: 64, offset: 8896)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1266, line: 49, flags: DIFlagFwdDecl)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1265, file: !1266, line: 956, baseType: !1789, size: 64, offset: 8960)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1266, line: 45, flags: DIFlagFwdDecl)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1265, file: !1266, line: 959, baseType: !1792, size: 64, offset: 9024)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1266, line: 959, flags: DIFlagFwdDecl)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1265, file: !1266, line: 962, baseType: !1795, size: 64, offset: 9088)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1266, line: 66, flags: DIFlagFwdDecl)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1265, file: !1266, line: 966, baseType: !1798, size: 64, offset: 9152)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1800, line: 35, flags: DIFlagFwdDecl)
!1800 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1265, file: !1266, line: 969, baseType: !1802, size: 64, offset: 9216)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1804, line: 82, size: 7296, elements: !1805)
!1804 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1805 = !{!1806, !1807, !1808, !1809, !1810, !1811, !1812, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1841, !1850, !1851, !1853, !1854, !1855, !1858, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1888, !1889, !1896, !1897, !1898, !1899, !1900, !1901}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1803, file: !1804, line: 83, baseType: !1278, size: 32)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1803, file: !1804, line: 84, baseType: !796, size: 32, offset: 32)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1803, file: !1804, line: 85, baseType: !250, size: 32, offset: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1803, file: !1804, line: 86, baseType: !270, size: 128, offset: 128)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1803, file: !1804, line: 88, baseType: !1529, size: 128, offset: 256)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1803, file: !1804, line: 91, baseType: !1264, size: 64, offset: 384)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1803, file: !1804, line: 94, baseType: !1813, size: 192, offset: 448)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1814, line: 30, size: 192, elements: !1815)
!1814 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1815 = !{!1816, !1817}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1813, file: !1814, line: 31, baseType: !270, size: 128)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1813, file: !1814, line: 32, baseType: !1818, size: 64, offset: 128)
!1818 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1819, line: 25, baseType: !1820)
!1819 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1819, line: 23, size: 64, elements: !1821)
!1821 = !{!1822}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1820, file: !1819, line: 24, baseType: !1418, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1803, file: !1804, line: 97, baseType: !683, size: 64, offset: 640)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1803, file: !1804, line: 100, baseType: !250, size: 32, offset: 704)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1803, file: !1804, line: 106, baseType: !250, size: 32, offset: 736)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1803, file: !1804, line: 107, baseType: !1264, size: 64, offset: 768)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1803, file: !1804, line: 110, baseType: !250, size: 32, offset: 832)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1803, file: !1804, line: 111, baseType: !7, size: 32, offset: 864)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1803, file: !1804, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1803, file: !1804, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1803, file: !1804, line: 128, baseType: !250, size: 32, offset: 928)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1803, file: !1804, line: 129, baseType: !270, size: 128, offset: 960)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1803, file: !1804, line: 132, baseType: !1340, size: 512, offset: 1088)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1803, file: !1804, line: 133, baseType: !1348, size: 64, offset: 1600)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1803, file: !1804, line: 140, baseType: !1836, size: 256, offset: 1664)
!1836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1837, size: 256, elements: !1617)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1804, line: 38, size: 128, elements: !1838)
!1838 = !{!1839, !1840}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1837, file: !1804, line: 39, baseType: !469, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1837, file: !1804, line: 40, baseType: !469, size: 64, offset: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1803, file: !1804, line: 146, baseType: !1842, size: 192, offset: 1920)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1804, line: 66, size: 192, elements: !1843)
!1843 = !{!1844}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1842, file: !1804, line: 67, baseType: !1845, size: 192)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1804, line: 47, size: 192, elements: !1846)
!1846 = !{!1847, !1848, !1849}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1845, file: !1804, line: 48, baseType: !822, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1845, file: !1804, line: 49, baseType: !822, size: 64, offset: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1845, file: !1804, line: 50, baseType: !822, size: 64, offset: 128)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1803, file: !1804, line: 150, baseType: !1578, size: 640, offset: 2112)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1803, file: !1804, line: 153, baseType: !1852, size: 256, offset: 2752)
!1852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1519, size: 256, elements: !1203)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1803, file: !1804, line: 159, baseType: !1519, size: 64, offset: 3008)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1803, file: !1804, line: 162, baseType: !250, size: 32, offset: 3072)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1803, file: !1804, line: 164, baseType: !1856, size: 64, offset: 3136)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1804, line: 164, flags: DIFlagFwdDecl)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1803, file: !1804, line: 175, baseType: !1859, size: 32, offset: 3200)
!1859 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !438, line: 805, baseType: !1860)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !438, line: 798, size: 32, elements: !1861)
!1861 = !{!1862, !1863}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1860, file: !438, line: 803, baseType: !437, size: 32)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1860, file: !438, line: 804, baseType: !284, offset: 32)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1803, file: !1804, line: 176, baseType: !469, size: 64, offset: 3264)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1803, file: !1804, line: 176, baseType: !469, size: 64, offset: 3328)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1803, file: !1804, line: 176, baseType: !469, size: 64, offset: 3392)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1803, file: !1804, line: 176, baseType: !469, size: 64, offset: 3456)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1803, file: !1804, line: 177, baseType: !469, size: 64, offset: 3520)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1803, file: !1804, line: 178, baseType: !469, size: 64, offset: 3584)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1803, file: !1804, line: 179, baseType: !1566, size: 128, offset: 3648)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1803, file: !1804, line: 180, baseType: !374, size: 64, offset: 3776)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1803, file: !1804, line: 180, baseType: !374, size: 64, offset: 3840)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1803, file: !1804, line: 180, baseType: !374, size: 64, offset: 3904)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1803, file: !1804, line: 180, baseType: !374, size: 64, offset: 3968)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1803, file: !1804, line: 181, baseType: !374, size: 64, offset: 4032)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1803, file: !1804, line: 181, baseType: !374, size: 64, offset: 4096)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1803, file: !1804, line: 181, baseType: !374, size: 64, offset: 4160)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1803, file: !1804, line: 181, baseType: !374, size: 64, offset: 4224)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1803, file: !1804, line: 182, baseType: !374, size: 64, offset: 4288)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1803, file: !1804, line: 182, baseType: !374, size: 64, offset: 4352)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1803, file: !1804, line: 182, baseType: !374, size: 64, offset: 4416)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1803, file: !1804, line: 182, baseType: !374, size: 64, offset: 4480)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1803, file: !1804, line: 183, baseType: !374, size: 64, offset: 4544)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1803, file: !1804, line: 183, baseType: !374, size: 64, offset: 4608)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1803, file: !1804, line: 184, baseType: !1886, offset: 4672)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1887, line: 12, elements: !298)
!1887 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1803, file: !1804, line: 192, baseType: !471, size: 64, offset: 4672)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1803, file: !1804, line: 203, baseType: !1890, size: 2048, offset: 4736)
!1890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1891, size: 2048, elements: !1783)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1892, line: 43, size: 128, elements: !1893)
!1892 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1893 = !{!1894, !1895}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1891, file: !1892, line: 44, baseType: !373, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1891, file: !1892, line: 45, baseType: !373, size: 64, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1803, file: !1804, line: 220, baseType: !538, size: 8, offset: 6784)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1803, file: !1804, line: 221, baseType: !1253, size: 16, offset: 6800)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1803, file: !1804, line: 222, baseType: !1253, size: 16, offset: 6816)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1803, file: !1804, line: 224, baseType: !1022, size: 64, offset: 6848)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1803, file: !1804, line: 227, baseType: !1221, size: 192, offset: 6912)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1803, file: !1804, line: 233, baseType: !1221, size: 192, offset: 7104)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1265, file: !1266, line: 970, baseType: !1903, size: 64, offset: 9280)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1804, line: 20, size: 16576, elements: !1905)
!1905 = !{!1906, !1907, !1908, !1909}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1904, file: !1804, line: 21, baseType: !284)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1904, file: !1804, line: 22, baseType: !1278, size: 32)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1904, file: !1804, line: 23, baseType: !1529, size: 128, offset: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1904, file: !1804, line: 24, baseType: !1910, size: 16384, offset: 192)
!1910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1911, size: 16384, elements: !330)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1814, line: 49, size: 256, elements: !1912)
!1912 = !{!1913}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1911, file: !1814, line: 50, baseType: !1914, size: 256)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1814, line: 35, size: 256, elements: !1915)
!1915 = !{!1916, !1923, !1924, !1928}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1914, file: !1814, line: 37, baseType: !1917, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1918, line: 19, baseType: !1919)
!1918 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1918, line: 18, baseType: !1921)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{null, !250}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1914, file: !1814, line: 38, baseType: !374, size: 64, offset: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1914, file: !1814, line: 44, baseType: !1925, size: 64, offset: 128)
!1925 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1918, line: 22, baseType: !1926)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1918, line: 21, baseType: !209)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1914, file: !1814, line: 46, baseType: !1818, size: 64, offset: 192)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1265, file: !1266, line: 971, baseType: !1818, size: 64, offset: 9344)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1265, file: !1266, line: 972, baseType: !1818, size: 64, offset: 9408)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1265, file: !1266, line: 974, baseType: !1818, size: 64, offset: 9472)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1265, file: !1266, line: 975, baseType: !1813, size: 192, offset: 9536)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1265, file: !1266, line: 976, baseType: !374, size: 64, offset: 9728)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1265, file: !1266, line: 977, baseType: !371, size: 64, offset: 9792)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1265, file: !1266, line: 978, baseType: !7, size: 32, offset: 9856)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1265, file: !1266, line: 980, baseType: !418, size: 64, offset: 9920)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1265, file: !1266, line: 989, baseType: !1938, size: 128, offset: 9984)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1939, line: 35, size: 128, elements: !1940)
!1939 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1940 = !{!1941, !1942, !1943}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1938, file: !1939, line: 36, baseType: !250, size: 32)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1938, file: !1939, line: 37, baseType: !796, size: 32, offset: 32)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1938, file: !1939, line: 38, baseType: !1944, size: 64, offset: 64)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1939, line: 23, flags: DIFlagFwdDecl)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1265, file: !1266, line: 992, baseType: !469, size: 64, offset: 10112)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1265, file: !1266, line: 993, baseType: !469, size: 64, offset: 10176)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1265, file: !1266, line: 996, baseType: !284, offset: 10240)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1265, file: !1266, line: 999, baseType: !829, offset: 10240)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1265, file: !1266, line: 1001, baseType: !1951, size: 64, offset: 10240)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1266, line: 636, size: 64, elements: !1952)
!1952 = !{!1953}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1951, file: !1266, line: 637, baseType: !1954, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1265, file: !1266, line: 1005, baseType: !801, size: 128, offset: 10304)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1265, file: !1266, line: 1007, baseType: !1264, size: 64, offset: 10432)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1265, file: !1266, line: 1009, baseType: !1958, size: 64, offset: 10496)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1266, line: 1009, flags: DIFlagFwdDecl)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1265, file: !1266, line: 1043, baseType: !195, size: 64, offset: 10560)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1265, file: !1266, line: 1046, baseType: !1962, size: 64, offset: 10624)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1266, line: 41, flags: DIFlagFwdDecl)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1265, file: !1266, line: 1050, baseType: !1965, size: 64, offset: 10688)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1266, line: 42, flags: DIFlagFwdDecl)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1265, file: !1266, line: 1054, baseType: !1968, size: 64, offset: 10752)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1266, line: 55, flags: DIFlagFwdDecl)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1265, file: !1266, line: 1056, baseType: !1971, size: 64, offset: 10816)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1266, line: 40, flags: DIFlagFwdDecl)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1265, file: !1266, line: 1058, baseType: !1974, size: 64, offset: 10880)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1976, line: 99, size: 704, elements: !1977)
!1976 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1977 = !{!1978, !1979, !1980, !1981, !1982, !1983, !1984, !2003, !2004}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1975, file: !1976, line: 100, baseType: !820, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1975, file: !1976, line: 101, baseType: !796, size: 32, offset: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1975, file: !1976, line: 102, baseType: !796, size: 32, offset: 96)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1975, file: !1976, line: 105, baseType: !284, offset: 128)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1975, file: !1976, line: 107, baseType: !198, size: 16, offset: 128)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1975, file: !1976, line: 109, baseType: !787, size: 128, offset: 192)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1975, file: !1976, line: 110, baseType: !1985, size: 64, offset: 320)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1976, line: 73, size: 448, elements: !1987)
!1987 = !{!1988, !1991, !1992, !1997, !2002}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1986, file: !1976, line: 74, baseType: !1989, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1976, line: 74, flags: DIFlagFwdDecl)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1986, file: !1976, line: 75, baseType: !1974, size: 64, offset: 64)
!1992 = !DIDerivedType(tag: DW_TAG_member, scope: !1986, file: !1976, line: 83, baseType: !1993, size: 128, offset: 128)
!1993 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1986, file: !1976, line: 83, size: 128, elements: !1994)
!1994 = !{!1995, !1996}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1993, file: !1976, line: 84, baseType: !270, size: 128)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1993, file: !1976, line: 85, baseType: !983, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, scope: !1986, file: !1976, line: 87, baseType: !1998, size: 128, offset: 256)
!1998 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1986, file: !1976, line: 87, size: 128, elements: !1999)
!1999 = !{!2000, !2001}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1998, file: !1976, line: 88, baseType: !687, size: 128)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1998, file: !1976, line: 89, baseType: !415, size: 128, align: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1986, file: !1976, line: 92, baseType: !7, size: 32, offset: 384)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1975, file: !1976, line: 111, baseType: !683, size: 64, offset: 384)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1975, file: !1976, line: 113, baseType: !2005, size: 256, offset: 448)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2006, line: 102, size: 256, elements: !2007)
!2006 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2007 = !{!2008, !2009, !2010}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2005, file: !2006, line: 103, baseType: !820, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2005, file: !2006, line: 104, baseType: !270, size: 128, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2005, file: !2006, line: 105, baseType: !2011, size: 64, offset: 192)
!2011 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2006, line: 21, baseType: !2012)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{null, !2015}
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1265, file: !1266, line: 1061, baseType: !2017, size: 64, offset: 10944)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1266, line: 43, flags: DIFlagFwdDecl)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1265, file: !1266, line: 1064, baseType: !374, size: 64, offset: 11008)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1265, file: !1266, line: 1065, baseType: !2021, size: 64, offset: 11072)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1814, line: 14, baseType: !2023)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1814, line: 12, size: 384, elements: !2024)
!2024 = !{!2025}
!2025 = !DIDerivedType(tag: DW_TAG_member, scope: !2023, file: !1814, line: 13, baseType: !2026, size: 384)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2023, file: !1814, line: 13, size: 384, elements: !2027)
!2027 = !{!2028, !2029, !2030, !2031}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2026, file: !1814, line: 13, baseType: !250, size: 32)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2026, file: !1814, line: 13, baseType: !250, size: 32, offset: 32)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2026, file: !1814, line: 13, baseType: !250, size: 32, offset: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2026, file: !1814, line: 13, baseType: !2032, size: 256, offset: 128)
!2032 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2033, line: 32, size: 256, elements: !2034)
!2033 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2034 = !{!2035, !2040, !2053, !2059, !2068, !2088, !2093}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2032, file: !2033, line: 37, baseType: !2036, size: 64)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2032, file: !2033, line: 34, size: 64, elements: !2037)
!2037 = !{!2038, !2039}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2036, file: !2033, line: 35, baseType: !1508, size: 32)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2036, file: !2033, line: 36, baseType: !489, size: 32, offset: 32)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2032, file: !2033, line: 45, baseType: !2041, size: 192)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2032, file: !2033, line: 40, size: 192, elements: !2042)
!2042 = !{!2043, !2045, !2046, !2052}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2041, file: !2033, line: 41, baseType: !2044, size: 32)
!2044 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !358, line: 95, baseType: !250)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2041, file: !2033, line: 42, baseType: !250, size: 32, offset: 32)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2041, file: !2033, line: 43, baseType: !2047, size: 64, offset: 64)
!2047 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2033, line: 11, baseType: !2048)
!2048 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2033, line: 8, size: 64, elements: !2049)
!2049 = !{!2050, !2051}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2048, file: !2033, line: 9, baseType: !250, size: 32)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2048, file: !2033, line: 10, baseType: !195, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2041, file: !2033, line: 44, baseType: !250, size: 32, offset: 128)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2032, file: !2033, line: 52, baseType: !2054, size: 128)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2032, file: !2033, line: 48, size: 128, elements: !2055)
!2055 = !{!2056, !2057, !2058}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2054, file: !2033, line: 49, baseType: !1508, size: 32)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2054, file: !2033, line: 50, baseType: !489, size: 32, offset: 32)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2054, file: !2033, line: 51, baseType: !2047, size: 64, offset: 64)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2032, file: !2033, line: 61, baseType: !2060, size: 256)
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2032, file: !2033, line: 55, size: 256, elements: !2061)
!2061 = !{!2062, !2063, !2064, !2065, !2067}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2060, file: !2033, line: 56, baseType: !1508, size: 32)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2060, file: !2033, line: 57, baseType: !489, size: 32, offset: 32)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2060, file: !2033, line: 58, baseType: !250, size: 32, offset: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2060, file: !2033, line: 59, baseType: !2066, size: 64, offset: 128)
!2066 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !358, line: 94, baseType: !359)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2060, file: !2033, line: 60, baseType: !2066, size: 64, offset: 192)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2032, file: !2033, line: 95, baseType: !2069, size: 256)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2032, file: !2033, line: 64, size: 256, elements: !2070)
!2070 = !{!2071, !2072}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2069, file: !2033, line: 65, baseType: !195, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, scope: !2069, file: !2033, line: 77, baseType: !2073, size: 192, offset: 64)
!2073 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2069, file: !2033, line: 77, size: 192, elements: !2074)
!2074 = !{!2075, !2076, !2083}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2073, file: !2033, line: 82, baseType: !1253, size: 16)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2073, file: !2033, line: 88, baseType: !2077, size: 192)
!2077 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2073, file: !2033, line: 84, size: 192, elements: !2078)
!2078 = !{!2079, !2081, !2082}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2077, file: !2033, line: 85, baseType: !2080, size: 64)
!2080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 64, elements: !1378)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2077, file: !2033, line: 86, baseType: !195, size: 64, offset: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2077, file: !2033, line: 87, baseType: !195, size: 64, offset: 128)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2073, file: !2033, line: 93, baseType: !2084, size: 96)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2073, file: !2033, line: 90, size: 96, elements: !2085)
!2085 = !{!2086, !2087}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2084, file: !2033, line: 91, baseType: !2080, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2084, file: !2033, line: 92, baseType: !201, size: 32, offset: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2032, file: !2033, line: 101, baseType: !2089, size: 128)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2032, file: !2033, line: 98, size: 128, elements: !2090)
!2090 = !{!2091, !2092}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2089, file: !2033, line: 99, baseType: !360, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2089, file: !2033, line: 100, baseType: !250, size: 32, offset: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2032, file: !2033, line: 108, baseType: !2094, size: 128)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2032, file: !2033, line: 104, size: 128, elements: !2095)
!2095 = !{!2096, !2097, !2098}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2094, file: !2033, line: 105, baseType: !195, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2094, file: !2033, line: 106, baseType: !250, size: 32, offset: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2094, file: !2033, line: 107, baseType: !7, size: 32, offset: 96)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1265, file: !1266, line: 1067, baseType: !1886, offset: 11136)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1265, file: !1266, line: 1099, baseType: !2101, size: 64, offset: 11136)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1266, line: 56, flags: DIFlagFwdDecl)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1265, file: !1266, line: 1103, baseType: !270, size: 128, offset: 11200)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1265, file: !1266, line: 1104, baseType: !2105, size: 64, offset: 11328)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1266, line: 46, flags: DIFlagFwdDecl)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1265, file: !1266, line: 1105, baseType: !1221, size: 192, offset: 11392)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1265, file: !1266, line: 1106, baseType: !7, size: 32, offset: 11584)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1265, file: !1266, line: 1109, baseType: !2110, size: 128, offset: 11648)
!2110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2111, size: 128, elements: !1617)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1266, line: 51, flags: DIFlagFwdDecl)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1265, file: !1266, line: 1110, baseType: !1221, size: 192, offset: 11776)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1265, file: !1266, line: 1111, baseType: !270, size: 128, offset: 11968)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1265, file: !1266, line: 1173, baseType: !2116, size: 64, offset: 12096)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2118, line: 62, size: 256, align: 256, elements: !2119)
!2118 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2119 = !{!2120, !2121, !2122, !2127}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2117, file: !2118, line: 75, baseType: !201, size: 32)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2117, file: !2118, line: 90, baseType: !201, size: 32, offset: 32)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2117, file: !2118, line: 124, baseType: !2123, size: 64, offset: 64)
!2123 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2117, file: !2118, line: 109, size: 64, elements: !2124)
!2124 = !{!2125, !2126}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2123, file: !2118, line: 110, baseType: !470, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2123, file: !2118, line: 112, baseType: !470, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2117, file: !2118, line: 144, baseType: !201, size: 32, offset: 128)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1265, file: !1266, line: 1174, baseType: !465, size: 32, offset: 12160)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1265, file: !1266, line: 1179, baseType: !374, size: 64, offset: 12224)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1265, file: !1266, line: 1182, baseType: !2131, size: 128, offset: 12288)
!2131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1199, line: 76, size: 128, elements: !2132)
!2132 = !{!2133, !2138, !2139}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2131, file: !1199, line: 85, baseType: !2134, size: 64)
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2135, line: 7, size: 64, elements: !2136)
!2135 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2136 = !{!2137}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2134, file: !2135, line: 12, baseType: !1415, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2131, file: !1199, line: 88, baseType: !538, size: 8, offset: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2131, file: !1199, line: 95, baseType: !538, size: 8, offset: 72)
!2140 = !DIDerivedType(tag: DW_TAG_member, scope: !1265, file: !1266, line: 1184, baseType: !2141, size: 128, offset: 12416)
!2141 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1265, file: !1266, line: 1184, size: 128, elements: !2142)
!2142 = !{!2143, !2144}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2141, file: !1266, line: 1185, baseType: !1278, size: 32)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2141, file: !1266, line: 1186, baseType: !415, size: 128, align: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1265, file: !1266, line: 1190, baseType: !2146, size: 64, offset: 12544)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1266, line: 53, flags: DIFlagFwdDecl)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1265, file: !1266, line: 1192, baseType: !2149, size: 128, offset: 12608)
!2149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1199, line: 64, size: 128, elements: !2150)
!2150 = !{!2151, !2152, !2153}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2149, file: !1199, line: 65, baseType: !769, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2149, file: !1199, line: 67, baseType: !201, size: 32, offset: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2149, file: !1199, line: 68, baseType: !201, size: 32, offset: 96)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1265, file: !1266, line: 1206, baseType: !250, size: 32, offset: 12736)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1265, file: !1266, line: 1207, baseType: !250, size: 32, offset: 12768)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1265, file: !1266, line: 1209, baseType: !374, size: 64, offset: 12800)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1265, file: !1266, line: 1219, baseType: !469, size: 64, offset: 12864)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1265, file: !1266, line: 1220, baseType: !469, size: 64, offset: 12928)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1265, file: !1266, line: 1317, baseType: !250, size: 32, offset: 12992)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1265, file: !1266, line: 1319, baseType: !1264, size: 64, offset: 13056)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1265, file: !1266, line: 1322, baseType: !2162, size: 64, offset: 13120)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2164, line: 56, size: 512, elements: !2165)
!2164 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2165 = !{!2166, !2167, !2168, !2169, !2170, !2171, !2172, !2174}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2163, file: !2164, line: 57, baseType: !2162, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2163, file: !2164, line: 58, baseType: !195, size: 64, offset: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2163, file: !2164, line: 59, baseType: !374, size: 64, offset: 128)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2163, file: !2164, line: 60, baseType: !374, size: 64, offset: 192)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2163, file: !2164, line: 61, baseType: !869, size: 64, offset: 256)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2163, file: !2164, line: 62, baseType: !7, size: 32, offset: 320)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2163, file: !2164, line: 63, baseType: !2173, size: 64, offset: 384)
!2173 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !271, line: 153, baseType: !469)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2163, file: !2164, line: 64, baseType: !2175, size: 64, offset: 448)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1265, file: !1266, line: 1326, baseType: !1278, size: 32, offset: 13184)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1265, file: !1266, line: 1342, baseType: !195, size: 64, offset: 13248)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1265, file: !1266, line: 1343, baseType: !470, size: 64, offset: 13312)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1265, file: !1266, line: 1344, baseType: !469, size: 64, offset: 13376)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1265, file: !1266, line: 1345, baseType: !470, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1265, file: !1266, line: 1346, baseType: !470, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1265, file: !1266, line: 1347, baseType: !470, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1265, file: !1266, line: 1348, baseType: !415, size: 128, align: 64, offset: 13504)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1265, file: !1266, line: 1358, baseType: !2186, size: 34816, offset: 13824)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2187, line: 485, size: 34816, elements: !2188)
!2187 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2188 = !{!2189, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2218, !2219, !2220, !2221, !2222, !2223, !2226, !2227, !2228}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2186, file: !2187, line: 487, baseType: !2190, size: 192)
!2190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2191, size: 192, elements: !326)
!2191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2192, line: 16, size: 64, elements: !2193)
!2192 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2193 = !{!2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2191, file: !2192, line: 17, baseType: !908, size: 16)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2191, file: !2192, line: 18, baseType: !908, size: 16, offset: 16)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2191, file: !2192, line: 19, baseType: !908, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2191, file: !2192, line: 19, baseType: !908, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2191, file: !2192, line: 19, baseType: !908, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2191, file: !2192, line: 19, baseType: !908, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2191, file: !2192, line: 19, baseType: !908, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2191, file: !2192, line: 20, baseType: !908, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2191, file: !2192, line: 20, baseType: !908, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2191, file: !2192, line: 20, baseType: !908, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2191, file: !2192, line: 20, baseType: !908, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2191, file: !2192, line: 20, baseType: !908, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2191, file: !2192, line: 20, baseType: !908, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2186, file: !2187, line: 491, baseType: !374, size: 64, offset: 192)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2186, file: !2187, line: 495, baseType: !198, size: 16, offset: 256)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2186, file: !2187, line: 496, baseType: !198, size: 16, offset: 272)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2186, file: !2187, line: 497, baseType: !198, size: 16, offset: 288)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2186, file: !2187, line: 498, baseType: !198, size: 16, offset: 304)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2186, file: !2187, line: 502, baseType: !374, size: 64, offset: 320)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2186, file: !2187, line: 503, baseType: !374, size: 64, offset: 384)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2186, file: !2187, line: 514, baseType: !2215, size: 256, offset: 448)
!2215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2216, size: 256, elements: !1203)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2187, line: 483, flags: DIFlagFwdDecl)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2186, file: !2187, line: 516, baseType: !374, size: 64, offset: 704)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2186, file: !2187, line: 518, baseType: !374, size: 64, offset: 768)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2186, file: !2187, line: 520, baseType: !374, size: 64, offset: 832)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2186, file: !2187, line: 521, baseType: !374, size: 64, offset: 896)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2186, file: !2187, line: 522, baseType: !374, size: 64, offset: 960)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2186, file: !2187, line: 528, baseType: !2224, size: 64, offset: 1024)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2187, line: 10, flags: DIFlagFwdDecl)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2186, file: !2187, line: 535, baseType: !374, size: 64, offset: 1088)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2186, file: !2187, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2186, file: !2187, line: 540, baseType: !2229, size: 33280, offset: 1536)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2230, line: 317, size: 33280, elements: !2231)
!2230 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2231 = !{!2232, !2233, !2234}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2229, file: !2230, line: 330, baseType: !7, size: 32)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2229, file: !2230, line: 337, baseType: !374, size: 64, offset: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2229, file: !2230, line: 348, baseType: !2235, size: 32768, offset: 512)
!2235 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2230, line: 304, size: 32768, elements: !2236)
!2236 = !{!2237, !2252, !2291, !2341, !2354}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2235, file: !2230, line: 305, baseType: !2238, size: 896)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2230, line: 12, size: 896, elements: !2239)
!2239 = !{!2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2251}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2238, file: !2230, line: 13, baseType: !465, size: 32)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2238, file: !2230, line: 14, baseType: !465, size: 32, offset: 32)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2238, file: !2230, line: 15, baseType: !465, size: 32, offset: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2238, file: !2230, line: 16, baseType: !465, size: 32, offset: 96)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2238, file: !2230, line: 17, baseType: !465, size: 32, offset: 128)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2238, file: !2230, line: 18, baseType: !465, size: 32, offset: 160)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2238, file: !2230, line: 19, baseType: !465, size: 32, offset: 192)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2238, file: !2230, line: 22, baseType: !2248, size: 640, offset: 224)
!2248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, size: 640, elements: !2249)
!2249 = !{!2250}
!2250 = !DISubrange(count: 20)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2238, file: !2230, line: 25, baseType: !465, size: 32, offset: 864)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2235, file: !2230, line: 306, baseType: !2253, size: 4096, align: 128)
!2253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2230, line: 34, size: 4096, align: 128, elements: !2254)
!2254 = !{!2255, !2256, !2257, !2258, !2259, !2274, !2275, !2276, !2280, !2282, !2286}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2253, file: !2230, line: 35, baseType: !908, size: 16)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2253, file: !2230, line: 36, baseType: !908, size: 16, offset: 16)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2253, file: !2230, line: 37, baseType: !908, size: 16, offset: 32)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2253, file: !2230, line: 38, baseType: !908, size: 16, offset: 48)
!2259 = !DIDerivedType(tag: DW_TAG_member, scope: !2253, file: !2230, line: 39, baseType: !2260, size: 128, offset: 64)
!2260 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2253, file: !2230, line: 39, size: 128, elements: !2261)
!2261 = !{!2262, !2267}
!2262 = !DIDerivedType(tag: DW_TAG_member, scope: !2260, file: !2230, line: 40, baseType: !2263, size: 128)
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2260, file: !2230, line: 40, size: 128, elements: !2264)
!2264 = !{!2265, !2266}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2263, file: !2230, line: 41, baseType: !469, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2263, file: !2230, line: 42, baseType: !469, size: 64, offset: 64)
!2267 = !DIDerivedType(tag: DW_TAG_member, scope: !2260, file: !2230, line: 44, baseType: !2268, size: 128)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2260, file: !2230, line: 44, size: 128, elements: !2269)
!2269 = !{!2270, !2271, !2272, !2273}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2268, file: !2230, line: 45, baseType: !465, size: 32)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2268, file: !2230, line: 46, baseType: !465, size: 32, offset: 32)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2268, file: !2230, line: 47, baseType: !465, size: 32, offset: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2268, file: !2230, line: 48, baseType: !465, size: 32, offset: 96)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2253, file: !2230, line: 51, baseType: !465, size: 32, offset: 192)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2253, file: !2230, line: 52, baseType: !465, size: 32, offset: 224)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2253, file: !2230, line: 55, baseType: !2277, size: 1024, offset: 256)
!2277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, size: 1024, elements: !2278)
!2278 = !{!2279}
!2279 = !DISubrange(count: 32)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2253, file: !2230, line: 58, baseType: !2281, size: 2048, offset: 1280)
!2281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, size: 2048, elements: !330)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2253, file: !2230, line: 60, baseType: !2283, size: 384, offset: 3328)
!2283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, size: 384, elements: !2284)
!2284 = !{!2285}
!2285 = !DISubrange(count: 12)
!2286 = !DIDerivedType(tag: DW_TAG_member, scope: !2253, file: !2230, line: 62, baseType: !2287, size: 384, offset: 3712)
!2287 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2253, file: !2230, line: 62, size: 384, elements: !2288)
!2288 = !{!2289, !2290}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2287, file: !2230, line: 63, baseType: !2283, size: 384)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2287, file: !2230, line: 64, baseType: !2283, size: 384)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2235, file: !2230, line: 307, baseType: !2292, size: 1088)
!2292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2230, line: 79, size: 1088, elements: !2293)
!2293 = !{!2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2340}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2292, file: !2230, line: 80, baseType: !465, size: 32)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2292, file: !2230, line: 81, baseType: !465, size: 32, offset: 32)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2292, file: !2230, line: 82, baseType: !465, size: 32, offset: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2292, file: !2230, line: 83, baseType: !465, size: 32, offset: 96)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2292, file: !2230, line: 84, baseType: !465, size: 32, offset: 128)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2292, file: !2230, line: 85, baseType: !465, size: 32, offset: 160)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2292, file: !2230, line: 86, baseType: !465, size: 32, offset: 192)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2292, file: !2230, line: 88, baseType: !2248, size: 640, offset: 224)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2292, file: !2230, line: 89, baseType: !1400, size: 8, offset: 864)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2292, file: !2230, line: 90, baseType: !1400, size: 8, offset: 872)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2292, file: !2230, line: 91, baseType: !1400, size: 8, offset: 880)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2292, file: !2230, line: 92, baseType: !1400, size: 8, offset: 888)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2292, file: !2230, line: 93, baseType: !1400, size: 8, offset: 896)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2292, file: !2230, line: 94, baseType: !1400, size: 8, offset: 904)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2292, file: !2230, line: 95, baseType: !2309, size: 64, offset: 960)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2311, line: 11, size: 128, elements: !2312)
!2311 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2312 = !{!2313, !2314}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2310, file: !2311, line: 12, baseType: !360, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2310, file: !2311, line: 13, baseType: !2315, size: 64, offset: 64)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2317, line: 56, size: 1344, elements: !2318)
!2317 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2318 = !{!2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2316, file: !2317, line: 61, baseType: !374, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2316, file: !2317, line: 62, baseType: !374, size: 64, offset: 64)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2316, file: !2317, line: 63, baseType: !374, size: 64, offset: 128)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2316, file: !2317, line: 64, baseType: !374, size: 64, offset: 192)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2316, file: !2317, line: 65, baseType: !374, size: 64, offset: 256)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2316, file: !2317, line: 66, baseType: !374, size: 64, offset: 320)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2316, file: !2317, line: 68, baseType: !374, size: 64, offset: 384)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2316, file: !2317, line: 69, baseType: !374, size: 64, offset: 448)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2316, file: !2317, line: 70, baseType: !374, size: 64, offset: 512)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2316, file: !2317, line: 71, baseType: !374, size: 64, offset: 576)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2316, file: !2317, line: 72, baseType: !374, size: 64, offset: 640)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2316, file: !2317, line: 73, baseType: !374, size: 64, offset: 704)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2316, file: !2317, line: 74, baseType: !374, size: 64, offset: 768)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2316, file: !2317, line: 75, baseType: !374, size: 64, offset: 832)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2316, file: !2317, line: 76, baseType: !374, size: 64, offset: 896)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2316, file: !2317, line: 81, baseType: !374, size: 64, offset: 960)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2316, file: !2317, line: 83, baseType: !374, size: 64, offset: 1024)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2316, file: !2317, line: 84, baseType: !374, size: 64, offset: 1088)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2316, file: !2317, line: 85, baseType: !374, size: 64, offset: 1152)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2316, file: !2317, line: 86, baseType: !374, size: 64, offset: 1216)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2316, file: !2317, line: 87, baseType: !374, size: 64, offset: 1280)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2292, file: !2230, line: 96, baseType: !465, size: 32, offset: 1024)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2235, file: !2230, line: 308, baseType: !2342, size: 4608, align: 512)
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2230, line: 289, size: 4608, align: 512, elements: !2343)
!2343 = !{!2344, !2345, !2352}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2342, file: !2230, line: 290, baseType: !2253, size: 4096, align: 128)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2342, file: !2230, line: 291, baseType: !2346, size: 512, offset: 4096)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2230, line: 268, size: 512, elements: !2347)
!2347 = !{!2348, !2349, !2350}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2346, file: !2230, line: 269, baseType: !469, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2346, file: !2230, line: 270, baseType: !469, size: 64, offset: 64)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2346, file: !2230, line: 271, baseType: !2351, size: 384, offset: 128)
!2351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !469, size: 384, elements: !1673)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2342, file: !2230, line: 292, baseType: !2353, offset: 4608)
!2353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1400, elements: !1771)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2235, file: !2230, line: 309, baseType: !2355, size: 32768)
!2355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1400, size: 32768, elements: !2356)
!2356 = !{!2357}
!2357 = !DISubrange(count: 4096)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1261, file: !771, line: 378, baseType: !2359, size: 64, offset: 64)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1257, file: !771, line: 384, baseType: !1550, size: 192, offset: 192)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1026, file: !771, line: 500, baseType: !284, offset: 6656)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1026, file: !771, line: 501, baseType: !2363, size: 64, offset: 6656)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !771, line: 387, flags: DIFlagFwdDecl)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1026, file: !771, line: 516, baseType: !1761, size: 64, offset: 6720)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1026, file: !771, line: 519, baseType: !402, size: 64, offset: 6784)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1026, file: !771, line: 521, baseType: !2368, size: 64, offset: 6848)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !771, line: 521, flags: DIFlagFwdDecl)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1026, file: !771, line: 545, baseType: !796, size: 32, offset: 6912)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1026, file: !771, line: 548, baseType: !538, size: 8, offset: 6944)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1026, file: !771, line: 550, baseType: !2373, offset: 6952)
!2373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2374, line: 142, elements: !298)
!2374 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1026, file: !771, line: 554, baseType: !2005, size: 256, offset: 6976)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1026, file: !771, line: 557, baseType: !465, size: 32, offset: 7232)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1023, file: !771, line: 565, baseType: !2378, offset: 7296)
!2378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !374, elements: !2379)
!2379 = !{!2380}
!2380 = !DISubrange(count: -1)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1019, file: !771, line: 151, baseType: !796, size: 32)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1012, file: !771, line: 156, baseType: !284, offset: 256)
!2383 = !DIDerivedType(tag: DW_TAG_member, scope: !775, file: !771, line: 159, baseType: !2384, size: 128)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !775, file: !771, line: 159, size: 128, elements: !2385)
!2385 = !{!2386, !2450}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2384, file: !771, line: 161, baseType: !2387, size: 64)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2389)
!2389 = !{!2390, !2400, !2421, !2422, !2423, !2424, !2425, !2437, !2438, !2439}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2388, file: !31, line: 111, baseType: !2391, size: 384)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2392)
!2392 = !{!2393, !2395, !2396, !2397, !2398, !2399}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2391, file: !31, line: 20, baseType: !2394, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !374)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2391, file: !31, line: 21, baseType: !2394, size: 64, offset: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2391, file: !31, line: 22, baseType: !2394, size: 64, offset: 128)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2391, file: !31, line: 23, baseType: !374, size: 64, offset: 192)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2391, file: !31, line: 24, baseType: !374, size: 64, offset: 256)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2391, file: !31, line: 25, baseType: !374, size: 64, offset: 320)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2388, file: !31, line: 112, baseType: !2401, size: 64, offset: 384)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2403, line: 105, size: 128, elements: !2404)
!2403 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2404 = !{!2405, !2406}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2402, file: !2403, line: 110, baseType: !374, size: 64)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2402, file: !2403, line: 118, baseType: !2407, size: 64, offset: 64)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2403, line: 95, size: 448, elements: !2409)
!2409 = !{!2410, !2411, !2416, !2417, !2418, !2419, !2420}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2408, file: !2403, line: 96, baseType: !820, size: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2408, file: !2403, line: 97, baseType: !2412, size: 64, offset: 64)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2403, line: 60, baseType: !2414)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{null, !2401}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2408, file: !2403, line: 98, baseType: !2412, size: 64, offset: 128)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2408, file: !2403, line: 99, baseType: !538, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2408, file: !2403, line: 100, baseType: !538, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2408, file: !2403, line: 101, baseType: !415, size: 128, align: 64, offset: 256)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2408, file: !2403, line: 102, baseType: !2401, size: 64, offset: 384)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2388, file: !31, line: 113, baseType: !2402, size: 128, offset: 448)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2388, file: !31, line: 114, baseType: !1550, size: 192, offset: 576)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2388, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2388, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2388, file: !31, line: 117, baseType: !2426, size: 64, offset: 832)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2428)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2429)
!2429 = !{!2430, !2431, !2435, !2436}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2428, file: !31, line: 73, baseType: !889, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2428, file: !31, line: 78, baseType: !2432, size: 64, offset: 64)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{null, !2387}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2428, file: !31, line: 83, baseType: !2432, size: 64, offset: 128)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2428, file: !31, line: 89, baseType: !1075, size: 64, offset: 192)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2388, file: !31, line: 118, baseType: !195, size: 64, offset: 896)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2388, file: !31, line: 119, baseType: !250, size: 32, offset: 960)
!2439 = !DIDerivedType(tag: DW_TAG_member, scope: !2388, file: !31, line: 120, baseType: !2440, size: 128, offset: 1024)
!2440 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2388, file: !31, line: 120, size: 128, elements: !2441)
!2441 = !{!2442, !2448}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2440, file: !31, line: 121, baseType: !2443, size: 128)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2444, line: 6, size: 128, elements: !2445)
!2444 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2445 = !{!2446, !2447}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2443, file: !2444, line: 7, baseType: !469, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2443, file: !2444, line: 8, baseType: !469, size: 64, offset: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2440, file: !31, line: 122, baseType: !2449)
!2449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2443, elements: !1771)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2384, file: !771, line: 162, baseType: !195, size: 64, offset: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !775, file: !771, line: 176, baseType: !415, size: 128, align: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, scope: !770, file: !771, line: 179, baseType: !2453, size: 32, offset: 384)
!2453 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !770, file: !771, line: 179, size: 32, elements: !2454)
!2454 = !{!2455, !2456, !2457, !2458}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2453, file: !771, line: 184, baseType: !796, size: 32)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2453, file: !771, line: 192, baseType: !7, size: 32)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2453, file: !771, line: 194, baseType: !7, size: 32)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2453, file: !771, line: 195, baseType: !250, size: 32)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !770, file: !771, line: 199, baseType: !796, size: 32, offset: 416)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !705, file: !44, line: 1964, baseType: !2461, size: 64, offset: 1344)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{!360, !647, !2464}
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2466, line: 12, size: 256, elements: !2467)
!2466 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2467 = !{!2468, !2469, !2470, !2471, !2472}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2465, file: !2466, line: 13, baseType: !792, size: 32)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2465, file: !2466, line: 16, baseType: !250, size: 32, offset: 32)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2465, file: !2466, line: 23, baseType: !374, size: 64, offset: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2465, file: !2466, line: 30, baseType: !374, size: 64, offset: 128)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2465, file: !2466, line: 33, baseType: !2473, size: 64, offset: 192)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !771, line: 27, flags: DIFlagFwdDecl)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !705, file: !44, line: 1966, baseType: !2461, size: 64, offset: 1408)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !648, file: !44, line: 1424, baseType: !2477, size: 64, offset: 448)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2479)
!2479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2480)
!2480 = !{!2481, !2527, !2531, !2535, !2536, !2537, !2538, !2539, !2544, !2549, !2553}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2479, file: !38, line: 323, baseType: !2482, size: 64)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{!250, !2485}
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2487)
!2487 = !{!2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2512, !2513, !2514}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2486, file: !38, line: 295, baseType: !687, size: 128)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2486, file: !38, line: 296, baseType: !270, size: 128, offset: 128)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2486, file: !38, line: 297, baseType: !270, size: 128, offset: 256)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2486, file: !38, line: 298, baseType: !270, size: 128, offset: 384)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2486, file: !38, line: 299, baseType: !1221, size: 192, offset: 512)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2486, file: !38, line: 300, baseType: !284, offset: 704)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2486, file: !38, line: 301, baseType: !796, size: 32, offset: 704)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2486, file: !38, line: 302, baseType: !647, size: 64, offset: 768)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2486, file: !38, line: 303, baseType: !2497, size: 64, offset: 832)
!2497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2498)
!2498 = !{!2499, !2511}
!2499 = !DIDerivedType(tag: DW_TAG_member, scope: !2497, file: !38, line: 69, baseType: !2500, size: 32)
!2500 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2497, file: !38, line: 69, size: 32, elements: !2501)
!2501 = !{!2502, !2503, !2504}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2500, file: !38, line: 70, baseType: !483, size: 32)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2500, file: !38, line: 71, baseType: !491, size: 32)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2500, file: !38, line: 72, baseType: !2505, size: 32)
!2505 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2506, line: 24, baseType: !2507)
!2506 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2507 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2506, line: 22, size: 32, elements: !2508)
!2508 = !{!2509}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2507, file: !2506, line: 23, baseType: !2510, size: 32)
!2510 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2506, line: 20, baseType: !489)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2497, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2486, file: !38, line: 304, baseType: !579, size: 64, offset: 896)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2486, file: !38, line: 305, baseType: !374, size: 64, offset: 960)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2486, file: !38, line: 306, baseType: !2515, size: 576, offset: 1024)
!2515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2516)
!2516 = !{!2517, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2515, file: !38, line: 206, baseType: !2518, size: 64)
!2518 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !581)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2515, file: !38, line: 207, baseType: !2518, size: 64, offset: 64)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2515, file: !38, line: 208, baseType: !2518, size: 64, offset: 128)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2515, file: !38, line: 209, baseType: !2518, size: 64, offset: 192)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2515, file: !38, line: 210, baseType: !2518, size: 64, offset: 256)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2515, file: !38, line: 211, baseType: !2518, size: 64, offset: 320)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2515, file: !38, line: 212, baseType: !2518, size: 64, offset: 384)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2515, file: !38, line: 213, baseType: !587, size: 64, offset: 448)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2515, file: !38, line: 214, baseType: !587, size: 64, offset: 512)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2479, file: !38, line: 324, baseType: !2528, size: 64, offset: 64)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!2485, !647, !250}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2479, file: !38, line: 325, baseType: !2532, size: 64, offset: 128)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{null, !2485}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2479, file: !38, line: 326, baseType: !2482, size: 64, offset: 192)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2479, file: !38, line: 327, baseType: !2482, size: 64, offset: 256)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2479, file: !38, line: 328, baseType: !2482, size: 64, offset: 320)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2479, file: !38, line: 329, baseType: !733, size: 64, offset: 384)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2479, file: !38, line: 332, baseType: !2540, size: 64, offset: 448)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!2543, !477}
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2479, file: !38, line: 333, baseType: !2545, size: 64, offset: 512)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!250, !477, !2548}
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2479, file: !38, line: 335, baseType: !2550, size: 64, offset: 576)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!250, !477, !2543}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2479, file: !38, line: 337, baseType: !2554, size: 64, offset: 640)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{!250, !647, !2557}
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !648, file: !44, line: 1425, baseType: !2559, size: 64, offset: 512)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2561)
!2561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2562)
!2562 = !{!2563, !2567, !2568, !2572, !2573, !2574, !2589, !2612, !2616, !2617, !2640}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2561, file: !38, line: 429, baseType: !2564, size: 64)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{!250, !647, !250, !250, !597}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2561, file: !38, line: 430, baseType: !733, size: 64, offset: 64)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2561, file: !38, line: 431, baseType: !2569, size: 64, offset: 128)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = !DISubroutineType(types: !2571)
!2571 = !{!250, !647, !7}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2561, file: !38, line: 432, baseType: !2569, size: 64, offset: 192)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2561, file: !38, line: 433, baseType: !733, size: 64, offset: 256)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2561, file: !38, line: 434, baseType: !2575, size: 64, offset: 320)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = !DISubroutineType(types: !2577)
!2577 = !{!250, !647, !250, !2578}
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2580)
!2580 = !{!2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2579, file: !38, line: 416, baseType: !250, size: 32)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2579, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2579, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2579, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2579, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2579, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2579, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2579, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2561, file: !38, line: 435, baseType: !2590, size: 64, offset: 384)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DISubroutineType(types: !2592)
!2592 = !{!250, !647, !2497, !2593}
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2595)
!2595 = !{!2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2594, file: !38, line: 344, baseType: !250, size: 32)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2594, file: !38, line: 345, baseType: !469, size: 64, offset: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2594, file: !38, line: 346, baseType: !469, size: 64, offset: 128)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2594, file: !38, line: 347, baseType: !469, size: 64, offset: 192)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2594, file: !38, line: 348, baseType: !469, size: 64, offset: 256)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2594, file: !38, line: 349, baseType: !469, size: 64, offset: 320)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2594, file: !38, line: 350, baseType: !469, size: 64, offset: 384)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2594, file: !38, line: 351, baseType: !826, size: 64, offset: 448)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2594, file: !38, line: 353, baseType: !826, size: 64, offset: 512)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2594, file: !38, line: 354, baseType: !250, size: 32, offset: 576)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2594, file: !38, line: 355, baseType: !250, size: 32, offset: 608)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2594, file: !38, line: 356, baseType: !469, size: 64, offset: 640)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2594, file: !38, line: 357, baseType: !469, size: 64, offset: 704)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2594, file: !38, line: 358, baseType: !469, size: 64, offset: 768)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2594, file: !38, line: 359, baseType: !826, size: 64, offset: 832)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2594, file: !38, line: 360, baseType: !250, size: 32, offset: 896)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2561, file: !38, line: 436, baseType: !2613, size: 64, offset: 448)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!250, !647, !2557, !2593}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2561, file: !38, line: 438, baseType: !2590, size: 64, offset: 512)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2561, file: !38, line: 439, baseType: !2618, size: 64, offset: 576)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!250, !647, !2621}
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2623)
!2623 = !{!2624, !2625}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2622, file: !38, line: 410, baseType: !7, size: 32)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2622, file: !38, line: 411, baseType: !2626, size: 1344, offset: 64)
!2626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2627, size: 1344, elements: !326)
!2627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2628)
!2628 = !{!2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2639}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2627, file: !38, line: 396, baseType: !7, size: 32)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2627, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2627, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2627, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2627, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2627, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2627, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2627, file: !38, line: 404, baseType: !471, size: 64, offset: 256)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2627, file: !38, line: 405, baseType: !2638, size: 64, offset: 320)
!2638 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !271, line: 126, baseType: !469)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2627, file: !38, line: 406, baseType: !2638, size: 64, offset: 384)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2561, file: !38, line: 440, baseType: !2569, size: 64, offset: 640)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !648, file: !44, line: 1426, baseType: !2642, size: 64, offset: 576)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2644)
!2644 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !648, file: !44, line: 1427, baseType: !374, size: 64, offset: 640)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !648, file: !44, line: 1428, baseType: !374, size: 64, offset: 704)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !648, file: !44, line: 1429, baseType: !374, size: 64, offset: 768)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !648, file: !44, line: 1430, baseType: !432, size: 64, offset: 832)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !648, file: !44, line: 1431, baseType: !816, size: 256, offset: 896)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !648, file: !44, line: 1432, baseType: !250, size: 32, offset: 1152)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !648, file: !44, line: 1433, baseType: !796, size: 32, offset: 1184)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !648, file: !44, line: 1437, baseType: !2653, size: 64, offset: 1216)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2656)
!2656 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !648, file: !44, line: 1449, baseType: !2658, size: 64, offset: 1280)
!2658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !448, line: 34, size: 64, elements: !2659)
!2659 = !{!2660}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2658, file: !448, line: 35, baseType: !451, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !648, file: !44, line: 1450, baseType: !270, size: 128, offset: 1344)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !648, file: !44, line: 1451, baseType: !2663, size: 64, offset: 1472)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !648, file: !44, line: 1452, baseType: !1971, size: 64, offset: 1536)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !648, file: !44, line: 1453, baseType: !2667, size: 64, offset: 1600)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !648, file: !44, line: 1454, baseType: !687, size: 128, offset: 1664)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !648, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !648, file: !44, line: 1456, baseType: !2672, size: 2432, offset: 1856)
!2672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2673)
!2673 = !{!2674, !2675, !2676, !2678, !2710}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2672, file: !38, line: 519, baseType: !7, size: 32)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2672, file: !38, line: 520, baseType: !816, size: 256, offset: 64)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2672, file: !38, line: 521, baseType: !2677, size: 192, offset: 320)
!2677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !477, size: 192, elements: !326)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2672, file: !38, line: 522, baseType: !2679, size: 1728, offset: 512)
!2679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2680, size: 1728, elements: !326)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2681)
!2681 = !{!2682, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2680, file: !38, line: 223, baseType: !2683, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2685)
!2685 = !{!2686, !2687, !2700, !2701}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2684, file: !38, line: 444, baseType: !250, size: 32)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2684, file: !38, line: 445, baseType: !2688, size: 64, offset: 64)
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2690)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2691)
!2691 = !{!2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2690, file: !38, line: 311, baseType: !733, size: 64)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2690, file: !38, line: 312, baseType: !733, size: 64, offset: 64)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2690, file: !38, line: 313, baseType: !733, size: 64, offset: 128)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2690, file: !38, line: 314, baseType: !733, size: 64, offset: 192)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2690, file: !38, line: 315, baseType: !2482, size: 64, offset: 256)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2690, file: !38, line: 316, baseType: !2482, size: 64, offset: 320)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2690, file: !38, line: 317, baseType: !2482, size: 64, offset: 384)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2690, file: !38, line: 318, baseType: !2554, size: 64, offset: 448)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2684, file: !38, line: 446, baseType: !243, size: 64, offset: 128)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2684, file: !38, line: 447, baseType: !2683, size: 64, offset: 192)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2680, file: !38, line: 224, baseType: !250, size: 32, offset: 64)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2680, file: !38, line: 226, baseType: !270, size: 128, offset: 128)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2680, file: !38, line: 227, baseType: !374, size: 64, offset: 256)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2680, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2680, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2680, file: !38, line: 230, baseType: !2518, size: 64, offset: 384)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2680, file: !38, line: 231, baseType: !2518, size: 64, offset: 448)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2680, file: !38, line: 232, baseType: !195, size: 64, offset: 512)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2672, file: !38, line: 523, baseType: !2711, size: 192, offset: 2240)
!2711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2688, size: 192, elements: !326)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !648, file: !44, line: 1458, baseType: !2713, size: 2112, offset: 4288)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2714)
!2714 = !{!2715, !2716, !2717}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2713, file: !44, line: 1411, baseType: !250, size: 32)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2713, file: !44, line: 1412, baseType: !1529, size: 128, offset: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2713, file: !44, line: 1413, baseType: !2718, size: 1920, offset: 192)
!2718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2719, size: 1920, elements: !326)
!2719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2720, line: 12, size: 640, elements: !2721)
!2720 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2721 = !{!2722, !2730, !2732, !2737, !2738}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2719, file: !2720, line: 13, baseType: !2723, size: 320)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2724, line: 17, size: 320, elements: !2725)
!2724 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2725 = !{!2726, !2727, !2728, !2729}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2723, file: !2724, line: 18, baseType: !250, size: 32)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2723, file: !2724, line: 19, baseType: !250, size: 32, offset: 32)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2723, file: !2724, line: 20, baseType: !1529, size: 128, offset: 64)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2723, file: !2724, line: 22, baseType: !415, size: 128, align: 64, offset: 192)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2719, file: !2720, line: 14, baseType: !2731, size: 64, offset: 320)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2719, file: !2720, line: 15, baseType: !2733, size: 64, offset: 384)
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2734, line: 16, size: 64, elements: !2735)
!2734 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2735 = !{!2736}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2733, file: !2734, line: 17, baseType: !1264, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2719, file: !2720, line: 16, baseType: !1529, size: 128, offset: 448)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2719, file: !2720, line: 17, baseType: !796, size: 32, offset: 576)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !648, file: !44, line: 1465, baseType: !195, size: 64, offset: 6400)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !648, file: !44, line: 1468, baseType: !465, size: 32, offset: 6464)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !648, file: !44, line: 1470, baseType: !587, size: 64, offset: 6528)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !648, file: !44, line: 1471, baseType: !587, size: 64, offset: 6592)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !648, file: !44, line: 1473, baseType: !201, size: 32, offset: 6656)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !648, file: !44, line: 1474, baseType: !2745, size: 64, offset: 6720)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !648, file: !44, line: 1477, baseType: !2748, size: 256, offset: 6784)
!2748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 256, elements: !2278)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !648, file: !44, line: 1478, baseType: !2750, size: 128, offset: 7040)
!2750 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2751, line: 18, baseType: !2752)
!2751 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2752 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2751, line: 16, size: 128, elements: !2753)
!2753 = !{!2754}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2752, file: !2751, line: 17, baseType: !2755, size: 128)
!2755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1401, size: 128, elements: !1783)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !648, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !648, file: !44, line: 1481, baseType: !2758, size: 32, offset: 7200)
!2758 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !271, line: 150, baseType: !7)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !648, file: !44, line: 1487, baseType: !1221, size: 192, offset: 7232)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !648, file: !44, line: 1493, baseType: !241, size: 64, offset: 7424)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !648, file: !44, line: 1495, baseType: !2762, size: 64, offset: 7488)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2764)
!2764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !430, line: 135, size: 1024, align: 512, elements: !2765)
!2765 = !{!2766, !2770, !2771, !2778, !2784, !2788, !2792, !2796, !2797, !2801, !2805, !2810, !2814}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2764, file: !430, line: 136, baseType: !2767, size: 64)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{!250, !432, !7}
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2764, file: !430, line: 137, baseType: !2767, size: 64, offset: 64)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2764, file: !430, line: 138, baseType: !2772, size: 64, offset: 128)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{!250, !2775, !2777}
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !433)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2764, file: !430, line: 139, baseType: !2779, size: 64, offset: 192)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!250, !2775, !7, !241, !2782}
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !456)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2764, file: !430, line: 141, baseType: !2785, size: 64, offset: 256)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{!250, !2775}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2764, file: !430, line: 142, baseType: !2789, size: 64, offset: 320)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{!250, !432}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2764, file: !430, line: 143, baseType: !2793, size: 64, offset: 384)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{null, !432}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2764, file: !430, line: 144, baseType: !2793, size: 64, offset: 448)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2764, file: !430, line: 145, baseType: !2798, size: 64, offset: 512)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{null, !432, !477}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2764, file: !430, line: 146, baseType: !2802, size: 64, offset: 576)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!325, !432, !325, !250}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2764, file: !430, line: 147, baseType: !2806, size: 64, offset: 640)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{!428, !2809}
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2764, file: !430, line: 148, baseType: !2811, size: 64, offset: 704)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!250, !597, !538}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2764, file: !430, line: 149, baseType: !2815, size: 64, offset: 768)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{!432, !432, !2818}
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !478)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !648, file: !44, line: 1500, baseType: !250, size: 32, offset: 7552)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !648, file: !44, line: 1502, baseType: !2822, size: 448, offset: 7616)
!2822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2466, line: 60, size: 448, elements: !2823)
!2823 = !{!2824, !2829, !2830, !2831, !2832, !2833, !2834}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2822, file: !2466, line: 61, baseType: !2825, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DISubroutineType(types: !2827)
!2827 = !{!374, !2828, !2464}
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2822, file: !2466, line: 63, baseType: !2825, size: 64, offset: 64)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2822, file: !2466, line: 66, baseType: !360, size: 64, offset: 128)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2822, file: !2466, line: 67, baseType: !250, size: 32, offset: 192)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2822, file: !2466, line: 68, baseType: !7, size: 32, offset: 224)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2822, file: !2466, line: 71, baseType: !270, size: 128, offset: 256)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2822, file: !2466, line: 77, baseType: !2835, size: 64, offset: 384)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !648, file: !44, line: 1505, baseType: !820, size: 64, offset: 8064)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !648, file: !44, line: 1508, baseType: !820, size: 64, offset: 8128)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !648, file: !44, line: 1511, baseType: !250, size: 32, offset: 8192)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !648, file: !44, line: 1514, baseType: !957, size: 32, offset: 8224)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !648, file: !44, line: 1517, baseType: !2841, size: 64, offset: 8256)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2006, line: 18, flags: DIFlagFwdDecl)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !648, file: !44, line: 1518, baseType: !683, size: 64, offset: 8320)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !648, file: !44, line: 1525, baseType: !1761, size: 64, offset: 8384)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !648, file: !44, line: 1532, baseType: !2846, size: 64, offset: 8448)
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2847, line: 52, size: 64, elements: !2848)
!2847 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2848 = !{!2849}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2846, file: !2847, line: 53, baseType: !2850, size: 64)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2847, line: 40, size: 256, elements: !2852)
!2852 = !{!2853, !2854, !2859}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2851, file: !2847, line: 42, baseType: !284)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2851, file: !2847, line: 44, baseType: !2855, size: 192)
!2855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2847, line: 28, size: 192, elements: !2856)
!2856 = !{!2857, !2858}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2855, file: !2847, line: 29, baseType: !270, size: 128)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2855, file: !2847, line: 31, baseType: !360, size: 64, offset: 128)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2851, file: !2847, line: 49, baseType: !360, size: 64, offset: 192)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !648, file: !44, line: 1533, baseType: !2846, size: 64, offset: 8512)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !648, file: !44, line: 1534, baseType: !415, size: 128, align: 64, offset: 8576)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !648, file: !44, line: 1535, baseType: !2005, size: 256, offset: 8704)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !648, file: !44, line: 1537, baseType: !1221, size: 192, offset: 8960)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !648, file: !44, line: 1542, baseType: !250, size: 32, offset: 9152)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !648, file: !44, line: 1545, baseType: !284, offset: 9184)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !648, file: !44, line: 1546, baseType: !270, size: 128, offset: 9216)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !648, file: !44, line: 1548, baseType: !284, offset: 9344)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !648, file: !44, line: 1549, baseType: !270, size: 128, offset: 9344)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !478, file: !44, line: 624, baseType: !782, size: 64, offset: 256)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !478, file: !44, line: 631, baseType: !374, size: 64, offset: 320)
!2871 = !DIDerivedType(tag: DW_TAG_member, scope: !478, file: !44, line: 639, baseType: !2872, size: 32, offset: 384)
!2872 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !478, file: !44, line: 639, size: 32, elements: !2873)
!2873 = !{!2874, !2876}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2872, file: !44, line: 640, baseType: !2875, size: 32)
!2875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2872, file: !44, line: 641, baseType: !7, size: 32)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !478, file: !44, line: 643, baseType: !561, size: 32, offset: 416)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !478, file: !44, line: 644, baseType: !579, size: 64, offset: 448)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !478, file: !44, line: 645, baseType: !583, size: 128, offset: 512)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !478, file: !44, line: 646, baseType: !583, size: 128, offset: 640)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !478, file: !44, line: 647, baseType: !583, size: 128, offset: 768)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !478, file: !44, line: 648, baseType: !284, offset: 896)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !478, file: !44, line: 649, baseType: !198, size: 16, offset: 896)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !478, file: !44, line: 650, baseType: !1400, size: 8, offset: 912)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !478, file: !44, line: 651, baseType: !1400, size: 8, offset: 920)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !478, file: !44, line: 652, baseType: !2638, size: 64, offset: 960)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !478, file: !44, line: 659, baseType: !374, size: 64, offset: 1024)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !478, file: !44, line: 660, baseType: !816, size: 256, offset: 1088)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !478, file: !44, line: 662, baseType: !374, size: 64, offset: 1344)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !478, file: !44, line: 663, baseType: !374, size: 64, offset: 1408)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !478, file: !44, line: 665, baseType: !687, size: 128, offset: 1472)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !478, file: !44, line: 666, baseType: !270, size: 128, offset: 1600)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !478, file: !44, line: 675, baseType: !270, size: 128, offset: 1728)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !478, file: !44, line: 676, baseType: !270, size: 128, offset: 1856)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !478, file: !44, line: 677, baseType: !270, size: 128, offset: 1984)
!2896 = !DIDerivedType(tag: DW_TAG_member, scope: !478, file: !44, line: 678, baseType: !2897, size: 128, offset: 2112)
!2897 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !478, file: !44, line: 678, size: 128, elements: !2898)
!2898 = !{!2899, !2900}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2897, file: !44, line: 679, baseType: !683, size: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2897, file: !44, line: 680, baseType: !415, size: 128, align: 64)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !478, file: !44, line: 682, baseType: !822, size: 64, offset: 2240)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !478, file: !44, line: 683, baseType: !822, size: 64, offset: 2304)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !478, file: !44, line: 684, baseType: !796, size: 32, offset: 2368)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !478, file: !44, line: 685, baseType: !796, size: 32, offset: 2400)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !478, file: !44, line: 686, baseType: !796, size: 32, offset: 2432)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !478, file: !44, line: 688, baseType: !796, size: 32, offset: 2464)
!2907 = !DIDerivedType(tag: DW_TAG_member, scope: !478, file: !44, line: 690, baseType: !2908, size: 64, offset: 2496)
!2908 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !478, file: !44, line: 690, size: 64, elements: !2909)
!2909 = !{!2910, !3132}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2908, file: !44, line: 691, baseType: !2911, size: 64)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2913)
!2913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2914)
!2914 = !{!2915, !2916, !2920, !2925, !2929, !2930, !2931, !2935, !2948, !2949, !2956, !2960, !2961, !2965, !2966, !2970, !2975, !2976, !2980, !2984, !3092, !3096, !3097, !3101, !3102, !3106, !3110, !3115, !3119, !3123, !3127, !3131}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2913, file: !44, line: 1823, baseType: !243, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2913, file: !44, line: 1824, baseType: !2917, size: 64, offset: 64)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!579, !402, !579, !250}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2913, file: !44, line: 1825, baseType: !2921, size: 64, offset: 128)
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = !DISubroutineType(types: !2923)
!2923 = !{!356, !402, !325, !371, !2924}
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2913, file: !44, line: 1826, baseType: !2926, size: 64, offset: 192)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{!356, !402, !241, !371, !2924}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2913, file: !44, line: 1827, baseType: !893, size: 64, offset: 256)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2913, file: !44, line: 1828, baseType: !893, size: 64, offset: 320)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2913, file: !44, line: 1829, baseType: !2932, size: 64, offset: 384)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{!250, !896, !538}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2913, file: !44, line: 1830, baseType: !2936, size: 64, offset: 448)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{!250, !402, !2939}
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2941)
!2941 = !{!2942, !2947}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2940, file: !44, line: 1777, baseType: !2943, size: 64)
!2943 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2944)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{!250, !2939, !241, !250, !579, !469, !7}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2940, file: !44, line: 1778, baseType: !579, size: 64, offset: 64)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2913, file: !44, line: 1831, baseType: !2936, size: 64, offset: 512)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2913, file: !44, line: 1832, baseType: !2950, size: 64, offset: 576)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!2953, !402, !2954}
!2953 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !200, line: 52, baseType: !7)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !667, line: 27, flags: DIFlagFwdDecl)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2913, file: !44, line: 1833, baseType: !2957, size: 64, offset: 640)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{!360, !402, !7, !374}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2913, file: !44, line: 1834, baseType: !2957, size: 64, offset: 704)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2913, file: !44, line: 1835, baseType: !2962, size: 64, offset: 768)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!250, !402, !1029}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2913, file: !44, line: 1836, baseType: !374, size: 64, offset: 832)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2913, file: !44, line: 1837, baseType: !2967, size: 64, offset: 896)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!250, !477, !402}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2913, file: !44, line: 1838, baseType: !2971, size: 64, offset: 960)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!250, !402, !2974}
!2974 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !195)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2913, file: !44, line: 1839, baseType: !2967, size: 64, offset: 1024)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2913, file: !44, line: 1840, baseType: !2977, size: 64, offset: 1088)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!250, !402, !579, !579, !250}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2913, file: !44, line: 1841, baseType: !2981, size: 64, offset: 1152)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!250, !250, !402, !250}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2913, file: !44, line: 1842, baseType: !2985, size: 64, offset: 1216)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{!250, !402, !250, !2988}
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2990)
!2990 = !{!2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3022, !3023, !3024, !3037, !3068}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2989, file: !44, line: 1063, baseType: !2988, size: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2989, file: !44, line: 1064, baseType: !270, size: 128, offset: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2989, file: !44, line: 1065, baseType: !687, size: 128, offset: 192)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2989, file: !44, line: 1066, baseType: !270, size: 128, offset: 320)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2989, file: !44, line: 1069, baseType: !270, size: 128, offset: 448)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2989, file: !44, line: 1072, baseType: !2974, size: 64, offset: 576)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2989, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2989, file: !44, line: 1074, baseType: !475, size: 8, offset: 672)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2989, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2989, file: !44, line: 1076, baseType: !250, size: 32, offset: 736)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2989, file: !44, line: 1077, baseType: !1529, size: 128, offset: 768)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2989, file: !44, line: 1078, baseType: !402, size: 64, offset: 896)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2989, file: !44, line: 1079, baseType: !579, size: 64, offset: 960)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2989, file: !44, line: 1080, baseType: !579, size: 64, offset: 1024)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2989, file: !44, line: 1082, baseType: !3006, size: 64, offset: 1088)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !3008)
!3008 = !{!3009, !3017, !3018, !3019, !3020, !3021}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3007, file: !44, line: 1315, baseType: !3010)
!3010 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3011, line: 20, baseType: !3012)
!3011 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3012 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3011, line: 11, elements: !3013)
!3013 = !{!3014}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3012, file: !3011, line: 12, baseType: !3015)
!3015 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !296, line: 33, baseType: !3016)
!3016 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !296, line: 31, elements: !298)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3007, file: !44, line: 1316, baseType: !250, size: 32)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3007, file: !44, line: 1317, baseType: !250, size: 32, offset: 32)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3007, file: !44, line: 1318, baseType: !3006, size: 64, offset: 64)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3007, file: !44, line: 1319, baseType: !402, size: 64, offset: 128)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3007, file: !44, line: 1320, baseType: !415, size: 128, align: 64, offset: 192)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2989, file: !44, line: 1084, baseType: !374, size: 64, offset: 1152)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2989, file: !44, line: 1085, baseType: !374, size: 64, offset: 1216)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2989, file: !44, line: 1087, baseType: !3025, size: 64, offset: 1280)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3027)
!3027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !3028)
!3028 = !{!3029, !3033}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3027, file: !44, line: 1012, baseType: !3030, size: 64)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{null, !2988, !2988}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3027, file: !44, line: 1013, baseType: !3034, size: 64, offset: 64)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{null, !2988}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2989, file: !44, line: 1088, baseType: !3038, size: 64, offset: 1344)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3040)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !3041)
!3041 = !{!3042, !3046, !3050, !3051, !3055, !3059, !3063, !3067}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3040, file: !44, line: 1017, baseType: !3043, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{!2974, !2974}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3040, file: !44, line: 1018, baseType: !3047, size: 64, offset: 64)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{null, !2974}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3040, file: !44, line: 1019, baseType: !3034, size: 64, offset: 128)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3040, file: !44, line: 1020, baseType: !3052, size: 64, offset: 192)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!250, !2988, !250}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3040, file: !44, line: 1021, baseType: !3056, size: 64, offset: 256)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{!538, !2988}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3040, file: !44, line: 1022, baseType: !3060, size: 64, offset: 320)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!250, !2988, !250, !274}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3040, file: !44, line: 1023, baseType: !3064, size: 64, offset: 384)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{null, !2988, !870}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3040, file: !44, line: 1024, baseType: !3056, size: 64, offset: 448)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2989, file: !44, line: 1097, baseType: !3069, size: 256, offset: 1408)
!3069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2989, file: !44, line: 1089, size: 256, elements: !3070)
!3070 = !{!3071, !3080, !3086}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3069, file: !44, line: 1090, baseType: !3072, size: 256)
!3072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3073, line: 10, size: 256, elements: !3074)
!3073 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3074 = !{!3075, !3076, !3079}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3072, file: !3073, line: 11, baseType: !465, size: 32)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3072, file: !3073, line: 12, baseType: !3077, size: 64, offset: 64)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3073, line: 5, flags: DIFlagFwdDecl)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3072, file: !3073, line: 13, baseType: !270, size: 128, offset: 128)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3069, file: !44, line: 1091, baseType: !3081, size: 64)
!3081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3073, line: 17, size: 64, elements: !3082)
!3082 = !{!3083}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3081, file: !3073, line: 18, baseType: !3084, size: 64)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3073, line: 16, flags: DIFlagFwdDecl)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3069, file: !44, line: 1096, baseType: !3087, size: 192)
!3087 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3069, file: !44, line: 1092, size: 192, elements: !3088)
!3088 = !{!3089, !3090, !3091}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3087, file: !44, line: 1093, baseType: !270, size: 128)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3087, file: !44, line: 1094, baseType: !250, size: 32, offset: 128)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3087, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2913, file: !44, line: 1843, baseType: !3093, size: 64, offset: 1280)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!356, !402, !769, !250, !371, !2924, !250}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2913, file: !44, line: 1844, baseType: !1149, size: 64, offset: 1344)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2913, file: !44, line: 1845, baseType: !3098, size: 64, offset: 1408)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!250, !250}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2913, file: !44, line: 1846, baseType: !2985, size: 64, offset: 1472)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2913, file: !44, line: 1847, baseType: !3103, size: 64, offset: 1536)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{!356, !2146, !402, !2924, !371, !7}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2913, file: !44, line: 1848, baseType: !3107, size: 64, offset: 1600)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!356, !402, !2924, !2146, !371, !7}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2913, file: !44, line: 1849, baseType: !3111, size: 64, offset: 1664)
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3112, size: 64)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{!250, !402, !360, !3114, !870}
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2913, file: !44, line: 1850, baseType: !3116, size: 64, offset: 1728)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!360, !402, !250, !579, !579}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2913, file: !44, line: 1852, baseType: !3120, size: 64, offset: 1792)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{null, !759, !402}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2913, file: !44, line: 1856, baseType: !3124, size: 64, offset: 1856)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!356, !402, !579, !402, !579, !371, !7}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2913, file: !44, line: 1858, baseType: !3128, size: 64, offset: 1920)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{!579, !402, !579, !402, !579, !579, !7}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2913, file: !44, line: 1861, baseType: !2977, size: 64, offset: 1984)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2908, file: !44, line: 692, baseType: !712, size: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !478, file: !44, line: 694, baseType: !3134, size: 64, offset: 2560)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3136)
!3136 = !{!3137, !3138, !3139, !3140}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3135, file: !44, line: 1101, baseType: !284)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3135, file: !44, line: 1102, baseType: !270, size: 128)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3135, file: !44, line: 1103, baseType: !270, size: 128, offset: 128)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3135, file: !44, line: 1104, baseType: !270, size: 128, offset: 256)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !478, file: !44, line: 695, baseType: !783, size: 1216, align: 64, offset: 2624)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !478, file: !44, line: 696, baseType: !270, size: 128, offset: 3840)
!3143 = !DIDerivedType(tag: DW_TAG_member, scope: !478, file: !44, line: 697, baseType: !3144, size: 64, offset: 3968)
!3144 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !478, file: !44, line: 697, size: 64, elements: !3145)
!3145 = !{!3146, !3147, !3148, !3151, !3152}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3144, file: !44, line: 698, baseType: !2146, size: 64)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3144, file: !44, line: 699, baseType: !2663, size: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3144, file: !44, line: 700, baseType: !3149, size: 64)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3144, file: !44, line: 701, baseType: !325, size: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3144, file: !44, line: 702, baseType: !7, size: 32)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !478, file: !44, line: 705, baseType: !201, size: 32, offset: 4032)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !478, file: !44, line: 708, baseType: !201, size: 32, offset: 4064)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !478, file: !44, line: 709, baseType: !2745, size: 64, offset: 4096)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !478, file: !44, line: 720, baseType: !195, size: 64, offset: 4160)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !433, file: !430, line: 98, baseType: !3158, size: 256, offset: 448)
!3158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !475, size: 256, elements: !2278)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !433, file: !430, line: 101, baseType: !3160, size: 32, offset: 704)
!3160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3161, line: 25, size: 32, elements: !3162)
!3161 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3162 = !{!3163}
!3163 = !DIDerivedType(tag: DW_TAG_member, scope: !3160, file: !3161, line: 26, baseType: !3164, size: 32)
!3164 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3160, file: !3161, line: 26, size: 32, elements: !3165)
!3165 = !{!3166}
!3166 = !DIDerivedType(tag: DW_TAG_member, scope: !3164, file: !3161, line: 30, baseType: !3167, size: 32)
!3167 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3164, file: !3161, line: 30, size: 32, elements: !3168)
!3168 = !{!3169, !3170}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3167, file: !3161, line: 31, baseType: !284)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3167, file: !3161, line: 32, baseType: !250, size: 32)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !433, file: !430, line: 102, baseType: !2762, size: 64, offset: 768)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !433, file: !430, line: 103, baseType: !647, size: 64, offset: 832)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !433, file: !430, line: 104, baseType: !374, size: 64, offset: 896)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !433, file: !430, line: 105, baseType: !195, size: 64, offset: 960)
!3175 = !DIDerivedType(tag: DW_TAG_member, scope: !433, file: !430, line: 107, baseType: !3176, size: 128, offset: 1024)
!3176 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !433, file: !430, line: 107, size: 128, elements: !3177)
!3177 = !{!3178, !3179}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3176, file: !430, line: 108, baseType: !270, size: 128)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3176, file: !430, line: 109, baseType: !3180, size: 64)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !433, file: !430, line: 111, baseType: !270, size: 128, offset: 1152)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !433, file: !430, line: 112, baseType: !270, size: 128, offset: 1280)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !433, file: !430, line: 120, baseType: !3184, size: 128, offset: 1408)
!3184 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !433, file: !430, line: 116, size: 128, elements: !3185)
!3185 = !{!3186, !3187, !3188}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3184, file: !430, line: 117, baseType: !687, size: 128)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3184, file: !430, line: 118, baseType: !447, size: 128)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3184, file: !430, line: 119, baseType: !415, size: 128, align: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !403, file: !44, line: 922, baseType: !477, size: 64, offset: 256)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !403, file: !44, line: 923, baseType: !2911, size: 64, offset: 320)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !403, file: !44, line: 929, baseType: !284, offset: 384)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !403, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !403, file: !44, line: 931, baseType: !820, size: 64, offset: 448)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !403, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !403, file: !44, line: 933, baseType: !2758, size: 32, offset: 544)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !403, file: !44, line: 934, baseType: !1221, size: 192, offset: 576)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !403, file: !44, line: 935, baseType: !579, size: 64, offset: 768)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !403, file: !44, line: 936, baseType: !3199, size: 192, offset: 832)
!3199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3200)
!3200 = !{!3201, !3202, !3203, !3204, !3205, !3206}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3199, file: !44, line: 886, baseType: !3010)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3199, file: !44, line: 887, baseType: !1519, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3199, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3199, file: !44, line: 889, baseType: !483, size: 32, offset: 96)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3199, file: !44, line: 889, baseType: !483, size: 32, offset: 128)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3199, file: !44, line: 890, baseType: !250, size: 32, offset: 160)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !403, file: !44, line: 937, baseType: !1595, size: 64, offset: 1024)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !403, file: !44, line: 938, baseType: !3209, size: 256, offset: 1088)
!3209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3210)
!3210 = !{!3211, !3212, !3213, !3214, !3215, !3216}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3209, file: !44, line: 897, baseType: !374, size: 64)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3209, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3209, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3209, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3209, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3209, file: !44, line: 904, baseType: !579, size: 64, offset: 192)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !403, file: !44, line: 940, baseType: !469, size: 64, offset: 1344)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !403, file: !44, line: 945, baseType: !195, size: 64, offset: 1408)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !403, file: !44, line: 949, baseType: !270, size: 128, offset: 1472)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !403, file: !44, line: 950, baseType: !270, size: 128, offset: 1600)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !403, file: !44, line: 952, baseType: !782, size: 64, offset: 1728)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !403, file: !44, line: 953, baseType: !957, size: 32, offset: 1792)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !403, file: !44, line: 954, baseType: !957, size: 32, offset: 1824)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !393, file: !350, line: 174, baseType: !399, size: 64, offset: 320)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !393, file: !350, line: 176, baseType: !3226, size: 64, offset: 384)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!250, !402, !277, !392, !1029}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !381, file: !350, line: 90, baseType: !376, size: 64, offset: 192)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !381, file: !350, line: 91, baseType: !3231, size: 64, offset: 256)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !340, file: !266, line: 143, baseType: !3233, size: 64, offset: 256)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!3236, !277}
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3238)
!3238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3239)
!3239 = !{!3240, !3241, !3245, !3249, !3255, !3259}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3238, file: !61, line: 40, baseType: !60, size: 32)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3238, file: !61, line: 41, baseType: !3242, size: 64, offset: 64)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{!538}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3238, file: !61, line: 42, baseType: !3246, size: 64, offset: 128)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!195}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3238, file: !61, line: 43, baseType: !3250, size: 64, offset: 192)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{!2175, !3253}
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3238, file: !61, line: 44, baseType: !3256, size: 64, offset: 256)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!2175}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3238, file: !61, line: 45, baseType: !516, size: 64, offset: 320)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !340, file: !266, line: 144, baseType: !3261, size: 64, offset: 320)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!2175, !277}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !340, file: !266, line: 145, baseType: !3265, size: 64, offset: 384)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{null, !277, !3268, !3269}
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !265, file: !266, line: 70, baseType: !3271, size: 64, offset: 384)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !667, line: 123, size: 1024, elements: !3273)
!3273 = !{!3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3402, !3403, !3404, !3405, !3406}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3272, file: !667, line: 124, baseType: !796, size: 32)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3272, file: !667, line: 125, baseType: !796, size: 32, offset: 32)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3272, file: !667, line: 135, baseType: !3271, size: 64, offset: 64)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3272, file: !667, line: 136, baseType: !241, size: 64, offset: 128)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3272, file: !667, line: 138, baseType: !809, size: 192, align: 64, offset: 192)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3272, file: !667, line: 140, baseType: !2175, size: 64, offset: 384)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3272, file: !667, line: 141, baseType: !7, size: 32, offset: 448)
!3281 = !DIDerivedType(tag: DW_TAG_member, scope: !3272, file: !667, line: 142, baseType: !3282, size: 256, offset: 512)
!3282 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3272, file: !667, line: 142, size: 256, elements: !3283)
!3283 = !{!3284, !3330, !3334}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3282, file: !667, line: 143, baseType: !3285, size: 192)
!3285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !667, line: 91, size: 192, elements: !3286)
!3286 = !{!3287, !3288, !3289}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3285, file: !667, line: 92, baseType: !374, size: 64)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3285, file: !667, line: 94, baseType: !805, size: 64, offset: 64)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3285, file: !667, line: 100, baseType: !3290, size: 64, offset: 128)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !667, line: 180, size: 704, elements: !3292)
!3292 = !{!3293, !3294, !3295, !3302, !3303, !3304, !3328, !3329}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3291, file: !667, line: 182, baseType: !3271, size: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3291, file: !667, line: 183, baseType: !7, size: 32, offset: 64)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3291, file: !667, line: 186, baseType: !3296, size: 192, offset: 128)
!3296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3297, line: 19, size: 192, elements: !3298)
!3297 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3298 = !{!3299, !3300, !3301}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3296, file: !3297, line: 20, baseType: !787, size: 128)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3296, file: !3297, line: 21, baseType: !7, size: 32, offset: 128)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3296, file: !3297, line: 22, baseType: !7, size: 32, offset: 160)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3291, file: !667, line: 187, baseType: !465, size: 32, offset: 320)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3291, file: !667, line: 188, baseType: !465, size: 32, offset: 352)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3291, file: !667, line: 189, baseType: !3305, size: 64, offset: 384)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !667, line: 168, size: 320, elements: !3307)
!3307 = !{!3308, !3312, !3316, !3320, !3324}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3306, file: !667, line: 169, baseType: !3309, size: 64)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{!250, !759, !3290}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3306, file: !667, line: 171, baseType: !3313, size: 64, offset: 64)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{!250, !3271, !241, !366}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3306, file: !667, line: 173, baseType: !3317, size: 64, offset: 128)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = !DISubroutineType(types: !3319)
!3319 = !{!250, !3271}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3306, file: !667, line: 174, baseType: !3321, size: 64, offset: 192)
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{!250, !3271, !3271, !241}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3306, file: !667, line: 176, baseType: !3325, size: 64, offset: 256)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{!250, !759, !3271, !3290}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3291, file: !667, line: 192, baseType: !270, size: 128, offset: 448)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3291, file: !667, line: 194, baseType: !1529, size: 128, offset: 576)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3282, file: !667, line: 144, baseType: !3331, size: 64)
!3331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !667, line: 103, size: 64, elements: !3332)
!3332 = !{!3333}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3331, file: !667, line: 104, baseType: !3271, size: 64)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3282, file: !667, line: 145, baseType: !3335, size: 256)
!3335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !667, line: 107, size: 256, elements: !3336)
!3336 = !{!3337, !3397, !3400, !3401}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3335, file: !667, line: 108, baseType: !3338, size: 64)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3340)
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !667, line: 217, size: 768, elements: !3341)
!3341 = !{!3342, !3362, !3366, !3370, !3374, !3378, !3382, !3386, !3387, !3388, !3389, !3393}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3340, file: !667, line: 222, baseType: !3343, size: 64)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!250, !3346}
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !667, line: 197, size: 1088, elements: !3348)
!3348 = !{!3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3347, file: !667, line: 199, baseType: !3271, size: 64)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3347, file: !667, line: 200, baseType: !402, size: 64, offset: 64)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3347, file: !667, line: 201, baseType: !759, size: 64, offset: 128)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3347, file: !667, line: 202, baseType: !195, size: 64, offset: 192)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3347, file: !667, line: 205, baseType: !1221, size: 192, offset: 256)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3347, file: !667, line: 206, baseType: !1221, size: 192, offset: 448)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3347, file: !667, line: 207, baseType: !250, size: 32, offset: 640)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3347, file: !667, line: 208, baseType: !270, size: 128, offset: 704)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3347, file: !667, line: 209, baseType: !325, size: 64, offset: 832)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3347, file: !667, line: 211, baseType: !371, size: 64, offset: 896)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3347, file: !667, line: 212, baseType: !538, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3347, file: !667, line: 213, baseType: !538, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3347, file: !667, line: 214, baseType: !1057, size: 64, offset: 1024)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3340, file: !667, line: 223, baseType: !3363, size: 64, offset: 64)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{null, !3346}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3340, file: !667, line: 236, baseType: !3367, size: 64, offset: 128)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = !DISubroutineType(types: !3369)
!3369 = !{!250, !759, !195}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3340, file: !667, line: 238, baseType: !3371, size: 64, offset: 192)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{!195, !759, !2924}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3340, file: !667, line: 239, baseType: !3375, size: 64, offset: 256)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{!195, !759, !195, !2924}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3340, file: !667, line: 240, baseType: !3379, size: 64, offset: 320)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{null, !759, !195}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3340, file: !667, line: 242, baseType: !3383, size: 64, offset: 384)
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3384, size: 64)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{!356, !3346, !325, !371, !579}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3340, file: !667, line: 252, baseType: !371, size: 64, offset: 448)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3340, file: !667, line: 259, baseType: !538, size: 8, offset: 512)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3340, file: !667, line: 260, baseType: !3383, size: 64, offset: 576)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3340, file: !667, line: 263, baseType: !3390, size: 64, offset: 640)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DISubroutineType(types: !3392)
!3392 = !{!2953, !3346, !2954}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3340, file: !667, line: 266, baseType: !3394, size: 64, offset: 704)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{!250, !3346, !1029}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3335, file: !667, line: 109, baseType: !3398, size: 64, offset: 64)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !667, line: 31, flags: DIFlagFwdDecl)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3335, file: !667, line: 110, baseType: !579, size: 64, offset: 128)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3335, file: !667, line: 111, baseType: !3271, size: 64, offset: 192)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3272, file: !667, line: 148, baseType: !195, size: 64, offset: 768)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3272, file: !667, line: 154, baseType: !469, size: 64, offset: 832)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3272, file: !667, line: 156, baseType: !198, size: 16, offset: 896)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3272, file: !667, line: 157, baseType: !366, size: 16, offset: 912)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3272, file: !667, line: 158, baseType: !3407, size: 64, offset: 960)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !667, line: 32, flags: DIFlagFwdDecl)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !265, file: !266, line: 71, baseType: !3410, size: 32, offset: 448)
!3410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3411, line: 19, size: 32, elements: !3412)
!3411 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3412 = !{!3413}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3410, file: !3411, line: 20, baseType: !1278, size: 32)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !265, file: !266, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !265, file: !266, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !265, file: !266, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !265, file: !266, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !265, file: !266, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !262, file: !73, line: 463, baseType: !261, size: 64, offset: 512)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !262, file: !73, line: 465, baseType: !3421, size: 64, offset: 576)
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3422 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !262, file: !73, line: 467, baseType: !241, size: 64, offset: 640)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !262, file: !73, line: 468, baseType: !3425, size: 64, offset: 704)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3427)
!3427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3428)
!3428 = !{!3429, !3430, !3431, !3435, !3440, !3444}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3427, file: !73, line: 88, baseType: !241, size: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3427, file: !73, line: 89, baseType: !378, size: 64, offset: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3427, file: !73, line: 90, baseType: !3432, size: 64, offset: 128)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{!250, !261, !320}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3427, file: !73, line: 91, baseType: !3436, size: 64, offset: 192)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = !DISubroutineType(types: !3438)
!3438 = !{!325, !261, !3439, !3268, !3269}
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3427, file: !73, line: 93, baseType: !3441, size: 64, offset: 256)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{null, !261}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3427, file: !73, line: 95, baseType: !3445, size: 64, offset: 320)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3447)
!3447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3448)
!3448 = !{!3449, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3447, file: !80, line: 279, baseType: !3450, size: 64)
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{!250, !261}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3447, file: !80, line: 280, baseType: !3441, size: 64, offset: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3447, file: !80, line: 281, baseType: !3450, size: 64, offset: 128)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3447, file: !80, line: 282, baseType: !3450, size: 64, offset: 192)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3447, file: !80, line: 283, baseType: !3450, size: 64, offset: 256)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3447, file: !80, line: 284, baseType: !3450, size: 64, offset: 320)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3447, file: !80, line: 285, baseType: !3450, size: 64, offset: 384)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3447, file: !80, line: 286, baseType: !3450, size: 64, offset: 448)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3447, file: !80, line: 287, baseType: !3450, size: 64, offset: 512)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3447, file: !80, line: 288, baseType: !3450, size: 64, offset: 576)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3447, file: !80, line: 289, baseType: !3450, size: 64, offset: 640)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3447, file: !80, line: 290, baseType: !3450, size: 64, offset: 704)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3447, file: !80, line: 291, baseType: !3450, size: 64, offset: 768)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3447, file: !80, line: 292, baseType: !3450, size: 64, offset: 832)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3447, file: !80, line: 293, baseType: !3450, size: 64, offset: 896)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3447, file: !80, line: 294, baseType: !3450, size: 64, offset: 960)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3447, file: !80, line: 295, baseType: !3450, size: 64, offset: 1024)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3447, file: !80, line: 296, baseType: !3450, size: 64, offset: 1088)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3447, file: !80, line: 297, baseType: !3450, size: 64, offset: 1152)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3447, file: !80, line: 298, baseType: !3450, size: 64, offset: 1216)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3447, file: !80, line: 299, baseType: !3450, size: 64, offset: 1280)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3447, file: !80, line: 300, baseType: !3450, size: 64, offset: 1344)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3447, file: !80, line: 301, baseType: !3450, size: 64, offset: 1408)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !262, file: !73, line: 470, baseType: !3476, size: 64, offset: 768)
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3478, line: 82, size: 1408, elements: !3479)
!3478 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3479 = !{!3480, !3481, !3482, !3483, !3484, !3485, !3486, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3561, !3564, !3565}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3477, file: !3478, line: 83, baseType: !241, size: 64)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3477, file: !3478, line: 84, baseType: !241, size: 64, offset: 64)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3477, file: !3478, line: 85, baseType: !261, size: 64, offset: 128)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3477, file: !3478, line: 86, baseType: !378, size: 64, offset: 192)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3477, file: !3478, line: 87, baseType: !378, size: 64, offset: 256)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3477, file: !3478, line: 88, baseType: !378, size: 64, offset: 320)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3477, file: !3478, line: 90, baseType: !3487, size: 64, offset: 384)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = !DISubroutineType(types: !3489)
!3489 = !{!250, !261, !3490}
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3492)
!3492 = !{!3493, !3494, !3495, !3496, !3497, !3498, !3499, !3512, !3525, !3526, !3527, !3528, !3529, !3537, !3538, !3539, !3540, !3541, !3542}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3491, file: !67, line: 96, baseType: !241, size: 64)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3491, file: !67, line: 97, baseType: !3476, size: 64, offset: 64)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3491, file: !67, line: 99, baseType: !243, size: 64, offset: 128)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3491, file: !67, line: 100, baseType: !241, size: 64, offset: 192)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3491, file: !67, line: 102, baseType: !538, size: 8, offset: 256)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3491, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3491, file: !67, line: 105, baseType: !3500, size: 64, offset: 320)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3502)
!3502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3503, line: 262, size: 1600, elements: !3504)
!3503 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3504 = !{!3505, !3506, !3507, !3511}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3502, file: !3503, line: 263, baseType: !2748, size: 256)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3502, file: !3503, line: 264, baseType: !2748, size: 256, offset: 256)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3502, file: !3503, line: 265, baseType: !3508, size: 1024, offset: 512)
!3508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 1024, elements: !3509)
!3509 = !{!3510}
!3510 = !DISubrange(count: 128)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3502, file: !3503, line: 266, baseType: !2175, size: 64, offset: 1536)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3491, file: !67, line: 106, baseType: !3513, size: 64, offset: 384)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3515)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3503, line: 210, size: 256, elements: !3516)
!3516 = !{!3517, !3521, !3523, !3524}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3515, file: !3503, line: 211, baseType: !3518, size: 72)
!3518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1401, size: 72, elements: !3519)
!3519 = !{!3520}
!3520 = !DISubrange(count: 9)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3515, file: !3503, line: 212, baseType: !3522, size: 64, offset: 128)
!3522 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3503, line: 14, baseType: !374)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3515, file: !3503, line: 213, baseType: !201, size: 32, offset: 192)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3515, file: !3503, line: 214, baseType: !201, size: 32, offset: 224)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3491, file: !67, line: 108, baseType: !3450, size: 64, offset: 448)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3491, file: !67, line: 109, baseType: !3441, size: 64, offset: 512)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3491, file: !67, line: 110, baseType: !3450, size: 64, offset: 576)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3491, file: !67, line: 111, baseType: !3441, size: 64, offset: 640)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3491, file: !67, line: 112, baseType: !3530, size: 64, offset: 704)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DISubroutineType(types: !3532)
!3532 = !{!250, !261, !3533}
!3533 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3534)
!3534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3535)
!3535 = !{!3536}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3534, file: !80, line: 51, baseType: !250, size: 32)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3491, file: !67, line: 113, baseType: !3450, size: 64, offset: 768)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3491, file: !67, line: 114, baseType: !378, size: 64, offset: 832)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3491, file: !67, line: 115, baseType: !378, size: 64, offset: 896)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3491, file: !67, line: 117, baseType: !3445, size: 64, offset: 960)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3491, file: !67, line: 118, baseType: !3441, size: 64, offset: 1024)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3491, file: !67, line: 120, baseType: !3543, size: 64, offset: 1088)
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3477, file: !3478, line: 91, baseType: !3432, size: 64, offset: 448)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3477, file: !3478, line: 92, baseType: !3450, size: 64, offset: 512)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3477, file: !3478, line: 93, baseType: !3441, size: 64, offset: 576)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3477, file: !3478, line: 94, baseType: !3450, size: 64, offset: 640)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3477, file: !3478, line: 95, baseType: !3441, size: 64, offset: 704)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3477, file: !3478, line: 97, baseType: !3450, size: 64, offset: 768)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3477, file: !3478, line: 98, baseType: !3450, size: 64, offset: 832)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3477, file: !3478, line: 100, baseType: !3530, size: 64, offset: 896)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3477, file: !3478, line: 101, baseType: !3450, size: 64, offset: 960)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3477, file: !3478, line: 103, baseType: !3450, size: 64, offset: 1024)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3477, file: !3478, line: 105, baseType: !3450, size: 64, offset: 1088)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3477, file: !3478, line: 107, baseType: !3445, size: 64, offset: 1152)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3477, file: !3478, line: 109, baseType: !3558, size: 64, offset: 1216)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3560)
!3560 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3478, line: 109, flags: DIFlagFwdDecl)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3477, file: !3478, line: 111, baseType: !3562, size: 64, offset: 1280)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3478, line: 111, flags: DIFlagFwdDecl)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3477, file: !3478, line: 112, baseType: !693, offset: 1344)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3477, file: !3478, line: 114, baseType: !538, size: 8, offset: 1344)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !262, file: !73, line: 471, baseType: !3490, size: 64, offset: 832)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !262, file: !73, line: 473, baseType: !195, size: 64, offset: 896)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !262, file: !73, line: 475, baseType: !195, size: 64, offset: 960)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !262, file: !73, line: 480, baseType: !1221, size: 192, offset: 1024)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !262, file: !73, line: 484, baseType: !3571, size: 576, offset: 1216)
!3571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3572)
!3572 = !{!3573, !3574, !3575, !3576, !3577, !3578}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3571, file: !73, line: 362, baseType: !270, size: 128)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3571, file: !73, line: 363, baseType: !270, size: 128, offset: 128)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3571, file: !73, line: 364, baseType: !270, size: 128, offset: 256)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3571, file: !73, line: 365, baseType: !270, size: 128, offset: 384)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3571, file: !73, line: 366, baseType: !538, size: 8, offset: 512)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3571, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !262, file: !73, line: 485, baseType: !3580, size: 2304, offset: 1792)
!3580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3581)
!3581 = !{!3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3677, !3681}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3580, file: !80, line: 566, baseType: !3533, size: 32)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3580, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3580, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3580, file: !80, line: 569, baseType: !538, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3580, file: !80, line: 570, baseType: !538, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3580, file: !80, line: 571, baseType: !538, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3580, file: !80, line: 572, baseType: !538, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3580, file: !80, line: 573, baseType: !538, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3580, file: !80, line: 574, baseType: !538, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3580, file: !80, line: 575, baseType: !538, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3580, file: !80, line: 576, baseType: !538, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3580, file: !80, line: 577, baseType: !465, size: 32, offset: 64)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3580, file: !80, line: 578, baseType: !284, offset: 96)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3580, file: !80, line: 580, baseType: !270, size: 128, offset: 128)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3580, file: !80, line: 581, baseType: !1550, size: 192, offset: 256)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3580, file: !80, line: 582, baseType: !3598, size: 64, offset: 448)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3600, line: 43, size: 1472, elements: !3601)
!3600 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3601 = !{!3602, !3603, !3604, !3605, !3606, !3609, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3599, file: !3600, line: 44, baseType: !241, size: 64)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3599, file: !3600, line: 45, baseType: !250, size: 32, offset: 64)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3599, file: !3600, line: 46, baseType: !270, size: 128, offset: 128)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3599, file: !3600, line: 47, baseType: !284, offset: 256)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3599, file: !3600, line: 48, baseType: !3607, size: 64, offset: 256)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3599, file: !3600, line: 49, baseType: !3610, size: 320, offset: 320)
!3610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3611, line: 11, size: 320, elements: !3612)
!3611 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3612 = !{!3613, !3614, !3615, !3620}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3610, file: !3611, line: 16, baseType: !687, size: 128)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3610, file: !3611, line: 17, baseType: !374, size: 64, offset: 128)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3610, file: !3611, line: 18, baseType: !3616, size: 64, offset: 192)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DISubroutineType(types: !3618)
!3618 = !{null, !3619}
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3610, file: !3611, line: 19, baseType: !465, size: 32, offset: 256)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3599, file: !3600, line: 50, baseType: !374, size: 64, offset: 640)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3599, file: !3600, line: 51, baseType: !1348, size: 64, offset: 704)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3599, file: !3600, line: 52, baseType: !1348, size: 64, offset: 768)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3599, file: !3600, line: 53, baseType: !1348, size: 64, offset: 832)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3599, file: !3600, line: 54, baseType: !1348, size: 64, offset: 896)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3599, file: !3600, line: 55, baseType: !1348, size: 64, offset: 960)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3599, file: !3600, line: 56, baseType: !374, size: 64, offset: 1024)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3599, file: !3600, line: 57, baseType: !374, size: 64, offset: 1088)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3599, file: !3600, line: 58, baseType: !374, size: 64, offset: 1152)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3599, file: !3600, line: 59, baseType: !374, size: 64, offset: 1216)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3599, file: !3600, line: 60, baseType: !374, size: 64, offset: 1280)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3599, file: !3600, line: 61, baseType: !261, size: 64, offset: 1344)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3599, file: !3600, line: 62, baseType: !538, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3599, file: !3600, line: 63, baseType: !538, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3580, file: !80, line: 583, baseType: !538, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3580, file: !80, line: 584, baseType: !538, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3580, file: !80, line: 585, baseType: !538, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3580, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3580, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3580, file: !80, line: 592, baseType: !1340, size: 512, offset: 576)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3580, file: !80, line: 593, baseType: !469, size: 64, offset: 1088)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3580, file: !80, line: 594, baseType: !2005, size: 256, offset: 1152)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3580, file: !80, line: 595, baseType: !1529, size: 128, offset: 1408)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3580, file: !80, line: 596, baseType: !3607, size: 64, offset: 1536)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3580, file: !80, line: 597, baseType: !796, size: 32, offset: 1600)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3580, file: !80, line: 598, baseType: !796, size: 32, offset: 1632)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3580, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3580, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3580, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3580, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3580, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3580, file: !80, line: 604, baseType: !538, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3580, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3580, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3580, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3580, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3580, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3580, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3580, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3580, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3580, file: !80, line: 613, baseType: !250, size: 32, offset: 1792)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3580, file: !80, line: 614, baseType: !250, size: 32, offset: 1824)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3580, file: !80, line: 615, baseType: !469, size: 64, offset: 1856)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3580, file: !80, line: 616, baseType: !469, size: 64, offset: 1920)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3580, file: !80, line: 617, baseType: !469, size: 64, offset: 1984)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3580, file: !80, line: 618, baseType: !469, size: 64, offset: 2048)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3580, file: !80, line: 620, baseType: !3668, size: 64, offset: 2112)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3670)
!3670 = !{!3671, !3672, !3673, !3674}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3669, file: !80, line: 537, baseType: !284)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3669, file: !80, line: 538, baseType: !7, size: 32)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3669, file: !80, line: 540, baseType: !270, size: 128, offset: 64)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3669, file: !80, line: 543, baseType: !3675, size: 64, offset: 192)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3580, file: !80, line: 621, baseType: !3678, size: 64, offset: 2176)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{null, !261, !1492}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3580, file: !80, line: 622, baseType: !3682, size: 64, offset: 2240)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !262, file: !73, line: 486, baseType: !3685, size: 64, offset: 4096)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3687)
!3687 = !{!3688, !3689, !3690, !3694, !3695, !3696}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3686, file: !80, line: 643, baseType: !3447, size: 1472)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3686, file: !80, line: 644, baseType: !3450, size: 64, offset: 1472)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3686, file: !80, line: 645, baseType: !3691, size: 64, offset: 1536)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{null, !261, !538}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3686, file: !80, line: 646, baseType: !3450, size: 64, offset: 1600)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3686, file: !80, line: 647, baseType: !3441, size: 64, offset: 1664)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3686, file: !80, line: 648, baseType: !3441, size: 64, offset: 1728)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !262, file: !73, line: 493, baseType: !3698, size: 64, offset: 4160)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !73, line: 493, flags: DIFlagFwdDecl)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !262, file: !73, line: 499, baseType: !270, size: 128, offset: 4224)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !262, file: !73, line: 502, baseType: !3702, size: 64, offset: 4352)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3704)
!3704 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !262, file: !73, line: 504, baseType: !3706, size: 64, offset: 4416)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !262, file: !73, line: 505, baseType: !469, size: 64, offset: 4480)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !262, file: !73, line: 510, baseType: !469, size: 64, offset: 4544)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !262, file: !73, line: 511, baseType: !3710, size: 64, offset: 4608)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3712)
!3712 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !262, file: !73, line: 513, baseType: !3714, size: 64, offset: 4672)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3716)
!3716 = !{!3717, !3718}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3715, file: !73, line: 293, baseType: !7, size: 32)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3715, file: !73, line: 294, baseType: !374, size: 64, offset: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !262, file: !73, line: 515, baseType: !270, size: 128, offset: 4736)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !262, file: !73, line: 526, baseType: !3721, offset: 4864)
!3721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3722, line: 5, elements: !298)
!3722 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !262, file: !73, line: 528, baseType: !3724, size: 64, offset: 4864)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3726, line: 14, flags: DIFlagFwdDecl)
!3726 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !262, file: !73, line: 529, baseType: !3728, size: 64, offset: 4928)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3730, line: 17, size: 192, elements: !3731)
!3730 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3731 = !{!3732, !3733, !3816}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3729, file: !3730, line: 18, baseType: !3728, size: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3729, file: !3730, line: 19, baseType: !3734, size: 64, offset: 64)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3736)
!3736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3730, line: 110, size: 1152, elements: !3737)
!3737 = !{!3738, !3742, !3746, !3752, !3758, !3762, !3766, !3771, !3775, !3776, !3780, !3784, !3788, !3799, !3800, !3801, !3802, !3812}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3736, file: !3730, line: 111, baseType: !3739, size: 64)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!3728, !3728}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3736, file: !3730, line: 112, baseType: !3743, size: 64, offset: 64)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{null, !3728}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3736, file: !3730, line: 113, baseType: !3747, size: 64, offset: 128)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{!538, !3750}
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3729)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3736, file: !3730, line: 114, baseType: !3753, size: 64, offset: 192)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{!2175, !3750, !3756}
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !262)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3736, file: !3730, line: 116, baseType: !3759, size: 64, offset: 256)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{!538, !3750, !241}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3736, file: !3730, line: 118, baseType: !3763, size: 64, offset: 320)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!250, !3750, !241, !7, !195, !371}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3736, file: !3730, line: 123, baseType: !3767, size: 64, offset: 384)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = !DISubroutineType(types: !3769)
!3769 = !{!250, !3750, !241, !3770, !371}
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3736, file: !3730, line: 126, baseType: !3772, size: 64, offset: 448)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DISubroutineType(types: !3774)
!3774 = !{!241, !3750}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3736, file: !3730, line: 127, baseType: !3772, size: 64, offset: 512)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3736, file: !3730, line: 128, baseType: !3777, size: 64, offset: 576)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!3728, !3750}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3736, file: !3730, line: 130, baseType: !3781, size: 64, offset: 640)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!3728, !3750, !3728}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3736, file: !3730, line: 133, baseType: !3785, size: 64, offset: 704)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!3728, !3750, !241}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3736, file: !3730, line: 135, baseType: !3789, size: 64, offset: 768)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{!250, !3750, !241, !241, !7, !7, !3792}
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3730, line: 43, size: 640, elements: !3794)
!3794 = !{!3795, !3796, !3797}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3793, file: !3730, line: 44, baseType: !3728, size: 64)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3793, file: !3730, line: 45, baseType: !7, size: 32, offset: 64)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3793, file: !3730, line: 46, baseType: !3798, size: 512, offset: 128)
!3798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !469, size: 512, elements: !1378)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3736, file: !3730, line: 140, baseType: !3781, size: 64, offset: 832)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3736, file: !3730, line: 143, baseType: !3777, size: 64, offset: 896)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3736, file: !3730, line: 145, baseType: !3739, size: 64, offset: 960)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3736, file: !3730, line: 146, baseType: !3803, size: 64, offset: 1024)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!250, !3750, !3806}
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3730, line: 29, size: 128, elements: !3808)
!3808 = !{!3809, !3810, !3811}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3807, file: !3730, line: 30, baseType: !7, size: 32)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3807, file: !3730, line: 31, baseType: !7, size: 32, offset: 32)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3807, file: !3730, line: 32, baseType: !3750, size: 64, offset: 64)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3736, file: !3730, line: 148, baseType: !3813, size: 64, offset: 1088)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{!250, !3750, !261}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3729, file: !3730, line: 20, baseType: !261, size: 64, offset: 128)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !262, file: !73, line: 534, baseType: !561, size: 32, offset: 4992)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !262, file: !73, line: 535, baseType: !465, size: 32, offset: 5024)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !262, file: !73, line: 537, baseType: !284, offset: 5056)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !262, file: !73, line: 538, baseType: !270, size: 128, offset: 5056)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !262, file: !73, line: 540, baseType: !3822, size: 64, offset: 5184)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3824, line: 54, size: 960, elements: !3825)
!3824 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3825 = !{!3826, !3827, !3828, !3829, !3830, !3831, !3832, !3836, !3840, !3841, !3842, !3843, !3847, !3851, !3852}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3823, file: !3824, line: 55, baseType: !241, size: 64)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3823, file: !3824, line: 56, baseType: !243, size: 64, offset: 64)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3823, file: !3824, line: 58, baseType: !378, size: 64, offset: 128)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3823, file: !3824, line: 59, baseType: !378, size: 64, offset: 192)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3823, file: !3824, line: 60, baseType: !277, size: 64, offset: 256)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3823, file: !3824, line: 62, baseType: !3432, size: 64, offset: 320)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3823, file: !3824, line: 63, baseType: !3833, size: 64, offset: 384)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{!325, !261, !3439}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3823, file: !3824, line: 65, baseType: !3837, size: 64, offset: 448)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = !DISubroutineType(types: !3839)
!3839 = !{null, !3822}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3823, file: !3824, line: 66, baseType: !3441, size: 64, offset: 512)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3823, file: !3824, line: 68, baseType: !3450, size: 64, offset: 576)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3823, file: !3824, line: 70, baseType: !3236, size: 64, offset: 640)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3823, file: !3824, line: 71, baseType: !3844, size: 64, offset: 704)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = !DISubroutineType(types: !3846)
!3846 = !{!2175, !261}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3823, file: !3824, line: 73, baseType: !3848, size: 64, offset: 768)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{null, !261, !3268, !3269}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3823, file: !3824, line: 75, baseType: !3445, size: 64, offset: 832)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3823, file: !3824, line: 77, baseType: !3562, size: 64, offset: 896)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !262, file: !73, line: 541, baseType: !378, size: 64, offset: 5248)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !262, file: !73, line: 543, baseType: !3441, size: 64, offset: 5312)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !262, file: !73, line: 544, baseType: !3856, size: 64, offset: 5376)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !262, file: !73, line: 545, baseType: !3859, size: 64, offset: 5440)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !262, file: !73, line: 547, baseType: !538, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !262, file: !73, line: 548, baseType: !538, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !262, file: !73, line: 549, baseType: !538, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !262, file: !73, line: 550, baseType: !538, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !252, file: !236, line: 548, baseType: !250, size: 32, offset: 320)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "detach_count", scope: !252, file: !236, line: 549, baseType: !7, size: 32, offset: 352)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "hw_dev", scope: !252, file: !236, line: 550, baseType: !261, size: 64, offset: 384)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !252, file: !236, line: 552, baseType: !241, size: 64, offset: 448)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "board_ptr", scope: !252, file: !236, line: 553, baseType: !2175, size: 64, offset: 512)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "attached", scope: !252, file: !236, line: 554, baseType: !7, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "ioenabled", scope: !252, file: !236, line: 555, baseType: !7, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "spinlock", scope: !252, file: !236, line: 556, baseType: !284, offset: 584)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !252, file: !236, line: 557, baseType: !1221, size: 192, offset: 640)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "attach_lock", scope: !252, file: !236, line: 558, baseType: !816, size: 256, offset: 832)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !252, file: !236, line: 559, baseType: !3410, size: 32, offset: 1088)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "n_subdevices", scope: !252, file: !236, line: 561, baseType: !250, size: 32, offset: 1120)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "subdevices", scope: !252, file: !236, line: 562, baseType: !3878, size: 64, offset: 1152)
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_subdevice", file: !236, line: 153, size: 1792, elements: !3880)
!3880 = !{!3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3956, !3969, !3972, !3973, !3987, !3988, !3989, !3990, !3994, !3999, !4000, !4001, !4002, !4006, !4007, !4008, !4009, !4010}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3879, file: !236, line: 154, baseType: !251, size: 64)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3879, file: !236, line: 155, baseType: !250, size: 32, offset: 64)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3879, file: !236, line: 156, baseType: !250, size: 32, offset: 96)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "n_chan", scope: !3879, file: !236, line: 157, baseType: !250, size: 32, offset: 128)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "subdev_flags", scope: !3879, file: !236, line: 158, baseType: !250, size: 32, offset: 160)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "len_chanlist", scope: !3879, file: !236, line: 159, baseType: !250, size: 32, offset: 192)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3879, file: !236, line: 161, baseType: !195, size: 64, offset: 256)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "async", scope: !3879, file: !236, line: 163, baseType: !3889, size: 64, offset: 320)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_async", file: !236, line: 347, size: 1536, elements: !3891)
!3891 = !{!3892, !3893, !3894, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3942, !3943, !3944}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3890, file: !236, line: 348, baseType: !195, size: 64)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_bufsz", scope: !3890, file: !236, line: 349, baseType: !7, size: 32, offset: 64)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "buf_map", scope: !3890, file: !236, line: 350, baseType: !3895, size: 64, offset: 128)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_map", file: !236, line: 249, size: 256, elements: !3897)
!3897 = !{!3898, !3899, !3905, !3906, !3907}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "dma_hw_dev", scope: !3896, file: !236, line: 250, baseType: !261, size: 64)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "page_list", scope: !3896, file: !236, line: 251, baseType: !3900, size: 64, offset: 64)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_page", file: !236, line: 220, size: 128, elements: !3902)
!3902 = !{!3903, !3904}
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "virt_addr", scope: !3901, file: !236, line: 221, baseType: !195, size: 64)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3901, file: !236, line: 222, baseType: !968, size: 64, offset: 64)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "n_pages", scope: !3896, file: !236, line: 252, baseType: !7, size: 32, offset: 128)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "dma_dir", scope: !3896, file: !236, line: 253, baseType: !93, size: 32, offset: 160)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3896, file: !236, line: 254, baseType: !3410, size: 32, offset: 192)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "max_bufsize", scope: !3890, file: !236, line: 351, baseType: !7, size: 32, offset: 192)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_count", scope: !3890, file: !236, line: 352, baseType: !7, size: 32, offset: 224)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_alloc_count", scope: !3890, file: !236, line: 353, baseType: !7, size: 32, offset: 256)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_count", scope: !3890, file: !236, line: 354, baseType: !7, size: 32, offset: 288)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_alloc_count", scope: !3890, file: !236, line: 355, baseType: !7, size: 32, offset: 320)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_ptr", scope: !3890, file: !236, line: 356, baseType: !7, size: 32, offset: 352)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_ptr", scope: !3890, file: !236, line: 357, baseType: !7, size: 32, offset: 384)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "cur_chan", scope: !3890, file: !236, line: 358, baseType: !7, size: 32, offset: 416)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "scans_done", scope: !3890, file: !236, line: 359, baseType: !7, size: 32, offset: 448)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "scan_progress", scope: !3890, file: !236, line: 360, baseType: !7, size: 32, offset: 480)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "munge_chan", scope: !3890, file: !236, line: 361, baseType: !7, size: 32, offset: 512)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "munge_count", scope: !3890, file: !236, line: 362, baseType: !7, size: 32, offset: 544)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "munge_ptr", scope: !3890, file: !236, line: 363, baseType: !7, size: 32, offset: 576)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3890, file: !236, line: 364, baseType: !7, size: 32, offset: 608)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !3890, file: !236, line: 365, baseType: !3923, size: 640, offset: 640)
!3923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_cmd", file: !112, line: 589, size: 640, elements: !3924)
!3924 = !{!3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3941}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "subdev", scope: !3923, file: !112, line: 590, baseType: !7, size: 32)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3923, file: !112, line: 591, baseType: !7, size: 32, offset: 32)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "start_src", scope: !3923, file: !112, line: 593, baseType: !7, size: 32, offset: 64)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "start_arg", scope: !3923, file: !112, line: 594, baseType: !7, size: 32, offset: 96)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "scan_begin_src", scope: !3923, file: !112, line: 596, baseType: !7, size: 32, offset: 128)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "scan_begin_arg", scope: !3923, file: !112, line: 597, baseType: !7, size: 32, offset: 160)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "convert_src", scope: !3923, file: !112, line: 599, baseType: !7, size: 32, offset: 192)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "convert_arg", scope: !3923, file: !112, line: 600, baseType: !7, size: 32, offset: 224)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "scan_end_src", scope: !3923, file: !112, line: 602, baseType: !7, size: 32, offset: 256)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "scan_end_arg", scope: !3923, file: !112, line: 603, baseType: !7, size: 32, offset: 288)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "stop_src", scope: !3923, file: !112, line: 605, baseType: !7, size: 32, offset: 320)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "stop_arg", scope: !3923, file: !112, line: 606, baseType: !7, size: 32, offset: 352)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist", scope: !3923, file: !112, line: 608, baseType: !2731, size: 64, offset: 384)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist_len", scope: !3923, file: !112, line: 609, baseType: !7, size: 32, offset: 448)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3923, file: !112, line: 611, baseType: !3940, size: 64, offset: 512)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !3923, file: !112, line: 612, baseType: !7, size: 32, offset: 576)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "wait_head", scope: !3890, file: !236, line: 366, baseType: !1529, size: 128, offset: 1280)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "cb_mask", scope: !3890, file: !236, line: 367, baseType: !7, size: 32, offset: 1408)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "inttrig", scope: !3890, file: !236, line: 368, baseType: !3945, size: 64, offset: 1472)
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3946 = !DISubroutineType(types: !3947)
!3947 = !{!250, !251, !3878, !7}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3879, file: !236, line: 165, baseType: !195, size: 64, offset: 384)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !3879, file: !236, line: 166, baseType: !195, size: 64, offset: 448)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "runflags", scope: !3879, file: !236, line: 167, baseType: !7, size: 32, offset: 512)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "spin_lock", scope: !3879, file: !236, line: 168, baseType: !284, offset: 544)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "io_bits", scope: !3879, file: !236, line: 170, baseType: !7, size: 32, offset: 544)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata", scope: !3879, file: !236, line: 172, baseType: !7, size: 32, offset: 576)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata_list", scope: !3879, file: !236, line: 173, baseType: !3955, size: 64, offset: 640)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "range_table", scope: !3879, file: !236, line: 175, baseType: !3957, size: 64, offset: 704)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3959)
!3959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_lrange", file: !236, line: 635, size: 32, elements: !3960)
!3960 = !{!3961, !3962}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3959, file: !236, line: 636, baseType: !250, size: 32)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3959, file: !236, line: 637, baseType: !3963, offset: 32)
!3963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3964, elements: !2379)
!3964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_krange", file: !112, line: 685, size: 96, elements: !3965)
!3965 = !{!3966, !3967, !3968}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !3964, file: !112, line: 686, baseType: !250, size: 32)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3964, file: !112, line: 687, baseType: !250, size: 32, offset: 32)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3964, file: !112, line: 688, baseType: !7, size: 32, offset: 64)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "range_table_list", scope: !3879, file: !236, line: 176, baseType: !3970, size: 64, offset: 768)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3957)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist", scope: !3879, file: !236, line: 178, baseType: !2731, size: 64, offset: 832)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "insn_read", scope: !3879, file: !236, line: 180, baseType: !3974, size: 64, offset: 896)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DISubroutineType(types: !3976)
!3976 = !{!250, !251, !3878, !3977, !2731}
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_insn", file: !112, line: 491, size: 320, elements: !3979)
!3979 = !{!3980, !3981, !3982, !3983, !3984, !3985}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3978, file: !112, line: 492, baseType: !7, size: 32)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !3978, file: !112, line: 493, baseType: !7, size: 32, offset: 32)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3978, file: !112, line: 494, baseType: !2731, size: 64, offset: 64)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "subdev", scope: !3978, file: !112, line: 495, baseType: !7, size: 32, offset: 128)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "chanspec", scope: !3978, file: !112, line: 496, baseType: !7, size: 32, offset: 160)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !3978, file: !112, line: 497, baseType: !3986, size: 96, offset: 192)
!3986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 96, elements: !326)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "insn_write", scope: !3879, file: !236, line: 182, baseType: !3974, size: 64, offset: 960)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "insn_bits", scope: !3879, file: !236, line: 184, baseType: !3974, size: 64, offset: 1024)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "insn_config", scope: !3879, file: !236, line: 186, baseType: !3974, size: 64, offset: 1088)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmd", scope: !3879, file: !236, line: 191, baseType: !3991, size: 64, offset: 1152)
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3992, size: 64)
!3992 = !DISubroutineType(types: !3993)
!3993 = !{!250, !251, !3878}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmdtest", scope: !3879, file: !236, line: 192, baseType: !3995, size: 64, offset: 1216)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = !DISubroutineType(types: !3997)
!3997 = !{!250, !251, !3878, !3998}
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3879, file: !236, line: 195, baseType: !3991, size: 64, offset: 1280)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "cancel", scope: !3879, file: !236, line: 196, baseType: !3991, size: 64, offset: 1344)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "buf_change", scope: !3879, file: !236, line: 199, baseType: !3991, size: 64, offset: 1408)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "munge", scope: !3879, file: !236, line: 202, baseType: !4003, size: 64, offset: 1472)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{null, !251, !3878, !195, !7, !7}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "async_dma_dir", scope: !3879, file: !236, line: 205, baseType: !93, size: 32, offset: 1536)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3879, file: !236, line: 207, baseType: !7, size: 32, offset: 1568)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !3879, file: !236, line: 209, baseType: !261, size: 64, offset: 1600)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3879, file: !236, line: 210, baseType: !250, size: 32, offset: 1664)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "readback", scope: !3879, file: !236, line: 212, baseType: !2731, size: 64, offset: 1728)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "mmio", scope: !252, file: !236, line: 565, baseType: !195, size: 64, offset: 1216)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "iobase", scope: !252, file: !236, line: 566, baseType: !374, size: 64, offset: 1280)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "iolen", scope: !252, file: !236, line: 567, baseType: !374, size: 64, offset: 1344)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !252, file: !236, line: 568, baseType: !7, size: 32, offset: 1408)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "read_subdev", scope: !252, file: !236, line: 570, baseType: !3878, size: 64, offset: 1472)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "write_subdev", scope: !252, file: !236, line: 571, baseType: !3878, size: 64, offset: 1536)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "async_queue", scope: !252, file: !236, line: 573, baseType: !3006, size: 64, offset: 1600)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !252, file: !236, line: 575, baseType: !4019, size: 64, offset: 1664)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{!250, !251}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !252, file: !236, line: 576, baseType: !4023, size: 64, offset: 1728)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{null, !251}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "insn_device_config", scope: !252, file: !236, line: 577, baseType: !4027, size: 64, offset: 1792)
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = !DISubroutineType(types: !4029)
!4029 = !{!250, !251, !3977, !2731}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "get_valid_routes", scope: !252, file: !236, line: 579, baseType: !4031, size: 64, offset: 1856)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DISubroutineType(types: !4033)
!4033 = !{!7, !251, !7, !2731}
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_devconfig", file: !112, line: 834, size: 1184, elements: !4036)
!4036 = !{!4037, !4039}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !4035, file: !112, line: 835, baseType: !4038, size: 160)
!4038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 160, elements: !2249)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !4035, file: !112, line: 836, baseType: !4040, size: 1024, offset: 160)
!4040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 1024, elements: !2278)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !235, file: !236, line: 444, baseType: !4023, size: 64, offset: 256)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "auto_attach", scope: !235, file: !236, line: 445, baseType: !4043, size: 64, offset: 320)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{!250, !251, !374}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "num_names", scope: !235, file: !236, line: 446, baseType: !7, size: 32, offset: 384)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !235, file: !236, line: 447, baseType: !4048, size: 64, offset: 448)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !241)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !235, file: !236, line: 448, baseType: !250, size: 32, offset: 512)
!4051 = !DIGlobalVariableExpression(var: !4052, expr: !DIExpression())
!4052 = distinct !DIGlobalVariable(name: "__key", scope: !4053, file: !3, line: 766, type: !693, isLocal: true, isDefinition: true)
!4053 = distinct !DISubprogram(name: "dt9812_auto_attach", scope: !3, file: !3, line: 752, type: !4044, scopeLine: 754, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !298)
!4054 = !DIGlobalVariableExpression(var: !4055, expr: !DIExpression())
!4055 = distinct !DIGlobalVariable(name: "dt9812_usb_driver", scope: !2, file: !3, line: 861, type: !4056, isLocal: true, isDefinition: true)
!4056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_driver", file: !101, line: 1184, size: 2112, elements: !4057)
!4057 = !{!4058, !4059, !4169, !4173, !4177, !4181, !4185, !4186, !4187, !4188, !4189, !4190, !4195, !4200, !4201, !4202, !4203}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4056, file: !101, line: 1185, baseType: !241, size: 64)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4056, file: !101, line: 1187, baseType: !4060, size: 64, offset: 64)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{!250, !4063, !4152}
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface", file: !101, line: 232, size: 6272, elements: !4065)
!4065 = !{!4066, !4125, !4126, !4127, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !4064, file: !101, line: 235, baseType: !4067, size: 64)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_interface", file: !101, line: 82, size: 320, elements: !4069)
!4069 = !{!4070, !4082, !4083, !4085, !4124}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4068, file: !101, line: 83, baseType: !4071, size: 72)
!4071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_descriptor", file: !128, line: 389, size: 72, elements: !4072)
!4072 = !{!4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4071, file: !128, line: 390, baseType: !1401, size: 8)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4071, file: !128, line: 391, baseType: !1401, size: 8, offset: 8)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !4071, file: !128, line: 393, baseType: !1401, size: 8, offset: 16)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "bAlternateSetting", scope: !4071, file: !128, line: 394, baseType: !1401, size: 8, offset: 24)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "bNumEndpoints", scope: !4071, file: !128, line: 395, baseType: !1401, size: 8, offset: 32)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !4071, file: !128, line: 396, baseType: !1401, size: 8, offset: 40)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !4071, file: !128, line: 397, baseType: !1401, size: 8, offset: 48)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !4071, file: !128, line: 398, baseType: !1401, size: 8, offset: 56)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "iInterface", scope: !4071, file: !128, line: 399, baseType: !1401, size: 8, offset: 64)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !4068, file: !101, line: 85, baseType: !250, size: 32, offset: 96)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4068, file: !101, line: 86, baseType: !4084, size: 64, offset: 128)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint", scope: !4068, file: !101, line: 91, baseType: !4086, size: 64, offset: 192)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_endpoint", file: !101, line: 67, size: 640, elements: !4088)
!4088 = !{!4089, !4100, !4108, !4115, !4116, !4117, !4120, !4121, !4122, !4123}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4087, file: !101, line: 68, baseType: !4090, size: 72)
!4090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_endpoint_descriptor", file: !128, line: 407, size: 72, elements: !4091)
!4091 = !{!4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4090, file: !128, line: 408, baseType: !1401, size: 8)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4090, file: !128, line: 409, baseType: !1401, size: 8, offset: 8)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "bEndpointAddress", scope: !4090, file: !128, line: 411, baseType: !1401, size: 8, offset: 16)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4090, file: !128, line: 412, baseType: !1401, size: 8, offset: 24)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "wMaxPacketSize", scope: !4090, file: !128, line: 413, baseType: !199, size: 16, offset: 32)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "bInterval", scope: !4090, file: !128, line: 414, baseType: !1401, size: 8, offset: 48)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "bRefresh", scope: !4090, file: !128, line: 418, baseType: !1401, size: 8, offset: 56)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "bSynchAddress", scope: !4090, file: !128, line: 419, baseType: !1401, size: 8, offset: 64)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "ss_ep_comp", scope: !4087, file: !101, line: 69, baseType: !4101, size: 48, offset: 72)
!4101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_ep_comp_descriptor", file: !128, line: 689, size: 48, elements: !4102)
!4102 = !{!4103, !4104, !4105, !4106, !4107}
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4101, file: !128, line: 690, baseType: !1401, size: 8)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4101, file: !128, line: 691, baseType: !1401, size: 8, offset: 8)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxBurst", scope: !4101, file: !128, line: 693, baseType: !1401, size: 8, offset: 16)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4101, file: !128, line: 694, baseType: !1401, size: 8, offset: 24)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "wBytesPerInterval", scope: !4101, file: !128, line: 695, baseType: !199, size: 16, offset: 32)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_isoc_ep_comp", scope: !4087, file: !101, line: 70, baseType: !4109, size: 64, offset: 120)
!4109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_isoc_ep_comp_descriptor", file: !128, line: 677, size: 64, elements: !4110)
!4110 = !{!4111, !4112, !4113, !4114}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4109, file: !128, line: 678, baseType: !1401, size: 8)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4109, file: !128, line: 679, baseType: !1401, size: 8, offset: 8)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "wReseved", scope: !4109, file: !128, line: 680, baseType: !199, size: 16, offset: 16)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "dwBytesPerInterval", scope: !4109, file: !128, line: 681, baseType: !202, size: 32, offset: 32)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4087, file: !101, line: 71, baseType: !270, size: 128, offset: 192)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !4087, file: !101, line: 72, baseType: !195, size: 64, offset: 320)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "ep_dev", scope: !4087, file: !101, line: 73, baseType: !4118, size: 64, offset: 384)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DICompositeType(tag: DW_TAG_structure_type, name: "ep_device", file: !101, line: 48, flags: DIFlagFwdDecl)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4087, file: !101, line: 75, baseType: !4084, size: 64, offset: 448)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !4087, file: !101, line: 76, baseType: !250, size: 32, offset: 512)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4087, file: !101, line: 77, baseType: !250, size: 32, offset: 544)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !4087, file: !101, line: 78, baseType: !250, size: 32, offset: 576)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4068, file: !101, line: 93, baseType: !325, size: 64, offset: 256)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "cur_altsetting", scope: !4064, file: !101, line: 237, baseType: !4067, size: 64, offset: 64)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !4064, file: !101, line: 239, baseType: !7, size: 32, offset: 128)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !4064, file: !101, line: 243, baseType: !4128, size: 64, offset: 192)
!4128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4129, size: 64)
!4129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_assoc_descriptor", file: !128, line: 783, size: 64, elements: !4130)
!4130 = !{!4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4129, file: !128, line: 784, baseType: !1401, size: 8)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4129, file: !128, line: 785, baseType: !1401, size: 8, offset: 8)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "bFirstInterface", scope: !4129, file: !128, line: 787, baseType: !1401, size: 8, offset: 16)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceCount", scope: !4129, file: !128, line: 788, baseType: !1401, size: 8, offset: 24)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionClass", scope: !4129, file: !128, line: 789, baseType: !1401, size: 8, offset: 32)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionSubClass", scope: !4129, file: !128, line: 790, baseType: !1401, size: 8, offset: 40)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionProtocol", scope: !4129, file: !128, line: 791, baseType: !1401, size: 8, offset: 48)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "iFunction", scope: !4129, file: !128, line: 792, baseType: !1401, size: 8, offset: 56)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4064, file: !101, line: 245, baseType: !250, size: 32, offset: 256)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !4064, file: !101, line: 247, baseType: !100, size: 32, offset: 288)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_files_created", scope: !4064, file: !101, line: 248, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "ep_devs_created", scope: !4064, file: !101, line: 249, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !4064, file: !101, line: 250, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "needs_remote_wakeup", scope: !4064, file: !101, line: 251, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "needs_altsetting0", scope: !4064, file: !101, line: 252, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "needs_binding", scope: !4064, file: !101, line: 253, baseType: !7, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "resetting_device", scope: !4064, file: !101, line: 254, baseType: !7, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !4064, file: !101, line: 255, baseType: !7, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4064, file: !101, line: 257, baseType: !262, size: 5568, offset: 384)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "usb_dev", scope: !4064, file: !101, line: 258, baseType: !261, size: 64, offset: 5952)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "reset_ws", scope: !4064, file: !101, line: 259, baseType: !2005, size: 256, offset: 6016)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4154)
!4154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_id", file: !3503, line: 121, size: 256, elements: !4155)
!4155 = !{!4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168}
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "match_flags", scope: !4154, file: !3503, line: 123, baseType: !196, size: 16)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !4154, file: !3503, line: 126, baseType: !196, size: 16, offset: 16)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !4154, file: !3503, line: 127, baseType: !196, size: 16, offset: 32)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_lo", scope: !4154, file: !3503, line: 128, baseType: !196, size: 16, offset: 48)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_hi", scope: !4154, file: !3503, line: 129, baseType: !196, size: 16, offset: 64)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !4154, file: !3503, line: 132, baseType: !1401, size: 8, offset: 80)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !4154, file: !3503, line: 133, baseType: !1401, size: 8, offset: 88)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !4154, file: !3503, line: 134, baseType: !1401, size: 8, offset: 96)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !4154, file: !3503, line: 137, baseType: !1401, size: 8, offset: 104)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !4154, file: !3503, line: 138, baseType: !1401, size: 8, offset: 112)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !4154, file: !3503, line: 139, baseType: !1401, size: 8, offset: 120)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !4154, file: !3503, line: 142, baseType: !1401, size: 8, offset: 128)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !4154, file: !3503, line: 145, baseType: !3522, size: 64, align: 64, offset: 192)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4056, file: !101, line: 1190, baseType: !4170, size: 64, offset: 128)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{null, !4063}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4056, file: !101, line: 1192, baseType: !4174, size: 64, offset: 192)
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = !DISubroutineType(types: !4176)
!4176 = !{!250, !4063, !7, !195}
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4056, file: !101, line: 1195, baseType: !4178, size: 64, offset: 256)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{!250, !4063, !3533}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4056, file: !101, line: 1196, baseType: !4182, size: 64, offset: 320)
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4183, size: 64)
!4183 = !DISubroutineType(types: !4184)
!4184 = !{!250, !4063}
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !4056, file: !101, line: 1197, baseType: !4182, size: 64, offset: 384)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "pre_reset", scope: !4056, file: !101, line: 1199, baseType: !4182, size: 64, offset: 448)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "post_reset", scope: !4056, file: !101, line: 1200, baseType: !4182, size: 64, offset: 512)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4056, file: !101, line: 1202, baseType: !4152, size: 64, offset: 576)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4056, file: !101, line: 1203, baseType: !378, size: 64, offset: 640)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4056, file: !101, line: 1205, baseType: !4191, size: 128, offset: 704)
!4191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_dynids", file: !101, line: 1091, size: 128, elements: !4192)
!4192 = !{!4193, !4194}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4191, file: !101, line: 1092, baseType: !284)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4191, file: !101, line: 1093, baseType: !270, size: 128)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "drvwrap", scope: !4056, file: !101, line: 1206, baseType: !4196, size: 1216, offset: 832)
!4196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usbdrv_wrap", file: !101, line: 1113, size: 1216, elements: !4197)
!4197 = !{!4198, !4199}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4196, file: !101, line: 1114, baseType: !3491, size: 1152)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "for_devices", scope: !4196, file: !101, line: 1115, baseType: !250, size: 32, offset: 1152)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "no_dynamic_id", scope: !4056, file: !101, line: 1207, baseType: !7, size: 1, offset: 2048, flags: DIFlagBitField, extraData: i64 2048)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "supports_autosuspend", scope: !4056, file: !101, line: 1208, baseType: !7, size: 1, offset: 2049, flags: DIFlagBitField, extraData: i64 2048)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "disable_hub_initiated_lpm", scope: !4056, file: !101, line: 1209, baseType: !7, size: 1, offset: 2050, flags: DIFlagBitField, extraData: i64 2048)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "soft_unbind", scope: !4056, file: !101, line: 1210, baseType: !7, size: 1, offset: 2051, flags: DIFlagBitField, extraData: i64 2048)
!4204 = !DIGlobalVariableExpression(var: !4205, expr: !DIExpression())
!4205 = distinct !DIGlobalVariable(name: "dt9812_usb_table", scope: !2, file: !3, line: 855, type: !4206, isLocal: true, isDefinition: true)
!4206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4153, size: 512, elements: !1617)
!4207 = !{i32 7, !"Dwarf Version", i32 4}
!4208 = !{i32 2, !"Debug Info Version", i32 3}
!4209 = !{i32 1, !"wchar_size", i32 2}
!4210 = !{i32 1, !"Code Model", i32 2}
!4211 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4212 = distinct !DISubprogram(name: "dt9812_driver_init", scope: !3, file: !3, line: 867, type: !4213, scopeLine: 867, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !298)
!4213 = !DISubroutineType(types: !4214)
!4214 = !{!250}
!4215 = !DILocation(line: 867, column: 1, scope: !4212)
!4216 = distinct !DISubprogram(name: "dt9812_driver_exit", scope: !3, file: !3, line: 867, type: !209, scopeLine: 867, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !298)
!4217 = !DILocation(line: 867, column: 1, scope: !4216)
!4218 = distinct !DISubprogram(name: "dt9812_detach", scope: !3, file: !3, line: 830, type: !4024, scopeLine: 831, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !298)
!4219 = !DILocalVariable(name: "dev", arg: 1, scope: !4218, file: !3, line: 830, type: !251)
!4220 = !DILocation(line: 830, column: 49, scope: !4218)
!4221 = !DILocalVariable(name: "intf", scope: !4218, file: !3, line: 832, type: !4063)
!4222 = !DILocation(line: 832, column: 24, scope: !4218)
!4223 = !DILocation(line: 832, column: 55, scope: !4218)
!4224 = !DILocation(line: 832, column: 31, scope: !4218)
!4225 = !DILocalVariable(name: "devpriv", scope: !4218, file: !3, line: 833, type: !4226)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dt9812_private", file: !3, line: 226, size: 512, elements: !4228)
!4228 = !{!4229, !4230, !4235, !4236}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "mut", scope: !4227, file: !3, line: 227, baseType: !1221, size: 192)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_wr", scope: !4227, file: !3, line: 231, baseType: !4231, size: 128, offset: 192)
!4231 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4227, file: !3, line: 228, size: 128, elements: !4232)
!4232 = !{!4233, !4234}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4231, file: !3, line: 229, baseType: !1401, size: 8)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4231, file: !3, line: 230, baseType: !371, size: 64, offset: 64)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_rd", scope: !4227, file: !3, line: 231, baseType: !4231, size: 128, offset: 320)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4227, file: !3, line: 232, baseType: !908, size: 16, offset: 448)
!4237 = !DILocation(line: 833, column: 25, scope: !4218)
!4238 = !DILocation(line: 833, column: 35, scope: !4218)
!4239 = !DILocation(line: 833, column: 40, scope: !4218)
!4240 = !DILocation(line: 835, column: 7, scope: !4241)
!4241 = distinct !DILexicalBlock(scope: !4218, file: !3, line: 835, column: 6)
!4242 = !DILocation(line: 835, column: 6, scope: !4218)
!4243 = !DILocation(line: 836, column: 3, scope: !4241)
!4244 = !DILocation(line: 838, column: 17, scope: !4218)
!4245 = !DILocation(line: 838, column: 26, scope: !4218)
!4246 = !DILocation(line: 838, column: 2, scope: !4218)
!4247 = !DILocation(line: 839, column: 19, scope: !4218)
!4248 = !DILocation(line: 839, column: 2, scope: !4218)
!4249 = !DILocation(line: 840, column: 1, scope: !4218)
!4250 = !DILocalVariable(name: "dev", arg: 1, scope: !4053, file: !3, line: 752, type: !251)
!4251 = !DILocation(line: 752, column: 53, scope: !4053)
!4252 = !DILocalVariable(name: "context", arg: 2, scope: !4053, file: !3, line: 753, type: !374)
!4253 = !DILocation(line: 753, column: 24, scope: !4053)
!4254 = !DILocalVariable(name: "intf", scope: !4053, file: !3, line: 755, type: !4063)
!4255 = !DILocation(line: 755, column: 24, scope: !4053)
!4256 = !DILocation(line: 755, column: 55, scope: !4053)
!4257 = !DILocation(line: 755, column: 31, scope: !4053)
!4258 = !DILocalVariable(name: "devpriv", scope: !4053, file: !3, line: 756, type: !4226)
!4259 = !DILocation(line: 756, column: 25, scope: !4053)
!4260 = !DILocalVariable(name: "s", scope: !4053, file: !3, line: 757, type: !3878)
!4261 = !DILocation(line: 757, column: 27, scope: !4053)
!4262 = !DILocalVariable(name: "is_unipolar", scope: !4053, file: !3, line: 758, type: !538)
!4263 = !DILocation(line: 758, column: 7, scope: !4053)
!4264 = !DILocalVariable(name: "ret", scope: !4053, file: !3, line: 759, type: !250)
!4265 = !DILocation(line: 759, column: 6, scope: !4053)
!4266 = !DILocalVariable(name: "i", scope: !4053, file: !3, line: 760, type: !250)
!4267 = !DILocation(line: 760, column: 6, scope: !4053)
!4268 = !DILocation(line: 762, column: 33, scope: !4053)
!4269 = !DILocation(line: 762, column: 12, scope: !4053)
!4270 = !DILocation(line: 762, column: 10, scope: !4053)
!4271 = !DILocation(line: 763, column: 7, scope: !4272)
!4272 = distinct !DILexicalBlock(scope: !4053, file: !3, line: 763, column: 6)
!4273 = !DILocation(line: 763, column: 6, scope: !4053)
!4274 = !DILocation(line: 764, column: 3, scope: !4272)
!4275 = !DILocation(line: 766, column: 2, scope: !4053)
!4276 = !DILocation(line: 766, column: 2, scope: !4277)
!4277 = distinct !DILexicalBlock(scope: !4053, file: !3, line: 766, column: 2)
!4278 = !DILocation(line: 767, column: 19, scope: !4053)
!4279 = !DILocation(line: 767, column: 25, scope: !4053)
!4280 = !DILocation(line: 767, column: 2, scope: !4053)
!4281 = !DILocation(line: 769, column: 30, scope: !4053)
!4282 = !DILocation(line: 769, column: 8, scope: !4053)
!4283 = !DILocation(line: 769, column: 6, scope: !4053)
!4284 = !DILocation(line: 770, column: 6, scope: !4285)
!4285 = distinct !DILexicalBlock(scope: !4053, file: !3, line: 770, column: 6)
!4286 = !DILocation(line: 770, column: 6, scope: !4053)
!4287 = !DILocation(line: 771, column: 10, scope: !4285)
!4288 = !DILocation(line: 771, column: 3, scope: !4285)
!4289 = !DILocation(line: 773, column: 28, scope: !4053)
!4290 = !DILocation(line: 773, column: 8, scope: !4053)
!4291 = !DILocation(line: 773, column: 6, scope: !4053)
!4292 = !DILocation(line: 774, column: 6, scope: !4293)
!4293 = distinct !DILexicalBlock(scope: !4053, file: !3, line: 774, column: 6)
!4294 = !DILocation(line: 774, column: 6, scope: !4053)
!4295 = !DILocation(line: 775, column: 10, scope: !4293)
!4296 = !DILocation(line: 775, column: 3, scope: !4293)
!4297 = !DILocation(line: 777, column: 17, scope: !4053)
!4298 = !DILocation(line: 777, column: 26, scope: !4053)
!4299 = !DILocation(line: 777, column: 33, scope: !4053)
!4300 = !DILocation(line: 777, column: 14, scope: !4053)
!4301 = !DILocation(line: 779, column: 32, scope: !4053)
!4302 = !DILocation(line: 779, column: 8, scope: !4053)
!4303 = !DILocation(line: 779, column: 6, scope: !4053)
!4304 = !DILocation(line: 780, column: 6, scope: !4305)
!4305 = distinct !DILexicalBlock(scope: !4053, file: !3, line: 780, column: 6)
!4306 = !DILocation(line: 780, column: 6, scope: !4053)
!4307 = !DILocation(line: 781, column: 10, scope: !4305)
!4308 = !DILocation(line: 781, column: 3, scope: !4305)
!4309 = !DILocation(line: 784, column: 7, scope: !4053)
!4310 = !DILocation(line: 784, column: 12, scope: !4053)
!4311 = !DILocation(line: 784, column: 4, scope: !4053)
!4312 = !DILocation(line: 785, column: 2, scope: !4053)
!4313 = !DILocation(line: 785, column: 5, scope: !4053)
!4314 = !DILocation(line: 785, column: 11, scope: !4053)
!4315 = !DILocation(line: 786, column: 2, scope: !4053)
!4316 = !DILocation(line: 786, column: 5, scope: !4053)
!4317 = !DILocation(line: 786, column: 18, scope: !4053)
!4318 = !DILocation(line: 787, column: 2, scope: !4053)
!4319 = !DILocation(line: 787, column: 5, scope: !4053)
!4320 = !DILocation(line: 787, column: 12, scope: !4053)
!4321 = !DILocation(line: 788, column: 2, scope: !4053)
!4322 = !DILocation(line: 788, column: 5, scope: !4053)
!4323 = !DILocation(line: 788, column: 13, scope: !4053)
!4324 = !DILocation(line: 789, column: 2, scope: !4053)
!4325 = !DILocation(line: 789, column: 5, scope: !4053)
!4326 = !DILocation(line: 789, column: 17, scope: !4053)
!4327 = !DILocation(line: 790, column: 2, scope: !4053)
!4328 = !DILocation(line: 790, column: 5, scope: !4053)
!4329 = !DILocation(line: 790, column: 15, scope: !4053)
!4330 = !DILocation(line: 793, column: 7, scope: !4053)
!4331 = !DILocation(line: 793, column: 12, scope: !4053)
!4332 = !DILocation(line: 793, column: 4, scope: !4053)
!4333 = !DILocation(line: 794, column: 2, scope: !4053)
!4334 = !DILocation(line: 794, column: 5, scope: !4053)
!4335 = !DILocation(line: 794, column: 11, scope: !4053)
!4336 = !DILocation(line: 795, column: 2, scope: !4053)
!4337 = !DILocation(line: 795, column: 5, scope: !4053)
!4338 = !DILocation(line: 795, column: 18, scope: !4053)
!4339 = !DILocation(line: 796, column: 2, scope: !4053)
!4340 = !DILocation(line: 796, column: 5, scope: !4053)
!4341 = !DILocation(line: 796, column: 12, scope: !4053)
!4342 = !DILocation(line: 797, column: 2, scope: !4053)
!4343 = !DILocation(line: 797, column: 5, scope: !4053)
!4344 = !DILocation(line: 797, column: 13, scope: !4053)
!4345 = !DILocation(line: 798, column: 2, scope: !4053)
!4346 = !DILocation(line: 798, column: 5, scope: !4053)
!4347 = !DILocation(line: 798, column: 17, scope: !4053)
!4348 = !DILocation(line: 799, column: 2, scope: !4053)
!4349 = !DILocation(line: 799, column: 5, scope: !4053)
!4350 = !DILocation(line: 799, column: 15, scope: !4053)
!4351 = !DILocation(line: 802, column: 7, scope: !4053)
!4352 = !DILocation(line: 802, column: 12, scope: !4053)
!4353 = !DILocation(line: 802, column: 4, scope: !4053)
!4354 = !DILocation(line: 803, column: 2, scope: !4053)
!4355 = !DILocation(line: 803, column: 5, scope: !4053)
!4356 = !DILocation(line: 803, column: 11, scope: !4053)
!4357 = !DILocation(line: 804, column: 2, scope: !4053)
!4358 = !DILocation(line: 804, column: 5, scope: !4053)
!4359 = !DILocation(line: 804, column: 18, scope: !4053)
!4360 = !DILocation(line: 805, column: 2, scope: !4053)
!4361 = !DILocation(line: 805, column: 5, scope: !4053)
!4362 = !DILocation(line: 805, column: 12, scope: !4053)
!4363 = !DILocation(line: 806, column: 2, scope: !4053)
!4364 = !DILocation(line: 806, column: 5, scope: !4053)
!4365 = !DILocation(line: 806, column: 13, scope: !4053)
!4366 = !DILocation(line: 807, column: 19, scope: !4053)
!4367 = !DILocation(line: 807, column: 2, scope: !4053)
!4368 = !DILocation(line: 807, column: 5, scope: !4053)
!4369 = !DILocation(line: 807, column: 17, scope: !4053)
!4370 = !DILocation(line: 808, column: 2, scope: !4053)
!4371 = !DILocation(line: 808, column: 5, scope: !4053)
!4372 = !DILocation(line: 808, column: 15, scope: !4053)
!4373 = !DILocation(line: 811, column: 7, scope: !4053)
!4374 = !DILocation(line: 811, column: 12, scope: !4053)
!4375 = !DILocation(line: 811, column: 4, scope: !4053)
!4376 = !DILocation(line: 812, column: 2, scope: !4053)
!4377 = !DILocation(line: 812, column: 5, scope: !4053)
!4378 = !DILocation(line: 812, column: 11, scope: !4053)
!4379 = !DILocation(line: 813, column: 2, scope: !4053)
!4380 = !DILocation(line: 813, column: 5, scope: !4053)
!4381 = !DILocation(line: 813, column: 18, scope: !4053)
!4382 = !DILocation(line: 814, column: 2, scope: !4053)
!4383 = !DILocation(line: 814, column: 5, scope: !4053)
!4384 = !DILocation(line: 814, column: 12, scope: !4053)
!4385 = !DILocation(line: 815, column: 2, scope: !4053)
!4386 = !DILocation(line: 815, column: 5, scope: !4053)
!4387 = !DILocation(line: 815, column: 13, scope: !4053)
!4388 = !DILocation(line: 816, column: 19, scope: !4053)
!4389 = !DILocation(line: 816, column: 2, scope: !4053)
!4390 = !DILocation(line: 816, column: 5, scope: !4053)
!4391 = !DILocation(line: 816, column: 17, scope: !4053)
!4392 = !DILocation(line: 817, column: 2, scope: !4053)
!4393 = !DILocation(line: 817, column: 5, scope: !4053)
!4394 = !DILocation(line: 817, column: 16, scope: !4053)
!4395 = !DILocation(line: 818, column: 2, scope: !4053)
!4396 = !DILocation(line: 818, column: 5, scope: !4053)
!4397 = !DILocation(line: 818, column: 15, scope: !4053)
!4398 = !DILocation(line: 820, column: 37, scope: !4053)
!4399 = !DILocation(line: 820, column: 8, scope: !4053)
!4400 = !DILocation(line: 820, column: 6, scope: !4053)
!4401 = !DILocation(line: 821, column: 6, scope: !4402)
!4402 = distinct !DILexicalBlock(scope: !4053, file: !3, line: 821, column: 6)
!4403 = !DILocation(line: 821, column: 6, scope: !4053)
!4404 = !DILocation(line: 822, column: 10, scope: !4402)
!4405 = !DILocation(line: 822, column: 3, scope: !4402)
!4406 = !DILocation(line: 824, column: 9, scope: !4407)
!4407 = distinct !DILexicalBlock(scope: !4053, file: !3, line: 824, column: 2)
!4408 = !DILocation(line: 824, column: 7, scope: !4407)
!4409 = !DILocation(line: 824, column: 14, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !4407, file: !3, line: 824, column: 2)
!4411 = !DILocation(line: 824, column: 18, scope: !4410)
!4412 = !DILocation(line: 824, column: 21, scope: !4410)
!4413 = !DILocation(line: 824, column: 16, scope: !4410)
!4414 = !DILocation(line: 824, column: 2, scope: !4407)
!4415 = !DILocation(line: 825, column: 20, scope: !4410)
!4416 = !DILocation(line: 825, column: 3, scope: !4410)
!4417 = !DILocation(line: 825, column: 6, scope: !4410)
!4418 = !DILocation(line: 825, column: 15, scope: !4410)
!4419 = !DILocation(line: 825, column: 18, scope: !4410)
!4420 = !DILocation(line: 824, column: 30, scope: !4410)
!4421 = !DILocation(line: 824, column: 2, scope: !4410)
!4422 = distinct !{!4422, !4414, !4423}
!4423 = !DILocation(line: 825, column: 43, scope: !4407)
!4424 = !DILocation(line: 827, column: 2, scope: !4053)
!4425 = !DILocation(line: 828, column: 1, scope: !4053)
!4426 = distinct !DISubprogram(name: "mutex_destroy", scope: !1222, file: !1222, line: 103, type: !4427, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !298)
!4427 = !DISubroutineType(types: !4428)
!4428 = !{null, !4429}
!4429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!4430 = !DILocalVariable(name: "lock", arg: 1, scope: !4426, file: !1222, line: 103, type: !4429)
!4431 = !DILocation(line: 103, column: 48, scope: !4426)
!4432 = !DILocation(line: 103, column: 55, scope: !4426)
!4433 = distinct !DISubprogram(name: "usb_set_intfdata", scope: !101, file: !101, line: 268, type: !4434, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !298)
!4434 = !DISubroutineType(types: !4435)
!4435 = !{null, !4063, !195}
!4436 = !DILocalVariable(name: "intf", arg: 1, scope: !4433, file: !101, line: 268, type: !4063)
!4437 = !DILocation(line: 268, column: 59, scope: !4433)
!4438 = !DILocalVariable(name: "data", arg: 2, scope: !4433, file: !101, line: 268, type: !195)
!4439 = !DILocation(line: 268, column: 71, scope: !4433)
!4440 = !DILocation(line: 270, column: 19, scope: !4433)
!4441 = !DILocation(line: 270, column: 25, scope: !4433)
!4442 = !DILocation(line: 270, column: 30, scope: !4433)
!4443 = !DILocation(line: 270, column: 2, scope: !4433)
!4444 = !DILocation(line: 271, column: 1, scope: !4433)
!4445 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !73, file: !73, line: 660, type: !4446, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !298)
!4446 = !DISubroutineType(types: !4447)
!4447 = !{null, !261, !195}
!4448 = !DILocalVariable(name: "dev", arg: 1, scope: !4445, file: !73, line: 660, type: !261)
!4449 = !DILocation(line: 660, column: 51, scope: !4445)
!4450 = !DILocalVariable(name: "data", arg: 2, scope: !4445, file: !73, line: 660, type: !195)
!4451 = !DILocation(line: 660, column: 62, scope: !4445)
!4452 = !DILocation(line: 662, column: 21, scope: !4445)
!4453 = !DILocation(line: 662, column: 2, scope: !4445)
!4454 = !DILocation(line: 662, column: 7, scope: !4445)
!4455 = !DILocation(line: 662, column: 19, scope: !4445)
!4456 = !DILocation(line: 663, column: 1, scope: !4445)
!4457 = distinct !DISubprogram(name: "dt9812_find_endpoints", scope: !3, file: !3, line: 629, type: !4020, scopeLine: 630, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !298)
!4458 = !DILocalVariable(name: "dev", arg: 1, scope: !4457, file: !3, line: 629, type: !251)
!4459 = !DILocation(line: 629, column: 56, scope: !4457)
!4460 = !DILocalVariable(name: "intf", scope: !4457, file: !3, line: 631, type: !4063)
!4461 = !DILocation(line: 631, column: 24, scope: !4457)
!4462 = !DILocation(line: 631, column: 55, scope: !4457)
!4463 = !DILocation(line: 631, column: 31, scope: !4457)
!4464 = !DILocalVariable(name: "host", scope: !4457, file: !3, line: 632, type: !4067)
!4465 = !DILocation(line: 632, column: 29, scope: !4457)
!4466 = !DILocation(line: 632, column: 36, scope: !4457)
!4467 = !DILocation(line: 632, column: 42, scope: !4457)
!4468 = !DILocalVariable(name: "devpriv", scope: !4457, file: !3, line: 633, type: !4226)
!4469 = !DILocation(line: 633, column: 25, scope: !4457)
!4470 = !DILocation(line: 633, column: 35, scope: !4457)
!4471 = !DILocation(line: 633, column: 40, scope: !4457)
!4472 = !DILocalVariable(name: "ep", scope: !4457, file: !3, line: 634, type: !4473)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4474 = !DILocation(line: 634, column: 34, scope: !4457)
!4475 = !DILocalVariable(name: "i", scope: !4457, file: !3, line: 635, type: !250)
!4476 = !DILocation(line: 635, column: 6, scope: !4457)
!4477 = !DILocation(line: 637, column: 6, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4457, file: !3, line: 637, column: 6)
!4479 = !DILocation(line: 637, column: 12, scope: !4478)
!4480 = !DILocation(line: 637, column: 17, scope: !4478)
!4481 = !DILocation(line: 637, column: 31, scope: !4478)
!4482 = !DILocation(line: 637, column: 6, scope: !4457)
!4483 = !DILocation(line: 638, column: 3, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4478, file: !3, line: 637, column: 37)
!4485 = !DILocation(line: 639, column: 3, scope: !4484)
!4486 = !DILocation(line: 642, column: 9, scope: !4487)
!4487 = distinct !DILexicalBlock(scope: !4457, file: !3, line: 642, column: 2)
!4488 = !DILocation(line: 642, column: 7, scope: !4487)
!4489 = !DILocation(line: 642, column: 14, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !4487, file: !3, line: 642, column: 2)
!4491 = !DILocation(line: 642, column: 18, scope: !4490)
!4492 = !DILocation(line: 642, column: 24, scope: !4490)
!4493 = !DILocation(line: 642, column: 29, scope: !4490)
!4494 = !DILocation(line: 642, column: 16, scope: !4490)
!4495 = !DILocation(line: 642, column: 2, scope: !4487)
!4496 = !DILocalVariable(name: "dir", scope: !4497, file: !3, line: 643, type: !250)
!4497 = distinct !DILexicalBlock(scope: !4490, file: !3, line: 642, column: 49)
!4498 = !DILocation(line: 643, column: 7, scope: !4497)
!4499 = !DILocation(line: 645, column: 9, scope: !4497)
!4500 = !DILocation(line: 645, column: 15, scope: !4497)
!4501 = !DILocation(line: 645, column: 24, scope: !4497)
!4502 = !DILocation(line: 645, column: 27, scope: !4497)
!4503 = !DILocation(line: 645, column: 6, scope: !4497)
!4504 = !DILocation(line: 646, column: 11, scope: !4497)
!4505 = !DILocation(line: 646, column: 3, scope: !4497)
!4506 = !DILocation(line: 649, column: 8, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !4497, file: !3, line: 646, column: 14)
!4508 = !DILocation(line: 650, column: 4, scope: !4507)
!4509 = !DILocation(line: 652, column: 8, scope: !4507)
!4510 = !DILocation(line: 653, column: 27, scope: !4507)
!4511 = !DILocation(line: 653, column: 31, scope: !4507)
!4512 = !DILocation(line: 653, column: 4, scope: !4507)
!4513 = !DILocation(line: 653, column: 13, scope: !4507)
!4514 = !DILocation(line: 653, column: 20, scope: !4507)
!4515 = !DILocation(line: 653, column: 25, scope: !4507)
!4516 = !DILocation(line: 654, column: 45, scope: !4507)
!4517 = !DILocation(line: 654, column: 27, scope: !4507)
!4518 = !DILocation(line: 654, column: 4, scope: !4507)
!4519 = !DILocation(line: 654, column: 13, scope: !4507)
!4520 = !DILocation(line: 654, column: 20, scope: !4507)
!4521 = !DILocation(line: 654, column: 25, scope: !4507)
!4522 = !DILocation(line: 655, column: 4, scope: !4507)
!4523 = !DILocation(line: 657, column: 8, scope: !4507)
!4524 = !DILocation(line: 658, column: 27, scope: !4507)
!4525 = !DILocation(line: 658, column: 31, scope: !4507)
!4526 = !DILocation(line: 658, column: 4, scope: !4507)
!4527 = !DILocation(line: 658, column: 13, scope: !4507)
!4528 = !DILocation(line: 658, column: 20, scope: !4507)
!4529 = !DILocation(line: 658, column: 25, scope: !4507)
!4530 = !DILocation(line: 659, column: 45, scope: !4507)
!4531 = !DILocation(line: 659, column: 27, scope: !4507)
!4532 = !DILocation(line: 659, column: 4, scope: !4507)
!4533 = !DILocation(line: 659, column: 13, scope: !4507)
!4534 = !DILocation(line: 659, column: 20, scope: !4507)
!4535 = !DILocation(line: 659, column: 25, scope: !4507)
!4536 = !DILocation(line: 660, column: 4, scope: !4507)
!4537 = !DILocation(line: 663, column: 8, scope: !4507)
!4538 = !DILocation(line: 664, column: 4, scope: !4507)
!4539 = !DILocation(line: 667, column: 8, scope: !4507)
!4540 = !DILocation(line: 668, column: 4, scope: !4507)
!4541 = !DILocation(line: 670, column: 8, scope: !4542)
!4542 = distinct !DILexicalBlock(scope: !4497, file: !3, line: 670, column: 7)
!4543 = !DILocation(line: 670, column: 12, scope: !4542)
!4544 = !DILocation(line: 670, column: 29, scope: !4542)
!4545 = !DILocation(line: 670, column: 46, scope: !4542)
!4546 = !DILocation(line: 670, column: 43, scope: !4542)
!4547 = !DILocation(line: 670, column: 7, scope: !4497)
!4548 = !DILocation(line: 671, column: 4, scope: !4549)
!4549 = distinct !DILexicalBlock(scope: !4542, file: !3, line: 670, column: 51)
!4550 = !DILocation(line: 673, column: 4, scope: !4549)
!4551 = !DILocation(line: 675, column: 2, scope: !4497)
!4552 = !DILocation(line: 642, column: 44, scope: !4490)
!4553 = !DILocation(line: 642, column: 2, scope: !4490)
!4554 = distinct !{!4554, !4495, !4555}
!4555 = !DILocation(line: 675, column: 2, scope: !4487)
!4556 = !DILocation(line: 676, column: 2, scope: !4457)
!4557 = !DILocation(line: 677, column: 1, scope: !4457)
!4558 = distinct !DISubprogram(name: "dt9812_reset_device", scope: !3, file: !3, line: 679, type: !4020, scopeLine: 680, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !298)
!4559 = !DILocalVariable(name: "dev", arg: 1, scope: !4558, file: !3, line: 679, type: !251)
!4560 = !DILocation(line: 679, column: 54, scope: !4558)
!4561 = !DILocalVariable(name: "usb", scope: !4558, file: !3, line: 681, type: !4562)
!4562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4563, size: 64)
!4563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device", file: !101, line: 631, size: 10624, elements: !4564)
!4564 = !{!4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4575, !4576, !4578, !4579, !4607, !4608, !4609, !4626, !4687, !4718, !4719, !4721, !4722, !4724, !4725, !4726, !4727, !4728, !4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736, !4737, !4738, !4739, !4740, !4741, !4742, !4743, !4744, !4745, !4746, !4747, !4748, !4749, !4750, !4751, !4752, !4753, !4754, !4757, !4758, !4759, !4764, !4771, !4772, !4773, !4774}
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "devnum", scope: !4563, file: !101, line: 632, baseType: !250, size: 32)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "devpath", scope: !4563, file: !101, line: 633, baseType: !1782, size: 128, offset: 32)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "route", scope: !4563, file: !101, line: 634, baseType: !465, size: 32, offset: 160)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4563, file: !101, line: 635, baseType: !127, size: 32, offset: 192)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !4563, file: !101, line: 636, baseType: !139, size: 32, offset: 224)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "rx_lanes", scope: !4563, file: !101, line: 637, baseType: !7, size: 32, offset: 256)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "tx_lanes", scope: !4563, file: !101, line: 638, baseType: !7, size: 32, offset: 288)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !4563, file: !101, line: 640, baseType: !4573, size: 64, offset: 320)
!4573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4574, size: 64)
!4574 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_tt", file: !101, line: 474, flags: DIFlagFwdDecl)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "ttport", scope: !4563, file: !101, line: 641, baseType: !250, size: 32, offset: 384)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "toggle", scope: !4563, file: !101, line: 643, baseType: !4577, size: 64, offset: 416)
!4577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !1617)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4563, file: !101, line: 645, baseType: !4562, size: 64, offset: 512)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4563, file: !101, line: 646, baseType: !4580, size: 64, offset: 576)
!4580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4581, size: 64)
!4581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bus", file: !101, line: 424, size: 960, elements: !4582)
!4582 = !{!4583, !4584, !4585, !4586, !4587, !4588, !4589, !4590, !4591, !4592, !4593, !4594, !4595, !4596, !4601, !4602, !4603, !4604, !4605, !4606}
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !4581, file: !101, line: 425, baseType: !261, size: 64)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "sysdev", scope: !4581, file: !101, line: 426, baseType: !261, size: 64, offset: 64)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "busnum", scope: !4581, file: !101, line: 427, baseType: !250, size: 32, offset: 128)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "bus_name", scope: !4581, file: !101, line: 428, baseType: !241, size: 64, offset: 192)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "uses_pio_for_control", scope: !4581, file: !101, line: 429, baseType: !1400, size: 8, offset: 256)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "otg_port", scope: !4581, file: !101, line: 433, baseType: !1400, size: 8, offset: 264)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "is_b_host", scope: !4581, file: !101, line: 434, baseType: !7, size: 1, offset: 272, flags: DIFlagBitField, extraData: i64 272)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "b_hnp_enable", scope: !4581, file: !101, line: 435, baseType: !7, size: 1, offset: 273, flags: DIFlagBitField, extraData: i64 272)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "no_stop_on_short", scope: !4581, file: !101, line: 436, baseType: !7, size: 1, offset: 274, flags: DIFlagBitField, extraData: i64 272)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "no_sg_constraint", scope: !4581, file: !101, line: 441, baseType: !7, size: 1, offset: 275, flags: DIFlagBitField, extraData: i64 272)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "sg_tablesize", scope: !4581, file: !101, line: 442, baseType: !7, size: 32, offset: 288)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next", scope: !4581, file: !101, line: 444, baseType: !250, size: 32, offset: 320)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next_mutex", scope: !4581, file: !101, line: 446, baseType: !1221, size: 192, offset: 384)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "devmap", scope: !4581, file: !101, line: 448, baseType: !4597, size: 128, offset: 576)
!4597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_devmap", file: !101, line: 417, size: 128, elements: !4598)
!4598 = !{!4599}
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "devicemap", scope: !4597, file: !101, line: 418, baseType: !4600, size: 128)
!4600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !374, size: 128, elements: !1617)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "root_hub", scope: !4581, file: !101, line: 449, baseType: !4562, size: 64, offset: 704)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "hs_companion", scope: !4581, file: !101, line: 450, baseType: !4580, size: 64, offset: 768)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_allocated", scope: !4581, file: !101, line: 452, baseType: !250, size: 32, offset: 832)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_int_reqs", scope: !4581, file: !101, line: 459, baseType: !250, size: 32, offset: 864)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_isoc_reqs", scope: !4581, file: !101, line: 460, baseType: !250, size: 32, offset: 896)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "resuming_ports", scope: !4581, file: !101, line: 462, baseType: !7, size: 32, offset: 928)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "ep0", scope: !4563, file: !101, line: 647, baseType: !4087, size: 640, offset: 640)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4563, file: !101, line: 649, baseType: !262, size: 5568, offset: 1280)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !4563, file: !101, line: 651, baseType: !4610, size: 144, offset: 6848)
!4610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_descriptor", file: !128, line: 289, size: 144, elements: !4611)
!4611 = !{!4612, !4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4625}
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4610, file: !128, line: 290, baseType: !1401, size: 8)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4610, file: !128, line: 291, baseType: !1401, size: 8, offset: 8)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "bcdUSB", scope: !4610, file: !128, line: 293, baseType: !199, size: 16, offset: 16)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !4610, file: !128, line: 294, baseType: !1401, size: 8, offset: 32)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !4610, file: !128, line: 295, baseType: !1401, size: 8, offset: 40)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !4610, file: !128, line: 296, baseType: !1401, size: 8, offset: 48)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPacketSize0", scope: !4610, file: !128, line: 297, baseType: !1401, size: 8, offset: 56)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !4610, file: !128, line: 298, baseType: !199, size: 16, offset: 64)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !4610, file: !128, line: 299, baseType: !199, size: 16, offset: 80)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice", scope: !4610, file: !128, line: 300, baseType: !199, size: 16, offset: 96)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "iManufacturer", scope: !4610, file: !128, line: 301, baseType: !1401, size: 8, offset: 112)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "iProduct", scope: !4610, file: !128, line: 302, baseType: !1401, size: 8, offset: 120)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "iSerialNumber", scope: !4610, file: !128, line: 303, baseType: !1401, size: 8, offset: 128)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "bNumConfigurations", scope: !4610, file: !128, line: 304, baseType: !1401, size: 8, offset: 136)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "bos", scope: !4563, file: !101, line: 652, baseType: !4627, size: 64, offset: 7040)
!4627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4628, size: 64)
!4628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_bos", file: !101, line: 396, size: 384, elements: !4629)
!4629 = !{!4630, !4638, !4646, !4658, !4671, !4680}
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4628, file: !101, line: 397, baseType: !4631, size: 64)
!4631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4632, size: 64)
!4632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bos_descriptor", file: !128, line: 844, size: 40, elements: !4633)
!4633 = !{!4634, !4635, !4636, !4637}
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4632, file: !128, line: 845, baseType: !1401, size: 8)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4632, file: !128, line: 846, baseType: !1401, size: 8, offset: 8)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !4632, file: !128, line: 848, baseType: !199, size: 16, offset: 16)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "bNumDeviceCaps", scope: !4632, file: !128, line: 849, baseType: !1401, size: 8, offset: 32)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "ext_cap", scope: !4628, file: !101, line: 400, baseType: !4639, size: 64, offset: 64)
!4639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4640, size: 64)
!4640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ext_cap_descriptor", file: !128, line: 895, size: 56, elements: !4641)
!4641 = !{!4642, !4643, !4644, !4645}
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4640, file: !128, line: 896, baseType: !1401, size: 8)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4640, file: !128, line: 897, baseType: !1401, size: 8, offset: 8)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4640, file: !128, line: 898, baseType: !1401, size: 8, offset: 16)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4640, file: !128, line: 899, baseType: !202, size: 32, offset: 24)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "ss_cap", scope: !4628, file: !101, line: 401, baseType: !4647, size: 64, offset: 128)
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_cap_descriptor", file: !128, line: 917, size: 80, elements: !4649)
!4649 = !{!4650, !4651, !4652, !4653, !4654, !4655, !4656, !4657}
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4648, file: !128, line: 918, baseType: !1401, size: 8)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4648, file: !128, line: 919, baseType: !1401, size: 8, offset: 8)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4648, file: !128, line: 920, baseType: !1401, size: 8, offset: 16)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4648, file: !128, line: 921, baseType: !1401, size: 8, offset: 24)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "wSpeedSupported", scope: !4648, file: !128, line: 923, baseType: !199, size: 16, offset: 32)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionalitySupport", scope: !4648, file: !128, line: 928, baseType: !1401, size: 8, offset: 48)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "bU1devExitLat", scope: !4648, file: !128, line: 929, baseType: !1401, size: 8, offset: 56)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "bU2DevExitLat", scope: !4648, file: !128, line: 930, baseType: !199, size: 16, offset: 64)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_cap", scope: !4628, file: !101, line: 402, baseType: !4659, size: 64, offset: 192)
!4659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4660, size: 64)
!4660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_cap_descriptor", file: !128, line: 955, size: 128, elements: !4661)
!4661 = !{!4662, !4663, !4664, !4665, !4666, !4667, !4668, !4669}
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4660, file: !128, line: 956, baseType: !1401, size: 8)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4660, file: !128, line: 957, baseType: !1401, size: 8, offset: 8)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4660, file: !128, line: 958, baseType: !1401, size: 8, offset: 16)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !4660, file: !128, line: 959, baseType: !1401, size: 8, offset: 24)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4660, file: !128, line: 960, baseType: !202, size: 32, offset: 32)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "wFunctionalitySupport", scope: !4660, file: !128, line: 963, baseType: !199, size: 16, offset: 64)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "wReserved", scope: !4660, file: !128, line: 967, baseType: !199, size: 16, offset: 80)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "bmSublinkSpeedAttr", scope: !4660, file: !128, line: 968, baseType: !4670, size: 32, offset: 96)
!4670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 32, elements: !1419)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "ss_id", scope: !4628, file: !101, line: 403, baseType: !4672, size: 64, offset: 256)
!4672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4673, size: 64)
!4673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_container_id_descriptor", file: !128, line: 940, size: 160, elements: !4674)
!4674 = !{!4675, !4676, !4677, !4678, !4679}
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4673, file: !128, line: 941, baseType: !1401, size: 8)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4673, file: !128, line: 942, baseType: !1401, size: 8, offset: 8)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4673, file: !128, line: 943, baseType: !1401, size: 8, offset: 16)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !4673, file: !128, line: 944, baseType: !1401, size: 8, offset: 24)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "ContainerID", scope: !4673, file: !128, line: 945, baseType: !2755, size: 128, offset: 32)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "ptm_cap", scope: !4628, file: !101, line: 404, baseType: !4681, size: 64, offset: 320)
!4681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4682, size: 64)
!4682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ptm_cap_descriptor", file: !128, line: 1080, size: 24, elements: !4683)
!4683 = !{!4684, !4685, !4686}
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4682, file: !128, line: 1081, baseType: !1401, size: 8)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4682, file: !128, line: 1082, baseType: !1401, size: 8, offset: 8)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4682, file: !128, line: 1083, baseType: !1401, size: 8, offset: 16)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4563, file: !101, line: 653, baseType: !4688, size: 64, offset: 7104)
!4688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4689, size: 64)
!4689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_config", file: !101, line: 374, size: 5440, elements: !4690)
!4690 = !{!4691, !4702, !4703, !4705, !4707, !4716, !4717}
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4689, file: !101, line: 375, baseType: !4692, size: 72)
!4692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_config_descriptor", file: !128, line: 349, size: 72, elements: !4693)
!4693 = !{!4694, !4695, !4696, !4697, !4698, !4699, !4700, !4701}
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4692, file: !128, line: 350, baseType: !1401, size: 8)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4692, file: !128, line: 351, baseType: !1401, size: 8, offset: 8)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !4692, file: !128, line: 353, baseType: !199, size: 16, offset: 16)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "bNumInterfaces", scope: !4692, file: !128, line: 354, baseType: !1401, size: 8, offset: 32)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "bConfigurationValue", scope: !4692, file: !128, line: 355, baseType: !1401, size: 8, offset: 40)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "iConfiguration", scope: !4692, file: !128, line: 356, baseType: !1401, size: 8, offset: 48)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4692, file: !128, line: 357, baseType: !1401, size: 8, offset: 56)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPower", scope: !4692, file: !128, line: 358, baseType: !1401, size: 8, offset: 64)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4689, file: !101, line: 377, baseType: !325, size: 64, offset: 128)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !4689, file: !101, line: 381, baseType: !4704, size: 1024, offset: 192)
!4704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4128, size: 1024, elements: !1783)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !4689, file: !101, line: 385, baseType: !4706, size: 2048, offset: 1216)
!4706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4063, size: 2048, elements: !2278)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "intf_cache", scope: !4689, file: !101, line: 389, baseType: !4708, size: 2048, offset: 3264)
!4708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4709, size: 2048, elements: !2278)
!4709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4710, size: 64)
!4710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_cache", file: !101, line: 322, size: 64, elements: !4711)
!4711 = !{!4712, !4713, !4714}
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !4710, file: !101, line: 323, baseType: !7, size: 32)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4710, file: !101, line: 324, baseType: !3410, size: 32, offset: 32)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !4710, file: !101, line: 328, baseType: !4715, offset: 64)
!4715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4068, elements: !2379)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4689, file: !101, line: 391, baseType: !4084, size: 64, offset: 5312)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !4689, file: !101, line: 392, baseType: !250, size: 32, offset: 5376)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "actconfig", scope: !4563, file: !101, line: 655, baseType: !4688, size: 64, offset: 7168)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "ep_in", scope: !4563, file: !101, line: 656, baseType: !4720, size: 1024, offset: 7232)
!4720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4086, size: 1024, elements: !1783)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "ep_out", scope: !4563, file: !101, line: 657, baseType: !4720, size: 1024, offset: 8256)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "rawdescriptors", scope: !4563, file: !101, line: 659, baseType: !4723, size: 64, offset: 9280)
!4723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mA", scope: !4563, file: !101, line: 661, baseType: !198, size: 16, offset: 9344)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "portnum", scope: !4563, file: !101, line: 662, baseType: !1400, size: 8, offset: 9360)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4563, file: !101, line: 663, baseType: !1400, size: 8, offset: 9368)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "devaddr", scope: !4563, file: !101, line: 664, baseType: !1400, size: 8, offset: 9376)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "can_submit", scope: !4563, file: !101, line: 666, baseType: !7, size: 1, offset: 9384, flags: DIFlagBitField, extraData: i64 9384)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "persist_enabled", scope: !4563, file: !101, line: 667, baseType: !7, size: 1, offset: 9385, flags: DIFlagBitField, extraData: i64 9384)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "have_langid", scope: !4563, file: !101, line: 668, baseType: !7, size: 1, offset: 9386, flags: DIFlagBitField, extraData: i64 9384)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !4563, file: !101, line: 669, baseType: !7, size: 1, offset: 9387, flags: DIFlagBitField, extraData: i64 9384)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !4563, file: !101, line: 670, baseType: !7, size: 1, offset: 9388, flags: DIFlagBitField, extraData: i64 9384)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "wusb", scope: !4563, file: !101, line: 671, baseType: !7, size: 1, offset: 9389, flags: DIFlagBitField, extraData: i64 9384)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_capable", scope: !4563, file: !101, line: 672, baseType: !7, size: 1, offset: 9390, flags: DIFlagBitField, extraData: i64 9384)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_capable", scope: !4563, file: !101, line: 673, baseType: !7, size: 1, offset: 9391, flags: DIFlagBitField, extraData: i64 9384)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_besl_capable", scope: !4563, file: !101, line: 674, baseType: !7, size: 1, offset: 9392, flags: DIFlagBitField, extraData: i64 9384)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_enabled", scope: !4563, file: !101, line: 675, baseType: !7, size: 1, offset: 9393, flags: DIFlagBitField, extraData: i64 9384)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_allowed", scope: !4563, file: !101, line: 676, baseType: !7, size: 1, offset: 9394, flags: DIFlagBitField, extraData: i64 9384)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u1_enabled", scope: !4563, file: !101, line: 677, baseType: !7, size: 1, offset: 9395, flags: DIFlagBitField, extraData: i64 9384)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u2_enabled", scope: !4563, file: !101, line: 678, baseType: !7, size: 1, offset: 9396, flags: DIFlagBitField, extraData: i64 9384)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "string_langid", scope: !4563, file: !101, line: 679, baseType: !250, size: 32, offset: 9408)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4563, file: !101, line: 682, baseType: !325, size: 64, offset: 9472)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !4563, file: !101, line: 683, baseType: !325, size: 64, offset: 9536)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !4563, file: !101, line: 684, baseType: !325, size: 64, offset: 9600)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !4563, file: !101, line: 686, baseType: !270, size: 128, offset: 9664)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "maxchild", scope: !4563, file: !101, line: 688, baseType: !250, size: 32, offset: 9792)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !4563, file: !101, line: 690, baseType: !465, size: 32, offset: 9824)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "urbnum", scope: !4563, file: !101, line: 691, baseType: !796, size: 32, offset: 9856)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "active_duration", scope: !4563, file: !101, line: 693, baseType: !374, size: 64, offset: 9920)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !4563, file: !101, line: 696, baseType: !374, size: 64, offset: 9984)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "do_remote_wakeup", scope: !4563, file: !101, line: 698, baseType: !7, size: 1, offset: 10048, flags: DIFlagBitField, extraData: i64 10048)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !4563, file: !101, line: 699, baseType: !7, size: 1, offset: 10049, flags: DIFlagBitField, extraData: i64 10048)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "port_is_suspended", scope: !4563, file: !101, line: 700, baseType: !7, size: 1, offset: 10050, flags: DIFlagBitField, extraData: i64 10048)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "wusb_dev", scope: !4563, file: !101, line: 702, baseType: !4755, size: 64, offset: 10112)
!4755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4756, size: 64)
!4756 = !DICompositeType(tag: DW_TAG_structure_type, name: "wusb_dev", file: !101, line: 28, flags: DIFlagFwdDecl)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "slot_id", scope: !4563, file: !101, line: 703, baseType: !250, size: 32, offset: 10176)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4563, file: !101, line: 704, baseType: !148, size: 32, offset: 10208)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "l1_params", scope: !4563, file: !101, line: 705, baseType: !4760, size: 64, offset: 10240)
!4760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb2_lpm_parameters", file: !101, line: 502, size: 64, elements: !4761)
!4761 = !{!4762, !4763}
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "besl", scope: !4760, file: !101, line: 506, baseType: !7, size: 32)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4760, file: !101, line: 512, baseType: !250, size: 32, offset: 32)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "u1_params", scope: !4563, file: !101, line: 706, baseType: !4765, size: 128, offset: 10304)
!4765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb3_lpm_parameters", file: !101, line: 522, size: 128, elements: !4766)
!4766 = !{!4767, !4768, !4769, !4770}
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "mel", scope: !4765, file: !101, line: 529, baseType: !7, size: 32)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !4765, file: !101, line: 535, baseType: !7, size: 32, offset: 32)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "sel", scope: !4765, file: !101, line: 545, baseType: !7, size: 32, offset: 64)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4765, file: !101, line: 551, baseType: !250, size: 32, offset: 96)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "u2_params", scope: !4563, file: !101, line: 707, baseType: !4765, size: 128, offset: 10432)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_disable_count", scope: !4563, file: !101, line: 708, baseType: !7, size: 32, offset: 10560)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "hub_delay", scope: !4563, file: !101, line: 710, baseType: !908, size: 16, offset: 10592)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "use_generic_driver", scope: !4563, file: !101, line: 711, baseType: !7, size: 1, offset: 10608, flags: DIFlagBitField, extraData: i64 10608)
!4775 = !DILocation(line: 681, column: 21, scope: !4558)
!4776 = !DILocation(line: 681, column: 45, scope: !4558)
!4777 = !DILocation(line: 681, column: 27, scope: !4558)
!4778 = !DILocalVariable(name: "devpriv", scope: !4558, file: !3, line: 682, type: !4226)
!4779 = !DILocation(line: 682, column: 25, scope: !4558)
!4780 = !DILocation(line: 682, column: 35, scope: !4558)
!4781 = !DILocation(line: 682, column: 40, scope: !4558)
!4782 = !DILocalVariable(name: "serial", scope: !4558, file: !3, line: 683, type: !465)
!4783 = !DILocation(line: 683, column: 6, scope: !4558)
!4784 = !DILocalVariable(name: "vendor", scope: !4558, file: !3, line: 684, type: !908)
!4785 = !DILocation(line: 684, column: 6, scope: !4558)
!4786 = !DILocalVariable(name: "product", scope: !4558, file: !3, line: 685, type: !908)
!4787 = !DILocation(line: 685, column: 6, scope: !4558)
!4788 = !DILocalVariable(name: "tmp8", scope: !4558, file: !3, line: 686, type: !1400)
!4789 = !DILocation(line: 686, column: 5, scope: !4558)
!4790 = !DILocalVariable(name: "tmp16", scope: !4558, file: !3, line: 687, type: !199)
!4791 = !DILocation(line: 687, column: 9, scope: !4558)
!4792 = !DILocalVariable(name: "tmp32", scope: !4558, file: !3, line: 688, type: !202)
!4793 = !DILocation(line: 688, column: 9, scope: !4558)
!4794 = !DILocalVariable(name: "ret", scope: !4558, file: !3, line: 689, type: !250)
!4795 = !DILocation(line: 689, column: 6, scope: !4558)
!4796 = !DILocalVariable(name: "i", scope: !4558, file: !3, line: 690, type: !250)
!4797 = !DILocation(line: 690, column: 6, scope: !4558)
!4798 = !DILocation(line: 692, column: 25, scope: !4558)
!4799 = !DILocation(line: 692, column: 8, scope: !4558)
!4800 = !DILocation(line: 692, column: 6, scope: !4558)
!4801 = !DILocation(line: 693, column: 6, scope: !4802)
!4802 = distinct !DILexicalBlock(scope: !4558, file: !3, line: 693, column: 6)
!4803 = !DILocation(line: 693, column: 6, scope: !4558)
!4804 = !DILocation(line: 698, column: 27, scope: !4805)
!4805 = distinct !DILexicalBlock(scope: !4802, file: !3, line: 693, column: 11)
!4806 = !DILocation(line: 698, column: 3, scope: !4805)
!4807 = !DILocation(line: 699, column: 10, scope: !4808)
!4808 = distinct !DILexicalBlock(scope: !4805, file: !3, line: 699, column: 3)
!4809 = !DILocation(line: 699, column: 8, scope: !4808)
!4810 = !DILocation(line: 699, column: 15, scope: !4811)
!4811 = distinct !DILexicalBlock(scope: !4808, file: !3, line: 699, column: 3)
!4812 = !DILocation(line: 699, column: 17, scope: !4811)
!4813 = !DILocation(line: 699, column: 3, scope: !4808)
!4814 = !DILocation(line: 700, column: 27, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !4811, file: !3, line: 699, column: 28)
!4816 = !DILocation(line: 700, column: 10, scope: !4815)
!4817 = !DILocation(line: 700, column: 8, scope: !4815)
!4818 = !DILocation(line: 701, column: 8, scope: !4819)
!4819 = distinct !DILexicalBlock(scope: !4815, file: !3, line: 701, column: 8)
!4820 = !DILocation(line: 701, column: 12, scope: !4819)
!4821 = !DILocation(line: 701, column: 8, scope: !4815)
!4822 = !DILocation(line: 702, column: 5, scope: !4819)
!4823 = !DILocation(line: 703, column: 3, scope: !4815)
!4824 = !DILocation(line: 699, column: 24, scope: !4811)
!4825 = !DILocation(line: 699, column: 3, scope: !4811)
!4826 = distinct !{!4826, !4813, !4827}
!4827 = !DILocation(line: 703, column: 3, scope: !4808)
!4828 = !DILocation(line: 704, column: 7, scope: !4829)
!4829 = distinct !DILexicalBlock(scope: !4805, file: !3, line: 704, column: 7)
!4830 = !DILocation(line: 704, column: 7, scope: !4805)
!4831 = !DILocation(line: 705, column: 4, scope: !4832)
!4832 = distinct !DILexicalBlock(scope: !4829, file: !3, line: 704, column: 12)
!4833 = !DILocation(line: 707, column: 11, scope: !4832)
!4834 = !DILocation(line: 707, column: 4, scope: !4832)
!4835 = !DILocation(line: 709, column: 2, scope: !4805)
!4836 = !DILocation(line: 711, column: 25, scope: !4558)
!4837 = !DILocation(line: 711, column: 33, scope: !4558)
!4838 = !DILocation(line: 711, column: 8, scope: !4558)
!4839 = !DILocation(line: 711, column: 6, scope: !4558)
!4840 = !DILocation(line: 712, column: 6, scope: !4841)
!4841 = distinct !DILexicalBlock(scope: !4558, file: !3, line: 712, column: 6)
!4842 = !DILocation(line: 712, column: 6, scope: !4558)
!4843 = !DILocation(line: 713, column: 3, scope: !4844)
!4844 = distinct !DILexicalBlock(scope: !4841, file: !3, line: 712, column: 11)
!4845 = !DILocation(line: 714, column: 10, scope: !4844)
!4846 = !DILocation(line: 714, column: 3, scope: !4844)
!4847 = !DILocation(line: 716, column: 11, scope: !4558)
!4848 = !DILocation(line: 716, column: 9, scope: !4558)
!4849 = !DILocation(line: 718, column: 25, scope: !4558)
!4850 = !DILocation(line: 718, column: 33, scope: !4558)
!4851 = !DILocation(line: 718, column: 8, scope: !4558)
!4852 = !DILocation(line: 718, column: 6, scope: !4558)
!4853 = !DILocation(line: 719, column: 6, scope: !4854)
!4854 = distinct !DILexicalBlock(scope: !4558, file: !3, line: 719, column: 6)
!4855 = !DILocation(line: 719, column: 6, scope: !4558)
!4856 = !DILocation(line: 720, column: 3, scope: !4857)
!4857 = distinct !DILexicalBlock(scope: !4854, file: !3, line: 719, column: 11)
!4858 = !DILocation(line: 721, column: 10, scope: !4857)
!4859 = !DILocation(line: 721, column: 3, scope: !4857)
!4860 = !DILocation(line: 723, column: 12, scope: !4558)
!4861 = !DILocation(line: 723, column: 10, scope: !4558)
!4862 = !DILocation(line: 725, column: 25, scope: !4558)
!4863 = !DILocation(line: 725, column: 33, scope: !4558)
!4864 = !DILocation(line: 725, column: 8, scope: !4558)
!4865 = !DILocation(line: 725, column: 6, scope: !4558)
!4866 = !DILocation(line: 726, column: 6, scope: !4867)
!4867 = distinct !DILexicalBlock(scope: !4558, file: !3, line: 726, column: 6)
!4868 = !DILocation(line: 726, column: 6, scope: !4558)
!4869 = !DILocation(line: 727, column: 3, scope: !4870)
!4870 = distinct !DILexicalBlock(scope: !4867, file: !3, line: 726, column: 11)
!4871 = !DILocation(line: 728, column: 10, scope: !4870)
!4872 = !DILocation(line: 728, column: 3, scope: !4870)
!4873 = !DILocation(line: 730, column: 20, scope: !4558)
!4874 = !DILocation(line: 730, column: 2, scope: !4558)
!4875 = !DILocation(line: 730, column: 11, scope: !4558)
!4876 = !DILocation(line: 730, column: 18, scope: !4558)
!4877 = !DILocation(line: 732, column: 25, scope: !4558)
!4878 = !DILocation(line: 732, column: 33, scope: !4558)
!4879 = !DILocation(line: 732, column: 8, scope: !4558)
!4880 = !DILocation(line: 732, column: 6, scope: !4558)
!4881 = !DILocation(line: 733, column: 6, scope: !4882)
!4882 = distinct !DILexicalBlock(scope: !4558, file: !3, line: 733, column: 6)
!4883 = !DILocation(line: 733, column: 6, scope: !4558)
!4884 = !DILocation(line: 734, column: 3, scope: !4885)
!4885 = distinct !DILexicalBlock(scope: !4882, file: !3, line: 733, column: 11)
!4886 = !DILocation(line: 735, column: 10, scope: !4885)
!4887 = !DILocation(line: 735, column: 3, scope: !4885)
!4888 = !DILocation(line: 737, column: 11, scope: !4558)
!4889 = !DILocation(line: 737, column: 9, scope: !4558)
!4890 = !DILocation(line: 740, column: 2, scope: !4558)
!4891 = !DILocation(line: 743, column: 6, scope: !4892)
!4892 = distinct !DILexicalBlock(scope: !4558, file: !3, line: 743, column: 6)
!4893 = !DILocation(line: 743, column: 15, scope: !4892)
!4894 = !DILocation(line: 743, column: 22, scope: !4892)
!4895 = !DILocation(line: 743, column: 48, scope: !4892)
!4896 = !DILocation(line: 744, column: 6, scope: !4892)
!4897 = !DILocation(line: 744, column: 15, scope: !4892)
!4898 = !DILocation(line: 744, column: 22, scope: !4892)
!4899 = !DILocation(line: 743, column: 6, scope: !4558)
!4900 = !DILocation(line: 745, column: 3, scope: !4901)
!4901 = distinct !DILexicalBlock(scope: !4892, file: !3, line: 744, column: 51)
!4902 = !DILocation(line: 746, column: 3, scope: !4901)
!4903 = !DILocation(line: 749, column: 2, scope: !4558)
!4904 = !DILocation(line: 750, column: 1, scope: !4558)
!4905 = distinct !DISubprogram(name: "dt9812_di_insn_bits", scope: !3, file: !3, line: 542, type: !3975, scopeLine: 546, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !298)
!4906 = !DILocalVariable(name: "dev", arg: 1, scope: !4905, file: !3, line: 542, type: !251)
!4907 = !DILocation(line: 542, column: 54, scope: !4905)
!4908 = !DILocalVariable(name: "s", arg: 2, scope: !4905, file: !3, line: 543, type: !3878)
!4909 = !DILocation(line: 543, column: 36, scope: !4905)
!4910 = !DILocalVariable(name: "insn", arg: 3, scope: !4905, file: !3, line: 544, type: !3977)
!4911 = !DILocation(line: 544, column: 31, scope: !4905)
!4912 = !DILocalVariable(name: "data", arg: 4, scope: !4905, file: !3, line: 545, type: !2731)
!4913 = !DILocation(line: 545, column: 25, scope: !4905)
!4914 = !DILocalVariable(name: "bits", scope: !4905, file: !3, line: 547, type: !1400)
!4915 = !DILocation(line: 547, column: 5, scope: !4905)
!4916 = !DILocalVariable(name: "ret", scope: !4905, file: !3, line: 548, type: !250)
!4917 = !DILocation(line: 548, column: 6, scope: !4905)
!4918 = !DILocation(line: 550, column: 26, scope: !4905)
!4919 = !DILocation(line: 550, column: 8, scope: !4905)
!4920 = !DILocation(line: 550, column: 6, scope: !4905)
!4921 = !DILocation(line: 551, column: 6, scope: !4922)
!4922 = distinct !DILexicalBlock(scope: !4905, file: !3, line: 551, column: 6)
!4923 = !DILocation(line: 551, column: 6, scope: !4905)
!4924 = !DILocation(line: 552, column: 10, scope: !4922)
!4925 = !DILocation(line: 552, column: 3, scope: !4922)
!4926 = !DILocation(line: 554, column: 12, scope: !4905)
!4927 = !DILocation(line: 554, column: 2, scope: !4905)
!4928 = !DILocation(line: 554, column: 10, scope: !4905)
!4929 = !DILocation(line: 556, column: 9, scope: !4905)
!4930 = !DILocation(line: 556, column: 15, scope: !4905)
!4931 = !DILocation(line: 556, column: 2, scope: !4905)
!4932 = !DILocation(line: 557, column: 1, scope: !4905)
!4933 = distinct !DISubprogram(name: "dt9812_do_insn_bits", scope: !3, file: !3, line: 559, type: !3975, scopeLine: 563, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !298)
!4934 = !DILocalVariable(name: "dev", arg: 1, scope: !4933, file: !3, line: 559, type: !251)
!4935 = !DILocation(line: 559, column: 54, scope: !4933)
!4936 = !DILocalVariable(name: "s", arg: 2, scope: !4933, file: !3, line: 560, type: !3878)
!4937 = !DILocation(line: 560, column: 36, scope: !4933)
!4938 = !DILocalVariable(name: "insn", arg: 3, scope: !4933, file: !3, line: 561, type: !3977)
!4939 = !DILocation(line: 561, column: 31, scope: !4933)
!4940 = !DILocalVariable(name: "data", arg: 4, scope: !4933, file: !3, line: 562, type: !2731)
!4941 = !DILocation(line: 562, column: 25, scope: !4933)
!4942 = !DILocation(line: 564, column: 30, scope: !4943)
!4943 = distinct !DILexicalBlock(scope: !4933, file: !3, line: 564, column: 6)
!4944 = !DILocation(line: 564, column: 33, scope: !4943)
!4945 = !DILocation(line: 564, column: 6, scope: !4943)
!4946 = !DILocation(line: 564, column: 6, scope: !4933)
!4947 = !DILocation(line: 565, column: 22, scope: !4943)
!4948 = !DILocation(line: 565, column: 27, scope: !4943)
!4949 = !DILocation(line: 565, column: 30, scope: !4943)
!4950 = !DILocation(line: 565, column: 3, scope: !4943)
!4951 = !DILocation(line: 567, column: 12, scope: !4933)
!4952 = !DILocation(line: 567, column: 15, scope: !4933)
!4953 = !DILocation(line: 567, column: 2, scope: !4933)
!4954 = !DILocation(line: 567, column: 10, scope: !4933)
!4955 = !DILocation(line: 569, column: 9, scope: !4933)
!4956 = !DILocation(line: 569, column: 15, scope: !4933)
!4957 = !DILocation(line: 569, column: 2, scope: !4933)
!4958 = distinct !DISubprogram(name: "dt9812_ai_insn_read", scope: !3, file: !3, line: 572, type: !3975, scopeLine: 576, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !298)
!4959 = !DILocalVariable(name: "dev", arg: 1, scope: !4958, file: !3, line: 572, type: !251)
!4960 = !DILocation(line: 572, column: 54, scope: !4958)
!4961 = !DILocalVariable(name: "s", arg: 2, scope: !4958, file: !3, line: 573, type: !3878)
!4962 = !DILocation(line: 573, column: 36, scope: !4958)
!4963 = !DILocalVariable(name: "insn", arg: 3, scope: !4958, file: !3, line: 574, type: !3977)
!4964 = !DILocation(line: 574, column: 31, scope: !4958)
!4965 = !DILocalVariable(name: "data", arg: 4, scope: !4958, file: !3, line: 575, type: !2731)
!4966 = !DILocation(line: 575, column: 25, scope: !4958)
!4967 = !DILocalVariable(name: "chan", scope: !4958, file: !3, line: 577, type: !7)
!4968 = !DILocation(line: 577, column: 15, scope: !4958)
!4969 = !DILocation(line: 577, column: 22, scope: !4958)
!4970 = !DILocalVariable(name: "val", scope: !4958, file: !3, line: 578, type: !908)
!4971 = !DILocation(line: 578, column: 6, scope: !4958)
!4972 = !DILocalVariable(name: "ret", scope: !4958, file: !3, line: 579, type: !250)
!4973 = !DILocation(line: 579, column: 6, scope: !4958)
!4974 = !DILocalVariable(name: "i", scope: !4958, file: !3, line: 580, type: !250)
!4975 = !DILocation(line: 580, column: 6, scope: !4958)
!4976 = !DILocation(line: 582, column: 9, scope: !4977)
!4977 = distinct !DILexicalBlock(scope: !4958, file: !3, line: 582, column: 2)
!4978 = !DILocation(line: 582, column: 7, scope: !4977)
!4979 = !DILocation(line: 582, column: 14, scope: !4980)
!4980 = distinct !DILexicalBlock(scope: !4977, file: !3, line: 582, column: 2)
!4981 = !DILocation(line: 582, column: 18, scope: !4980)
!4982 = !DILocation(line: 582, column: 24, scope: !4980)
!4983 = !DILocation(line: 582, column: 16, scope: !4980)
!4984 = !DILocation(line: 582, column: 2, scope: !4977)
!4985 = !DILocation(line: 583, column: 26, scope: !4986)
!4986 = distinct !DILexicalBlock(scope: !4980, file: !3, line: 582, column: 32)
!4987 = !DILocation(line: 583, column: 31, scope: !4986)
!4988 = !DILocation(line: 583, column: 9, scope: !4986)
!4989 = !DILocation(line: 583, column: 7, scope: !4986)
!4990 = !DILocation(line: 584, column: 7, scope: !4991)
!4991 = distinct !DILexicalBlock(scope: !4986, file: !3, line: 584, column: 7)
!4992 = !DILocation(line: 584, column: 7, scope: !4986)
!4993 = !DILocation(line: 585, column: 11, scope: !4991)
!4994 = !DILocation(line: 585, column: 4, scope: !4991)
!4995 = !DILocation(line: 586, column: 13, scope: !4986)
!4996 = !DILocation(line: 586, column: 3, scope: !4986)
!4997 = !DILocation(line: 586, column: 8, scope: !4986)
!4998 = !DILocation(line: 586, column: 11, scope: !4986)
!4999 = !DILocation(line: 587, column: 2, scope: !4986)
!5000 = !DILocation(line: 582, column: 28, scope: !4980)
!5001 = !DILocation(line: 582, column: 2, scope: !4980)
!5002 = distinct !{!5002, !4984, !5003}
!5003 = !DILocation(line: 587, column: 2, scope: !4977)
!5004 = !DILocation(line: 589, column: 9, scope: !4958)
!5005 = !DILocation(line: 589, column: 15, scope: !4958)
!5006 = !DILocation(line: 589, column: 2, scope: !4958)
!5007 = !DILocation(line: 590, column: 1, scope: !4958)
!5008 = distinct !DISubprogram(name: "dt9812_ao_insn_write", scope: !3, file: !3, line: 607, type: !3975, scopeLine: 611, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !298)
!5009 = !DILocalVariable(name: "dev", arg: 1, scope: !5008, file: !3, line: 607, type: !251)
!5010 = !DILocation(line: 607, column: 55, scope: !5008)
!5011 = !DILocalVariable(name: "s", arg: 2, scope: !5008, file: !3, line: 608, type: !3878)
!5012 = !DILocation(line: 608, column: 30, scope: !5008)
!5013 = !DILocalVariable(name: "insn", arg: 3, scope: !5008, file: !3, line: 609, type: !3977)
!5014 = !DILocation(line: 609, column: 25, scope: !5008)
!5015 = !DILocalVariable(name: "data", arg: 4, scope: !5008, file: !3, line: 610, type: !2731)
!5016 = !DILocation(line: 610, column: 19, scope: !5008)
!5017 = !DILocalVariable(name: "chan", scope: !5008, file: !3, line: 612, type: !7)
!5018 = !DILocation(line: 612, column: 15, scope: !5008)
!5019 = !DILocation(line: 612, column: 22, scope: !5008)
!5020 = !DILocalVariable(name: "i", scope: !5008, file: !3, line: 613, type: !250)
!5021 = !DILocation(line: 613, column: 6, scope: !5008)
!5022 = !DILocation(line: 615, column: 9, scope: !5023)
!5023 = distinct !DILexicalBlock(scope: !5008, file: !3, line: 615, column: 2)
!5024 = !DILocation(line: 615, column: 7, scope: !5023)
!5025 = !DILocation(line: 615, column: 14, scope: !5026)
!5026 = distinct !DILexicalBlock(scope: !5023, file: !3, line: 615, column: 2)
!5027 = !DILocation(line: 615, column: 18, scope: !5026)
!5028 = !DILocation(line: 615, column: 24, scope: !5026)
!5029 = !DILocation(line: 615, column: 16, scope: !5026)
!5030 = !DILocation(line: 615, column: 2, scope: !5023)
!5031 = !DILocalVariable(name: "val", scope: !5032, file: !3, line: 616, type: !7)
!5032 = distinct !DILexicalBlock(scope: !5026, file: !3, line: 615, column: 32)
!5033 = !DILocation(line: 616, column: 16, scope: !5032)
!5034 = !DILocation(line: 616, column: 22, scope: !5032)
!5035 = !DILocation(line: 616, column: 27, scope: !5032)
!5036 = !DILocalVariable(name: "ret", scope: !5032, file: !3, line: 617, type: !250)
!5037 = !DILocation(line: 617, column: 7, scope: !5032)
!5038 = !DILocation(line: 619, column: 27, scope: !5032)
!5039 = !DILocation(line: 619, column: 32, scope: !5032)
!5040 = !DILocation(line: 619, column: 38, scope: !5032)
!5041 = !DILocation(line: 619, column: 9, scope: !5032)
!5042 = !DILocation(line: 619, column: 7, scope: !5032)
!5043 = !DILocation(line: 620, column: 7, scope: !5044)
!5044 = distinct !DILexicalBlock(scope: !5032, file: !3, line: 620, column: 7)
!5045 = !DILocation(line: 620, column: 7, scope: !5032)
!5046 = !DILocation(line: 621, column: 11, scope: !5044)
!5047 = !DILocation(line: 621, column: 4, scope: !5044)
!5048 = !DILocation(line: 623, column: 23, scope: !5032)
!5049 = !DILocation(line: 623, column: 3, scope: !5032)
!5050 = !DILocation(line: 623, column: 6, scope: !5032)
!5051 = !DILocation(line: 623, column: 15, scope: !5032)
!5052 = !DILocation(line: 623, column: 21, scope: !5032)
!5053 = !DILocation(line: 624, column: 2, scope: !5032)
!5054 = !DILocation(line: 615, column: 28, scope: !5026)
!5055 = !DILocation(line: 615, column: 2, scope: !5026)
!5056 = distinct !{!5056, !5030, !5057}
!5057 = !DILocation(line: 624, column: 2, scope: !5023)
!5058 = !DILocation(line: 626, column: 9, scope: !5008)
!5059 = !DILocation(line: 626, column: 15, scope: !5008)
!5060 = !DILocation(line: 626, column: 2, scope: !5008)
!5061 = !DILocation(line: 627, column: 1, scope: !5008)
!5062 = distinct !DISubprogram(name: "dt9812_ao_insn_read", scope: !3, file: !3, line: 592, type: !3975, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !298)
!5063 = !DILocalVariable(name: "dev", arg: 1, scope: !5062, file: !3, line: 592, type: !251)
!5064 = !DILocation(line: 592, column: 54, scope: !5062)
!5065 = !DILocalVariable(name: "s", arg: 2, scope: !5062, file: !3, line: 593, type: !3878)
!5066 = !DILocation(line: 593, column: 36, scope: !5062)
!5067 = !DILocalVariable(name: "insn", arg: 3, scope: !5062, file: !3, line: 594, type: !3977)
!5068 = !DILocation(line: 594, column: 31, scope: !5062)
!5069 = !DILocalVariable(name: "data", arg: 4, scope: !5062, file: !3, line: 595, type: !2731)
!5070 = !DILocation(line: 595, column: 25, scope: !5062)
!5071 = !DILocalVariable(name: "devpriv", scope: !5062, file: !3, line: 597, type: !4226)
!5072 = !DILocation(line: 597, column: 25, scope: !5062)
!5073 = !DILocation(line: 597, column: 35, scope: !5062)
!5074 = !DILocation(line: 597, column: 40, scope: !5062)
!5075 = !DILocalVariable(name: "ret", scope: !5062, file: !3, line: 598, type: !250)
!5076 = !DILocation(line: 598, column: 6, scope: !5062)
!5077 = !DILocation(line: 600, column: 14, scope: !5062)
!5078 = !DILocation(line: 600, column: 23, scope: !5062)
!5079 = !DILocation(line: 600, column: 2, scope: !5062)
!5080 = !DILocation(line: 601, column: 34, scope: !5062)
!5081 = !DILocation(line: 601, column: 39, scope: !5062)
!5082 = !DILocation(line: 601, column: 42, scope: !5062)
!5083 = !DILocation(line: 601, column: 48, scope: !5062)
!5084 = !DILocation(line: 601, column: 8, scope: !5062)
!5085 = !DILocation(line: 601, column: 6, scope: !5062)
!5086 = !DILocation(line: 602, column: 16, scope: !5062)
!5087 = !DILocation(line: 602, column: 25, scope: !5062)
!5088 = !DILocation(line: 602, column: 2, scope: !5062)
!5089 = !DILocation(line: 604, column: 9, scope: !5062)
!5090 = !DILocation(line: 604, column: 2, scope: !5062)
!5091 = distinct !DISubprogram(name: "usb_endpoint_maxp", scope: !128, file: !128, line: 647, type: !5092, scopeLine: 648, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !298)
!5092 = !DISubroutineType(types: !5093)
!5093 = !{!250, !5094}
!5094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5095, size: 64)
!5095 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4090)
!5096 = !DILocalVariable(name: "epd", arg: 1, scope: !5091, file: !128, line: 647, type: !5094)
!5097 = !DILocation(line: 647, column: 75, scope: !5091)
!5098 = !DILocation(line: 649, column: 9, scope: !5091)
!5099 = !DILocation(line: 649, column: 44, scope: !5091)
!5100 = !DILocation(line: 649, column: 2, scope: !5091)
!5101 = distinct !DISubprogram(name: "dt9812_read_info", scope: !3, file: !3, line: 235, type: !5102, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !298)
!5102 = !DISubroutineType(types: !5103)
!5103 = !{!250, !251, !250, !195, !371}
!5104 = !DILocalVariable(name: "dev", arg: 1, scope: !5101, file: !3, line: 235, type: !251)
!5105 = !DILocation(line: 235, column: 51, scope: !5101)
!5106 = !DILocalVariable(name: "offset", arg: 2, scope: !5101, file: !3, line: 236, type: !250)
!5107 = !DILocation(line: 236, column: 12, scope: !5101)
!5108 = !DILocalVariable(name: "buf", arg: 3, scope: !5101, file: !3, line: 236, type: !195)
!5109 = !DILocation(line: 236, column: 26, scope: !5101)
!5110 = !DILocalVariable(name: "buf_size", arg: 4, scope: !5101, file: !3, line: 236, type: !371)
!5111 = !DILocation(line: 236, column: 38, scope: !5101)
!5112 = !DILocalVariable(name: "usb", scope: !5101, file: !3, line: 238, type: !4562)
!5113 = !DILocation(line: 238, column: 21, scope: !5101)
!5114 = !DILocation(line: 238, column: 45, scope: !5101)
!5115 = !DILocation(line: 238, column: 27, scope: !5101)
!5116 = !DILocalVariable(name: "devpriv", scope: !5101, file: !3, line: 239, type: !4226)
!5117 = !DILocation(line: 239, column: 25, scope: !5101)
!5118 = !DILocation(line: 239, column: 35, scope: !5101)
!5119 = !DILocation(line: 239, column: 40, scope: !5101)
!5120 = !DILocalVariable(name: "cmd", scope: !5101, file: !3, line: 240, type: !5121)
!5121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dt9812_usb_cmd", file: !3, line: 216, size: 256, elements: !5122)
!5122 = !{!5123, !5124}
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !5121, file: !3, line: 217, baseType: !202, size: 32)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !5121, file: !3, line: 223, baseType: !5125, size: 224, offset: 32)
!5125 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5121, file: !3, line: 218, size: 224, elements: !5126)
!5126 = !{!5127, !5132, !5140, !5152}
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "flash_data_info", scope: !5125, file: !3, line: 219, baseType: !5128, size: 32)
!5128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dt9812_flash_data", file: !3, line: 174, size: 32, elements: !5129)
!5129 = !{!5130, !5131}
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "numbytes", scope: !5128, file: !3, line: 175, baseType: !199, size: 16)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5128, file: !3, line: 176, baseType: !199, size: 16, offset: 16)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "read_multi_info", scope: !5125, file: !3, line: 220, baseType: !5133, size: 224)
!5133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dt9812_read_multi", file: !3, line: 182, size: 224, elements: !5134)
!5134 = !{!5135, !5136}
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5133, file: !3, line: 183, baseType: !1400, size: 8)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5133, file: !3, line: 184, baseType: !5137, size: 216, offset: 8)
!5137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1400, size: 216, elements: !5138)
!5138 = !{!5139}
!5139 = !DISubrange(count: 27)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "write_multi_info", scope: !5125, file: !3, line: 221, baseType: !5141, size: 216)
!5141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dt9812_write_multi", file: !3, line: 196, size: 216, elements: !5142)
!5142 = !{!5143, !5144}
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5141, file: !3, line: 197, baseType: !1400, size: 8)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !5141, file: !3, line: 198, baseType: !5145, size: 208, offset: 8)
!5145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5146, size: 208, elements: !5150)
!5146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dt9812_write_byte", file: !3, line: 187, size: 16, elements: !5147)
!5147 = !{!5148, !5149}
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5146, file: !3, line: 188, baseType: !1400, size: 8)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !5146, file: !3, line: 189, baseType: !1400, size: 8, offset: 8)
!5150 = !{!5151}
!5151 = !DISubrange(count: 13)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "rmw_multi_info", scope: !5125, file: !3, line: 222, baseType: !5153, size: 224)
!5153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dt9812_rmw_multi", file: !3, line: 211, size: 224, elements: !5154)
!5154 = !{!5155, !5156}
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5153, file: !3, line: 212, baseType: !1400, size: 8)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "rmw", scope: !5153, file: !3, line: 213, baseType: !5157, size: 216, offset: 8)
!5157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5158, size: 216, elements: !3519)
!5158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dt9812_rmw_byte", file: !3, line: 201, size: 24, elements: !5159)
!5159 = !{!5160, !5161, !5162}
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5158, file: !3, line: 202, baseType: !1400, size: 8)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "and_mask", scope: !5158, file: !3, line: 203, baseType: !1400, size: 8, offset: 8)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "or_value", scope: !5158, file: !3, line: 204, baseType: !1400, size: 8, offset: 16)
!5163 = !DILocation(line: 240, column: 24, scope: !5101)
!5164 = !DILocalVariable(name: "count", scope: !5101, file: !3, line: 241, type: !250)
!5165 = !DILocation(line: 241, column: 6, scope: !5101)
!5166 = !DILocalVariable(name: "ret", scope: !5101, file: !3, line: 241, type: !250)
!5167 = !DILocation(line: 241, column: 13, scope: !5101)
!5168 = !DILocation(line: 243, column: 6, scope: !5101)
!5169 = !DILocation(line: 243, column: 10, scope: !5101)
!5170 = !DILocation(line: 245, column: 6, scope: !5101)
!5171 = !DILocation(line: 244, column: 6, scope: !5101)
!5172 = !DILocation(line: 244, column: 8, scope: !5101)
!5173 = !DILocation(line: 244, column: 24, scope: !5101)
!5174 = !DILocation(line: 244, column: 32, scope: !5101)
!5175 = !DILocation(line: 246, column: 35, scope: !5101)
!5176 = !DILocation(line: 246, column: 6, scope: !5101)
!5177 = !DILocation(line: 246, column: 8, scope: !5101)
!5178 = !DILocation(line: 246, column: 24, scope: !5101)
!5179 = !DILocation(line: 246, column: 33, scope: !5101)
!5180 = !DILocation(line: 249, column: 21, scope: !5101)
!5181 = !DILocation(line: 249, column: 26, scope: !5101)
!5182 = !DILocation(line: 250, column: 7, scope: !5101)
!5183 = !DILocation(line: 249, column: 8, scope: !5101)
!5184 = !DILocation(line: 249, column: 6, scope: !5101)
!5185 = !DILocation(line: 251, column: 6, scope: !5186)
!5186 = distinct !DILexicalBlock(scope: !5101, file: !3, line: 251, column: 6)
!5187 = !DILocation(line: 251, column: 6, scope: !5101)
!5188 = !DILocation(line: 252, column: 10, scope: !5186)
!5189 = !DILocation(line: 252, column: 3, scope: !5186)
!5190 = !DILocation(line: 254, column: 22, scope: !5101)
!5191 = !DILocation(line: 254, column: 27, scope: !5101)
!5192 = !DILocation(line: 255, column: 8, scope: !5101)
!5193 = !DILocation(line: 255, column: 13, scope: !5101)
!5194 = !DILocation(line: 254, column: 9, scope: !5101)
!5195 = !DILocation(line: 254, column: 2, scope: !5101)
!5196 = !DILocation(line: 256, column: 1, scope: !5101)
!5197 = distinct !DISubprogram(name: "__create_pipe", scope: !101, file: !101, line: 1945, type: !5198, scopeLine: 1947, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !298)
!5198 = !DISubroutineType(types: !5199)
!5199 = !{!7, !4562, !7}
!5200 = !DILocalVariable(name: "dev", arg: 1, scope: !5197, file: !101, line: 1945, type: !4562)
!5201 = !DILocation(line: 1945, column: 61, scope: !5197)
!5202 = !DILocalVariable(name: "endpoint", arg: 2, scope: !5197, file: !101, line: 1946, type: !7)
!5203 = !DILocation(line: 1946, column: 16, scope: !5197)
!5204 = !DILocation(line: 1948, column: 10, scope: !5197)
!5205 = !DILocation(line: 1948, column: 15, scope: !5197)
!5206 = !DILocation(line: 1948, column: 22, scope: !5197)
!5207 = !DILocation(line: 1948, column: 31, scope: !5197)
!5208 = !DILocation(line: 1948, column: 40, scope: !5197)
!5209 = !DILocation(line: 1948, column: 28, scope: !5197)
!5210 = !DILocation(line: 1948, column: 2, scope: !5197)
!5211 = distinct !DISubprogram(name: "dt9812_digital_in", scope: !3, file: !3, line: 322, type: !5212, scopeLine: 323, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !298)
!5212 = !DISubroutineType(types: !5213)
!5213 = !{!250, !251, !5214}
!5214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!5215 = !DILocalVariable(name: "dev", arg: 1, scope: !5211, file: !3, line: 322, type: !251)
!5216 = !DILocation(line: 322, column: 52, scope: !5211)
!5217 = !DILocalVariable(name: "bits", arg: 2, scope: !5211, file: !3, line: 322, type: !5214)
!5218 = !DILocation(line: 322, column: 61, scope: !5211)
!5219 = !DILocalVariable(name: "devpriv", scope: !5211, file: !3, line: 324, type: !4226)
!5220 = !DILocation(line: 324, column: 25, scope: !5211)
!5221 = !DILocation(line: 324, column: 35, scope: !5211)
!5222 = !DILocation(line: 324, column: 40, scope: !5211)
!5223 = !DILocalVariable(name: "reg", scope: !5211, file: !3, line: 325, type: !5224)
!5224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1400, size: 16, elements: !1617)
!5225 = !DILocation(line: 325, column: 5, scope: !5211)
!5226 = !DILocalVariable(name: "value", scope: !5211, file: !3, line: 326, type: !5224)
!5227 = !DILocation(line: 326, column: 5, scope: !5211)
!5228 = !DILocalVariable(name: "ret", scope: !5211, file: !3, line: 327, type: !250)
!5229 = !DILocation(line: 327, column: 6, scope: !5211)
!5230 = !DILocation(line: 329, column: 14, scope: !5211)
!5231 = !DILocation(line: 329, column: 23, scope: !5211)
!5232 = !DILocation(line: 329, column: 2, scope: !5211)
!5233 = !DILocation(line: 330, column: 39, scope: !5211)
!5234 = !DILocation(line: 330, column: 47, scope: !5211)
!5235 = !DILocation(line: 330, column: 52, scope: !5211)
!5236 = !DILocation(line: 330, column: 8, scope: !5211)
!5237 = !DILocation(line: 330, column: 6, scope: !5211)
!5238 = !DILocation(line: 331, column: 6, scope: !5239)
!5239 = distinct !DILexicalBlock(scope: !5211, file: !3, line: 331, column: 6)
!5240 = !DILocation(line: 331, column: 10, scope: !5239)
!5241 = !DILocation(line: 331, column: 6, scope: !5211)
!5242 = !DILocation(line: 337, column: 12, scope: !5243)
!5243 = distinct !DILexicalBlock(scope: !5239, file: !3, line: 331, column: 16)
!5244 = !DILocation(line: 337, column: 21, scope: !5243)
!5245 = !DILocation(line: 337, column: 33, scope: !5243)
!5246 = !DILocation(line: 337, column: 42, scope: !5243)
!5247 = !DILocation(line: 337, column: 50, scope: !5243)
!5248 = !DILocation(line: 337, column: 29, scope: !5243)
!5249 = !DILocation(line: 337, column: 11, scope: !5243)
!5250 = !DILocation(line: 337, column: 4, scope: !5243)
!5251 = !DILocation(line: 337, column: 9, scope: !5243)
!5252 = !DILocation(line: 338, column: 2, scope: !5243)
!5253 = !DILocation(line: 339, column: 16, scope: !5211)
!5254 = !DILocation(line: 339, column: 25, scope: !5211)
!5255 = !DILocation(line: 339, column: 2, scope: !5211)
!5256 = !DILocation(line: 341, column: 9, scope: !5211)
!5257 = !DILocation(line: 341, column: 2, scope: !5211)
!5258 = distinct !DISubprogram(name: "dt9812_read_multiple_registers", scope: !3, file: !3, line: 258, type: !5259, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !298)
!5259 = !DISubroutineType(types: !5260)
!5260 = !{!250, !251, !250, !5214, !5214}
!5261 = !DILocalVariable(name: "dev", arg: 1, scope: !5258, file: !3, line: 258, type: !251)
!5262 = !DILocation(line: 258, column: 65, scope: !5258)
!5263 = !DILocalVariable(name: "reg_count", arg: 2, scope: !5258, file: !3, line: 259, type: !250)
!5264 = !DILocation(line: 259, column: 12, scope: !5258)
!5265 = !DILocalVariable(name: "address", arg: 3, scope: !5258, file: !3, line: 259, type: !5214)
!5266 = !DILocation(line: 259, column: 27, scope: !5258)
!5267 = !DILocalVariable(name: "value", arg: 4, scope: !5258, file: !3, line: 260, type: !5214)
!5268 = !DILocation(line: 260, column: 12, scope: !5258)
!5269 = !DILocalVariable(name: "usb", scope: !5258, file: !3, line: 262, type: !4562)
!5270 = !DILocation(line: 262, column: 21, scope: !5258)
!5271 = !DILocation(line: 262, column: 45, scope: !5258)
!5272 = !DILocation(line: 262, column: 27, scope: !5258)
!5273 = !DILocalVariable(name: "devpriv", scope: !5258, file: !3, line: 263, type: !4226)
!5274 = !DILocation(line: 263, column: 25, scope: !5258)
!5275 = !DILocation(line: 263, column: 35, scope: !5258)
!5276 = !DILocation(line: 263, column: 40, scope: !5258)
!5277 = !DILocalVariable(name: "cmd", scope: !5258, file: !3, line: 264, type: !5121)
!5278 = !DILocation(line: 264, column: 24, scope: !5258)
!5279 = !DILocalVariable(name: "i", scope: !5258, file: !3, line: 265, type: !250)
!5280 = !DILocation(line: 265, column: 6, scope: !5258)
!5281 = !DILocalVariable(name: "count", scope: !5258, file: !3, line: 265, type: !250)
!5282 = !DILocation(line: 265, column: 9, scope: !5258)
!5283 = !DILocalVariable(name: "ret", scope: !5258, file: !3, line: 265, type: !250)
!5284 = !DILocation(line: 265, column: 16, scope: !5258)
!5285 = !DILocation(line: 267, column: 6, scope: !5258)
!5286 = !DILocation(line: 267, column: 10, scope: !5258)
!5287 = !DILocation(line: 268, column: 32, scope: !5258)
!5288 = !DILocation(line: 268, column: 6, scope: !5258)
!5289 = !DILocation(line: 268, column: 8, scope: !5258)
!5290 = !DILocation(line: 268, column: 24, scope: !5258)
!5291 = !DILocation(line: 268, column: 30, scope: !5258)
!5292 = !DILocation(line: 269, column: 9, scope: !5293)
!5293 = distinct !DILexicalBlock(scope: !5258, file: !3, line: 269, column: 2)
!5294 = !DILocation(line: 269, column: 7, scope: !5293)
!5295 = !DILocation(line: 269, column: 14, scope: !5296)
!5296 = distinct !DILexicalBlock(scope: !5293, file: !3, line: 269, column: 2)
!5297 = !DILocation(line: 269, column: 18, scope: !5296)
!5298 = !DILocation(line: 269, column: 16, scope: !5296)
!5299 = !DILocation(line: 269, column: 2, scope: !5293)
!5300 = !DILocation(line: 270, column: 38, scope: !5296)
!5301 = !DILocation(line: 270, column: 46, scope: !5296)
!5302 = !DILocation(line: 270, column: 7, scope: !5296)
!5303 = !DILocation(line: 270, column: 9, scope: !5296)
!5304 = !DILocation(line: 270, column: 25, scope: !5296)
!5305 = !DILocation(line: 270, column: 33, scope: !5296)
!5306 = !DILocation(line: 270, column: 3, scope: !5296)
!5307 = !DILocation(line: 270, column: 36, scope: !5296)
!5308 = !DILocation(line: 269, column: 30, scope: !5296)
!5309 = !DILocation(line: 269, column: 2, scope: !5296)
!5310 = distinct !{!5310, !5299, !5311}
!5311 = !DILocation(line: 270, column: 47, scope: !5293)
!5312 = !DILocation(line: 273, column: 21, scope: !5258)
!5313 = !DILocation(line: 273, column: 26, scope: !5258)
!5314 = !DILocation(line: 274, column: 7, scope: !5258)
!5315 = !DILocation(line: 273, column: 8, scope: !5258)
!5316 = !DILocation(line: 273, column: 6, scope: !5258)
!5317 = !DILocation(line: 275, column: 6, scope: !5318)
!5318 = distinct !DILexicalBlock(scope: !5258, file: !3, line: 275, column: 6)
!5319 = !DILocation(line: 275, column: 6, scope: !5258)
!5320 = !DILocation(line: 276, column: 10, scope: !5318)
!5321 = !DILocation(line: 276, column: 3, scope: !5318)
!5322 = !DILocation(line: 278, column: 22, scope: !5258)
!5323 = !DILocation(line: 278, column: 27, scope: !5258)
!5324 = !DILocation(line: 279, column: 8, scope: !5258)
!5325 = !DILocation(line: 279, column: 15, scope: !5258)
!5326 = !DILocation(line: 278, column: 9, scope: !5258)
!5327 = !DILocation(line: 278, column: 2, scope: !5258)
!5328 = !DILocation(line: 280, column: 1, scope: !5258)
!5329 = distinct !DISubprogram(name: "dt9812_digital_out", scope: !3, file: !3, line: 344, type: !5330, scopeLine: 345, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !298)
!5330 = !DISubroutineType(types: !5331)
!5331 = !{!250, !251, !1400}
!5332 = !DILocalVariable(name: "dev", arg: 1, scope: !5329, file: !3, line: 344, type: !251)
!5333 = !DILocation(line: 344, column: 53, scope: !5329)
!5334 = !DILocalVariable(name: "bits", arg: 2, scope: !5329, file: !3, line: 344, type: !1400)
!5335 = !DILocation(line: 344, column: 61, scope: !5329)
!5336 = !DILocalVariable(name: "devpriv", scope: !5329, file: !3, line: 346, type: !4226)
!5337 = !DILocation(line: 346, column: 25, scope: !5329)
!5338 = !DILocation(line: 346, column: 35, scope: !5329)
!5339 = !DILocation(line: 346, column: 40, scope: !5329)
!5340 = !DILocalVariable(name: "reg", scope: !5329, file: !3, line: 347, type: !5341)
!5341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1400, size: 8, elements: !1419)
!5342 = !DILocation(line: 347, column: 5, scope: !5329)
!5343 = !DILocalVariable(name: "value", scope: !5329, file: !3, line: 348, type: !5341)
!5344 = !DILocation(line: 348, column: 5, scope: !5329)
!5345 = !DILocation(line: 348, column: 16, scope: !5329)
!5346 = !DILocation(line: 348, column: 18, scope: !5329)
!5347 = !DILocalVariable(name: "ret", scope: !5329, file: !3, line: 349, type: !250)
!5348 = !DILocation(line: 349, column: 6, scope: !5329)
!5349 = !DILocation(line: 351, column: 14, scope: !5329)
!5350 = !DILocation(line: 351, column: 23, scope: !5329)
!5351 = !DILocation(line: 351, column: 2, scope: !5329)
!5352 = !DILocation(line: 352, column: 40, scope: !5329)
!5353 = !DILocation(line: 352, column: 48, scope: !5329)
!5354 = !DILocation(line: 352, column: 53, scope: !5329)
!5355 = !DILocation(line: 352, column: 8, scope: !5329)
!5356 = !DILocation(line: 352, column: 6, scope: !5329)
!5357 = !DILocation(line: 353, column: 16, scope: !5329)
!5358 = !DILocation(line: 353, column: 25, scope: !5329)
!5359 = !DILocation(line: 353, column: 2, scope: !5329)
!5360 = !DILocation(line: 355, column: 9, scope: !5329)
!5361 = !DILocation(line: 355, column: 2, scope: !5329)
!5362 = distinct !DISubprogram(name: "dt9812_write_multiple_registers", scope: !3, file: !3, line: 282, type: !5259, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !298)
!5363 = !DILocalVariable(name: "dev", arg: 1, scope: !5362, file: !3, line: 282, type: !251)
!5364 = !DILocation(line: 282, column: 66, scope: !5362)
!5365 = !DILocalVariable(name: "reg_count", arg: 2, scope: !5362, file: !3, line: 283, type: !250)
!5366 = !DILocation(line: 283, column: 13, scope: !5362)
!5367 = !DILocalVariable(name: "address", arg: 3, scope: !5362, file: !3, line: 283, type: !5214)
!5368 = !DILocation(line: 283, column: 28, scope: !5362)
!5369 = !DILocalVariable(name: "value", arg: 4, scope: !5362, file: !3, line: 284, type: !5214)
!5370 = !DILocation(line: 284, column: 13, scope: !5362)
!5371 = !DILocalVariable(name: "usb", scope: !5362, file: !3, line: 286, type: !4562)
!5372 = !DILocation(line: 286, column: 21, scope: !5362)
!5373 = !DILocation(line: 286, column: 45, scope: !5362)
!5374 = !DILocation(line: 286, column: 27, scope: !5362)
!5375 = !DILocalVariable(name: "devpriv", scope: !5362, file: !3, line: 287, type: !4226)
!5376 = !DILocation(line: 287, column: 25, scope: !5362)
!5377 = !DILocation(line: 287, column: 35, scope: !5362)
!5378 = !DILocation(line: 287, column: 40, scope: !5362)
!5379 = !DILocalVariable(name: "cmd", scope: !5362, file: !3, line: 288, type: !5121)
!5380 = !DILocation(line: 288, column: 24, scope: !5362)
!5381 = !DILocalVariable(name: "i", scope: !5362, file: !3, line: 289, type: !250)
!5382 = !DILocation(line: 289, column: 6, scope: !5362)
!5383 = !DILocalVariable(name: "count", scope: !5362, file: !3, line: 289, type: !250)
!5384 = !DILocation(line: 289, column: 9, scope: !5362)
!5385 = !DILocation(line: 291, column: 6, scope: !5362)
!5386 = !DILocation(line: 291, column: 10, scope: !5362)
!5387 = !DILocation(line: 292, column: 32, scope: !5362)
!5388 = !DILocation(line: 292, column: 6, scope: !5362)
!5389 = !DILocation(line: 292, column: 8, scope: !5362)
!5390 = !DILocation(line: 292, column: 24, scope: !5362)
!5391 = !DILocation(line: 292, column: 30, scope: !5362)
!5392 = !DILocation(line: 293, column: 9, scope: !5393)
!5393 = distinct !DILexicalBlock(scope: !5362, file: !3, line: 293, column: 2)
!5394 = !DILocation(line: 293, column: 7, scope: !5393)
!5395 = !DILocation(line: 293, column: 14, scope: !5396)
!5396 = distinct !DILexicalBlock(scope: !5393, file: !3, line: 293, column: 2)
!5397 = !DILocation(line: 293, column: 18, scope: !5396)
!5398 = !DILocation(line: 293, column: 16, scope: !5396)
!5399 = !DILocation(line: 293, column: 2, scope: !5393)
!5400 = !DILocation(line: 294, column: 45, scope: !5401)
!5401 = distinct !DILexicalBlock(scope: !5396, file: !3, line: 293, column: 34)
!5402 = !DILocation(line: 294, column: 53, scope: !5401)
!5403 = !DILocation(line: 294, column: 7, scope: !5401)
!5404 = !DILocation(line: 294, column: 9, scope: !5401)
!5405 = !DILocation(line: 294, column: 26, scope: !5401)
!5406 = !DILocation(line: 294, column: 32, scope: !5401)
!5407 = !DILocation(line: 294, column: 3, scope: !5401)
!5408 = !DILocation(line: 294, column: 35, scope: !5401)
!5409 = !DILocation(line: 294, column: 43, scope: !5401)
!5410 = !DILocation(line: 295, column: 43, scope: !5401)
!5411 = !DILocation(line: 295, column: 49, scope: !5401)
!5412 = !DILocation(line: 295, column: 7, scope: !5401)
!5413 = !DILocation(line: 295, column: 9, scope: !5401)
!5414 = !DILocation(line: 295, column: 26, scope: !5401)
!5415 = !DILocation(line: 295, column: 32, scope: !5401)
!5416 = !DILocation(line: 295, column: 3, scope: !5401)
!5417 = !DILocation(line: 295, column: 35, scope: !5401)
!5418 = !DILocation(line: 295, column: 41, scope: !5401)
!5419 = !DILocation(line: 296, column: 2, scope: !5401)
!5420 = !DILocation(line: 293, column: 30, scope: !5396)
!5421 = !DILocation(line: 293, column: 2, scope: !5396)
!5422 = distinct !{!5422, !5399, !5423}
!5423 = !DILocation(line: 296, column: 2, scope: !5393)
!5424 = !DILocation(line: 299, column: 22, scope: !5362)
!5425 = !DILocation(line: 299, column: 27, scope: !5362)
!5426 = !DILocation(line: 300, column: 8, scope: !5362)
!5427 = !DILocation(line: 299, column: 9, scope: !5362)
!5428 = !DILocation(line: 299, column: 2, scope: !5362)
!5429 = distinct !DISubprogram(name: "dt9812_analog_in", scope: !3, file: !3, line: 425, type: !5430, scopeLine: 427, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !298)
!5430 = !DISubroutineType(types: !5431)
!5431 = !{!250, !251, !250, !5432, !185}
!5432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!5433 = !DILocalVariable(name: "dev", arg: 1, scope: !5429, file: !3, line: 425, type: !251)
!5434 = !DILocation(line: 425, column: 51, scope: !5429)
!5435 = !DILocalVariable(name: "channel", arg: 2, scope: !5429, file: !3, line: 426, type: !250)
!5436 = !DILocation(line: 426, column: 12, scope: !5429)
!5437 = !DILocalVariable(name: "value", arg: 3, scope: !5429, file: !3, line: 426, type: !5432)
!5438 = !DILocation(line: 426, column: 26, scope: !5429)
!5439 = !DILocalVariable(name: "gain", arg: 4, scope: !5429, file: !3, line: 426, type: !185)
!5440 = !DILocation(line: 426, column: 50, scope: !5429)
!5441 = !DILocalVariable(name: "devpriv", scope: !5429, file: !3, line: 428, type: !4226)
!5442 = !DILocation(line: 428, column: 25, scope: !5429)
!5443 = !DILocation(line: 428, column: 35, scope: !5429)
!5444 = !DILocation(line: 428, column: 40, scope: !5429)
!5445 = !DILocalVariable(name: "rmw", scope: !5429, file: !3, line: 429, type: !5446)
!5446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5158, size: 72, elements: !326)
!5447 = !DILocation(line: 429, column: 25, scope: !5429)
!5448 = !DILocalVariable(name: "reg", scope: !5429, file: !3, line: 430, type: !5449)
!5449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1400, size: 24, elements: !326)
!5450 = !DILocation(line: 430, column: 5, scope: !5429)
!5451 = !DILocalVariable(name: "val", scope: !5429, file: !3, line: 435, type: !5449)
!5452 = !DILocation(line: 435, column: 5, scope: !5429)
!5453 = !DILocalVariable(name: "ret", scope: !5429, file: !3, line: 436, type: !250)
!5454 = !DILocation(line: 436, column: 6, scope: !5429)
!5455 = !DILocation(line: 438, column: 14, scope: !5429)
!5456 = !DILocation(line: 438, column: 23, scope: !5429)
!5457 = !DILocation(line: 438, column: 2, scope: !5429)
!5458 = !DILocation(line: 441, column: 24, scope: !5429)
!5459 = !DILocation(line: 441, column: 30, scope: !5429)
!5460 = !DILocation(line: 441, column: 38, scope: !5429)
!5461 = !DILocation(line: 441, column: 2, scope: !5429)
!5462 = !DILocation(line: 444, column: 23, scope: !5429)
!5463 = !DILocation(line: 444, column: 29, scope: !5429)
!5464 = !DILocation(line: 444, column: 37, scope: !5429)
!5465 = !DILocation(line: 444, column: 2, scope: !5429)
!5466 = !DILocation(line: 447, column: 2, scope: !5429)
!5467 = !DILocation(line: 447, column: 9, scope: !5429)
!5468 = !DILocation(line: 447, column: 17, scope: !5429)
!5469 = !DILocation(line: 448, column: 2, scope: !5429)
!5470 = !DILocation(line: 448, column: 9, scope: !5429)
!5471 = !DILocation(line: 448, column: 18, scope: !5429)
!5472 = !DILocation(line: 449, column: 2, scope: !5429)
!5473 = !DILocation(line: 449, column: 9, scope: !5429)
!5474 = !DILocation(line: 449, column: 18, scope: !5429)
!5475 = !DILocation(line: 451, column: 38, scope: !5429)
!5476 = !DILocation(line: 451, column: 46, scope: !5429)
!5477 = !DILocation(line: 451, column: 8, scope: !5429)
!5478 = !DILocation(line: 451, column: 6, scope: !5429)
!5479 = !DILocation(line: 452, column: 6, scope: !5480)
!5480 = distinct !DILexicalBlock(scope: !5429, file: !3, line: 452, column: 6)
!5481 = !DILocation(line: 452, column: 6, scope: !5429)
!5482 = !DILocation(line: 453, column: 3, scope: !5480)
!5483 = !DILocation(line: 456, column: 39, scope: !5429)
!5484 = !DILocation(line: 456, column: 47, scope: !5429)
!5485 = !DILocation(line: 456, column: 52, scope: !5429)
!5486 = !DILocation(line: 456, column: 8, scope: !5429)
!5487 = !DILocation(line: 456, column: 6, scope: !5429)
!5488 = !DILocation(line: 457, column: 6, scope: !5489)
!5489 = distinct !DILexicalBlock(scope: !5429, file: !3, line: 457, column: 6)
!5490 = !DILocation(line: 457, column: 6, scope: !5429)
!5491 = !DILocation(line: 458, column: 3, scope: !5489)
!5492 = !DILocation(line: 469, column: 7, scope: !5493)
!5493 = distinct !DILexicalBlock(scope: !5429, file: !3, line: 469, column: 6)
!5494 = !DILocation(line: 469, column: 14, scope: !5493)
!5495 = !DILocation(line: 469, column: 70, scope: !5493)
!5496 = !DILocation(line: 469, column: 6, scope: !5429)
!5497 = !DILocation(line: 471, column: 11, scope: !5498)
!5498 = distinct !DILexicalBlock(scope: !5493, file: !3, line: 470, column: 31)
!5499 = !DILocation(line: 471, column: 20, scope: !5498)
!5500 = !DILocation(line: 471, column: 3, scope: !5498)
!5501 = !DILocation(line: 478, column: 15, scope: !5502)
!5502 = distinct !DILexicalBlock(scope: !5498, file: !3, line: 471, column: 28)
!5503 = !DILocation(line: 478, column: 22, scope: !5502)
!5504 = !DILocation(line: 478, column: 30, scope: !5502)
!5505 = !DILocation(line: 478, column: 28, scope: !5502)
!5506 = !DILocation(line: 478, column: 38, scope: !5502)
!5507 = !DILocation(line: 478, column: 13, scope: !5502)
!5508 = !DILocation(line: 478, column: 5, scope: !5502)
!5509 = !DILocation(line: 478, column: 11, scope: !5502)
!5510 = !DILocation(line: 479, column: 4, scope: !5502)
!5511 = !DILocation(line: 481, column: 14, scope: !5502)
!5512 = !DILocation(line: 481, column: 21, scope: !5502)
!5513 = !DILocation(line: 481, column: 29, scope: !5502)
!5514 = !DILocation(line: 481, column: 27, scope: !5502)
!5515 = !DILocation(line: 481, column: 13, scope: !5502)
!5516 = !DILocation(line: 481, column: 5, scope: !5502)
!5517 = !DILocation(line: 481, column: 11, scope: !5502)
!5518 = !DILocation(line: 482, column: 4, scope: !5502)
!5519 = !DILocation(line: 484, column: 2, scope: !5498)
!5520 = !DILocation(line: 470, column: 6, scope: !5493)
!5521 = !DILabel(scope: !5429, name: "exit", file: !3, line: 486)
!5522 = !DILocation(line: 486, column: 1, scope: !5429)
!5523 = !DILocation(line: 487, column: 16, scope: !5429)
!5524 = !DILocation(line: 487, column: 25, scope: !5429)
!5525 = !DILocation(line: 487, column: 2, scope: !5429)
!5526 = !DILocation(line: 489, column: 9, scope: !5429)
!5527 = !DILocation(line: 489, column: 2, scope: !5429)
!5528 = distinct !DISubprogram(name: "dt9812_configure_gain", scope: !3, file: !3, line: 376, type: !5529, scopeLine: 379, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !298)
!5529 = !DISubroutineType(types: !5530)
!5530 = !{null, !251, !5531, !185}
!5531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5158, size: 64)
!5532 = !DILocalVariable(name: "dev", arg: 1, scope: !5528, file: !3, line: 376, type: !251)
!5533 = !DILocation(line: 376, column: 57, scope: !5528)
!5534 = !DILocalVariable(name: "rmw", arg: 2, scope: !5528, file: !3, line: 377, type: !5531)
!5535 = !DILocation(line: 377, column: 31, scope: !5528)
!5536 = !DILocalVariable(name: "gain", arg: 3, scope: !5528, file: !3, line: 378, type: !185)
!5537 = !DILocation(line: 378, column: 24, scope: !5528)
!5538 = !DILocalVariable(name: "devpriv", scope: !5528, file: !3, line: 380, type: !4226)
!5539 = !DILocation(line: 380, column: 25, scope: !5528)
!5540 = !DILocation(line: 380, column: 35, scope: !5528)
!5541 = !DILocation(line: 380, column: 40, scope: !5528)
!5542 = !DILocation(line: 383, column: 6, scope: !5543)
!5543 = distinct !DILexicalBlock(scope: !5528, file: !3, line: 383, column: 6)
!5544 = !DILocation(line: 383, column: 15, scope: !5543)
!5545 = !DILocation(line: 383, column: 22, scope: !5543)
!5546 = !DILocation(line: 383, column: 6, scope: !5528)
!5547 = !DILocation(line: 384, column: 8, scope: !5543)
!5548 = !DILocation(line: 384, column: 3, scope: !5543)
!5549 = !DILocation(line: 386, column: 2, scope: !5528)
!5550 = !DILocation(line: 386, column: 7, scope: !5528)
!5551 = !DILocation(line: 386, column: 15, scope: !5528)
!5552 = !DILocation(line: 387, column: 2, scope: !5528)
!5553 = !DILocation(line: 387, column: 7, scope: !5528)
!5554 = !DILocation(line: 387, column: 16, scope: !5528)
!5555 = !DILocation(line: 391, column: 10, scope: !5528)
!5556 = !DILocation(line: 391, column: 2, scope: !5528)
!5557 = !DILocation(line: 401, column: 3, scope: !5558)
!5558 = distinct !DILexicalBlock(scope: !5528, file: !3, line: 391, column: 16)
!5559 = !DILocation(line: 401, column: 8, scope: !5558)
!5560 = !DILocation(line: 401, column: 17, scope: !5558)
!5561 = !DILocation(line: 403, column: 3, scope: !5558)
!5562 = !DILocation(line: 407, column: 3, scope: !5558)
!5563 = !DILocation(line: 407, column: 8, scope: !5558)
!5564 = !DILocation(line: 407, column: 17, scope: !5558)
!5565 = !DILocation(line: 408, column: 3, scope: !5558)
!5566 = !DILocation(line: 410, column: 3, scope: !5558)
!5567 = !DILocation(line: 410, column: 8, scope: !5558)
!5568 = !DILocation(line: 410, column: 17, scope: !5558)
!5569 = !DILocation(line: 411, column: 3, scope: !5558)
!5570 = !DILocation(line: 413, column: 3, scope: !5558)
!5571 = !DILocation(line: 413, column: 8, scope: !5558)
!5572 = !DILocation(line: 413, column: 17, scope: !5558)
!5573 = !DILocation(line: 414, column: 3, scope: !5558)
!5574 = !DILocation(line: 416, column: 3, scope: !5558)
!5575 = !DILocation(line: 416, column: 8, scope: !5558)
!5576 = !DILocation(line: 416, column: 17, scope: !5558)
!5577 = !DILocation(line: 418, column: 3, scope: !5558)
!5578 = !DILocation(line: 420, column: 3, scope: !5558)
!5579 = !DILocation(line: 420, column: 8, scope: !5558)
!5580 = !DILocation(line: 420, column: 17, scope: !5558)
!5581 = !DILocation(line: 421, column: 3, scope: !5558)
!5582 = !DILocation(line: 423, column: 1, scope: !5528)
!5583 = distinct !DISubprogram(name: "dt9812_configure_mux", scope: !3, file: !3, line: 358, type: !5584, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !298)
!5584 = !DISubroutineType(types: !5585)
!5585 = !{null, !251, !5531, !250}
!5586 = !DILocalVariable(name: "dev", arg: 1, scope: !5583, file: !3, line: 358, type: !251)
!5587 = !DILocation(line: 358, column: 56, scope: !5583)
!5588 = !DILocalVariable(name: "rmw", arg: 2, scope: !5583, file: !3, line: 359, type: !5531)
!5589 = !DILocation(line: 359, column: 30, scope: !5583)
!5590 = !DILocalVariable(name: "channel", arg: 3, scope: !5583, file: !3, line: 359, type: !250)
!5591 = !DILocation(line: 359, column: 39, scope: !5583)
!5592 = !DILocalVariable(name: "devpriv", scope: !5583, file: !3, line: 361, type: !4226)
!5593 = !DILocation(line: 361, column: 25, scope: !5583)
!5594 = !DILocation(line: 361, column: 35, scope: !5583)
!5595 = !DILocation(line: 361, column: 40, scope: !5583)
!5596 = !DILocation(line: 363, column: 6, scope: !5597)
!5597 = distinct !DILexicalBlock(scope: !5583, file: !3, line: 363, column: 6)
!5598 = !DILocation(line: 363, column: 15, scope: !5597)
!5599 = !DILocation(line: 363, column: 22, scope: !5597)
!5600 = !DILocation(line: 363, column: 6, scope: !5583)
!5601 = !DILocation(line: 365, column: 3, scope: !5602)
!5602 = distinct !DILexicalBlock(scope: !5597, file: !3, line: 363, column: 49)
!5603 = !DILocation(line: 365, column: 8, scope: !5602)
!5604 = !DILocation(line: 365, column: 16, scope: !5602)
!5605 = !DILocation(line: 366, column: 3, scope: !5602)
!5606 = !DILocation(line: 366, column: 8, scope: !5602)
!5607 = !DILocation(line: 366, column: 17, scope: !5602)
!5608 = !DILocation(line: 367, column: 19, scope: !5602)
!5609 = !DILocation(line: 367, column: 27, scope: !5602)
!5610 = !DILocation(line: 367, column: 3, scope: !5602)
!5611 = !DILocation(line: 367, column: 8, scope: !5602)
!5612 = !DILocation(line: 367, column: 17, scope: !5602)
!5613 = !DILocation(line: 368, column: 2, scope: !5602)
!5614 = !DILocation(line: 370, column: 3, scope: !5615)
!5615 = distinct !DILexicalBlock(scope: !5597, file: !3, line: 368, column: 9)
!5616 = !DILocation(line: 370, column: 8, scope: !5615)
!5617 = !DILocation(line: 370, column: 16, scope: !5615)
!5618 = !DILocation(line: 371, column: 3, scope: !5615)
!5619 = !DILocation(line: 371, column: 8, scope: !5615)
!5620 = !DILocation(line: 371, column: 17, scope: !5615)
!5621 = !DILocation(line: 372, column: 19, scope: !5615)
!5622 = !DILocation(line: 372, column: 27, scope: !5615)
!5623 = !DILocation(line: 372, column: 3, scope: !5615)
!5624 = !DILocation(line: 372, column: 8, scope: !5615)
!5625 = !DILocation(line: 372, column: 17, scope: !5615)
!5626 = !DILocation(line: 374, column: 1, scope: !5583)
!5627 = distinct !DISubprogram(name: "dt9812_rmw_multiple_registers", scope: !3, file: !3, line: 303, type: !5628, scopeLine: 306, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !298)
!5628 = !DISubroutineType(types: !5629)
!5629 = !{!250, !251, !250, !5531}
!5630 = !DILocalVariable(name: "dev", arg: 1, scope: !5627, file: !3, line: 303, type: !251)
!5631 = !DILocation(line: 303, column: 64, scope: !5627)
!5632 = !DILocalVariable(name: "reg_count", arg: 2, scope: !5627, file: !3, line: 304, type: !250)
!5633 = !DILocation(line: 304, column: 11, scope: !5627)
!5634 = !DILocalVariable(name: "rmw", arg: 3, scope: !5627, file: !3, line: 305, type: !5531)
!5635 = !DILocation(line: 305, column: 31, scope: !5627)
!5636 = !DILocalVariable(name: "usb", scope: !5627, file: !3, line: 307, type: !4562)
!5637 = !DILocation(line: 307, column: 21, scope: !5627)
!5638 = !DILocation(line: 307, column: 45, scope: !5627)
!5639 = !DILocation(line: 307, column: 27, scope: !5627)
!5640 = !DILocalVariable(name: "devpriv", scope: !5627, file: !3, line: 308, type: !4226)
!5641 = !DILocation(line: 308, column: 25, scope: !5627)
!5642 = !DILocation(line: 308, column: 35, scope: !5627)
!5643 = !DILocation(line: 308, column: 40, scope: !5627)
!5644 = !DILocalVariable(name: "cmd", scope: !5627, file: !3, line: 309, type: !5121)
!5645 = !DILocation(line: 309, column: 24, scope: !5627)
!5646 = !DILocalVariable(name: "i", scope: !5627, file: !3, line: 310, type: !250)
!5647 = !DILocation(line: 310, column: 6, scope: !5627)
!5648 = !DILocalVariable(name: "count", scope: !5627, file: !3, line: 310, type: !250)
!5649 = !DILocation(line: 310, column: 9, scope: !5627)
!5650 = !DILocation(line: 312, column: 6, scope: !5627)
!5651 = !DILocation(line: 312, column: 10, scope: !5627)
!5652 = !DILocation(line: 313, column: 31, scope: !5627)
!5653 = !DILocation(line: 313, column: 6, scope: !5627)
!5654 = !DILocation(line: 313, column: 8, scope: !5627)
!5655 = !DILocation(line: 313, column: 23, scope: !5627)
!5656 = !DILocation(line: 313, column: 29, scope: !5627)
!5657 = !DILocation(line: 314, column: 9, scope: !5658)
!5658 = distinct !DILexicalBlock(scope: !5627, file: !3, line: 314, column: 2)
!5659 = !DILocation(line: 314, column: 7, scope: !5658)
!5660 = !DILocation(line: 314, column: 14, scope: !5661)
!5661 = distinct !DILexicalBlock(scope: !5658, file: !3, line: 314, column: 2)
!5662 = !DILocation(line: 314, column: 18, scope: !5661)
!5663 = !DILocation(line: 314, column: 16, scope: !5661)
!5664 = !DILocation(line: 314, column: 2, scope: !5658)
!5665 = !DILocation(line: 315, column: 7, scope: !5661)
!5666 = !DILocation(line: 315, column: 9, scope: !5661)
!5667 = !DILocation(line: 315, column: 24, scope: !5661)
!5668 = !DILocation(line: 315, column: 28, scope: !5661)
!5669 = !DILocation(line: 315, column: 3, scope: !5661)
!5670 = !DILocation(line: 315, column: 33, scope: !5661)
!5671 = !DILocation(line: 315, column: 37, scope: !5661)
!5672 = !DILocation(line: 314, column: 30, scope: !5661)
!5673 = !DILocation(line: 314, column: 2, scope: !5661)
!5674 = distinct !{!5674, !5664, !5675}
!5675 = !DILocation(line: 315, column: 38, scope: !5658)
!5676 = !DILocation(line: 318, column: 22, scope: !5627)
!5677 = !DILocation(line: 318, column: 27, scope: !5627)
!5678 = !DILocation(line: 319, column: 8, scope: !5627)
!5679 = !DILocation(line: 318, column: 9, scope: !5627)
!5680 = !DILocation(line: 318, column: 2, scope: !5627)
!5681 = distinct !DISubprogram(name: "dt9812_analog_out", scope: !3, file: !3, line: 492, type: !5682, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !298)
!5682 = !DISubroutineType(types: !5683)
!5683 = !{!250, !251, !250, !908}
!5684 = !DILocalVariable(name: "dev", arg: 1, scope: !5681, file: !3, line: 492, type: !251)
!5685 = !DILocation(line: 492, column: 52, scope: !5681)
!5686 = !DILocalVariable(name: "channel", arg: 2, scope: !5681, file: !3, line: 492, type: !250)
!5687 = !DILocation(line: 492, column: 61, scope: !5681)
!5688 = !DILocalVariable(name: "value", arg: 3, scope: !5681, file: !3, line: 492, type: !908)
!5689 = !DILocation(line: 492, column: 74, scope: !5681)
!5690 = !DILocalVariable(name: "devpriv", scope: !5681, file: !3, line: 494, type: !4226)
!5691 = !DILocation(line: 494, column: 25, scope: !5681)
!5692 = !DILocation(line: 494, column: 35, scope: !5681)
!5693 = !DILocation(line: 494, column: 40, scope: !5681)
!5694 = !DILocalVariable(name: "rmw", scope: !5681, file: !3, line: 495, type: !5446)
!5695 = !DILocation(line: 495, column: 25, scope: !5681)
!5696 = !DILocalVariable(name: "ret", scope: !5681, file: !3, line: 496, type: !250)
!5697 = !DILocation(line: 496, column: 6, scope: !5681)
!5698 = !DILocation(line: 498, column: 14, scope: !5681)
!5699 = !DILocation(line: 498, column: 23, scope: !5681)
!5700 = !DILocation(line: 498, column: 2, scope: !5681)
!5701 = !DILocation(line: 500, column: 10, scope: !5681)
!5702 = !DILocation(line: 500, column: 2, scope: !5681)
!5703 = !DILocation(line: 503, column: 3, scope: !5704)
!5704 = distinct !DILexicalBlock(scope: !5681, file: !3, line: 500, column: 19)
!5705 = !DILocation(line: 503, column: 10, scope: !5704)
!5706 = !DILocation(line: 503, column: 18, scope: !5704)
!5707 = !DILocation(line: 504, column: 3, scope: !5704)
!5708 = !DILocation(line: 504, column: 10, scope: !5704)
!5709 = !DILocation(line: 504, column: 19, scope: !5704)
!5710 = !DILocation(line: 505, column: 3, scope: !5704)
!5711 = !DILocation(line: 505, column: 10, scope: !5704)
!5712 = !DILocation(line: 505, column: 19, scope: !5704)
!5713 = !DILocation(line: 508, column: 3, scope: !5704)
!5714 = !DILocation(line: 508, column: 10, scope: !5704)
!5715 = !DILocation(line: 508, column: 18, scope: !5704)
!5716 = !DILocation(line: 509, column: 3, scope: !5704)
!5717 = !DILocation(line: 509, column: 10, scope: !5704)
!5718 = !DILocation(line: 509, column: 19, scope: !5704)
!5719 = !DILocation(line: 510, column: 21, scope: !5704)
!5720 = !DILocation(line: 510, column: 27, scope: !5704)
!5721 = !DILocation(line: 510, column: 3, scope: !5704)
!5722 = !DILocation(line: 510, column: 10, scope: !5704)
!5723 = !DILocation(line: 510, column: 19, scope: !5704)
!5724 = !DILocation(line: 513, column: 3, scope: !5704)
!5725 = !DILocation(line: 513, column: 10, scope: !5704)
!5726 = !DILocation(line: 513, column: 18, scope: !5704)
!5727 = !DILocation(line: 514, column: 3, scope: !5704)
!5728 = !DILocation(line: 514, column: 10, scope: !5704)
!5729 = !DILocation(line: 514, column: 19, scope: !5704)
!5730 = !DILocation(line: 515, column: 22, scope: !5704)
!5731 = !DILocation(line: 515, column: 28, scope: !5704)
!5732 = !DILocation(line: 515, column: 34, scope: !5704)
!5733 = !DILocation(line: 515, column: 21, scope: !5704)
!5734 = !DILocation(line: 515, column: 3, scope: !5704)
!5735 = !DILocation(line: 515, column: 10, scope: !5704)
!5736 = !DILocation(line: 515, column: 19, scope: !5704)
!5737 = !DILocation(line: 516, column: 3, scope: !5704)
!5738 = !DILocation(line: 520, column: 3, scope: !5704)
!5739 = !DILocation(line: 520, column: 10, scope: !5704)
!5740 = !DILocation(line: 520, column: 18, scope: !5704)
!5741 = !DILocation(line: 521, column: 3, scope: !5704)
!5742 = !DILocation(line: 521, column: 10, scope: !5704)
!5743 = !DILocation(line: 521, column: 19, scope: !5704)
!5744 = !DILocation(line: 522, column: 3, scope: !5704)
!5745 = !DILocation(line: 522, column: 10, scope: !5704)
!5746 = !DILocation(line: 522, column: 19, scope: !5704)
!5747 = !DILocation(line: 525, column: 3, scope: !5704)
!5748 = !DILocation(line: 525, column: 10, scope: !5704)
!5749 = !DILocation(line: 525, column: 18, scope: !5704)
!5750 = !DILocation(line: 526, column: 3, scope: !5704)
!5751 = !DILocation(line: 526, column: 10, scope: !5704)
!5752 = !DILocation(line: 526, column: 19, scope: !5704)
!5753 = !DILocation(line: 527, column: 21, scope: !5704)
!5754 = !DILocation(line: 527, column: 27, scope: !5704)
!5755 = !DILocation(line: 527, column: 3, scope: !5704)
!5756 = !DILocation(line: 527, column: 10, scope: !5704)
!5757 = !DILocation(line: 527, column: 19, scope: !5704)
!5758 = !DILocation(line: 530, column: 3, scope: !5704)
!5759 = !DILocation(line: 530, column: 10, scope: !5704)
!5760 = !DILocation(line: 530, column: 18, scope: !5704)
!5761 = !DILocation(line: 531, column: 3, scope: !5704)
!5762 = !DILocation(line: 531, column: 10, scope: !5704)
!5763 = !DILocation(line: 531, column: 19, scope: !5704)
!5764 = !DILocation(line: 532, column: 22, scope: !5704)
!5765 = !DILocation(line: 532, column: 28, scope: !5704)
!5766 = !DILocation(line: 532, column: 34, scope: !5704)
!5767 = !DILocation(line: 532, column: 21, scope: !5704)
!5768 = !DILocation(line: 532, column: 3, scope: !5704)
!5769 = !DILocation(line: 532, column: 10, scope: !5704)
!5770 = !DILocation(line: 532, column: 19, scope: !5704)
!5771 = !DILocation(line: 533, column: 3, scope: !5704)
!5772 = !DILocation(line: 535, column: 38, scope: !5681)
!5773 = !DILocation(line: 535, column: 46, scope: !5681)
!5774 = !DILocation(line: 535, column: 8, scope: !5681)
!5775 = !DILocation(line: 535, column: 6, scope: !5681)
!5776 = !DILocation(line: 537, column: 16, scope: !5681)
!5777 = !DILocation(line: 537, column: 25, scope: !5681)
!5778 = !DILocation(line: 537, column: 2, scope: !5681)
!5779 = !DILocation(line: 539, column: 9, scope: !5681)
!5780 = !DILocation(line: 539, column: 2, scope: !5681)
!5781 = distinct !DISubprogram(name: "dt9812_usb_probe", scope: !3, file: !3, line: 849, type: !4061, scopeLine: 851, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !298)
!5782 = !DILocalVariable(name: "intf", arg: 1, scope: !5781, file: !3, line: 849, type: !4063)
!5783 = !DILocation(line: 849, column: 51, scope: !5781)
!5784 = !DILocalVariable(name: "id", arg: 2, scope: !5781, file: !3, line: 850, type: !4152)
!5785 = !DILocation(line: 850, column: 36, scope: !5781)
!5786 = !DILocation(line: 852, column: 32, scope: !5781)
!5787 = !DILocation(line: 852, column: 54, scope: !5781)
!5788 = !DILocation(line: 852, column: 58, scope: !5781)
!5789 = !DILocation(line: 852, column: 9, scope: !5781)
!5790 = !DILocation(line: 852, column: 2, scope: !5781)
