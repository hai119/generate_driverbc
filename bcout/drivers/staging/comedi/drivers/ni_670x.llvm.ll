; ModuleID = '../bcout/drivers/staging/comedi/drivers/ni_670x.llvm.bc'
source_filename = "drivers/staging/comedi/drivers/ni_670x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_ni_670x_driver_init6:\09\09\09"
module asm ".long\09ni_670x_driver_init - .\09\09\09"
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
%struct.pci_driver = type { %struct.list_head, i8*, %struct.pci_device_id*, i32 (%struct.pci_dev*, %struct.pci_device_id*)*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, %struct.pci_error_handlers*, %struct.attribute_group**, %struct.device_driver, %struct.pci_dynids }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.pci_dev = type <{ %struct.list_head, %struct.pci_bus*, %struct.pci_bus*, i8*, %struct.proc_dir_entry*, %struct.pci_slot*, i32, i16, i16, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, [6 x i8], i64*, %struct.pci_driver*, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, [4 x i8], %struct.pcie_link_state*, i8, [3 x i8], i32, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], [4 x i8], %struct.hlist_head, %struct.bin_attribute*, i32, [4 x i8], [17 x %struct.bin_attribute*], [17 x %struct.bin_attribute*], %struct.attribute_group**, %struct.pci_vpd*, %union.anon.65, i16, i8, i8, i16, [2 x i8], i64, i64, i8*, i64 }>
%struct.pci_bus = type { %struct.list_head, %struct.pci_bus*, %struct.list_head, %struct.list_head, %struct.pci_dev*, %struct.list_head, [4 x %struct.resource*], %struct.list_head, %struct.resource, %struct.pci_ops*, %struct.msi_controller*, i8*, %struct.proc_dir_entry*, i8, i8, i8, i8, [48 x i8], i16, i16, %struct.device*, %struct.device, %struct.bin_attribute*, %struct.bin_attribute*, i8 }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.pci_ops = type { i32 (%struct.pci_bus*)*, void (%struct.pci_bus*)*, i8* (%struct.pci_bus*, i32, i32)*, i32 (%struct.pci_bus*, i32, i32, i32, i32*)*, i32 (%struct.pci_bus*, i32, i32, i32, i32)* }
%struct.msi_controller = type opaque
%struct.proc_dir_entry = type opaque
%struct.pci_slot = type { %struct.pci_bus*, %struct.list_head, %struct.hotplug_slot*, i8, %struct.kobject }
%struct.hotplug_slot = type opaque
%struct.pcie_link_state = type opaque
%struct.pci_vpd = type opaque
%union.anon.65 = type { %struct.pci_sriov* }
%struct.pci_sriov = type opaque
%struct.pci_error_handlers = type { i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)* }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.ni_670x_board = type { i8*, i16 }
%struct.kmem_cache = type opaque
%struct.ni_670x_private = type { i32, i32 }

@__UNIQUE_ID___addressable_ni_670x_driver_init234 = internal global i8* bitcast (i32 ()* @ni_670x_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@ni_670x_driver = internal global %struct.comedi_driver { %struct.comedi_driver* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct.module* null, i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* null, void (%struct.comedi_device*)* @ni_670x_detach, i32 (%struct.comedi_device*, i64)* @ni_670x_auto_attach, i32 0, i8** null, i32 0 }, align 8, !dbg !160
@ni_670x_pci_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct.pci_device_id* getelementptr inbounds ([4 x %struct.pci_device_id], [4 x %struct.pci_device_id]* @ni_670x_pci_table, i32 0, i32 0), i32 (%struct.pci_dev*, %struct.pci_device_id*)* @ni_670x_pci_probe, void (%struct.pci_dev*)* @comedi_pci_auto_unconfig, i32 (%struct.pci_dev*, i32)* null, i32 (%struct.pci_dev*)* null, void (%struct.pci_dev*)* null, i32 (%struct.pci_dev*, i32)* null, %struct.pci_error_handlers* null, %struct.attribute_group** null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, align 8, !dbg !3984
@__exitcall_ni_670x_driver_exit = internal global void ()* @ni_670x_driver_exit, section ".exitcall.exit", align 8, !dbg !131
@__UNIQUE_ID_author235 = internal constant [45 x i8] c"ni_670x.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1, !dbg !138
@__UNIQUE_ID_description236 = internal constant [44 x i8] c"ni_670x.description=Comedi low-level driver\00", section ".modinfo", align 1, !dbg !145
@__UNIQUE_ID_file237 = internal constant [52 x i8] c"ni_670x.file=drivers/staging/comedi/drivers/ni_670x\00", section ".modinfo", align 1, !dbg !150
@__UNIQUE_ID_license238 = internal constant [20 x i8] c"ni_670x.license=GPL\00", section ".modinfo", align 1, !dbg !155
@.str = private unnamed_addr constant [8 x i8] c"ni_670x\00", align 1
@ni_670x_boards = internal constant [3 x %struct.ni_670x_board] [%struct.ni_670x_board { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i16 16 }, %struct.ni_670x_board { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i16 32 }, %struct.ni_670x_board { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i16 32 }], align 16, !dbg !3976
@range_bipolar10 = external dso_local constant %struct.comedi_lrange, align 4
@range_0_20mA = external dso_local constant %struct.comedi_lrange, align 4
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"PCI-6703\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"PXI-6704\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"PCI-6704\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@ni_670x_pci_table = internal constant [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 4243, i32 4752, i32 -1, i32 -1, i32 0, i32 0, i64 2 }, %struct.pci_device_id { i32 4243, i32 6432, i32 -1, i32 -1, i32 0, i32 0, i64 1 }, %struct.pci_device_id { i32 4243, i32 11408, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id zeroinitializer], align 16, !dbg !4265
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_ni_670x_driver_init234 to i8*), i8* bitcast (void ()* @ni_670x_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_ni_670x_driver_exit to i8*), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__UNIQUE_ID_author235, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__UNIQUE_ID_description236, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__UNIQUE_ID_file237, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__UNIQUE_ID_license238, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @ni_670x_driver_init() #0 section ".init.text" !dbg !4273 {
entry:
  %call = call i32 @comedi_pci_driver_register(%struct.comedi_driver* @ni_670x_driver, %struct.pci_driver* @ni_670x_pci_driver) #7, !dbg !4276
  ret i32 %call, !dbg !4276
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @ni_670x_driver_exit() #0 section ".exit.text" !dbg !4277 {
entry:
  call void @comedi_pci_driver_unregister(%struct.comedi_driver* @ni_670x_driver, %struct.pci_driver* @ni_670x_pci_driver) #7, !dbg !4278
  ret void, !dbg !4278
}

; Function Attrs: noredzone
declare dso_local void @comedi_pci_driver_unregister(%struct.comedi_driver*, %struct.pci_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_pci_driver_register(%struct.comedi_driver*, %struct.pci_driver*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ni_670x_detach(%struct.comedi_device* %dev) #2 !dbg !4279 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4280, metadata !DIExpression()), !dbg !4281
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s, metadata !4282, metadata !DIExpression()), !dbg !4283
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4284
  call void @comedi_pci_detach(%struct.comedi_device* %0) #7, !dbg !4285
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4286
  %n_subdevices = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %1, i32 0, i32 15, !dbg !4288
  %2 = load i32, i32* %n_subdevices, align 4, !dbg !4288
  %tobool = icmp ne i32 %2, 0, !dbg !4286
  br i1 %tobool, label %if.then, label %if.end3, !dbg !4289

if.then:                                          ; preds = %entry
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4290
  %subdevices = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %3, i32 0, i32 16, !dbg !4292
  %4 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices, align 8, !dbg !4292
  %arrayidx = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %4, i64 0, !dbg !4290
  store %struct.comedi_subdevice* %arrayidx, %struct.comedi_subdevice** %s, align 8, !dbg !4293
  %5 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4294
  %tobool1 = icmp ne %struct.comedi_subdevice* %5, null, !dbg !4294
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !4296

if.then2:                                         ; preds = %if.then
  %6 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4297
  %range_table_list = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %6, i32 0, i32 16, !dbg !4298
  %7 = load %struct.comedi_lrange**, %struct.comedi_lrange*** %range_table_list, align 8, !dbg !4298
  %8 = bitcast %struct.comedi_lrange** %7 to i8*, !dbg !4297
  call void @kfree(i8* %8) #7, !dbg !4299
  br label %if.end, !dbg !4299

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end3, !dbg !4300

if.end3:                                          ; preds = %if.end, %entry
  ret void, !dbg !4301
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ni_670x_auto_attach(%struct.comedi_device* %dev, i64 %context) #2 !dbg !4302 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %context.addr = alloca i64, align 8
  %pcidev = alloca %struct.pci_dev*, align 8
  %board = alloca %struct.ni_670x_board*, align 8
  %devpriv = alloca %struct.ni_670x_private*, align 8
  %s = alloca %struct.comedi_subdevice*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %range_table_list = alloca %struct.comedi_lrange**, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4303, metadata !DIExpression()), !dbg !4304
  store i64 %context, i64* %context.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %context.addr, metadata !4305, metadata !DIExpression()), !dbg !4306
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pcidev, metadata !4307, metadata !DIExpression()), !dbg !4308
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4309
  %call = call %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device* %0) #7, !dbg !4310
  store %struct.pci_dev* %call, %struct.pci_dev** %pcidev, align 8, !dbg !4308
  call void @llvm.dbg.declare(metadata %struct.ni_670x_board** %board, metadata !4311, metadata !DIExpression()), !dbg !4313
  store %struct.ni_670x_board* null, %struct.ni_670x_board** %board, align 8, !dbg !4313
  call void @llvm.dbg.declare(metadata %struct.ni_670x_private** %devpriv, metadata !4314, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s, metadata !4321, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4323, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4325, metadata !DIExpression()), !dbg !4326
  %1 = load i64, i64* %context.addr, align 8, !dbg !4327
  %cmp = icmp ult i64 %1, 3, !dbg !4329
  br i1 %cmp, label %if.then, label %if.end, !dbg !4330

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %context.addr, align 8, !dbg !4331
  %arrayidx = getelementptr [3 x %struct.ni_670x_board], [3 x %struct.ni_670x_board]* @ni_670x_boards, i64 0, i64 %2, !dbg !4332
  store %struct.ni_670x_board* %arrayidx, %struct.ni_670x_board** %board, align 8, !dbg !4333
  br label %if.end, !dbg !4334

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.ni_670x_board*, %struct.ni_670x_board** %board, align 8, !dbg !4335
  %tobool = icmp ne %struct.ni_670x_board* %3, null, !dbg !4335
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !4337

if.then1:                                         ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !4338
  br label %return, !dbg !4338

if.end2:                                          ; preds = %if.end
  %4 = load %struct.ni_670x_board*, %struct.ni_670x_board** %board, align 8, !dbg !4339
  %5 = bitcast %struct.ni_670x_board* %4 to i8*, !dbg !4339
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4340
  %board_ptr = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 9, !dbg !4341
  store i8* %5, i8** %board_ptr, align 8, !dbg !4342
  %7 = load %struct.ni_670x_board*, %struct.ni_670x_board** %board, align 8, !dbg !4343
  %name = getelementptr inbounds %struct.ni_670x_board, %struct.ni_670x_board* %7, i32 0, i32 0, !dbg !4344
  %8 = load i8*, i8** %name, align 8, !dbg !4344
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4345
  %board_name = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 8, !dbg !4346
  store i8* %8, i8** %board_name, align 8, !dbg !4347
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4348
  %call3 = call i32 @comedi_pci_enable(%struct.comedi_device* %10) #7, !dbg !4349
  store i32 %call3, i32* %ret, align 4, !dbg !4350
  %11 = load i32, i32* %ret, align 4, !dbg !4351
  %tobool4 = icmp ne i32 %11, 0, !dbg !4351
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !4353

if.then5:                                         ; preds = %if.end2
  %12 = load i32, i32* %ret, align 4, !dbg !4354
  store i32 %12, i32* %retval, align 4, !dbg !4355
  br label %return, !dbg !4355

if.end6:                                          ; preds = %if.end2
  %13 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4356
  %call7 = call i8* @comedi_alloc_devpriv(%struct.comedi_device* %13, i64 8) #7, !dbg !4357
  %14 = bitcast i8* %call7 to %struct.ni_670x_private*, !dbg !4357
  store %struct.ni_670x_private* %14, %struct.ni_670x_private** %devpriv, align 8, !dbg !4358
  %15 = load %struct.ni_670x_private*, %struct.ni_670x_private** %devpriv, align 8, !dbg !4359
  %tobool8 = icmp ne %struct.ni_670x_private* %15, null, !dbg !4359
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !4361

if.then9:                                         ; preds = %if.end6
  store i32 -12, i32* %retval, align 4, !dbg !4362
  br label %return, !dbg !4362

if.end10:                                         ; preds = %if.end6
  %16 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4363
  %call11 = call i32 @ni_670x_mite_init(%struct.pci_dev* %16) #7, !dbg !4364
  store i32 %call11, i32* %ret, align 4, !dbg !4365
  %17 = load i32, i32* %ret, align 4, !dbg !4366
  %tobool12 = icmp ne i32 %17, 0, !dbg !4366
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !4368

if.then13:                                        ; preds = %if.end10
  %18 = load i32, i32* %ret, align 4, !dbg !4369
  store i32 %18, i32* %retval, align 4, !dbg !4370
  br label %return, !dbg !4370

if.end14:                                         ; preds = %if.end10
  %19 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4371
  %call15 = call i8* @pci_ioremap_bar(%struct.pci_dev* %19, i32 1) #7, !dbg !4372
  %20 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4373
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 17, !dbg !4374
  store i8* %call15, i8** %mmio, align 8, !dbg !4375
  %21 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4376
  %mmio16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %21, i32 0, i32 17, !dbg !4378
  %22 = load i8*, i8** %mmio16, align 8, !dbg !4378
  %tobool17 = icmp ne i8* %22, null, !dbg !4376
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !4379

if.then18:                                        ; preds = %if.end14
  store i32 -12, i32* %retval, align 4, !dbg !4380
  br label %return, !dbg !4380

if.end19:                                         ; preds = %if.end14
  %23 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4381
  %call20 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %23, i32 2) #7, !dbg !4382
  store i32 %call20, i32* %ret, align 4, !dbg !4383
  %24 = load i32, i32* %ret, align 4, !dbg !4384
  %tobool21 = icmp ne i32 %24, 0, !dbg !4384
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !4386

if.then22:                                        ; preds = %if.end19
  %25 = load i32, i32* %ret, align 4, !dbg !4387
  store i32 %25, i32* %retval, align 4, !dbg !4388
  br label %return, !dbg !4388

if.end23:                                         ; preds = %if.end19
  %26 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4389
  %subdevices = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %26, i32 0, i32 16, !dbg !4390
  %27 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices, align 8, !dbg !4390
  %arrayidx24 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %27, i64 0, !dbg !4389
  store %struct.comedi_subdevice* %arrayidx24, %struct.comedi_subdevice** %s, align 8, !dbg !4391
  %28 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4392
  %type = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %28, i32 0, i32 2, !dbg !4393
  store i32 2, i32* %type, align 4, !dbg !4394
  %29 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4395
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %29, i32 0, i32 4, !dbg !4396
  store i32 131072, i32* %subdev_flags, align 4, !dbg !4397
  %30 = load %struct.ni_670x_board*, %struct.ni_670x_board** %board, align 8, !dbg !4398
  %ao_chans = getelementptr inbounds %struct.ni_670x_board, %struct.ni_670x_board* %30, i32 0, i32 1, !dbg !4399
  %31 = load i16, i16* %ao_chans, align 8, !dbg !4399
  %conv = zext i16 %31 to i32, !dbg !4398
  %32 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4400
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %32, i32 0, i32 3, !dbg !4401
  store i32 %conv, i32* %n_chan, align 8, !dbg !4402
  %33 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4403
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %33, i32 0, i32 13, !dbg !4404
  store i32 65535, i32* %maxdata, align 8, !dbg !4405
  %34 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4406
  %n_chan25 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %34, i32 0, i32 3, !dbg !4408
  %35 = load i32, i32* %n_chan25, align 8, !dbg !4408
  %cmp26 = icmp eq i32 %35, 32, !dbg !4409
  br i1 %cmp26, label %if.then28, label %if.else, !dbg !4410

if.then28:                                        ; preds = %if.end23
  call void @llvm.dbg.declare(metadata %struct.comedi_lrange*** %range_table_list, metadata !4411, metadata !DIExpression()), !dbg !4414
  %call29 = call i8* @kmalloc_array(i64 32, i64 8, i32 3264) #7, !dbg !4415
  %36 = bitcast i8* %call29 to %struct.comedi_lrange**, !dbg !4415
  store %struct.comedi_lrange** %36, %struct.comedi_lrange*** %range_table_list, align 8, !dbg !4416
  %37 = load %struct.comedi_lrange**, %struct.comedi_lrange*** %range_table_list, align 8, !dbg !4417
  %tobool30 = icmp ne %struct.comedi_lrange** %37, null, !dbg !4417
  br i1 %tobool30, label %if.end32, label %if.then31, !dbg !4419

if.then31:                                        ; preds = %if.then28
  store i32 -12, i32* %retval, align 4, !dbg !4420
  br label %return, !dbg !4420

if.end32:                                         ; preds = %if.then28
  %38 = load %struct.comedi_lrange**, %struct.comedi_lrange*** %range_table_list, align 8, !dbg !4421
  %39 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4422
  %range_table_list33 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %39, i32 0, i32 16, !dbg !4423
  store %struct.comedi_lrange** %38, %struct.comedi_lrange*** %range_table_list33, align 8, !dbg !4424
  store i32 0, i32* %i, align 4, !dbg !4425
  br label %for.cond, !dbg !4427

for.cond:                                         ; preds = %for.inc, %if.end32
  %40 = load i32, i32* %i, align 4, !dbg !4428
  %cmp34 = icmp slt i32 %40, 16, !dbg !4430
  br i1 %cmp34, label %for.body, label %for.end, !dbg !4431

for.body:                                         ; preds = %for.cond
  %41 = load %struct.comedi_lrange**, %struct.comedi_lrange*** %range_table_list, align 8, !dbg !4432
  %42 = load i32, i32* %i, align 4, !dbg !4434
  %idxprom = sext i32 %42 to i64, !dbg !4432
  %arrayidx36 = getelementptr %struct.comedi_lrange*, %struct.comedi_lrange** %41, i64 %idxprom, !dbg !4432
  store %struct.comedi_lrange* @range_bipolar10, %struct.comedi_lrange** %arrayidx36, align 8, !dbg !4435
  %43 = load %struct.comedi_lrange**, %struct.comedi_lrange*** %range_table_list, align 8, !dbg !4436
  %44 = load i32, i32* %i, align 4, !dbg !4437
  %add = add i32 16, %44, !dbg !4438
  %idxprom37 = sext i32 %add to i64, !dbg !4436
  %arrayidx38 = getelementptr %struct.comedi_lrange*, %struct.comedi_lrange** %43, i64 %idxprom37, !dbg !4436
  store %struct.comedi_lrange* @range_0_20mA, %struct.comedi_lrange** %arrayidx38, align 8, !dbg !4439
  br label %for.inc, !dbg !4440

for.inc:                                          ; preds = %for.body
  %45 = load i32, i32* %i, align 4, !dbg !4441
  %inc = add i32 %45, 1, !dbg !4441
  store i32 %inc, i32* %i, align 4, !dbg !4441
  br label %for.cond, !dbg !4442, !llvm.loop !4443

for.end:                                          ; preds = %for.cond
  br label %if.end39, !dbg !4445

if.else:                                          ; preds = %if.end23
  %46 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4446
  %range_table = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %46, i32 0, i32 15, !dbg !4448
  store %struct.comedi_lrange* @range_bipolar10, %struct.comedi_lrange** %range_table, align 8, !dbg !4449
  br label %if.end39

if.end39:                                         ; preds = %if.else, %for.end
  %47 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4450
  %insn_write = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %47, i32 0, i32 19, !dbg !4451
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @ni_670x_ao_insn_write, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_write, align 8, !dbg !4452
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4453
  %call40 = call i32 @comedi_alloc_subdev_readback(%struct.comedi_subdevice* %48) #7, !dbg !4454
  store i32 %call40, i32* %ret, align 4, !dbg !4455
  %49 = load i32, i32* %ret, align 4, !dbg !4456
  %tobool41 = icmp ne i32 %49, 0, !dbg !4456
  br i1 %tobool41, label %if.then42, label %if.end43, !dbg !4458

if.then42:                                        ; preds = %if.end39
  %50 = load i32, i32* %ret, align 4, !dbg !4459
  store i32 %50, i32* %retval, align 4, !dbg !4460
  br label %return, !dbg !4460

if.end43:                                         ; preds = %if.end39
  %51 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4461
  %subdevices44 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %51, i32 0, i32 16, !dbg !4462
  %52 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices44, align 8, !dbg !4462
  %arrayidx45 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %52, i64 1, !dbg !4461
  store %struct.comedi_subdevice* %arrayidx45, %struct.comedi_subdevice** %s, align 8, !dbg !4463
  %53 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4464
  %type46 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %53, i32 0, i32 2, !dbg !4465
  store i32 5, i32* %type46, align 4, !dbg !4466
  %54 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4467
  %subdev_flags47 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %54, i32 0, i32 4, !dbg !4468
  store i32 196608, i32* %subdev_flags47, align 4, !dbg !4469
  %55 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4470
  %n_chan48 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %55, i32 0, i32 3, !dbg !4471
  store i32 8, i32* %n_chan48, align 8, !dbg !4472
  %56 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4473
  %maxdata49 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %56, i32 0, i32 13, !dbg !4474
  store i32 1, i32* %maxdata49, align 8, !dbg !4475
  %57 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4476
  %range_table50 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %57, i32 0, i32 15, !dbg !4477
  store %struct.comedi_lrange* @range_unipolar5, %struct.comedi_lrange** %range_table50, align 8, !dbg !4478
  %58 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4479
  %insn_bits = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %58, i32 0, i32 20, !dbg !4480
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @ni_670x_dio_insn_bits, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_bits, align 8, !dbg !4481
  %59 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4482
  %insn_config = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %59, i32 0, i32 21, !dbg !4483
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @ni_670x_dio_insn_config, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_config, align 8, !dbg !4484
  %60 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4485
  %mmio51 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %60, i32 0, i32 17, !dbg !4486
  %61 = load i8*, i8** %mmio51, align 8, !dbg !4486
  %add.ptr = getelementptr i8, i8* %61, i64 20, !dbg !4487
  call void @writel(i32 16, i8* %add.ptr) #7, !dbg !4488
  %62 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4489
  %mmio52 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %62, i32 0, i32 17, !dbg !4490
  %63 = load i8*, i8** %mmio52, align 8, !dbg !4490
  %add.ptr53 = getelementptr i8, i8* %63, i64 16, !dbg !4491
  call void @writel(i32 0, i8* %add.ptr53) #7, !dbg !4492
  store i32 0, i32* %retval, align 4, !dbg !4493
  br label %return, !dbg !4493

return:                                           ; preds = %if.end43, %if.then42, %if.then31, %if.then22, %if.then18, %if.then13, %if.then9, %if.then5, %if.then1
  %64 = load i32, i32* %retval, align 4, !dbg !4494
  ret i32 %64, !dbg !4494
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noredzone
declare dso_local void @comedi_pci_detach(%struct.comedi_device*) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: noredzone
declare dso_local %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device*) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_pci_enable(%struct.comedi_device*) #1

; Function Attrs: noredzone
declare dso_local i8* @comedi_alloc_devpriv(%struct.comedi_device*, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ni_670x_mite_init(%struct.pci_dev* %pcidev) #2 !dbg !4495 {
entry:
  %retval = alloca i32, align 4
  %pcidev.addr = alloca %struct.pci_dev*, align 8
  %mite_base = alloca i8*, align 8
  %main_phys_addr = alloca i32, align 4
  store %struct.pci_dev* %pcidev, %struct.pci_dev** %pcidev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pcidev.addr, metadata !4496, metadata !DIExpression()), !dbg !4497
  call void @llvm.dbg.declare(metadata i8** %mite_base, metadata !4498, metadata !DIExpression()), !dbg !4499
  call void @llvm.dbg.declare(metadata i32* %main_phys_addr, metadata !4500, metadata !DIExpression()), !dbg !4501
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pcidev.addr, align 8, !dbg !4502
  %call = call i8* @pci_ioremap_bar(%struct.pci_dev* %0, i32 0) #7, !dbg !4503
  store i8* %call, i8** %mite_base, align 8, !dbg !4504
  %1 = load i8*, i8** %mite_base, align 8, !dbg !4505
  %tobool = icmp ne i8* %1, null, !dbg !4505
  br i1 %tobool, label %if.end, label %if.then, !dbg !4507

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !4508
  br label %return, !dbg !4508

if.end:                                           ; preds = %entry
  %2 = load %struct.pci_dev*, %struct.pci_dev** %pcidev.addr, align 8, !dbg !4509
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 44, !dbg !4509
  %arrayidx = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 1, !dbg !4509
  %start = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx, i32 0, i32 0, !dbg !4509
  %3 = load i64, i64* %start, align 8, !dbg !4509
  %conv = trunc i64 %3 to i32, !dbg !4509
  store i32 %conv, i32* %main_phys_addr, align 4, !dbg !4510
  %4 = load i32, i32* %main_phys_addr, align 4, !dbg !4511
  %conv1 = zext i32 %4 to i64, !dbg !4511
  %or = or i64 %conv1, 128, !dbg !4512
  %conv2 = trunc i64 %or to i32, !dbg !4511
  %5 = load i8*, i8** %mite_base, align 8, !dbg !4513
  %add.ptr = getelementptr i8, i8* %5, i64 192, !dbg !4514
  call void @writel(i32 %conv2, i8* %add.ptr) #7, !dbg !4515
  %6 = load i8*, i8** %mite_base, align 8, !dbg !4516
  call void @iounmap(i8* %6) #7, !dbg !4517
  store i32 0, i32* %retval, align 4, !dbg !4518
  br label %return, !dbg !4518

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !4519
  ret i32 %7, !dbg !4519
}

; Function Attrs: noredzone
declare dso_local i8* @pci_ioremap_bar(%struct.pci_dev*, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmalloc_array(i64 %n, i64 %size, i32 %flags) #2 !dbg !4520 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4523, metadata !DIExpression()), !dbg !4527
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4536, metadata !DIExpression()), !dbg !4537
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4538, metadata !DIExpression()), !dbg !4539
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4540, metadata !DIExpression()), !dbg !4541
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4542, metadata !DIExpression()), !dbg !4546
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4548, metadata !DIExpression()), !dbg !4552
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4554, metadata !DIExpression()), !dbg !4558
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4563, metadata !DIExpression()), !dbg !4564
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4565, metadata !DIExpression()), !dbg !4566
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4567, metadata !DIExpression()), !dbg !4568
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4569, metadata !DIExpression()), !dbg !4570
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4571, metadata !DIExpression()), !dbg !4572
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4573, metadata !DIExpression()), !dbg !4574
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4575, metadata !DIExpression()), !dbg !4576
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4577, metadata !DIExpression()), !dbg !4578
  %retval = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %__a = alloca i64, align 8
  %__b = alloca i64, align 8
  %__d = alloca i64*, align 8
  %tmp = alloca i8, align 1
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4579, metadata !DIExpression()), !dbg !4580
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4581, metadata !DIExpression()), !dbg !4582
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4583, metadata !DIExpression()), !dbg !4584
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !4585, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !4587, metadata !DIExpression()), !dbg !4590
  %0 = load i64, i64* %n.addr, align 8, !dbg !4590
  store i64 %0, i64* %__a, align 8, !dbg !4590
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !4591, metadata !DIExpression()), !dbg !4590
  %1 = load i64, i64* %size.addr, align 8, !dbg !4590
  store i64 %1, i64* %__b, align 8, !dbg !4590
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !4592, metadata !DIExpression()), !dbg !4590
  store i64* %bytes, i64** %__d, align 8, !dbg !4590
  %cmp = icmp eq i64* %__a, %__b, !dbg !4590
  %conv = zext i1 %cmp to i32, !dbg !4590
  %2 = load i64*, i64** %__d, align 8, !dbg !4590
  %cmp1 = icmp eq i64* %__a, %2, !dbg !4590
  %conv2 = zext i1 %cmp1 to i32, !dbg !4590
  %3 = load i64, i64* %__a, align 8, !dbg !4590
  %4 = load i64, i64* %__b, align 8, !dbg !4590
  %5 = load i64*, i64** %__d, align 8, !dbg !4590
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !4590
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4590
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !4590
  store i64 %8, i64* %5, align 8, !dbg !4590
  %frombool = zext i1 %7 to i8, !dbg !4590
  store i8 %frombool, i8* %tmp, align 1, !dbg !4590
  %9 = load i8, i8* %tmp, align 1, !dbg !4590
  %tobool = trunc i8 %9 to i1, !dbg !4590
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #7, !dbg !4594
  %lnot = xor i1 %call, true, !dbg !4594
  %lnot3 = xor i1 %lnot, true, !dbg !4594
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4594
  %conv4 = sext i32 %lnot.ext to i64, !dbg !4594
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !4594
  br i1 %tobool5, label %if.then, label %if.end, !dbg !4595

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !4596
  br label %return, !dbg !4596

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %n.addr, align 8, !dbg !4597
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !4598
  br i1 %11, label %land.lhs.true, label %if.end8, !dbg !4599

land.lhs.true:                                    ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8, !dbg !4600
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !4601
  br i1 %13, label %if.then6, label %if.end8, !dbg !4602

if.then6:                                         ; preds = %land.lhs.true
  %14 = load i64, i64* %bytes, align 8, !dbg !4603
  %15 = load i32, i32* %flags.addr, align 4, !dbg !4604
  store i64 %14, i64* %size.addr.i, align 8
  store i32 %15, i32* %flags.addr.i, align 4
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !4605
  %17 = call i1 @llvm.is.constant.i64(i64 %16) #8, !dbg !4606
  br i1 %17, label %if.then.i, label %if.end9.i, !dbg !4607

if.then.i:                                        ; preds = %if.then6
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !4608
  %cmp.i = icmp ugt i64 %18, 8192, !dbg !4609
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4610

if.then1.i:                                       ; preds = %if.then.i
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !4611
  %20 = load i32, i32* %flags.addr.i, align 4, !dbg !4612
  store i64 %19, i64* %size.addr.i.i, align 8
  store i32 %20, i32* %flags.addr.i.i, align 4
  %21 = load i64, i64* %size.addr.i.i, align 8, !dbg !4613
  %call.i.i = call i32 @get_order(i64 %21) #9, !dbg !4614
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4572
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !4615
  %23 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4616
  %24 = load i32, i32* %order.i.i, align 4, !dbg !4617
  store i64 %22, i64* %size.addr.i.i.i, align 8
  store i32 %23, i32* %flags.addr.i.i.i, align 4
  store i32 %24, i32* %order.addr.i.i.i, align 4
  %25 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4618
  %26 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4619
  %27 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4620
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %25, i32 %26, i32 %27) #10, !dbg !4621
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4621
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4621
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4621
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !4621
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4622
  br label %kmalloc.exit, !dbg !4622

if.end.i:                                         ; preds = %if.then.i
  %28 = load i64, i64* %size.addr.i, align 8, !dbg !4623
  store i64 %28, i64* %size.addr.i11.i, align 8
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4624
  %tobool.i.i = icmp ne i64 %29, 0, !dbg !4624
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4626

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4627
  br label %kmalloc_index.exit.i, !dbg !4627

if.end.i.i:                                       ; preds = %if.end.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4628
  %cmp.i.i = icmp ule i64 %30, 8, !dbg !4630
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4631

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4632
  br label %kmalloc_index.exit.i, !dbg !4632

if.end2.i.i:                                      ; preds = %if.end.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4633
  %cmp3.i.i = icmp ugt i64 %31, 64, !dbg !4635
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4636

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4637
  %cmp4.i.i = icmp ule i64 %32, 96, !dbg !4638
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4639

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4640
  br label %kmalloc_index.exit.i, !dbg !4640

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4641
  %cmp7.i.i = icmp ugt i64 %33, 128, !dbg !4643
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4644

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4645
  %cmp9.i.i = icmp ule i64 %34, 192, !dbg !4646
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4647

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4648
  br label %kmalloc_index.exit.i, !dbg !4648

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4649
  %cmp12.i.i = icmp ule i64 %35, 8, !dbg !4651
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4652

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4653
  br label %kmalloc_index.exit.i, !dbg !4653

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4654
  %cmp15.i.i = icmp ule i64 %36, 16, !dbg !4656
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4657

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4658
  br label %kmalloc_index.exit.i, !dbg !4658

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4659
  %cmp18.i.i = icmp ule i64 %37, 32, !dbg !4661
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4662

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4663
  br label %kmalloc_index.exit.i, !dbg !4663

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4664
  %cmp21.i.i = icmp ule i64 %38, 64, !dbg !4666
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4667

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4668
  br label %kmalloc_index.exit.i, !dbg !4668

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4669
  %cmp24.i.i = icmp ule i64 %39, 128, !dbg !4671
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4672

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4673
  br label %kmalloc_index.exit.i, !dbg !4673

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4674
  %cmp27.i.i = icmp ule i64 %40, 256, !dbg !4676
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4677

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4678
  br label %kmalloc_index.exit.i, !dbg !4678

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4679
  %cmp30.i.i = icmp ule i64 %41, 512, !dbg !4681
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4682

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4683
  br label %kmalloc_index.exit.i, !dbg !4683

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4684
  %cmp33.i.i = icmp ule i64 %42, 1024, !dbg !4686
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4687

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4688
  br label %kmalloc_index.exit.i, !dbg !4688

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4689
  %cmp36.i.i = icmp ule i64 %43, 2048, !dbg !4691
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4692

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4693
  br label %kmalloc_index.exit.i, !dbg !4693

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4694
  %cmp39.i.i = icmp ule i64 %44, 4096, !dbg !4696
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4697

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4698
  br label %kmalloc_index.exit.i, !dbg !4698

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4699
  %cmp42.i.i = icmp ule i64 %45, 8192, !dbg !4701
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4702

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4703
  br label %kmalloc_index.exit.i, !dbg !4703

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4704
  %cmp45.i.i = icmp ule i64 %46, 16384, !dbg !4706
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4707

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4708
  br label %kmalloc_index.exit.i, !dbg !4708

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4709
  %cmp48.i.i = icmp ule i64 %47, 32768, !dbg !4711
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4712

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4713
  br label %kmalloc_index.exit.i, !dbg !4713

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4714
  %cmp51.i.i = icmp ule i64 %48, 65536, !dbg !4716
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4717

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4718
  br label %kmalloc_index.exit.i, !dbg !4718

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4719
  %cmp54.i.i = icmp ule i64 %49, 131072, !dbg !4721
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4722

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4723
  br label %kmalloc_index.exit.i, !dbg !4723

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4724
  %cmp57.i.i = icmp ule i64 %50, 262144, !dbg !4726
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4727

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4728
  br label %kmalloc_index.exit.i, !dbg !4728

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4729
  %cmp60.i.i = icmp ule i64 %51, 524288, !dbg !4731
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4732

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4733
  br label %kmalloc_index.exit.i, !dbg !4733

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4734
  %cmp63.i.i = icmp ule i64 %52, 1048576, !dbg !4736
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4737

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4738
  br label %kmalloc_index.exit.i, !dbg !4738

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4739
  %cmp66.i.i = icmp ule i64 %53, 2097152, !dbg !4741
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4742

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4743
  br label %kmalloc_index.exit.i, !dbg !4743

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4744
  %cmp69.i.i = icmp ule i64 %54, 4194304, !dbg !4746
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4747

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4748
  br label %kmalloc_index.exit.i, !dbg !4748

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4749
  %cmp72.i.i = icmp ule i64 %55, 8388608, !dbg !4751
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4752

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4753
  br label %kmalloc_index.exit.i, !dbg !4753

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4754
  %cmp75.i.i = icmp ule i64 %56, 16777216, !dbg !4756
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4757

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4758
  br label %kmalloc_index.exit.i, !dbg !4758

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4759
  %cmp78.i.i = icmp ule i64 %57, 33554432, !dbg !4761
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4762

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4763
  br label %kmalloc_index.exit.i, !dbg !4763

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4764
  %cmp81.i.i = icmp ule i64 %58, 67108864, !dbg !4766
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4767

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4768
  br label %kmalloc_index.exit.i, !dbg !4768

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !4769, !srcloc !4772
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 107) #8, !dbg !4773, !srcloc !4776
  unreachable, !dbg !4777

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %59 = load i32, i32* %retval.i.i, align 4, !dbg !4778
  store i32 %59, i32* %index.i, align 4, !dbg !4779
  %60 = load i32, i32* %index.i, align 4, !dbg !4780
  %tobool.i = icmp ne i32 %60, 0, !dbg !4780
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4782

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4783
  br label %kmalloc.exit, !dbg !4783

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %61 = load i32, i32* %flags.addr.i, align 4, !dbg !4784
  store i32 %61, i32* %flags.addr.i13.i, align 4
  %62 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4785
  %and.i.i = and i32 %62, 17, !dbg !4785
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4785
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4785
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4785
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4785
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4787

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4788
  br label %kmalloc_type.exit.i, !dbg !4788

if.end.i16.i:                                     ; preds = %if.end4.i
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4789
  %and2.i.i = and i32 %63, 1, !dbg !4790
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4789
  %64 = zext i1 %tobool3.i.i to i64, !dbg !4789
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4789
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4791
  br label %kmalloc_type.exit.i, !dbg !4791

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %65 = load i32, i32* %retval.i12.i, align 4, !dbg !4792
  %idxprom.i = zext i32 %65 to i64, !dbg !4793
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4793
  %66 = load i32, i32* %index.i, align 4, !dbg !4794
  %idxprom6.i = zext i32 %66 to i64, !dbg !4793
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4793
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4793
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !4795
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !4796
  store %struct.kmem_cache* %67, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %68, i32* %flags.addr.i17.i, align 4
  store i64 %69, i64* %size.addr.i18.i, align 8
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4797
  %71 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4798
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %70, i32 %71) #10, !dbg !4799
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4799
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4799
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4799
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !4799
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4541
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4800
  %73 = load i8*, i8** %ret.i.i, align 8, !dbg !4801
  %74 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4802
  %75 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4803
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %72, i8* %73, i64 %74, i32 %75) #10, !dbg !4804
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4805
  %76 = load i8*, i8** %ret.i.i, align 8, !dbg !4806
  store i8* %76, i8** %retval.i, align 8, !dbg !4807
  br label %kmalloc.exit, !dbg !4807

if.end9.i:                                        ; preds = %if.then6
  %77 = load i64, i64* %size.addr.i, align 8, !dbg !4808
  %78 = load i32, i32* %flags.addr.i, align 4, !dbg !4809
  %call10.i = call noalias i8* @__kmalloc(i64 %77, i32 %78) #10, !dbg !4810
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4810
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4810
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4810
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !4810
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4811
  br label %kmalloc.exit, !dbg !4811

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %79 = load i8*, i8** %retval.i, align 8, !dbg !4812
  store i8* %79, i8** %retval, align 8, !dbg !4813
  br label %return, !dbg !4813

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %80 = load i64, i64* %bytes, align 8, !dbg !4814
  %81 = load i32, i32* %flags.addr, align 4, !dbg !4815
  %call9 = call noalias i8* @__kmalloc(i64 %80, i32 %81) #7, !dbg !4816
  %ptrint = ptrtoint i8* %call9 to i64, !dbg !4816
  %maskedptr = and i64 %ptrint, 7, !dbg !4816
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !4816
  call void @llvm.assume(i1 %maskcond), !dbg !4816
  store i8* %call9, i8** %retval, align 8, !dbg !4817
  br label %return, !dbg !4817

return:                                           ; preds = %if.end8, %kmalloc.exit, %if.then
  %82 = load i8*, i8** %retval, align 8, !dbg !4818
  ret i8* %82, !dbg !4818
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ni_670x_ao_insn_write(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !4819 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %chan = alloca i32, align 4
  %val = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4820, metadata !DIExpression()), !dbg !4821
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4822, metadata !DIExpression()), !dbg !4823
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !4824, metadata !DIExpression()), !dbg !4825
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !4826, metadata !DIExpression()), !dbg !4827
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !4828, metadata !DIExpression()), !dbg !4829
  %0 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4830
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %0, i32 0, i32 4, !dbg !4830
  %1 = load i32, i32* %chanspec, align 4, !dbg !4830
  %and = and i32 %1, 65535, !dbg !4830
  store i32 %and, i32* %chan, align 4, !dbg !4829
  call void @llvm.dbg.declare(metadata i32* %val, metadata !4831, metadata !DIExpression()), !dbg !4832
  %2 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4833
  %readback = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %2, i32 0, i32 32, !dbg !4834
  %3 = load i32*, i32** %readback, align 8, !dbg !4834
  %4 = load i32, i32* %chan, align 4, !dbg !4835
  %idxprom = zext i32 %4 to i64, !dbg !4833
  %arrayidx = getelementptr i32, i32* %3, i64 %idxprom, !dbg !4833
  %5 = load i32, i32* %arrayidx, align 4, !dbg !4833
  store i32 %5, i32* %val, align 4, !dbg !4832
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4836, metadata !DIExpression()), !dbg !4837
  store i32 0, i32* %i, align 4, !dbg !4838
  br label %for.cond, !dbg !4840

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4, !dbg !4841
  %7 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4843
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %7, i32 0, i32 1, !dbg !4844
  %8 = load i32, i32* %n, align 4, !dbg !4844
  %cmp = icmp ult i32 %6, %8, !dbg !4845
  br i1 %cmp, label %for.body, label %for.end, !dbg !4846

for.body:                                         ; preds = %for.cond
  %9 = load i32*, i32** %data.addr, align 8, !dbg !4847
  %10 = load i32, i32* %i, align 4, !dbg !4849
  %idxprom1 = sext i32 %10 to i64, !dbg !4847
  %arrayidx2 = getelementptr i32, i32* %9, i64 %idxprom1, !dbg !4847
  %11 = load i32, i32* %arrayidx2, align 4, !dbg !4847
  store i32 %11, i32* %val, align 4, !dbg !4850
  %12 = load i32, i32* %chan, align 4, !dbg !4851
  %and3 = and i32 %12, 15, !dbg !4852
  %shl = shl i32 %and3, 1, !dbg !4853
  %13 = load i32, i32* %chan, align 4, !dbg !4854
  %and4 = and i32 %13, 16, !dbg !4855
  %shr = lshr i32 %and4, 4, !dbg !4856
  %or = or i32 %shl, %shr, !dbg !4857
  %14 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4858
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 17, !dbg !4859
  %15 = load i8*, i8** %mmio, align 8, !dbg !4859
  %add.ptr = getelementptr i8, i8* %15, i64 12, !dbg !4860
  call void @writel(i32 %or, i8* %add.ptr) #7, !dbg !4861
  %16 = load i32, i32* %val, align 4, !dbg !4862
  %17 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4863
  %mmio5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 17, !dbg !4864
  %18 = load i8*, i8** %mmio5, align 8, !dbg !4864
  %add.ptr6 = getelementptr i8, i8* %18, i64 0, !dbg !4865
  call void @writel(i32 %16, i8* %add.ptr6) #7, !dbg !4866
  br label %for.inc, !dbg !4867

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4, !dbg !4868
  %inc = add i32 %19, 1, !dbg !4868
  store i32 %inc, i32* %i, align 4, !dbg !4868
  br label %for.cond, !dbg !4869, !llvm.loop !4870

for.end:                                          ; preds = %for.cond
  %20 = load i32, i32* %val, align 4, !dbg !4872
  %21 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4873
  %readback7 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %21, i32 0, i32 32, !dbg !4874
  %22 = load i32*, i32** %readback7, align 8, !dbg !4874
  %23 = load i32, i32* %chan, align 4, !dbg !4875
  %idxprom8 = zext i32 %23 to i64, !dbg !4873
  %arrayidx9 = getelementptr i32, i32* %22, i64 %idxprom8, !dbg !4873
  store i32 %20, i32* %arrayidx9, align 4, !dbg !4876
  %24 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4877
  %n10 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %24, i32 0, i32 1, !dbg !4878
  %25 = load i32, i32* %n10, align 4, !dbg !4878
  ret i32 %25, !dbg !4879
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_alloc_subdev_readback(%struct.comedi_subdevice*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ni_670x_dio_insn_bits(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !4880 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4881, metadata !DIExpression()), !dbg !4882
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4883, metadata !DIExpression()), !dbg !4884
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !4885, metadata !DIExpression()), !dbg !4886
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !4887, metadata !DIExpression()), !dbg !4888
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4889
  %1 = load i32*, i32** %data.addr, align 8, !dbg !4891
  %call = call i32 @comedi_dio_update_state(%struct.comedi_subdevice* %0, i32* %1) #7, !dbg !4892
  %tobool = icmp ne i32 %call, 0, !dbg !4892
  br i1 %tobool, label %if.then, label %if.end, !dbg !4893

if.then:                                          ; preds = %entry
  %2 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4894
  %state = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %2, i32 0, i32 29, !dbg !4895
  %3 = load i32, i32* %state, align 4, !dbg !4895
  %4 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4896
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 17, !dbg !4897
  %5 = load i8*, i8** %mmio, align 8, !dbg !4897
  %add.ptr = getelementptr i8, i8* %5, i64 36, !dbg !4898
  call void @writel(i32 %3, i8* %add.ptr) #7, !dbg !4899
  br label %if.end, !dbg !4899

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4900
  %mmio1 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 17, !dbg !4901
  %7 = load i8*, i8** %mmio1, align 8, !dbg !4901
  %add.ptr2 = getelementptr i8, i8* %7, i64 36, !dbg !4902
  %call3 = call i32 @readl(i8* %add.ptr2) #7, !dbg !4903
  %8 = load i32*, i32** %data.addr, align 8, !dbg !4904
  %arrayidx = getelementptr i32, i32* %8, i64 1, !dbg !4904
  store i32 %call3, i32* %arrayidx, align 4, !dbg !4905
  %9 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4906
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %9, i32 0, i32 1, !dbg !4907
  %10 = load i32, i32* %n, align 4, !dbg !4907
  ret i32 %10, !dbg !4908
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ni_670x_dio_insn_config(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !4909 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4910, metadata !DIExpression()), !dbg !4911
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4912, metadata !DIExpression()), !dbg !4913
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !4914, metadata !DIExpression()), !dbg !4915
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !4916, metadata !DIExpression()), !dbg !4917
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4918, metadata !DIExpression()), !dbg !4919
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4920
  %1 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4921
  %2 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4922
  %3 = load i32*, i32** %data.addr, align 8, !dbg !4923
  %call = call i32 @comedi_dio_insn_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3, i32 0) #7, !dbg !4924
  store i32 %call, i32* %ret, align 4, !dbg !4925
  %4 = load i32, i32* %ret, align 4, !dbg !4926
  %tobool = icmp ne i32 %4, 0, !dbg !4926
  br i1 %tobool, label %if.then, label %if.end, !dbg !4928

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !4929
  store i32 %5, i32* %retval, align 4, !dbg !4930
  br label %return, !dbg !4930

if.end:                                           ; preds = %entry
  %6 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4931
  %io_bits = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %6, i32 0, i32 12, !dbg !4932
  %7 = load i32, i32* %io_bits, align 4, !dbg !4932
  %8 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4933
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 17, !dbg !4934
  %9 = load i8*, i8** %mmio, align 8, !dbg !4934
  %add.ptr = getelementptr i8, i8* %9, i64 32, !dbg !4935
  call void @writel(i32 %7, i8* %add.ptr) #7, !dbg !4936
  %10 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4937
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %10, i32 0, i32 1, !dbg !4938
  %11 = load i32, i32* %n, align 4, !dbg !4938
  store i32 %11, i32* %retval, align 4, !dbg !4939
  br label %return, !dbg !4939

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !4940
  ret i32 %12, !dbg !4940
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writel(i32 %val, i8* %addr) #2 !dbg !4941 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !4947, metadata !DIExpression()), !dbg !4948
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !4949, metadata !DIExpression()), !dbg !4948
  %0 = load i32, i32* %val.addr, align 4, !dbg !4948
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !4948
  %2 = bitcast i8* %1 to i32*, !dbg !4948
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #8, !dbg !4948, !srcloc !4950
  ret void, !dbg !4948
}

; Function Attrs: noredzone
declare dso_local void @iounmap(i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #2 !dbg !4951 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !4955, metadata !DIExpression()), !dbg !4956
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !4957
  %tobool = trunc i8 %0 to i1, !dbg !4957
  %lnot = xor i1 %tobool, true, !dbg !4957
  %lnot1 = xor i1 %lnot, true, !dbg !4957
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4957
  %conv = sext i32 %lnot.ext to i64, !dbg !4957
  %tobool2 = icmp ne i64 %conv, 0, !dbg !4957
  ret i1 %tobool2, !dbg !4958
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !4959 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4963, metadata !DIExpression()), !dbg !4968
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4970, metadata !DIExpression()), !dbg !4971
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4972, metadata !DIExpression()), !dbg !4973
  %0 = load i64, i64* %size.addr, align 8, !dbg !4974
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4976
  br i1 %1, label %if.then, label %if.end447, !dbg !4977

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4978
  %tobool = icmp ne i64 %2, 0, !dbg !4978
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4981

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4982
  br label %return, !dbg !4982

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4983
  %cmp = icmp ult i64 %3, 4096, !dbg !4985
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4986

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4987
  br label %return, !dbg !4987

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub = sub i64 %4, 1, !dbg !4988
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4988
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4988

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub4 = sub i64 %6, 1, !dbg !4988
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4988
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4988

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub6 = sub i64 %8, 1, !dbg !4988
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4988
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4988

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4988

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub9 = sub i64 %9, 1, !dbg !4988
  %and = and i64 %sub9, -9223372036854775808, !dbg !4988
  %tobool10 = icmp ne i64 %and, 0, !dbg !4988
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4988

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4988

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub13 = sub i64 %10, 1, !dbg !4988
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4988
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4988
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4988

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4988

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub18 = sub i64 %11, 1, !dbg !4988
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4988
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4988
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4988

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4988

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub23 = sub i64 %12, 1, !dbg !4988
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4988
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4988
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4988

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4988

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub28 = sub i64 %13, 1, !dbg !4988
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4988
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4988
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4988

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4988

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub33 = sub i64 %14, 1, !dbg !4988
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4988
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4988
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4988

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4988

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub38 = sub i64 %15, 1, !dbg !4988
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4988
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4988
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4988

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4988

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub43 = sub i64 %16, 1, !dbg !4988
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4988
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4988
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4988

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4988

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub48 = sub i64 %17, 1, !dbg !4988
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4988
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4988
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4988

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4988

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub53 = sub i64 %18, 1, !dbg !4988
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4988
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4988
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4988

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4988

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub58 = sub i64 %19, 1, !dbg !4988
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4988
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4988
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4988

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4988

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub63 = sub i64 %20, 1, !dbg !4988
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4988
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4988
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4988

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4988

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub68 = sub i64 %21, 1, !dbg !4988
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4988
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4988
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4988

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4988

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub73 = sub i64 %22, 1, !dbg !4988
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4988
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4988
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4988

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4988

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub78 = sub i64 %23, 1, !dbg !4988
  %and79 = and i64 %sub78, 562949953421312, !dbg !4988
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4988
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4988

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4988

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub83 = sub i64 %24, 1, !dbg !4988
  %and84 = and i64 %sub83, 281474976710656, !dbg !4988
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4988
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4988

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4988

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub88 = sub i64 %25, 1, !dbg !4988
  %and89 = and i64 %sub88, 140737488355328, !dbg !4988
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4988
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4988

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4988

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub93 = sub i64 %26, 1, !dbg !4988
  %and94 = and i64 %sub93, 70368744177664, !dbg !4988
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4988
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4988

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4988

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub98 = sub i64 %27, 1, !dbg !4988
  %and99 = and i64 %sub98, 35184372088832, !dbg !4988
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4988
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4988

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4988

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub103 = sub i64 %28, 1, !dbg !4988
  %and104 = and i64 %sub103, 17592186044416, !dbg !4988
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4988
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4988

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4988

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub108 = sub i64 %29, 1, !dbg !4988
  %and109 = and i64 %sub108, 8796093022208, !dbg !4988
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4988
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4988

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4988

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub113 = sub i64 %30, 1, !dbg !4988
  %and114 = and i64 %sub113, 4398046511104, !dbg !4988
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4988
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4988

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4988

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub118 = sub i64 %31, 1, !dbg !4988
  %and119 = and i64 %sub118, 2199023255552, !dbg !4988
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4988
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4988

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4988

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub123 = sub i64 %32, 1, !dbg !4988
  %and124 = and i64 %sub123, 1099511627776, !dbg !4988
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4988
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4988

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4988

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub128 = sub i64 %33, 1, !dbg !4988
  %and129 = and i64 %sub128, 549755813888, !dbg !4988
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4988
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4988

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4988

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub133 = sub i64 %34, 1, !dbg !4988
  %and134 = and i64 %sub133, 274877906944, !dbg !4988
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4988
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4988

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4988

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub138 = sub i64 %35, 1, !dbg !4988
  %and139 = and i64 %sub138, 137438953472, !dbg !4988
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4988
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4988

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4988

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub143 = sub i64 %36, 1, !dbg !4988
  %and144 = and i64 %sub143, 68719476736, !dbg !4988
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4988
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4988

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4988

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub148 = sub i64 %37, 1, !dbg !4988
  %and149 = and i64 %sub148, 34359738368, !dbg !4988
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4988
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4988

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4988

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub153 = sub i64 %38, 1, !dbg !4988
  %and154 = and i64 %sub153, 17179869184, !dbg !4988
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4988
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4988

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4988

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub158 = sub i64 %39, 1, !dbg !4988
  %and159 = and i64 %sub158, 8589934592, !dbg !4988
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4988
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4988

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4988

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub163 = sub i64 %40, 1, !dbg !4988
  %and164 = and i64 %sub163, 4294967296, !dbg !4988
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4988
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4988

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4988

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub168 = sub i64 %41, 1, !dbg !4988
  %and169 = and i64 %sub168, 2147483648, !dbg !4988
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4988
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4988

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4988

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub173 = sub i64 %42, 1, !dbg !4988
  %and174 = and i64 %sub173, 1073741824, !dbg !4988
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4988
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4988

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4988

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub178 = sub i64 %43, 1, !dbg !4988
  %and179 = and i64 %sub178, 536870912, !dbg !4988
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4988
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4988

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4988

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub183 = sub i64 %44, 1, !dbg !4988
  %and184 = and i64 %sub183, 268435456, !dbg !4988
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4988
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4988

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4988

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub188 = sub i64 %45, 1, !dbg !4988
  %and189 = and i64 %sub188, 134217728, !dbg !4988
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4988
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4988

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4988

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub193 = sub i64 %46, 1, !dbg !4988
  %and194 = and i64 %sub193, 67108864, !dbg !4988
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4988
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4988

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4988

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub198 = sub i64 %47, 1, !dbg !4988
  %and199 = and i64 %sub198, 33554432, !dbg !4988
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4988
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4988

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4988

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub203 = sub i64 %48, 1, !dbg !4988
  %and204 = and i64 %sub203, 16777216, !dbg !4988
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4988
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4988

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4988

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub208 = sub i64 %49, 1, !dbg !4988
  %and209 = and i64 %sub208, 8388608, !dbg !4988
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4988
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4988

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4988

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub213 = sub i64 %50, 1, !dbg !4988
  %and214 = and i64 %sub213, 4194304, !dbg !4988
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4988
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4988

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4988

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub218 = sub i64 %51, 1, !dbg !4988
  %and219 = and i64 %sub218, 2097152, !dbg !4988
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4988
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4988

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4988

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub223 = sub i64 %52, 1, !dbg !4988
  %and224 = and i64 %sub223, 1048576, !dbg !4988
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4988
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4988

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4988

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub228 = sub i64 %53, 1, !dbg !4988
  %and229 = and i64 %sub228, 524288, !dbg !4988
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4988
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4988

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4988

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub233 = sub i64 %54, 1, !dbg !4988
  %and234 = and i64 %sub233, 262144, !dbg !4988
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4988
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4988

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4988

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub238 = sub i64 %55, 1, !dbg !4988
  %and239 = and i64 %sub238, 131072, !dbg !4988
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4988
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4988

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4988

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub243 = sub i64 %56, 1, !dbg !4988
  %and244 = and i64 %sub243, 65536, !dbg !4988
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4988
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4988

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4988

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub248 = sub i64 %57, 1, !dbg !4988
  %and249 = and i64 %sub248, 32768, !dbg !4988
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4988
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4988

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4988

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub253 = sub i64 %58, 1, !dbg !4988
  %and254 = and i64 %sub253, 16384, !dbg !4988
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4988
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4988

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4988

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub258 = sub i64 %59, 1, !dbg !4988
  %and259 = and i64 %sub258, 8192, !dbg !4988
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4988
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4988

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4988

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub263 = sub i64 %60, 1, !dbg !4988
  %and264 = and i64 %sub263, 4096, !dbg !4988
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4988
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4988

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4988

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub268 = sub i64 %61, 1, !dbg !4988
  %and269 = and i64 %sub268, 2048, !dbg !4988
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4988
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4988

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4988

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub273 = sub i64 %62, 1, !dbg !4988
  %and274 = and i64 %sub273, 1024, !dbg !4988
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4988
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4988

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4988

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub278 = sub i64 %63, 1, !dbg !4988
  %and279 = and i64 %sub278, 512, !dbg !4988
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4988
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4988

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4988

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub283 = sub i64 %64, 1, !dbg !4988
  %and284 = and i64 %sub283, 256, !dbg !4988
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4988
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4988

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4988

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub288 = sub i64 %65, 1, !dbg !4988
  %and289 = and i64 %sub288, 128, !dbg !4988
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4988
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4988

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4988

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub293 = sub i64 %66, 1, !dbg !4988
  %and294 = and i64 %sub293, 64, !dbg !4988
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4988
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4988

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4988

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub298 = sub i64 %67, 1, !dbg !4988
  %and299 = and i64 %sub298, 32, !dbg !4988
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4988
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4988

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4988

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub303 = sub i64 %68, 1, !dbg !4988
  %and304 = and i64 %sub303, 16, !dbg !4988
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4988
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4988

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4988

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub308 = sub i64 %69, 1, !dbg !4988
  %and309 = and i64 %sub308, 8, !dbg !4988
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4988
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4988

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4988

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub313 = sub i64 %70, 1, !dbg !4988
  %and314 = and i64 %sub313, 4, !dbg !4988
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4988
  %71 = zext i1 %tobool315 to i64, !dbg !4988
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4988
  br label %cond.end, !dbg !4988

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4988
  br label %cond.end317, !dbg !4988

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4988
  br label %cond.end319, !dbg !4988

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4988
  br label %cond.end321, !dbg !4988

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4988
  br label %cond.end323, !dbg !4988

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4988
  br label %cond.end325, !dbg !4988

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4988
  br label %cond.end327, !dbg !4988

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4988
  br label %cond.end329, !dbg !4988

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4988
  br label %cond.end331, !dbg !4988

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4988
  br label %cond.end333, !dbg !4988

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4988
  br label %cond.end335, !dbg !4988

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4988
  br label %cond.end337, !dbg !4988

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4988
  br label %cond.end339, !dbg !4988

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4988
  br label %cond.end341, !dbg !4988

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4988
  br label %cond.end343, !dbg !4988

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4988
  br label %cond.end345, !dbg !4988

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4988
  br label %cond.end347, !dbg !4988

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4988
  br label %cond.end349, !dbg !4988

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4988
  br label %cond.end351, !dbg !4988

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4988
  br label %cond.end353, !dbg !4988

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4988
  br label %cond.end355, !dbg !4988

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4988
  br label %cond.end357, !dbg !4988

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4988
  br label %cond.end359, !dbg !4988

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4988
  br label %cond.end361, !dbg !4988

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4988
  br label %cond.end363, !dbg !4988

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4988
  br label %cond.end365, !dbg !4988

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4988
  br label %cond.end367, !dbg !4988

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4988
  br label %cond.end369, !dbg !4988

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4988
  br label %cond.end371, !dbg !4988

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4988
  br label %cond.end373, !dbg !4988

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4988
  br label %cond.end375, !dbg !4988

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4988
  br label %cond.end377, !dbg !4988

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4988
  br label %cond.end379, !dbg !4988

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4988
  br label %cond.end381, !dbg !4988

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4988
  br label %cond.end383, !dbg !4988

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4988
  br label %cond.end385, !dbg !4988

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4988
  br label %cond.end387, !dbg !4988

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4988
  br label %cond.end389, !dbg !4988

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4988
  br label %cond.end391, !dbg !4988

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4988
  br label %cond.end393, !dbg !4988

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4988
  br label %cond.end395, !dbg !4988

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4988
  br label %cond.end397, !dbg !4988

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4988
  br label %cond.end399, !dbg !4988

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4988
  br label %cond.end401, !dbg !4988

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4988
  br label %cond.end403, !dbg !4988

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4988
  br label %cond.end405, !dbg !4988

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4988
  br label %cond.end407, !dbg !4988

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4988
  br label %cond.end409, !dbg !4988

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4988
  br label %cond.end411, !dbg !4988

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4988
  br label %cond.end413, !dbg !4988

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4988
  br label %cond.end415, !dbg !4988

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4988
  br label %cond.end417, !dbg !4988

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4988
  br label %cond.end419, !dbg !4988

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4988
  br label %cond.end421, !dbg !4988

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4988
  br label %cond.end423, !dbg !4988

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4988
  br label %cond.end425, !dbg !4988

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4988
  br label %cond.end427, !dbg !4988

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4988
  br label %cond.end429, !dbg !4988

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4988
  br label %cond.end431, !dbg !4988

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4988
  br label %cond.end433, !dbg !4988

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4988
  br label %cond.end435, !dbg !4988

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4988
  br label %cond.end437, !dbg !4988

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4988
  br label %cond.end440, !dbg !4988

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4988

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4988
  br label %cond.end444, !dbg !4988

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4988
  %sub443 = sub i64 %72, 1, !dbg !4988
  %call = call i32 @__ilog2_u64(i64 %sub443) #9, !dbg !4988
  br label %cond.end444, !dbg !4988

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4988
  %sub446 = sub i32 %cond445, 12, !dbg !4989
  %add = add i32 %sub446, 1, !dbg !4990
  store i32 %add, i32* %retval, align 4, !dbg !4991
  br label %return, !dbg !4991

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4992
  %dec = add i64 %73, -1, !dbg !4992
  store i64 %dec, i64* %size.addr, align 8, !dbg !4992
  %74 = load i64, i64* %size.addr, align 8, !dbg !4993
  %shr = lshr i64 %74, 12, !dbg !4993
  store i64 %shr, i64* %size.addr, align 8, !dbg !4993
  %75 = load i64, i64* %size.addr, align 8, !dbg !4994
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4971
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4995
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4996
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #11, !dbg !4995, !srcloc !4997
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4995
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4998
  %add.i = add i32 %79, 1, !dbg !4999
  store i32 %add.i, i32* %retval, align 4, !dbg !5000
  br label %return, !dbg !5000

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5001
  ret i32 %80, !dbg !5001
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !5002 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4963, metadata !DIExpression()), !dbg !5006
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4970, metadata !DIExpression()), !dbg !5008
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5009, metadata !DIExpression()), !dbg !5010
  %0 = load i64, i64* %n.addr, align 8, !dbg !5011
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5008
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5012
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5013
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #11, !dbg !5012, !srcloc !4997
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5012
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5014
  %add.i = add i32 %4, 1, !dbg !5015
  %sub = sub i32 %add.i, 1, !dbg !5016
  ret i32 %sub, !dbg !5017
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !5018 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5022, metadata !DIExpression()), !dbg !5023
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5024, metadata !DIExpression()), !dbg !5025
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5026, metadata !DIExpression()), !dbg !5027
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5028, metadata !DIExpression()), !dbg !5029
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5030
  ret i8* %0, !dbg !5031
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_dio_update_state(%struct.comedi_subdevice*, i32*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readl(i8* %addr) #2 !dbg !5032 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5037, metadata !DIExpression()), !dbg !5038
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5039, metadata !DIExpression()), !dbg !5038
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !5038
  %1 = bitcast i8* %0 to i32*, !dbg !5038
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #8, !dbg !5038, !srcloc !5040
  store i32 %2, i32* %ret, align 4, !dbg !5038
  %3 = load i32, i32* %ret, align 4, !dbg !5038
  ret i32 %3, !dbg !5038
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_dio_insn_config(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ni_670x_pci_probe(%struct.pci_dev* %dev, %struct.pci_device_id* %id) #2 !dbg !5041 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %id.addr = alloca %struct.pci_device_id*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5042, metadata !DIExpression()), !dbg !5043
  store %struct.pci_device_id* %id, %struct.pci_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_device_id** %id.addr, metadata !5044, metadata !DIExpression()), !dbg !5045
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5046
  %1 = load %struct.pci_device_id*, %struct.pci_device_id** %id.addr, align 8, !dbg !5047
  %driver_data = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %1, i32 0, i32 6, !dbg !5048
  %2 = load i64, i64* %driver_data, align 8, !dbg !5048
  %call = call i32 @comedi_pci_auto_config(%struct.pci_dev* %0, %struct.comedi_driver* @ni_670x_driver, i64 %2) #7, !dbg !5049
  ret i32 %call, !dbg !5050
}

; Function Attrs: noredzone
declare dso_local void @comedi_pci_auto_unconfig(%struct.pci_dev*) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_pci_auto_config(%struct.pci_dev*, %struct.comedi_driver*, i64) #1

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noredzone }
attributes #8 = { nounwind }
attributes #9 = { noredzone nounwind readnone }
attributes #10 = { noredzone nounwind }
attributes #11 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4268, !4269, !4270, !4271}
!llvm.ident = !{!4272}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ni_670x_driver_init234", scope: !2, file: !3, line: 278, type: !127, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !123, globals: !130, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/staging/comedi/drivers/ni_670x.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !100, !116}
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
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "comedi_subdevice_type", file: !101, line: 221, baseType: !7, size: 32, elements: !102)
!101 = !DIFile(filename: "drivers/staging/comedi/drivers/../comedi.h", directory: "/home/lizy2001/genbc/linux")
!102 = !{!103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115}
!103 = !DIEnumerator(name: "COMEDI_SUBD_UNUSED", value: 0, isUnsigned: true)
!104 = !DIEnumerator(name: "COMEDI_SUBD_AI", value: 1, isUnsigned: true)
!105 = !DIEnumerator(name: "COMEDI_SUBD_AO", value: 2, isUnsigned: true)
!106 = !DIEnumerator(name: "COMEDI_SUBD_DI", value: 3, isUnsigned: true)
!107 = !DIEnumerator(name: "COMEDI_SUBD_DO", value: 4, isUnsigned: true)
!108 = !DIEnumerator(name: "COMEDI_SUBD_DIO", value: 5, isUnsigned: true)
!109 = !DIEnumerator(name: "COMEDI_SUBD_COUNTER", value: 6, isUnsigned: true)
!110 = !DIEnumerator(name: "COMEDI_SUBD_TIMER", value: 7, isUnsigned: true)
!111 = !DIEnumerator(name: "COMEDI_SUBD_MEMORY", value: 8, isUnsigned: true)
!112 = !DIEnumerator(name: "COMEDI_SUBD_CALIB", value: 9, isUnsigned: true)
!113 = !DIEnumerator(name: "COMEDI_SUBD_PROC", value: 10, isUnsigned: true)
!114 = !DIEnumerator(name: "COMEDI_SUBD_SERIAL", value: 11, isUnsigned: true)
!115 = !DIEnumerator(name: "COMEDI_SUBD_PWM", value: 12, isUnsigned: true)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !117, line: 305, baseType: !7, size: 32, elements: !118)
!117 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!118 = !{!119, !120, !121, !122}
!119 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!120 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!121 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!122 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!123 = !{!124, !125, !127, !128}
!124 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !126, line: 148, baseType: !7)
!126 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!130 = !{!0, !131, !138, !145, !150, !155, !160, !3976, !3984, !4265}
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(name: "__exitcall_ni_670x_driver_exit", scope: !2, file: !3, line: 278, type: !133, isLocal: true, isDefinition: true)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !134, line: 117, baseType: !135)
!134 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DISubroutineType(types: !137)
!137 = !{null}
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author235", scope: !2, file: !3, line: 280, type: !140, isLocal: true, isDefinition: true, align: 8)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 360, elements: !143)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!142 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!143 = !{!144}
!144 = !DISubrange(count: 45)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description236", scope: !2, file: !3, line: 281, type: !147, isLocal: true, isDefinition: true, align: 8)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 352, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 44)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file237", scope: !2, file: !3, line: 282, type: !152, isLocal: true, isDefinition: true, align: 8)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 416, elements: !153)
!153 = !{!154}
!154 = !DISubrange(count: 52)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license238", scope: !2, file: !3, line: 282, type: !157, isLocal: true, isDefinition: true, align: 8)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 160, elements: !158)
!158 = !{!159}
!159 = !DISubrange(count: 20)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(name: "ni_670x_driver", scope: !2, file: !3, line: 251, type: !162, isLocal: true, isDefinition: true)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_driver", file: !163, line: 437, size: 576, elements: !164)
!163 = !DIFile(filename: "drivers/staging/comedi/drivers/../comedidev.h", directory: "/home/lizy2001/genbc/linux")
!164 = !{!165, !167, !169, !173, !3966, !3967, !3971, !3972, !3975}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !162, file: !163, line: 439, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !162, file: !163, line: 441, baseType: !168, size: 64, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !162, file: !163, line: 442, baseType: !170, size: 64, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !172, line: 76, flags: DIFlagFwdDecl)
!172 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!173 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !162, file: !163, line: 443, baseType: !174, size: 64, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{!124, !177, !3959}
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_device", file: !163, line: 541, size: 1920, elements: !179)
!179 = !{!180, !181, !182, !185, !186, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3947, !3951, !3955}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !178, file: !163, line: 542, baseType: !124, size: 32)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !178, file: !163, line: 543, baseType: !166, size: 64, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "pacer", scope: !178, file: !163, line: 544, baseType: !183, size: 64, offset: 128)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_8254", file: !163, line: 544, flags: DIFlagFwdDecl)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !178, file: !163, line: 545, baseType: !127, size: 64, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !178, file: !163, line: 547, baseType: !187, size: 64, offset: 256)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !189)
!189 = !{!190, !3344, !3345, !3348, !3349, !3400, !3491, !3492, !3493, !3494, !3495, !3504, !3609, !3622, !3625, !3626, !3630, !3632, !3633, !3634, !3638, !3644, !3645, !3648, !3652, !3742, !3743, !3744, !3745, !3746, !3778, !3779, !3780, !3783, !3786, !3787, !3788, !3789}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !188, file: !73, line: 462, baseType: !191, size: 512)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !192, line: 64, size: 512, elements: !193)
!192 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!193 = !{!194, !195, !201, !203, !263, !3195, !3334, !3339, !3340, !3341, !3342, !3343}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !191, file: !192, line: 65, baseType: !168, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !191, file: !192, line: 66, baseType: !196, size: 128, offset: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !126, line: 178, size: 128, elements: !197)
!197 = !{!198, !200}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !196, file: !126, line: 179, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !196, file: !126, line: 179, baseType: !199, size: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !191, file: !192, line: 67, baseType: !202, size: 64, offset: 192)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !191, file: !192, line: 68, baseType: !204, size: 64, offset: 256)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !192, line: 192, size: 704, elements: !206)
!206 = !{!207, !208, !224, !225}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !205, file: !192, line: 193, baseType: !196, size: 128)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !205, file: !192, line: 194, baseType: !209, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !210, line: 83, baseType: !211)
!210 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !210, line: 71, elements: !212)
!212 = !{!213}
!213 = !DIDerivedType(tag: DW_TAG_member, scope: !211, file: !210, line: 72, baseType: !214)
!214 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !211, file: !210, line: 72, elements: !215)
!215 = !{!216}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !214, file: !210, line: 73, baseType: !217)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !210, line: 20, elements: !218)
!218 = !{!219}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !217, file: !210, line: 21, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !221, line: 25, baseType: !222)
!221 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !221, line: 25, elements: !223)
!223 = !{}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !205, file: !192, line: 195, baseType: !191, size: 512, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !205, file: !192, line: 196, baseType: !226, size: 64, offset: 640)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !192, line: 156, size: 192, elements: !229)
!229 = !{!230, !235, !240}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !228, file: !192, line: 157, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!124, !204, !202}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !228, file: !192, line: 158, baseType: !236, size: 64, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!168, !204, !202}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !228, file: !192, line: 159, baseType: !241, size: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{!124, !204, !202, !245}
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !192, line: 148, size: 20736, elements: !247)
!247 = !{!248, !253, !257, !258, !262}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !246, file: !192, line: 149, baseType: !249, size: 192)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 192, elements: !251)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!251 = !{!252}
!252 = !DISubrange(count: 3)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !246, file: !192, line: 150, baseType: !254, size: 4096, offset: 192)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 4096, elements: !255)
!255 = !{!256}
!256 = !DISubrange(count: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !246, file: !192, line: 151, baseType: !124, size: 32, offset: 4288)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !246, file: !192, line: 152, baseType: !259, size: 16384, offset: 4320)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 16384, elements: !260)
!260 = !{!261}
!261 = !DISubrange(count: 2048)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !246, file: !192, line: 153, baseType: !124, size: 32, offset: 20704)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !191, file: !192, line: 69, baseType: !264, size: 64, offset: 320)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !192, line: 138, size: 448, elements: !266)
!266 = !{!267, !271, !301, !303, !3157, !3185, !3189}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !265, file: !192, line: 139, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{null, !202}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !265, file: !192, line: 140, baseType: !272, size: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !274)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !275, line: 230, size: 128, elements: !276)
!275 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!276 = !{!277, !293}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !274, file: !275, line: 231, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!281, !202, !286, !250}
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !126, line: 60, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !283, line: 73, baseType: !284)
!283 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !283, line: 15, baseType: !285)
!285 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !275, line: 30, size: 128, elements: !288)
!288 = !{!289, !290}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !287, file: !275, line: 31, baseType: !168, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !287, file: !275, line: 32, baseType: !291, size: 16, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !126, line: 19, baseType: !292)
!292 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !274, file: !275, line: 232, baseType: !294, size: 64, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!281, !202, !286, !168, !297}
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !126, line: 55, baseType: !298)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !283, line: 72, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !283, line: 16, baseType: !300)
!300 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !265, file: !192, line: 141, baseType: !302, size: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !265, file: !192, line: 142, baseType: !304, size: 64, offset: 192)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !307)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !275, line: 84, size: 320, elements: !308)
!308 = !{!309, !310, !314, !3154, !3155}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !307, file: !275, line: 85, baseType: !168, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !307, file: !275, line: 86, baseType: !311, size: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!291, !202, !286, !124}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !307, file: !275, line: 88, baseType: !315, size: 64, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{!291, !202, !318, !124}
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !275, line: 168, size: 448, elements: !320)
!320 = !{!321, !322, !323, !324, !3149, !3150}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !319, file: !275, line: 169, baseType: !287, size: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !319, file: !275, line: 170, baseType: !297, size: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !319, file: !275, line: 171, baseType: !127, size: 64, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !319, file: !275, line: 172, baseType: !325, size: 64, offset: 256)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!281, !328, !202, !318, !250, !507, !297}
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !330)
!330 = !{!331, !349, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3132, !3133, !3142, !3143, !3144, !3145, !3146, !3147, !3148}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !329, file: !44, line: 920, baseType: !332, size: 128)
!332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !329, file: !44, line: 917, size: 128, elements: !333)
!333 = !{!334, !340}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !332, file: !44, line: 918, baseType: !335, size: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !336, line: 58, size: 64, elements: !337)
!336 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!337 = !{!338}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !335, file: !336, line: 59, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !332, file: !44, line: 919, baseType: !341, size: 128, align: 64)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !126, line: 216, size: 128, align: 64, elements: !342)
!342 = !{!343, !345}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !341, file: !126, line: 217, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !341, file: !126, line: 218, baseType: !346, size: 64, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DISubroutineType(types: !348)
!348 = !{null, !344}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !329, file: !44, line: 921, baseType: !350, size: 128, offset: 128)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !351, line: 8, size: 128, elements: !352)
!351 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!352 = !{!353, !357}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !350, file: !351, line: 9, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !356, line: 18, flags: DIFlagFwdDecl)
!356 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!357 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !350, file: !351, line: 10, baseType: !358, size: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !356, line: 89, size: 1536, elements: !360)
!360 = !{!361, !362, !372, !380, !381, !404, !3082, !3084, !3096, !3097, !3098, !3099, !3100, !3106, !3107, !3108}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !359, file: !356, line: 91, baseType: !7, size: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !359, file: !356, line: 92, baseType: !363, size: 32, offset: 32)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !364, line: 277, baseType: !365)
!364 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !364, line: 277, size: 32, elements: !366)
!366 = !{!367}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !365, file: !364, line: 277, baseType: !368, size: 32)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !364, line: 70, baseType: !369)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !364, line: 65, size: 32, elements: !370)
!370 = !{!371}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !369, file: !364, line: 66, baseType: !7, size: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !359, file: !356, line: 93, baseType: !373, size: 128, offset: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !374, line: 38, size: 128, elements: !375)
!374 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!375 = !{!376, !378}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !373, file: !374, line: 39, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !373, file: !374, line: 39, baseType: !379, size: 64, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !359, file: !356, line: 94, baseType: !358, size: 64, offset: 192)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !359, file: !356, line: 95, baseType: !382, size: 128, offset: 256)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !356, line: 47, size: 128, elements: !383)
!383 = !{!384, !400}
!384 = !DIDerivedType(tag: DW_TAG_member, scope: !382, file: !356, line: 48, baseType: !385, size: 64)
!385 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !382, file: !356, line: 48, size: 64, elements: !386)
!386 = !{!387, !396}
!387 = !DIDerivedType(tag: DW_TAG_member, scope: !385, file: !356, line: 49, baseType: !388, size: 64)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !385, file: !356, line: 49, size: 64, elements: !389)
!389 = !{!390, !395}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !388, file: !356, line: 50, baseType: !391, size: 32)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !392, line: 21, baseType: !393)
!392 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !394, line: 27, baseType: !7)
!394 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!395 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !388, file: !356, line: 50, baseType: !391, size: 32, offset: 32)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !385, file: !356, line: 52, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !392, line: 23, baseType: !398)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !394, line: 31, baseType: !399)
!399 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !382, file: !356, line: 54, baseType: !401, size: 64, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !403)
!403 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !359, file: !356, line: 96, baseType: !405, size: 64, offset: 384)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !407)
!407 = !{!408, !409, !410, !418, !425, !426, !574, !2793, !2794, !2795, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !3058, !3066, !3067, !3068, !3078, !3079, !3080, !3081}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !406, file: !44, line: 611, baseType: !291, size: 16)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !406, file: !44, line: 612, baseType: !292, size: 16, offset: 16)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !406, file: !44, line: 613, baseType: !411, size: 32, offset: 32)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !412, line: 23, baseType: !413)
!412 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !412, line: 21, size: 32, elements: !414)
!414 = !{!415}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !413, file: !412, line: 22, baseType: !416, size: 32)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !126, line: 32, baseType: !417)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !283, line: 49, baseType: !7)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !406, file: !44, line: 614, baseType: !419, size: 32, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !412, line: 28, baseType: !420)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !412, line: 26, size: 32, elements: !421)
!421 = !{!422}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !420, file: !412, line: 27, baseType: !423, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !126, line: 33, baseType: !424)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !283, line: 50, baseType: !7)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !406, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !406, file: !44, line: 622, baseType: !427, size: 64, offset: 128)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !429)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !430)
!430 = !{!431, !435, !448, !452, !458, !462, !468, !472, !476, !480, !484, !485, !491, !495, !521, !550, !554, !560, !565, !569, !570}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !429, file: !44, line: 1865, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{!358, !405, !358, !7}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !429, file: !44, line: 1866, baseType: !436, size: 64, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{!168, !358, !405, !439}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !441, line: 10, size: 128, elements: !442)
!441 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!442 = !{!443, !447}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !440, file: !441, line: 11, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{null, !127}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !440, file: !441, line: 12, baseType: !127, size: 64, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !429, file: !44, line: 1867, baseType: !449, size: 64, offset: 128)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{!124, !405, !124}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !429, file: !44, line: 1868, baseType: !453, size: 64, offset: 192)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DISubroutineType(types: !455)
!455 = !{!456, !405, !124}
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !429, file: !44, line: 1870, baseType: !459, size: 64, offset: 256)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!124, !358, !250, !124}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !429, file: !44, line: 1872, baseType: !463, size: 64, offset: 320)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!124, !405, !358, !291, !466}
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !126, line: 30, baseType: !467)
!467 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !429, file: !44, line: 1873, baseType: !469, size: 64, offset: 384)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{!124, !358, !405, !358}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !429, file: !44, line: 1874, baseType: !473, size: 64, offset: 448)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!124, !405, !358}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !429, file: !44, line: 1875, baseType: !477, size: 64, offset: 512)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{!124, !405, !358, !168}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !429, file: !44, line: 1876, baseType: !481, size: 64, offset: 576)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!124, !405, !358, !291}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !429, file: !44, line: 1877, baseType: !473, size: 64, offset: 640)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !429, file: !44, line: 1878, baseType: !486, size: 64, offset: 704)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!124, !405, !358, !291, !489}
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !126, line: 16, baseType: !490)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !126, line: 13, baseType: !391)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !429, file: !44, line: 1879, baseType: !492, size: 64, offset: 768)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{!124, !405, !358, !405, !358, !7}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !429, file: !44, line: 1881, baseType: !496, size: 64, offset: 832)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!124, !358, !499}
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !501)
!501 = !{!502, !503, !504, !505, !506, !510, !518, !519, !520}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !500, file: !44, line: 220, baseType: !7, size: 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !500, file: !44, line: 221, baseType: !291, size: 16, offset: 32)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !500, file: !44, line: 222, baseType: !411, size: 32, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !500, file: !44, line: 223, baseType: !419, size: 32, offset: 96)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !500, file: !44, line: 224, baseType: !507, size: 64, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !126, line: 46, baseType: !508)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !283, line: 88, baseType: !509)
!509 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !500, file: !44, line: 225, baseType: !511, size: 128, offset: 192)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !512, line: 13, size: 128, elements: !513)
!512 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!513 = !{!514, !517}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !511, file: !512, line: 14, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !512, line: 8, baseType: !516)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !394, line: 30, baseType: !509)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !511, file: !512, line: 15, baseType: !285, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !500, file: !44, line: 226, baseType: !511, size: 128, offset: 320)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !500, file: !44, line: 227, baseType: !511, size: 128, offset: 448)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !500, file: !44, line: 234, baseType: !328, size: 64, offset: 576)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !429, file: !44, line: 1882, baseType: !522, size: 64, offset: 896)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{!124, !525, !527, !391, !7}
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !350)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !529, line: 22, size: 1152, elements: !530)
!529 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!530 = !{!531, !532, !533, !534, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !528, file: !529, line: 23, baseType: !391, size: 32)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !528, file: !529, line: 24, baseType: !291, size: 16, offset: 32)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !528, file: !529, line: 25, baseType: !7, size: 32, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !528, file: !529, line: 26, baseType: !535, size: 32, offset: 96)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !126, line: 104, baseType: !391)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !528, file: !529, line: 27, baseType: !397, size: 64, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !528, file: !529, line: 28, baseType: !397, size: 64, offset: 192)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !528, file: !529, line: 37, baseType: !397, size: 64, offset: 256)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !528, file: !529, line: 38, baseType: !489, size: 32, offset: 320)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !528, file: !529, line: 39, baseType: !489, size: 32, offset: 352)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !528, file: !529, line: 40, baseType: !411, size: 32, offset: 384)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !528, file: !529, line: 41, baseType: !419, size: 32, offset: 416)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !528, file: !529, line: 42, baseType: !507, size: 64, offset: 448)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !528, file: !529, line: 43, baseType: !511, size: 128, offset: 512)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !528, file: !529, line: 44, baseType: !511, size: 128, offset: 640)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !528, file: !529, line: 45, baseType: !511, size: 128, offset: 768)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !528, file: !529, line: 46, baseType: !511, size: 128, offset: 896)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !528, file: !529, line: 47, baseType: !397, size: 64, offset: 1024)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !528, file: !529, line: 48, baseType: !397, size: 64, offset: 1088)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !429, file: !44, line: 1883, baseType: !551, size: 64, offset: 960)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{!281, !358, !250, !297}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !429, file: !44, line: 1884, baseType: !555, size: 64, offset: 1024)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{!124, !405, !558, !397, !397}
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !429, file: !44, line: 1886, baseType: !561, size: 64, offset: 1088)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{!124, !405, !564, !124}
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !429, file: !44, line: 1887, baseType: !566, size: 64, offset: 1152)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{!124, !405, !358, !328, !7, !291}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !429, file: !44, line: 1890, baseType: !481, size: 64, offset: 1216)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !429, file: !44, line: 1891, baseType: !571, size: 64, offset: 1280)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!124, !405, !456, !124}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !406, file: !44, line: 623, baseType: !575, size: 64, offset: 192)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !577)
!577 = !{!578, !579, !580, !581, !582, !583, !630, !2400, !2482, !2565, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2581, !2585, !2586, !2589, !2590, !2593, !2594, !2595, !2636, !2663, !2664, !2665, !2666, !2667, !2668, !2671, !2673, !2680, !2681, !2683, !2684, !2685, !2744, !2745, !2760, !2761, !2762, !2763, !2764, !2767, !2768, !2769, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !576, file: !44, line: 1417, baseType: !196, size: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !576, file: !44, line: 1418, baseType: !489, size: 32, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !576, file: !44, line: 1419, baseType: !403, size: 8, offset: 160)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !576, file: !44, line: 1420, baseType: !300, size: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !576, file: !44, line: 1421, baseType: !507, size: 64, offset: 256)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !576, file: !44, line: 1422, baseType: !584, size: 64, offset: 320)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !586)
!586 = !{!587, !588, !589, !596, !600, !604, !608, !609, !610, !620, !623, !624, !625, !627, !628, !629}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !585, file: !44, line: 2229, baseType: !168, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !585, file: !44, line: 2230, baseType: !124, size: 32, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !585, file: !44, line: 2238, baseType: !590, size: 64, offset: 128)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!124, !593}
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !595, line: 28, flags: DIFlagFwdDecl)
!595 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!596 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !585, file: !44, line: 2239, baseType: !597, size: 64, offset: 192)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !599)
!599 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !585, file: !44, line: 2240, baseType: !601, size: 64, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!358, !584, !124, !168, !127}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !585, file: !44, line: 2242, baseType: !605, size: 64, offset: 320)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{null, !575}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !585, file: !44, line: 2243, baseType: !170, size: 64, offset: 384)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !585, file: !44, line: 2244, baseType: !584, size: 64, offset: 448)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !585, file: !44, line: 2245, baseType: !611, size: 64, offset: 512)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !126, line: 182, size: 64, elements: !612)
!612 = !{!613}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !611, file: !126, line: 183, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !126, line: 186, size: 128, elements: !616)
!616 = !{!617, !618}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !615, file: !126, line: 187, baseType: !614, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !615, file: !126, line: 187, baseType: !619, size: 64, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !585, file: !44, line: 2247, baseType: !621, offset: 576)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !622, line: 187, elements: !223)
!622 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!623 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !585, file: !44, line: 2248, baseType: !621, offset: 576)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !585, file: !44, line: 2249, baseType: !621, offset: 576)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !585, file: !44, line: 2250, baseType: !626, offset: 576)
!626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, elements: !251)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !585, file: !44, line: 2252, baseType: !621, offset: 576)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !585, file: !44, line: 2253, baseType: !621, offset: 576)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !585, file: !44, line: 2254, baseType: !621, offset: 576)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !576, file: !44, line: 1423, baseType: !631, size: 64, offset: 384)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !633)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !634)
!634 = !{!635, !639, !643, !644, !648, !654, !658, !659, !660, !664, !668, !669, !670, !671, !677, !682, !683, !690, !691, !692, !693, !2384, !2399}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !633, file: !44, line: 1936, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{!405, !575}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !633, file: !44, line: 1937, baseType: !640, size: 64, offset: 64)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{null, !405}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !633, file: !44, line: 1938, baseType: !640, size: 64, offset: 128)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !633, file: !44, line: 1940, baseType: !645, size: 64, offset: 192)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{null, !405, !124}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !633, file: !44, line: 1941, baseType: !649, size: 64, offset: 256)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{!124, !405, !652}
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !633, file: !44, line: 1942, baseType: !655, size: 64, offset: 320)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{!124, !405}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !633, file: !44, line: 1943, baseType: !640, size: 64, offset: 384)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !633, file: !44, line: 1944, baseType: !605, size: 64, offset: 448)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !633, file: !44, line: 1945, baseType: !661, size: 64, offset: 512)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{!124, !575, !124}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !633, file: !44, line: 1946, baseType: !665, size: 64, offset: 576)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!124, !575}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !633, file: !44, line: 1947, baseType: !665, size: 64, offset: 640)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !633, file: !44, line: 1948, baseType: !665, size: 64, offset: 704)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !633, file: !44, line: 1949, baseType: !665, size: 64, offset: 768)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !633, file: !44, line: 1950, baseType: !672, size: 64, offset: 832)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{!124, !358, !675}
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !633, file: !44, line: 1951, baseType: !678, size: 64, offset: 896)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{!124, !575, !681, !250}
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !633, file: !44, line: 1952, baseType: !605, size: 64, offset: 960)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !633, file: !44, line: 1954, baseType: !684, size: 64, offset: 1024)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DISubroutineType(types: !686)
!686 = !{!124, !687, !358}
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !689, line: 539, flags: DIFlagFwdDecl)
!689 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!690 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !633, file: !44, line: 1955, baseType: !684, size: 64, offset: 1088)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !633, file: !44, line: 1956, baseType: !684, size: 64, offset: 1152)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !633, file: !44, line: 1957, baseType: !684, size: 64, offset: 1216)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !633, file: !44, line: 1963, baseType: !694, size: 64, offset: 1280)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{!124, !575, !697, !125}
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !699, line: 68, size: 512, align: 128, elements: !700)
!699 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!700 = !{!701, !702, !2376, !2383}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !698, file: !699, line: 69, baseType: !300, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, scope: !698, file: !699, line: 77, baseType: !703, size: 320, offset: 64)
!703 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !698, file: !699, line: 77, size: 320, elements: !704)
!704 = !{!705, !892, !897, !925, !933, !939, !2307, !2375}
!705 = !DIDerivedType(tag: DW_TAG_member, scope: !703, file: !699, line: 78, baseType: !706, size: 320)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !703, file: !699, line: 78, size: 320, elements: !707)
!707 = !{!708, !709, !890, !891}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !706, file: !699, line: 84, baseType: !196, size: 128)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !706, file: !699, line: 86, baseType: !710, size: 64, offset: 128)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !712)
!712 = !{!713, !714, !721, !722, !727, !742, !758, !759, !760, !761, !883, !884, !887, !888, !889}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !711, file: !44, line: 452, baseType: !405, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !711, file: !44, line: 453, baseType: !715, size: 128, offset: 64)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !716, line: 292, size: 128, elements: !717)
!716 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!717 = !{!718, !719, !720}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !715, file: !716, line: 293, baseType: !209)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !715, file: !716, line: 295, baseType: !125, size: 32)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !715, file: !716, line: 296, baseType: !127, size: 64, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !711, file: !44, line: 454, baseType: !125, size: 32, offset: 192)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !711, file: !44, line: 455, baseType: !723, size: 32, offset: 224)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !126, line: 168, baseType: !724)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !126, line: 166, size: 32, elements: !725)
!725 = !{!726}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !724, file: !126, line: 167, baseType: !124, size: 32)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !711, file: !44, line: 460, baseType: !728, size: 128, offset: 256)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !729, line: 125, size: 128, elements: !730)
!729 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!730 = !{!731, !741}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !728, file: !729, line: 126, baseType: !732, size: 64)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !729, line: 31, size: 64, elements: !733)
!733 = !{!734}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !732, file: !729, line: 32, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !729, line: 24, size: 192, align: 64, elements: !737)
!737 = !{!738, !739, !740}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !736, file: !729, line: 25, baseType: !300, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !736, file: !729, line: 26, baseType: !735, size: 64, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !736, file: !729, line: 27, baseType: !735, size: 64, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !728, file: !729, line: 127, baseType: !735, size: 64, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !711, file: !44, line: 461, baseType: !743, size: 256, offset: 384)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !744, line: 35, size: 256, elements: !745)
!744 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!745 = !{!746, !754, !755, !757}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !743, file: !744, line: 36, baseType: !747, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !748, line: 13, baseType: !749)
!748 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !126, line: 175, baseType: !750)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !126, line: 173, size: 64, elements: !751)
!751 = !{!752}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !750, file: !126, line: 174, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !392, line: 22, baseType: !516)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !743, file: !744, line: 42, baseType: !747, size: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !743, file: !744, line: 46, baseType: !756, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !210, line: 29, baseType: !217)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !743, file: !744, line: 47, baseType: !196, size: 128, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !711, file: !44, line: 462, baseType: !300, size: 64, offset: 640)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !711, file: !44, line: 463, baseType: !300, size: 64, offset: 704)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !711, file: !44, line: 464, baseType: !300, size: 64, offset: 768)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !711, file: !44, line: 465, baseType: !762, size: 64, offset: 832)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !764)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !765)
!765 = !{!766, !770, !774, !778, !782, !786, !792, !798, !802, !807, !811, !815, !819, !847, !851, !857, !858, !859, !863, !868, !872, !879}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !764, file: !44, line: 368, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DISubroutineType(types: !769)
!769 = !{!124, !697, !652}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !764, file: !44, line: 369, baseType: !771, size: 64, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{!124, !328, !697}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !764, file: !44, line: 372, baseType: !775, size: 64, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DISubroutineType(types: !777)
!777 = !{!124, !710, !652}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !764, file: !44, line: 375, baseType: !779, size: 64, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DISubroutineType(types: !781)
!781 = !{!124, !697}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !764, file: !44, line: 381, baseType: !783, size: 64, offset: 256)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DISubroutineType(types: !785)
!785 = !{!124, !328, !710, !199, !7}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !764, file: !44, line: 383, baseType: !787, size: 64, offset: 320)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{null, !790}
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !764, file: !44, line: 385, baseType: !793, size: 64, offset: 384)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DISubroutineType(types: !795)
!795 = !{!124, !328, !710, !507, !7, !7, !796, !797}
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !764, file: !44, line: 388, baseType: !799, size: 64, offset: 448)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DISubroutineType(types: !801)
!801 = !{!124, !328, !710, !507, !7, !7, !697, !127}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !764, file: !44, line: 393, baseType: !803, size: 64, offset: 512)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{!806, !710, !806}
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !126, line: 125, baseType: !397)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !764, file: !44, line: 394, baseType: !808, size: 64, offset: 576)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{null, !697, !7, !7}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !764, file: !44, line: 395, baseType: !812, size: 64, offset: 640)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{!124, !697, !125}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !764, file: !44, line: 396, baseType: !816, size: 64, offset: 704)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{null, !697}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !764, file: !44, line: 397, baseType: !820, size: 64, offset: 768)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{!281, !823, !845}
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !825)
!825 = !{!826, !827, !828, !832, !833, !834, !837, !838}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !824, file: !44, line: 321, baseType: !328, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !824, file: !44, line: 326, baseType: !507, size: 64, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !824, file: !44, line: 327, baseType: !829, size: 64, offset: 128)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{null, !823, !285, !285}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !824, file: !44, line: 328, baseType: !127, size: 64, offset: 192)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !824, file: !44, line: 329, baseType: !124, size: 32, offset: 256)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !824, file: !44, line: 330, baseType: !835, size: 16, offset: 288)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !392, line: 19, baseType: !836)
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !394, line: 24, baseType: !292)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !824, file: !44, line: 331, baseType: !835, size: 16, offset: 304)
!838 = !DIDerivedType(tag: DW_TAG_member, scope: !824, file: !44, line: 332, baseType: !839, size: 64, offset: 320)
!839 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !824, file: !44, line: 332, size: 64, elements: !840)
!840 = !{!841, !842}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !839, file: !44, line: 333, baseType: !7, size: 32)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !839, file: !44, line: 334, baseType: !843, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !764, file: !44, line: 402, baseType: !848, size: 64, offset: 832)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{!124, !710, !697, !697, !5}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !764, file: !44, line: 404, baseType: !852, size: 64, offset: 896)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{!466, !697, !855}
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !856, line: 305, baseType: !7)
!856 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!857 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !764, file: !44, line: 405, baseType: !816, size: 64, offset: 960)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !764, file: !44, line: 406, baseType: !779, size: 64, offset: 1024)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !764, file: !44, line: 407, baseType: !860, size: 64, offset: 1088)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{!124, !697, !300, !300}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !764, file: !44, line: 409, baseType: !864, size: 64, offset: 1152)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DISubroutineType(types: !866)
!866 = !{null, !697, !867, !867}
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !764, file: !44, line: 410, baseType: !869, size: 64, offset: 1216)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{!124, !710, !697}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !764, file: !44, line: 413, baseType: !873, size: 64, offset: 1280)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{!124, !876, !328, !878}
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !764, file: !44, line: 415, baseType: !880, size: 64, offset: 1344)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DISubroutineType(types: !882)
!882 = !{null, !328}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !711, file: !44, line: 466, baseType: !300, size: 64, offset: 896)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !711, file: !44, line: 467, baseType: !885, size: 32, offset: 960)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !886, line: 8, baseType: !391)
!886 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!887 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !711, file: !44, line: 468, baseType: !209, offset: 992)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !711, file: !44, line: 469, baseType: !196, size: 128, offset: 1024)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !711, file: !44, line: 470, baseType: !127, size: 64, offset: 1152)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !706, file: !699, line: 87, baseType: !300, size: 64, offset: 192)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !706, file: !699, line: 94, baseType: !300, size: 64, offset: 256)
!892 = !DIDerivedType(tag: DW_TAG_member, scope: !703, file: !699, line: 96, baseType: !893, size: 64)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !703, file: !699, line: 96, size: 64, elements: !894)
!894 = !{!895}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !893, file: !699, line: 101, baseType: !896, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !126, line: 143, baseType: !397)
!897 = !DIDerivedType(tag: DW_TAG_member, scope: !703, file: !699, line: 103, baseType: !898, size: 320)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !703, file: !699, line: 103, size: 320, elements: !899)
!899 = !{!900, !910, !913, !914}
!900 = !DIDerivedType(tag: DW_TAG_member, scope: !898, file: !699, line: 104, baseType: !901, size: 128)
!901 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !898, file: !699, line: 104, size: 128, elements: !902)
!902 = !{!903, !904}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !901, file: !699, line: 105, baseType: !196, size: 128)
!904 = !DIDerivedType(tag: DW_TAG_member, scope: !901, file: !699, line: 106, baseType: !905, size: 128)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !901, file: !699, line: 106, size: 128, elements: !906)
!906 = !{!907, !908, !909}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !905, file: !699, line: 107, baseType: !697, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !905, file: !699, line: 109, baseType: !124, size: 32, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !905, file: !699, line: 110, baseType: !124, size: 32, offset: 96)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !898, file: !699, line: 117, baseType: !911, size: 64, offset: 128)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !699, line: 117, flags: DIFlagFwdDecl)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !898, file: !699, line: 119, baseType: !127, size: 64, offset: 192)
!914 = !DIDerivedType(tag: DW_TAG_member, scope: !898, file: !699, line: 120, baseType: !915, size: 64, offset: 256)
!915 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !898, file: !699, line: 120, size: 64, elements: !916)
!916 = !{!917, !918, !919}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !915, file: !699, line: 121, baseType: !127, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !915, file: !699, line: 122, baseType: !300, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, scope: !915, file: !699, line: 123, baseType: !920, size: 32)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !915, file: !699, line: 123, size: 32, elements: !921)
!921 = !{!922, !923, !924}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !920, file: !699, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !920, file: !699, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !920, file: !699, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!925 = !DIDerivedType(tag: DW_TAG_member, scope: !703, file: !699, line: 130, baseType: !926, size: 192)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !703, file: !699, line: 130, size: 192, elements: !927)
!927 = !{!928, !929, !930, !931, !932}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !926, file: !699, line: 131, baseType: !300, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !926, file: !699, line: 134, baseType: !403, size: 8, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !926, file: !699, line: 135, baseType: !403, size: 8, offset: 72)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !926, file: !699, line: 136, baseType: !723, size: 32, offset: 96)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !926, file: !699, line: 137, baseType: !7, size: 32, offset: 128)
!933 = !DIDerivedType(tag: DW_TAG_member, scope: !703, file: !699, line: 139, baseType: !934, size: 256)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !703, file: !699, line: 139, size: 256, elements: !935)
!935 = !{!936, !937, !938}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !934, file: !699, line: 140, baseType: !300, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !934, file: !699, line: 141, baseType: !723, size: 32, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !934, file: !699, line: 143, baseType: !196, size: 128, offset: 128)
!939 = !DIDerivedType(tag: DW_TAG_member, scope: !703, file: !699, line: 145, baseType: !940, size: 256)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !703, file: !699, line: 145, size: 256, elements: !941)
!941 = !{!942, !943, !945, !946, !2306}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !940, file: !699, line: 146, baseType: !300, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !940, file: !699, line: 147, baseType: !944, size: 64, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !689, line: 509, baseType: !697)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !940, file: !699, line: 148, baseType: !300, size: 64, offset: 128)
!946 = !DIDerivedType(tag: DW_TAG_member, scope: !940, file: !699, line: 149, baseType: !947, size: 64, offset: 192)
!947 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !940, file: !699, line: 149, size: 64, elements: !948)
!948 = !{!949, !2305}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !947, file: !699, line: 150, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !699, line: 388, size: 7296, elements: !952)
!952 = !{!953, !2301}
!953 = !DIDerivedType(tag: DW_TAG_member, scope: !951, file: !699, line: 389, baseType: !954, size: 7296)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !951, file: !699, line: 389, size: 7296, elements: !955)
!955 = !{!956, !1074, !1075, !1076, !1080, !1081, !1082, !1083, !1084, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1123, !1131, !1134, !1180, !1181, !2285, !2286, !2289, !2290, !2291, !2294, !2295, !2296, !2299, !2300}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !954, file: !699, line: 390, baseType: !957, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !699, line: 305, size: 1472, elements: !959)
!959 = !{!960, !961, !962, !963, !964, !965, !966, !967, !974, !975, !980, !981, !984, !1068, !1069, !1070, !1071, !1072}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !958, file: !699, line: 308, baseType: !300, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !958, file: !699, line: 309, baseType: !300, size: 64, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !958, file: !699, line: 313, baseType: !957, size: 64, offset: 128)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !958, file: !699, line: 313, baseType: !957, size: 64, offset: 192)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !958, file: !699, line: 315, baseType: !736, size: 192, align: 64, offset: 256)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !958, file: !699, line: 323, baseType: !300, size: 64, offset: 448)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !958, file: !699, line: 327, baseType: !950, size: 64, offset: 512)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !958, file: !699, line: 333, baseType: !968, size: 64, offset: 576)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !689, line: 284, baseType: !969)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !689, line: 284, size: 64, elements: !970)
!970 = !{!971}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !969, file: !689, line: 284, baseType: !972, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !973, line: 19, baseType: !300)
!973 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!974 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !958, file: !699, line: 334, baseType: !300, size: 64, offset: 640)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !958, file: !699, line: 343, baseType: !976, size: 256, offset: 704)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !958, file: !699, line: 340, size: 256, elements: !977)
!977 = !{!978, !979}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !976, file: !699, line: 341, baseType: !736, size: 192, align: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !976, file: !699, line: 342, baseType: !300, size: 64, offset: 192)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !958, file: !699, line: 351, baseType: !196, size: 128, offset: 960)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !958, file: !699, line: 353, baseType: !982, size: 64, offset: 1088)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !699, line: 353, flags: DIFlagFwdDecl)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !958, file: !699, line: 356, baseType: !985, size: 64, offset: 1152)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !987)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !988)
!988 = !{!989, !993, !994, !998, !1002, !1042, !1046, !1050, !1054, !1055, !1056, !1060, !1064}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !987, file: !14, line: 558, baseType: !990, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DISubroutineType(types: !992)
!992 = !{null, !957}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !987, file: !14, line: 559, baseType: !990, size: 64, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !987, file: !14, line: 560, baseType: !995, size: 64, offset: 128)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DISubroutineType(types: !997)
!997 = !{!124, !957, !300}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !987, file: !14, line: 561, baseType: !999, size: 64, offset: 192)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!124, !957}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !987, file: !14, line: 562, baseType: !1003, size: 64, offset: 256)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!1006, !1007}
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !699, line: 682, baseType: !7)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1009)
!1009 = !{!1010, !1011, !1012, !1013, !1014, !1015, !1022, !1029, !1035, !1036, !1037, !1039, !1041}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1008, file: !14, line: 509, baseType: !957, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1008, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1008, file: !14, line: 511, baseType: !125, size: 32, offset: 96)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1008, file: !14, line: 512, baseType: !300, size: 64, offset: 128)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1008, file: !14, line: 513, baseType: !300, size: 64, offset: 192)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1008, file: !14, line: 514, baseType: !1016, size: 64, offset: 256)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !689, line: 385, baseType: !1018)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !689, line: 385, size: 64, elements: !1019)
!1019 = !{!1020}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1018, file: !689, line: 385, baseType: !1021, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !973, line: 15, baseType: !300)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1008, file: !14, line: 516, baseType: !1023, size: 64, offset: 320)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !689, line: 359, baseType: !1025)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !689, line: 359, size: 64, elements: !1026)
!1026 = !{!1027}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1025, file: !689, line: 359, baseType: !1028, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !973, line: 16, baseType: !300)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1008, file: !14, line: 519, baseType: !1030, size: 64, offset: 384)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !973, line: 21, baseType: !1031)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !973, line: 21, size: 64, elements: !1032)
!1032 = !{!1033}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1031, file: !973, line: 21, baseType: !1034, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !973, line: 14, baseType: !300)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1008, file: !14, line: 521, baseType: !697, size: 64, offset: 448)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1008, file: !14, line: 522, baseType: !697, size: 64, offset: 512)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1008, file: !14, line: 528, baseType: !1038, size: 64, offset: 576)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1008, file: !14, line: 532, baseType: !1040, size: 64, offset: 640)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1008, file: !14, line: 536, baseType: !944, size: 64, offset: 704)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !987, file: !14, line: 563, baseType: !1043, size: 64, offset: 320)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!1006, !1007, !13}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !987, file: !14, line: 565, baseType: !1047, size: 64, offset: 384)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{null, !1007, !300, !300}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !987, file: !14, line: 567, baseType: !1051, size: 64, offset: 448)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!300, !957}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !987, file: !14, line: 571, baseType: !1003, size: 64, offset: 512)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !987, file: !14, line: 574, baseType: !1003, size: 64, offset: 576)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !987, file: !14, line: 579, baseType: !1057, size: 64, offset: 640)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!124, !957, !300, !127, !124, !124}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !987, file: !14, line: 585, baseType: !1061, size: 64, offset: 704)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!168, !957}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !987, file: !14, line: 615, baseType: !1065, size: 64, offset: 768)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!697, !957, !300}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !958, file: !699, line: 359, baseType: !300, size: 64, offset: 1216)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !958, file: !699, line: 361, baseType: !328, size: 64, offset: 1280)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !958, file: !699, line: 362, baseType: !127, size: 64, offset: 1344)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !958, file: !699, line: 365, baseType: !747, size: 64, offset: 1408)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !958, file: !699, line: 373, baseType: !1073, offset: 1472)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !699, line: 296, elements: !223)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !954, file: !699, line: 391, baseType: !732, size: 64, offset: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !954, file: !699, line: 392, baseType: !397, size: 64, offset: 128)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !954, file: !699, line: 394, baseType: !1077, size: 64, offset: 192)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!300, !328, !300, !300, !300, !300}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !954, file: !699, line: 398, baseType: !300, size: 64, offset: 256)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !954, file: !699, line: 399, baseType: !300, size: 64, offset: 320)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !954, file: !699, line: 405, baseType: !300, size: 64, offset: 384)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !954, file: !699, line: 406, baseType: !300, size: 64, offset: 448)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !954, file: !699, line: 407, baseType: !1085, size: 64, offset: 512)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !689, line: 286, baseType: !1087)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !689, line: 286, size: 64, elements: !1088)
!1088 = !{!1089}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1087, file: !689, line: 286, baseType: !1090, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !973, line: 18, baseType: !300)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !954, file: !699, line: 416, baseType: !723, size: 32, offset: 576)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !954, file: !699, line: 428, baseType: !723, size: 32, offset: 608)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !954, file: !699, line: 437, baseType: !723, size: 32, offset: 640)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !954, file: !699, line: 447, baseType: !723, size: 32, offset: 672)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !954, file: !699, line: 450, baseType: !747, size: 64, offset: 704)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !954, file: !699, line: 452, baseType: !124, size: 32, offset: 768)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !954, file: !699, line: 454, baseType: !209, offset: 800)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !954, file: !699, line: 457, baseType: !743, size: 256, offset: 832)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !954, file: !699, line: 459, baseType: !196, size: 128, offset: 1088)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !954, file: !699, line: 466, baseType: !300, size: 64, offset: 1216)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !954, file: !699, line: 467, baseType: !300, size: 64, offset: 1280)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !954, file: !699, line: 469, baseType: !300, size: 64, offset: 1344)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !954, file: !699, line: 470, baseType: !300, size: 64, offset: 1408)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !954, file: !699, line: 471, baseType: !749, size: 64, offset: 1472)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !954, file: !699, line: 472, baseType: !300, size: 64, offset: 1536)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !954, file: !699, line: 473, baseType: !300, size: 64, offset: 1600)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !954, file: !699, line: 474, baseType: !300, size: 64, offset: 1664)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !954, file: !699, line: 475, baseType: !300, size: 64, offset: 1728)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !954, file: !699, line: 477, baseType: !209, offset: 1792)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !954, file: !699, line: 478, baseType: !300, size: 64, offset: 1792)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !954, file: !699, line: 478, baseType: !300, size: 64, offset: 1856)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !954, file: !699, line: 478, baseType: !300, size: 64, offset: 1920)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !954, file: !699, line: 478, baseType: !300, size: 64, offset: 1984)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !954, file: !699, line: 479, baseType: !300, size: 64, offset: 2048)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !954, file: !699, line: 479, baseType: !300, size: 64, offset: 2112)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !954, file: !699, line: 479, baseType: !300, size: 64, offset: 2176)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !954, file: !699, line: 480, baseType: !300, size: 64, offset: 2240)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !954, file: !699, line: 480, baseType: !300, size: 64, offset: 2304)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !954, file: !699, line: 480, baseType: !300, size: 64, offset: 2368)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !954, file: !699, line: 480, baseType: !300, size: 64, offset: 2432)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !954, file: !699, line: 482, baseType: !1122, size: 2816, offset: 2496)
!1122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 2816, elements: !148)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !954, file: !699, line: 488, baseType: !1124, size: 256, offset: 5312)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1125, line: 60, size: 256, elements: !1126)
!1125 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1126 = !{!1127}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1124, file: !1125, line: 61, baseType: !1128, size: 256)
!1128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !747, size: 256, elements: !1129)
!1129 = !{!1130}
!1130 = !DISubrange(count: 4)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !954, file: !699, line: 490, baseType: !1132, size: 64, offset: 5568)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !699, line: 490, flags: DIFlagFwdDecl)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !954, file: !699, line: 493, baseType: !1135, size: 896, offset: 5632)
!1135 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1136, line: 53, baseType: !1137)
!1136 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1136, line: 13, size: 896, elements: !1138)
!1138 = !{!1139, !1140, !1141, !1142, !1145, !1146, !1153, !1154, !1174, !1175, !1176}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1137, file: !1136, line: 18, baseType: !397, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1137, file: !1136, line: 28, baseType: !749, size: 64, offset: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1137, file: !1136, line: 31, baseType: !743, size: 256, offset: 128)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1137, file: !1136, line: 32, baseType: !1143, size: 64, offset: 384)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1136, line: 32, flags: DIFlagFwdDecl)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1137, file: !1136, line: 37, baseType: !292, size: 16, offset: 448)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1137, file: !1136, line: 40, baseType: !1147, size: 192, offset: 512)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1148, line: 53, size: 192, elements: !1149)
!1148 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1149 = !{!1150, !1151, !1152}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1147, file: !1148, line: 54, baseType: !747, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1147, file: !1148, line: 55, baseType: !209, offset: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1147, file: !1148, line: 59, baseType: !196, size: 128, offset: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1137, file: !1136, line: 41, baseType: !127, size: 64, offset: 704)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1137, file: !1136, line: 42, baseType: !1155, size: 64, offset: 768)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1157)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1158, line: 13, size: 896, elements: !1159)
!1158 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1159 = !{!1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1157, file: !1158, line: 14, baseType: !127, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1157, file: !1158, line: 15, baseType: !300, size: 64, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1157, file: !1158, line: 17, baseType: !300, size: 64, offset: 128)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1157, file: !1158, line: 17, baseType: !300, size: 64, offset: 192)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1157, file: !1158, line: 19, baseType: !285, size: 64, offset: 256)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1157, file: !1158, line: 21, baseType: !285, size: 64, offset: 320)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1157, file: !1158, line: 22, baseType: !285, size: 64, offset: 384)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1157, file: !1158, line: 23, baseType: !285, size: 64, offset: 448)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1157, file: !1158, line: 24, baseType: !285, size: 64, offset: 512)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1157, file: !1158, line: 25, baseType: !285, size: 64, offset: 576)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1157, file: !1158, line: 26, baseType: !285, size: 64, offset: 640)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1157, file: !1158, line: 27, baseType: !285, size: 64, offset: 704)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1157, file: !1158, line: 28, baseType: !285, size: 64, offset: 768)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1157, file: !1158, line: 29, baseType: !285, size: 64, offset: 832)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1137, file: !1136, line: 44, baseType: !723, size: 32, offset: 832)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1137, file: !1136, line: 50, baseType: !835, size: 16, offset: 864)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1137, file: !1136, line: 51, baseType: !1177, size: 16, offset: 880)
!1177 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !392, line: 18, baseType: !1178)
!1178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !394, line: 23, baseType: !1179)
!1179 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !954, file: !699, line: 495, baseType: !300, size: 64, offset: 6528)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !954, file: !699, line: 497, baseType: !1182, size: 64, offset: 6592)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !699, line: 381, size: 384, elements: !1184)
!1184 = !{!1185, !1186, !2284}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1183, file: !699, line: 382, baseType: !723, size: 32)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1183, file: !699, line: 383, baseType: !1187, size: 128, offset: 64)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !699, line: 376, size: 128, elements: !1188)
!1188 = !{!1189, !2282}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1187, file: !699, line: 377, baseType: !1190, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1192, line: 640, size: 48640, elements: !1193)
!1192 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1193 = !{!1194, !1200, !1202, !1203, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1220, !1238, !1249, !1334, !1335, !1336, !1347, !1348, !1350, !1351, !1352, !1353, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1432, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1470, !1472, !1473, !1474, !1486, !1487, !1488, !1489, !1490, !1491, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1515, !1520, !1704, !1705, !1706, !1707, !1711, !1714, !1717, !1720, !1723, !1727, !1828, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1872, !1873, !1874, !1875, !1876, !1881, !1882, !1883, !1886, !1887, !1890, !1893, !1896, !1899, !1942, !1945, !1946, !2025, !2026, !2029, !2030, !2033, !2034, !2035, !2039, !2040, !2041, !2054, !2055, !2056, !2066, !2071, !2074, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1191, file: !1192, line: 646, baseType: !1195, size: 128)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1196, line: 56, size: 128, elements: !1197)
!1196 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1197 = !{!1198, !1199}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1195, file: !1196, line: 57, baseType: !300, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1195, file: !1196, line: 58, baseType: !391, size: 32, offset: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1191, file: !1192, line: 649, baseType: !1201, size: 64, offset: 128)
!1201 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !285)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1191, file: !1192, line: 657, baseType: !127, size: 64, offset: 192)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1191, file: !1192, line: 658, baseType: !1204, size: 32, offset: 256)
!1204 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1205, line: 113, baseType: !1206)
!1205 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1205, line: 111, size: 32, elements: !1207)
!1207 = !{!1208}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1206, file: !1205, line: 112, baseType: !723, size: 32)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1191, file: !1192, line: 660, baseType: !7, size: 32, offset: 288)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1191, file: !1192, line: 661, baseType: !7, size: 32, offset: 320)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1191, file: !1192, line: 684, baseType: !124, size: 32, offset: 352)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1191, file: !1192, line: 686, baseType: !124, size: 32, offset: 384)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1191, file: !1192, line: 687, baseType: !124, size: 32, offset: 416)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1191, file: !1192, line: 688, baseType: !124, size: 32, offset: 448)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1191, file: !1192, line: 689, baseType: !7, size: 32, offset: 480)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1191, file: !1192, line: 691, baseType: !1217, size: 64, offset: 512)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1219)
!1219 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1192, line: 691, flags: DIFlagFwdDecl)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1191, file: !1192, line: 692, baseType: !1221, size: 832, offset: 576)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1192, line: 451, size: 832, elements: !1222)
!1222 = !{!1223, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1221, file: !1192, line: 453, baseType: !1224, size: 128)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1192, line: 325, size: 128, elements: !1225)
!1225 = !{!1226, !1227}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1224, file: !1192, line: 326, baseType: !300, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1224, file: !1192, line: 327, baseType: !391, size: 32, offset: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1221, file: !1192, line: 454, baseType: !736, size: 192, align: 64, offset: 128)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1221, file: !1192, line: 455, baseType: !196, size: 128, offset: 320)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1221, file: !1192, line: 456, baseType: !7, size: 32, offset: 448)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1221, file: !1192, line: 458, baseType: !397, size: 64, offset: 512)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1221, file: !1192, line: 459, baseType: !397, size: 64, offset: 576)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1221, file: !1192, line: 460, baseType: !397, size: 64, offset: 640)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1221, file: !1192, line: 461, baseType: !397, size: 64, offset: 704)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1221, file: !1192, line: 463, baseType: !397, size: 64, offset: 768)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1221, file: !1192, line: 465, baseType: !1237, offset: 832)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1192, line: 415, elements: !223)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1191, file: !1192, line: 693, baseType: !1239, size: 384, offset: 1408)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1192, line: 489, size: 384, elements: !1240)
!1240 = !{!1241, !1242, !1243, !1244, !1245, !1246, !1247}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1239, file: !1192, line: 490, baseType: !196, size: 128)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1239, file: !1192, line: 491, baseType: !300, size: 64, offset: 128)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1239, file: !1192, line: 492, baseType: !300, size: 64, offset: 192)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1239, file: !1192, line: 493, baseType: !7, size: 32, offset: 256)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1239, file: !1192, line: 494, baseType: !292, size: 16, offset: 288)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1239, file: !1192, line: 495, baseType: !292, size: 16, offset: 304)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1239, file: !1192, line: 497, baseType: !1248, size: 64, offset: 320)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1191, file: !1192, line: 697, baseType: !1250, size: 1792, offset: 1792)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1192, line: 507, size: 1792, elements: !1251)
!1251 = !{!1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1331, !1332}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1250, file: !1192, line: 508, baseType: !736, size: 192, align: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1250, file: !1192, line: 515, baseType: !397, size: 64, offset: 192)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1250, file: !1192, line: 516, baseType: !397, size: 64, offset: 256)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1250, file: !1192, line: 517, baseType: !397, size: 64, offset: 320)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1250, file: !1192, line: 518, baseType: !397, size: 64, offset: 384)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1250, file: !1192, line: 519, baseType: !397, size: 64, offset: 448)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1250, file: !1192, line: 526, baseType: !753, size: 64, offset: 512)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1250, file: !1192, line: 527, baseType: !397, size: 64, offset: 576)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1250, file: !1192, line: 528, baseType: !7, size: 32, offset: 640)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1250, file: !1192, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1250, file: !1192, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1250, file: !1192, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1250, file: !1192, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1250, file: !1192, line: 563, baseType: !1266, size: 512, offset: 704)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1267)
!1267 = !{!1268, !1276, !1277, !1282, !1325, !1328, !1329, !1330}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1266, file: !20, line: 119, baseType: !1269, size: 256)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1270, line: 9, size: 256, elements: !1271)
!1270 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1271 = !{!1272, !1273}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1269, file: !1270, line: 10, baseType: !736, size: 192, align: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1269, file: !1270, line: 11, baseType: !1274, size: 64, offset: 192)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1275, line: 29, baseType: !753)
!1275 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1266, file: !20, line: 120, baseType: !1274, size: 64, offset: 256)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1266, file: !20, line: 121, baseType: !1278, size: 64, offset: 320)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!19, !1281}
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1266, file: !20, line: 122, baseType: !1283, size: 64, offset: 384)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1285)
!1285 = !{!1286, !1306, !1307, !1310, !1315, !1316, !1320, !1324}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1284, file: !20, line: 160, baseType: !1287, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1289)
!1289 = !{!1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1288, file: !20, line: 215, baseType: !756)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1288, file: !20, line: 216, baseType: !7, size: 32)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1288, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1288, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1288, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1288, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1288, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1288, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1288, file: !20, line: 233, baseType: !1274, size: 64, offset: 128)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1288, file: !20, line: 234, baseType: !1281, size: 64, offset: 192)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1288, file: !20, line: 235, baseType: !1274, size: 64, offset: 256)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1288, file: !20, line: 236, baseType: !1281, size: 64, offset: 320)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1288, file: !20, line: 237, baseType: !1303, size: 4096, offset: 512)
!1303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1284, size: 4096, elements: !1304)
!1304 = !{!1305}
!1305 = !DISubrange(count: 8)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1284, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1284, file: !20, line: 162, baseType: !1308, size: 32, offset: 96)
!1308 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !126, line: 27, baseType: !1309)
!1309 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !283, line: 96, baseType: !124)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1284, file: !20, line: 163, baseType: !1311, size: 32, offset: 128)
!1311 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !364, line: 276, baseType: !1312)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !364, line: 276, size: 32, elements: !1313)
!1313 = !{!1314}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1312, file: !364, line: 276, baseType: !368, size: 32)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1284, file: !20, line: 164, baseType: !1281, size: 64, offset: 192)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1284, file: !20, line: 165, baseType: !1317, size: 128, offset: 256)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1270, line: 14, size: 128, elements: !1318)
!1318 = !{!1319}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1317, file: !1270, line: 15, baseType: !728, size: 128)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1284, file: !20, line: 166, baseType: !1321, size: 64, offset: 384)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!1274}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1284, file: !20, line: 167, baseType: !1274, size: 64, offset: 448)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1266, file: !20, line: 123, baseType: !1326, size: 8, offset: 448)
!1326 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !392, line: 17, baseType: !1327)
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !394, line: 21, baseType: !403)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1266, file: !20, line: 124, baseType: !1326, size: 8, offset: 456)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1266, file: !20, line: 125, baseType: !1326, size: 8, offset: 464)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1266, file: !20, line: 126, baseType: !1326, size: 8, offset: 472)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1250, file: !1192, line: 572, baseType: !1266, size: 512, offset: 1216)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1250, file: !1192, line: 580, baseType: !1333, size: 64, offset: 1728)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1191, file: !1192, line: 721, baseType: !7, size: 32, offset: 3584)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1191, file: !1192, line: 722, baseType: !124, size: 32, offset: 3616)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1191, file: !1192, line: 723, baseType: !1337, size: 64, offset: 3648)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1339)
!1339 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1340, line: 17, baseType: !1341)
!1340 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1340, line: 17, size: 64, elements: !1342)
!1342 = !{!1343}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1341, file: !1340, line: 17, baseType: !1344, size: 64)
!1344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 64, elements: !1345)
!1345 = !{!1346}
!1346 = !DISubrange(count: 1)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1191, file: !1192, line: 724, baseType: !1339, size: 64, offset: 3712)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1191, file: !1192, line: 749, baseType: !1349, offset: 3776)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1192, line: 290, elements: !223)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1191, file: !1192, line: 751, baseType: !196, size: 128, offset: 3776)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1191, file: !1192, line: 757, baseType: !950, size: 64, offset: 3904)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1191, file: !1192, line: 758, baseType: !950, size: 64, offset: 3968)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1191, file: !1192, line: 761, baseType: !1354, size: 320, offset: 4032)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1125, line: 34, size: 320, elements: !1355)
!1355 = !{!1356, !1357}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1354, file: !1125, line: 35, baseType: !397, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1354, file: !1125, line: 36, baseType: !1358, size: 256, offset: 64)
!1358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !957, size: 256, elements: !1129)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1191, file: !1192, line: 766, baseType: !124, size: 32, offset: 4352)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1191, file: !1192, line: 767, baseType: !124, size: 32, offset: 4384)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1191, file: !1192, line: 768, baseType: !124, size: 32, offset: 4416)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1191, file: !1192, line: 770, baseType: !124, size: 32, offset: 4448)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1191, file: !1192, line: 772, baseType: !300, size: 64, offset: 4480)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1191, file: !1192, line: 775, baseType: !7, size: 32, offset: 4544)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1191, file: !1192, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1191, file: !1192, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1191, file: !1192, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1191, file: !1192, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1191, file: !1192, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1191, file: !1192, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1191, file: !1192, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1191, file: !1192, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1191, file: !1192, line: 831, baseType: !300, size: 64, offset: 4672)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1191, file: !1192, line: 833, baseType: !1375, size: 384, offset: 4736)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1376)
!1376 = !{!1377, !1382}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1375, file: !25, line: 26, baseType: !1378, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!285, !1381}
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, scope: !1375, file: !25, line: 27, baseType: !1383, size: 320, offset: 64)
!1383 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1375, file: !25, line: 27, size: 320, elements: !1384)
!1384 = !{!1385, !1395, !1422}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1383, file: !25, line: 36, baseType: !1386, size: 320)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1383, file: !25, line: 29, size: 320, elements: !1387)
!1387 = !{!1388, !1390, !1391, !1392, !1393, !1394}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1386, file: !25, line: 30, baseType: !1389, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1386, file: !25, line: 31, baseType: !391, size: 32, offset: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1386, file: !25, line: 32, baseType: !391, size: 32, offset: 96)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1386, file: !25, line: 33, baseType: !391, size: 32, offset: 128)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1386, file: !25, line: 34, baseType: !397, size: 64, offset: 192)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1386, file: !25, line: 35, baseType: !1389, size: 64, offset: 256)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1383, file: !25, line: 46, baseType: !1396, size: 192)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1383, file: !25, line: 38, size: 192, elements: !1397)
!1397 = !{!1398, !1399, !1400, !1421}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1396, file: !25, line: 39, baseType: !1308, size: 32)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1396, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1400 = !DIDerivedType(tag: DW_TAG_member, scope: !1396, file: !25, line: 41, baseType: !1401, size: 64, offset: 64)
!1401 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1396, file: !25, line: 41, size: 64, elements: !1402)
!1402 = !{!1403, !1411}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1401, file: !25, line: 42, baseType: !1404, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1406, line: 7, size: 128, elements: !1407)
!1406 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1407 = !{!1408, !1410}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1405, file: !1406, line: 8, baseType: !1409, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !283, line: 93, baseType: !509)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1405, file: !1406, line: 9, baseType: !509, size: 64, offset: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1401, file: !25, line: 43, baseType: !1412, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1414, line: 7, size: 64, elements: !1415)
!1414 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1415 = !{!1416, !1420}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1413, file: !1414, line: 8, baseType: !1417, size: 32)
!1417 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1414, line: 5, baseType: !1418)
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !392, line: 20, baseType: !1419)
!1419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !394, line: 26, baseType: !124)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1413, file: !1414, line: 9, baseType: !1418, size: 32, offset: 32)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1396, file: !25, line: 45, baseType: !397, size: 64, offset: 128)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1383, file: !25, line: 54, baseType: !1423, size: 256)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1383, file: !25, line: 48, size: 256, elements: !1424)
!1424 = !{!1425, !1428, !1429, !1430, !1431}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1423, file: !25, line: 49, baseType: !1426, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1423, file: !25, line: 50, baseType: !124, size: 32, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1423, file: !25, line: 51, baseType: !124, size: 32, offset: 96)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1423, file: !25, line: 52, baseType: !300, size: 64, offset: 128)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1423, file: !25, line: 53, baseType: !300, size: 64, offset: 192)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1191, file: !1192, line: 835, baseType: !1433, size: 32, offset: 5120)
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !126, line: 22, baseType: !1434)
!1434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !283, line: 28, baseType: !124)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1191, file: !1192, line: 836, baseType: !1433, size: 32, offset: 5152)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1191, file: !1192, line: 840, baseType: !300, size: 64, offset: 5184)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1191, file: !1192, line: 849, baseType: !1190, size: 64, offset: 5248)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1191, file: !1192, line: 852, baseType: !1190, size: 64, offset: 5312)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1191, file: !1192, line: 857, baseType: !196, size: 128, offset: 5376)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1191, file: !1192, line: 858, baseType: !196, size: 128, offset: 5504)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1191, file: !1192, line: 859, baseType: !1190, size: 64, offset: 5632)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1191, file: !1192, line: 867, baseType: !196, size: 128, offset: 5696)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1191, file: !1192, line: 868, baseType: !196, size: 128, offset: 5824)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1191, file: !1192, line: 871, baseType: !1445, size: 64, offset: 5952)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1447)
!1447 = !{!1448, !1449, !1450, !1451, !1453, !1454, !1461, !1462}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1446, file: !53, line: 61, baseType: !1204, size: 32)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1446, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1446, file: !53, line: 63, baseType: !209, offset: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1446, file: !53, line: 65, baseType: !1452, size: 256, offset: 64)
!1452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !611, size: 256, elements: !1129)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1446, file: !53, line: 66, baseType: !611, size: 64, offset: 320)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1446, file: !53, line: 68, baseType: !1455, size: 128, offset: 384)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1456, line: 40, baseType: !1457)
!1456 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1456, line: 36, size: 128, elements: !1458)
!1458 = !{!1459, !1460}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1457, file: !1456, line: 37, baseType: !209)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1457, file: !1456, line: 38, baseType: !196, size: 128)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1446, file: !53, line: 69, baseType: !341, size: 128, align: 64, offset: 512)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1446, file: !53, line: 70, baseType: !1463, size: 128, offset: 640)
!1463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1464, size: 128, elements: !1345)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1465)
!1465 = !{!1466, !1467}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1464, file: !53, line: 55, baseType: !124, size: 32)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1464, file: !53, line: 56, baseType: !1468, size: 64, offset: 64)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1191, file: !1192, line: 872, baseType: !1471, size: 512, offset: 6016)
!1471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !615, size: 512, elements: !1129)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1191, file: !1192, line: 873, baseType: !196, size: 128, offset: 6528)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1191, file: !1192, line: 874, baseType: !196, size: 128, offset: 6656)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1191, file: !1192, line: 876, baseType: !1475, size: 64, offset: 6784)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1477, line: 26, size: 192, elements: !1478)
!1477 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1478 = !{!1479, !1480}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1476, file: !1477, line: 27, baseType: !7, size: 32)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1476, file: !1477, line: 28, baseType: !1481, size: 128, offset: 64)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1482, line: 43, size: 128, elements: !1483)
!1482 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1483 = !{!1484, !1485}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1481, file: !1482, line: 44, baseType: !756)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1481, file: !1482, line: 45, baseType: !196, size: 128)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1191, file: !1192, line: 879, baseType: !681, size: 64, offset: 6848)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1191, file: !1192, line: 882, baseType: !681, size: 64, offset: 6912)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1191, file: !1192, line: 884, baseType: !397, size: 64, offset: 6976)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1191, file: !1192, line: 885, baseType: !397, size: 64, offset: 7040)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1191, file: !1192, line: 890, baseType: !397, size: 64, offset: 7104)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1191, file: !1192, line: 891, baseType: !1492, size: 128, offset: 7168)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1192, line: 242, size: 128, elements: !1493)
!1493 = !{!1494, !1495, !1496}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1492, file: !1192, line: 244, baseType: !397, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1492, file: !1192, line: 245, baseType: !397, size: 64, offset: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1492, file: !1192, line: 246, baseType: !756, offset: 128)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1191, file: !1192, line: 900, baseType: !300, size: 64, offset: 7296)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1191, file: !1192, line: 901, baseType: !300, size: 64, offset: 7360)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1191, file: !1192, line: 904, baseType: !397, size: 64, offset: 7424)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1191, file: !1192, line: 907, baseType: !397, size: 64, offset: 7488)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1191, file: !1192, line: 910, baseType: !300, size: 64, offset: 7552)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1191, file: !1192, line: 911, baseType: !300, size: 64, offset: 7616)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1191, file: !1192, line: 914, baseType: !1504, size: 640, offset: 7680)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1505, line: 123, size: 640, elements: !1506)
!1505 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1506 = !{!1507, !1513, !1514}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1504, file: !1505, line: 124, baseType: !1508, size: 576)
!1508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1509, size: 576, elements: !251)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1505, line: 108, size: 192, elements: !1510)
!1510 = !{!1511, !1512}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1509, file: !1505, line: 109, baseType: !397, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1509, file: !1505, line: 110, baseType: !1317, size: 128, offset: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1504, file: !1505, line: 125, baseType: !7, size: 32, offset: 576)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1504, file: !1505, line: 126, baseType: !7, size: 32, offset: 608)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1191, file: !1192, line: 917, baseType: !1516, size: 192, offset: 8320)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1505, line: 134, size: 192, elements: !1517)
!1517 = !{!1518, !1519}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1516, file: !1505, line: 135, baseType: !341, size: 128, align: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1516, file: !1505, line: 136, baseType: !7, size: 32, offset: 128)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1191, file: !1192, line: 923, baseType: !1521, size: 64, offset: 8512)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1523)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1524, line: 111, size: 1280, elements: !1525)
!1524 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1525 = !{!1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1545, !1546, !1547, !1548, !1549, !1550, !1657, !1658, !1659, !1660, !1686, !1689, !1699}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1523, file: !1524, line: 112, baseType: !723, size: 32)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1523, file: !1524, line: 120, baseType: !411, size: 32, offset: 32)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1523, file: !1524, line: 121, baseType: !419, size: 32, offset: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1523, file: !1524, line: 122, baseType: !411, size: 32, offset: 96)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1523, file: !1524, line: 123, baseType: !419, size: 32, offset: 128)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1523, file: !1524, line: 124, baseType: !411, size: 32, offset: 160)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1523, file: !1524, line: 125, baseType: !419, size: 32, offset: 192)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1523, file: !1524, line: 126, baseType: !411, size: 32, offset: 224)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1523, file: !1524, line: 127, baseType: !419, size: 32, offset: 256)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1523, file: !1524, line: 128, baseType: !7, size: 32, offset: 288)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1523, file: !1524, line: 129, baseType: !1537, size: 64, offset: 320)
!1537 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1538, line: 26, baseType: !1539)
!1538 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1538, line: 24, size: 64, elements: !1540)
!1540 = !{!1541}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1539, file: !1538, line: 25, baseType: !1542, size: 64)
!1542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 64, elements: !1543)
!1543 = !{!1544}
!1544 = !DISubrange(count: 2)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1523, file: !1524, line: 130, baseType: !1537, size: 64, offset: 384)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1523, file: !1524, line: 131, baseType: !1537, size: 64, offset: 448)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1523, file: !1524, line: 132, baseType: !1537, size: 64, offset: 512)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1523, file: !1524, line: 133, baseType: !1537, size: 64, offset: 576)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1523, file: !1524, line: 135, baseType: !403, size: 8, offset: 640)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1523, file: !1524, line: 137, baseType: !1551, size: 64, offset: 704)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1553, line: 189, size: 1664, elements: !1554)
!1553 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1554 = !{!1555, !1556, !1559, !1564, !1565, !1568, !1569, !1574, !1575, !1576, !1577, !1579, !1580, !1581, !1582, !1583, !1621, !1642}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1552, file: !1553, line: 190, baseType: !1204, size: 32)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1552, file: !1553, line: 191, baseType: !1557, size: 32, offset: 32)
!1557 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1553, line: 28, baseType: !1558)
!1558 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !126, line: 98, baseType: !1418)
!1559 = !DIDerivedType(tag: DW_TAG_member, scope: !1552, file: !1553, line: 192, baseType: !1560, size: 192, offset: 64)
!1560 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1552, file: !1553, line: 192, size: 192, elements: !1561)
!1561 = !{!1562, !1563}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1560, file: !1553, line: 193, baseType: !196, size: 128)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1560, file: !1553, line: 194, baseType: !736, size: 192, align: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1552, file: !1553, line: 199, baseType: !743, size: 256, offset: 256)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1552, file: !1553, line: 200, baseType: !1566, size: 64, offset: 512)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1553, line: 200, flags: DIFlagFwdDecl)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1552, file: !1553, line: 201, baseType: !127, size: 64, offset: 576)
!1569 = !DIDerivedType(tag: DW_TAG_member, scope: !1552, file: !1553, line: 202, baseType: !1570, size: 64, offset: 640)
!1570 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1552, file: !1553, line: 202, size: 64, elements: !1571)
!1571 = !{!1572, !1573}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1570, file: !1553, line: 203, baseType: !515, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1570, file: !1553, line: 204, baseType: !515, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1552, file: !1553, line: 206, baseType: !515, size: 64, offset: 704)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1552, file: !1553, line: 207, baseType: !411, size: 32, offset: 768)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1552, file: !1553, line: 208, baseType: !419, size: 32, offset: 800)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1552, file: !1553, line: 209, baseType: !1578, size: 32, offset: 832)
!1578 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1553, line: 31, baseType: !535)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1552, file: !1553, line: 210, baseType: !292, size: 16, offset: 864)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1552, file: !1553, line: 211, baseType: !292, size: 16, offset: 880)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1552, file: !1553, line: 215, baseType: !1179, size: 16, offset: 896)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1552, file: !1553, line: 222, baseType: !300, size: 64, offset: 960)
!1583 = !DIDerivedType(tag: DW_TAG_member, scope: !1552, file: !1553, line: 239, baseType: !1584, size: 320, offset: 1024)
!1584 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1552, file: !1553, line: 239, size: 320, elements: !1585)
!1585 = !{!1586, !1613}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1584, file: !1553, line: 240, baseType: !1587, size: 320)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1553, line: 108, size: 320, elements: !1588)
!1588 = !{!1589, !1590, !1602, !1605, !1612}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1587, file: !1553, line: 110, baseType: !300, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, scope: !1587, file: !1553, line: 111, baseType: !1591, size: 64, offset: 64)
!1591 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1587, file: !1553, line: 111, size: 64, elements: !1592)
!1592 = !{!1593, !1601}
!1593 = !DIDerivedType(tag: DW_TAG_member, scope: !1591, file: !1553, line: 112, baseType: !1594, size: 64)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1591, file: !1553, line: 112, size: 64, elements: !1595)
!1595 = !{!1596, !1597}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1594, file: !1553, line: 114, baseType: !835, size: 16)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1594, file: !1553, line: 115, baseType: !1598, size: 48, offset: 16)
!1598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 48, elements: !1599)
!1599 = !{!1600}
!1600 = !DISubrange(count: 6)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1591, file: !1553, line: 121, baseType: !300, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1587, file: !1553, line: 123, baseType: !1603, size: 64, offset: 128)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1553, line: 96, flags: DIFlagFwdDecl)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1587, file: !1553, line: 124, baseType: !1606, size: 64, offset: 192)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1553, line: 102, size: 192, elements: !1608)
!1608 = !{!1609, !1610, !1611}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1607, file: !1553, line: 103, baseType: !341, size: 128, align: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1607, file: !1553, line: 104, baseType: !1204, size: 32, offset: 128)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1607, file: !1553, line: 105, baseType: !466, size: 8, offset: 160)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1587, file: !1553, line: 125, baseType: !168, size: 64, offset: 256)
!1613 = !DIDerivedType(tag: DW_TAG_member, scope: !1584, file: !1553, line: 241, baseType: !1614, size: 320)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1584, file: !1553, line: 241, size: 320, elements: !1615)
!1615 = !{!1616, !1617, !1618, !1619, !1620}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1614, file: !1553, line: 242, baseType: !300, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1614, file: !1553, line: 243, baseType: !300, size: 64, offset: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1614, file: !1553, line: 244, baseType: !1603, size: 64, offset: 128)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1614, file: !1553, line: 245, baseType: !1606, size: 64, offset: 192)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1614, file: !1553, line: 246, baseType: !250, size: 64, offset: 256)
!1621 = !DIDerivedType(tag: DW_TAG_member, scope: !1552, file: !1553, line: 254, baseType: !1622, size: 256, offset: 1344)
!1622 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1552, file: !1553, line: 254, size: 256, elements: !1623)
!1623 = !{!1624, !1630}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1622, file: !1553, line: 255, baseType: !1625, size: 256)
!1625 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1553, line: 128, size: 256, elements: !1626)
!1626 = !{!1627, !1628}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1625, file: !1553, line: 129, baseType: !127, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1625, file: !1553, line: 130, baseType: !1629, size: 256)
!1629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 256, elements: !1129)
!1630 = !DIDerivedType(tag: DW_TAG_member, scope: !1622, file: !1553, line: 256, baseType: !1631, size: 256)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1622, file: !1553, line: 256, size: 256, elements: !1632)
!1632 = !{!1633, !1634}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1631, file: !1553, line: 258, baseType: !196, size: 128)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1631, file: !1553, line: 259, baseType: !1635, size: 128, offset: 128)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1636, line: 22, size: 128, elements: !1637)
!1636 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1637 = !{!1638, !1641}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1635, file: !1636, line: 23, baseType: !1639, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1636, line: 23, flags: DIFlagFwdDecl)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1635, file: !1636, line: 24, baseType: !300, size: 64, offset: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1552, file: !1553, line: 274, baseType: !1643, size: 64, offset: 1600)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1553, line: 170, size: 192, elements: !1645)
!1645 = !{!1646, !1655, !1656}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1644, file: !1553, line: 171, baseType: !1647, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1553, line: 165, baseType: !1648)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!124, !1551, !1651, !1653, !1551}
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1604)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1625)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1644, file: !1553, line: 172, baseType: !1551, size: 64, offset: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1644, file: !1553, line: 173, baseType: !1603, size: 64, offset: 128)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1523, file: !1524, line: 138, baseType: !1551, size: 64, offset: 768)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1523, file: !1524, line: 139, baseType: !1551, size: 64, offset: 832)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1523, file: !1524, line: 140, baseType: !1551, size: 64, offset: 896)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1523, file: !1524, line: 145, baseType: !1661, size: 64, offset: 960)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1663, line: 13, size: 896, elements: !1664)
!1663 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1664 = !{!1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1662, file: !1663, line: 14, baseType: !1204, size: 32)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1662, file: !1663, line: 15, baseType: !723, size: 32, offset: 32)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1662, file: !1663, line: 16, baseType: !723, size: 32, offset: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1662, file: !1663, line: 21, baseType: !747, size: 64, offset: 128)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1662, file: !1663, line: 27, baseType: !300, size: 64, offset: 192)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1662, file: !1663, line: 28, baseType: !300, size: 64, offset: 256)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1662, file: !1663, line: 29, baseType: !747, size: 64, offset: 320)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1662, file: !1663, line: 32, baseType: !615, size: 128, offset: 384)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1662, file: !1663, line: 33, baseType: !411, size: 32, offset: 512)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1662, file: !1663, line: 37, baseType: !747, size: 64, offset: 576)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1662, file: !1663, line: 44, baseType: !1676, size: 256, offset: 640)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1677, line: 15, size: 256, elements: !1678)
!1677 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1678 = !{!1679, !1680, !1681, !1682, !1683, !1684, !1685}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1676, file: !1677, line: 16, baseType: !756)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1676, file: !1677, line: 18, baseType: !124, size: 32)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1676, file: !1677, line: 19, baseType: !124, size: 32, offset: 32)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1676, file: !1677, line: 20, baseType: !124, size: 32, offset: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1676, file: !1677, line: 21, baseType: !124, size: 32, offset: 96)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1676, file: !1677, line: 22, baseType: !300, size: 64, offset: 128)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1676, file: !1677, line: 23, baseType: !300, size: 64, offset: 192)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1523, file: !1524, line: 146, baseType: !1687, size: 64, offset: 1024)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !412, line: 18, flags: DIFlagFwdDecl)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1523, file: !1524, line: 147, baseType: !1690, size: 64, offset: 1088)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1524, line: 25, size: 64, elements: !1692)
!1692 = !{!1693, !1694, !1695}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1691, file: !1524, line: 26, baseType: !723, size: 32)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1691, file: !1524, line: 27, baseType: !124, size: 32, offset: 32)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1691, file: !1524, line: 28, baseType: !1696, offset: 64)
!1696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, elements: !1697)
!1697 = !{!1698}
!1698 = !DISubrange(count: 0)
!1699 = !DIDerivedType(tag: DW_TAG_member, scope: !1523, file: !1524, line: 149, baseType: !1700, size: 128, offset: 1152)
!1700 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1523, file: !1524, line: 149, size: 128, elements: !1701)
!1701 = !{!1702, !1703}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1700, file: !1524, line: 150, baseType: !124, size: 32)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1700, file: !1524, line: 151, baseType: !341, size: 128, align: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1191, file: !1192, line: 926, baseType: !1521, size: 64, offset: 8576)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1191, file: !1192, line: 929, baseType: !1521, size: 64, offset: 8640)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1191, file: !1192, line: 933, baseType: !1551, size: 64, offset: 8704)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1191, file: !1192, line: 943, baseType: !1708, size: 128, offset: 8768)
!1708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 128, elements: !1709)
!1709 = !{!1710}
!1710 = !DISubrange(count: 16)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1191, file: !1192, line: 945, baseType: !1712, size: 64, offset: 8896)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1192, line: 49, flags: DIFlagFwdDecl)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1191, file: !1192, line: 956, baseType: !1715, size: 64, offset: 8960)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1192, line: 45, flags: DIFlagFwdDecl)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1191, file: !1192, line: 959, baseType: !1718, size: 64, offset: 9024)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1192, line: 959, flags: DIFlagFwdDecl)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1191, file: !1192, line: 962, baseType: !1721, size: 64, offset: 9088)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1192, line: 66, flags: DIFlagFwdDecl)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1191, file: !1192, line: 966, baseType: !1724, size: 64, offset: 9152)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1726, line: 35, flags: DIFlagFwdDecl)
!1726 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1191, file: !1192, line: 969, baseType: !1728, size: 64, offset: 9216)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1730, line: 82, size: 7296, elements: !1731)
!1730 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1731 = !{!1732, !1733, !1734, !1735, !1736, !1737, !1738, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1767, !1776, !1777, !1779, !1780, !1781, !1784, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1814, !1815, !1822, !1823, !1824, !1825, !1826, !1827}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1729, file: !1730, line: 83, baseType: !1204, size: 32)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1729, file: !1730, line: 84, baseType: !723, size: 32, offset: 32)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1729, file: !1730, line: 85, baseType: !124, size: 32, offset: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1729, file: !1730, line: 86, baseType: !196, size: 128, offset: 128)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1729, file: !1730, line: 88, baseType: !1455, size: 128, offset: 256)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1729, file: !1730, line: 91, baseType: !1190, size: 64, offset: 384)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1729, file: !1730, line: 94, baseType: !1739, size: 192, offset: 448)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1740, line: 30, size: 192, elements: !1741)
!1740 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1741 = !{!1742, !1743}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1739, file: !1740, line: 31, baseType: !196, size: 128)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1739, file: !1740, line: 32, baseType: !1744, size: 64, offset: 128)
!1744 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1745, line: 25, baseType: !1746)
!1745 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1745, line: 23, size: 64, elements: !1747)
!1747 = !{!1748}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1746, file: !1745, line: 24, baseType: !1344, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1729, file: !1730, line: 97, baseType: !611, size: 64, offset: 640)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1729, file: !1730, line: 100, baseType: !124, size: 32, offset: 704)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1729, file: !1730, line: 106, baseType: !124, size: 32, offset: 736)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1729, file: !1730, line: 107, baseType: !1190, size: 64, offset: 768)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1729, file: !1730, line: 110, baseType: !124, size: 32, offset: 832)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1729, file: !1730, line: 111, baseType: !7, size: 32, offset: 864)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1729, file: !1730, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1729, file: !1730, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1729, file: !1730, line: 128, baseType: !124, size: 32, offset: 928)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1729, file: !1730, line: 129, baseType: !196, size: 128, offset: 960)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1729, file: !1730, line: 132, baseType: !1266, size: 512, offset: 1088)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1729, file: !1730, line: 133, baseType: !1274, size: 64, offset: 1600)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1729, file: !1730, line: 140, baseType: !1762, size: 256, offset: 1664)
!1762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1763, size: 256, elements: !1543)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1730, line: 38, size: 128, elements: !1764)
!1764 = !{!1765, !1766}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1763, file: !1730, line: 39, baseType: !397, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1763, file: !1730, line: 40, baseType: !397, size: 64, offset: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1729, file: !1730, line: 146, baseType: !1768, size: 192, offset: 1920)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1730, line: 66, size: 192, elements: !1769)
!1769 = !{!1770}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1768, file: !1730, line: 67, baseType: !1771, size: 192)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1730, line: 47, size: 192, elements: !1772)
!1772 = !{!1773, !1774, !1775}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1771, file: !1730, line: 48, baseType: !749, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1771, file: !1730, line: 49, baseType: !749, size: 64, offset: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1771, file: !1730, line: 50, baseType: !749, size: 64, offset: 128)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1729, file: !1730, line: 150, baseType: !1504, size: 640, offset: 2112)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1729, file: !1730, line: 153, baseType: !1778, size: 256, offset: 2752)
!1778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1445, size: 256, elements: !1129)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1729, file: !1730, line: 159, baseType: !1445, size: 64, offset: 3008)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1729, file: !1730, line: 162, baseType: !124, size: 32, offset: 3072)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1729, file: !1730, line: 164, baseType: !1782, size: 64, offset: 3136)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1730, line: 164, flags: DIFlagFwdDecl)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1729, file: !1730, line: 175, baseType: !1785, size: 32, offset: 3200)
!1785 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !364, line: 805, baseType: !1786)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !364, line: 798, size: 32, elements: !1787)
!1787 = !{!1788, !1789}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1786, file: !364, line: 803, baseType: !363, size: 32)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1786, file: !364, line: 804, baseType: !209, offset: 32)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1729, file: !1730, line: 176, baseType: !397, size: 64, offset: 3264)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1729, file: !1730, line: 176, baseType: !397, size: 64, offset: 3328)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1729, file: !1730, line: 176, baseType: !397, size: 64, offset: 3392)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1729, file: !1730, line: 176, baseType: !397, size: 64, offset: 3456)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1729, file: !1730, line: 177, baseType: !397, size: 64, offset: 3520)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1729, file: !1730, line: 178, baseType: !397, size: 64, offset: 3584)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1729, file: !1730, line: 179, baseType: !1492, size: 128, offset: 3648)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1729, file: !1730, line: 180, baseType: !300, size: 64, offset: 3776)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1729, file: !1730, line: 180, baseType: !300, size: 64, offset: 3840)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1729, file: !1730, line: 180, baseType: !300, size: 64, offset: 3904)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1729, file: !1730, line: 180, baseType: !300, size: 64, offset: 3968)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1729, file: !1730, line: 181, baseType: !300, size: 64, offset: 4032)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1729, file: !1730, line: 181, baseType: !300, size: 64, offset: 4096)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1729, file: !1730, line: 181, baseType: !300, size: 64, offset: 4160)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1729, file: !1730, line: 181, baseType: !300, size: 64, offset: 4224)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1729, file: !1730, line: 182, baseType: !300, size: 64, offset: 4288)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1729, file: !1730, line: 182, baseType: !300, size: 64, offset: 4352)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1729, file: !1730, line: 182, baseType: !300, size: 64, offset: 4416)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1729, file: !1730, line: 182, baseType: !300, size: 64, offset: 4480)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1729, file: !1730, line: 183, baseType: !300, size: 64, offset: 4544)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1729, file: !1730, line: 183, baseType: !300, size: 64, offset: 4608)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1729, file: !1730, line: 184, baseType: !1812, offset: 4672)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1813, line: 12, elements: !223)
!1813 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1729, file: !1730, line: 192, baseType: !399, size: 64, offset: 4672)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1729, file: !1730, line: 203, baseType: !1816, size: 2048, offset: 4736)
!1816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1817, size: 2048, elements: !1709)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1818, line: 43, size: 128, elements: !1819)
!1818 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1819 = !{!1820, !1821}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1817, file: !1818, line: 44, baseType: !299, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1817, file: !1818, line: 45, baseType: !299, size: 64, offset: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1729, file: !1730, line: 220, baseType: !466, size: 8, offset: 6784)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1729, file: !1730, line: 221, baseType: !1179, size: 16, offset: 6800)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1729, file: !1730, line: 222, baseType: !1179, size: 16, offset: 6816)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1729, file: !1730, line: 224, baseType: !950, size: 64, offset: 6848)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1729, file: !1730, line: 227, baseType: !1147, size: 192, offset: 6912)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1729, file: !1730, line: 233, baseType: !1147, size: 192, offset: 7104)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1191, file: !1192, line: 970, baseType: !1829, size: 64, offset: 9280)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1730, line: 20, size: 16576, elements: !1831)
!1831 = !{!1832, !1833, !1834, !1835}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1830, file: !1730, line: 21, baseType: !209)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1830, file: !1730, line: 22, baseType: !1204, size: 32)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1830, file: !1730, line: 23, baseType: !1455, size: 128, offset: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1830, file: !1730, line: 24, baseType: !1836, size: 16384, offset: 192)
!1836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1837, size: 16384, elements: !255)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1740, line: 49, size: 256, elements: !1838)
!1838 = !{!1839}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1837, file: !1740, line: 50, baseType: !1840, size: 256)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1740, line: 35, size: 256, elements: !1841)
!1841 = !{!1842, !1849, !1850, !1854}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1840, file: !1740, line: 37, baseType: !1843, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1844, line: 19, baseType: !1845)
!1844 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1844, line: 18, baseType: !1847)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{null, !124}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1840, file: !1740, line: 38, baseType: !300, size: 64, offset: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1840, file: !1740, line: 44, baseType: !1851, size: 64, offset: 128)
!1851 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1844, line: 22, baseType: !1852)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1844, line: 21, baseType: !136)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1840, file: !1740, line: 46, baseType: !1744, size: 64, offset: 192)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1191, file: !1192, line: 971, baseType: !1744, size: 64, offset: 9344)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1191, file: !1192, line: 972, baseType: !1744, size: 64, offset: 9408)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1191, file: !1192, line: 974, baseType: !1744, size: 64, offset: 9472)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1191, file: !1192, line: 975, baseType: !1739, size: 192, offset: 9536)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1191, file: !1192, line: 976, baseType: !300, size: 64, offset: 9728)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1191, file: !1192, line: 977, baseType: !297, size: 64, offset: 9792)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1191, file: !1192, line: 978, baseType: !7, size: 32, offset: 9856)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1191, file: !1192, line: 980, baseType: !344, size: 64, offset: 9920)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1191, file: !1192, line: 989, baseType: !1864, size: 128, offset: 9984)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1865, line: 35, size: 128, elements: !1866)
!1865 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1866 = !{!1867, !1868, !1869}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1864, file: !1865, line: 36, baseType: !124, size: 32)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1864, file: !1865, line: 37, baseType: !723, size: 32, offset: 32)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1864, file: !1865, line: 38, baseType: !1870, size: 64, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1865, line: 23, flags: DIFlagFwdDecl)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1191, file: !1192, line: 992, baseType: !397, size: 64, offset: 10112)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1191, file: !1192, line: 993, baseType: !397, size: 64, offset: 10176)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1191, file: !1192, line: 996, baseType: !209, offset: 10240)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1191, file: !1192, line: 999, baseType: !756, offset: 10240)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1191, file: !1192, line: 1001, baseType: !1877, size: 64, offset: 10240)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1192, line: 636, size: 64, elements: !1878)
!1878 = !{!1879}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1877, file: !1192, line: 637, baseType: !1880, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1191, file: !1192, line: 1005, baseType: !728, size: 128, offset: 10304)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1191, file: !1192, line: 1007, baseType: !1190, size: 64, offset: 10432)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1191, file: !1192, line: 1009, baseType: !1884, size: 64, offset: 10496)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1192, line: 1009, flags: DIFlagFwdDecl)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1191, file: !1192, line: 1043, baseType: !127, size: 64, offset: 10560)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1191, file: !1192, line: 1046, baseType: !1888, size: 64, offset: 10624)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1192, line: 41, flags: DIFlagFwdDecl)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1191, file: !1192, line: 1050, baseType: !1891, size: 64, offset: 10688)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1192, line: 42, flags: DIFlagFwdDecl)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1191, file: !1192, line: 1054, baseType: !1894, size: 64, offset: 10752)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1192, line: 55, flags: DIFlagFwdDecl)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1191, file: !1192, line: 1056, baseType: !1897, size: 64, offset: 10816)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1192, line: 40, flags: DIFlagFwdDecl)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1191, file: !1192, line: 1058, baseType: !1900, size: 64, offset: 10880)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1902, line: 99, size: 704, elements: !1903)
!1902 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1903 = !{!1904, !1905, !1906, !1907, !1908, !1909, !1910, !1929, !1930}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1901, file: !1902, line: 100, baseType: !747, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1901, file: !1902, line: 101, baseType: !723, size: 32, offset: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1901, file: !1902, line: 102, baseType: !723, size: 32, offset: 96)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1901, file: !1902, line: 105, baseType: !209, offset: 128)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1901, file: !1902, line: 107, baseType: !292, size: 16, offset: 128)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1901, file: !1902, line: 109, baseType: !715, size: 128, offset: 192)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1901, file: !1902, line: 110, baseType: !1911, size: 64, offset: 320)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1902, line: 73, size: 448, elements: !1913)
!1913 = !{!1914, !1917, !1918, !1923, !1928}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1912, file: !1902, line: 74, baseType: !1915, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1902, line: 74, flags: DIFlagFwdDecl)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1912, file: !1902, line: 75, baseType: !1900, size: 64, offset: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, scope: !1912, file: !1902, line: 83, baseType: !1919, size: 128, offset: 128)
!1919 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1912, file: !1902, line: 83, size: 128, elements: !1920)
!1920 = !{!1921, !1922}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1919, file: !1902, line: 84, baseType: !196, size: 128)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1919, file: !1902, line: 85, baseType: !911, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, scope: !1912, file: !1902, line: 87, baseType: !1924, size: 128, offset: 256)
!1924 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1912, file: !1902, line: 87, size: 128, elements: !1925)
!1925 = !{!1926, !1927}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1924, file: !1902, line: 88, baseType: !615, size: 128)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1924, file: !1902, line: 89, baseType: !341, size: 128, align: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1912, file: !1902, line: 92, baseType: !7, size: 32, offset: 384)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1901, file: !1902, line: 111, baseType: !611, size: 64, offset: 384)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1901, file: !1902, line: 113, baseType: !1931, size: 256, offset: 448)
!1931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1932, line: 102, size: 256, elements: !1933)
!1932 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1933 = !{!1934, !1935, !1936}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1931, file: !1932, line: 103, baseType: !747, size: 64)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1931, file: !1932, line: 104, baseType: !196, size: 128, offset: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1931, file: !1932, line: 105, baseType: !1937, size: 64, offset: 192)
!1937 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1932, line: 21, baseType: !1938)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{null, !1941}
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1191, file: !1192, line: 1061, baseType: !1943, size: 64, offset: 10944)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1192, line: 43, flags: DIFlagFwdDecl)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1191, file: !1192, line: 1064, baseType: !300, size: 64, offset: 11008)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1191, file: !1192, line: 1065, baseType: !1947, size: 64, offset: 11072)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1740, line: 14, baseType: !1949)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1740, line: 12, size: 384, elements: !1950)
!1950 = !{!1951}
!1951 = !DIDerivedType(tag: DW_TAG_member, scope: !1949, file: !1740, line: 13, baseType: !1952, size: 384)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1949, file: !1740, line: 13, size: 384, elements: !1953)
!1953 = !{!1954, !1955, !1956, !1957}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1952, file: !1740, line: 13, baseType: !124, size: 32)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1952, file: !1740, line: 13, baseType: !124, size: 32, offset: 32)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1952, file: !1740, line: 13, baseType: !124, size: 32, offset: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1952, file: !1740, line: 13, baseType: !1958, size: 256, offset: 128)
!1958 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1959, line: 32, size: 256, elements: !1960)
!1959 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1960 = !{!1961, !1966, !1979, !1985, !1994, !2014, !2019}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1958, file: !1959, line: 37, baseType: !1962, size: 64)
!1962 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1958, file: !1959, line: 34, size: 64, elements: !1963)
!1963 = !{!1964, !1965}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1962, file: !1959, line: 35, baseType: !1434, size: 32)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1962, file: !1959, line: 36, baseType: !417, size: 32, offset: 32)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1958, file: !1959, line: 45, baseType: !1967, size: 192)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1958, file: !1959, line: 40, size: 192, elements: !1968)
!1968 = !{!1969, !1971, !1972, !1978}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1967, file: !1959, line: 41, baseType: !1970, size: 32)
!1970 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !283, line: 95, baseType: !124)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1967, file: !1959, line: 42, baseType: !124, size: 32, offset: 32)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1967, file: !1959, line: 43, baseType: !1973, size: 64, offset: 64)
!1973 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1959, line: 11, baseType: !1974)
!1974 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1959, line: 8, size: 64, elements: !1975)
!1975 = !{!1976, !1977}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1974, file: !1959, line: 9, baseType: !124, size: 32)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1974, file: !1959, line: 10, baseType: !127, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1967, file: !1959, line: 44, baseType: !124, size: 32, offset: 128)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1958, file: !1959, line: 52, baseType: !1980, size: 128)
!1980 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1958, file: !1959, line: 48, size: 128, elements: !1981)
!1981 = !{!1982, !1983, !1984}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1980, file: !1959, line: 49, baseType: !1434, size: 32)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1980, file: !1959, line: 50, baseType: !417, size: 32, offset: 32)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1980, file: !1959, line: 51, baseType: !1973, size: 64, offset: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1958, file: !1959, line: 61, baseType: !1986, size: 256)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1958, file: !1959, line: 55, size: 256, elements: !1987)
!1987 = !{!1988, !1989, !1990, !1991, !1993}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1986, file: !1959, line: 56, baseType: !1434, size: 32)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1986, file: !1959, line: 57, baseType: !417, size: 32, offset: 32)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1986, file: !1959, line: 58, baseType: !124, size: 32, offset: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1986, file: !1959, line: 59, baseType: !1992, size: 64, offset: 128)
!1992 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !283, line: 94, baseType: !284)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1986, file: !1959, line: 60, baseType: !1992, size: 64, offset: 192)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1958, file: !1959, line: 95, baseType: !1995, size: 256)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1958, file: !1959, line: 64, size: 256, elements: !1996)
!1996 = !{!1997, !1998}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1995, file: !1959, line: 65, baseType: !127, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, scope: !1995, file: !1959, line: 77, baseType: !1999, size: 192, offset: 64)
!1999 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1995, file: !1959, line: 77, size: 192, elements: !2000)
!2000 = !{!2001, !2002, !2009}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1999, file: !1959, line: 82, baseType: !1179, size: 16)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1999, file: !1959, line: 88, baseType: !2003, size: 192)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1999, file: !1959, line: 84, size: 192, elements: !2004)
!2004 = !{!2005, !2007, !2008}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2003, file: !1959, line: 85, baseType: !2006, size: 64)
!2006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 64, elements: !1304)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2003, file: !1959, line: 86, baseType: !127, size: 64, offset: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2003, file: !1959, line: 87, baseType: !127, size: 64, offset: 128)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1999, file: !1959, line: 93, baseType: !2010, size: 96)
!2010 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1999, file: !1959, line: 90, size: 96, elements: !2011)
!2011 = !{!2012, !2013}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2010, file: !1959, line: 91, baseType: !2006, size: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2010, file: !1959, line: 92, baseType: !393, size: 32, offset: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1958, file: !1959, line: 101, baseType: !2015, size: 128)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1958, file: !1959, line: 98, size: 128, elements: !2016)
!2016 = !{!2017, !2018}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2015, file: !1959, line: 99, baseType: !285, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2015, file: !1959, line: 100, baseType: !124, size: 32, offset: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1958, file: !1959, line: 108, baseType: !2020, size: 128)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1958, file: !1959, line: 104, size: 128, elements: !2021)
!2021 = !{!2022, !2023, !2024}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2020, file: !1959, line: 105, baseType: !127, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2020, file: !1959, line: 106, baseType: !124, size: 32, offset: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2020, file: !1959, line: 107, baseType: !7, size: 32, offset: 96)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1191, file: !1192, line: 1067, baseType: !1812, offset: 11136)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1191, file: !1192, line: 1099, baseType: !2027, size: 64, offset: 11136)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1192, line: 56, flags: DIFlagFwdDecl)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1191, file: !1192, line: 1103, baseType: !196, size: 128, offset: 11200)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1191, file: !1192, line: 1104, baseType: !2031, size: 64, offset: 11328)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1192, line: 46, flags: DIFlagFwdDecl)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1191, file: !1192, line: 1105, baseType: !1147, size: 192, offset: 11392)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1191, file: !1192, line: 1106, baseType: !7, size: 32, offset: 11584)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1191, file: !1192, line: 1109, baseType: !2036, size: 128, offset: 11648)
!2036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2037, size: 128, elements: !1543)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1192, line: 51, flags: DIFlagFwdDecl)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1191, file: !1192, line: 1110, baseType: !1147, size: 192, offset: 11776)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1191, file: !1192, line: 1111, baseType: !196, size: 128, offset: 11968)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1191, file: !1192, line: 1173, baseType: !2042, size: 64, offset: 12096)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2044, line: 62, size: 256, align: 256, elements: !2045)
!2044 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2045 = !{!2046, !2047, !2048, !2053}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2043, file: !2044, line: 75, baseType: !393, size: 32)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2043, file: !2044, line: 90, baseType: !393, size: 32, offset: 32)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2043, file: !2044, line: 124, baseType: !2049, size: 64, offset: 64)
!2049 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2043, file: !2044, line: 109, size: 64, elements: !2050)
!2050 = !{!2051, !2052}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2049, file: !2044, line: 110, baseType: !398, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2049, file: !2044, line: 112, baseType: !398, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2043, file: !2044, line: 144, baseType: !393, size: 32, offset: 128)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1191, file: !1192, line: 1174, baseType: !391, size: 32, offset: 12160)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1191, file: !1192, line: 1179, baseType: !300, size: 64, offset: 12224)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1191, file: !1192, line: 1182, baseType: !2057, size: 128, offset: 12288)
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1125, line: 76, size: 128, elements: !2058)
!2058 = !{!2059, !2064, !2065}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2057, file: !1125, line: 85, baseType: !2060, size: 64)
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2061, line: 7, size: 64, elements: !2062)
!2061 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2062 = !{!2063}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2060, file: !2061, line: 12, baseType: !1341, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2057, file: !1125, line: 88, baseType: !466, size: 8, offset: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2057, file: !1125, line: 95, baseType: !466, size: 8, offset: 72)
!2066 = !DIDerivedType(tag: DW_TAG_member, scope: !1191, file: !1192, line: 1184, baseType: !2067, size: 128, offset: 12416)
!2067 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1191, file: !1192, line: 1184, size: 128, elements: !2068)
!2068 = !{!2069, !2070}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2067, file: !1192, line: 1185, baseType: !1204, size: 32)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2067, file: !1192, line: 1186, baseType: !341, size: 128, align: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1191, file: !1192, line: 1190, baseType: !2072, size: 64, offset: 12544)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1192, line: 53, flags: DIFlagFwdDecl)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1191, file: !1192, line: 1192, baseType: !2075, size: 128, offset: 12608)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1125, line: 64, size: 128, elements: !2076)
!2076 = !{!2077, !2078, !2079}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2075, file: !1125, line: 65, baseType: !697, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2075, file: !1125, line: 67, baseType: !393, size: 32, offset: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2075, file: !1125, line: 68, baseType: !393, size: 32, offset: 96)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1191, file: !1192, line: 1206, baseType: !124, size: 32, offset: 12736)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1191, file: !1192, line: 1207, baseType: !124, size: 32, offset: 12768)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1191, file: !1192, line: 1209, baseType: !300, size: 64, offset: 12800)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1191, file: !1192, line: 1219, baseType: !397, size: 64, offset: 12864)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1191, file: !1192, line: 1220, baseType: !397, size: 64, offset: 12928)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1191, file: !1192, line: 1317, baseType: !124, size: 32, offset: 12992)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1191, file: !1192, line: 1319, baseType: !1190, size: 64, offset: 13056)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1191, file: !1192, line: 1322, baseType: !2088, size: 64, offset: 13120)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2090, line: 56, size: 512, elements: !2091)
!2090 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2091 = !{!2092, !2093, !2094, !2095, !2096, !2097, !2098, !2100}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2089, file: !2090, line: 57, baseType: !2088, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2089, file: !2090, line: 58, baseType: !127, size: 64, offset: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2089, file: !2090, line: 59, baseType: !300, size: 64, offset: 128)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2089, file: !2090, line: 60, baseType: !300, size: 64, offset: 192)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2089, file: !2090, line: 61, baseType: !796, size: 64, offset: 256)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2089, file: !2090, line: 62, baseType: !7, size: 32, offset: 320)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2089, file: !2090, line: 63, baseType: !2099, size: 64, offset: 384)
!2099 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !126, line: 153, baseType: !397)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2089, file: !2090, line: 64, baseType: !2101, size: 64, offset: 448)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1191, file: !1192, line: 1326, baseType: !1204, size: 32, offset: 13184)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1191, file: !1192, line: 1342, baseType: !127, size: 64, offset: 13248)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1191, file: !1192, line: 1343, baseType: !398, size: 64, offset: 13312)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1191, file: !1192, line: 1344, baseType: !397, size: 64, offset: 13376)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1191, file: !1192, line: 1345, baseType: !398, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1191, file: !1192, line: 1346, baseType: !398, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1191, file: !1192, line: 1347, baseType: !398, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1191, file: !1192, line: 1348, baseType: !341, size: 128, align: 64, offset: 13504)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1191, file: !1192, line: 1358, baseType: !2112, size: 34816, offset: 13824)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2113, line: 485, size: 34816, elements: !2114)
!2113 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2114 = !{!2115, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2144, !2145, !2146, !2147, !2148, !2149, !2152, !2153, !2154}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2112, file: !2113, line: 487, baseType: !2116, size: 192)
!2116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2117, size: 192, elements: !251)
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2118, line: 16, size: 64, elements: !2119)
!2118 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2119 = !{!2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2117, file: !2118, line: 17, baseType: !835, size: 16)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2117, file: !2118, line: 18, baseType: !835, size: 16, offset: 16)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2117, file: !2118, line: 19, baseType: !835, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2117, file: !2118, line: 19, baseType: !835, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2117, file: !2118, line: 19, baseType: !835, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2117, file: !2118, line: 19, baseType: !835, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2117, file: !2118, line: 19, baseType: !835, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2117, file: !2118, line: 20, baseType: !835, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2117, file: !2118, line: 20, baseType: !835, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2117, file: !2118, line: 20, baseType: !835, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2117, file: !2118, line: 20, baseType: !835, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2117, file: !2118, line: 20, baseType: !835, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2117, file: !2118, line: 20, baseType: !835, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2112, file: !2113, line: 491, baseType: !300, size: 64, offset: 192)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2112, file: !2113, line: 495, baseType: !292, size: 16, offset: 256)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2112, file: !2113, line: 496, baseType: !292, size: 16, offset: 272)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2112, file: !2113, line: 497, baseType: !292, size: 16, offset: 288)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2112, file: !2113, line: 498, baseType: !292, size: 16, offset: 304)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2112, file: !2113, line: 502, baseType: !300, size: 64, offset: 320)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2112, file: !2113, line: 503, baseType: !300, size: 64, offset: 384)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2112, file: !2113, line: 514, baseType: !2141, size: 256, offset: 448)
!2141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2142, size: 256, elements: !1129)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2113, line: 483, flags: DIFlagFwdDecl)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2112, file: !2113, line: 516, baseType: !300, size: 64, offset: 704)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2112, file: !2113, line: 518, baseType: !300, size: 64, offset: 768)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2112, file: !2113, line: 520, baseType: !300, size: 64, offset: 832)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2112, file: !2113, line: 521, baseType: !300, size: 64, offset: 896)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2112, file: !2113, line: 522, baseType: !300, size: 64, offset: 960)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2112, file: !2113, line: 528, baseType: !2150, size: 64, offset: 1024)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2113, line: 10, flags: DIFlagFwdDecl)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2112, file: !2113, line: 535, baseType: !300, size: 64, offset: 1088)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2112, file: !2113, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2112, file: !2113, line: 540, baseType: !2155, size: 33280, offset: 1536)
!2155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2156, line: 317, size: 33280, elements: !2157)
!2156 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2157 = !{!2158, !2159, !2160}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2155, file: !2156, line: 330, baseType: !7, size: 32)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2155, file: !2156, line: 337, baseType: !300, size: 64, offset: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2155, file: !2156, line: 348, baseType: !2161, size: 32768, offset: 512)
!2161 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2156, line: 304, size: 32768, elements: !2162)
!2162 = !{!2163, !2176, !2215, !2265, !2278}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2161, file: !2156, line: 305, baseType: !2164, size: 896)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2156, line: 12, size: 896, elements: !2165)
!2165 = !{!2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2175}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2164, file: !2156, line: 13, baseType: !391, size: 32)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2164, file: !2156, line: 14, baseType: !391, size: 32, offset: 32)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2164, file: !2156, line: 15, baseType: !391, size: 32, offset: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2164, file: !2156, line: 16, baseType: !391, size: 32, offset: 96)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2164, file: !2156, line: 17, baseType: !391, size: 32, offset: 128)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2164, file: !2156, line: 18, baseType: !391, size: 32, offset: 160)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2164, file: !2156, line: 19, baseType: !391, size: 32, offset: 192)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2164, file: !2156, line: 22, baseType: !2174, size: 640, offset: 224)
!2174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 640, elements: !158)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2164, file: !2156, line: 25, baseType: !391, size: 32, offset: 864)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2161, file: !2156, line: 306, baseType: !2177, size: 4096, align: 128)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2156, line: 34, size: 4096, align: 128, elements: !2178)
!2178 = !{!2179, !2180, !2181, !2182, !2183, !2198, !2199, !2200, !2204, !2206, !2210}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2177, file: !2156, line: 35, baseType: !835, size: 16)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2177, file: !2156, line: 36, baseType: !835, size: 16, offset: 16)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2177, file: !2156, line: 37, baseType: !835, size: 16, offset: 32)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2177, file: !2156, line: 38, baseType: !835, size: 16, offset: 48)
!2183 = !DIDerivedType(tag: DW_TAG_member, scope: !2177, file: !2156, line: 39, baseType: !2184, size: 128, offset: 64)
!2184 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2177, file: !2156, line: 39, size: 128, elements: !2185)
!2185 = !{!2186, !2191}
!2186 = !DIDerivedType(tag: DW_TAG_member, scope: !2184, file: !2156, line: 40, baseType: !2187, size: 128)
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2184, file: !2156, line: 40, size: 128, elements: !2188)
!2188 = !{!2189, !2190}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2187, file: !2156, line: 41, baseType: !397, size: 64)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2187, file: !2156, line: 42, baseType: !397, size: 64, offset: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, scope: !2184, file: !2156, line: 44, baseType: !2192, size: 128)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2184, file: !2156, line: 44, size: 128, elements: !2193)
!2193 = !{!2194, !2195, !2196, !2197}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2192, file: !2156, line: 45, baseType: !391, size: 32)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2192, file: !2156, line: 46, baseType: !391, size: 32, offset: 32)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2192, file: !2156, line: 47, baseType: !391, size: 32, offset: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2192, file: !2156, line: 48, baseType: !391, size: 32, offset: 96)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2177, file: !2156, line: 51, baseType: !391, size: 32, offset: 192)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2177, file: !2156, line: 52, baseType: !391, size: 32, offset: 224)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2177, file: !2156, line: 55, baseType: !2201, size: 1024, offset: 256)
!2201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 1024, elements: !2202)
!2202 = !{!2203}
!2203 = !DISubrange(count: 32)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2177, file: !2156, line: 58, baseType: !2205, size: 2048, offset: 1280)
!2205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 2048, elements: !255)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2177, file: !2156, line: 60, baseType: !2207, size: 384, offset: 3328)
!2207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 384, elements: !2208)
!2208 = !{!2209}
!2209 = !DISubrange(count: 12)
!2210 = !DIDerivedType(tag: DW_TAG_member, scope: !2177, file: !2156, line: 62, baseType: !2211, size: 384, offset: 3712)
!2211 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2177, file: !2156, line: 62, size: 384, elements: !2212)
!2212 = !{!2213, !2214}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2211, file: !2156, line: 63, baseType: !2207, size: 384)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2211, file: !2156, line: 64, baseType: !2207, size: 384)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2161, file: !2156, line: 307, baseType: !2216, size: 1088)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2156, line: 79, size: 1088, elements: !2217)
!2217 = !{!2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2264}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2216, file: !2156, line: 80, baseType: !391, size: 32)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2216, file: !2156, line: 81, baseType: !391, size: 32, offset: 32)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2216, file: !2156, line: 82, baseType: !391, size: 32, offset: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2216, file: !2156, line: 83, baseType: !391, size: 32, offset: 96)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2216, file: !2156, line: 84, baseType: !391, size: 32, offset: 128)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2216, file: !2156, line: 85, baseType: !391, size: 32, offset: 160)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2216, file: !2156, line: 86, baseType: !391, size: 32, offset: 192)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2216, file: !2156, line: 88, baseType: !2174, size: 640, offset: 224)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2216, file: !2156, line: 89, baseType: !1326, size: 8, offset: 864)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2216, file: !2156, line: 90, baseType: !1326, size: 8, offset: 872)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2216, file: !2156, line: 91, baseType: !1326, size: 8, offset: 880)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2216, file: !2156, line: 92, baseType: !1326, size: 8, offset: 888)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2216, file: !2156, line: 93, baseType: !1326, size: 8, offset: 896)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2216, file: !2156, line: 94, baseType: !1326, size: 8, offset: 904)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2216, file: !2156, line: 95, baseType: !2233, size: 64, offset: 960)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2235, line: 11, size: 128, elements: !2236)
!2235 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2236 = !{!2237, !2238}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2234, file: !2235, line: 12, baseType: !285, size: 64)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2234, file: !2235, line: 13, baseType: !2239, size: 64, offset: 64)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2241, line: 56, size: 1344, elements: !2242)
!2241 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2242 = !{!2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2240, file: !2241, line: 61, baseType: !300, size: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2240, file: !2241, line: 62, baseType: !300, size: 64, offset: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2240, file: !2241, line: 63, baseType: !300, size: 64, offset: 128)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2240, file: !2241, line: 64, baseType: !300, size: 64, offset: 192)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2240, file: !2241, line: 65, baseType: !300, size: 64, offset: 256)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2240, file: !2241, line: 66, baseType: !300, size: 64, offset: 320)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2240, file: !2241, line: 68, baseType: !300, size: 64, offset: 384)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2240, file: !2241, line: 69, baseType: !300, size: 64, offset: 448)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2240, file: !2241, line: 70, baseType: !300, size: 64, offset: 512)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2240, file: !2241, line: 71, baseType: !300, size: 64, offset: 576)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2240, file: !2241, line: 72, baseType: !300, size: 64, offset: 640)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2240, file: !2241, line: 73, baseType: !300, size: 64, offset: 704)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2240, file: !2241, line: 74, baseType: !300, size: 64, offset: 768)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2240, file: !2241, line: 75, baseType: !300, size: 64, offset: 832)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2240, file: !2241, line: 76, baseType: !300, size: 64, offset: 896)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2240, file: !2241, line: 81, baseType: !300, size: 64, offset: 960)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2240, file: !2241, line: 83, baseType: !300, size: 64, offset: 1024)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2240, file: !2241, line: 84, baseType: !300, size: 64, offset: 1088)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2240, file: !2241, line: 85, baseType: !300, size: 64, offset: 1152)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2240, file: !2241, line: 86, baseType: !300, size: 64, offset: 1216)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2240, file: !2241, line: 87, baseType: !300, size: 64, offset: 1280)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2216, file: !2156, line: 96, baseType: !391, size: 32, offset: 1024)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2161, file: !2156, line: 308, baseType: !2266, size: 4608, align: 512)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2156, line: 289, size: 4608, align: 512, elements: !2267)
!2267 = !{!2268, !2269, !2276}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2266, file: !2156, line: 290, baseType: !2177, size: 4096, align: 128)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2266, file: !2156, line: 291, baseType: !2270, size: 512, offset: 4096)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2156, line: 268, size: 512, elements: !2271)
!2271 = !{!2272, !2273, !2274}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2270, file: !2156, line: 269, baseType: !397, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2270, file: !2156, line: 270, baseType: !397, size: 64, offset: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2270, file: !2156, line: 271, baseType: !2275, size: 384, offset: 128)
!2275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 384, elements: !1599)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2266, file: !2156, line: 292, baseType: !2277, offset: 4608)
!2277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1326, elements: !1697)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2161, file: !2156, line: 309, baseType: !2279, size: 32768)
!2279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1326, size: 32768, elements: !2280)
!2280 = !{!2281}
!2281 = !DISubrange(count: 4096)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1187, file: !699, line: 378, baseType: !2283, size: 64, offset: 64)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1183, file: !699, line: 384, baseType: !1476, size: 192, offset: 192)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !954, file: !699, line: 500, baseType: !209, offset: 6656)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !954, file: !699, line: 501, baseType: !2287, size: 64, offset: 6656)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !699, line: 387, flags: DIFlagFwdDecl)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !954, file: !699, line: 516, baseType: !1687, size: 64, offset: 6720)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !954, file: !699, line: 519, baseType: !328, size: 64, offset: 6784)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !954, file: !699, line: 521, baseType: !2292, size: 64, offset: 6848)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !699, line: 521, flags: DIFlagFwdDecl)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !954, file: !699, line: 545, baseType: !723, size: 32, offset: 6912)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !954, file: !699, line: 548, baseType: !466, size: 8, offset: 6944)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !954, file: !699, line: 550, baseType: !2297, offset: 6952)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2298, line: 142, elements: !223)
!2298 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !954, file: !699, line: 554, baseType: !1931, size: 256, offset: 6976)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !954, file: !699, line: 557, baseType: !391, size: 32, offset: 7232)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !951, file: !699, line: 565, baseType: !2302, offset: 7296)
!2302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, elements: !2303)
!2303 = !{!2304}
!2304 = !DISubrange(count: -1)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !947, file: !699, line: 151, baseType: !723, size: 32)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !940, file: !699, line: 156, baseType: !209, offset: 256)
!2307 = !DIDerivedType(tag: DW_TAG_member, scope: !703, file: !699, line: 159, baseType: !2308, size: 128)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !703, file: !699, line: 159, size: 128, elements: !2309)
!2309 = !{!2310, !2374}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2308, file: !699, line: 161, baseType: !2311, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2313)
!2313 = !{!2314, !2324, !2345, !2346, !2347, !2348, !2349, !2361, !2362, !2363}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2312, file: !31, line: 111, baseType: !2315, size: 384)
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2316)
!2316 = !{!2317, !2319, !2320, !2321, !2322, !2323}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2315, file: !31, line: 20, baseType: !2318, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !300)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2315, file: !31, line: 21, baseType: !2318, size: 64, offset: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2315, file: !31, line: 22, baseType: !2318, size: 64, offset: 128)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2315, file: !31, line: 23, baseType: !300, size: 64, offset: 192)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2315, file: !31, line: 24, baseType: !300, size: 64, offset: 256)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2315, file: !31, line: 25, baseType: !300, size: 64, offset: 320)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2312, file: !31, line: 112, baseType: !2325, size: 64, offset: 384)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2327, line: 105, size: 128, elements: !2328)
!2327 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2328 = !{!2329, !2330}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2326, file: !2327, line: 110, baseType: !300, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2326, file: !2327, line: 118, baseType: !2331, size: 64, offset: 64)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2327, line: 95, size: 448, elements: !2333)
!2333 = !{!2334, !2335, !2340, !2341, !2342, !2343, !2344}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2332, file: !2327, line: 96, baseType: !747, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2332, file: !2327, line: 97, baseType: !2336, size: 64, offset: 64)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2327, line: 60, baseType: !2338)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{null, !2325}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2332, file: !2327, line: 98, baseType: !2336, size: 64, offset: 128)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2332, file: !2327, line: 99, baseType: !466, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2332, file: !2327, line: 100, baseType: !466, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2332, file: !2327, line: 101, baseType: !341, size: 128, align: 64, offset: 256)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2332, file: !2327, line: 102, baseType: !2325, size: 64, offset: 384)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2312, file: !31, line: 113, baseType: !2326, size: 128, offset: 448)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2312, file: !31, line: 114, baseType: !1476, size: 192, offset: 576)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2312, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2312, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2312, file: !31, line: 117, baseType: !2350, size: 64, offset: 832)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2352)
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2353)
!2353 = !{!2354, !2355, !2359, !2360}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2352, file: !31, line: 73, baseType: !816, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2352, file: !31, line: 78, baseType: !2356, size: 64, offset: 64)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{null, !2311}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2352, file: !31, line: 83, baseType: !2356, size: 64, offset: 128)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2352, file: !31, line: 89, baseType: !1003, size: 64, offset: 192)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2312, file: !31, line: 118, baseType: !127, size: 64, offset: 896)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2312, file: !31, line: 119, baseType: !124, size: 32, offset: 960)
!2363 = !DIDerivedType(tag: DW_TAG_member, scope: !2312, file: !31, line: 120, baseType: !2364, size: 128, offset: 1024)
!2364 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2312, file: !31, line: 120, size: 128, elements: !2365)
!2365 = !{!2366, !2372}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2364, file: !31, line: 121, baseType: !2367, size: 128)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2368, line: 6, size: 128, elements: !2369)
!2368 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2369 = !{!2370, !2371}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2367, file: !2368, line: 7, baseType: !397, size: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2367, file: !2368, line: 8, baseType: !397, size: 64, offset: 64)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2364, file: !31, line: 122, baseType: !2373)
!2373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2367, elements: !1697)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2308, file: !699, line: 162, baseType: !127, size: 64, offset: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !703, file: !699, line: 176, baseType: !341, size: 128, align: 64)
!2376 = !DIDerivedType(tag: DW_TAG_member, scope: !698, file: !699, line: 179, baseType: !2377, size: 32, offset: 384)
!2377 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !698, file: !699, line: 179, size: 32, elements: !2378)
!2378 = !{!2379, !2380, !2381, !2382}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2377, file: !699, line: 184, baseType: !723, size: 32)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2377, file: !699, line: 192, baseType: !7, size: 32)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2377, file: !699, line: 194, baseType: !7, size: 32)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2377, file: !699, line: 195, baseType: !124, size: 32)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !698, file: !699, line: 199, baseType: !723, size: 32, offset: 416)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !633, file: !44, line: 1964, baseType: !2385, size: 64, offset: 1344)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!285, !575, !2388}
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2390, line: 12, size: 256, elements: !2391)
!2390 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2391 = !{!2392, !2393, !2394, !2395, !2396}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2389, file: !2390, line: 13, baseType: !125, size: 32)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2389, file: !2390, line: 16, baseType: !124, size: 32, offset: 32)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2389, file: !2390, line: 23, baseType: !300, size: 64, offset: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2389, file: !2390, line: 30, baseType: !300, size: 64, offset: 128)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2389, file: !2390, line: 33, baseType: !2397, size: 64, offset: 192)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !699, line: 27, flags: DIFlagFwdDecl)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !633, file: !44, line: 1966, baseType: !2385, size: 64, offset: 1408)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !576, file: !44, line: 1424, baseType: !2401, size: 64, offset: 448)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2403)
!2403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2404)
!2404 = !{!2405, !2451, !2455, !2459, !2460, !2461, !2462, !2463, !2468, !2473, !2477}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2403, file: !38, line: 323, baseType: !2406, size: 64)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{!124, !2409}
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2411)
!2411 = !{!2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2436, !2437, !2438}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2410, file: !38, line: 295, baseType: !615, size: 128)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2410, file: !38, line: 296, baseType: !196, size: 128, offset: 128)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2410, file: !38, line: 297, baseType: !196, size: 128, offset: 256)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2410, file: !38, line: 298, baseType: !196, size: 128, offset: 384)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2410, file: !38, line: 299, baseType: !1147, size: 192, offset: 512)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2410, file: !38, line: 300, baseType: !209, offset: 704)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2410, file: !38, line: 301, baseType: !723, size: 32, offset: 704)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2410, file: !38, line: 302, baseType: !575, size: 64, offset: 768)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2410, file: !38, line: 303, baseType: !2421, size: 64, offset: 832)
!2421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2422)
!2422 = !{!2423, !2435}
!2423 = !DIDerivedType(tag: DW_TAG_member, scope: !2421, file: !38, line: 69, baseType: !2424, size: 32)
!2424 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2421, file: !38, line: 69, size: 32, elements: !2425)
!2425 = !{!2426, !2427, !2428}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2424, file: !38, line: 70, baseType: !411, size: 32)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2424, file: !38, line: 71, baseType: !419, size: 32)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2424, file: !38, line: 72, baseType: !2429, size: 32)
!2429 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2430, line: 24, baseType: !2431)
!2430 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2431 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2430, line: 22, size: 32, elements: !2432)
!2432 = !{!2433}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2431, file: !2430, line: 23, baseType: !2434, size: 32)
!2434 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2430, line: 20, baseType: !417)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2421, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2410, file: !38, line: 304, baseType: !507, size: 64, offset: 896)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2410, file: !38, line: 305, baseType: !300, size: 64, offset: 960)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2410, file: !38, line: 306, baseType: !2439, size: 576, offset: 1024)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2440)
!2440 = !{!2441, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2439, file: !38, line: 206, baseType: !2442, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !509)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2439, file: !38, line: 207, baseType: !2442, size: 64, offset: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2439, file: !38, line: 208, baseType: !2442, size: 64, offset: 128)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2439, file: !38, line: 209, baseType: !2442, size: 64, offset: 192)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2439, file: !38, line: 210, baseType: !2442, size: 64, offset: 256)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2439, file: !38, line: 211, baseType: !2442, size: 64, offset: 320)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2439, file: !38, line: 212, baseType: !2442, size: 64, offset: 384)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2439, file: !38, line: 213, baseType: !515, size: 64, offset: 448)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2439, file: !38, line: 214, baseType: !515, size: 64, offset: 512)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2403, file: !38, line: 324, baseType: !2452, size: 64, offset: 64)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!2409, !575, !124}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2403, file: !38, line: 325, baseType: !2456, size: 64, offset: 128)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{null, !2409}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2403, file: !38, line: 326, baseType: !2406, size: 64, offset: 192)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2403, file: !38, line: 327, baseType: !2406, size: 64, offset: 256)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2403, file: !38, line: 328, baseType: !2406, size: 64, offset: 320)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2403, file: !38, line: 329, baseType: !661, size: 64, offset: 384)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2403, file: !38, line: 332, baseType: !2464, size: 64, offset: 448)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!2467, !405}
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2403, file: !38, line: 333, baseType: !2469, size: 64, offset: 512)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{!124, !405, !2472}
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2403, file: !38, line: 335, baseType: !2474, size: 64, offset: 576)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!124, !405, !2467}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2403, file: !38, line: 337, baseType: !2478, size: 64, offset: 640)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!124, !575, !2481}
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !576, file: !44, line: 1425, baseType: !2483, size: 64, offset: 512)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2485)
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2486)
!2486 = !{!2487, !2491, !2492, !2496, !2497, !2498, !2513, !2536, !2540, !2541, !2564}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2485, file: !38, line: 429, baseType: !2488, size: 64)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{!124, !575, !124, !124, !525}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2485, file: !38, line: 430, baseType: !661, size: 64, offset: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2485, file: !38, line: 431, baseType: !2493, size: 64, offset: 128)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{!124, !575, !7}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2485, file: !38, line: 432, baseType: !2493, size: 64, offset: 192)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2485, file: !38, line: 433, baseType: !661, size: 64, offset: 256)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2485, file: !38, line: 434, baseType: !2499, size: 64, offset: 320)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!124, !575, !124, !2502}
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2504)
!2504 = !{!2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2503, file: !38, line: 416, baseType: !124, size: 32)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2503, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2503, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2503, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2503, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2503, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2503, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2503, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2485, file: !38, line: 435, baseType: !2514, size: 64, offset: 384)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!124, !575, !2421, !2517}
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2519)
!2519 = !{!2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2518, file: !38, line: 344, baseType: !124, size: 32)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2518, file: !38, line: 345, baseType: !397, size: 64, offset: 64)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2518, file: !38, line: 346, baseType: !397, size: 64, offset: 128)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2518, file: !38, line: 347, baseType: !397, size: 64, offset: 192)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2518, file: !38, line: 348, baseType: !397, size: 64, offset: 256)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2518, file: !38, line: 349, baseType: !397, size: 64, offset: 320)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2518, file: !38, line: 350, baseType: !397, size: 64, offset: 384)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2518, file: !38, line: 351, baseType: !753, size: 64, offset: 448)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2518, file: !38, line: 353, baseType: !753, size: 64, offset: 512)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2518, file: !38, line: 354, baseType: !124, size: 32, offset: 576)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2518, file: !38, line: 355, baseType: !124, size: 32, offset: 608)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2518, file: !38, line: 356, baseType: !397, size: 64, offset: 640)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2518, file: !38, line: 357, baseType: !397, size: 64, offset: 704)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2518, file: !38, line: 358, baseType: !397, size: 64, offset: 768)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2518, file: !38, line: 359, baseType: !753, size: 64, offset: 832)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2518, file: !38, line: 360, baseType: !124, size: 32, offset: 896)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2485, file: !38, line: 436, baseType: !2537, size: 64, offset: 448)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!124, !575, !2481, !2517}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2485, file: !38, line: 438, baseType: !2514, size: 64, offset: 512)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2485, file: !38, line: 439, baseType: !2542, size: 64, offset: 576)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{!124, !575, !2545}
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2547)
!2547 = !{!2548, !2549}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2546, file: !38, line: 410, baseType: !7, size: 32)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2546, file: !38, line: 411, baseType: !2550, size: 1344, offset: 64)
!2550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2551, size: 1344, elements: !251)
!2551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2552)
!2552 = !{!2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2563}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2551, file: !38, line: 396, baseType: !7, size: 32)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2551, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2551, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2551, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2551, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2551, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2551, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2551, file: !38, line: 404, baseType: !399, size: 64, offset: 256)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2551, file: !38, line: 405, baseType: !2562, size: 64, offset: 320)
!2562 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !126, line: 126, baseType: !397)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2551, file: !38, line: 406, baseType: !2562, size: 64, offset: 384)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2485, file: !38, line: 440, baseType: !2493, size: 64, offset: 640)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !576, file: !44, line: 1426, baseType: !2566, size: 64, offset: 576)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2568)
!2568 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !576, file: !44, line: 1427, baseType: !300, size: 64, offset: 640)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !576, file: !44, line: 1428, baseType: !300, size: 64, offset: 704)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !576, file: !44, line: 1429, baseType: !300, size: 64, offset: 768)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !576, file: !44, line: 1430, baseType: !358, size: 64, offset: 832)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !576, file: !44, line: 1431, baseType: !743, size: 256, offset: 896)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !576, file: !44, line: 1432, baseType: !124, size: 32, offset: 1152)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !576, file: !44, line: 1433, baseType: !723, size: 32, offset: 1184)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !576, file: !44, line: 1437, baseType: !2577, size: 64, offset: 1216)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2580)
!2580 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !576, file: !44, line: 1449, baseType: !2582, size: 64, offset: 1280)
!2582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !374, line: 34, size: 64, elements: !2583)
!2583 = !{!2584}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2582, file: !374, line: 35, baseType: !377, size: 64)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !576, file: !44, line: 1450, baseType: !196, size: 128, offset: 1344)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !576, file: !44, line: 1451, baseType: !2587, size: 64, offset: 1472)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !576, file: !44, line: 1452, baseType: !1897, size: 64, offset: 1536)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !576, file: !44, line: 1453, baseType: !2591, size: 64, offset: 1600)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !576, file: !44, line: 1454, baseType: !615, size: 128, offset: 1664)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !576, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !576, file: !44, line: 1456, baseType: !2596, size: 2432, offset: 1856)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2597)
!2597 = !{!2598, !2599, !2600, !2602, !2634}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2596, file: !38, line: 519, baseType: !7, size: 32)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2596, file: !38, line: 520, baseType: !743, size: 256, offset: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2596, file: !38, line: 521, baseType: !2601, size: 192, offset: 320)
!2601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 192, elements: !251)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2596, file: !38, line: 522, baseType: !2603, size: 1728, offset: 512)
!2603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2604, size: 1728, elements: !251)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2605)
!2605 = !{!2606, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2604, file: !38, line: 223, baseType: !2607, size: 64)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2609)
!2609 = !{!2610, !2611, !2624, !2625}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2608, file: !38, line: 444, baseType: !124, size: 32)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2608, file: !38, line: 445, baseType: !2612, size: 64, offset: 64)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2614)
!2614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2615)
!2615 = !{!2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2614, file: !38, line: 311, baseType: !661, size: 64)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2614, file: !38, line: 312, baseType: !661, size: 64, offset: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2614, file: !38, line: 313, baseType: !661, size: 64, offset: 128)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2614, file: !38, line: 314, baseType: !661, size: 64, offset: 192)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2614, file: !38, line: 315, baseType: !2406, size: 64, offset: 256)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2614, file: !38, line: 316, baseType: !2406, size: 64, offset: 320)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2614, file: !38, line: 317, baseType: !2406, size: 64, offset: 384)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2614, file: !38, line: 318, baseType: !2478, size: 64, offset: 448)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2608, file: !38, line: 446, baseType: !170, size: 64, offset: 128)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2608, file: !38, line: 447, baseType: !2607, size: 64, offset: 192)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2604, file: !38, line: 224, baseType: !124, size: 32, offset: 64)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2604, file: !38, line: 226, baseType: !196, size: 128, offset: 128)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2604, file: !38, line: 227, baseType: !300, size: 64, offset: 256)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2604, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2604, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2604, file: !38, line: 230, baseType: !2442, size: 64, offset: 384)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2604, file: !38, line: 231, baseType: !2442, size: 64, offset: 448)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2604, file: !38, line: 232, baseType: !127, size: 64, offset: 512)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2596, file: !38, line: 523, baseType: !2635, size: 192, offset: 2240)
!2635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2612, size: 192, elements: !251)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !576, file: !44, line: 1458, baseType: !2637, size: 2112, offset: 4288)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2638)
!2638 = !{!2639, !2640, !2641}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2637, file: !44, line: 1411, baseType: !124, size: 32)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2637, file: !44, line: 1412, baseType: !1455, size: 128, offset: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2637, file: !44, line: 1413, baseType: !2642, size: 1920, offset: 192)
!2642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2643, size: 1920, elements: !251)
!2643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2644, line: 12, size: 640, elements: !2645)
!2644 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2645 = !{!2646, !2654, !2656, !2661, !2662}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2643, file: !2644, line: 13, baseType: !2647, size: 320)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2648, line: 17, size: 320, elements: !2649)
!2648 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2649 = !{!2650, !2651, !2652, !2653}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2647, file: !2648, line: 18, baseType: !124, size: 32)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2647, file: !2648, line: 19, baseType: !124, size: 32, offset: 32)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2647, file: !2648, line: 20, baseType: !1455, size: 128, offset: 64)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2647, file: !2648, line: 22, baseType: !341, size: 128, align: 64, offset: 192)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2643, file: !2644, line: 14, baseType: !2655, size: 64, offset: 320)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2643, file: !2644, line: 15, baseType: !2657, size: 64, offset: 384)
!2657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2658, line: 16, size: 64, elements: !2659)
!2658 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2659 = !{!2660}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2657, file: !2658, line: 17, baseType: !1190, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2643, file: !2644, line: 16, baseType: !1455, size: 128, offset: 448)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2643, file: !2644, line: 17, baseType: !723, size: 32, offset: 576)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !576, file: !44, line: 1465, baseType: !127, size: 64, offset: 6400)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !576, file: !44, line: 1468, baseType: !391, size: 32, offset: 6464)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !576, file: !44, line: 1470, baseType: !515, size: 64, offset: 6528)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !576, file: !44, line: 1471, baseType: !515, size: 64, offset: 6592)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !576, file: !44, line: 1473, baseType: !393, size: 32, offset: 6656)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !576, file: !44, line: 1474, baseType: !2669, size: 64, offset: 6720)
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !576, file: !44, line: 1477, baseType: !2672, size: 256, offset: 6784)
!2672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 256, elements: !2202)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !576, file: !44, line: 1478, baseType: !2674, size: 128, offset: 7040)
!2674 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2675, line: 18, baseType: !2676)
!2675 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2676 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2675, line: 16, size: 128, elements: !2677)
!2677 = !{!2678}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2676, file: !2675, line: 17, baseType: !2679, size: 128)
!2679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1327, size: 128, elements: !1709)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !576, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !576, file: !44, line: 1481, baseType: !2682, size: 32, offset: 7200)
!2682 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !126, line: 150, baseType: !7)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !576, file: !44, line: 1487, baseType: !1147, size: 192, offset: 7232)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !576, file: !44, line: 1493, baseType: !168, size: 64, offset: 7424)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !576, file: !44, line: 1495, baseType: !2686, size: 64, offset: 7488)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2688)
!2688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !356, line: 135, size: 1024, align: 512, elements: !2689)
!2689 = !{!2690, !2694, !2695, !2702, !2708, !2712, !2716, !2720, !2721, !2725, !2729, !2734, !2738}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2688, file: !356, line: 136, baseType: !2691, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!124, !358, !7}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2688, file: !356, line: 137, baseType: !2691, size: 64, offset: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2688, file: !356, line: 138, baseType: !2696, size: 64, offset: 128)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{!124, !2699, !2701}
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !359)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2688, file: !356, line: 139, baseType: !2703, size: 64, offset: 192)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!124, !2699, !7, !168, !2706}
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !382)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2688, file: !356, line: 141, baseType: !2709, size: 64, offset: 256)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{!124, !2699}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2688, file: !356, line: 142, baseType: !2713, size: 64, offset: 320)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!124, !358}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2688, file: !356, line: 143, baseType: !2717, size: 64, offset: 384)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{null, !358}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2688, file: !356, line: 144, baseType: !2717, size: 64, offset: 448)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2688, file: !356, line: 145, baseType: !2722, size: 64, offset: 512)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{null, !358, !405}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2688, file: !356, line: 146, baseType: !2726, size: 64, offset: 576)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!250, !358, !250, !124}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2688, file: !356, line: 147, baseType: !2730, size: 64, offset: 640)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{!354, !2733}
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2688, file: !356, line: 148, baseType: !2735, size: 64, offset: 704)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!124, !525, !466}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2688, file: !356, line: 149, baseType: !2739, size: 64, offset: 768)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!358, !358, !2742}
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !406)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !576, file: !44, line: 1500, baseType: !124, size: 32, offset: 7552)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !576, file: !44, line: 1502, baseType: !2746, size: 448, offset: 7616)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2390, line: 60, size: 448, elements: !2747)
!2747 = !{!2748, !2753, !2754, !2755, !2756, !2757, !2758}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2746, file: !2390, line: 61, baseType: !2749, size: 64)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DISubroutineType(types: !2751)
!2751 = !{!300, !2752, !2388}
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2746, file: !2390, line: 63, baseType: !2749, size: 64, offset: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2746, file: !2390, line: 66, baseType: !285, size: 64, offset: 128)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2746, file: !2390, line: 67, baseType: !124, size: 32, offset: 192)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2746, file: !2390, line: 68, baseType: !7, size: 32, offset: 224)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2746, file: !2390, line: 71, baseType: !196, size: 128, offset: 256)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2746, file: !2390, line: 77, baseType: !2759, size: 64, offset: 384)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !576, file: !44, line: 1505, baseType: !747, size: 64, offset: 8064)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !576, file: !44, line: 1508, baseType: !747, size: 64, offset: 8128)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !576, file: !44, line: 1511, baseType: !124, size: 32, offset: 8192)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !576, file: !44, line: 1514, baseType: !885, size: 32, offset: 8224)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !576, file: !44, line: 1517, baseType: !2765, size: 64, offset: 8256)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1932, line: 18, flags: DIFlagFwdDecl)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !576, file: !44, line: 1518, baseType: !611, size: 64, offset: 8320)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !576, file: !44, line: 1525, baseType: !1687, size: 64, offset: 8384)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !576, file: !44, line: 1532, baseType: !2770, size: 64, offset: 8448)
!2770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2771, line: 52, size: 64, elements: !2772)
!2771 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2772 = !{!2773}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2770, file: !2771, line: 53, baseType: !2774, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2771, line: 40, size: 256, elements: !2776)
!2776 = !{!2777, !2778, !2783}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2775, file: !2771, line: 42, baseType: !209)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2775, file: !2771, line: 44, baseType: !2779, size: 192)
!2779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2771, line: 28, size: 192, elements: !2780)
!2780 = !{!2781, !2782}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2779, file: !2771, line: 29, baseType: !196, size: 128)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2779, file: !2771, line: 31, baseType: !285, size: 64, offset: 128)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2775, file: !2771, line: 49, baseType: !285, size: 64, offset: 192)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !576, file: !44, line: 1533, baseType: !2770, size: 64, offset: 8512)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !576, file: !44, line: 1534, baseType: !341, size: 128, align: 64, offset: 8576)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !576, file: !44, line: 1535, baseType: !1931, size: 256, offset: 8704)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !576, file: !44, line: 1537, baseType: !1147, size: 192, offset: 8960)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !576, file: !44, line: 1542, baseType: !124, size: 32, offset: 9152)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !576, file: !44, line: 1545, baseType: !209, offset: 9184)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !576, file: !44, line: 1546, baseType: !196, size: 128, offset: 9216)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !576, file: !44, line: 1548, baseType: !209, offset: 9344)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !576, file: !44, line: 1549, baseType: !196, size: 128, offset: 9344)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !406, file: !44, line: 624, baseType: !710, size: 64, offset: 256)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !406, file: !44, line: 631, baseType: !300, size: 64, offset: 320)
!2795 = !DIDerivedType(tag: DW_TAG_member, scope: !406, file: !44, line: 639, baseType: !2796, size: 32, offset: 384)
!2796 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !406, file: !44, line: 639, size: 32, elements: !2797)
!2797 = !{!2798, !2800}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2796, file: !44, line: 640, baseType: !2799, size: 32)
!2799 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2796, file: !44, line: 641, baseType: !7, size: 32)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !406, file: !44, line: 643, baseType: !489, size: 32, offset: 416)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !406, file: !44, line: 644, baseType: !507, size: 64, offset: 448)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !406, file: !44, line: 645, baseType: !511, size: 128, offset: 512)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !406, file: !44, line: 646, baseType: !511, size: 128, offset: 640)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !406, file: !44, line: 647, baseType: !511, size: 128, offset: 768)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !406, file: !44, line: 648, baseType: !209, offset: 896)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !406, file: !44, line: 649, baseType: !292, size: 16, offset: 896)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !406, file: !44, line: 650, baseType: !1326, size: 8, offset: 912)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !406, file: !44, line: 651, baseType: !1326, size: 8, offset: 920)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !406, file: !44, line: 652, baseType: !2562, size: 64, offset: 960)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !406, file: !44, line: 659, baseType: !300, size: 64, offset: 1024)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !406, file: !44, line: 660, baseType: !743, size: 256, offset: 1088)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !406, file: !44, line: 662, baseType: !300, size: 64, offset: 1344)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !406, file: !44, line: 663, baseType: !300, size: 64, offset: 1408)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !406, file: !44, line: 665, baseType: !615, size: 128, offset: 1472)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !406, file: !44, line: 666, baseType: !196, size: 128, offset: 1600)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !406, file: !44, line: 675, baseType: !196, size: 128, offset: 1728)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !406, file: !44, line: 676, baseType: !196, size: 128, offset: 1856)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !406, file: !44, line: 677, baseType: !196, size: 128, offset: 1984)
!2820 = !DIDerivedType(tag: DW_TAG_member, scope: !406, file: !44, line: 678, baseType: !2821, size: 128, offset: 2112)
!2821 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !406, file: !44, line: 678, size: 128, elements: !2822)
!2822 = !{!2823, !2824}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2821, file: !44, line: 679, baseType: !611, size: 64)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2821, file: !44, line: 680, baseType: !341, size: 128, align: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !406, file: !44, line: 682, baseType: !749, size: 64, offset: 2240)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !406, file: !44, line: 683, baseType: !749, size: 64, offset: 2304)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !406, file: !44, line: 684, baseType: !723, size: 32, offset: 2368)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !406, file: !44, line: 685, baseType: !723, size: 32, offset: 2400)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !406, file: !44, line: 686, baseType: !723, size: 32, offset: 2432)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !406, file: !44, line: 688, baseType: !723, size: 32, offset: 2464)
!2831 = !DIDerivedType(tag: DW_TAG_member, scope: !406, file: !44, line: 690, baseType: !2832, size: 64, offset: 2496)
!2832 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !406, file: !44, line: 690, size: 64, elements: !2833)
!2833 = !{!2834, !3057}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2832, file: !44, line: 691, baseType: !2835, size: 64)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2837)
!2837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2838)
!2838 = !{!2839, !2840, !2844, !2849, !2853, !2854, !2855, !2859, !2872, !2873, !2881, !2885, !2886, !2890, !2891, !2895, !2900, !2901, !2905, !2909, !3017, !3021, !3022, !3026, !3027, !3031, !3035, !3040, !3044, !3048, !3052, !3056}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2837, file: !44, line: 1823, baseType: !170, size: 64)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2837, file: !44, line: 1824, baseType: !2841, size: 64, offset: 64)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!507, !328, !507, !124}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2837, file: !44, line: 1825, baseType: !2845, size: 64, offset: 128)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!281, !328, !250, !297, !2848}
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2837, file: !44, line: 1826, baseType: !2850, size: 64, offset: 192)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!281, !328, !168, !297, !2848}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2837, file: !44, line: 1827, baseType: !820, size: 64, offset: 256)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2837, file: !44, line: 1828, baseType: !820, size: 64, offset: 320)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2837, file: !44, line: 1829, baseType: !2856, size: 64, offset: 384)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!124, !823, !466}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2837, file: !44, line: 1830, baseType: !2860, size: 64, offset: 448)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = !DISubroutineType(types: !2862)
!2862 = !{!124, !328, !2863}
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2865)
!2865 = !{!2866, !2871}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2864, file: !44, line: 1777, baseType: !2867, size: 64)
!2867 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2868)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!124, !2863, !168, !124, !507, !397, !7}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2864, file: !44, line: 1778, baseType: !507, size: 64, offset: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2837, file: !44, line: 1831, baseType: !2860, size: 64, offset: 512)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2837, file: !44, line: 1832, baseType: !2874, size: 64, offset: 576)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{!2877, !328, !2879}
!2877 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2878, line: 52, baseType: !7)
!2878 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !595, line: 27, flags: DIFlagFwdDecl)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2837, file: !44, line: 1833, baseType: !2882, size: 64, offset: 640)
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{!285, !328, !7, !300}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2837, file: !44, line: 1834, baseType: !2882, size: 64, offset: 704)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2837, file: !44, line: 1835, baseType: !2887, size: 64, offset: 768)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = !DISubroutineType(types: !2889)
!2889 = !{!124, !328, !957}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2837, file: !44, line: 1836, baseType: !300, size: 64, offset: 832)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2837, file: !44, line: 1837, baseType: !2892, size: 64, offset: 896)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{!124, !405, !328}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2837, file: !44, line: 1838, baseType: !2896, size: 64, offset: 960)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{!124, !328, !2899}
!2899 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !127)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2837, file: !44, line: 1839, baseType: !2892, size: 64, offset: 1024)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2837, file: !44, line: 1840, baseType: !2902, size: 64, offset: 1088)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{!124, !328, !507, !507, !124}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2837, file: !44, line: 1841, baseType: !2906, size: 64, offset: 1152)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{!124, !124, !328, !124}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2837, file: !44, line: 1842, baseType: !2910, size: 64, offset: 1216)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = !DISubroutineType(types: !2912)
!2912 = !{!124, !328, !124, !2913}
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2915)
!2915 = !{!2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2947, !2948, !2949, !2962, !2993}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2914, file: !44, line: 1063, baseType: !2913, size: 64)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2914, file: !44, line: 1064, baseType: !196, size: 128, offset: 64)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2914, file: !44, line: 1065, baseType: !615, size: 128, offset: 192)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2914, file: !44, line: 1066, baseType: !196, size: 128, offset: 320)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2914, file: !44, line: 1069, baseType: !196, size: 128, offset: 448)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2914, file: !44, line: 1072, baseType: !2899, size: 64, offset: 576)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2914, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2914, file: !44, line: 1074, baseType: !403, size: 8, offset: 672)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2914, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2914, file: !44, line: 1076, baseType: !124, size: 32, offset: 736)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2914, file: !44, line: 1077, baseType: !1455, size: 128, offset: 768)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2914, file: !44, line: 1078, baseType: !328, size: 64, offset: 896)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2914, file: !44, line: 1079, baseType: !507, size: 64, offset: 960)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2914, file: !44, line: 1080, baseType: !507, size: 64, offset: 1024)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2914, file: !44, line: 1082, baseType: !2931, size: 64, offset: 1088)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2933)
!2933 = !{!2934, !2942, !2943, !2944, !2945, !2946}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2932, file: !44, line: 1315, baseType: !2935)
!2935 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2936, line: 20, baseType: !2937)
!2936 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2936, line: 11, elements: !2938)
!2938 = !{!2939}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2937, file: !2936, line: 12, baseType: !2940)
!2940 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !221, line: 33, baseType: !2941)
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !221, line: 31, elements: !223)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2932, file: !44, line: 1316, baseType: !124, size: 32)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2932, file: !44, line: 1317, baseType: !124, size: 32, offset: 32)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2932, file: !44, line: 1318, baseType: !2931, size: 64, offset: 64)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2932, file: !44, line: 1319, baseType: !328, size: 64, offset: 128)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2932, file: !44, line: 1320, baseType: !341, size: 128, align: 64, offset: 192)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2914, file: !44, line: 1084, baseType: !300, size: 64, offset: 1152)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2914, file: !44, line: 1085, baseType: !300, size: 64, offset: 1216)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2914, file: !44, line: 1087, baseType: !2950, size: 64, offset: 1280)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2952)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !2953)
!2953 = !{!2954, !2958}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2952, file: !44, line: 1012, baseType: !2955, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{null, !2913, !2913}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2952, file: !44, line: 1013, baseType: !2959, size: 64, offset: 64)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{null, !2913}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2914, file: !44, line: 1088, baseType: !2963, size: 64, offset: 1344)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2965)
!2965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !2966)
!2966 = !{!2967, !2971, !2975, !2976, !2980, !2984, !2988, !2992}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2965, file: !44, line: 1017, baseType: !2968, size: 64)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{!2899, !2899}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2965, file: !44, line: 1018, baseType: !2972, size: 64, offset: 64)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = !DISubroutineType(types: !2974)
!2974 = !{null, !2899}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2965, file: !44, line: 1019, baseType: !2959, size: 64, offset: 128)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2965, file: !44, line: 1020, baseType: !2977, size: 64, offset: 192)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!124, !2913, !124}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2965, file: !44, line: 1021, baseType: !2981, size: 64, offset: 256)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!466, !2913}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2965, file: !44, line: 1022, baseType: !2985, size: 64, offset: 320)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{!124, !2913, !124, !199}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2965, file: !44, line: 1023, baseType: !2989, size: 64, offset: 384)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{null, !2913, !797}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2965, file: !44, line: 1024, baseType: !2981, size: 64, offset: 448)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2914, file: !44, line: 1097, baseType: !2994, size: 256, offset: 1408)
!2994 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2914, file: !44, line: 1089, size: 256, elements: !2995)
!2995 = !{!2996, !3005, !3011}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2994, file: !44, line: 1090, baseType: !2997, size: 256)
!2997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2998, line: 10, size: 256, elements: !2999)
!2998 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2999 = !{!3000, !3001, !3004}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2997, file: !2998, line: 11, baseType: !391, size: 32)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2997, file: !2998, line: 12, baseType: !3002, size: 64, offset: 64)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2998, line: 5, flags: DIFlagFwdDecl)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2997, file: !2998, line: 13, baseType: !196, size: 128, offset: 128)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2994, file: !44, line: 1091, baseType: !3006, size: 64)
!3006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2998, line: 17, size: 64, elements: !3007)
!3007 = !{!3008}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3006, file: !2998, line: 18, baseType: !3009, size: 64)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2998, line: 16, flags: DIFlagFwdDecl)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2994, file: !44, line: 1096, baseType: !3012, size: 192)
!3012 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2994, file: !44, line: 1092, size: 192, elements: !3013)
!3013 = !{!3014, !3015, !3016}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3012, file: !44, line: 1093, baseType: !196, size: 128)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3012, file: !44, line: 1094, baseType: !124, size: 32, offset: 128)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3012, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2837, file: !44, line: 1843, baseType: !3018, size: 64, offset: 1280)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{!281, !328, !697, !124, !297, !2848, !124}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2837, file: !44, line: 1844, baseType: !1077, size: 64, offset: 1344)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2837, file: !44, line: 1845, baseType: !3023, size: 64, offset: 1408)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!124, !124}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2837, file: !44, line: 1846, baseType: !2910, size: 64, offset: 1472)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2837, file: !44, line: 1847, baseType: !3028, size: 64, offset: 1536)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{!281, !2072, !328, !2848, !297, !7}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2837, file: !44, line: 1848, baseType: !3032, size: 64, offset: 1600)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!281, !328, !2848, !2072, !297, !7}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2837, file: !44, line: 1849, baseType: !3036, size: 64, offset: 1664)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!124, !328, !285, !3039, !797}
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2837, file: !44, line: 1850, baseType: !3041, size: 64, offset: 1728)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!285, !328, !124, !507, !507}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2837, file: !44, line: 1852, baseType: !3045, size: 64, offset: 1792)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{null, !687, !328}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2837, file: !44, line: 1856, baseType: !3049, size: 64, offset: 1856)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{!281, !328, !507, !328, !507, !297, !7}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2837, file: !44, line: 1858, baseType: !3053, size: 64, offset: 1920)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{!507, !328, !507, !328, !507, !507, !7}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2837, file: !44, line: 1861, baseType: !2902, size: 64, offset: 1984)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2832, file: !44, line: 692, baseType: !640, size: 64)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !406, file: !44, line: 694, baseType: !3059, size: 64, offset: 2560)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3061)
!3061 = !{!3062, !3063, !3064, !3065}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3060, file: !44, line: 1101, baseType: !209)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3060, file: !44, line: 1102, baseType: !196, size: 128)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3060, file: !44, line: 1103, baseType: !196, size: 128, offset: 128)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3060, file: !44, line: 1104, baseType: !196, size: 128, offset: 256)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !406, file: !44, line: 695, baseType: !711, size: 1216, align: 64, offset: 2624)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !406, file: !44, line: 696, baseType: !196, size: 128, offset: 3840)
!3068 = !DIDerivedType(tag: DW_TAG_member, scope: !406, file: !44, line: 697, baseType: !3069, size: 64, offset: 3968)
!3069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !406, file: !44, line: 697, size: 64, elements: !3070)
!3070 = !{!3071, !3072, !3073, !3076, !3077}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3069, file: !44, line: 698, baseType: !2072, size: 64)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3069, file: !44, line: 699, baseType: !2587, size: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3069, file: !44, line: 700, baseType: !3074, size: 64)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3069, file: !44, line: 701, baseType: !250, size: 64)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3069, file: !44, line: 702, baseType: !7, size: 32)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !406, file: !44, line: 705, baseType: !393, size: 32, offset: 4032)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !406, file: !44, line: 708, baseType: !393, size: 32, offset: 4064)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !406, file: !44, line: 709, baseType: !2669, size: 64, offset: 4096)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !406, file: !44, line: 720, baseType: !127, size: 64, offset: 4160)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !359, file: !356, line: 98, baseType: !3083, size: 256, offset: 448)
!3083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !403, size: 256, elements: !2202)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !359, file: !356, line: 101, baseType: !3085, size: 32, offset: 704)
!3085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3086, line: 25, size: 32, elements: !3087)
!3086 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3087 = !{!3088}
!3088 = !DIDerivedType(tag: DW_TAG_member, scope: !3085, file: !3086, line: 26, baseType: !3089, size: 32)
!3089 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3085, file: !3086, line: 26, size: 32, elements: !3090)
!3090 = !{!3091}
!3091 = !DIDerivedType(tag: DW_TAG_member, scope: !3089, file: !3086, line: 30, baseType: !3092, size: 32)
!3092 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3089, file: !3086, line: 30, size: 32, elements: !3093)
!3093 = !{!3094, !3095}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3092, file: !3086, line: 31, baseType: !209)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3092, file: !3086, line: 32, baseType: !124, size: 32)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !359, file: !356, line: 102, baseType: !2686, size: 64, offset: 768)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !359, file: !356, line: 103, baseType: !575, size: 64, offset: 832)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !359, file: !356, line: 104, baseType: !300, size: 64, offset: 896)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !359, file: !356, line: 105, baseType: !127, size: 64, offset: 960)
!3100 = !DIDerivedType(tag: DW_TAG_member, scope: !359, file: !356, line: 107, baseType: !3101, size: 128, offset: 1024)
!3101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !359, file: !356, line: 107, size: 128, elements: !3102)
!3102 = !{!3103, !3104}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3101, file: !356, line: 108, baseType: !196, size: 128)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3101, file: !356, line: 109, baseType: !3105, size: 64)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !359, file: !356, line: 111, baseType: !196, size: 128, offset: 1152)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !359, file: !356, line: 112, baseType: !196, size: 128, offset: 1280)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !359, file: !356, line: 120, baseType: !3109, size: 128, offset: 1408)
!3109 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !359, file: !356, line: 116, size: 128, elements: !3110)
!3110 = !{!3111, !3112, !3113}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3109, file: !356, line: 117, baseType: !615, size: 128)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3109, file: !356, line: 118, baseType: !373, size: 128)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3109, file: !356, line: 119, baseType: !341, size: 128, align: 64)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !329, file: !44, line: 922, baseType: !405, size: 64, offset: 256)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !329, file: !44, line: 923, baseType: !2835, size: 64, offset: 320)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !329, file: !44, line: 929, baseType: !209, offset: 384)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !329, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !329, file: !44, line: 931, baseType: !747, size: 64, offset: 448)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !329, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !329, file: !44, line: 933, baseType: !2682, size: 32, offset: 544)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !329, file: !44, line: 934, baseType: !1147, size: 192, offset: 576)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !329, file: !44, line: 935, baseType: !507, size: 64, offset: 768)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !329, file: !44, line: 936, baseType: !3124, size: 192, offset: 832)
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3125)
!3125 = !{!3126, !3127, !3128, !3129, !3130, !3131}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3124, file: !44, line: 886, baseType: !2935)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3124, file: !44, line: 887, baseType: !1445, size: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3124, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3124, file: !44, line: 889, baseType: !411, size: 32, offset: 96)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3124, file: !44, line: 889, baseType: !411, size: 32, offset: 128)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3124, file: !44, line: 890, baseType: !124, size: 32, offset: 160)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !329, file: !44, line: 937, baseType: !1521, size: 64, offset: 1024)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !329, file: !44, line: 938, baseType: !3134, size: 256, offset: 1088)
!3134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3135)
!3135 = !{!3136, !3137, !3138, !3139, !3140, !3141}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3134, file: !44, line: 897, baseType: !300, size: 64)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3134, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3134, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3134, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3134, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3134, file: !44, line: 904, baseType: !507, size: 64, offset: 192)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !329, file: !44, line: 940, baseType: !397, size: 64, offset: 1344)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !329, file: !44, line: 945, baseType: !127, size: 64, offset: 1408)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !329, file: !44, line: 949, baseType: !196, size: 128, offset: 1472)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !329, file: !44, line: 950, baseType: !196, size: 128, offset: 1600)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !329, file: !44, line: 952, baseType: !710, size: 64, offset: 1728)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !329, file: !44, line: 953, baseType: !885, size: 32, offset: 1792)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !329, file: !44, line: 954, baseType: !885, size: 32, offset: 1824)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !319, file: !275, line: 174, baseType: !325, size: 64, offset: 320)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !319, file: !275, line: 176, baseType: !3151, size: 64, offset: 384)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!124, !328, !202, !318, !957}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !307, file: !275, line: 90, baseType: !302, size: 64, offset: 192)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !307, file: !275, line: 91, baseType: !3156, size: 64, offset: 256)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !265, file: !192, line: 143, baseType: !3158, size: 64, offset: 256)
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3159 = !DISubroutineType(types: !3160)
!3160 = !{!3161, !202}
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3163)
!3163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3164)
!3164 = !{!3165, !3166, !3170, !3174, !3180, !3184}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3163, file: !61, line: 40, baseType: !60, size: 32)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3163, file: !61, line: 41, baseType: !3167, size: 64, offset: 64)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!466}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3163, file: !61, line: 42, baseType: !3171, size: 64, offset: 128)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{!127}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3163, file: !61, line: 43, baseType: !3175, size: 64, offset: 192)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!2101, !3178}
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3163, file: !61, line: 44, baseType: !3181, size: 64, offset: 256)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{!2101}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3163, file: !61, line: 45, baseType: !444, size: 64, offset: 320)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !265, file: !192, line: 144, baseType: !3186, size: 64, offset: 320)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!2101, !202}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !265, file: !192, line: 145, baseType: !3190, size: 64, offset: 384)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{null, !202, !3193, !3194}
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !191, file: !192, line: 70, baseType: !3196, size: 64, offset: 384)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !595, line: 123, size: 1024, elements: !3198)
!3198 = !{!3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3327, !3328, !3329, !3330, !3331}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3197, file: !595, line: 124, baseType: !723, size: 32)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3197, file: !595, line: 125, baseType: !723, size: 32, offset: 32)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3197, file: !595, line: 135, baseType: !3196, size: 64, offset: 64)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3197, file: !595, line: 136, baseType: !168, size: 64, offset: 128)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3197, file: !595, line: 138, baseType: !736, size: 192, align: 64, offset: 192)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3197, file: !595, line: 140, baseType: !2101, size: 64, offset: 384)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3197, file: !595, line: 141, baseType: !7, size: 32, offset: 448)
!3206 = !DIDerivedType(tag: DW_TAG_member, scope: !3197, file: !595, line: 142, baseType: !3207, size: 256, offset: 512)
!3207 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3197, file: !595, line: 142, size: 256, elements: !3208)
!3208 = !{!3209, !3255, !3259}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3207, file: !595, line: 143, baseType: !3210, size: 192)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !595, line: 91, size: 192, elements: !3211)
!3211 = !{!3212, !3213, !3214}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3210, file: !595, line: 92, baseType: !300, size: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3210, file: !595, line: 94, baseType: !732, size: 64, offset: 64)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3210, file: !595, line: 100, baseType: !3215, size: 64, offset: 128)
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !595, line: 180, size: 704, elements: !3217)
!3217 = !{!3218, !3219, !3220, !3227, !3228, !3229, !3253, !3254}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3216, file: !595, line: 182, baseType: !3196, size: 64)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3216, file: !595, line: 183, baseType: !7, size: 32, offset: 64)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3216, file: !595, line: 186, baseType: !3221, size: 192, offset: 128)
!3221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3222, line: 19, size: 192, elements: !3223)
!3222 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3223 = !{!3224, !3225, !3226}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3221, file: !3222, line: 20, baseType: !715, size: 128)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3221, file: !3222, line: 21, baseType: !7, size: 32, offset: 128)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3221, file: !3222, line: 22, baseType: !7, size: 32, offset: 160)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3216, file: !595, line: 187, baseType: !391, size: 32, offset: 320)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3216, file: !595, line: 188, baseType: !391, size: 32, offset: 352)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3216, file: !595, line: 189, baseType: !3230, size: 64, offset: 384)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !595, line: 168, size: 320, elements: !3232)
!3232 = !{!3233, !3237, !3241, !3245, !3249}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3231, file: !595, line: 169, baseType: !3234, size: 64)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{!124, !687, !3215}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3231, file: !595, line: 171, baseType: !3238, size: 64, offset: 64)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{!124, !3196, !168, !291}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3231, file: !595, line: 173, baseType: !3242, size: 64, offset: 128)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{!124, !3196}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3231, file: !595, line: 174, baseType: !3246, size: 64, offset: 192)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!124, !3196, !3196, !168}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3231, file: !595, line: 176, baseType: !3250, size: 64, offset: 256)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{!124, !687, !3196, !3215}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3216, file: !595, line: 192, baseType: !196, size: 128, offset: 448)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3216, file: !595, line: 194, baseType: !1455, size: 128, offset: 576)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3207, file: !595, line: 144, baseType: !3256, size: 64)
!3256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !595, line: 103, size: 64, elements: !3257)
!3257 = !{!3258}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3256, file: !595, line: 104, baseType: !3196, size: 64)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3207, file: !595, line: 145, baseType: !3260, size: 256)
!3260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !595, line: 107, size: 256, elements: !3261)
!3261 = !{!3262, !3322, !3325, !3326}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3260, file: !595, line: 108, baseType: !3263, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3265)
!3265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !595, line: 217, size: 768, elements: !3266)
!3266 = !{!3267, !3287, !3291, !3295, !3299, !3303, !3307, !3311, !3312, !3313, !3314, !3318}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3265, file: !595, line: 222, baseType: !3268, size: 64)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!124, !3271}
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !595, line: 197, size: 1088, elements: !3273)
!3273 = !{!3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3272, file: !595, line: 199, baseType: !3196, size: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3272, file: !595, line: 200, baseType: !328, size: 64, offset: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3272, file: !595, line: 201, baseType: !687, size: 64, offset: 128)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3272, file: !595, line: 202, baseType: !127, size: 64, offset: 192)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3272, file: !595, line: 205, baseType: !1147, size: 192, offset: 256)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3272, file: !595, line: 206, baseType: !1147, size: 192, offset: 448)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3272, file: !595, line: 207, baseType: !124, size: 32, offset: 640)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3272, file: !595, line: 208, baseType: !196, size: 128, offset: 704)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3272, file: !595, line: 209, baseType: !250, size: 64, offset: 832)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3272, file: !595, line: 211, baseType: !297, size: 64, offset: 896)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3272, file: !595, line: 212, baseType: !466, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3272, file: !595, line: 213, baseType: !466, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3272, file: !595, line: 214, baseType: !985, size: 64, offset: 1024)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3265, file: !595, line: 223, baseType: !3288, size: 64, offset: 64)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DISubroutineType(types: !3290)
!3290 = !{null, !3271}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3265, file: !595, line: 236, baseType: !3292, size: 64, offset: 128)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{!124, !687, !127}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3265, file: !595, line: 238, baseType: !3296, size: 64, offset: 192)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{!127, !687, !2848}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3265, file: !595, line: 239, baseType: !3300, size: 64, offset: 256)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!127, !687, !127, !2848}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3265, file: !595, line: 240, baseType: !3304, size: 64, offset: 320)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{null, !687, !127}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3265, file: !595, line: 242, baseType: !3308, size: 64, offset: 384)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{!281, !3271, !250, !297, !507}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3265, file: !595, line: 252, baseType: !297, size: 64, offset: 448)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3265, file: !595, line: 259, baseType: !466, size: 8, offset: 512)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3265, file: !595, line: 260, baseType: !3308, size: 64, offset: 576)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3265, file: !595, line: 263, baseType: !3315, size: 64, offset: 640)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!2877, !3271, !2879}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3265, file: !595, line: 266, baseType: !3319, size: 64, offset: 704)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!124, !3271, !957}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3260, file: !595, line: 109, baseType: !3323, size: 64, offset: 64)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !595, line: 31, flags: DIFlagFwdDecl)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3260, file: !595, line: 110, baseType: !507, size: 64, offset: 128)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3260, file: !595, line: 111, baseType: !3196, size: 64, offset: 192)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3197, file: !595, line: 148, baseType: !127, size: 64, offset: 768)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3197, file: !595, line: 154, baseType: !397, size: 64, offset: 832)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3197, file: !595, line: 156, baseType: !292, size: 16, offset: 896)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3197, file: !595, line: 157, baseType: !291, size: 16, offset: 912)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3197, file: !595, line: 158, baseType: !3332, size: 64, offset: 960)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !595, line: 32, flags: DIFlagFwdDecl)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !191, file: !192, line: 71, baseType: !3335, size: 32, offset: 448)
!3335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3336, line: 19, size: 32, elements: !3337)
!3336 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3337 = !{!3338}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3335, file: !3336, line: 20, baseType: !1204, size: 32)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !191, file: !192, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !191, file: !192, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !191, file: !192, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !191, file: !192, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !191, file: !192, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !188, file: !73, line: 463, baseType: !187, size: 64, offset: 512)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !188, file: !73, line: 465, baseType: !3346, size: 64, offset: 576)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !188, file: !73, line: 467, baseType: !168, size: 64, offset: 640)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !188, file: !73, line: 468, baseType: !3350, size: 64, offset: 704)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3352)
!3352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3353)
!3353 = !{!3354, !3355, !3356, !3360, !3365, !3369}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3352, file: !73, line: 88, baseType: !168, size: 64)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3352, file: !73, line: 89, baseType: !304, size: 64, offset: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3352, file: !73, line: 90, baseType: !3357, size: 64, offset: 128)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{!124, !187, !245}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3352, file: !73, line: 91, baseType: !3361, size: 64, offset: 192)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{!250, !187, !3364, !3193, !3194}
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3352, file: !73, line: 93, baseType: !3366, size: 64, offset: 256)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{null, !187}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3352, file: !73, line: 95, baseType: !3370, size: 64, offset: 320)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3372)
!3372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3373)
!3373 = !{!3374, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3372, file: !80, line: 279, baseType: !3375, size: 64)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{!124, !187}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3372, file: !80, line: 280, baseType: !3366, size: 64, offset: 64)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3372, file: !80, line: 281, baseType: !3375, size: 64, offset: 128)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3372, file: !80, line: 282, baseType: !3375, size: 64, offset: 192)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3372, file: !80, line: 283, baseType: !3375, size: 64, offset: 256)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3372, file: !80, line: 284, baseType: !3375, size: 64, offset: 320)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3372, file: !80, line: 285, baseType: !3375, size: 64, offset: 384)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3372, file: !80, line: 286, baseType: !3375, size: 64, offset: 448)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3372, file: !80, line: 287, baseType: !3375, size: 64, offset: 512)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3372, file: !80, line: 288, baseType: !3375, size: 64, offset: 576)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3372, file: !80, line: 289, baseType: !3375, size: 64, offset: 640)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3372, file: !80, line: 290, baseType: !3375, size: 64, offset: 704)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3372, file: !80, line: 291, baseType: !3375, size: 64, offset: 768)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3372, file: !80, line: 292, baseType: !3375, size: 64, offset: 832)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3372, file: !80, line: 293, baseType: !3375, size: 64, offset: 896)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3372, file: !80, line: 294, baseType: !3375, size: 64, offset: 960)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3372, file: !80, line: 295, baseType: !3375, size: 64, offset: 1024)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3372, file: !80, line: 296, baseType: !3375, size: 64, offset: 1088)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3372, file: !80, line: 297, baseType: !3375, size: 64, offset: 1152)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3372, file: !80, line: 298, baseType: !3375, size: 64, offset: 1216)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3372, file: !80, line: 299, baseType: !3375, size: 64, offset: 1280)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3372, file: !80, line: 300, baseType: !3375, size: 64, offset: 1344)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3372, file: !80, line: 301, baseType: !3375, size: 64, offset: 1408)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !188, file: !73, line: 470, baseType: !3401, size: 64, offset: 768)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3403, line: 82, size: 1408, elements: !3404)
!3403 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3404 = !{!3405, !3406, !3407, !3408, !3409, !3410, !3411, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3486, !3489, !3490}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3402, file: !3403, line: 83, baseType: !168, size: 64)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3402, file: !3403, line: 84, baseType: !168, size: 64, offset: 64)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3402, file: !3403, line: 85, baseType: !187, size: 64, offset: 128)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3402, file: !3403, line: 86, baseType: !304, size: 64, offset: 192)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3402, file: !3403, line: 87, baseType: !304, size: 64, offset: 256)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3402, file: !3403, line: 88, baseType: !304, size: 64, offset: 320)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3402, file: !3403, line: 90, baseType: !3412, size: 64, offset: 384)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = !DISubroutineType(types: !3414)
!3414 = !{!124, !187, !3415}
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3417)
!3417 = !{!3418, !3419, !3420, !3421, !3422, !3423, !3424, !3437, !3450, !3451, !3452, !3453, !3454, !3462, !3463, !3464, !3465, !3466, !3467}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3416, file: !67, line: 96, baseType: !168, size: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3416, file: !67, line: 97, baseType: !3401, size: 64, offset: 64)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3416, file: !67, line: 99, baseType: !170, size: 64, offset: 128)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3416, file: !67, line: 100, baseType: !168, size: 64, offset: 192)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3416, file: !67, line: 102, baseType: !466, size: 8, offset: 256)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3416, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3416, file: !67, line: 105, baseType: !3425, size: 64, offset: 320)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3427)
!3427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3428, line: 262, size: 1600, elements: !3429)
!3428 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3429 = !{!3430, !3431, !3432, !3436}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3427, file: !3428, line: 263, baseType: !2672, size: 256)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3427, file: !3428, line: 264, baseType: !2672, size: 256, offset: 256)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3427, file: !3428, line: 265, baseType: !3433, size: 1024, offset: 512)
!3433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 1024, elements: !3434)
!3434 = !{!3435}
!3435 = !DISubrange(count: 128)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3427, file: !3428, line: 266, baseType: !2101, size: 64, offset: 1536)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3416, file: !67, line: 106, baseType: !3438, size: 64, offset: 384)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3440)
!3440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3428, line: 210, size: 256, elements: !3441)
!3441 = !{!3442, !3446, !3448, !3449}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3440, file: !3428, line: 211, baseType: !3443, size: 72)
!3443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1327, size: 72, elements: !3444)
!3444 = !{!3445}
!3445 = !DISubrange(count: 9)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3440, file: !3428, line: 212, baseType: !3447, size: 64, offset: 128)
!3447 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3428, line: 14, baseType: !300)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3440, file: !3428, line: 213, baseType: !393, size: 32, offset: 192)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3440, file: !3428, line: 214, baseType: !393, size: 32, offset: 224)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3416, file: !67, line: 108, baseType: !3375, size: 64, offset: 448)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3416, file: !67, line: 109, baseType: !3366, size: 64, offset: 512)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3416, file: !67, line: 110, baseType: !3375, size: 64, offset: 576)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3416, file: !67, line: 111, baseType: !3366, size: 64, offset: 640)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3416, file: !67, line: 112, baseType: !3455, size: 64, offset: 704)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{!124, !187, !3458}
!3458 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3459)
!3459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3460)
!3460 = !{!3461}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3459, file: !80, line: 51, baseType: !124, size: 32)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3416, file: !67, line: 113, baseType: !3375, size: 64, offset: 768)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3416, file: !67, line: 114, baseType: !304, size: 64, offset: 832)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3416, file: !67, line: 115, baseType: !304, size: 64, offset: 896)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3416, file: !67, line: 117, baseType: !3370, size: 64, offset: 960)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3416, file: !67, line: 118, baseType: !3366, size: 64, offset: 1024)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3416, file: !67, line: 120, baseType: !3468, size: 64, offset: 1088)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3402, file: !3403, line: 91, baseType: !3357, size: 64, offset: 448)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3402, file: !3403, line: 92, baseType: !3375, size: 64, offset: 512)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3402, file: !3403, line: 93, baseType: !3366, size: 64, offset: 576)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3402, file: !3403, line: 94, baseType: !3375, size: 64, offset: 640)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3402, file: !3403, line: 95, baseType: !3366, size: 64, offset: 704)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3402, file: !3403, line: 97, baseType: !3375, size: 64, offset: 768)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3402, file: !3403, line: 98, baseType: !3375, size: 64, offset: 832)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3402, file: !3403, line: 100, baseType: !3455, size: 64, offset: 896)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3402, file: !3403, line: 101, baseType: !3375, size: 64, offset: 960)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3402, file: !3403, line: 103, baseType: !3375, size: 64, offset: 1024)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3402, file: !3403, line: 105, baseType: !3375, size: 64, offset: 1088)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3402, file: !3403, line: 107, baseType: !3370, size: 64, offset: 1152)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3402, file: !3403, line: 109, baseType: !3483, size: 64, offset: 1216)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3485)
!3485 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3403, line: 109, flags: DIFlagFwdDecl)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3402, file: !3403, line: 111, baseType: !3487, size: 64, offset: 1280)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3403, line: 111, flags: DIFlagFwdDecl)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3402, file: !3403, line: 112, baseType: !621, offset: 1344)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3402, file: !3403, line: 114, baseType: !466, size: 8, offset: 1344)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !188, file: !73, line: 471, baseType: !3415, size: 64, offset: 832)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !188, file: !73, line: 473, baseType: !127, size: 64, offset: 896)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !188, file: !73, line: 475, baseType: !127, size: 64, offset: 960)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !188, file: !73, line: 480, baseType: !1147, size: 192, offset: 1024)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !188, file: !73, line: 484, baseType: !3496, size: 576, offset: 1216)
!3496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3497)
!3497 = !{!3498, !3499, !3500, !3501, !3502, !3503}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3496, file: !73, line: 362, baseType: !196, size: 128)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3496, file: !73, line: 363, baseType: !196, size: 128, offset: 128)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3496, file: !73, line: 364, baseType: !196, size: 128, offset: 256)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3496, file: !73, line: 365, baseType: !196, size: 128, offset: 384)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3496, file: !73, line: 366, baseType: !466, size: 8, offset: 512)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3496, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !188, file: !73, line: 485, baseType: !3505, size: 2304, offset: 1792)
!3505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3506)
!3506 = !{!3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3602, !3606}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3505, file: !80, line: 566, baseType: !3458, size: 32)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3505, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3505, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3505, file: !80, line: 569, baseType: !466, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3505, file: !80, line: 570, baseType: !466, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3505, file: !80, line: 571, baseType: !466, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3505, file: !80, line: 572, baseType: !466, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3505, file: !80, line: 573, baseType: !466, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3505, file: !80, line: 574, baseType: !466, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3505, file: !80, line: 575, baseType: !466, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3505, file: !80, line: 576, baseType: !466, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3505, file: !80, line: 577, baseType: !391, size: 32, offset: 64)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3505, file: !80, line: 578, baseType: !209, offset: 96)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3505, file: !80, line: 580, baseType: !196, size: 128, offset: 128)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3505, file: !80, line: 581, baseType: !1476, size: 192, offset: 256)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3505, file: !80, line: 582, baseType: !3523, size: 64, offset: 448)
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3525, line: 43, size: 1472, elements: !3526)
!3525 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3526 = !{!3527, !3528, !3529, !3530, !3531, !3534, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3524, file: !3525, line: 44, baseType: !168, size: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3524, file: !3525, line: 45, baseType: !124, size: 32, offset: 64)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3524, file: !3525, line: 46, baseType: !196, size: 128, offset: 128)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3524, file: !3525, line: 47, baseType: !209, offset: 256)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3524, file: !3525, line: 48, baseType: !3532, size: 64, offset: 256)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3524, file: !3525, line: 49, baseType: !3535, size: 320, offset: 320)
!3535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3536, line: 11, size: 320, elements: !3537)
!3536 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3537 = !{!3538, !3539, !3540, !3545}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3535, file: !3536, line: 16, baseType: !615, size: 128)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3535, file: !3536, line: 17, baseType: !300, size: 64, offset: 128)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3535, file: !3536, line: 18, baseType: !3541, size: 64, offset: 192)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DISubroutineType(types: !3543)
!3543 = !{null, !3544}
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3535, file: !3536, line: 19, baseType: !391, size: 32, offset: 256)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3524, file: !3525, line: 50, baseType: !300, size: 64, offset: 640)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3524, file: !3525, line: 51, baseType: !1274, size: 64, offset: 704)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3524, file: !3525, line: 52, baseType: !1274, size: 64, offset: 768)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3524, file: !3525, line: 53, baseType: !1274, size: 64, offset: 832)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3524, file: !3525, line: 54, baseType: !1274, size: 64, offset: 896)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3524, file: !3525, line: 55, baseType: !1274, size: 64, offset: 960)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3524, file: !3525, line: 56, baseType: !300, size: 64, offset: 1024)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3524, file: !3525, line: 57, baseType: !300, size: 64, offset: 1088)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3524, file: !3525, line: 58, baseType: !300, size: 64, offset: 1152)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3524, file: !3525, line: 59, baseType: !300, size: 64, offset: 1216)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3524, file: !3525, line: 60, baseType: !300, size: 64, offset: 1280)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3524, file: !3525, line: 61, baseType: !187, size: 64, offset: 1344)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3524, file: !3525, line: 62, baseType: !466, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3524, file: !3525, line: 63, baseType: !466, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3505, file: !80, line: 583, baseType: !466, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3505, file: !80, line: 584, baseType: !466, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3505, file: !80, line: 585, baseType: !466, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3505, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3505, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3505, file: !80, line: 592, baseType: !1266, size: 512, offset: 576)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3505, file: !80, line: 593, baseType: !397, size: 64, offset: 1088)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3505, file: !80, line: 594, baseType: !1931, size: 256, offset: 1152)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3505, file: !80, line: 595, baseType: !1455, size: 128, offset: 1408)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3505, file: !80, line: 596, baseType: !3532, size: 64, offset: 1536)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3505, file: !80, line: 597, baseType: !723, size: 32, offset: 1600)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3505, file: !80, line: 598, baseType: !723, size: 32, offset: 1632)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3505, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3505, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3505, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3505, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3505, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3505, file: !80, line: 604, baseType: !466, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3505, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3505, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3505, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3505, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3505, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3505, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3505, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3505, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3505, file: !80, line: 613, baseType: !124, size: 32, offset: 1792)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3505, file: !80, line: 614, baseType: !124, size: 32, offset: 1824)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3505, file: !80, line: 615, baseType: !397, size: 64, offset: 1856)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3505, file: !80, line: 616, baseType: !397, size: 64, offset: 1920)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3505, file: !80, line: 617, baseType: !397, size: 64, offset: 1984)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3505, file: !80, line: 618, baseType: !397, size: 64, offset: 2048)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3505, file: !80, line: 620, baseType: !3593, size: 64, offset: 2112)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3595)
!3595 = !{!3596, !3597, !3598, !3599}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3594, file: !80, line: 537, baseType: !209)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3594, file: !80, line: 538, baseType: !7, size: 32)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3594, file: !80, line: 540, baseType: !196, size: 128, offset: 64)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3594, file: !80, line: 543, baseType: !3600, size: 64, offset: 192)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3505, file: !80, line: 621, baseType: !3603, size: 64, offset: 2176)
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3604 = !DISubroutineType(types: !3605)
!3605 = !{null, !187, !1418}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3505, file: !80, line: 622, baseType: !3607, size: 64, offset: 2240)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !188, file: !73, line: 486, baseType: !3610, size: 64, offset: 4096)
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3612)
!3612 = !{!3613, !3614, !3615, !3619, !3620, !3621}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3611, file: !80, line: 643, baseType: !3372, size: 1472)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3611, file: !80, line: 644, baseType: !3375, size: 64, offset: 1472)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3611, file: !80, line: 645, baseType: !3616, size: 64, offset: 1536)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DISubroutineType(types: !3618)
!3618 = !{null, !187, !466}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3611, file: !80, line: 646, baseType: !3375, size: 64, offset: 1600)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3611, file: !80, line: 647, baseType: !3366, size: 64, offset: 1664)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3611, file: !80, line: 648, baseType: !3366, size: 64, offset: 1728)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !188, file: !73, line: 493, baseType: !3623, size: 64, offset: 4160)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !73, line: 493, flags: DIFlagFwdDecl)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !188, file: !73, line: 499, baseType: !196, size: 128, offset: 4224)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !188, file: !73, line: 502, baseType: !3627, size: 64, offset: 4352)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3629)
!3629 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !188, file: !73, line: 504, baseType: !3631, size: 64, offset: 4416)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !188, file: !73, line: 505, baseType: !397, size: 64, offset: 4480)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !188, file: !73, line: 510, baseType: !397, size: 64, offset: 4544)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !188, file: !73, line: 511, baseType: !3635, size: 64, offset: 4608)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3637)
!3637 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !188, file: !73, line: 513, baseType: !3639, size: 64, offset: 4672)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3641)
!3641 = !{!3642, !3643}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3640, file: !73, line: 293, baseType: !7, size: 32)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3640, file: !73, line: 294, baseType: !300, size: 64, offset: 64)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !188, file: !73, line: 515, baseType: !196, size: 128, offset: 4736)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !188, file: !73, line: 526, baseType: !3646, offset: 4864)
!3646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3647, line: 5, elements: !223)
!3647 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !188, file: !73, line: 528, baseType: !3649, size: 64, offset: 4864)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3651, line: 14, flags: DIFlagFwdDecl)
!3651 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !188, file: !73, line: 529, baseType: !3653, size: 64, offset: 4928)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3655, line: 17, size: 192, elements: !3656)
!3655 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3656 = !{!3657, !3658, !3741}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3654, file: !3655, line: 18, baseType: !3653, size: 64)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3654, file: !3655, line: 19, baseType: !3659, size: 64, offset: 64)
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3661)
!3661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3655, line: 110, size: 1152, elements: !3662)
!3662 = !{!3663, !3667, !3671, !3677, !3683, !3687, !3691, !3696, !3700, !3701, !3705, !3709, !3713, !3724, !3725, !3726, !3727, !3737}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3661, file: !3655, line: 111, baseType: !3664, size: 64)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{!3653, !3653}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3661, file: !3655, line: 112, baseType: !3668, size: 64, offset: 64)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{null, !3653}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3661, file: !3655, line: 113, baseType: !3672, size: 64, offset: 128)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!466, !3675}
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3654)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3661, file: !3655, line: 114, baseType: !3678, size: 64, offset: 192)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{!2101, !3675, !3681}
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3661, file: !3655, line: 116, baseType: !3684, size: 64, offset: 256)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!466, !3675, !168}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3661, file: !3655, line: 118, baseType: !3688, size: 64, offset: 320)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{!124, !3675, !168, !7, !127, !297}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3661, file: !3655, line: 123, baseType: !3692, size: 64, offset: 384)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!124, !3675, !168, !3695, !297}
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3661, file: !3655, line: 126, baseType: !3697, size: 64, offset: 448)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!168, !3675}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3661, file: !3655, line: 127, baseType: !3697, size: 64, offset: 512)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3661, file: !3655, line: 128, baseType: !3702, size: 64, offset: 576)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{!3653, !3675}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3661, file: !3655, line: 130, baseType: !3706, size: 64, offset: 640)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!3653, !3675, !3653}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3661, file: !3655, line: 133, baseType: !3710, size: 64, offset: 704)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!3653, !3675, !168}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3661, file: !3655, line: 135, baseType: !3714, size: 64, offset: 768)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!124, !3675, !168, !168, !7, !7, !3717}
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3655, line: 43, size: 640, elements: !3719)
!3719 = !{!3720, !3721, !3722}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3718, file: !3655, line: 44, baseType: !3653, size: 64)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3718, file: !3655, line: 45, baseType: !7, size: 32, offset: 64)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3718, file: !3655, line: 46, baseType: !3723, size: 512, offset: 128)
!3723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 512, elements: !1304)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3661, file: !3655, line: 140, baseType: !3706, size: 64, offset: 832)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3661, file: !3655, line: 143, baseType: !3702, size: 64, offset: 896)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3661, file: !3655, line: 145, baseType: !3664, size: 64, offset: 960)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3661, file: !3655, line: 146, baseType: !3728, size: 64, offset: 1024)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!124, !3675, !3731}
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3655, line: 29, size: 128, elements: !3733)
!3733 = !{!3734, !3735, !3736}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3732, file: !3655, line: 30, baseType: !7, size: 32)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3732, file: !3655, line: 31, baseType: !7, size: 32, offset: 32)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3732, file: !3655, line: 32, baseType: !3675, size: 64, offset: 64)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3661, file: !3655, line: 148, baseType: !3738, size: 64, offset: 1088)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!124, !3675, !187}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3654, file: !3655, line: 20, baseType: !187, size: 64, offset: 128)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !188, file: !73, line: 534, baseType: !489, size: 32, offset: 4992)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !188, file: !73, line: 535, baseType: !391, size: 32, offset: 5024)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !188, file: !73, line: 537, baseType: !209, offset: 5056)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !188, file: !73, line: 538, baseType: !196, size: 128, offset: 5056)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !188, file: !73, line: 540, baseType: !3747, size: 64, offset: 5184)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3749, line: 54, size: 960, elements: !3750)
!3749 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3750 = !{!3751, !3752, !3753, !3754, !3755, !3756, !3757, !3761, !3765, !3766, !3767, !3768, !3772, !3776, !3777}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3748, file: !3749, line: 55, baseType: !168, size: 64)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3748, file: !3749, line: 56, baseType: !170, size: 64, offset: 64)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3748, file: !3749, line: 58, baseType: !304, size: 64, offset: 128)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3748, file: !3749, line: 59, baseType: !304, size: 64, offset: 192)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3748, file: !3749, line: 60, baseType: !202, size: 64, offset: 256)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3748, file: !3749, line: 62, baseType: !3357, size: 64, offset: 320)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3748, file: !3749, line: 63, baseType: !3758, size: 64, offset: 384)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = !DISubroutineType(types: !3760)
!3760 = !{!250, !187, !3364}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3748, file: !3749, line: 65, baseType: !3762, size: 64, offset: 448)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DISubroutineType(types: !3764)
!3764 = !{null, !3747}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3748, file: !3749, line: 66, baseType: !3366, size: 64, offset: 512)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3748, file: !3749, line: 68, baseType: !3375, size: 64, offset: 576)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3748, file: !3749, line: 70, baseType: !3161, size: 64, offset: 640)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3748, file: !3749, line: 71, baseType: !3769, size: 64, offset: 704)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!2101, !187}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3748, file: !3749, line: 73, baseType: !3773, size: 64, offset: 768)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DISubroutineType(types: !3775)
!3775 = !{null, !187, !3193, !3194}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3748, file: !3749, line: 75, baseType: !3370, size: 64, offset: 832)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3748, file: !3749, line: 77, baseType: !3487, size: 64, offset: 896)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !188, file: !73, line: 541, baseType: !304, size: 64, offset: 5248)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !188, file: !73, line: 543, baseType: !3366, size: 64, offset: 5312)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !188, file: !73, line: 544, baseType: !3781, size: 64, offset: 5376)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !188, file: !73, line: 545, baseType: !3784, size: 64, offset: 5440)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !188, file: !73, line: 547, baseType: !466, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !188, file: !73, line: 548, baseType: !466, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !188, file: !73, line: 549, baseType: !466, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !188, file: !73, line: 550, baseType: !466, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !178, file: !163, line: 548, baseType: !124, size: 32, offset: 320)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "detach_count", scope: !178, file: !163, line: 549, baseType: !7, size: 32, offset: 352)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "hw_dev", scope: !178, file: !163, line: 550, baseType: !187, size: 64, offset: 384)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !178, file: !163, line: 552, baseType: !168, size: 64, offset: 448)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "board_ptr", scope: !178, file: !163, line: 553, baseType: !2101, size: 64, offset: 512)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "attached", scope: !178, file: !163, line: 554, baseType: !7, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "ioenabled", scope: !178, file: !163, line: 555, baseType: !7, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "spinlock", scope: !178, file: !163, line: 556, baseType: !209, offset: 584)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !178, file: !163, line: 557, baseType: !1147, size: 192, offset: 640)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "attach_lock", scope: !178, file: !163, line: 558, baseType: !743, size: 256, offset: 832)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !178, file: !163, line: 559, baseType: !3335, size: 32, offset: 1088)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "n_subdevices", scope: !178, file: !163, line: 561, baseType: !124, size: 32, offset: 1120)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "subdevices", scope: !178, file: !163, line: 562, baseType: !3803, size: 64, offset: 1152)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_subdevice", file: !163, line: 153, size: 1792, elements: !3805)
!3805 = !{!3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3881, !3894, !3897, !3898, !3912, !3913, !3914, !3915, !3919, !3924, !3925, !3926, !3927, !3931, !3932, !3933, !3934, !3935}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3804, file: !163, line: 154, baseType: !177, size: 64)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3804, file: !163, line: 155, baseType: !124, size: 32, offset: 64)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3804, file: !163, line: 156, baseType: !124, size: 32, offset: 96)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "n_chan", scope: !3804, file: !163, line: 157, baseType: !124, size: 32, offset: 128)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "subdev_flags", scope: !3804, file: !163, line: 158, baseType: !124, size: 32, offset: 160)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "len_chanlist", scope: !3804, file: !163, line: 159, baseType: !124, size: 32, offset: 192)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3804, file: !163, line: 161, baseType: !127, size: 64, offset: 256)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "async", scope: !3804, file: !163, line: 163, baseType: !3814, size: 64, offset: 320)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_async", file: !163, line: 347, size: 1536, elements: !3816)
!3816 = !{!3817, !3818, !3819, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3867, !3868, !3869}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3815, file: !163, line: 348, baseType: !127, size: 64)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_bufsz", scope: !3815, file: !163, line: 349, baseType: !7, size: 32, offset: 64)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "buf_map", scope: !3815, file: !163, line: 350, baseType: !3820, size: 64, offset: 128)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_map", file: !163, line: 249, size: 256, elements: !3822)
!3822 = !{!3823, !3824, !3830, !3831, !3832}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "dma_hw_dev", scope: !3821, file: !163, line: 250, baseType: !187, size: 64)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "page_list", scope: !3821, file: !163, line: 251, baseType: !3825, size: 64, offset: 64)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_page", file: !163, line: 220, size: 128, elements: !3827)
!3827 = !{!3828, !3829}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "virt_addr", scope: !3826, file: !163, line: 221, baseType: !127, size: 64)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3826, file: !163, line: 222, baseType: !896, size: 64, offset: 64)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "n_pages", scope: !3821, file: !163, line: 252, baseType: !7, size: 32, offset: 128)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "dma_dir", scope: !3821, file: !163, line: 253, baseType: !93, size: 32, offset: 160)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3821, file: !163, line: 254, baseType: !3335, size: 32, offset: 192)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "max_bufsize", scope: !3815, file: !163, line: 351, baseType: !7, size: 32, offset: 192)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_count", scope: !3815, file: !163, line: 352, baseType: !7, size: 32, offset: 224)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_alloc_count", scope: !3815, file: !163, line: 353, baseType: !7, size: 32, offset: 256)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_count", scope: !3815, file: !163, line: 354, baseType: !7, size: 32, offset: 288)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_alloc_count", scope: !3815, file: !163, line: 355, baseType: !7, size: 32, offset: 320)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_ptr", scope: !3815, file: !163, line: 356, baseType: !7, size: 32, offset: 352)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_ptr", scope: !3815, file: !163, line: 357, baseType: !7, size: 32, offset: 384)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "cur_chan", scope: !3815, file: !163, line: 358, baseType: !7, size: 32, offset: 416)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "scans_done", scope: !3815, file: !163, line: 359, baseType: !7, size: 32, offset: 448)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "scan_progress", scope: !3815, file: !163, line: 360, baseType: !7, size: 32, offset: 480)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "munge_chan", scope: !3815, file: !163, line: 361, baseType: !7, size: 32, offset: 512)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "munge_count", scope: !3815, file: !163, line: 362, baseType: !7, size: 32, offset: 544)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "munge_ptr", scope: !3815, file: !163, line: 363, baseType: !7, size: 32, offset: 576)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3815, file: !163, line: 364, baseType: !7, size: 32, offset: 608)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !3815, file: !163, line: 365, baseType: !3848, size: 640, offset: 640)
!3848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_cmd", file: !101, line: 589, size: 640, elements: !3849)
!3849 = !{!3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3866}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "subdev", scope: !3848, file: !101, line: 590, baseType: !7, size: 32)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3848, file: !101, line: 591, baseType: !7, size: 32, offset: 32)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "start_src", scope: !3848, file: !101, line: 593, baseType: !7, size: 32, offset: 64)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "start_arg", scope: !3848, file: !101, line: 594, baseType: !7, size: 32, offset: 96)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "scan_begin_src", scope: !3848, file: !101, line: 596, baseType: !7, size: 32, offset: 128)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "scan_begin_arg", scope: !3848, file: !101, line: 597, baseType: !7, size: 32, offset: 160)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "convert_src", scope: !3848, file: !101, line: 599, baseType: !7, size: 32, offset: 192)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "convert_arg", scope: !3848, file: !101, line: 600, baseType: !7, size: 32, offset: 224)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "scan_end_src", scope: !3848, file: !101, line: 602, baseType: !7, size: 32, offset: 256)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "scan_end_arg", scope: !3848, file: !101, line: 603, baseType: !7, size: 32, offset: 288)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "stop_src", scope: !3848, file: !101, line: 605, baseType: !7, size: 32, offset: 320)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "stop_arg", scope: !3848, file: !101, line: 606, baseType: !7, size: 32, offset: 352)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist", scope: !3848, file: !101, line: 608, baseType: !2655, size: 64, offset: 384)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist_len", scope: !3848, file: !101, line: 609, baseType: !7, size: 32, offset: 448)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3848, file: !101, line: 611, baseType: !3865, size: 64, offset: 512)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !3848, file: !101, line: 612, baseType: !7, size: 32, offset: 576)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "wait_head", scope: !3815, file: !163, line: 366, baseType: !1455, size: 128, offset: 1280)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "cb_mask", scope: !3815, file: !163, line: 367, baseType: !7, size: 32, offset: 1408)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "inttrig", scope: !3815, file: !163, line: 368, baseType: !3870, size: 64, offset: 1472)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{!124, !177, !3803, !7}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3804, file: !163, line: 165, baseType: !127, size: 64, offset: 384)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !3804, file: !163, line: 166, baseType: !127, size: 64, offset: 448)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "runflags", scope: !3804, file: !163, line: 167, baseType: !7, size: 32, offset: 512)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "spin_lock", scope: !3804, file: !163, line: 168, baseType: !209, offset: 544)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "io_bits", scope: !3804, file: !163, line: 170, baseType: !7, size: 32, offset: 544)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata", scope: !3804, file: !163, line: 172, baseType: !7, size: 32, offset: 576)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata_list", scope: !3804, file: !163, line: 173, baseType: !3880, size: 64, offset: 640)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "range_table", scope: !3804, file: !163, line: 175, baseType: !3882, size: 64, offset: 704)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3884)
!3884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_lrange", file: !163, line: 635, size: 32, elements: !3885)
!3885 = !{!3886, !3887}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3884, file: !163, line: 636, baseType: !124, size: 32)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3884, file: !163, line: 637, baseType: !3888, offset: 32)
!3888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3889, elements: !2303)
!3889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_krange", file: !101, line: 685, size: 96, elements: !3890)
!3890 = !{!3891, !3892, !3893}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !3889, file: !101, line: 686, baseType: !124, size: 32)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3889, file: !101, line: 687, baseType: !124, size: 32, offset: 32)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3889, file: !101, line: 688, baseType: !7, size: 32, offset: 64)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "range_table_list", scope: !3804, file: !163, line: 176, baseType: !3895, size: 64, offset: 768)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3882)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist", scope: !3804, file: !163, line: 178, baseType: !2655, size: 64, offset: 832)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "insn_read", scope: !3804, file: !163, line: 180, baseType: !3899, size: 64, offset: 896)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DISubroutineType(types: !3901)
!3901 = !{!124, !177, !3803, !3902, !2655}
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_insn", file: !101, line: 491, size: 320, elements: !3904)
!3904 = !{!3905, !3906, !3907, !3908, !3909, !3910}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3903, file: !101, line: 492, baseType: !7, size: 32)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !3903, file: !101, line: 493, baseType: !7, size: 32, offset: 32)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3903, file: !101, line: 494, baseType: !2655, size: 64, offset: 64)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "subdev", scope: !3903, file: !101, line: 495, baseType: !7, size: 32, offset: 128)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "chanspec", scope: !3903, file: !101, line: 496, baseType: !7, size: 32, offset: 160)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !3903, file: !101, line: 497, baseType: !3911, size: 96, offset: 192)
!3911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 96, elements: !251)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "insn_write", scope: !3804, file: !163, line: 182, baseType: !3899, size: 64, offset: 960)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "insn_bits", scope: !3804, file: !163, line: 184, baseType: !3899, size: 64, offset: 1024)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "insn_config", scope: !3804, file: !163, line: 186, baseType: !3899, size: 64, offset: 1088)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmd", scope: !3804, file: !163, line: 191, baseType: !3916, size: 64, offset: 1152)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = !DISubroutineType(types: !3918)
!3918 = !{!124, !177, !3803}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmdtest", scope: !3804, file: !163, line: 192, baseType: !3920, size: 64, offset: 1216)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DISubroutineType(types: !3922)
!3922 = !{!124, !177, !3803, !3923}
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3804, file: !163, line: 195, baseType: !3916, size: 64, offset: 1280)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "cancel", scope: !3804, file: !163, line: 196, baseType: !3916, size: 64, offset: 1344)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "buf_change", scope: !3804, file: !163, line: 199, baseType: !3916, size: 64, offset: 1408)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "munge", scope: !3804, file: !163, line: 202, baseType: !3928, size: 64, offset: 1472)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = !DISubroutineType(types: !3930)
!3930 = !{null, !177, !3803, !127, !7, !7}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "async_dma_dir", scope: !3804, file: !163, line: 205, baseType: !93, size: 32, offset: 1536)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3804, file: !163, line: 207, baseType: !7, size: 32, offset: 1568)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !3804, file: !163, line: 209, baseType: !187, size: 64, offset: 1600)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3804, file: !163, line: 210, baseType: !124, size: 32, offset: 1664)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "readback", scope: !3804, file: !163, line: 212, baseType: !2655, size: 64, offset: 1728)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "mmio", scope: !178, file: !163, line: 565, baseType: !127, size: 64, offset: 1216)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "iobase", scope: !178, file: !163, line: 566, baseType: !300, size: 64, offset: 1280)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "iolen", scope: !178, file: !163, line: 567, baseType: !300, size: 64, offset: 1344)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !178, file: !163, line: 568, baseType: !7, size: 32, offset: 1408)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "read_subdev", scope: !178, file: !163, line: 570, baseType: !3803, size: 64, offset: 1472)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "write_subdev", scope: !178, file: !163, line: 571, baseType: !3803, size: 64, offset: 1536)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "async_queue", scope: !178, file: !163, line: 573, baseType: !2931, size: 64, offset: 1600)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !178, file: !163, line: 575, baseType: !3944, size: 64, offset: 1664)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{!124, !177}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !178, file: !163, line: 576, baseType: !3948, size: 64, offset: 1728)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{null, !177}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "insn_device_config", scope: !178, file: !163, line: 577, baseType: !3952, size: 64, offset: 1792)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{!124, !177, !3902, !2655}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "get_valid_routes", scope: !178, file: !163, line: 579, baseType: !3956, size: 64, offset: 1856)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = !DISubroutineType(types: !3958)
!3958 = !{!7, !177, !7, !2655}
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_devconfig", file: !101, line: 834, size: 1184, elements: !3961)
!3961 = !{!3962, !3964}
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !3960, file: !101, line: 835, baseType: !3963, size: 160)
!3963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 160, elements: !158)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !3960, file: !101, line: 836, baseType: !3965, size: 1024, offset: 160)
!3965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 1024, elements: !2202)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !162, file: !163, line: 444, baseType: !3948, size: 64, offset: 256)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "auto_attach", scope: !162, file: !163, line: 445, baseType: !3968, size: 64, offset: 320)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = !DISubroutineType(types: !3970)
!3970 = !{!124, !177, !300}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "num_names", scope: !162, file: !163, line: 446, baseType: !7, size: 32, offset: 384)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !162, file: !163, line: 447, baseType: !3973, size: 64, offset: 448)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !162, file: !163, line: 448, baseType: !124, size: 32, offset: 512)
!3976 = !DIGlobalVariableExpression(var: !3977, expr: !DIExpression())
!3977 = distinct !DIGlobalVariable(name: "ni_670x_boards", scope: !2, file: !3, line: 52, type: !3978, isLocal: true, isDefinition: true)
!3978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3979, size: 384, elements: !251)
!3979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3980)
!3980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ni_670x_board", file: !3, line: 47, size: 128, elements: !3981)
!3981 = !{!3982, !3983}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3980, file: !3, line: 48, baseType: !168, size: 64)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "ao_chans", scope: !3980, file: !3, line: 49, baseType: !292, size: 16, offset: 64)
!3984 = !DIGlobalVariableExpression(var: !3985, expr: !DIExpression())
!3985 = distinct !DIGlobalVariable(name: "ni_670x_pci_driver", scope: !2, file: !3, line: 272, type: !3986, isLocal: true, isDefinition: true)
!3986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !3987, line: 858, size: 2048, elements: !3988)
!3987 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!3988 = !{!3989, !3990, !3991, !4003, !4223, !4227, !4231, !4235, !4236, !4240, !4258, !4259, !4260}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3986, file: !3987, line: 859, baseType: !196, size: 128)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3986, file: !3987, line: 860, baseType: !168, size: 64, offset: 128)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3986, file: !3987, line: 861, baseType: !3992, size: 64, offset: 192)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3994)
!3994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3428, line: 38, size: 256, elements: !3995)
!3995 = !{!3996, !3997, !3998, !3999, !4000, !4001, !4002}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3994, file: !3428, line: 39, baseType: !393, size: 32)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3994, file: !3428, line: 39, baseType: !393, size: 32, offset: 32)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !3994, file: !3428, line: 40, baseType: !393, size: 32, offset: 64)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !3994, file: !3428, line: 40, baseType: !393, size: 32, offset: 96)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3994, file: !3428, line: 41, baseType: !393, size: 32, offset: 128)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !3994, file: !3428, line: 41, baseType: !393, size: 32, offset: 160)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3994, file: !3428, line: 42, baseType: !3447, size: 64, offset: 192)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3986, file: !3987, line: 862, baseType: !4004, size: 64, offset: 256)
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = !DISubroutineType(types: !4006)
!4006 = !{!124, !4007, !3992}
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !3987, line: 309, size: 19264, elements: !4009)
!4009 = !{!4010, !4011, !4086, !4087, !4088, !4089, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4117, !4119, !4120, !4121, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4145, !4146, !4147, !4148, !4150, !4151, !4152, !4153, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4196, !4197, !4199, !4200, !4201, !4202, !4204, !4205, !4206, !4209, !4216, !4217, !4218, !4219, !4220, !4221, !4222}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !4008, file: !3987, line: 310, baseType: !196, size: 128)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4008, file: !3987, line: 311, baseType: !4012, size: 64, offset: 128)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !3987, line: 605, size: 8064, elements: !4014)
!4014 = !{!4015, !4016, !4017, !4018, !4019, !4020, !4021, !4036, !4037, !4038, !4062, !4065, !4066, !4070, !4071, !4072, !4073, !4074, !4078, !4079, !4081, !4082, !4083, !4084, !4085}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4013, file: !3987, line: 606, baseType: !196, size: 128)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4013, file: !3987, line: 607, baseType: !4012, size: 64, offset: 128)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4013, file: !3987, line: 608, baseType: !196, size: 128, offset: 192)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4013, file: !3987, line: 609, baseType: !196, size: 128, offset: 320)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4013, file: !3987, line: 610, baseType: !4007, size: 64, offset: 448)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4013, file: !3987, line: 611, baseType: !196, size: 128, offset: 512)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4013, file: !3987, line: 613, baseType: !4022, size: 256, offset: 640)
!4022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4023, size: 256, elements: !1129)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4025, line: 20, size: 512, elements: !4026)
!4025 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!4026 = !{!4027, !4029, !4030, !4031, !4032, !4033, !4034, !4035}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4024, file: !4025, line: 21, baseType: !4028, size: 64)
!4028 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !126, line: 158, baseType: !2099)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4024, file: !4025, line: 22, baseType: !4028, size: 64, offset: 64)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4024, file: !4025, line: 23, baseType: !168, size: 64, offset: 128)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4024, file: !4025, line: 24, baseType: !300, size: 64, offset: 192)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4024, file: !4025, line: 25, baseType: !300, size: 64, offset: 256)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4024, file: !4025, line: 26, baseType: !4023, size: 64, offset: 320)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4024, file: !4025, line: 26, baseType: !4023, size: 64, offset: 384)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4024, file: !4025, line: 26, baseType: !4023, size: 64, offset: 448)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4013, file: !3987, line: 614, baseType: !196, size: 128, offset: 896)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !4013, file: !3987, line: 615, baseType: !4024, size: 512, offset: 1024)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4013, file: !3987, line: 617, baseType: !4039, size: 64, offset: 1536)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !3987, line: 731, size: 320, elements: !4041)
!4041 = !{!4042, !4046, !4050, !4054, !4058}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4040, file: !3987, line: 732, baseType: !4043, size: 64)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{!124, !4012}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4040, file: !3987, line: 733, baseType: !4047, size: 64, offset: 64)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{null, !4012}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4040, file: !3987, line: 734, baseType: !4051, size: 64, offset: 128)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = !DISubroutineType(types: !4053)
!4053 = !{!127, !4012, !7, !124}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4040, file: !3987, line: 735, baseType: !4055, size: 64, offset: 192)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = !DISubroutineType(types: !4057)
!4057 = !{!124, !4012, !7, !124, !124, !1389}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4040, file: !3987, line: 736, baseType: !4059, size: 64, offset: 256)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DISubroutineType(types: !4061)
!4061 = !{!124, !4012, !7, !124, !124, !391}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4013, file: !3987, line: 618, baseType: !4063, size: 64, offset: 1600)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !3987, line: 537, flags: DIFlagFwdDecl)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4013, file: !3987, line: 619, baseType: !127, size: 64, offset: 1664)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !4013, file: !3987, line: 620, baseType: !4067, size: 64, offset: 1728)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4069, line: 123, flags: DIFlagFwdDecl)
!4069 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4013, file: !3987, line: 622, baseType: !403, size: 8, offset: 1792)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4013, file: !3987, line: 623, baseType: !403, size: 8, offset: 1800)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !4013, file: !3987, line: 624, baseType: !403, size: 8, offset: 1808)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !4013, file: !3987, line: 625, baseType: !403, size: 8, offset: 1816)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4013, file: !3987, line: 630, baseType: !4075, size: 384, offset: 1824)
!4075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 384, elements: !4076)
!4076 = !{!4077}
!4077 = !DISubrange(count: 48)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !4013, file: !3987, line: 632, baseType: !292, size: 16, offset: 2208)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !4013, file: !3987, line: 633, baseType: !4080, size: 16, offset: 2224)
!4080 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !3987, line: 237, baseType: !292)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !4013, file: !3987, line: 634, baseType: !187, size: 64, offset: 2240)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4013, file: !3987, line: 635, baseType: !188, size: 5568, offset: 2304)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !4013, file: !3987, line: 636, baseType: !318, size: 64, offset: 7872)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !4013, file: !3987, line: 637, baseType: !318, size: 64, offset: 7936)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !4013, file: !3987, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !4008, file: !3987, line: 312, baseType: !4012, size: 64, offset: 192)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4008, file: !3987, line: 314, baseType: !127, size: 64, offset: 256)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !4008, file: !3987, line: 315, baseType: !4067, size: 64, offset: 320)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4008, file: !3987, line: 316, baseType: !4090, size: 64, offset: 384)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !3987, line: 69, size: 832, elements: !4092)
!4092 = !{!4093, !4094, !4095, !4098, !4099}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4091, file: !3987, line: 70, baseType: !4012, size: 64)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4091, file: !3987, line: 71, baseType: !196, size: 128, offset: 64)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4091, file: !3987, line: 72, baseType: !4096, size: 64, offset: 192)
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4097 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !3987, line: 72, flags: DIFlagFwdDecl)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4091, file: !3987, line: 73, baseType: !403, size: 8, offset: 256)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4091, file: !3987, line: 74, baseType: !191, size: 512, offset: 320)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !4008, file: !3987, line: 318, baseType: !7, size: 32, offset: 448)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4008, file: !3987, line: 319, baseType: !292, size: 16, offset: 480)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4008, file: !3987, line: 320, baseType: !292, size: 16, offset: 496)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4008, file: !3987, line: 321, baseType: !292, size: 16, offset: 512)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4008, file: !3987, line: 322, baseType: !292, size: 16, offset: 528)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4008, file: !3987, line: 323, baseType: !7, size: 32, offset: 544)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4008, file: !3987, line: 324, baseType: !1326, size: 8, offset: 576)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4008, file: !3987, line: 325, baseType: !1326, size: 8, offset: 584)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !4008, file: !3987, line: 330, baseType: !1326, size: 8, offset: 592)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !4008, file: !3987, line: 331, baseType: !1326, size: 8, offset: 600)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !4008, file: !3987, line: 332, baseType: !1326, size: 8, offset: 608)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !4008, file: !3987, line: 333, baseType: !1326, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !4008, file: !3987, line: 334, baseType: !1326, size: 8, offset: 624)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4008, file: !3987, line: 335, baseType: !1326, size: 8, offset: 632)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !4008, file: !3987, line: 336, baseType: !835, size: 16, offset: 640)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !4008, file: !3987, line: 337, baseType: !4116, size: 64, offset: 704)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4008, file: !3987, line: 339, baseType: !4118, size: 64, offset: 768)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4008, file: !3987, line: 340, baseType: !397, size: 64, offset: 832)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4008, file: !3987, line: 346, baseType: !3640, size: 128, offset: 896)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !4008, file: !3987, line: 348, baseType: !4122, size: 32, offset: 1024)
!4122 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !3987, line: 155, baseType: !124)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !4008, file: !3987, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !4008, file: !3987, line: 352, baseType: !1326, size: 8, offset: 1064)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !4008, file: !3987, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !4008, file: !3987, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !4008, file: !3987, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !4008, file: !3987, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !4008, file: !3987, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !4008, file: !3987, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !4008, file: !3987, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !4008, file: !3987, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !4008, file: !3987, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !4008, file: !3987, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !4008, file: !3987, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !4008, file: !3987, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !4008, file: !3987, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !4008, file: !3987, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !4008, file: !3987, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !4008, file: !3987, line: 376, baseType: !7, size: 32, offset: 1120)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !4008, file: !3987, line: 377, baseType: !7, size: 32, offset: 1152)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !4008, file: !3987, line: 380, baseType: !4143, size: 64, offset: 1216)
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4144, size: 64)
!4144 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !3987, line: 303, flags: DIFlagFwdDecl)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !4008, file: !3987, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !4008, file: !3987, line: 383, baseType: !124, size: 32, offset: 1312)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !4008, file: !3987, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !4008, file: !3987, line: 387, baseType: !4149, size: 32, offset: 1376)
!4149 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !3987, line: 180, baseType: !7)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4008, file: !3987, line: 388, baseType: !188, size: 5568, offset: 1408)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !4008, file: !3987, line: 390, baseType: !124, size: 32, offset: 6976)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4008, file: !3987, line: 396, baseType: !7, size: 32, offset: 7008)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4008, file: !3987, line: 397, baseType: !4154, size: 8704, offset: 7040)
!4154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4024, size: 8704, elements: !4155)
!4155 = !{!4156}
!4156 = !DISubrange(count: 17)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4008, file: !3987, line: 399, baseType: !466, size: 8, offset: 15744)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !4008, file: !3987, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !4008, file: !3987, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !4008, file: !3987, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !4008, file: !3987, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !4008, file: !3987, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !4008, file: !3987, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !4008, file: !3987, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !4008, file: !3987, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !4008, file: !3987, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !4008, file: !3987, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !4008, file: !3987, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !4008, file: !3987, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !4008, file: !3987, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !4008, file: !3987, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !4008, file: !3987, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !4008, file: !3987, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !4008, file: !3987, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !4008, file: !3987, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !4008, file: !3987, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !4008, file: !3987, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !4008, file: !3987, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !4008, file: !3987, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !4008, file: !3987, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !4008, file: !3987, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !4008, file: !3987, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !4008, file: !3987, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !4008, file: !3987, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !4008, file: !3987, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !4008, file: !3987, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !4008, file: !3987, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !4008, file: !3987, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !4008, file: !3987, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !4008, file: !3987, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !4008, file: !3987, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !4008, file: !3987, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !4008, file: !3987, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !4008, file: !3987, line: 450, baseType: !4195, size: 16, offset: 15792)
!4195 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !3987, line: 206, baseType: !292)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !4008, file: !3987, line: 451, baseType: !723, size: 32, offset: 15808)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !4008, file: !3987, line: 453, baseType: !4198, size: 512, offset: 15840)
!4198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 512, elements: !1709)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !4008, file: !3987, line: 454, baseType: !611, size: 64, offset: 16384)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !4008, file: !3987, line: 455, baseType: !318, size: 64, offset: 16448)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !4008, file: !3987, line: 456, baseType: !124, size: 32, offset: 16512)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !4008, file: !3987, line: 457, baseType: !4203, size: 1088, offset: 16576)
!4203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 1088, elements: !4155)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !4008, file: !3987, line: 458, baseType: !4203, size: 1088, offset: 17664)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !4008, file: !3987, line: 469, baseType: !304, size: 64, offset: 18752)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !4008, file: !3987, line: 471, baseType: !4207, size: 64, offset: 18816)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !3987, line: 304, flags: DIFlagFwdDecl)
!4209 = !DIDerivedType(tag: DW_TAG_member, scope: !4008, file: !3987, line: 478, baseType: !4210, size: 64, offset: 18880)
!4210 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4008, file: !3987, line: 478, size: 64, elements: !4211)
!4211 = !{!4212, !4215}
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4210, file: !3987, line: 479, baseType: !4213, size: 64)
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4214 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !3987, line: 305, flags: DIFlagFwdDecl)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4210, file: !3987, line: 480, baseType: !4007, size: 64)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !4008, file: !3987, line: 482, baseType: !835, size: 16, offset: 18944)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !4008, file: !3987, line: 483, baseType: !1326, size: 8, offset: 18960)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !4008, file: !3987, line: 497, baseType: !835, size: 16, offset: 18976)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !4008, file: !3987, line: 498, baseType: !2099, size: 64, offset: 19008)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !4008, file: !3987, line: 499, baseType: !297, size: 64, offset: 19072)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !4008, file: !3987, line: 500, baseType: !250, size: 64, offset: 19136)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !4008, file: !3987, line: 502, baseType: !300, size: 64, offset: 19200)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3986, file: !3987, line: 863, baseType: !4224, size: 64, offset: 320)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = !DISubroutineType(types: !4226)
!4226 = !{null, !4007}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3986, file: !3987, line: 864, baseType: !4228, size: 64, offset: 384)
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4229, size: 64)
!4229 = !DISubroutineType(types: !4230)
!4230 = !{!124, !4007, !3458}
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3986, file: !3987, line: 865, baseType: !4232, size: 64, offset: 448)
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4233, size: 64)
!4233 = !DISubroutineType(types: !4234)
!4234 = !{!124, !4007}
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3986, file: !3987, line: 866, baseType: !4224, size: 64, offset: 512)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !3986, file: !3987, line: 867, baseType: !4237, size: 64, offset: 576)
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = !DISubroutineType(types: !4239)
!4239 = !{!124, !4007, !124}
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !3986, file: !3987, line: 868, baseType: !4241, size: 64, offset: 640)
!4241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4242, size: 64)
!4242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4243)
!4243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !3987, line: 795, size: 384, elements: !4244)
!4244 = !{!4245, !4250, !4254, !4255, !4256, !4257}
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4243, file: !3987, line: 797, baseType: !4246, size: 64)
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = !DISubroutineType(types: !4248)
!4248 = !{!4249, !4007, !4149}
!4249 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !3987, line: 772, baseType: !7)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4243, file: !3987, line: 801, baseType: !4251, size: 64, offset: 64)
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = !DISubroutineType(types: !4253)
!4253 = !{!4249, !4007}
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4243, file: !3987, line: 804, baseType: !4251, size: 64, offset: 128)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4243, file: !3987, line: 807, baseType: !4224, size: 64, offset: 192)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4243, file: !3987, line: 808, baseType: !4224, size: 64, offset: 256)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4243, file: !3987, line: 811, baseType: !4224, size: 64, offset: 320)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3986, file: !3987, line: 869, baseType: !304, size: 64, offset: 704)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3986, file: !3987, line: 870, baseType: !3416, size: 1152, offset: 768)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !3986, file: !3987, line: 871, baseType: !4261, size: 128, offset: 1920)
!4261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !3987, line: 759, size: 128, elements: !4262)
!4262 = !{!4263, !4264}
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4261, file: !3987, line: 760, baseType: !209)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4261, file: !3987, line: 761, baseType: !196, size: 128)
!4265 = !DIGlobalVariableExpression(var: !4266, expr: !DIExpression())
!4266 = distinct !DIGlobalVariable(name: "ni_670x_pci_table", scope: !2, file: !3, line: 264, type: !4267, isLocal: true, isDefinition: true)
!4267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3993, size: 1024, elements: !1129)
!4268 = !{i32 7, !"Dwarf Version", i32 4}
!4269 = !{i32 2, !"Debug Info Version", i32 3}
!4270 = !{i32 1, !"wchar_size", i32 2}
!4271 = !{i32 1, !"Code Model", i32 2}
!4272 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4273 = distinct !DISubprogram(name: "ni_670x_driver_init", scope: !3, file: !3, line: 278, type: !4274, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!4274 = !DISubroutineType(types: !4275)
!4275 = !{!124}
!4276 = !DILocation(line: 278, column: 1, scope: !4273)
!4277 = distinct !DISubprogram(name: "ni_670x_driver_exit", scope: !3, file: !3, line: 278, type: !136, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!4278 = !DILocation(line: 278, column: 1, scope: !4277)
!4279 = distinct !DISubprogram(name: "ni_670x_detach", scope: !3, file: !3, line: 239, type: !3949, scopeLine: 240, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!4280 = !DILocalVariable(name: "dev", arg: 1, scope: !4279, file: !3, line: 239, type: !177)
!4281 = !DILocation(line: 239, column: 50, scope: !4279)
!4282 = !DILocalVariable(name: "s", scope: !4279, file: !3, line: 241, type: !3803)
!4283 = !DILocation(line: 241, column: 27, scope: !4279)
!4284 = !DILocation(line: 243, column: 20, scope: !4279)
!4285 = !DILocation(line: 243, column: 2, scope: !4279)
!4286 = !DILocation(line: 244, column: 6, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !4279, file: !3, line: 244, column: 6)
!4288 = !DILocation(line: 244, column: 11, scope: !4287)
!4289 = !DILocation(line: 244, column: 6, scope: !4279)
!4290 = !DILocation(line: 245, column: 8, scope: !4291)
!4291 = distinct !DILexicalBlock(scope: !4287, file: !3, line: 244, column: 25)
!4292 = !DILocation(line: 245, column: 13, scope: !4291)
!4293 = !DILocation(line: 245, column: 5, scope: !4291)
!4294 = !DILocation(line: 246, column: 7, scope: !4295)
!4295 = distinct !DILexicalBlock(scope: !4291, file: !3, line: 246, column: 7)
!4296 = !DILocation(line: 246, column: 7, scope: !4291)
!4297 = !DILocation(line: 247, column: 10, scope: !4295)
!4298 = !DILocation(line: 247, column: 13, scope: !4295)
!4299 = !DILocation(line: 247, column: 4, scope: !4295)
!4300 = !DILocation(line: 248, column: 2, scope: !4291)
!4301 = !DILocation(line: 249, column: 1, scope: !4279)
!4302 = distinct !DISubprogram(name: "ni_670x_auto_attach", scope: !3, file: !3, line: 156, type: !3969, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!4303 = !DILocalVariable(name: "dev", arg: 1, scope: !4302, file: !3, line: 156, type: !177)
!4304 = !DILocation(line: 156, column: 54, scope: !4302)
!4305 = !DILocalVariable(name: "context", arg: 2, scope: !4302, file: !3, line: 157, type: !300)
!4306 = !DILocation(line: 157, column: 25, scope: !4302)
!4307 = !DILocalVariable(name: "pcidev", scope: !4302, file: !3, line: 159, type: !4007)
!4308 = !DILocation(line: 159, column: 18, scope: !4302)
!4309 = !DILocation(line: 159, column: 45, scope: !4302)
!4310 = !DILocation(line: 159, column: 27, scope: !4302)
!4311 = !DILocalVariable(name: "board", scope: !4302, file: !3, line: 160, type: !4312)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!4313 = !DILocation(line: 160, column: 30, scope: !4302)
!4314 = !DILocalVariable(name: "devpriv", scope: !4302, file: !3, line: 161, type: !4315)
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ni_670x_private", file: !3, line: 67, size: 64, elements: !4317)
!4317 = !{!4318, !4319}
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "boardtype", scope: !4316, file: !3, line: 68, baseType: !124, size: 32)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "dio", scope: !4316, file: !3, line: 69, baseType: !124, size: 32, offset: 32)
!4320 = !DILocation(line: 161, column: 26, scope: !4302)
!4321 = !DILocalVariable(name: "s", scope: !4302, file: !3, line: 162, type: !3803)
!4322 = !DILocation(line: 162, column: 27, scope: !4302)
!4323 = !DILocalVariable(name: "ret", scope: !4302, file: !3, line: 163, type: !124)
!4324 = !DILocation(line: 163, column: 6, scope: !4302)
!4325 = !DILocalVariable(name: "i", scope: !4302, file: !3, line: 164, type: !124)
!4326 = !DILocation(line: 164, column: 6, scope: !4302)
!4327 = !DILocation(line: 166, column: 6, scope: !4328)
!4328 = distinct !DILexicalBlock(scope: !4302, file: !3, line: 166, column: 6)
!4329 = !DILocation(line: 166, column: 14, scope: !4328)
!4330 = !DILocation(line: 166, column: 6, scope: !4302)
!4331 = !DILocation(line: 167, column: 27, scope: !4328)
!4332 = !DILocation(line: 167, column: 12, scope: !4328)
!4333 = !DILocation(line: 167, column: 9, scope: !4328)
!4334 = !DILocation(line: 167, column: 3, scope: !4328)
!4335 = !DILocation(line: 168, column: 7, scope: !4336)
!4336 = distinct !DILexicalBlock(scope: !4302, file: !3, line: 168, column: 6)
!4337 = !DILocation(line: 168, column: 6, scope: !4302)
!4338 = !DILocation(line: 169, column: 3, scope: !4336)
!4339 = !DILocation(line: 170, column: 19, scope: !4302)
!4340 = !DILocation(line: 170, column: 2, scope: !4302)
!4341 = !DILocation(line: 170, column: 7, scope: !4302)
!4342 = !DILocation(line: 170, column: 17, scope: !4302)
!4343 = !DILocation(line: 171, column: 20, scope: !4302)
!4344 = !DILocation(line: 171, column: 27, scope: !4302)
!4345 = !DILocation(line: 171, column: 2, scope: !4302)
!4346 = !DILocation(line: 171, column: 7, scope: !4302)
!4347 = !DILocation(line: 171, column: 18, scope: !4302)
!4348 = !DILocation(line: 173, column: 26, scope: !4302)
!4349 = !DILocation(line: 173, column: 8, scope: !4302)
!4350 = !DILocation(line: 173, column: 6, scope: !4302)
!4351 = !DILocation(line: 174, column: 6, scope: !4352)
!4352 = distinct !DILexicalBlock(scope: !4302, file: !3, line: 174, column: 6)
!4353 = !DILocation(line: 174, column: 6, scope: !4302)
!4354 = !DILocation(line: 175, column: 10, scope: !4352)
!4355 = !DILocation(line: 175, column: 3, scope: !4352)
!4356 = !DILocation(line: 177, column: 33, scope: !4302)
!4357 = !DILocation(line: 177, column: 12, scope: !4302)
!4358 = !DILocation(line: 177, column: 10, scope: !4302)
!4359 = !DILocation(line: 178, column: 7, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4302, file: !3, line: 178, column: 6)
!4361 = !DILocation(line: 178, column: 6, scope: !4302)
!4362 = !DILocation(line: 179, column: 3, scope: !4360)
!4363 = !DILocation(line: 181, column: 26, scope: !4302)
!4364 = !DILocation(line: 181, column: 8, scope: !4302)
!4365 = !DILocation(line: 181, column: 6, scope: !4302)
!4366 = !DILocation(line: 182, column: 6, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4302, file: !3, line: 182, column: 6)
!4368 = !DILocation(line: 182, column: 6, scope: !4302)
!4369 = !DILocation(line: 183, column: 10, scope: !4367)
!4370 = !DILocation(line: 183, column: 3, scope: !4367)
!4371 = !DILocation(line: 185, column: 30, scope: !4302)
!4372 = !DILocation(line: 185, column: 14, scope: !4302)
!4373 = !DILocation(line: 185, column: 2, scope: !4302)
!4374 = !DILocation(line: 185, column: 7, scope: !4302)
!4375 = !DILocation(line: 185, column: 12, scope: !4302)
!4376 = !DILocation(line: 186, column: 7, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !4302, file: !3, line: 186, column: 6)
!4378 = !DILocation(line: 186, column: 12, scope: !4377)
!4379 = !DILocation(line: 186, column: 6, scope: !4302)
!4380 = !DILocation(line: 187, column: 3, scope: !4377)
!4381 = !DILocation(line: 189, column: 32, scope: !4302)
!4382 = !DILocation(line: 189, column: 8, scope: !4302)
!4383 = !DILocation(line: 189, column: 6, scope: !4302)
!4384 = !DILocation(line: 190, column: 6, scope: !4385)
!4385 = distinct !DILexicalBlock(scope: !4302, file: !3, line: 190, column: 6)
!4386 = !DILocation(line: 190, column: 6, scope: !4302)
!4387 = !DILocation(line: 191, column: 10, scope: !4385)
!4388 = !DILocation(line: 191, column: 3, scope: !4385)
!4389 = !DILocation(line: 193, column: 7, scope: !4302)
!4390 = !DILocation(line: 193, column: 12, scope: !4302)
!4391 = !DILocation(line: 193, column: 4, scope: !4302)
!4392 = !DILocation(line: 195, column: 2, scope: !4302)
!4393 = !DILocation(line: 195, column: 5, scope: !4302)
!4394 = !DILocation(line: 195, column: 10, scope: !4302)
!4395 = !DILocation(line: 196, column: 2, scope: !4302)
!4396 = !DILocation(line: 196, column: 5, scope: !4302)
!4397 = !DILocation(line: 196, column: 18, scope: !4302)
!4398 = !DILocation(line: 197, column: 14, scope: !4302)
!4399 = !DILocation(line: 197, column: 21, scope: !4302)
!4400 = !DILocation(line: 197, column: 2, scope: !4302)
!4401 = !DILocation(line: 197, column: 5, scope: !4302)
!4402 = !DILocation(line: 197, column: 12, scope: !4302)
!4403 = !DILocation(line: 198, column: 2, scope: !4302)
!4404 = !DILocation(line: 198, column: 5, scope: !4302)
!4405 = !DILocation(line: 198, column: 13, scope: !4302)
!4406 = !DILocation(line: 199, column: 6, scope: !4407)
!4407 = distinct !DILexicalBlock(scope: !4302, file: !3, line: 199, column: 6)
!4408 = !DILocation(line: 199, column: 9, scope: !4407)
!4409 = !DILocation(line: 199, column: 16, scope: !4407)
!4410 = !DILocation(line: 199, column: 6, scope: !4302)
!4411 = !DILocalVariable(name: "range_table_list", scope: !4412, file: !3, line: 200, type: !4413)
!4412 = distinct !DILexicalBlock(scope: !4407, file: !3, line: 199, column: 23)
!4413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!4414 = !DILocation(line: 200, column: 32, scope: !4412)
!4415 = !DILocation(line: 202, column: 22, scope: !4412)
!4416 = !DILocation(line: 202, column: 20, scope: !4412)
!4417 = !DILocation(line: 205, column: 8, scope: !4418)
!4418 = distinct !DILexicalBlock(scope: !4412, file: !3, line: 205, column: 7)
!4419 = !DILocation(line: 205, column: 7, scope: !4412)
!4420 = !DILocation(line: 206, column: 4, scope: !4418)
!4421 = !DILocation(line: 207, column: 25, scope: !4412)
!4422 = !DILocation(line: 207, column: 3, scope: !4412)
!4423 = !DILocation(line: 207, column: 6, scope: !4412)
!4424 = !DILocation(line: 207, column: 23, scope: !4412)
!4425 = !DILocation(line: 208, column: 10, scope: !4426)
!4426 = distinct !DILexicalBlock(scope: !4412, file: !3, line: 208, column: 3)
!4427 = !DILocation(line: 208, column: 8, scope: !4426)
!4428 = !DILocation(line: 208, column: 15, scope: !4429)
!4429 = distinct !DILexicalBlock(scope: !4426, file: !3, line: 208, column: 3)
!4430 = !DILocation(line: 208, column: 17, scope: !4429)
!4431 = !DILocation(line: 208, column: 3, scope: !4426)
!4432 = !DILocation(line: 209, column: 4, scope: !4433)
!4433 = distinct !DILexicalBlock(scope: !4429, file: !3, line: 208, column: 28)
!4434 = !DILocation(line: 209, column: 21, scope: !4433)
!4435 = !DILocation(line: 209, column: 24, scope: !4433)
!4436 = !DILocation(line: 210, column: 4, scope: !4433)
!4437 = !DILocation(line: 210, column: 26, scope: !4433)
!4438 = !DILocation(line: 210, column: 24, scope: !4433)
!4439 = !DILocation(line: 210, column: 29, scope: !4433)
!4440 = !DILocation(line: 211, column: 3, scope: !4433)
!4441 = !DILocation(line: 208, column: 24, scope: !4429)
!4442 = !DILocation(line: 208, column: 3, scope: !4429)
!4443 = distinct !{!4443, !4431, !4444}
!4444 = !DILocation(line: 211, column: 3, scope: !4426)
!4445 = !DILocation(line: 212, column: 2, scope: !4412)
!4446 = !DILocation(line: 213, column: 3, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4407, file: !3, line: 212, column: 9)
!4448 = !DILocation(line: 213, column: 6, scope: !4447)
!4449 = !DILocation(line: 213, column: 18, scope: !4447)
!4450 = !DILocation(line: 215, column: 2, scope: !4302)
!4451 = !DILocation(line: 215, column: 5, scope: !4302)
!4452 = !DILocation(line: 215, column: 16, scope: !4302)
!4453 = !DILocation(line: 217, column: 37, scope: !4302)
!4454 = !DILocation(line: 217, column: 8, scope: !4302)
!4455 = !DILocation(line: 217, column: 6, scope: !4302)
!4456 = !DILocation(line: 218, column: 6, scope: !4457)
!4457 = distinct !DILexicalBlock(scope: !4302, file: !3, line: 218, column: 6)
!4458 = !DILocation(line: 218, column: 6, scope: !4302)
!4459 = !DILocation(line: 219, column: 10, scope: !4457)
!4460 = !DILocation(line: 219, column: 3, scope: !4457)
!4461 = !DILocation(line: 221, column: 7, scope: !4302)
!4462 = !DILocation(line: 221, column: 12, scope: !4302)
!4463 = !DILocation(line: 221, column: 4, scope: !4302)
!4464 = !DILocation(line: 223, column: 2, scope: !4302)
!4465 = !DILocation(line: 223, column: 5, scope: !4302)
!4466 = !DILocation(line: 223, column: 10, scope: !4302)
!4467 = !DILocation(line: 224, column: 2, scope: !4302)
!4468 = !DILocation(line: 224, column: 5, scope: !4302)
!4469 = !DILocation(line: 224, column: 18, scope: !4302)
!4470 = !DILocation(line: 225, column: 2, scope: !4302)
!4471 = !DILocation(line: 225, column: 5, scope: !4302)
!4472 = !DILocation(line: 225, column: 12, scope: !4302)
!4473 = !DILocation(line: 226, column: 2, scope: !4302)
!4474 = !DILocation(line: 226, column: 5, scope: !4302)
!4475 = !DILocation(line: 226, column: 13, scope: !4302)
!4476 = !DILocation(line: 227, column: 2, scope: !4302)
!4477 = !DILocation(line: 227, column: 5, scope: !4302)
!4478 = !DILocation(line: 227, column: 17, scope: !4302)
!4479 = !DILocation(line: 228, column: 2, scope: !4302)
!4480 = !DILocation(line: 228, column: 5, scope: !4302)
!4481 = !DILocation(line: 228, column: 15, scope: !4302)
!4482 = !DILocation(line: 229, column: 2, scope: !4302)
!4483 = !DILocation(line: 229, column: 5, scope: !4302)
!4484 = !DILocation(line: 229, column: 17, scope: !4302)
!4485 = !DILocation(line: 232, column: 15, scope: !4302)
!4486 = !DILocation(line: 232, column: 20, scope: !4302)
!4487 = !DILocation(line: 232, column: 25, scope: !4302)
!4488 = !DILocation(line: 232, column: 2, scope: !4302)
!4489 = !DILocation(line: 234, column: 15, scope: !4302)
!4490 = !DILocation(line: 234, column: 20, scope: !4302)
!4491 = !DILocation(line: 234, column: 25, scope: !4302)
!4492 = !DILocation(line: 234, column: 2, scope: !4302)
!4493 = !DILocation(line: 236, column: 2, scope: !4302)
!4494 = !DILocation(line: 237, column: 1, scope: !4302)
!4495 = distinct !DISubprogram(name: "ni_670x_mite_init", scope: !3, file: !3, line: 137, type: !4233, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!4496 = !DILocalVariable(name: "pcidev", arg: 1, scope: !4495, file: !3, line: 137, type: !4007)
!4497 = !DILocation(line: 137, column: 46, scope: !4495)
!4498 = !DILocalVariable(name: "mite_base", scope: !4495, file: !3, line: 139, type: !127)
!4499 = !DILocation(line: 139, column: 16, scope: !4495)
!4500 = !DILocalVariable(name: "main_phys_addr", scope: !4495, file: !3, line: 140, type: !391)
!4501 = !DILocation(line: 140, column: 6, scope: !4495)
!4502 = !DILocation(line: 143, column: 30, scope: !4495)
!4503 = !DILocation(line: 143, column: 14, scope: !4495)
!4504 = !DILocation(line: 143, column: 12, scope: !4495)
!4505 = !DILocation(line: 144, column: 7, scope: !4506)
!4506 = distinct !DILexicalBlock(scope: !4495, file: !3, line: 144, column: 6)
!4507 = !DILocation(line: 144, column: 6, scope: !4495)
!4508 = !DILocation(line: 145, column: 3, scope: !4506)
!4509 = !DILocation(line: 148, column: 19, scope: !4495)
!4510 = !DILocation(line: 148, column: 17, scope: !4495)
!4511 = !DILocation(line: 149, column: 9, scope: !4495)
!4512 = !DILocation(line: 149, column: 24, scope: !4495)
!4513 = !DILocation(line: 149, column: 33, scope: !4495)
!4514 = !DILocation(line: 149, column: 43, scope: !4495)
!4515 = !DILocation(line: 149, column: 2, scope: !4495)
!4516 = !DILocation(line: 152, column: 10, scope: !4495)
!4517 = !DILocation(line: 152, column: 2, scope: !4495)
!4518 = !DILocation(line: 153, column: 2, scope: !4495)
!4519 = !DILocation(line: 154, column: 1, scope: !4495)
!4520 = distinct !DISubprogram(name: "kmalloc_array", scope: !117, file: !117, line: 584, type: !4521, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!4521 = !DISubroutineType(types: !4522)
!4522 = !{!127, !297, !297, !125}
!4523 = !DILocalVariable(name: "s", arg: 1, scope: !4524, file: !117, line: 445, type: !911)
!4524 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !117, file: !117, line: 445, type: !4525, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!4525 = !DISubroutineType(types: !4526)
!4526 = !{!127, !911, !125, !297}
!4527 = !DILocation(line: 445, column: 72, scope: !4524, inlinedAt: !4528)
!4528 = distinct !DILocation(line: 552, column: 10, scope: !4529, inlinedAt: !4534)
!4529 = distinct !DILexicalBlock(scope: !4530, file: !117, line: 540, column: 34)
!4530 = distinct !DILexicalBlock(scope: !4531, file: !117, line: 540, column: 6)
!4531 = distinct !DISubprogram(name: "kmalloc", scope: !117, file: !117, line: 538, type: !4532, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!4532 = !DISubroutineType(types: !4533)
!4533 = !{!127, !297, !125}
!4534 = distinct !DILocation(line: 591, column: 10, scope: !4535)
!4535 = distinct !DILexicalBlock(scope: !4520, file: !117, line: 590, column: 6)
!4536 = !DILocalVariable(name: "flags", arg: 2, scope: !4524, file: !117, line: 446, type: !125)
!4537 = !DILocation(line: 446, column: 9, scope: !4524, inlinedAt: !4528)
!4538 = !DILocalVariable(name: "size", arg: 3, scope: !4524, file: !117, line: 446, type: !297)
!4539 = !DILocation(line: 446, column: 23, scope: !4524, inlinedAt: !4528)
!4540 = !DILocalVariable(name: "ret", scope: !4524, file: !117, line: 448, type: !127)
!4541 = !DILocation(line: 448, column: 8, scope: !4524, inlinedAt: !4528)
!4542 = !DILocalVariable(name: "flags", arg: 1, scope: !4543, file: !117, line: 318, type: !125)
!4543 = distinct !DISubprogram(name: "kmalloc_type", scope: !117, file: !117, line: 318, type: !4544, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!4544 = !DISubroutineType(types: !4545)
!4545 = !{!116, !125}
!4546 = !DILocation(line: 318, column: 67, scope: !4543, inlinedAt: !4547)
!4547 = distinct !DILocation(line: 553, column: 20, scope: !4529, inlinedAt: !4534)
!4548 = !DILocalVariable(name: "size", arg: 1, scope: !4549, file: !117, line: 346, type: !297)
!4549 = distinct !DISubprogram(name: "kmalloc_index", scope: !117, file: !117, line: 346, type: !4550, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!4550 = !DISubroutineType(types: !4551)
!4551 = !{!7, !297}
!4552 = !DILocation(line: 346, column: 58, scope: !4549, inlinedAt: !4553)
!4553 = distinct !DILocation(line: 547, column: 11, scope: !4529, inlinedAt: !4534)
!4554 = !DILocalVariable(name: "size", arg: 1, scope: !4555, file: !117, line: 472, type: !297)
!4555 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !117, file: !117, line: 472, type: !4556, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!4556 = !DISubroutineType(types: !4557)
!4557 = !{!127, !297, !125, !7}
!4558 = !DILocation(line: 472, column: 28, scope: !4555, inlinedAt: !4559)
!4559 = distinct !DILocation(line: 481, column: 9, scope: !4560, inlinedAt: !4561)
!4560 = distinct !DISubprogram(name: "kmalloc_large", scope: !117, file: !117, line: 478, type: !4532, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!4561 = distinct !DILocation(line: 545, column: 11, scope: !4562, inlinedAt: !4534)
!4562 = distinct !DILexicalBlock(scope: !4529, file: !117, line: 544, column: 7)
!4563 = !DILocalVariable(name: "flags", arg: 2, scope: !4555, file: !117, line: 472, type: !125)
!4564 = !DILocation(line: 472, column: 40, scope: !4555, inlinedAt: !4559)
!4565 = !DILocalVariable(name: "order", arg: 3, scope: !4555, file: !117, line: 472, type: !7)
!4566 = !DILocation(line: 472, column: 60, scope: !4555, inlinedAt: !4559)
!4567 = !DILocalVariable(name: "size", arg: 1, scope: !4560, file: !117, line: 478, type: !297)
!4568 = !DILocation(line: 478, column: 51, scope: !4560, inlinedAt: !4561)
!4569 = !DILocalVariable(name: "flags", arg: 2, scope: !4560, file: !117, line: 478, type: !125)
!4570 = !DILocation(line: 478, column: 63, scope: !4560, inlinedAt: !4561)
!4571 = !DILocalVariable(name: "order", scope: !4560, file: !117, line: 480, type: !7)
!4572 = !DILocation(line: 480, column: 15, scope: !4560, inlinedAt: !4561)
!4573 = !DILocalVariable(name: "size", arg: 1, scope: !4531, file: !117, line: 538, type: !297)
!4574 = !DILocation(line: 538, column: 45, scope: !4531, inlinedAt: !4534)
!4575 = !DILocalVariable(name: "flags", arg: 2, scope: !4531, file: !117, line: 538, type: !125)
!4576 = !DILocation(line: 538, column: 57, scope: !4531, inlinedAt: !4534)
!4577 = !DILocalVariable(name: "index", scope: !4529, file: !117, line: 542, type: !7)
!4578 = !DILocation(line: 542, column: 16, scope: !4529, inlinedAt: !4534)
!4579 = !DILocalVariable(name: "n", arg: 1, scope: !4520, file: !117, line: 584, type: !297)
!4580 = !DILocation(line: 584, column: 42, scope: !4520)
!4581 = !DILocalVariable(name: "size", arg: 2, scope: !4520, file: !117, line: 584, type: !297)
!4582 = !DILocation(line: 584, column: 52, scope: !4520)
!4583 = !DILocalVariable(name: "flags", arg: 3, scope: !4520, file: !117, line: 584, type: !125)
!4584 = !DILocation(line: 584, column: 64, scope: !4520)
!4585 = !DILocalVariable(name: "bytes", scope: !4520, file: !117, line: 586, type: !297)
!4586 = !DILocation(line: 586, column: 9, scope: !4520)
!4587 = !DILocalVariable(name: "__a", scope: !4588, file: !117, line: 588, type: !297)
!4588 = distinct !DILexicalBlock(scope: !4589, file: !117, line: 588, column: 6)
!4589 = distinct !DILexicalBlock(scope: !4520, file: !117, line: 588, column: 6)
!4590 = !DILocation(line: 588, column: 6, scope: !4588)
!4591 = !DILocalVariable(name: "__b", scope: !4588, file: !117, line: 588, type: !297)
!4592 = !DILocalVariable(name: "__d", scope: !4588, file: !117, line: 588, type: !4593)
!4593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!4594 = !DILocation(line: 588, column: 6, scope: !4589)
!4595 = !DILocation(line: 588, column: 6, scope: !4520)
!4596 = !DILocation(line: 589, column: 3, scope: !4589)
!4597 = !DILocation(line: 590, column: 27, scope: !4535)
!4598 = !DILocation(line: 590, column: 6, scope: !4535)
!4599 = !DILocation(line: 590, column: 30, scope: !4535)
!4600 = !DILocation(line: 590, column: 54, scope: !4535)
!4601 = !DILocation(line: 590, column: 33, scope: !4535)
!4602 = !DILocation(line: 590, column: 6, scope: !4520)
!4603 = !DILocation(line: 591, column: 18, scope: !4535)
!4604 = !DILocation(line: 591, column: 25, scope: !4535)
!4605 = !DILocation(line: 540, column: 27, scope: !4530, inlinedAt: !4534)
!4606 = !DILocation(line: 540, column: 6, scope: !4530, inlinedAt: !4534)
!4607 = !DILocation(line: 540, column: 6, scope: !4531, inlinedAt: !4534)
!4608 = !DILocation(line: 544, column: 7, scope: !4562, inlinedAt: !4534)
!4609 = !DILocation(line: 544, column: 12, scope: !4562, inlinedAt: !4534)
!4610 = !DILocation(line: 544, column: 7, scope: !4529, inlinedAt: !4534)
!4611 = !DILocation(line: 545, column: 25, scope: !4562, inlinedAt: !4534)
!4612 = !DILocation(line: 545, column: 31, scope: !4562, inlinedAt: !4534)
!4613 = !DILocation(line: 480, column: 33, scope: !4560, inlinedAt: !4561)
!4614 = !DILocation(line: 480, column: 23, scope: !4560, inlinedAt: !4561)
!4615 = !DILocation(line: 481, column: 29, scope: !4560, inlinedAt: !4561)
!4616 = !DILocation(line: 481, column: 35, scope: !4560, inlinedAt: !4561)
!4617 = !DILocation(line: 481, column: 42, scope: !4560, inlinedAt: !4561)
!4618 = !DILocation(line: 474, column: 23, scope: !4555, inlinedAt: !4559)
!4619 = !DILocation(line: 474, column: 29, scope: !4555, inlinedAt: !4559)
!4620 = !DILocation(line: 474, column: 36, scope: !4555, inlinedAt: !4559)
!4621 = !DILocation(line: 474, column: 9, scope: !4555, inlinedAt: !4559)
!4622 = !DILocation(line: 545, column: 4, scope: !4562, inlinedAt: !4534)
!4623 = !DILocation(line: 547, column: 25, scope: !4529, inlinedAt: !4534)
!4624 = !DILocation(line: 348, column: 7, scope: !4625, inlinedAt: !4553)
!4625 = distinct !DILexicalBlock(scope: !4549, file: !117, line: 348, column: 6)
!4626 = !DILocation(line: 348, column: 6, scope: !4549, inlinedAt: !4553)
!4627 = !DILocation(line: 349, column: 3, scope: !4625, inlinedAt: !4553)
!4628 = !DILocation(line: 351, column: 6, scope: !4629, inlinedAt: !4553)
!4629 = distinct !DILexicalBlock(scope: !4549, file: !117, line: 351, column: 6)
!4630 = !DILocation(line: 351, column: 11, scope: !4629, inlinedAt: !4553)
!4631 = !DILocation(line: 351, column: 6, scope: !4549, inlinedAt: !4553)
!4632 = !DILocation(line: 352, column: 3, scope: !4629, inlinedAt: !4553)
!4633 = !DILocation(line: 354, column: 32, scope: !4634, inlinedAt: !4553)
!4634 = distinct !DILexicalBlock(scope: !4549, file: !117, line: 354, column: 6)
!4635 = !DILocation(line: 354, column: 37, scope: !4634, inlinedAt: !4553)
!4636 = !DILocation(line: 354, column: 42, scope: !4634, inlinedAt: !4553)
!4637 = !DILocation(line: 354, column: 45, scope: !4634, inlinedAt: !4553)
!4638 = !DILocation(line: 354, column: 50, scope: !4634, inlinedAt: !4553)
!4639 = !DILocation(line: 354, column: 6, scope: !4549, inlinedAt: !4553)
!4640 = !DILocation(line: 355, column: 3, scope: !4634, inlinedAt: !4553)
!4641 = !DILocation(line: 356, column: 32, scope: !4642, inlinedAt: !4553)
!4642 = distinct !DILexicalBlock(scope: !4549, file: !117, line: 356, column: 6)
!4643 = !DILocation(line: 356, column: 37, scope: !4642, inlinedAt: !4553)
!4644 = !DILocation(line: 356, column: 43, scope: !4642, inlinedAt: !4553)
!4645 = !DILocation(line: 356, column: 46, scope: !4642, inlinedAt: !4553)
!4646 = !DILocation(line: 356, column: 51, scope: !4642, inlinedAt: !4553)
!4647 = !DILocation(line: 356, column: 6, scope: !4549, inlinedAt: !4553)
!4648 = !DILocation(line: 357, column: 3, scope: !4642, inlinedAt: !4553)
!4649 = !DILocation(line: 358, column: 6, scope: !4650, inlinedAt: !4553)
!4650 = distinct !DILexicalBlock(scope: !4549, file: !117, line: 358, column: 6)
!4651 = !DILocation(line: 358, column: 11, scope: !4650, inlinedAt: !4553)
!4652 = !DILocation(line: 358, column: 6, scope: !4549, inlinedAt: !4553)
!4653 = !DILocation(line: 358, column: 26, scope: !4650, inlinedAt: !4553)
!4654 = !DILocation(line: 359, column: 6, scope: !4655, inlinedAt: !4553)
!4655 = distinct !DILexicalBlock(scope: !4549, file: !117, line: 359, column: 6)
!4656 = !DILocation(line: 359, column: 11, scope: !4655, inlinedAt: !4553)
!4657 = !DILocation(line: 359, column: 6, scope: !4549, inlinedAt: !4553)
!4658 = !DILocation(line: 359, column: 26, scope: !4655, inlinedAt: !4553)
!4659 = !DILocation(line: 360, column: 6, scope: !4660, inlinedAt: !4553)
!4660 = distinct !DILexicalBlock(scope: !4549, file: !117, line: 360, column: 6)
!4661 = !DILocation(line: 360, column: 11, scope: !4660, inlinedAt: !4553)
!4662 = !DILocation(line: 360, column: 6, scope: !4549, inlinedAt: !4553)
!4663 = !DILocation(line: 360, column: 26, scope: !4660, inlinedAt: !4553)
!4664 = !DILocation(line: 361, column: 6, scope: !4665, inlinedAt: !4553)
!4665 = distinct !DILexicalBlock(scope: !4549, file: !117, line: 361, column: 6)
!4666 = !DILocation(line: 361, column: 11, scope: !4665, inlinedAt: !4553)
!4667 = !DILocation(line: 361, column: 6, scope: !4549, inlinedAt: !4553)
!4668 = !DILocation(line: 361, column: 26, scope: !4665, inlinedAt: !4553)
!4669 = !DILocation(line: 362, column: 6, scope: !4670, inlinedAt: !4553)
!4670 = distinct !DILexicalBlock(scope: !4549, file: !117, line: 362, column: 6)
!4671 = !DILocation(line: 362, column: 11, scope: !4670, inlinedAt: !4553)
!4672 = !DILocation(line: 362, column: 6, scope: !4549, inlinedAt: !4553)
!4673 = !DILocation(line: 362, column: 26, scope: !4670, inlinedAt: !4553)
!4674 = !DILocation(line: 363, column: 6, scope: !4675, inlinedAt: !4553)
!4675 = distinct !DILexicalBlock(scope: !4549, file: !117, line: 363, column: 6)
!4676 = !DILocation(line: 363, column: 11, scope: !4675, inlinedAt: !4553)
!4677 = !DILocation(line: 363, column: 6, scope: !4549, inlinedAt: !4553)
!4678 = !DILocation(line: 363, column: 26, scope: !4675, inlinedAt: !4553)
!4679 = !DILocation(line: 364, column: 6, scope: !4680, inlinedAt: !4553)
!4680 = distinct !DILexicalBlock(scope: !4549, file: !117, line: 364, column: 6)
!4681 = !DILocation(line: 364, column: 11, scope: !4680, inlinedAt: !4553)
!4682 = !DILocation(line: 364, column: 6, scope: !4549, inlinedAt: !4553)
!4683 = !DILocation(line: 364, column: 26, scope: !4680, inlinedAt: !4553)
!4684 = !DILocation(line: 365, column: 6, scope: !4685, inlinedAt: !4553)
!4685 = distinct !DILexicalBlock(scope: !4549, file: !117, line: 365, column: 6)
!4686 = !DILocation(line: 365, column: 11, scope: !4685, inlinedAt: !4553)
!4687 = !DILocation(line: 365, column: 6, scope: !4549, inlinedAt: !4553)
!4688 = !DILocation(line: 365, column: 26, scope: !4685, inlinedAt: !4553)
!4689 = !DILocation(line: 366, column: 6, scope: !4690, inlinedAt: !4553)
!4690 = distinct !DILexicalBlock(scope: !4549, file: !117, line: 366, column: 6)
!4691 = !DILocation(line: 366, column: 11, scope: !4690, inlinedAt: !4553)
!4692 = !DILocation(line: 366, column: 6, scope: !4549, inlinedAt: !4553)
!4693 = !DILocation(line: 366, column: 26, scope: !4690, inlinedAt: !4553)
!4694 = !DILocation(line: 367, column: 6, scope: !4695, inlinedAt: !4553)
!4695 = distinct !DILexicalBlock(scope: !4549, file: !117, line: 367, column: 6)
!4696 = !DILocation(line: 367, column: 11, scope: !4695, inlinedAt: !4553)
!4697 = !DILocation(line: 367, column: 6, scope: !4549, inlinedAt: !4553)
!4698 = !DILocation(line: 367, column: 26, scope: !4695, inlinedAt: !4553)
!4699 = !DILocation(line: 368, column: 6, scope: !4700, inlinedAt: !4553)
!4700 = distinct !DILexicalBlock(scope: !4549, file: !117, line: 368, column: 6)
!4701 = !DILocation(line: 368, column: 11, scope: !4700, inlinedAt: !4553)
!4702 = !DILocation(line: 368, column: 6, scope: !4549, inlinedAt: !4553)
!4703 = !DILocation(line: 368, column: 26, scope: !4700, inlinedAt: !4553)
!4704 = !DILocation(line: 369, column: 6, scope: !4705, inlinedAt: !4553)
!4705 = distinct !DILexicalBlock(scope: !4549, file: !117, line: 369, column: 6)
!4706 = !DILocation(line: 369, column: 11, scope: !4705, inlinedAt: !4553)
!4707 = !DILocation(line: 369, column: 6, scope: !4549, inlinedAt: !4553)
!4708 = !DILocation(line: 369, column: 26, scope: !4705, inlinedAt: !4553)
!4709 = !DILocation(line: 370, column: 6, scope: !4710, inlinedAt: !4553)
!4710 = distinct !DILexicalBlock(scope: !4549, file: !117, line: 370, column: 6)
!4711 = !DILocation(line: 370, column: 11, scope: !4710, inlinedAt: !4553)
!4712 = !DILocation(line: 370, column: 6, scope: !4549, inlinedAt: !4553)
!4713 = !DILocation(line: 370, column: 26, scope: !4710, inlinedAt: !4553)
!4714 = !DILocation(line: 371, column: 6, scope: !4715, inlinedAt: !4553)
!4715 = distinct !DILexicalBlock(scope: !4549, file: !117, line: 371, column: 6)
!4716 = !DILocation(line: 371, column: 11, scope: !4715, inlinedAt: !4553)
!4717 = !DILocation(line: 371, column: 6, scope: !4549, inlinedAt: !4553)
!4718 = !DILocation(line: 371, column: 26, scope: !4715, inlinedAt: !4553)
!4719 = !DILocation(line: 372, column: 6, scope: !4720, inlinedAt: !4553)
!4720 = distinct !DILexicalBlock(scope: !4549, file: !117, line: 372, column: 6)
!4721 = !DILocation(line: 372, column: 11, scope: !4720, inlinedAt: !4553)
!4722 = !DILocation(line: 372, column: 6, scope: !4549, inlinedAt: !4553)
!4723 = !DILocation(line: 372, column: 26, scope: !4720, inlinedAt: !4553)
!4724 = !DILocation(line: 373, column: 6, scope: !4725, inlinedAt: !4553)
!4725 = distinct !DILexicalBlock(scope: !4549, file: !117, line: 373, column: 6)
!4726 = !DILocation(line: 373, column: 11, scope: !4725, inlinedAt: !4553)
!4727 = !DILocation(line: 373, column: 6, scope: !4549, inlinedAt: !4553)
!4728 = !DILocation(line: 373, column: 26, scope: !4725, inlinedAt: !4553)
!4729 = !DILocation(line: 374, column: 6, scope: !4730, inlinedAt: !4553)
!4730 = distinct !DILexicalBlock(scope: !4549, file: !117, line: 374, column: 6)
!4731 = !DILocation(line: 374, column: 11, scope: !4730, inlinedAt: !4553)
!4732 = !DILocation(line: 374, column: 6, scope: !4549, inlinedAt: !4553)
!4733 = !DILocation(line: 374, column: 26, scope: !4730, inlinedAt: !4553)
!4734 = !DILocation(line: 375, column: 6, scope: !4735, inlinedAt: !4553)
!4735 = distinct !DILexicalBlock(scope: !4549, file: !117, line: 375, column: 6)
!4736 = !DILocation(line: 375, column: 11, scope: !4735, inlinedAt: !4553)
!4737 = !DILocation(line: 375, column: 6, scope: !4549, inlinedAt: !4553)
!4738 = !DILocation(line: 375, column: 27, scope: !4735, inlinedAt: !4553)
!4739 = !DILocation(line: 376, column: 6, scope: !4740, inlinedAt: !4553)
!4740 = distinct !DILexicalBlock(scope: !4549, file: !117, line: 376, column: 6)
!4741 = !DILocation(line: 376, column: 11, scope: !4740, inlinedAt: !4553)
!4742 = !DILocation(line: 376, column: 6, scope: !4549, inlinedAt: !4553)
!4743 = !DILocation(line: 376, column: 32, scope: !4740, inlinedAt: !4553)
!4744 = !DILocation(line: 377, column: 6, scope: !4745, inlinedAt: !4553)
!4745 = distinct !DILexicalBlock(scope: !4549, file: !117, line: 377, column: 6)
!4746 = !DILocation(line: 377, column: 11, scope: !4745, inlinedAt: !4553)
!4747 = !DILocation(line: 377, column: 6, scope: !4549, inlinedAt: !4553)
!4748 = !DILocation(line: 377, column: 32, scope: !4745, inlinedAt: !4553)
!4749 = !DILocation(line: 378, column: 6, scope: !4750, inlinedAt: !4553)
!4750 = distinct !DILexicalBlock(scope: !4549, file: !117, line: 378, column: 6)
!4751 = !DILocation(line: 378, column: 11, scope: !4750, inlinedAt: !4553)
!4752 = !DILocation(line: 378, column: 6, scope: !4549, inlinedAt: !4553)
!4753 = !DILocation(line: 378, column: 32, scope: !4750, inlinedAt: !4553)
!4754 = !DILocation(line: 379, column: 6, scope: !4755, inlinedAt: !4553)
!4755 = distinct !DILexicalBlock(scope: !4549, file: !117, line: 379, column: 6)
!4756 = !DILocation(line: 379, column: 11, scope: !4755, inlinedAt: !4553)
!4757 = !DILocation(line: 379, column: 6, scope: !4549, inlinedAt: !4553)
!4758 = !DILocation(line: 379, column: 33, scope: !4755, inlinedAt: !4553)
!4759 = !DILocation(line: 380, column: 6, scope: !4760, inlinedAt: !4553)
!4760 = distinct !DILexicalBlock(scope: !4549, file: !117, line: 380, column: 6)
!4761 = !DILocation(line: 380, column: 11, scope: !4760, inlinedAt: !4553)
!4762 = !DILocation(line: 380, column: 6, scope: !4549, inlinedAt: !4553)
!4763 = !DILocation(line: 380, column: 33, scope: !4760, inlinedAt: !4553)
!4764 = !DILocation(line: 381, column: 6, scope: !4765, inlinedAt: !4553)
!4765 = distinct !DILexicalBlock(scope: !4549, file: !117, line: 381, column: 6)
!4766 = !DILocation(line: 381, column: 11, scope: !4765, inlinedAt: !4553)
!4767 = !DILocation(line: 381, column: 6, scope: !4549, inlinedAt: !4553)
!4768 = !DILocation(line: 381, column: 33, scope: !4765, inlinedAt: !4553)
!4769 = !DILocation(line: 382, column: 2, scope: !4770, inlinedAt: !4553)
!4770 = distinct !DILexicalBlock(scope: !4771, file: !117, line: 382, column: 2)
!4771 = distinct !DILexicalBlock(scope: !4549, file: !117, line: 382, column: 2)
!4772 = !{i32 -2144130212, i32 -2144130183, i32 -2144130137, i32 -2144130079, i32 -2144130025, i32 -2144129971, i32 -2144129916, i32 -2144129885}
!4773 = !DILocation(line: 382, column: 2, scope: !4774, inlinedAt: !4553)
!4774 = distinct !DILexicalBlock(scope: !4775, file: !117, line: 382, column: 2)
!4775 = distinct !DILexicalBlock(scope: !4771, file: !117, line: 382, column: 2)
!4776 = !{i32 -2144129442, i32 -2144129435, i32 -2144129381, i32 -2144129350, i32 -2144129320}
!4777 = !DILocation(line: 382, column: 2, scope: !4775, inlinedAt: !4553)
!4778 = !DILocation(line: 386, column: 1, scope: !4549, inlinedAt: !4553)
!4779 = !DILocation(line: 547, column: 9, scope: !4529, inlinedAt: !4534)
!4780 = !DILocation(line: 549, column: 8, scope: !4781, inlinedAt: !4534)
!4781 = distinct !DILexicalBlock(scope: !4529, file: !117, line: 549, column: 7)
!4782 = !DILocation(line: 549, column: 7, scope: !4529, inlinedAt: !4534)
!4783 = !DILocation(line: 550, column: 4, scope: !4781, inlinedAt: !4534)
!4784 = !DILocation(line: 553, column: 33, scope: !4529, inlinedAt: !4534)
!4785 = !DILocation(line: 325, column: 6, scope: !4786, inlinedAt: !4547)
!4786 = distinct !DILexicalBlock(scope: !4543, file: !117, line: 325, column: 6)
!4787 = !DILocation(line: 325, column: 6, scope: !4543, inlinedAt: !4547)
!4788 = !DILocation(line: 326, column: 3, scope: !4786, inlinedAt: !4547)
!4789 = !DILocation(line: 332, column: 9, scope: !4543, inlinedAt: !4547)
!4790 = !DILocation(line: 332, column: 15, scope: !4543, inlinedAt: !4547)
!4791 = !DILocation(line: 332, column: 2, scope: !4543, inlinedAt: !4547)
!4792 = !DILocation(line: 336, column: 1, scope: !4543, inlinedAt: !4547)
!4793 = !DILocation(line: 553, column: 5, scope: !4529, inlinedAt: !4534)
!4794 = !DILocation(line: 553, column: 41, scope: !4529, inlinedAt: !4534)
!4795 = !DILocation(line: 554, column: 5, scope: !4529, inlinedAt: !4534)
!4796 = !DILocation(line: 554, column: 12, scope: !4529, inlinedAt: !4534)
!4797 = !DILocation(line: 448, column: 31, scope: !4524, inlinedAt: !4528)
!4798 = !DILocation(line: 448, column: 34, scope: !4524, inlinedAt: !4528)
!4799 = !DILocation(line: 448, column: 14, scope: !4524, inlinedAt: !4528)
!4800 = !DILocation(line: 450, column: 22, scope: !4524, inlinedAt: !4528)
!4801 = !DILocation(line: 450, column: 25, scope: !4524, inlinedAt: !4528)
!4802 = !DILocation(line: 450, column: 30, scope: !4524, inlinedAt: !4528)
!4803 = !DILocation(line: 450, column: 36, scope: !4524, inlinedAt: !4528)
!4804 = !DILocation(line: 450, column: 8, scope: !4524, inlinedAt: !4528)
!4805 = !DILocation(line: 450, column: 6, scope: !4524, inlinedAt: !4528)
!4806 = !DILocation(line: 451, column: 9, scope: !4524, inlinedAt: !4528)
!4807 = !DILocation(line: 552, column: 3, scope: !4529, inlinedAt: !4534)
!4808 = !DILocation(line: 557, column: 19, scope: !4531, inlinedAt: !4534)
!4809 = !DILocation(line: 557, column: 25, scope: !4531, inlinedAt: !4534)
!4810 = !DILocation(line: 557, column: 9, scope: !4531, inlinedAt: !4534)
!4811 = !DILocation(line: 557, column: 2, scope: !4531, inlinedAt: !4534)
!4812 = !DILocation(line: 558, column: 1, scope: !4531, inlinedAt: !4534)
!4813 = !DILocation(line: 591, column: 3, scope: !4535)
!4814 = !DILocation(line: 592, column: 19, scope: !4520)
!4815 = !DILocation(line: 592, column: 26, scope: !4520)
!4816 = !DILocation(line: 592, column: 9, scope: !4520)
!4817 = !DILocation(line: 592, column: 2, scope: !4520)
!4818 = !DILocation(line: 593, column: 1, scope: !4520)
!4819 = distinct !DISubprogram(name: "ni_670x_ao_insn_write", scope: !3, file: !3, line: 72, type: !3900, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!4820 = !DILocalVariable(name: "dev", arg: 1, scope: !4819, file: !3, line: 72, type: !177)
!4821 = !DILocation(line: 72, column: 56, scope: !4819)
!4822 = !DILocalVariable(name: "s", arg: 2, scope: !4819, file: !3, line: 73, type: !3803)
!4823 = !DILocation(line: 73, column: 31, scope: !4819)
!4824 = !DILocalVariable(name: "insn", arg: 3, scope: !4819, file: !3, line: 74, type: !3902)
!4825 = !DILocation(line: 74, column: 26, scope: !4819)
!4826 = !DILocalVariable(name: "data", arg: 4, scope: !4819, file: !3, line: 75, type: !2655)
!4827 = !DILocation(line: 75, column: 20, scope: !4819)
!4828 = !DILocalVariable(name: "chan", scope: !4819, file: !3, line: 77, type: !7)
!4829 = !DILocation(line: 77, column: 15, scope: !4819)
!4830 = !DILocation(line: 77, column: 22, scope: !4819)
!4831 = !DILocalVariable(name: "val", scope: !4819, file: !3, line: 78, type: !7)
!4832 = !DILocation(line: 78, column: 15, scope: !4819)
!4833 = !DILocation(line: 78, column: 21, scope: !4819)
!4834 = !DILocation(line: 78, column: 24, scope: !4819)
!4835 = !DILocation(line: 78, column: 33, scope: !4819)
!4836 = !DILocalVariable(name: "i", scope: !4819, file: !3, line: 79, type: !124)
!4837 = !DILocation(line: 79, column: 6, scope: !4819)
!4838 = !DILocation(line: 91, column: 9, scope: !4839)
!4839 = distinct !DILexicalBlock(scope: !4819, file: !3, line: 91, column: 2)
!4840 = !DILocation(line: 91, column: 7, scope: !4839)
!4841 = !DILocation(line: 91, column: 14, scope: !4842)
!4842 = distinct !DILexicalBlock(scope: !4839, file: !3, line: 91, column: 2)
!4843 = !DILocation(line: 91, column: 18, scope: !4842)
!4844 = !DILocation(line: 91, column: 24, scope: !4842)
!4845 = !DILocation(line: 91, column: 16, scope: !4842)
!4846 = !DILocation(line: 91, column: 2, scope: !4839)
!4847 = !DILocation(line: 92, column: 9, scope: !4848)
!4848 = distinct !DILexicalBlock(scope: !4842, file: !3, line: 91, column: 32)
!4849 = !DILocation(line: 92, column: 14, scope: !4848)
!4850 = !DILocation(line: 92, column: 7, scope: !4848)
!4851 = !DILocation(line: 94, column: 12, scope: !4848)
!4852 = !DILocation(line: 94, column: 17, scope: !4848)
!4853 = !DILocation(line: 94, column: 23, scope: !4848)
!4854 = !DILocation(line: 94, column: 33, scope: !4848)
!4855 = !DILocation(line: 94, column: 38, scope: !4848)
!4856 = !DILocation(line: 94, column: 44, scope: !4848)
!4857 = !DILocation(line: 94, column: 29, scope: !4848)
!4858 = !DILocation(line: 95, column: 10, scope: !4848)
!4859 = !DILocation(line: 95, column: 15, scope: !4848)
!4860 = !DILocation(line: 95, column: 20, scope: !4848)
!4861 = !DILocation(line: 94, column: 3, scope: !4848)
!4862 = !DILocation(line: 97, column: 10, scope: !4848)
!4863 = !DILocation(line: 97, column: 15, scope: !4848)
!4864 = !DILocation(line: 97, column: 20, scope: !4848)
!4865 = !DILocation(line: 97, column: 25, scope: !4848)
!4866 = !DILocation(line: 97, column: 3, scope: !4848)
!4867 = !DILocation(line: 98, column: 2, scope: !4848)
!4868 = !DILocation(line: 91, column: 28, scope: !4842)
!4869 = !DILocation(line: 91, column: 2, scope: !4842)
!4870 = distinct !{!4870, !4846, !4871}
!4871 = !DILocation(line: 98, column: 2, scope: !4839)
!4872 = !DILocation(line: 99, column: 22, scope: !4819)
!4873 = !DILocation(line: 99, column: 2, scope: !4819)
!4874 = !DILocation(line: 99, column: 5, scope: !4819)
!4875 = !DILocation(line: 99, column: 14, scope: !4819)
!4876 = !DILocation(line: 99, column: 20, scope: !4819)
!4877 = !DILocation(line: 101, column: 9, scope: !4819)
!4878 = !DILocation(line: 101, column: 15, scope: !4819)
!4879 = !DILocation(line: 101, column: 2, scope: !4819)
!4880 = distinct !DISubprogram(name: "ni_670x_dio_insn_bits", scope: !3, file: !3, line: 104, type: !3900, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!4881 = !DILocalVariable(name: "dev", arg: 1, scope: !4880, file: !3, line: 104, type: !177)
!4882 = !DILocation(line: 104, column: 56, scope: !4880)
!4883 = !DILocalVariable(name: "s", arg: 2, scope: !4880, file: !3, line: 105, type: !3803)
!4884 = !DILocation(line: 105, column: 31, scope: !4880)
!4885 = !DILocalVariable(name: "insn", arg: 3, scope: !4880, file: !3, line: 106, type: !3902)
!4886 = !DILocation(line: 106, column: 26, scope: !4880)
!4887 = !DILocalVariable(name: "data", arg: 4, scope: !4880, file: !3, line: 107, type: !2655)
!4888 = !DILocation(line: 107, column: 20, scope: !4880)
!4889 = !DILocation(line: 109, column: 30, scope: !4890)
!4890 = distinct !DILexicalBlock(scope: !4880, file: !3, line: 109, column: 6)
!4891 = !DILocation(line: 109, column: 33, scope: !4890)
!4892 = !DILocation(line: 109, column: 6, scope: !4890)
!4893 = !DILocation(line: 109, column: 6, scope: !4880)
!4894 = !DILocation(line: 110, column: 10, scope: !4890)
!4895 = !DILocation(line: 110, column: 13, scope: !4890)
!4896 = !DILocation(line: 110, column: 20, scope: !4890)
!4897 = !DILocation(line: 110, column: 25, scope: !4890)
!4898 = !DILocation(line: 110, column: 30, scope: !4890)
!4899 = !DILocation(line: 110, column: 3, scope: !4890)
!4900 = !DILocation(line: 112, column: 18, scope: !4880)
!4901 = !DILocation(line: 112, column: 23, scope: !4880)
!4902 = !DILocation(line: 112, column: 28, scope: !4880)
!4903 = !DILocation(line: 112, column: 12, scope: !4880)
!4904 = !DILocation(line: 112, column: 2, scope: !4880)
!4905 = !DILocation(line: 112, column: 10, scope: !4880)
!4906 = !DILocation(line: 114, column: 9, scope: !4880)
!4907 = !DILocation(line: 114, column: 15, scope: !4880)
!4908 = !DILocation(line: 114, column: 2, scope: !4880)
!4909 = distinct !DISubprogram(name: "ni_670x_dio_insn_config", scope: !3, file: !3, line: 117, type: !3900, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!4910 = !DILocalVariable(name: "dev", arg: 1, scope: !4909, file: !3, line: 117, type: !177)
!4911 = !DILocation(line: 117, column: 58, scope: !4909)
!4912 = !DILocalVariable(name: "s", arg: 2, scope: !4909, file: !3, line: 118, type: !3803)
!4913 = !DILocation(line: 118, column: 33, scope: !4909)
!4914 = !DILocalVariable(name: "insn", arg: 3, scope: !4909, file: !3, line: 119, type: !3902)
!4915 = !DILocation(line: 119, column: 28, scope: !4909)
!4916 = !DILocalVariable(name: "data", arg: 4, scope: !4909, file: !3, line: 120, type: !2655)
!4917 = !DILocation(line: 120, column: 22, scope: !4909)
!4918 = !DILocalVariable(name: "ret", scope: !4909, file: !3, line: 122, type: !124)
!4919 = !DILocation(line: 122, column: 6, scope: !4909)
!4920 = !DILocation(line: 124, column: 31, scope: !4909)
!4921 = !DILocation(line: 124, column: 36, scope: !4909)
!4922 = !DILocation(line: 124, column: 39, scope: !4909)
!4923 = !DILocation(line: 124, column: 45, scope: !4909)
!4924 = !DILocation(line: 124, column: 8, scope: !4909)
!4925 = !DILocation(line: 124, column: 6, scope: !4909)
!4926 = !DILocation(line: 125, column: 6, scope: !4927)
!4927 = distinct !DILexicalBlock(scope: !4909, file: !3, line: 125, column: 6)
!4928 = !DILocation(line: 125, column: 6, scope: !4909)
!4929 = !DILocation(line: 126, column: 10, scope: !4927)
!4930 = !DILocation(line: 126, column: 3, scope: !4927)
!4931 = !DILocation(line: 128, column: 9, scope: !4909)
!4932 = !DILocation(line: 128, column: 12, scope: !4909)
!4933 = !DILocation(line: 128, column: 21, scope: !4909)
!4934 = !DILocation(line: 128, column: 26, scope: !4909)
!4935 = !DILocation(line: 128, column: 31, scope: !4909)
!4936 = !DILocation(line: 128, column: 2, scope: !4909)
!4937 = !DILocation(line: 130, column: 9, scope: !4909)
!4938 = !DILocation(line: 130, column: 15, scope: !4909)
!4939 = !DILocation(line: 130, column: 2, scope: !4909)
!4940 = !DILocation(line: 131, column: 1, scope: !4909)
!4941 = distinct !DISubprogram(name: "writel", scope: !4942, file: !4942, line: 67, type: !4943, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!4942 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!4943 = !DISubroutineType(types: !4944)
!4944 = !{null, !7, !4945}
!4945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4946, size: 64)
!4946 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4947 = !DILocalVariable(name: "val", arg: 1, scope: !4941, file: !4942, line: 67, type: !7)
!4948 = !DILocation(line: 67, column: 1, scope: !4941)
!4949 = !DILocalVariable(name: "addr", arg: 2, scope: !4941, file: !4942, line: 67, type: !4945)
!4950 = !{i32 -2143336823}
!4951 = distinct !DISubprogram(name: "__must_check_overflow", scope: !4952, file: !4952, line: 52, type: !4953, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!4952 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!4953 = !DISubroutineType(types: !4954)
!4954 = !{!466, !466}
!4955 = !DILocalVariable(name: "overflow", arg: 1, scope: !4951, file: !4952, line: 52, type: !466)
!4956 = !DILocation(line: 52, column: 60, scope: !4951)
!4957 = !DILocation(line: 54, column: 9, scope: !4951)
!4958 = !DILocation(line: 54, column: 2, scope: !4951)
!4959 = distinct !DISubprogram(name: "get_order", scope: !4960, file: !4960, line: 29, type: !4961, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!4960 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4961 = !DISubroutineType(types: !4962)
!4962 = !{!124, !300}
!4963 = !DILocalVariable(name: "x", arg: 1, scope: !4964, file: !4965, line: 366, type: !398)
!4964 = distinct !DISubprogram(name: "fls64", scope: !4965, file: !4965, line: 366, type: !4966, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!4965 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4966 = !DISubroutineType(types: !4967)
!4967 = !{!124, !398}
!4968 = !DILocation(line: 366, column: 40, scope: !4964, inlinedAt: !4969)
!4969 = distinct !DILocation(line: 46, column: 9, scope: !4959)
!4970 = !DILocalVariable(name: "bitpos", scope: !4964, file: !4965, line: 368, type: !124)
!4971 = !DILocation(line: 368, column: 6, scope: !4964, inlinedAt: !4969)
!4972 = !DILocalVariable(name: "size", arg: 1, scope: !4959, file: !4960, line: 29, type: !300)
!4973 = !DILocation(line: 29, column: 63, scope: !4959)
!4974 = !DILocation(line: 31, column: 27, scope: !4975)
!4975 = distinct !DILexicalBlock(scope: !4959, file: !4960, line: 31, column: 6)
!4976 = !DILocation(line: 31, column: 6, scope: !4975)
!4977 = !DILocation(line: 31, column: 6, scope: !4959)
!4978 = !DILocation(line: 32, column: 8, scope: !4979)
!4979 = distinct !DILexicalBlock(scope: !4980, file: !4960, line: 32, column: 7)
!4980 = distinct !DILexicalBlock(scope: !4975, file: !4960, line: 31, column: 34)
!4981 = !DILocation(line: 32, column: 7, scope: !4980)
!4982 = !DILocation(line: 33, column: 4, scope: !4979)
!4983 = !DILocation(line: 35, column: 7, scope: !4984)
!4984 = distinct !DILexicalBlock(scope: !4980, file: !4960, line: 35, column: 7)
!4985 = !DILocation(line: 35, column: 12, scope: !4984)
!4986 = !DILocation(line: 35, column: 7, scope: !4980)
!4987 = !DILocation(line: 36, column: 4, scope: !4984)
!4988 = !DILocation(line: 38, column: 10, scope: !4980)
!4989 = !DILocation(line: 38, column: 28, scope: !4980)
!4990 = !DILocation(line: 38, column: 41, scope: !4980)
!4991 = !DILocation(line: 38, column: 3, scope: !4980)
!4992 = !DILocation(line: 41, column: 6, scope: !4959)
!4993 = !DILocation(line: 42, column: 7, scope: !4959)
!4994 = !DILocation(line: 46, column: 15, scope: !4959)
!4995 = !DILocation(line: 374, column: 2, scope: !4964, inlinedAt: !4969)
!4996 = !DILocation(line: 376, column: 14, scope: !4964, inlinedAt: !4969)
!4997 = !{i32 303251}
!4998 = !DILocation(line: 377, column: 9, scope: !4964, inlinedAt: !4969)
!4999 = !DILocation(line: 377, column: 16, scope: !4964, inlinedAt: !4969)
!5000 = !DILocation(line: 46, column: 2, scope: !4959)
!5001 = !DILocation(line: 48, column: 1, scope: !4959)
!5002 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5003, file: !5003, line: 30, type: !5004, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!5003 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5004 = !DISubroutineType(types: !5005)
!5005 = !{!124, !397}
!5006 = !DILocation(line: 366, column: 40, scope: !4964, inlinedAt: !5007)
!5007 = distinct !DILocation(line: 32, column: 9, scope: !5002)
!5008 = !DILocation(line: 368, column: 6, scope: !4964, inlinedAt: !5007)
!5009 = !DILocalVariable(name: "n", arg: 1, scope: !5002, file: !5003, line: 30, type: !397)
!5010 = !DILocation(line: 30, column: 21, scope: !5002)
!5011 = !DILocation(line: 32, column: 15, scope: !5002)
!5012 = !DILocation(line: 374, column: 2, scope: !4964, inlinedAt: !5007)
!5013 = !DILocation(line: 376, column: 14, scope: !4964, inlinedAt: !5007)
!5014 = !DILocation(line: 377, column: 9, scope: !4964, inlinedAt: !5007)
!5015 = !DILocation(line: 377, column: 16, scope: !4964, inlinedAt: !5007)
!5016 = !DILocation(line: 32, column: 18, scope: !5002)
!5017 = !DILocation(line: 32, column: 2, scope: !5002)
!5018 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5019, file: !5019, line: 137, type: !5020, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!5019 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5020 = !DISubroutineType(types: !5021)
!5021 = !{!127, !911, !2101, !297, !125}
!5022 = !DILocalVariable(name: "s", arg: 1, scope: !5018, file: !5019, line: 137, type: !911)
!5023 = !DILocation(line: 137, column: 54, scope: !5018)
!5024 = !DILocalVariable(name: "object", arg: 2, scope: !5018, file: !5019, line: 137, type: !2101)
!5025 = !DILocation(line: 137, column: 69, scope: !5018)
!5026 = !DILocalVariable(name: "size", arg: 3, scope: !5018, file: !5019, line: 138, type: !297)
!5027 = !DILocation(line: 138, column: 12, scope: !5018)
!5028 = !DILocalVariable(name: "flags", arg: 4, scope: !5018, file: !5019, line: 138, type: !125)
!5029 = !DILocation(line: 138, column: 24, scope: !5018)
!5030 = !DILocation(line: 140, column: 17, scope: !5018)
!5031 = !DILocation(line: 140, column: 2, scope: !5018)
!5032 = distinct !DISubprogram(name: "readl", scope: !4942, file: !4942, line: 59, type: !5033, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!5033 = !DISubroutineType(types: !5034)
!5034 = !{!7, !5035}
!5035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5036, size: 64)
!5036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4946)
!5037 = !DILocalVariable(name: "addr", arg: 1, scope: !5032, file: !4942, line: 59, type: !5035)
!5038 = !DILocation(line: 59, column: 1, scope: !5032)
!5039 = !DILocalVariable(name: "ret", scope: !5032, file: !4942, line: 59, type: !7)
!5040 = !{i32 -2143339216}
!5041 = distinct !DISubprogram(name: "ni_670x_pci_probe", scope: !3, file: !3, line: 258, type: !4005, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!5042 = !DILocalVariable(name: "dev", arg: 1, scope: !5041, file: !3, line: 258, type: !4007)
!5043 = !DILocation(line: 258, column: 46, scope: !5041)
!5044 = !DILocalVariable(name: "id", arg: 2, scope: !5041, file: !3, line: 259, type: !3992)
!5045 = !DILocation(line: 259, column: 37, scope: !5041)
!5046 = !DILocation(line: 261, column: 32, scope: !5041)
!5047 = !DILocation(line: 261, column: 54, scope: !5041)
!5048 = !DILocation(line: 261, column: 58, scope: !5041)
!5049 = !DILocation(line: 261, column: 9, scope: !5041)
!5050 = !DILocation(line: 261, column: 2, scope: !5041)
