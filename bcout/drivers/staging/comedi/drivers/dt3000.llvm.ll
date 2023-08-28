; ModuleID = '../bcout/drivers/staging/comedi/drivers/dt3000.llvm.bc'
source_filename = "drivers/staging/comedi/drivers/dt3000.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_dt3000_driver_init6:\09\09\09"
module asm ".long\09dt3000_driver_init - .\09\09\09"
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
%struct.dt3k_boardtype = type { i8*, i32, i32, %struct.comedi_lrange*, i8 }
%struct.dt3k_private = type { i32, i32, i32 }

@__UNIQUE_ID___addressable_dt3000_driver_init234 = internal global i8* bitcast (i32 ()* @dt3000_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@dt3000_driver = internal global %struct.comedi_driver { %struct.comedi_driver* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), %struct.module* null, i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* null, void (%struct.comedi_device*)* @comedi_pci_detach, i32 (%struct.comedi_device*, i64)* @dt3000_auto_attach, i32 0, i8** null, i32 0 }, align 8, !dbg !168
@dt3000_pci_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), %struct.pci_device_id* getelementptr inbounds ([8 x %struct.pci_device_id], [8 x %struct.pci_device_id]* @dt3000_pci_table, i32 0, i32 0), i32 (%struct.pci_dev*, %struct.pci_device_id*)* @dt3000_pci_probe, void (%struct.pci_dev*)* @comedi_pci_auto_unconfig, i32 (%struct.pci_dev*, i32)* null, i32 (%struct.pci_dev*)* null, void (%struct.pci_dev*)* null, i32 (%struct.pci_dev*, i32)* null, %struct.pci_error_handlers* null, %struct.attribute_group** null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, align 8, !dbg !4007
@__exitcall_dt3000_driver_exit = internal global void ()* @dt3000_driver_exit, section ".exitcall.exit", align 8, !dbg !139
@__UNIQUE_ID_author235 = internal constant [44 x i8] c"dt3000.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1, !dbg !146
@__UNIQUE_ID_description236 = internal constant [75 x i8] c"dt3000.description=Comedi driver for Data Translation DT3000 series boards\00", section ".modinfo", align 1, !dbg !153
@__UNIQUE_ID_file237 = internal constant [50 x i8] c"dt3000.file=drivers/staging/comedi/drivers/dt3000\00", section ".modinfo", align 1, !dbg !158
@__UNIQUE_ID_license238 = internal constant [19 x i8] c"dt3000.license=GPL\00", section ".modinfo", align 1, !dbg !163
@.str = private unnamed_addr constant [7 x i8] c"dt3000\00", align 1
@dt3k_boardtypes = internal constant [7 x %struct.dt3k_boardtype] [%struct.dt3k_boardtype { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 16, i32 3000, %struct.comedi_lrange* bitcast ({ i32, [4 x %struct.comedi_krange] }* @range_dt3000_ai to %struct.comedi_lrange*), i8 2 }, %struct.dt3k_boardtype { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 16, i32 3000, %struct.comedi_lrange* bitcast ({ i32, [4 x %struct.comedi_krange] }* @range_dt3000_ai_pgl to %struct.comedi_lrange*), i8 2 }, %struct.dt3k_boardtype { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 32, i32 3000, %struct.comedi_lrange* bitcast ({ i32, [4 x %struct.comedi_krange] }* @range_dt3000_ai to %struct.comedi_lrange*), i8 0 }, %struct.dt3k_boardtype { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 64, i32 3000, %struct.comedi_lrange* bitcast ({ i32, [4 x %struct.comedi_krange] }* @range_dt3000_ai to %struct.comedi_lrange*), i8 2 }, %struct.dt3k_boardtype { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 64, i32 3000, %struct.comedi_lrange* bitcast ({ i32, [4 x %struct.comedi_krange] }* @range_dt3000_ai_pgl to %struct.comedi_lrange*), i8 2 }, %struct.dt3k_boardtype { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 16, i32 10000, %struct.comedi_lrange* bitcast ({ i32, [4 x %struct.comedi_krange] }* @range_dt3000_ai to %struct.comedi_lrange*), i8 3 }, %struct.dt3k_boardtype { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 16, i32 5000, %struct.comedi_lrange* bitcast ({ i32, [4 x %struct.comedi_krange] }* @range_dt3000_ai to %struct.comedi_lrange*), i8 3 }], align 16, !dbg !3987
@range_bipolar10 = external dso_local constant %struct.comedi_lrange, align 4
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@range_unknown = external dso_local constant %struct.comedi_lrange, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"dt3001\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"dt3001-pgl\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"dt3002\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"dt3003\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"dt3003-pgl\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"dt3004\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"dt3005\00", align 1
@range_dt3000_ai_pgl = internal constant { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -1000000, i32 1000000, i32 0 }, %struct.comedi_krange { i32 -100000, i32 100000, i32 0 }, %struct.comedi_krange { i32 -20000, i32 20000, i32 0 }] }, align 4, !dbg !4001
@debug_n_ints = internal global i32 0, align 4, !dbg !4003
@range_dt3000_ai = internal constant { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }] }, align 4, !dbg !4005
@dt3000_pci_table = internal constant [8 x %struct.pci_device_id] [%struct.pci_device_id { i32 4374, i32 34, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 4374, i32 35, i32 -1, i32 -1, i32 0, i32 0, i64 2 }, %struct.pci_device_id { i32 4374, i32 36, i32 -1, i32 -1, i32 0, i32 0, i64 3 }, %struct.pci_device_id { i32 4374, i32 37, i32 -1, i32 -1, i32 0, i32 0, i64 5 }, %struct.pci_device_id { i32 4374, i32 38, i32 -1, i32 -1, i32 0, i32 0, i64 6 }, %struct.pci_device_id { i32 4374, i32 39, i32 -1, i32 -1, i32 0, i32 0, i64 1 }, %struct.pci_device_id { i32 4374, i32 40, i32 -1, i32 -1, i32 0, i32 0, i64 4 }, %struct.pci_device_id zeroinitializer], align 16, !dbg !4288
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_dt3000_driver_init234 to i8*), i8* bitcast (void ()* @dt3000_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_dt3000_driver_exit to i8*), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__UNIQUE_ID_author235, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @__UNIQUE_ID_description236, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__UNIQUE_ID_file237, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__UNIQUE_ID_license238, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @dt3000_driver_init() #0 section ".init.text" !dbg !4296 {
entry:
  %call = call i32 @comedi_pci_driver_register(%struct.comedi_driver* @dt3000_driver, %struct.pci_driver* @dt3000_pci_driver) #4, !dbg !4299
  ret i32 %call, !dbg !4299
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @dt3000_driver_exit() #0 section ".exit.text" !dbg !4300 {
entry:
  call void @comedi_pci_driver_unregister(%struct.comedi_driver* @dt3000_driver, %struct.pci_driver* @dt3000_pci_driver) #4, !dbg !4301
  ret void, !dbg !4301
}

; Function Attrs: noredzone
declare dso_local void @comedi_pci_driver_unregister(%struct.comedi_driver*, %struct.pci_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_pci_driver_register(%struct.comedi_driver*, %struct.pci_driver*) #1

; Function Attrs: noredzone
declare dso_local void @comedi_pci_detach(%struct.comedi_device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dt3000_auto_attach(%struct.comedi_device* %dev, i64 %context) #2 !dbg !4302 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %context.addr = alloca i64, align 8
  %pcidev = alloca %struct.pci_dev*, align 8
  %board = alloca %struct.dt3k_boardtype*, align 8
  %devpriv = alloca %struct.dt3k_private*, align 8
  %s = alloca %struct.comedi_subdevice*, align 8
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4303, metadata !DIExpression()), !dbg !4304
  store i64 %context, i64* %context.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %context.addr, metadata !4305, metadata !DIExpression()), !dbg !4306
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pcidev, metadata !4307, metadata !DIExpression()), !dbg !4308
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4309
  %call = call %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device* %0) #4, !dbg !4310
  store %struct.pci_dev* %call, %struct.pci_dev** %pcidev, align 8, !dbg !4308
  call void @llvm.dbg.declare(metadata %struct.dt3k_boardtype** %board, metadata !4311, metadata !DIExpression()), !dbg !4313
  store %struct.dt3k_boardtype* null, %struct.dt3k_boardtype** %board, align 8, !dbg !4313
  call void @llvm.dbg.declare(metadata %struct.dt3k_private** %devpriv, metadata !4314, metadata !DIExpression()), !dbg !4321
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s, metadata !4322, metadata !DIExpression()), !dbg !4323
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4324, metadata !DIExpression()), !dbg !4325
  store i32 0, i32* %ret, align 4, !dbg !4325
  %1 = load i64, i64* %context.addr, align 8, !dbg !4326
  %cmp = icmp ult i64 %1, 7, !dbg !4328
  br i1 %cmp, label %if.then, label %if.end, !dbg !4329

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %context.addr, align 8, !dbg !4330
  %arrayidx = getelementptr [7 x %struct.dt3k_boardtype], [7 x %struct.dt3k_boardtype]* @dt3k_boardtypes, i64 0, i64 %2, !dbg !4331
  store %struct.dt3k_boardtype* %arrayidx, %struct.dt3k_boardtype** %board, align 8, !dbg !4332
  br label %if.end, !dbg !4333

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.dt3k_boardtype*, %struct.dt3k_boardtype** %board, align 8, !dbg !4334
  %tobool = icmp ne %struct.dt3k_boardtype* %3, null, !dbg !4334
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !4336

if.then1:                                         ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !4337
  br label %return, !dbg !4337

if.end2:                                          ; preds = %if.end
  %4 = load %struct.dt3k_boardtype*, %struct.dt3k_boardtype** %board, align 8, !dbg !4338
  %5 = bitcast %struct.dt3k_boardtype* %4 to i8*, !dbg !4338
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4339
  %board_ptr = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 9, !dbg !4340
  store i8* %5, i8** %board_ptr, align 8, !dbg !4341
  %7 = load %struct.dt3k_boardtype*, %struct.dt3k_boardtype** %board, align 8, !dbg !4342
  %name = getelementptr inbounds %struct.dt3k_boardtype, %struct.dt3k_boardtype* %7, i32 0, i32 0, !dbg !4343
  %8 = load i8*, i8** %name, align 8, !dbg !4343
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4344
  %board_name = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 8, !dbg !4345
  store i8* %8, i8** %board_name, align 8, !dbg !4346
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4347
  %call3 = call i8* @comedi_alloc_devpriv(%struct.comedi_device* %10, i64 12) #4, !dbg !4348
  %11 = bitcast i8* %call3 to %struct.dt3k_private*, !dbg !4348
  store %struct.dt3k_private* %11, %struct.dt3k_private** %devpriv, align 8, !dbg !4349
  %12 = load %struct.dt3k_private*, %struct.dt3k_private** %devpriv, align 8, !dbg !4350
  %tobool4 = icmp ne %struct.dt3k_private* %12, null, !dbg !4350
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !4352

if.then5:                                         ; preds = %if.end2
  store i32 -12, i32* %retval, align 4, !dbg !4353
  br label %return, !dbg !4353

if.end6:                                          ; preds = %if.end2
  %13 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4354
  %call7 = call i32 @comedi_pci_enable(%struct.comedi_device* %13) #4, !dbg !4355
  store i32 %call7, i32* %ret, align 4, !dbg !4356
  %14 = load i32, i32* %ret, align 4, !dbg !4357
  %cmp8 = icmp slt i32 %14, 0, !dbg !4359
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !4360

if.then9:                                         ; preds = %if.end6
  %15 = load i32, i32* %ret, align 4, !dbg !4361
  store i32 %15, i32* %retval, align 4, !dbg !4362
  br label %return, !dbg !4362

if.end10:                                         ; preds = %if.end6
  %16 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4363
  %call11 = call i8* @pci_ioremap_bar(%struct.pci_dev* %16, i32 0) #4, !dbg !4364
  %17 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4365
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 17, !dbg !4366
  store i8* %call11, i8** %mmio, align 8, !dbg !4367
  %18 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4368
  %mmio12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 17, !dbg !4370
  %19 = load i8*, i8** %mmio12, align 8, !dbg !4370
  %tobool13 = icmp ne i8* %19, null, !dbg !4368
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !4371

if.then14:                                        ; preds = %if.end10
  store i32 -12, i32* %retval, align 4, !dbg !4372
  br label %return, !dbg !4372

if.end15:                                         ; preds = %if.end10
  %20 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4373
  %irq = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 43, !dbg !4375
  %21 = load i32, i32* %irq, align 4, !dbg !4375
  %tobool16 = icmp ne i32 %21, 0, !dbg !4373
  br i1 %tobool16, label %if.then17, label %if.end26, !dbg !4376

if.then17:                                        ; preds = %if.end15
  %22 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4377
  %irq18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 43, !dbg !4379
  %23 = load i32, i32* %irq18, align 4, !dbg !4379
  %24 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4380
  %board_name19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %24, i32 0, i32 8, !dbg !4381
  %25 = load i8*, i8** %board_name19, align 8, !dbg !4381
  %26 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4382
  %27 = bitcast %struct.comedi_device* %26 to i8*, !dbg !4382
  %call20 = call i32 @request_irq(i32 %23, i32 (i32, i8*)* @dt3k_interrupt, i64 128, i8* %25, i8* %27) #4, !dbg !4383
  store i32 %call20, i32* %ret, align 4, !dbg !4384
  %28 = load i32, i32* %ret, align 4, !dbg !4385
  %cmp21 = icmp eq i32 %28, 0, !dbg !4387
  br i1 %cmp21, label %if.then22, label %if.end25, !dbg !4388

if.then22:                                        ; preds = %if.then17
  %29 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4389
  %irq23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 43, !dbg !4390
  %30 = load i32, i32* %irq23, align 4, !dbg !4390
  %31 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4391
  %irq24 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %31, i32 0, i32 20, !dbg !4392
  store i32 %30, i32* %irq24, align 8, !dbg !4393
  br label %if.end25, !dbg !4391

if.end25:                                         ; preds = %if.then22, %if.then17
  br label %if.end26, !dbg !4394

if.end26:                                         ; preds = %if.end25, %if.end15
  %32 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4395
  %call27 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %32, i32 4) #4, !dbg !4396
  store i32 %call27, i32* %ret, align 4, !dbg !4397
  %33 = load i32, i32* %ret, align 4, !dbg !4398
  %tobool28 = icmp ne i32 %33, 0, !dbg !4398
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !4400

if.then29:                                        ; preds = %if.end26
  %34 = load i32, i32* %ret, align 4, !dbg !4401
  store i32 %34, i32* %retval, align 4, !dbg !4402
  br label %return, !dbg !4402

if.end30:                                         ; preds = %if.end26
  %35 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4403
  %subdevices = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %35, i32 0, i32 16, !dbg !4404
  %36 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices, align 8, !dbg !4404
  %arrayidx31 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %36, i64 0, !dbg !4403
  store %struct.comedi_subdevice* %arrayidx31, %struct.comedi_subdevice** %s, align 8, !dbg !4405
  %37 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4406
  %type = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %37, i32 0, i32 2, !dbg !4407
  store i32 1, i32* %type, align 4, !dbg !4408
  %38 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4409
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %38, i32 0, i32 4, !dbg !4410
  store i32 5308416, i32* %subdev_flags, align 4, !dbg !4411
  %39 = load %struct.dt3k_boardtype*, %struct.dt3k_boardtype** %board, align 8, !dbg !4412
  %adchan = getelementptr inbounds %struct.dt3k_boardtype, %struct.dt3k_boardtype* %39, i32 0, i32 1, !dbg !4413
  %40 = load i32, i32* %adchan, align 8, !dbg !4413
  %41 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4414
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %41, i32 0, i32 3, !dbg !4415
  store i32 %40, i32* %n_chan, align 8, !dbg !4416
  %42 = load %struct.dt3k_boardtype*, %struct.dt3k_boardtype** %board, align 8, !dbg !4417
  %ai_is_16bit = getelementptr inbounds %struct.dt3k_boardtype, %struct.dt3k_boardtype* %42, i32 0, i32 4, !dbg !4418
  %bf.load = load i8, i8* %ai_is_16bit, align 8, !dbg !4418
  %bf.clear = and i8 %bf.load, 1, !dbg !4418
  %bf.cast = zext i8 %bf.clear to i32, !dbg !4418
  %tobool32 = icmp ne i32 %bf.cast, 0, !dbg !4417
  %43 = zext i1 %tobool32 to i64, !dbg !4417
  %cond = select i1 %tobool32, i32 65535, i32 4095, !dbg !4417
  %44 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4419
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %44, i32 0, i32 13, !dbg !4420
  store i32 %cond, i32* %maxdata, align 8, !dbg !4421
  %45 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4422
  %range_table = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %45, i32 0, i32 15, !dbg !4423
  store %struct.comedi_lrange* bitcast ({ i32, [4 x %struct.comedi_krange] }* @range_dt3000_ai to %struct.comedi_lrange*), %struct.comedi_lrange** %range_table, align 8, !dbg !4424
  %46 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4425
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %46, i32 0, i32 18, !dbg !4426
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @dt3k_ai_insn_read, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_read, align 8, !dbg !4427
  %47 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4428
  %irq33 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %47, i32 0, i32 20, !dbg !4430
  %48 = load i32, i32* %irq33, align 8, !dbg !4430
  %tobool34 = icmp ne i32 %48, 0, !dbg !4428
  br i1 %tobool34, label %if.then35, label %if.end37, !dbg !4431

if.then35:                                        ; preds = %if.end30
  %49 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4432
  %50 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4434
  %read_subdev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %50, i32 0, i32 21, !dbg !4435
  store %struct.comedi_subdevice* %49, %struct.comedi_subdevice** %read_subdev, align 8, !dbg !4436
  %51 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4437
  %subdev_flags36 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %51, i32 0, i32 4, !dbg !4438
  %52 = load i32, i32* %subdev_flags36, align 4, !dbg !4439
  %or = or i32 %52, 32768, !dbg !4439
  store i32 %or, i32* %subdev_flags36, align 4, !dbg !4439
  %53 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4440
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %53, i32 0, i32 5, !dbg !4441
  store i32 512, i32* %len_chanlist, align 8, !dbg !4442
  %54 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4443
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %54, i32 0, i32 22, !dbg !4444
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @dt3k_ai_cmd, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)** %do_cmd, align 8, !dbg !4445
  %55 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4446
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %55, i32 0, i32 23, !dbg !4447
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @dt3k_ai_cmdtest, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)** %do_cmdtest, align 8, !dbg !4448
  %56 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4449
  %cancel = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %56, i32 0, i32 25, !dbg !4450
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @dt3k_ai_cancel, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)** %cancel, align 8, !dbg !4451
  br label %if.end37, !dbg !4452

if.end37:                                         ; preds = %if.then35, %if.end30
  %57 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4453
  %subdevices38 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %57, i32 0, i32 16, !dbg !4454
  %58 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices38, align 8, !dbg !4454
  %arrayidx39 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %58, i64 1, !dbg !4453
  store %struct.comedi_subdevice* %arrayidx39, %struct.comedi_subdevice** %s, align 8, !dbg !4455
  %59 = load %struct.dt3k_boardtype*, %struct.dt3k_boardtype** %board, align 8, !dbg !4456
  %has_ao = getelementptr inbounds %struct.dt3k_boardtype, %struct.dt3k_boardtype* %59, i32 0, i32 4, !dbg !4458
  %bf.load40 = load i8, i8* %has_ao, align 8, !dbg !4458
  %bf.lshr = lshr i8 %bf.load40, 1, !dbg !4458
  %bf.clear41 = and i8 %bf.lshr, 1, !dbg !4458
  %bf.cast42 = zext i8 %bf.clear41 to i32, !dbg !4458
  %tobool43 = icmp ne i32 %bf.cast42, 0, !dbg !4456
  br i1 %tobool43, label %if.then44, label %if.else, !dbg !4459

if.then44:                                        ; preds = %if.end37
  %60 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4460
  %type45 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %60, i32 0, i32 2, !dbg !4462
  store i32 2, i32* %type45, align 4, !dbg !4463
  %61 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4464
  %subdev_flags46 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %61, i32 0, i32 4, !dbg !4465
  store i32 131072, i32* %subdev_flags46, align 4, !dbg !4466
  %62 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4467
  %n_chan47 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %62, i32 0, i32 3, !dbg !4468
  store i32 2, i32* %n_chan47, align 8, !dbg !4469
  %63 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4470
  %maxdata48 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %63, i32 0, i32 13, !dbg !4471
  store i32 4095, i32* %maxdata48, align 8, !dbg !4472
  %64 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4473
  %range_table49 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %64, i32 0, i32 15, !dbg !4474
  store %struct.comedi_lrange* @range_bipolar10, %struct.comedi_lrange** %range_table49, align 8, !dbg !4475
  %65 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4476
  %insn_write = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %65, i32 0, i32 19, !dbg !4477
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @dt3k_ao_insn_write, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_write, align 8, !dbg !4478
  %66 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4479
  %call50 = call i32 @comedi_alloc_subdev_readback(%struct.comedi_subdevice* %66) #4, !dbg !4480
  store i32 %call50, i32* %ret, align 4, !dbg !4481
  %67 = load i32, i32* %ret, align 4, !dbg !4482
  %tobool51 = icmp ne i32 %67, 0, !dbg !4482
  br i1 %tobool51, label %if.then52, label %if.end53, !dbg !4484

if.then52:                                        ; preds = %if.then44
  %68 = load i32, i32* %ret, align 4, !dbg !4485
  store i32 %68, i32* %retval, align 4, !dbg !4486
  br label %return, !dbg !4486

if.end53:                                         ; preds = %if.then44
  br label %if.end55, !dbg !4487

if.else:                                          ; preds = %if.end37
  %69 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4488
  %type54 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %69, i32 0, i32 2, !dbg !4490
  store i32 0, i32* %type54, align 4, !dbg !4491
  br label %if.end55

if.end55:                                         ; preds = %if.else, %if.end53
  %70 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4492
  %subdevices56 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %70, i32 0, i32 16, !dbg !4493
  %71 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices56, align 8, !dbg !4493
  %arrayidx57 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %71, i64 2, !dbg !4492
  store %struct.comedi_subdevice* %arrayidx57, %struct.comedi_subdevice** %s, align 8, !dbg !4494
  %72 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4495
  %type58 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %72, i32 0, i32 2, !dbg !4496
  store i32 5, i32* %type58, align 4, !dbg !4497
  %73 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4498
  %subdev_flags59 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %73, i32 0, i32 4, !dbg !4499
  store i32 196608, i32* %subdev_flags59, align 4, !dbg !4500
  %74 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4501
  %n_chan60 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %74, i32 0, i32 3, !dbg !4502
  store i32 8, i32* %n_chan60, align 8, !dbg !4503
  %75 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4504
  %maxdata61 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %75, i32 0, i32 13, !dbg !4505
  store i32 1, i32* %maxdata61, align 8, !dbg !4506
  %76 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4507
  %range_table62 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %76, i32 0, i32 15, !dbg !4508
  store %struct.comedi_lrange* @range_unipolar5, %struct.comedi_lrange** %range_table62, align 8, !dbg !4509
  %77 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4510
  %insn_config = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %77, i32 0, i32 21, !dbg !4511
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @dt3k_dio_insn_config, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_config, align 8, !dbg !4512
  %78 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4513
  %insn_bits = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %78, i32 0, i32 20, !dbg !4514
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @dt3k_dio_insn_bits, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_bits, align 8, !dbg !4515
  %79 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4516
  %subdevices63 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %79, i32 0, i32 16, !dbg !4517
  %80 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices63, align 8, !dbg !4517
  %arrayidx64 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %80, i64 3, !dbg !4516
  store %struct.comedi_subdevice* %arrayidx64, %struct.comedi_subdevice** %s, align 8, !dbg !4518
  %81 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4519
  %type65 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %81, i32 0, i32 2, !dbg !4520
  store i32 8, i32* %type65, align 4, !dbg !4521
  %82 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4522
  %subdev_flags66 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %82, i32 0, i32 4, !dbg !4523
  store i32 65536, i32* %subdev_flags66, align 4, !dbg !4524
  %83 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4525
  %n_chan67 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %83, i32 0, i32 3, !dbg !4526
  store i32 4096, i32* %n_chan67, align 8, !dbg !4527
  %84 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4528
  %maxdata68 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %84, i32 0, i32 13, !dbg !4529
  store i32 255, i32* %maxdata68, align 8, !dbg !4530
  %85 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4531
  %range_table69 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %85, i32 0, i32 15, !dbg !4532
  store %struct.comedi_lrange* @range_unknown, %struct.comedi_lrange** %range_table69, align 8, !dbg !4533
  %86 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4534
  %insn_read70 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %86, i32 0, i32 18, !dbg !4535
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @dt3k_mem_insn_read, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_read70, align 8, !dbg !4536
  store i32 0, i32* %retval, align 4, !dbg !4537
  br label %return, !dbg !4537

return:                                           ; preds = %if.end55, %if.then52, %if.then29, %if.then14, %if.then9, %if.then5, %if.then1
  %87 = load i32, i32* %retval, align 4, !dbg !4538
  ret i32 %87, !dbg !4538
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noredzone
declare dso_local %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device*) #1

; Function Attrs: noredzone
declare dso_local i8* @comedi_alloc_devpriv(%struct.comedi_device*, i64) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_pci_enable(%struct.comedi_device*) #1

; Function Attrs: noredzone
declare dso_local i8* @pci_ioremap_bar(%struct.pci_dev*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @request_irq(i32 %irq, i32 (i32, i8*)* %handler, i64 %flags, i8* %name, i8* %dev) #2 !dbg !4539 {
entry:
  %irq.addr = alloca i32, align 4
  %handler.addr = alloca i32 (i32, i8*)*, align 8
  %flags.addr = alloca i64, align 8
  %name.addr = alloca i8*, align 8
  %dev.addr = alloca i8*, align 8
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !4547, metadata !DIExpression()), !dbg !4548
  store i32 (i32, i8*)* %handler, i32 (i32, i8*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i32, i8*)** %handler.addr, metadata !4549, metadata !DIExpression()), !dbg !4550
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !4551, metadata !DIExpression()), !dbg !4552
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !4553, metadata !DIExpression()), !dbg !4554
  store i8* %dev, i8** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev.addr, metadata !4555, metadata !DIExpression()), !dbg !4556
  %0 = load i32, i32* %irq.addr, align 4, !dbg !4557
  %1 = load i32 (i32, i8*)*, i32 (i32, i8*)** %handler.addr, align 8, !dbg !4558
  %2 = load i64, i64* %flags.addr, align 8, !dbg !4559
  %3 = load i8*, i8** %name.addr, align 8, !dbg !4560
  %4 = load i8*, i8** %dev.addr, align 8, !dbg !4561
  %call = call i32 @request_threaded_irq(i32 %0, i32 (i32, i8*)* %1, i32 (i32, i8*)* null, i64 %2, i8* %3, i8* %4) #4, !dbg !4562
  ret i32 %call, !dbg !4563
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dt3k_interrupt(i32 %irq, i8* %d) #2 !dbg !4564 {
entry:
  %retval = alloca i32, align 4
  %irq.addr = alloca i32, align 4
  %d.addr = alloca i8*, align 8
  %dev = alloca %struct.comedi_device*, align 8
  %s = alloca %struct.comedi_subdevice*, align 8
  %status = alloca i32, align 4
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !4565, metadata !DIExpression()), !dbg !4566
  store i8* %d, i8** %d.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %d.addr, metadata !4567, metadata !DIExpression()), !dbg !4568
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev, metadata !4569, metadata !DIExpression()), !dbg !4570
  %0 = load i8*, i8** %d.addr, align 8, !dbg !4571
  %1 = bitcast i8* %0 to %struct.comedi_device*, !dbg !4571
  store %struct.comedi_device* %1, %struct.comedi_device** %dev, align 8, !dbg !4570
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s, metadata !4572, metadata !DIExpression()), !dbg !4573
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4574
  %read_subdev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %2, i32 0, i32 21, !dbg !4575
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %read_subdev, align 8, !dbg !4575
  store %struct.comedi_subdevice* %3, %struct.comedi_subdevice** %s, align 8, !dbg !4573
  call void @llvm.dbg.declare(metadata i32* %status, metadata !4576, metadata !DIExpression()), !dbg !4577
  %4 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4578
  %attached = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 10, !dbg !4580
  %bf.load = load i8, i8* %attached, align 8, !dbg !4580
  %bf.clear = and i8 %bf.load, 1, !dbg !4580
  %bf.cast = zext i8 %bf.clear to i32, !dbg !4580
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !4578
  br i1 %tobool, label %if.end, label %if.then, !dbg !4581

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4582
  br label %return, !dbg !4582

if.end:                                           ; preds = %entry
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4583
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 17, !dbg !4584
  %6 = load i8*, i8** %mmio, align 8, !dbg !4584
  %add.ptr = getelementptr i8, i8* %6, i64 16368, !dbg !4585
  %call = call zeroext i16 @readw(i8* %add.ptr) #4, !dbg !4586
  %conv = zext i16 %call to i32, !dbg !4586
  store i32 %conv, i32* %status, align 4, !dbg !4587
  %7 = load i32, i32* %status, align 4, !dbg !4588
  %conv1 = zext i32 %7 to i64, !dbg !4588
  %and = and i64 %conv1, 1, !dbg !4590
  %tobool2 = icmp ne i64 %and, 0, !dbg !4590
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !4591

if.then3:                                         ; preds = %if.end
  %8 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4592
  %9 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4593
  call void @dt3k_ai_empty_fifo(%struct.comedi_device* %8, %struct.comedi_subdevice* %9) #4, !dbg !4594
  br label %if.end4, !dbg !4594

if.end4:                                          ; preds = %if.then3, %if.end
  %10 = load i32, i32* %status, align 4, !dbg !4595
  %conv5 = zext i32 %10 to i64, !dbg !4595
  %and6 = and i64 %conv5, 6, !dbg !4597
  %tobool7 = icmp ne i64 %and6, 0, !dbg !4597
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !4598

if.then8:                                         ; preds = %if.end4
  %11 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4599
  %async = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %11, i32 0, i32 7, !dbg !4600
  %12 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4600
  %events = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %12, i32 0, i32 16, !dbg !4601
  %13 = load i32, i32* %events, align 4, !dbg !4602
  %or = or i32 %13, 16, !dbg !4602
  store i32 %or, i32* %events, align 4, !dbg !4602
  br label %if.end9, !dbg !4599

if.end9:                                          ; preds = %if.then8, %if.end4
  %14 = load i32, i32* @debug_n_ints, align 4, !dbg !4603
  %inc = add i32 %14, 1, !dbg !4603
  store i32 %inc, i32* @debug_n_ints, align 4, !dbg !4603
  %15 = load i32, i32* @debug_n_ints, align 4, !dbg !4604
  %cmp = icmp sge i32 %15, 10, !dbg !4606
  br i1 %cmp, label %if.then11, label %if.end15, !dbg !4607

if.then11:                                        ; preds = %if.end9
  %16 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4608
  %async12 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %16, i32 0, i32 7, !dbg !4609
  %17 = load %struct.comedi_async*, %struct.comedi_async** %async12, align 8, !dbg !4609
  %events13 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %17, i32 0, i32 16, !dbg !4610
  %18 = load i32, i32* %events13, align 4, !dbg !4611
  %or14 = or i32 %18, 2, !dbg !4611
  store i32 %or14, i32* %events13, align 4, !dbg !4611
  br label %if.end15, !dbg !4608

if.end15:                                         ; preds = %if.then11, %if.end9
  %19 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4612
  %20 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4613
  %call16 = call i32 @comedi_handle_events(%struct.comedi_device* %19, %struct.comedi_subdevice* %20) #4, !dbg !4614
  store i32 1, i32* %retval, align 4, !dbg !4615
  br label %return, !dbg !4615

return:                                           ; preds = %if.end15, %if.then
  %21 = load i32, i32* %retval, align 4, !dbg !4616
  ret i32 %21, !dbg !4616
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dt3k_ai_insn_read(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !4617 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %chan = alloca i32, align 4
  %gain = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4618, metadata !DIExpression()), !dbg !4619
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4620, metadata !DIExpression()), !dbg !4621
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !4622, metadata !DIExpression()), !dbg !4623
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !4624, metadata !DIExpression()), !dbg !4625
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4626, metadata !DIExpression()), !dbg !4627
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !4628, metadata !DIExpression()), !dbg !4629
  call void @llvm.dbg.declare(metadata i32* %gain, metadata !4630, metadata !DIExpression()), !dbg !4631
  %0 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4632
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %0, i32 0, i32 4, !dbg !4632
  %1 = load i32, i32* %chanspec, align 4, !dbg !4632
  %and = and i32 %1, 65535, !dbg !4632
  store i32 %and, i32* %chan, align 4, !dbg !4633
  %2 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4634
  %chanspec1 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %2, i32 0, i32 4, !dbg !4634
  %3 = load i32, i32* %chanspec1, align 4, !dbg !4634
  %shr = lshr i32 %3, 16, !dbg !4634
  %and2 = and i32 %shr, 255, !dbg !4634
  store i32 %and2, i32* %gain, align 4, !dbg !4635
  store i32 0, i32* %i, align 4, !dbg !4636
  br label %for.cond, !dbg !4638

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !dbg !4639
  %5 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4641
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %5, i32 0, i32 1, !dbg !4642
  %6 = load i32, i32* %n, align 4, !dbg !4642
  %cmp = icmp ult i32 %4, %6, !dbg !4643
  br i1 %cmp, label %for.body, label %for.end, !dbg !4644

for.body:                                         ; preds = %for.cond
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4645
  %8 = load i32, i32* %chan, align 4, !dbg !4646
  %9 = load i32, i32* %gain, align 4, !dbg !4647
  %call = call i32 @dt3k_readsingle(%struct.comedi_device* %7, i32 0, i32 %8, i32 %9) #4, !dbg !4648
  %10 = load i32*, i32** %data.addr, align 8, !dbg !4649
  %11 = load i32, i32* %i, align 4, !dbg !4650
  %idxprom = sext i32 %11 to i64, !dbg !4649
  %arrayidx = getelementptr i32, i32* %10, i64 %idxprom, !dbg !4649
  store i32 %call, i32* %arrayidx, align 4, !dbg !4651
  br label %for.inc, !dbg !4649

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !4652
  %inc = add i32 %12, 1, !dbg !4652
  store i32 %inc, i32* %i, align 4, !dbg !4652
  br label %for.cond, !dbg !4653, !llvm.loop !4654

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %i, align 4, !dbg !4656
  ret i32 %13, !dbg !4657
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dt3k_ai_cmd(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #2 !dbg !4658 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %cmd = alloca %struct.comedi_cmd*, align 8
  %i = alloca i32, align 4
  %chan = alloca i32, align 4
  %range = alloca i32, align 4
  %aref = alloca i32, align 4
  %divider = alloca i32, align 4
  %tscandiv = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4659, metadata !DIExpression()), !dbg !4660
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4661, metadata !DIExpression()), !dbg !4662
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd, metadata !4663, metadata !DIExpression()), !dbg !4664
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4665
  %async = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 7, !dbg !4666
  %1 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4666
  %cmd1 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %1, i32 0, i32 17, !dbg !4667
  store %struct.comedi_cmd* %cmd1, %struct.comedi_cmd** %cmd, align 8, !dbg !4664
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4668, metadata !DIExpression()), !dbg !4669
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !4670, metadata !DIExpression()), !dbg !4671
  call void @llvm.dbg.declare(metadata i32* %range, metadata !4672, metadata !DIExpression()), !dbg !4673
  call void @llvm.dbg.declare(metadata i32* %aref, metadata !4674, metadata !DIExpression()), !dbg !4675
  call void @llvm.dbg.declare(metadata i32* %divider, metadata !4676, metadata !DIExpression()), !dbg !4677
  call void @llvm.dbg.declare(metadata i32* %tscandiv, metadata !4678, metadata !DIExpression()), !dbg !4679
  store i32 0, i32* %i, align 4, !dbg !4680
  br label %for.cond, !dbg !4682

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !4683
  %3 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !4685
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %3, i32 0, i32 13, !dbg !4686
  %4 = load i32, i32* %chanlist_len, align 8, !dbg !4686
  %cmp = icmp ult i32 %2, %4, !dbg !4687
  br i1 %cmp, label %for.body, label %for.end, !dbg !4688

for.body:                                         ; preds = %for.cond
  %5 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !4689
  %chanlist = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %5, i32 0, i32 12, !dbg !4689
  %6 = load i32*, i32** %chanlist, align 8, !dbg !4689
  %7 = load i32, i32* %i, align 4, !dbg !4689
  %idxprom = sext i32 %7 to i64, !dbg !4689
  %arrayidx = getelementptr i32, i32* %6, i64 %idxprom, !dbg !4689
  %8 = load i32, i32* %arrayidx, align 4, !dbg !4689
  %and = and i32 %8, 65535, !dbg !4689
  store i32 %and, i32* %chan, align 4, !dbg !4691
  %9 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !4692
  %chanlist2 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %9, i32 0, i32 12, !dbg !4692
  %10 = load i32*, i32** %chanlist2, align 8, !dbg !4692
  %11 = load i32, i32* %i, align 4, !dbg !4692
  %idxprom3 = sext i32 %11 to i64, !dbg !4692
  %arrayidx4 = getelementptr i32, i32* %10, i64 %idxprom3, !dbg !4692
  %12 = load i32, i32* %arrayidx4, align 4, !dbg !4692
  %shr = lshr i32 %12, 16, !dbg !4692
  %and5 = and i32 %shr, 255, !dbg !4692
  store i32 %and5, i32* %range, align 4, !dbg !4693
  %13 = load i32, i32* %range, align 4, !dbg !4694
  %shl = shl i32 %13, 6, !dbg !4695
  %14 = load i32, i32* %chan, align 4, !dbg !4696
  %or = or i32 %shl, %14, !dbg !4697
  %conv = trunc i32 %or to i16, !dbg !4698
  %15 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4699
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 17, !dbg !4700
  %16 = load i8*, i8** %mmio, align 8, !dbg !4700
  %add.ptr = getelementptr i8, i8* %16, i64 8192, !dbg !4701
  %17 = load i32, i32* %i, align 4, !dbg !4702
  %idx.ext = sext i32 %17 to i64, !dbg !4703
  %add.ptr6 = getelementptr i8, i8* %add.ptr, i64 %idx.ext, !dbg !4703
  call void @writew(i16 zeroext %conv, i8* %add.ptr6) #4, !dbg !4704
  br label %for.inc, !dbg !4705

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !4706
  %inc = add i32 %18, 1, !dbg !4706
  store i32 %inc, i32* %i, align 4, !dbg !4706
  br label %for.cond, !dbg !4707, !llvm.loop !4708

for.end:                                          ; preds = %for.cond
  %19 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !4710
  %chanlist7 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %19, i32 0, i32 12, !dbg !4710
  %20 = load i32*, i32** %chanlist7, align 8, !dbg !4710
  %arrayidx8 = getelementptr i32, i32* %20, i64 0, !dbg !4710
  %21 = load i32, i32* %arrayidx8, align 4, !dbg !4710
  %shr9 = lshr i32 %21, 24, !dbg !4710
  %and10 = and i32 %shr9, 3, !dbg !4710
  store i32 %and10, i32* %aref, align 4, !dbg !4711
  %22 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !4712
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %22, i32 0, i32 9, !dbg !4713
  %23 = load i32, i32* %scan_end_arg, align 4, !dbg !4713
  %conv11 = trunc i32 %23 to i16, !dbg !4712
  %24 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4714
  %mmio12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %24, i32 0, i32 17, !dbg !4715
  %25 = load i8*, i8** %mmio12, align 8, !dbg !4715
  %add.ptr13 = getelementptr i8, i8* %25, i64 16212, !dbg !4716
  call void @writew(i16 zeroext %conv11, i8* %add.ptr13) #4, !dbg !4717
  %26 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !4718
  %convert_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %26, i32 0, i32 6, !dbg !4720
  %27 = load i32, i32* %convert_src, align 8, !dbg !4720
  %cmp14 = icmp eq i32 %27, 16, !dbg !4721
  br i1 %cmp14, label %if.then, label %if.end, !dbg !4722

if.then:                                          ; preds = %for.end
  %28 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !4723
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %28, i32 0, i32 7, !dbg !4725
  %29 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !4726
  %flags = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %29, i32 0, i32 1, !dbg !4727
  %30 = load i32, i32* %flags, align 4, !dbg !4727
  %call = call i32 @dt3k_ns_to_timer(i32 50, i32* %convert_arg, i32 %30) #4, !dbg !4728
  store i32 %call, i32* %divider, align 4, !dbg !4729
  %31 = load i32, i32* %divider, align 4, !dbg !4730
  %shr16 = lshr i32 %31, 16, !dbg !4731
  %conv17 = trunc i32 %shr16 to i16, !dbg !4732
  %32 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4733
  %mmio18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %32, i32 0, i32 17, !dbg !4734
  %33 = load i8*, i8** %mmio18, align 8, !dbg !4734
  %add.ptr19 = getelementptr i8, i8* %33, i64 16216, !dbg !4735
  call void @writew(i16 zeroext %conv17, i8* %add.ptr19) #4, !dbg !4736
  %34 = load i32, i32* %divider, align 4, !dbg !4737
  %and20 = and i32 %34, 65535, !dbg !4738
  %conv21 = trunc i32 %and20 to i16, !dbg !4739
  %35 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4740
  %mmio22 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %35, i32 0, i32 17, !dbg !4741
  %36 = load i8*, i8** %mmio22, align 8, !dbg !4741
  %add.ptr23 = getelementptr i8, i8* %36, i64 16220, !dbg !4742
  call void @writew(i16 zeroext %conv21, i8* %add.ptr23) #4, !dbg !4743
  br label %if.end, !dbg !4744

if.end:                                           ; preds = %if.then, %for.end
  %37 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !4745
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %37, i32 0, i32 4, !dbg !4747
  %38 = load i32, i32* %scan_begin_src, align 8, !dbg !4747
  %cmp24 = icmp eq i32 %38, 16, !dbg !4748
  br i1 %cmp24, label %if.then26, label %if.end37, !dbg !4749

if.then26:                                        ; preds = %if.end
  %39 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !4750
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %39, i32 0, i32 5, !dbg !4752
  %40 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !4753
  %flags27 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %40, i32 0, i32 1, !dbg !4754
  %41 = load i32, i32* %flags27, align 4, !dbg !4754
  %call28 = call i32 @dt3k_ns_to_timer(i32 100, i32* %scan_begin_arg, i32 %41) #4, !dbg !4755
  store i32 %call28, i32* %tscandiv, align 4, !dbg !4756
  %42 = load i32, i32* %tscandiv, align 4, !dbg !4757
  %shr29 = lshr i32 %42, 16, !dbg !4758
  %conv30 = trunc i32 %shr29 to i16, !dbg !4759
  %43 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4760
  %mmio31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %43, i32 0, i32 17, !dbg !4761
  %44 = load i8*, i8** %mmio31, align 8, !dbg !4761
  %add.ptr32 = getelementptr i8, i8* %44, i64 16224, !dbg !4762
  call void @writew(i16 zeroext %conv30, i8* %add.ptr32) #4, !dbg !4763
  %45 = load i32, i32* %tscandiv, align 4, !dbg !4764
  %and33 = and i32 %45, 65535, !dbg !4765
  %conv34 = trunc i32 %and33 to i16, !dbg !4766
  %46 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4767
  %mmio35 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %46, i32 0, i32 17, !dbg !4768
  %47 = load i8*, i8** %mmio35, align 8, !dbg !4768
  %add.ptr36 = getelementptr i8, i8* %47, i64 16228, !dbg !4769
  call void @writew(i16 zeroext %conv34, i8* %add.ptr36) #4, !dbg !4770
  br label %if.end37, !dbg !4771

if.end37:                                         ; preds = %if.then26, %if.end
  %48 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4772
  %mmio38 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %48, i32 0, i32 17, !dbg !4773
  %49 = load i8*, i8** %mmio38, align 8, !dbg !4773
  %add.ptr39 = getelementptr i8, i8* %49, i64 16232, !dbg !4774
  call void @writew(i16 zeroext 8, i8* %add.ptr39) #4, !dbg !4775
  %50 = load i32, i32* %aref, align 4, !dbg !4776
  %cmp40 = icmp eq i32 %50, 2, !dbg !4777
  %51 = zext i1 %cmp40 to i64, !dbg !4778
  %cond = select i1 %cmp40, i64 1, i64 0, !dbg !4778
  %conv42 = trunc i64 %cond to i16, !dbg !4778
  %52 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4779
  %mmio43 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %52, i32 0, i32 17, !dbg !4780
  %53 = load i8*, i8** %mmio43, align 8, !dbg !4780
  %add.ptr44 = getelementptr i8, i8* %53, i64 16236, !dbg !4781
  call void @writew(i16 zeroext %conv42, i8* %add.ptr44) #4, !dbg !4782
  %54 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4783
  %mmio45 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %54, i32 0, i32 17, !dbg !4784
  %55 = load i8*, i8** %mmio45, align 8, !dbg !4784
  %add.ptr46 = getelementptr i8, i8* %55, i64 16240, !dbg !4785
  call void @writew(i16 zeroext 1001, i8* %add.ptr46) #4, !dbg !4786
  %56 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4787
  %mmio47 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %56, i32 0, i32 17, !dbg !4788
  %57 = load i8*, i8** %mmio47, align 8, !dbg !4788
  %add.ptr48 = getelementptr i8, i8* %57, i64 16204, !dbg !4789
  call void @writew(i16 zeroext 0, i8* %add.ptr48) #4, !dbg !4790
  %58 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4791
  call void @dt3k_send_cmd(%struct.comedi_device* %58, i32 1) #4, !dbg !4792
  %59 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4793
  %mmio49 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %59, i32 0, i32 17, !dbg !4794
  %60 = load i8*, i8** %mmio49, align 8, !dbg !4794
  %add.ptr50 = getelementptr i8, i8* %60, i64 16364, !dbg !4795
  call void @writew(i16 zeroext 7, i8* %add.ptr50) #4, !dbg !4796
  store i32 0, i32* @debug_n_ints, align 4, !dbg !4797
  %61 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4798
  %mmio51 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %61, i32 0, i32 17, !dbg !4799
  %62 = load i8*, i8** %mmio51, align 8, !dbg !4799
  %add.ptr52 = getelementptr i8, i8* %62, i64 16204, !dbg !4800
  call void @writew(i16 zeroext 0, i8* %add.ptr52) #4, !dbg !4801
  %63 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4802
  call void @dt3k_send_cmd(%struct.comedi_device* %63, i32 3) #4, !dbg !4803
  ret i32 0, !dbg !4804
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dt3k_ai_cmdtest(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_cmd* %cmd) #2 !dbg !4805 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %cmd.addr = alloca %struct.comedi_cmd*, align 8
  %board = alloca %struct.dt3k_boardtype*, align 8
  %err = alloca i32, align 4
  %arg = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4806, metadata !DIExpression()), !dbg !4807
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4808, metadata !DIExpression()), !dbg !4809
  store %struct.comedi_cmd* %cmd, %struct.comedi_cmd** %cmd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd.addr, metadata !4810, metadata !DIExpression()), !dbg !4811
  call void @llvm.dbg.declare(metadata %struct.dt3k_boardtype** %board, metadata !4812, metadata !DIExpression()), !dbg !4813
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4814
  %board_ptr = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 9, !dbg !4815
  %1 = load i8*, i8** %board_ptr, align 8, !dbg !4815
  %2 = bitcast i8* %1 to %struct.dt3k_boardtype*, !dbg !4814
  store %struct.dt3k_boardtype* %2, %struct.dt3k_boardtype** %board, align 8, !dbg !4813
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4816, metadata !DIExpression()), !dbg !4817
  store i32 0, i32* %err, align 4, !dbg !4817
  call void @llvm.dbg.declare(metadata i32* %arg, metadata !4818, metadata !DIExpression()), !dbg !4819
  %3 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4820
  %start_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %3, i32 0, i32 2, !dbg !4821
  %call = call i32 @comedi_check_trigger_src(i32* %start_src, i32 2) #4, !dbg !4822
  %4 = load i32, i32* %err, align 4, !dbg !4823
  %or = or i32 %4, %call, !dbg !4823
  store i32 %or, i32* %err, align 4, !dbg !4823
  %5 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4824
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %5, i32 0, i32 4, !dbg !4825
  %call1 = call i32 @comedi_check_trigger_src(i32* %scan_begin_src, i32 16) #4, !dbg !4826
  %6 = load i32, i32* %err, align 4, !dbg !4827
  %or2 = or i32 %6, %call1, !dbg !4827
  store i32 %or2, i32* %err, align 4, !dbg !4827
  %7 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4828
  %convert_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %7, i32 0, i32 6, !dbg !4829
  %call3 = call i32 @comedi_check_trigger_src(i32* %convert_src, i32 16) #4, !dbg !4830
  %8 = load i32, i32* %err, align 4, !dbg !4831
  %or4 = or i32 %8, %call3, !dbg !4831
  store i32 %or4, i32* %err, align 4, !dbg !4831
  %9 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4832
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %9, i32 0, i32 8, !dbg !4833
  %call5 = call i32 @comedi_check_trigger_src(i32* %scan_end_src, i32 32) #4, !dbg !4834
  %10 = load i32, i32* %err, align 4, !dbg !4835
  %or6 = or i32 %10, %call5, !dbg !4835
  store i32 %or6, i32* %err, align 4, !dbg !4835
  %11 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4836
  %stop_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %11, i32 0, i32 10, !dbg !4837
  %call7 = call i32 @comedi_check_trigger_src(i32* %stop_src, i32 32) #4, !dbg !4838
  %12 = load i32, i32* %err, align 4, !dbg !4839
  %or8 = or i32 %12, %call7, !dbg !4839
  store i32 %or8, i32* %err, align 4, !dbg !4839
  %13 = load i32, i32* %err, align 4, !dbg !4840
  %tobool = icmp ne i32 %13, 0, !dbg !4840
  br i1 %tobool, label %if.then, label %if.end, !dbg !4842

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !4843
  br label %return, !dbg !4843

if.end:                                           ; preds = %entry
  %14 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4844
  %start_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %14, i32 0, i32 3, !dbg !4845
  %call9 = call i32 @comedi_check_trigger_arg_is(i32* %start_arg, i32 0) #4, !dbg !4846
  %15 = load i32, i32* %err, align 4, !dbg !4847
  %or10 = or i32 %15, %call9, !dbg !4847
  store i32 %or10, i32* %err, align 4, !dbg !4847
  %16 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4848
  %scan_begin_src11 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %16, i32 0, i32 4, !dbg !4850
  %17 = load i32, i32* %scan_begin_src11, align 8, !dbg !4850
  %cmp = icmp eq i32 %17, 16, !dbg !4851
  br i1 %cmp, label %if.then12, label %if.end18, !dbg !4852

if.then12:                                        ; preds = %if.end
  %18 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4853
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %18, i32 0, i32 5, !dbg !4855
  %19 = load %struct.dt3k_boardtype*, %struct.dt3k_boardtype** %board, align 8, !dbg !4856
  %ai_speed = getelementptr inbounds %struct.dt3k_boardtype, %struct.dt3k_boardtype* %19, i32 0, i32 2, !dbg !4857
  %20 = load i32, i32* %ai_speed, align 4, !dbg !4857
  %call13 = call i32 @comedi_check_trigger_arg_min(i32* %scan_begin_arg, i32 %20) #4, !dbg !4858
  %21 = load i32, i32* %err, align 4, !dbg !4859
  %or14 = or i32 %21, %call13, !dbg !4859
  store i32 %or14, i32* %err, align 4, !dbg !4859
  %22 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4860
  %scan_begin_arg15 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %22, i32 0, i32 5, !dbg !4861
  %call16 = call i32 @comedi_check_trigger_arg_max(i32* %scan_begin_arg15, i32 104856000) #4, !dbg !4862
  %23 = load i32, i32* %err, align 4, !dbg !4863
  %or17 = or i32 %23, %call16, !dbg !4863
  store i32 %or17, i32* %err, align 4, !dbg !4863
  br label %if.end18, !dbg !4864

if.end18:                                         ; preds = %if.then12, %if.end
  %24 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4865
  %convert_src19 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %24, i32 0, i32 6, !dbg !4867
  %25 = load i32, i32* %convert_src19, align 8, !dbg !4867
  %cmp20 = icmp eq i32 %25, 16, !dbg !4868
  br i1 %cmp20, label %if.then21, label %if.end28, !dbg !4869

if.then21:                                        ; preds = %if.end18
  %26 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4870
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %26, i32 0, i32 7, !dbg !4872
  %27 = load %struct.dt3k_boardtype*, %struct.dt3k_boardtype** %board, align 8, !dbg !4873
  %ai_speed22 = getelementptr inbounds %struct.dt3k_boardtype, %struct.dt3k_boardtype* %27, i32 0, i32 2, !dbg !4874
  %28 = load i32, i32* %ai_speed22, align 4, !dbg !4874
  %call23 = call i32 @comedi_check_trigger_arg_min(i32* %convert_arg, i32 %28) #4, !dbg !4875
  %29 = load i32, i32* %err, align 4, !dbg !4876
  %or24 = or i32 %29, %call23, !dbg !4876
  store i32 %or24, i32* %err, align 4, !dbg !4876
  %30 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4877
  %convert_arg25 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %30, i32 0, i32 7, !dbg !4878
  %call26 = call i32 @comedi_check_trigger_arg_max(i32* %convert_arg25, i32 52428000) #4, !dbg !4879
  %31 = load i32, i32* %err, align 4, !dbg !4880
  %or27 = or i32 %31, %call26, !dbg !4880
  store i32 %or27, i32* %err, align 4, !dbg !4880
  br label %if.end28, !dbg !4881

if.end28:                                         ; preds = %if.then21, %if.end18
  %32 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4882
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %32, i32 0, i32 9, !dbg !4883
  %33 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4884
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %33, i32 0, i32 13, !dbg !4885
  %34 = load i32, i32* %chanlist_len, align 8, !dbg !4885
  %call29 = call i32 @comedi_check_trigger_arg_is(i32* %scan_end_arg, i32 %34) #4, !dbg !4886
  %35 = load i32, i32* %err, align 4, !dbg !4887
  %or30 = or i32 %35, %call29, !dbg !4887
  store i32 %or30, i32* %err, align 4, !dbg !4887
  %36 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4888
  %stop_src31 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %36, i32 0, i32 10, !dbg !4890
  %37 = load i32, i32* %stop_src31, align 8, !dbg !4890
  %cmp32 = icmp eq i32 %37, 32, !dbg !4891
  br i1 %cmp32, label %if.then33, label %if.else, !dbg !4892

if.then33:                                        ; preds = %if.end28
  %38 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4893
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %38, i32 0, i32 11, !dbg !4894
  %call34 = call i32 @comedi_check_trigger_arg_max(i32* %stop_arg, i32 16777215) #4, !dbg !4895
  %39 = load i32, i32* %err, align 4, !dbg !4896
  %or35 = or i32 %39, %call34, !dbg !4896
  store i32 %or35, i32* %err, align 4, !dbg !4896
  br label %if.end39, !dbg !4897

if.else:                                          ; preds = %if.end28
  %40 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4898
  %stop_arg36 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %40, i32 0, i32 11, !dbg !4899
  %call37 = call i32 @comedi_check_trigger_arg_is(i32* %stop_arg36, i32 0) #4, !dbg !4900
  %41 = load i32, i32* %err, align 4, !dbg !4901
  %or38 = or i32 %41, %call37, !dbg !4901
  store i32 %or38, i32* %err, align 4, !dbg !4901
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then33
  %42 = load i32, i32* %err, align 4, !dbg !4902
  %tobool40 = icmp ne i32 %42, 0, !dbg !4902
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !4904

if.then41:                                        ; preds = %if.end39
  store i32 3, i32* %retval, align 4, !dbg !4905
  br label %return, !dbg !4905

if.end42:                                         ; preds = %if.end39
  %43 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4906
  %scan_begin_src43 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %43, i32 0, i32 4, !dbg !4908
  %44 = load i32, i32* %scan_begin_src43, align 8, !dbg !4908
  %cmp44 = icmp eq i32 %44, 16, !dbg !4909
  br i1 %cmp44, label %if.then45, label %if.end51, !dbg !4910

if.then45:                                        ; preds = %if.end42
  %45 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4911
  %scan_begin_arg46 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %45, i32 0, i32 5, !dbg !4913
  %46 = load i32, i32* %scan_begin_arg46, align 4, !dbg !4913
  store i32 %46, i32* %arg, align 4, !dbg !4914
  %47 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4915
  %flags = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %47, i32 0, i32 1, !dbg !4916
  %48 = load i32, i32* %flags, align 4, !dbg !4916
  %call47 = call i32 @dt3k_ns_to_timer(i32 100, i32* %arg, i32 %48) #4, !dbg !4917
  %49 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4918
  %scan_begin_arg48 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %49, i32 0, i32 5, !dbg !4919
  %50 = load i32, i32* %arg, align 4, !dbg !4920
  %call49 = call i32 @comedi_check_trigger_arg_is(i32* %scan_begin_arg48, i32 %50) #4, !dbg !4921
  %51 = load i32, i32* %err, align 4, !dbg !4922
  %or50 = or i32 %51, %call49, !dbg !4922
  store i32 %or50, i32* %err, align 4, !dbg !4922
  br label %if.end51, !dbg !4923

if.end51:                                         ; preds = %if.then45, %if.end42
  %52 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4924
  %convert_src52 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %52, i32 0, i32 6, !dbg !4926
  %53 = load i32, i32* %convert_src52, align 8, !dbg !4926
  %cmp53 = icmp eq i32 %53, 16, !dbg !4927
  br i1 %cmp53, label %if.then54, label %if.end70, !dbg !4928

if.then54:                                        ; preds = %if.end51
  %54 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4929
  %convert_arg55 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %54, i32 0, i32 7, !dbg !4931
  %55 = load i32, i32* %convert_arg55, align 4, !dbg !4931
  store i32 %55, i32* %arg, align 4, !dbg !4932
  %56 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4933
  %flags56 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %56, i32 0, i32 1, !dbg !4934
  %57 = load i32, i32* %flags56, align 4, !dbg !4934
  %call57 = call i32 @dt3k_ns_to_timer(i32 50, i32* %arg, i32 %57) #4, !dbg !4935
  %58 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4936
  %convert_arg58 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %58, i32 0, i32 7, !dbg !4937
  %59 = load i32, i32* %arg, align 4, !dbg !4938
  %call59 = call i32 @comedi_check_trigger_arg_is(i32* %convert_arg58, i32 %59) #4, !dbg !4939
  %60 = load i32, i32* %err, align 4, !dbg !4940
  %or60 = or i32 %60, %call59, !dbg !4940
  store i32 %or60, i32* %err, align 4, !dbg !4940
  %61 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4941
  %scan_begin_src61 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %61, i32 0, i32 4, !dbg !4943
  %62 = load i32, i32* %scan_begin_src61, align 8, !dbg !4943
  %cmp62 = icmp eq i32 %62, 16, !dbg !4944
  br i1 %cmp62, label %if.then63, label %if.end69, !dbg !4945

if.then63:                                        ; preds = %if.then54
  %63 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4946
  %convert_arg64 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %63, i32 0, i32 7, !dbg !4948
  %64 = load i32, i32* %convert_arg64, align 4, !dbg !4948
  %65 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4949
  %scan_end_arg65 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %65, i32 0, i32 9, !dbg !4950
  %66 = load i32, i32* %scan_end_arg65, align 4, !dbg !4950
  %mul = mul i32 %64, %66, !dbg !4951
  store i32 %mul, i32* %arg, align 4, !dbg !4952
  %67 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4953
  %scan_begin_arg66 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %67, i32 0, i32 5, !dbg !4954
  %68 = load i32, i32* %arg, align 4, !dbg !4955
  %call67 = call i32 @comedi_check_trigger_arg_min(i32* %scan_begin_arg66, i32 %68) #4, !dbg !4956
  %69 = load i32, i32* %err, align 4, !dbg !4957
  %or68 = or i32 %69, %call67, !dbg !4957
  store i32 %or68, i32* %err, align 4, !dbg !4957
  br label %if.end69, !dbg !4958

if.end69:                                         ; preds = %if.then63, %if.then54
  br label %if.end70, !dbg !4959

if.end70:                                         ; preds = %if.end69, %if.end51
  %70 = load i32, i32* %err, align 4, !dbg !4960
  %tobool71 = icmp ne i32 %70, 0, !dbg !4960
  br i1 %tobool71, label %if.then72, label %if.end73, !dbg !4962

if.then72:                                        ; preds = %if.end70
  store i32 4, i32* %retval, align 4, !dbg !4963
  br label %return, !dbg !4963

if.end73:                                         ; preds = %if.end70
  store i32 0, i32* %retval, align 4, !dbg !4964
  br label %return, !dbg !4964

return:                                           ; preds = %if.end73, %if.then72, %if.then41, %if.then
  %71 = load i32, i32* %retval, align 4, !dbg !4965
  ret i32 %71, !dbg !4965
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dt3k_ai_cancel(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #2 !dbg !4966 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4967, metadata !DIExpression()), !dbg !4968
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4969, metadata !DIExpression()), !dbg !4970
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4971
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 17, !dbg !4972
  %1 = load i8*, i8** %mmio, align 8, !dbg !4972
  %add.ptr = getelementptr i8, i8* %1, i64 16204, !dbg !4973
  call void @writew(i16 zeroext 0, i8* %add.ptr) #4, !dbg !4974
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4975
  call void @dt3k_send_cmd(%struct.comedi_device* %2, i32 4) #4, !dbg !4976
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4977
  %mmio1 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %3, i32 0, i32 17, !dbg !4978
  %4 = load i8*, i8** %mmio1, align 8, !dbg !4978
  %add.ptr2 = getelementptr i8, i8* %4, i64 16364, !dbg !4979
  call void @writew(i16 zeroext 0, i8* %add.ptr2) #4, !dbg !4980
  ret i32 0, !dbg !4981
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dt3k_ao_insn_write(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !4982 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %chan = alloca i32, align 4
  %val = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4983, metadata !DIExpression()), !dbg !4984
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4985, metadata !DIExpression()), !dbg !4986
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !4987, metadata !DIExpression()), !dbg !4988
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !4989, metadata !DIExpression()), !dbg !4990
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !4991, metadata !DIExpression()), !dbg !4992
  %0 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4993
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %0, i32 0, i32 4, !dbg !4993
  %1 = load i32, i32* %chanspec, align 4, !dbg !4993
  %and = and i32 %1, 65535, !dbg !4993
  store i32 %and, i32* %chan, align 4, !dbg !4992
  call void @llvm.dbg.declare(metadata i32* %val, metadata !4994, metadata !DIExpression()), !dbg !4995
  %2 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4996
  %readback = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %2, i32 0, i32 32, !dbg !4997
  %3 = load i32*, i32** %readback, align 8, !dbg !4997
  %4 = load i32, i32* %chan, align 4, !dbg !4998
  %idxprom = zext i32 %4 to i64, !dbg !4996
  %arrayidx = getelementptr i32, i32* %3, i64 %idxprom, !dbg !4996
  %5 = load i32, i32* %arrayidx, align 4, !dbg !4996
  store i32 %5, i32* %val, align 4, !dbg !4995
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4999, metadata !DIExpression()), !dbg !5000
  store i32 0, i32* %i, align 4, !dbg !5001
  br label %for.cond, !dbg !5003

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4, !dbg !5004
  %7 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5006
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %7, i32 0, i32 1, !dbg !5007
  %8 = load i32, i32* %n, align 4, !dbg !5007
  %cmp = icmp ult i32 %6, %8, !dbg !5008
  br i1 %cmp, label %for.body, label %for.end, !dbg !5009

for.body:                                         ; preds = %for.cond
  %9 = load i32*, i32** %data.addr, align 8, !dbg !5010
  %10 = load i32, i32* %i, align 4, !dbg !5012
  %idxprom1 = sext i32 %10 to i64, !dbg !5010
  %arrayidx2 = getelementptr i32, i32* %9, i64 %idxprom1, !dbg !5010
  %11 = load i32, i32* %arrayidx2, align 4, !dbg !5010
  store i32 %11, i32* %val, align 4, !dbg !5013
  %12 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5014
  %13 = load i32, i32* %chan, align 4, !dbg !5015
  %14 = load i32, i32* %val, align 4, !dbg !5016
  call void @dt3k_writesingle(%struct.comedi_device* %12, i32 1, i32 %13, i32 %14) #4, !dbg !5017
  br label %for.inc, !dbg !5018

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !dbg !5019
  %inc = add i32 %15, 1, !dbg !5019
  store i32 %inc, i32* %i, align 4, !dbg !5019
  br label %for.cond, !dbg !5020, !llvm.loop !5021

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %val, align 4, !dbg !5023
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5024
  %readback3 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %17, i32 0, i32 32, !dbg !5025
  %18 = load i32*, i32** %readback3, align 8, !dbg !5025
  %19 = load i32, i32* %chan, align 4, !dbg !5026
  %idxprom4 = zext i32 %19 to i64, !dbg !5024
  %arrayidx5 = getelementptr i32, i32* %18, i64 %idxprom4, !dbg !5024
  store i32 %16, i32* %arrayidx5, align 4, !dbg !5027
  %20 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5028
  %n6 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %20, i32 0, i32 1, !dbg !5029
  %21 = load i32, i32* %n6, align 4, !dbg !5029
  ret i32 %21, !dbg !5030
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_alloc_subdev_readback(%struct.comedi_subdevice*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dt3k_dio_insn_config(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5031 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %chan = alloca i32, align 4
  %mask = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5032, metadata !DIExpression()), !dbg !5033
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5034, metadata !DIExpression()), !dbg !5035
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5036, metadata !DIExpression()), !dbg !5037
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5038, metadata !DIExpression()), !dbg !5039
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !5040, metadata !DIExpression()), !dbg !5041
  %0 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5042
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %0, i32 0, i32 4, !dbg !5042
  %1 = load i32, i32* %chanspec, align 4, !dbg !5042
  %and = and i32 %1, 65535, !dbg !5042
  store i32 %and, i32* %chan, align 4, !dbg !5041
  call void @llvm.dbg.declare(metadata i32* %mask, metadata !5043, metadata !DIExpression()), !dbg !5044
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5045, metadata !DIExpression()), !dbg !5046
  %2 = load i32, i32* %chan, align 4, !dbg !5047
  %cmp = icmp ult i32 %2, 4, !dbg !5049
  br i1 %cmp, label %if.then, label %if.else, !dbg !5050

if.then:                                          ; preds = %entry
  store i32 15, i32* %mask, align 4, !dbg !5051
  br label %if.end, !dbg !5052

if.else:                                          ; preds = %entry
  store i32 240, i32* %mask, align 4, !dbg !5053
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5054
  %4 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5055
  %5 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5056
  %6 = load i32*, i32** %data.addr, align 8, !dbg !5057
  %7 = load i32, i32* %mask, align 4, !dbg !5058
  %call = call i32 @comedi_dio_insn_config(%struct.comedi_device* %3, %struct.comedi_subdevice* %4, %struct.comedi_insn* %5, i32* %6, i32 %7) #4, !dbg !5059
  store i32 %call, i32* %ret, align 4, !dbg !5060
  %8 = load i32, i32* %ret, align 4, !dbg !5061
  %tobool = icmp ne i32 %8, 0, !dbg !5061
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !5063

if.then1:                                         ; preds = %if.end
  %9 = load i32, i32* %ret, align 4, !dbg !5064
  store i32 %9, i32* %retval, align 4, !dbg !5065
  br label %return, !dbg !5065

if.end2:                                          ; preds = %if.end
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5066
  %11 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5067
  %io_bits = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %11, i32 0, i32 12, !dbg !5068
  %12 = load i32, i32* %io_bits, align 4, !dbg !5068
  %and3 = and i32 %12, 1, !dbg !5069
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5070
  %io_bits4 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %13, i32 0, i32 12, !dbg !5071
  %14 = load i32, i32* %io_bits4, align 4, !dbg !5071
  %and5 = and i32 %14, 16, !dbg !5072
  %shr = lshr i32 %and5, 3, !dbg !5073
  %or = or i32 %and3, %shr, !dbg !5074
  call void @dt3k_dio_config(%struct.comedi_device* %10, i32 %or) #4, !dbg !5075
  %15 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5076
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %15, i32 0, i32 1, !dbg !5077
  %16 = load i32, i32* %n, align 4, !dbg !5077
  store i32 %16, i32* %retval, align 4, !dbg !5078
  br label %return, !dbg !5078

return:                                           ; preds = %if.end2, %if.then1
  %17 = load i32, i32* %retval, align 4, !dbg !5079
  ret i32 %17, !dbg !5079
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dt3k_dio_insn_bits(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5080 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5081, metadata !DIExpression()), !dbg !5082
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5083, metadata !DIExpression()), !dbg !5084
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5085, metadata !DIExpression()), !dbg !5086
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5087, metadata !DIExpression()), !dbg !5088
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5089
  %1 = load i32*, i32** %data.addr, align 8, !dbg !5091
  %call = call i32 @comedi_dio_update_state(%struct.comedi_subdevice* %0, i32* %1) #4, !dbg !5092
  %tobool = icmp ne i32 %call, 0, !dbg !5092
  br i1 %tobool, label %if.then, label %if.end, !dbg !5093

if.then:                                          ; preds = %entry
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5094
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5095
  %state = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %3, i32 0, i32 29, !dbg !5096
  %4 = load i32, i32* %state, align 4, !dbg !5096
  call void @dt3k_writesingle(%struct.comedi_device* %2, i32 3, i32 0, i32 %4) #4, !dbg !5097
  br label %if.end, !dbg !5097

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5098
  %call1 = call i32 @dt3k_readsingle(%struct.comedi_device* %5, i32 2, i32 0, i32 0) #4, !dbg !5099
  %6 = load i32*, i32** %data.addr, align 8, !dbg !5100
  %arrayidx = getelementptr i32, i32* %6, i64 1, !dbg !5100
  store i32 %call1, i32* %arrayidx, align 4, !dbg !5101
  %7 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5102
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %7, i32 0, i32 1, !dbg !5103
  %8 = load i32, i32* %n, align 4, !dbg !5103
  ret i32 %8, !dbg !5104
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dt3k_mem_insn_read(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5105 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5106, metadata !DIExpression()), !dbg !5107
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5108, metadata !DIExpression()), !dbg !5109
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5110, metadata !DIExpression()), !dbg !5111
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5112, metadata !DIExpression()), !dbg !5113
  call void @llvm.dbg.declare(metadata i32* %addr, metadata !5114, metadata !DIExpression()), !dbg !5115
  %0 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5116
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %0, i32 0, i32 4, !dbg !5116
  %1 = load i32, i32* %chanspec, align 4, !dbg !5116
  %and = and i32 %1, 65535, !dbg !5116
  store i32 %and, i32* %addr, align 4, !dbg !5115
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5117, metadata !DIExpression()), !dbg !5118
  store i32 0, i32* %i, align 4, !dbg !5119
  br label %for.cond, !dbg !5121

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !5122
  %3 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5124
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %3, i32 0, i32 1, !dbg !5125
  %4 = load i32, i32* %n, align 4, !dbg !5125
  %cmp = icmp ult i32 %2, %4, !dbg !5126
  br i1 %cmp, label %for.body, label %for.end, !dbg !5127

for.body:                                         ; preds = %for.cond
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5128
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 17, !dbg !5130
  %6 = load i8*, i8** %mmio, align 8, !dbg !5130
  %add.ptr = getelementptr i8, i8* %6, i64 16204, !dbg !5131
  call void @writew(i16 zeroext 4, i8* %add.ptr) #4, !dbg !5132
  %7 = load i32, i32* %addr, align 4, !dbg !5133
  %conv = trunc i32 %7 to i16, !dbg !5133
  %8 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5134
  %mmio1 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 17, !dbg !5135
  %9 = load i8*, i8** %mmio1, align 8, !dbg !5135
  %add.ptr2 = getelementptr i8, i8* %9, i64 16212, !dbg !5136
  call void @writew(i16 zeroext %conv, i8* %add.ptr2) #4, !dbg !5137
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5138
  %mmio3 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 17, !dbg !5139
  %11 = load i8*, i8** %mmio3, align 8, !dbg !5139
  %add.ptr4 = getelementptr i8, i8* %11, i64 16216, !dbg !5140
  call void @writew(i16 zeroext 1, i8* %add.ptr4) #4, !dbg !5141
  %12 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5142
  call void @dt3k_send_cmd(%struct.comedi_device* %12, i32 37) #4, !dbg !5143
  %13 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5144
  %mmio5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 17, !dbg !5145
  %14 = load i8*, i8** %mmio5, align 8, !dbg !5145
  %add.ptr6 = getelementptr i8, i8* %14, i64 16220, !dbg !5146
  %call = call zeroext i16 @readw(i8* %add.ptr6) #4, !dbg !5147
  %conv7 = zext i16 %call to i32, !dbg !5147
  %15 = load i32*, i32** %data.addr, align 8, !dbg !5148
  %16 = load i32, i32* %i, align 4, !dbg !5149
  %idxprom = sext i32 %16 to i64, !dbg !5148
  %arrayidx = getelementptr i32, i32* %15, i64 %idxprom, !dbg !5148
  store i32 %conv7, i32* %arrayidx, align 4, !dbg !5150
  br label %for.inc, !dbg !5151

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !dbg !5152
  %inc = add i32 %17, 1, !dbg !5152
  store i32 %inc, i32* %i, align 4, !dbg !5152
  br label %for.cond, !dbg !5153, !llvm.loop !5154

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %i, align 4, !dbg !5156
  ret i32 %18, !dbg !5157
}

; Function Attrs: noredzone
declare dso_local i32 @request_threaded_irq(i32, i32 (i32, i8*)*, i32 (i32, i8*)*, i64, i8*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @readw(i8* %addr) #2 !dbg !5158 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i16, align 2
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5165, metadata !DIExpression()), !dbg !5166
  call void @llvm.dbg.declare(metadata i16* %ret, metadata !5167, metadata !DIExpression()), !dbg !5166
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !5166
  %1 = bitcast i8* %0 to i16*, !dbg !5166
  %2 = call i16 asm sideeffect "movw $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i16* %1) #5, !dbg !5166, !srcloc !5168
  store i16 %2, i16* %ret, align 2, !dbg !5166
  %3 = load i16, i16* %ret, align 2, !dbg !5166
  ret i16 %3, !dbg !5166
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dt3k_ai_empty_fifo(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #2 !dbg !5169 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %devpriv = alloca %struct.dt3k_private*, align 8
  %front = alloca i32, align 4
  %rear = alloca i32, align 4
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %data = alloca i16, align 2
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5172, metadata !DIExpression()), !dbg !5173
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5174, metadata !DIExpression()), !dbg !5175
  call void @llvm.dbg.declare(metadata %struct.dt3k_private** %devpriv, metadata !5176, metadata !DIExpression()), !dbg !5177
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5178
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5179
  %1 = load i8*, i8** %private, align 8, !dbg !5179
  %2 = bitcast i8* %1 to %struct.dt3k_private*, !dbg !5178
  store %struct.dt3k_private* %2, %struct.dt3k_private** %devpriv, align 8, !dbg !5177
  call void @llvm.dbg.declare(metadata i32* %front, metadata !5180, metadata !DIExpression()), !dbg !5181
  call void @llvm.dbg.declare(metadata i32* %rear, metadata !5182, metadata !DIExpression()), !dbg !5183
  call void @llvm.dbg.declare(metadata i32* %count, metadata !5184, metadata !DIExpression()), !dbg !5185
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5186, metadata !DIExpression()), !dbg !5187
  call void @llvm.dbg.declare(metadata i16* %data, metadata !5188, metadata !DIExpression()), !dbg !5189
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5190
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %3, i32 0, i32 17, !dbg !5191
  %4 = load i8*, i8** %mmio, align 8, !dbg !5191
  %add.ptr = getelementptr i8, i8* %4, i64 16356, !dbg !5192
  %call = call zeroext i16 @readw(i8* %add.ptr) #4, !dbg !5193
  %conv = zext i16 %call to i32, !dbg !5193
  store i32 %conv, i32* %front, align 4, !dbg !5194
  %5 = load i32, i32* %front, align 4, !dbg !5195
  %6 = load %struct.dt3k_private*, %struct.dt3k_private** %devpriv, align 8, !dbg !5196
  %ai_front = getelementptr inbounds %struct.dt3k_private, %struct.dt3k_private* %6, i32 0, i32 1, !dbg !5197
  %7 = load i32, i32* %ai_front, align 4, !dbg !5197
  %sub = sub i32 %5, %7, !dbg !5198
  store i32 %sub, i32* %count, align 4, !dbg !5199
  %8 = load i32, i32* %count, align 4, !dbg !5200
  %cmp = icmp slt i32 %8, 0, !dbg !5202
  br i1 %cmp, label %if.then, label %if.end, !dbg !5203

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %count, align 4, !dbg !5204
  %add = add i32 %9, 2003, !dbg !5204
  store i32 %add, i32* %count, align 4, !dbg !5204
  br label %if.end, !dbg !5205

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.dt3k_private*, %struct.dt3k_private** %devpriv, align 8, !dbg !5206
  %ai_rear = getelementptr inbounds %struct.dt3k_private, %struct.dt3k_private* %10, i32 0, i32 2, !dbg !5207
  %11 = load i32, i32* %ai_rear, align 4, !dbg !5207
  store i32 %11, i32* %rear, align 4, !dbg !5208
  store i32 0, i32* %i, align 4, !dbg !5209
  br label %for.cond, !dbg !5211

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load i32, i32* %i, align 4, !dbg !5212
  %13 = load i32, i32* %count, align 4, !dbg !5214
  %cmp2 = icmp slt i32 %12, %13, !dbg !5215
  br i1 %cmp2, label %for.body, label %for.end, !dbg !5216

for.body:                                         ; preds = %for.cond
  %14 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5217
  %mmio4 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 17, !dbg !5219
  %15 = load i8*, i8** %mmio4, align 8, !dbg !5219
  %add.ptr5 = getelementptr i8, i8* %15, i64 8192, !dbg !5220
  %16 = load i32, i32* %rear, align 4, !dbg !5221
  %idx.ext = sext i32 %16 to i64, !dbg !5222
  %add.ptr6 = getelementptr i8, i8* %add.ptr5, i64 %idx.ext, !dbg !5222
  %call7 = call zeroext i16 @readw(i8* %add.ptr6) #4, !dbg !5223
  store i16 %call7, i16* %data, align 2, !dbg !5224
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5225
  %18 = bitcast i16* %data to i8*, !dbg !5226
  %call8 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %17, i8* %18, i32 1) #4, !dbg !5227
  %19 = load i32, i32* %rear, align 4, !dbg !5228
  %inc = add i32 %19, 1, !dbg !5228
  store i32 %inc, i32* %rear, align 4, !dbg !5228
  %20 = load i32, i32* %rear, align 4, !dbg !5229
  %cmp9 = icmp sge i32 %20, 2003, !dbg !5231
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !5232

if.then11:                                        ; preds = %for.body
  store i32 0, i32* %rear, align 4, !dbg !5233
  br label %if.end12, !dbg !5234

if.end12:                                         ; preds = %if.then11, %for.body
  br label %for.inc, !dbg !5235

for.inc:                                          ; preds = %if.end12
  %21 = load i32, i32* %i, align 4, !dbg !5236
  %inc13 = add i32 %21, 1, !dbg !5236
  store i32 %inc13, i32* %i, align 4, !dbg !5236
  br label %for.cond, !dbg !5237, !llvm.loop !5238

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %rear, align 4, !dbg !5240
  %23 = load %struct.dt3k_private*, %struct.dt3k_private** %devpriv, align 8, !dbg !5241
  %ai_rear14 = getelementptr inbounds %struct.dt3k_private, %struct.dt3k_private* %23, i32 0, i32 2, !dbg !5242
  store i32 %22, i32* %ai_rear14, align 4, !dbg !5243
  %24 = load i32, i32* %rear, align 4, !dbg !5244
  %conv15 = trunc i32 %24 to i16, !dbg !5244
  %25 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5245
  %mmio16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 17, !dbg !5246
  %26 = load i8*, i8** %mmio16, align 8, !dbg !5246
  %add.ptr17 = getelementptr i8, i8* %26, i64 16360, !dbg !5247
  call void @writew(i16 zeroext %conv15, i8* %add.ptr17) #4, !dbg !5248
  ret void, !dbg !5249
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i8*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writew(i16 zeroext %val, i8* %addr) #2 !dbg !5250 {
entry:
  %val.addr = alloca i16, align 2
  %addr.addr = alloca i8*, align 8
  store i16 %val, i16* %val.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %val.addr, metadata !5254, metadata !DIExpression()), !dbg !5255
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5256, metadata !DIExpression()), !dbg !5255
  %0 = load i16, i16* %val.addr, align 2, !dbg !5255
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !5255
  %2 = bitcast i8* %1 to i16*, !dbg !5255
  call void asm sideeffect "movw $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i16 %0, i16* %2) #5, !dbg !5255, !srcloc !5257
  ret void, !dbg !5255
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dt3k_readsingle(%struct.comedi_device* %dev, i32 %subsys, i32 %chan, i32 %gain) #2 !dbg !5258 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %subsys.addr = alloca i32, align 4
  %chan.addr = alloca i32, align 4
  %gain.addr = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5261, metadata !DIExpression()), !dbg !5262
  store i32 %subsys, i32* %subsys.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %subsys.addr, metadata !5263, metadata !DIExpression()), !dbg !5264
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !5265, metadata !DIExpression()), !dbg !5266
  store i32 %gain, i32* %gain.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gain.addr, metadata !5267, metadata !DIExpression()), !dbg !5268
  %0 = load i32, i32* %subsys.addr, align 4, !dbg !5269
  %conv = trunc i32 %0 to i16, !dbg !5269
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5270
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %1, i32 0, i32 17, !dbg !5271
  %2 = load i8*, i8** %mmio, align 8, !dbg !5271
  %add.ptr = getelementptr i8, i8* %2, i64 16204, !dbg !5272
  call void @writew(i16 zeroext %conv, i8* %add.ptr) #4, !dbg !5273
  %3 = load i32, i32* %chan.addr, align 4, !dbg !5274
  %conv1 = trunc i32 %3 to i16, !dbg !5274
  %4 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5275
  %mmio2 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 17, !dbg !5276
  %5 = load i8*, i8** %mmio2, align 8, !dbg !5276
  %add.ptr3 = getelementptr i8, i8* %5, i64 16212, !dbg !5277
  call void @writew(i16 zeroext %conv1, i8* %add.ptr3) #4, !dbg !5278
  %6 = load i32, i32* %gain.addr, align 4, !dbg !5279
  %conv4 = trunc i32 %6 to i16, !dbg !5279
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5280
  %mmio5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 17, !dbg !5281
  %8 = load i8*, i8** %mmio5, align 8, !dbg !5281
  %add.ptr6 = getelementptr i8, i8* %8, i64 16216, !dbg !5282
  call void @writew(i16 zeroext %conv4, i8* %add.ptr6) #4, !dbg !5283
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5284
  call void @dt3k_send_cmd(%struct.comedi_device* %9, i32 5) #4, !dbg !5285
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5286
  %mmio7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 17, !dbg !5287
  %11 = load i8*, i8** %mmio7, align 8, !dbg !5287
  %add.ptr8 = getelementptr i8, i8* %11, i64 16220, !dbg !5288
  %call = call zeroext i16 @readw(i8* %add.ptr8) #4, !dbg !5289
  %conv9 = zext i16 %call to i32, !dbg !5289
  ret i32 %conv9, !dbg !5290
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dt3k_send_cmd(%struct.comedi_device* %dev, i32 %cmd) #2 !dbg !5291 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %cmd.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %status = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5294, metadata !DIExpression()), !dbg !5295
  store i32 %cmd, i32* %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cmd.addr, metadata !5296, metadata !DIExpression()), !dbg !5297
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5298, metadata !DIExpression()), !dbg !5299
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5300, metadata !DIExpression()), !dbg !5301
  store i32 0, i32* %status, align 4, !dbg !5301
  %0 = load i32, i32* %cmd.addr, align 4, !dbg !5302
  %conv = trunc i32 %0 to i16, !dbg !5302
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5303
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %1, i32 0, i32 17, !dbg !5304
  %2 = load i8*, i8** %mmio, align 8, !dbg !5304
  %add.ptr = getelementptr i8, i8* %2, i64 16380, !dbg !5305
  call void @writew(i16 zeroext %conv, i8* %add.ptr) #4, !dbg !5306
  store i32 0, i32* %i, align 4, !dbg !5307
  br label %for.cond, !dbg !5309

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !dbg !5310
  %cmp = icmp slt i32 %3, 100, !dbg !5312
  br i1 %cmp, label %for.body, label %for.end, !dbg !5313

for.body:                                         ; preds = %for.cond
  %4 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5314
  %mmio2 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 17, !dbg !5316
  %5 = load i8*, i8** %mmio2, align 8, !dbg !5316
  %add.ptr3 = getelementptr i8, i8* %5, i64 16380, !dbg !5317
  %call = call zeroext i16 @readw(i8* %add.ptr3) #4, !dbg !5318
  %conv4 = zext i16 %call to i32, !dbg !5318
  store i32 %conv4, i32* %status, align 4, !dbg !5319
  %6 = load i32, i32* %status, align 4, !dbg !5320
  %and = and i32 %6, 65280, !dbg !5320
  store i32 %and, i32* %status, align 4, !dbg !5320
  %7 = load i32, i32* %status, align 4, !dbg !5321
  %cmp5 = icmp ne i32 %7, 0, !dbg !5323
  br i1 %cmp5, label %if.then, label %if.end, !dbg !5324

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !5325

if.end:                                           ; preds = %for.body
  call void @__const_udelay(i64 4295) #4, !dbg !5326
  br label %for.inc, !dbg !5331

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4, !dbg !5332
  %inc = add i32 %8, 1, !dbg !5332
  store i32 %inc, i32* %i, align 4, !dbg !5332
  br label %for.cond, !dbg !5333, !llvm.loop !5334

for.end:                                          ; preds = %if.then, %for.cond
  %9 = load i32, i32* %status, align 4, !dbg !5336
  %cmp7 = icmp ne i32 %9, 21760, !dbg !5338
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !5339

if.then9:                                         ; preds = %for.end
  br label %if.end10, !dbg !5340

if.end10:                                         ; preds = %if.then9, %for.end
  ret void, !dbg !5341
}

; Function Attrs: noredzone
declare dso_local void @__const_udelay(i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dt3k_ns_to_timer(i32 %timer_base, i32* %nanosec, i32 %flags) #2 !dbg !5342 {
entry:
  %retval = alloca i32, align 4
  %timer_base.addr = alloca i32, align 4
  %nanosec.addr = alloca i32*, align 8
  %flags.addr = alloca i32, align 4
  %divider = alloca i32, align 4
  %base = alloca i32, align 4
  %prescale = alloca i32, align 4
  %__x = alloca i32, align 4
  %__d = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %timer_base, i32* %timer_base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %timer_base.addr, metadata !5345, metadata !DIExpression()), !dbg !5346
  store i32* %nanosec, i32** %nanosec.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %nanosec.addr, metadata !5347, metadata !DIExpression()), !dbg !5348
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5349, metadata !DIExpression()), !dbg !5350
  call void @llvm.dbg.declare(metadata i32* %divider, metadata !5351, metadata !DIExpression()), !dbg !5352
  call void @llvm.dbg.declare(metadata i32* %base, metadata !5353, metadata !DIExpression()), !dbg !5354
  call void @llvm.dbg.declare(metadata i32* %prescale, metadata !5355, metadata !DIExpression()), !dbg !5356
  store i32 0, i32* %prescale, align 4, !dbg !5357
  br label %for.cond, !dbg !5359

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %prescale, align 4, !dbg !5360
  %cmp = icmp ult i32 %0, 16, !dbg !5362
  br i1 %cmp, label %for.body, label %for.end, !dbg !5363

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %timer_base.addr, align 4, !dbg !5364
  %2 = load i32, i32* %prescale, align 4, !dbg !5366
  %add = add i32 %2, 1, !dbg !5367
  %mul = mul i32 %1, %add, !dbg !5368
  store i32 %mul, i32* %base, align 4, !dbg !5369
  %3 = load i32, i32* %flags.addr, align 4, !dbg !5370
  %and = and i32 %3, 196608, !dbg !5371
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb
    i32 65536, label %sw.bb3
    i32 131072, label %sw.bb5
  ], !dbg !5372

sw.bb:                                            ; preds = %for.body
  br label %sw.default, !dbg !5373

sw.default:                                       ; preds = %for.body, %sw.bb
  call void @llvm.dbg.declare(metadata i32* %__x, metadata !5374, metadata !DIExpression()), !dbg !5377
  %4 = load i32*, i32** %nanosec.addr, align 8, !dbg !5377
  %5 = load i32, i32* %4, align 4, !dbg !5377
  store i32 %5, i32* %__x, align 4, !dbg !5377
  call void @llvm.dbg.declare(metadata i32* %__d, metadata !5378, metadata !DIExpression()), !dbg !5377
  %6 = load i32, i32* %base, align 4, !dbg !5377
  store i32 %6, i32* %__d, align 4, !dbg !5377
  %7 = load i32, i32* %__x, align 4, !dbg !5377
  %8 = load i32, i32* %__d, align 4, !dbg !5377
  %div = udiv i32 %8, 2, !dbg !5377
  %add1 = add i32 %7, %div, !dbg !5377
  %9 = load i32, i32* %__d, align 4, !dbg !5377
  %div2 = udiv i32 %add1, %9, !dbg !5377
  store i32 %div2, i32* %tmp, align 4, !dbg !5377
  %10 = load i32, i32* %tmp, align 4, !dbg !5377
  store i32 %10, i32* %divider, align 4, !dbg !5379
  br label %sw.epilog, !dbg !5380

sw.bb3:                                           ; preds = %for.body
  %11 = load i32*, i32** %nanosec.addr, align 8, !dbg !5381
  %12 = load i32, i32* %11, align 4, !dbg !5382
  %13 = load i32, i32* %base, align 4, !dbg !5383
  %div4 = udiv i32 %12, %13, !dbg !5384
  store i32 %div4, i32* %divider, align 4, !dbg !5385
  br label %sw.epilog, !dbg !5386

sw.bb5:                                           ; preds = %for.body
  %14 = load i32*, i32** %nanosec.addr, align 8, !dbg !5387
  %15 = load i32, i32* %14, align 4, !dbg !5387
  %16 = load i32, i32* %base, align 4, !dbg !5387
  %add6 = add i32 %15, %16, !dbg !5387
  %sub = sub i32 %add6, 1, !dbg !5387
  %17 = load i32, i32* %base, align 4, !dbg !5387
  %div7 = udiv i32 %sub, %17, !dbg !5387
  store i32 %div7, i32* %divider, align 4, !dbg !5388
  br label %sw.epilog, !dbg !5389

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb3, %sw.default
  %18 = load i32, i32* %divider, align 4, !dbg !5390
  %cmp8 = icmp ult i32 %18, 65536, !dbg !5392
  br i1 %cmp8, label %if.then, label %if.end, !dbg !5393

if.then:                                          ; preds = %sw.epilog
  %19 = load i32, i32* %divider, align 4, !dbg !5394
  %20 = load i32, i32* %base, align 4, !dbg !5396
  %mul9 = mul i32 %19, %20, !dbg !5397
  %21 = load i32*, i32** %nanosec.addr, align 8, !dbg !5398
  store i32 %mul9, i32* %21, align 4, !dbg !5399
  %22 = load i32, i32* %prescale, align 4, !dbg !5400
  %shl = shl i32 %22, 16, !dbg !5401
  %23 = load i32, i32* %divider, align 4, !dbg !5402
  %or = or i32 %shl, %23, !dbg !5403
  store i32 %or, i32* %retval, align 4, !dbg !5404
  br label %return, !dbg !5404

if.end:                                           ; preds = %sw.epilog
  br label %for.inc, !dbg !5405

for.inc:                                          ; preds = %if.end
  %24 = load i32, i32* %prescale, align 4, !dbg !5406
  %inc = add i32 %24, 1, !dbg !5406
  store i32 %inc, i32* %prescale, align 4, !dbg !5406
  br label %for.cond, !dbg !5407, !llvm.loop !5408

for.end:                                          ; preds = %for.cond
  store i32 15, i32* %prescale, align 4, !dbg !5410
  %25 = load i32, i32* %timer_base.addr, align 4, !dbg !5411
  %26 = load i32, i32* %prescale, align 4, !dbg !5412
  %add10 = add i32 %26, 1, !dbg !5413
  %mul11 = mul i32 %25, %add10, !dbg !5414
  store i32 %mul11, i32* %base, align 4, !dbg !5415
  store i32 65535, i32* %divider, align 4, !dbg !5416
  %27 = load i32, i32* %divider, align 4, !dbg !5417
  %28 = load i32, i32* %base, align 4, !dbg !5418
  %mul12 = mul i32 %27, %28, !dbg !5419
  %29 = load i32*, i32** %nanosec.addr, align 8, !dbg !5420
  store i32 %mul12, i32* %29, align 4, !dbg !5421
  %30 = load i32, i32* %prescale, align 4, !dbg !5422
  %shl13 = shl i32 %30, 16, !dbg !5423
  %31 = load i32, i32* %divider, align 4, !dbg !5424
  %or14 = or i32 %shl13, %31, !dbg !5425
  store i32 %or14, i32* %retval, align 4, !dbg !5426
  br label %return, !dbg !5426

return:                                           ; preds = %for.end, %if.then
  %32 = load i32, i32* %retval, align 4, !dbg !5427
  ret i32 %32, !dbg !5427
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_src(i32* %src, i32 %flags) #2 !dbg !5428 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i32*, align 8
  %flags.addr = alloca i32, align 4
  %orig_src = alloca i32, align 4
  store i32* %src, i32** %src.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %src.addr, metadata !5431, metadata !DIExpression()), !dbg !5432
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5433, metadata !DIExpression()), !dbg !5434
  call void @llvm.dbg.declare(metadata i32* %orig_src, metadata !5435, metadata !DIExpression()), !dbg !5436
  %0 = load i32*, i32** %src.addr, align 8, !dbg !5437
  %1 = load i32, i32* %0, align 4, !dbg !5438
  store i32 %1, i32* %orig_src, align 4, !dbg !5436
  %2 = load i32, i32* %orig_src, align 4, !dbg !5439
  %3 = load i32, i32* %flags.addr, align 4, !dbg !5440
  %and = and i32 %2, %3, !dbg !5441
  %4 = load i32*, i32** %src.addr, align 8, !dbg !5442
  store i32 %and, i32* %4, align 4, !dbg !5443
  %5 = load i32*, i32** %src.addr, align 8, !dbg !5444
  %6 = load i32, i32* %5, align 4, !dbg !5446
  %cmp = icmp eq i32 %6, 0, !dbg !5447
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5448

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32*, i32** %src.addr, align 8, !dbg !5449
  %8 = load i32, i32* %7, align 4, !dbg !5450
  %9 = load i32, i32* %orig_src, align 4, !dbg !5451
  %cmp1 = icmp ne i32 %8, %9, !dbg !5452
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5453

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !5454
  br label %return, !dbg !5454

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %retval, align 4, !dbg !5455
  br label %return, !dbg !5455

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !5456
  ret i32 %10, !dbg !5456
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_arg_is(i32* %arg, i32 %val) #2 !dbg !5457 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i32*, align 8
  %val.addr = alloca i32, align 4
  store i32* %arg, i32** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %arg.addr, metadata !5458, metadata !DIExpression()), !dbg !5459
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5460, metadata !DIExpression()), !dbg !5461
  %0 = load i32*, i32** %arg.addr, align 8, !dbg !5462
  %1 = load i32, i32* %0, align 4, !dbg !5464
  %2 = load i32, i32* %val.addr, align 4, !dbg !5465
  %cmp = icmp ne i32 %1, %2, !dbg !5466
  br i1 %cmp, label %if.then, label %if.end, !dbg !5467

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %val.addr, align 4, !dbg !5468
  %4 = load i32*, i32** %arg.addr, align 8, !dbg !5470
  store i32 %3, i32* %4, align 4, !dbg !5471
  store i32 -22, i32* %retval, align 4, !dbg !5472
  br label %return, !dbg !5472

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5473
  br label %return, !dbg !5473

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !5474
  ret i32 %5, !dbg !5474
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_arg_min(i32* %arg, i32 %val) #2 !dbg !5475 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i32*, align 8
  %val.addr = alloca i32, align 4
  store i32* %arg, i32** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %arg.addr, metadata !5476, metadata !DIExpression()), !dbg !5477
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5478, metadata !DIExpression()), !dbg !5479
  %0 = load i32*, i32** %arg.addr, align 8, !dbg !5480
  %1 = load i32, i32* %0, align 4, !dbg !5482
  %2 = load i32, i32* %val.addr, align 4, !dbg !5483
  %cmp = icmp ult i32 %1, %2, !dbg !5484
  br i1 %cmp, label %if.then, label %if.end, !dbg !5485

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %val.addr, align 4, !dbg !5486
  %4 = load i32*, i32** %arg.addr, align 8, !dbg !5488
  store i32 %3, i32* %4, align 4, !dbg !5489
  store i32 -22, i32* %retval, align 4, !dbg !5490
  br label %return, !dbg !5490

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5491
  br label %return, !dbg !5491

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !5492
  ret i32 %5, !dbg !5492
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_arg_max(i32* %arg, i32 %val) #2 !dbg !5493 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i32*, align 8
  %val.addr = alloca i32, align 4
  store i32* %arg, i32** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %arg.addr, metadata !5494, metadata !DIExpression()), !dbg !5495
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5496, metadata !DIExpression()), !dbg !5497
  %0 = load i32*, i32** %arg.addr, align 8, !dbg !5498
  %1 = load i32, i32* %0, align 4, !dbg !5500
  %2 = load i32, i32* %val.addr, align 4, !dbg !5501
  %cmp = icmp ugt i32 %1, %2, !dbg !5502
  br i1 %cmp, label %if.then, label %if.end, !dbg !5503

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %val.addr, align 4, !dbg !5504
  %4 = load i32*, i32** %arg.addr, align 8, !dbg !5506
  store i32 %3, i32* %4, align 4, !dbg !5507
  store i32 -22, i32* %retval, align 4, !dbg !5508
  br label %return, !dbg !5508

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5509
  br label %return, !dbg !5509

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !5510
  ret i32 %5, !dbg !5510
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dt3k_writesingle(%struct.comedi_device* %dev, i32 %subsys, i32 %chan, i32 %data) #2 !dbg !5511 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %subsys.addr = alloca i32, align 4
  %chan.addr = alloca i32, align 4
  %data.addr = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5514, metadata !DIExpression()), !dbg !5515
  store i32 %subsys, i32* %subsys.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %subsys.addr, metadata !5516, metadata !DIExpression()), !dbg !5517
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !5518, metadata !DIExpression()), !dbg !5519
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !5520, metadata !DIExpression()), !dbg !5521
  %0 = load i32, i32* %subsys.addr, align 4, !dbg !5522
  %conv = trunc i32 %0 to i16, !dbg !5522
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5523
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %1, i32 0, i32 17, !dbg !5524
  %2 = load i8*, i8** %mmio, align 8, !dbg !5524
  %add.ptr = getelementptr i8, i8* %2, i64 16204, !dbg !5525
  call void @writew(i16 zeroext %conv, i8* %add.ptr) #4, !dbg !5526
  %3 = load i32, i32* %chan.addr, align 4, !dbg !5527
  %conv1 = trunc i32 %3 to i16, !dbg !5527
  %4 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5528
  %mmio2 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 17, !dbg !5529
  %5 = load i8*, i8** %mmio2, align 8, !dbg !5529
  %add.ptr3 = getelementptr i8, i8* %5, i64 16212, !dbg !5530
  call void @writew(i16 zeroext %conv1, i8* %add.ptr3) #4, !dbg !5531
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5532
  %mmio4 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 17, !dbg !5533
  %7 = load i8*, i8** %mmio4, align 8, !dbg !5533
  %add.ptr5 = getelementptr i8, i8* %7, i64 16216, !dbg !5534
  call void @writew(i16 zeroext 0, i8* %add.ptr5) #4, !dbg !5535
  %8 = load i32, i32* %data.addr, align 4, !dbg !5536
  %conv6 = trunc i32 %8 to i16, !dbg !5536
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5537
  %mmio7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 17, !dbg !5538
  %10 = load i8*, i8** %mmio7, align 8, !dbg !5538
  %add.ptr8 = getelementptr i8, i8* %10, i64 16220, !dbg !5539
  call void @writew(i16 zeroext %conv6, i8* %add.ptr8) #4, !dbg !5540
  %11 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5541
  call void @dt3k_send_cmd(%struct.comedi_device* %11, i32 6) #4, !dbg !5542
  ret void, !dbg !5543
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_dio_insn_config(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dt3k_dio_config(%struct.comedi_device* %dev, i32 %bits) #2 !dbg !5544 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %bits.addr = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5547, metadata !DIExpression()), !dbg !5548
  store i32 %bits, i32* %bits.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bits.addr, metadata !5549, metadata !DIExpression()), !dbg !5550
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5551
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 17, !dbg !5552
  %1 = load i8*, i8** %mmio, align 8, !dbg !5552
  %add.ptr = getelementptr i8, i8* %1, i64 16204, !dbg !5553
  call void @writew(i16 zeroext 3, i8* %add.ptr) #4, !dbg !5554
  %2 = load i32, i32* %bits.addr, align 4, !dbg !5555
  %conv = trunc i32 %2 to i16, !dbg !5555
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5556
  %mmio1 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %3, i32 0, i32 17, !dbg !5557
  %4 = load i8*, i8** %mmio1, align 8, !dbg !5557
  %add.ptr2 = getelementptr i8, i8* %4, i64 16212, !dbg !5558
  call void @writew(i16 zeroext %conv, i8* %add.ptr2) #4, !dbg !5559
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5560
  call void @dt3k_send_cmd(%struct.comedi_device* %5, i32 1) #4, !dbg !5561
  ret void, !dbg !5562
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_dio_update_state(%struct.comedi_subdevice*, i32*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dt3000_pci_probe(%struct.pci_dev* %dev, %struct.pci_device_id* %id) #2 !dbg !5563 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %id.addr = alloca %struct.pci_device_id*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5564, metadata !DIExpression()), !dbg !5565
  store %struct.pci_device_id* %id, %struct.pci_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_device_id** %id.addr, metadata !5566, metadata !DIExpression()), !dbg !5567
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5568
  %1 = load %struct.pci_device_id*, %struct.pci_device_id** %id.addr, align 8, !dbg !5569
  %driver_data = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %1, i32 0, i32 6, !dbg !5570
  %2 = load i64, i64* %driver_data, align 8, !dbg !5570
  %call = call i32 @comedi_pci_auto_config(%struct.pci_dev* %0, %struct.comedi_driver* @dt3000_driver, i64 %2) #4, !dbg !5571
  ret i32 %call, !dbg !5572
}

; Function Attrs: noredzone
declare dso_local void @comedi_pci_auto_unconfig(%struct.pci_dev*) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_pci_auto_config(%struct.pci_dev*, %struct.comedi_driver*, i64) #1

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { noredzone }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4291, !4292, !4293, !4294}
!llvm.ident = !{!4295}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dt3000_driver_init234", scope: !2, file: !3, line: 736, type: !193, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !133, globals: !138, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/staging/comedi/drivers/dt3000.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !100, !116, !122}
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
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !117, line: 11, baseType: !7, size: 32, elements: !118)
!117 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!118 = !{!119, !120, !121}
!119 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!120 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!121 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "comedi_cb", file: !123, line: 383, baseType: !7, size: 32, elements: !124)
!123 = !DIFile(filename: "drivers/staging/comedi/drivers/../comedidev.h", directory: "/home/lizy2001/genbc/linux")
!124 = !{!125, !126, !127, !128, !129, !130, !131, !132}
!125 = !DIEnumerator(name: "COMEDI_CB_EOS", value: 1, isUnsigned: true)
!126 = !DIEnumerator(name: "COMEDI_CB_EOA", value: 2, isUnsigned: true)
!127 = !DIEnumerator(name: "COMEDI_CB_BLOCK", value: 4, isUnsigned: true)
!128 = !DIEnumerator(name: "COMEDI_CB_EOBUF", value: 8, isUnsigned: true)
!129 = !DIEnumerator(name: "COMEDI_CB_ERROR", value: 16, isUnsigned: true)
!130 = !DIEnumerator(name: "COMEDI_CB_OVERFLOW", value: 32, isUnsigned: true)
!131 = !DIEnumerator(name: "COMEDI_CB_ERROR_MASK", value: 48, isUnsigned: true)
!132 = !DIEnumerator(name: "COMEDI_CB_CANCEL_MASK", value: 50, isUnsigned: true)
!133 = !{!134, !135}
!134 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !137)
!137 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!138 = !{!0, !139, !146, !153, !158, !163, !168, !3987, !4001, !4003, !4005, !4007, !4288}
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(name: "__exitcall_dt3000_driver_exit", scope: !2, file: !3, line: 736, type: !141, isLocal: true, isDefinition: true)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !142, line: 117, baseType: !143)
!142 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{null}
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author235", scope: !2, file: !3, line: 738, type: !148, isLocal: true, isDefinition: true, align: 8)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 352, elements: !151)
!149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!150 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!151 = !{!152}
!152 = !DISubrange(count: 44)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description236", scope: !2, file: !3, line: 739, type: !155, isLocal: true, isDefinition: true, align: 8)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 600, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 75)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file237", scope: !2, file: !3, line: 740, type: !160, isLocal: true, isDefinition: true, align: 8)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 400, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 50)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license238", scope: !2, file: !3, line: 740, type: !165, isLocal: true, isDefinition: true, align: 8)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 152, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 19)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(name: "dt3000_driver", scope: !2, file: !3, line: 705, type: !170, isLocal: true, isDefinition: true)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_driver", file: !123, line: 437, size: 576, elements: !171)
!171 = !{!172, !174, !176, !180, !3977, !3978, !3982, !3983, !3986}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !170, file: !123, line: 439, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !170, file: !123, line: 441, baseType: !175, size: 64, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !170, file: !123, line: 442, baseType: !177, size: 64, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !179, line: 76, flags: DIFlagFwdDecl)
!179 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!180 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !170, file: !123, line: 443, baseType: !181, size: 64, offset: 192)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DISubroutineType(types: !183)
!183 = !{!134, !184, !3970}
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_device", file: !123, line: 541, size: 1920, elements: !186)
!186 = !{!187, !188, !189, !192, !194, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3958, !3962, !3966}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !185, file: !123, line: 542, baseType: !134, size: 32)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !185, file: !123, line: 543, baseType: !173, size: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "pacer", scope: !185, file: !123, line: 544, baseType: !190, size: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_8254", file: !123, line: 544, flags: DIFlagFwdDecl)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !185, file: !123, line: 545, baseType: !193, size: 64, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !185, file: !123, line: 547, baseType: !195, size: 64, offset: 256)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !197)
!197 = !{!198, !3355, !3356, !3359, !3360, !3411, !3502, !3503, !3504, !3505, !3506, !3515, !3620, !3633, !3636, !3637, !3641, !3643, !3644, !3645, !3649, !3655, !3656, !3659, !3663, !3753, !3754, !3755, !3756, !3757, !3789, !3790, !3791, !3794, !3797, !3798, !3799, !3800}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !196, file: !73, line: 462, baseType: !199, size: 512)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !200, line: 64, size: 512, elements: !201)
!200 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!201 = !{!202, !203, !210, !212, !272, !3206, !3345, !3350, !3351, !3352, !3353, !3354}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !199, file: !200, line: 65, baseType: !175, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !199, file: !200, line: 66, baseType: !204, size: 128, offset: 64)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !205, line: 178, size: 128, elements: !206)
!205 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!206 = !{!207, !209}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !204, file: !205, line: 179, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !204, file: !205, line: 179, baseType: !208, size: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !199, file: !200, line: 67, baseType: !211, size: 64, offset: 192)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !199, file: !200, line: 68, baseType: !213, size: 64, offset: 256)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !200, line: 192, size: 704, elements: !215)
!215 = !{!216, !217, !233, !234}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !214, file: !200, line: 193, baseType: !204, size: 128)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !214, file: !200, line: 194, baseType: !218, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !219, line: 83, baseType: !220)
!219 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !219, line: 71, elements: !221)
!221 = !{!222}
!222 = !DIDerivedType(tag: DW_TAG_member, scope: !220, file: !219, line: 72, baseType: !223)
!223 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !220, file: !219, line: 72, elements: !224)
!224 = !{!225}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !223, file: !219, line: 73, baseType: !226)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !219, line: 20, elements: !227)
!227 = !{!228}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !226, file: !219, line: 21, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !230, line: 25, baseType: !231)
!230 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !230, line: 25, elements: !232)
!232 = !{}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !214, file: !200, line: 195, baseType: !199, size: 512, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !214, file: !200, line: 196, baseType: !235, size: 64, offset: 640)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !237)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !200, line: 156, size: 192, elements: !238)
!238 = !{!239, !244, !249}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !237, file: !200, line: 157, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{!134, !213, !211}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !237, file: !200, line: 158, baseType: !245, size: 64, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!175, !213, !211}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !237, file: !200, line: 159, baseType: !250, size: 64, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DISubroutineType(types: !253)
!253 = !{!134, !213, !211, !254}
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !200, line: 148, size: 20736, elements: !256)
!256 = !{!257, !262, !266, !267, !271}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !255, file: !200, line: 149, baseType: !258, size: 192)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 192, elements: !260)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!260 = !{!261}
!261 = !DISubrange(count: 3)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !255, file: !200, line: 150, baseType: !263, size: 4096, offset: 192)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 4096, elements: !264)
!264 = !{!265}
!265 = !DISubrange(count: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !255, file: !200, line: 151, baseType: !134, size: 32, offset: 4288)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !255, file: !200, line: 152, baseType: !268, size: 16384, offset: 4320)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 16384, elements: !269)
!269 = !{!270}
!270 = !DISubrange(count: 2048)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !255, file: !200, line: 153, baseType: !134, size: 32, offset: 20704)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !199, file: !200, line: 69, baseType: !273, size: 64, offset: 320)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !200, line: 138, size: 448, elements: !275)
!275 = !{!276, !280, !309, !311, !3168, !3196, !3200}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !274, file: !200, line: 139, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{null, !211}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !274, file: !200, line: 140, baseType: !281, size: 64, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !284, line: 230, size: 128, elements: !285)
!284 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!285 = !{!286, !301}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !283, file: !284, line: 231, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{!290, !211, !295, !259}
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !205, line: 60, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !292, line: 73, baseType: !293)
!292 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !292, line: 15, baseType: !294)
!294 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !284, line: 30, size: 128, elements: !297)
!297 = !{!298, !299}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !296, file: !284, line: 31, baseType: !175, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !296, file: !284, line: 32, baseType: !300, size: 16, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !205, line: 19, baseType: !137)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !283, file: !284, line: 232, baseType: !302, size: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{!290, !211, !295, !175, !305}
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !205, line: 55, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !292, line: 72, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !292, line: 16, baseType: !308)
!308 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !274, file: !200, line: 141, baseType: !310, size: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !274, file: !200, line: 142, baseType: !312, size: 64, offset: 192)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !284, line: 84, size: 320, elements: !316)
!316 = !{!317, !318, !322, !3165, !3166}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !315, file: !284, line: 85, baseType: !175, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !315, file: !284, line: 86, baseType: !319, size: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{!300, !211, !295, !134}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !315, file: !284, line: 88, baseType: !323, size: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!300, !211, !326, !134}
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !284, line: 168, size: 448, elements: !328)
!328 = !{!329, !330, !331, !332, !3160, !3161}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !327, file: !284, line: 169, baseType: !296, size: 128)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !327, file: !284, line: 170, baseType: !305, size: 64, offset: 128)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !327, file: !284, line: 171, baseType: !193, size: 64, offset: 192)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !327, file: !284, line: 172, baseType: !333, size: 64, offset: 256)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{!290, !336, !211, !326, !259, !515, !305}
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !338)
!338 = !{!339, !357, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3143, !3144, !3153, !3154, !3155, !3156, !3157, !3158, !3159}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !337, file: !44, line: 920, baseType: !340, size: 128)
!340 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !337, file: !44, line: 917, size: 128, elements: !341)
!341 = !{!342, !348}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !340, file: !44, line: 918, baseType: !343, size: 64)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !344, line: 58, size: 64, elements: !345)
!344 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!345 = !{!346}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !343, file: !344, line: 59, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !340, file: !44, line: 919, baseType: !349, size: 128, align: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !205, line: 216, size: 128, align: 64, elements: !350)
!350 = !{!351, !353}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !349, file: !205, line: 217, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !349, file: !205, line: 218, baseType: !354, size: 64, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !352}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !337, file: !44, line: 921, baseType: !358, size: 128, offset: 128)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !359, line: 8, size: 128, elements: !360)
!359 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!360 = !{!361, !365}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !358, file: !359, line: 9, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !364, line: 18, flags: DIFlagFwdDecl)
!364 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!365 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !358, file: !359, line: 10, baseType: !366, size: 64, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !364, line: 89, size: 1536, elements: !368)
!368 = !{!369, !370, !380, !388, !389, !412, !3093, !3095, !3107, !3108, !3109, !3110, !3111, !3117, !3118, !3119}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !367, file: !364, line: 91, baseType: !7, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !367, file: !364, line: 92, baseType: !371, size: 32, offset: 32)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !372, line: 277, baseType: !373)
!372 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !372, line: 277, size: 32, elements: !374)
!374 = !{!375}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !373, file: !372, line: 277, baseType: !376, size: 32)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !372, line: 70, baseType: !377)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !372, line: 65, size: 32, elements: !378)
!378 = !{!379}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !377, file: !372, line: 66, baseType: !7, size: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !367, file: !364, line: 93, baseType: !381, size: 128, offset: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !382, line: 38, size: 128, elements: !383)
!382 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!383 = !{!384, !386}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !381, file: !382, line: 39, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !381, file: !382, line: 39, baseType: !387, size: 64, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !367, file: !364, line: 94, baseType: !366, size: 64, offset: 192)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !367, file: !364, line: 95, baseType: !390, size: 128, offset: 256)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !364, line: 47, size: 128, elements: !391)
!391 = !{!392, !408}
!392 = !DIDerivedType(tag: DW_TAG_member, scope: !390, file: !364, line: 48, baseType: !393, size: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !390, file: !364, line: 48, size: 64, elements: !394)
!394 = !{!395, !404}
!395 = !DIDerivedType(tag: DW_TAG_member, scope: !393, file: !364, line: 49, baseType: !396, size: 64)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !393, file: !364, line: 49, size: 64, elements: !397)
!397 = !{!398, !403}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !396, file: !364, line: 50, baseType: !399, size: 32)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !400, line: 21, baseType: !401)
!400 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !402, line: 27, baseType: !7)
!402 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!403 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !396, file: !364, line: 50, baseType: !399, size: 32, offset: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !393, file: !364, line: 52, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !400, line: 23, baseType: !406)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !402, line: 31, baseType: !407)
!407 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !390, file: !364, line: 54, baseType: !409, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !411)
!411 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !367, file: !364, line: 96, baseType: !413, size: 64, offset: 384)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !415)
!415 = !{!416, !417, !418, !426, !433, !434, !582, !2804, !2805, !2806, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !3069, !3077, !3078, !3079, !3089, !3090, !3091, !3092}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !414, file: !44, line: 611, baseType: !300, size: 16)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !414, file: !44, line: 612, baseType: !137, size: 16, offset: 16)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !414, file: !44, line: 613, baseType: !419, size: 32, offset: 32)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !420, line: 23, baseType: !421)
!420 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !420, line: 21, size: 32, elements: !422)
!422 = !{!423}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !421, file: !420, line: 22, baseType: !424, size: 32)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !205, line: 32, baseType: !425)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !292, line: 49, baseType: !7)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !414, file: !44, line: 614, baseType: !427, size: 32, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !420, line: 28, baseType: !428)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !420, line: 26, size: 32, elements: !429)
!429 = !{!430}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !428, file: !420, line: 27, baseType: !431, size: 32)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !205, line: 33, baseType: !432)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !292, line: 50, baseType: !7)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !414, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !414, file: !44, line: 622, baseType: !435, size: 64, offset: 128)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !437)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !438)
!438 = !{!439, !443, !456, !460, !466, !470, !476, !480, !484, !488, !492, !493, !499, !503, !529, !558, !562, !568, !573, !577, !578}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !437, file: !44, line: 1865, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{!366, !413, !366, !7}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !437, file: !44, line: 1866, baseType: !444, size: 64, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!175, !366, !413, !447}
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !449, line: 10, size: 128, elements: !450)
!449 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!450 = !{!451, !455}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !448, file: !449, line: 11, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{null, !193}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !448, file: !449, line: 12, baseType: !193, size: 64, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !437, file: !44, line: 1867, baseType: !457, size: 64, offset: 128)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{!134, !413, !134}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !437, file: !44, line: 1868, baseType: !461, size: 64, offset: 192)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{!464, !413, !134}
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !437, file: !44, line: 1870, baseType: !467, size: 64, offset: 256)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!134, !366, !259, !134}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !437, file: !44, line: 1872, baseType: !471, size: 64, offset: 320)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{!134, !413, !366, !300, !474}
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !205, line: 30, baseType: !475)
!475 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !437, file: !44, line: 1873, baseType: !477, size: 64, offset: 384)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{!134, !366, !413, !366}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !437, file: !44, line: 1874, baseType: !481, size: 64, offset: 448)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!134, !413, !366}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !437, file: !44, line: 1875, baseType: !485, size: 64, offset: 512)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!134, !413, !366, !175}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !437, file: !44, line: 1876, baseType: !489, size: 64, offset: 576)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{!134, !413, !366, !300}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !437, file: !44, line: 1877, baseType: !481, size: 64, offset: 640)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !437, file: !44, line: 1878, baseType: !494, size: 64, offset: 704)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{!134, !413, !366, !300, !497}
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !205, line: 16, baseType: !498)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !205, line: 13, baseType: !399)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !437, file: !44, line: 1879, baseType: !500, size: 64, offset: 768)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!134, !413, !366, !413, !366, !7}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !437, file: !44, line: 1881, baseType: !504, size: 64, offset: 832)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!134, !366, !507}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !509)
!509 = !{!510, !511, !512, !513, !514, !518, !526, !527, !528}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !508, file: !44, line: 220, baseType: !7, size: 32)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !508, file: !44, line: 221, baseType: !300, size: 16, offset: 32)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !508, file: !44, line: 222, baseType: !419, size: 32, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !508, file: !44, line: 223, baseType: !427, size: 32, offset: 96)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !508, file: !44, line: 224, baseType: !515, size: 64, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !205, line: 46, baseType: !516)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !292, line: 88, baseType: !517)
!517 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !508, file: !44, line: 225, baseType: !519, size: 128, offset: 192)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !520, line: 13, size: 128, elements: !521)
!520 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!521 = !{!522, !525}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !519, file: !520, line: 14, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !520, line: 8, baseType: !524)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !402, line: 30, baseType: !517)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !519, file: !520, line: 15, baseType: !294, size: 64, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !508, file: !44, line: 226, baseType: !519, size: 128, offset: 320)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !508, file: !44, line: 227, baseType: !519, size: 128, offset: 448)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !508, file: !44, line: 234, baseType: !336, size: 64, offset: 576)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !437, file: !44, line: 1882, baseType: !530, size: 64, offset: 896)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DISubroutineType(types: !532)
!532 = !{!134, !533, !535, !399, !7}
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !358)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !537, line: 22, size: 1152, elements: !538)
!537 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!538 = !{!539, !540, !541, !542, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !536, file: !537, line: 23, baseType: !399, size: 32)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !536, file: !537, line: 24, baseType: !300, size: 16, offset: 32)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !536, file: !537, line: 25, baseType: !7, size: 32, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !536, file: !537, line: 26, baseType: !543, size: 32, offset: 96)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !205, line: 104, baseType: !399)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !536, file: !537, line: 27, baseType: !405, size: 64, offset: 128)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !536, file: !537, line: 28, baseType: !405, size: 64, offset: 192)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !536, file: !537, line: 37, baseType: !405, size: 64, offset: 256)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !536, file: !537, line: 38, baseType: !497, size: 32, offset: 320)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !536, file: !537, line: 39, baseType: !497, size: 32, offset: 352)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !536, file: !537, line: 40, baseType: !419, size: 32, offset: 384)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !536, file: !537, line: 41, baseType: !427, size: 32, offset: 416)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !536, file: !537, line: 42, baseType: !515, size: 64, offset: 448)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !536, file: !537, line: 43, baseType: !519, size: 128, offset: 512)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !536, file: !537, line: 44, baseType: !519, size: 128, offset: 640)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !536, file: !537, line: 45, baseType: !519, size: 128, offset: 768)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !536, file: !537, line: 46, baseType: !519, size: 128, offset: 896)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !536, file: !537, line: 47, baseType: !405, size: 64, offset: 1024)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !536, file: !537, line: 48, baseType: !405, size: 64, offset: 1088)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !437, file: !44, line: 1883, baseType: !559, size: 64, offset: 960)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{!290, !366, !259, !305}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !437, file: !44, line: 1884, baseType: !563, size: 64, offset: 1024)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DISubroutineType(types: !565)
!565 = !{!134, !413, !566, !405, !405}
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !437, file: !44, line: 1886, baseType: !569, size: 64, offset: 1088)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{!134, !413, !572, !134}
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !437, file: !44, line: 1887, baseType: !574, size: 64, offset: 1152)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{!134, !413, !366, !336, !7, !300}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !437, file: !44, line: 1890, baseType: !489, size: 64, offset: 1216)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !437, file: !44, line: 1891, baseType: !579, size: 64, offset: 1280)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DISubroutineType(types: !581)
!581 = !{!134, !413, !464, !134}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !414, file: !44, line: 623, baseType: !583, size: 64, offset: 192)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !585)
!585 = !{!586, !587, !588, !589, !590, !591, !638, !2411, !2493, !2576, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2592, !2596, !2597, !2600, !2601, !2604, !2605, !2606, !2647, !2674, !2675, !2676, !2677, !2678, !2679, !2682, !2684, !2691, !2692, !2694, !2695, !2696, !2755, !2756, !2771, !2772, !2773, !2774, !2775, !2778, !2779, !2780, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !584, file: !44, line: 1417, baseType: !204, size: 128)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !584, file: !44, line: 1418, baseType: !497, size: 32, offset: 128)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !584, file: !44, line: 1419, baseType: !411, size: 8, offset: 160)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !584, file: !44, line: 1420, baseType: !308, size: 64, offset: 192)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !584, file: !44, line: 1421, baseType: !515, size: 64, offset: 256)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !584, file: !44, line: 1422, baseType: !592, size: 64, offset: 320)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !594)
!594 = !{!595, !596, !597, !604, !608, !612, !616, !617, !618, !628, !631, !632, !633, !635, !636, !637}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !593, file: !44, line: 2229, baseType: !175, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !593, file: !44, line: 2230, baseType: !134, size: 32, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !593, file: !44, line: 2238, baseType: !598, size: 64, offset: 128)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{!134, !601}
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !603, line: 28, flags: DIFlagFwdDecl)
!603 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!604 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !593, file: !44, line: 2239, baseType: !605, size: 64, offset: 192)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !607)
!607 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !593, file: !44, line: 2240, baseType: !609, size: 64, offset: 256)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{!366, !592, !134, !175, !193}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !593, file: !44, line: 2242, baseType: !613, size: 64, offset: 320)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{null, !583}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !593, file: !44, line: 2243, baseType: !177, size: 64, offset: 384)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !593, file: !44, line: 2244, baseType: !592, size: 64, offset: 448)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !593, file: !44, line: 2245, baseType: !619, size: 64, offset: 512)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !205, line: 182, size: 64, elements: !620)
!620 = !{!621}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !619, file: !205, line: 183, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !205, line: 186, size: 128, elements: !624)
!624 = !{!625, !626}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !623, file: !205, line: 187, baseType: !622, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !623, file: !205, line: 187, baseType: !627, size: 64, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !593, file: !44, line: 2247, baseType: !629, offset: 576)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !630, line: 187, elements: !232)
!630 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!631 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !593, file: !44, line: 2248, baseType: !629, offset: 576)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !593, file: !44, line: 2249, baseType: !629, offset: 576)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !593, file: !44, line: 2250, baseType: !634, offset: 576)
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !629, elements: !260)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !593, file: !44, line: 2252, baseType: !629, offset: 576)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !593, file: !44, line: 2253, baseType: !629, offset: 576)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !593, file: !44, line: 2254, baseType: !629, offset: 576)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !584, file: !44, line: 1423, baseType: !639, size: 64, offset: 384)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !641)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !642)
!642 = !{!643, !647, !651, !652, !656, !662, !666, !667, !668, !672, !676, !677, !678, !679, !685, !690, !691, !698, !699, !700, !701, !2395, !2410}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !641, file: !44, line: 1936, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{!413, !583}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !641, file: !44, line: 1937, baseType: !648, size: 64, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{null, !413}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !641, file: !44, line: 1938, baseType: !648, size: 64, offset: 128)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !641, file: !44, line: 1940, baseType: !653, size: 64, offset: 192)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{null, !413, !134}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !641, file: !44, line: 1941, baseType: !657, size: 64, offset: 256)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{!134, !413, !660}
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !641, file: !44, line: 1942, baseType: !663, size: 64, offset: 320)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{!134, !413}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !641, file: !44, line: 1943, baseType: !648, size: 64, offset: 384)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !641, file: !44, line: 1944, baseType: !613, size: 64, offset: 448)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !641, file: !44, line: 1945, baseType: !669, size: 64, offset: 512)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{!134, !583, !134}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !641, file: !44, line: 1946, baseType: !673, size: 64, offset: 576)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DISubroutineType(types: !675)
!675 = !{!134, !583}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !641, file: !44, line: 1947, baseType: !673, size: 64, offset: 640)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !641, file: !44, line: 1948, baseType: !673, size: 64, offset: 704)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !641, file: !44, line: 1949, baseType: !673, size: 64, offset: 768)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !641, file: !44, line: 1950, baseType: !680, size: 64, offset: 832)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{!134, !366, !683}
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !641, file: !44, line: 1951, baseType: !686, size: 64, offset: 896)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DISubroutineType(types: !688)
!688 = !{!134, !583, !689, !259}
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !641, file: !44, line: 1952, baseType: !613, size: 64, offset: 960)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !641, file: !44, line: 1954, baseType: !692, size: 64, offset: 1024)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DISubroutineType(types: !694)
!694 = !{!134, !695, !366}
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !697, line: 539, flags: DIFlagFwdDecl)
!697 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!698 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !641, file: !44, line: 1955, baseType: !692, size: 64, offset: 1088)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !641, file: !44, line: 1956, baseType: !692, size: 64, offset: 1152)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !641, file: !44, line: 1957, baseType: !692, size: 64, offset: 1216)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !641, file: !44, line: 1963, baseType: !702, size: 64, offset: 1280)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DISubroutineType(types: !704)
!704 = !{!134, !583, !705, !728}
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !707, line: 68, size: 512, align: 128, elements: !708)
!707 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!708 = !{!709, !710, !2387, !2394}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !706, file: !707, line: 69, baseType: !308, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, scope: !706, file: !707, line: 77, baseType: !711, size: 320, offset: 64)
!711 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !706, file: !707, line: 77, size: 320, elements: !712)
!712 = !{!713, !901, !906, !934, !942, !948, !2318, !2386}
!713 = !DIDerivedType(tag: DW_TAG_member, scope: !711, file: !707, line: 78, baseType: !714, size: 320)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !711, file: !707, line: 78, size: 320, elements: !715)
!715 = !{!716, !717, !899, !900}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !714, file: !707, line: 84, baseType: !204, size: 128)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !714, file: !707, line: 86, baseType: !718, size: 64, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !720)
!720 = !{!721, !722, !730, !731, !736, !751, !767, !768, !769, !770, !892, !893, !896, !897, !898}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !719, file: !44, line: 452, baseType: !413, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !719, file: !44, line: 453, baseType: !723, size: 128, offset: 64)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !724, line: 292, size: 128, elements: !725)
!724 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!725 = !{!726, !727, !729}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !723, file: !724, line: 293, baseType: !218)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !723, file: !724, line: 295, baseType: !728, size: 32)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !205, line: 148, baseType: !7)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !723, file: !724, line: 296, baseType: !193, size: 64, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !719, file: !44, line: 454, baseType: !728, size: 32, offset: 192)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !719, file: !44, line: 455, baseType: !732, size: 32, offset: 224)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !205, line: 168, baseType: !733)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !205, line: 166, size: 32, elements: !734)
!734 = !{!735}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !733, file: !205, line: 167, baseType: !134, size: 32)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !719, file: !44, line: 460, baseType: !737, size: 128, offset: 256)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !738, line: 125, size: 128, elements: !739)
!738 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!739 = !{!740, !750}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !737, file: !738, line: 126, baseType: !741, size: 64)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !738, line: 31, size: 64, elements: !742)
!742 = !{!743}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !741, file: !738, line: 32, baseType: !744, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !738, line: 24, size: 192, align: 64, elements: !746)
!746 = !{!747, !748, !749}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !745, file: !738, line: 25, baseType: !308, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !745, file: !738, line: 26, baseType: !744, size: 64, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !745, file: !738, line: 27, baseType: !744, size: 64, offset: 128)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !737, file: !738, line: 127, baseType: !744, size: 64, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !719, file: !44, line: 461, baseType: !752, size: 256, offset: 384)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !753, line: 35, size: 256, elements: !754)
!753 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!754 = !{!755, !763, !764, !766}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !752, file: !753, line: 36, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !757, line: 13, baseType: !758)
!757 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !205, line: 175, baseType: !759)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !205, line: 173, size: 64, elements: !760)
!760 = !{!761}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !759, file: !205, line: 174, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !400, line: 22, baseType: !524)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !752, file: !753, line: 42, baseType: !756, size: 64, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !752, file: !753, line: 46, baseType: !765, offset: 128)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !219, line: 29, baseType: !226)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !752, file: !753, line: 47, baseType: !204, size: 128, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !719, file: !44, line: 462, baseType: !308, size: 64, offset: 640)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !719, file: !44, line: 463, baseType: !308, size: 64, offset: 704)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !719, file: !44, line: 464, baseType: !308, size: 64, offset: 768)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !719, file: !44, line: 465, baseType: !771, size: 64, offset: 832)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !773)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !774)
!774 = !{!775, !779, !783, !787, !791, !795, !801, !807, !811, !816, !820, !824, !828, !856, !860, !866, !867, !868, !872, !877, !881, !888}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !773, file: !44, line: 368, baseType: !776, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{!134, !705, !660}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !773, file: !44, line: 369, baseType: !780, size: 64, offset: 64)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{!134, !336, !705}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !773, file: !44, line: 372, baseType: !784, size: 64, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DISubroutineType(types: !786)
!786 = !{!134, !718, !660}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !773, file: !44, line: 375, baseType: !788, size: 64, offset: 192)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DISubroutineType(types: !790)
!790 = !{!134, !705}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !773, file: !44, line: 381, baseType: !792, size: 64, offset: 256)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{!134, !336, !718, !208, !7}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !773, file: !44, line: 383, baseType: !796, size: 64, offset: 320)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{null, !799}
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !773, file: !44, line: 385, baseType: !802, size: 64, offset: 384)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{!134, !336, !718, !515, !7, !7, !805, !806}
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !773, file: !44, line: 388, baseType: !808, size: 64, offset: 448)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{!134, !336, !718, !515, !7, !7, !705, !193}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !773, file: !44, line: 393, baseType: !812, size: 64, offset: 512)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{!815, !718, !815}
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !205, line: 125, baseType: !405)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !773, file: !44, line: 394, baseType: !817, size: 64, offset: 576)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DISubroutineType(types: !819)
!819 = !{null, !705, !7, !7}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !773, file: !44, line: 395, baseType: !821, size: 64, offset: 640)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DISubroutineType(types: !823)
!823 = !{!134, !705, !728}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !773, file: !44, line: 396, baseType: !825, size: 64, offset: 704)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{null, !705}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !773, file: !44, line: 397, baseType: !829, size: 64, offset: 768)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!290, !832, !854}
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !834)
!834 = !{!835, !836, !837, !841, !842, !843, !846, !847}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !833, file: !44, line: 321, baseType: !336, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !833, file: !44, line: 326, baseType: !515, size: 64, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !833, file: !44, line: 327, baseType: !838, size: 64, offset: 128)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DISubroutineType(types: !840)
!840 = !{null, !832, !294, !294}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !833, file: !44, line: 328, baseType: !193, size: 64, offset: 192)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !833, file: !44, line: 329, baseType: !134, size: 32, offset: 256)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !833, file: !44, line: 330, baseType: !844, size: 16, offset: 288)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !400, line: 19, baseType: !845)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !402, line: 24, baseType: !137)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !833, file: !44, line: 331, baseType: !844, size: 16, offset: 304)
!847 = !DIDerivedType(tag: DW_TAG_member, scope: !833, file: !44, line: 332, baseType: !848, size: 64, offset: 320)
!848 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !833, file: !44, line: 332, size: 64, elements: !849)
!849 = !{!850, !851}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !848, file: !44, line: 333, baseType: !7, size: 32)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !848, file: !44, line: 334, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !773, file: !44, line: 402, baseType: !857, size: 64, offset: 832)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{!134, !718, !705, !705, !5}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !773, file: !44, line: 404, baseType: !861, size: 64, offset: 896)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{!474, !705, !864}
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !865, line: 305, baseType: !7)
!865 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!866 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !773, file: !44, line: 405, baseType: !825, size: 64, offset: 960)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !773, file: !44, line: 406, baseType: !788, size: 64, offset: 1024)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !773, file: !44, line: 407, baseType: !869, size: 64, offset: 1088)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{!134, !705, !308, !308}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !773, file: !44, line: 409, baseType: !873, size: 64, offset: 1152)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{null, !705, !876, !876}
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !773, file: !44, line: 410, baseType: !878, size: 64, offset: 1216)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{!134, !718, !705}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !773, file: !44, line: 413, baseType: !882, size: 64, offset: 1280)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DISubroutineType(types: !884)
!884 = !{!134, !885, !336, !887}
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !773, file: !44, line: 415, baseType: !889, size: 64, offset: 1344)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DISubroutineType(types: !891)
!891 = !{null, !336}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !719, file: !44, line: 466, baseType: !308, size: 64, offset: 896)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !719, file: !44, line: 467, baseType: !894, size: 32, offset: 960)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !895, line: 8, baseType: !399)
!895 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!896 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !719, file: !44, line: 468, baseType: !218, offset: 992)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !719, file: !44, line: 469, baseType: !204, size: 128, offset: 1024)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !719, file: !44, line: 470, baseType: !193, size: 64, offset: 1152)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !714, file: !707, line: 87, baseType: !308, size: 64, offset: 192)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !714, file: !707, line: 94, baseType: !308, size: 64, offset: 256)
!901 = !DIDerivedType(tag: DW_TAG_member, scope: !711, file: !707, line: 96, baseType: !902, size: 64)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !711, file: !707, line: 96, size: 64, elements: !903)
!903 = !{!904}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !902, file: !707, line: 101, baseType: !905, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !205, line: 143, baseType: !405)
!906 = !DIDerivedType(tag: DW_TAG_member, scope: !711, file: !707, line: 103, baseType: !907, size: 320)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !711, file: !707, line: 103, size: 320, elements: !908)
!908 = !{!909, !919, !922, !923}
!909 = !DIDerivedType(tag: DW_TAG_member, scope: !907, file: !707, line: 104, baseType: !910, size: 128)
!910 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !907, file: !707, line: 104, size: 128, elements: !911)
!911 = !{!912, !913}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !910, file: !707, line: 105, baseType: !204, size: 128)
!913 = !DIDerivedType(tag: DW_TAG_member, scope: !910, file: !707, line: 106, baseType: !914, size: 128)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !910, file: !707, line: 106, size: 128, elements: !915)
!915 = !{!916, !917, !918}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !914, file: !707, line: 107, baseType: !705, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !914, file: !707, line: 109, baseType: !134, size: 32, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !914, file: !707, line: 110, baseType: !134, size: 32, offset: 96)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !907, file: !707, line: 117, baseType: !920, size: 64, offset: 128)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !707, line: 117, flags: DIFlagFwdDecl)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !907, file: !707, line: 119, baseType: !193, size: 64, offset: 192)
!923 = !DIDerivedType(tag: DW_TAG_member, scope: !907, file: !707, line: 120, baseType: !924, size: 64, offset: 256)
!924 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !907, file: !707, line: 120, size: 64, elements: !925)
!925 = !{!926, !927, !928}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !924, file: !707, line: 121, baseType: !193, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !924, file: !707, line: 122, baseType: !308, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, scope: !924, file: !707, line: 123, baseType: !929, size: 32)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !924, file: !707, line: 123, size: 32, elements: !930)
!930 = !{!931, !932, !933}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !929, file: !707, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !929, file: !707, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !929, file: !707, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!934 = !DIDerivedType(tag: DW_TAG_member, scope: !711, file: !707, line: 130, baseType: !935, size: 192)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !711, file: !707, line: 130, size: 192, elements: !936)
!936 = !{!937, !938, !939, !940, !941}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !935, file: !707, line: 131, baseType: !308, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !935, file: !707, line: 134, baseType: !411, size: 8, offset: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !935, file: !707, line: 135, baseType: !411, size: 8, offset: 72)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !935, file: !707, line: 136, baseType: !732, size: 32, offset: 96)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !935, file: !707, line: 137, baseType: !7, size: 32, offset: 128)
!942 = !DIDerivedType(tag: DW_TAG_member, scope: !711, file: !707, line: 139, baseType: !943, size: 256)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !711, file: !707, line: 139, size: 256, elements: !944)
!944 = !{!945, !946, !947}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !943, file: !707, line: 140, baseType: !308, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !943, file: !707, line: 141, baseType: !732, size: 32, offset: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !943, file: !707, line: 143, baseType: !204, size: 128, offset: 128)
!948 = !DIDerivedType(tag: DW_TAG_member, scope: !711, file: !707, line: 145, baseType: !949, size: 256)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !711, file: !707, line: 145, size: 256, elements: !950)
!950 = !{!951, !952, !954, !955, !2317}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !949, file: !707, line: 146, baseType: !308, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !949, file: !707, line: 147, baseType: !953, size: 64, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !697, line: 509, baseType: !705)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !949, file: !707, line: 148, baseType: !308, size: 64, offset: 128)
!955 = !DIDerivedType(tag: DW_TAG_member, scope: !949, file: !707, line: 149, baseType: !956, size: 64, offset: 192)
!956 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !949, file: !707, line: 149, size: 64, elements: !957)
!957 = !{!958, !2316}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !956, file: !707, line: 150, baseType: !959, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !707, line: 388, size: 7296, elements: !961)
!961 = !{!962, !2312}
!962 = !DIDerivedType(tag: DW_TAG_member, scope: !960, file: !707, line: 389, baseType: !963, size: 7296)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !960, file: !707, line: 389, size: 7296, elements: !964)
!964 = !{!965, !1083, !1084, !1085, !1089, !1090, !1091, !1092, !1093, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1132, !1140, !1143, !1189, !1190, !2296, !2297, !2300, !2301, !2302, !2305, !2306, !2307, !2310, !2311}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !963, file: !707, line: 390, baseType: !966, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !707, line: 305, size: 1472, elements: !968)
!968 = !{!969, !970, !971, !972, !973, !974, !975, !976, !983, !984, !989, !990, !993, !1077, !1078, !1079, !1080, !1081}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !967, file: !707, line: 308, baseType: !308, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !967, file: !707, line: 309, baseType: !308, size: 64, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !967, file: !707, line: 313, baseType: !966, size: 64, offset: 128)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !967, file: !707, line: 313, baseType: !966, size: 64, offset: 192)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !967, file: !707, line: 315, baseType: !745, size: 192, align: 64, offset: 256)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !967, file: !707, line: 323, baseType: !308, size: 64, offset: 448)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !967, file: !707, line: 327, baseType: !959, size: 64, offset: 512)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !967, file: !707, line: 333, baseType: !977, size: 64, offset: 576)
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !697, line: 284, baseType: !978)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !697, line: 284, size: 64, elements: !979)
!979 = !{!980}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !978, file: !697, line: 284, baseType: !981, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !982, line: 19, baseType: !308)
!982 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!983 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !967, file: !707, line: 334, baseType: !308, size: 64, offset: 640)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !967, file: !707, line: 343, baseType: !985, size: 256, offset: 704)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !967, file: !707, line: 340, size: 256, elements: !986)
!986 = !{!987, !988}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !985, file: !707, line: 341, baseType: !745, size: 192, align: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !985, file: !707, line: 342, baseType: !308, size: 64, offset: 192)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !967, file: !707, line: 351, baseType: !204, size: 128, offset: 960)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !967, file: !707, line: 353, baseType: !991, size: 64, offset: 1088)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !707, line: 353, flags: DIFlagFwdDecl)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !967, file: !707, line: 356, baseType: !994, size: 64, offset: 1152)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !996)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !997)
!997 = !{!998, !1002, !1003, !1007, !1011, !1051, !1055, !1059, !1063, !1064, !1065, !1069, !1073}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !996, file: !14, line: 558, baseType: !999, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{null, !966}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !996, file: !14, line: 559, baseType: !999, size: 64, offset: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !996, file: !14, line: 560, baseType: !1004, size: 64, offset: 128)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!134, !966, !308}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !996, file: !14, line: 561, baseType: !1008, size: 64, offset: 192)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!134, !966}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !996, file: !14, line: 562, baseType: !1012, size: 64, offset: 256)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!1015, !1016}
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !707, line: 682, baseType: !7)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1018)
!1018 = !{!1019, !1020, !1021, !1022, !1023, !1024, !1031, !1038, !1044, !1045, !1046, !1048, !1050}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1017, file: !14, line: 509, baseType: !966, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1017, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1017, file: !14, line: 511, baseType: !728, size: 32, offset: 96)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1017, file: !14, line: 512, baseType: !308, size: 64, offset: 128)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1017, file: !14, line: 513, baseType: !308, size: 64, offset: 192)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1017, file: !14, line: 514, baseType: !1025, size: 64, offset: 256)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !697, line: 385, baseType: !1027)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !697, line: 385, size: 64, elements: !1028)
!1028 = !{!1029}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1027, file: !697, line: 385, baseType: !1030, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !982, line: 15, baseType: !308)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1017, file: !14, line: 516, baseType: !1032, size: 64, offset: 320)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !697, line: 359, baseType: !1034)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !697, line: 359, size: 64, elements: !1035)
!1035 = !{!1036}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1034, file: !697, line: 359, baseType: !1037, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !982, line: 16, baseType: !308)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1017, file: !14, line: 519, baseType: !1039, size: 64, offset: 384)
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !982, line: 21, baseType: !1040)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !982, line: 21, size: 64, elements: !1041)
!1041 = !{!1042}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1040, file: !982, line: 21, baseType: !1043, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !982, line: 14, baseType: !308)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1017, file: !14, line: 521, baseType: !705, size: 64, offset: 448)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1017, file: !14, line: 522, baseType: !705, size: 64, offset: 512)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1017, file: !14, line: 528, baseType: !1047, size: 64, offset: 576)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1017, file: !14, line: 532, baseType: !1049, size: 64, offset: 640)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1017, file: !14, line: 536, baseType: !953, size: 64, offset: 704)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !996, file: !14, line: 563, baseType: !1052, size: 64, offset: 320)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!1015, !1016, !13}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !996, file: !14, line: 565, baseType: !1056, size: 64, offset: 384)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{null, !1016, !308, !308}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !996, file: !14, line: 567, baseType: !1060, size: 64, offset: 448)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!308, !966}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !996, file: !14, line: 571, baseType: !1012, size: 64, offset: 512)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !996, file: !14, line: 574, baseType: !1012, size: 64, offset: 576)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !996, file: !14, line: 579, baseType: !1066, size: 64, offset: 640)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!134, !966, !308, !193, !134, !134}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !996, file: !14, line: 585, baseType: !1070, size: 64, offset: 704)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!175, !966}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !996, file: !14, line: 615, baseType: !1074, size: 64, offset: 768)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!705, !966, !308}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !967, file: !707, line: 359, baseType: !308, size: 64, offset: 1216)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !967, file: !707, line: 361, baseType: !336, size: 64, offset: 1280)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !967, file: !707, line: 362, baseType: !193, size: 64, offset: 1344)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !967, file: !707, line: 365, baseType: !756, size: 64, offset: 1408)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !967, file: !707, line: 373, baseType: !1082, offset: 1472)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !707, line: 296, elements: !232)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !963, file: !707, line: 391, baseType: !741, size: 64, offset: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !963, file: !707, line: 392, baseType: !405, size: 64, offset: 128)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !963, file: !707, line: 394, baseType: !1086, size: 64, offset: 192)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!308, !336, !308, !308, !308, !308}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !963, file: !707, line: 398, baseType: !308, size: 64, offset: 256)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !963, file: !707, line: 399, baseType: !308, size: 64, offset: 320)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !963, file: !707, line: 405, baseType: !308, size: 64, offset: 384)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !963, file: !707, line: 406, baseType: !308, size: 64, offset: 448)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !963, file: !707, line: 407, baseType: !1094, size: 64, offset: 512)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !697, line: 286, baseType: !1096)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !697, line: 286, size: 64, elements: !1097)
!1097 = !{!1098}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1096, file: !697, line: 286, baseType: !1099, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !982, line: 18, baseType: !308)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !963, file: !707, line: 416, baseType: !732, size: 32, offset: 576)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !963, file: !707, line: 428, baseType: !732, size: 32, offset: 608)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !963, file: !707, line: 437, baseType: !732, size: 32, offset: 640)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !963, file: !707, line: 447, baseType: !732, size: 32, offset: 672)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !963, file: !707, line: 450, baseType: !756, size: 64, offset: 704)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !963, file: !707, line: 452, baseType: !134, size: 32, offset: 768)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !963, file: !707, line: 454, baseType: !218, offset: 800)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !963, file: !707, line: 457, baseType: !752, size: 256, offset: 832)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !963, file: !707, line: 459, baseType: !204, size: 128, offset: 1088)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !963, file: !707, line: 466, baseType: !308, size: 64, offset: 1216)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !963, file: !707, line: 467, baseType: !308, size: 64, offset: 1280)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !963, file: !707, line: 469, baseType: !308, size: 64, offset: 1344)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !963, file: !707, line: 470, baseType: !308, size: 64, offset: 1408)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !963, file: !707, line: 471, baseType: !758, size: 64, offset: 1472)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !963, file: !707, line: 472, baseType: !308, size: 64, offset: 1536)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !963, file: !707, line: 473, baseType: !308, size: 64, offset: 1600)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !963, file: !707, line: 474, baseType: !308, size: 64, offset: 1664)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !963, file: !707, line: 475, baseType: !308, size: 64, offset: 1728)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !963, file: !707, line: 477, baseType: !218, offset: 1792)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !963, file: !707, line: 478, baseType: !308, size: 64, offset: 1792)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !963, file: !707, line: 478, baseType: !308, size: 64, offset: 1856)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !963, file: !707, line: 478, baseType: !308, size: 64, offset: 1920)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !963, file: !707, line: 478, baseType: !308, size: 64, offset: 1984)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !963, file: !707, line: 479, baseType: !308, size: 64, offset: 2048)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !963, file: !707, line: 479, baseType: !308, size: 64, offset: 2112)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !963, file: !707, line: 479, baseType: !308, size: 64, offset: 2176)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !963, file: !707, line: 480, baseType: !308, size: 64, offset: 2240)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !963, file: !707, line: 480, baseType: !308, size: 64, offset: 2304)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !963, file: !707, line: 480, baseType: !308, size: 64, offset: 2368)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !963, file: !707, line: 480, baseType: !308, size: 64, offset: 2432)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !963, file: !707, line: 482, baseType: !1131, size: 2816, offset: 2496)
!1131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 2816, elements: !151)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !963, file: !707, line: 488, baseType: !1133, size: 256, offset: 5312)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1134, line: 60, size: 256, elements: !1135)
!1134 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1135 = !{!1136}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1133, file: !1134, line: 61, baseType: !1137, size: 256)
!1137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !756, size: 256, elements: !1138)
!1138 = !{!1139}
!1139 = !DISubrange(count: 4)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !963, file: !707, line: 490, baseType: !1141, size: 64, offset: 5568)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !707, line: 490, flags: DIFlagFwdDecl)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !963, file: !707, line: 493, baseType: !1144, size: 896, offset: 5632)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1145, line: 53, baseType: !1146)
!1145 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1145, line: 13, size: 896, elements: !1147)
!1147 = !{!1148, !1149, !1150, !1151, !1154, !1155, !1162, !1163, !1183, !1184, !1185}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1146, file: !1145, line: 18, baseType: !405, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1146, file: !1145, line: 28, baseType: !758, size: 64, offset: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1146, file: !1145, line: 31, baseType: !752, size: 256, offset: 128)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1146, file: !1145, line: 32, baseType: !1152, size: 64, offset: 384)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1145, line: 32, flags: DIFlagFwdDecl)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1146, file: !1145, line: 37, baseType: !137, size: 16, offset: 448)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1146, file: !1145, line: 40, baseType: !1156, size: 192, offset: 512)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1157, line: 53, size: 192, elements: !1158)
!1157 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1158 = !{!1159, !1160, !1161}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1156, file: !1157, line: 54, baseType: !756, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1156, file: !1157, line: 55, baseType: !218, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1156, file: !1157, line: 59, baseType: !204, size: 128, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1146, file: !1145, line: 41, baseType: !193, size: 64, offset: 704)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1146, file: !1145, line: 42, baseType: !1164, size: 64, offset: 768)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1166)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1167, line: 13, size: 896, elements: !1168)
!1167 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1168 = !{!1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1166, file: !1167, line: 14, baseType: !193, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1166, file: !1167, line: 15, baseType: !308, size: 64, offset: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1166, file: !1167, line: 17, baseType: !308, size: 64, offset: 128)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1166, file: !1167, line: 17, baseType: !308, size: 64, offset: 192)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1166, file: !1167, line: 19, baseType: !294, size: 64, offset: 256)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1166, file: !1167, line: 21, baseType: !294, size: 64, offset: 320)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1166, file: !1167, line: 22, baseType: !294, size: 64, offset: 384)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1166, file: !1167, line: 23, baseType: !294, size: 64, offset: 448)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1166, file: !1167, line: 24, baseType: !294, size: 64, offset: 512)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1166, file: !1167, line: 25, baseType: !294, size: 64, offset: 576)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1166, file: !1167, line: 26, baseType: !294, size: 64, offset: 640)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1166, file: !1167, line: 27, baseType: !294, size: 64, offset: 704)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1166, file: !1167, line: 28, baseType: !294, size: 64, offset: 768)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1166, file: !1167, line: 29, baseType: !294, size: 64, offset: 832)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1146, file: !1145, line: 44, baseType: !732, size: 32, offset: 832)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1146, file: !1145, line: 50, baseType: !844, size: 16, offset: 864)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1146, file: !1145, line: 51, baseType: !1186, size: 16, offset: 880)
!1186 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !400, line: 18, baseType: !1187)
!1187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !402, line: 23, baseType: !1188)
!1188 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !963, file: !707, line: 495, baseType: !308, size: 64, offset: 6528)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !963, file: !707, line: 497, baseType: !1191, size: 64, offset: 6592)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !707, line: 381, size: 384, elements: !1193)
!1193 = !{!1194, !1195, !2295}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1192, file: !707, line: 382, baseType: !732, size: 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1192, file: !707, line: 383, baseType: !1196, size: 128, offset: 64)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !707, line: 376, size: 128, elements: !1197)
!1197 = !{!1198, !2293}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1196, file: !707, line: 377, baseType: !1199, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1201, line: 640, size: 48640, elements: !1202)
!1201 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1202 = !{!1203, !1209, !1211, !1212, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1229, !1247, !1258, !1343, !1344, !1345, !1356, !1357, !1359, !1360, !1361, !1362, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1441, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1479, !1481, !1482, !1483, !1495, !1496, !1497, !1498, !1499, !1500, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1524, !1529, !1713, !1714, !1715, !1716, !1720, !1723, !1726, !1729, !1732, !1736, !1837, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1881, !1882, !1883, !1884, !1885, !1890, !1891, !1892, !1895, !1896, !1899, !1902, !1905, !1908, !1951, !1954, !1955, !2034, !2035, !2038, !2039, !2042, !2043, !2044, !2048, !2049, !2050, !2063, !2064, !2065, !2075, !2080, !2083, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1200, file: !1201, line: 646, baseType: !1204, size: 128)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1205, line: 56, size: 128, elements: !1206)
!1205 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1206 = !{!1207, !1208}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1204, file: !1205, line: 57, baseType: !308, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1204, file: !1205, line: 58, baseType: !399, size: 32, offset: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1200, file: !1201, line: 649, baseType: !1210, size: 64, offset: 128)
!1210 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !294)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1200, file: !1201, line: 657, baseType: !193, size: 64, offset: 192)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1200, file: !1201, line: 658, baseType: !1213, size: 32, offset: 256)
!1213 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1214, line: 113, baseType: !1215)
!1214 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1214, line: 111, size: 32, elements: !1216)
!1216 = !{!1217}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1215, file: !1214, line: 112, baseType: !732, size: 32)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1200, file: !1201, line: 660, baseType: !7, size: 32, offset: 288)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1200, file: !1201, line: 661, baseType: !7, size: 32, offset: 320)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1200, file: !1201, line: 684, baseType: !134, size: 32, offset: 352)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1200, file: !1201, line: 686, baseType: !134, size: 32, offset: 384)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1200, file: !1201, line: 687, baseType: !134, size: 32, offset: 416)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1200, file: !1201, line: 688, baseType: !134, size: 32, offset: 448)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1200, file: !1201, line: 689, baseType: !7, size: 32, offset: 480)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1200, file: !1201, line: 691, baseType: !1226, size: 64, offset: 512)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1228)
!1228 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1201, line: 691, flags: DIFlagFwdDecl)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1200, file: !1201, line: 692, baseType: !1230, size: 832, offset: 576)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1201, line: 451, size: 832, elements: !1231)
!1231 = !{!1232, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1230, file: !1201, line: 453, baseType: !1233, size: 128)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1201, line: 325, size: 128, elements: !1234)
!1234 = !{!1235, !1236}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1233, file: !1201, line: 326, baseType: !308, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1233, file: !1201, line: 327, baseType: !399, size: 32, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1230, file: !1201, line: 454, baseType: !745, size: 192, align: 64, offset: 128)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1230, file: !1201, line: 455, baseType: !204, size: 128, offset: 320)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1230, file: !1201, line: 456, baseType: !7, size: 32, offset: 448)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1230, file: !1201, line: 458, baseType: !405, size: 64, offset: 512)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1230, file: !1201, line: 459, baseType: !405, size: 64, offset: 576)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1230, file: !1201, line: 460, baseType: !405, size: 64, offset: 640)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1230, file: !1201, line: 461, baseType: !405, size: 64, offset: 704)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1230, file: !1201, line: 463, baseType: !405, size: 64, offset: 768)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1230, file: !1201, line: 465, baseType: !1246, offset: 832)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1201, line: 415, elements: !232)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1200, file: !1201, line: 693, baseType: !1248, size: 384, offset: 1408)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1201, line: 489, size: 384, elements: !1249)
!1249 = !{!1250, !1251, !1252, !1253, !1254, !1255, !1256}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1248, file: !1201, line: 490, baseType: !204, size: 128)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1248, file: !1201, line: 491, baseType: !308, size: 64, offset: 128)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1248, file: !1201, line: 492, baseType: !308, size: 64, offset: 192)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1248, file: !1201, line: 493, baseType: !7, size: 32, offset: 256)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1248, file: !1201, line: 494, baseType: !137, size: 16, offset: 288)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1248, file: !1201, line: 495, baseType: !137, size: 16, offset: 304)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1248, file: !1201, line: 497, baseType: !1257, size: 64, offset: 320)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1200, file: !1201, line: 697, baseType: !1259, size: 1792, offset: 1792)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1201, line: 507, size: 1792, elements: !1260)
!1260 = !{!1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1340, !1341}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1259, file: !1201, line: 508, baseType: !745, size: 192, align: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1259, file: !1201, line: 515, baseType: !405, size: 64, offset: 192)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1259, file: !1201, line: 516, baseType: !405, size: 64, offset: 256)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1259, file: !1201, line: 517, baseType: !405, size: 64, offset: 320)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1259, file: !1201, line: 518, baseType: !405, size: 64, offset: 384)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1259, file: !1201, line: 519, baseType: !405, size: 64, offset: 448)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1259, file: !1201, line: 526, baseType: !762, size: 64, offset: 512)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1259, file: !1201, line: 527, baseType: !405, size: 64, offset: 576)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1259, file: !1201, line: 528, baseType: !7, size: 32, offset: 640)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1259, file: !1201, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1259, file: !1201, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1259, file: !1201, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1259, file: !1201, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1259, file: !1201, line: 563, baseType: !1275, size: 512, offset: 704)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1276)
!1276 = !{!1277, !1285, !1286, !1291, !1334, !1337, !1338, !1339}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1275, file: !20, line: 119, baseType: !1278, size: 256)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1279, line: 9, size: 256, elements: !1280)
!1279 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1280 = !{!1281, !1282}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1278, file: !1279, line: 10, baseType: !745, size: 192, align: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1278, file: !1279, line: 11, baseType: !1283, size: 64, offset: 192)
!1283 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1284, line: 29, baseType: !762)
!1284 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1275, file: !20, line: 120, baseType: !1283, size: 64, offset: 256)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1275, file: !20, line: 121, baseType: !1287, size: 64, offset: 320)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!19, !1290}
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1275, file: !20, line: 122, baseType: !1292, size: 64, offset: 384)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1294)
!1294 = !{!1295, !1315, !1316, !1319, !1324, !1325, !1329, !1333}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1293, file: !20, line: 160, baseType: !1296, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1298)
!1298 = !{!1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1297, file: !20, line: 215, baseType: !765)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1297, file: !20, line: 216, baseType: !7, size: 32)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1297, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1297, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1297, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1297, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1297, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1297, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1297, file: !20, line: 233, baseType: !1283, size: 64, offset: 128)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1297, file: !20, line: 234, baseType: !1290, size: 64, offset: 192)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1297, file: !20, line: 235, baseType: !1283, size: 64, offset: 256)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1297, file: !20, line: 236, baseType: !1290, size: 64, offset: 320)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1297, file: !20, line: 237, baseType: !1312, size: 4096, offset: 512)
!1312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1293, size: 4096, elements: !1313)
!1313 = !{!1314}
!1314 = !DISubrange(count: 8)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1293, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1293, file: !20, line: 162, baseType: !1317, size: 32, offset: 96)
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !205, line: 27, baseType: !1318)
!1318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !292, line: 96, baseType: !134)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1293, file: !20, line: 163, baseType: !1320, size: 32, offset: 128)
!1320 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !372, line: 276, baseType: !1321)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !372, line: 276, size: 32, elements: !1322)
!1322 = !{!1323}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1321, file: !372, line: 276, baseType: !376, size: 32)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1293, file: !20, line: 164, baseType: !1290, size: 64, offset: 192)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1293, file: !20, line: 165, baseType: !1326, size: 128, offset: 256)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1279, line: 14, size: 128, elements: !1327)
!1327 = !{!1328}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1326, file: !1279, line: 15, baseType: !737, size: 128)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1293, file: !20, line: 166, baseType: !1330, size: 64, offset: 384)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!1283}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1293, file: !20, line: 167, baseType: !1283, size: 64, offset: 448)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1275, file: !20, line: 123, baseType: !1335, size: 8, offset: 448)
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !400, line: 17, baseType: !1336)
!1336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !402, line: 21, baseType: !411)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1275, file: !20, line: 124, baseType: !1335, size: 8, offset: 456)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1275, file: !20, line: 125, baseType: !1335, size: 8, offset: 464)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1275, file: !20, line: 126, baseType: !1335, size: 8, offset: 472)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1259, file: !1201, line: 572, baseType: !1275, size: 512, offset: 1216)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1259, file: !1201, line: 580, baseType: !1342, size: 64, offset: 1728)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1200, file: !1201, line: 721, baseType: !7, size: 32, offset: 3584)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1200, file: !1201, line: 722, baseType: !134, size: 32, offset: 3616)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1200, file: !1201, line: 723, baseType: !1346, size: 64, offset: 3648)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1348)
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1349, line: 17, baseType: !1350)
!1349 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1349, line: 17, size: 64, elements: !1351)
!1351 = !{!1352}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1350, file: !1349, line: 17, baseType: !1353, size: 64)
!1353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 64, elements: !1354)
!1354 = !{!1355}
!1355 = !DISubrange(count: 1)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1200, file: !1201, line: 724, baseType: !1348, size: 64, offset: 3712)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1200, file: !1201, line: 749, baseType: !1358, offset: 3776)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1201, line: 290, elements: !232)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1200, file: !1201, line: 751, baseType: !204, size: 128, offset: 3776)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1200, file: !1201, line: 757, baseType: !959, size: 64, offset: 3904)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1200, file: !1201, line: 758, baseType: !959, size: 64, offset: 3968)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1200, file: !1201, line: 761, baseType: !1363, size: 320, offset: 4032)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1134, line: 34, size: 320, elements: !1364)
!1364 = !{!1365, !1366}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1363, file: !1134, line: 35, baseType: !405, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1363, file: !1134, line: 36, baseType: !1367, size: 256, offset: 64)
!1367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !966, size: 256, elements: !1138)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1200, file: !1201, line: 766, baseType: !134, size: 32, offset: 4352)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1200, file: !1201, line: 767, baseType: !134, size: 32, offset: 4384)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1200, file: !1201, line: 768, baseType: !134, size: 32, offset: 4416)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1200, file: !1201, line: 770, baseType: !134, size: 32, offset: 4448)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1200, file: !1201, line: 772, baseType: !308, size: 64, offset: 4480)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1200, file: !1201, line: 775, baseType: !7, size: 32, offset: 4544)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1200, file: !1201, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1200, file: !1201, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1200, file: !1201, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1200, file: !1201, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1200, file: !1201, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1200, file: !1201, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1200, file: !1201, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1200, file: !1201, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1200, file: !1201, line: 831, baseType: !308, size: 64, offset: 4672)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1200, file: !1201, line: 833, baseType: !1384, size: 384, offset: 4736)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1385)
!1385 = !{!1386, !1391}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1384, file: !25, line: 26, baseType: !1387, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!294, !1390}
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, scope: !1384, file: !25, line: 27, baseType: !1392, size: 320, offset: 64)
!1392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1384, file: !25, line: 27, size: 320, elements: !1393)
!1393 = !{!1394, !1404, !1431}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1392, file: !25, line: 36, baseType: !1395, size: 320)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1392, file: !25, line: 29, size: 320, elements: !1396)
!1396 = !{!1397, !1399, !1400, !1401, !1402, !1403}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1395, file: !25, line: 30, baseType: !1398, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1395, file: !25, line: 31, baseType: !399, size: 32, offset: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1395, file: !25, line: 32, baseType: !399, size: 32, offset: 96)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1395, file: !25, line: 33, baseType: !399, size: 32, offset: 128)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1395, file: !25, line: 34, baseType: !405, size: 64, offset: 192)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1395, file: !25, line: 35, baseType: !1398, size: 64, offset: 256)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1392, file: !25, line: 46, baseType: !1405, size: 192)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1392, file: !25, line: 38, size: 192, elements: !1406)
!1406 = !{!1407, !1408, !1409, !1430}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1405, file: !25, line: 39, baseType: !1317, size: 32)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1405, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1409 = !DIDerivedType(tag: DW_TAG_member, scope: !1405, file: !25, line: 41, baseType: !1410, size: 64, offset: 64)
!1410 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1405, file: !25, line: 41, size: 64, elements: !1411)
!1411 = !{!1412, !1420}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1410, file: !25, line: 42, baseType: !1413, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1415, line: 7, size: 128, elements: !1416)
!1415 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1416 = !{!1417, !1419}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1414, file: !1415, line: 8, baseType: !1418, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !292, line: 93, baseType: !517)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1414, file: !1415, line: 9, baseType: !517, size: 64, offset: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1410, file: !25, line: 43, baseType: !1421, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1423, line: 7, size: 64, elements: !1424)
!1423 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1424 = !{!1425, !1429}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1422, file: !1423, line: 8, baseType: !1426, size: 32)
!1426 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1423, line: 5, baseType: !1427)
!1427 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !400, line: 20, baseType: !1428)
!1428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !402, line: 26, baseType: !134)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1422, file: !1423, line: 9, baseType: !1427, size: 32, offset: 32)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1405, file: !25, line: 45, baseType: !405, size: 64, offset: 128)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1392, file: !25, line: 54, baseType: !1432, size: 256)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1392, file: !25, line: 48, size: 256, elements: !1433)
!1433 = !{!1434, !1437, !1438, !1439, !1440}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1432, file: !25, line: 49, baseType: !1435, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1432, file: !25, line: 50, baseType: !134, size: 32, offset: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1432, file: !25, line: 51, baseType: !134, size: 32, offset: 96)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1432, file: !25, line: 52, baseType: !308, size: 64, offset: 128)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1432, file: !25, line: 53, baseType: !308, size: 64, offset: 192)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1200, file: !1201, line: 835, baseType: !1442, size: 32, offset: 5120)
!1442 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !205, line: 22, baseType: !1443)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !292, line: 28, baseType: !134)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1200, file: !1201, line: 836, baseType: !1442, size: 32, offset: 5152)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1200, file: !1201, line: 840, baseType: !308, size: 64, offset: 5184)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1200, file: !1201, line: 849, baseType: !1199, size: 64, offset: 5248)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1200, file: !1201, line: 852, baseType: !1199, size: 64, offset: 5312)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1200, file: !1201, line: 857, baseType: !204, size: 128, offset: 5376)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1200, file: !1201, line: 858, baseType: !204, size: 128, offset: 5504)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1200, file: !1201, line: 859, baseType: !1199, size: 64, offset: 5632)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1200, file: !1201, line: 867, baseType: !204, size: 128, offset: 5696)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1200, file: !1201, line: 868, baseType: !204, size: 128, offset: 5824)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1200, file: !1201, line: 871, baseType: !1454, size: 64, offset: 5952)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1456)
!1456 = !{!1457, !1458, !1459, !1460, !1462, !1463, !1470, !1471}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1455, file: !53, line: 61, baseType: !1213, size: 32)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1455, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1455, file: !53, line: 63, baseType: !218, offset: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1455, file: !53, line: 65, baseType: !1461, size: 256, offset: 64)
!1461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !619, size: 256, elements: !1138)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1455, file: !53, line: 66, baseType: !619, size: 64, offset: 320)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1455, file: !53, line: 68, baseType: !1464, size: 128, offset: 384)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1465, line: 40, baseType: !1466)
!1465 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1465, line: 36, size: 128, elements: !1467)
!1467 = !{!1468, !1469}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1466, file: !1465, line: 37, baseType: !218)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1466, file: !1465, line: 38, baseType: !204, size: 128)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1455, file: !53, line: 69, baseType: !349, size: 128, align: 64, offset: 512)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1455, file: !53, line: 70, baseType: !1472, size: 128, offset: 640)
!1472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1473, size: 128, elements: !1354)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1474)
!1474 = !{!1475, !1476}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1473, file: !53, line: 55, baseType: !134, size: 32)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1473, file: !53, line: 56, baseType: !1477, size: 64, offset: 64)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1200, file: !1201, line: 872, baseType: !1480, size: 512, offset: 6016)
!1480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !623, size: 512, elements: !1138)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1200, file: !1201, line: 873, baseType: !204, size: 128, offset: 6528)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1200, file: !1201, line: 874, baseType: !204, size: 128, offset: 6656)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1200, file: !1201, line: 876, baseType: !1484, size: 64, offset: 6784)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1486, line: 26, size: 192, elements: !1487)
!1486 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1487 = !{!1488, !1489}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1485, file: !1486, line: 27, baseType: !7, size: 32)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1485, file: !1486, line: 28, baseType: !1490, size: 128, offset: 64)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1491, line: 43, size: 128, elements: !1492)
!1491 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1492 = !{!1493, !1494}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1490, file: !1491, line: 44, baseType: !765)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1490, file: !1491, line: 45, baseType: !204, size: 128)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1200, file: !1201, line: 879, baseType: !689, size: 64, offset: 6848)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1200, file: !1201, line: 882, baseType: !689, size: 64, offset: 6912)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1200, file: !1201, line: 884, baseType: !405, size: 64, offset: 6976)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1200, file: !1201, line: 885, baseType: !405, size: 64, offset: 7040)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1200, file: !1201, line: 890, baseType: !405, size: 64, offset: 7104)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1200, file: !1201, line: 891, baseType: !1501, size: 128, offset: 7168)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1201, line: 242, size: 128, elements: !1502)
!1502 = !{!1503, !1504, !1505}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1501, file: !1201, line: 244, baseType: !405, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1501, file: !1201, line: 245, baseType: !405, size: 64, offset: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1501, file: !1201, line: 246, baseType: !765, offset: 128)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1200, file: !1201, line: 900, baseType: !308, size: 64, offset: 7296)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1200, file: !1201, line: 901, baseType: !308, size: 64, offset: 7360)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1200, file: !1201, line: 904, baseType: !405, size: 64, offset: 7424)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1200, file: !1201, line: 907, baseType: !405, size: 64, offset: 7488)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1200, file: !1201, line: 910, baseType: !308, size: 64, offset: 7552)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1200, file: !1201, line: 911, baseType: !308, size: 64, offset: 7616)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1200, file: !1201, line: 914, baseType: !1513, size: 640, offset: 7680)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1514, line: 123, size: 640, elements: !1515)
!1514 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1515 = !{!1516, !1522, !1523}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1513, file: !1514, line: 124, baseType: !1517, size: 576)
!1517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1518, size: 576, elements: !260)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1514, line: 108, size: 192, elements: !1519)
!1519 = !{!1520, !1521}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1518, file: !1514, line: 109, baseType: !405, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1518, file: !1514, line: 110, baseType: !1326, size: 128, offset: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1513, file: !1514, line: 125, baseType: !7, size: 32, offset: 576)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1513, file: !1514, line: 126, baseType: !7, size: 32, offset: 608)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1200, file: !1201, line: 917, baseType: !1525, size: 192, offset: 8320)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1514, line: 134, size: 192, elements: !1526)
!1526 = !{!1527, !1528}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1525, file: !1514, line: 135, baseType: !349, size: 128, align: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1525, file: !1514, line: 136, baseType: !7, size: 32, offset: 128)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1200, file: !1201, line: 923, baseType: !1530, size: 64, offset: 8512)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1532)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1533, line: 111, size: 1280, elements: !1534)
!1533 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1534 = !{!1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1554, !1555, !1556, !1557, !1558, !1559, !1666, !1667, !1668, !1669, !1695, !1698, !1708}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1532, file: !1533, line: 112, baseType: !732, size: 32)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1532, file: !1533, line: 120, baseType: !419, size: 32, offset: 32)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1532, file: !1533, line: 121, baseType: !427, size: 32, offset: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1532, file: !1533, line: 122, baseType: !419, size: 32, offset: 96)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1532, file: !1533, line: 123, baseType: !427, size: 32, offset: 128)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1532, file: !1533, line: 124, baseType: !419, size: 32, offset: 160)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1532, file: !1533, line: 125, baseType: !427, size: 32, offset: 192)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1532, file: !1533, line: 126, baseType: !419, size: 32, offset: 224)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1532, file: !1533, line: 127, baseType: !427, size: 32, offset: 256)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1532, file: !1533, line: 128, baseType: !7, size: 32, offset: 288)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1532, file: !1533, line: 129, baseType: !1546, size: 64, offset: 320)
!1546 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1547, line: 26, baseType: !1548)
!1547 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1547, line: 24, size: 64, elements: !1549)
!1549 = !{!1550}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1548, file: !1547, line: 25, baseType: !1551, size: 64)
!1551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !401, size: 64, elements: !1552)
!1552 = !{!1553}
!1553 = !DISubrange(count: 2)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1532, file: !1533, line: 130, baseType: !1546, size: 64, offset: 384)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1532, file: !1533, line: 131, baseType: !1546, size: 64, offset: 448)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1532, file: !1533, line: 132, baseType: !1546, size: 64, offset: 512)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1532, file: !1533, line: 133, baseType: !1546, size: 64, offset: 576)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1532, file: !1533, line: 135, baseType: !411, size: 8, offset: 640)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1532, file: !1533, line: 137, baseType: !1560, size: 64, offset: 704)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1562, line: 189, size: 1664, elements: !1563)
!1562 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1563 = !{!1564, !1565, !1568, !1573, !1574, !1577, !1578, !1583, !1584, !1585, !1586, !1588, !1589, !1590, !1591, !1592, !1630, !1651}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1561, file: !1562, line: 190, baseType: !1213, size: 32)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1561, file: !1562, line: 191, baseType: !1566, size: 32, offset: 32)
!1566 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1562, line: 28, baseType: !1567)
!1567 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !205, line: 98, baseType: !1427)
!1568 = !DIDerivedType(tag: DW_TAG_member, scope: !1561, file: !1562, line: 192, baseType: !1569, size: 192, offset: 64)
!1569 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1561, file: !1562, line: 192, size: 192, elements: !1570)
!1570 = !{!1571, !1572}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1569, file: !1562, line: 193, baseType: !204, size: 128)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1569, file: !1562, line: 194, baseType: !745, size: 192, align: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1561, file: !1562, line: 199, baseType: !752, size: 256, offset: 256)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1561, file: !1562, line: 200, baseType: !1575, size: 64, offset: 512)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1562, line: 200, flags: DIFlagFwdDecl)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1561, file: !1562, line: 201, baseType: !193, size: 64, offset: 576)
!1578 = !DIDerivedType(tag: DW_TAG_member, scope: !1561, file: !1562, line: 202, baseType: !1579, size: 64, offset: 640)
!1579 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1561, file: !1562, line: 202, size: 64, elements: !1580)
!1580 = !{!1581, !1582}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1579, file: !1562, line: 203, baseType: !523, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1579, file: !1562, line: 204, baseType: !523, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1561, file: !1562, line: 206, baseType: !523, size: 64, offset: 704)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1561, file: !1562, line: 207, baseType: !419, size: 32, offset: 768)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1561, file: !1562, line: 208, baseType: !427, size: 32, offset: 800)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1561, file: !1562, line: 209, baseType: !1587, size: 32, offset: 832)
!1587 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1562, line: 31, baseType: !543)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1561, file: !1562, line: 210, baseType: !137, size: 16, offset: 864)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1561, file: !1562, line: 211, baseType: !137, size: 16, offset: 880)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1561, file: !1562, line: 215, baseType: !1188, size: 16, offset: 896)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1561, file: !1562, line: 222, baseType: !308, size: 64, offset: 960)
!1592 = !DIDerivedType(tag: DW_TAG_member, scope: !1561, file: !1562, line: 239, baseType: !1593, size: 320, offset: 1024)
!1593 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1561, file: !1562, line: 239, size: 320, elements: !1594)
!1594 = !{!1595, !1622}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1593, file: !1562, line: 240, baseType: !1596, size: 320)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1562, line: 108, size: 320, elements: !1597)
!1597 = !{!1598, !1599, !1611, !1614, !1621}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1596, file: !1562, line: 110, baseType: !308, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, scope: !1596, file: !1562, line: 111, baseType: !1600, size: 64, offset: 64)
!1600 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1596, file: !1562, line: 111, size: 64, elements: !1601)
!1601 = !{!1602, !1610}
!1602 = !DIDerivedType(tag: DW_TAG_member, scope: !1600, file: !1562, line: 112, baseType: !1603, size: 64)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1600, file: !1562, line: 112, size: 64, elements: !1604)
!1604 = !{!1605, !1606}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1603, file: !1562, line: 114, baseType: !844, size: 16)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1603, file: !1562, line: 115, baseType: !1607, size: 48, offset: 16)
!1607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 48, elements: !1608)
!1608 = !{!1609}
!1609 = !DISubrange(count: 6)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1600, file: !1562, line: 121, baseType: !308, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1596, file: !1562, line: 123, baseType: !1612, size: 64, offset: 128)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1562, line: 96, flags: DIFlagFwdDecl)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1596, file: !1562, line: 124, baseType: !1615, size: 64, offset: 192)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1562, line: 102, size: 192, elements: !1617)
!1617 = !{!1618, !1619, !1620}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1616, file: !1562, line: 103, baseType: !349, size: 128, align: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1616, file: !1562, line: 104, baseType: !1213, size: 32, offset: 128)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1616, file: !1562, line: 105, baseType: !474, size: 8, offset: 160)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1596, file: !1562, line: 125, baseType: !175, size: 64, offset: 256)
!1622 = !DIDerivedType(tag: DW_TAG_member, scope: !1593, file: !1562, line: 241, baseType: !1623, size: 320)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1593, file: !1562, line: 241, size: 320, elements: !1624)
!1624 = !{!1625, !1626, !1627, !1628, !1629}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1623, file: !1562, line: 242, baseType: !308, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1623, file: !1562, line: 243, baseType: !308, size: 64, offset: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1623, file: !1562, line: 244, baseType: !1612, size: 64, offset: 128)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1623, file: !1562, line: 245, baseType: !1615, size: 64, offset: 192)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1623, file: !1562, line: 246, baseType: !259, size: 64, offset: 256)
!1630 = !DIDerivedType(tag: DW_TAG_member, scope: !1561, file: !1562, line: 254, baseType: !1631, size: 256, offset: 1344)
!1631 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1561, file: !1562, line: 254, size: 256, elements: !1632)
!1632 = !{!1633, !1639}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1631, file: !1562, line: 255, baseType: !1634, size: 256)
!1634 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1562, line: 128, size: 256, elements: !1635)
!1635 = !{!1636, !1637}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1634, file: !1562, line: 129, baseType: !193, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1634, file: !1562, line: 130, baseType: !1638, size: 256)
!1638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 256, elements: !1138)
!1639 = !DIDerivedType(tag: DW_TAG_member, scope: !1631, file: !1562, line: 256, baseType: !1640, size: 256)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1631, file: !1562, line: 256, size: 256, elements: !1641)
!1641 = !{!1642, !1643}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1640, file: !1562, line: 258, baseType: !204, size: 128)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1640, file: !1562, line: 259, baseType: !1644, size: 128, offset: 128)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1645, line: 22, size: 128, elements: !1646)
!1645 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1646 = !{!1647, !1650}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1644, file: !1645, line: 23, baseType: !1648, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1645, line: 23, flags: DIFlagFwdDecl)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1644, file: !1645, line: 24, baseType: !308, size: 64, offset: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1561, file: !1562, line: 274, baseType: !1652, size: 64, offset: 1600)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1562, line: 170, size: 192, elements: !1654)
!1654 = !{!1655, !1664, !1665}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1653, file: !1562, line: 171, baseType: !1656, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1562, line: 165, baseType: !1657)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!134, !1560, !1660, !1662, !1560}
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1613)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1634)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1653, file: !1562, line: 172, baseType: !1560, size: 64, offset: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1653, file: !1562, line: 173, baseType: !1612, size: 64, offset: 128)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1532, file: !1533, line: 138, baseType: !1560, size: 64, offset: 768)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1532, file: !1533, line: 139, baseType: !1560, size: 64, offset: 832)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1532, file: !1533, line: 140, baseType: !1560, size: 64, offset: 896)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1532, file: !1533, line: 145, baseType: !1670, size: 64, offset: 960)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1672, line: 13, size: 896, elements: !1673)
!1672 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1673 = !{!1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1671, file: !1672, line: 14, baseType: !1213, size: 32)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1671, file: !1672, line: 15, baseType: !732, size: 32, offset: 32)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1671, file: !1672, line: 16, baseType: !732, size: 32, offset: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1671, file: !1672, line: 21, baseType: !756, size: 64, offset: 128)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1671, file: !1672, line: 27, baseType: !308, size: 64, offset: 192)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1671, file: !1672, line: 28, baseType: !308, size: 64, offset: 256)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1671, file: !1672, line: 29, baseType: !756, size: 64, offset: 320)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1671, file: !1672, line: 32, baseType: !623, size: 128, offset: 384)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1671, file: !1672, line: 33, baseType: !419, size: 32, offset: 512)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1671, file: !1672, line: 37, baseType: !756, size: 64, offset: 576)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1671, file: !1672, line: 44, baseType: !1685, size: 256, offset: 640)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1686, line: 15, size: 256, elements: !1687)
!1686 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1687 = !{!1688, !1689, !1690, !1691, !1692, !1693, !1694}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1685, file: !1686, line: 16, baseType: !765)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1685, file: !1686, line: 18, baseType: !134, size: 32)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1685, file: !1686, line: 19, baseType: !134, size: 32, offset: 32)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1685, file: !1686, line: 20, baseType: !134, size: 32, offset: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1685, file: !1686, line: 21, baseType: !134, size: 32, offset: 96)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1685, file: !1686, line: 22, baseType: !308, size: 64, offset: 128)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1685, file: !1686, line: 23, baseType: !308, size: 64, offset: 192)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1532, file: !1533, line: 146, baseType: !1696, size: 64, offset: 1024)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !420, line: 18, flags: DIFlagFwdDecl)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1532, file: !1533, line: 147, baseType: !1699, size: 64, offset: 1088)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1533, line: 25, size: 64, elements: !1701)
!1701 = !{!1702, !1703, !1704}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1700, file: !1533, line: 26, baseType: !732, size: 32)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1700, file: !1533, line: 27, baseType: !134, size: 32, offset: 32)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1700, file: !1533, line: 28, baseType: !1705, offset: 64)
!1705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !427, elements: !1706)
!1706 = !{!1707}
!1707 = !DISubrange(count: 0)
!1708 = !DIDerivedType(tag: DW_TAG_member, scope: !1532, file: !1533, line: 149, baseType: !1709, size: 128, offset: 1152)
!1709 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1532, file: !1533, line: 149, size: 128, elements: !1710)
!1710 = !{!1711, !1712}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1709, file: !1533, line: 150, baseType: !134, size: 32)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1709, file: !1533, line: 151, baseType: !349, size: 128, align: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1200, file: !1201, line: 926, baseType: !1530, size: 64, offset: 8576)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1200, file: !1201, line: 929, baseType: !1530, size: 64, offset: 8640)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1200, file: !1201, line: 933, baseType: !1560, size: 64, offset: 8704)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1200, file: !1201, line: 943, baseType: !1717, size: 128, offset: 8768)
!1717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 128, elements: !1718)
!1718 = !{!1719}
!1719 = !DISubrange(count: 16)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1200, file: !1201, line: 945, baseType: !1721, size: 64, offset: 8896)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1201, line: 49, flags: DIFlagFwdDecl)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1200, file: !1201, line: 956, baseType: !1724, size: 64, offset: 8960)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1201, line: 45, flags: DIFlagFwdDecl)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1200, file: !1201, line: 959, baseType: !1727, size: 64, offset: 9024)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1201, line: 959, flags: DIFlagFwdDecl)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1200, file: !1201, line: 962, baseType: !1730, size: 64, offset: 9088)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1201, line: 66, flags: DIFlagFwdDecl)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1200, file: !1201, line: 966, baseType: !1733, size: 64, offset: 9152)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1735, line: 35, flags: DIFlagFwdDecl)
!1735 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1200, file: !1201, line: 969, baseType: !1737, size: 64, offset: 9216)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1739, line: 82, size: 7296, elements: !1740)
!1739 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1740 = !{!1741, !1742, !1743, !1744, !1745, !1746, !1747, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1776, !1785, !1786, !1788, !1789, !1790, !1793, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1823, !1824, !1831, !1832, !1833, !1834, !1835, !1836}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1738, file: !1739, line: 83, baseType: !1213, size: 32)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1738, file: !1739, line: 84, baseType: !732, size: 32, offset: 32)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1738, file: !1739, line: 85, baseType: !134, size: 32, offset: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1738, file: !1739, line: 86, baseType: !204, size: 128, offset: 128)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1738, file: !1739, line: 88, baseType: !1464, size: 128, offset: 256)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1738, file: !1739, line: 91, baseType: !1199, size: 64, offset: 384)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1738, file: !1739, line: 94, baseType: !1748, size: 192, offset: 448)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1749, line: 30, size: 192, elements: !1750)
!1749 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1750 = !{!1751, !1752}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1748, file: !1749, line: 31, baseType: !204, size: 128)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1748, file: !1749, line: 32, baseType: !1753, size: 64, offset: 128)
!1753 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1754, line: 25, baseType: !1755)
!1754 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1754, line: 23, size: 64, elements: !1756)
!1756 = !{!1757}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1755, file: !1754, line: 24, baseType: !1353, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1738, file: !1739, line: 97, baseType: !619, size: 64, offset: 640)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1738, file: !1739, line: 100, baseType: !134, size: 32, offset: 704)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1738, file: !1739, line: 106, baseType: !134, size: 32, offset: 736)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1738, file: !1739, line: 107, baseType: !1199, size: 64, offset: 768)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1738, file: !1739, line: 110, baseType: !134, size: 32, offset: 832)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1738, file: !1739, line: 111, baseType: !7, size: 32, offset: 864)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1738, file: !1739, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1738, file: !1739, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1738, file: !1739, line: 128, baseType: !134, size: 32, offset: 928)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1738, file: !1739, line: 129, baseType: !204, size: 128, offset: 960)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1738, file: !1739, line: 132, baseType: !1275, size: 512, offset: 1088)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1738, file: !1739, line: 133, baseType: !1283, size: 64, offset: 1600)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1738, file: !1739, line: 140, baseType: !1771, size: 256, offset: 1664)
!1771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1772, size: 256, elements: !1552)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1739, line: 38, size: 128, elements: !1773)
!1773 = !{!1774, !1775}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1772, file: !1739, line: 39, baseType: !405, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1772, file: !1739, line: 40, baseType: !405, size: 64, offset: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1738, file: !1739, line: 146, baseType: !1777, size: 192, offset: 1920)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1739, line: 66, size: 192, elements: !1778)
!1778 = !{!1779}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1777, file: !1739, line: 67, baseType: !1780, size: 192)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1739, line: 47, size: 192, elements: !1781)
!1781 = !{!1782, !1783, !1784}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1780, file: !1739, line: 48, baseType: !758, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1780, file: !1739, line: 49, baseType: !758, size: 64, offset: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1780, file: !1739, line: 50, baseType: !758, size: 64, offset: 128)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1738, file: !1739, line: 150, baseType: !1513, size: 640, offset: 2112)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1738, file: !1739, line: 153, baseType: !1787, size: 256, offset: 2752)
!1787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1454, size: 256, elements: !1138)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1738, file: !1739, line: 159, baseType: !1454, size: 64, offset: 3008)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1738, file: !1739, line: 162, baseType: !134, size: 32, offset: 3072)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1738, file: !1739, line: 164, baseType: !1791, size: 64, offset: 3136)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1739, line: 164, flags: DIFlagFwdDecl)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1738, file: !1739, line: 175, baseType: !1794, size: 32, offset: 3200)
!1794 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !372, line: 805, baseType: !1795)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !372, line: 798, size: 32, elements: !1796)
!1796 = !{!1797, !1798}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1795, file: !372, line: 803, baseType: !371, size: 32)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1795, file: !372, line: 804, baseType: !218, offset: 32)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1738, file: !1739, line: 176, baseType: !405, size: 64, offset: 3264)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1738, file: !1739, line: 176, baseType: !405, size: 64, offset: 3328)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1738, file: !1739, line: 176, baseType: !405, size: 64, offset: 3392)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1738, file: !1739, line: 176, baseType: !405, size: 64, offset: 3456)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1738, file: !1739, line: 177, baseType: !405, size: 64, offset: 3520)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1738, file: !1739, line: 178, baseType: !405, size: 64, offset: 3584)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1738, file: !1739, line: 179, baseType: !1501, size: 128, offset: 3648)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1738, file: !1739, line: 180, baseType: !308, size: 64, offset: 3776)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1738, file: !1739, line: 180, baseType: !308, size: 64, offset: 3840)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1738, file: !1739, line: 180, baseType: !308, size: 64, offset: 3904)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1738, file: !1739, line: 180, baseType: !308, size: 64, offset: 3968)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1738, file: !1739, line: 181, baseType: !308, size: 64, offset: 4032)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1738, file: !1739, line: 181, baseType: !308, size: 64, offset: 4096)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1738, file: !1739, line: 181, baseType: !308, size: 64, offset: 4160)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1738, file: !1739, line: 181, baseType: !308, size: 64, offset: 4224)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1738, file: !1739, line: 182, baseType: !308, size: 64, offset: 4288)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1738, file: !1739, line: 182, baseType: !308, size: 64, offset: 4352)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1738, file: !1739, line: 182, baseType: !308, size: 64, offset: 4416)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1738, file: !1739, line: 182, baseType: !308, size: 64, offset: 4480)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1738, file: !1739, line: 183, baseType: !308, size: 64, offset: 4544)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1738, file: !1739, line: 183, baseType: !308, size: 64, offset: 4608)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1738, file: !1739, line: 184, baseType: !1821, offset: 4672)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1822, line: 12, elements: !232)
!1822 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1738, file: !1739, line: 192, baseType: !407, size: 64, offset: 4672)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1738, file: !1739, line: 203, baseType: !1825, size: 2048, offset: 4736)
!1825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1826, size: 2048, elements: !1718)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1827, line: 43, size: 128, elements: !1828)
!1827 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1828 = !{!1829, !1830}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1826, file: !1827, line: 44, baseType: !307, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1826, file: !1827, line: 45, baseType: !307, size: 64, offset: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1738, file: !1739, line: 220, baseType: !474, size: 8, offset: 6784)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1738, file: !1739, line: 221, baseType: !1188, size: 16, offset: 6800)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1738, file: !1739, line: 222, baseType: !1188, size: 16, offset: 6816)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1738, file: !1739, line: 224, baseType: !959, size: 64, offset: 6848)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1738, file: !1739, line: 227, baseType: !1156, size: 192, offset: 6912)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1738, file: !1739, line: 233, baseType: !1156, size: 192, offset: 7104)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1200, file: !1201, line: 970, baseType: !1838, size: 64, offset: 9280)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1739, line: 20, size: 16576, elements: !1840)
!1840 = !{!1841, !1842, !1843, !1844}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1839, file: !1739, line: 21, baseType: !218)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1839, file: !1739, line: 22, baseType: !1213, size: 32)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1839, file: !1739, line: 23, baseType: !1464, size: 128, offset: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1839, file: !1739, line: 24, baseType: !1845, size: 16384, offset: 192)
!1845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1846, size: 16384, elements: !264)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1749, line: 49, size: 256, elements: !1847)
!1847 = !{!1848}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1846, file: !1749, line: 50, baseType: !1849, size: 256)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1749, line: 35, size: 256, elements: !1850)
!1850 = !{!1851, !1858, !1859, !1863}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1849, file: !1749, line: 37, baseType: !1852, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1853, line: 19, baseType: !1854)
!1853 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1853, line: 18, baseType: !1856)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{null, !134}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1849, file: !1749, line: 38, baseType: !308, size: 64, offset: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1849, file: !1749, line: 44, baseType: !1860, size: 64, offset: 128)
!1860 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1853, line: 22, baseType: !1861)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1853, line: 21, baseType: !144)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1849, file: !1749, line: 46, baseType: !1753, size: 64, offset: 192)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1200, file: !1201, line: 971, baseType: !1753, size: 64, offset: 9344)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1200, file: !1201, line: 972, baseType: !1753, size: 64, offset: 9408)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1200, file: !1201, line: 974, baseType: !1753, size: 64, offset: 9472)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1200, file: !1201, line: 975, baseType: !1748, size: 192, offset: 9536)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1200, file: !1201, line: 976, baseType: !308, size: 64, offset: 9728)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1200, file: !1201, line: 977, baseType: !305, size: 64, offset: 9792)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1200, file: !1201, line: 978, baseType: !7, size: 32, offset: 9856)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1200, file: !1201, line: 980, baseType: !352, size: 64, offset: 9920)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1200, file: !1201, line: 989, baseType: !1873, size: 128, offset: 9984)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1874, line: 35, size: 128, elements: !1875)
!1874 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1875 = !{!1876, !1877, !1878}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1873, file: !1874, line: 36, baseType: !134, size: 32)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1873, file: !1874, line: 37, baseType: !732, size: 32, offset: 32)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1873, file: !1874, line: 38, baseType: !1879, size: 64, offset: 64)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1874, line: 23, flags: DIFlagFwdDecl)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1200, file: !1201, line: 992, baseType: !405, size: 64, offset: 10112)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1200, file: !1201, line: 993, baseType: !405, size: 64, offset: 10176)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1200, file: !1201, line: 996, baseType: !218, offset: 10240)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1200, file: !1201, line: 999, baseType: !765, offset: 10240)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1200, file: !1201, line: 1001, baseType: !1886, size: 64, offset: 10240)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1201, line: 636, size: 64, elements: !1887)
!1887 = !{!1888}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1886, file: !1201, line: 637, baseType: !1889, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1200, file: !1201, line: 1005, baseType: !737, size: 128, offset: 10304)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1200, file: !1201, line: 1007, baseType: !1199, size: 64, offset: 10432)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1200, file: !1201, line: 1009, baseType: !1893, size: 64, offset: 10496)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1201, line: 1009, flags: DIFlagFwdDecl)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1200, file: !1201, line: 1043, baseType: !193, size: 64, offset: 10560)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1200, file: !1201, line: 1046, baseType: !1897, size: 64, offset: 10624)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1201, line: 41, flags: DIFlagFwdDecl)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1200, file: !1201, line: 1050, baseType: !1900, size: 64, offset: 10688)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1201, line: 42, flags: DIFlagFwdDecl)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1200, file: !1201, line: 1054, baseType: !1903, size: 64, offset: 10752)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1201, line: 55, flags: DIFlagFwdDecl)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1200, file: !1201, line: 1056, baseType: !1906, size: 64, offset: 10816)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1201, line: 40, flags: DIFlagFwdDecl)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1200, file: !1201, line: 1058, baseType: !1909, size: 64, offset: 10880)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1911, line: 99, size: 704, elements: !1912)
!1911 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1912 = !{!1913, !1914, !1915, !1916, !1917, !1918, !1919, !1938, !1939}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1910, file: !1911, line: 100, baseType: !756, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1910, file: !1911, line: 101, baseType: !732, size: 32, offset: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1910, file: !1911, line: 102, baseType: !732, size: 32, offset: 96)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1910, file: !1911, line: 105, baseType: !218, offset: 128)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1910, file: !1911, line: 107, baseType: !137, size: 16, offset: 128)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1910, file: !1911, line: 109, baseType: !723, size: 128, offset: 192)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1910, file: !1911, line: 110, baseType: !1920, size: 64, offset: 320)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1911, line: 73, size: 448, elements: !1922)
!1922 = !{!1923, !1926, !1927, !1932, !1937}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1921, file: !1911, line: 74, baseType: !1924, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1911, line: 74, flags: DIFlagFwdDecl)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1921, file: !1911, line: 75, baseType: !1909, size: 64, offset: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, scope: !1921, file: !1911, line: 83, baseType: !1928, size: 128, offset: 128)
!1928 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1921, file: !1911, line: 83, size: 128, elements: !1929)
!1929 = !{!1930, !1931}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1928, file: !1911, line: 84, baseType: !204, size: 128)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1928, file: !1911, line: 85, baseType: !920, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, scope: !1921, file: !1911, line: 87, baseType: !1933, size: 128, offset: 256)
!1933 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1921, file: !1911, line: 87, size: 128, elements: !1934)
!1934 = !{!1935, !1936}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1933, file: !1911, line: 88, baseType: !623, size: 128)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1933, file: !1911, line: 89, baseType: !349, size: 128, align: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1921, file: !1911, line: 92, baseType: !7, size: 32, offset: 384)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1910, file: !1911, line: 111, baseType: !619, size: 64, offset: 384)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1910, file: !1911, line: 113, baseType: !1940, size: 256, offset: 448)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1941, line: 102, size: 256, elements: !1942)
!1941 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1942 = !{!1943, !1944, !1945}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1940, file: !1941, line: 103, baseType: !756, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1940, file: !1941, line: 104, baseType: !204, size: 128, offset: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1940, file: !1941, line: 105, baseType: !1946, size: 64, offset: 192)
!1946 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1941, line: 21, baseType: !1947)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{null, !1950}
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1200, file: !1201, line: 1061, baseType: !1952, size: 64, offset: 10944)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1201, line: 43, flags: DIFlagFwdDecl)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1200, file: !1201, line: 1064, baseType: !308, size: 64, offset: 11008)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1200, file: !1201, line: 1065, baseType: !1956, size: 64, offset: 11072)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1749, line: 14, baseType: !1958)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1749, line: 12, size: 384, elements: !1959)
!1959 = !{!1960}
!1960 = !DIDerivedType(tag: DW_TAG_member, scope: !1958, file: !1749, line: 13, baseType: !1961, size: 384)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1958, file: !1749, line: 13, size: 384, elements: !1962)
!1962 = !{!1963, !1964, !1965, !1966}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1961, file: !1749, line: 13, baseType: !134, size: 32)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1961, file: !1749, line: 13, baseType: !134, size: 32, offset: 32)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1961, file: !1749, line: 13, baseType: !134, size: 32, offset: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1961, file: !1749, line: 13, baseType: !1967, size: 256, offset: 128)
!1967 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1968, line: 32, size: 256, elements: !1969)
!1968 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1969 = !{!1970, !1975, !1988, !1994, !2003, !2023, !2028}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1967, file: !1968, line: 37, baseType: !1971, size: 64)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1967, file: !1968, line: 34, size: 64, elements: !1972)
!1972 = !{!1973, !1974}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1971, file: !1968, line: 35, baseType: !1443, size: 32)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1971, file: !1968, line: 36, baseType: !425, size: 32, offset: 32)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1967, file: !1968, line: 45, baseType: !1976, size: 192)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1967, file: !1968, line: 40, size: 192, elements: !1977)
!1977 = !{!1978, !1980, !1981, !1987}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1976, file: !1968, line: 41, baseType: !1979, size: 32)
!1979 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !292, line: 95, baseType: !134)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1976, file: !1968, line: 42, baseType: !134, size: 32, offset: 32)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1976, file: !1968, line: 43, baseType: !1982, size: 64, offset: 64)
!1982 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1968, line: 11, baseType: !1983)
!1983 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1968, line: 8, size: 64, elements: !1984)
!1984 = !{!1985, !1986}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1983, file: !1968, line: 9, baseType: !134, size: 32)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1983, file: !1968, line: 10, baseType: !193, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1976, file: !1968, line: 44, baseType: !134, size: 32, offset: 128)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1967, file: !1968, line: 52, baseType: !1989, size: 128)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1967, file: !1968, line: 48, size: 128, elements: !1990)
!1990 = !{!1991, !1992, !1993}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1989, file: !1968, line: 49, baseType: !1443, size: 32)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1989, file: !1968, line: 50, baseType: !425, size: 32, offset: 32)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1989, file: !1968, line: 51, baseType: !1982, size: 64, offset: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1967, file: !1968, line: 61, baseType: !1995, size: 256)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1967, file: !1968, line: 55, size: 256, elements: !1996)
!1996 = !{!1997, !1998, !1999, !2000, !2002}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1995, file: !1968, line: 56, baseType: !1443, size: 32)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1995, file: !1968, line: 57, baseType: !425, size: 32, offset: 32)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1995, file: !1968, line: 58, baseType: !134, size: 32, offset: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1995, file: !1968, line: 59, baseType: !2001, size: 64, offset: 128)
!2001 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !292, line: 94, baseType: !293)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1995, file: !1968, line: 60, baseType: !2001, size: 64, offset: 192)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1967, file: !1968, line: 95, baseType: !2004, size: 256)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1967, file: !1968, line: 64, size: 256, elements: !2005)
!2005 = !{!2006, !2007}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2004, file: !1968, line: 65, baseType: !193, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, scope: !2004, file: !1968, line: 77, baseType: !2008, size: 192, offset: 64)
!2008 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2004, file: !1968, line: 77, size: 192, elements: !2009)
!2009 = !{!2010, !2011, !2018}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2008, file: !1968, line: 82, baseType: !1188, size: 16)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2008, file: !1968, line: 88, baseType: !2012, size: 192)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2008, file: !1968, line: 84, size: 192, elements: !2013)
!2013 = !{!2014, !2016, !2017}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2012, file: !1968, line: 85, baseType: !2015, size: 64)
!2015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 64, elements: !1313)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2012, file: !1968, line: 86, baseType: !193, size: 64, offset: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2012, file: !1968, line: 87, baseType: !193, size: 64, offset: 128)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2008, file: !1968, line: 93, baseType: !2019, size: 96)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2008, file: !1968, line: 90, size: 96, elements: !2020)
!2020 = !{!2021, !2022}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2019, file: !1968, line: 91, baseType: !2015, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2019, file: !1968, line: 92, baseType: !401, size: 32, offset: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1967, file: !1968, line: 101, baseType: !2024, size: 128)
!2024 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1967, file: !1968, line: 98, size: 128, elements: !2025)
!2025 = !{!2026, !2027}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2024, file: !1968, line: 99, baseType: !294, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2024, file: !1968, line: 100, baseType: !134, size: 32, offset: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1967, file: !1968, line: 108, baseType: !2029, size: 128)
!2029 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1967, file: !1968, line: 104, size: 128, elements: !2030)
!2030 = !{!2031, !2032, !2033}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2029, file: !1968, line: 105, baseType: !193, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2029, file: !1968, line: 106, baseType: !134, size: 32, offset: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2029, file: !1968, line: 107, baseType: !7, size: 32, offset: 96)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1200, file: !1201, line: 1067, baseType: !1821, offset: 11136)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1200, file: !1201, line: 1099, baseType: !2036, size: 64, offset: 11136)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1201, line: 56, flags: DIFlagFwdDecl)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1200, file: !1201, line: 1103, baseType: !204, size: 128, offset: 11200)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1200, file: !1201, line: 1104, baseType: !2040, size: 64, offset: 11328)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1201, line: 46, flags: DIFlagFwdDecl)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1200, file: !1201, line: 1105, baseType: !1156, size: 192, offset: 11392)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1200, file: !1201, line: 1106, baseType: !7, size: 32, offset: 11584)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1200, file: !1201, line: 1109, baseType: !2045, size: 128, offset: 11648)
!2045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2046, size: 128, elements: !1552)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1201, line: 51, flags: DIFlagFwdDecl)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1200, file: !1201, line: 1110, baseType: !1156, size: 192, offset: 11776)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1200, file: !1201, line: 1111, baseType: !204, size: 128, offset: 11968)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1200, file: !1201, line: 1173, baseType: !2051, size: 64, offset: 12096)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2053, line: 62, size: 256, align: 256, elements: !2054)
!2053 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2054 = !{!2055, !2056, !2057, !2062}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2052, file: !2053, line: 75, baseType: !401, size: 32)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2052, file: !2053, line: 90, baseType: !401, size: 32, offset: 32)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2052, file: !2053, line: 124, baseType: !2058, size: 64, offset: 64)
!2058 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2052, file: !2053, line: 109, size: 64, elements: !2059)
!2059 = !{!2060, !2061}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2058, file: !2053, line: 110, baseType: !406, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2058, file: !2053, line: 112, baseType: !406, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2052, file: !2053, line: 144, baseType: !401, size: 32, offset: 128)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1200, file: !1201, line: 1174, baseType: !399, size: 32, offset: 12160)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1200, file: !1201, line: 1179, baseType: !308, size: 64, offset: 12224)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1200, file: !1201, line: 1182, baseType: !2066, size: 128, offset: 12288)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1134, line: 76, size: 128, elements: !2067)
!2067 = !{!2068, !2073, !2074}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2066, file: !1134, line: 85, baseType: !2069, size: 64)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2070, line: 7, size: 64, elements: !2071)
!2070 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2071 = !{!2072}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2069, file: !2070, line: 12, baseType: !1350, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2066, file: !1134, line: 88, baseType: !474, size: 8, offset: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2066, file: !1134, line: 95, baseType: !474, size: 8, offset: 72)
!2075 = !DIDerivedType(tag: DW_TAG_member, scope: !1200, file: !1201, line: 1184, baseType: !2076, size: 128, offset: 12416)
!2076 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1200, file: !1201, line: 1184, size: 128, elements: !2077)
!2077 = !{!2078, !2079}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2076, file: !1201, line: 1185, baseType: !1213, size: 32)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2076, file: !1201, line: 1186, baseType: !349, size: 128, align: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1200, file: !1201, line: 1190, baseType: !2081, size: 64, offset: 12544)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1201, line: 53, flags: DIFlagFwdDecl)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1200, file: !1201, line: 1192, baseType: !2084, size: 128, offset: 12608)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1134, line: 64, size: 128, elements: !2085)
!2085 = !{!2086, !2087, !2088}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2084, file: !1134, line: 65, baseType: !705, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2084, file: !1134, line: 67, baseType: !401, size: 32, offset: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2084, file: !1134, line: 68, baseType: !401, size: 32, offset: 96)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1200, file: !1201, line: 1206, baseType: !134, size: 32, offset: 12736)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1200, file: !1201, line: 1207, baseType: !134, size: 32, offset: 12768)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1200, file: !1201, line: 1209, baseType: !308, size: 64, offset: 12800)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1200, file: !1201, line: 1219, baseType: !405, size: 64, offset: 12864)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1200, file: !1201, line: 1220, baseType: !405, size: 64, offset: 12928)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1200, file: !1201, line: 1317, baseType: !134, size: 32, offset: 12992)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1200, file: !1201, line: 1319, baseType: !1199, size: 64, offset: 13056)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1200, file: !1201, line: 1322, baseType: !2097, size: 64, offset: 13120)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2099, line: 56, size: 512, elements: !2100)
!2099 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2100 = !{!2101, !2102, !2103, !2104, !2105, !2106, !2107, !2109}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2098, file: !2099, line: 57, baseType: !2097, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2098, file: !2099, line: 58, baseType: !193, size: 64, offset: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2098, file: !2099, line: 59, baseType: !308, size: 64, offset: 128)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2098, file: !2099, line: 60, baseType: !308, size: 64, offset: 192)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2098, file: !2099, line: 61, baseType: !805, size: 64, offset: 256)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2098, file: !2099, line: 62, baseType: !7, size: 32, offset: 320)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2098, file: !2099, line: 63, baseType: !2108, size: 64, offset: 384)
!2108 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !205, line: 153, baseType: !405)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2098, file: !2099, line: 64, baseType: !2110, size: 64, offset: 448)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1200, file: !1201, line: 1326, baseType: !1213, size: 32, offset: 13184)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1200, file: !1201, line: 1342, baseType: !193, size: 64, offset: 13248)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1200, file: !1201, line: 1343, baseType: !406, size: 64, offset: 13312)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1200, file: !1201, line: 1344, baseType: !405, size: 64, offset: 13376)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1200, file: !1201, line: 1345, baseType: !406, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1200, file: !1201, line: 1346, baseType: !406, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1200, file: !1201, line: 1347, baseType: !406, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1200, file: !1201, line: 1348, baseType: !349, size: 128, align: 64, offset: 13504)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1200, file: !1201, line: 1358, baseType: !2121, size: 34816, offset: 13824)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2122, line: 485, size: 34816, elements: !2123)
!2122 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2123 = !{!2124, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2153, !2154, !2155, !2156, !2157, !2158, !2161, !2162, !2163}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2121, file: !2122, line: 487, baseType: !2125, size: 192)
!2125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2126, size: 192, elements: !260)
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2127, line: 16, size: 64, elements: !2128)
!2127 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2128 = !{!2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2126, file: !2127, line: 17, baseType: !844, size: 16)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2126, file: !2127, line: 18, baseType: !844, size: 16, offset: 16)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2126, file: !2127, line: 19, baseType: !844, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2126, file: !2127, line: 19, baseType: !844, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2126, file: !2127, line: 19, baseType: !844, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2126, file: !2127, line: 19, baseType: !844, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2126, file: !2127, line: 19, baseType: !844, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2126, file: !2127, line: 20, baseType: !844, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2126, file: !2127, line: 20, baseType: !844, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2126, file: !2127, line: 20, baseType: !844, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2126, file: !2127, line: 20, baseType: !844, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2126, file: !2127, line: 20, baseType: !844, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2126, file: !2127, line: 20, baseType: !844, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2121, file: !2122, line: 491, baseType: !308, size: 64, offset: 192)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2121, file: !2122, line: 495, baseType: !137, size: 16, offset: 256)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2121, file: !2122, line: 496, baseType: !137, size: 16, offset: 272)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2121, file: !2122, line: 497, baseType: !137, size: 16, offset: 288)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2121, file: !2122, line: 498, baseType: !137, size: 16, offset: 304)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2121, file: !2122, line: 502, baseType: !308, size: 64, offset: 320)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2121, file: !2122, line: 503, baseType: !308, size: 64, offset: 384)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2121, file: !2122, line: 514, baseType: !2150, size: 256, offset: 448)
!2150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2151, size: 256, elements: !1138)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2122, line: 483, flags: DIFlagFwdDecl)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2121, file: !2122, line: 516, baseType: !308, size: 64, offset: 704)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2121, file: !2122, line: 518, baseType: !308, size: 64, offset: 768)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2121, file: !2122, line: 520, baseType: !308, size: 64, offset: 832)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2121, file: !2122, line: 521, baseType: !308, size: 64, offset: 896)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2121, file: !2122, line: 522, baseType: !308, size: 64, offset: 960)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2121, file: !2122, line: 528, baseType: !2159, size: 64, offset: 1024)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2122, line: 10, flags: DIFlagFwdDecl)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2121, file: !2122, line: 535, baseType: !308, size: 64, offset: 1088)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2121, file: !2122, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2121, file: !2122, line: 540, baseType: !2164, size: 33280, offset: 1536)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2165, line: 317, size: 33280, elements: !2166)
!2165 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2166 = !{!2167, !2168, !2169}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2164, file: !2165, line: 330, baseType: !7, size: 32)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2164, file: !2165, line: 337, baseType: !308, size: 64, offset: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2164, file: !2165, line: 348, baseType: !2170, size: 32768, offset: 512)
!2170 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2165, line: 304, size: 32768, elements: !2171)
!2171 = !{!2172, !2187, !2226, !2276, !2289}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2170, file: !2165, line: 305, baseType: !2173, size: 896)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2165, line: 12, size: 896, elements: !2174)
!2174 = !{!2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2186}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2173, file: !2165, line: 13, baseType: !399, size: 32)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2173, file: !2165, line: 14, baseType: !399, size: 32, offset: 32)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2173, file: !2165, line: 15, baseType: !399, size: 32, offset: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2173, file: !2165, line: 16, baseType: !399, size: 32, offset: 96)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2173, file: !2165, line: 17, baseType: !399, size: 32, offset: 128)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2173, file: !2165, line: 18, baseType: !399, size: 32, offset: 160)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2173, file: !2165, line: 19, baseType: !399, size: 32, offset: 192)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2173, file: !2165, line: 22, baseType: !2183, size: 640, offset: 224)
!2183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 640, elements: !2184)
!2184 = !{!2185}
!2185 = !DISubrange(count: 20)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2173, file: !2165, line: 25, baseType: !399, size: 32, offset: 864)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2170, file: !2165, line: 306, baseType: !2188, size: 4096, align: 128)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2165, line: 34, size: 4096, align: 128, elements: !2189)
!2189 = !{!2190, !2191, !2192, !2193, !2194, !2209, !2210, !2211, !2215, !2217, !2221}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2188, file: !2165, line: 35, baseType: !844, size: 16)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2188, file: !2165, line: 36, baseType: !844, size: 16, offset: 16)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2188, file: !2165, line: 37, baseType: !844, size: 16, offset: 32)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2188, file: !2165, line: 38, baseType: !844, size: 16, offset: 48)
!2194 = !DIDerivedType(tag: DW_TAG_member, scope: !2188, file: !2165, line: 39, baseType: !2195, size: 128, offset: 64)
!2195 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2188, file: !2165, line: 39, size: 128, elements: !2196)
!2196 = !{!2197, !2202}
!2197 = !DIDerivedType(tag: DW_TAG_member, scope: !2195, file: !2165, line: 40, baseType: !2198, size: 128)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2195, file: !2165, line: 40, size: 128, elements: !2199)
!2199 = !{!2200, !2201}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2198, file: !2165, line: 41, baseType: !405, size: 64)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2198, file: !2165, line: 42, baseType: !405, size: 64, offset: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, scope: !2195, file: !2165, line: 44, baseType: !2203, size: 128)
!2203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2195, file: !2165, line: 44, size: 128, elements: !2204)
!2204 = !{!2205, !2206, !2207, !2208}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2203, file: !2165, line: 45, baseType: !399, size: 32)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2203, file: !2165, line: 46, baseType: !399, size: 32, offset: 32)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2203, file: !2165, line: 47, baseType: !399, size: 32, offset: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2203, file: !2165, line: 48, baseType: !399, size: 32, offset: 96)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2188, file: !2165, line: 51, baseType: !399, size: 32, offset: 192)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2188, file: !2165, line: 52, baseType: !399, size: 32, offset: 224)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2188, file: !2165, line: 55, baseType: !2212, size: 1024, offset: 256)
!2212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 1024, elements: !2213)
!2213 = !{!2214}
!2214 = !DISubrange(count: 32)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2188, file: !2165, line: 58, baseType: !2216, size: 2048, offset: 1280)
!2216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 2048, elements: !264)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2188, file: !2165, line: 60, baseType: !2218, size: 384, offset: 3328)
!2218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 384, elements: !2219)
!2219 = !{!2220}
!2220 = !DISubrange(count: 12)
!2221 = !DIDerivedType(tag: DW_TAG_member, scope: !2188, file: !2165, line: 62, baseType: !2222, size: 384, offset: 3712)
!2222 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2188, file: !2165, line: 62, size: 384, elements: !2223)
!2223 = !{!2224, !2225}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2222, file: !2165, line: 63, baseType: !2218, size: 384)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2222, file: !2165, line: 64, baseType: !2218, size: 384)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2170, file: !2165, line: 307, baseType: !2227, size: 1088)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2165, line: 79, size: 1088, elements: !2228)
!2228 = !{!2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2275}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2227, file: !2165, line: 80, baseType: !399, size: 32)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2227, file: !2165, line: 81, baseType: !399, size: 32, offset: 32)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2227, file: !2165, line: 82, baseType: !399, size: 32, offset: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2227, file: !2165, line: 83, baseType: !399, size: 32, offset: 96)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2227, file: !2165, line: 84, baseType: !399, size: 32, offset: 128)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2227, file: !2165, line: 85, baseType: !399, size: 32, offset: 160)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2227, file: !2165, line: 86, baseType: !399, size: 32, offset: 192)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2227, file: !2165, line: 88, baseType: !2183, size: 640, offset: 224)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2227, file: !2165, line: 89, baseType: !1335, size: 8, offset: 864)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2227, file: !2165, line: 90, baseType: !1335, size: 8, offset: 872)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2227, file: !2165, line: 91, baseType: !1335, size: 8, offset: 880)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2227, file: !2165, line: 92, baseType: !1335, size: 8, offset: 888)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2227, file: !2165, line: 93, baseType: !1335, size: 8, offset: 896)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2227, file: !2165, line: 94, baseType: !1335, size: 8, offset: 904)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2227, file: !2165, line: 95, baseType: !2244, size: 64, offset: 960)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2246, line: 11, size: 128, elements: !2247)
!2246 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2247 = !{!2248, !2249}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2245, file: !2246, line: 12, baseType: !294, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2245, file: !2246, line: 13, baseType: !2250, size: 64, offset: 64)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2252, line: 56, size: 1344, elements: !2253)
!2252 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2253 = !{!2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2251, file: !2252, line: 61, baseType: !308, size: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2251, file: !2252, line: 62, baseType: !308, size: 64, offset: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2251, file: !2252, line: 63, baseType: !308, size: 64, offset: 128)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2251, file: !2252, line: 64, baseType: !308, size: 64, offset: 192)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2251, file: !2252, line: 65, baseType: !308, size: 64, offset: 256)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2251, file: !2252, line: 66, baseType: !308, size: 64, offset: 320)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2251, file: !2252, line: 68, baseType: !308, size: 64, offset: 384)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2251, file: !2252, line: 69, baseType: !308, size: 64, offset: 448)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2251, file: !2252, line: 70, baseType: !308, size: 64, offset: 512)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2251, file: !2252, line: 71, baseType: !308, size: 64, offset: 576)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2251, file: !2252, line: 72, baseType: !308, size: 64, offset: 640)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2251, file: !2252, line: 73, baseType: !308, size: 64, offset: 704)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2251, file: !2252, line: 74, baseType: !308, size: 64, offset: 768)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2251, file: !2252, line: 75, baseType: !308, size: 64, offset: 832)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2251, file: !2252, line: 76, baseType: !308, size: 64, offset: 896)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2251, file: !2252, line: 81, baseType: !308, size: 64, offset: 960)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2251, file: !2252, line: 83, baseType: !308, size: 64, offset: 1024)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2251, file: !2252, line: 84, baseType: !308, size: 64, offset: 1088)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2251, file: !2252, line: 85, baseType: !308, size: 64, offset: 1152)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2251, file: !2252, line: 86, baseType: !308, size: 64, offset: 1216)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2251, file: !2252, line: 87, baseType: !308, size: 64, offset: 1280)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2227, file: !2165, line: 96, baseType: !399, size: 32, offset: 1024)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2170, file: !2165, line: 308, baseType: !2277, size: 4608, align: 512)
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2165, line: 289, size: 4608, align: 512, elements: !2278)
!2278 = !{!2279, !2280, !2287}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2277, file: !2165, line: 290, baseType: !2188, size: 4096, align: 128)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2277, file: !2165, line: 291, baseType: !2281, size: 512, offset: 4096)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2165, line: 268, size: 512, elements: !2282)
!2282 = !{!2283, !2284, !2285}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2281, file: !2165, line: 269, baseType: !405, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2281, file: !2165, line: 270, baseType: !405, size: 64, offset: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2281, file: !2165, line: 271, baseType: !2286, size: 384, offset: 128)
!2286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 384, elements: !1608)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2277, file: !2165, line: 292, baseType: !2288, offset: 4608)
!2288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1335, elements: !1706)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2170, file: !2165, line: 309, baseType: !2290, size: 32768)
!2290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1335, size: 32768, elements: !2291)
!2291 = !{!2292}
!2292 = !DISubrange(count: 4096)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1196, file: !707, line: 378, baseType: !2294, size: 64, offset: 64)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1192, file: !707, line: 384, baseType: !1485, size: 192, offset: 192)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !963, file: !707, line: 500, baseType: !218, offset: 6656)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !963, file: !707, line: 501, baseType: !2298, size: 64, offset: 6656)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !707, line: 387, flags: DIFlagFwdDecl)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !963, file: !707, line: 516, baseType: !1696, size: 64, offset: 6720)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !963, file: !707, line: 519, baseType: !336, size: 64, offset: 6784)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !963, file: !707, line: 521, baseType: !2303, size: 64, offset: 6848)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !707, line: 521, flags: DIFlagFwdDecl)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !963, file: !707, line: 545, baseType: !732, size: 32, offset: 6912)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !963, file: !707, line: 548, baseType: !474, size: 8, offset: 6944)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !963, file: !707, line: 550, baseType: !2308, offset: 6952)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2309, line: 142, elements: !232)
!2309 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !963, file: !707, line: 554, baseType: !1940, size: 256, offset: 6976)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !963, file: !707, line: 557, baseType: !399, size: 32, offset: 7232)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !960, file: !707, line: 565, baseType: !2313, offset: 7296)
!2313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, elements: !2314)
!2314 = !{!2315}
!2315 = !DISubrange(count: -1)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !956, file: !707, line: 151, baseType: !732, size: 32)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !949, file: !707, line: 156, baseType: !218, offset: 256)
!2318 = !DIDerivedType(tag: DW_TAG_member, scope: !711, file: !707, line: 159, baseType: !2319, size: 128)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !711, file: !707, line: 159, size: 128, elements: !2320)
!2320 = !{!2321, !2385}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2319, file: !707, line: 161, baseType: !2322, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2324)
!2324 = !{!2325, !2335, !2356, !2357, !2358, !2359, !2360, !2372, !2373, !2374}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2323, file: !31, line: 111, baseType: !2326, size: 384)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2327)
!2327 = !{!2328, !2330, !2331, !2332, !2333, !2334}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2326, file: !31, line: 20, baseType: !2329, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !308)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2326, file: !31, line: 21, baseType: !2329, size: 64, offset: 64)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2326, file: !31, line: 22, baseType: !2329, size: 64, offset: 128)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2326, file: !31, line: 23, baseType: !308, size: 64, offset: 192)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2326, file: !31, line: 24, baseType: !308, size: 64, offset: 256)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2326, file: !31, line: 25, baseType: !308, size: 64, offset: 320)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2323, file: !31, line: 112, baseType: !2336, size: 64, offset: 384)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2338, line: 105, size: 128, elements: !2339)
!2338 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2339 = !{!2340, !2341}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2337, file: !2338, line: 110, baseType: !308, size: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2337, file: !2338, line: 118, baseType: !2342, size: 64, offset: 64)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2338, line: 95, size: 448, elements: !2344)
!2344 = !{!2345, !2346, !2351, !2352, !2353, !2354, !2355}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2343, file: !2338, line: 96, baseType: !756, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2343, file: !2338, line: 97, baseType: !2347, size: 64, offset: 64)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2338, line: 60, baseType: !2349)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{null, !2336}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2343, file: !2338, line: 98, baseType: !2347, size: 64, offset: 128)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2343, file: !2338, line: 99, baseType: !474, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2343, file: !2338, line: 100, baseType: !474, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2343, file: !2338, line: 101, baseType: !349, size: 128, align: 64, offset: 256)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2343, file: !2338, line: 102, baseType: !2336, size: 64, offset: 384)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2323, file: !31, line: 113, baseType: !2337, size: 128, offset: 448)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2323, file: !31, line: 114, baseType: !1485, size: 192, offset: 576)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2323, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2323, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2323, file: !31, line: 117, baseType: !2361, size: 64, offset: 832)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2363)
!2363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2364)
!2364 = !{!2365, !2366, !2370, !2371}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2363, file: !31, line: 73, baseType: !825, size: 64)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2363, file: !31, line: 78, baseType: !2367, size: 64, offset: 64)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{null, !2322}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2363, file: !31, line: 83, baseType: !2367, size: 64, offset: 128)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2363, file: !31, line: 89, baseType: !1012, size: 64, offset: 192)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2323, file: !31, line: 118, baseType: !193, size: 64, offset: 896)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2323, file: !31, line: 119, baseType: !134, size: 32, offset: 960)
!2374 = !DIDerivedType(tag: DW_TAG_member, scope: !2323, file: !31, line: 120, baseType: !2375, size: 128, offset: 1024)
!2375 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2323, file: !31, line: 120, size: 128, elements: !2376)
!2376 = !{!2377, !2383}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2375, file: !31, line: 121, baseType: !2378, size: 128)
!2378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2379, line: 6, size: 128, elements: !2380)
!2379 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2380 = !{!2381, !2382}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2378, file: !2379, line: 7, baseType: !405, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2378, file: !2379, line: 8, baseType: !405, size: 64, offset: 64)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2375, file: !31, line: 122, baseType: !2384)
!2384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2378, elements: !1706)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2319, file: !707, line: 162, baseType: !193, size: 64, offset: 64)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !711, file: !707, line: 176, baseType: !349, size: 128, align: 64)
!2387 = !DIDerivedType(tag: DW_TAG_member, scope: !706, file: !707, line: 179, baseType: !2388, size: 32, offset: 384)
!2388 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !706, file: !707, line: 179, size: 32, elements: !2389)
!2389 = !{!2390, !2391, !2392, !2393}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2388, file: !707, line: 184, baseType: !732, size: 32)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2388, file: !707, line: 192, baseType: !7, size: 32)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2388, file: !707, line: 194, baseType: !7, size: 32)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2388, file: !707, line: 195, baseType: !134, size: 32)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !706, file: !707, line: 199, baseType: !732, size: 32, offset: 416)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !641, file: !44, line: 1964, baseType: !2396, size: 64, offset: 1344)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!294, !583, !2399}
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2401, line: 12, size: 256, elements: !2402)
!2401 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2402 = !{!2403, !2404, !2405, !2406, !2407}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2400, file: !2401, line: 13, baseType: !728, size: 32)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2400, file: !2401, line: 16, baseType: !134, size: 32, offset: 32)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2400, file: !2401, line: 23, baseType: !308, size: 64, offset: 64)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2400, file: !2401, line: 30, baseType: !308, size: 64, offset: 128)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2400, file: !2401, line: 33, baseType: !2408, size: 64, offset: 192)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !707, line: 27, flags: DIFlagFwdDecl)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !641, file: !44, line: 1966, baseType: !2396, size: 64, offset: 1408)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !584, file: !44, line: 1424, baseType: !2412, size: 64, offset: 448)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2414)
!2414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2415)
!2415 = !{!2416, !2462, !2466, !2470, !2471, !2472, !2473, !2474, !2479, !2484, !2488}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2414, file: !38, line: 323, baseType: !2417, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!134, !2420}
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2422)
!2422 = !{!2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2447, !2448, !2449}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2421, file: !38, line: 295, baseType: !623, size: 128)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2421, file: !38, line: 296, baseType: !204, size: 128, offset: 128)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2421, file: !38, line: 297, baseType: !204, size: 128, offset: 256)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2421, file: !38, line: 298, baseType: !204, size: 128, offset: 384)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2421, file: !38, line: 299, baseType: !1156, size: 192, offset: 512)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2421, file: !38, line: 300, baseType: !218, offset: 704)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2421, file: !38, line: 301, baseType: !732, size: 32, offset: 704)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2421, file: !38, line: 302, baseType: !583, size: 64, offset: 768)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2421, file: !38, line: 303, baseType: !2432, size: 64, offset: 832)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2433)
!2433 = !{!2434, !2446}
!2434 = !DIDerivedType(tag: DW_TAG_member, scope: !2432, file: !38, line: 69, baseType: !2435, size: 32)
!2435 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2432, file: !38, line: 69, size: 32, elements: !2436)
!2436 = !{!2437, !2438, !2439}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2435, file: !38, line: 70, baseType: !419, size: 32)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2435, file: !38, line: 71, baseType: !427, size: 32)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2435, file: !38, line: 72, baseType: !2440, size: 32)
!2440 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2441, line: 24, baseType: !2442)
!2441 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2441, line: 22, size: 32, elements: !2443)
!2443 = !{!2444}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2442, file: !2441, line: 23, baseType: !2445, size: 32)
!2445 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2441, line: 20, baseType: !425)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2432, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2421, file: !38, line: 304, baseType: !515, size: 64, offset: 896)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2421, file: !38, line: 305, baseType: !308, size: 64, offset: 960)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2421, file: !38, line: 306, baseType: !2450, size: 576, offset: 1024)
!2450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2451)
!2451 = !{!2452, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2450, file: !38, line: 206, baseType: !2453, size: 64)
!2453 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !517)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2450, file: !38, line: 207, baseType: !2453, size: 64, offset: 64)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2450, file: !38, line: 208, baseType: !2453, size: 64, offset: 128)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2450, file: !38, line: 209, baseType: !2453, size: 64, offset: 192)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2450, file: !38, line: 210, baseType: !2453, size: 64, offset: 256)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2450, file: !38, line: 211, baseType: !2453, size: 64, offset: 320)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2450, file: !38, line: 212, baseType: !2453, size: 64, offset: 384)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2450, file: !38, line: 213, baseType: !523, size: 64, offset: 448)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2450, file: !38, line: 214, baseType: !523, size: 64, offset: 512)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2414, file: !38, line: 324, baseType: !2463, size: 64, offset: 64)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!2420, !583, !134}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2414, file: !38, line: 325, baseType: !2467, size: 64, offset: 128)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{null, !2420}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2414, file: !38, line: 326, baseType: !2417, size: 64, offset: 192)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2414, file: !38, line: 327, baseType: !2417, size: 64, offset: 256)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2414, file: !38, line: 328, baseType: !2417, size: 64, offset: 320)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2414, file: !38, line: 329, baseType: !669, size: 64, offset: 384)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2414, file: !38, line: 332, baseType: !2475, size: 64, offset: 448)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!2478, !413}
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2414, file: !38, line: 333, baseType: !2480, size: 64, offset: 512)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!134, !413, !2483}
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2414, file: !38, line: 335, baseType: !2485, size: 64, offset: 576)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!134, !413, !2478}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2414, file: !38, line: 337, baseType: !2489, size: 64, offset: 640)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{!134, !583, !2492}
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !584, file: !44, line: 1425, baseType: !2494, size: 64, offset: 512)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2496)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2497)
!2497 = !{!2498, !2502, !2503, !2507, !2508, !2509, !2524, !2547, !2551, !2552, !2575}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2496, file: !38, line: 429, baseType: !2499, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!134, !583, !134, !134, !533}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2496, file: !38, line: 430, baseType: !669, size: 64, offset: 64)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2496, file: !38, line: 431, baseType: !2504, size: 64, offset: 128)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!134, !583, !7}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2496, file: !38, line: 432, baseType: !2504, size: 64, offset: 192)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2496, file: !38, line: 433, baseType: !669, size: 64, offset: 256)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2496, file: !38, line: 434, baseType: !2510, size: 64, offset: 320)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{!134, !583, !134, !2513}
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2515)
!2515 = !{!2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2514, file: !38, line: 416, baseType: !134, size: 32)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2514, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2514, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2514, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2514, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2514, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2514, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2514, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2496, file: !38, line: 435, baseType: !2525, size: 64, offset: 384)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{!134, !583, !2432, !2528}
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2530)
!2530 = !{!2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2529, file: !38, line: 344, baseType: !134, size: 32)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2529, file: !38, line: 345, baseType: !405, size: 64, offset: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2529, file: !38, line: 346, baseType: !405, size: 64, offset: 128)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2529, file: !38, line: 347, baseType: !405, size: 64, offset: 192)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2529, file: !38, line: 348, baseType: !405, size: 64, offset: 256)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2529, file: !38, line: 349, baseType: !405, size: 64, offset: 320)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2529, file: !38, line: 350, baseType: !405, size: 64, offset: 384)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2529, file: !38, line: 351, baseType: !762, size: 64, offset: 448)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2529, file: !38, line: 353, baseType: !762, size: 64, offset: 512)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2529, file: !38, line: 354, baseType: !134, size: 32, offset: 576)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2529, file: !38, line: 355, baseType: !134, size: 32, offset: 608)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2529, file: !38, line: 356, baseType: !405, size: 64, offset: 640)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2529, file: !38, line: 357, baseType: !405, size: 64, offset: 704)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2529, file: !38, line: 358, baseType: !405, size: 64, offset: 768)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2529, file: !38, line: 359, baseType: !762, size: 64, offset: 832)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2529, file: !38, line: 360, baseType: !134, size: 32, offset: 896)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2496, file: !38, line: 436, baseType: !2548, size: 64, offset: 448)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!134, !583, !2492, !2528}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2496, file: !38, line: 438, baseType: !2525, size: 64, offset: 512)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2496, file: !38, line: 439, baseType: !2553, size: 64, offset: 576)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{!134, !583, !2556}
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2558)
!2558 = !{!2559, !2560}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2557, file: !38, line: 410, baseType: !7, size: 32)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2557, file: !38, line: 411, baseType: !2561, size: 1344, offset: 64)
!2561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2562, size: 1344, elements: !260)
!2562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2563)
!2563 = !{!2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2574}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2562, file: !38, line: 396, baseType: !7, size: 32)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2562, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2562, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2562, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2562, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2562, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2562, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2562, file: !38, line: 404, baseType: !407, size: 64, offset: 256)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2562, file: !38, line: 405, baseType: !2573, size: 64, offset: 320)
!2573 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !205, line: 126, baseType: !405)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2562, file: !38, line: 406, baseType: !2573, size: 64, offset: 384)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2496, file: !38, line: 440, baseType: !2504, size: 64, offset: 640)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !584, file: !44, line: 1426, baseType: !2577, size: 64, offset: 576)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2579)
!2579 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !584, file: !44, line: 1427, baseType: !308, size: 64, offset: 640)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !584, file: !44, line: 1428, baseType: !308, size: 64, offset: 704)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !584, file: !44, line: 1429, baseType: !308, size: 64, offset: 768)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !584, file: !44, line: 1430, baseType: !366, size: 64, offset: 832)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !584, file: !44, line: 1431, baseType: !752, size: 256, offset: 896)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !584, file: !44, line: 1432, baseType: !134, size: 32, offset: 1152)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !584, file: !44, line: 1433, baseType: !732, size: 32, offset: 1184)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !584, file: !44, line: 1437, baseType: !2588, size: 64, offset: 1216)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2591)
!2591 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !584, file: !44, line: 1449, baseType: !2593, size: 64, offset: 1280)
!2593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !382, line: 34, size: 64, elements: !2594)
!2594 = !{!2595}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2593, file: !382, line: 35, baseType: !385, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !584, file: !44, line: 1450, baseType: !204, size: 128, offset: 1344)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !584, file: !44, line: 1451, baseType: !2598, size: 64, offset: 1472)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !584, file: !44, line: 1452, baseType: !1906, size: 64, offset: 1536)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !584, file: !44, line: 1453, baseType: !2602, size: 64, offset: 1600)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !584, file: !44, line: 1454, baseType: !623, size: 128, offset: 1664)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !584, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !584, file: !44, line: 1456, baseType: !2607, size: 2432, offset: 1856)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2608)
!2608 = !{!2609, !2610, !2611, !2613, !2645}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2607, file: !38, line: 519, baseType: !7, size: 32)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2607, file: !38, line: 520, baseType: !752, size: 256, offset: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2607, file: !38, line: 521, baseType: !2612, size: 192, offset: 320)
!2612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !413, size: 192, elements: !260)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2607, file: !38, line: 522, baseType: !2614, size: 1728, offset: 512)
!2614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2615, size: 1728, elements: !260)
!2615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2616)
!2616 = !{!2617, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2615, file: !38, line: 223, baseType: !2618, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2620)
!2620 = !{!2621, !2622, !2635, !2636}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2619, file: !38, line: 444, baseType: !134, size: 32)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2619, file: !38, line: 445, baseType: !2623, size: 64, offset: 64)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2625)
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2626)
!2626 = !{!2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2625, file: !38, line: 311, baseType: !669, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2625, file: !38, line: 312, baseType: !669, size: 64, offset: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2625, file: !38, line: 313, baseType: !669, size: 64, offset: 128)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2625, file: !38, line: 314, baseType: !669, size: 64, offset: 192)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2625, file: !38, line: 315, baseType: !2417, size: 64, offset: 256)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2625, file: !38, line: 316, baseType: !2417, size: 64, offset: 320)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2625, file: !38, line: 317, baseType: !2417, size: 64, offset: 384)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2625, file: !38, line: 318, baseType: !2489, size: 64, offset: 448)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2619, file: !38, line: 446, baseType: !177, size: 64, offset: 128)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2619, file: !38, line: 447, baseType: !2618, size: 64, offset: 192)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2615, file: !38, line: 224, baseType: !134, size: 32, offset: 64)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2615, file: !38, line: 226, baseType: !204, size: 128, offset: 128)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2615, file: !38, line: 227, baseType: !308, size: 64, offset: 256)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2615, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2615, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2615, file: !38, line: 230, baseType: !2453, size: 64, offset: 384)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2615, file: !38, line: 231, baseType: !2453, size: 64, offset: 448)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2615, file: !38, line: 232, baseType: !193, size: 64, offset: 512)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2607, file: !38, line: 523, baseType: !2646, size: 192, offset: 2240)
!2646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2623, size: 192, elements: !260)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !584, file: !44, line: 1458, baseType: !2648, size: 2112, offset: 4288)
!2648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2649)
!2649 = !{!2650, !2651, !2652}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2648, file: !44, line: 1411, baseType: !134, size: 32)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2648, file: !44, line: 1412, baseType: !1464, size: 128, offset: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2648, file: !44, line: 1413, baseType: !2653, size: 1920, offset: 192)
!2653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2654, size: 1920, elements: !260)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2655, line: 12, size: 640, elements: !2656)
!2655 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2656 = !{!2657, !2665, !2667, !2672, !2673}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2654, file: !2655, line: 13, baseType: !2658, size: 320)
!2658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2659, line: 17, size: 320, elements: !2660)
!2659 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2660 = !{!2661, !2662, !2663, !2664}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2658, file: !2659, line: 18, baseType: !134, size: 32)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2658, file: !2659, line: 19, baseType: !134, size: 32, offset: 32)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2658, file: !2659, line: 20, baseType: !1464, size: 128, offset: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2658, file: !2659, line: 22, baseType: !349, size: 128, align: 64, offset: 192)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2654, file: !2655, line: 14, baseType: !2666, size: 64, offset: 320)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2654, file: !2655, line: 15, baseType: !2668, size: 64, offset: 384)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2669, line: 16, size: 64, elements: !2670)
!2669 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2670 = !{!2671}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2668, file: !2669, line: 17, baseType: !1199, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2654, file: !2655, line: 16, baseType: !1464, size: 128, offset: 448)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2654, file: !2655, line: 17, baseType: !732, size: 32, offset: 576)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !584, file: !44, line: 1465, baseType: !193, size: 64, offset: 6400)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !584, file: !44, line: 1468, baseType: !399, size: 32, offset: 6464)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !584, file: !44, line: 1470, baseType: !523, size: 64, offset: 6528)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !584, file: !44, line: 1471, baseType: !523, size: 64, offset: 6592)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !584, file: !44, line: 1473, baseType: !401, size: 32, offset: 6656)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !584, file: !44, line: 1474, baseType: !2680, size: 64, offset: 6720)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !584, file: !44, line: 1477, baseType: !2683, size: 256, offset: 6784)
!2683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 256, elements: !2213)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !584, file: !44, line: 1478, baseType: !2685, size: 128, offset: 7040)
!2685 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2686, line: 18, baseType: !2687)
!2686 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2686, line: 16, size: 128, elements: !2688)
!2688 = !{!2689}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2687, file: !2686, line: 17, baseType: !2690, size: 128)
!2690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1336, size: 128, elements: !1718)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !584, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !584, file: !44, line: 1481, baseType: !2693, size: 32, offset: 7200)
!2693 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !205, line: 150, baseType: !7)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !584, file: !44, line: 1487, baseType: !1156, size: 192, offset: 7232)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !584, file: !44, line: 1493, baseType: !175, size: 64, offset: 7424)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !584, file: !44, line: 1495, baseType: !2697, size: 64, offset: 7488)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2699)
!2699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !364, line: 135, size: 1024, align: 512, elements: !2700)
!2700 = !{!2701, !2705, !2706, !2713, !2719, !2723, !2727, !2731, !2732, !2736, !2740, !2745, !2749}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2699, file: !364, line: 136, baseType: !2702, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!134, !366, !7}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2699, file: !364, line: 137, baseType: !2702, size: 64, offset: 64)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2699, file: !364, line: 138, baseType: !2707, size: 64, offset: 128)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!134, !2710, !2712}
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !367)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2699, file: !364, line: 139, baseType: !2714, size: 64, offset: 192)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = !DISubroutineType(types: !2716)
!2716 = !{!134, !2710, !7, !175, !2717}
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !390)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2699, file: !364, line: 141, baseType: !2720, size: 64, offset: 256)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{!134, !2710}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2699, file: !364, line: 142, baseType: !2724, size: 64, offset: 320)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DISubroutineType(types: !2726)
!2726 = !{!134, !366}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2699, file: !364, line: 143, baseType: !2728, size: 64, offset: 384)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DISubroutineType(types: !2730)
!2730 = !{null, !366}
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2699, file: !364, line: 144, baseType: !2728, size: 64, offset: 448)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2699, file: !364, line: 145, baseType: !2733, size: 64, offset: 512)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = !DISubroutineType(types: !2735)
!2735 = !{null, !366, !413}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2699, file: !364, line: 146, baseType: !2737, size: 64, offset: 576)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!259, !366, !259, !134}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2699, file: !364, line: 147, baseType: !2741, size: 64, offset: 640)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{!362, !2744}
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2699, file: !364, line: 148, baseType: !2746, size: 64, offset: 704)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!134, !533, !474}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2699, file: !364, line: 149, baseType: !2750, size: 64, offset: 768)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{!366, !366, !2753}
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !414)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !584, file: !44, line: 1500, baseType: !134, size: 32, offset: 7552)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !584, file: !44, line: 1502, baseType: !2757, size: 448, offset: 7616)
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2401, line: 60, size: 448, elements: !2758)
!2758 = !{!2759, !2764, !2765, !2766, !2767, !2768, !2769}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2757, file: !2401, line: 61, baseType: !2760, size: 64)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!308, !2763, !2399}
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2757, file: !2401, line: 63, baseType: !2760, size: 64, offset: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2757, file: !2401, line: 66, baseType: !294, size: 64, offset: 128)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2757, file: !2401, line: 67, baseType: !134, size: 32, offset: 192)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2757, file: !2401, line: 68, baseType: !7, size: 32, offset: 224)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2757, file: !2401, line: 71, baseType: !204, size: 128, offset: 256)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2757, file: !2401, line: 77, baseType: !2770, size: 64, offset: 384)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !584, file: !44, line: 1505, baseType: !756, size: 64, offset: 8064)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !584, file: !44, line: 1508, baseType: !756, size: 64, offset: 8128)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !584, file: !44, line: 1511, baseType: !134, size: 32, offset: 8192)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !584, file: !44, line: 1514, baseType: !894, size: 32, offset: 8224)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !584, file: !44, line: 1517, baseType: !2776, size: 64, offset: 8256)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1941, line: 18, flags: DIFlagFwdDecl)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !584, file: !44, line: 1518, baseType: !619, size: 64, offset: 8320)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !584, file: !44, line: 1525, baseType: !1696, size: 64, offset: 8384)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !584, file: !44, line: 1532, baseType: !2781, size: 64, offset: 8448)
!2781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2782, line: 52, size: 64, elements: !2783)
!2782 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2783 = !{!2784}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2781, file: !2782, line: 53, baseType: !2785, size: 64)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2782, line: 40, size: 256, elements: !2787)
!2787 = !{!2788, !2789, !2794}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2786, file: !2782, line: 42, baseType: !218)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2786, file: !2782, line: 44, baseType: !2790, size: 192)
!2790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2782, line: 28, size: 192, elements: !2791)
!2791 = !{!2792, !2793}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2790, file: !2782, line: 29, baseType: !204, size: 128)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2790, file: !2782, line: 31, baseType: !294, size: 64, offset: 128)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2786, file: !2782, line: 49, baseType: !294, size: 64, offset: 192)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !584, file: !44, line: 1533, baseType: !2781, size: 64, offset: 8512)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !584, file: !44, line: 1534, baseType: !349, size: 128, align: 64, offset: 8576)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !584, file: !44, line: 1535, baseType: !1940, size: 256, offset: 8704)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !584, file: !44, line: 1537, baseType: !1156, size: 192, offset: 8960)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !584, file: !44, line: 1542, baseType: !134, size: 32, offset: 9152)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !584, file: !44, line: 1545, baseType: !218, offset: 9184)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !584, file: !44, line: 1546, baseType: !204, size: 128, offset: 9216)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !584, file: !44, line: 1548, baseType: !218, offset: 9344)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !584, file: !44, line: 1549, baseType: !204, size: 128, offset: 9344)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !414, file: !44, line: 624, baseType: !718, size: 64, offset: 256)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !414, file: !44, line: 631, baseType: !308, size: 64, offset: 320)
!2806 = !DIDerivedType(tag: DW_TAG_member, scope: !414, file: !44, line: 639, baseType: !2807, size: 32, offset: 384)
!2807 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !414, file: !44, line: 639, size: 32, elements: !2808)
!2808 = !{!2809, !2811}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2807, file: !44, line: 640, baseType: !2810, size: 32)
!2810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2807, file: !44, line: 641, baseType: !7, size: 32)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !414, file: !44, line: 643, baseType: !497, size: 32, offset: 416)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !414, file: !44, line: 644, baseType: !515, size: 64, offset: 448)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !414, file: !44, line: 645, baseType: !519, size: 128, offset: 512)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !414, file: !44, line: 646, baseType: !519, size: 128, offset: 640)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !414, file: !44, line: 647, baseType: !519, size: 128, offset: 768)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !414, file: !44, line: 648, baseType: !218, offset: 896)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !414, file: !44, line: 649, baseType: !137, size: 16, offset: 896)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !414, file: !44, line: 650, baseType: !1335, size: 8, offset: 912)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !414, file: !44, line: 651, baseType: !1335, size: 8, offset: 920)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !414, file: !44, line: 652, baseType: !2573, size: 64, offset: 960)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !414, file: !44, line: 659, baseType: !308, size: 64, offset: 1024)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !414, file: !44, line: 660, baseType: !752, size: 256, offset: 1088)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !414, file: !44, line: 662, baseType: !308, size: 64, offset: 1344)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !414, file: !44, line: 663, baseType: !308, size: 64, offset: 1408)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !414, file: !44, line: 665, baseType: !623, size: 128, offset: 1472)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !414, file: !44, line: 666, baseType: !204, size: 128, offset: 1600)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !414, file: !44, line: 675, baseType: !204, size: 128, offset: 1728)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !414, file: !44, line: 676, baseType: !204, size: 128, offset: 1856)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !414, file: !44, line: 677, baseType: !204, size: 128, offset: 1984)
!2831 = !DIDerivedType(tag: DW_TAG_member, scope: !414, file: !44, line: 678, baseType: !2832, size: 128, offset: 2112)
!2832 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !414, file: !44, line: 678, size: 128, elements: !2833)
!2833 = !{!2834, !2835}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2832, file: !44, line: 679, baseType: !619, size: 64)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2832, file: !44, line: 680, baseType: !349, size: 128, align: 64)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !414, file: !44, line: 682, baseType: !758, size: 64, offset: 2240)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !414, file: !44, line: 683, baseType: !758, size: 64, offset: 2304)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !414, file: !44, line: 684, baseType: !732, size: 32, offset: 2368)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !414, file: !44, line: 685, baseType: !732, size: 32, offset: 2400)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !414, file: !44, line: 686, baseType: !732, size: 32, offset: 2432)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !414, file: !44, line: 688, baseType: !732, size: 32, offset: 2464)
!2842 = !DIDerivedType(tag: DW_TAG_member, scope: !414, file: !44, line: 690, baseType: !2843, size: 64, offset: 2496)
!2843 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !414, file: !44, line: 690, size: 64, elements: !2844)
!2844 = !{!2845, !3068}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2843, file: !44, line: 691, baseType: !2846, size: 64)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2848)
!2848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2849)
!2849 = !{!2850, !2851, !2855, !2860, !2864, !2865, !2866, !2870, !2883, !2884, !2892, !2896, !2897, !2901, !2902, !2906, !2911, !2912, !2916, !2920, !3028, !3032, !3033, !3037, !3038, !3042, !3046, !3051, !3055, !3059, !3063, !3067}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2848, file: !44, line: 1823, baseType: !177, size: 64)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2848, file: !44, line: 1824, baseType: !2852, size: 64, offset: 64)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!515, !336, !515, !134}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2848, file: !44, line: 1825, baseType: !2856, size: 64, offset: 128)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!290, !336, !259, !305, !2859}
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2848, file: !44, line: 1826, baseType: !2861, size: 64, offset: 192)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!290, !336, !175, !305, !2859}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2848, file: !44, line: 1827, baseType: !829, size: 64, offset: 256)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2848, file: !44, line: 1828, baseType: !829, size: 64, offset: 320)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2848, file: !44, line: 1829, baseType: !2867, size: 64, offset: 384)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!134, !832, !474}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2848, file: !44, line: 1830, baseType: !2871, size: 64, offset: 448)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{!134, !336, !2874}
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2876)
!2876 = !{!2877, !2882}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2875, file: !44, line: 1777, baseType: !2878, size: 64)
!2878 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2879)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!134, !2874, !175, !134, !515, !405, !7}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2875, file: !44, line: 1778, baseType: !515, size: 64, offset: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2848, file: !44, line: 1831, baseType: !2871, size: 64, offset: 512)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2848, file: !44, line: 1832, baseType: !2885, size: 64, offset: 576)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!2888, !336, !2890}
!2888 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2889, line: 52, baseType: !7)
!2889 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !603, line: 27, flags: DIFlagFwdDecl)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2848, file: !44, line: 1833, baseType: !2893, size: 64, offset: 640)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{!294, !336, !7, !308}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2848, file: !44, line: 1834, baseType: !2893, size: 64, offset: 704)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2848, file: !44, line: 1835, baseType: !2898, size: 64, offset: 768)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{!134, !336, !966}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2848, file: !44, line: 1836, baseType: !308, size: 64, offset: 832)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2848, file: !44, line: 1837, baseType: !2903, size: 64, offset: 896)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{!134, !413, !336}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2848, file: !44, line: 1838, baseType: !2907, size: 64, offset: 960)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!134, !336, !2910}
!2910 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !193)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2848, file: !44, line: 1839, baseType: !2903, size: 64, offset: 1024)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2848, file: !44, line: 1840, baseType: !2913, size: 64, offset: 1088)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!134, !336, !515, !515, !134}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2848, file: !44, line: 1841, baseType: !2917, size: 64, offset: 1152)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!134, !134, !336, !134}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2848, file: !44, line: 1842, baseType: !2921, size: 64, offset: 1216)
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = !DISubroutineType(types: !2923)
!2923 = !{!134, !336, !134, !2924}
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2926)
!2926 = !{!2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2958, !2959, !2960, !2973, !3004}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2925, file: !44, line: 1063, baseType: !2924, size: 64)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2925, file: !44, line: 1064, baseType: !204, size: 128, offset: 64)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2925, file: !44, line: 1065, baseType: !623, size: 128, offset: 192)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2925, file: !44, line: 1066, baseType: !204, size: 128, offset: 320)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2925, file: !44, line: 1069, baseType: !204, size: 128, offset: 448)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2925, file: !44, line: 1072, baseType: !2910, size: 64, offset: 576)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2925, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2925, file: !44, line: 1074, baseType: !411, size: 8, offset: 672)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2925, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2925, file: !44, line: 1076, baseType: !134, size: 32, offset: 736)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2925, file: !44, line: 1077, baseType: !1464, size: 128, offset: 768)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2925, file: !44, line: 1078, baseType: !336, size: 64, offset: 896)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2925, file: !44, line: 1079, baseType: !515, size: 64, offset: 960)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2925, file: !44, line: 1080, baseType: !515, size: 64, offset: 1024)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2925, file: !44, line: 1082, baseType: !2942, size: 64, offset: 1088)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2944)
!2944 = !{!2945, !2953, !2954, !2955, !2956, !2957}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2943, file: !44, line: 1315, baseType: !2946)
!2946 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2947, line: 20, baseType: !2948)
!2947 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2947, line: 11, elements: !2949)
!2949 = !{!2950}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2948, file: !2947, line: 12, baseType: !2951)
!2951 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !230, line: 33, baseType: !2952)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !230, line: 31, elements: !232)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2943, file: !44, line: 1316, baseType: !134, size: 32)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2943, file: !44, line: 1317, baseType: !134, size: 32, offset: 32)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2943, file: !44, line: 1318, baseType: !2942, size: 64, offset: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2943, file: !44, line: 1319, baseType: !336, size: 64, offset: 128)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2943, file: !44, line: 1320, baseType: !349, size: 128, align: 64, offset: 192)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2925, file: !44, line: 1084, baseType: !308, size: 64, offset: 1152)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2925, file: !44, line: 1085, baseType: !308, size: 64, offset: 1216)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2925, file: !44, line: 1087, baseType: !2961, size: 64, offset: 1280)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2963)
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !2964)
!2964 = !{!2965, !2969}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2963, file: !44, line: 1012, baseType: !2966, size: 64)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{null, !2924, !2924}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2963, file: !44, line: 1013, baseType: !2970, size: 64, offset: 64)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{null, !2924}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2925, file: !44, line: 1088, baseType: !2974, size: 64, offset: 1344)
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2976)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !2977)
!2977 = !{!2978, !2982, !2986, !2987, !2991, !2995, !2999, !3003}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2976, file: !44, line: 1017, baseType: !2979, size: 64)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{!2910, !2910}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2976, file: !44, line: 1018, baseType: !2983, size: 64, offset: 64)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{null, !2910}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2976, file: !44, line: 1019, baseType: !2970, size: 64, offset: 128)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2976, file: !44, line: 1020, baseType: !2988, size: 64, offset: 192)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!134, !2924, !134}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2976, file: !44, line: 1021, baseType: !2992, size: 64, offset: 256)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!474, !2924}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2976, file: !44, line: 1022, baseType: !2996, size: 64, offset: 320)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{!134, !2924, !134, !208}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2976, file: !44, line: 1023, baseType: !3000, size: 64, offset: 384)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{null, !2924, !806}
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2976, file: !44, line: 1024, baseType: !2992, size: 64, offset: 448)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2925, file: !44, line: 1097, baseType: !3005, size: 256, offset: 1408)
!3005 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2925, file: !44, line: 1089, size: 256, elements: !3006)
!3006 = !{!3007, !3016, !3022}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3005, file: !44, line: 1090, baseType: !3008, size: 256)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3009, line: 10, size: 256, elements: !3010)
!3009 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3010 = !{!3011, !3012, !3015}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3008, file: !3009, line: 11, baseType: !399, size: 32)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3008, file: !3009, line: 12, baseType: !3013, size: 64, offset: 64)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3009, line: 5, flags: DIFlagFwdDecl)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3008, file: !3009, line: 13, baseType: !204, size: 128, offset: 128)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3005, file: !44, line: 1091, baseType: !3017, size: 64)
!3017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3009, line: 17, size: 64, elements: !3018)
!3018 = !{!3019}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3017, file: !3009, line: 18, baseType: !3020, size: 64)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3009, line: 16, flags: DIFlagFwdDecl)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3005, file: !44, line: 1096, baseType: !3023, size: 192)
!3023 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3005, file: !44, line: 1092, size: 192, elements: !3024)
!3024 = !{!3025, !3026, !3027}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3023, file: !44, line: 1093, baseType: !204, size: 128)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3023, file: !44, line: 1094, baseType: !134, size: 32, offset: 128)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3023, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2848, file: !44, line: 1843, baseType: !3029, size: 64, offset: 1280)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{!290, !336, !705, !134, !305, !2859, !134}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2848, file: !44, line: 1844, baseType: !1086, size: 64, offset: 1344)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2848, file: !44, line: 1845, baseType: !3034, size: 64, offset: 1408)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!134, !134}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2848, file: !44, line: 1846, baseType: !2921, size: 64, offset: 1472)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2848, file: !44, line: 1847, baseType: !3039, size: 64, offset: 1536)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!290, !2081, !336, !2859, !305, !7}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2848, file: !44, line: 1848, baseType: !3043, size: 64, offset: 1600)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{!290, !336, !2859, !2081, !305, !7}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2848, file: !44, line: 1849, baseType: !3047, size: 64, offset: 1664)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{!134, !336, !294, !3050, !806}
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2848, file: !44, line: 1850, baseType: !3052, size: 64, offset: 1728)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!294, !336, !134, !515, !515}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2848, file: !44, line: 1852, baseType: !3056, size: 64, offset: 1792)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{null, !695, !336}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2848, file: !44, line: 1856, baseType: !3060, size: 64, offset: 1856)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!290, !336, !515, !336, !515, !305, !7}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2848, file: !44, line: 1858, baseType: !3064, size: 64, offset: 1920)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!515, !336, !515, !336, !515, !515, !7}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2848, file: !44, line: 1861, baseType: !2913, size: 64, offset: 1984)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2843, file: !44, line: 692, baseType: !648, size: 64)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !414, file: !44, line: 694, baseType: !3070, size: 64, offset: 2560)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3072)
!3072 = !{!3073, !3074, !3075, !3076}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3071, file: !44, line: 1101, baseType: !218)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3071, file: !44, line: 1102, baseType: !204, size: 128)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3071, file: !44, line: 1103, baseType: !204, size: 128, offset: 128)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3071, file: !44, line: 1104, baseType: !204, size: 128, offset: 256)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !414, file: !44, line: 695, baseType: !719, size: 1216, align: 64, offset: 2624)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !414, file: !44, line: 696, baseType: !204, size: 128, offset: 3840)
!3079 = !DIDerivedType(tag: DW_TAG_member, scope: !414, file: !44, line: 697, baseType: !3080, size: 64, offset: 3968)
!3080 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !414, file: !44, line: 697, size: 64, elements: !3081)
!3081 = !{!3082, !3083, !3084, !3087, !3088}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3080, file: !44, line: 698, baseType: !2081, size: 64)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3080, file: !44, line: 699, baseType: !2598, size: 64)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3080, file: !44, line: 700, baseType: !3085, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3080, file: !44, line: 701, baseType: !259, size: 64)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3080, file: !44, line: 702, baseType: !7, size: 32)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !414, file: !44, line: 705, baseType: !401, size: 32, offset: 4032)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !414, file: !44, line: 708, baseType: !401, size: 32, offset: 4064)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !414, file: !44, line: 709, baseType: !2680, size: 64, offset: 4096)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !414, file: !44, line: 720, baseType: !193, size: 64, offset: 4160)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !367, file: !364, line: 98, baseType: !3094, size: 256, offset: 448)
!3094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, size: 256, elements: !2213)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !367, file: !364, line: 101, baseType: !3096, size: 32, offset: 704)
!3096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3097, line: 25, size: 32, elements: !3098)
!3097 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3098 = !{!3099}
!3099 = !DIDerivedType(tag: DW_TAG_member, scope: !3096, file: !3097, line: 26, baseType: !3100, size: 32)
!3100 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3096, file: !3097, line: 26, size: 32, elements: !3101)
!3101 = !{!3102}
!3102 = !DIDerivedType(tag: DW_TAG_member, scope: !3100, file: !3097, line: 30, baseType: !3103, size: 32)
!3103 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3100, file: !3097, line: 30, size: 32, elements: !3104)
!3104 = !{!3105, !3106}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3103, file: !3097, line: 31, baseType: !218)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3103, file: !3097, line: 32, baseType: !134, size: 32)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !367, file: !364, line: 102, baseType: !2697, size: 64, offset: 768)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !367, file: !364, line: 103, baseType: !583, size: 64, offset: 832)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !367, file: !364, line: 104, baseType: !308, size: 64, offset: 896)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !367, file: !364, line: 105, baseType: !193, size: 64, offset: 960)
!3111 = !DIDerivedType(tag: DW_TAG_member, scope: !367, file: !364, line: 107, baseType: !3112, size: 128, offset: 1024)
!3112 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !367, file: !364, line: 107, size: 128, elements: !3113)
!3113 = !{!3114, !3115}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3112, file: !364, line: 108, baseType: !204, size: 128)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3112, file: !364, line: 109, baseType: !3116, size: 64)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !367, file: !364, line: 111, baseType: !204, size: 128, offset: 1152)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !367, file: !364, line: 112, baseType: !204, size: 128, offset: 1280)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !367, file: !364, line: 120, baseType: !3120, size: 128, offset: 1408)
!3120 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !367, file: !364, line: 116, size: 128, elements: !3121)
!3121 = !{!3122, !3123, !3124}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3120, file: !364, line: 117, baseType: !623, size: 128)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3120, file: !364, line: 118, baseType: !381, size: 128)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3120, file: !364, line: 119, baseType: !349, size: 128, align: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !337, file: !44, line: 922, baseType: !413, size: 64, offset: 256)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !337, file: !44, line: 923, baseType: !2846, size: 64, offset: 320)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !337, file: !44, line: 929, baseType: !218, offset: 384)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !337, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !337, file: !44, line: 931, baseType: !756, size: 64, offset: 448)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !337, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !337, file: !44, line: 933, baseType: !2693, size: 32, offset: 544)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !337, file: !44, line: 934, baseType: !1156, size: 192, offset: 576)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !337, file: !44, line: 935, baseType: !515, size: 64, offset: 768)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !337, file: !44, line: 936, baseType: !3135, size: 192, offset: 832)
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3136)
!3136 = !{!3137, !3138, !3139, !3140, !3141, !3142}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3135, file: !44, line: 886, baseType: !2946)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3135, file: !44, line: 887, baseType: !1454, size: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3135, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3135, file: !44, line: 889, baseType: !419, size: 32, offset: 96)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3135, file: !44, line: 889, baseType: !419, size: 32, offset: 128)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3135, file: !44, line: 890, baseType: !134, size: 32, offset: 160)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !337, file: !44, line: 937, baseType: !1530, size: 64, offset: 1024)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !337, file: !44, line: 938, baseType: !3145, size: 256, offset: 1088)
!3145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3146)
!3146 = !{!3147, !3148, !3149, !3150, !3151, !3152}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3145, file: !44, line: 897, baseType: !308, size: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3145, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3145, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3145, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3145, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3145, file: !44, line: 904, baseType: !515, size: 64, offset: 192)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !337, file: !44, line: 940, baseType: !405, size: 64, offset: 1344)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !337, file: !44, line: 945, baseType: !193, size: 64, offset: 1408)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !337, file: !44, line: 949, baseType: !204, size: 128, offset: 1472)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !337, file: !44, line: 950, baseType: !204, size: 128, offset: 1600)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !337, file: !44, line: 952, baseType: !718, size: 64, offset: 1728)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !337, file: !44, line: 953, baseType: !894, size: 32, offset: 1792)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !337, file: !44, line: 954, baseType: !894, size: 32, offset: 1824)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !327, file: !284, line: 174, baseType: !333, size: 64, offset: 320)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !327, file: !284, line: 176, baseType: !3162, size: 64, offset: 384)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{!134, !336, !211, !326, !966}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !315, file: !284, line: 90, baseType: !310, size: 64, offset: 192)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !315, file: !284, line: 91, baseType: !3167, size: 64, offset: 256)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !274, file: !200, line: 143, baseType: !3169, size: 64, offset: 256)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{!3172, !211}
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3174)
!3174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3175)
!3175 = !{!3176, !3177, !3181, !3185, !3191, !3195}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3174, file: !61, line: 40, baseType: !60, size: 32)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3174, file: !61, line: 41, baseType: !3178, size: 64, offset: 64)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{!474}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3174, file: !61, line: 42, baseType: !3182, size: 64, offset: 128)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!193}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3174, file: !61, line: 43, baseType: !3186, size: 64, offset: 192)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!2110, !3189}
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3174, file: !61, line: 44, baseType: !3192, size: 64, offset: 256)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!2110}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3174, file: !61, line: 45, baseType: !452, size: 64, offset: 320)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !274, file: !200, line: 144, baseType: !3197, size: 64, offset: 320)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{!2110, !211}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !274, file: !200, line: 145, baseType: !3201, size: 64, offset: 384)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{null, !211, !3204, !3205}
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !199, file: !200, line: 70, baseType: !3207, size: 64, offset: 384)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !603, line: 123, size: 1024, elements: !3209)
!3209 = !{!3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3338, !3339, !3340, !3341, !3342}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3208, file: !603, line: 124, baseType: !732, size: 32)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3208, file: !603, line: 125, baseType: !732, size: 32, offset: 32)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3208, file: !603, line: 135, baseType: !3207, size: 64, offset: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3208, file: !603, line: 136, baseType: !175, size: 64, offset: 128)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3208, file: !603, line: 138, baseType: !745, size: 192, align: 64, offset: 192)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3208, file: !603, line: 140, baseType: !2110, size: 64, offset: 384)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3208, file: !603, line: 141, baseType: !7, size: 32, offset: 448)
!3217 = !DIDerivedType(tag: DW_TAG_member, scope: !3208, file: !603, line: 142, baseType: !3218, size: 256, offset: 512)
!3218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3208, file: !603, line: 142, size: 256, elements: !3219)
!3219 = !{!3220, !3266, !3270}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3218, file: !603, line: 143, baseType: !3221, size: 192)
!3221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !603, line: 91, size: 192, elements: !3222)
!3222 = !{!3223, !3224, !3225}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3221, file: !603, line: 92, baseType: !308, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3221, file: !603, line: 94, baseType: !741, size: 64, offset: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3221, file: !603, line: 100, baseType: !3226, size: 64, offset: 128)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !603, line: 180, size: 704, elements: !3228)
!3228 = !{!3229, !3230, !3231, !3238, !3239, !3240, !3264, !3265}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3227, file: !603, line: 182, baseType: !3207, size: 64)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3227, file: !603, line: 183, baseType: !7, size: 32, offset: 64)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3227, file: !603, line: 186, baseType: !3232, size: 192, offset: 128)
!3232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3233, line: 19, size: 192, elements: !3234)
!3233 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3234 = !{!3235, !3236, !3237}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3232, file: !3233, line: 20, baseType: !723, size: 128)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3232, file: !3233, line: 21, baseType: !7, size: 32, offset: 128)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3232, file: !3233, line: 22, baseType: !7, size: 32, offset: 160)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3227, file: !603, line: 187, baseType: !399, size: 32, offset: 320)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3227, file: !603, line: 188, baseType: !399, size: 32, offset: 352)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3227, file: !603, line: 189, baseType: !3241, size: 64, offset: 384)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !603, line: 168, size: 320, elements: !3243)
!3243 = !{!3244, !3248, !3252, !3256, !3260}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3242, file: !603, line: 169, baseType: !3245, size: 64)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!134, !695, !3226}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3242, file: !603, line: 171, baseType: !3249, size: 64, offset: 64)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!134, !3207, !175, !300}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3242, file: !603, line: 173, baseType: !3253, size: 64, offset: 128)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!134, !3207}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3242, file: !603, line: 174, baseType: !3257, size: 64, offset: 192)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!134, !3207, !3207, !175}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3242, file: !603, line: 176, baseType: !3261, size: 64, offset: 256)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!134, !695, !3207, !3226}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3227, file: !603, line: 192, baseType: !204, size: 128, offset: 448)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3227, file: !603, line: 194, baseType: !1464, size: 128, offset: 576)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3218, file: !603, line: 144, baseType: !3267, size: 64)
!3267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !603, line: 103, size: 64, elements: !3268)
!3268 = !{!3269}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3267, file: !603, line: 104, baseType: !3207, size: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3218, file: !603, line: 145, baseType: !3271, size: 256)
!3271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !603, line: 107, size: 256, elements: !3272)
!3272 = !{!3273, !3333, !3336, !3337}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3271, file: !603, line: 108, baseType: !3274, size: 64)
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3276)
!3276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !603, line: 217, size: 768, elements: !3277)
!3277 = !{!3278, !3298, !3302, !3306, !3310, !3314, !3318, !3322, !3323, !3324, !3325, !3329}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3276, file: !603, line: 222, baseType: !3279, size: 64)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DISubroutineType(types: !3281)
!3281 = !{!134, !3282}
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !603, line: 197, size: 1088, elements: !3284)
!3284 = !{!3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3283, file: !603, line: 199, baseType: !3207, size: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3283, file: !603, line: 200, baseType: !336, size: 64, offset: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3283, file: !603, line: 201, baseType: !695, size: 64, offset: 128)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3283, file: !603, line: 202, baseType: !193, size: 64, offset: 192)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3283, file: !603, line: 205, baseType: !1156, size: 192, offset: 256)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3283, file: !603, line: 206, baseType: !1156, size: 192, offset: 448)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3283, file: !603, line: 207, baseType: !134, size: 32, offset: 640)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3283, file: !603, line: 208, baseType: !204, size: 128, offset: 704)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3283, file: !603, line: 209, baseType: !259, size: 64, offset: 832)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3283, file: !603, line: 211, baseType: !305, size: 64, offset: 896)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3283, file: !603, line: 212, baseType: !474, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3283, file: !603, line: 213, baseType: !474, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3283, file: !603, line: 214, baseType: !994, size: 64, offset: 1024)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3276, file: !603, line: 223, baseType: !3299, size: 64, offset: 64)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = !DISubroutineType(types: !3301)
!3301 = !{null, !3282}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3276, file: !603, line: 236, baseType: !3303, size: 64, offset: 128)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{!134, !695, !193}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3276, file: !603, line: 238, baseType: !3307, size: 64, offset: 192)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{!193, !695, !2859}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3276, file: !603, line: 239, baseType: !3311, size: 64, offset: 256)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!193, !695, !193, !2859}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3276, file: !603, line: 240, baseType: !3315, size: 64, offset: 320)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{null, !695, !193}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3276, file: !603, line: 242, baseType: !3319, size: 64, offset: 384)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!290, !3282, !259, !305, !515}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3276, file: !603, line: 252, baseType: !305, size: 64, offset: 448)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3276, file: !603, line: 259, baseType: !474, size: 8, offset: 512)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3276, file: !603, line: 260, baseType: !3319, size: 64, offset: 576)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3276, file: !603, line: 263, baseType: !3326, size: 64, offset: 640)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{!2888, !3282, !2890}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3276, file: !603, line: 266, baseType: !3330, size: 64, offset: 704)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!134, !3282, !966}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3271, file: !603, line: 109, baseType: !3334, size: 64, offset: 64)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !603, line: 31, flags: DIFlagFwdDecl)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3271, file: !603, line: 110, baseType: !515, size: 64, offset: 128)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3271, file: !603, line: 111, baseType: !3207, size: 64, offset: 192)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3208, file: !603, line: 148, baseType: !193, size: 64, offset: 768)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3208, file: !603, line: 154, baseType: !405, size: 64, offset: 832)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3208, file: !603, line: 156, baseType: !137, size: 16, offset: 896)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3208, file: !603, line: 157, baseType: !300, size: 16, offset: 912)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3208, file: !603, line: 158, baseType: !3343, size: 64, offset: 960)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !603, line: 32, flags: DIFlagFwdDecl)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !199, file: !200, line: 71, baseType: !3346, size: 32, offset: 448)
!3346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3347, line: 19, size: 32, elements: !3348)
!3347 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3348 = !{!3349}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3346, file: !3347, line: 20, baseType: !1213, size: 32)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !199, file: !200, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !199, file: !200, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !199, file: !200, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !199, file: !200, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !199, file: !200, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !196, file: !73, line: 463, baseType: !195, size: 64, offset: 512)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !196, file: !73, line: 465, baseType: !3357, size: 64, offset: 576)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !196, file: !73, line: 467, baseType: !175, size: 64, offset: 640)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !196, file: !73, line: 468, baseType: !3361, size: 64, offset: 704)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3363)
!3363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3364)
!3364 = !{!3365, !3366, !3367, !3371, !3376, !3380}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3363, file: !73, line: 88, baseType: !175, size: 64)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3363, file: !73, line: 89, baseType: !312, size: 64, offset: 64)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3363, file: !73, line: 90, baseType: !3368, size: 64, offset: 128)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = !DISubroutineType(types: !3370)
!3370 = !{!134, !195, !254}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3363, file: !73, line: 91, baseType: !3372, size: 64, offset: 192)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!259, !195, !3375, !3204, !3205}
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3363, file: !73, line: 93, baseType: !3377, size: 64, offset: 256)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = !DISubroutineType(types: !3379)
!3379 = !{null, !195}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3363, file: !73, line: 95, baseType: !3381, size: 64, offset: 320)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3383)
!3383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3384)
!3384 = !{!3385, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3383, file: !80, line: 279, baseType: !3386, size: 64)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!134, !195}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3383, file: !80, line: 280, baseType: !3377, size: 64, offset: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3383, file: !80, line: 281, baseType: !3386, size: 64, offset: 128)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3383, file: !80, line: 282, baseType: !3386, size: 64, offset: 192)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3383, file: !80, line: 283, baseType: !3386, size: 64, offset: 256)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3383, file: !80, line: 284, baseType: !3386, size: 64, offset: 320)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3383, file: !80, line: 285, baseType: !3386, size: 64, offset: 384)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3383, file: !80, line: 286, baseType: !3386, size: 64, offset: 448)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3383, file: !80, line: 287, baseType: !3386, size: 64, offset: 512)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3383, file: !80, line: 288, baseType: !3386, size: 64, offset: 576)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3383, file: !80, line: 289, baseType: !3386, size: 64, offset: 640)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3383, file: !80, line: 290, baseType: !3386, size: 64, offset: 704)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3383, file: !80, line: 291, baseType: !3386, size: 64, offset: 768)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3383, file: !80, line: 292, baseType: !3386, size: 64, offset: 832)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3383, file: !80, line: 293, baseType: !3386, size: 64, offset: 896)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3383, file: !80, line: 294, baseType: !3386, size: 64, offset: 960)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3383, file: !80, line: 295, baseType: !3386, size: 64, offset: 1024)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3383, file: !80, line: 296, baseType: !3386, size: 64, offset: 1088)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3383, file: !80, line: 297, baseType: !3386, size: 64, offset: 1152)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3383, file: !80, line: 298, baseType: !3386, size: 64, offset: 1216)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3383, file: !80, line: 299, baseType: !3386, size: 64, offset: 1280)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3383, file: !80, line: 300, baseType: !3386, size: 64, offset: 1344)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3383, file: !80, line: 301, baseType: !3386, size: 64, offset: 1408)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !196, file: !73, line: 470, baseType: !3412, size: 64, offset: 768)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3414, line: 82, size: 1408, elements: !3415)
!3414 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3415 = !{!3416, !3417, !3418, !3419, !3420, !3421, !3422, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3497, !3500, !3501}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3413, file: !3414, line: 83, baseType: !175, size: 64)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3413, file: !3414, line: 84, baseType: !175, size: 64, offset: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3413, file: !3414, line: 85, baseType: !195, size: 64, offset: 128)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3413, file: !3414, line: 86, baseType: !312, size: 64, offset: 192)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3413, file: !3414, line: 87, baseType: !312, size: 64, offset: 256)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3413, file: !3414, line: 88, baseType: !312, size: 64, offset: 320)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3413, file: !3414, line: 90, baseType: !3423, size: 64, offset: 384)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{!134, !195, !3426}
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3428)
!3428 = !{!3429, !3430, !3431, !3432, !3433, !3434, !3435, !3448, !3461, !3462, !3463, !3464, !3465, !3473, !3474, !3475, !3476, !3477, !3478}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3427, file: !67, line: 96, baseType: !175, size: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3427, file: !67, line: 97, baseType: !3412, size: 64, offset: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3427, file: !67, line: 99, baseType: !177, size: 64, offset: 128)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3427, file: !67, line: 100, baseType: !175, size: 64, offset: 192)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3427, file: !67, line: 102, baseType: !474, size: 8, offset: 256)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3427, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3427, file: !67, line: 105, baseType: !3436, size: 64, offset: 320)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3438)
!3438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3439, line: 262, size: 1600, elements: !3440)
!3439 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3440 = !{!3441, !3442, !3443, !3447}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3438, file: !3439, line: 263, baseType: !2683, size: 256)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3438, file: !3439, line: 264, baseType: !2683, size: 256, offset: 256)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3438, file: !3439, line: 265, baseType: !3444, size: 1024, offset: 512)
!3444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 1024, elements: !3445)
!3445 = !{!3446}
!3446 = !DISubrange(count: 128)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3438, file: !3439, line: 266, baseType: !2110, size: 64, offset: 1536)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3427, file: !67, line: 106, baseType: !3449, size: 64, offset: 384)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3451)
!3451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3439, line: 210, size: 256, elements: !3452)
!3452 = !{!3453, !3457, !3459, !3460}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3451, file: !3439, line: 211, baseType: !3454, size: 72)
!3454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1336, size: 72, elements: !3455)
!3455 = !{!3456}
!3456 = !DISubrange(count: 9)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3451, file: !3439, line: 212, baseType: !3458, size: 64, offset: 128)
!3458 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3439, line: 14, baseType: !308)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3451, file: !3439, line: 213, baseType: !401, size: 32, offset: 192)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3451, file: !3439, line: 214, baseType: !401, size: 32, offset: 224)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3427, file: !67, line: 108, baseType: !3386, size: 64, offset: 448)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3427, file: !67, line: 109, baseType: !3377, size: 64, offset: 512)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3427, file: !67, line: 110, baseType: !3386, size: 64, offset: 576)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3427, file: !67, line: 111, baseType: !3377, size: 64, offset: 640)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3427, file: !67, line: 112, baseType: !3466, size: 64, offset: 704)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{!134, !195, !3469}
!3469 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3470)
!3470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3471)
!3471 = !{!3472}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3470, file: !80, line: 51, baseType: !134, size: 32)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3427, file: !67, line: 113, baseType: !3386, size: 64, offset: 768)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3427, file: !67, line: 114, baseType: !312, size: 64, offset: 832)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3427, file: !67, line: 115, baseType: !312, size: 64, offset: 896)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3427, file: !67, line: 117, baseType: !3381, size: 64, offset: 960)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3427, file: !67, line: 118, baseType: !3377, size: 64, offset: 1024)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3427, file: !67, line: 120, baseType: !3479, size: 64, offset: 1088)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3413, file: !3414, line: 91, baseType: !3368, size: 64, offset: 448)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3413, file: !3414, line: 92, baseType: !3386, size: 64, offset: 512)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3413, file: !3414, line: 93, baseType: !3377, size: 64, offset: 576)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3413, file: !3414, line: 94, baseType: !3386, size: 64, offset: 640)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3413, file: !3414, line: 95, baseType: !3377, size: 64, offset: 704)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3413, file: !3414, line: 97, baseType: !3386, size: 64, offset: 768)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3413, file: !3414, line: 98, baseType: !3386, size: 64, offset: 832)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3413, file: !3414, line: 100, baseType: !3466, size: 64, offset: 896)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3413, file: !3414, line: 101, baseType: !3386, size: 64, offset: 960)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3413, file: !3414, line: 103, baseType: !3386, size: 64, offset: 1024)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3413, file: !3414, line: 105, baseType: !3386, size: 64, offset: 1088)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3413, file: !3414, line: 107, baseType: !3381, size: 64, offset: 1152)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3413, file: !3414, line: 109, baseType: !3494, size: 64, offset: 1216)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3496)
!3496 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3414, line: 109, flags: DIFlagFwdDecl)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3413, file: !3414, line: 111, baseType: !3498, size: 64, offset: 1280)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3414, line: 111, flags: DIFlagFwdDecl)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3413, file: !3414, line: 112, baseType: !629, offset: 1344)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3413, file: !3414, line: 114, baseType: !474, size: 8, offset: 1344)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !196, file: !73, line: 471, baseType: !3426, size: 64, offset: 832)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !196, file: !73, line: 473, baseType: !193, size: 64, offset: 896)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !196, file: !73, line: 475, baseType: !193, size: 64, offset: 960)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !196, file: !73, line: 480, baseType: !1156, size: 192, offset: 1024)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !196, file: !73, line: 484, baseType: !3507, size: 576, offset: 1216)
!3507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3508)
!3508 = !{!3509, !3510, !3511, !3512, !3513, !3514}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3507, file: !73, line: 362, baseType: !204, size: 128)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3507, file: !73, line: 363, baseType: !204, size: 128, offset: 128)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3507, file: !73, line: 364, baseType: !204, size: 128, offset: 256)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3507, file: !73, line: 365, baseType: !204, size: 128, offset: 384)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3507, file: !73, line: 366, baseType: !474, size: 8, offset: 512)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3507, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !196, file: !73, line: 485, baseType: !3516, size: 2304, offset: 1792)
!3516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3517)
!3517 = !{!3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3613, !3617}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3516, file: !80, line: 566, baseType: !3469, size: 32)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3516, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3516, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3516, file: !80, line: 569, baseType: !474, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3516, file: !80, line: 570, baseType: !474, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3516, file: !80, line: 571, baseType: !474, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3516, file: !80, line: 572, baseType: !474, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3516, file: !80, line: 573, baseType: !474, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3516, file: !80, line: 574, baseType: !474, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3516, file: !80, line: 575, baseType: !474, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3516, file: !80, line: 576, baseType: !474, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3516, file: !80, line: 577, baseType: !399, size: 32, offset: 64)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3516, file: !80, line: 578, baseType: !218, offset: 96)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3516, file: !80, line: 580, baseType: !204, size: 128, offset: 128)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3516, file: !80, line: 581, baseType: !1485, size: 192, offset: 256)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3516, file: !80, line: 582, baseType: !3534, size: 64, offset: 448)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3536, line: 43, size: 1472, elements: !3537)
!3536 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3537 = !{!3538, !3539, !3540, !3541, !3542, !3545, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3535, file: !3536, line: 44, baseType: !175, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3535, file: !3536, line: 45, baseType: !134, size: 32, offset: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3535, file: !3536, line: 46, baseType: !204, size: 128, offset: 128)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3535, file: !3536, line: 47, baseType: !218, offset: 256)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3535, file: !3536, line: 48, baseType: !3543, size: 64, offset: 256)
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3535, file: !3536, line: 49, baseType: !3546, size: 320, offset: 320)
!3546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3547, line: 11, size: 320, elements: !3548)
!3547 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3548 = !{!3549, !3550, !3551, !3556}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3546, file: !3547, line: 16, baseType: !623, size: 128)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3546, file: !3547, line: 17, baseType: !308, size: 64, offset: 128)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3546, file: !3547, line: 18, baseType: !3552, size: 64, offset: 192)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{null, !3555}
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3546, file: !3547, line: 19, baseType: !399, size: 32, offset: 256)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3535, file: !3536, line: 50, baseType: !308, size: 64, offset: 640)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3535, file: !3536, line: 51, baseType: !1283, size: 64, offset: 704)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3535, file: !3536, line: 52, baseType: !1283, size: 64, offset: 768)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3535, file: !3536, line: 53, baseType: !1283, size: 64, offset: 832)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3535, file: !3536, line: 54, baseType: !1283, size: 64, offset: 896)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3535, file: !3536, line: 55, baseType: !1283, size: 64, offset: 960)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3535, file: !3536, line: 56, baseType: !308, size: 64, offset: 1024)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3535, file: !3536, line: 57, baseType: !308, size: 64, offset: 1088)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3535, file: !3536, line: 58, baseType: !308, size: 64, offset: 1152)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3535, file: !3536, line: 59, baseType: !308, size: 64, offset: 1216)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3535, file: !3536, line: 60, baseType: !308, size: 64, offset: 1280)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3535, file: !3536, line: 61, baseType: !195, size: 64, offset: 1344)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3535, file: !3536, line: 62, baseType: !474, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3535, file: !3536, line: 63, baseType: !474, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3516, file: !80, line: 583, baseType: !474, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3516, file: !80, line: 584, baseType: !474, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3516, file: !80, line: 585, baseType: !474, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3516, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3516, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3516, file: !80, line: 592, baseType: !1275, size: 512, offset: 576)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3516, file: !80, line: 593, baseType: !405, size: 64, offset: 1088)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3516, file: !80, line: 594, baseType: !1940, size: 256, offset: 1152)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3516, file: !80, line: 595, baseType: !1464, size: 128, offset: 1408)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3516, file: !80, line: 596, baseType: !3543, size: 64, offset: 1536)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3516, file: !80, line: 597, baseType: !732, size: 32, offset: 1600)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3516, file: !80, line: 598, baseType: !732, size: 32, offset: 1632)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3516, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3516, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3516, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3516, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3516, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3516, file: !80, line: 604, baseType: !474, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3516, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3516, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3516, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3516, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3516, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3516, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3516, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3516, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3516, file: !80, line: 613, baseType: !134, size: 32, offset: 1792)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3516, file: !80, line: 614, baseType: !134, size: 32, offset: 1824)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3516, file: !80, line: 615, baseType: !405, size: 64, offset: 1856)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3516, file: !80, line: 616, baseType: !405, size: 64, offset: 1920)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3516, file: !80, line: 617, baseType: !405, size: 64, offset: 1984)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3516, file: !80, line: 618, baseType: !405, size: 64, offset: 2048)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3516, file: !80, line: 620, baseType: !3604, size: 64, offset: 2112)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3606)
!3606 = !{!3607, !3608, !3609, !3610}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3605, file: !80, line: 537, baseType: !218)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3605, file: !80, line: 538, baseType: !7, size: 32)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3605, file: !80, line: 540, baseType: !204, size: 128, offset: 64)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3605, file: !80, line: 543, baseType: !3611, size: 64, offset: 192)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3516, file: !80, line: 621, baseType: !3614, size: 64, offset: 2176)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DISubroutineType(types: !3616)
!3616 = !{null, !195, !1427}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3516, file: !80, line: 622, baseType: !3618, size: 64, offset: 2240)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !196, file: !73, line: 486, baseType: !3621, size: 64, offset: 4096)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3623)
!3623 = !{!3624, !3625, !3626, !3630, !3631, !3632}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3622, file: !80, line: 643, baseType: !3383, size: 1472)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3622, file: !80, line: 644, baseType: !3386, size: 64, offset: 1472)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3622, file: !80, line: 645, baseType: !3627, size: 64, offset: 1536)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DISubroutineType(types: !3629)
!3629 = !{null, !195, !474}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3622, file: !80, line: 646, baseType: !3386, size: 64, offset: 1600)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3622, file: !80, line: 647, baseType: !3377, size: 64, offset: 1664)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3622, file: !80, line: 648, baseType: !3377, size: 64, offset: 1728)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !196, file: !73, line: 493, baseType: !3634, size: 64, offset: 4160)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !73, line: 493, flags: DIFlagFwdDecl)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !196, file: !73, line: 499, baseType: !204, size: 128, offset: 4224)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !196, file: !73, line: 502, baseType: !3638, size: 64, offset: 4352)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3640)
!3640 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !196, file: !73, line: 504, baseType: !3642, size: 64, offset: 4416)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !196, file: !73, line: 505, baseType: !405, size: 64, offset: 4480)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !196, file: !73, line: 510, baseType: !405, size: 64, offset: 4544)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !196, file: !73, line: 511, baseType: !3646, size: 64, offset: 4608)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3648)
!3648 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !196, file: !73, line: 513, baseType: !3650, size: 64, offset: 4672)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3652)
!3652 = !{!3653, !3654}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3651, file: !73, line: 293, baseType: !7, size: 32)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3651, file: !73, line: 294, baseType: !308, size: 64, offset: 64)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !196, file: !73, line: 515, baseType: !204, size: 128, offset: 4736)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !196, file: !73, line: 526, baseType: !3657, offset: 4864)
!3657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3658, line: 5, elements: !232)
!3658 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !196, file: !73, line: 528, baseType: !3660, size: 64, offset: 4864)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3662, line: 14, flags: DIFlagFwdDecl)
!3662 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !196, file: !73, line: 529, baseType: !3664, size: 64, offset: 4928)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3666, line: 17, size: 192, elements: !3667)
!3666 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3667 = !{!3668, !3669, !3752}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3665, file: !3666, line: 18, baseType: !3664, size: 64)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3665, file: !3666, line: 19, baseType: !3670, size: 64, offset: 64)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3672)
!3672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3666, line: 110, size: 1152, elements: !3673)
!3673 = !{!3674, !3678, !3682, !3688, !3694, !3698, !3702, !3707, !3711, !3712, !3716, !3720, !3724, !3735, !3736, !3737, !3738, !3748}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3672, file: !3666, line: 111, baseType: !3675, size: 64)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{!3664, !3664}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3672, file: !3666, line: 112, baseType: !3679, size: 64, offset: 64)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{null, !3664}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3672, file: !3666, line: 113, baseType: !3683, size: 64, offset: 128)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{!474, !3686}
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3665)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3672, file: !3666, line: 114, baseType: !3689, size: 64, offset: 192)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{!2110, !3686, !3692}
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3672, file: !3666, line: 116, baseType: !3695, size: 64, offset: 256)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{!474, !3686, !175}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3672, file: !3666, line: 118, baseType: !3699, size: 64, offset: 320)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = !DISubroutineType(types: !3701)
!3701 = !{!134, !3686, !175, !7, !193, !305}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3672, file: !3666, line: 123, baseType: !3703, size: 64, offset: 384)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!134, !3686, !175, !3706, !305}
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3672, file: !3666, line: 126, baseType: !3708, size: 64, offset: 448)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!175, !3686}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3672, file: !3666, line: 127, baseType: !3708, size: 64, offset: 512)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3672, file: !3666, line: 128, baseType: !3713, size: 64, offset: 576)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{!3664, !3686}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3672, file: !3666, line: 130, baseType: !3717, size: 64, offset: 640)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{!3664, !3686, !3664}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3672, file: !3666, line: 133, baseType: !3721, size: 64, offset: 704)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{!3664, !3686, !175}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3672, file: !3666, line: 135, baseType: !3725, size: 64, offset: 768)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{!134, !3686, !175, !175, !7, !7, !3728}
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3666, line: 43, size: 640, elements: !3730)
!3730 = !{!3731, !3732, !3733}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3729, file: !3666, line: 44, baseType: !3664, size: 64)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3729, file: !3666, line: 45, baseType: !7, size: 32, offset: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3729, file: !3666, line: 46, baseType: !3734, size: 512, offset: 128)
!3734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 512, elements: !1313)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3672, file: !3666, line: 140, baseType: !3717, size: 64, offset: 832)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3672, file: !3666, line: 143, baseType: !3713, size: 64, offset: 896)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3672, file: !3666, line: 145, baseType: !3675, size: 64, offset: 960)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3672, file: !3666, line: 146, baseType: !3739, size: 64, offset: 1024)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!134, !3686, !3742}
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3666, line: 29, size: 128, elements: !3744)
!3744 = !{!3745, !3746, !3747}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3743, file: !3666, line: 30, baseType: !7, size: 32)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3743, file: !3666, line: 31, baseType: !7, size: 32, offset: 32)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3743, file: !3666, line: 32, baseType: !3686, size: 64, offset: 64)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3672, file: !3666, line: 148, baseType: !3749, size: 64, offset: 1088)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!134, !3686, !195}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3665, file: !3666, line: 20, baseType: !195, size: 64, offset: 128)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !196, file: !73, line: 534, baseType: !497, size: 32, offset: 4992)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !196, file: !73, line: 535, baseType: !399, size: 32, offset: 5024)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !196, file: !73, line: 537, baseType: !218, offset: 5056)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !196, file: !73, line: 538, baseType: !204, size: 128, offset: 5056)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !196, file: !73, line: 540, baseType: !3758, size: 64, offset: 5184)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3760, line: 54, size: 960, elements: !3761)
!3760 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3761 = !{!3762, !3763, !3764, !3765, !3766, !3767, !3768, !3772, !3776, !3777, !3778, !3779, !3783, !3787, !3788}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3759, file: !3760, line: 55, baseType: !175, size: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3759, file: !3760, line: 56, baseType: !177, size: 64, offset: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3759, file: !3760, line: 58, baseType: !312, size: 64, offset: 128)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3759, file: !3760, line: 59, baseType: !312, size: 64, offset: 192)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3759, file: !3760, line: 60, baseType: !211, size: 64, offset: 256)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3759, file: !3760, line: 62, baseType: !3368, size: 64, offset: 320)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3759, file: !3760, line: 63, baseType: !3769, size: 64, offset: 384)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!259, !195, !3375}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3759, file: !3760, line: 65, baseType: !3773, size: 64, offset: 448)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DISubroutineType(types: !3775)
!3775 = !{null, !3758}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3759, file: !3760, line: 66, baseType: !3377, size: 64, offset: 512)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3759, file: !3760, line: 68, baseType: !3386, size: 64, offset: 576)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3759, file: !3760, line: 70, baseType: !3172, size: 64, offset: 640)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3759, file: !3760, line: 71, baseType: !3780, size: 64, offset: 704)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{!2110, !195}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3759, file: !3760, line: 73, baseType: !3784, size: 64, offset: 768)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{null, !195, !3204, !3205}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3759, file: !3760, line: 75, baseType: !3381, size: 64, offset: 832)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3759, file: !3760, line: 77, baseType: !3498, size: 64, offset: 896)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !196, file: !73, line: 541, baseType: !312, size: 64, offset: 5248)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !196, file: !73, line: 543, baseType: !3377, size: 64, offset: 5312)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !196, file: !73, line: 544, baseType: !3792, size: 64, offset: 5376)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !196, file: !73, line: 545, baseType: !3795, size: 64, offset: 5440)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !196, file: !73, line: 547, baseType: !474, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !196, file: !73, line: 548, baseType: !474, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !196, file: !73, line: 549, baseType: !474, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !196, file: !73, line: 550, baseType: !474, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !185, file: !123, line: 548, baseType: !134, size: 32, offset: 320)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "detach_count", scope: !185, file: !123, line: 549, baseType: !7, size: 32, offset: 352)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "hw_dev", scope: !185, file: !123, line: 550, baseType: !195, size: 64, offset: 384)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !185, file: !123, line: 552, baseType: !175, size: 64, offset: 448)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "board_ptr", scope: !185, file: !123, line: 553, baseType: !2110, size: 64, offset: 512)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "attached", scope: !185, file: !123, line: 554, baseType: !7, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "ioenabled", scope: !185, file: !123, line: 555, baseType: !7, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "spinlock", scope: !185, file: !123, line: 556, baseType: !218, offset: 584)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !185, file: !123, line: 557, baseType: !1156, size: 192, offset: 640)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "attach_lock", scope: !185, file: !123, line: 558, baseType: !752, size: 256, offset: 832)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !185, file: !123, line: 559, baseType: !3346, size: 32, offset: 1088)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "n_subdevices", scope: !185, file: !123, line: 561, baseType: !134, size: 32, offset: 1120)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "subdevices", scope: !185, file: !123, line: 562, baseType: !3814, size: 64, offset: 1152)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_subdevice", file: !123, line: 153, size: 1792, elements: !3816)
!3816 = !{!3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3892, !3905, !3908, !3909, !3923, !3924, !3925, !3926, !3930, !3935, !3936, !3937, !3938, !3942, !3943, !3944, !3945, !3946}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3815, file: !123, line: 154, baseType: !184, size: 64)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3815, file: !123, line: 155, baseType: !134, size: 32, offset: 64)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3815, file: !123, line: 156, baseType: !134, size: 32, offset: 96)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "n_chan", scope: !3815, file: !123, line: 157, baseType: !134, size: 32, offset: 128)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "subdev_flags", scope: !3815, file: !123, line: 158, baseType: !134, size: 32, offset: 160)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "len_chanlist", scope: !3815, file: !123, line: 159, baseType: !134, size: 32, offset: 192)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3815, file: !123, line: 161, baseType: !193, size: 64, offset: 256)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "async", scope: !3815, file: !123, line: 163, baseType: !3825, size: 64, offset: 320)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_async", file: !123, line: 347, size: 1536, elements: !3827)
!3827 = !{!3828, !3829, !3830, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3878, !3879, !3880}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3826, file: !123, line: 348, baseType: !193, size: 64)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_bufsz", scope: !3826, file: !123, line: 349, baseType: !7, size: 32, offset: 64)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "buf_map", scope: !3826, file: !123, line: 350, baseType: !3831, size: 64, offset: 128)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_map", file: !123, line: 249, size: 256, elements: !3833)
!3833 = !{!3834, !3835, !3841, !3842, !3843}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "dma_hw_dev", scope: !3832, file: !123, line: 250, baseType: !195, size: 64)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "page_list", scope: !3832, file: !123, line: 251, baseType: !3836, size: 64, offset: 64)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_page", file: !123, line: 220, size: 128, elements: !3838)
!3838 = !{!3839, !3840}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "virt_addr", scope: !3837, file: !123, line: 221, baseType: !193, size: 64)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3837, file: !123, line: 222, baseType: !905, size: 64, offset: 64)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "n_pages", scope: !3832, file: !123, line: 252, baseType: !7, size: 32, offset: 128)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "dma_dir", scope: !3832, file: !123, line: 253, baseType: !93, size: 32, offset: 160)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3832, file: !123, line: 254, baseType: !3346, size: 32, offset: 192)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "max_bufsize", scope: !3826, file: !123, line: 351, baseType: !7, size: 32, offset: 192)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_count", scope: !3826, file: !123, line: 352, baseType: !7, size: 32, offset: 224)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_alloc_count", scope: !3826, file: !123, line: 353, baseType: !7, size: 32, offset: 256)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_count", scope: !3826, file: !123, line: 354, baseType: !7, size: 32, offset: 288)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_alloc_count", scope: !3826, file: !123, line: 355, baseType: !7, size: 32, offset: 320)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_ptr", scope: !3826, file: !123, line: 356, baseType: !7, size: 32, offset: 352)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_ptr", scope: !3826, file: !123, line: 357, baseType: !7, size: 32, offset: 384)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "cur_chan", scope: !3826, file: !123, line: 358, baseType: !7, size: 32, offset: 416)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "scans_done", scope: !3826, file: !123, line: 359, baseType: !7, size: 32, offset: 448)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "scan_progress", scope: !3826, file: !123, line: 360, baseType: !7, size: 32, offset: 480)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "munge_chan", scope: !3826, file: !123, line: 361, baseType: !7, size: 32, offset: 512)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "munge_count", scope: !3826, file: !123, line: 362, baseType: !7, size: 32, offset: 544)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "munge_ptr", scope: !3826, file: !123, line: 363, baseType: !7, size: 32, offset: 576)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3826, file: !123, line: 364, baseType: !7, size: 32, offset: 608)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !3826, file: !123, line: 365, baseType: !3859, size: 640, offset: 640)
!3859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_cmd", file: !101, line: 589, size: 640, elements: !3860)
!3860 = !{!3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3877}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "subdev", scope: !3859, file: !101, line: 590, baseType: !7, size: 32)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3859, file: !101, line: 591, baseType: !7, size: 32, offset: 32)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "start_src", scope: !3859, file: !101, line: 593, baseType: !7, size: 32, offset: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "start_arg", scope: !3859, file: !101, line: 594, baseType: !7, size: 32, offset: 96)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "scan_begin_src", scope: !3859, file: !101, line: 596, baseType: !7, size: 32, offset: 128)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "scan_begin_arg", scope: !3859, file: !101, line: 597, baseType: !7, size: 32, offset: 160)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "convert_src", scope: !3859, file: !101, line: 599, baseType: !7, size: 32, offset: 192)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "convert_arg", scope: !3859, file: !101, line: 600, baseType: !7, size: 32, offset: 224)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "scan_end_src", scope: !3859, file: !101, line: 602, baseType: !7, size: 32, offset: 256)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "scan_end_arg", scope: !3859, file: !101, line: 603, baseType: !7, size: 32, offset: 288)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "stop_src", scope: !3859, file: !101, line: 605, baseType: !7, size: 32, offset: 320)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "stop_arg", scope: !3859, file: !101, line: 606, baseType: !7, size: 32, offset: 352)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist", scope: !3859, file: !101, line: 608, baseType: !2666, size: 64, offset: 384)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist_len", scope: !3859, file: !101, line: 609, baseType: !7, size: 32, offset: 448)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3859, file: !101, line: 611, baseType: !3876, size: 64, offset: 512)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !3859, file: !101, line: 612, baseType: !7, size: 32, offset: 576)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "wait_head", scope: !3826, file: !123, line: 366, baseType: !1464, size: 128, offset: 1280)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "cb_mask", scope: !3826, file: !123, line: 367, baseType: !7, size: 32, offset: 1408)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "inttrig", scope: !3826, file: !123, line: 368, baseType: !3881, size: 64, offset: 1472)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{!134, !184, !3814, !7}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3815, file: !123, line: 165, baseType: !193, size: 64, offset: 384)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !3815, file: !123, line: 166, baseType: !193, size: 64, offset: 448)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "runflags", scope: !3815, file: !123, line: 167, baseType: !7, size: 32, offset: 512)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "spin_lock", scope: !3815, file: !123, line: 168, baseType: !218, offset: 544)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "io_bits", scope: !3815, file: !123, line: 170, baseType: !7, size: 32, offset: 544)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata", scope: !3815, file: !123, line: 172, baseType: !7, size: 32, offset: 576)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata_list", scope: !3815, file: !123, line: 173, baseType: !3891, size: 64, offset: 640)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "range_table", scope: !3815, file: !123, line: 175, baseType: !3893, size: 64, offset: 704)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3895)
!3895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_lrange", file: !123, line: 635, size: 32, elements: !3896)
!3896 = !{!3897, !3898}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3895, file: !123, line: 636, baseType: !134, size: 32)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3895, file: !123, line: 637, baseType: !3899, offset: 32)
!3899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3900, elements: !2314)
!3900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_krange", file: !101, line: 685, size: 96, elements: !3901)
!3901 = !{!3902, !3903, !3904}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !3900, file: !101, line: 686, baseType: !134, size: 32)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3900, file: !101, line: 687, baseType: !134, size: 32, offset: 32)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3900, file: !101, line: 688, baseType: !7, size: 32, offset: 64)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "range_table_list", scope: !3815, file: !123, line: 176, baseType: !3906, size: 64, offset: 768)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3893)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist", scope: !3815, file: !123, line: 178, baseType: !2666, size: 64, offset: 832)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "insn_read", scope: !3815, file: !123, line: 180, baseType: !3910, size: 64, offset: 896)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{!134, !184, !3814, !3913, !2666}
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_insn", file: !101, line: 491, size: 320, elements: !3915)
!3915 = !{!3916, !3917, !3918, !3919, !3920, !3921}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3914, file: !101, line: 492, baseType: !7, size: 32)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !3914, file: !101, line: 493, baseType: !7, size: 32, offset: 32)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3914, file: !101, line: 494, baseType: !2666, size: 64, offset: 64)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "subdev", scope: !3914, file: !101, line: 495, baseType: !7, size: 32, offset: 128)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "chanspec", scope: !3914, file: !101, line: 496, baseType: !7, size: 32, offset: 160)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !3914, file: !101, line: 497, baseType: !3922, size: 96, offset: 192)
!3922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 96, elements: !260)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "insn_write", scope: !3815, file: !123, line: 182, baseType: !3910, size: 64, offset: 960)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "insn_bits", scope: !3815, file: !123, line: 184, baseType: !3910, size: 64, offset: 1024)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "insn_config", scope: !3815, file: !123, line: 186, baseType: !3910, size: 64, offset: 1088)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmd", scope: !3815, file: !123, line: 191, baseType: !3927, size: 64, offset: 1152)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = !DISubroutineType(types: !3929)
!3929 = !{!134, !184, !3814}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmdtest", scope: !3815, file: !123, line: 192, baseType: !3931, size: 64, offset: 1216)
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3932 = !DISubroutineType(types: !3933)
!3933 = !{!134, !184, !3814, !3934}
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3815, file: !123, line: 195, baseType: !3927, size: 64, offset: 1280)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "cancel", scope: !3815, file: !123, line: 196, baseType: !3927, size: 64, offset: 1344)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "buf_change", scope: !3815, file: !123, line: 199, baseType: !3927, size: 64, offset: 1408)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "munge", scope: !3815, file: !123, line: 202, baseType: !3939, size: 64, offset: 1472)
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = !DISubroutineType(types: !3941)
!3941 = !{null, !184, !3814, !193, !7, !7}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "async_dma_dir", scope: !3815, file: !123, line: 205, baseType: !93, size: 32, offset: 1536)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3815, file: !123, line: 207, baseType: !7, size: 32, offset: 1568)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !3815, file: !123, line: 209, baseType: !195, size: 64, offset: 1600)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3815, file: !123, line: 210, baseType: !134, size: 32, offset: 1664)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "readback", scope: !3815, file: !123, line: 212, baseType: !2666, size: 64, offset: 1728)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "mmio", scope: !185, file: !123, line: 565, baseType: !193, size: 64, offset: 1216)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "iobase", scope: !185, file: !123, line: 566, baseType: !308, size: 64, offset: 1280)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "iolen", scope: !185, file: !123, line: 567, baseType: !308, size: 64, offset: 1344)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !185, file: !123, line: 568, baseType: !7, size: 32, offset: 1408)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "read_subdev", scope: !185, file: !123, line: 570, baseType: !3814, size: 64, offset: 1472)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "write_subdev", scope: !185, file: !123, line: 571, baseType: !3814, size: 64, offset: 1536)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "async_queue", scope: !185, file: !123, line: 573, baseType: !2942, size: 64, offset: 1600)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !185, file: !123, line: 575, baseType: !3955, size: 64, offset: 1664)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DISubroutineType(types: !3957)
!3957 = !{!134, !184}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !185, file: !123, line: 576, baseType: !3959, size: 64, offset: 1728)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = !DISubroutineType(types: !3961)
!3961 = !{null, !184}
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "insn_device_config", scope: !185, file: !123, line: 577, baseType: !3963, size: 64, offset: 1792)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{!134, !184, !3913, !2666}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "get_valid_routes", scope: !185, file: !123, line: 579, baseType: !3967, size: 64, offset: 1856)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = !DISubroutineType(types: !3969)
!3969 = !{!7, !184, !7, !2666}
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_devconfig", file: !101, line: 834, size: 1184, elements: !3972)
!3972 = !{!3973, !3975}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !3971, file: !101, line: 835, baseType: !3974, size: 160)
!3974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 160, elements: !2184)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !3971, file: !101, line: 836, baseType: !3976, size: 1024, offset: 160)
!3976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 1024, elements: !2213)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !170, file: !123, line: 444, baseType: !3959, size: 64, offset: 256)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "auto_attach", scope: !170, file: !123, line: 445, baseType: !3979, size: 64, offset: 320)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = !DISubroutineType(types: !3981)
!3981 = !{!134, !184, !308}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "num_names", scope: !170, file: !123, line: 446, baseType: !7, size: 32, offset: 384)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !170, file: !123, line: 447, baseType: !3984, size: 64, offset: 448)
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3985, size: 64)
!3985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !170, file: !123, line: 448, baseType: !134, size: 32, offset: 512)
!3987 = !DIGlobalVariableExpression(var: !3988, expr: !DIExpression())
!3988 = distinct !DIGlobalVariable(name: "dt3k_boardtypes", scope: !2, file: !3, line: 168, type: !3989, isLocal: true, isDefinition: true)
!3989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3990, size: 1792, elements: !3999)
!3990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3991)
!3991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dt3k_boardtype", file: !3, line: 159, size: 256, elements: !3992)
!3992 = !{!3993, !3994, !3995, !3996, !3997, !3998}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3991, file: !3, line: 160, baseType: !175, size: 64)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "adchan", scope: !3991, file: !3, line: 161, baseType: !134, size: 32, offset: 64)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "ai_speed", scope: !3991, file: !3, line: 162, baseType: !134, size: 32, offset: 96)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "adrange", scope: !3991, file: !3, line: 163, baseType: !3893, size: 64, offset: 128)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "ai_is_16bit", scope: !3991, file: !3, line: 164, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "has_ao", scope: !3991, file: !3, line: 165, baseType: !7, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!3999 = !{!4000}
!4000 = !DISubrange(count: 7)
!4001 = !DIGlobalVariableExpression(var: !4002, expr: !DIExpression())
!4002 = distinct !DIGlobalVariable(name: "range_dt3000_ai_pgl", scope: !2, file: !3, line: 140, type: !3894, isLocal: true, isDefinition: true)
!4003 = !DIGlobalVariableExpression(var: !4004, expr: !DIExpression())
!4004 = distinct !DIGlobalVariable(name: "debug_n_ints", scope: !2, file: !3, line: 313, type: !134, isLocal: true, isDefinition: true)
!4005 = !DIGlobalVariableExpression(var: !4006, expr: !DIExpression())
!4006 = distinct !DIGlobalVariable(name: "range_dt3000_ai", scope: !2, file: !3, line: 131, type: !3894, isLocal: true, isDefinition: true)
!4007 = !DIGlobalVariableExpression(var: !4008, expr: !DIExpression())
!4008 = distinct !DIGlobalVariable(name: "dt3000_pci_driver", scope: !2, file: !3, line: 730, type: !4009, isLocal: true, isDefinition: true)
!4009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !4010, line: 858, size: 2048, elements: !4011)
!4010 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!4011 = !{!4012, !4013, !4014, !4026, !4246, !4250, !4254, !4258, !4259, !4263, !4281, !4282, !4283}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4009, file: !4010, line: 859, baseType: !204, size: 128)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4009, file: !4010, line: 860, baseType: !175, size: 64, offset: 128)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4009, file: !4010, line: 861, baseType: !4015, size: 64, offset: 192)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4017)
!4017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3439, line: 38, size: 256, elements: !4018)
!4018 = !{!4019, !4020, !4021, !4022, !4023, !4024, !4025}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4017, file: !3439, line: 39, baseType: !401, size: 32)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4017, file: !3439, line: 39, baseType: !401, size: 32, offset: 32)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4017, file: !3439, line: 40, baseType: !401, size: 32, offset: 64)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4017, file: !3439, line: 40, baseType: !401, size: 32, offset: 96)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4017, file: !3439, line: 41, baseType: !401, size: 32, offset: 128)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4017, file: !3439, line: 41, baseType: !401, size: 32, offset: 160)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4017, file: !3439, line: 42, baseType: !3458, size: 64, offset: 192)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4009, file: !4010, line: 862, baseType: !4027, size: 64, offset: 256)
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = !DISubroutineType(types: !4029)
!4029 = !{!134, !4030, !4015}
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !4010, line: 309, size: 19264, elements: !4032)
!4032 = !{!4033, !4034, !4109, !4110, !4111, !4112, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4140, !4142, !4143, !4144, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4168, !4169, !4170, !4171, !4173, !4174, !4175, !4176, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4219, !4220, !4222, !4223, !4224, !4225, !4227, !4228, !4229, !4232, !4239, !4240, !4241, !4242, !4243, !4244, !4245}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !4031, file: !4010, line: 310, baseType: !204, size: 128)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4031, file: !4010, line: 311, baseType: !4035, size: 64, offset: 128)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !4010, line: 605, size: 8064, elements: !4037)
!4037 = !{!4038, !4039, !4040, !4041, !4042, !4043, !4044, !4059, !4060, !4061, !4085, !4088, !4089, !4093, !4094, !4095, !4096, !4097, !4101, !4102, !4104, !4105, !4106, !4107, !4108}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4036, file: !4010, line: 606, baseType: !204, size: 128)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4036, file: !4010, line: 607, baseType: !4035, size: 64, offset: 128)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4036, file: !4010, line: 608, baseType: !204, size: 128, offset: 192)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4036, file: !4010, line: 609, baseType: !204, size: 128, offset: 320)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4036, file: !4010, line: 610, baseType: !4030, size: 64, offset: 448)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4036, file: !4010, line: 611, baseType: !204, size: 128, offset: 512)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4036, file: !4010, line: 613, baseType: !4045, size: 256, offset: 640)
!4045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4046, size: 256, elements: !1138)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4048, line: 20, size: 512, elements: !4049)
!4048 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!4049 = !{!4050, !4052, !4053, !4054, !4055, !4056, !4057, !4058}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4047, file: !4048, line: 21, baseType: !4051, size: 64)
!4051 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !205, line: 158, baseType: !2108)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4047, file: !4048, line: 22, baseType: !4051, size: 64, offset: 64)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4047, file: !4048, line: 23, baseType: !175, size: 64, offset: 128)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4047, file: !4048, line: 24, baseType: !308, size: 64, offset: 192)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4047, file: !4048, line: 25, baseType: !308, size: 64, offset: 256)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4047, file: !4048, line: 26, baseType: !4046, size: 64, offset: 320)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4047, file: !4048, line: 26, baseType: !4046, size: 64, offset: 384)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4047, file: !4048, line: 26, baseType: !4046, size: 64, offset: 448)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4036, file: !4010, line: 614, baseType: !204, size: 128, offset: 896)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !4036, file: !4010, line: 615, baseType: !4047, size: 512, offset: 1024)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4036, file: !4010, line: 617, baseType: !4062, size: 64, offset: 1536)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !4010, line: 731, size: 320, elements: !4064)
!4064 = !{!4065, !4069, !4073, !4077, !4081}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4063, file: !4010, line: 732, baseType: !4066, size: 64)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4067 = !DISubroutineType(types: !4068)
!4068 = !{!134, !4035}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4063, file: !4010, line: 733, baseType: !4070, size: 64, offset: 64)
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4071, size: 64)
!4071 = !DISubroutineType(types: !4072)
!4072 = !{null, !4035}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4063, file: !4010, line: 734, baseType: !4074, size: 64, offset: 128)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = !DISubroutineType(types: !4076)
!4076 = !{!193, !4035, !7, !134}
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4063, file: !4010, line: 735, baseType: !4078, size: 64, offset: 192)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = !DISubroutineType(types: !4080)
!4080 = !{!134, !4035, !7, !134, !134, !1398}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4063, file: !4010, line: 736, baseType: !4082, size: 64, offset: 256)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = !DISubroutineType(types: !4084)
!4084 = !{!134, !4035, !7, !134, !134, !399}
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4036, file: !4010, line: 618, baseType: !4086, size: 64, offset: 1600)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !4010, line: 537, flags: DIFlagFwdDecl)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4036, file: !4010, line: 619, baseType: !193, size: 64, offset: 1664)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !4036, file: !4010, line: 620, baseType: !4090, size: 64, offset: 1728)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4092, line: 123, flags: DIFlagFwdDecl)
!4092 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4036, file: !4010, line: 622, baseType: !411, size: 8, offset: 1792)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4036, file: !4010, line: 623, baseType: !411, size: 8, offset: 1800)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !4036, file: !4010, line: 624, baseType: !411, size: 8, offset: 1808)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !4036, file: !4010, line: 625, baseType: !411, size: 8, offset: 1816)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4036, file: !4010, line: 630, baseType: !4098, size: 384, offset: 1824)
!4098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 384, elements: !4099)
!4099 = !{!4100}
!4100 = !DISubrange(count: 48)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !4036, file: !4010, line: 632, baseType: !137, size: 16, offset: 2208)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !4036, file: !4010, line: 633, baseType: !4103, size: 16, offset: 2224)
!4103 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !4010, line: 237, baseType: !137)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !4036, file: !4010, line: 634, baseType: !195, size: 64, offset: 2240)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4036, file: !4010, line: 635, baseType: !196, size: 5568, offset: 2304)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !4036, file: !4010, line: 636, baseType: !326, size: 64, offset: 7872)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !4036, file: !4010, line: 637, baseType: !326, size: 64, offset: 7936)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !4036, file: !4010, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !4031, file: !4010, line: 312, baseType: !4035, size: 64, offset: 192)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4031, file: !4010, line: 314, baseType: !193, size: 64, offset: 256)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !4031, file: !4010, line: 315, baseType: !4090, size: 64, offset: 320)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4031, file: !4010, line: 316, baseType: !4113, size: 64, offset: 384)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !4010, line: 69, size: 832, elements: !4115)
!4115 = !{!4116, !4117, !4118, !4121, !4122}
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4114, file: !4010, line: 70, baseType: !4035, size: 64)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4114, file: !4010, line: 71, baseType: !204, size: 128, offset: 64)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4114, file: !4010, line: 72, baseType: !4119, size: 64, offset: 192)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !4010, line: 72, flags: DIFlagFwdDecl)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4114, file: !4010, line: 73, baseType: !411, size: 8, offset: 256)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4114, file: !4010, line: 74, baseType: !199, size: 512, offset: 320)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !4031, file: !4010, line: 318, baseType: !7, size: 32, offset: 448)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4031, file: !4010, line: 319, baseType: !137, size: 16, offset: 480)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4031, file: !4010, line: 320, baseType: !137, size: 16, offset: 496)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4031, file: !4010, line: 321, baseType: !137, size: 16, offset: 512)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4031, file: !4010, line: 322, baseType: !137, size: 16, offset: 528)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4031, file: !4010, line: 323, baseType: !7, size: 32, offset: 544)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4031, file: !4010, line: 324, baseType: !1335, size: 8, offset: 576)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4031, file: !4010, line: 325, baseType: !1335, size: 8, offset: 584)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !4031, file: !4010, line: 330, baseType: !1335, size: 8, offset: 592)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !4031, file: !4010, line: 331, baseType: !1335, size: 8, offset: 600)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !4031, file: !4010, line: 332, baseType: !1335, size: 8, offset: 608)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !4031, file: !4010, line: 333, baseType: !1335, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !4031, file: !4010, line: 334, baseType: !1335, size: 8, offset: 624)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4031, file: !4010, line: 335, baseType: !1335, size: 8, offset: 632)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !4031, file: !4010, line: 336, baseType: !844, size: 16, offset: 640)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !4031, file: !4010, line: 337, baseType: !4139, size: 64, offset: 704)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4031, file: !4010, line: 339, baseType: !4141, size: 64, offset: 768)
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4031, file: !4010, line: 340, baseType: !405, size: 64, offset: 832)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4031, file: !4010, line: 346, baseType: !3651, size: 128, offset: 896)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !4031, file: !4010, line: 348, baseType: !4145, size: 32, offset: 1024)
!4145 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !4010, line: 155, baseType: !134)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !4031, file: !4010, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !4031, file: !4010, line: 352, baseType: !1335, size: 8, offset: 1064)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !4031, file: !4010, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !4031, file: !4010, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !4031, file: !4010, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !4031, file: !4010, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !4031, file: !4010, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !4031, file: !4010, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !4031, file: !4010, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !4031, file: !4010, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !4031, file: !4010, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !4031, file: !4010, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !4031, file: !4010, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !4031, file: !4010, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !4031, file: !4010, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !4031, file: !4010, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !4031, file: !4010, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !4031, file: !4010, line: 376, baseType: !7, size: 32, offset: 1120)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !4031, file: !4010, line: 377, baseType: !7, size: 32, offset: 1152)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !4031, file: !4010, line: 380, baseType: !4166, size: 64, offset: 1216)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !4010, line: 303, flags: DIFlagFwdDecl)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !4031, file: !4010, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !4031, file: !4010, line: 383, baseType: !134, size: 32, offset: 1312)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !4031, file: !4010, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !4031, file: !4010, line: 387, baseType: !4172, size: 32, offset: 1376)
!4172 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !4010, line: 180, baseType: !7)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4031, file: !4010, line: 388, baseType: !196, size: 5568, offset: 1408)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !4031, file: !4010, line: 390, baseType: !134, size: 32, offset: 6976)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4031, file: !4010, line: 396, baseType: !7, size: 32, offset: 7008)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4031, file: !4010, line: 397, baseType: !4177, size: 8704, offset: 7040)
!4177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4047, size: 8704, elements: !4178)
!4178 = !{!4179}
!4179 = !DISubrange(count: 17)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4031, file: !4010, line: 399, baseType: !474, size: 8, offset: 15744)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !4031, file: !4010, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !4031, file: !4010, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !4031, file: !4010, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !4031, file: !4010, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !4031, file: !4010, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !4031, file: !4010, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !4031, file: !4010, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !4031, file: !4010, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !4031, file: !4010, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !4031, file: !4010, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !4031, file: !4010, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !4031, file: !4010, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !4031, file: !4010, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !4031, file: !4010, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !4031, file: !4010, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !4031, file: !4010, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !4031, file: !4010, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !4031, file: !4010, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !4031, file: !4010, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !4031, file: !4010, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !4031, file: !4010, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !4031, file: !4010, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !4031, file: !4010, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !4031, file: !4010, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !4031, file: !4010, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !4031, file: !4010, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !4031, file: !4010, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !4031, file: !4010, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !4031, file: !4010, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !4031, file: !4010, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !4031, file: !4010, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !4031, file: !4010, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !4031, file: !4010, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !4031, file: !4010, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !4031, file: !4010, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !4031, file: !4010, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !4031, file: !4010, line: 450, baseType: !4218, size: 16, offset: 15792)
!4218 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !4010, line: 206, baseType: !137)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !4031, file: !4010, line: 451, baseType: !732, size: 32, offset: 15808)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !4031, file: !4010, line: 453, baseType: !4221, size: 512, offset: 15840)
!4221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 512, elements: !1718)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !4031, file: !4010, line: 454, baseType: !619, size: 64, offset: 16384)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !4031, file: !4010, line: 455, baseType: !326, size: 64, offset: 16448)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !4031, file: !4010, line: 456, baseType: !134, size: 32, offset: 16512)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !4031, file: !4010, line: 457, baseType: !4226, size: 1088, offset: 16576)
!4226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 1088, elements: !4178)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !4031, file: !4010, line: 458, baseType: !4226, size: 1088, offset: 17664)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !4031, file: !4010, line: 469, baseType: !312, size: 64, offset: 18752)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !4031, file: !4010, line: 471, baseType: !4230, size: 64, offset: 18816)
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4231, size: 64)
!4231 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !4010, line: 304, flags: DIFlagFwdDecl)
!4232 = !DIDerivedType(tag: DW_TAG_member, scope: !4031, file: !4010, line: 478, baseType: !4233, size: 64, offset: 18880)
!4233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4031, file: !4010, line: 478, size: 64, elements: !4234)
!4234 = !{!4235, !4238}
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4233, file: !4010, line: 479, baseType: !4236, size: 64)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !4010, line: 305, flags: DIFlagFwdDecl)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4233, file: !4010, line: 480, baseType: !4030, size: 64)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !4031, file: !4010, line: 482, baseType: !844, size: 16, offset: 18944)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !4031, file: !4010, line: 483, baseType: !1335, size: 8, offset: 18960)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !4031, file: !4010, line: 497, baseType: !844, size: 16, offset: 18976)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !4031, file: !4010, line: 498, baseType: !2108, size: 64, offset: 19008)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !4031, file: !4010, line: 499, baseType: !305, size: 64, offset: 19072)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !4031, file: !4010, line: 500, baseType: !259, size: 64, offset: 19136)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !4031, file: !4010, line: 502, baseType: !308, size: 64, offset: 19200)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4009, file: !4010, line: 863, baseType: !4247, size: 64, offset: 320)
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4248, size: 64)
!4248 = !DISubroutineType(types: !4249)
!4249 = !{null, !4030}
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4009, file: !4010, line: 864, baseType: !4251, size: 64, offset: 384)
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = !DISubroutineType(types: !4253)
!4253 = !{!134, !4030, !3469}
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4009, file: !4010, line: 865, baseType: !4255, size: 64, offset: 448)
!4255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4256, size: 64)
!4256 = !DISubroutineType(types: !4257)
!4257 = !{!134, !4030}
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4009, file: !4010, line: 866, baseType: !4247, size: 64, offset: 512)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4009, file: !4010, line: 867, baseType: !4260, size: 64, offset: 576)
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = !DISubroutineType(types: !4262)
!4262 = !{!134, !4030, !134}
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4009, file: !4010, line: 868, baseType: !4264, size: 64, offset: 640)
!4264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4265, size: 64)
!4265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4266)
!4266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !4010, line: 795, size: 384, elements: !4267)
!4267 = !{!4268, !4273, !4277, !4278, !4279, !4280}
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4266, file: !4010, line: 797, baseType: !4269, size: 64)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = !DISubroutineType(types: !4271)
!4271 = !{!4272, !4030, !4172}
!4272 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !4010, line: 772, baseType: !7)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4266, file: !4010, line: 801, baseType: !4274, size: 64, offset: 64)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4275 = !DISubroutineType(types: !4276)
!4276 = !{!4272, !4030}
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4266, file: !4010, line: 804, baseType: !4274, size: 64, offset: 128)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4266, file: !4010, line: 807, baseType: !4247, size: 64, offset: 192)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4266, file: !4010, line: 808, baseType: !4247, size: 64, offset: 256)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4266, file: !4010, line: 811, baseType: !4247, size: 64, offset: 320)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4009, file: !4010, line: 869, baseType: !312, size: 64, offset: 704)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4009, file: !4010, line: 870, baseType: !3427, size: 1152, offset: 768)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4009, file: !4010, line: 871, baseType: !4284, size: 128, offset: 1920)
!4284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !4010, line: 759, size: 128, elements: !4285)
!4285 = !{!4286, !4287}
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4284, file: !4010, line: 760, baseType: !218)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4284, file: !4010, line: 761, baseType: !204, size: 128)
!4288 = !DIGlobalVariableExpression(var: !4289, expr: !DIExpression())
!4289 = distinct !DIGlobalVariable(name: "dt3000_pci_table", scope: !2, file: !3, line: 718, type: !4290, isLocal: true, isDefinition: true)
!4290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4016, size: 2048, elements: !1313)
!4291 = !{i32 7, !"Dwarf Version", i32 4}
!4292 = !{i32 2, !"Debug Info Version", i32 3}
!4293 = !{i32 1, !"wchar_size", i32 2}
!4294 = !{i32 1, !"Code Model", i32 2}
!4295 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4296 = distinct !DISubprogram(name: "dt3000_driver_init", scope: !3, file: !3, line: 736, type: !4297, scopeLine: 736, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !232)
!4297 = !DISubroutineType(types: !4298)
!4298 = !{!134}
!4299 = !DILocation(line: 736, column: 1, scope: !4296)
!4300 = distinct !DISubprogram(name: "dt3000_driver_exit", scope: !3, file: !3, line: 736, type: !144, scopeLine: 736, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !232)
!4301 = !DILocation(line: 736, column: 1, scope: !4300)
!4302 = distinct !DISubprogram(name: "dt3000_auto_attach", scope: !3, file: !3, line: 609, type: !3980, scopeLine: 611, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !232)
!4303 = !DILocalVariable(name: "dev", arg: 1, scope: !4302, file: !3, line: 609, type: !184)
!4304 = !DILocation(line: 609, column: 53, scope: !4302)
!4305 = !DILocalVariable(name: "context", arg: 2, scope: !4302, file: !3, line: 610, type: !308)
!4306 = !DILocation(line: 610, column: 24, scope: !4302)
!4307 = !DILocalVariable(name: "pcidev", scope: !4302, file: !3, line: 612, type: !4030)
!4308 = !DILocation(line: 612, column: 18, scope: !4302)
!4309 = !DILocation(line: 612, column: 45, scope: !4302)
!4310 = !DILocation(line: 612, column: 27, scope: !4302)
!4311 = !DILocalVariable(name: "board", scope: !4302, file: !3, line: 613, type: !4312)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!4313 = !DILocation(line: 613, column: 31, scope: !4302)
!4314 = !DILocalVariable(name: "devpriv", scope: !4302, file: !3, line: 614, type: !4315)
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dt3k_private", file: !3, line: 221, size: 96, elements: !4317)
!4317 = !{!4318, !4319, !4320}
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4316, file: !3, line: 222, baseType: !7, size: 32)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "ai_front", scope: !4316, file: !3, line: 223, baseType: !7, size: 32, offset: 32)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "ai_rear", scope: !4316, file: !3, line: 224, baseType: !7, size: 32, offset: 64)
!4321 = !DILocation(line: 614, column: 23, scope: !4302)
!4322 = !DILocalVariable(name: "s", scope: !4302, file: !3, line: 615, type: !3814)
!4323 = !DILocation(line: 615, column: 27, scope: !4302)
!4324 = !DILocalVariable(name: "ret", scope: !4302, file: !3, line: 616, type: !134)
!4325 = !DILocation(line: 616, column: 6, scope: !4302)
!4326 = !DILocation(line: 618, column: 6, scope: !4327)
!4327 = distinct !DILexicalBlock(scope: !4302, file: !3, line: 618, column: 6)
!4328 = !DILocation(line: 618, column: 14, scope: !4327)
!4329 = !DILocation(line: 618, column: 6, scope: !4302)
!4330 = !DILocation(line: 619, column: 28, scope: !4327)
!4331 = !DILocation(line: 619, column: 12, scope: !4327)
!4332 = !DILocation(line: 619, column: 9, scope: !4327)
!4333 = !DILocation(line: 619, column: 3, scope: !4327)
!4334 = !DILocation(line: 620, column: 7, scope: !4335)
!4335 = distinct !DILexicalBlock(scope: !4302, file: !3, line: 620, column: 6)
!4336 = !DILocation(line: 620, column: 6, scope: !4302)
!4337 = !DILocation(line: 621, column: 3, scope: !4335)
!4338 = !DILocation(line: 622, column: 19, scope: !4302)
!4339 = !DILocation(line: 622, column: 2, scope: !4302)
!4340 = !DILocation(line: 622, column: 7, scope: !4302)
!4341 = !DILocation(line: 622, column: 17, scope: !4302)
!4342 = !DILocation(line: 623, column: 20, scope: !4302)
!4343 = !DILocation(line: 623, column: 27, scope: !4302)
!4344 = !DILocation(line: 623, column: 2, scope: !4302)
!4345 = !DILocation(line: 623, column: 7, scope: !4302)
!4346 = !DILocation(line: 623, column: 18, scope: !4302)
!4347 = !DILocation(line: 625, column: 33, scope: !4302)
!4348 = !DILocation(line: 625, column: 12, scope: !4302)
!4349 = !DILocation(line: 625, column: 10, scope: !4302)
!4350 = !DILocation(line: 626, column: 7, scope: !4351)
!4351 = distinct !DILexicalBlock(scope: !4302, file: !3, line: 626, column: 6)
!4352 = !DILocation(line: 626, column: 6, scope: !4302)
!4353 = !DILocation(line: 627, column: 3, scope: !4351)
!4354 = !DILocation(line: 629, column: 26, scope: !4302)
!4355 = !DILocation(line: 629, column: 8, scope: !4302)
!4356 = !DILocation(line: 629, column: 6, scope: !4302)
!4357 = !DILocation(line: 630, column: 6, scope: !4358)
!4358 = distinct !DILexicalBlock(scope: !4302, file: !3, line: 630, column: 6)
!4359 = !DILocation(line: 630, column: 10, scope: !4358)
!4360 = !DILocation(line: 630, column: 6, scope: !4302)
!4361 = !DILocation(line: 631, column: 10, scope: !4358)
!4362 = !DILocation(line: 631, column: 3, scope: !4358)
!4363 = !DILocation(line: 633, column: 30, scope: !4302)
!4364 = !DILocation(line: 633, column: 14, scope: !4302)
!4365 = !DILocation(line: 633, column: 2, scope: !4302)
!4366 = !DILocation(line: 633, column: 7, scope: !4302)
!4367 = !DILocation(line: 633, column: 12, scope: !4302)
!4368 = !DILocation(line: 634, column: 7, scope: !4369)
!4369 = distinct !DILexicalBlock(scope: !4302, file: !3, line: 634, column: 6)
!4370 = !DILocation(line: 634, column: 12, scope: !4369)
!4371 = !DILocation(line: 634, column: 6, scope: !4302)
!4372 = !DILocation(line: 635, column: 3, scope: !4369)
!4373 = !DILocation(line: 637, column: 6, scope: !4374)
!4374 = distinct !DILexicalBlock(scope: !4302, file: !3, line: 637, column: 6)
!4375 = !DILocation(line: 637, column: 14, scope: !4374)
!4376 = !DILocation(line: 637, column: 6, scope: !4302)
!4377 = !DILocation(line: 638, column: 21, scope: !4378)
!4378 = distinct !DILexicalBlock(scope: !4374, file: !3, line: 637, column: 19)
!4379 = !DILocation(line: 638, column: 29, scope: !4378)
!4380 = !DILocation(line: 639, column: 7, scope: !4378)
!4381 = !DILocation(line: 639, column: 12, scope: !4378)
!4382 = !DILocation(line: 639, column: 24, scope: !4378)
!4383 = !DILocation(line: 638, column: 9, scope: !4378)
!4384 = !DILocation(line: 638, column: 7, scope: !4378)
!4385 = !DILocation(line: 640, column: 7, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !4378, file: !3, line: 640, column: 7)
!4387 = !DILocation(line: 640, column: 11, scope: !4386)
!4388 = !DILocation(line: 640, column: 7, scope: !4378)
!4389 = !DILocation(line: 641, column: 15, scope: !4386)
!4390 = !DILocation(line: 641, column: 23, scope: !4386)
!4391 = !DILocation(line: 641, column: 4, scope: !4386)
!4392 = !DILocation(line: 641, column: 9, scope: !4386)
!4393 = !DILocation(line: 641, column: 13, scope: !4386)
!4394 = !DILocation(line: 642, column: 2, scope: !4378)
!4395 = !DILocation(line: 644, column: 32, scope: !4302)
!4396 = !DILocation(line: 644, column: 8, scope: !4302)
!4397 = !DILocation(line: 644, column: 6, scope: !4302)
!4398 = !DILocation(line: 645, column: 6, scope: !4399)
!4399 = distinct !DILexicalBlock(scope: !4302, file: !3, line: 645, column: 6)
!4400 = !DILocation(line: 645, column: 6, scope: !4302)
!4401 = !DILocation(line: 646, column: 10, scope: !4399)
!4402 = !DILocation(line: 646, column: 3, scope: !4399)
!4403 = !DILocation(line: 649, column: 7, scope: !4302)
!4404 = !DILocation(line: 649, column: 12, scope: !4302)
!4405 = !DILocation(line: 649, column: 4, scope: !4302)
!4406 = !DILocation(line: 650, column: 2, scope: !4302)
!4407 = !DILocation(line: 650, column: 5, scope: !4302)
!4408 = !DILocation(line: 650, column: 11, scope: !4302)
!4409 = !DILocation(line: 651, column: 2, scope: !4302)
!4410 = !DILocation(line: 651, column: 5, scope: !4302)
!4411 = !DILocation(line: 651, column: 18, scope: !4302)
!4412 = !DILocation(line: 652, column: 14, scope: !4302)
!4413 = !DILocation(line: 652, column: 21, scope: !4302)
!4414 = !DILocation(line: 652, column: 2, scope: !4302)
!4415 = !DILocation(line: 652, column: 5, scope: !4302)
!4416 = !DILocation(line: 652, column: 12, scope: !4302)
!4417 = !DILocation(line: 653, column: 15, scope: !4302)
!4418 = !DILocation(line: 653, column: 22, scope: !4302)
!4419 = !DILocation(line: 653, column: 2, scope: !4302)
!4420 = !DILocation(line: 653, column: 5, scope: !4302)
!4421 = !DILocation(line: 653, column: 13, scope: !4302)
!4422 = !DILocation(line: 654, column: 2, scope: !4302)
!4423 = !DILocation(line: 654, column: 5, scope: !4302)
!4424 = !DILocation(line: 654, column: 17, scope: !4302)
!4425 = !DILocation(line: 655, column: 2, scope: !4302)
!4426 = !DILocation(line: 655, column: 5, scope: !4302)
!4427 = !DILocation(line: 655, column: 15, scope: !4302)
!4428 = !DILocation(line: 656, column: 6, scope: !4429)
!4429 = distinct !DILexicalBlock(scope: !4302, file: !3, line: 656, column: 6)
!4430 = !DILocation(line: 656, column: 11, scope: !4429)
!4431 = !DILocation(line: 656, column: 6, scope: !4302)
!4432 = !DILocation(line: 657, column: 22, scope: !4433)
!4433 = distinct !DILexicalBlock(scope: !4429, file: !3, line: 656, column: 16)
!4434 = !DILocation(line: 657, column: 3, scope: !4433)
!4435 = !DILocation(line: 657, column: 8, scope: !4433)
!4436 = !DILocation(line: 657, column: 20, scope: !4433)
!4437 = !DILocation(line: 658, column: 3, scope: !4433)
!4438 = !DILocation(line: 658, column: 6, scope: !4433)
!4439 = !DILocation(line: 658, column: 19, scope: !4433)
!4440 = !DILocation(line: 659, column: 3, scope: !4433)
!4441 = !DILocation(line: 659, column: 6, scope: !4433)
!4442 = !DILocation(line: 659, column: 19, scope: !4433)
!4443 = !DILocation(line: 660, column: 3, scope: !4433)
!4444 = !DILocation(line: 660, column: 6, scope: !4433)
!4445 = !DILocation(line: 660, column: 13, scope: !4433)
!4446 = !DILocation(line: 661, column: 3, scope: !4433)
!4447 = !DILocation(line: 661, column: 6, scope: !4433)
!4448 = !DILocation(line: 661, column: 17, scope: !4433)
!4449 = !DILocation(line: 662, column: 3, scope: !4433)
!4450 = !DILocation(line: 662, column: 6, scope: !4433)
!4451 = !DILocation(line: 662, column: 13, scope: !4433)
!4452 = !DILocation(line: 663, column: 2, scope: !4433)
!4453 = !DILocation(line: 666, column: 7, scope: !4302)
!4454 = !DILocation(line: 666, column: 12, scope: !4302)
!4455 = !DILocation(line: 666, column: 4, scope: !4302)
!4456 = !DILocation(line: 667, column: 6, scope: !4457)
!4457 = distinct !DILexicalBlock(scope: !4302, file: !3, line: 667, column: 6)
!4458 = !DILocation(line: 667, column: 13, scope: !4457)
!4459 = !DILocation(line: 667, column: 6, scope: !4302)
!4460 = !DILocation(line: 668, column: 3, scope: !4461)
!4461 = distinct !DILexicalBlock(scope: !4457, file: !3, line: 667, column: 21)
!4462 = !DILocation(line: 668, column: 6, scope: !4461)
!4463 = !DILocation(line: 668, column: 12, scope: !4461)
!4464 = !DILocation(line: 669, column: 3, scope: !4461)
!4465 = !DILocation(line: 669, column: 6, scope: !4461)
!4466 = !DILocation(line: 669, column: 19, scope: !4461)
!4467 = !DILocation(line: 670, column: 3, scope: !4461)
!4468 = !DILocation(line: 670, column: 6, scope: !4461)
!4469 = !DILocation(line: 670, column: 13, scope: !4461)
!4470 = !DILocation(line: 671, column: 3, scope: !4461)
!4471 = !DILocation(line: 671, column: 6, scope: !4461)
!4472 = !DILocation(line: 671, column: 14, scope: !4461)
!4473 = !DILocation(line: 672, column: 3, scope: !4461)
!4474 = !DILocation(line: 672, column: 6, scope: !4461)
!4475 = !DILocation(line: 672, column: 18, scope: !4461)
!4476 = !DILocation(line: 673, column: 3, scope: !4461)
!4477 = !DILocation(line: 673, column: 6, scope: !4461)
!4478 = !DILocation(line: 673, column: 17, scope: !4461)
!4479 = !DILocation(line: 675, column: 38, scope: !4461)
!4480 = !DILocation(line: 675, column: 9, scope: !4461)
!4481 = !DILocation(line: 675, column: 7, scope: !4461)
!4482 = !DILocation(line: 676, column: 7, scope: !4483)
!4483 = distinct !DILexicalBlock(scope: !4461, file: !3, line: 676, column: 7)
!4484 = !DILocation(line: 676, column: 7, scope: !4461)
!4485 = !DILocation(line: 677, column: 11, scope: !4483)
!4486 = !DILocation(line: 677, column: 4, scope: !4483)
!4487 = !DILocation(line: 679, column: 2, scope: !4461)
!4488 = !DILocation(line: 680, column: 3, scope: !4489)
!4489 = distinct !DILexicalBlock(scope: !4457, file: !3, line: 679, column: 9)
!4490 = !DILocation(line: 680, column: 6, scope: !4489)
!4491 = !DILocation(line: 680, column: 12, scope: !4489)
!4492 = !DILocation(line: 684, column: 7, scope: !4302)
!4493 = !DILocation(line: 684, column: 12, scope: !4302)
!4494 = !DILocation(line: 684, column: 4, scope: !4302)
!4495 = !DILocation(line: 685, column: 2, scope: !4302)
!4496 = !DILocation(line: 685, column: 5, scope: !4302)
!4497 = !DILocation(line: 685, column: 11, scope: !4302)
!4498 = !DILocation(line: 686, column: 2, scope: !4302)
!4499 = !DILocation(line: 686, column: 5, scope: !4302)
!4500 = !DILocation(line: 686, column: 18, scope: !4302)
!4501 = !DILocation(line: 687, column: 2, scope: !4302)
!4502 = !DILocation(line: 687, column: 5, scope: !4302)
!4503 = !DILocation(line: 687, column: 12, scope: !4302)
!4504 = !DILocation(line: 688, column: 2, scope: !4302)
!4505 = !DILocation(line: 688, column: 5, scope: !4302)
!4506 = !DILocation(line: 688, column: 13, scope: !4302)
!4507 = !DILocation(line: 689, column: 2, scope: !4302)
!4508 = !DILocation(line: 689, column: 5, scope: !4302)
!4509 = !DILocation(line: 689, column: 17, scope: !4302)
!4510 = !DILocation(line: 690, column: 2, scope: !4302)
!4511 = !DILocation(line: 690, column: 5, scope: !4302)
!4512 = !DILocation(line: 690, column: 17, scope: !4302)
!4513 = !DILocation(line: 691, column: 2, scope: !4302)
!4514 = !DILocation(line: 691, column: 5, scope: !4302)
!4515 = !DILocation(line: 691, column: 15, scope: !4302)
!4516 = !DILocation(line: 694, column: 7, scope: !4302)
!4517 = !DILocation(line: 694, column: 12, scope: !4302)
!4518 = !DILocation(line: 694, column: 4, scope: !4302)
!4519 = !DILocation(line: 695, column: 2, scope: !4302)
!4520 = !DILocation(line: 695, column: 5, scope: !4302)
!4521 = !DILocation(line: 695, column: 11, scope: !4302)
!4522 = !DILocation(line: 696, column: 2, scope: !4302)
!4523 = !DILocation(line: 696, column: 5, scope: !4302)
!4524 = !DILocation(line: 696, column: 18, scope: !4302)
!4525 = !DILocation(line: 697, column: 2, scope: !4302)
!4526 = !DILocation(line: 697, column: 5, scope: !4302)
!4527 = !DILocation(line: 697, column: 12, scope: !4302)
!4528 = !DILocation(line: 698, column: 2, scope: !4302)
!4529 = !DILocation(line: 698, column: 5, scope: !4302)
!4530 = !DILocation(line: 698, column: 13, scope: !4302)
!4531 = !DILocation(line: 699, column: 2, scope: !4302)
!4532 = !DILocation(line: 699, column: 5, scope: !4302)
!4533 = !DILocation(line: 699, column: 17, scope: !4302)
!4534 = !DILocation(line: 700, column: 2, scope: !4302)
!4535 = !DILocation(line: 700, column: 5, scope: !4302)
!4536 = !DILocation(line: 700, column: 15, scope: !4302)
!4537 = !DILocation(line: 702, column: 2, scope: !4302)
!4538 = !DILocation(line: 703, column: 1, scope: !4302)
!4539 = distinct !DISubprogram(name: "request_irq", scope: !4092, file: !4092, line: 157, type: !4540, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !232)
!4540 = !DISubroutineType(types: !4541)
!4541 = !{!134, !7, !4542, !308, !175, !193}
!4542 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !4092, line: 92, baseType: !4543)
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4544, size: 64)
!4544 = !DISubroutineType(types: !4545)
!4545 = !{!4546, !134, !193}
!4546 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !117, line: 17, baseType: !116)
!4547 = !DILocalVariable(name: "irq", arg: 1, scope: !4539, file: !4092, line: 157, type: !7)
!4548 = !DILocation(line: 157, column: 26, scope: !4539)
!4549 = !DILocalVariable(name: "handler", arg: 2, scope: !4539, file: !4092, line: 157, type: !4542)
!4550 = !DILocation(line: 157, column: 45, scope: !4539)
!4551 = !DILocalVariable(name: "flags", arg: 3, scope: !4539, file: !4092, line: 157, type: !308)
!4552 = !DILocation(line: 157, column: 68, scope: !4539)
!4553 = !DILocalVariable(name: "name", arg: 4, scope: !4539, file: !4092, line: 158, type: !175)
!4554 = !DILocation(line: 158, column: 18, scope: !4539)
!4555 = !DILocalVariable(name: "dev", arg: 5, scope: !4539, file: !4092, line: 158, type: !193)
!4556 = !DILocation(line: 158, column: 30, scope: !4539)
!4557 = !DILocation(line: 160, column: 30, scope: !4539)
!4558 = !DILocation(line: 160, column: 35, scope: !4539)
!4559 = !DILocation(line: 160, column: 50, scope: !4539)
!4560 = !DILocation(line: 160, column: 57, scope: !4539)
!4561 = !DILocation(line: 160, column: 63, scope: !4539)
!4562 = !DILocation(line: 160, column: 9, scope: !4539)
!4563 = !DILocation(line: 160, column: 2, scope: !4539)
!4564 = distinct !DISubprogram(name: "dt3k_interrupt", scope: !3, file: !3, line: 317, type: !4544, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !232)
!4565 = !DILocalVariable(name: "irq", arg: 1, scope: !4564, file: !3, line: 317, type: !134)
!4566 = !DILocation(line: 317, column: 39, scope: !4564)
!4567 = !DILocalVariable(name: "d", arg: 2, scope: !4564, file: !3, line: 317, type: !193)
!4568 = !DILocation(line: 317, column: 50, scope: !4564)
!4569 = !DILocalVariable(name: "dev", scope: !4564, file: !3, line: 319, type: !184)
!4570 = !DILocation(line: 319, column: 24, scope: !4564)
!4571 = !DILocation(line: 319, column: 30, scope: !4564)
!4572 = !DILocalVariable(name: "s", scope: !4564, file: !3, line: 320, type: !3814)
!4573 = !DILocation(line: 320, column: 27, scope: !4564)
!4574 = !DILocation(line: 320, column: 31, scope: !4564)
!4575 = !DILocation(line: 320, column: 36, scope: !4564)
!4576 = !DILocalVariable(name: "status", scope: !4564, file: !3, line: 321, type: !7)
!4577 = !DILocation(line: 321, column: 15, scope: !4564)
!4578 = !DILocation(line: 323, column: 7, scope: !4579)
!4579 = distinct !DILexicalBlock(scope: !4564, file: !3, line: 323, column: 6)
!4580 = !DILocation(line: 323, column: 12, scope: !4579)
!4581 = !DILocation(line: 323, column: 6, scope: !4564)
!4582 = !DILocation(line: 324, column: 3, scope: !4579)
!4583 = !DILocation(line: 326, column: 17, scope: !4564)
!4584 = !DILocation(line: 326, column: 22, scope: !4564)
!4585 = !DILocation(line: 326, column: 27, scope: !4564)
!4586 = !DILocation(line: 326, column: 11, scope: !4564)
!4587 = !DILocation(line: 326, column: 9, scope: !4564)
!4588 = !DILocation(line: 328, column: 6, scope: !4589)
!4589 = distinct !DILexicalBlock(scope: !4564, file: !3, line: 328, column: 6)
!4590 = !DILocation(line: 328, column: 13, scope: !4589)
!4591 = !DILocation(line: 328, column: 6, scope: !4564)
!4592 = !DILocation(line: 329, column: 22, scope: !4589)
!4593 = !DILocation(line: 329, column: 27, scope: !4589)
!4594 = !DILocation(line: 329, column: 3, scope: !4589)
!4595 = !DILocation(line: 331, column: 6, scope: !4596)
!4596 = distinct !DILexicalBlock(scope: !4564, file: !3, line: 331, column: 6)
!4597 = !DILocation(line: 331, column: 13, scope: !4596)
!4598 = !DILocation(line: 331, column: 6, scope: !4564)
!4599 = !DILocation(line: 332, column: 3, scope: !4596)
!4600 = !DILocation(line: 332, column: 6, scope: !4596)
!4601 = !DILocation(line: 332, column: 13, scope: !4596)
!4602 = !DILocation(line: 332, column: 20, scope: !4596)
!4603 = !DILocation(line: 334, column: 14, scope: !4564)
!4604 = !DILocation(line: 335, column: 6, scope: !4605)
!4605 = distinct !DILexicalBlock(scope: !4564, file: !3, line: 335, column: 6)
!4606 = !DILocation(line: 335, column: 19, scope: !4605)
!4607 = !DILocation(line: 335, column: 6, scope: !4564)
!4608 = !DILocation(line: 336, column: 3, scope: !4605)
!4609 = !DILocation(line: 336, column: 6, scope: !4605)
!4610 = !DILocation(line: 336, column: 13, scope: !4605)
!4611 = !DILocation(line: 336, column: 20, scope: !4605)
!4612 = !DILocation(line: 338, column: 23, scope: !4564)
!4613 = !DILocation(line: 338, column: 28, scope: !4564)
!4614 = !DILocation(line: 338, column: 2, scope: !4564)
!4615 = !DILocation(line: 339, column: 2, scope: !4564)
!4616 = !DILocation(line: 340, column: 1, scope: !4564)
!4617 = distinct !DISubprogram(name: "dt3k_ai_insn_read", scope: !3, file: !3, line: 504, type: !3911, scopeLine: 508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !232)
!4618 = !DILocalVariable(name: "dev", arg: 1, scope: !4617, file: !3, line: 504, type: !184)
!4619 = !DILocation(line: 504, column: 52, scope: !4617)
!4620 = !DILocalVariable(name: "s", arg: 2, scope: !4617, file: !3, line: 505, type: !3814)
!4621 = !DILocation(line: 505, column: 34, scope: !4617)
!4622 = !DILocalVariable(name: "insn", arg: 3, scope: !4617, file: !3, line: 506, type: !3913)
!4623 = !DILocation(line: 506, column: 29, scope: !4617)
!4624 = !DILocalVariable(name: "data", arg: 4, scope: !4617, file: !3, line: 507, type: !2666)
!4625 = !DILocation(line: 507, column: 23, scope: !4617)
!4626 = !DILocalVariable(name: "i", scope: !4617, file: !3, line: 509, type: !134)
!4627 = !DILocation(line: 509, column: 6, scope: !4617)
!4628 = !DILocalVariable(name: "chan", scope: !4617, file: !3, line: 510, type: !7)
!4629 = !DILocation(line: 510, column: 15, scope: !4617)
!4630 = !DILocalVariable(name: "gain", scope: !4617, file: !3, line: 510, type: !7)
!4631 = !DILocation(line: 510, column: 21, scope: !4617)
!4632 = !DILocation(line: 512, column: 9, scope: !4617)
!4633 = !DILocation(line: 512, column: 7, scope: !4617)
!4634 = !DILocation(line: 513, column: 9, scope: !4617)
!4635 = !DILocation(line: 513, column: 7, scope: !4617)
!4636 = !DILocation(line: 516, column: 9, scope: !4637)
!4637 = distinct !DILexicalBlock(scope: !4617, file: !3, line: 516, column: 2)
!4638 = !DILocation(line: 516, column: 7, scope: !4637)
!4639 = !DILocation(line: 516, column: 14, scope: !4640)
!4640 = distinct !DILexicalBlock(scope: !4637, file: !3, line: 516, column: 2)
!4641 = !DILocation(line: 516, column: 18, scope: !4640)
!4642 = !DILocation(line: 516, column: 24, scope: !4640)
!4643 = !DILocation(line: 516, column: 16, scope: !4640)
!4644 = !DILocation(line: 516, column: 2, scope: !4637)
!4645 = !DILocation(line: 517, column: 29, scope: !4640)
!4646 = !DILocation(line: 517, column: 49, scope: !4640)
!4647 = !DILocation(line: 517, column: 55, scope: !4640)
!4648 = !DILocation(line: 517, column: 13, scope: !4640)
!4649 = !DILocation(line: 517, column: 3, scope: !4640)
!4650 = !DILocation(line: 517, column: 8, scope: !4640)
!4651 = !DILocation(line: 517, column: 11, scope: !4640)
!4652 = !DILocation(line: 516, column: 28, scope: !4640)
!4653 = !DILocation(line: 516, column: 2, scope: !4640)
!4654 = distinct !{!4654, !4644, !4655}
!4655 = !DILocation(line: 517, column: 59, scope: !4637)
!4656 = !DILocation(line: 519, column: 9, scope: !4617)
!4657 = !DILocation(line: 519, column: 2, scope: !4617)
!4658 = distinct !DISubprogram(name: "dt3k_ai_cmd", scope: !3, file: !3, line: 453, type: !3928, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !232)
!4659 = !DILocalVariable(name: "dev", arg: 1, scope: !4658, file: !3, line: 453, type: !184)
!4660 = !DILocation(line: 453, column: 46, scope: !4658)
!4661 = !DILocalVariable(name: "s", arg: 2, scope: !4658, file: !3, line: 453, type: !3814)
!4662 = !DILocation(line: 453, column: 76, scope: !4658)
!4663 = !DILocalVariable(name: "cmd", scope: !4658, file: !3, line: 455, type: !3934)
!4664 = !DILocation(line: 455, column: 21, scope: !4658)
!4665 = !DILocation(line: 455, column: 28, scope: !4658)
!4666 = !DILocation(line: 455, column: 31, scope: !4658)
!4667 = !DILocation(line: 455, column: 38, scope: !4658)
!4668 = !DILocalVariable(name: "i", scope: !4658, file: !3, line: 456, type: !134)
!4669 = !DILocation(line: 456, column: 6, scope: !4658)
!4670 = !DILocalVariable(name: "chan", scope: !4658, file: !3, line: 457, type: !7)
!4671 = !DILocation(line: 457, column: 15, scope: !4658)
!4672 = !DILocalVariable(name: "range", scope: !4658, file: !3, line: 457, type: !7)
!4673 = !DILocation(line: 457, column: 21, scope: !4658)
!4674 = !DILocalVariable(name: "aref", scope: !4658, file: !3, line: 457, type: !7)
!4675 = !DILocation(line: 457, column: 28, scope: !4658)
!4676 = !DILocalVariable(name: "divider", scope: !4658, file: !3, line: 458, type: !7)
!4677 = !DILocation(line: 458, column: 15, scope: !4658)
!4678 = !DILocalVariable(name: "tscandiv", scope: !4658, file: !3, line: 459, type: !7)
!4679 = !DILocation(line: 459, column: 15, scope: !4658)
!4680 = !DILocation(line: 461, column: 9, scope: !4681)
!4681 = distinct !DILexicalBlock(scope: !4658, file: !3, line: 461, column: 2)
!4682 = !DILocation(line: 461, column: 7, scope: !4681)
!4683 = !DILocation(line: 461, column: 14, scope: !4684)
!4684 = distinct !DILexicalBlock(scope: !4681, file: !3, line: 461, column: 2)
!4685 = !DILocation(line: 461, column: 18, scope: !4684)
!4686 = !DILocation(line: 461, column: 23, scope: !4684)
!4687 = !DILocation(line: 461, column: 16, scope: !4684)
!4688 = !DILocation(line: 461, column: 2, scope: !4681)
!4689 = !DILocation(line: 462, column: 10, scope: !4690)
!4690 = distinct !DILexicalBlock(scope: !4684, file: !3, line: 461, column: 42)
!4691 = !DILocation(line: 462, column: 8, scope: !4690)
!4692 = !DILocation(line: 463, column: 11, scope: !4690)
!4693 = !DILocation(line: 463, column: 9, scope: !4690)
!4694 = !DILocation(line: 465, column: 11, scope: !4690)
!4695 = !DILocation(line: 465, column: 17, scope: !4690)
!4696 = !DILocation(line: 465, column: 25, scope: !4690)
!4697 = !DILocation(line: 465, column: 23, scope: !4690)
!4698 = !DILocation(line: 465, column: 10, scope: !4690)
!4699 = !DILocation(line: 465, column: 31, scope: !4690)
!4700 = !DILocation(line: 465, column: 36, scope: !4690)
!4701 = !DILocation(line: 465, column: 41, scope: !4690)
!4702 = !DILocation(line: 465, column: 60, scope: !4690)
!4703 = !DILocation(line: 465, column: 58, scope: !4690)
!4704 = !DILocation(line: 465, column: 3, scope: !4690)
!4705 = !DILocation(line: 466, column: 2, scope: !4690)
!4706 = !DILocation(line: 461, column: 38, scope: !4684)
!4707 = !DILocation(line: 461, column: 2, scope: !4684)
!4708 = distinct !{!4708, !4688, !4709}
!4709 = !DILocation(line: 466, column: 2, scope: !4681)
!4710 = !DILocation(line: 467, column: 9, scope: !4658)
!4711 = !DILocation(line: 467, column: 7, scope: !4658)
!4712 = !DILocation(line: 469, column: 9, scope: !4658)
!4713 = !DILocation(line: 469, column: 14, scope: !4658)
!4714 = !DILocation(line: 469, column: 28, scope: !4658)
!4715 = !DILocation(line: 469, column: 33, scope: !4658)
!4716 = !DILocation(line: 469, column: 38, scope: !4658)
!4717 = !DILocation(line: 469, column: 2, scope: !4658)
!4718 = !DILocation(line: 471, column: 6, scope: !4719)
!4719 = distinct !DILexicalBlock(scope: !4658, file: !3, line: 471, column: 6)
!4720 = !DILocation(line: 471, column: 11, scope: !4719)
!4721 = !DILocation(line: 471, column: 23, scope: !4719)
!4722 = !DILocation(line: 471, column: 6, scope: !4658)
!4723 = !DILocation(line: 472, column: 35, scope: !4724)
!4724 = distinct !DILexicalBlock(scope: !4719, file: !3, line: 471, column: 38)
!4725 = !DILocation(line: 472, column: 40, scope: !4724)
!4726 = !DILocation(line: 472, column: 53, scope: !4724)
!4727 = !DILocation(line: 472, column: 58, scope: !4724)
!4728 = !DILocation(line: 472, column: 13, scope: !4724)
!4729 = !DILocation(line: 472, column: 11, scope: !4724)
!4730 = !DILocation(line: 473, column: 11, scope: !4724)
!4731 = !DILocation(line: 473, column: 19, scope: !4724)
!4732 = !DILocation(line: 473, column: 10, scope: !4724)
!4733 = !DILocation(line: 473, column: 27, scope: !4724)
!4734 = !DILocation(line: 473, column: 32, scope: !4724)
!4735 = !DILocation(line: 473, column: 37, scope: !4724)
!4736 = !DILocation(line: 473, column: 3, scope: !4724)
!4737 = !DILocation(line: 474, column: 11, scope: !4724)
!4738 = !DILocation(line: 474, column: 19, scope: !4724)
!4739 = !DILocation(line: 474, column: 10, scope: !4724)
!4740 = !DILocation(line: 474, column: 30, scope: !4724)
!4741 = !DILocation(line: 474, column: 35, scope: !4724)
!4742 = !DILocation(line: 474, column: 40, scope: !4724)
!4743 = !DILocation(line: 474, column: 3, scope: !4724)
!4744 = !DILocation(line: 475, column: 2, scope: !4724)
!4745 = !DILocation(line: 477, column: 6, scope: !4746)
!4746 = distinct !DILexicalBlock(scope: !4658, file: !3, line: 477, column: 6)
!4747 = !DILocation(line: 477, column: 11, scope: !4746)
!4748 = !DILocation(line: 477, column: 26, scope: !4746)
!4749 = !DILocation(line: 477, column: 6, scope: !4658)
!4750 = !DILocation(line: 478, column: 37, scope: !4751)
!4751 = distinct !DILexicalBlock(scope: !4746, file: !3, line: 477, column: 41)
!4752 = !DILocation(line: 478, column: 42, scope: !4751)
!4753 = !DILocation(line: 479, column: 10, scope: !4751)
!4754 = !DILocation(line: 479, column: 15, scope: !4751)
!4755 = !DILocation(line: 478, column: 14, scope: !4751)
!4756 = !DILocation(line: 478, column: 12, scope: !4751)
!4757 = !DILocation(line: 480, column: 11, scope: !4751)
!4758 = !DILocation(line: 480, column: 20, scope: !4751)
!4759 = !DILocation(line: 480, column: 10, scope: !4751)
!4760 = !DILocation(line: 480, column: 28, scope: !4751)
!4761 = !DILocation(line: 480, column: 33, scope: !4751)
!4762 = !DILocation(line: 480, column: 38, scope: !4751)
!4763 = !DILocation(line: 480, column: 3, scope: !4751)
!4764 = !DILocation(line: 481, column: 11, scope: !4751)
!4765 = !DILocation(line: 481, column: 20, scope: !4751)
!4766 = !DILocation(line: 481, column: 10, scope: !4751)
!4767 = !DILocation(line: 481, column: 31, scope: !4751)
!4768 = !DILocation(line: 481, column: 36, scope: !4751)
!4769 = !DILocation(line: 481, column: 41, scope: !4751)
!4770 = !DILocation(line: 481, column: 3, scope: !4751)
!4771 = !DILocation(line: 482, column: 2, scope: !4751)
!4772 = !DILocation(line: 484, column: 40, scope: !4658)
!4773 = !DILocation(line: 484, column: 45, scope: !4658)
!4774 = !DILocation(line: 484, column: 50, scope: !4658)
!4775 = !DILocation(line: 484, column: 2, scope: !4658)
!4776 = !DILocation(line: 485, column: 10, scope: !4658)
!4777 = !DILocation(line: 485, column: 15, scope: !4658)
!4778 = !DILocation(line: 485, column: 9, scope: !4658)
!4779 = !DILocation(line: 486, column: 9, scope: !4658)
!4780 = !DILocation(line: 486, column: 14, scope: !4658)
!4781 = !DILocation(line: 486, column: 19, scope: !4658)
!4782 = !DILocation(line: 485, column: 2, scope: !4658)
!4783 = !DILocation(line: 488, column: 32, scope: !4658)
!4784 = !DILocation(line: 488, column: 37, scope: !4658)
!4785 = !DILocation(line: 488, column: 42, scope: !4658)
!4786 = !DILocation(line: 488, column: 2, scope: !4658)
!4787 = !DILocation(line: 490, column: 24, scope: !4658)
!4788 = !DILocation(line: 490, column: 29, scope: !4658)
!4789 = !DILocation(line: 490, column: 34, scope: !4658)
!4790 = !DILocation(line: 490, column: 2, scope: !4658)
!4791 = !DILocation(line: 491, column: 16, scope: !4658)
!4792 = !DILocation(line: 491, column: 2, scope: !4658)
!4793 = !DILocation(line: 494, column: 9, scope: !4658)
!4794 = !DILocation(line: 494, column: 14, scope: !4658)
!4795 = !DILocation(line: 494, column: 19, scope: !4658)
!4796 = !DILocation(line: 493, column: 2, scope: !4658)
!4797 = !DILocation(line: 496, column: 15, scope: !4658)
!4798 = !DILocation(line: 498, column: 24, scope: !4658)
!4799 = !DILocation(line: 498, column: 29, scope: !4658)
!4800 = !DILocation(line: 498, column: 34, scope: !4658)
!4801 = !DILocation(line: 498, column: 2, scope: !4658)
!4802 = !DILocation(line: 499, column: 16, scope: !4658)
!4803 = !DILocation(line: 499, column: 2, scope: !4658)
!4804 = !DILocation(line: 501, column: 2, scope: !4658)
!4805 = distinct !DISubprogram(name: "dt3k_ai_cmdtest", scope: !3, file: !3, line: 377, type: !3932, scopeLine: 379, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !232)
!4806 = !DILocalVariable(name: "dev", arg: 1, scope: !4805, file: !3, line: 377, type: !184)
!4807 = !DILocation(line: 377, column: 50, scope: !4805)
!4808 = !DILocalVariable(name: "s", arg: 2, scope: !4805, file: !3, line: 378, type: !3814)
!4809 = !DILocation(line: 378, column: 32, scope: !4805)
!4810 = !DILocalVariable(name: "cmd", arg: 3, scope: !4805, file: !3, line: 378, type: !3934)
!4811 = !DILocation(line: 378, column: 54, scope: !4805)
!4812 = !DILocalVariable(name: "board", scope: !4805, file: !3, line: 380, type: !4312)
!4813 = !DILocation(line: 380, column: 31, scope: !4805)
!4814 = !DILocation(line: 380, column: 39, scope: !4805)
!4815 = !DILocation(line: 380, column: 44, scope: !4805)
!4816 = !DILocalVariable(name: "err", scope: !4805, file: !3, line: 381, type: !134)
!4817 = !DILocation(line: 381, column: 6, scope: !4805)
!4818 = !DILocalVariable(name: "arg", scope: !4805, file: !3, line: 382, type: !7)
!4819 = !DILocation(line: 382, column: 15, scope: !4805)
!4820 = !DILocation(line: 386, column: 35, scope: !4805)
!4821 = !DILocation(line: 386, column: 40, scope: !4805)
!4822 = !DILocation(line: 386, column: 9, scope: !4805)
!4823 = !DILocation(line: 386, column: 6, scope: !4805)
!4824 = !DILocation(line: 387, column: 35, scope: !4805)
!4825 = !DILocation(line: 387, column: 40, scope: !4805)
!4826 = !DILocation(line: 387, column: 9, scope: !4805)
!4827 = !DILocation(line: 387, column: 6, scope: !4805)
!4828 = !DILocation(line: 388, column: 35, scope: !4805)
!4829 = !DILocation(line: 388, column: 40, scope: !4805)
!4830 = !DILocation(line: 388, column: 9, scope: !4805)
!4831 = !DILocation(line: 388, column: 6, scope: !4805)
!4832 = !DILocation(line: 389, column: 35, scope: !4805)
!4833 = !DILocation(line: 389, column: 40, scope: !4805)
!4834 = !DILocation(line: 389, column: 9, scope: !4805)
!4835 = !DILocation(line: 389, column: 6, scope: !4805)
!4836 = !DILocation(line: 390, column: 35, scope: !4805)
!4837 = !DILocation(line: 390, column: 40, scope: !4805)
!4838 = !DILocation(line: 390, column: 9, scope: !4805)
!4839 = !DILocation(line: 390, column: 6, scope: !4805)
!4840 = !DILocation(line: 392, column: 6, scope: !4841)
!4841 = distinct !DILexicalBlock(scope: !4805, file: !3, line: 392, column: 6)
!4842 = !DILocation(line: 392, column: 6, scope: !4805)
!4843 = !DILocation(line: 393, column: 3, scope: !4841)
!4844 = !DILocation(line: 400, column: 38, scope: !4805)
!4845 = !DILocation(line: 400, column: 43, scope: !4805)
!4846 = !DILocation(line: 400, column: 9, scope: !4805)
!4847 = !DILocation(line: 400, column: 6, scope: !4805)
!4848 = !DILocation(line: 402, column: 6, scope: !4849)
!4849 = distinct !DILexicalBlock(scope: !4805, file: !3, line: 402, column: 6)
!4850 = !DILocation(line: 402, column: 11, scope: !4849)
!4851 = !DILocation(line: 402, column: 26, scope: !4849)
!4852 = !DILocation(line: 402, column: 6, scope: !4805)
!4853 = !DILocation(line: 403, column: 40, scope: !4854)
!4854 = distinct !DILexicalBlock(scope: !4849, file: !3, line: 402, column: 41)
!4855 = !DILocation(line: 403, column: 45, scope: !4854)
!4856 = !DILocation(line: 404, column: 11, scope: !4854)
!4857 = !DILocation(line: 404, column: 18, scope: !4854)
!4858 = !DILocation(line: 403, column: 10, scope: !4854)
!4859 = !DILocation(line: 403, column: 7, scope: !4854)
!4860 = !DILocation(line: 405, column: 40, scope: !4854)
!4861 = !DILocation(line: 405, column: 45, scope: !4854)
!4862 = !DILocation(line: 405, column: 10, scope: !4854)
!4863 = !DILocation(line: 405, column: 7, scope: !4854)
!4864 = !DILocation(line: 407, column: 2, scope: !4854)
!4865 = !DILocation(line: 409, column: 6, scope: !4866)
!4866 = distinct !DILexicalBlock(scope: !4805, file: !3, line: 409, column: 6)
!4867 = !DILocation(line: 409, column: 11, scope: !4866)
!4868 = !DILocation(line: 409, column: 23, scope: !4866)
!4869 = !DILocation(line: 409, column: 6, scope: !4805)
!4870 = !DILocation(line: 410, column: 40, scope: !4871)
!4871 = distinct !DILexicalBlock(scope: !4866, file: !3, line: 409, column: 38)
!4872 = !DILocation(line: 410, column: 45, scope: !4871)
!4873 = !DILocation(line: 411, column: 11, scope: !4871)
!4874 = !DILocation(line: 411, column: 18, scope: !4871)
!4875 = !DILocation(line: 410, column: 10, scope: !4871)
!4876 = !DILocation(line: 410, column: 7, scope: !4871)
!4877 = !DILocation(line: 412, column: 40, scope: !4871)
!4878 = !DILocation(line: 412, column: 45, scope: !4871)
!4879 = !DILocation(line: 412, column: 10, scope: !4871)
!4880 = !DILocation(line: 412, column: 7, scope: !4871)
!4881 = !DILocation(line: 414, column: 2, scope: !4871)
!4882 = !DILocation(line: 416, column: 38, scope: !4805)
!4883 = !DILocation(line: 416, column: 43, scope: !4805)
!4884 = !DILocation(line: 417, column: 9, scope: !4805)
!4885 = !DILocation(line: 417, column: 14, scope: !4805)
!4886 = !DILocation(line: 416, column: 9, scope: !4805)
!4887 = !DILocation(line: 416, column: 6, scope: !4805)
!4888 = !DILocation(line: 419, column: 6, scope: !4889)
!4889 = distinct !DILexicalBlock(scope: !4805, file: !3, line: 419, column: 6)
!4890 = !DILocation(line: 419, column: 11, scope: !4889)
!4891 = !DILocation(line: 419, column: 20, scope: !4889)
!4892 = !DILocation(line: 419, column: 6, scope: !4805)
!4893 = !DILocation(line: 420, column: 40, scope: !4889)
!4894 = !DILocation(line: 420, column: 45, scope: !4889)
!4895 = !DILocation(line: 420, column: 10, scope: !4889)
!4896 = !DILocation(line: 420, column: 7, scope: !4889)
!4897 = !DILocation(line: 420, column: 3, scope: !4889)
!4898 = !DILocation(line: 422, column: 39, scope: !4889)
!4899 = !DILocation(line: 422, column: 44, scope: !4889)
!4900 = !DILocation(line: 422, column: 10, scope: !4889)
!4901 = !DILocation(line: 422, column: 7, scope: !4889)
!4902 = !DILocation(line: 424, column: 6, scope: !4903)
!4903 = distinct !DILexicalBlock(scope: !4805, file: !3, line: 424, column: 6)
!4904 = !DILocation(line: 424, column: 6, scope: !4805)
!4905 = !DILocation(line: 425, column: 3, scope: !4903)
!4906 = !DILocation(line: 429, column: 6, scope: !4907)
!4907 = distinct !DILexicalBlock(scope: !4805, file: !3, line: 429, column: 6)
!4908 = !DILocation(line: 429, column: 11, scope: !4907)
!4909 = !DILocation(line: 429, column: 26, scope: !4907)
!4910 = !DILocation(line: 429, column: 6, scope: !4805)
!4911 = !DILocation(line: 430, column: 9, scope: !4912)
!4912 = distinct !DILexicalBlock(scope: !4907, file: !3, line: 429, column: 41)
!4913 = !DILocation(line: 430, column: 14, scope: !4912)
!4914 = !DILocation(line: 430, column: 7, scope: !4912)
!4915 = !DILocation(line: 431, column: 31, scope: !4912)
!4916 = !DILocation(line: 431, column: 36, scope: !4912)
!4917 = !DILocation(line: 431, column: 3, scope: !4912)
!4918 = !DILocation(line: 432, column: 39, scope: !4912)
!4919 = !DILocation(line: 432, column: 44, scope: !4912)
!4920 = !DILocation(line: 432, column: 60, scope: !4912)
!4921 = !DILocation(line: 432, column: 10, scope: !4912)
!4922 = !DILocation(line: 432, column: 7, scope: !4912)
!4923 = !DILocation(line: 433, column: 2, scope: !4912)
!4924 = !DILocation(line: 435, column: 6, scope: !4925)
!4925 = distinct !DILexicalBlock(scope: !4805, file: !3, line: 435, column: 6)
!4926 = !DILocation(line: 435, column: 11, scope: !4925)
!4927 = !DILocation(line: 435, column: 23, scope: !4925)
!4928 = !DILocation(line: 435, column: 6, scope: !4805)
!4929 = !DILocation(line: 436, column: 9, scope: !4930)
!4930 = distinct !DILexicalBlock(scope: !4925, file: !3, line: 435, column: 38)
!4931 = !DILocation(line: 436, column: 14, scope: !4930)
!4932 = !DILocation(line: 436, column: 7, scope: !4930)
!4933 = !DILocation(line: 437, column: 30, scope: !4930)
!4934 = !DILocation(line: 437, column: 35, scope: !4930)
!4935 = !DILocation(line: 437, column: 3, scope: !4930)
!4936 = !DILocation(line: 438, column: 39, scope: !4930)
!4937 = !DILocation(line: 438, column: 44, scope: !4930)
!4938 = !DILocation(line: 438, column: 57, scope: !4930)
!4939 = !DILocation(line: 438, column: 10, scope: !4930)
!4940 = !DILocation(line: 438, column: 7, scope: !4930)
!4941 = !DILocation(line: 440, column: 7, scope: !4942)
!4942 = distinct !DILexicalBlock(scope: !4930, file: !3, line: 440, column: 7)
!4943 = !DILocation(line: 440, column: 12, scope: !4942)
!4944 = !DILocation(line: 440, column: 27, scope: !4942)
!4945 = !DILocation(line: 440, column: 7, scope: !4930)
!4946 = !DILocation(line: 441, column: 10, scope: !4947)
!4947 = distinct !DILexicalBlock(scope: !4942, file: !3, line: 440, column: 42)
!4948 = !DILocation(line: 441, column: 15, scope: !4947)
!4949 = !DILocation(line: 441, column: 29, scope: !4947)
!4950 = !DILocation(line: 441, column: 34, scope: !4947)
!4951 = !DILocation(line: 441, column: 27, scope: !4947)
!4952 = !DILocation(line: 441, column: 8, scope: !4947)
!4953 = !DILocation(line: 443, column: 6, scope: !4947)
!4954 = !DILocation(line: 443, column: 11, scope: !4947)
!4955 = !DILocation(line: 443, column: 27, scope: !4947)
!4956 = !DILocation(line: 442, column: 11, scope: !4947)
!4957 = !DILocation(line: 442, column: 8, scope: !4947)
!4958 = !DILocation(line: 444, column: 3, scope: !4947)
!4959 = !DILocation(line: 445, column: 2, scope: !4930)
!4960 = !DILocation(line: 447, column: 6, scope: !4961)
!4961 = distinct !DILexicalBlock(scope: !4805, file: !3, line: 447, column: 6)
!4962 = !DILocation(line: 447, column: 6, scope: !4805)
!4963 = !DILocation(line: 448, column: 3, scope: !4961)
!4964 = !DILocation(line: 450, column: 2, scope: !4805)
!4965 = !DILocation(line: 451, column: 1, scope: !4805)
!4966 = distinct !DISubprogram(name: "dt3k_ai_cancel", scope: !3, file: !3, line: 302, type: !3928, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !232)
!4967 = !DILocalVariable(name: "dev", arg: 1, scope: !4966, file: !3, line: 302, type: !184)
!4968 = !DILocation(line: 302, column: 49, scope: !4966)
!4969 = !DILocalVariable(name: "s", arg: 2, scope: !4966, file: !3, line: 303, type: !3814)
!4970 = !DILocation(line: 303, column: 31, scope: !4966)
!4971 = !DILocation(line: 305, column: 24, scope: !4966)
!4972 = !DILocation(line: 305, column: 29, scope: !4966)
!4973 = !DILocation(line: 305, column: 34, scope: !4966)
!4974 = !DILocation(line: 305, column: 2, scope: !4966)
!4975 = !DILocation(line: 306, column: 16, scope: !4966)
!4976 = !DILocation(line: 306, column: 2, scope: !4966)
!4977 = !DILocation(line: 308, column: 12, scope: !4966)
!4978 = !DILocation(line: 308, column: 17, scope: !4966)
!4979 = !DILocation(line: 308, column: 22, scope: !4966)
!4980 = !DILocation(line: 308, column: 2, scope: !4966)
!4981 = !DILocation(line: 310, column: 2, scope: !4966)
!4982 = distinct !DISubprogram(name: "dt3k_ao_insn_write", scope: !3, file: !3, line: 522, type: !3911, scopeLine: 526, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !232)
!4983 = !DILocalVariable(name: "dev", arg: 1, scope: !4982, file: !3, line: 522, type: !184)
!4984 = !DILocation(line: 522, column: 53, scope: !4982)
!4985 = !DILocalVariable(name: "s", arg: 2, scope: !4982, file: !3, line: 523, type: !3814)
!4986 = !DILocation(line: 523, column: 35, scope: !4982)
!4987 = !DILocalVariable(name: "insn", arg: 3, scope: !4982, file: !3, line: 524, type: !3913)
!4988 = !DILocation(line: 524, column: 30, scope: !4982)
!4989 = !DILocalVariable(name: "data", arg: 4, scope: !4982, file: !3, line: 525, type: !2666)
!4990 = !DILocation(line: 525, column: 24, scope: !4982)
!4991 = !DILocalVariable(name: "chan", scope: !4982, file: !3, line: 527, type: !7)
!4992 = !DILocation(line: 527, column: 15, scope: !4982)
!4993 = !DILocation(line: 527, column: 22, scope: !4982)
!4994 = !DILocalVariable(name: "val", scope: !4982, file: !3, line: 528, type: !7)
!4995 = !DILocation(line: 528, column: 15, scope: !4982)
!4996 = !DILocation(line: 528, column: 21, scope: !4982)
!4997 = !DILocation(line: 528, column: 24, scope: !4982)
!4998 = !DILocation(line: 528, column: 33, scope: !4982)
!4999 = !DILocalVariable(name: "i", scope: !4982, file: !3, line: 529, type: !134)
!5000 = !DILocation(line: 529, column: 6, scope: !4982)
!5001 = !DILocation(line: 531, column: 9, scope: !5002)
!5002 = distinct !DILexicalBlock(scope: !4982, file: !3, line: 531, column: 2)
!5003 = !DILocation(line: 531, column: 7, scope: !5002)
!5004 = !DILocation(line: 531, column: 14, scope: !5005)
!5005 = distinct !DILexicalBlock(scope: !5002, file: !3, line: 531, column: 2)
!5006 = !DILocation(line: 531, column: 18, scope: !5005)
!5007 = !DILocation(line: 531, column: 24, scope: !5005)
!5008 = !DILocation(line: 531, column: 16, scope: !5005)
!5009 = !DILocation(line: 531, column: 2, scope: !5002)
!5010 = !DILocation(line: 532, column: 9, scope: !5011)
!5011 = distinct !DILexicalBlock(scope: !5005, file: !3, line: 531, column: 32)
!5012 = !DILocation(line: 532, column: 14, scope: !5011)
!5013 = !DILocation(line: 532, column: 7, scope: !5011)
!5014 = !DILocation(line: 533, column: 20, scope: !5011)
!5015 = !DILocation(line: 533, column: 40, scope: !5011)
!5016 = !DILocation(line: 533, column: 46, scope: !5011)
!5017 = !DILocation(line: 533, column: 3, scope: !5011)
!5018 = !DILocation(line: 534, column: 2, scope: !5011)
!5019 = !DILocation(line: 531, column: 28, scope: !5005)
!5020 = !DILocation(line: 531, column: 2, scope: !5005)
!5021 = distinct !{!5021, !5009, !5022}
!5022 = !DILocation(line: 534, column: 2, scope: !5002)
!5023 = !DILocation(line: 535, column: 22, scope: !4982)
!5024 = !DILocation(line: 535, column: 2, scope: !4982)
!5025 = !DILocation(line: 535, column: 5, scope: !4982)
!5026 = !DILocation(line: 535, column: 14, scope: !4982)
!5027 = !DILocation(line: 535, column: 20, scope: !4982)
!5028 = !DILocation(line: 537, column: 9, scope: !4982)
!5029 = !DILocation(line: 537, column: 15, scope: !4982)
!5030 = !DILocation(line: 537, column: 2, scope: !4982)
!5031 = distinct !DISubprogram(name: "dt3k_dio_insn_config", scope: !3, file: !3, line: 552, type: !3911, scopeLine: 556, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !232)
!5032 = !DILocalVariable(name: "dev", arg: 1, scope: !5031, file: !3, line: 552, type: !184)
!5033 = !DILocation(line: 552, column: 55, scope: !5031)
!5034 = !DILocalVariable(name: "s", arg: 2, scope: !5031, file: !3, line: 553, type: !3814)
!5035 = !DILocation(line: 553, column: 30, scope: !5031)
!5036 = !DILocalVariable(name: "insn", arg: 3, scope: !5031, file: !3, line: 554, type: !3913)
!5037 = !DILocation(line: 554, column: 25, scope: !5031)
!5038 = !DILocalVariable(name: "data", arg: 4, scope: !5031, file: !3, line: 555, type: !2666)
!5039 = !DILocation(line: 555, column: 19, scope: !5031)
!5040 = !DILocalVariable(name: "chan", scope: !5031, file: !3, line: 557, type: !7)
!5041 = !DILocation(line: 557, column: 15, scope: !5031)
!5042 = !DILocation(line: 557, column: 22, scope: !5031)
!5043 = !DILocalVariable(name: "mask", scope: !5031, file: !3, line: 558, type: !7)
!5044 = !DILocation(line: 558, column: 15, scope: !5031)
!5045 = !DILocalVariable(name: "ret", scope: !5031, file: !3, line: 559, type: !134)
!5046 = !DILocation(line: 559, column: 6, scope: !5031)
!5047 = !DILocation(line: 561, column: 6, scope: !5048)
!5048 = distinct !DILexicalBlock(scope: !5031, file: !3, line: 561, column: 6)
!5049 = !DILocation(line: 561, column: 11, scope: !5048)
!5050 = !DILocation(line: 561, column: 6, scope: !5031)
!5051 = !DILocation(line: 562, column: 8, scope: !5048)
!5052 = !DILocation(line: 562, column: 3, scope: !5048)
!5053 = !DILocation(line: 564, column: 8, scope: !5048)
!5054 = !DILocation(line: 566, column: 31, scope: !5031)
!5055 = !DILocation(line: 566, column: 36, scope: !5031)
!5056 = !DILocation(line: 566, column: 39, scope: !5031)
!5057 = !DILocation(line: 566, column: 45, scope: !5031)
!5058 = !DILocation(line: 566, column: 51, scope: !5031)
!5059 = !DILocation(line: 566, column: 8, scope: !5031)
!5060 = !DILocation(line: 566, column: 6, scope: !5031)
!5061 = !DILocation(line: 567, column: 6, scope: !5062)
!5062 = distinct !DILexicalBlock(scope: !5031, file: !3, line: 567, column: 6)
!5063 = !DILocation(line: 567, column: 6, scope: !5031)
!5064 = !DILocation(line: 568, column: 10, scope: !5062)
!5065 = !DILocation(line: 568, column: 3, scope: !5062)
!5066 = !DILocation(line: 570, column: 18, scope: !5031)
!5067 = !DILocation(line: 570, column: 24, scope: !5031)
!5068 = !DILocation(line: 570, column: 27, scope: !5031)
!5069 = !DILocation(line: 570, column: 35, scope: !5031)
!5070 = !DILocation(line: 570, column: 47, scope: !5031)
!5071 = !DILocation(line: 570, column: 50, scope: !5031)
!5072 = !DILocation(line: 570, column: 58, scope: !5031)
!5073 = !DILocation(line: 570, column: 66, scope: !5031)
!5074 = !DILocation(line: 570, column: 43, scope: !5031)
!5075 = !DILocation(line: 570, column: 2, scope: !5031)
!5076 = !DILocation(line: 572, column: 9, scope: !5031)
!5077 = !DILocation(line: 572, column: 15, scope: !5031)
!5078 = !DILocation(line: 572, column: 2, scope: !5031)
!5079 = !DILocation(line: 573, column: 1, scope: !5031)
!5080 = distinct !DISubprogram(name: "dt3k_dio_insn_bits", scope: !3, file: !3, line: 575, type: !3911, scopeLine: 579, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !232)
!5081 = !DILocalVariable(name: "dev", arg: 1, scope: !5080, file: !3, line: 575, type: !184)
!5082 = !DILocation(line: 575, column: 53, scope: !5080)
!5083 = !DILocalVariable(name: "s", arg: 2, scope: !5080, file: !3, line: 576, type: !3814)
!5084 = !DILocation(line: 576, column: 35, scope: !5080)
!5085 = !DILocalVariable(name: "insn", arg: 3, scope: !5080, file: !3, line: 577, type: !3913)
!5086 = !DILocation(line: 577, column: 30, scope: !5080)
!5087 = !DILocalVariable(name: "data", arg: 4, scope: !5080, file: !3, line: 578, type: !2666)
!5088 = !DILocation(line: 578, column: 24, scope: !5080)
!5089 = !DILocation(line: 580, column: 30, scope: !5090)
!5090 = distinct !DILexicalBlock(scope: !5080, file: !3, line: 580, column: 6)
!5091 = !DILocation(line: 580, column: 33, scope: !5090)
!5092 = !DILocation(line: 580, column: 6, scope: !5090)
!5093 = !DILocation(line: 580, column: 6, scope: !5080)
!5094 = !DILocation(line: 581, column: 20, scope: !5090)
!5095 = !DILocation(line: 581, column: 45, scope: !5090)
!5096 = !DILocation(line: 581, column: 48, scope: !5090)
!5097 = !DILocation(line: 581, column: 3, scope: !5090)
!5098 = !DILocation(line: 583, column: 28, scope: !5080)
!5099 = !DILocation(line: 583, column: 12, scope: !5080)
!5100 = !DILocation(line: 583, column: 2, scope: !5080)
!5101 = !DILocation(line: 583, column: 10, scope: !5080)
!5102 = !DILocation(line: 585, column: 9, scope: !5080)
!5103 = !DILocation(line: 585, column: 15, scope: !5080)
!5104 = !DILocation(line: 585, column: 2, scope: !5080)
!5105 = distinct !DISubprogram(name: "dt3k_mem_insn_read", scope: !3, file: !3, line: 588, type: !3911, scopeLine: 592, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !232)
!5106 = !DILocalVariable(name: "dev", arg: 1, scope: !5105, file: !3, line: 588, type: !184)
!5107 = !DILocation(line: 588, column: 53, scope: !5105)
!5108 = !DILocalVariable(name: "s", arg: 2, scope: !5105, file: !3, line: 589, type: !3814)
!5109 = !DILocation(line: 589, column: 35, scope: !5105)
!5110 = !DILocalVariable(name: "insn", arg: 3, scope: !5105, file: !3, line: 590, type: !3913)
!5111 = !DILocation(line: 590, column: 30, scope: !5105)
!5112 = !DILocalVariable(name: "data", arg: 4, scope: !5105, file: !3, line: 591, type: !2666)
!5113 = !DILocation(line: 591, column: 24, scope: !5105)
!5114 = !DILocalVariable(name: "addr", scope: !5105, file: !3, line: 593, type: !7)
!5115 = !DILocation(line: 593, column: 15, scope: !5105)
!5116 = !DILocation(line: 593, column: 22, scope: !5105)
!5117 = !DILocalVariable(name: "i", scope: !5105, file: !3, line: 594, type: !134)
!5118 = !DILocation(line: 594, column: 6, scope: !5105)
!5119 = !DILocation(line: 596, column: 9, scope: !5120)
!5120 = distinct !DILexicalBlock(scope: !5105, file: !3, line: 596, column: 2)
!5121 = !DILocation(line: 596, column: 7, scope: !5120)
!5122 = !DILocation(line: 596, column: 14, scope: !5123)
!5123 = distinct !DILexicalBlock(scope: !5120, file: !3, line: 596, column: 2)
!5124 = !DILocation(line: 596, column: 18, scope: !5123)
!5125 = !DILocation(line: 596, column: 24, scope: !5123)
!5126 = !DILocation(line: 596, column: 16, scope: !5123)
!5127 = !DILocation(line: 596, column: 2, scope: !5120)
!5128 = !DILocation(line: 597, column: 26, scope: !5129)
!5129 = distinct !DILexicalBlock(scope: !5123, file: !3, line: 596, column: 32)
!5130 = !DILocation(line: 597, column: 31, scope: !5129)
!5131 = !DILocation(line: 597, column: 36, scope: !5129)
!5132 = !DILocation(line: 597, column: 3, scope: !5129)
!5133 = !DILocation(line: 598, column: 10, scope: !5129)
!5134 = !DILocation(line: 598, column: 16, scope: !5129)
!5135 = !DILocation(line: 598, column: 21, scope: !5129)
!5136 = !DILocation(line: 598, column: 26, scope: !5129)
!5137 = !DILocation(line: 598, column: 3, scope: !5129)
!5138 = !DILocation(line: 599, column: 13, scope: !5129)
!5139 = !DILocation(line: 599, column: 18, scope: !5129)
!5140 = !DILocation(line: 599, column: 23, scope: !5129)
!5141 = !DILocation(line: 599, column: 3, scope: !5129)
!5142 = !DILocation(line: 601, column: 17, scope: !5129)
!5143 = !DILocation(line: 601, column: 3, scope: !5129)
!5144 = !DILocation(line: 603, column: 19, scope: !5129)
!5145 = !DILocation(line: 603, column: 24, scope: !5129)
!5146 = !DILocation(line: 603, column: 29, scope: !5129)
!5147 = !DILocation(line: 603, column: 13, scope: !5129)
!5148 = !DILocation(line: 603, column: 3, scope: !5129)
!5149 = !DILocation(line: 603, column: 8, scope: !5129)
!5150 = !DILocation(line: 603, column: 11, scope: !5129)
!5151 = !DILocation(line: 604, column: 2, scope: !5129)
!5152 = !DILocation(line: 596, column: 28, scope: !5123)
!5153 = !DILocation(line: 596, column: 2, scope: !5123)
!5154 = distinct !{!5154, !5127, !5155}
!5155 = !DILocation(line: 604, column: 2, scope: !5120)
!5156 = !DILocation(line: 606, column: 9, scope: !5105)
!5157 = !DILocation(line: 606, column: 2, scope: !5105)
!5158 = distinct !DISubprogram(name: "readw", scope: !5159, file: !5159, line: 58, type: !5160, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !232)
!5159 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!5160 = !DISubroutineType(types: !5161)
!5161 = !{!137, !5162}
!5162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5163, size: 64)
!5163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5164)
!5164 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5165 = !DILocalVariable(name: "addr", arg: 1, scope: !5158, file: !5159, line: 58, type: !5162)
!5166 = !DILocation(line: 58, column: 1, scope: !5158)
!5167 = !DILocalVariable(name: "ret", scope: !5158, file: !5159, line: 58, type: !137)
!5168 = !{i32 -2143411763}
!5169 = distinct !DISubprogram(name: "dt3k_ai_empty_fifo", scope: !3, file: !3, line: 273, type: !5170, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !232)
!5170 = !DISubroutineType(types: !5171)
!5171 = !{null, !184, !3814}
!5172 = !DILocalVariable(name: "dev", arg: 1, scope: !5169, file: !3, line: 273, type: !184)
!5173 = !DILocation(line: 273, column: 54, scope: !5169)
!5174 = !DILocalVariable(name: "s", arg: 2, scope: !5169, file: !3, line: 274, type: !3814)
!5175 = !DILocation(line: 274, column: 36, scope: !5169)
!5176 = !DILocalVariable(name: "devpriv", scope: !5169, file: !3, line: 276, type: !4315)
!5177 = !DILocation(line: 276, column: 23, scope: !5169)
!5178 = !DILocation(line: 276, column: 33, scope: !5169)
!5179 = !DILocation(line: 276, column: 38, scope: !5169)
!5180 = !DILocalVariable(name: "front", scope: !5169, file: !3, line: 277, type: !134)
!5181 = !DILocation(line: 277, column: 6, scope: !5169)
!5182 = !DILocalVariable(name: "rear", scope: !5169, file: !3, line: 278, type: !134)
!5183 = !DILocation(line: 278, column: 6, scope: !5169)
!5184 = !DILocalVariable(name: "count", scope: !5169, file: !3, line: 279, type: !134)
!5185 = !DILocation(line: 279, column: 6, scope: !5169)
!5186 = !DILocalVariable(name: "i", scope: !5169, file: !3, line: 280, type: !134)
!5187 = !DILocation(line: 280, column: 6, scope: !5169)
!5188 = !DILocalVariable(name: "data", scope: !5169, file: !3, line: 281, type: !137)
!5189 = !DILocation(line: 281, column: 17, scope: !5169)
!5190 = !DILocation(line: 283, column: 16, scope: !5169)
!5191 = !DILocation(line: 283, column: 21, scope: !5169)
!5192 = !DILocation(line: 283, column: 26, scope: !5169)
!5193 = !DILocation(line: 283, column: 10, scope: !5169)
!5194 = !DILocation(line: 283, column: 8, scope: !5169)
!5195 = !DILocation(line: 284, column: 10, scope: !5169)
!5196 = !DILocation(line: 284, column: 18, scope: !5169)
!5197 = !DILocation(line: 284, column: 27, scope: !5169)
!5198 = !DILocation(line: 284, column: 16, scope: !5169)
!5199 = !DILocation(line: 284, column: 8, scope: !5169)
!5200 = !DILocation(line: 285, column: 6, scope: !5201)
!5201 = distinct !DILexicalBlock(scope: !5169, file: !3, line: 285, column: 6)
!5202 = !DILocation(line: 285, column: 12, scope: !5201)
!5203 = !DILocation(line: 285, column: 6, scope: !5169)
!5204 = !DILocation(line: 286, column: 9, scope: !5201)
!5205 = !DILocation(line: 286, column: 3, scope: !5201)
!5206 = !DILocation(line: 288, column: 9, scope: !5169)
!5207 = !DILocation(line: 288, column: 18, scope: !5169)
!5208 = !DILocation(line: 288, column: 7, scope: !5169)
!5209 = !DILocation(line: 290, column: 9, scope: !5210)
!5210 = distinct !DILexicalBlock(scope: !5169, file: !3, line: 290, column: 2)
!5211 = !DILocation(line: 290, column: 7, scope: !5210)
!5212 = !DILocation(line: 290, column: 14, scope: !5213)
!5213 = distinct !DILexicalBlock(scope: !5210, file: !3, line: 290, column: 2)
!5214 = !DILocation(line: 290, column: 18, scope: !5213)
!5215 = !DILocation(line: 290, column: 16, scope: !5213)
!5216 = !DILocation(line: 290, column: 2, scope: !5210)
!5217 = !DILocation(line: 291, column: 16, scope: !5218)
!5218 = distinct !DILexicalBlock(scope: !5213, file: !3, line: 290, column: 30)
!5219 = !DILocation(line: 291, column: 21, scope: !5218)
!5220 = !DILocation(line: 291, column: 26, scope: !5218)
!5221 = !DILocation(line: 291, column: 45, scope: !5218)
!5222 = !DILocation(line: 291, column: 43, scope: !5218)
!5223 = !DILocation(line: 291, column: 10, scope: !5218)
!5224 = !DILocation(line: 291, column: 8, scope: !5218)
!5225 = !DILocation(line: 292, column: 28, scope: !5218)
!5226 = !DILocation(line: 292, column: 31, scope: !5218)
!5227 = !DILocation(line: 292, column: 3, scope: !5218)
!5228 = !DILocation(line: 293, column: 7, scope: !5218)
!5229 = !DILocation(line: 294, column: 7, scope: !5230)
!5230 = distinct !DILexicalBlock(scope: !5218, file: !3, line: 294, column: 7)
!5231 = !DILocation(line: 294, column: 12, scope: !5230)
!5232 = !DILocation(line: 294, column: 7, scope: !5218)
!5233 = !DILocation(line: 295, column: 9, scope: !5230)
!5234 = !DILocation(line: 295, column: 4, scope: !5230)
!5235 = !DILocation(line: 296, column: 2, scope: !5218)
!5236 = !DILocation(line: 290, column: 26, scope: !5213)
!5237 = !DILocation(line: 290, column: 2, scope: !5213)
!5238 = distinct !{!5238, !5216, !5239}
!5239 = !DILocation(line: 296, column: 2, scope: !5210)
!5240 = !DILocation(line: 298, column: 21, scope: !5169)
!5241 = !DILocation(line: 298, column: 2, scope: !5169)
!5242 = !DILocation(line: 298, column: 11, scope: !5169)
!5243 = !DILocation(line: 298, column: 19, scope: !5169)
!5244 = !DILocation(line: 299, column: 9, scope: !5169)
!5245 = !DILocation(line: 299, column: 15, scope: !5169)
!5246 = !DILocation(line: 299, column: 20, scope: !5169)
!5247 = !DILocation(line: 299, column: 25, scope: !5169)
!5248 = !DILocation(line: 299, column: 2, scope: !5169)
!5249 = !DILocation(line: 300, column: 1, scope: !5169)
!5250 = distinct !DISubprogram(name: "writew", scope: !5159, file: !5159, line: 66, type: !5251, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !232)
!5251 = !DISubroutineType(types: !5252)
!5252 = !{null, !137, !5253}
!5253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5164, size: 64)
!5254 = !DILocalVariable(name: "val", arg: 1, scope: !5250, file: !5159, line: 66, type: !137)
!5255 = !DILocation(line: 66, column: 1, scope: !5250)
!5256 = !DILocalVariable(name: "addr", arg: 2, scope: !5250, file: !5159, line: 66, type: !5253)
!5257 = !{i32 -2143409339}
!5258 = distinct !DISubprogram(name: "dt3k_readsingle", scope: !3, file: !3, line: 247, type: !5259, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !232)
!5259 = !DISubroutineType(types: !5260)
!5260 = !{!7, !184, !7, !7, !7}
!5261 = !DILocalVariable(name: "dev", arg: 1, scope: !5258, file: !3, line: 247, type: !184)
!5262 = !DILocation(line: 247, column: 59, scope: !5258)
!5263 = !DILocalVariable(name: "subsys", arg: 2, scope: !5258, file: !3, line: 248, type: !7)
!5264 = !DILocation(line: 248, column: 22, scope: !5258)
!5265 = !DILocalVariable(name: "chan", arg: 3, scope: !5258, file: !3, line: 248, type: !7)
!5266 = !DILocation(line: 248, column: 43, scope: !5258)
!5267 = !DILocalVariable(name: "gain", arg: 4, scope: !5258, file: !3, line: 249, type: !7)
!5268 = !DILocation(line: 249, column: 22, scope: !5258)
!5269 = !DILocation(line: 251, column: 9, scope: !5258)
!5270 = !DILocation(line: 251, column: 17, scope: !5258)
!5271 = !DILocation(line: 251, column: 22, scope: !5258)
!5272 = !DILocation(line: 251, column: 27, scope: !5258)
!5273 = !DILocation(line: 251, column: 2, scope: !5258)
!5274 = !DILocation(line: 253, column: 9, scope: !5258)
!5275 = !DILocation(line: 253, column: 15, scope: !5258)
!5276 = !DILocation(line: 253, column: 20, scope: !5258)
!5277 = !DILocation(line: 253, column: 25, scope: !5258)
!5278 = !DILocation(line: 253, column: 2, scope: !5258)
!5279 = !DILocation(line: 254, column: 9, scope: !5258)
!5280 = !DILocation(line: 254, column: 15, scope: !5258)
!5281 = !DILocation(line: 254, column: 20, scope: !5258)
!5282 = !DILocation(line: 254, column: 25, scope: !5258)
!5283 = !DILocation(line: 254, column: 2, scope: !5258)
!5284 = !DILocation(line: 256, column: 16, scope: !5258)
!5285 = !DILocation(line: 256, column: 2, scope: !5258)
!5286 = !DILocation(line: 258, column: 15, scope: !5258)
!5287 = !DILocation(line: 258, column: 20, scope: !5258)
!5288 = !DILocation(line: 258, column: 25, scope: !5258)
!5289 = !DILocation(line: 258, column: 9, scope: !5258)
!5290 = !DILocation(line: 258, column: 2, scope: !5258)
!5291 = distinct !DISubprogram(name: "dt3k_send_cmd", scope: !3, file: !3, line: 227, type: !5292, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !232)
!5292 = !DISubroutineType(types: !5293)
!5293 = !{null, !184, !7}
!5294 = !DILocalVariable(name: "dev", arg: 1, scope: !5291, file: !3, line: 227, type: !184)
!5295 = !DILocation(line: 227, column: 49, scope: !5291)
!5296 = !DILocalVariable(name: "cmd", arg: 2, scope: !5291, file: !3, line: 227, type: !7)
!5297 = !DILocation(line: 227, column: 67, scope: !5291)
!5298 = !DILocalVariable(name: "i", scope: !5291, file: !3, line: 229, type: !134)
!5299 = !DILocation(line: 229, column: 6, scope: !5291)
!5300 = !DILocalVariable(name: "status", scope: !5291, file: !3, line: 230, type: !7)
!5301 = !DILocation(line: 230, column: 15, scope: !5291)
!5302 = !DILocation(line: 232, column: 9, scope: !5291)
!5303 = !DILocation(line: 232, column: 14, scope: !5291)
!5304 = !DILocation(line: 232, column: 19, scope: !5291)
!5305 = !DILocation(line: 232, column: 24, scope: !5291)
!5306 = !DILocation(line: 232, column: 2, scope: !5291)
!5307 = !DILocation(line: 234, column: 9, scope: !5308)
!5308 = distinct !DILexicalBlock(scope: !5291, file: !3, line: 234, column: 2)
!5309 = !DILocation(line: 234, column: 7, scope: !5308)
!5310 = !DILocation(line: 234, column: 14, scope: !5311)
!5311 = distinct !DILexicalBlock(scope: !5308, file: !3, line: 234, column: 2)
!5312 = !DILocation(line: 234, column: 16, scope: !5311)
!5313 = !DILocation(line: 234, column: 2, scope: !5308)
!5314 = !DILocation(line: 235, column: 18, scope: !5315)
!5315 = distinct !DILexicalBlock(scope: !5311, file: !3, line: 234, column: 40)
!5316 = !DILocation(line: 235, column: 23, scope: !5315)
!5317 = !DILocation(line: 235, column: 28, scope: !5315)
!5318 = !DILocation(line: 235, column: 12, scope: !5315)
!5319 = !DILocation(line: 235, column: 10, scope: !5315)
!5320 = !DILocation(line: 236, column: 10, scope: !5315)
!5321 = !DILocation(line: 237, column: 7, scope: !5322)
!5322 = distinct !DILexicalBlock(scope: !5315, file: !3, line: 237, column: 7)
!5323 = !DILocation(line: 237, column: 14, scope: !5322)
!5324 = !DILocation(line: 237, column: 7, scope: !5315)
!5325 = !DILocation(line: 238, column: 4, scope: !5322)
!5326 = !DILocation(line: 239, column: 3, scope: !5327)
!5327 = distinct !DILexicalBlock(scope: !5328, file: !3, line: 239, column: 3)
!5328 = distinct !DILexicalBlock(scope: !5329, file: !3, line: 239, column: 3)
!5329 = distinct !DILexicalBlock(scope: !5330, file: !3, line: 239, column: 3)
!5330 = distinct !DILexicalBlock(scope: !5315, file: !3, line: 239, column: 3)
!5331 = !DILocation(line: 240, column: 2, scope: !5315)
!5332 = !DILocation(line: 234, column: 36, scope: !5311)
!5333 = !DILocation(line: 234, column: 2, scope: !5311)
!5334 = distinct !{!5334, !5313, !5335}
!5335 = !DILocation(line: 240, column: 2, scope: !5308)
!5336 = !DILocation(line: 242, column: 6, scope: !5337)
!5337 = distinct !DILexicalBlock(scope: !5291, file: !3, line: 242, column: 6)
!5338 = !DILocation(line: 242, column: 13, scope: !5337)
!5339 = !DILocation(line: 242, column: 6, scope: !5291)
!5340 = !DILocation(line: 243, column: 3, scope: !5337)
!5341 = !DILocation(line: 245, column: 1, scope: !5291)
!5342 = distinct !DISubprogram(name: "dt3k_ns_to_timer", scope: !3, file: !3, line: 342, type: !5343, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !232)
!5343 = !DISubroutineType(types: !5344)
!5344 = !{!134, !7, !2666, !7}
!5345 = !DILocalVariable(name: "timer_base", arg: 1, scope: !5342, file: !3, line: 342, type: !7)
!5346 = !DILocation(line: 342, column: 42, scope: !5342)
!5347 = !DILocalVariable(name: "nanosec", arg: 2, scope: !5342, file: !3, line: 342, type: !2666)
!5348 = !DILocation(line: 342, column: 68, scope: !5342)
!5349 = !DILocalVariable(name: "flags", arg: 3, scope: !5342, file: !3, line: 343, type: !7)
!5350 = !DILocation(line: 343, column: 21, scope: !5342)
!5351 = !DILocalVariable(name: "divider", scope: !5342, file: !3, line: 345, type: !7)
!5352 = !DILocation(line: 345, column: 15, scope: !5342)
!5353 = !DILocalVariable(name: "base", scope: !5342, file: !3, line: 345, type: !7)
!5354 = !DILocation(line: 345, column: 24, scope: !5342)
!5355 = !DILocalVariable(name: "prescale", scope: !5342, file: !3, line: 345, type: !7)
!5356 = !DILocation(line: 345, column: 30, scope: !5342)
!5357 = !DILocation(line: 350, column: 16, scope: !5358)
!5358 = distinct !DILexicalBlock(scope: !5342, file: !3, line: 350, column: 2)
!5359 = !DILocation(line: 350, column: 7, scope: !5358)
!5360 = !DILocation(line: 350, column: 21, scope: !5361)
!5361 = distinct !DILexicalBlock(scope: !5358, file: !3, line: 350, column: 2)
!5362 = !DILocation(line: 350, column: 30, scope: !5361)
!5363 = !DILocation(line: 350, column: 2, scope: !5358)
!5364 = !DILocation(line: 351, column: 10, scope: !5365)
!5365 = distinct !DILexicalBlock(scope: !5361, file: !3, line: 350, column: 48)
!5366 = !DILocation(line: 351, column: 24, scope: !5365)
!5367 = !DILocation(line: 351, column: 33, scope: !5365)
!5368 = !DILocation(line: 351, column: 21, scope: !5365)
!5369 = !DILocation(line: 351, column: 8, scope: !5365)
!5370 = !DILocation(line: 352, column: 11, scope: !5365)
!5371 = !DILocation(line: 352, column: 17, scope: !5365)
!5372 = !DILocation(line: 352, column: 3, scope: !5365)
!5373 = !DILocation(line: 352, column: 36, scope: !5365)
!5374 = !DILocalVariable(name: "__x", scope: !5375, file: !3, line: 355, type: !7)
!5375 = distinct !DILexicalBlock(scope: !5376, file: !3, line: 355, column: 14)
!5376 = distinct !DILexicalBlock(scope: !5365, file: !3, line: 352, column: 36)
!5377 = !DILocation(line: 355, column: 14, scope: !5375)
!5378 = !DILocalVariable(name: "__d", scope: !5375, file: !3, line: 355, type: !7)
!5379 = !DILocation(line: 355, column: 12, scope: !5376)
!5380 = !DILocation(line: 356, column: 4, scope: !5376)
!5381 = !DILocation(line: 358, column: 16, scope: !5376)
!5382 = !DILocation(line: 358, column: 15, scope: !5376)
!5383 = !DILocation(line: 358, column: 27, scope: !5376)
!5384 = !DILocation(line: 358, column: 25, scope: !5376)
!5385 = !DILocation(line: 358, column: 12, scope: !5376)
!5386 = !DILocation(line: 359, column: 4, scope: !5376)
!5387 = !DILocation(line: 361, column: 14, scope: !5376)
!5388 = !DILocation(line: 361, column: 12, scope: !5376)
!5389 = !DILocation(line: 362, column: 4, scope: !5376)
!5390 = !DILocation(line: 364, column: 7, scope: !5391)
!5391 = distinct !DILexicalBlock(scope: !5365, file: !3, line: 364, column: 7)
!5392 = !DILocation(line: 364, column: 15, scope: !5391)
!5393 = !DILocation(line: 364, column: 7, scope: !5365)
!5394 = !DILocation(line: 365, column: 15, scope: !5395)
!5395 = distinct !DILexicalBlock(scope: !5391, file: !3, line: 364, column: 24)
!5396 = !DILocation(line: 365, column: 25, scope: !5395)
!5397 = !DILocation(line: 365, column: 23, scope: !5395)
!5398 = !DILocation(line: 365, column: 5, scope: !5395)
!5399 = !DILocation(line: 365, column: 13, scope: !5395)
!5400 = !DILocation(line: 366, column: 12, scope: !5395)
!5401 = !DILocation(line: 366, column: 21, scope: !5395)
!5402 = !DILocation(line: 366, column: 31, scope: !5395)
!5403 = !DILocation(line: 366, column: 28, scope: !5395)
!5404 = !DILocation(line: 366, column: 4, scope: !5395)
!5405 = !DILocation(line: 368, column: 2, scope: !5365)
!5406 = !DILocation(line: 350, column: 44, scope: !5361)
!5407 = !DILocation(line: 350, column: 2, scope: !5361)
!5408 = distinct !{!5408, !5363, !5409}
!5409 = !DILocation(line: 368, column: 2, scope: !5358)
!5410 = !DILocation(line: 370, column: 11, scope: !5342)
!5411 = !DILocation(line: 371, column: 9, scope: !5342)
!5412 = !DILocation(line: 371, column: 23, scope: !5342)
!5413 = !DILocation(line: 371, column: 32, scope: !5342)
!5414 = !DILocation(line: 371, column: 20, scope: !5342)
!5415 = !DILocation(line: 371, column: 7, scope: !5342)
!5416 = !DILocation(line: 372, column: 10, scope: !5342)
!5417 = !DILocation(line: 373, column: 13, scope: !5342)
!5418 = !DILocation(line: 373, column: 23, scope: !5342)
!5419 = !DILocation(line: 373, column: 21, scope: !5342)
!5420 = !DILocation(line: 373, column: 3, scope: !5342)
!5421 = !DILocation(line: 373, column: 11, scope: !5342)
!5422 = !DILocation(line: 374, column: 10, scope: !5342)
!5423 = !DILocation(line: 374, column: 19, scope: !5342)
!5424 = !DILocation(line: 374, column: 29, scope: !5342)
!5425 = !DILocation(line: 374, column: 26, scope: !5342)
!5426 = !DILocation(line: 374, column: 2, scope: !5342)
!5427 = !DILocation(line: 375, column: 1, scope: !5342)
!5428 = distinct !DISubprogram(name: "comedi_check_trigger_src", scope: !123, file: !123, line: 859, type: !5429, scopeLine: 861, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !232)
!5429 = !DISubroutineType(types: !5430)
!5430 = !{!134, !2666, !7}
!5431 = !DILocalVariable(name: "src", arg: 1, scope: !5428, file: !123, line: 859, type: !2666)
!5432 = !DILocation(line: 859, column: 58, scope: !5428)
!5433 = !DILocalVariable(name: "flags", arg: 2, scope: !5428, file: !123, line: 860, type: !7)
!5434 = !DILocation(line: 860, column: 22, scope: !5428)
!5435 = !DILocalVariable(name: "orig_src", scope: !5428, file: !123, line: 862, type: !7)
!5436 = !DILocation(line: 862, column: 15, scope: !5428)
!5437 = !DILocation(line: 862, column: 27, scope: !5428)
!5438 = !DILocation(line: 862, column: 26, scope: !5428)
!5439 = !DILocation(line: 864, column: 9, scope: !5428)
!5440 = !DILocation(line: 864, column: 20, scope: !5428)
!5441 = !DILocation(line: 864, column: 18, scope: !5428)
!5442 = !DILocation(line: 864, column: 3, scope: !5428)
!5443 = !DILocation(line: 864, column: 7, scope: !5428)
!5444 = !DILocation(line: 865, column: 7, scope: !5445)
!5445 = distinct !DILexicalBlock(scope: !5428, file: !123, line: 865, column: 6)
!5446 = !DILocation(line: 865, column: 6, scope: !5445)
!5447 = !DILocation(line: 865, column: 11, scope: !5445)
!5448 = !DILocation(line: 865, column: 27, scope: !5445)
!5449 = !DILocation(line: 865, column: 31, scope: !5445)
!5450 = !DILocation(line: 865, column: 30, scope: !5445)
!5451 = !DILocation(line: 865, column: 38, scope: !5445)
!5452 = !DILocation(line: 865, column: 35, scope: !5445)
!5453 = !DILocation(line: 865, column: 6, scope: !5428)
!5454 = !DILocation(line: 866, column: 3, scope: !5445)
!5455 = !DILocation(line: 867, column: 2, scope: !5428)
!5456 = !DILocation(line: 868, column: 1, scope: !5428)
!5457 = distinct !DISubprogram(name: "comedi_check_trigger_arg_is", scope: !123, file: !123, line: 897, type: !5429, scopeLine: 899, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !232)
!5458 = !DILocalVariable(name: "arg", arg: 1, scope: !5457, file: !123, line: 897, type: !2666)
!5459 = !DILocation(line: 897, column: 61, scope: !5457)
!5460 = !DILocalVariable(name: "val", arg: 2, scope: !5457, file: !123, line: 898, type: !7)
!5461 = !DILocation(line: 898, column: 25, scope: !5457)
!5462 = !DILocation(line: 900, column: 7, scope: !5463)
!5463 = distinct !DILexicalBlock(scope: !5457, file: !123, line: 900, column: 6)
!5464 = !DILocation(line: 900, column: 6, scope: !5463)
!5465 = !DILocation(line: 900, column: 14, scope: !5463)
!5466 = !DILocation(line: 900, column: 11, scope: !5463)
!5467 = !DILocation(line: 900, column: 6, scope: !5457)
!5468 = !DILocation(line: 901, column: 10, scope: !5469)
!5469 = distinct !DILexicalBlock(scope: !5463, file: !123, line: 900, column: 19)
!5470 = !DILocation(line: 901, column: 4, scope: !5469)
!5471 = !DILocation(line: 901, column: 8, scope: !5469)
!5472 = !DILocation(line: 902, column: 3, scope: !5469)
!5473 = !DILocation(line: 904, column: 2, scope: !5457)
!5474 = !DILocation(line: 905, column: 1, scope: !5457)
!5475 = distinct !DISubprogram(name: "comedi_check_trigger_arg_min", scope: !123, file: !123, line: 918, type: !5429, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !232)
!5476 = !DILocalVariable(name: "arg", arg: 1, scope: !5475, file: !123, line: 918, type: !2666)
!5477 = !DILocation(line: 918, column: 62, scope: !5475)
!5478 = !DILocalVariable(name: "val", arg: 2, scope: !5475, file: !123, line: 919, type: !7)
!5479 = !DILocation(line: 919, column: 26, scope: !5475)
!5480 = !DILocation(line: 921, column: 7, scope: !5481)
!5481 = distinct !DILexicalBlock(scope: !5475, file: !123, line: 921, column: 6)
!5482 = !DILocation(line: 921, column: 6, scope: !5481)
!5483 = !DILocation(line: 921, column: 13, scope: !5481)
!5484 = !DILocation(line: 921, column: 11, scope: !5481)
!5485 = !DILocation(line: 921, column: 6, scope: !5475)
!5486 = !DILocation(line: 922, column: 10, scope: !5487)
!5487 = distinct !DILexicalBlock(scope: !5481, file: !123, line: 921, column: 18)
!5488 = !DILocation(line: 922, column: 4, scope: !5487)
!5489 = !DILocation(line: 922, column: 8, scope: !5487)
!5490 = !DILocation(line: 923, column: 3, scope: !5487)
!5491 = !DILocation(line: 925, column: 2, scope: !5475)
!5492 = !DILocation(line: 926, column: 1, scope: !5475)
!5493 = distinct !DISubprogram(name: "comedi_check_trigger_arg_max", scope: !123, file: !123, line: 939, type: !5429, scopeLine: 941, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !232)
!5494 = !DILocalVariable(name: "arg", arg: 1, scope: !5493, file: !123, line: 939, type: !2666)
!5495 = !DILocation(line: 939, column: 62, scope: !5493)
!5496 = !DILocalVariable(name: "val", arg: 2, scope: !5493, file: !123, line: 940, type: !7)
!5497 = !DILocation(line: 940, column: 26, scope: !5493)
!5498 = !DILocation(line: 942, column: 7, scope: !5499)
!5499 = distinct !DILexicalBlock(scope: !5493, file: !123, line: 942, column: 6)
!5500 = !DILocation(line: 942, column: 6, scope: !5499)
!5501 = !DILocation(line: 942, column: 13, scope: !5499)
!5502 = !DILocation(line: 942, column: 11, scope: !5499)
!5503 = !DILocation(line: 942, column: 6, scope: !5493)
!5504 = !DILocation(line: 943, column: 10, scope: !5505)
!5505 = distinct !DILexicalBlock(scope: !5499, file: !123, line: 942, column: 18)
!5506 = !DILocation(line: 943, column: 4, scope: !5505)
!5507 = !DILocation(line: 943, column: 8, scope: !5505)
!5508 = !DILocation(line: 944, column: 3, scope: !5505)
!5509 = !DILocation(line: 946, column: 2, scope: !5493)
!5510 = !DILocation(line: 947, column: 1, scope: !5493)
!5511 = distinct !DISubprogram(name: "dt3k_writesingle", scope: !3, file: !3, line: 261, type: !5512, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !232)
!5512 = !DISubroutineType(types: !5513)
!5513 = !{null, !184, !7, !7, !7}
!5514 = !DILocalVariable(name: "dev", arg: 1, scope: !5511, file: !3, line: 261, type: !184)
!5515 = !DILocation(line: 261, column: 52, scope: !5511)
!5516 = !DILocalVariable(name: "subsys", arg: 2, scope: !5511, file: !3, line: 261, type: !7)
!5517 = !DILocation(line: 261, column: 70, scope: !5511)
!5518 = !DILocalVariable(name: "chan", arg: 3, scope: !5511, file: !3, line: 262, type: !7)
!5519 = !DILocation(line: 262, column: 22, scope: !5511)
!5520 = !DILocalVariable(name: "data", arg: 4, scope: !5511, file: !3, line: 262, type: !7)
!5521 = !DILocation(line: 262, column: 41, scope: !5511)
!5522 = !DILocation(line: 264, column: 9, scope: !5511)
!5523 = !DILocation(line: 264, column: 17, scope: !5511)
!5524 = !DILocation(line: 264, column: 22, scope: !5511)
!5525 = !DILocation(line: 264, column: 27, scope: !5511)
!5526 = !DILocation(line: 264, column: 2, scope: !5511)
!5527 = !DILocation(line: 266, column: 9, scope: !5511)
!5528 = !DILocation(line: 266, column: 15, scope: !5511)
!5529 = !DILocation(line: 266, column: 20, scope: !5511)
!5530 = !DILocation(line: 266, column: 25, scope: !5511)
!5531 = !DILocation(line: 266, column: 2, scope: !5511)
!5532 = !DILocation(line: 267, column: 12, scope: !5511)
!5533 = !DILocation(line: 267, column: 17, scope: !5511)
!5534 = !DILocation(line: 267, column: 22, scope: !5511)
!5535 = !DILocation(line: 267, column: 2, scope: !5511)
!5536 = !DILocation(line: 268, column: 9, scope: !5511)
!5537 = !DILocation(line: 268, column: 15, scope: !5511)
!5538 = !DILocation(line: 268, column: 20, scope: !5511)
!5539 = !DILocation(line: 268, column: 25, scope: !5511)
!5540 = !DILocation(line: 268, column: 2, scope: !5511)
!5541 = !DILocation(line: 270, column: 16, scope: !5511)
!5542 = !DILocation(line: 270, column: 2, scope: !5511)
!5543 = !DILocation(line: 271, column: 1, scope: !5511)
!5544 = distinct !DISubprogram(name: "dt3k_dio_config", scope: !3, file: !3, line: 540, type: !5545, scopeLine: 541, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !232)
!5545 = !DISubroutineType(types: !5546)
!5546 = !{null, !184, !134}
!5547 = !DILocalVariable(name: "dev", arg: 1, scope: !5544, file: !3, line: 540, type: !184)
!5548 = !DILocation(line: 540, column: 51, scope: !5544)
!5549 = !DILocalVariable(name: "bits", arg: 2, scope: !5544, file: !3, line: 540, type: !134)
!5550 = !DILocation(line: 540, column: 60, scope: !5544)
!5551 = !DILocation(line: 543, column: 26, scope: !5544)
!5552 = !DILocation(line: 543, column: 31, scope: !5544)
!5553 = !DILocation(line: 543, column: 36, scope: !5544)
!5554 = !DILocation(line: 543, column: 2, scope: !5544)
!5555 = !DILocation(line: 545, column: 9, scope: !5544)
!5556 = !DILocation(line: 545, column: 15, scope: !5544)
!5557 = !DILocation(line: 545, column: 20, scope: !5544)
!5558 = !DILocation(line: 545, column: 25, scope: !5544)
!5559 = !DILocation(line: 545, column: 2, scope: !5544)
!5560 = !DILocation(line: 549, column: 16, scope: !5544)
!5561 = !DILocation(line: 549, column: 2, scope: !5544)
!5562 = !DILocation(line: 550, column: 1, scope: !5544)
!5563 = distinct !DISubprogram(name: "dt3000_pci_probe", scope: !3, file: !3, line: 712, type: !4028, scopeLine: 714, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !232)
!5564 = !DILocalVariable(name: "dev", arg: 1, scope: !5563, file: !3, line: 712, type: !4030)
!5565 = !DILocation(line: 712, column: 45, scope: !5563)
!5566 = !DILocalVariable(name: "id", arg: 2, scope: !5563, file: !3, line: 713, type: !4015)
!5567 = !DILocation(line: 713, column: 36, scope: !5563)
!5568 = !DILocation(line: 715, column: 32, scope: !5563)
!5569 = !DILocation(line: 715, column: 53, scope: !5563)
!5570 = !DILocation(line: 715, column: 57, scope: !5563)
!5571 = !DILocation(line: 715, column: 9, scope: !5563)
!5572 = !DILocation(line: 715, column: 2, scope: !5563)
