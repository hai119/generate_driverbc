; ModuleID = '../bcout/drivers/staging/comedi/drivers.llvm.bc'
source_filename = "drivers/staging/comedi/drivers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
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
%struct.file = type { %union.anon.0, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.62, %struct.list_head, %struct.list_head, %union.anon.63 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.1, i8* }
%union.anon.1 = type { i64 }
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
%struct.page = type { i64, %union.anon.2, %union.anon.52, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
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
%struct.of_device_id = type opaque
%struct.acpi_device_id = type opaque
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
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
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
%struct.kmem_cache = type opaque
%struct.firmware = type { i64, i8*, i8* }

@comedi_drivers_list_lock = dso_local global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @comedi_drivers_list_lock to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @comedi_drivers_list_lock to i8*), i64 8) to %struct.list_head*) } }, align 8, !dbg !0
@jiffies = external dso_local global i64, align 8
@.str = private unnamed_addr constant [42 x i8] c"%s: a I/O base address must be specified\0A\00", align 1
@ioport_resource = external dso_local global %struct.resource, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"%s: I/O port conflict (%#lx,%lu)\0A\00", align 1
@comedi_drivers = dso_local global %struct.comedi_driver* null, align 8, !dbg !158
@.str.2 = private unnamed_addr constant [57 x i8] c"driver '%s' does not support attach using comedi_config\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"\014BUG! %s called with NULL hardware_device\0A\00", align 1
@__func__.comedi_auto_config = private unnamed_addr constant [19 x i8] c"comedi_auto_config\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"BUG! %s called with NULL comedi driver\0A\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"BUG! comedi driver '%s' has no auto_attach handler\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"driver '%s' could not create device.\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"driver '%s' failed to auto-configure device.\0A\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"driver '%s' has successfully auto-configured '%s'.\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"BUG! detaching device with use_count=%d\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.10 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"\016comedi: valid board names for %s driver are:\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"\016 %s\0A\00", align 1
@range_unknown = external dso_local constant %struct.comedi_lrange, align 4
@.str.13 = private unnamed_addr constant [61 x i8] c"async subdevices must support SDF_CMD_READ or SDF_CMD_WRITE\0A\00", align 1
@.str.14 = private unnamed_addr constant [52 x i8] c"async subdevices must have a do_cmdtest() function\0A\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"async subdevices should have a cancel() function\0A\00", align 1
@__comedi_device_postconfig_async.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !3955
@.str.16 = private unnamed_addr constant [18 x i8] c"&async->wait_head\00", align 1
@comedi_default_buf_maxsize_kb = external dso_local global i32, align 4
@comedi_default_buf_size_kb = external dso_local global i32, align 4
@.str.17 = private unnamed_addr constant [26 x i8] c"Buffer allocation failed\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @comedi_set_hw_dev(%struct.comedi_device* %dev, %struct.device* %hw_dev) #0 !dbg !3963 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %hw_dev.addr = alloca %struct.device*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !3966, metadata !DIExpression()), !dbg !3967
  store %struct.device* %hw_dev, %struct.device** %hw_dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %hw_dev.addr, metadata !3968, metadata !DIExpression()), !dbg !3969
  %0 = load %struct.device*, %struct.device** %hw_dev.addr, align 8, !dbg !3970
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !3972
  %hw_dev1 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %1, i32 0, i32 7, !dbg !3973
  %2 = load %struct.device*, %struct.device** %hw_dev1, align 8, !dbg !3973
  %cmp = icmp eq %struct.device* %0, %2, !dbg !3974
  br i1 %cmp, label %if.then, label %if.end, !dbg !3975

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3976
  br label %return, !dbg !3976

if.end:                                           ; preds = %entry
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !3977
  %hw_dev2 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %3, i32 0, i32 7, !dbg !3979
  %4 = load %struct.device*, %struct.device** %hw_dev2, align 8, !dbg !3979
  %tobool = icmp ne %struct.device* %4, null, !dbg !3977
  br i1 %tobool, label %if.then3, label %if.end4, !dbg !3980

if.then3:                                         ; preds = %if.end
  store i32 -17, i32* %retval, align 4, !dbg !3981
  br label %return, !dbg !3981

if.end4:                                          ; preds = %if.end
  %5 = load %struct.device*, %struct.device** %hw_dev.addr, align 8, !dbg !3982
  %call = call %struct.device* @get_device(%struct.device* %5) #8, !dbg !3983
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !3984
  %hw_dev5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 7, !dbg !3985
  store %struct.device* %call, %struct.device** %hw_dev5, align 8, !dbg !3986
  store i32 0, i32* %retval, align 4, !dbg !3987
  br label %return, !dbg !3987

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !3988
  ret i32 %7, !dbg !3988
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local %struct.device* @get_device(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @comedi_alloc_devpriv(%struct.comedi_device* %dev, i64 %size) #0 !dbg !3989 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %size.addr = alloca i64, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !3992, metadata !DIExpression()), !dbg !3993
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3994, metadata !DIExpression()), !dbg !3995
  %0 = load i64, i64* %size.addr, align 8, !dbg !3996
  %call = call i8* @kzalloc(i64 %0, i32 3264) #8, !dbg !3997
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !3998
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %1, i32 0, i32 3, !dbg !3999
  store i8* %call, i8** %private, align 8, !dbg !4000
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4001
  %private1 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %2, i32 0, i32 3, !dbg !4002
  %3 = load i8*, i8** %private1, align 8, !dbg !4002
  ret i8* %3, !dbg !4003
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4004 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4007, metadata !DIExpression()), !dbg !4011
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4017, metadata !DIExpression()), !dbg !4018
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4019, metadata !DIExpression()), !dbg !4020
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4021, metadata !DIExpression()), !dbg !4022
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4023, metadata !DIExpression()), !dbg !4027
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4029, metadata !DIExpression()), !dbg !4033
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4035, metadata !DIExpression()), !dbg !4039
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4044, metadata !DIExpression()), !dbg !4045
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4046, metadata !DIExpression()), !dbg !4047
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4048, metadata !DIExpression()), !dbg !4049
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4050, metadata !DIExpression()), !dbg !4051
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4052, metadata !DIExpression()), !dbg !4053
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4054, metadata !DIExpression()), !dbg !4055
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4056, metadata !DIExpression()), !dbg !4057
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4058, metadata !DIExpression()), !dbg !4059
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4060, metadata !DIExpression()), !dbg !4061
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4062, metadata !DIExpression()), !dbg !4063
  %0 = load i64, i64* %size.addr, align 8, !dbg !4064
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4065
  %or = or i32 %1, 256, !dbg !4066
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4067
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !4068
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4069

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4070
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4071
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4072

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4073
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4074
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4075
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !4076
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4053
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4077
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4078
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4079
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4080
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4081
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4082
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !4083
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4083
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4083
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4083
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !4083
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4084
  br label %kmalloc.exit, !dbg !4084

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4085
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4086
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4086
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4088

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4089
  br label %kmalloc_index.exit.i, !dbg !4089

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4090
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4092
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4093

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4094
  br label %kmalloc_index.exit.i, !dbg !4094

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4095
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4097
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4098

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4099
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4100
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4101

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4102
  br label %kmalloc_index.exit.i, !dbg !4102

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4103
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4105
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4106

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4107
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4108
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4109

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4110
  br label %kmalloc_index.exit.i, !dbg !4110

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4111
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4113
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4114

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4115
  br label %kmalloc_index.exit.i, !dbg !4115

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4116
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4118
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4119

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4120
  br label %kmalloc_index.exit.i, !dbg !4120

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4121
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4123
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4124

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4125
  br label %kmalloc_index.exit.i, !dbg !4125

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4126
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4128
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4129

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4130
  br label %kmalloc_index.exit.i, !dbg !4130

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4131
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4133
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4134

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4135
  br label %kmalloc_index.exit.i, !dbg !4135

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4136
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4138
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4139

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4140
  br label %kmalloc_index.exit.i, !dbg !4140

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4141
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4143
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4144

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4145
  br label %kmalloc_index.exit.i, !dbg !4145

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4146
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4148
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4149

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4150
  br label %kmalloc_index.exit.i, !dbg !4150

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4151
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4153
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4154

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4155
  br label %kmalloc_index.exit.i, !dbg !4155

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4156
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4158
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4159

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4160
  br label %kmalloc_index.exit.i, !dbg !4160

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4161
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4163
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4164

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4165
  br label %kmalloc_index.exit.i, !dbg !4165

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4166
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4168
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4169

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4170
  br label %kmalloc_index.exit.i, !dbg !4170

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4171
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4173
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4174

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4175
  br label %kmalloc_index.exit.i, !dbg !4175

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4176
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4178
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4179

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4180
  br label %kmalloc_index.exit.i, !dbg !4180

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4181
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4183
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4184

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4185
  br label %kmalloc_index.exit.i, !dbg !4185

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4186
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4188
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4189

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4190
  br label %kmalloc_index.exit.i, !dbg !4190

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4191
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4193
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4194

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4195
  br label %kmalloc_index.exit.i, !dbg !4195

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4196
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4198
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4199

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4200
  br label %kmalloc_index.exit.i, !dbg !4200

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4201
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4203
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4204

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4205
  br label %kmalloc_index.exit.i, !dbg !4205

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4206
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4208
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4209

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4210
  br label %kmalloc_index.exit.i, !dbg !4210

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4211
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4213
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4214

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4215
  br label %kmalloc_index.exit.i, !dbg !4215

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4216
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4218
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4219

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4220
  br label %kmalloc_index.exit.i, !dbg !4220

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4221
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4223
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4224

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4225
  br label %kmalloc_index.exit.i, !dbg !4225

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4226
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4228
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4229

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4230
  br label %kmalloc_index.exit.i, !dbg !4230

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !4231, !srcloc !4234
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 160) #9, !dbg !4235, !srcloc !4238
  unreachable, !dbg !4239

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4240
  store i32 %45, i32* %index.i, align 4, !dbg !4241
  %46 = load i32, i32* %index.i, align 4, !dbg !4242
  %tobool.i = icmp ne i32 %46, 0, !dbg !4242
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4244

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4245
  br label %kmalloc.exit, !dbg !4245

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4246
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4247
  %and.i.i = and i32 %48, 17, !dbg !4247
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4247
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4247
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4247
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4247
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4249

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4250
  br label %kmalloc_type.exit.i, !dbg !4250

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4251
  %and2.i.i = and i32 %49, 1, !dbg !4252
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4251
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4251
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4251
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4253
  br label %kmalloc_type.exit.i, !dbg !4253

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4254
  %idxprom.i = zext i32 %51 to i64, !dbg !4255
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4255
  %52 = load i32, i32* %index.i, align 4, !dbg !4256
  %idxprom6.i = zext i32 %52 to i64, !dbg !4255
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4255
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4255
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4257
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4258
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4259
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4260
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !4261
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4261
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4261
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4261
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !4261
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4022
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4262
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4263
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4264
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4265
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !4266
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4267
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4268
  store i8* %62, i8** %retval.i, align 8, !dbg !4269
  br label %kmalloc.exit, !dbg !4269

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4270
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4271
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !4272
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4272
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4272
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4272
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !4272
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4273
  br label %kmalloc.exit, !dbg !4273

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4274
  ret i8* %65, !dbg !4275
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device* %dev, i32 %num_subdevices) #0 !dbg !4276 {
entry:
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4279, metadata !DIExpression()), !dbg !4285
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %num_subdevices.addr = alloca i32, align 4
  %s = alloca %struct.comedi_subdevice*, align 8
  %i = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 1
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4291, metadata !DIExpression()), !dbg !4292
  store i32 %num_subdevices, i32* %num_subdevices.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_subdevices.addr, metadata !4293, metadata !DIExpression()), !dbg !4294
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s, metadata !4295, metadata !DIExpression()), !dbg !4296
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4297, metadata !DIExpression()), !dbg !4298
  %0 = load i32, i32* %num_subdevices.addr, align 4, !dbg !4299
  %cmp = icmp slt i32 %0, 1, !dbg !4301
  br i1 %cmp, label %if.then, label %if.end, !dbg !4302

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4303
  br label %return, !dbg !4303

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %num_subdevices.addr, align 4, !dbg !4304
  %conv = sext i32 %1 to i64, !dbg !4304
  %call = call i8* @kcalloc(i64 %conv, i64 224, i32 3264) #8, !dbg !4305
  %2 = bitcast i8* %call to %struct.comedi_subdevice*, !dbg !4305
  store %struct.comedi_subdevice* %2, %struct.comedi_subdevice** %s, align 8, !dbg !4306
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4307
  %tobool = icmp ne %struct.comedi_subdevice* %3, null, !dbg !4307
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !4309

if.then1:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !4310
  br label %return, !dbg !4310

if.end2:                                          ; preds = %if.end
  %4 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4311
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4312
  %subdevices = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 16, !dbg !4313
  store %struct.comedi_subdevice* %4, %struct.comedi_subdevice** %subdevices, align 8, !dbg !4314
  %6 = load i32, i32* %num_subdevices.addr, align 4, !dbg !4315
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4316
  %n_subdevices = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 15, !dbg !4317
  store i32 %6, i32* %n_subdevices, align 4, !dbg !4318
  store i32 0, i32* %i, align 4, !dbg !4319
  br label %for.cond, !dbg !4320

for.cond:                                         ; preds = %for.inc, %if.end2
  %8 = load i32, i32* %i, align 4, !dbg !4321
  %9 = load i32, i32* %num_subdevices.addr, align 4, !dbg !4322
  %cmp3 = icmp slt i32 %8, %9, !dbg !4323
  br i1 %cmp3, label %for.body, label %for.end, !dbg !4324

for.body:                                         ; preds = %for.cond
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4325
  %subdevices5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 16, !dbg !4326
  %11 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices5, align 8, !dbg !4326
  %12 = load i32, i32* %i, align 4, !dbg !4327
  %idxprom = sext i32 %12 to i64, !dbg !4325
  %arrayidx = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %11, i64 %idxprom, !dbg !4325
  store %struct.comedi_subdevice* %arrayidx, %struct.comedi_subdevice** %s, align 8, !dbg !4328
  %13 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4329
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4330
  %device = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %14, i32 0, i32 0, !dbg !4331
  store %struct.comedi_device* %13, %struct.comedi_device** %device, align 8, !dbg !4332
  %15 = load i32, i32* %i, align 4, !dbg !4333
  %16 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4334
  %index = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %16, i32 0, i32 1, !dbg !4335
  store i32 %15, i32* %index, align 8, !dbg !4336
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4337
  %async_dma_dir = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %17, i32 0, i32 28, !dbg !4338
  store i32 3, i32* %async_dma_dir, align 8, !dbg !4339
  br label %do.body, !dbg !4340

do.body:                                          ; preds = %for.body
  %18 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4341
  %spin_lock = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %18, i32 0, i32 11, !dbg !4341
  store %struct.spinlock* %spin_lock, %struct.spinlock** %lock.addr.i, align 8
  %19 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4342
  %20 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %19, i32 0, i32 0, !dbg !4343
  %rlock.i = bitcast %union.anon* %20 to %struct.raw_spinlock*, !dbg !4343
  %21 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4341
  %spin_lock7 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %21, i32 0, i32 11, !dbg !4341
  %22 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %.compoundliteral, i32 0, i32 0, !dbg !4341
  %rlock = bitcast %union.anon* %22 to %struct.raw_spinlock*, !dbg !4341
  %23 = bitcast %struct.spinlock* %spin_lock7 to i8*, !dbg !4341
  %24 = bitcast %struct.spinlock* %.compoundliteral to i8*, !dbg !4341
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 1 %24, i64 0, i1 false), !dbg !4341
  br label %do.end, !dbg !4341

do.end:                                           ; preds = %do.body
  %25 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4344
  %minor = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %25, i32 0, i32 31, !dbg !4345
  store i32 -1, i32* %minor, align 8, !dbg !4346
  br label %for.inc, !dbg !4347

for.inc:                                          ; preds = %do.end
  %26 = load i32, i32* %i, align 4, !dbg !4348
  %inc = add i32 %26, 1, !dbg !4348
  store i32 %inc, i32* %i, align 4, !dbg !4348
  br label %for.cond, !dbg !4349, !llvm.loop !4350

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !4352
  br label %return, !dbg !4352

return:                                           ; preds = %for.end, %if.then1, %if.then
  %27 = load i32, i32* %retval, align 4, !dbg !4353
  ret i32 %27, !dbg !4353
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kcalloc(i64 %n, i64 %size, i32 %flags) #0 !dbg !4354 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4357, metadata !DIExpression()), !dbg !4358
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4359, metadata !DIExpression()), !dbg !4360
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4361, metadata !DIExpression()), !dbg !4362
  %0 = load i64, i64* %n.addr, align 8, !dbg !4363
  %1 = load i64, i64* %size.addr, align 8, !dbg !4364
  %2 = load i32, i32* %flags.addr, align 4, !dbg !4365
  %or = or i32 %2, 256, !dbg !4366
  %call = call i8* @kmalloc_array(i64 %0, i64 %1, i32 %or) #8, !dbg !4367
  ret i8* %call, !dbg !4368
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @comedi_alloc_subdev_readback(%struct.comedi_subdevice* %s) #0 !dbg !4369 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4372, metadata !DIExpression()), !dbg !4373
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4374
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 3, !dbg !4376
  %1 = load i32, i32* %n_chan, align 8, !dbg !4376
  %tobool = icmp ne i32 %1, 0, !dbg !4374
  br i1 %tobool, label %if.end, label %if.then, !dbg !4377

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4378
  br label %return, !dbg !4378

if.end:                                           ; preds = %entry
  %2 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4379
  %n_chan1 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %2, i32 0, i32 3, !dbg !4380
  %3 = load i32, i32* %n_chan1, align 8, !dbg !4380
  %conv = sext i32 %3 to i64, !dbg !4379
  %call = call i8* @kcalloc(i64 %conv, i64 4, i32 3264) #8, !dbg !4381
  %4 = bitcast i8* %call to i32*, !dbg !4381
  %5 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4382
  %readback = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %5, i32 0, i32 32, !dbg !4383
  store i32* %4, i32** %readback, align 8, !dbg !4384
  %6 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4385
  %readback2 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %6, i32 0, i32 32, !dbg !4387
  %7 = load i32*, i32** %readback2, align 8, !dbg !4387
  %tobool3 = icmp ne i32* %7, null, !dbg !4385
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !4388

if.then4:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !4389
  br label %return, !dbg !4389

if.end5:                                          ; preds = %if.end
  %8 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4390
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %8, i32 0, i32 18, !dbg !4392
  %9 = load i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_read, align 8, !dbg !4392
  %tobool6 = icmp ne i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* %9, null, !dbg !4390
  br i1 %tobool6, label %if.end9, label %if.then7, !dbg !4393

if.then7:                                         ; preds = %if.end5
  %10 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4394
  %insn_read8 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %10, i32 0, i32 18, !dbg !4395
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @comedi_readback_insn_read, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_read8, align 8, !dbg !4396
  br label %if.end9, !dbg !4394

if.end9:                                          ; preds = %if.then7, %if.end5
  store i32 0, i32* %retval, align 4, !dbg !4397
  br label %return, !dbg !4397

return:                                           ; preds = %if.end9, %if.then4, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !4398
  ret i32 %11, !dbg !4398
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @comedi_readback_insn_read(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #0 !dbg !4399 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %chan = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4400, metadata !DIExpression()), !dbg !4401
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4402, metadata !DIExpression()), !dbg !4403
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !4404, metadata !DIExpression()), !dbg !4405
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !4406, metadata !DIExpression()), !dbg !4407
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !4408, metadata !DIExpression()), !dbg !4409
  %0 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4410
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %0, i32 0, i32 4, !dbg !4410
  %1 = load i32, i32* %chanspec, align 4, !dbg !4410
  %and = and i32 %1, 65535, !dbg !4410
  store i32 %and, i32* %chan, align 4, !dbg !4409
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4411, metadata !DIExpression()), !dbg !4412
  %2 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4413
  %readback = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %2, i32 0, i32 32, !dbg !4415
  %3 = load i32*, i32** %readback, align 8, !dbg !4415
  %tobool = icmp ne i32* %3, null, !dbg !4413
  br i1 %tobool, label %if.end, label %if.then, !dbg !4416

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4417
  br label %return, !dbg !4417

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !4418
  br label %for.cond, !dbg !4420

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4, !dbg !4421
  %5 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4423
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %5, i32 0, i32 1, !dbg !4424
  %6 = load i32, i32* %n, align 4, !dbg !4424
  %cmp = icmp ult i32 %4, %6, !dbg !4425
  br i1 %cmp, label %for.body, label %for.end, !dbg !4426

for.body:                                         ; preds = %for.cond
  %7 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4427
  %readback1 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %7, i32 0, i32 32, !dbg !4428
  %8 = load i32*, i32** %readback1, align 8, !dbg !4428
  %9 = load i32, i32* %chan, align 4, !dbg !4429
  %idxprom = zext i32 %9 to i64, !dbg !4427
  %arrayidx = getelementptr i32, i32* %8, i64 %idxprom, !dbg !4427
  %10 = load i32, i32* %arrayidx, align 4, !dbg !4427
  %11 = load i32*, i32** %data.addr, align 8, !dbg !4430
  %12 = load i32, i32* %i, align 4, !dbg !4431
  %idxprom2 = sext i32 %12 to i64, !dbg !4430
  %arrayidx3 = getelementptr i32, i32* %11, i64 %idxprom2, !dbg !4430
  store i32 %10, i32* %arrayidx3, align 4, !dbg !4432
  br label %for.inc, !dbg !4430

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !dbg !4433
  %inc = add i32 %13, 1, !dbg !4433
  store i32 %inc, i32* %i, align 4, !dbg !4433
  br label %for.cond, !dbg !4434, !llvm.loop !4435

for.end:                                          ; preds = %for.cond
  %14 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4437
  %n4 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %14, i32 0, i32 1, !dbg !4438
  %15 = load i32, i32* %n4, align 4, !dbg !4438
  store i32 %15, i32* %retval, align 4, !dbg !4439
  br label %return, !dbg !4439

return:                                           ; preds = %for.end, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !4440
  ret i32 %16, !dbg !4440
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @comedi_device_detach(%struct.comedi_device* %dev) #0 !dbg !4441 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4442, metadata !DIExpression()), !dbg !4443
  br label %do.body, !dbg !4444

do.body:                                          ; preds = %entry
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4445
  %mutex = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 12, !dbg !4445
  br label %do.end, !dbg !4445

do.end:                                           ; preds = %do.body
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4447
  call void @comedi_device_cancel_all(%struct.comedi_device* %1) #8, !dbg !4448
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4449
  %attach_lock = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %2, i32 0, i32 13, !dbg !4450
  call void @down_write(%struct.rw_semaphore* %attach_lock) #8, !dbg !4451
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4452
  %attached = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %3, i32 0, i32 10, !dbg !4453
  %bf.load = load i8, i8* %attached, align 8, !dbg !4454
  %bf.clear = and i8 %bf.load, -2, !dbg !4454
  store i8 %bf.clear, i8* %attached, align 8, !dbg !4454
  %4 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4455
  %detach_count = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 6, !dbg !4456
  %5 = load i32, i32* %detach_count, align 4, !dbg !4457
  %inc = add i32 %5, 1, !dbg !4457
  store i32 %inc, i32* %detach_count, align 4, !dbg !4457
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4458
  %driver = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 1, !dbg !4460
  %7 = load %struct.comedi_driver*, %struct.comedi_driver** %driver, align 8, !dbg !4460
  %tobool = icmp ne %struct.comedi_driver* %7, null, !dbg !4458
  br i1 %tobool, label %if.then, label %if.end, !dbg !4461

if.then:                                          ; preds = %do.end
  %8 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4462
  %driver1 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 1, !dbg !4463
  %9 = load %struct.comedi_driver*, %struct.comedi_driver** %driver1, align 8, !dbg !4463
  %detach = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %9, i32 0, i32 4, !dbg !4464
  %10 = load void (%struct.comedi_device*)*, void (%struct.comedi_device*)** %detach, align 8, !dbg !4464
  %11 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4465
  call void %10(%struct.comedi_device* %11) #8, !dbg !4462
  br label %if.end, !dbg !4462

if.end:                                           ; preds = %if.then, %do.end
  %12 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4466
  call void @comedi_device_detach_cleanup(%struct.comedi_device* %12) #8, !dbg !4467
  %13 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4468
  %attach_lock2 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 13, !dbg !4469
  call void @up_write(%struct.rw_semaphore* %attach_lock2) #8, !dbg !4470
  ret void, !dbg !4471
}

; Function Attrs: noredzone
declare dso_local void @comedi_device_cancel_all(%struct.comedi_device*) #2

; Function Attrs: noredzone
declare dso_local void @down_write(%struct.rw_semaphore*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @comedi_device_detach_cleanup(%struct.comedi_device* %dev) #0 !dbg !4472 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %i = alloca i32, align 4
  %s = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4473, metadata !DIExpression()), !dbg !4474
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4475, metadata !DIExpression()), !dbg !4476
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s, metadata !4477, metadata !DIExpression()), !dbg !4478
  br label %do.body, !dbg !4479

do.body:                                          ; preds = %entry
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4480
  %attach_lock = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 13, !dbg !4480
  br label %do.end, !dbg !4480

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !4482

do.body1:                                         ; preds = %do.end
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4483
  %mutex = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %1, i32 0, i32 12, !dbg !4483
  br label %do.end2, !dbg !4483

do.end2:                                          ; preds = %do.body1
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4485
  %subdevices = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %2, i32 0, i32 16, !dbg !4487
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices, align 8, !dbg !4487
  %tobool = icmp ne %struct.comedi_subdevice* %3, null, !dbg !4485
  br i1 %tobool, label %if.then, label %if.end13, !dbg !4488

if.then:                                          ; preds = %do.end2
  store i32 0, i32* %i, align 4, !dbg !4489
  br label %for.cond, !dbg !4492

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !4493
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4495
  %n_subdevices = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 15, !dbg !4496
  %6 = load i32, i32* %n_subdevices, align 4, !dbg !4496
  %cmp = icmp slt i32 %4, %6, !dbg !4497
  br i1 %cmp, label %for.body, label %for.end, !dbg !4498

for.body:                                         ; preds = %for.cond
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4499
  %subdevices3 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 16, !dbg !4501
  %8 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices3, align 8, !dbg !4501
  %9 = load i32, i32* %i, align 4, !dbg !4502
  %idxprom = sext i32 %9 to i64, !dbg !4499
  %arrayidx = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %8, i64 %idxprom, !dbg !4499
  store %struct.comedi_subdevice* %arrayidx, %struct.comedi_subdevice** %s, align 8, !dbg !4503
  %10 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4504
  %call = call zeroext i1 @comedi_can_auto_free_spriv(%struct.comedi_subdevice* %10) #8, !dbg !4506
  br i1 %call, label %if.then4, label %if.end, !dbg !4507

if.then4:                                         ; preds = %for.body
  %11 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4508
  %private = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %11, i32 0, i32 6, !dbg !4509
  %12 = load i8*, i8** %private, align 8, !dbg !4509
  call void @kfree(i8* %12) #8, !dbg !4510
  br label %if.end, !dbg !4510

if.end:                                           ; preds = %if.then4, %for.body
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4511
  call void @comedi_free_subdevice_minor(%struct.comedi_subdevice* %13) #8, !dbg !4512
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4513
  %async = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %14, i32 0, i32 7, !dbg !4515
  %15 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4515
  %tobool5 = icmp ne %struct.comedi_async* %15, null, !dbg !4513
  br i1 %tobool5, label %if.then6, label %if.end9, !dbg !4516

if.then6:                                         ; preds = %if.end
  %16 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4517
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4519
  %call7 = call i32 @comedi_buf_alloc(%struct.comedi_device* %16, %struct.comedi_subdevice* %17, i64 0) #8, !dbg !4520
  %18 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4521
  %async8 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %18, i32 0, i32 7, !dbg !4522
  %19 = load %struct.comedi_async*, %struct.comedi_async** %async8, align 8, !dbg !4522
  %20 = bitcast %struct.comedi_async* %19 to i8*, !dbg !4521
  call void @kfree(i8* %20) #8, !dbg !4523
  br label %if.end9, !dbg !4524

if.end9:                                          ; preds = %if.then6, %if.end
  %21 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4525
  %readback = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %21, i32 0, i32 32, !dbg !4526
  %22 = load i32*, i32** %readback, align 8, !dbg !4526
  %23 = bitcast i32* %22 to i8*, !dbg !4525
  call void @kfree(i8* %23) #8, !dbg !4527
  br label %for.inc, !dbg !4528

for.inc:                                          ; preds = %if.end9
  %24 = load i32, i32* %i, align 4, !dbg !4529
  %inc = add i32 %24, 1, !dbg !4529
  store i32 %inc, i32* %i, align 4, !dbg !4529
  br label %for.cond, !dbg !4530, !llvm.loop !4531

for.end:                                          ; preds = %for.cond
  %25 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4533
  %subdevices10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 16, !dbg !4534
  %26 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices10, align 8, !dbg !4534
  %27 = bitcast %struct.comedi_subdevice* %26 to i8*, !dbg !4533
  call void @kfree(i8* %27) #8, !dbg !4535
  %28 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4536
  %subdevices11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %28, i32 0, i32 16, !dbg !4537
  store %struct.comedi_subdevice* null, %struct.comedi_subdevice** %subdevices11, align 8, !dbg !4538
  %29 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4539
  %n_subdevices12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %29, i32 0, i32 15, !dbg !4540
  store i32 0, i32* %n_subdevices12, align 4, !dbg !4541
  br label %if.end13, !dbg !4542

if.end13:                                         ; preds = %for.end, %do.end2
  %30 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4543
  %private14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 3, !dbg !4544
  %31 = load i8*, i8** %private14, align 8, !dbg !4544
  call void @kfree(i8* %31) #8, !dbg !4545
  %32 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4546
  %pacer = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %32, i32 0, i32 2, !dbg !4547
  %33 = load %struct.comedi_8254*, %struct.comedi_8254** %pacer, align 8, !dbg !4547
  %34 = bitcast %struct.comedi_8254* %33 to i8*, !dbg !4546
  call void @kfree(i8* %34) #8, !dbg !4548
  %35 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4549
  %private15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %35, i32 0, i32 3, !dbg !4550
  store i8* null, i8** %private15, align 8, !dbg !4551
  %36 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4552
  %pacer16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %36, i32 0, i32 2, !dbg !4553
  store %struct.comedi_8254* null, %struct.comedi_8254** %pacer16, align 8, !dbg !4554
  %37 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4555
  %driver = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %37, i32 0, i32 1, !dbg !4556
  store %struct.comedi_driver* null, %struct.comedi_driver** %driver, align 8, !dbg !4557
  %38 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4558
  %board_name = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %38, i32 0, i32 8, !dbg !4559
  store i8* null, i8** %board_name, align 8, !dbg !4560
  %39 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4561
  %board_ptr = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %39, i32 0, i32 9, !dbg !4562
  store i8* null, i8** %board_ptr, align 8, !dbg !4563
  %40 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4564
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %40, i32 0, i32 17, !dbg !4565
  store i8* null, i8** %mmio, align 8, !dbg !4566
  %41 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4567
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %41, i32 0, i32 18, !dbg !4568
  store i64 0, i64* %iobase, align 8, !dbg !4569
  %42 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4570
  %iolen = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %42, i32 0, i32 19, !dbg !4571
  store i64 0, i64* %iolen, align 8, !dbg !4572
  %43 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4573
  %ioenabled = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %43, i32 0, i32 10, !dbg !4574
  %bf.load = load i8, i8* %ioenabled, align 8, !dbg !4575
  %bf.clear = and i8 %bf.load, -3, !dbg !4575
  store i8 %bf.clear, i8* %ioenabled, align 8, !dbg !4575
  %44 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4576
  %irq = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %44, i32 0, i32 20, !dbg !4577
  store i32 0, i32* %irq, align 8, !dbg !4578
  %45 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4579
  %read_subdev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %45, i32 0, i32 21, !dbg !4580
  store %struct.comedi_subdevice* null, %struct.comedi_subdevice** %read_subdev, align 8, !dbg !4581
  %46 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4582
  %write_subdev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %46, i32 0, i32 22, !dbg !4583
  store %struct.comedi_subdevice* null, %struct.comedi_subdevice** %write_subdev, align 8, !dbg !4584
  %47 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4585
  %open = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %47, i32 0, i32 24, !dbg !4586
  store i32 (%struct.comedi_device*)* null, i32 (%struct.comedi_device*)** %open, align 8, !dbg !4587
  %48 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4588
  %close = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %48, i32 0, i32 25, !dbg !4589
  store void (%struct.comedi_device*)* null, void (%struct.comedi_device*)** %close, align 8, !dbg !4590
  %49 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4591
  call void @comedi_clear_hw_dev(%struct.comedi_device* %49) #8, !dbg !4592
  ret void, !dbg !4593
}

; Function Attrs: noredzone
declare dso_local void @up_write(%struct.rw_semaphore*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @insn_inval(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #0 !dbg !4594 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4595, metadata !DIExpression()), !dbg !4596
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4597, metadata !DIExpression()), !dbg !4598
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !4599, metadata !DIExpression()), !dbg !4600
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !4601, metadata !DIExpression()), !dbg !4602
  ret i32 -22, !dbg !4603
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @comedi_timeout(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i64)* %cb, i64 %context) #0 !dbg !4604 {
entry:
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !4610, metadata !DIExpression()), !dbg !4615
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %cb.addr = alloca i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i64)*, align 8
  %context.addr = alloca i64, align 8
  %timeout = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4617, metadata !DIExpression()), !dbg !4618
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4619, metadata !DIExpression()), !dbg !4620
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !4621, metadata !DIExpression()), !dbg !4622
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i64)* %cb, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i64)** %cb.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i64)** %cb.addr, metadata !4623, metadata !DIExpression()), !dbg !4624
  store i64 %context, i64* %context.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %context.addr, metadata !4625, metadata !DIExpression()), !dbg !4626
  call void @llvm.dbg.declare(metadata i64* %timeout, metadata !4627, metadata !DIExpression()), !dbg !4628
  %0 = load volatile i64, i64* @jiffies, align 8, !dbg !4629
  store i32 1000, i32* %m.addr.i, align 4
  %1 = load i32, i32* %m.addr.i, align 4, !dbg !4630
  %2 = call i1 @llvm.is.constant.i32(i32 %1) #9, !dbg !4632
  br i1 %2, label %if.then.i, label %if.else.i, !dbg !4633

if.then.i:                                        ; preds = %entry
  %3 = load i32, i32* %m.addr.i, align 4, !dbg !4634
  %cmp.i = icmp slt i32 %3, 0, !dbg !4637
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4638

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !4639
  br label %msecs_to_jiffies.exit, !dbg !4639

if.end.i:                                         ; preds = %if.then.i
  %4 = load i32, i32* %m.addr.i, align 4, !dbg !4640
  %call.i = call i64 @_msecs_to_jiffies(i32 %4) #11, !dbg !4641
  store i64 %call.i, i64* %retval.i, align 8, !dbg !4642
  br label %msecs_to_jiffies.exit, !dbg !4642

if.else.i:                                        ; preds = %entry
  %5 = load i32, i32* %m.addr.i, align 4, !dbg !4643
  %call2.i = call i64 @__msecs_to_jiffies(i32 %5) #11, !dbg !4645
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !4646
  br label %msecs_to_jiffies.exit, !dbg !4646

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %6 = load i64, i64* %retval.i, align 8, !dbg !4647
  %add = add i64 %0, %6, !dbg !4648
  store i64 %add, i64* %timeout, align 8, !dbg !4628
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4649, metadata !DIExpression()), !dbg !4650
  br label %while.cond, !dbg !4651

while.cond:                                       ; preds = %if.end, %msecs_to_jiffies.exit
  %7 = load volatile i64, i64* @jiffies, align 8, !dbg !4652
  %8 = load i64, i64* %timeout, align 8, !dbg !4652
  %sub = sub i64 %7, %8, !dbg !4652
  %cmp = icmp slt i64 %sub, 0, !dbg !4652
  br i1 %cmp, label %while.body, label %while.end, !dbg !4651

while.body:                                       ; preds = %while.cond
  %9 = load i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i64)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i64)** %cb.addr, align 8, !dbg !4653
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4655
  %11 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4656
  %12 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4657
  %13 = load i64, i64* %context.addr, align 8, !dbg !4658
  %call1 = call i32 %9(%struct.comedi_device* %10, %struct.comedi_subdevice* %11, %struct.comedi_insn* %12, i64 %13) #8, !dbg !4653
  store i32 %call1, i32* %ret, align 4, !dbg !4659
  %14 = load i32, i32* %ret, align 4, !dbg !4660
  %cmp2 = icmp ne i32 %14, -16, !dbg !4662
  br i1 %cmp2, label %if.then, label %if.end, !dbg !4663

if.then:                                          ; preds = %while.body
  %15 = load i32, i32* %ret, align 4, !dbg !4664
  store i32 %15, i32* %retval, align 4, !dbg !4665
  br label %return, !dbg !4665

if.end:                                           ; preds = %while.body
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !4666, !srcloc !4672
  br label %while.cond, !dbg !4651, !llvm.loop !4673

while.end:                                        ; preds = %while.cond
  store i32 -110, i32* %retval, align 4, !dbg !4675
  br label %return, !dbg !4675

return:                                           ; preds = %while.end, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !4676
  ret i32 %16, !dbg !4676
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @comedi_dio_insn_config(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data, i32 %mask) #0 !dbg !4677 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %mask.addr = alloca i32, align 4
  %chan_mask = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4680, metadata !DIExpression()), !dbg !4681
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4682, metadata !DIExpression()), !dbg !4683
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !4684, metadata !DIExpression()), !dbg !4685
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !4686, metadata !DIExpression()), !dbg !4687
  store i32 %mask, i32* %mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mask.addr, metadata !4688, metadata !DIExpression()), !dbg !4689
  call void @llvm.dbg.declare(metadata i32* %chan_mask, metadata !4690, metadata !DIExpression()), !dbg !4691
  %0 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4692
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %0, i32 0, i32 4, !dbg !4692
  %1 = load i32, i32* %chanspec, align 4, !dbg !4692
  %and = and i32 %1, 65535, !dbg !4692
  %shl = shl i32 1, %and, !dbg !4693
  store i32 %shl, i32* %chan_mask, align 4, !dbg !4691
  %2 = load i32, i32* %mask.addr, align 4, !dbg !4694
  %tobool = icmp ne i32 %2, 0, !dbg !4694
  br i1 %tobool, label %if.end, label %if.then, !dbg !4696

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %chan_mask, align 4, !dbg !4697
  store i32 %3, i32* %mask.addr, align 4, !dbg !4698
  br label %if.end, !dbg !4699

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32*, i32** %data.addr, align 8, !dbg !4700
  %arrayidx = getelementptr i32, i32* %4, i64 0, !dbg !4700
  %5 = load i32, i32* %arrayidx, align 4, !dbg !4700
  switch i32 %5, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 28, label %sw.bb4
  ], !dbg !4701

sw.bb:                                            ; preds = %if.end
  %6 = load i32, i32* %mask.addr, align 4, !dbg !4702
  %neg = xor i32 %6, -1, !dbg !4704
  %7 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4705
  %io_bits = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %7, i32 0, i32 12, !dbg !4706
  %8 = load i32, i32* %io_bits, align 4, !dbg !4707
  %and1 = and i32 %8, %neg, !dbg !4707
  store i32 %and1, i32* %io_bits, align 4, !dbg !4707
  br label %sw.epilog, !dbg !4708

sw.bb2:                                           ; preds = %if.end
  %9 = load i32, i32* %mask.addr, align 4, !dbg !4709
  %10 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4710
  %io_bits3 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %10, i32 0, i32 12, !dbg !4711
  %11 = load i32, i32* %io_bits3, align 4, !dbg !4712
  %or = or i32 %11, %9, !dbg !4712
  store i32 %or, i32* %io_bits3, align 4, !dbg !4712
  br label %sw.epilog, !dbg !4713

sw.bb4:                                           ; preds = %if.end
  %12 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4714
  %io_bits5 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %12, i32 0, i32 12, !dbg !4715
  %13 = load i32, i32* %io_bits5, align 4, !dbg !4715
  %14 = load i32, i32* %mask.addr, align 4, !dbg !4716
  %and6 = and i32 %13, %14, !dbg !4717
  %tobool7 = icmp ne i32 %and6, 0, !dbg !4718
  %15 = zext i1 %tobool7 to i64, !dbg !4718
  %cond = select i1 %tobool7, i32 1, i32 0, !dbg !4718
  %16 = load i32*, i32** %data.addr, align 8, !dbg !4719
  %arrayidx8 = getelementptr i32, i32* %16, i64 1, !dbg !4719
  store i32 %cond, i32* %arrayidx8, align 4, !dbg !4720
  %17 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4721
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %17, i32 0, i32 1, !dbg !4722
  %18 = load i32, i32* %n, align 4, !dbg !4722
  store i32 %18, i32* %retval, align 4, !dbg !4723
  br label %return, !dbg !4723

sw.default:                                       ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !4724
  br label %return, !dbg !4724

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb
  store i32 0, i32* %retval, align 4, !dbg !4725
  br label %return, !dbg !4725

return:                                           ; preds = %sw.epilog, %sw.default, %sw.bb4
  %19 = load i32, i32* %retval, align 4, !dbg !4726
  ret i32 %19, !dbg !4726
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @comedi_dio_update_state(%struct.comedi_subdevice* %s, i32* %data) #0 !dbg !4727 {
entry:
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %data.addr = alloca i32*, align 8
  %chanmask = alloca i32, align 4
  %mask = alloca i32, align 4
  %bits = alloca i32, align 4
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4730, metadata !DIExpression()), !dbg !4731
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !4732, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.declare(metadata i32* %chanmask, metadata !4734, metadata !DIExpression()), !dbg !4735
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4736
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 3, !dbg !4737
  %1 = load i32, i32* %n_chan, align 8, !dbg !4737
  %cmp = icmp slt i32 %1, 32, !dbg !4738
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !4739

cond.true:                                        ; preds = %entry
  %2 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4740
  %n_chan1 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %2, i32 0, i32 3, !dbg !4741
  %3 = load i32, i32* %n_chan1, align 8, !dbg !4741
  %shl = shl i32 1, %3, !dbg !4742
  %sub = sub i32 %shl, 1, !dbg !4743
  br label %cond.end, !dbg !4739

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4739

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ -1, %cond.false ], !dbg !4739
  store i32 %cond, i32* %chanmask, align 4, !dbg !4735
  call void @llvm.dbg.declare(metadata i32* %mask, metadata !4744, metadata !DIExpression()), !dbg !4745
  %4 = load i32*, i32** %data.addr, align 8, !dbg !4746
  %arrayidx = getelementptr i32, i32* %4, i64 0, !dbg !4746
  %5 = load i32, i32* %arrayidx, align 4, !dbg !4746
  %6 = load i32, i32* %chanmask, align 4, !dbg !4747
  %and = and i32 %5, %6, !dbg !4748
  store i32 %and, i32* %mask, align 4, !dbg !4745
  call void @llvm.dbg.declare(metadata i32* %bits, metadata !4749, metadata !DIExpression()), !dbg !4750
  %7 = load i32*, i32** %data.addr, align 8, !dbg !4751
  %arrayidx2 = getelementptr i32, i32* %7, i64 1, !dbg !4751
  %8 = load i32, i32* %arrayidx2, align 4, !dbg !4751
  store i32 %8, i32* %bits, align 4, !dbg !4750
  %9 = load i32, i32* %mask, align 4, !dbg !4752
  %tobool = icmp ne i32 %9, 0, !dbg !4752
  br i1 %tobool, label %if.then, label %if.end, !dbg !4754

if.then:                                          ; preds = %cond.end
  %10 = load i32, i32* %mask, align 4, !dbg !4755
  %neg = xor i32 %10, -1, !dbg !4757
  %11 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4758
  %state = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %11, i32 0, i32 29, !dbg !4759
  %12 = load i32, i32* %state, align 4, !dbg !4760
  %and3 = and i32 %12, %neg, !dbg !4760
  store i32 %and3, i32* %state, align 4, !dbg !4760
  %13 = load i32, i32* %bits, align 4, !dbg !4761
  %14 = load i32, i32* %mask, align 4, !dbg !4762
  %and4 = and i32 %13, %14, !dbg !4763
  %15 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4764
  %state5 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %15, i32 0, i32 29, !dbg !4765
  %16 = load i32, i32* %state5, align 4, !dbg !4766
  %or = or i32 %16, %and4, !dbg !4766
  store i32 %or, i32* %state5, align 4, !dbg !4766
  br label %if.end, !dbg !4767

if.end:                                           ; preds = %if.then, %cond.end
  %17 = load i32, i32* %mask, align 4, !dbg !4768
  ret i32 %17, !dbg !4769
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @comedi_bytes_per_scan_cmd(%struct.comedi_subdevice* %s, %struct.comedi_cmd* %cmd) #0 !dbg !4770 {
entry:
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %cmd.addr = alloca %struct.comedi_cmd*, align 8
  %num_samples = alloca i32, align 4
  %bits_per_sample = alloca i32, align 4
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4773, metadata !DIExpression()), !dbg !4774
  store %struct.comedi_cmd* %cmd, %struct.comedi_cmd** %cmd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd.addr, metadata !4775, metadata !DIExpression()), !dbg !4776
  call void @llvm.dbg.declare(metadata i32* %num_samples, metadata !4777, metadata !DIExpression()), !dbg !4778
  call void @llvm.dbg.declare(metadata i32* %bits_per_sample, metadata !4779, metadata !DIExpression()), !dbg !4780
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4781
  %type = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 2, !dbg !4782
  %1 = load i32, i32* %type, align 4, !dbg !4782
  switch i32 %1, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 5, label %sw.bb
  ], !dbg !4783

sw.bb:                                            ; preds = %entry, %entry, %entry
  %2 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4784
  %call = call i32 @comedi_bytes_per_sample(%struct.comedi_subdevice* %2) #8, !dbg !4786
  %mul = mul i32 8, %call, !dbg !4787
  store i32 %mul, i32* %bits_per_sample, align 4, !dbg !4788
  %3 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4789
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %3, i32 0, i32 9, !dbg !4789
  %4 = load i32, i32* %scan_end_arg, align 4, !dbg !4789
  %5 = load i32, i32* %bits_per_sample, align 4, !dbg !4789
  %add = add i32 %4, %5, !dbg !4789
  %sub = sub i32 %add, 1, !dbg !4789
  %6 = load i32, i32* %bits_per_sample, align 4, !dbg !4789
  %div = udiv i32 %sub, %6, !dbg !4789
  store i32 %div, i32* %num_samples, align 4, !dbg !4790
  br label %sw.epilog, !dbg !4791

sw.default:                                       ; preds = %entry
  %7 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4792
  %scan_end_arg1 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %7, i32 0, i32 9, !dbg !4793
  %8 = load i32, i32* %scan_end_arg1, align 4, !dbg !4793
  store i32 %8, i32* %num_samples, align 4, !dbg !4794
  br label %sw.epilog, !dbg !4795

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %9 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4796
  %10 = load i32, i32* %num_samples, align 4, !dbg !4797
  %call2 = call i32 @comedi_samples_to_bytes(%struct.comedi_subdevice* %9, i32 %10) #8, !dbg !4798
  ret i32 %call2, !dbg !4799
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_bytes_per_sample(%struct.comedi_subdevice* %s) #0 !dbg !4800 {
entry:
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4803, metadata !DIExpression()), !dbg !4804
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4805
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 4, !dbg !4806
  %1 = load i32, i32* %subdev_flags, align 4, !dbg !4806
  %and = and i32 %1, 268435456, !dbg !4807
  %tobool = icmp ne i32 %and, 0, !dbg !4805
  %2 = zext i1 %tobool to i64, !dbg !4805
  %cond = select i1 %tobool, i64 4, i64 2, !dbg !4805
  %conv = trunc i64 %cond to i32, !dbg !4805
  ret i32 %conv, !dbg !4808
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_samples_to_bytes(%struct.comedi_subdevice* %s, i32 %nsamples) #0 !dbg !4809 {
entry:
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %nsamples.addr = alloca i32, align 4
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4812, metadata !DIExpression()), !dbg !4813
  store i32 %nsamples, i32* %nsamples.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nsamples.addr, metadata !4814, metadata !DIExpression()), !dbg !4815
  %0 = load i32, i32* %nsamples.addr, align 4, !dbg !4816
  %1 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4817
  %call = call i32 @comedi_sample_shift(%struct.comedi_subdevice* %1) #8, !dbg !4818
  %shl = shl i32 %0, %call, !dbg !4819
  ret i32 %shl, !dbg !4820
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @comedi_bytes_per_scan(%struct.comedi_subdevice* %s) #0 !dbg !4821 {
entry:
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %cmd = alloca %struct.comedi_cmd*, align 8
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4822, metadata !DIExpression()), !dbg !4823
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd, metadata !4824, metadata !DIExpression()), !dbg !4825
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4826
  %async = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 7, !dbg !4827
  %1 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4827
  %cmd1 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %1, i32 0, i32 17, !dbg !4828
  store %struct.comedi_cmd* %cmd1, %struct.comedi_cmd** %cmd, align 8, !dbg !4825
  %2 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4829
  %3 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !4830
  %call = call i32 @comedi_bytes_per_scan_cmd(%struct.comedi_subdevice* %2, %struct.comedi_cmd* %3) #8, !dbg !4831
  ret i32 %call, !dbg !4832
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @comedi_nscans_left(%struct.comedi_subdevice* %s, i32 %nscans) #0 !dbg !4833 {
entry:
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %nscans.addr = alloca i32, align 4
  %nbytes = alloca i32, align 4
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4834, metadata !DIExpression()), !dbg !4835
  store i32 %nscans, i32* %nscans.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nscans.addr, metadata !4836, metadata !DIExpression()), !dbg !4837
  %0 = load i32, i32* %nscans.addr, align 4, !dbg !4838
  %cmp = icmp eq i32 %0, 0, !dbg !4840
  br i1 %cmp, label %if.then, label %if.end, !dbg !4841

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %nbytes, metadata !4842, metadata !DIExpression()), !dbg !4844
  %1 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4845
  %call = call i32 @comedi_buf_read_n_available(%struct.comedi_subdevice* %1) #8, !dbg !4846
  store i32 %call, i32* %nbytes, align 4, !dbg !4844
  %2 = load i32, i32* %nbytes, align 4, !dbg !4847
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4848
  %call1 = call i32 @comedi_bytes_per_scan(%struct.comedi_subdevice* %3) #8, !dbg !4849
  %div = udiv i32 %2, %call1, !dbg !4850
  store i32 %div, i32* %nscans.addr, align 4, !dbg !4851
  br label %if.end, !dbg !4852

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4853
  %5 = load i32, i32* %nscans.addr, align 4, !dbg !4854
  %call2 = call i32 @__comedi_nscans_left(%struct.comedi_subdevice* %4, i32 %5) #8, !dbg !4855
  ret i32 %call2, !dbg !4856
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_buf_read_n_available(%struct.comedi_subdevice*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__comedi_nscans_left(%struct.comedi_subdevice* %s, i32 %nscans) #0 !dbg !4857 {
entry:
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %nscans.addr = alloca i32, align 4
  %async = alloca %struct.comedi_async*, align 8
  %cmd = alloca %struct.comedi_cmd*, align 8
  %scans_left = alloca i32, align 4
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4858, metadata !DIExpression()), !dbg !4859
  store i32 %nscans, i32* %nscans.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nscans.addr, metadata !4860, metadata !DIExpression()), !dbg !4861
  call void @llvm.dbg.declare(metadata %struct.comedi_async** %async, metadata !4862, metadata !DIExpression()), !dbg !4863
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4864
  %async1 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 7, !dbg !4865
  %1 = load %struct.comedi_async*, %struct.comedi_async** %async1, align 8, !dbg !4865
  store %struct.comedi_async* %1, %struct.comedi_async** %async, align 8, !dbg !4863
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd, metadata !4866, metadata !DIExpression()), !dbg !4867
  %2 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4868
  %cmd2 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %2, i32 0, i32 17, !dbg !4869
  store %struct.comedi_cmd* %cmd2, %struct.comedi_cmd** %cmd, align 8, !dbg !4867
  %3 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !4870
  %stop_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %3, i32 0, i32 10, !dbg !4872
  %4 = load i32, i32* %stop_src, align 8, !dbg !4872
  %cmp = icmp eq i32 %4, 32, !dbg !4873
  br i1 %cmp, label %if.then, label %if.end10, !dbg !4874

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %scans_left, metadata !4875, metadata !DIExpression()), !dbg !4877
  store i32 0, i32* %scans_left, align 4, !dbg !4877
  %5 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4878
  %scans_done = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %5, i32 0, i32 11, !dbg !4880
  %6 = load i32, i32* %scans_done, align 8, !dbg !4880
  %7 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !4881
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %7, i32 0, i32 11, !dbg !4882
  %8 = load i32, i32* %stop_arg, align 4, !dbg !4882
  %cmp3 = icmp ult i32 %6, %8, !dbg !4883
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !4884

if.then4:                                         ; preds = %if.then
  %9 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !4885
  %stop_arg5 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %9, i32 0, i32 11, !dbg !4886
  %10 = load i32, i32* %stop_arg5, align 4, !dbg !4886
  %11 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4887
  %scans_done6 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %11, i32 0, i32 11, !dbg !4888
  %12 = load i32, i32* %scans_done6, align 8, !dbg !4888
  %sub = sub i32 %10, %12, !dbg !4889
  store i32 %sub, i32* %scans_left, align 4, !dbg !4890
  br label %if.end, !dbg !4891

if.end:                                           ; preds = %if.then4, %if.then
  %13 = load i32, i32* %nscans.addr, align 4, !dbg !4892
  %14 = load i32, i32* %scans_left, align 4, !dbg !4894
  %cmp7 = icmp ugt i32 %13, %14, !dbg !4895
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !4896

if.then8:                                         ; preds = %if.end
  %15 = load i32, i32* %scans_left, align 4, !dbg !4897
  store i32 %15, i32* %nscans.addr, align 4, !dbg !4898
  br label %if.end9, !dbg !4899

if.end9:                                          ; preds = %if.then8, %if.end
  br label %if.end10, !dbg !4900

if.end10:                                         ; preds = %if.end9, %entry
  %16 = load i32, i32* %nscans.addr, align 4, !dbg !4901
  ret i32 %16, !dbg !4902
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @comedi_nsamples_left(%struct.comedi_subdevice* %s, i32 %nsamples) #0 !dbg !4903 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %nsamples.addr = alloca i32, align 4
  %async = alloca %struct.comedi_async*, align 8
  %cmd = alloca %struct.comedi_cmd*, align 8
  %scans_left = alloca i64, align 8
  %samples_left = alloca i64, align 8
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4904, metadata !DIExpression()), !dbg !4905
  store i32 %nsamples, i32* %nsamples.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nsamples.addr, metadata !4906, metadata !DIExpression()), !dbg !4907
  call void @llvm.dbg.declare(metadata %struct.comedi_async** %async, metadata !4908, metadata !DIExpression()), !dbg !4909
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4910
  %async1 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 7, !dbg !4911
  %1 = load %struct.comedi_async*, %struct.comedi_async** %async1, align 8, !dbg !4911
  store %struct.comedi_async* %1, %struct.comedi_async** %async, align 8, !dbg !4909
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd, metadata !4912, metadata !DIExpression()), !dbg !4913
  %2 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4914
  %cmd2 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %2, i32 0, i32 17, !dbg !4915
  store %struct.comedi_cmd* %cmd2, %struct.comedi_cmd** %cmd, align 8, !dbg !4913
  call void @llvm.dbg.declare(metadata i64* %scans_left, metadata !4916, metadata !DIExpression()), !dbg !4917
  call void @llvm.dbg.declare(metadata i64* %samples_left, metadata !4918, metadata !DIExpression()), !dbg !4919
  %3 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !4920
  %stop_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %3, i32 0, i32 10, !dbg !4922
  %4 = load i32, i32* %stop_src, align 8, !dbg !4922
  %cmp = icmp ne i32 %4, 32, !dbg !4923
  br i1 %cmp, label %if.then, label %if.end, !dbg !4924

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %nsamples.addr, align 4, !dbg !4925
  store i32 %5, i32* %retval, align 4, !dbg !4926
  br label %return, !dbg !4926

if.end:                                           ; preds = %entry
  %6 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4927
  %7 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !4928
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %7, i32 0, i32 11, !dbg !4929
  %8 = load i32, i32* %stop_arg, align 4, !dbg !4929
  %call = call i32 @__comedi_nscans_left(%struct.comedi_subdevice* %6, i32 %8) #8, !dbg !4930
  %conv = zext i32 %call to i64, !dbg !4930
  store i64 %conv, i64* %scans_left, align 8, !dbg !4931
  %9 = load i64, i64* %scans_left, align 8, !dbg !4932
  %tobool = icmp ne i64 %9, 0, !dbg !4932
  br i1 %tobool, label %if.end4, label %if.then3, !dbg !4934

if.then3:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4935
  br label %return, !dbg !4935

if.end4:                                          ; preds = %if.end
  %10 = load i64, i64* %scans_left, align 8, !dbg !4936
  %11 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !4937
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %11, i32 0, i32 9, !dbg !4938
  %12 = load i32, i32* %scan_end_arg, align 4, !dbg !4938
  %conv5 = zext i32 %12 to i64, !dbg !4937
  %mul = mul i64 %10, %conv5, !dbg !4939
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4940
  %14 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4941
  %scan_progress = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %14, i32 0, i32 12, !dbg !4942
  %15 = load i32, i32* %scan_progress, align 4, !dbg !4942
  %call6 = call i32 @comedi_bytes_to_samples(%struct.comedi_subdevice* %13, i32 %15) #8, !dbg !4943
  %conv7 = zext i32 %call6 to i64, !dbg !4943
  %sub = sub i64 %mul, %conv7, !dbg !4944
  store i64 %sub, i64* %samples_left, align 8, !dbg !4945
  %16 = load i64, i64* %samples_left, align 8, !dbg !4946
  %17 = load i32, i32* %nsamples.addr, align 4, !dbg !4948
  %conv8 = zext i32 %17 to i64, !dbg !4948
  %cmp9 = icmp ult i64 %16, %conv8, !dbg !4949
  br i1 %cmp9, label %if.then11, label %if.end13, !dbg !4950

if.then11:                                        ; preds = %if.end4
  %18 = load i64, i64* %samples_left, align 8, !dbg !4951
  %conv12 = trunc i64 %18 to i32, !dbg !4951
  store i32 %conv12, i32* %retval, align 4, !dbg !4952
  br label %return, !dbg !4952

if.end13:                                         ; preds = %if.end4
  %19 = load i32, i32* %nsamples.addr, align 4, !dbg !4953
  store i32 %19, i32* %retval, align 4, !dbg !4954
  br label %return, !dbg !4954

return:                                           ; preds = %if.end13, %if.then11, %if.then3, %if.then
  %20 = load i32, i32* %retval, align 4, !dbg !4955
  ret i32 %20, !dbg !4955
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_bytes_to_samples(%struct.comedi_subdevice* %s, i32 %nbytes) #0 !dbg !4956 {
entry:
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %nbytes.addr = alloca i32, align 4
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4957, metadata !DIExpression()), !dbg !4958
  store i32 %nbytes, i32* %nbytes.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nbytes.addr, metadata !4959, metadata !DIExpression()), !dbg !4960
  %0 = load i32, i32* %nbytes.addr, align 4, !dbg !4961
  %1 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4962
  %call = call i32 @comedi_sample_shift(%struct.comedi_subdevice* %1) #8, !dbg !4963
  %shr = lshr i32 %0, %call, !dbg !4964
  ret i32 %shr, !dbg !4965
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @comedi_inc_scan_progress(%struct.comedi_subdevice* %s, i32 %num_bytes) #0 !dbg !4966 {
entry:
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %num_bytes.addr = alloca i32, align 4
  %async = alloca %struct.comedi_async*, align 8
  %cmd = alloca %struct.comedi_cmd*, align 8
  %scan_length = alloca i32, align 4
  %nscans = alloca i32, align 4
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4969, metadata !DIExpression()), !dbg !4970
  store i32 %num_bytes, i32* %num_bytes.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_bytes.addr, metadata !4971, metadata !DIExpression()), !dbg !4972
  call void @llvm.dbg.declare(metadata %struct.comedi_async** %async, metadata !4973, metadata !DIExpression()), !dbg !4974
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4975
  %async1 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 7, !dbg !4976
  %1 = load %struct.comedi_async*, %struct.comedi_async** %async1, align 8, !dbg !4976
  store %struct.comedi_async* %1, %struct.comedi_async** %async, align 8, !dbg !4974
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd, metadata !4977, metadata !DIExpression()), !dbg !4978
  %2 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4979
  %cmd2 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %2, i32 0, i32 17, !dbg !4980
  store %struct.comedi_cmd* %cmd2, %struct.comedi_cmd** %cmd, align 8, !dbg !4978
  call void @llvm.dbg.declare(metadata i32* %scan_length, metadata !4981, metadata !DIExpression()), !dbg !4982
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4983
  %call = call i32 @comedi_bytes_per_scan(%struct.comedi_subdevice* %3) #8, !dbg !4984
  store i32 %call, i32* %scan_length, align 4, !dbg !4982
  %4 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4985
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %4, i32 0, i32 4, !dbg !4987
  %5 = load i32, i32* %subdev_flags, align 4, !dbg !4987
  %and = and i32 %5, 536870912, !dbg !4988
  %tobool = icmp ne i32 %and, 0, !dbg !4988
  br i1 %tobool, label %if.end, label %if.then, !dbg !4989

if.then:                                          ; preds = %entry
  %6 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4990
  %7 = load i32, i32* %num_bytes.addr, align 4, !dbg !4992
  %call3 = call i32 @comedi_bytes_to_samples(%struct.comedi_subdevice* %6, i32 %7) #8, !dbg !4993
  %8 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4994
  %cur_chan = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %8, i32 0, i32 10, !dbg !4995
  %9 = load i32, i32* %cur_chan, align 4, !dbg !4996
  %add = add i32 %9, %call3, !dbg !4996
  store i32 %add, i32* %cur_chan, align 4, !dbg !4996
  %10 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !4997
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %10, i32 0, i32 13, !dbg !4998
  %11 = load i32, i32* %chanlist_len, align 8, !dbg !4998
  %12 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4999
  %cur_chan4 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %12, i32 0, i32 10, !dbg !5000
  %13 = load i32, i32* %cur_chan4, align 4, !dbg !5001
  %rem = urem i32 %13, %11, !dbg !5001
  store i32 %rem, i32* %cur_chan4, align 4, !dbg !5001
  br label %if.end, !dbg !5002

if.end:                                           ; preds = %if.then, %entry
  %14 = load i32, i32* %num_bytes.addr, align 4, !dbg !5003
  %15 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5004
  %scan_progress = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %15, i32 0, i32 12, !dbg !5005
  %16 = load i32, i32* %scan_progress, align 4, !dbg !5006
  %add5 = add i32 %16, %14, !dbg !5006
  store i32 %add5, i32* %scan_progress, align 4, !dbg !5006
  %17 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5007
  %scan_progress6 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %17, i32 0, i32 12, !dbg !5009
  %18 = load i32, i32* %scan_progress6, align 4, !dbg !5009
  %19 = load i32, i32* %scan_length, align 4, !dbg !5010
  %cmp = icmp uge i32 %18, %19, !dbg !5011
  br i1 %cmp, label %if.then7, label %if.end17, !dbg !5012

if.then7:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %nscans, metadata !5013, metadata !DIExpression()), !dbg !5015
  %20 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5016
  %scan_progress8 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %20, i32 0, i32 12, !dbg !5017
  %21 = load i32, i32* %scan_progress8, align 4, !dbg !5017
  %22 = load i32, i32* %scan_length, align 4, !dbg !5018
  %div = udiv i32 %21, %22, !dbg !5019
  store i32 %div, i32* %nscans, align 4, !dbg !5015
  %23 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5020
  %scans_done = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %23, i32 0, i32 11, !dbg !5022
  %24 = load i32, i32* %scans_done, align 8, !dbg !5022
  %25 = load i32, i32* %nscans, align 4, !dbg !5023
  %sub = sub i32 -1, %25, !dbg !5024
  %cmp9 = icmp ult i32 %24, %sub, !dbg !5025
  br i1 %cmp9, label %if.then10, label %if.else, !dbg !5026

if.then10:                                        ; preds = %if.then7
  %26 = load i32, i32* %nscans, align 4, !dbg !5027
  %27 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5028
  %scans_done11 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %27, i32 0, i32 11, !dbg !5029
  %28 = load i32, i32* %scans_done11, align 8, !dbg !5030
  %add12 = add i32 %28, %26, !dbg !5030
  store i32 %add12, i32* %scans_done11, align 8, !dbg !5030
  br label %if.end14, !dbg !5028

if.else:                                          ; preds = %if.then7
  %29 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5031
  %scans_done13 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %29, i32 0, i32 11, !dbg !5032
  store i32 -1, i32* %scans_done13, align 8, !dbg !5033
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then10
  %30 = load i32, i32* %scan_length, align 4, !dbg !5034
  %31 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5035
  %scan_progress15 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %31, i32 0, i32 12, !dbg !5036
  %32 = load i32, i32* %scan_progress15, align 4, !dbg !5037
  %rem16 = urem i32 %32, %30, !dbg !5037
  store i32 %rem16, i32* %scan_progress15, align 4, !dbg !5037
  %33 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5038
  %events = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %33, i32 0, i32 16, !dbg !5039
  %34 = load i32, i32* %events, align 4, !dbg !5040
  %or = or i32 %34, 1, !dbg !5040
  store i32 %or, i32* %events, align 4, !dbg !5040
  br label %if.end17, !dbg !5041

if.end17:                                         ; preds = %if.end14, %if.end
  ret void, !dbg !5042
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @comedi_handle_events(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #0 !dbg !5043 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %events = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5046, metadata !DIExpression()), !dbg !5047
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5048, metadata !DIExpression()), !dbg !5049
  call void @llvm.dbg.declare(metadata i32* %events, metadata !5050, metadata !DIExpression()), !dbg !5051
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5052
  %async = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 7, !dbg !5053
  %1 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5053
  %events1 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %1, i32 0, i32 16, !dbg !5054
  %2 = load i32, i32* %events1, align 4, !dbg !5054
  store i32 %2, i32* %events, align 4, !dbg !5051
  %3 = load i32, i32* %events, align 4, !dbg !5055
  %cmp = icmp eq i32 %3, 0, !dbg !5057
  br i1 %cmp, label %if.then, label %if.end, !dbg !5058

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %events, align 4, !dbg !5059
  store i32 %4, i32* %retval, align 4, !dbg !5060
  br label %return, !dbg !5060

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %events, align 4, !dbg !5061
  %and = and i32 %5, 50, !dbg !5063
  %tobool = icmp ne i32 %and, 0, !dbg !5063
  br i1 %tobool, label %land.lhs.true, label %if.end5, !dbg !5064

land.lhs.true:                                    ; preds = %if.end
  %6 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5065
  %cancel = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %6, i32 0, i32 25, !dbg !5066
  %7 = load i32 (%struct.comedi_device*, %struct.comedi_subdevice*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)** %cancel, align 8, !dbg !5066
  %tobool2 = icmp ne i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* %7, null, !dbg !5065
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !5067

if.then3:                                         ; preds = %land.lhs.true
  %8 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5068
  %cancel4 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %8, i32 0, i32 25, !dbg !5069
  %9 = load i32 (%struct.comedi_device*, %struct.comedi_subdevice*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)** %cancel4, align 8, !dbg !5069
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5070
  %11 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5071
  %call = call i32 %9(%struct.comedi_device* %10, %struct.comedi_subdevice* %11) #8, !dbg !5068
  br label %if.end5, !dbg !5068

if.end5:                                          ; preds = %if.then3, %land.lhs.true, %if.end
  %12 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5072
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5073
  call void @comedi_event(%struct.comedi_device* %12, %struct.comedi_subdevice* %13) #8, !dbg !5074
  %14 = load i32, i32* %events, align 4, !dbg !5075
  store i32 %14, i32* %retval, align 4, !dbg !5076
  br label %return, !dbg !5076

return:                                           ; preds = %if.end5, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !5077
  ret i32 %15, !dbg !5077
}

; Function Attrs: noredzone
declare dso_local void @comedi_event(%struct.comedi_device*, %struct.comedi_subdevice*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @comedi_load_firmware(%struct.comedi_device* %dev, %struct.device* %device, i8* %name, i32 (%struct.comedi_device*, i8*, i64, i64)* %cb, i64 %context) #0 !dbg !5078 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %device.addr = alloca %struct.device*, align 8
  %name.addr = alloca i8*, align 8
  %cb.addr = alloca i32 (%struct.comedi_device*, i8*, i64, i64)*, align 8
  %context.addr = alloca i64, align 8
  %fw = alloca %struct.firmware*, align 8
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5086, metadata !DIExpression()), !dbg !5087
  store %struct.device* %device, %struct.device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %device.addr, metadata !5088, metadata !DIExpression()), !dbg !5089
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !5090, metadata !DIExpression()), !dbg !5091
  store i32 (%struct.comedi_device*, i8*, i64, i64)* %cb, i32 (%struct.comedi_device*, i8*, i64, i64)** %cb.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.comedi_device*, i8*, i64, i64)** %cb.addr, metadata !5092, metadata !DIExpression()), !dbg !5093
  store i64 %context, i64* %context.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %context.addr, metadata !5094, metadata !DIExpression()), !dbg !5095
  call void @llvm.dbg.declare(metadata %struct.firmware** %fw, metadata !5096, metadata !DIExpression()), !dbg !5105
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5106, metadata !DIExpression()), !dbg !5107
  %0 = load i32 (%struct.comedi_device*, i8*, i64, i64)*, i32 (%struct.comedi_device*, i8*, i64, i64)** %cb.addr, align 8, !dbg !5108
  %tobool = icmp ne i32 (%struct.comedi_device*, i8*, i64, i64)* %0, null, !dbg !5108
  br i1 %tobool, label %if.end, label %if.then, !dbg !5110

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5111
  br label %return, !dbg !5111

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %name.addr, align 8, !dbg !5112
  %2 = load %struct.device*, %struct.device** %device.addr, align 8, !dbg !5113
  %call = call i32 @request_firmware(%struct.firmware** %fw, i8* %1, %struct.device* %2) #8, !dbg !5114
  store i32 %call, i32* %ret, align 4, !dbg !5115
  %3 = load i32, i32* %ret, align 4, !dbg !5116
  %cmp = icmp eq i32 %3, 0, !dbg !5118
  br i1 %cmp, label %if.then1, label %if.end3, !dbg !5119

if.then1:                                         ; preds = %if.end
  %4 = load i32 (%struct.comedi_device*, i8*, i64, i64)*, i32 (%struct.comedi_device*, i8*, i64, i64)** %cb.addr, align 8, !dbg !5120
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5122
  %6 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !5123
  %data = getelementptr inbounds %struct.firmware, %struct.firmware* %6, i32 0, i32 1, !dbg !5124
  %7 = load i8*, i8** %data, align 8, !dbg !5124
  %8 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !5125
  %size = getelementptr inbounds %struct.firmware, %struct.firmware* %8, i32 0, i32 0, !dbg !5126
  %9 = load i64, i64* %size, align 8, !dbg !5126
  %10 = load i64, i64* %context.addr, align 8, !dbg !5127
  %call2 = call i32 %4(%struct.comedi_device* %5, i8* %7, i64 %9, i64 %10) #8, !dbg !5120
  store i32 %call2, i32* %ret, align 4, !dbg !5128
  %11 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !5129
  call void @release_firmware(%struct.firmware* %11) #8, !dbg !5130
  br label %if.end3, !dbg !5131

if.end3:                                          ; preds = %if.then1, %if.end
  %12 = load i32, i32* %ret, align 4, !dbg !5132
  %cmp4 = icmp slt i32 %12, 0, !dbg !5133
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !5132

cond.true:                                        ; preds = %if.end3
  %13 = load i32, i32* %ret, align 4, !dbg !5134
  br label %cond.end, !dbg !5132

cond.false:                                       ; preds = %if.end3
  br label %cond.end, !dbg !5132

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %13, %cond.true ], [ 0, %cond.false ], !dbg !5132
  store i32 %cond, i32* %retval, align 4, !dbg !5135
  br label %return, !dbg !5135

return:                                           ; preds = %cond.end, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !5136
  ret i32 %14, !dbg !5136
}

; Function Attrs: noredzone
declare dso_local i32 @request_firmware(%struct.firmware**, i8*, %struct.device*) #2

; Function Attrs: noredzone
declare dso_local void @release_firmware(%struct.firmware*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @__comedi_request_region(%struct.comedi_device* %dev, i64 %start, i64 %len) #0 !dbg !5137 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %start.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5140, metadata !DIExpression()), !dbg !5141
  store i64 %start, i64* %start.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %start.addr, metadata !5142, metadata !DIExpression()), !dbg !5143
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !5144, metadata !DIExpression()), !dbg !5145
  %0 = load i64, i64* %start.addr, align 8, !dbg !5146
  %tobool = icmp ne i64 %0, 0, !dbg !5146
  br i1 %tobool, label %if.end, label %if.then, !dbg !5148

if.then:                                          ; preds = %entry
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5149
  %class_dev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %1, i32 0, i32 4, !dbg !5149
  %2 = load %struct.device*, %struct.device** %class_dev, align 8, !dbg !5149
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5149
  %board_name = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %3, i32 0, i32 8, !dbg !5149
  %4 = load i8*, i8** %board_name, align 8, !dbg !5149
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %4) #12, !dbg !5149
  store i32 -22, i32* %retval, align 4, !dbg !5151
  br label %return, !dbg !5151

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %start.addr, align 8, !dbg !5152
  %6 = load i64, i64* %len.addr, align 8, !dbg !5152
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5152
  %board_name1 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 8, !dbg !5152
  %8 = load i8*, i8** %board_name1, align 8, !dbg !5152
  %call = call %struct.resource* @__request_region(%struct.resource* @ioport_resource, i64 %5, i64 %6, i8* %8, i32 0) #8, !dbg !5152
  %tobool2 = icmp ne %struct.resource* %call, null, !dbg !5152
  br i1 %tobool2, label %if.end6, label %if.then3, !dbg !5154

if.then3:                                         ; preds = %if.end
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5155
  %class_dev4 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 4, !dbg !5155
  %10 = load %struct.device*, %struct.device** %class_dev4, align 8, !dbg !5155
  %11 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5155
  %board_name5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 8, !dbg !5155
  %12 = load i8*, i8** %board_name5, align 8, !dbg !5155
  %13 = load i64, i64* %start.addr, align 8, !dbg !5155
  %14 = load i64, i64* %len.addr, align 8, !dbg !5155
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %10, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %12, i64 %13, i64 %14) #12, !dbg !5155
  store i32 -5, i32* %retval, align 4, !dbg !5157
  br label %return, !dbg !5157

if.end6:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5158
  br label %return, !dbg !5158

return:                                           ; preds = %if.end6, %if.then3, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !5159
  ret i32 %15, !dbg !5159
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #4

; Function Attrs: noredzone
declare dso_local %struct.resource* @__request_region(%struct.resource*, i64, i64, i8*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @comedi_request_region(%struct.comedi_device* %dev, i64 %start, i64 %len) #0 !dbg !5160 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %start.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5161, metadata !DIExpression()), !dbg !5162
  store i64 %start, i64* %start.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %start.addr, metadata !5163, metadata !DIExpression()), !dbg !5164
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !5165, metadata !DIExpression()), !dbg !5166
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5167, metadata !DIExpression()), !dbg !5168
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5169
  %1 = load i64, i64* %start.addr, align 8, !dbg !5170
  %2 = load i64, i64* %len.addr, align 8, !dbg !5171
  %call = call i32 @__comedi_request_region(%struct.comedi_device* %0, i64 %1, i64 %2) #8, !dbg !5172
  store i32 %call, i32* %ret, align 4, !dbg !5173
  %3 = load i32, i32* %ret, align 4, !dbg !5174
  %cmp = icmp eq i32 %3, 0, !dbg !5176
  br i1 %cmp, label %if.then, label %if.end, !dbg !5177

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %start.addr, align 8, !dbg !5178
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5180
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 18, !dbg !5181
  store i64 %4, i64* %iobase, align 8, !dbg !5182
  %6 = load i64, i64* %len.addr, align 8, !dbg !5183
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5184
  %iolen = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 19, !dbg !5185
  store i64 %6, i64* %iolen, align 8, !dbg !5186
  br label %if.end, !dbg !5187

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* %ret, align 4, !dbg !5188
  ret i32 %8, !dbg !5189
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @comedi_legacy_detach(%struct.comedi_device* %dev) #0 !dbg !5190 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5191, metadata !DIExpression()), !dbg !5192
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5193
  %irq = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 20, !dbg !5195
  %1 = load i32, i32* %irq, align 8, !dbg !5195
  %tobool = icmp ne i32 %1, 0, !dbg !5193
  br i1 %tobool, label %if.then, label %if.end, !dbg !5196

if.then:                                          ; preds = %entry
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5197
  %irq1 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %2, i32 0, i32 20, !dbg !5199
  %3 = load i32, i32* %irq1, align 8, !dbg !5199
  %4 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5200
  %5 = bitcast %struct.comedi_device* %4 to i8*, !dbg !5200
  %call = call i8* @free_irq(i32 %3, i8* %5) #8, !dbg !5201
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5202
  %irq2 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 20, !dbg !5203
  store i32 0, i32* %irq2, align 8, !dbg !5204
  br label %if.end, !dbg !5205

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5206
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 18, !dbg !5208
  %8 = load i64, i64* %iobase, align 8, !dbg !5208
  %tobool3 = icmp ne i64 %8, 0, !dbg !5206
  br i1 %tobool3, label %land.lhs.true, label %if.end10, !dbg !5209

land.lhs.true:                                    ; preds = %if.end
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5210
  %iolen = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 19, !dbg !5211
  %10 = load i64, i64* %iolen, align 8, !dbg !5211
  %tobool4 = icmp ne i64 %10, 0, !dbg !5210
  br i1 %tobool4, label %if.then5, label %if.end10, !dbg !5212

if.then5:                                         ; preds = %land.lhs.true
  %11 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5213
  %iobase6 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 18, !dbg !5213
  %12 = load i64, i64* %iobase6, align 8, !dbg !5213
  %13 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5213
  %iolen7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 19, !dbg !5213
  %14 = load i64, i64* %iolen7, align 8, !dbg !5213
  call void @__release_region(%struct.resource* @ioport_resource, i64 %12, i64 %14) #8, !dbg !5213
  %15 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5215
  %iobase8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 18, !dbg !5216
  store i64 0, i64* %iobase8, align 8, !dbg !5217
  %16 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5218
  %iolen9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 19, !dbg !5219
  store i64 0, i64* %iolen9, align 8, !dbg !5220
  br label %if.end10, !dbg !5221

if.end10:                                         ; preds = %if.then5, %land.lhs.true, %if.end
  ret void, !dbg !5222
}

; Function Attrs: noredzone
declare dso_local i8* @free_irq(i32, i8*) #2

; Function Attrs: noredzone
declare dso_local void @__release_region(%struct.resource*, i64, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @comedi_device_attach(%struct.comedi_device* %dev, %struct.comedi_devconfig* %it) #0 !dbg !5223 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %it.addr = alloca %struct.comedi_devconfig*, align 8
  %driv = alloca %struct.comedi_driver*, align 8
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5224, metadata !DIExpression()), !dbg !5225
  store %struct.comedi_devconfig* %it, %struct.comedi_devconfig** %it.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_devconfig** %it.addr, metadata !5226, metadata !DIExpression()), !dbg !5227
  call void @llvm.dbg.declare(metadata %struct.comedi_driver** %driv, metadata !5228, metadata !DIExpression()), !dbg !5229
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5230, metadata !DIExpression()), !dbg !5231
  br label %do.body, !dbg !5232

do.body:                                          ; preds = %entry
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5233
  %mutex = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 12, !dbg !5233
  br label %do.end, !dbg !5233

do.end:                                           ; preds = %do.body
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5235
  %attached = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %1, i32 0, i32 10, !dbg !5237
  %bf.load = load i8, i8* %attached, align 8, !dbg !5237
  %bf.clear = and i8 %bf.load, 1, !dbg !5237
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5237
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5235
  br i1 %tobool, label %if.then, label %if.end, !dbg !5238

if.then:                                          ; preds = %do.end
  store i32 -16, i32* %retval, align 4, !dbg !5239
  br label %return, !dbg !5239

if.end:                                           ; preds = %do.end
  call void @mutex_lock(%struct.mutex* @comedi_drivers_list_lock) #8, !dbg !5240
  %2 = load %struct.comedi_driver*, %struct.comedi_driver** @comedi_drivers, align 8, !dbg !5241
  store %struct.comedi_driver* %2, %struct.comedi_driver** %driv, align 8, !dbg !5243
  br label %for.cond, !dbg !5244

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load %struct.comedi_driver*, %struct.comedi_driver** %driv, align 8, !dbg !5245
  %tobool1 = icmp ne %struct.comedi_driver* %3, null, !dbg !5247
  br i1 %tobool1, label %for.body, label %for.end, !dbg !5247

for.body:                                         ; preds = %for.cond
  %4 = load %struct.comedi_driver*, %struct.comedi_driver** %driv, align 8, !dbg !5248
  %module = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %4, i32 0, i32 2, !dbg !5251
  %5 = load %struct.module*, %struct.module** %module, align 8, !dbg !5251
  %call = call zeroext i1 @try_module_get(%struct.module* %5) #8, !dbg !5252
  br i1 %call, label %if.end3, label %if.then2, !dbg !5253

if.then2:                                         ; preds = %for.body
  br label %for.inc, !dbg !5254

if.end3:                                          ; preds = %for.body
  %6 = load %struct.comedi_driver*, %struct.comedi_driver** %driv, align 8, !dbg !5255
  %num_names = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %6, i32 0, i32 6, !dbg !5257
  %7 = load i32, i32* %num_names, align 8, !dbg !5257
  %tobool4 = icmp ne i32 %7, 0, !dbg !5255
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !5258

if.then5:                                         ; preds = %if.end3
  %8 = load %struct.comedi_driver*, %struct.comedi_driver** %driv, align 8, !dbg !5259
  %9 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %it.addr, align 8, !dbg !5261
  %board_name = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %9, i32 0, i32 0, !dbg !5262
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %board_name, i64 0, i64 0, !dbg !5261
  %call6 = call i8* @comedi_recognize(%struct.comedi_driver* %8, i8* %arraydecay) #8, !dbg !5263
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5264
  %board_ptr = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 9, !dbg !5265
  store i8* %call6, i8** %board_ptr, align 8, !dbg !5266
  %11 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5267
  %board_ptr7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 9, !dbg !5269
  %12 = load i8*, i8** %board_ptr7, align 8, !dbg !5269
  %tobool8 = icmp ne i8* %12, null, !dbg !5267
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !5270

if.then9:                                         ; preds = %if.then5
  br label %for.end, !dbg !5271

if.end10:                                         ; preds = %if.then5
  br label %if.end16, !dbg !5272

if.else:                                          ; preds = %if.end3
  %13 = load %struct.comedi_driver*, %struct.comedi_driver** %driv, align 8, !dbg !5273
  %driver_name = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %13, i32 0, i32 1, !dbg !5275
  %14 = load i8*, i8** %driver_name, align 8, !dbg !5275
  %15 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %it.addr, align 8, !dbg !5276
  %board_name11 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %15, i32 0, i32 0, !dbg !5277
  %arraydecay12 = getelementptr inbounds [20 x i8], [20 x i8]* %board_name11, i64 0, i64 0, !dbg !5276
  %call13 = call i32 @strcmp(i8* %14, i8* %arraydecay12) #8, !dbg !5278
  %cmp = icmp eq i32 %call13, 0, !dbg !5279
  br i1 %cmp, label %if.then14, label %if.end15, !dbg !5280

if.then14:                                        ; preds = %if.else
  br label %for.end, !dbg !5281

if.end15:                                         ; preds = %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end10
  %16 = load %struct.comedi_driver*, %struct.comedi_driver** %driv, align 8, !dbg !5283
  %module17 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %16, i32 0, i32 2, !dbg !5284
  %17 = load %struct.module*, %struct.module** %module17, align 8, !dbg !5284
  call void @module_put(%struct.module* %17) #8, !dbg !5285
  br label %for.inc, !dbg !5286

for.inc:                                          ; preds = %if.end16, %if.then2
  %18 = load %struct.comedi_driver*, %struct.comedi_driver** %driv, align 8, !dbg !5287
  %next = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %18, i32 0, i32 0, !dbg !5288
  %19 = load %struct.comedi_driver*, %struct.comedi_driver** %next, align 8, !dbg !5288
  store %struct.comedi_driver* %19, %struct.comedi_driver** %driv, align 8, !dbg !5289
  br label %for.cond, !dbg !5290, !llvm.loop !5291

for.end:                                          ; preds = %if.then14, %if.then9, %for.cond
  %20 = load %struct.comedi_driver*, %struct.comedi_driver** %driv, align 8, !dbg !5293
  %tobool18 = icmp ne %struct.comedi_driver* %20, null, !dbg !5293
  br i1 %tobool18, label %if.end31, label %if.then19, !dbg !5295

if.then19:                                        ; preds = %for.end
  %21 = load %struct.comedi_driver*, %struct.comedi_driver** @comedi_drivers, align 8, !dbg !5296
  store %struct.comedi_driver* %21, %struct.comedi_driver** %driv, align 8, !dbg !5299
  br label %for.cond20, !dbg !5300

for.cond20:                                       ; preds = %for.inc28, %if.then19
  %22 = load %struct.comedi_driver*, %struct.comedi_driver** %driv, align 8, !dbg !5301
  %tobool21 = icmp ne %struct.comedi_driver* %22, null, !dbg !5303
  br i1 %tobool21, label %for.body22, label %for.end30, !dbg !5303

for.body22:                                       ; preds = %for.cond20
  %23 = load %struct.comedi_driver*, %struct.comedi_driver** %driv, align 8, !dbg !5304
  %module23 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %23, i32 0, i32 2, !dbg !5307
  %24 = load %struct.module*, %struct.module** %module23, align 8, !dbg !5307
  %call24 = call zeroext i1 @try_module_get(%struct.module* %24) #8, !dbg !5308
  br i1 %call24, label %if.end26, label %if.then25, !dbg !5309

if.then25:                                        ; preds = %for.body22
  br label %for.inc28, !dbg !5310

if.end26:                                         ; preds = %for.body22
  %25 = load %struct.comedi_driver*, %struct.comedi_driver** %driv, align 8, !dbg !5311
  call void @comedi_report_boards(%struct.comedi_driver* %25) #8, !dbg !5312
  %26 = load %struct.comedi_driver*, %struct.comedi_driver** %driv, align 8, !dbg !5313
  %module27 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %26, i32 0, i32 2, !dbg !5314
  %27 = load %struct.module*, %struct.module** %module27, align 8, !dbg !5314
  call void @module_put(%struct.module* %27) #8, !dbg !5315
  br label %for.inc28, !dbg !5316

for.inc28:                                        ; preds = %if.end26, %if.then25
  %28 = load %struct.comedi_driver*, %struct.comedi_driver** %driv, align 8, !dbg !5317
  %next29 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %28, i32 0, i32 0, !dbg !5318
  %29 = load %struct.comedi_driver*, %struct.comedi_driver** %next29, align 8, !dbg !5318
  store %struct.comedi_driver* %29, %struct.comedi_driver** %driv, align 8, !dbg !5319
  br label %for.cond20, !dbg !5320, !llvm.loop !5321

for.end30:                                        ; preds = %for.cond20
  store i32 -5, i32* %ret, align 4, !dbg !5323
  br label %out, !dbg !5324

if.end31:                                         ; preds = %for.end
  %30 = load %struct.comedi_driver*, %struct.comedi_driver** %driv, align 8, !dbg !5325
  %attach = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %30, i32 0, i32 3, !dbg !5327
  %31 = load i32 (%struct.comedi_device*, %struct.comedi_devconfig*)*, i32 (%struct.comedi_device*, %struct.comedi_devconfig*)** %attach, align 8, !dbg !5327
  %tobool32 = icmp ne i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* %31, null, !dbg !5325
  br i1 %tobool32, label %if.end36, label %if.then33, !dbg !5328

if.then33:                                        ; preds = %if.end31
  %32 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5329
  %class_dev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %32, i32 0, i32 4, !dbg !5329
  %33 = load %struct.device*, %struct.device** %class_dev, align 8, !dbg !5329
  %34 = load %struct.comedi_driver*, %struct.comedi_driver** %driv, align 8, !dbg !5329
  %driver_name34 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %34, i32 0, i32 1, !dbg !5329
  %35 = load i8*, i8** %driver_name34, align 8, !dbg !5329
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %33, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i8* %35) #12, !dbg !5329
  %36 = load %struct.comedi_driver*, %struct.comedi_driver** %driv, align 8, !dbg !5331
  %module35 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %36, i32 0, i32 2, !dbg !5332
  %37 = load %struct.module*, %struct.module** %module35, align 8, !dbg !5332
  call void @module_put(%struct.module* %37) #8, !dbg !5333
  store i32 -5, i32* %ret, align 4, !dbg !5334
  br label %out, !dbg !5335

if.end36:                                         ; preds = %if.end31
  %38 = load %struct.comedi_driver*, %struct.comedi_driver** %driv, align 8, !dbg !5336
  %39 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5337
  %driver = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %39, i32 0, i32 1, !dbg !5338
  store %struct.comedi_driver* %38, %struct.comedi_driver** %driver, align 8, !dbg !5339
  %40 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5340
  %board_ptr37 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %40, i32 0, i32 9, !dbg !5341
  %41 = load i8*, i8** %board_ptr37, align 8, !dbg !5341
  %tobool38 = icmp ne i8* %41, null, !dbg !5340
  br i1 %tobool38, label %cond.true, label %cond.false, !dbg !5340

cond.true:                                        ; preds = %if.end36
  %42 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5342
  %board_ptr39 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %42, i32 0, i32 9, !dbg !5343
  %43 = load i8*, i8** %board_ptr39, align 8, !dbg !5343
  %44 = bitcast i8* %43 to i8**, !dbg !5344
  %45 = load i8*, i8** %44, align 8, !dbg !5345
  br label %cond.end, !dbg !5340

cond.false:                                       ; preds = %if.end36
  %46 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5346
  %driver40 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %46, i32 0, i32 1, !dbg !5347
  %47 = load %struct.comedi_driver*, %struct.comedi_driver** %driver40, align 8, !dbg !5347
  %driver_name41 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %47, i32 0, i32 1, !dbg !5348
  %48 = load i8*, i8** %driver_name41, align 8, !dbg !5348
  br label %cond.end, !dbg !5340

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %45, %cond.true ], [ %48, %cond.false ], !dbg !5340
  %49 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5349
  %board_name42 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %49, i32 0, i32 8, !dbg !5350
  store i8* %cond, i8** %board_name42, align 8, !dbg !5351
  %50 = load %struct.comedi_driver*, %struct.comedi_driver** %driv, align 8, !dbg !5352
  %attach43 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %50, i32 0, i32 3, !dbg !5353
  %51 = load i32 (%struct.comedi_device*, %struct.comedi_devconfig*)*, i32 (%struct.comedi_device*, %struct.comedi_devconfig*)** %attach43, align 8, !dbg !5353
  %52 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5354
  %53 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %it.addr, align 8, !dbg !5355
  %call44 = call i32 %51(%struct.comedi_device* %52, %struct.comedi_devconfig* %53) #8, !dbg !5352
  store i32 %call44, i32* %ret, align 4, !dbg !5356
  %54 = load i32, i32* %ret, align 4, !dbg !5357
  %cmp45 = icmp sge i32 %54, 0, !dbg !5359
  br i1 %cmp45, label %if.then46, label %if.end48, !dbg !5360

if.then46:                                        ; preds = %cond.end
  %55 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5361
  %call47 = call i32 @comedi_device_postconfig(%struct.comedi_device* %55) #8, !dbg !5362
  store i32 %call47, i32* %ret, align 4, !dbg !5363
  br label %if.end48, !dbg !5364

if.end48:                                         ; preds = %if.then46, %cond.end
  %56 = load i32, i32* %ret, align 4, !dbg !5365
  %cmp49 = icmp slt i32 %56, 0, !dbg !5367
  br i1 %cmp49, label %if.then50, label %if.end52, !dbg !5368

if.then50:                                        ; preds = %if.end48
  %57 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5369
  call void @comedi_device_detach(%struct.comedi_device* %57) #8, !dbg !5371
  %58 = load %struct.comedi_driver*, %struct.comedi_driver** %driv, align 8, !dbg !5372
  %module51 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %58, i32 0, i32 2, !dbg !5373
  %59 = load %struct.module*, %struct.module** %module51, align 8, !dbg !5373
  call void @module_put(%struct.module* %59) #8, !dbg !5374
  br label %if.end52, !dbg !5375

if.end52:                                         ; preds = %if.then50, %if.end48
  br label %out, !dbg !5376

out:                                              ; preds = %if.end52, %if.then33, %for.end30
  call void @llvm.dbg.label(metadata !5377), !dbg !5378
  call void @mutex_unlock(%struct.mutex* @comedi_drivers_list_lock) #8, !dbg !5379
  %60 = load i32, i32* %ret, align 4, !dbg !5380
  store i32 %60, i32* %retval, align 4, !dbg !5381
  br label %return, !dbg !5381

return:                                           ; preds = %out, %if.then
  %61 = load i32, i32* %retval, align 4, !dbg !5382
  ret i32 %61, !dbg !5382
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @try_module_get(%struct.module* %module) #0 !dbg !5383 {
entry:
  %module.addr = alloca %struct.module*, align 8
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !5387, metadata !DIExpression()), !dbg !5388
  ret i1 true, !dbg !5389
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @comedi_recognize(%struct.comedi_driver* %driv, i8* %name) #0 !dbg !5390 {
entry:
  %retval = alloca i8*, align 8
  %driv.addr = alloca %struct.comedi_driver*, align 8
  %name.addr = alloca i8*, align 8
  %name_ptr = alloca i8**, align 8
  %i = alloca i32, align 4
  store %struct.comedi_driver* %driv, %struct.comedi_driver** %driv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_driver** %driv.addr, metadata !5393, metadata !DIExpression()), !dbg !5394
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !5395, metadata !DIExpression()), !dbg !5396
  call void @llvm.dbg.declare(metadata i8*** %name_ptr, metadata !5397, metadata !DIExpression()), !dbg !5398
  %0 = load %struct.comedi_driver*, %struct.comedi_driver** %driv.addr, align 8, !dbg !5399
  %board_name = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %0, i32 0, i32 7, !dbg !5400
  %1 = load i8**, i8*** %board_name, align 8, !dbg !5400
  store i8** %1, i8*** %name_ptr, align 8, !dbg !5398
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5401, metadata !DIExpression()), !dbg !5402
  store i32 0, i32* %i, align 4, !dbg !5403
  br label %for.cond, !dbg !5405

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !5406
  %3 = load %struct.comedi_driver*, %struct.comedi_driver** %driv.addr, align 8, !dbg !5408
  %num_names = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %3, i32 0, i32 6, !dbg !5409
  %4 = load i32, i32* %num_names, align 8, !dbg !5409
  %cmp = icmp ult i32 %2, %4, !dbg !5410
  br i1 %cmp, label %for.body, label %for.end, !dbg !5411

for.body:                                         ; preds = %for.cond
  %5 = load i8**, i8*** %name_ptr, align 8, !dbg !5412
  %6 = load i8*, i8** %5, align 8, !dbg !5415
  %7 = load i8*, i8** %name.addr, align 8, !dbg !5416
  %call = call i32 @strcmp(i8* %6, i8* %7) #8, !dbg !5417
  %cmp1 = icmp eq i32 %call, 0, !dbg !5418
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5419

if.then:                                          ; preds = %for.body
  %8 = load i8**, i8*** %name_ptr, align 8, !dbg !5420
  %9 = bitcast i8** %8 to i8*, !dbg !5420
  store i8* %9, i8** %retval, align 8, !dbg !5421
  br label %return, !dbg !5421

if.end:                                           ; preds = %for.body
  %10 = load i8**, i8*** %name_ptr, align 8, !dbg !5422
  %11 = bitcast i8** %10 to i8*, !dbg !5423
  %12 = load %struct.comedi_driver*, %struct.comedi_driver** %driv.addr, align 8, !dbg !5424
  %offset = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %12, i32 0, i32 8, !dbg !5425
  %13 = load i32, i32* %offset, align 8, !dbg !5425
  %idx.ext = sext i32 %13 to i64, !dbg !5426
  %add.ptr = getelementptr i8, i8* %11, i64 %idx.ext, !dbg !5426
  %14 = bitcast i8* %add.ptr to i8**, !dbg !5423
  store i8** %14, i8*** %name_ptr, align 8, !dbg !5427
  br label %for.inc, !dbg !5428

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %i, align 4, !dbg !5429
  %inc = add i32 %15, 1, !dbg !5429
  store i32 %inc, i32* %i, align 4, !dbg !5429
  br label %for.cond, !dbg !5430, !llvm.loop !5431

for.end:                                          ; preds = %for.cond
  store i8* null, i8** %retval, align 8, !dbg !5433
  br label %return, !dbg !5433

return:                                           ; preds = %for.end, %if.then
  %16 = load i8*, i8** %retval, align 8, !dbg !5434
  ret i8* %16, !dbg !5434
}

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @module_put(%struct.module* %module) #0 !dbg !5435 {
entry:
  %module.addr = alloca %struct.module*, align 8
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !5438, metadata !DIExpression()), !dbg !5439
  ret void, !dbg !5440
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @comedi_report_boards(%struct.comedi_driver* %driv) #0 !dbg !5441 {
entry:
  %driv.addr = alloca %struct.comedi_driver*, align 8
  %i = alloca i32, align 4
  %name_ptr = alloca i8**, align 8
  store %struct.comedi_driver* %driv, %struct.comedi_driver** %driv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_driver** %driv.addr, metadata !5444, metadata !DIExpression()), !dbg !5445
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5446, metadata !DIExpression()), !dbg !5447
  call void @llvm.dbg.declare(metadata i8*** %name_ptr, metadata !5448, metadata !DIExpression()), !dbg !5449
  %0 = load %struct.comedi_driver*, %struct.comedi_driver** %driv.addr, align 8, !dbg !5450
  %driver_name = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %0, i32 0, i32 1, !dbg !5450
  %1 = load i8*, i8** %driver_name, align 8, !dbg !5450
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i64 0, i64 0), i8* %1) #12, !dbg !5450
  %2 = load %struct.comedi_driver*, %struct.comedi_driver** %driv.addr, align 8, !dbg !5451
  %board_name = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %2, i32 0, i32 7, !dbg !5452
  %3 = load i8**, i8*** %board_name, align 8, !dbg !5452
  store i8** %3, i8*** %name_ptr, align 8, !dbg !5453
  store i32 0, i32* %i, align 4, !dbg !5454
  br label %for.cond, !dbg !5456

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !dbg !5457
  %5 = load %struct.comedi_driver*, %struct.comedi_driver** %driv.addr, align 8, !dbg !5459
  %num_names = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %5, i32 0, i32 6, !dbg !5460
  %6 = load i32, i32* %num_names, align 8, !dbg !5460
  %cmp = icmp ult i32 %4, %6, !dbg !5461
  br i1 %cmp, label %for.body, label %for.end, !dbg !5462

for.body:                                         ; preds = %for.cond
  %7 = load i8**, i8*** %name_ptr, align 8, !dbg !5463
  %8 = load i8*, i8** %7, align 8, !dbg !5463
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* %8) #12, !dbg !5463
  %9 = load i8**, i8*** %name_ptr, align 8, !dbg !5465
  %10 = bitcast i8** %9 to i8*, !dbg !5466
  %11 = load %struct.comedi_driver*, %struct.comedi_driver** %driv.addr, align 8, !dbg !5467
  %offset = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %11, i32 0, i32 8, !dbg !5468
  %12 = load i32, i32* %offset, align 8, !dbg !5468
  %idx.ext = sext i32 %12 to i64, !dbg !5469
  %add.ptr = getelementptr i8, i8* %10, i64 %idx.ext, !dbg !5469
  %13 = bitcast i8* %add.ptr to i8**, !dbg !5470
  store i8** %13, i8*** %name_ptr, align 8, !dbg !5471
  br label %for.inc, !dbg !5472

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !dbg !5473
  %inc = add i32 %14, 1, !dbg !5473
  store i32 %inc, i32* %i, align 4, !dbg !5473
  br label %for.cond, !dbg !5474, !llvm.loop !5475

for.end:                                          ; preds = %for.cond
  %15 = load %struct.comedi_driver*, %struct.comedi_driver** %driv.addr, align 8, !dbg !5477
  %num_names2 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %15, i32 0, i32 6, !dbg !5479
  %16 = load i32, i32* %num_names2, align 8, !dbg !5479
  %cmp3 = icmp eq i32 %16, 0, !dbg !5480
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5481

if.then:                                          ; preds = %for.end
  %17 = load %struct.comedi_driver*, %struct.comedi_driver** %driv.addr, align 8, !dbg !5482
  %driver_name4 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %17, i32 0, i32 1, !dbg !5482
  %18 = load i8*, i8** %driver_name4, align 8, !dbg !5482
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* %18) #12, !dbg !5482
  br label %if.end, !dbg !5482

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !5483
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_device_postconfig(%struct.comedi_device* %dev) #0 !dbg !5484 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5485, metadata !DIExpression()), !dbg !5486
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5487, metadata !DIExpression()), !dbg !5488
  br label %do.body, !dbg !5489

do.body:                                          ; preds = %entry
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5490
  %mutex = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 12, !dbg !5490
  br label %do.end, !dbg !5490

do.end:                                           ; preds = %do.body
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5492
  %call = call i32 @__comedi_device_postconfig(%struct.comedi_device* %1) #8, !dbg !5493
  store i32 %call, i32* %ret, align 4, !dbg !5494
  %2 = load i32, i32* %ret, align 4, !dbg !5495
  %cmp = icmp slt i32 %2, 0, !dbg !5497
  br i1 %cmp, label %if.then, label %if.end, !dbg !5498

if.then:                                          ; preds = %do.end
  %3 = load i32, i32* %ret, align 4, !dbg !5499
  store i32 %3, i32* %retval, align 4, !dbg !5500
  br label %return, !dbg !5500

if.end:                                           ; preds = %do.end
  %4 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5501
  %attach_lock = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 13, !dbg !5502
  call void @down_write(%struct.rw_semaphore* %attach_lock) #8, !dbg !5503
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5504
  %attached = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 10, !dbg !5505
  %bf.load = load i8, i8* %attached, align 8, !dbg !5506
  %bf.clear = and i8 %bf.load, -2, !dbg !5506
  %bf.set = or i8 %bf.clear, 1, !dbg !5506
  store i8 %bf.set, i8* %attached, align 8, !dbg !5506
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5507
  %attach_lock1 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 13, !dbg !5508
  call void @up_write(%struct.rw_semaphore* %attach_lock1) #8, !dbg !5509
  store i32 0, i32* %retval, align 4, !dbg !5510
  br label %return, !dbg !5510

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !5511
  ret i32 %7, !dbg !5511
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @comedi_auto_config(%struct.device* %hardware_device, %struct.comedi_driver* %driver, i64 %context) #0 !dbg !5512 {
entry:
  %retval = alloca i32, align 4
  %hardware_device.addr = alloca %struct.device*, align 8
  %driver.addr = alloca %struct.comedi_driver*, align 8
  %context.addr = alloca i64, align 8
  %dev = alloca %struct.comedi_device*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %hardware_device, %struct.device** %hardware_device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %hardware_device.addr, metadata !5515, metadata !DIExpression()), !dbg !5516
  store %struct.comedi_driver* %driver, %struct.comedi_driver** %driver.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_driver** %driver.addr, metadata !5517, metadata !DIExpression()), !dbg !5518
  store i64 %context, i64* %context.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %context.addr, metadata !5519, metadata !DIExpression()), !dbg !5520
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev, metadata !5521, metadata !DIExpression()), !dbg !5522
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5523, metadata !DIExpression()), !dbg !5524
  %0 = load %struct.device*, %struct.device** %hardware_device.addr, align 8, !dbg !5525
  %tobool = icmp ne %struct.device* %0, null, !dbg !5525
  br i1 %tobool, label %if.end, label %if.then, !dbg !5527

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.comedi_auto_config, i64 0, i64 0)) #12, !dbg !5528
  store i32 -22, i32* %retval, align 4, !dbg !5530
  br label %return, !dbg !5530

if.end:                                           ; preds = %entry
  %1 = load %struct.comedi_driver*, %struct.comedi_driver** %driver.addr, align 8, !dbg !5531
  %tobool1 = icmp ne %struct.comedi_driver* %1, null, !dbg !5531
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !5533

if.then2:                                         ; preds = %if.end
  %2 = load %struct.device*, %struct.device** %hardware_device.addr, align 8, !dbg !5534
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.comedi_auto_config, i64 0, i64 0)) #12, !dbg !5534
  store i32 -22, i32* %retval, align 4, !dbg !5536
  br label %return, !dbg !5536

if.end3:                                          ; preds = %if.end
  %3 = load %struct.comedi_driver*, %struct.comedi_driver** %driver.addr, align 8, !dbg !5537
  %auto_attach = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %3, i32 0, i32 5, !dbg !5539
  %4 = load i32 (%struct.comedi_device*, i64)*, i32 (%struct.comedi_device*, i64)** %auto_attach, align 8, !dbg !5539
  %tobool4 = icmp ne i32 (%struct.comedi_device*, i64)* %4, null, !dbg !5537
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !5540

if.then5:                                         ; preds = %if.end3
  %5 = load %struct.device*, %struct.device** %hardware_device.addr, align 8, !dbg !5541
  %6 = load %struct.comedi_driver*, %struct.comedi_driver** %driver.addr, align 8, !dbg !5541
  %driver_name = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %6, i32 0, i32 1, !dbg !5541
  %7 = load i8*, i8** %driver_name, align 8, !dbg !5541
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %5, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i8* %7) #12, !dbg !5541
  store i32 -22, i32* %retval, align 4, !dbg !5543
  br label %return, !dbg !5543

if.end6:                                          ; preds = %if.end3
  %8 = load %struct.device*, %struct.device** %hardware_device.addr, align 8, !dbg !5544
  %call7 = call %struct.comedi_device* @comedi_alloc_board_minor(%struct.device* %8) #8, !dbg !5545
  store %struct.comedi_device* %call7, %struct.comedi_device** %dev, align 8, !dbg !5546
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5547
  %10 = bitcast %struct.comedi_device* %9 to i8*, !dbg !5547
  %call8 = call zeroext i1 @IS_ERR(i8* %10) #8, !dbg !5549
  br i1 %call8, label %if.then9, label %if.end12, !dbg !5550

if.then9:                                         ; preds = %if.end6
  %11 = load %struct.device*, %struct.device** %hardware_device.addr, align 8, !dbg !5551
  %12 = load %struct.comedi_driver*, %struct.comedi_driver** %driver.addr, align 8, !dbg !5551
  %driver_name10 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %12, i32 0, i32 1, !dbg !5551
  %13 = load i8*, i8** %driver_name10, align 8, !dbg !5551
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %11, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i8* %13) #12, !dbg !5551
  %14 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5553
  %15 = bitcast %struct.comedi_device* %14 to i8*, !dbg !5553
  %call11 = call i64 @PTR_ERR(i8* %15) #8, !dbg !5554
  %conv = trunc i64 %call11 to i32, !dbg !5554
  store i32 %conv, i32* %retval, align 4, !dbg !5555
  br label %return, !dbg !5555

if.end12:                                         ; preds = %if.end6
  br label %do.body, !dbg !5556

do.body:                                          ; preds = %if.end12
  %16 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5557
  %mutex = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 12, !dbg !5557
  br label %do.end, !dbg !5557

do.end:                                           ; preds = %do.body
  %17 = load %struct.comedi_driver*, %struct.comedi_driver** %driver.addr, align 8, !dbg !5559
  %18 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5560
  %driver13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 1, !dbg !5561
  store %struct.comedi_driver* %17, %struct.comedi_driver** %driver13, align 8, !dbg !5562
  %19 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5563
  %driver14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 1, !dbg !5564
  %20 = load %struct.comedi_driver*, %struct.comedi_driver** %driver14, align 8, !dbg !5564
  %driver_name15 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %20, i32 0, i32 1, !dbg !5565
  %21 = load i8*, i8** %driver_name15, align 8, !dbg !5565
  %22 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5566
  %board_name = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %22, i32 0, i32 8, !dbg !5567
  store i8* %21, i8** %board_name, align 8, !dbg !5568
  %23 = load %struct.comedi_driver*, %struct.comedi_driver** %driver.addr, align 8, !dbg !5569
  %auto_attach16 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %23, i32 0, i32 5, !dbg !5570
  %24 = load i32 (%struct.comedi_device*, i64)*, i32 (%struct.comedi_device*, i64)** %auto_attach16, align 8, !dbg !5570
  %25 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5571
  %26 = load i64, i64* %context.addr, align 8, !dbg !5572
  %call17 = call i32 %24(%struct.comedi_device* %25, i64 %26) #8, !dbg !5569
  store i32 %call17, i32* %ret, align 4, !dbg !5573
  %27 = load i32, i32* %ret, align 4, !dbg !5574
  %cmp = icmp sge i32 %27, 0, !dbg !5576
  br i1 %cmp, label %if.then19, label %if.end21, !dbg !5577

if.then19:                                        ; preds = %do.end
  %28 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5578
  %call20 = call i32 @comedi_device_postconfig(%struct.comedi_device* %28) #8, !dbg !5579
  store i32 %call20, i32* %ret, align 4, !dbg !5580
  br label %if.end21, !dbg !5581

if.end21:                                         ; preds = %if.then19, %do.end
  %29 = load i32, i32* %ret, align 4, !dbg !5582
  %cmp22 = icmp slt i32 %29, 0, !dbg !5584
  br i1 %cmp22, label %if.then24, label %if.else, !dbg !5585

if.then24:                                        ; preds = %if.end21
  %30 = load %struct.device*, %struct.device** %hardware_device.addr, align 8, !dbg !5586
  %31 = load %struct.comedi_driver*, %struct.comedi_driver** %driver.addr, align 8, !dbg !5586
  %driver_name25 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %31, i32 0, i32 1, !dbg !5586
  %32 = load i8*, i8** %driver_name25, align 8, !dbg !5586
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %30, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i8* %32) #12, !dbg !5586
  %33 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5588
  %mutex26 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %33, i32 0, i32 12, !dbg !5589
  call void @mutex_unlock(%struct.mutex* %mutex26) #8, !dbg !5590
  %34 = load %struct.device*, %struct.device** %hardware_device.addr, align 8, !dbg !5591
  call void @comedi_release_hardware_device(%struct.device* %34) #8, !dbg !5592
  br label %if.end30, !dbg !5593

if.else:                                          ; preds = %if.end21
  %35 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5594
  %class_dev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %35, i32 0, i32 4, !dbg !5594
  %36 = load %struct.device*, %struct.device** %class_dev, align 8, !dbg !5594
  %37 = load %struct.comedi_driver*, %struct.comedi_driver** %driver.addr, align 8, !dbg !5594
  %driver_name27 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %37, i32 0, i32 1, !dbg !5594
  %38 = load i8*, i8** %driver_name27, align 8, !dbg !5594
  %39 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5594
  %board_name28 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %39, i32 0, i32 8, !dbg !5594
  %40 = load i8*, i8** %board_name28, align 8, !dbg !5594
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %36, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0), i8* %38, i8* %40) #12, !dbg !5594
  %41 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5596
  %mutex29 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %41, i32 0, i32 12, !dbg !5597
  call void @mutex_unlock(%struct.mutex* %mutex29) #8, !dbg !5598
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then24
  %42 = load i32, i32* %ret, align 4, !dbg !5599
  store i32 %42, i32* %retval, align 4, !dbg !5600
  br label %return, !dbg !5600

return:                                           ; preds = %if.end30, %if.then9, %if.then5, %if.then2, %if.then
  %43 = load i32, i32* %retval, align 4, !dbg !5601
  ret i32 %43, !dbg !5601
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: noredzone
declare dso_local %struct.comedi_device* @comedi_alloc_board_minor(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !5602 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5606, metadata !DIExpression()), !dbg !5607
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5608
  %1 = ptrtoint i8* %0 to i64, !dbg !5608
  %2 = inttoptr i64 %1 to i8*, !dbg !5608
  %3 = ptrtoint i8* %2 to i64, !dbg !5608
  %cmp = icmp uge i64 %3, -4095, !dbg !5608
  %lnot = xor i1 %cmp, true, !dbg !5608
  %lnot1 = xor i1 %lnot, true, !dbg !5608
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5608
  %conv = sext i32 %lnot.ext to i64, !dbg !5608
  %tobool = icmp ne i64 %conv, 0, !dbg !5608
  ret i1 %tobool, !dbg !5609
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !5610 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5613, metadata !DIExpression()), !dbg !5614
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5615
  %1 = ptrtoint i8* %0 to i64, !dbg !5616
  ret i64 %1, !dbg !5617
}

; Function Attrs: noredzone
declare dso_local void @comedi_release_hardware_device(%struct.device*) #2

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @comedi_auto_unconfig(%struct.device* %hardware_device) #0 !dbg !5618 {
entry:
  %hardware_device.addr = alloca %struct.device*, align 8
  store %struct.device* %hardware_device, %struct.device** %hardware_device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %hardware_device.addr, metadata !5619, metadata !DIExpression()), !dbg !5620
  %0 = load %struct.device*, %struct.device** %hardware_device.addr, align 8, !dbg !5621
  %tobool = icmp ne %struct.device* %0, null, !dbg !5621
  br i1 %tobool, label %if.end, label %if.then, !dbg !5623

if.then:                                          ; preds = %entry
  br label %return, !dbg !5624

if.end:                                           ; preds = %entry
  %1 = load %struct.device*, %struct.device** %hardware_device.addr, align 8, !dbg !5625
  call void @comedi_release_hardware_device(%struct.device* %1) #8, !dbg !5626
  br label %return, !dbg !5627

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5627
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @comedi_driver_register(%struct.comedi_driver* %driver) #0 !dbg !5628 {
entry:
  %driver.addr = alloca %struct.comedi_driver*, align 8
  store %struct.comedi_driver* %driver, %struct.comedi_driver** %driver.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_driver** %driver.addr, metadata !5631, metadata !DIExpression()), !dbg !5632
  call void @mutex_lock(%struct.mutex* @comedi_drivers_list_lock) #8, !dbg !5633
  %0 = load %struct.comedi_driver*, %struct.comedi_driver** @comedi_drivers, align 8, !dbg !5634
  %1 = load %struct.comedi_driver*, %struct.comedi_driver** %driver.addr, align 8, !dbg !5635
  %next = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %1, i32 0, i32 0, !dbg !5636
  store %struct.comedi_driver* %0, %struct.comedi_driver** %next, align 8, !dbg !5637
  %2 = load %struct.comedi_driver*, %struct.comedi_driver** %driver.addr, align 8, !dbg !5638
  store %struct.comedi_driver* %2, %struct.comedi_driver** @comedi_drivers, align 8, !dbg !5639
  call void @mutex_unlock(%struct.mutex* @comedi_drivers_list_lock) #8, !dbg !5640
  ret i32 0, !dbg !5641
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @comedi_driver_unregister(%struct.comedi_driver* %driver) #0 !dbg !5642 {
entry:
  %driver.addr = alloca %struct.comedi_driver*, align 8
  %prev = alloca %struct.comedi_driver*, align 8
  %i = alloca i32, align 4
  %dev = alloca %struct.comedi_device*, align 8
  store %struct.comedi_driver* %driver, %struct.comedi_driver** %driver.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_driver** %driver.addr, metadata !5643, metadata !DIExpression()), !dbg !5644
  call void @llvm.dbg.declare(metadata %struct.comedi_driver** %prev, metadata !5645, metadata !DIExpression()), !dbg !5646
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5647, metadata !DIExpression()), !dbg !5648
  call void @mutex_lock(%struct.mutex* @comedi_drivers_list_lock) #8, !dbg !5649
  %0 = load %struct.comedi_driver*, %struct.comedi_driver** @comedi_drivers, align 8, !dbg !5650
  %1 = load %struct.comedi_driver*, %struct.comedi_driver** %driver.addr, align 8, !dbg !5652
  %cmp = icmp eq %struct.comedi_driver* %0, %1, !dbg !5653
  br i1 %cmp, label %if.then, label %if.else, !dbg !5654

if.then:                                          ; preds = %entry
  %2 = load %struct.comedi_driver*, %struct.comedi_driver** %driver.addr, align 8, !dbg !5655
  %next = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %2, i32 0, i32 0, !dbg !5657
  %3 = load %struct.comedi_driver*, %struct.comedi_driver** %next, align 8, !dbg !5657
  store %struct.comedi_driver* %3, %struct.comedi_driver** @comedi_drivers, align 8, !dbg !5658
  br label %if.end8, !dbg !5659

if.else:                                          ; preds = %entry
  %4 = load %struct.comedi_driver*, %struct.comedi_driver** @comedi_drivers, align 8, !dbg !5660
  store %struct.comedi_driver* %4, %struct.comedi_driver** %prev, align 8, !dbg !5663
  br label %for.cond, !dbg !5664

for.cond:                                         ; preds = %for.inc, %if.else
  %5 = load %struct.comedi_driver*, %struct.comedi_driver** %prev, align 8, !dbg !5665
  %next1 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %5, i32 0, i32 0, !dbg !5667
  %6 = load %struct.comedi_driver*, %struct.comedi_driver** %next1, align 8, !dbg !5667
  %tobool = icmp ne %struct.comedi_driver* %6, null, !dbg !5668
  br i1 %tobool, label %for.body, label %for.end, !dbg !5668

for.body:                                         ; preds = %for.cond
  %7 = load %struct.comedi_driver*, %struct.comedi_driver** %prev, align 8, !dbg !5669
  %next2 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %7, i32 0, i32 0, !dbg !5672
  %8 = load %struct.comedi_driver*, %struct.comedi_driver** %next2, align 8, !dbg !5672
  %9 = load %struct.comedi_driver*, %struct.comedi_driver** %driver.addr, align 8, !dbg !5673
  %cmp3 = icmp eq %struct.comedi_driver* %8, %9, !dbg !5674
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !5675

if.then4:                                         ; preds = %for.body
  %10 = load %struct.comedi_driver*, %struct.comedi_driver** %driver.addr, align 8, !dbg !5676
  %next5 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %10, i32 0, i32 0, !dbg !5678
  %11 = load %struct.comedi_driver*, %struct.comedi_driver** %next5, align 8, !dbg !5678
  %12 = load %struct.comedi_driver*, %struct.comedi_driver** %prev, align 8, !dbg !5679
  %next6 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %12, i32 0, i32 0, !dbg !5680
  store %struct.comedi_driver* %11, %struct.comedi_driver** %next6, align 8, !dbg !5681
  br label %for.end, !dbg !5682

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5683

for.inc:                                          ; preds = %if.end
  %13 = load %struct.comedi_driver*, %struct.comedi_driver** %prev, align 8, !dbg !5684
  %next7 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %13, i32 0, i32 0, !dbg !5685
  %14 = load %struct.comedi_driver*, %struct.comedi_driver** %next7, align 8, !dbg !5685
  store %struct.comedi_driver* %14, %struct.comedi_driver** %prev, align 8, !dbg !5686
  br label %for.cond, !dbg !5687, !llvm.loop !5688

for.end:                                          ; preds = %if.then4, %for.cond
  br label %if.end8

if.end8:                                          ; preds = %for.end, %if.then
  call void @mutex_unlock(%struct.mutex* @comedi_drivers_list_lock) #8, !dbg !5690
  store i32 0, i32* %i, align 4, !dbg !5691
  br label %for.cond9, !dbg !5693

for.cond9:                                        ; preds = %for.inc26, %if.end8
  %15 = load i32, i32* %i, align 4, !dbg !5694
  %cmp10 = icmp slt i32 %15, 48, !dbg !5696
  br i1 %cmp10, label %for.body11, label %for.end27, !dbg !5697

for.body11:                                       ; preds = %for.cond9
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev, metadata !5698, metadata !DIExpression()), !dbg !5700
  %16 = load i32, i32* %i, align 4, !dbg !5701
  %call = call %struct.comedi_device* @comedi_dev_get_from_minor(i32 %16) #8, !dbg !5702
  store %struct.comedi_device* %call, %struct.comedi_device** %dev, align 8, !dbg !5700
  %17 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5703
  %tobool12 = icmp ne %struct.comedi_device* %17, null, !dbg !5703
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !5705

if.then13:                                        ; preds = %for.body11
  br label %for.inc26, !dbg !5706

if.end14:                                         ; preds = %for.body11
  %18 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5707
  %mutex = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 12, !dbg !5708
  call void @mutex_lock(%struct.mutex* %mutex) #8, !dbg !5709
  %19 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5710
  %attached = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 10, !dbg !5712
  %bf.load = load i8, i8* %attached, align 8, !dbg !5712
  %bf.clear = and i8 %bf.load, 1, !dbg !5712
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5712
  %tobool15 = icmp ne i32 %bf.cast, 0, !dbg !5710
  br i1 %tobool15, label %land.lhs.true, label %if.end23, !dbg !5713

land.lhs.true:                                    ; preds = %if.end14
  %20 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5714
  %driver16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 1, !dbg !5715
  %21 = load %struct.comedi_driver*, %struct.comedi_driver** %driver16, align 8, !dbg !5715
  %22 = load %struct.comedi_driver*, %struct.comedi_driver** %driver.addr, align 8, !dbg !5716
  %cmp17 = icmp eq %struct.comedi_driver* %21, %22, !dbg !5717
  br i1 %cmp17, label %if.then18, label %if.end23, !dbg !5718

if.then18:                                        ; preds = %land.lhs.true
  %23 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5719
  %use_count = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %23, i32 0, i32 0, !dbg !5722
  %24 = load i32, i32* %use_count, align 8, !dbg !5722
  %tobool19 = icmp ne i32 %24, 0, !dbg !5719
  br i1 %tobool19, label %if.then20, label %if.end22, !dbg !5723

if.then20:                                        ; preds = %if.then18
  %25 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5724
  %class_dev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 4, !dbg !5724
  %26 = load %struct.device*, %struct.device** %class_dev, align 8, !dbg !5724
  %27 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5724
  %use_count21 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %27, i32 0, i32 0, !dbg !5724
  %28 = load i32, i32* %use_count21, align 8, !dbg !5724
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %26, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i32 %28) #12, !dbg !5724
  br label %if.end22, !dbg !5724

if.end22:                                         ; preds = %if.then20, %if.then18
  %29 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5725
  call void @comedi_device_detach(%struct.comedi_device* %29) #8, !dbg !5726
  br label %if.end23, !dbg !5727

if.end23:                                         ; preds = %if.end22, %land.lhs.true, %if.end14
  %30 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5728
  %mutex24 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 12, !dbg !5729
  call void @mutex_unlock(%struct.mutex* %mutex24) #8, !dbg !5730
  %31 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5731
  %call25 = call i32 @comedi_dev_put(%struct.comedi_device* %31) #8, !dbg !5732
  br label %for.inc26, !dbg !5733

for.inc26:                                        ; preds = %if.end23, %if.then13
  %32 = load i32, i32* %i, align 4, !dbg !5734
  %inc = add i32 %32, 1, !dbg !5734
  store i32 %inc, i32* %i, align 4, !dbg !5734
  br label %for.cond9, !dbg !5735, !llvm.loop !5736

for.end27:                                        ; preds = %for.cond9
  ret void, !dbg !5738
}

; Function Attrs: noredzone
declare dso_local %struct.comedi_device* @comedi_dev_get_from_minor(i32) #2

; Function Attrs: noredzone
declare dso_local i32 @comedi_dev_put(%struct.comedi_device*) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !5739 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5743, metadata !DIExpression()), !dbg !5748
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5750, metadata !DIExpression()), !dbg !5751
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5752, metadata !DIExpression()), !dbg !5753
  %0 = load i64, i64* %size.addr, align 8, !dbg !5754
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5756
  br i1 %1, label %if.then, label %if.end447, !dbg !5757

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5758
  %tobool = icmp ne i64 %2, 0, !dbg !5758
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5761

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5762
  br label %return, !dbg !5762

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5763
  %cmp = icmp ult i64 %3, 4096, !dbg !5765
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5766

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5767
  br label %return, !dbg !5767

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub = sub i64 %4, 1, !dbg !5768
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5768
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5768

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub4 = sub i64 %6, 1, !dbg !5768
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5768
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5768

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub6 = sub i64 %8, 1, !dbg !5768
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5768
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5768

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5768

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub9 = sub i64 %9, 1, !dbg !5768
  %and = and i64 %sub9, -9223372036854775808, !dbg !5768
  %tobool10 = icmp ne i64 %and, 0, !dbg !5768
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5768

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5768

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub13 = sub i64 %10, 1, !dbg !5768
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5768
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5768
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5768

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5768

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub18 = sub i64 %11, 1, !dbg !5768
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5768
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5768
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5768

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5768

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub23 = sub i64 %12, 1, !dbg !5768
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5768
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5768
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5768

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5768

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub28 = sub i64 %13, 1, !dbg !5768
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5768
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5768
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5768

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5768

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub33 = sub i64 %14, 1, !dbg !5768
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5768
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5768
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5768

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5768

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub38 = sub i64 %15, 1, !dbg !5768
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5768
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5768
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5768

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5768

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub43 = sub i64 %16, 1, !dbg !5768
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5768
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5768
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5768

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5768

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub48 = sub i64 %17, 1, !dbg !5768
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5768
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5768
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5768

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5768

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub53 = sub i64 %18, 1, !dbg !5768
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5768
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5768
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5768

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5768

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub58 = sub i64 %19, 1, !dbg !5768
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5768
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5768
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5768

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5768

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub63 = sub i64 %20, 1, !dbg !5768
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5768
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5768
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5768

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5768

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub68 = sub i64 %21, 1, !dbg !5768
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5768
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5768
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5768

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5768

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub73 = sub i64 %22, 1, !dbg !5768
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5768
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5768
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5768

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5768

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub78 = sub i64 %23, 1, !dbg !5768
  %and79 = and i64 %sub78, 562949953421312, !dbg !5768
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5768
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5768

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5768

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub83 = sub i64 %24, 1, !dbg !5768
  %and84 = and i64 %sub83, 281474976710656, !dbg !5768
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5768
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5768

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5768

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub88 = sub i64 %25, 1, !dbg !5768
  %and89 = and i64 %sub88, 140737488355328, !dbg !5768
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5768
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5768

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5768

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub93 = sub i64 %26, 1, !dbg !5768
  %and94 = and i64 %sub93, 70368744177664, !dbg !5768
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5768
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5768

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5768

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub98 = sub i64 %27, 1, !dbg !5768
  %and99 = and i64 %sub98, 35184372088832, !dbg !5768
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5768
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5768

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5768

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub103 = sub i64 %28, 1, !dbg !5768
  %and104 = and i64 %sub103, 17592186044416, !dbg !5768
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5768
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5768

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5768

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub108 = sub i64 %29, 1, !dbg !5768
  %and109 = and i64 %sub108, 8796093022208, !dbg !5768
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5768
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5768

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5768

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub113 = sub i64 %30, 1, !dbg !5768
  %and114 = and i64 %sub113, 4398046511104, !dbg !5768
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5768
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5768

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5768

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub118 = sub i64 %31, 1, !dbg !5768
  %and119 = and i64 %sub118, 2199023255552, !dbg !5768
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5768
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5768

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5768

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub123 = sub i64 %32, 1, !dbg !5768
  %and124 = and i64 %sub123, 1099511627776, !dbg !5768
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5768
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5768

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5768

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub128 = sub i64 %33, 1, !dbg !5768
  %and129 = and i64 %sub128, 549755813888, !dbg !5768
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5768
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5768

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5768

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub133 = sub i64 %34, 1, !dbg !5768
  %and134 = and i64 %sub133, 274877906944, !dbg !5768
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5768
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5768

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5768

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub138 = sub i64 %35, 1, !dbg !5768
  %and139 = and i64 %sub138, 137438953472, !dbg !5768
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5768
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5768

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5768

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub143 = sub i64 %36, 1, !dbg !5768
  %and144 = and i64 %sub143, 68719476736, !dbg !5768
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5768
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5768

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5768

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub148 = sub i64 %37, 1, !dbg !5768
  %and149 = and i64 %sub148, 34359738368, !dbg !5768
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5768
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5768

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5768

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub153 = sub i64 %38, 1, !dbg !5768
  %and154 = and i64 %sub153, 17179869184, !dbg !5768
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5768
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5768

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5768

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub158 = sub i64 %39, 1, !dbg !5768
  %and159 = and i64 %sub158, 8589934592, !dbg !5768
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5768
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5768

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5768

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub163 = sub i64 %40, 1, !dbg !5768
  %and164 = and i64 %sub163, 4294967296, !dbg !5768
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5768
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5768

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5768

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub168 = sub i64 %41, 1, !dbg !5768
  %and169 = and i64 %sub168, 2147483648, !dbg !5768
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5768
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5768

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5768

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub173 = sub i64 %42, 1, !dbg !5768
  %and174 = and i64 %sub173, 1073741824, !dbg !5768
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5768
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5768

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5768

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub178 = sub i64 %43, 1, !dbg !5768
  %and179 = and i64 %sub178, 536870912, !dbg !5768
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5768
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5768

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5768

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub183 = sub i64 %44, 1, !dbg !5768
  %and184 = and i64 %sub183, 268435456, !dbg !5768
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5768
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5768

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5768

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub188 = sub i64 %45, 1, !dbg !5768
  %and189 = and i64 %sub188, 134217728, !dbg !5768
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5768
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5768

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5768

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub193 = sub i64 %46, 1, !dbg !5768
  %and194 = and i64 %sub193, 67108864, !dbg !5768
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5768
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5768

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5768

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub198 = sub i64 %47, 1, !dbg !5768
  %and199 = and i64 %sub198, 33554432, !dbg !5768
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5768
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5768

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5768

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub203 = sub i64 %48, 1, !dbg !5768
  %and204 = and i64 %sub203, 16777216, !dbg !5768
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5768
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5768

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5768

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub208 = sub i64 %49, 1, !dbg !5768
  %and209 = and i64 %sub208, 8388608, !dbg !5768
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5768
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5768

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5768

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub213 = sub i64 %50, 1, !dbg !5768
  %and214 = and i64 %sub213, 4194304, !dbg !5768
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5768
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5768

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5768

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub218 = sub i64 %51, 1, !dbg !5768
  %and219 = and i64 %sub218, 2097152, !dbg !5768
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5768
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5768

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5768

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub223 = sub i64 %52, 1, !dbg !5768
  %and224 = and i64 %sub223, 1048576, !dbg !5768
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5768
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5768

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5768

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub228 = sub i64 %53, 1, !dbg !5768
  %and229 = and i64 %sub228, 524288, !dbg !5768
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5768
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5768

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5768

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub233 = sub i64 %54, 1, !dbg !5768
  %and234 = and i64 %sub233, 262144, !dbg !5768
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5768
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5768

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5768

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub238 = sub i64 %55, 1, !dbg !5768
  %and239 = and i64 %sub238, 131072, !dbg !5768
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5768
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5768

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5768

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub243 = sub i64 %56, 1, !dbg !5768
  %and244 = and i64 %sub243, 65536, !dbg !5768
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5768
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5768

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5768

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub248 = sub i64 %57, 1, !dbg !5768
  %and249 = and i64 %sub248, 32768, !dbg !5768
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5768
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5768

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5768

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub253 = sub i64 %58, 1, !dbg !5768
  %and254 = and i64 %sub253, 16384, !dbg !5768
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5768
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5768

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5768

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub258 = sub i64 %59, 1, !dbg !5768
  %and259 = and i64 %sub258, 8192, !dbg !5768
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5768
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5768

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5768

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub263 = sub i64 %60, 1, !dbg !5768
  %and264 = and i64 %sub263, 4096, !dbg !5768
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5768
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5768

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5768

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub268 = sub i64 %61, 1, !dbg !5768
  %and269 = and i64 %sub268, 2048, !dbg !5768
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5768
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5768

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5768

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub273 = sub i64 %62, 1, !dbg !5768
  %and274 = and i64 %sub273, 1024, !dbg !5768
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5768
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5768

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5768

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub278 = sub i64 %63, 1, !dbg !5768
  %and279 = and i64 %sub278, 512, !dbg !5768
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5768
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5768

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5768

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub283 = sub i64 %64, 1, !dbg !5768
  %and284 = and i64 %sub283, 256, !dbg !5768
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5768
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5768

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5768

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub288 = sub i64 %65, 1, !dbg !5768
  %and289 = and i64 %sub288, 128, !dbg !5768
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5768
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5768

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5768

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub293 = sub i64 %66, 1, !dbg !5768
  %and294 = and i64 %sub293, 64, !dbg !5768
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5768
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5768

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5768

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub298 = sub i64 %67, 1, !dbg !5768
  %and299 = and i64 %sub298, 32, !dbg !5768
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5768
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5768

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5768

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub303 = sub i64 %68, 1, !dbg !5768
  %and304 = and i64 %sub303, 16, !dbg !5768
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5768
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5768

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5768

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub308 = sub i64 %69, 1, !dbg !5768
  %and309 = and i64 %sub308, 8, !dbg !5768
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5768
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5768

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5768

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub313 = sub i64 %70, 1, !dbg !5768
  %and314 = and i64 %sub313, 4, !dbg !5768
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5768
  %71 = zext i1 %tobool315 to i64, !dbg !5768
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5768
  br label %cond.end, !dbg !5768

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5768
  br label %cond.end317, !dbg !5768

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5768
  br label %cond.end319, !dbg !5768

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5768
  br label %cond.end321, !dbg !5768

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5768
  br label %cond.end323, !dbg !5768

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5768
  br label %cond.end325, !dbg !5768

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5768
  br label %cond.end327, !dbg !5768

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5768
  br label %cond.end329, !dbg !5768

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5768
  br label %cond.end331, !dbg !5768

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5768
  br label %cond.end333, !dbg !5768

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5768
  br label %cond.end335, !dbg !5768

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5768
  br label %cond.end337, !dbg !5768

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5768
  br label %cond.end339, !dbg !5768

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5768
  br label %cond.end341, !dbg !5768

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5768
  br label %cond.end343, !dbg !5768

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5768
  br label %cond.end345, !dbg !5768

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5768
  br label %cond.end347, !dbg !5768

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5768
  br label %cond.end349, !dbg !5768

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5768
  br label %cond.end351, !dbg !5768

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5768
  br label %cond.end353, !dbg !5768

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5768
  br label %cond.end355, !dbg !5768

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5768
  br label %cond.end357, !dbg !5768

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5768
  br label %cond.end359, !dbg !5768

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5768
  br label %cond.end361, !dbg !5768

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5768
  br label %cond.end363, !dbg !5768

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5768
  br label %cond.end365, !dbg !5768

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5768
  br label %cond.end367, !dbg !5768

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5768
  br label %cond.end369, !dbg !5768

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5768
  br label %cond.end371, !dbg !5768

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5768
  br label %cond.end373, !dbg !5768

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5768
  br label %cond.end375, !dbg !5768

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5768
  br label %cond.end377, !dbg !5768

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5768
  br label %cond.end379, !dbg !5768

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5768
  br label %cond.end381, !dbg !5768

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5768
  br label %cond.end383, !dbg !5768

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5768
  br label %cond.end385, !dbg !5768

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5768
  br label %cond.end387, !dbg !5768

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5768
  br label %cond.end389, !dbg !5768

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5768
  br label %cond.end391, !dbg !5768

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5768
  br label %cond.end393, !dbg !5768

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5768
  br label %cond.end395, !dbg !5768

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5768
  br label %cond.end397, !dbg !5768

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5768
  br label %cond.end399, !dbg !5768

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5768
  br label %cond.end401, !dbg !5768

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5768
  br label %cond.end403, !dbg !5768

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5768
  br label %cond.end405, !dbg !5768

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5768
  br label %cond.end407, !dbg !5768

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5768
  br label %cond.end409, !dbg !5768

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5768
  br label %cond.end411, !dbg !5768

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5768
  br label %cond.end413, !dbg !5768

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5768
  br label %cond.end415, !dbg !5768

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5768
  br label %cond.end417, !dbg !5768

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5768
  br label %cond.end419, !dbg !5768

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5768
  br label %cond.end421, !dbg !5768

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5768
  br label %cond.end423, !dbg !5768

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5768
  br label %cond.end425, !dbg !5768

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5768
  br label %cond.end427, !dbg !5768

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5768
  br label %cond.end429, !dbg !5768

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5768
  br label %cond.end431, !dbg !5768

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5768
  br label %cond.end433, !dbg !5768

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5768
  br label %cond.end435, !dbg !5768

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5768
  br label %cond.end437, !dbg !5768

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5768
  br label %cond.end440, !dbg !5768

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5768

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5768
  br label %cond.end444, !dbg !5768

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5768
  %sub443 = sub i64 %72, 1, !dbg !5768
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !5768
  br label %cond.end444, !dbg !5768

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5768
  %sub446 = sub i32 %cond445, 12, !dbg !5769
  %add = add i32 %sub446, 1, !dbg !5770
  store i32 %add, i32* %retval, align 4, !dbg !5771
  br label %return, !dbg !5771

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5772
  %dec = add i64 %73, -1, !dbg !5772
  store i64 %dec, i64* %size.addr, align 8, !dbg !5772
  %74 = load i64, i64* %size.addr, align 8, !dbg !5773
  %shr = lshr i64 %74, 12, !dbg !5773
  store i64 %shr, i64* %size.addr, align 8, !dbg !5773
  %75 = load i64, i64* %size.addr, align 8, !dbg !5774
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5751
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5775
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5776
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !5775, !srcloc !5777
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5775
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5778
  %add.i = add i32 %79, 1, !dbg !5779
  store i32 %add.i, i32* %retval, align 4, !dbg !5780
  br label %return, !dbg !5780

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5781
  ret i32 %80, !dbg !5781
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !5782 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5743, metadata !DIExpression()), !dbg !5786
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5750, metadata !DIExpression()), !dbg !5788
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5789, metadata !DIExpression()), !dbg !5790
  %0 = load i64, i64* %n.addr, align 8, !dbg !5791
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5788
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5792
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5793
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !5792, !srcloc !5777
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5792
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5794
  %add.i = add i32 %4, 1, !dbg !5795
  %sub = sub i32 %add.i, 1, !dbg !5796
  ret i32 %sub, !dbg !5797
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5798 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5802, metadata !DIExpression()), !dbg !5803
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5804, metadata !DIExpression()), !dbg !5805
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5806, metadata !DIExpression()), !dbg !5807
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5808, metadata !DIExpression()), !dbg !5809
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5810
  ret i8* %0, !dbg !5811
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmalloc_array(i64 %n, i64 %size, i32 %flags) #0 !dbg !5812 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4007, metadata !DIExpression()), !dbg !5813
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4017, metadata !DIExpression()), !dbg !5817
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4019, metadata !DIExpression()), !dbg !5818
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4021, metadata !DIExpression()), !dbg !5819
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4023, metadata !DIExpression()), !dbg !5820
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4029, metadata !DIExpression()), !dbg !5822
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4035, metadata !DIExpression()), !dbg !5824
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4044, metadata !DIExpression()), !dbg !5827
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4046, metadata !DIExpression()), !dbg !5828
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4048, metadata !DIExpression()), !dbg !5829
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4050, metadata !DIExpression()), !dbg !5830
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4052, metadata !DIExpression()), !dbg !5831
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4054, metadata !DIExpression()), !dbg !5832
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4056, metadata !DIExpression()), !dbg !5833
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4058, metadata !DIExpression()), !dbg !5834
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
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5835, metadata !DIExpression()), !dbg !5836
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5837, metadata !DIExpression()), !dbg !5838
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5839, metadata !DIExpression()), !dbg !5840
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !5841, metadata !DIExpression()), !dbg !5842
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !5843, metadata !DIExpression()), !dbg !5846
  %0 = load i64, i64* %n.addr, align 8, !dbg !5846
  store i64 %0, i64* %__a, align 8, !dbg !5846
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !5847, metadata !DIExpression()), !dbg !5846
  %1 = load i64, i64* %size.addr, align 8, !dbg !5846
  store i64 %1, i64* %__b, align 8, !dbg !5846
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !5848, metadata !DIExpression()), !dbg !5846
  store i64* %bytes, i64** %__d, align 8, !dbg !5846
  %cmp = icmp eq i64* %__a, %__b, !dbg !5846
  %conv = zext i1 %cmp to i32, !dbg !5846
  %2 = load i64*, i64** %__d, align 8, !dbg !5846
  %cmp1 = icmp eq i64* %__a, %2, !dbg !5846
  %conv2 = zext i1 %cmp1 to i32, !dbg !5846
  %3 = load i64, i64* %__a, align 8, !dbg !5846
  %4 = load i64, i64* %__b, align 8, !dbg !5846
  %5 = load i64*, i64** %__d, align 8, !dbg !5846
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !5846
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !5846
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !5846
  store i64 %8, i64* %5, align 8, !dbg !5846
  %frombool = zext i1 %7 to i8, !dbg !5846
  store i8 %frombool, i8* %tmp, align 1, !dbg !5846
  %9 = load i8, i8* %tmp, align 1, !dbg !5846
  %tobool = trunc i8 %9 to i1, !dbg !5846
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #8, !dbg !5850
  %lnot = xor i1 %call, true, !dbg !5850
  %lnot3 = xor i1 %lnot, true, !dbg !5850
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5850
  %conv4 = sext i32 %lnot.ext to i64, !dbg !5850
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !5850
  br i1 %tobool5, label %if.then, label %if.end, !dbg !5851

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !5852
  br label %return, !dbg !5852

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %n.addr, align 8, !dbg !5853
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !5854
  br i1 %11, label %land.lhs.true, label %if.end8, !dbg !5855

land.lhs.true:                                    ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8, !dbg !5856
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !5857
  br i1 %13, label %if.then6, label %if.end8, !dbg !5858

if.then6:                                         ; preds = %land.lhs.true
  %14 = load i64, i64* %bytes, align 8, !dbg !5859
  %15 = load i32, i32* %flags.addr, align 4, !dbg !5860
  store i64 %14, i64* %size.addr.i, align 8
  store i32 %15, i32* %flags.addr.i, align 4
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !5861
  %17 = call i1 @llvm.is.constant.i64(i64 %16) #9, !dbg !5862
  br i1 %17, label %if.then.i, label %if.end9.i, !dbg !5863

if.then.i:                                        ; preds = %if.then6
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !5864
  %cmp.i = icmp ugt i64 %18, 8192, !dbg !5865
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5866

if.then1.i:                                       ; preds = %if.then.i
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !5867
  %20 = load i32, i32* %flags.addr.i, align 4, !dbg !5868
  store i64 %19, i64* %size.addr.i.i, align 8
  store i32 %20, i32* %flags.addr.i.i, align 4
  %21 = load i64, i64* %size.addr.i.i, align 8, !dbg !5869
  %call.i.i = call i32 @get_order(i64 %21) #10, !dbg !5870
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5831
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !5871
  %23 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5872
  %24 = load i32, i32* %order.i.i, align 4, !dbg !5873
  store i64 %22, i64* %size.addr.i.i.i, align 8
  store i32 %23, i32* %flags.addr.i.i.i, align 4
  store i32 %24, i32* %order.addr.i.i.i, align 4
  %25 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5874
  %26 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5875
  %27 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5876
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %25, i32 %26, i32 %27) #11, !dbg !5877
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5877
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5877
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5877
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !5877
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5878
  br label %kmalloc.exit, !dbg !5878

if.end.i:                                         ; preds = %if.then.i
  %28 = load i64, i64* %size.addr.i, align 8, !dbg !5879
  store i64 %28, i64* %size.addr.i11.i, align 8
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5880
  %tobool.i.i = icmp ne i64 %29, 0, !dbg !5880
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5881

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5882
  br label %kmalloc_index.exit.i, !dbg !5882

if.end.i.i:                                       ; preds = %if.end.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5883
  %cmp.i.i = icmp ule i64 %30, 8, !dbg !5884
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5885

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5886
  br label %kmalloc_index.exit.i, !dbg !5886

if.end2.i.i:                                      ; preds = %if.end.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5887
  %cmp3.i.i = icmp ugt i64 %31, 64, !dbg !5888
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5889

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5890
  %cmp4.i.i = icmp ule i64 %32, 96, !dbg !5891
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5892

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5893
  br label %kmalloc_index.exit.i, !dbg !5893

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5894
  %cmp7.i.i = icmp ugt i64 %33, 128, !dbg !5895
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5896

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5897
  %cmp9.i.i = icmp ule i64 %34, 192, !dbg !5898
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5899

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5900
  br label %kmalloc_index.exit.i, !dbg !5900

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5901
  %cmp12.i.i = icmp ule i64 %35, 8, !dbg !5902
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5903

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5904
  br label %kmalloc_index.exit.i, !dbg !5904

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5905
  %cmp15.i.i = icmp ule i64 %36, 16, !dbg !5906
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5907

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5908
  br label %kmalloc_index.exit.i, !dbg !5908

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5909
  %cmp18.i.i = icmp ule i64 %37, 32, !dbg !5910
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5911

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5912
  br label %kmalloc_index.exit.i, !dbg !5912

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5913
  %cmp21.i.i = icmp ule i64 %38, 64, !dbg !5914
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5915

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5916
  br label %kmalloc_index.exit.i, !dbg !5916

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5917
  %cmp24.i.i = icmp ule i64 %39, 128, !dbg !5918
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5919

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5920
  br label %kmalloc_index.exit.i, !dbg !5920

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5921
  %cmp27.i.i = icmp ule i64 %40, 256, !dbg !5922
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5923

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5924
  br label %kmalloc_index.exit.i, !dbg !5924

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5925
  %cmp30.i.i = icmp ule i64 %41, 512, !dbg !5926
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5927

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5928
  br label %kmalloc_index.exit.i, !dbg !5928

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5929
  %cmp33.i.i = icmp ule i64 %42, 1024, !dbg !5930
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5931

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5932
  br label %kmalloc_index.exit.i, !dbg !5932

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5933
  %cmp36.i.i = icmp ule i64 %43, 2048, !dbg !5934
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5935

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5936
  br label %kmalloc_index.exit.i, !dbg !5936

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5937
  %cmp39.i.i = icmp ule i64 %44, 4096, !dbg !5938
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5939

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5940
  br label %kmalloc_index.exit.i, !dbg !5940

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5941
  %cmp42.i.i = icmp ule i64 %45, 8192, !dbg !5942
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5943

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5944
  br label %kmalloc_index.exit.i, !dbg !5944

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5945
  %cmp45.i.i = icmp ule i64 %46, 16384, !dbg !5946
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5947

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5948
  br label %kmalloc_index.exit.i, !dbg !5948

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5949
  %cmp48.i.i = icmp ule i64 %47, 32768, !dbg !5950
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5951

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5952
  br label %kmalloc_index.exit.i, !dbg !5952

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5953
  %cmp51.i.i = icmp ule i64 %48, 65536, !dbg !5954
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5955

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5956
  br label %kmalloc_index.exit.i, !dbg !5956

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5957
  %cmp54.i.i = icmp ule i64 %49, 131072, !dbg !5958
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5959

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5960
  br label %kmalloc_index.exit.i, !dbg !5960

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5961
  %cmp57.i.i = icmp ule i64 %50, 262144, !dbg !5962
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5963

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5964
  br label %kmalloc_index.exit.i, !dbg !5964

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5965
  %cmp60.i.i = icmp ule i64 %51, 524288, !dbg !5966
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5967

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5968
  br label %kmalloc_index.exit.i, !dbg !5968

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5969
  %cmp63.i.i = icmp ule i64 %52, 1048576, !dbg !5970
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5971

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5972
  br label %kmalloc_index.exit.i, !dbg !5972

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5973
  %cmp66.i.i = icmp ule i64 %53, 2097152, !dbg !5974
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5975

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5976
  br label %kmalloc_index.exit.i, !dbg !5976

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5977
  %cmp69.i.i = icmp ule i64 %54, 4194304, !dbg !5978
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5979

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5980
  br label %kmalloc_index.exit.i, !dbg !5980

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5981
  %cmp72.i.i = icmp ule i64 %55, 8388608, !dbg !5982
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5983

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5984
  br label %kmalloc_index.exit.i, !dbg !5984

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5985
  %cmp75.i.i = icmp ule i64 %56, 16777216, !dbg !5986
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5987

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5988
  br label %kmalloc_index.exit.i, !dbg !5988

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5989
  %cmp78.i.i = icmp ule i64 %57, 33554432, !dbg !5990
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5991

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5992
  br label %kmalloc_index.exit.i, !dbg !5992

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5993
  %cmp81.i.i = icmp ule i64 %58, 67108864, !dbg !5994
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5995

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5996
  br label %kmalloc_index.exit.i, !dbg !5996

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !5997, !srcloc !4234
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 160) #9, !dbg !5998, !srcloc !4238
  unreachable, !dbg !5999

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %59 = load i32, i32* %retval.i.i, align 4, !dbg !6000
  store i32 %59, i32* %index.i, align 4, !dbg !6001
  %60 = load i32, i32* %index.i, align 4, !dbg !6002
  %tobool.i = icmp ne i32 %60, 0, !dbg !6002
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !6003

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !6004
  br label %kmalloc.exit, !dbg !6004

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %61 = load i32, i32* %flags.addr.i, align 4, !dbg !6005
  store i32 %61, i32* %flags.addr.i13.i, align 4
  %62 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6006
  %and.i.i = and i32 %62, 17, !dbg !6006
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !6006
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !6006
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !6006
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !6006
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !6007

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !6008
  br label %kmalloc_type.exit.i, !dbg !6008

if.end.i16.i:                                     ; preds = %if.end4.i
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6009
  %and2.i.i = and i32 %63, 1, !dbg !6010
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !6009
  %64 = zext i1 %tobool3.i.i to i64, !dbg !6009
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !6009
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !6011
  br label %kmalloc_type.exit.i, !dbg !6011

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %65 = load i32, i32* %retval.i12.i, align 4, !dbg !6012
  %idxprom.i = zext i32 %65 to i64, !dbg !6013
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !6013
  %66 = load i32, i32* %index.i, align 4, !dbg !6014
  %idxprom6.i = zext i32 %66 to i64, !dbg !6013
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !6013
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !6013
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !6015
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !6016
  store %struct.kmem_cache* %67, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %68, i32* %flags.addr.i17.i, align 4
  store i64 %69, i64* %size.addr.i18.i, align 8
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6017
  %71 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6018
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %70, i32 %71) #11, !dbg !6019
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !6019
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !6019
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !6019
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !6019
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5819
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6020
  %73 = load i8*, i8** %ret.i.i, align 8, !dbg !6021
  %74 = load i64, i64* %size.addr.i18.i, align 8, !dbg !6022
  %75 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6023
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %72, i8* %73, i64 %74, i32 %75) #11, !dbg !6024
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !6025
  %76 = load i8*, i8** %ret.i.i, align 8, !dbg !6026
  store i8* %76, i8** %retval.i, align 8, !dbg !6027
  br label %kmalloc.exit, !dbg !6027

if.end9.i:                                        ; preds = %if.then6
  %77 = load i64, i64* %size.addr.i, align 8, !dbg !6028
  %78 = load i32, i32* %flags.addr.i, align 4, !dbg !6029
  %call10.i = call noalias i8* @__kmalloc(i64 %77, i32 %78) #11, !dbg !6030
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !6030
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !6030
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !6030
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !6030
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !6031
  br label %kmalloc.exit, !dbg !6031

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %79 = load i8*, i8** %retval.i, align 8, !dbg !6032
  store i8* %79, i8** %retval, align 8, !dbg !6033
  br label %return, !dbg !6033

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %80 = load i64, i64* %bytes, align 8, !dbg !6034
  %81 = load i32, i32* %flags.addr, align 4, !dbg !6035
  %call9 = call noalias i8* @__kmalloc(i64 %80, i32 %81) #8, !dbg !6036
  %ptrint = ptrtoint i8* %call9 to i64, !dbg !6036
  %maskedptr = and i64 %ptrint, 7, !dbg !6036
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !6036
  call void @llvm.assume(i1 %maskcond), !dbg !6036
  store i8* %call9, i8** %retval, align 8, !dbg !6037
  br label %return, !dbg !6037

return:                                           ; preds = %if.end8, %kmalloc.exit, %if.then
  %82 = load i8*, i8** %retval, align 8, !dbg !6038
  ret i8* %82, !dbg !6038
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !6039 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !6043, metadata !DIExpression()), !dbg !6044
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !6045
  %tobool = trunc i8 %0 to i1, !dbg !6045
  %lnot = xor i1 %tobool, true, !dbg !6045
  %lnot1 = xor i1 %lnot, true, !dbg !6045
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6045
  %conv = sext i32 %lnot.ext to i64, !dbg !6045
  %tobool2 = icmp ne i64 %conv, 0, !dbg !6045
  ret i1 %tobool2, !dbg !6046
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: noredzone
declare dso_local zeroext i1 @comedi_can_auto_free_spriv(%struct.comedi_subdevice*) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noredzone
declare dso_local void @comedi_free_subdevice_minor(%struct.comedi_subdevice*) #2

; Function Attrs: noredzone
declare dso_local i32 @comedi_buf_alloc(%struct.comedi_device*, %struct.comedi_subdevice*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @comedi_clear_hw_dev(%struct.comedi_device* %dev) #0 !dbg !6047 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !6048, metadata !DIExpression()), !dbg !6049
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6050
  %hw_dev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 7, !dbg !6051
  %1 = load %struct.device*, %struct.device** %hw_dev, align 8, !dbg !6051
  call void @put_device(%struct.device* %1) #8, !dbg !6052
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6053
  %hw_dev1 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %2, i32 0, i32 7, !dbg !6054
  store %struct.device* null, %struct.device** %hw_dev1, align 8, !dbg !6055
  ret void, !dbg !6056
}

; Function Attrs: noredzone
declare dso_local void @put_device(%struct.device*) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @_msecs_to_jiffies(i32 %m) #0 !dbg !6057 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr, metadata !6058, metadata !DIExpression()), !dbg !6059
  %0 = load i32, i32* %m.addr, align 4, !dbg !6060
  %conv = zext i32 %0 to i64, !dbg !6060
  %add = add i64 %conv, 4, !dbg !6061
  %sub = sub i64 %add, 1, !dbg !6062
  %div = sdiv i64 %sub, 4, !dbg !6063
  ret i64 %div, !dbg !6064
}

; Function Attrs: noredzone
declare dso_local i64 @__msecs_to_jiffies(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_sample_shift(%struct.comedi_subdevice* %s) #0 !dbg !6065 {
entry:
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !6066, metadata !DIExpression()), !dbg !6067
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6068
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 4, !dbg !6069
  %1 = load i32, i32* %subdev_flags, align 4, !dbg !6069
  %and = and i32 %1, 268435456, !dbg !6070
  %tobool = icmp ne i32 %and, 0, !dbg !6068
  %2 = zext i1 %tobool to i64, !dbg !6068
  %cond = select i1 %tobool, i32 2, i32 1, !dbg !6068
  ret i32 %cond, !dbg !6071
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__comedi_device_postconfig(%struct.comedi_device* %dev) #0 !dbg !6072 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s = alloca %struct.comedi_subdevice*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !6073, metadata !DIExpression()), !dbg !6074
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s, metadata !6075, metadata !DIExpression()), !dbg !6076
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6077, metadata !DIExpression()), !dbg !6078
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6079, metadata !DIExpression()), !dbg !6080
  br label %do.body, !dbg !6081

do.body:                                          ; preds = %entry
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6082
  %mutex = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 12, !dbg !6082
  br label %do.end, !dbg !6082

do.end:                                           ; preds = %do.body
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6084
  %insn_device_config = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %1, i32 0, i32 26, !dbg !6086
  %2 = load i32 (%struct.comedi_device*, %struct.comedi_insn*, i32*)*, i32 (%struct.comedi_device*, %struct.comedi_insn*, i32*)** %insn_device_config, align 8, !dbg !6086
  %tobool = icmp ne i32 (%struct.comedi_device*, %struct.comedi_insn*, i32*)* %2, null, !dbg !6084
  br i1 %tobool, label %if.end, label %if.then, !dbg !6087

if.then:                                          ; preds = %do.end
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6088
  %insn_device_config1 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %3, i32 0, i32 26, !dbg !6089
  store i32 (%struct.comedi_device*, %struct.comedi_insn*, i32*)* @insn_device_inval, i32 (%struct.comedi_device*, %struct.comedi_insn*, i32*)** %insn_device_config1, align 8, !dbg !6090
  br label %if.end, !dbg !6088

if.end:                                           ; preds = %if.then, %do.end
  %4 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6091
  %get_valid_routes = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 27, !dbg !6093
  %5 = load i32 (%struct.comedi_device*, i32, i32*)*, i32 (%struct.comedi_device*, i32, i32*)** %get_valid_routes, align 8, !dbg !6093
  %tobool2 = icmp ne i32 (%struct.comedi_device*, i32, i32*)* %5, null, !dbg !6091
  br i1 %tobool2, label %if.end5, label %if.then3, !dbg !6094

if.then3:                                         ; preds = %if.end
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6095
  %get_valid_routes4 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 27, !dbg !6096
  store i32 (%struct.comedi_device*, i32, i32*)* @get_zero_valid_routes, i32 (%struct.comedi_device*, i32, i32*)** %get_valid_routes4, align 8, !dbg !6097
  br label %if.end5, !dbg !6095

if.end5:                                          ; preds = %if.then3, %if.end
  store i32 0, i32* %i, align 4, !dbg !6098
  br label %for.cond, !dbg !6100

for.cond:                                         ; preds = %for.inc, %if.end5
  %7 = load i32, i32* %i, align 4, !dbg !6101
  %8 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6103
  %n_subdevices = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 15, !dbg !6104
  %9 = load i32, i32* %n_subdevices, align 4, !dbg !6104
  %cmp = icmp slt i32 %7, %9, !dbg !6105
  br i1 %cmp, label %for.body, label %for.end, !dbg !6106

for.body:                                         ; preds = %for.cond
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6107
  %subdevices = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 16, !dbg !6109
  %11 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices, align 8, !dbg !6109
  %12 = load i32, i32* %i, align 4, !dbg !6110
  %idxprom = sext i32 %12 to i64, !dbg !6107
  %arrayidx = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %11, i64 %idxprom, !dbg !6107
  store %struct.comedi_subdevice* %arrayidx, %struct.comedi_subdevice** %s, align 8, !dbg !6111
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !6112
  %type = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %13, i32 0, i32 2, !dbg !6114
  %14 = load i32, i32* %type, align 4, !dbg !6114
  %cmp6 = icmp eq i32 %14, 0, !dbg !6115
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !6116

if.then7:                                         ; preds = %for.body
  br label %for.inc, !dbg !6117

if.end8:                                          ; preds = %for.body
  %15 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !6118
  %type9 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %15, i32 0, i32 2, !dbg !6120
  %16 = load i32, i32* %type9, align 4, !dbg !6120
  %cmp10 = icmp eq i32 %16, 4, !dbg !6121
  br i1 %cmp10, label %if.then11, label %if.end17, !dbg !6122

if.then11:                                        ; preds = %if.end8
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !6123
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %17, i32 0, i32 3, !dbg !6126
  %18 = load i32, i32* %n_chan, align 8, !dbg !6126
  %cmp12 = icmp slt i32 %18, 32, !dbg !6127
  br i1 %cmp12, label %if.then13, label %if.else, !dbg !6128

if.then13:                                        ; preds = %if.then11
  %19 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !6129
  %n_chan14 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %19, i32 0, i32 3, !dbg !6130
  %20 = load i32, i32* %n_chan14, align 8, !dbg !6130
  %shl = shl i32 1, %20, !dbg !6131
  %sub = sub i32 %shl, 1, !dbg !6132
  %21 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !6133
  %io_bits = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %21, i32 0, i32 12, !dbg !6134
  store i32 %sub, i32* %io_bits, align 4, !dbg !6135
  br label %if.end16, !dbg !6133

if.else:                                          ; preds = %if.then11
  %22 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !6136
  %io_bits15 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %22, i32 0, i32 12, !dbg !6137
  store i32 -1, i32* %io_bits15, align 4, !dbg !6138
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then13
  br label %if.end17, !dbg !6139

if.end17:                                         ; preds = %if.end16, %if.end8
  %23 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !6140
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %23, i32 0, i32 5, !dbg !6142
  %24 = load i32, i32* %len_chanlist, align 8, !dbg !6142
  %cmp18 = icmp eq i32 %24, 0, !dbg !6143
  br i1 %cmp18, label %if.then19, label %if.end21, !dbg !6144

if.then19:                                        ; preds = %if.end17
  %25 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !6145
  %len_chanlist20 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %25, i32 0, i32 5, !dbg !6146
  store i32 1, i32* %len_chanlist20, align 8, !dbg !6147
  br label %if.end21, !dbg !6145

if.end21:                                         ; preds = %if.then19, %if.end17
  %26 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !6148
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %26, i32 0, i32 22, !dbg !6150
  %27 = load i32 (%struct.comedi_device*, %struct.comedi_subdevice*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)** %do_cmd, align 8, !dbg !6150
  %tobool22 = icmp ne i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* %27, null, !dbg !6148
  br i1 %tobool22, label %if.then23, label %if.end27, !dbg !6151

if.then23:                                        ; preds = %if.end21
  %28 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6152
  %29 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !6154
  %call = call i32 @__comedi_device_postconfig_async(%struct.comedi_device* %28, %struct.comedi_subdevice* %29) #8, !dbg !6155
  store i32 %call, i32* %ret, align 4, !dbg !6156
  %30 = load i32, i32* %ret, align 4, !dbg !6157
  %tobool24 = icmp ne i32 %30, 0, !dbg !6157
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !6159

if.then25:                                        ; preds = %if.then23
  %31 = load i32, i32* %ret, align 4, !dbg !6160
  store i32 %31, i32* %retval, align 4, !dbg !6161
  br label %return, !dbg !6161

if.end26:                                         ; preds = %if.then23
  br label %if.end27, !dbg !6162

if.end27:                                         ; preds = %if.end26, %if.end21
  %32 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !6163
  %range_table = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %32, i32 0, i32 15, !dbg !6165
  %33 = load %struct.comedi_lrange*, %struct.comedi_lrange** %range_table, align 8, !dbg !6165
  %tobool28 = icmp ne %struct.comedi_lrange* %33, null, !dbg !6163
  br i1 %tobool28, label %if.end32, label %land.lhs.true, !dbg !6166

land.lhs.true:                                    ; preds = %if.end27
  %34 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !6167
  %range_table_list = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %34, i32 0, i32 16, !dbg !6168
  %35 = load %struct.comedi_lrange**, %struct.comedi_lrange*** %range_table_list, align 8, !dbg !6168
  %tobool29 = icmp ne %struct.comedi_lrange** %35, null, !dbg !6167
  br i1 %tobool29, label %if.end32, label %if.then30, !dbg !6169

if.then30:                                        ; preds = %land.lhs.true
  %36 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !6170
  %range_table31 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %36, i32 0, i32 15, !dbg !6171
  store %struct.comedi_lrange* @range_unknown, %struct.comedi_lrange** %range_table31, align 8, !dbg !6172
  br label %if.end32, !dbg !6170

if.end32:                                         ; preds = %if.then30, %land.lhs.true, %if.end27
  %37 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !6173
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %37, i32 0, i32 18, !dbg !6175
  %38 = load i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_read, align 8, !dbg !6175
  %tobool33 = icmp ne i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* %38, null, !dbg !6173
  br i1 %tobool33, label %if.end38, label %land.lhs.true34, !dbg !6176

land.lhs.true34:                                  ; preds = %if.end32
  %39 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !6177
  %insn_bits = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %39, i32 0, i32 20, !dbg !6178
  %40 = load i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_bits, align 8, !dbg !6178
  %tobool35 = icmp ne i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* %40, null, !dbg !6177
  br i1 %tobool35, label %if.then36, label %if.end38, !dbg !6179

if.then36:                                        ; preds = %land.lhs.true34
  %41 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !6180
  %insn_read37 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %41, i32 0, i32 18, !dbg !6181
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @insn_rw_emulate_bits, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_read37, align 8, !dbg !6182
  br label %if.end38, !dbg !6180

if.end38:                                         ; preds = %if.then36, %land.lhs.true34, %if.end32
  %42 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !6183
  %insn_write = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %42, i32 0, i32 19, !dbg !6185
  %43 = load i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_write, align 8, !dbg !6185
  %tobool39 = icmp ne i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* %43, null, !dbg !6183
  br i1 %tobool39, label %if.end45, label %land.lhs.true40, !dbg !6186

land.lhs.true40:                                  ; preds = %if.end38
  %44 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !6187
  %insn_bits41 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %44, i32 0, i32 20, !dbg !6188
  %45 = load i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_bits41, align 8, !dbg !6188
  %tobool42 = icmp ne i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* %45, null, !dbg !6187
  br i1 %tobool42, label %if.then43, label %if.end45, !dbg !6189

if.then43:                                        ; preds = %land.lhs.true40
  %46 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !6190
  %insn_write44 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %46, i32 0, i32 19, !dbg !6191
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @insn_rw_emulate_bits, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_write44, align 8, !dbg !6192
  br label %if.end45, !dbg !6190

if.end45:                                         ; preds = %if.then43, %land.lhs.true40, %if.end38
  %47 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !6193
  %insn_read46 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %47, i32 0, i32 18, !dbg !6195
  %48 = load i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_read46, align 8, !dbg !6195
  %tobool47 = icmp ne i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* %48, null, !dbg !6193
  br i1 %tobool47, label %if.end50, label %if.then48, !dbg !6196

if.then48:                                        ; preds = %if.end45
  %49 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !6197
  %insn_read49 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %49, i32 0, i32 18, !dbg !6198
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @insn_inval, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_read49, align 8, !dbg !6199
  br label %if.end50, !dbg !6197

if.end50:                                         ; preds = %if.then48, %if.end45
  %50 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !6200
  %insn_write51 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %50, i32 0, i32 19, !dbg !6202
  %51 = load i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_write51, align 8, !dbg !6202
  %tobool52 = icmp ne i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* %51, null, !dbg !6200
  br i1 %tobool52, label %if.end55, label %if.then53, !dbg !6203

if.then53:                                        ; preds = %if.end50
  %52 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !6204
  %insn_write54 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %52, i32 0, i32 19, !dbg !6205
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @insn_inval, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_write54, align 8, !dbg !6206
  br label %if.end55, !dbg !6204

if.end55:                                         ; preds = %if.then53, %if.end50
  %53 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !6207
  %insn_bits56 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %53, i32 0, i32 20, !dbg !6209
  %54 = load i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_bits56, align 8, !dbg !6209
  %tobool57 = icmp ne i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* %54, null, !dbg !6207
  br i1 %tobool57, label %if.end60, label %if.then58, !dbg !6210

if.then58:                                        ; preds = %if.end55
  %55 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !6211
  %insn_bits59 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %55, i32 0, i32 20, !dbg !6212
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @insn_inval, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_bits59, align 8, !dbg !6213
  br label %if.end60, !dbg !6211

if.end60:                                         ; preds = %if.then58, %if.end55
  %56 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !6214
  %insn_config = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %56, i32 0, i32 21, !dbg !6216
  %57 = load i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_config, align 8, !dbg !6216
  %tobool61 = icmp ne i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* %57, null, !dbg !6214
  br i1 %tobool61, label %if.end64, label %if.then62, !dbg !6217

if.then62:                                        ; preds = %if.end60
  %58 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !6218
  %insn_config63 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %58, i32 0, i32 21, !dbg !6219
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @insn_inval, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_config63, align 8, !dbg !6220
  br label %if.end64, !dbg !6218

if.end64:                                         ; preds = %if.then62, %if.end60
  %59 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !6221
  %poll = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %59, i32 0, i32 24, !dbg !6223
  %60 = load i32 (%struct.comedi_device*, %struct.comedi_subdevice*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)** %poll, align 8, !dbg !6223
  %tobool65 = icmp ne i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* %60, null, !dbg !6221
  br i1 %tobool65, label %if.end68, label %if.then66, !dbg !6224

if.then66:                                        ; preds = %if.end64
  %61 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !6225
  %poll67 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %61, i32 0, i32 24, !dbg !6226
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @poll_invalid, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)** %poll67, align 8, !dbg !6227
  br label %if.end68, !dbg !6225

if.end68:                                         ; preds = %if.then66, %if.end64
  br label %for.inc, !dbg !6228

for.inc:                                          ; preds = %if.end68, %if.then7
  %62 = load i32, i32* %i, align 4, !dbg !6229
  %inc = add i32 %62, 1, !dbg !6229
  store i32 %inc, i32* %i, align 4, !dbg !6229
  br label %for.cond, !dbg !6230, !llvm.loop !6231

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !6233
  br label %return, !dbg !6233

return:                                           ; preds = %for.end, %if.then25
  %63 = load i32, i32* %retval, align 4, !dbg !6234
  ret i32 %63, !dbg !6234
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @insn_device_inval(%struct.comedi_device* %dev, %struct.comedi_insn* %insn, i32* %data) #0 !dbg !6235 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !6236, metadata !DIExpression()), !dbg !6237
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !6238, metadata !DIExpression()), !dbg !6239
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !6240, metadata !DIExpression()), !dbg !6241
  ret i32 -22, !dbg !6242
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @get_zero_valid_routes(%struct.comedi_device* %dev, i32 %n_pairs, i32* %pair_data) #0 !dbg !6243 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %n_pairs.addr = alloca i32, align 4
  %pair_data.addr = alloca i32*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !6244, metadata !DIExpression()), !dbg !6245
  store i32 %n_pairs, i32* %n_pairs.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n_pairs.addr, metadata !6246, metadata !DIExpression()), !dbg !6247
  store i32* %pair_data, i32** %pair_data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %pair_data.addr, metadata !6248, metadata !DIExpression()), !dbg !6249
  ret i32 0, !dbg !6250
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__comedi_device_postconfig_async(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #0 !dbg !3957 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %async = alloca %struct.comedi_async*, align 8
  %buf_size = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !6251, metadata !DIExpression()), !dbg !6252
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !6253, metadata !DIExpression()), !dbg !6254
  call void @llvm.dbg.declare(metadata %struct.comedi_async** %async, metadata !6255, metadata !DIExpression()), !dbg !6256
  call void @llvm.dbg.declare(metadata i32* %buf_size, metadata !6257, metadata !DIExpression()), !dbg !6258
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6259, metadata !DIExpression()), !dbg !6260
  br label %do.body, !dbg !6261

do.body:                                          ; preds = %entry
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6262
  %mutex = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 12, !dbg !6262
  br label %do.end, !dbg !6262

do.end:                                           ; preds = %do.body
  %1 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6264
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %1, i32 0, i32 4, !dbg !6266
  %2 = load i32, i32* %subdev_flags, align 4, !dbg !6266
  %and = and i32 %2, 49152, !dbg !6267
  %cmp = icmp eq i32 %and, 0, !dbg !6268
  br i1 %cmp, label %if.then, label %if.end, !dbg !6269

if.then:                                          ; preds = %do.end
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6270
  %class_dev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %3, i32 0, i32 4, !dbg !6270
  %4 = load %struct.device*, %struct.device** %class_dev, align 8, !dbg !6270
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %4, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.13, i64 0, i64 0)) #12, !dbg !6270
  store i32 -22, i32* %retval, align 4, !dbg !6272
  br label %return, !dbg !6272

if.end:                                           ; preds = %do.end
  %5 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6273
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %5, i32 0, i32 23, !dbg !6275
  %6 = load i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)** %do_cmdtest, align 8, !dbg !6275
  %tobool = icmp ne i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* %6, null, !dbg !6273
  br i1 %tobool, label %if.end3, label %if.then1, !dbg !6276

if.then1:                                         ; preds = %if.end
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6277
  %class_dev2 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 4, !dbg !6277
  %8 = load %struct.device*, %struct.device** %class_dev2, align 8, !dbg !6277
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %8, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14, i64 0, i64 0)) #12, !dbg !6277
  store i32 -22, i32* %retval, align 4, !dbg !6279
  br label %return, !dbg !6279

if.end3:                                          ; preds = %if.end
  %9 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6280
  %cancel = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %9, i32 0, i32 25, !dbg !6282
  %10 = load i32 (%struct.comedi_device*, %struct.comedi_subdevice*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)** %cancel, align 8, !dbg !6282
  %tobool4 = icmp ne i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* %10, null, !dbg !6280
  br i1 %tobool4, label %if.end7, label %if.then5, !dbg !6283

if.then5:                                         ; preds = %if.end3
  %11 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6284
  %class_dev6 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 4, !dbg !6284
  %12 = load %struct.device*, %struct.device** %class_dev6, align 8, !dbg !6284
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %12, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.15, i64 0, i64 0)) #12, !dbg !6284
  br label %if.end7, !dbg !6284

if.end7:                                          ; preds = %if.then5, %if.end3
  %call = call i8* @kzalloc(i64 192, i32 3264) #8, !dbg !6285
  %13 = bitcast i8* %call to %struct.comedi_async*, !dbg !6285
  store %struct.comedi_async* %13, %struct.comedi_async** %async, align 8, !dbg !6286
  %14 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !6287
  %tobool8 = icmp ne %struct.comedi_async* %14, null, !dbg !6287
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !6289

if.then9:                                         ; preds = %if.end7
  store i32 -12, i32* %retval, align 4, !dbg !6290
  br label %return, !dbg !6290

if.end10:                                         ; preds = %if.end7
  br label %do.body11, !dbg !6291

do.body11:                                        ; preds = %if.end10
  %15 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !6292
  %wait_head = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %15, i32 0, i32 18, !dbg !6292
  call void @__init_waitqueue_head(%struct.wait_queue_head* %wait_head, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), %struct.lock_class_key* @__comedi_device_postconfig_async.__key) #8, !dbg !6292
  br label %do.end12, !dbg !6292

do.end12:                                         ; preds = %do.body11
  %16 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !6294
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6295
  %async13 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %17, i32 0, i32 7, !dbg !6296
  store %struct.comedi_async* %16, %struct.comedi_async** %async13, align 8, !dbg !6297
  %18 = load i32, i32* @comedi_default_buf_maxsize_kb, align 4, !dbg !6298
  %mul = mul i32 %18, 1024, !dbg !6299
  %19 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !6300
  %max_bufsize = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %19, i32 0, i32 3, !dbg !6301
  store i32 %mul, i32* %max_bufsize, align 8, !dbg !6302
  %20 = load i32, i32* @comedi_default_buf_size_kb, align 4, !dbg !6303
  %mul14 = mul i32 %20, 1024, !dbg !6304
  store i32 %mul14, i32* %buf_size, align 4, !dbg !6305
  %21 = load i32, i32* %buf_size, align 4, !dbg !6306
  %22 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !6308
  %max_bufsize15 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %22, i32 0, i32 3, !dbg !6309
  %23 = load i32, i32* %max_bufsize15, align 8, !dbg !6309
  %cmp16 = icmp ugt i32 %21, %23, !dbg !6310
  br i1 %cmp16, label %if.then17, label %if.end19, !dbg !6311

if.then17:                                        ; preds = %do.end12
  %24 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !6312
  %max_bufsize18 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %24, i32 0, i32 3, !dbg !6313
  %25 = load i32, i32* %max_bufsize18, align 8, !dbg !6313
  store i32 %25, i32* %buf_size, align 4, !dbg !6314
  br label %if.end19, !dbg !6315

if.end19:                                         ; preds = %if.then17, %do.end12
  %26 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6316
  %27 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6318
  %28 = load i32, i32* %buf_size, align 4, !dbg !6319
  %conv = zext i32 %28 to i64, !dbg !6319
  %call20 = call i32 @comedi_buf_alloc(%struct.comedi_device* %26, %struct.comedi_subdevice* %27, i64 %conv) #8, !dbg !6320
  %cmp21 = icmp slt i32 %call20, 0, !dbg !6321
  br i1 %cmp21, label %if.then23, label %if.end25, !dbg !6322

if.then23:                                        ; preds = %if.end19
  %29 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6323
  %class_dev24 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %29, i32 0, i32 4, !dbg !6323
  %30 = load %struct.device*, %struct.device** %class_dev24, align 8, !dbg !6323
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0)) #12, !dbg !6323
  store i32 -12, i32* %retval, align 4, !dbg !6325
  br label %return, !dbg !6325

if.end25:                                         ; preds = %if.end19
  %31 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6326
  %buf_change = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %31, i32 0, i32 26, !dbg !6328
  %32 = load i32 (%struct.comedi_device*, %struct.comedi_subdevice*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)** %buf_change, align 8, !dbg !6328
  %tobool26 = icmp ne i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* %32, null, !dbg !6326
  br i1 %tobool26, label %if.then27, label %if.end34, !dbg !6329

if.then27:                                        ; preds = %if.end25
  %33 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6330
  %buf_change28 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %33, i32 0, i32 26, !dbg !6332
  %34 = load i32 (%struct.comedi_device*, %struct.comedi_subdevice*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)** %buf_change28, align 8, !dbg !6332
  %35 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6333
  %36 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6334
  %call29 = call i32 %34(%struct.comedi_device* %35, %struct.comedi_subdevice* %36) #8, !dbg !6330
  store i32 %call29, i32* %ret, align 4, !dbg !6335
  %37 = load i32, i32* %ret, align 4, !dbg !6336
  %cmp30 = icmp slt i32 %37, 0, !dbg !6338
  br i1 %cmp30, label %if.then32, label %if.end33, !dbg !6339

if.then32:                                        ; preds = %if.then27
  %38 = load i32, i32* %ret, align 4, !dbg !6340
  store i32 %38, i32* %retval, align 4, !dbg !6341
  br label %return, !dbg !6341

if.end33:                                         ; preds = %if.then27
  br label %if.end34, !dbg !6342

if.end34:                                         ; preds = %if.end33, %if.end25
  %39 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6343
  %call35 = call i32 @comedi_alloc_subdevice_minor(%struct.comedi_subdevice* %39) #8, !dbg !6344
  store i32 0, i32* %retval, align 4, !dbg !6345
  br label %return, !dbg !6345

return:                                           ; preds = %if.end34, %if.then32, %if.then23, %if.then9, %if.then1, %if.then
  %40 = load i32, i32* %retval, align 4, !dbg !6346
  ret i32 %40, !dbg !6346
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @insn_rw_emulate_bits(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #0 !dbg !6347 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %_insn = alloca %struct.comedi_insn, align 8
  %chan = alloca i32, align 4
  %base_chan = alloca i32, align 4
  %_data = alloca [2 x i32], align 4
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !6348, metadata !DIExpression()), !dbg !6349
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !6350, metadata !DIExpression()), !dbg !6351
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !6352, metadata !DIExpression()), !dbg !6353
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !6354, metadata !DIExpression()), !dbg !6355
  call void @llvm.dbg.declare(metadata %struct.comedi_insn* %_insn, metadata !6356, metadata !DIExpression()), !dbg !6357
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !6358, metadata !DIExpression()), !dbg !6359
  %0 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !6360
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %0, i32 0, i32 4, !dbg !6360
  %1 = load i32, i32* %chanspec, align 4, !dbg !6360
  %and = and i32 %1, 65535, !dbg !6360
  store i32 %and, i32* %chan, align 4, !dbg !6359
  call void @llvm.dbg.declare(metadata i32* %base_chan, metadata !6361, metadata !DIExpression()), !dbg !6362
  %2 = load i32, i32* %chan, align 4, !dbg !6363
  %cmp = icmp ult i32 %2, 32, !dbg !6364
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6365

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !6365

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %chan, align 4, !dbg !6366
  br label %cond.end, !dbg !6365

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %3, %cond.false ], !dbg !6365
  store i32 %cond, i32* %base_chan, align 4, !dbg !6362
  call void @llvm.dbg.declare(metadata [2 x i32]* %_data, metadata !6367, metadata !DIExpression()), !dbg !6369
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6370, metadata !DIExpression()), !dbg !6371
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %_data, i64 0, i64 0, !dbg !6372
  %4 = bitcast i32* %arraydecay to i8*, !dbg !6372
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 8, i1 false), !dbg !6372
  %5 = bitcast %struct.comedi_insn* %_insn to i8*, !dbg !6373
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 40, i1 false), !dbg !6373
  %insn1 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %_insn, i32 0, i32 0, !dbg !6374
  store i32 201326594, i32* %insn1, align 8, !dbg !6375
  %6 = load i32, i32* %base_chan, align 4, !dbg !6376
  %chanspec2 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %_insn, i32 0, i32 4, !dbg !6377
  store i32 %6, i32* %chanspec2, align 4, !dbg !6378
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %_insn, i32 0, i32 1, !dbg !6379
  store i32 2, i32* %n, align 4, !dbg !6380
  %7 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !6381
  %subdev = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %7, i32 0, i32 3, !dbg !6382
  %8 = load i32, i32* %subdev, align 8, !dbg !6382
  %subdev3 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %_insn, i32 0, i32 3, !dbg !6383
  store i32 %8, i32* %subdev3, align 8, !dbg !6384
  %9 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !6385
  %insn4 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %9, i32 0, i32 0, !dbg !6387
  %10 = load i32, i32* %insn4, align 8, !dbg !6387
  %cmp5 = icmp eq i32 %10, 134217729, !dbg !6388
  br i1 %cmp5, label %if.then, label %if.end17, !dbg !6389

if.then:                                          ; preds = %cond.end
  %11 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6390
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %11, i32 0, i32 4, !dbg !6393
  %12 = load i32, i32* %subdev_flags, align 4, !dbg !6393
  %and6 = and i32 %12, 131072, !dbg !6394
  %tobool = icmp ne i32 %and6, 0, !dbg !6394
  br i1 %tobool, label %if.end, label %if.then7, !dbg !6395

if.then7:                                         ; preds = %if.then
  store i32 -22, i32* %retval, align 4, !dbg !6396
  br label %return, !dbg !6396

if.end:                                           ; preds = %if.then
  %13 = load i32, i32* %chan, align 4, !dbg !6397
  %14 = load i32, i32* %base_chan, align 4, !dbg !6398
  %sub = sub i32 %13, %14, !dbg !6399
  %shl = shl i32 1, %sub, !dbg !6400
  %arrayidx = getelementptr [2 x i32], [2 x i32]* %_data, i64 0, i64 0, !dbg !6401
  store i32 %shl, i32* %arrayidx, align 4, !dbg !6402
  %15 = load i32*, i32** %data.addr, align 8, !dbg !6403
  %arrayidx8 = getelementptr i32, i32* %15, i64 0, !dbg !6403
  %16 = load i32, i32* %arrayidx8, align 4, !dbg !6403
  %tobool9 = icmp ne i32 %16, 0, !dbg !6403
  br i1 %tobool9, label %cond.true10, label %cond.false13, !dbg !6403

cond.true10:                                      ; preds = %if.end
  %17 = load i32, i32* %chan, align 4, !dbg !6404
  %18 = load i32, i32* %base_chan, align 4, !dbg !6405
  %sub11 = sub i32 %17, %18, !dbg !6406
  %shl12 = shl i32 1, %sub11, !dbg !6407
  br label %cond.end14, !dbg !6403

cond.false13:                                     ; preds = %if.end
  br label %cond.end14, !dbg !6403

cond.end14:                                       ; preds = %cond.false13, %cond.true10
  %cond15 = phi i32 [ %shl12, %cond.true10 ], [ 0, %cond.false13 ], !dbg !6403
  %arrayidx16 = getelementptr [2 x i32], [2 x i32]* %_data, i64 0, i64 1, !dbg !6408
  store i32 %cond15, i32* %arrayidx16, align 4, !dbg !6409
  br label %if.end17, !dbg !6410

if.end17:                                         ; preds = %cond.end14, %cond.end
  %19 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6411
  %insn_bits = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %19, i32 0, i32 20, !dbg !6412
  %20 = load i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_bits, align 8, !dbg !6412
  %21 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6413
  %22 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6414
  %arraydecay18 = getelementptr inbounds [2 x i32], [2 x i32]* %_data, i64 0, i64 0, !dbg !6415
  %call = call i32 %20(%struct.comedi_device* %21, %struct.comedi_subdevice* %22, %struct.comedi_insn* %_insn, i32* %arraydecay18) #8, !dbg !6411
  store i32 %call, i32* %ret, align 4, !dbg !6416
  %23 = load i32, i32* %ret, align 4, !dbg !6417
  %cmp19 = icmp slt i32 %23, 0, !dbg !6419
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !6420

if.then20:                                        ; preds = %if.end17
  %24 = load i32, i32* %ret, align 4, !dbg !6421
  store i32 %24, i32* %retval, align 4, !dbg !6422
  br label %return, !dbg !6422

if.end21:                                         ; preds = %if.end17
  %25 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !6423
  %insn22 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %25, i32 0, i32 0, !dbg !6425
  %26 = load i32, i32* %insn22, align 8, !dbg !6425
  %cmp23 = icmp eq i32 %26, 67108864, !dbg !6426
  br i1 %cmp23, label %if.then24, label %if.end29, !dbg !6427

if.then24:                                        ; preds = %if.end21
  %arrayidx25 = getelementptr [2 x i32], [2 x i32]* %_data, i64 0, i64 1, !dbg !6428
  %27 = load i32, i32* %arrayidx25, align 4, !dbg !6428
  %28 = load i32, i32* %chan, align 4, !dbg !6429
  %29 = load i32, i32* %base_chan, align 4, !dbg !6430
  %sub26 = sub i32 %28, %29, !dbg !6431
  %shr = lshr i32 %27, %sub26, !dbg !6432
  %and27 = and i32 %shr, 1, !dbg !6433
  %30 = load i32*, i32** %data.addr, align 8, !dbg !6434
  %arrayidx28 = getelementptr i32, i32* %30, i64 0, !dbg !6434
  store i32 %and27, i32* %arrayidx28, align 4, !dbg !6435
  br label %if.end29, !dbg !6434

if.end29:                                         ; preds = %if.then24, %if.end21
  store i32 1, i32* %retval, align 4, !dbg !6436
  br label %return, !dbg !6436

return:                                           ; preds = %if.end29, %if.then20, %if.then7
  %31 = load i32, i32* %retval, align 4, !dbg !6437
  ret i32 %31, !dbg !6437
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @poll_invalid(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #0 !dbg !6438 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !6439, metadata !DIExpression()), !dbg !6440
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !6441, metadata !DIExpression()), !dbg !6442
  ret i32 -22, !dbg !6443
}

; Function Attrs: noredzone
declare dso_local void @__init_waitqueue_head(%struct.wait_queue_head*, i8*, %struct.lock_class_key*) #2

; Function Attrs: noredzone
declare dso_local i32 @comedi_alloc_subdevice_minor(%struct.comedi_subdevice*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noredzone }
attributes #9 = { nounwind }
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { noredzone nounwind }
attributes #12 = { cold noredzone }
attributes #13 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3958, !3959, !3960, !3961}
!llvm.ident = !{!3962}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "comedi_drivers_list_lock", scope: !2, file: !3, line: 26, type: !1142, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !144, globals: !157, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/staging/comedi/drivers.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !100, !105, !111, !122, !129}
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
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !101, line: 10, baseType: !7, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!102 = !{!103, !104}
!103 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!104 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "comedi_io_direction", file: !106, line: 249, baseType: !7, size: 32, elements: !107)
!106 = !DIFile(filename: "drivers/staging/comedi/comedi.h", directory: "/home/lizy2001/genbc/linux")
!107 = !{!108, !109, !110}
!108 = !DIEnumerator(name: "COMEDI_INPUT", value: 0, isUnsigned: true)
!109 = !DIEnumerator(name: "COMEDI_OUTPUT", value: 1, isUnsigned: true)
!110 = !DIEnumerator(name: "COMEDI_OPENDRAIN", value: 2, isUnsigned: true)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "comedi_cb", file: !112, line: 383, baseType: !7, size: 32, elements: !113)
!112 = !DIFile(filename: "drivers/staging/comedi/comedidev.h", directory: "/home/lizy2001/genbc/linux")
!113 = !{!114, !115, !116, !117, !118, !119, !120, !121}
!114 = !DIEnumerator(name: "COMEDI_CB_EOS", value: 1, isUnsigned: true)
!115 = !DIEnumerator(name: "COMEDI_CB_EOA", value: 2, isUnsigned: true)
!116 = !DIEnumerator(name: "COMEDI_CB_BLOCK", value: 4, isUnsigned: true)
!117 = !DIEnumerator(name: "COMEDI_CB_EOBUF", value: 8, isUnsigned: true)
!118 = !DIEnumerator(name: "COMEDI_CB_ERROR", value: 16, isUnsigned: true)
!119 = !DIEnumerator(name: "COMEDI_CB_OVERFLOW", value: 32, isUnsigned: true)
!120 = !DIEnumerator(name: "COMEDI_CB_ERROR_MASK", value: 48, isUnsigned: true)
!121 = !DIEnumerator(name: "COMEDI_CB_CANCEL_MASK", value: 50, isUnsigned: true)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !123, line: 305, baseType: !7, size: 32, elements: !124)
!123 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!124 = !{!125, !126, !127, !128}
!125 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!126 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!127 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!128 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "comedi_subdevice_type", file: !106, line: 221, baseType: !7, size: 32, elements: !130)
!130 = !{!131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143}
!131 = !DIEnumerator(name: "COMEDI_SUBD_UNUSED", value: 0, isUnsigned: true)
!132 = !DIEnumerator(name: "COMEDI_SUBD_AI", value: 1, isUnsigned: true)
!133 = !DIEnumerator(name: "COMEDI_SUBD_AO", value: 2, isUnsigned: true)
!134 = !DIEnumerator(name: "COMEDI_SUBD_DI", value: 3, isUnsigned: true)
!135 = !DIEnumerator(name: "COMEDI_SUBD_DO", value: 4, isUnsigned: true)
!136 = !DIEnumerator(name: "COMEDI_SUBD_DIO", value: 5, isUnsigned: true)
!137 = !DIEnumerator(name: "COMEDI_SUBD_COUNTER", value: 6, isUnsigned: true)
!138 = !DIEnumerator(name: "COMEDI_SUBD_TIMER", value: 7, isUnsigned: true)
!139 = !DIEnumerator(name: "COMEDI_SUBD_MEMORY", value: 8, isUnsigned: true)
!140 = !DIEnumerator(name: "COMEDI_SUBD_CALIB", value: 9, isUnsigned: true)
!141 = !DIEnumerator(name: "COMEDI_SUBD_PROC", value: 10, isUnsigned: true)
!142 = !DIEnumerator(name: "COMEDI_SUBD_SERIAL", value: 11, isUnsigned: true)
!143 = !DIEnumerator(name: "COMEDI_SUBD_PWM", value: 12, isUnsigned: true)
!144 = !{!145, !147, !148, !152, !153, !154, !155, !156}
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !146, line: 148, baseType: !7)
!146 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!147 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!151 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!153 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!156 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!157 = !{!0, !158, !3955}
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "comedi_drivers", scope: !2, file: !3, line: 24, type: !160, isLocal: false, isDefinition: true)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_driver", file: !112, line: 437, size: 576, elements: !162)
!162 = !{!163, !164, !165, !169, !3945, !3946, !3950, !3951, !3954}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !161, file: !112, line: 439, baseType: !160, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !161, file: !112, line: 441, baseType: !149, size: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !161, file: !112, line: 442, baseType: !166, size: 64, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !168, line: 76, flags: DIFlagFwdDecl)
!168 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!169 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !161, file: !112, line: 443, baseType: !170, size: 64, offset: 192)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{!153, !173, !3938}
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_device", file: !112, line: 541, size: 1920, elements: !175)
!175 = !{!176, !177, !178, !181, !182, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3926, !3930, !3934}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !174, file: !112, line: 542, baseType: !153, size: 32)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !174, file: !112, line: 543, baseType: !160, size: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "pacer", scope: !174, file: !112, line: 544, baseType: !179, size: 64, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_8254", file: !112, line: 544, flags: DIFlagFwdDecl)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !174, file: !112, line: 545, baseType: !152, size: 64, offset: 192)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !174, file: !112, line: 547, baseType: !183, size: 64, offset: 256)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !185)
!185 = !{!186, !3342, !3343, !3346, !3347, !3398, !3471, !3472, !3473, !3474, !3475, !3484, !3589, !3602, !3605, !3606, !3610, !3612, !3613, !3614, !3618, !3624, !3625, !3628, !3632, !3721, !3722, !3723, !3724, !3725, !3757, !3758, !3759, !3762, !3765, !3766, !3767, !3768}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !184, file: !73, line: 462, baseType: !187, size: 512)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !188, line: 64, size: 512, elements: !189)
!188 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!189 = !{!190, !191, !197, !199, !258, !3193, !3332, !3337, !3338, !3339, !3340, !3341}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !187, file: !188, line: 65, baseType: !149, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !187, file: !188, line: 66, baseType: !192, size: 128, offset: 64)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !146, line: 178, size: 128, elements: !193)
!193 = !{!194, !196}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !192, file: !146, line: 179, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !192, file: !146, line: 179, baseType: !195, size: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !187, file: !188, line: 67, baseType: !198, size: 64, offset: 192)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !187, file: !188, line: 68, baseType: !200, size: 64, offset: 256)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !188, line: 192, size: 704, elements: !202)
!202 = !{!203, !204, !220, !221}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !201, file: !188, line: 193, baseType: !192, size: 128)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !201, file: !188, line: 194, baseType: !205, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !206, line: 83, baseType: !207)
!206 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !206, line: 71, elements: !208)
!208 = !{!209}
!209 = !DIDerivedType(tag: DW_TAG_member, scope: !207, file: !206, line: 72, baseType: !210)
!210 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !207, file: !206, line: 72, elements: !211)
!211 = !{!212}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !210, file: !206, line: 73, baseType: !213)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !206, line: 20, elements: !214)
!214 = !{!215}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !213, file: !206, line: 21, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !217, line: 25, baseType: !218)
!217 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 25, elements: !219)
!219 = !{}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !201, file: !188, line: 195, baseType: !187, size: 512, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !201, file: !188, line: 196, baseType: !222, size: 64, offset: 640)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !224)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !188, line: 156, size: 192, elements: !225)
!225 = !{!226, !231, !236}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !224, file: !188, line: 157, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{!153, !200, !198}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !224, file: !188, line: 158, baseType: !232, size: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!149, !200, !198}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !224, file: !188, line: 159, baseType: !237, size: 64, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!153, !200, !198, !241}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !188, line: 148, size: 20736, elements: !243)
!243 = !{!244, !248, !252, !253, !257}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !242, file: !188, line: 149, baseType: !245, size: 192)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 192, elements: !246)
!246 = !{!247}
!247 = !DISubrange(count: 3)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !242, file: !188, line: 150, baseType: !249, size: 4096, offset: 192)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 4096, elements: !250)
!250 = !{!251}
!251 = !DISubrange(count: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !242, file: !188, line: 151, baseType: !153, size: 32, offset: 4288)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !242, file: !188, line: 152, baseType: !254, size: 16384, offset: 4320)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 16384, elements: !255)
!255 = !{!256}
!256 = !DISubrange(count: 2048)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !242, file: !188, line: 153, baseType: !153, size: 32, offset: 20704)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !187, file: !188, line: 69, baseType: !259, size: 64, offset: 320)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !188, line: 138, size: 448, elements: !261)
!261 = !{!262, !266, !294, !296, !3155, !3183, !3187}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !260, file: !188, line: 139, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{null, !198}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !260, file: !188, line: 140, baseType: !267, size: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !269)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !270, line: 230, size: 128, elements: !271)
!270 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!271 = !{!272, !287}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !269, file: !270, line: 231, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{!276, !198, !280, !155}
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !146, line: 60, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !278, line: 73, baseType: !279)
!278 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !278, line: 15, baseType: !147)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !270, line: 30, size: 128, elements: !282)
!282 = !{!283, !284}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !281, file: !270, line: 31, baseType: !149, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !281, file: !270, line: 32, baseType: !285, size: 16, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !146, line: 19, baseType: !286)
!286 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !269, file: !270, line: 232, baseType: !288, size: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{!276, !198, !280, !149, !291}
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !146, line: 55, baseType: !292)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !278, line: 72, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !278, line: 16, baseType: !156)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !260, file: !188, line: 141, baseType: !295, size: 64, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !260, file: !188, line: 142, baseType: !297, size: 64, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !300)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !270, line: 84, size: 320, elements: !301)
!301 = !{!302, !303, !307, !3152, !3153}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !300, file: !270, line: 85, baseType: !149, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !300, file: !270, line: 86, baseType: !304, size: 64, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!285, !198, !280, !153}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !300, file: !270, line: 88, baseType: !308, size: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{!285, !198, !311, !153}
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !270, line: 168, size: 448, elements: !313)
!313 = !{!314, !315, !316, !317, !3147, !3148}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !312, file: !270, line: 169, baseType: !281, size: 128)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !312, file: !270, line: 170, baseType: !291, size: 64, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !312, file: !270, line: 171, baseType: !152, size: 64, offset: 192)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !312, file: !270, line: 172, baseType: !318, size: 64, offset: 256)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{!276, !321, !198, !311, !155, !500, !291}
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !323)
!323 = !{!324, !342, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3130, !3131, !3140, !3141, !3142, !3143, !3144, !3145, !3146}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !322, file: !44, line: 920, baseType: !325, size: 128)
!325 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !322, file: !44, line: 917, size: 128, elements: !326)
!326 = !{!327, !333}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !325, file: !44, line: 918, baseType: !328, size: 64)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !329, line: 58, size: 64, elements: !330)
!329 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!330 = !{!331}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !328, file: !329, line: 59, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !325, file: !44, line: 919, baseType: !334, size: 128, align: 64)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !146, line: 216, size: 128, align: 64, elements: !335)
!335 = !{!336, !338}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !334, file: !146, line: 217, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !334, file: !146, line: 218, baseType: !339, size: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{null, !337}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !322, file: !44, line: 921, baseType: !343, size: 128, offset: 128)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !344, line: 8, size: 128, elements: !345)
!344 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!345 = !{!346, !350}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !343, file: !344, line: 9, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !349, line: 18, flags: DIFlagFwdDecl)
!349 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!350 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !343, file: !344, line: 10, baseType: !351, size: 64, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !349, line: 89, size: 1536, elements: !353)
!353 = !{!354, !355, !365, !373, !374, !397, !3080, !3082, !3094, !3095, !3096, !3097, !3098, !3104, !3105, !3106}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !352, file: !349, line: 91, baseType: !7, size: 32)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !352, file: !349, line: 92, baseType: !356, size: 32, offset: 32)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !357, line: 277, baseType: !358)
!357 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !357, line: 277, size: 32, elements: !359)
!359 = !{!360}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !358, file: !357, line: 277, baseType: !361, size: 32)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !357, line: 70, baseType: !362)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !357, line: 65, size: 32, elements: !363)
!363 = !{!364}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !362, file: !357, line: 66, baseType: !7, size: 32)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !352, file: !349, line: 93, baseType: !366, size: 128, offset: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !367, line: 38, size: 128, elements: !368)
!367 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!368 = !{!369, !371}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !366, file: !367, line: 39, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !366, file: !367, line: 39, baseType: !372, size: 64, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !352, file: !349, line: 94, baseType: !351, size: 64, offset: 192)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !352, file: !349, line: 95, baseType: !375, size: 128, offset: 256)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !349, line: 47, size: 128, elements: !376)
!376 = !{!377, !393}
!377 = !DIDerivedType(tag: DW_TAG_member, scope: !375, file: !349, line: 48, baseType: !378, size: 64)
!378 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !375, file: !349, line: 48, size: 64, elements: !379)
!379 = !{!380, !389}
!380 = !DIDerivedType(tag: DW_TAG_member, scope: !378, file: !349, line: 49, baseType: !381, size: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !378, file: !349, line: 49, size: 64, elements: !382)
!382 = !{!383, !388}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !381, file: !349, line: 50, baseType: !384, size: 32)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !385, line: 21, baseType: !386)
!385 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !387, line: 27, baseType: !7)
!387 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!388 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !381, file: !349, line: 50, baseType: !384, size: 32, offset: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !378, file: !349, line: 52, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !385, line: 23, baseType: !391)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !387, line: 31, baseType: !392)
!392 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !375, file: !349, line: 54, baseType: !394, size: 64, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !396)
!396 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !352, file: !349, line: 96, baseType: !398, size: 64, offset: 384)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !400)
!400 = !{!401, !402, !403, !411, !418, !419, !567, !2791, !2792, !2793, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !3056, !3064, !3065, !3066, !3076, !3077, !3078, !3079}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !399, file: !44, line: 611, baseType: !285, size: 16)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !399, file: !44, line: 612, baseType: !286, size: 16, offset: 16)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !399, file: !44, line: 613, baseType: !404, size: 32, offset: 32)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !405, line: 23, baseType: !406)
!405 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !405, line: 21, size: 32, elements: !407)
!407 = !{!408}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !406, file: !405, line: 22, baseType: !409, size: 32)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !146, line: 32, baseType: !410)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !278, line: 49, baseType: !7)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !399, file: !44, line: 614, baseType: !412, size: 32, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !405, line: 28, baseType: !413)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !405, line: 26, size: 32, elements: !414)
!414 = !{!415}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !413, file: !405, line: 27, baseType: !416, size: 32)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !146, line: 33, baseType: !417)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !278, line: 50, baseType: !7)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !399, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !399, file: !44, line: 622, baseType: !420, size: 64, offset: 128)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !423)
!423 = !{!424, !428, !441, !445, !451, !455, !461, !465, !469, !473, !477, !478, !484, !488, !514, !543, !547, !553, !558, !562, !563}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !422, file: !44, line: 1865, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{!351, !398, !351, !7}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !422, file: !44, line: 1866, baseType: !429, size: 64, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{!149, !351, !398, !432}
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !434, line: 10, size: 128, elements: !435)
!434 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!435 = !{!436, !440}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !433, file: !434, line: 11, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DISubroutineType(types: !439)
!439 = !{null, !152}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !433, file: !434, line: 12, baseType: !152, size: 64, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !422, file: !44, line: 1867, baseType: !442, size: 64, offset: 128)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!153, !398, !153}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !422, file: !44, line: 1868, baseType: !446, size: 64, offset: 192)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!449, !398, !153}
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !422, file: !44, line: 1870, baseType: !452, size: 64, offset: 256)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!153, !351, !155, !153}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !422, file: !44, line: 1872, baseType: !456, size: 64, offset: 320)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!153, !398, !351, !285, !459}
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !146, line: 30, baseType: !460)
!460 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !422, file: !44, line: 1873, baseType: !462, size: 64, offset: 384)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!153, !351, !398, !351}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !422, file: !44, line: 1874, baseType: !466, size: 64, offset: 448)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!153, !398, !351}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !422, file: !44, line: 1875, baseType: !470, size: 64, offset: 512)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!153, !398, !351, !149}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !422, file: !44, line: 1876, baseType: !474, size: 64, offset: 576)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{!153, !398, !351, !285}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !422, file: !44, line: 1877, baseType: !466, size: 64, offset: 640)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !422, file: !44, line: 1878, baseType: !479, size: 64, offset: 704)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{!153, !398, !351, !285, !482}
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !146, line: 16, baseType: !483)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !146, line: 13, baseType: !384)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !422, file: !44, line: 1879, baseType: !485, size: 64, offset: 768)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!153, !398, !351, !398, !351, !7}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !422, file: !44, line: 1881, baseType: !489, size: 64, offset: 832)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{!153, !351, !492}
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !494)
!494 = !{!495, !496, !497, !498, !499, !503, !511, !512, !513}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !493, file: !44, line: 220, baseType: !7, size: 32)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !493, file: !44, line: 221, baseType: !285, size: 16, offset: 32)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !493, file: !44, line: 222, baseType: !404, size: 32, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !493, file: !44, line: 223, baseType: !412, size: 32, offset: 96)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !493, file: !44, line: 224, baseType: !500, size: 64, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !146, line: 46, baseType: !501)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !278, line: 88, baseType: !502)
!502 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !493, file: !44, line: 225, baseType: !504, size: 128, offset: 192)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !505, line: 13, size: 128, elements: !506)
!505 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!506 = !{!507, !510}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !504, file: !505, line: 14, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !505, line: 8, baseType: !509)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !387, line: 30, baseType: !502)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !504, file: !505, line: 15, baseType: !147, size: 64, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !493, file: !44, line: 226, baseType: !504, size: 128, offset: 320)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !493, file: !44, line: 227, baseType: !504, size: 128, offset: 448)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !493, file: !44, line: 234, baseType: !321, size: 64, offset: 576)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !422, file: !44, line: 1882, baseType: !515, size: 64, offset: 896)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{!153, !518, !520, !384, !7}
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !343)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !522, line: 22, size: 1152, elements: !523)
!522 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!523 = !{!524, !525, !526, !527, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !521, file: !522, line: 23, baseType: !384, size: 32)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !521, file: !522, line: 24, baseType: !285, size: 16, offset: 32)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !521, file: !522, line: 25, baseType: !7, size: 32, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !521, file: !522, line: 26, baseType: !528, size: 32, offset: 96)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !146, line: 104, baseType: !384)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !521, file: !522, line: 27, baseType: !390, size: 64, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !521, file: !522, line: 28, baseType: !390, size: 64, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !521, file: !522, line: 37, baseType: !390, size: 64, offset: 256)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !521, file: !522, line: 38, baseType: !482, size: 32, offset: 320)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !521, file: !522, line: 39, baseType: !482, size: 32, offset: 352)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !521, file: !522, line: 40, baseType: !404, size: 32, offset: 384)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !521, file: !522, line: 41, baseType: !412, size: 32, offset: 416)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !521, file: !522, line: 42, baseType: !500, size: 64, offset: 448)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !521, file: !522, line: 43, baseType: !504, size: 128, offset: 512)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !521, file: !522, line: 44, baseType: !504, size: 128, offset: 640)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !521, file: !522, line: 45, baseType: !504, size: 128, offset: 768)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !521, file: !522, line: 46, baseType: !504, size: 128, offset: 896)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !521, file: !522, line: 47, baseType: !390, size: 64, offset: 1024)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !521, file: !522, line: 48, baseType: !390, size: 64, offset: 1088)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !422, file: !44, line: 1883, baseType: !544, size: 64, offset: 960)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!276, !351, !155, !291}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !422, file: !44, line: 1884, baseType: !548, size: 64, offset: 1024)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{!153, !398, !551, !390, !390}
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !422, file: !44, line: 1886, baseType: !554, size: 64, offset: 1088)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{!153, !398, !557, !153}
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !422, file: !44, line: 1887, baseType: !559, size: 64, offset: 1152)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{!153, !398, !351, !321, !7, !285}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !422, file: !44, line: 1890, baseType: !474, size: 64, offset: 1216)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !422, file: !44, line: 1891, baseType: !564, size: 64, offset: 1280)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{!153, !398, !449, !153}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !399, file: !44, line: 623, baseType: !568, size: 64, offset: 192)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !570)
!570 = !{!571, !572, !573, !574, !575, !576, !623, !2398, !2480, !2563, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2579, !2583, !2584, !2587, !2588, !2591, !2592, !2593, !2634, !2661, !2662, !2663, !2664, !2665, !2666, !2669, !2671, !2678, !2679, !2681, !2682, !2683, !2742, !2743, !2758, !2759, !2760, !2761, !2762, !2765, !2766, !2767, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !569, file: !44, line: 1417, baseType: !192, size: 128)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !569, file: !44, line: 1418, baseType: !482, size: 32, offset: 128)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !569, file: !44, line: 1419, baseType: !396, size: 8, offset: 160)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !569, file: !44, line: 1420, baseType: !156, size: 64, offset: 192)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !569, file: !44, line: 1421, baseType: !500, size: 64, offset: 256)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !569, file: !44, line: 1422, baseType: !577, size: 64, offset: 320)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !579)
!579 = !{!580, !581, !582, !589, !593, !597, !601, !602, !603, !613, !616, !617, !618, !620, !621, !622}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !578, file: !44, line: 2229, baseType: !149, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !578, file: !44, line: 2230, baseType: !153, size: 32, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !578, file: !44, line: 2238, baseType: !583, size: 64, offset: 128)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DISubroutineType(types: !585)
!585 = !{!153, !586}
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !588, line: 28, flags: DIFlagFwdDecl)
!588 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!589 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !578, file: !44, line: 2239, baseType: !590, size: 64, offset: 192)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !592)
!592 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !578, file: !44, line: 2240, baseType: !594, size: 64, offset: 256)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{!351, !577, !153, !149, !152}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !578, file: !44, line: 2242, baseType: !598, size: 64, offset: 320)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{null, !568}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !578, file: !44, line: 2243, baseType: !166, size: 64, offset: 384)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !578, file: !44, line: 2244, baseType: !577, size: 64, offset: 448)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !578, file: !44, line: 2245, baseType: !604, size: 64, offset: 512)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !146, line: 182, size: 64, elements: !605)
!605 = !{!606}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !604, file: !146, line: 183, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !146, line: 186, size: 128, elements: !609)
!609 = !{!610, !611}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !608, file: !146, line: 187, baseType: !607, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !608, file: !146, line: 187, baseType: !612, size: 64, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !578, file: !44, line: 2247, baseType: !614, offset: 576)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !615, line: 187, elements: !219)
!615 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!616 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !578, file: !44, line: 2248, baseType: !614, offset: 576)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !578, file: !44, line: 2249, baseType: !614, offset: 576)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !578, file: !44, line: 2250, baseType: !619, offset: 576)
!619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !614, elements: !246)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !578, file: !44, line: 2252, baseType: !614, offset: 576)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !578, file: !44, line: 2253, baseType: !614, offset: 576)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !578, file: !44, line: 2254, baseType: !614, offset: 576)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !569, file: !44, line: 1423, baseType: !624, size: 64, offset: 384)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !626)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !627)
!627 = !{!628, !632, !636, !637, !641, !647, !651, !652, !653, !657, !661, !662, !663, !664, !670, !675, !676, !683, !684, !685, !686, !2382, !2397}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !626, file: !44, line: 1936, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{!398, !568}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !626, file: !44, line: 1937, baseType: !633, size: 64, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{null, !398}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !626, file: !44, line: 1938, baseType: !633, size: 64, offset: 128)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !626, file: !44, line: 1940, baseType: !638, size: 64, offset: 192)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{null, !398, !153}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !626, file: !44, line: 1941, baseType: !642, size: 64, offset: 256)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!153, !398, !645}
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !626, file: !44, line: 1942, baseType: !648, size: 64, offset: 320)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!153, !398}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !626, file: !44, line: 1943, baseType: !633, size: 64, offset: 384)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !626, file: !44, line: 1944, baseType: !598, size: 64, offset: 448)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !626, file: !44, line: 1945, baseType: !654, size: 64, offset: 512)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!153, !568, !153}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !626, file: !44, line: 1946, baseType: !658, size: 64, offset: 576)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{!153, !568}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !626, file: !44, line: 1947, baseType: !658, size: 64, offset: 640)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !626, file: !44, line: 1948, baseType: !658, size: 64, offset: 704)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !626, file: !44, line: 1949, baseType: !658, size: 64, offset: 768)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !626, file: !44, line: 1950, baseType: !665, size: 64, offset: 832)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!153, !351, !668}
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !626, file: !44, line: 1951, baseType: !671, size: 64, offset: 896)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{!153, !568, !674, !155}
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !626, file: !44, line: 1952, baseType: !598, size: 64, offset: 960)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !626, file: !44, line: 1954, baseType: !677, size: 64, offset: 1024)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{!153, !680, !351}
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !682, line: 539, flags: DIFlagFwdDecl)
!682 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!683 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !626, file: !44, line: 1955, baseType: !677, size: 64, offset: 1088)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !626, file: !44, line: 1956, baseType: !677, size: 64, offset: 1152)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !626, file: !44, line: 1957, baseType: !677, size: 64, offset: 1216)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !626, file: !44, line: 1963, baseType: !687, size: 64, offset: 1280)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DISubroutineType(types: !689)
!689 = !{!153, !568, !690, !145}
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !692, line: 68, size: 512, align: 128, elements: !693)
!692 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!693 = !{!694, !695, !2374, !2381}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !691, file: !692, line: 69, baseType: !156, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, scope: !691, file: !692, line: 77, baseType: !696, size: 320, offset: 64)
!696 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !691, file: !692, line: 77, size: 320, elements: !697)
!697 = !{!698, !885, !890, !918, !926, !932, !2305, !2373}
!698 = !DIDerivedType(tag: DW_TAG_member, scope: !696, file: !692, line: 78, baseType: !699, size: 320)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !696, file: !692, line: 78, size: 320, elements: !700)
!700 = !{!701, !702, !883, !884}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !699, file: !692, line: 84, baseType: !192, size: 128)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !699, file: !692, line: 86, baseType: !703, size: 64, offset: 128)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !705)
!705 = !{!706, !707, !714, !715, !720, !735, !751, !752, !753, !754, !876, !877, !880, !881, !882}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !704, file: !44, line: 452, baseType: !398, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !704, file: !44, line: 453, baseType: !708, size: 128, offset: 64)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !709, line: 292, size: 128, elements: !710)
!709 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!710 = !{!711, !712, !713}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !708, file: !709, line: 293, baseType: !205)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !708, file: !709, line: 295, baseType: !145, size: 32)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !708, file: !709, line: 296, baseType: !152, size: 64, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !704, file: !44, line: 454, baseType: !145, size: 32, offset: 192)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !704, file: !44, line: 455, baseType: !716, size: 32, offset: 224)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !146, line: 168, baseType: !717)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !146, line: 166, size: 32, elements: !718)
!718 = !{!719}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !717, file: !146, line: 167, baseType: !153, size: 32)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !704, file: !44, line: 460, baseType: !721, size: 128, offset: 256)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !722, line: 125, size: 128, elements: !723)
!722 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!723 = !{!724, !734}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !721, file: !722, line: 126, baseType: !725, size: 64)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !722, line: 31, size: 64, elements: !726)
!726 = !{!727}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !725, file: !722, line: 32, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !722, line: 24, size: 192, align: 64, elements: !730)
!730 = !{!731, !732, !733}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !729, file: !722, line: 25, baseType: !156, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !729, file: !722, line: 26, baseType: !728, size: 64, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !729, file: !722, line: 27, baseType: !728, size: 64, offset: 128)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !721, file: !722, line: 127, baseType: !728, size: 64, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !704, file: !44, line: 461, baseType: !736, size: 256, offset: 384)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !737, line: 35, size: 256, elements: !738)
!737 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!738 = !{!739, !747, !748, !750}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !736, file: !737, line: 36, baseType: !740, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !741, line: 13, baseType: !742)
!741 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !146, line: 175, baseType: !743)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !146, line: 173, size: 64, elements: !744)
!744 = !{!745}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !743, file: !146, line: 174, baseType: !746, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !385, line: 22, baseType: !509)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !736, file: !737, line: 42, baseType: !740, size: 64, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !736, file: !737, line: 46, baseType: !749, offset: 128)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !206, line: 29, baseType: !213)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !736, file: !737, line: 47, baseType: !192, size: 128, offset: 128)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !704, file: !44, line: 462, baseType: !156, size: 64, offset: 640)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !704, file: !44, line: 463, baseType: !156, size: 64, offset: 704)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !704, file: !44, line: 464, baseType: !156, size: 64, offset: 768)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !704, file: !44, line: 465, baseType: !755, size: 64, offset: 832)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !757)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !758)
!758 = !{!759, !763, !767, !771, !775, !779, !785, !791, !795, !800, !804, !808, !812, !840, !844, !850, !851, !852, !856, !861, !865, !872}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !757, file: !44, line: 368, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{!153, !690, !645}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !757, file: !44, line: 369, baseType: !764, size: 64, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{!153, !321, !690}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !757, file: !44, line: 372, baseType: !768, size: 64, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{!153, !703, !645}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !757, file: !44, line: 375, baseType: !772, size: 64, offset: 192)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{!153, !690}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !757, file: !44, line: 381, baseType: !776, size: 64, offset: 256)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{!153, !321, !703, !195, !7}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !757, file: !44, line: 383, baseType: !780, size: 64, offset: 320)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{null, !783}
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !757, file: !44, line: 385, baseType: !786, size: 64, offset: 384)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!153, !321, !703, !500, !7, !7, !789, !790}
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !757, file: !44, line: 388, baseType: !792, size: 64, offset: 448)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{!153, !321, !703, !500, !7, !7, !690, !152}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !757, file: !44, line: 393, baseType: !796, size: 64, offset: 512)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{!799, !703, !799}
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !146, line: 125, baseType: !390)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !757, file: !44, line: 394, baseType: !801, size: 64, offset: 576)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{null, !690, !7, !7}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !757, file: !44, line: 395, baseType: !805, size: 64, offset: 640)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{!153, !690, !145}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !757, file: !44, line: 396, baseType: !809, size: 64, offset: 704)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{null, !690}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !757, file: !44, line: 397, baseType: !813, size: 64, offset: 768)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{!276, !816, !838}
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !818)
!818 = !{!819, !820, !821, !825, !826, !827, !830, !831}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !817, file: !44, line: 321, baseType: !321, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !817, file: !44, line: 326, baseType: !500, size: 64, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !817, file: !44, line: 327, baseType: !822, size: 64, offset: 128)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{null, !816, !147, !147}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !817, file: !44, line: 328, baseType: !152, size: 64, offset: 192)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !817, file: !44, line: 329, baseType: !153, size: 32, offset: 256)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !817, file: !44, line: 330, baseType: !828, size: 16, offset: 288)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !385, line: 19, baseType: !829)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !387, line: 24, baseType: !286)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !817, file: !44, line: 331, baseType: !828, size: 16, offset: 304)
!831 = !DIDerivedType(tag: DW_TAG_member, scope: !817, file: !44, line: 332, baseType: !832, size: 64, offset: 320)
!832 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !817, file: !44, line: 332, size: 64, elements: !833)
!833 = !{!834, !835}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !832, file: !44, line: 333, baseType: !7, size: 32)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !832, file: !44, line: 334, baseType: !836, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !757, file: !44, line: 402, baseType: !841, size: 64, offset: 832)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{!153, !703, !690, !690, !5}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !757, file: !44, line: 404, baseType: !845, size: 64, offset: 896)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{!459, !690, !848}
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !849, line: 305, baseType: !7)
!849 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!850 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !757, file: !44, line: 405, baseType: !809, size: 64, offset: 960)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !757, file: !44, line: 406, baseType: !772, size: 64, offset: 1024)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !757, file: !44, line: 407, baseType: !853, size: 64, offset: 1088)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!153, !690, !156, !156}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !757, file: !44, line: 409, baseType: !857, size: 64, offset: 1152)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{null, !690, !860, !860}
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !757, file: !44, line: 410, baseType: !862, size: 64, offset: 1216)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DISubroutineType(types: !864)
!864 = !{!153, !703, !690}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !757, file: !44, line: 413, baseType: !866, size: 64, offset: 1280)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{!153, !869, !321, !871}
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !757, file: !44, line: 415, baseType: !873, size: 64, offset: 1344)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{null, !321}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !704, file: !44, line: 466, baseType: !156, size: 64, offset: 896)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !704, file: !44, line: 467, baseType: !878, size: 32, offset: 960)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !879, line: 8, baseType: !384)
!879 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!880 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !704, file: !44, line: 468, baseType: !205, offset: 992)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !704, file: !44, line: 469, baseType: !192, size: 128, offset: 1024)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !704, file: !44, line: 470, baseType: !152, size: 64, offset: 1152)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !699, file: !692, line: 87, baseType: !156, size: 64, offset: 192)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !699, file: !692, line: 94, baseType: !156, size: 64, offset: 256)
!885 = !DIDerivedType(tag: DW_TAG_member, scope: !696, file: !692, line: 96, baseType: !886, size: 64)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !696, file: !692, line: 96, size: 64, elements: !887)
!887 = !{!888}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !886, file: !692, line: 101, baseType: !889, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !146, line: 143, baseType: !390)
!890 = !DIDerivedType(tag: DW_TAG_member, scope: !696, file: !692, line: 103, baseType: !891, size: 320)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !696, file: !692, line: 103, size: 320, elements: !892)
!892 = !{!893, !903, !906, !907}
!893 = !DIDerivedType(tag: DW_TAG_member, scope: !891, file: !692, line: 104, baseType: !894, size: 128)
!894 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !891, file: !692, line: 104, size: 128, elements: !895)
!895 = !{!896, !897}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !894, file: !692, line: 105, baseType: !192, size: 128)
!897 = !DIDerivedType(tag: DW_TAG_member, scope: !894, file: !692, line: 106, baseType: !898, size: 128)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !894, file: !692, line: 106, size: 128, elements: !899)
!899 = !{!900, !901, !902}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !898, file: !692, line: 107, baseType: !690, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !898, file: !692, line: 109, baseType: !153, size: 32, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !898, file: !692, line: 110, baseType: !153, size: 32, offset: 96)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !891, file: !692, line: 117, baseType: !904, size: 64, offset: 128)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !692, line: 117, flags: DIFlagFwdDecl)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !891, file: !692, line: 119, baseType: !152, size: 64, offset: 192)
!907 = !DIDerivedType(tag: DW_TAG_member, scope: !891, file: !692, line: 120, baseType: !908, size: 64, offset: 256)
!908 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !891, file: !692, line: 120, size: 64, elements: !909)
!909 = !{!910, !911, !912}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !908, file: !692, line: 121, baseType: !152, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !908, file: !692, line: 122, baseType: !156, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, scope: !908, file: !692, line: 123, baseType: !913, size: 32)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !908, file: !692, line: 123, size: 32, elements: !914)
!914 = !{!915, !916, !917}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !913, file: !692, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !913, file: !692, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !913, file: !692, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!918 = !DIDerivedType(tag: DW_TAG_member, scope: !696, file: !692, line: 130, baseType: !919, size: 192)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !696, file: !692, line: 130, size: 192, elements: !920)
!920 = !{!921, !922, !923, !924, !925}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !919, file: !692, line: 131, baseType: !156, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !919, file: !692, line: 134, baseType: !396, size: 8, offset: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !919, file: !692, line: 135, baseType: !396, size: 8, offset: 72)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !919, file: !692, line: 136, baseType: !716, size: 32, offset: 96)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !919, file: !692, line: 137, baseType: !7, size: 32, offset: 128)
!926 = !DIDerivedType(tag: DW_TAG_member, scope: !696, file: !692, line: 139, baseType: !927, size: 256)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !696, file: !692, line: 139, size: 256, elements: !928)
!928 = !{!929, !930, !931}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !927, file: !692, line: 140, baseType: !156, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !927, file: !692, line: 141, baseType: !716, size: 32, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !927, file: !692, line: 143, baseType: !192, size: 128, offset: 128)
!932 = !DIDerivedType(tag: DW_TAG_member, scope: !696, file: !692, line: 145, baseType: !933, size: 256)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !696, file: !692, line: 145, size: 256, elements: !934)
!934 = !{!935, !936, !938, !939, !2304}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !933, file: !692, line: 146, baseType: !156, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !933, file: !692, line: 147, baseType: !937, size: 64, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !682, line: 509, baseType: !690)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !933, file: !692, line: 148, baseType: !156, size: 64, offset: 128)
!939 = !DIDerivedType(tag: DW_TAG_member, scope: !933, file: !692, line: 149, baseType: !940, size: 64, offset: 192)
!940 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !933, file: !692, line: 149, size: 64, elements: !941)
!941 = !{!942, !2303}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !940, file: !692, line: 150, baseType: !943, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !692, line: 388, size: 7296, elements: !945)
!945 = !{!946, !2299}
!946 = !DIDerivedType(tag: DW_TAG_member, scope: !944, file: !692, line: 389, baseType: !947, size: 7296)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !944, file: !692, line: 389, size: 7296, elements: !948)
!948 = !{!949, !1067, !1068, !1069, !1073, !1074, !1075, !1076, !1077, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1118, !1126, !1129, !1175, !1176, !2283, !2284, !2287, !2288, !2289, !2292, !2293, !2294, !2297, !2298}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !947, file: !692, line: 390, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !692, line: 305, size: 1472, elements: !952)
!952 = !{!953, !954, !955, !956, !957, !958, !959, !960, !967, !968, !973, !974, !977, !1061, !1062, !1063, !1064, !1065}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !951, file: !692, line: 308, baseType: !156, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !951, file: !692, line: 309, baseType: !156, size: 64, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !951, file: !692, line: 313, baseType: !950, size: 64, offset: 128)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !951, file: !692, line: 313, baseType: !950, size: 64, offset: 192)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !951, file: !692, line: 315, baseType: !729, size: 192, align: 64, offset: 256)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !951, file: !692, line: 323, baseType: !156, size: 64, offset: 448)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !951, file: !692, line: 327, baseType: !943, size: 64, offset: 512)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !951, file: !692, line: 333, baseType: !961, size: 64, offset: 576)
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !682, line: 284, baseType: !962)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !682, line: 284, size: 64, elements: !963)
!963 = !{!964}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !962, file: !682, line: 284, baseType: !965, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !966, line: 19, baseType: !156)
!966 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!967 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !951, file: !692, line: 334, baseType: !156, size: 64, offset: 640)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !951, file: !692, line: 343, baseType: !969, size: 256, offset: 704)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !951, file: !692, line: 340, size: 256, elements: !970)
!970 = !{!971, !972}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !969, file: !692, line: 341, baseType: !729, size: 192, align: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !969, file: !692, line: 342, baseType: !156, size: 64, offset: 192)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !951, file: !692, line: 351, baseType: !192, size: 128, offset: 960)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !951, file: !692, line: 353, baseType: !975, size: 64, offset: 1088)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !692, line: 353, flags: DIFlagFwdDecl)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !951, file: !692, line: 356, baseType: !978, size: 64, offset: 1152)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !980)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !981)
!981 = !{!982, !986, !987, !991, !995, !1035, !1039, !1043, !1047, !1048, !1049, !1053, !1057}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !980, file: !14, line: 558, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DISubroutineType(types: !985)
!985 = !{null, !950}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !980, file: !14, line: 559, baseType: !983, size: 64, offset: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !980, file: !14, line: 560, baseType: !988, size: 64, offset: 128)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DISubroutineType(types: !990)
!990 = !{!153, !950, !156}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !980, file: !14, line: 561, baseType: !992, size: 64, offset: 192)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DISubroutineType(types: !994)
!994 = !{!153, !950}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !980, file: !14, line: 562, baseType: !996, size: 64, offset: 256)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DISubroutineType(types: !998)
!998 = !{!999, !1000}
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !692, line: 682, baseType: !7)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1002)
!1002 = !{!1003, !1004, !1005, !1006, !1007, !1008, !1015, !1022, !1028, !1029, !1030, !1032, !1034}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1001, file: !14, line: 509, baseType: !950, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1001, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1001, file: !14, line: 511, baseType: !145, size: 32, offset: 96)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1001, file: !14, line: 512, baseType: !156, size: 64, offset: 128)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1001, file: !14, line: 513, baseType: !156, size: 64, offset: 192)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1001, file: !14, line: 514, baseType: !1009, size: 64, offset: 256)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !682, line: 385, baseType: !1011)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !682, line: 385, size: 64, elements: !1012)
!1012 = !{!1013}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1011, file: !682, line: 385, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !966, line: 15, baseType: !156)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1001, file: !14, line: 516, baseType: !1016, size: 64, offset: 320)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !682, line: 359, baseType: !1018)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !682, line: 359, size: 64, elements: !1019)
!1019 = !{!1020}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1018, file: !682, line: 359, baseType: !1021, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !966, line: 16, baseType: !156)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1001, file: !14, line: 519, baseType: !1023, size: 64, offset: 384)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !966, line: 21, baseType: !1024)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !966, line: 21, size: 64, elements: !1025)
!1025 = !{!1026}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1024, file: !966, line: 21, baseType: !1027, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !966, line: 14, baseType: !156)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1001, file: !14, line: 521, baseType: !690, size: 64, offset: 448)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1001, file: !14, line: 522, baseType: !690, size: 64, offset: 512)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1001, file: !14, line: 528, baseType: !1031, size: 64, offset: 576)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1001, file: !14, line: 532, baseType: !1033, size: 64, offset: 640)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1001, file: !14, line: 536, baseType: !937, size: 64, offset: 704)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !980, file: !14, line: 563, baseType: !1036, size: 64, offset: 320)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!999, !1000, !13}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !980, file: !14, line: 565, baseType: !1040, size: 64, offset: 384)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{null, !1000, !156, !156}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !980, file: !14, line: 567, baseType: !1044, size: 64, offset: 448)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!156, !950}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !980, file: !14, line: 571, baseType: !996, size: 64, offset: 512)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !980, file: !14, line: 574, baseType: !996, size: 64, offset: 576)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !980, file: !14, line: 579, baseType: !1050, size: 64, offset: 640)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!153, !950, !156, !152, !153, !153}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !980, file: !14, line: 585, baseType: !1054, size: 64, offset: 704)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!149, !950}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !980, file: !14, line: 615, baseType: !1058, size: 64, offset: 768)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!690, !950, !156}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !951, file: !692, line: 359, baseType: !156, size: 64, offset: 1216)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !951, file: !692, line: 361, baseType: !321, size: 64, offset: 1280)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !951, file: !692, line: 362, baseType: !152, size: 64, offset: 1344)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !951, file: !692, line: 365, baseType: !740, size: 64, offset: 1408)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !951, file: !692, line: 373, baseType: !1066, offset: 1472)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !692, line: 296, elements: !219)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !947, file: !692, line: 391, baseType: !725, size: 64, offset: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !947, file: !692, line: 392, baseType: !390, size: 64, offset: 128)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !947, file: !692, line: 394, baseType: !1070, size: 64, offset: 192)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!156, !321, !156, !156, !156, !156}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !947, file: !692, line: 398, baseType: !156, size: 64, offset: 256)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !947, file: !692, line: 399, baseType: !156, size: 64, offset: 320)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !947, file: !692, line: 405, baseType: !156, size: 64, offset: 384)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !947, file: !692, line: 406, baseType: !156, size: 64, offset: 448)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !947, file: !692, line: 407, baseType: !1078, size: 64, offset: 512)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !682, line: 286, baseType: !1080)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !682, line: 286, size: 64, elements: !1081)
!1081 = !{!1082}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1080, file: !682, line: 286, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !966, line: 18, baseType: !156)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !947, file: !692, line: 416, baseType: !716, size: 32, offset: 576)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !947, file: !692, line: 428, baseType: !716, size: 32, offset: 608)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !947, file: !692, line: 437, baseType: !716, size: 32, offset: 640)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !947, file: !692, line: 447, baseType: !716, size: 32, offset: 672)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !947, file: !692, line: 450, baseType: !740, size: 64, offset: 704)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !947, file: !692, line: 452, baseType: !153, size: 32, offset: 768)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !947, file: !692, line: 454, baseType: !205, offset: 800)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !947, file: !692, line: 457, baseType: !736, size: 256, offset: 832)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !947, file: !692, line: 459, baseType: !192, size: 128, offset: 1088)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !947, file: !692, line: 466, baseType: !156, size: 64, offset: 1216)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !947, file: !692, line: 467, baseType: !156, size: 64, offset: 1280)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !947, file: !692, line: 469, baseType: !156, size: 64, offset: 1344)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !947, file: !692, line: 470, baseType: !156, size: 64, offset: 1408)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !947, file: !692, line: 471, baseType: !742, size: 64, offset: 1472)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !947, file: !692, line: 472, baseType: !156, size: 64, offset: 1536)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !947, file: !692, line: 473, baseType: !156, size: 64, offset: 1600)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !947, file: !692, line: 474, baseType: !156, size: 64, offset: 1664)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !947, file: !692, line: 475, baseType: !156, size: 64, offset: 1728)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !947, file: !692, line: 477, baseType: !205, offset: 1792)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !947, file: !692, line: 478, baseType: !156, size: 64, offset: 1792)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !947, file: !692, line: 478, baseType: !156, size: 64, offset: 1856)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !947, file: !692, line: 478, baseType: !156, size: 64, offset: 1920)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !947, file: !692, line: 478, baseType: !156, size: 64, offset: 1984)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !947, file: !692, line: 479, baseType: !156, size: 64, offset: 2048)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !947, file: !692, line: 479, baseType: !156, size: 64, offset: 2112)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !947, file: !692, line: 479, baseType: !156, size: 64, offset: 2176)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !947, file: !692, line: 480, baseType: !156, size: 64, offset: 2240)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !947, file: !692, line: 480, baseType: !156, size: 64, offset: 2304)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !947, file: !692, line: 480, baseType: !156, size: 64, offset: 2368)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !947, file: !692, line: 480, baseType: !156, size: 64, offset: 2432)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !947, file: !692, line: 482, baseType: !1115, size: 2816, offset: 2496)
!1115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 2816, elements: !1116)
!1116 = !{!1117}
!1117 = !DISubrange(count: 44)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !947, file: !692, line: 488, baseType: !1119, size: 256, offset: 5312)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1120, line: 60, size: 256, elements: !1121)
!1120 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1121 = !{!1122}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1119, file: !1120, line: 61, baseType: !1123, size: 256)
!1123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !740, size: 256, elements: !1124)
!1124 = !{!1125}
!1125 = !DISubrange(count: 4)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !947, file: !692, line: 490, baseType: !1127, size: 64, offset: 5568)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !692, line: 490, flags: DIFlagFwdDecl)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !947, file: !692, line: 493, baseType: !1130, size: 896, offset: 5632)
!1130 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1131, line: 53, baseType: !1132)
!1131 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1131, line: 13, size: 896, elements: !1133)
!1133 = !{!1134, !1135, !1136, !1137, !1140, !1141, !1148, !1149, !1169, !1170, !1171}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1132, file: !1131, line: 18, baseType: !390, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1132, file: !1131, line: 28, baseType: !742, size: 64, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1132, file: !1131, line: 31, baseType: !736, size: 256, offset: 128)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1132, file: !1131, line: 32, baseType: !1138, size: 64, offset: 384)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1131, line: 32, flags: DIFlagFwdDecl)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1132, file: !1131, line: 37, baseType: !286, size: 16, offset: 448)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1132, file: !1131, line: 40, baseType: !1142, size: 192, offset: 512)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1143, line: 53, size: 192, elements: !1144)
!1143 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1144 = !{!1145, !1146, !1147}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1142, file: !1143, line: 54, baseType: !740, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1142, file: !1143, line: 55, baseType: !205, offset: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1142, file: !1143, line: 59, baseType: !192, size: 128, offset: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1132, file: !1131, line: 41, baseType: !152, size: 64, offset: 704)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1132, file: !1131, line: 42, baseType: !1150, size: 64, offset: 768)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1152)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1153, line: 13, size: 896, elements: !1154)
!1153 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1154 = !{!1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1152, file: !1153, line: 14, baseType: !152, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1152, file: !1153, line: 15, baseType: !156, size: 64, offset: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1152, file: !1153, line: 17, baseType: !156, size: 64, offset: 128)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1152, file: !1153, line: 17, baseType: !156, size: 64, offset: 192)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1152, file: !1153, line: 19, baseType: !147, size: 64, offset: 256)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1152, file: !1153, line: 21, baseType: !147, size: 64, offset: 320)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1152, file: !1153, line: 22, baseType: !147, size: 64, offset: 384)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1152, file: !1153, line: 23, baseType: !147, size: 64, offset: 448)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1152, file: !1153, line: 24, baseType: !147, size: 64, offset: 512)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1152, file: !1153, line: 25, baseType: !147, size: 64, offset: 576)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1152, file: !1153, line: 26, baseType: !147, size: 64, offset: 640)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1152, file: !1153, line: 27, baseType: !147, size: 64, offset: 704)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1152, file: !1153, line: 28, baseType: !147, size: 64, offset: 768)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1152, file: !1153, line: 29, baseType: !147, size: 64, offset: 832)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1132, file: !1131, line: 44, baseType: !716, size: 32, offset: 832)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1132, file: !1131, line: 50, baseType: !828, size: 16, offset: 864)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1132, file: !1131, line: 51, baseType: !1172, size: 16, offset: 880)
!1172 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !385, line: 18, baseType: !1173)
!1173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !387, line: 23, baseType: !1174)
!1174 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !947, file: !692, line: 495, baseType: !156, size: 64, offset: 6528)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !947, file: !692, line: 497, baseType: !1177, size: 64, offset: 6592)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !692, line: 381, size: 384, elements: !1179)
!1179 = !{!1180, !1181, !2282}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1178, file: !692, line: 382, baseType: !716, size: 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1178, file: !692, line: 383, baseType: !1182, size: 128, offset: 64)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !692, line: 376, size: 128, elements: !1183)
!1183 = !{!1184, !2280}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1182, file: !692, line: 377, baseType: !1185, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1187, line: 640, size: 48640, elements: !1188)
!1187 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1188 = !{!1189, !1195, !1197, !1198, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1215, !1233, !1244, !1329, !1330, !1331, !1342, !1343, !1345, !1346, !1347, !1348, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1427, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1465, !1467, !1468, !1469, !1481, !1482, !1483, !1484, !1485, !1486, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1510, !1515, !1699, !1700, !1701, !1702, !1706, !1709, !1712, !1715, !1718, !1721, !1822, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1868, !1869, !1870, !1871, !1872, !1877, !1878, !1879, !1882, !1883, !1886, !1889, !1892, !1895, !1938, !1941, !1942, !2021, !2022, !2025, !2026, !2029, !2030, !2031, !2035, !2036, !2037, !2050, !2051, !2052, !2062, !2067, !2070, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1186, file: !1187, line: 646, baseType: !1190, size: 128)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1191, line: 56, size: 128, elements: !1192)
!1191 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1192 = !{!1193, !1194}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1190, file: !1191, line: 57, baseType: !156, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1190, file: !1191, line: 58, baseType: !384, size: 32, offset: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1186, file: !1187, line: 649, baseType: !1196, size: 64, offset: 128)
!1196 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !147)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1186, file: !1187, line: 657, baseType: !152, size: 64, offset: 192)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1186, file: !1187, line: 658, baseType: !1199, size: 32, offset: 256)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1200, line: 113, baseType: !1201)
!1200 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1200, line: 111, size: 32, elements: !1202)
!1202 = !{!1203}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1201, file: !1200, line: 112, baseType: !716, size: 32)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1186, file: !1187, line: 660, baseType: !7, size: 32, offset: 288)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1186, file: !1187, line: 661, baseType: !7, size: 32, offset: 320)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1186, file: !1187, line: 684, baseType: !153, size: 32, offset: 352)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1186, file: !1187, line: 686, baseType: !153, size: 32, offset: 384)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1186, file: !1187, line: 687, baseType: !153, size: 32, offset: 416)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1186, file: !1187, line: 688, baseType: !153, size: 32, offset: 448)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1186, file: !1187, line: 689, baseType: !7, size: 32, offset: 480)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1186, file: !1187, line: 691, baseType: !1212, size: 64, offset: 512)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1214)
!1214 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1187, line: 691, flags: DIFlagFwdDecl)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1186, file: !1187, line: 692, baseType: !1216, size: 832, offset: 576)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1187, line: 451, size: 832, elements: !1217)
!1217 = !{!1218, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1216, file: !1187, line: 453, baseType: !1219, size: 128)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1187, line: 325, size: 128, elements: !1220)
!1220 = !{!1221, !1222}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1219, file: !1187, line: 326, baseType: !156, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1219, file: !1187, line: 327, baseType: !384, size: 32, offset: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1216, file: !1187, line: 454, baseType: !729, size: 192, align: 64, offset: 128)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1216, file: !1187, line: 455, baseType: !192, size: 128, offset: 320)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1216, file: !1187, line: 456, baseType: !7, size: 32, offset: 448)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1216, file: !1187, line: 458, baseType: !390, size: 64, offset: 512)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1216, file: !1187, line: 459, baseType: !390, size: 64, offset: 576)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1216, file: !1187, line: 460, baseType: !390, size: 64, offset: 640)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1216, file: !1187, line: 461, baseType: !390, size: 64, offset: 704)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1216, file: !1187, line: 463, baseType: !390, size: 64, offset: 768)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1216, file: !1187, line: 465, baseType: !1232, offset: 832)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1187, line: 415, elements: !219)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1186, file: !1187, line: 693, baseType: !1234, size: 384, offset: 1408)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1187, line: 489, size: 384, elements: !1235)
!1235 = !{!1236, !1237, !1238, !1239, !1240, !1241, !1242}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1234, file: !1187, line: 490, baseType: !192, size: 128)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1234, file: !1187, line: 491, baseType: !156, size: 64, offset: 128)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1234, file: !1187, line: 492, baseType: !156, size: 64, offset: 192)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1234, file: !1187, line: 493, baseType: !7, size: 32, offset: 256)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1234, file: !1187, line: 494, baseType: !286, size: 16, offset: 288)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1234, file: !1187, line: 495, baseType: !286, size: 16, offset: 304)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1234, file: !1187, line: 497, baseType: !1243, size: 64, offset: 320)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1186, file: !1187, line: 697, baseType: !1245, size: 1792, offset: 1792)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1187, line: 507, size: 1792, elements: !1246)
!1246 = !{!1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1326, !1327}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1245, file: !1187, line: 508, baseType: !729, size: 192, align: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1245, file: !1187, line: 515, baseType: !390, size: 64, offset: 192)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1245, file: !1187, line: 516, baseType: !390, size: 64, offset: 256)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1245, file: !1187, line: 517, baseType: !390, size: 64, offset: 320)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1245, file: !1187, line: 518, baseType: !390, size: 64, offset: 384)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1245, file: !1187, line: 519, baseType: !390, size: 64, offset: 448)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1245, file: !1187, line: 526, baseType: !746, size: 64, offset: 512)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1245, file: !1187, line: 527, baseType: !390, size: 64, offset: 576)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1245, file: !1187, line: 528, baseType: !7, size: 32, offset: 640)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1245, file: !1187, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1245, file: !1187, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1245, file: !1187, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1245, file: !1187, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1245, file: !1187, line: 563, baseType: !1261, size: 512, offset: 704)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1262)
!1262 = !{!1263, !1271, !1272, !1277, !1320, !1323, !1324, !1325}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1261, file: !20, line: 119, baseType: !1264, size: 256)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1265, line: 9, size: 256, elements: !1266)
!1265 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1266 = !{!1267, !1268}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1264, file: !1265, line: 10, baseType: !729, size: 192, align: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1264, file: !1265, line: 11, baseType: !1269, size: 64, offset: 192)
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1270, line: 29, baseType: !746)
!1270 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1261, file: !20, line: 120, baseType: !1269, size: 64, offset: 256)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1261, file: !20, line: 121, baseType: !1273, size: 64, offset: 320)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!19, !1276}
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1261, file: !20, line: 122, baseType: !1278, size: 64, offset: 384)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1280)
!1280 = !{!1281, !1301, !1302, !1305, !1310, !1311, !1315, !1319}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1279, file: !20, line: 160, baseType: !1282, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1284)
!1284 = !{!1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1283, file: !20, line: 215, baseType: !749)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1283, file: !20, line: 216, baseType: !7, size: 32)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1283, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1283, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1283, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1283, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1283, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1283, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1283, file: !20, line: 233, baseType: !1269, size: 64, offset: 128)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1283, file: !20, line: 234, baseType: !1276, size: 64, offset: 192)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1283, file: !20, line: 235, baseType: !1269, size: 64, offset: 256)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1283, file: !20, line: 236, baseType: !1276, size: 64, offset: 320)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1283, file: !20, line: 237, baseType: !1298, size: 4096, offset: 512)
!1298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1279, size: 4096, elements: !1299)
!1299 = !{!1300}
!1300 = !DISubrange(count: 8)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1279, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1279, file: !20, line: 162, baseType: !1303, size: 32, offset: 96)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !146, line: 27, baseType: !1304)
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !278, line: 96, baseType: !153)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1279, file: !20, line: 163, baseType: !1306, size: 32, offset: 128)
!1306 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !357, line: 276, baseType: !1307)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !357, line: 276, size: 32, elements: !1308)
!1308 = !{!1309}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1307, file: !357, line: 276, baseType: !361, size: 32)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1279, file: !20, line: 164, baseType: !1276, size: 64, offset: 192)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1279, file: !20, line: 165, baseType: !1312, size: 128, offset: 256)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1265, line: 14, size: 128, elements: !1313)
!1313 = !{!1314}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1312, file: !1265, line: 15, baseType: !721, size: 128)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1279, file: !20, line: 166, baseType: !1316, size: 64, offset: 384)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!1269}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1279, file: !20, line: 167, baseType: !1269, size: 64, offset: 448)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1261, file: !20, line: 123, baseType: !1321, size: 8, offset: 448)
!1321 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !385, line: 17, baseType: !1322)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !387, line: 21, baseType: !396)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1261, file: !20, line: 124, baseType: !1321, size: 8, offset: 456)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1261, file: !20, line: 125, baseType: !1321, size: 8, offset: 464)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1261, file: !20, line: 126, baseType: !1321, size: 8, offset: 472)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1245, file: !1187, line: 572, baseType: !1261, size: 512, offset: 1216)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1245, file: !1187, line: 580, baseType: !1328, size: 64, offset: 1728)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1186, file: !1187, line: 721, baseType: !7, size: 32, offset: 3584)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1186, file: !1187, line: 722, baseType: !153, size: 32, offset: 3616)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1186, file: !1187, line: 723, baseType: !1332, size: 64, offset: 3648)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1334)
!1334 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1335, line: 17, baseType: !1336)
!1335 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1335, line: 17, size: 64, elements: !1337)
!1337 = !{!1338}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1336, file: !1335, line: 17, baseType: !1339, size: 64)
!1339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 64, elements: !1340)
!1340 = !{!1341}
!1341 = !DISubrange(count: 1)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1186, file: !1187, line: 724, baseType: !1334, size: 64, offset: 3712)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1186, file: !1187, line: 749, baseType: !1344, offset: 3776)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1187, line: 290, elements: !219)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1186, file: !1187, line: 751, baseType: !192, size: 128, offset: 3776)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1186, file: !1187, line: 757, baseType: !943, size: 64, offset: 3904)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1186, file: !1187, line: 758, baseType: !943, size: 64, offset: 3968)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1186, file: !1187, line: 761, baseType: !1349, size: 320, offset: 4032)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1120, line: 34, size: 320, elements: !1350)
!1350 = !{!1351, !1352}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1349, file: !1120, line: 35, baseType: !390, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1349, file: !1120, line: 36, baseType: !1353, size: 256, offset: 64)
!1353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !950, size: 256, elements: !1124)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1186, file: !1187, line: 766, baseType: !153, size: 32, offset: 4352)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1186, file: !1187, line: 767, baseType: !153, size: 32, offset: 4384)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1186, file: !1187, line: 768, baseType: !153, size: 32, offset: 4416)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1186, file: !1187, line: 770, baseType: !153, size: 32, offset: 4448)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1186, file: !1187, line: 772, baseType: !156, size: 64, offset: 4480)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1186, file: !1187, line: 775, baseType: !7, size: 32, offset: 4544)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1186, file: !1187, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1186, file: !1187, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1186, file: !1187, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1186, file: !1187, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1186, file: !1187, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1186, file: !1187, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1186, file: !1187, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1186, file: !1187, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1186, file: !1187, line: 831, baseType: !156, size: 64, offset: 4672)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1186, file: !1187, line: 833, baseType: !1370, size: 384, offset: 4736)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1371)
!1371 = !{!1372, !1377}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1370, file: !25, line: 26, baseType: !1373, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!147, !1376}
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, scope: !1370, file: !25, line: 27, baseType: !1378, size: 320, offset: 64)
!1378 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1370, file: !25, line: 27, size: 320, elements: !1379)
!1379 = !{!1380, !1390, !1417}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1378, file: !25, line: 36, baseType: !1381, size: 320)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1378, file: !25, line: 29, size: 320, elements: !1382)
!1382 = !{!1383, !1385, !1386, !1387, !1388, !1389}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1381, file: !25, line: 30, baseType: !1384, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1381, file: !25, line: 31, baseType: !384, size: 32, offset: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1381, file: !25, line: 32, baseType: !384, size: 32, offset: 96)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1381, file: !25, line: 33, baseType: !384, size: 32, offset: 128)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1381, file: !25, line: 34, baseType: !390, size: 64, offset: 192)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1381, file: !25, line: 35, baseType: !1384, size: 64, offset: 256)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1378, file: !25, line: 46, baseType: !1391, size: 192)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1378, file: !25, line: 38, size: 192, elements: !1392)
!1392 = !{!1393, !1394, !1395, !1416}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1391, file: !25, line: 39, baseType: !1303, size: 32)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1391, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1395 = !DIDerivedType(tag: DW_TAG_member, scope: !1391, file: !25, line: 41, baseType: !1396, size: 64, offset: 64)
!1396 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1391, file: !25, line: 41, size: 64, elements: !1397)
!1397 = !{!1398, !1406}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1396, file: !25, line: 42, baseType: !1399, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1401, line: 7, size: 128, elements: !1402)
!1401 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1402 = !{!1403, !1405}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1400, file: !1401, line: 8, baseType: !1404, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !278, line: 93, baseType: !502)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1400, file: !1401, line: 9, baseType: !502, size: 64, offset: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1396, file: !25, line: 43, baseType: !1407, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1409, line: 7, size: 64, elements: !1410)
!1409 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1410 = !{!1411, !1415}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1408, file: !1409, line: 8, baseType: !1412, size: 32)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1409, line: 5, baseType: !1413)
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !385, line: 20, baseType: !1414)
!1414 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !387, line: 26, baseType: !153)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1408, file: !1409, line: 9, baseType: !1413, size: 32, offset: 32)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1391, file: !25, line: 45, baseType: !390, size: 64, offset: 128)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1378, file: !25, line: 54, baseType: !1418, size: 256)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1378, file: !25, line: 48, size: 256, elements: !1419)
!1419 = !{!1420, !1423, !1424, !1425, !1426}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1418, file: !25, line: 49, baseType: !1421, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1418, file: !25, line: 50, baseType: !153, size: 32, offset: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1418, file: !25, line: 51, baseType: !153, size: 32, offset: 96)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1418, file: !25, line: 52, baseType: !156, size: 64, offset: 128)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1418, file: !25, line: 53, baseType: !156, size: 64, offset: 192)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1186, file: !1187, line: 835, baseType: !1428, size: 32, offset: 5120)
!1428 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !146, line: 22, baseType: !1429)
!1429 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !278, line: 28, baseType: !153)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1186, file: !1187, line: 836, baseType: !1428, size: 32, offset: 5152)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1186, file: !1187, line: 840, baseType: !156, size: 64, offset: 5184)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1186, file: !1187, line: 849, baseType: !1185, size: 64, offset: 5248)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1186, file: !1187, line: 852, baseType: !1185, size: 64, offset: 5312)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1186, file: !1187, line: 857, baseType: !192, size: 128, offset: 5376)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1186, file: !1187, line: 858, baseType: !192, size: 128, offset: 5504)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1186, file: !1187, line: 859, baseType: !1185, size: 64, offset: 5632)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1186, file: !1187, line: 867, baseType: !192, size: 128, offset: 5696)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1186, file: !1187, line: 868, baseType: !192, size: 128, offset: 5824)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1186, file: !1187, line: 871, baseType: !1440, size: 64, offset: 5952)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1442)
!1442 = !{!1443, !1444, !1445, !1446, !1448, !1449, !1456, !1457}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1441, file: !53, line: 61, baseType: !1199, size: 32)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1441, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1441, file: !53, line: 63, baseType: !205, offset: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1441, file: !53, line: 65, baseType: !1447, size: 256, offset: 64)
!1447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !604, size: 256, elements: !1124)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1441, file: !53, line: 66, baseType: !604, size: 64, offset: 320)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1441, file: !53, line: 68, baseType: !1450, size: 128, offset: 384)
!1450 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1451, line: 40, baseType: !1452)
!1451 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1451, line: 36, size: 128, elements: !1453)
!1453 = !{!1454, !1455}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1452, file: !1451, line: 37, baseType: !205)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1452, file: !1451, line: 38, baseType: !192, size: 128)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1441, file: !53, line: 69, baseType: !334, size: 128, align: 64, offset: 512)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1441, file: !53, line: 70, baseType: !1458, size: 128, offset: 640)
!1458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1459, size: 128, elements: !1340)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1460)
!1460 = !{!1461, !1462}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1459, file: !53, line: 55, baseType: !153, size: 32)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1459, file: !53, line: 56, baseType: !1463, size: 64, offset: 64)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1186, file: !1187, line: 872, baseType: !1466, size: 512, offset: 6016)
!1466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !608, size: 512, elements: !1124)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1186, file: !1187, line: 873, baseType: !192, size: 128, offset: 6528)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1186, file: !1187, line: 874, baseType: !192, size: 128, offset: 6656)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1186, file: !1187, line: 876, baseType: !1470, size: 64, offset: 6784)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1472, line: 26, size: 192, elements: !1473)
!1472 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1473 = !{!1474, !1475}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1471, file: !1472, line: 27, baseType: !7, size: 32)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1471, file: !1472, line: 28, baseType: !1476, size: 128, offset: 64)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1477, line: 43, size: 128, elements: !1478)
!1477 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1478 = !{!1479, !1480}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1476, file: !1477, line: 44, baseType: !749)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1476, file: !1477, line: 45, baseType: !192, size: 128)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1186, file: !1187, line: 879, baseType: !674, size: 64, offset: 6848)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1186, file: !1187, line: 882, baseType: !674, size: 64, offset: 6912)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1186, file: !1187, line: 884, baseType: !390, size: 64, offset: 6976)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1186, file: !1187, line: 885, baseType: !390, size: 64, offset: 7040)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1186, file: !1187, line: 890, baseType: !390, size: 64, offset: 7104)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1186, file: !1187, line: 891, baseType: !1487, size: 128, offset: 7168)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1187, line: 242, size: 128, elements: !1488)
!1488 = !{!1489, !1490, !1491}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1487, file: !1187, line: 244, baseType: !390, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1487, file: !1187, line: 245, baseType: !390, size: 64, offset: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1487, file: !1187, line: 246, baseType: !749, offset: 128)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1186, file: !1187, line: 900, baseType: !156, size: 64, offset: 7296)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1186, file: !1187, line: 901, baseType: !156, size: 64, offset: 7360)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1186, file: !1187, line: 904, baseType: !390, size: 64, offset: 7424)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1186, file: !1187, line: 907, baseType: !390, size: 64, offset: 7488)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1186, file: !1187, line: 910, baseType: !156, size: 64, offset: 7552)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1186, file: !1187, line: 911, baseType: !156, size: 64, offset: 7616)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1186, file: !1187, line: 914, baseType: !1499, size: 640, offset: 7680)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1500, line: 123, size: 640, elements: !1501)
!1500 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1501 = !{!1502, !1508, !1509}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1499, file: !1500, line: 124, baseType: !1503, size: 576)
!1503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1504, size: 576, elements: !246)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1500, line: 108, size: 192, elements: !1505)
!1505 = !{!1506, !1507}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1504, file: !1500, line: 109, baseType: !390, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1504, file: !1500, line: 110, baseType: !1312, size: 128, offset: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1499, file: !1500, line: 125, baseType: !7, size: 32, offset: 576)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1499, file: !1500, line: 126, baseType: !7, size: 32, offset: 608)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1186, file: !1187, line: 917, baseType: !1511, size: 192, offset: 8320)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1500, line: 134, size: 192, elements: !1512)
!1512 = !{!1513, !1514}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1511, file: !1500, line: 135, baseType: !334, size: 128, align: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1511, file: !1500, line: 136, baseType: !7, size: 32, offset: 128)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1186, file: !1187, line: 923, baseType: !1516, size: 64, offset: 8512)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1518)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1519, line: 111, size: 1280, elements: !1520)
!1519 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1520 = !{!1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1540, !1541, !1542, !1543, !1544, !1545, !1652, !1653, !1654, !1655, !1681, !1684, !1694}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1518, file: !1519, line: 112, baseType: !716, size: 32)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1518, file: !1519, line: 120, baseType: !404, size: 32, offset: 32)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1518, file: !1519, line: 121, baseType: !412, size: 32, offset: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1518, file: !1519, line: 122, baseType: !404, size: 32, offset: 96)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1518, file: !1519, line: 123, baseType: !412, size: 32, offset: 128)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1518, file: !1519, line: 124, baseType: !404, size: 32, offset: 160)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1518, file: !1519, line: 125, baseType: !412, size: 32, offset: 192)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1518, file: !1519, line: 126, baseType: !404, size: 32, offset: 224)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1518, file: !1519, line: 127, baseType: !412, size: 32, offset: 256)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1518, file: !1519, line: 128, baseType: !7, size: 32, offset: 288)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1518, file: !1519, line: 129, baseType: !1532, size: 64, offset: 320)
!1532 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1533, line: 26, baseType: !1534)
!1533 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1533, line: 24, size: 64, elements: !1535)
!1535 = !{!1536}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1534, file: !1533, line: 25, baseType: !1537, size: 64)
!1537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 64, elements: !1538)
!1538 = !{!1539}
!1539 = !DISubrange(count: 2)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1518, file: !1519, line: 130, baseType: !1532, size: 64, offset: 384)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1518, file: !1519, line: 131, baseType: !1532, size: 64, offset: 448)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1518, file: !1519, line: 132, baseType: !1532, size: 64, offset: 512)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1518, file: !1519, line: 133, baseType: !1532, size: 64, offset: 576)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1518, file: !1519, line: 135, baseType: !396, size: 8, offset: 640)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1518, file: !1519, line: 137, baseType: !1546, size: 64, offset: 704)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1548, line: 189, size: 1664, elements: !1549)
!1548 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1549 = !{!1550, !1551, !1554, !1559, !1560, !1563, !1564, !1569, !1570, !1571, !1572, !1574, !1575, !1576, !1577, !1578, !1616, !1637}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1547, file: !1548, line: 190, baseType: !1199, size: 32)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1547, file: !1548, line: 191, baseType: !1552, size: 32, offset: 32)
!1552 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1548, line: 28, baseType: !1553)
!1553 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !146, line: 98, baseType: !1413)
!1554 = !DIDerivedType(tag: DW_TAG_member, scope: !1547, file: !1548, line: 192, baseType: !1555, size: 192, offset: 64)
!1555 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1547, file: !1548, line: 192, size: 192, elements: !1556)
!1556 = !{!1557, !1558}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1555, file: !1548, line: 193, baseType: !192, size: 128)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1555, file: !1548, line: 194, baseType: !729, size: 192, align: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1547, file: !1548, line: 199, baseType: !736, size: 256, offset: 256)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1547, file: !1548, line: 200, baseType: !1561, size: 64, offset: 512)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1548, line: 200, flags: DIFlagFwdDecl)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1547, file: !1548, line: 201, baseType: !152, size: 64, offset: 576)
!1564 = !DIDerivedType(tag: DW_TAG_member, scope: !1547, file: !1548, line: 202, baseType: !1565, size: 64, offset: 640)
!1565 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1547, file: !1548, line: 202, size: 64, elements: !1566)
!1566 = !{!1567, !1568}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1565, file: !1548, line: 203, baseType: !508, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1565, file: !1548, line: 204, baseType: !508, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1547, file: !1548, line: 206, baseType: !508, size: 64, offset: 704)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1547, file: !1548, line: 207, baseType: !404, size: 32, offset: 768)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1547, file: !1548, line: 208, baseType: !412, size: 32, offset: 800)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1547, file: !1548, line: 209, baseType: !1573, size: 32, offset: 832)
!1573 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1548, line: 31, baseType: !528)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1547, file: !1548, line: 210, baseType: !286, size: 16, offset: 864)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1547, file: !1548, line: 211, baseType: !286, size: 16, offset: 880)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1547, file: !1548, line: 215, baseType: !1174, size: 16, offset: 896)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1547, file: !1548, line: 222, baseType: !156, size: 64, offset: 960)
!1578 = !DIDerivedType(tag: DW_TAG_member, scope: !1547, file: !1548, line: 239, baseType: !1579, size: 320, offset: 1024)
!1579 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1547, file: !1548, line: 239, size: 320, elements: !1580)
!1580 = !{!1581, !1608}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1579, file: !1548, line: 240, baseType: !1582, size: 320)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1548, line: 108, size: 320, elements: !1583)
!1583 = !{!1584, !1585, !1597, !1600, !1607}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1582, file: !1548, line: 110, baseType: !156, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, scope: !1582, file: !1548, line: 111, baseType: !1586, size: 64, offset: 64)
!1586 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1582, file: !1548, line: 111, size: 64, elements: !1587)
!1587 = !{!1588, !1596}
!1588 = !DIDerivedType(tag: DW_TAG_member, scope: !1586, file: !1548, line: 112, baseType: !1589, size: 64)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1586, file: !1548, line: 112, size: 64, elements: !1590)
!1590 = !{!1591, !1592}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1589, file: !1548, line: 114, baseType: !828, size: 16)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1589, file: !1548, line: 115, baseType: !1593, size: 48, offset: 16)
!1593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 48, elements: !1594)
!1594 = !{!1595}
!1595 = !DISubrange(count: 6)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1586, file: !1548, line: 121, baseType: !156, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1582, file: !1548, line: 123, baseType: !1598, size: 64, offset: 128)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1548, line: 96, flags: DIFlagFwdDecl)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1582, file: !1548, line: 124, baseType: !1601, size: 64, offset: 192)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1548, line: 102, size: 192, elements: !1603)
!1603 = !{!1604, !1605, !1606}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1602, file: !1548, line: 103, baseType: !334, size: 128, align: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1602, file: !1548, line: 104, baseType: !1199, size: 32, offset: 128)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1602, file: !1548, line: 105, baseType: !459, size: 8, offset: 160)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1582, file: !1548, line: 125, baseType: !149, size: 64, offset: 256)
!1608 = !DIDerivedType(tag: DW_TAG_member, scope: !1579, file: !1548, line: 241, baseType: !1609, size: 320)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1579, file: !1548, line: 241, size: 320, elements: !1610)
!1610 = !{!1611, !1612, !1613, !1614, !1615}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1609, file: !1548, line: 242, baseType: !156, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1609, file: !1548, line: 243, baseType: !156, size: 64, offset: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1609, file: !1548, line: 244, baseType: !1598, size: 64, offset: 128)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1609, file: !1548, line: 245, baseType: !1601, size: 64, offset: 192)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1609, file: !1548, line: 246, baseType: !155, size: 64, offset: 256)
!1616 = !DIDerivedType(tag: DW_TAG_member, scope: !1547, file: !1548, line: 254, baseType: !1617, size: 256, offset: 1344)
!1617 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1547, file: !1548, line: 254, size: 256, elements: !1618)
!1618 = !{!1619, !1625}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1617, file: !1548, line: 255, baseType: !1620, size: 256)
!1620 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1548, line: 128, size: 256, elements: !1621)
!1621 = !{!1622, !1623}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1620, file: !1548, line: 129, baseType: !152, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1620, file: !1548, line: 130, baseType: !1624, size: 256)
!1624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 256, elements: !1124)
!1625 = !DIDerivedType(tag: DW_TAG_member, scope: !1617, file: !1548, line: 256, baseType: !1626, size: 256)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1617, file: !1548, line: 256, size: 256, elements: !1627)
!1627 = !{!1628, !1629}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1626, file: !1548, line: 258, baseType: !192, size: 128)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1626, file: !1548, line: 259, baseType: !1630, size: 128, offset: 128)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1631, line: 22, size: 128, elements: !1632)
!1631 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1632 = !{!1633, !1636}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1630, file: !1631, line: 23, baseType: !1634, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1631, line: 23, flags: DIFlagFwdDecl)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1630, file: !1631, line: 24, baseType: !156, size: 64, offset: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1547, file: !1548, line: 274, baseType: !1638, size: 64, offset: 1600)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1548, line: 170, size: 192, elements: !1640)
!1640 = !{!1641, !1650, !1651}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1639, file: !1548, line: 171, baseType: !1642, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1548, line: 165, baseType: !1643)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!153, !1546, !1646, !1648, !1546}
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1599)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1620)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1639, file: !1548, line: 172, baseType: !1546, size: 64, offset: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1639, file: !1548, line: 173, baseType: !1598, size: 64, offset: 128)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1518, file: !1519, line: 138, baseType: !1546, size: 64, offset: 768)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1518, file: !1519, line: 139, baseType: !1546, size: 64, offset: 832)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1518, file: !1519, line: 140, baseType: !1546, size: 64, offset: 896)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1518, file: !1519, line: 145, baseType: !1656, size: 64, offset: 960)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1658, line: 13, size: 896, elements: !1659)
!1658 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1659 = !{!1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1657, file: !1658, line: 14, baseType: !1199, size: 32)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1657, file: !1658, line: 15, baseType: !716, size: 32, offset: 32)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1657, file: !1658, line: 16, baseType: !716, size: 32, offset: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1657, file: !1658, line: 21, baseType: !740, size: 64, offset: 128)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1657, file: !1658, line: 27, baseType: !156, size: 64, offset: 192)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1657, file: !1658, line: 28, baseType: !156, size: 64, offset: 256)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1657, file: !1658, line: 29, baseType: !740, size: 64, offset: 320)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1657, file: !1658, line: 32, baseType: !608, size: 128, offset: 384)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1657, file: !1658, line: 33, baseType: !404, size: 32, offset: 512)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1657, file: !1658, line: 37, baseType: !740, size: 64, offset: 576)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1657, file: !1658, line: 44, baseType: !1671, size: 256, offset: 640)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1672, line: 15, size: 256, elements: !1673)
!1672 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1673 = !{!1674, !1675, !1676, !1677, !1678, !1679, !1680}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1671, file: !1672, line: 16, baseType: !749)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1671, file: !1672, line: 18, baseType: !153, size: 32)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1671, file: !1672, line: 19, baseType: !153, size: 32, offset: 32)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1671, file: !1672, line: 20, baseType: !153, size: 32, offset: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1671, file: !1672, line: 21, baseType: !153, size: 32, offset: 96)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1671, file: !1672, line: 22, baseType: !156, size: 64, offset: 128)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1671, file: !1672, line: 23, baseType: !156, size: 64, offset: 192)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1518, file: !1519, line: 146, baseType: !1682, size: 64, offset: 1024)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !405, line: 18, flags: DIFlagFwdDecl)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1518, file: !1519, line: 147, baseType: !1685, size: 64, offset: 1088)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1519, line: 25, size: 64, elements: !1687)
!1687 = !{!1688, !1689, !1690}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1686, file: !1519, line: 26, baseType: !716, size: 32)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1686, file: !1519, line: 27, baseType: !153, size: 32, offset: 32)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1686, file: !1519, line: 28, baseType: !1691, offset: 64)
!1691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, elements: !1692)
!1692 = !{!1693}
!1693 = !DISubrange(count: 0)
!1694 = !DIDerivedType(tag: DW_TAG_member, scope: !1518, file: !1519, line: 149, baseType: !1695, size: 128, offset: 1152)
!1695 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1518, file: !1519, line: 149, size: 128, elements: !1696)
!1696 = !{!1697, !1698}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1695, file: !1519, line: 150, baseType: !153, size: 32)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1695, file: !1519, line: 151, baseType: !334, size: 128, align: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1186, file: !1187, line: 926, baseType: !1516, size: 64, offset: 8576)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1186, file: !1187, line: 929, baseType: !1516, size: 64, offset: 8640)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1186, file: !1187, line: 933, baseType: !1546, size: 64, offset: 8704)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1186, file: !1187, line: 943, baseType: !1703, size: 128, offset: 8768)
!1703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 128, elements: !1704)
!1704 = !{!1705}
!1705 = !DISubrange(count: 16)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1186, file: !1187, line: 945, baseType: !1707, size: 64, offset: 8896)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1187, line: 49, flags: DIFlagFwdDecl)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1186, file: !1187, line: 956, baseType: !1710, size: 64, offset: 8960)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1187, line: 45, flags: DIFlagFwdDecl)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1186, file: !1187, line: 959, baseType: !1713, size: 64, offset: 9024)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1187, line: 959, flags: DIFlagFwdDecl)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1186, file: !1187, line: 962, baseType: !1716, size: 64, offset: 9088)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1187, line: 66, flags: DIFlagFwdDecl)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1186, file: !1187, line: 966, baseType: !1719, size: 64, offset: 9152)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1187, line: 50, flags: DIFlagFwdDecl)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1186, file: !1187, line: 969, baseType: !1722, size: 64, offset: 9216)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1724, line: 82, size: 7296, elements: !1725)
!1724 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1725 = !{!1726, !1727, !1728, !1729, !1730, !1731, !1732, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1761, !1770, !1771, !1773, !1774, !1775, !1778, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1808, !1809, !1816, !1817, !1818, !1819, !1820, !1821}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1723, file: !1724, line: 83, baseType: !1199, size: 32)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1723, file: !1724, line: 84, baseType: !716, size: 32, offset: 32)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1723, file: !1724, line: 85, baseType: !153, size: 32, offset: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1723, file: !1724, line: 86, baseType: !192, size: 128, offset: 128)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1723, file: !1724, line: 88, baseType: !1450, size: 128, offset: 256)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1723, file: !1724, line: 91, baseType: !1185, size: 64, offset: 384)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1723, file: !1724, line: 94, baseType: !1733, size: 192, offset: 448)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1734, line: 30, size: 192, elements: !1735)
!1734 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1735 = !{!1736, !1737}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1733, file: !1734, line: 31, baseType: !192, size: 128)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1733, file: !1734, line: 32, baseType: !1738, size: 64, offset: 128)
!1738 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1739, line: 25, baseType: !1740)
!1739 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1739, line: 23, size: 64, elements: !1741)
!1741 = !{!1742}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1740, file: !1739, line: 24, baseType: !1339, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1723, file: !1724, line: 97, baseType: !604, size: 64, offset: 640)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1723, file: !1724, line: 100, baseType: !153, size: 32, offset: 704)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1723, file: !1724, line: 106, baseType: !153, size: 32, offset: 736)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1723, file: !1724, line: 107, baseType: !1185, size: 64, offset: 768)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1723, file: !1724, line: 110, baseType: !153, size: 32, offset: 832)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1723, file: !1724, line: 111, baseType: !7, size: 32, offset: 864)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1723, file: !1724, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1723, file: !1724, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1723, file: !1724, line: 128, baseType: !153, size: 32, offset: 928)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1723, file: !1724, line: 129, baseType: !192, size: 128, offset: 960)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1723, file: !1724, line: 132, baseType: !1261, size: 512, offset: 1088)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1723, file: !1724, line: 133, baseType: !1269, size: 64, offset: 1600)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1723, file: !1724, line: 140, baseType: !1756, size: 256, offset: 1664)
!1756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1757, size: 256, elements: !1538)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1724, line: 38, size: 128, elements: !1758)
!1758 = !{!1759, !1760}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1757, file: !1724, line: 39, baseType: !390, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1757, file: !1724, line: 40, baseType: !390, size: 64, offset: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1723, file: !1724, line: 146, baseType: !1762, size: 192, offset: 1920)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1724, line: 66, size: 192, elements: !1763)
!1763 = !{!1764}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1762, file: !1724, line: 67, baseType: !1765, size: 192)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1724, line: 47, size: 192, elements: !1766)
!1766 = !{!1767, !1768, !1769}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1765, file: !1724, line: 48, baseType: !742, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1765, file: !1724, line: 49, baseType: !742, size: 64, offset: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1765, file: !1724, line: 50, baseType: !742, size: 64, offset: 128)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1723, file: !1724, line: 150, baseType: !1499, size: 640, offset: 2112)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1723, file: !1724, line: 153, baseType: !1772, size: 256, offset: 2752)
!1772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1440, size: 256, elements: !1124)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1723, file: !1724, line: 159, baseType: !1440, size: 64, offset: 3008)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1723, file: !1724, line: 162, baseType: !153, size: 32, offset: 3072)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1723, file: !1724, line: 164, baseType: !1776, size: 64, offset: 3136)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1724, line: 164, flags: DIFlagFwdDecl)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1723, file: !1724, line: 175, baseType: !1779, size: 32, offset: 3200)
!1779 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !357, line: 805, baseType: !1780)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !357, line: 798, size: 32, elements: !1781)
!1781 = !{!1782, !1783}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1780, file: !357, line: 803, baseType: !356, size: 32)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1780, file: !357, line: 804, baseType: !205, offset: 32)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1723, file: !1724, line: 176, baseType: !390, size: 64, offset: 3264)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1723, file: !1724, line: 176, baseType: !390, size: 64, offset: 3328)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1723, file: !1724, line: 176, baseType: !390, size: 64, offset: 3392)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1723, file: !1724, line: 176, baseType: !390, size: 64, offset: 3456)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1723, file: !1724, line: 177, baseType: !390, size: 64, offset: 3520)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1723, file: !1724, line: 178, baseType: !390, size: 64, offset: 3584)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1723, file: !1724, line: 179, baseType: !1487, size: 128, offset: 3648)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1723, file: !1724, line: 180, baseType: !156, size: 64, offset: 3776)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1723, file: !1724, line: 180, baseType: !156, size: 64, offset: 3840)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1723, file: !1724, line: 180, baseType: !156, size: 64, offset: 3904)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1723, file: !1724, line: 180, baseType: !156, size: 64, offset: 3968)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1723, file: !1724, line: 181, baseType: !156, size: 64, offset: 4032)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1723, file: !1724, line: 181, baseType: !156, size: 64, offset: 4096)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1723, file: !1724, line: 181, baseType: !156, size: 64, offset: 4160)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1723, file: !1724, line: 181, baseType: !156, size: 64, offset: 4224)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1723, file: !1724, line: 182, baseType: !156, size: 64, offset: 4288)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1723, file: !1724, line: 182, baseType: !156, size: 64, offset: 4352)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1723, file: !1724, line: 182, baseType: !156, size: 64, offset: 4416)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1723, file: !1724, line: 182, baseType: !156, size: 64, offset: 4480)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1723, file: !1724, line: 183, baseType: !156, size: 64, offset: 4544)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1723, file: !1724, line: 183, baseType: !156, size: 64, offset: 4608)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1723, file: !1724, line: 184, baseType: !1806, offset: 4672)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1807, line: 12, elements: !219)
!1807 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1723, file: !1724, line: 192, baseType: !392, size: 64, offset: 4672)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1723, file: !1724, line: 203, baseType: !1810, size: 2048, offset: 4736)
!1810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1811, size: 2048, elements: !1704)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1812, line: 43, size: 128, elements: !1813)
!1812 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1813 = !{!1814, !1815}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1811, file: !1812, line: 44, baseType: !293, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1811, file: !1812, line: 45, baseType: !293, size: 64, offset: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1723, file: !1724, line: 220, baseType: !459, size: 8, offset: 6784)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1723, file: !1724, line: 221, baseType: !1174, size: 16, offset: 6800)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1723, file: !1724, line: 222, baseType: !1174, size: 16, offset: 6816)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1723, file: !1724, line: 224, baseType: !943, size: 64, offset: 6848)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1723, file: !1724, line: 227, baseType: !1142, size: 192, offset: 6912)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1723, file: !1724, line: 233, baseType: !1142, size: 192, offset: 7104)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1186, file: !1187, line: 970, baseType: !1823, size: 64, offset: 9280)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1724, line: 20, size: 16576, elements: !1825)
!1825 = !{!1826, !1827, !1828, !1829}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1824, file: !1724, line: 21, baseType: !205)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1824, file: !1724, line: 22, baseType: !1199, size: 32)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1824, file: !1724, line: 23, baseType: !1450, size: 128, offset: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1824, file: !1724, line: 24, baseType: !1830, size: 16384, offset: 192)
!1830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1831, size: 16384, elements: !250)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1734, line: 49, size: 256, elements: !1832)
!1832 = !{!1833}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1831, file: !1734, line: 50, baseType: !1834, size: 256)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1734, line: 35, size: 256, elements: !1835)
!1835 = !{!1836, !1843, !1844, !1850}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1834, file: !1734, line: 37, baseType: !1837, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1838, line: 19, baseType: !1839)
!1838 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1838, line: 18, baseType: !1841)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{null, !153}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1834, file: !1734, line: 38, baseType: !156, size: 64, offset: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1834, file: !1734, line: 44, baseType: !1845, size: 64, offset: 128)
!1845 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1838, line: 22, baseType: !1846)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1838, line: 21, baseType: !1848)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{null}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1834, file: !1734, line: 46, baseType: !1738, size: 64, offset: 192)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1186, file: !1187, line: 971, baseType: !1738, size: 64, offset: 9344)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1186, file: !1187, line: 972, baseType: !1738, size: 64, offset: 9408)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1186, file: !1187, line: 974, baseType: !1738, size: 64, offset: 9472)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1186, file: !1187, line: 975, baseType: !1733, size: 192, offset: 9536)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1186, file: !1187, line: 976, baseType: !156, size: 64, offset: 9728)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1186, file: !1187, line: 977, baseType: !291, size: 64, offset: 9792)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1186, file: !1187, line: 978, baseType: !7, size: 32, offset: 9856)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1186, file: !1187, line: 980, baseType: !337, size: 64, offset: 9920)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1186, file: !1187, line: 989, baseType: !1860, size: 128, offset: 9984)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1861, line: 35, size: 128, elements: !1862)
!1861 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1862 = !{!1863, !1864, !1865}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1860, file: !1861, line: 36, baseType: !153, size: 32)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1860, file: !1861, line: 37, baseType: !716, size: 32, offset: 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1860, file: !1861, line: 38, baseType: !1866, size: 64, offset: 64)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1861, line: 23, flags: DIFlagFwdDecl)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1186, file: !1187, line: 992, baseType: !390, size: 64, offset: 10112)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1186, file: !1187, line: 993, baseType: !390, size: 64, offset: 10176)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1186, file: !1187, line: 996, baseType: !205, offset: 10240)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1186, file: !1187, line: 999, baseType: !749, offset: 10240)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1186, file: !1187, line: 1001, baseType: !1873, size: 64, offset: 10240)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1187, line: 636, size: 64, elements: !1874)
!1874 = !{!1875}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1873, file: !1187, line: 637, baseType: !1876, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1186, file: !1187, line: 1005, baseType: !721, size: 128, offset: 10304)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1186, file: !1187, line: 1007, baseType: !1185, size: 64, offset: 10432)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1186, file: !1187, line: 1009, baseType: !1880, size: 64, offset: 10496)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1187, line: 1009, flags: DIFlagFwdDecl)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1186, file: !1187, line: 1043, baseType: !152, size: 64, offset: 10560)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1186, file: !1187, line: 1046, baseType: !1884, size: 64, offset: 10624)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1187, line: 41, flags: DIFlagFwdDecl)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1186, file: !1187, line: 1050, baseType: !1887, size: 64, offset: 10688)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1187, line: 42, flags: DIFlagFwdDecl)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1186, file: !1187, line: 1054, baseType: !1890, size: 64, offset: 10752)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1187, line: 55, flags: DIFlagFwdDecl)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1186, file: !1187, line: 1056, baseType: !1893, size: 64, offset: 10816)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1187, line: 40, flags: DIFlagFwdDecl)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1186, file: !1187, line: 1058, baseType: !1896, size: 64, offset: 10880)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1898, line: 99, size: 704, elements: !1899)
!1898 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1899 = !{!1900, !1901, !1902, !1903, !1904, !1905, !1906, !1925, !1926}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1897, file: !1898, line: 100, baseType: !740, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1897, file: !1898, line: 101, baseType: !716, size: 32, offset: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1897, file: !1898, line: 102, baseType: !716, size: 32, offset: 96)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1897, file: !1898, line: 105, baseType: !205, offset: 128)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1897, file: !1898, line: 107, baseType: !286, size: 16, offset: 128)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1897, file: !1898, line: 109, baseType: !708, size: 128, offset: 192)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1897, file: !1898, line: 110, baseType: !1907, size: 64, offset: 320)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1898, line: 73, size: 448, elements: !1909)
!1909 = !{!1910, !1913, !1914, !1919, !1924}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1908, file: !1898, line: 74, baseType: !1911, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1898, line: 74, flags: DIFlagFwdDecl)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1908, file: !1898, line: 75, baseType: !1896, size: 64, offset: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, scope: !1908, file: !1898, line: 83, baseType: !1915, size: 128, offset: 128)
!1915 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1908, file: !1898, line: 83, size: 128, elements: !1916)
!1916 = !{!1917, !1918}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1915, file: !1898, line: 84, baseType: !192, size: 128)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1915, file: !1898, line: 85, baseType: !904, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, scope: !1908, file: !1898, line: 87, baseType: !1920, size: 128, offset: 256)
!1920 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1908, file: !1898, line: 87, size: 128, elements: !1921)
!1921 = !{!1922, !1923}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1920, file: !1898, line: 88, baseType: !608, size: 128)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1920, file: !1898, line: 89, baseType: !334, size: 128, align: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1908, file: !1898, line: 92, baseType: !7, size: 32, offset: 384)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1897, file: !1898, line: 111, baseType: !604, size: 64, offset: 384)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1897, file: !1898, line: 113, baseType: !1927, size: 256, offset: 448)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1928, line: 102, size: 256, elements: !1929)
!1928 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1929 = !{!1930, !1931, !1932}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1927, file: !1928, line: 103, baseType: !740, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1927, file: !1928, line: 104, baseType: !192, size: 128, offset: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1927, file: !1928, line: 105, baseType: !1933, size: 64, offset: 192)
!1933 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1928, line: 21, baseType: !1934)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{null, !1937}
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1186, file: !1187, line: 1061, baseType: !1939, size: 64, offset: 10944)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1187, line: 43, flags: DIFlagFwdDecl)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1186, file: !1187, line: 1064, baseType: !156, size: 64, offset: 11008)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1186, file: !1187, line: 1065, baseType: !1943, size: 64, offset: 11072)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1734, line: 14, baseType: !1945)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1734, line: 12, size: 384, elements: !1946)
!1946 = !{!1947}
!1947 = !DIDerivedType(tag: DW_TAG_member, scope: !1945, file: !1734, line: 13, baseType: !1948, size: 384)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1945, file: !1734, line: 13, size: 384, elements: !1949)
!1949 = !{!1950, !1951, !1952, !1953}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1948, file: !1734, line: 13, baseType: !153, size: 32)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1948, file: !1734, line: 13, baseType: !153, size: 32, offset: 32)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1948, file: !1734, line: 13, baseType: !153, size: 32, offset: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1948, file: !1734, line: 13, baseType: !1954, size: 256, offset: 128)
!1954 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1955, line: 32, size: 256, elements: !1956)
!1955 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1956 = !{!1957, !1962, !1975, !1981, !1990, !2010, !2015}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1954, file: !1955, line: 37, baseType: !1958, size: 64)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1954, file: !1955, line: 34, size: 64, elements: !1959)
!1959 = !{!1960, !1961}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1958, file: !1955, line: 35, baseType: !1429, size: 32)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1958, file: !1955, line: 36, baseType: !410, size: 32, offset: 32)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1954, file: !1955, line: 45, baseType: !1963, size: 192)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1954, file: !1955, line: 40, size: 192, elements: !1964)
!1964 = !{!1965, !1967, !1968, !1974}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1963, file: !1955, line: 41, baseType: !1966, size: 32)
!1966 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !278, line: 95, baseType: !153)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1963, file: !1955, line: 42, baseType: !153, size: 32, offset: 32)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1963, file: !1955, line: 43, baseType: !1969, size: 64, offset: 64)
!1969 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1955, line: 11, baseType: !1970)
!1970 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1955, line: 8, size: 64, elements: !1971)
!1971 = !{!1972, !1973}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1970, file: !1955, line: 9, baseType: !153, size: 32)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1970, file: !1955, line: 10, baseType: !152, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1963, file: !1955, line: 44, baseType: !153, size: 32, offset: 128)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1954, file: !1955, line: 52, baseType: !1976, size: 128)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1954, file: !1955, line: 48, size: 128, elements: !1977)
!1977 = !{!1978, !1979, !1980}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1976, file: !1955, line: 49, baseType: !1429, size: 32)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1976, file: !1955, line: 50, baseType: !410, size: 32, offset: 32)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1976, file: !1955, line: 51, baseType: !1969, size: 64, offset: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1954, file: !1955, line: 61, baseType: !1982, size: 256)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1954, file: !1955, line: 55, size: 256, elements: !1983)
!1983 = !{!1984, !1985, !1986, !1987, !1989}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1982, file: !1955, line: 56, baseType: !1429, size: 32)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1982, file: !1955, line: 57, baseType: !410, size: 32, offset: 32)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1982, file: !1955, line: 58, baseType: !153, size: 32, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1982, file: !1955, line: 59, baseType: !1988, size: 64, offset: 128)
!1988 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !278, line: 94, baseType: !279)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1982, file: !1955, line: 60, baseType: !1988, size: 64, offset: 192)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1954, file: !1955, line: 95, baseType: !1991, size: 256)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1954, file: !1955, line: 64, size: 256, elements: !1992)
!1992 = !{!1993, !1994}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1991, file: !1955, line: 65, baseType: !152, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, scope: !1991, file: !1955, line: 77, baseType: !1995, size: 192, offset: 64)
!1995 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1991, file: !1955, line: 77, size: 192, elements: !1996)
!1996 = !{!1997, !1998, !2005}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1995, file: !1955, line: 82, baseType: !1174, size: 16)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1995, file: !1955, line: 88, baseType: !1999, size: 192)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1995, file: !1955, line: 84, size: 192, elements: !2000)
!2000 = !{!2001, !2003, !2004}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1999, file: !1955, line: 85, baseType: !2002, size: 64)
!2002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 64, elements: !1299)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1999, file: !1955, line: 86, baseType: !152, size: 64, offset: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1999, file: !1955, line: 87, baseType: !152, size: 64, offset: 128)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1995, file: !1955, line: 93, baseType: !2006, size: 96)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1995, file: !1955, line: 90, size: 96, elements: !2007)
!2007 = !{!2008, !2009}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2006, file: !1955, line: 91, baseType: !2002, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2006, file: !1955, line: 92, baseType: !386, size: 32, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1954, file: !1955, line: 101, baseType: !2011, size: 128)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1954, file: !1955, line: 98, size: 128, elements: !2012)
!2012 = !{!2013, !2014}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2011, file: !1955, line: 99, baseType: !147, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2011, file: !1955, line: 100, baseType: !153, size: 32, offset: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1954, file: !1955, line: 108, baseType: !2016, size: 128)
!2016 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1954, file: !1955, line: 104, size: 128, elements: !2017)
!2017 = !{!2018, !2019, !2020}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2016, file: !1955, line: 105, baseType: !152, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2016, file: !1955, line: 106, baseType: !153, size: 32, offset: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2016, file: !1955, line: 107, baseType: !7, size: 32, offset: 96)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1186, file: !1187, line: 1067, baseType: !1806, offset: 11136)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1186, file: !1187, line: 1099, baseType: !2023, size: 64, offset: 11136)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1187, line: 56, flags: DIFlagFwdDecl)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1186, file: !1187, line: 1103, baseType: !192, size: 128, offset: 11200)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1186, file: !1187, line: 1104, baseType: !2027, size: 64, offset: 11328)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1187, line: 46, flags: DIFlagFwdDecl)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1186, file: !1187, line: 1105, baseType: !1142, size: 192, offset: 11392)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1186, file: !1187, line: 1106, baseType: !7, size: 32, offset: 11584)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1186, file: !1187, line: 1109, baseType: !2032, size: 128, offset: 11648)
!2032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2033, size: 128, elements: !1538)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1187, line: 51, flags: DIFlagFwdDecl)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1186, file: !1187, line: 1110, baseType: !1142, size: 192, offset: 11776)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1186, file: !1187, line: 1111, baseType: !192, size: 128, offset: 11968)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1186, file: !1187, line: 1173, baseType: !2038, size: 64, offset: 12096)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2040, line: 62, size: 256, align: 256, elements: !2041)
!2040 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2041 = !{!2042, !2043, !2044, !2049}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2039, file: !2040, line: 75, baseType: !386, size: 32)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2039, file: !2040, line: 90, baseType: !386, size: 32, offset: 32)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2039, file: !2040, line: 124, baseType: !2045, size: 64, offset: 64)
!2045 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2039, file: !2040, line: 109, size: 64, elements: !2046)
!2046 = !{!2047, !2048}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2045, file: !2040, line: 110, baseType: !391, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2045, file: !2040, line: 112, baseType: !391, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2039, file: !2040, line: 144, baseType: !386, size: 32, offset: 128)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1186, file: !1187, line: 1174, baseType: !384, size: 32, offset: 12160)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1186, file: !1187, line: 1179, baseType: !156, size: 64, offset: 12224)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1186, file: !1187, line: 1182, baseType: !2053, size: 128, offset: 12288)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1120, line: 76, size: 128, elements: !2054)
!2054 = !{!2055, !2060, !2061}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2053, file: !1120, line: 85, baseType: !2056, size: 64)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2057, line: 7, size: 64, elements: !2058)
!2057 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2058 = !{!2059}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2056, file: !2057, line: 12, baseType: !1336, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2053, file: !1120, line: 88, baseType: !459, size: 8, offset: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2053, file: !1120, line: 95, baseType: !459, size: 8, offset: 72)
!2062 = !DIDerivedType(tag: DW_TAG_member, scope: !1186, file: !1187, line: 1184, baseType: !2063, size: 128, offset: 12416)
!2063 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1186, file: !1187, line: 1184, size: 128, elements: !2064)
!2064 = !{!2065, !2066}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2063, file: !1187, line: 1185, baseType: !1199, size: 32)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2063, file: !1187, line: 1186, baseType: !334, size: 128, align: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1186, file: !1187, line: 1190, baseType: !2068, size: 64, offset: 12544)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1187, line: 53, flags: DIFlagFwdDecl)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1186, file: !1187, line: 1192, baseType: !2071, size: 128, offset: 12608)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1120, line: 64, size: 128, elements: !2072)
!2072 = !{!2073, !2074, !2075}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2071, file: !1120, line: 65, baseType: !690, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2071, file: !1120, line: 67, baseType: !386, size: 32, offset: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2071, file: !1120, line: 68, baseType: !386, size: 32, offset: 96)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1186, file: !1187, line: 1206, baseType: !153, size: 32, offset: 12736)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1186, file: !1187, line: 1207, baseType: !153, size: 32, offset: 12768)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1186, file: !1187, line: 1209, baseType: !156, size: 64, offset: 12800)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1186, file: !1187, line: 1219, baseType: !390, size: 64, offset: 12864)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1186, file: !1187, line: 1220, baseType: !390, size: 64, offset: 12928)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1186, file: !1187, line: 1317, baseType: !153, size: 32, offset: 12992)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1186, file: !1187, line: 1319, baseType: !1185, size: 64, offset: 13056)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1186, file: !1187, line: 1322, baseType: !2084, size: 64, offset: 13120)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2086, line: 56, size: 512, elements: !2087)
!2086 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2087 = !{!2088, !2089, !2090, !2091, !2092, !2093, !2094, !2096}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2085, file: !2086, line: 57, baseType: !2084, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2085, file: !2086, line: 58, baseType: !152, size: 64, offset: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2085, file: !2086, line: 59, baseType: !156, size: 64, offset: 128)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2085, file: !2086, line: 60, baseType: !156, size: 64, offset: 192)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2085, file: !2086, line: 61, baseType: !789, size: 64, offset: 256)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2085, file: !2086, line: 62, baseType: !7, size: 32, offset: 320)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2085, file: !2086, line: 63, baseType: !2095, size: 64, offset: 384)
!2095 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !146, line: 153, baseType: !390)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2085, file: !2086, line: 64, baseType: !2097, size: 64, offset: 448)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1186, file: !1187, line: 1326, baseType: !1199, size: 32, offset: 13184)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1186, file: !1187, line: 1342, baseType: !152, size: 64, offset: 13248)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1186, file: !1187, line: 1343, baseType: !391, size: 64, offset: 13312)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1186, file: !1187, line: 1344, baseType: !390, size: 64, offset: 13376)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1186, file: !1187, line: 1345, baseType: !391, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1186, file: !1187, line: 1346, baseType: !391, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1186, file: !1187, line: 1347, baseType: !391, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1186, file: !1187, line: 1348, baseType: !334, size: 128, align: 64, offset: 13504)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1186, file: !1187, line: 1358, baseType: !2108, size: 34816, offset: 13824)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2109, line: 485, size: 34816, elements: !2110)
!2109 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2110 = !{!2111, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2140, !2141, !2142, !2143, !2144, !2145, !2148, !2149, !2150}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2108, file: !2109, line: 487, baseType: !2112, size: 192)
!2112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2113, size: 192, elements: !246)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2114, line: 16, size: 64, elements: !2115)
!2114 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2115 = !{!2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2113, file: !2114, line: 17, baseType: !828, size: 16)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2113, file: !2114, line: 18, baseType: !828, size: 16, offset: 16)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2113, file: !2114, line: 19, baseType: !828, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2113, file: !2114, line: 19, baseType: !828, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2113, file: !2114, line: 19, baseType: !828, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2113, file: !2114, line: 19, baseType: !828, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2113, file: !2114, line: 19, baseType: !828, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2113, file: !2114, line: 20, baseType: !828, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2113, file: !2114, line: 20, baseType: !828, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2113, file: !2114, line: 20, baseType: !828, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2113, file: !2114, line: 20, baseType: !828, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2113, file: !2114, line: 20, baseType: !828, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2113, file: !2114, line: 20, baseType: !828, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2108, file: !2109, line: 491, baseType: !156, size: 64, offset: 192)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2108, file: !2109, line: 495, baseType: !286, size: 16, offset: 256)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2108, file: !2109, line: 496, baseType: !286, size: 16, offset: 272)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2108, file: !2109, line: 497, baseType: !286, size: 16, offset: 288)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2108, file: !2109, line: 498, baseType: !286, size: 16, offset: 304)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2108, file: !2109, line: 502, baseType: !156, size: 64, offset: 320)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2108, file: !2109, line: 503, baseType: !156, size: 64, offset: 384)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2108, file: !2109, line: 514, baseType: !2137, size: 256, offset: 448)
!2137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2138, size: 256, elements: !1124)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2109, line: 483, flags: DIFlagFwdDecl)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2108, file: !2109, line: 516, baseType: !156, size: 64, offset: 704)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2108, file: !2109, line: 518, baseType: !156, size: 64, offset: 768)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2108, file: !2109, line: 520, baseType: !156, size: 64, offset: 832)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2108, file: !2109, line: 521, baseType: !156, size: 64, offset: 896)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2108, file: !2109, line: 522, baseType: !156, size: 64, offset: 960)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2108, file: !2109, line: 528, baseType: !2146, size: 64, offset: 1024)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2109, line: 10, flags: DIFlagFwdDecl)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2108, file: !2109, line: 535, baseType: !156, size: 64, offset: 1088)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2108, file: !2109, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2108, file: !2109, line: 540, baseType: !2151, size: 33280, offset: 1536)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2152, line: 317, size: 33280, elements: !2153)
!2152 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2153 = !{!2154, !2155, !2156}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2151, file: !2152, line: 330, baseType: !7, size: 32)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2151, file: !2152, line: 337, baseType: !156, size: 64, offset: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2151, file: !2152, line: 348, baseType: !2157, size: 32768, offset: 512)
!2157 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2152, line: 304, size: 32768, elements: !2158)
!2158 = !{!2159, !2174, !2213, !2263, !2276}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2157, file: !2152, line: 305, baseType: !2160, size: 896)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2152, line: 12, size: 896, elements: !2161)
!2161 = !{!2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2173}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2160, file: !2152, line: 13, baseType: !384, size: 32)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2160, file: !2152, line: 14, baseType: !384, size: 32, offset: 32)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2160, file: !2152, line: 15, baseType: !384, size: 32, offset: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2160, file: !2152, line: 16, baseType: !384, size: 32, offset: 96)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2160, file: !2152, line: 17, baseType: !384, size: 32, offset: 128)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2160, file: !2152, line: 18, baseType: !384, size: 32, offset: 160)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2160, file: !2152, line: 19, baseType: !384, size: 32, offset: 192)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2160, file: !2152, line: 22, baseType: !2170, size: 640, offset: 224)
!2170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 640, elements: !2171)
!2171 = !{!2172}
!2172 = !DISubrange(count: 20)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2160, file: !2152, line: 25, baseType: !384, size: 32, offset: 864)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2157, file: !2152, line: 306, baseType: !2175, size: 4096, align: 128)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2152, line: 34, size: 4096, align: 128, elements: !2176)
!2176 = !{!2177, !2178, !2179, !2180, !2181, !2196, !2197, !2198, !2202, !2204, !2208}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2175, file: !2152, line: 35, baseType: !828, size: 16)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2175, file: !2152, line: 36, baseType: !828, size: 16, offset: 16)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2175, file: !2152, line: 37, baseType: !828, size: 16, offset: 32)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2175, file: !2152, line: 38, baseType: !828, size: 16, offset: 48)
!2181 = !DIDerivedType(tag: DW_TAG_member, scope: !2175, file: !2152, line: 39, baseType: !2182, size: 128, offset: 64)
!2182 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2175, file: !2152, line: 39, size: 128, elements: !2183)
!2183 = !{!2184, !2189}
!2184 = !DIDerivedType(tag: DW_TAG_member, scope: !2182, file: !2152, line: 40, baseType: !2185, size: 128)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2182, file: !2152, line: 40, size: 128, elements: !2186)
!2186 = !{!2187, !2188}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2185, file: !2152, line: 41, baseType: !390, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2185, file: !2152, line: 42, baseType: !390, size: 64, offset: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, scope: !2182, file: !2152, line: 44, baseType: !2190, size: 128)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2182, file: !2152, line: 44, size: 128, elements: !2191)
!2191 = !{!2192, !2193, !2194, !2195}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2190, file: !2152, line: 45, baseType: !384, size: 32)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2190, file: !2152, line: 46, baseType: !384, size: 32, offset: 32)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2190, file: !2152, line: 47, baseType: !384, size: 32, offset: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2190, file: !2152, line: 48, baseType: !384, size: 32, offset: 96)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2175, file: !2152, line: 51, baseType: !384, size: 32, offset: 192)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2175, file: !2152, line: 52, baseType: !384, size: 32, offset: 224)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2175, file: !2152, line: 55, baseType: !2199, size: 1024, offset: 256)
!2199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 1024, elements: !2200)
!2200 = !{!2201}
!2201 = !DISubrange(count: 32)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2175, file: !2152, line: 58, baseType: !2203, size: 2048, offset: 1280)
!2203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 2048, elements: !250)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2175, file: !2152, line: 60, baseType: !2205, size: 384, offset: 3328)
!2205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 384, elements: !2206)
!2206 = !{!2207}
!2207 = !DISubrange(count: 12)
!2208 = !DIDerivedType(tag: DW_TAG_member, scope: !2175, file: !2152, line: 62, baseType: !2209, size: 384, offset: 3712)
!2209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2175, file: !2152, line: 62, size: 384, elements: !2210)
!2210 = !{!2211, !2212}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2209, file: !2152, line: 63, baseType: !2205, size: 384)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2209, file: !2152, line: 64, baseType: !2205, size: 384)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2157, file: !2152, line: 307, baseType: !2214, size: 1088)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2152, line: 79, size: 1088, elements: !2215)
!2215 = !{!2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2262}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2214, file: !2152, line: 80, baseType: !384, size: 32)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2214, file: !2152, line: 81, baseType: !384, size: 32, offset: 32)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2214, file: !2152, line: 82, baseType: !384, size: 32, offset: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2214, file: !2152, line: 83, baseType: !384, size: 32, offset: 96)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2214, file: !2152, line: 84, baseType: !384, size: 32, offset: 128)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2214, file: !2152, line: 85, baseType: !384, size: 32, offset: 160)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2214, file: !2152, line: 86, baseType: !384, size: 32, offset: 192)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2214, file: !2152, line: 88, baseType: !2170, size: 640, offset: 224)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2214, file: !2152, line: 89, baseType: !1321, size: 8, offset: 864)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2214, file: !2152, line: 90, baseType: !1321, size: 8, offset: 872)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2214, file: !2152, line: 91, baseType: !1321, size: 8, offset: 880)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2214, file: !2152, line: 92, baseType: !1321, size: 8, offset: 888)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2214, file: !2152, line: 93, baseType: !1321, size: 8, offset: 896)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2214, file: !2152, line: 94, baseType: !1321, size: 8, offset: 904)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2214, file: !2152, line: 95, baseType: !2231, size: 64, offset: 960)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2233, line: 11, size: 128, elements: !2234)
!2233 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2234 = !{!2235, !2236}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2232, file: !2233, line: 12, baseType: !147, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2232, file: !2233, line: 13, baseType: !2237, size: 64, offset: 64)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2239, line: 56, size: 1344, elements: !2240)
!2239 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2240 = !{!2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2238, file: !2239, line: 61, baseType: !156, size: 64)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2238, file: !2239, line: 62, baseType: !156, size: 64, offset: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2238, file: !2239, line: 63, baseType: !156, size: 64, offset: 128)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2238, file: !2239, line: 64, baseType: !156, size: 64, offset: 192)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2238, file: !2239, line: 65, baseType: !156, size: 64, offset: 256)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2238, file: !2239, line: 66, baseType: !156, size: 64, offset: 320)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2238, file: !2239, line: 68, baseType: !156, size: 64, offset: 384)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2238, file: !2239, line: 69, baseType: !156, size: 64, offset: 448)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2238, file: !2239, line: 70, baseType: !156, size: 64, offset: 512)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2238, file: !2239, line: 71, baseType: !156, size: 64, offset: 576)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2238, file: !2239, line: 72, baseType: !156, size: 64, offset: 640)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2238, file: !2239, line: 73, baseType: !156, size: 64, offset: 704)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2238, file: !2239, line: 74, baseType: !156, size: 64, offset: 768)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2238, file: !2239, line: 75, baseType: !156, size: 64, offset: 832)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2238, file: !2239, line: 76, baseType: !156, size: 64, offset: 896)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2238, file: !2239, line: 81, baseType: !156, size: 64, offset: 960)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2238, file: !2239, line: 83, baseType: !156, size: 64, offset: 1024)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2238, file: !2239, line: 84, baseType: !156, size: 64, offset: 1088)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2238, file: !2239, line: 85, baseType: !156, size: 64, offset: 1152)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2238, file: !2239, line: 86, baseType: !156, size: 64, offset: 1216)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2238, file: !2239, line: 87, baseType: !156, size: 64, offset: 1280)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2214, file: !2152, line: 96, baseType: !384, size: 32, offset: 1024)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2157, file: !2152, line: 308, baseType: !2264, size: 4608, align: 512)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2152, line: 289, size: 4608, align: 512, elements: !2265)
!2265 = !{!2266, !2267, !2274}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2264, file: !2152, line: 290, baseType: !2175, size: 4096, align: 128)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2264, file: !2152, line: 291, baseType: !2268, size: 512, offset: 4096)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2152, line: 268, size: 512, elements: !2269)
!2269 = !{!2270, !2271, !2272}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2268, file: !2152, line: 269, baseType: !390, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2268, file: !2152, line: 270, baseType: !390, size: 64, offset: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2268, file: !2152, line: 271, baseType: !2273, size: 384, offset: 128)
!2273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 384, elements: !1594)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2264, file: !2152, line: 292, baseType: !2275, offset: 4608)
!2275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1321, elements: !1692)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2157, file: !2152, line: 309, baseType: !2277, size: 32768)
!2277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1321, size: 32768, elements: !2278)
!2278 = !{!2279}
!2279 = !DISubrange(count: 4096)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1182, file: !692, line: 378, baseType: !2281, size: 64, offset: 64)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1178, file: !692, line: 384, baseType: !1471, size: 192, offset: 192)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !947, file: !692, line: 500, baseType: !205, offset: 6656)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !947, file: !692, line: 501, baseType: !2285, size: 64, offset: 6656)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !692, line: 387, flags: DIFlagFwdDecl)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !947, file: !692, line: 516, baseType: !1682, size: 64, offset: 6720)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !947, file: !692, line: 519, baseType: !321, size: 64, offset: 6784)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !947, file: !692, line: 521, baseType: !2290, size: 64, offset: 6848)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !692, line: 521, flags: DIFlagFwdDecl)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !947, file: !692, line: 545, baseType: !716, size: 32, offset: 6912)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !947, file: !692, line: 548, baseType: !459, size: 8, offset: 6944)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !947, file: !692, line: 550, baseType: !2295, offset: 6952)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2296, line: 142, elements: !219)
!2296 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !947, file: !692, line: 554, baseType: !1927, size: 256, offset: 6976)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !947, file: !692, line: 557, baseType: !384, size: 32, offset: 7232)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !944, file: !692, line: 565, baseType: !2300, offset: 7296)
!2300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, elements: !2301)
!2301 = !{!2302}
!2302 = !DISubrange(count: -1)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !940, file: !692, line: 151, baseType: !716, size: 32)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !933, file: !692, line: 156, baseType: !205, offset: 256)
!2305 = !DIDerivedType(tag: DW_TAG_member, scope: !696, file: !692, line: 159, baseType: !2306, size: 128)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !696, file: !692, line: 159, size: 128, elements: !2307)
!2307 = !{!2308, !2372}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2306, file: !692, line: 161, baseType: !2309, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2311)
!2311 = !{!2312, !2322, !2343, !2344, !2345, !2346, !2347, !2359, !2360, !2361}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2310, file: !31, line: 111, baseType: !2313, size: 384)
!2313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2314)
!2314 = !{!2315, !2317, !2318, !2319, !2320, !2321}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2313, file: !31, line: 20, baseType: !2316, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2313, file: !31, line: 21, baseType: !2316, size: 64, offset: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2313, file: !31, line: 22, baseType: !2316, size: 64, offset: 128)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2313, file: !31, line: 23, baseType: !156, size: 64, offset: 192)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2313, file: !31, line: 24, baseType: !156, size: 64, offset: 256)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2313, file: !31, line: 25, baseType: !156, size: 64, offset: 320)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2310, file: !31, line: 112, baseType: !2323, size: 64, offset: 384)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2325, line: 105, size: 128, elements: !2326)
!2325 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2326 = !{!2327, !2328}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2324, file: !2325, line: 110, baseType: !156, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2324, file: !2325, line: 118, baseType: !2329, size: 64, offset: 64)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2325, line: 95, size: 448, elements: !2331)
!2331 = !{!2332, !2333, !2338, !2339, !2340, !2341, !2342}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2330, file: !2325, line: 96, baseType: !740, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2330, file: !2325, line: 97, baseType: !2334, size: 64, offset: 64)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2325, line: 60, baseType: !2336)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{null, !2323}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2330, file: !2325, line: 98, baseType: !2334, size: 64, offset: 128)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2330, file: !2325, line: 99, baseType: !459, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2330, file: !2325, line: 100, baseType: !459, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2330, file: !2325, line: 101, baseType: !334, size: 128, align: 64, offset: 256)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2330, file: !2325, line: 102, baseType: !2323, size: 64, offset: 384)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2310, file: !31, line: 113, baseType: !2324, size: 128, offset: 448)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2310, file: !31, line: 114, baseType: !1471, size: 192, offset: 576)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2310, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2310, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2310, file: !31, line: 117, baseType: !2348, size: 64, offset: 832)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2350)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2351)
!2351 = !{!2352, !2353, !2357, !2358}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2350, file: !31, line: 73, baseType: !809, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2350, file: !31, line: 78, baseType: !2354, size: 64, offset: 64)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{null, !2309}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2350, file: !31, line: 83, baseType: !2354, size: 64, offset: 128)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2350, file: !31, line: 89, baseType: !996, size: 64, offset: 192)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2310, file: !31, line: 118, baseType: !152, size: 64, offset: 896)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2310, file: !31, line: 119, baseType: !153, size: 32, offset: 960)
!2361 = !DIDerivedType(tag: DW_TAG_member, scope: !2310, file: !31, line: 120, baseType: !2362, size: 128, offset: 1024)
!2362 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2310, file: !31, line: 120, size: 128, elements: !2363)
!2363 = !{!2364, !2370}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2362, file: !31, line: 121, baseType: !2365, size: 128)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2366, line: 6, size: 128, elements: !2367)
!2366 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2367 = !{!2368, !2369}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2365, file: !2366, line: 7, baseType: !390, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2365, file: !2366, line: 8, baseType: !390, size: 64, offset: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2362, file: !31, line: 122, baseType: !2371)
!2371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2365, elements: !1692)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2306, file: !692, line: 162, baseType: !152, size: 64, offset: 64)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !696, file: !692, line: 176, baseType: !334, size: 128, align: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, scope: !691, file: !692, line: 179, baseType: !2375, size: 32, offset: 384)
!2375 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !691, file: !692, line: 179, size: 32, elements: !2376)
!2376 = !{!2377, !2378, !2379, !2380}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2375, file: !692, line: 184, baseType: !716, size: 32)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2375, file: !692, line: 192, baseType: !7, size: 32)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2375, file: !692, line: 194, baseType: !7, size: 32)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2375, file: !692, line: 195, baseType: !153, size: 32)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !691, file: !692, line: 199, baseType: !716, size: 32, offset: 416)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !626, file: !44, line: 1964, baseType: !2383, size: 64, offset: 1344)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{!147, !568, !2386}
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2388, line: 12, size: 256, elements: !2389)
!2388 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2389 = !{!2390, !2391, !2392, !2393, !2394}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2387, file: !2388, line: 13, baseType: !145, size: 32)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2387, file: !2388, line: 16, baseType: !153, size: 32, offset: 32)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2387, file: !2388, line: 23, baseType: !156, size: 64, offset: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2387, file: !2388, line: 30, baseType: !156, size: 64, offset: 128)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2387, file: !2388, line: 33, baseType: !2395, size: 64, offset: 192)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !692, line: 27, flags: DIFlagFwdDecl)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !626, file: !44, line: 1966, baseType: !2383, size: 64, offset: 1408)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !569, file: !44, line: 1424, baseType: !2399, size: 64, offset: 448)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2401)
!2401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2402)
!2402 = !{!2403, !2449, !2453, !2457, !2458, !2459, !2460, !2461, !2466, !2471, !2475}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2401, file: !38, line: 323, baseType: !2404, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!153, !2407}
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2409)
!2409 = !{!2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2434, !2435, !2436}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2408, file: !38, line: 295, baseType: !608, size: 128)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2408, file: !38, line: 296, baseType: !192, size: 128, offset: 128)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2408, file: !38, line: 297, baseType: !192, size: 128, offset: 256)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2408, file: !38, line: 298, baseType: !192, size: 128, offset: 384)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2408, file: !38, line: 299, baseType: !1142, size: 192, offset: 512)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2408, file: !38, line: 300, baseType: !205, offset: 704)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2408, file: !38, line: 301, baseType: !716, size: 32, offset: 704)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2408, file: !38, line: 302, baseType: !568, size: 64, offset: 768)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2408, file: !38, line: 303, baseType: !2419, size: 64, offset: 832)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2420)
!2420 = !{!2421, !2433}
!2421 = !DIDerivedType(tag: DW_TAG_member, scope: !2419, file: !38, line: 69, baseType: !2422, size: 32)
!2422 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2419, file: !38, line: 69, size: 32, elements: !2423)
!2423 = !{!2424, !2425, !2426}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2422, file: !38, line: 70, baseType: !404, size: 32)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2422, file: !38, line: 71, baseType: !412, size: 32)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2422, file: !38, line: 72, baseType: !2427, size: 32)
!2427 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2428, line: 24, baseType: !2429)
!2428 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2428, line: 22, size: 32, elements: !2430)
!2430 = !{!2431}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2429, file: !2428, line: 23, baseType: !2432, size: 32)
!2432 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2428, line: 20, baseType: !410)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2419, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2408, file: !38, line: 304, baseType: !500, size: 64, offset: 896)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2408, file: !38, line: 305, baseType: !156, size: 64, offset: 960)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2408, file: !38, line: 306, baseType: !2437, size: 576, offset: 1024)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2438)
!2438 = !{!2439, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2437, file: !38, line: 206, baseType: !2440, size: 64)
!2440 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !502)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2437, file: !38, line: 207, baseType: !2440, size: 64, offset: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2437, file: !38, line: 208, baseType: !2440, size: 64, offset: 128)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2437, file: !38, line: 209, baseType: !2440, size: 64, offset: 192)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2437, file: !38, line: 210, baseType: !2440, size: 64, offset: 256)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2437, file: !38, line: 211, baseType: !2440, size: 64, offset: 320)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2437, file: !38, line: 212, baseType: !2440, size: 64, offset: 384)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2437, file: !38, line: 213, baseType: !508, size: 64, offset: 448)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2437, file: !38, line: 214, baseType: !508, size: 64, offset: 512)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2401, file: !38, line: 324, baseType: !2450, size: 64, offset: 64)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!2407, !568, !153}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2401, file: !38, line: 325, baseType: !2454, size: 64, offset: 128)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{null, !2407}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2401, file: !38, line: 326, baseType: !2404, size: 64, offset: 192)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2401, file: !38, line: 327, baseType: !2404, size: 64, offset: 256)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2401, file: !38, line: 328, baseType: !2404, size: 64, offset: 320)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2401, file: !38, line: 329, baseType: !654, size: 64, offset: 384)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2401, file: !38, line: 332, baseType: !2462, size: 64, offset: 448)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!2465, !398}
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2401, file: !38, line: 333, baseType: !2467, size: 64, offset: 512)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!153, !398, !2470}
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2401, file: !38, line: 335, baseType: !2472, size: 64, offset: 576)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!153, !398, !2465}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2401, file: !38, line: 337, baseType: !2476, size: 64, offset: 640)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!153, !568, !2479}
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !569, file: !44, line: 1425, baseType: !2481, size: 64, offset: 512)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2483)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2484)
!2484 = !{!2485, !2489, !2490, !2494, !2495, !2496, !2511, !2534, !2538, !2539, !2562}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2483, file: !38, line: 429, baseType: !2486, size: 64)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!153, !568, !153, !153, !518}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2483, file: !38, line: 430, baseType: !654, size: 64, offset: 64)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2483, file: !38, line: 431, baseType: !2491, size: 64, offset: 128)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!153, !568, !7}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2483, file: !38, line: 432, baseType: !2491, size: 64, offset: 192)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2483, file: !38, line: 433, baseType: !654, size: 64, offset: 256)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2483, file: !38, line: 434, baseType: !2497, size: 64, offset: 320)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!153, !568, !153, !2500}
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2502)
!2502 = !{!2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2501, file: !38, line: 416, baseType: !153, size: 32)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2501, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2501, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2501, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2501, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2501, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2501, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2501, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2483, file: !38, line: 435, baseType: !2512, size: 64, offset: 384)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!153, !568, !2419, !2515}
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2517)
!2517 = !{!2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2516, file: !38, line: 344, baseType: !153, size: 32)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2516, file: !38, line: 345, baseType: !390, size: 64, offset: 64)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2516, file: !38, line: 346, baseType: !390, size: 64, offset: 128)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2516, file: !38, line: 347, baseType: !390, size: 64, offset: 192)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2516, file: !38, line: 348, baseType: !390, size: 64, offset: 256)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2516, file: !38, line: 349, baseType: !390, size: 64, offset: 320)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2516, file: !38, line: 350, baseType: !390, size: 64, offset: 384)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2516, file: !38, line: 351, baseType: !746, size: 64, offset: 448)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2516, file: !38, line: 353, baseType: !746, size: 64, offset: 512)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2516, file: !38, line: 354, baseType: !153, size: 32, offset: 576)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2516, file: !38, line: 355, baseType: !153, size: 32, offset: 608)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2516, file: !38, line: 356, baseType: !390, size: 64, offset: 640)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2516, file: !38, line: 357, baseType: !390, size: 64, offset: 704)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2516, file: !38, line: 358, baseType: !390, size: 64, offset: 768)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2516, file: !38, line: 359, baseType: !746, size: 64, offset: 832)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2516, file: !38, line: 360, baseType: !153, size: 32, offset: 896)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2483, file: !38, line: 436, baseType: !2535, size: 64, offset: 448)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!153, !568, !2479, !2515}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2483, file: !38, line: 438, baseType: !2512, size: 64, offset: 512)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2483, file: !38, line: 439, baseType: !2540, size: 64, offset: 576)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!153, !568, !2543}
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2545)
!2545 = !{!2546, !2547}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2544, file: !38, line: 410, baseType: !7, size: 32)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2544, file: !38, line: 411, baseType: !2548, size: 1344, offset: 64)
!2548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2549, size: 1344, elements: !246)
!2549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2550)
!2550 = !{!2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2561}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2549, file: !38, line: 396, baseType: !7, size: 32)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2549, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2549, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2549, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2549, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2549, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2549, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2549, file: !38, line: 404, baseType: !392, size: 64, offset: 256)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2549, file: !38, line: 405, baseType: !2560, size: 64, offset: 320)
!2560 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !146, line: 126, baseType: !390)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2549, file: !38, line: 406, baseType: !2560, size: 64, offset: 384)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2483, file: !38, line: 440, baseType: !2491, size: 64, offset: 640)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !569, file: !44, line: 1426, baseType: !2564, size: 64, offset: 576)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2566)
!2566 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !569, file: !44, line: 1427, baseType: !156, size: 64, offset: 640)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !569, file: !44, line: 1428, baseType: !156, size: 64, offset: 704)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !569, file: !44, line: 1429, baseType: !156, size: 64, offset: 768)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !569, file: !44, line: 1430, baseType: !351, size: 64, offset: 832)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !569, file: !44, line: 1431, baseType: !736, size: 256, offset: 896)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !569, file: !44, line: 1432, baseType: !153, size: 32, offset: 1152)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !569, file: !44, line: 1433, baseType: !716, size: 32, offset: 1184)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !569, file: !44, line: 1437, baseType: !2575, size: 64, offset: 1216)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2578)
!2578 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !569, file: !44, line: 1449, baseType: !2580, size: 64, offset: 1280)
!2580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !367, line: 34, size: 64, elements: !2581)
!2581 = !{!2582}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2580, file: !367, line: 35, baseType: !370, size: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !569, file: !44, line: 1450, baseType: !192, size: 128, offset: 1344)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !569, file: !44, line: 1451, baseType: !2585, size: 64, offset: 1472)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !569, file: !44, line: 1452, baseType: !1893, size: 64, offset: 1536)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !569, file: !44, line: 1453, baseType: !2589, size: 64, offset: 1600)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !569, file: !44, line: 1454, baseType: !608, size: 128, offset: 1664)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !569, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !569, file: !44, line: 1456, baseType: !2594, size: 2432, offset: 1856)
!2594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2595)
!2595 = !{!2596, !2597, !2598, !2600, !2632}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2594, file: !38, line: 519, baseType: !7, size: 32)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2594, file: !38, line: 520, baseType: !736, size: 256, offset: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2594, file: !38, line: 521, baseType: !2599, size: 192, offset: 320)
!2599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 192, elements: !246)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2594, file: !38, line: 522, baseType: !2601, size: 1728, offset: 512)
!2601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2602, size: 1728, elements: !246)
!2602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2603)
!2603 = !{!2604, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2602, file: !38, line: 223, baseType: !2605, size: 64)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2607)
!2607 = !{!2608, !2609, !2622, !2623}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2606, file: !38, line: 444, baseType: !153, size: 32)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2606, file: !38, line: 445, baseType: !2610, size: 64, offset: 64)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2612)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2613)
!2613 = !{!2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2612, file: !38, line: 311, baseType: !654, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2612, file: !38, line: 312, baseType: !654, size: 64, offset: 64)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2612, file: !38, line: 313, baseType: !654, size: 64, offset: 128)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2612, file: !38, line: 314, baseType: !654, size: 64, offset: 192)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2612, file: !38, line: 315, baseType: !2404, size: 64, offset: 256)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2612, file: !38, line: 316, baseType: !2404, size: 64, offset: 320)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2612, file: !38, line: 317, baseType: !2404, size: 64, offset: 384)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2612, file: !38, line: 318, baseType: !2476, size: 64, offset: 448)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2606, file: !38, line: 446, baseType: !166, size: 64, offset: 128)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2606, file: !38, line: 447, baseType: !2605, size: 64, offset: 192)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2602, file: !38, line: 224, baseType: !153, size: 32, offset: 64)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2602, file: !38, line: 226, baseType: !192, size: 128, offset: 128)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2602, file: !38, line: 227, baseType: !156, size: 64, offset: 256)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2602, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2602, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2602, file: !38, line: 230, baseType: !2440, size: 64, offset: 384)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2602, file: !38, line: 231, baseType: !2440, size: 64, offset: 448)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2602, file: !38, line: 232, baseType: !152, size: 64, offset: 512)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2594, file: !38, line: 523, baseType: !2633, size: 192, offset: 2240)
!2633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2610, size: 192, elements: !246)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !569, file: !44, line: 1458, baseType: !2635, size: 2112, offset: 4288)
!2635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2636)
!2636 = !{!2637, !2638, !2639}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2635, file: !44, line: 1411, baseType: !153, size: 32)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2635, file: !44, line: 1412, baseType: !1450, size: 128, offset: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2635, file: !44, line: 1413, baseType: !2640, size: 1920, offset: 192)
!2640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2641, size: 1920, elements: !246)
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2642, line: 12, size: 640, elements: !2643)
!2642 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2643 = !{!2644, !2652, !2654, !2659, !2660}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2641, file: !2642, line: 13, baseType: !2645, size: 320)
!2645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2646, line: 17, size: 320, elements: !2647)
!2646 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2647 = !{!2648, !2649, !2650, !2651}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2645, file: !2646, line: 18, baseType: !153, size: 32)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2645, file: !2646, line: 19, baseType: !153, size: 32, offset: 32)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2645, file: !2646, line: 20, baseType: !1450, size: 128, offset: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2645, file: !2646, line: 22, baseType: !334, size: 128, align: 64, offset: 192)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2641, file: !2642, line: 14, baseType: !2653, size: 64, offset: 320)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2641, file: !2642, line: 15, baseType: !2655, size: 64, offset: 384)
!2655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2656, line: 16, size: 64, elements: !2657)
!2656 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2657 = !{!2658}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2655, file: !2656, line: 17, baseType: !1185, size: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2641, file: !2642, line: 16, baseType: !1450, size: 128, offset: 448)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2641, file: !2642, line: 17, baseType: !716, size: 32, offset: 576)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !569, file: !44, line: 1465, baseType: !152, size: 64, offset: 6400)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !569, file: !44, line: 1468, baseType: !384, size: 32, offset: 6464)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !569, file: !44, line: 1470, baseType: !508, size: 64, offset: 6528)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !569, file: !44, line: 1471, baseType: !508, size: 64, offset: 6592)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !569, file: !44, line: 1473, baseType: !386, size: 32, offset: 6656)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !569, file: !44, line: 1474, baseType: !2667, size: 64, offset: 6720)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !569, file: !44, line: 1477, baseType: !2670, size: 256, offset: 6784)
!2670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 256, elements: !2200)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !569, file: !44, line: 1478, baseType: !2672, size: 128, offset: 7040)
!2672 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2673, line: 18, baseType: !2674)
!2673 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2673, line: 16, size: 128, elements: !2675)
!2675 = !{!2676}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2674, file: !2673, line: 17, baseType: !2677, size: 128)
!2677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1322, size: 128, elements: !1704)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !569, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !569, file: !44, line: 1481, baseType: !2680, size: 32, offset: 7200)
!2680 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !146, line: 150, baseType: !7)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !569, file: !44, line: 1487, baseType: !1142, size: 192, offset: 7232)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !569, file: !44, line: 1493, baseType: !149, size: 64, offset: 7424)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !569, file: !44, line: 1495, baseType: !2684, size: 64, offset: 7488)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2686)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !349, line: 135, size: 1024, align: 512, elements: !2687)
!2687 = !{!2688, !2692, !2693, !2700, !2706, !2710, !2714, !2718, !2719, !2723, !2727, !2732, !2736}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2686, file: !349, line: 136, baseType: !2689, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{!153, !351, !7}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2686, file: !349, line: 137, baseType: !2689, size: 64, offset: 64)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2686, file: !349, line: 138, baseType: !2694, size: 64, offset: 128)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!153, !2697, !2699}
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !352)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2686, file: !349, line: 139, baseType: !2701, size: 64, offset: 192)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!153, !2697, !7, !149, !2704}
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !375)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2686, file: !349, line: 141, baseType: !2707, size: 64, offset: 256)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!153, !2697}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2686, file: !349, line: 142, baseType: !2711, size: 64, offset: 320)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!153, !351}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2686, file: !349, line: 143, baseType: !2715, size: 64, offset: 384)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{null, !351}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2686, file: !349, line: 144, baseType: !2715, size: 64, offset: 448)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2686, file: !349, line: 145, baseType: !2720, size: 64, offset: 512)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{null, !351, !398}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2686, file: !349, line: 146, baseType: !2724, size: 64, offset: 576)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DISubroutineType(types: !2726)
!2726 = !{!155, !351, !155, !153}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2686, file: !349, line: 147, baseType: !2728, size: 64, offset: 640)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DISubroutineType(types: !2730)
!2730 = !{!347, !2731}
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2686, file: !349, line: 148, baseType: !2733, size: 64, offset: 704)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = !DISubroutineType(types: !2735)
!2735 = !{!153, !518, !459}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2686, file: !349, line: 149, baseType: !2737, size: 64, offset: 768)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!351, !351, !2740}
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !399)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !569, file: !44, line: 1500, baseType: !153, size: 32, offset: 7552)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !569, file: !44, line: 1502, baseType: !2744, size: 448, offset: 7616)
!2744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2388, line: 60, size: 448, elements: !2745)
!2745 = !{!2746, !2751, !2752, !2753, !2754, !2755, !2756}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2744, file: !2388, line: 61, baseType: !2747, size: 64)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{!156, !2750, !2386}
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2744, file: !2388, line: 63, baseType: !2747, size: 64, offset: 64)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2744, file: !2388, line: 66, baseType: !147, size: 64, offset: 128)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2744, file: !2388, line: 67, baseType: !153, size: 32, offset: 192)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2744, file: !2388, line: 68, baseType: !7, size: 32, offset: 224)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2744, file: !2388, line: 71, baseType: !192, size: 128, offset: 256)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2744, file: !2388, line: 77, baseType: !2757, size: 64, offset: 384)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !569, file: !44, line: 1505, baseType: !740, size: 64, offset: 8064)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !569, file: !44, line: 1508, baseType: !740, size: 64, offset: 8128)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !569, file: !44, line: 1511, baseType: !153, size: 32, offset: 8192)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !569, file: !44, line: 1514, baseType: !878, size: 32, offset: 8224)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !569, file: !44, line: 1517, baseType: !2763, size: 64, offset: 8256)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1928, line: 18, flags: DIFlagFwdDecl)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !569, file: !44, line: 1518, baseType: !604, size: 64, offset: 8320)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !569, file: !44, line: 1525, baseType: !1682, size: 64, offset: 8384)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !569, file: !44, line: 1532, baseType: !2768, size: 64, offset: 8448)
!2768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2769, line: 52, size: 64, elements: !2770)
!2769 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2770 = !{!2771}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2768, file: !2769, line: 53, baseType: !2772, size: 64)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2769, line: 40, size: 256, elements: !2774)
!2774 = !{!2775, !2776, !2781}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2773, file: !2769, line: 42, baseType: !205)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2773, file: !2769, line: 44, baseType: !2777, size: 192)
!2777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2769, line: 28, size: 192, elements: !2778)
!2778 = !{!2779, !2780}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2777, file: !2769, line: 29, baseType: !192, size: 128)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2777, file: !2769, line: 31, baseType: !147, size: 64, offset: 128)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2773, file: !2769, line: 49, baseType: !147, size: 64, offset: 192)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !569, file: !44, line: 1533, baseType: !2768, size: 64, offset: 8512)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !569, file: !44, line: 1534, baseType: !334, size: 128, align: 64, offset: 8576)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !569, file: !44, line: 1535, baseType: !1927, size: 256, offset: 8704)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !569, file: !44, line: 1537, baseType: !1142, size: 192, offset: 8960)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !569, file: !44, line: 1542, baseType: !153, size: 32, offset: 9152)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !569, file: !44, line: 1545, baseType: !205, offset: 9184)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !569, file: !44, line: 1546, baseType: !192, size: 128, offset: 9216)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !569, file: !44, line: 1548, baseType: !205, offset: 9344)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !569, file: !44, line: 1549, baseType: !192, size: 128, offset: 9344)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !399, file: !44, line: 624, baseType: !703, size: 64, offset: 256)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !399, file: !44, line: 631, baseType: !156, size: 64, offset: 320)
!2793 = !DIDerivedType(tag: DW_TAG_member, scope: !399, file: !44, line: 639, baseType: !2794, size: 32, offset: 384)
!2794 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !399, file: !44, line: 639, size: 32, elements: !2795)
!2795 = !{!2796, !2798}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2794, file: !44, line: 640, baseType: !2797, size: 32)
!2797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2794, file: !44, line: 641, baseType: !7, size: 32)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !399, file: !44, line: 643, baseType: !482, size: 32, offset: 416)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !399, file: !44, line: 644, baseType: !500, size: 64, offset: 448)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !399, file: !44, line: 645, baseType: !504, size: 128, offset: 512)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !399, file: !44, line: 646, baseType: !504, size: 128, offset: 640)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !399, file: !44, line: 647, baseType: !504, size: 128, offset: 768)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !399, file: !44, line: 648, baseType: !205, offset: 896)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !399, file: !44, line: 649, baseType: !286, size: 16, offset: 896)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !399, file: !44, line: 650, baseType: !1321, size: 8, offset: 912)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !399, file: !44, line: 651, baseType: !1321, size: 8, offset: 920)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !399, file: !44, line: 652, baseType: !2560, size: 64, offset: 960)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !399, file: !44, line: 659, baseType: !156, size: 64, offset: 1024)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !399, file: !44, line: 660, baseType: !736, size: 256, offset: 1088)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !399, file: !44, line: 662, baseType: !156, size: 64, offset: 1344)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !399, file: !44, line: 663, baseType: !156, size: 64, offset: 1408)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !399, file: !44, line: 665, baseType: !608, size: 128, offset: 1472)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !399, file: !44, line: 666, baseType: !192, size: 128, offset: 1600)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !399, file: !44, line: 675, baseType: !192, size: 128, offset: 1728)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !399, file: !44, line: 676, baseType: !192, size: 128, offset: 1856)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !399, file: !44, line: 677, baseType: !192, size: 128, offset: 1984)
!2818 = !DIDerivedType(tag: DW_TAG_member, scope: !399, file: !44, line: 678, baseType: !2819, size: 128, offset: 2112)
!2819 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !399, file: !44, line: 678, size: 128, elements: !2820)
!2820 = !{!2821, !2822}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2819, file: !44, line: 679, baseType: !604, size: 64)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2819, file: !44, line: 680, baseType: !334, size: 128, align: 64)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !399, file: !44, line: 682, baseType: !742, size: 64, offset: 2240)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !399, file: !44, line: 683, baseType: !742, size: 64, offset: 2304)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !399, file: !44, line: 684, baseType: !716, size: 32, offset: 2368)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !399, file: !44, line: 685, baseType: !716, size: 32, offset: 2400)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !399, file: !44, line: 686, baseType: !716, size: 32, offset: 2432)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !399, file: !44, line: 688, baseType: !716, size: 32, offset: 2464)
!2829 = !DIDerivedType(tag: DW_TAG_member, scope: !399, file: !44, line: 690, baseType: !2830, size: 64, offset: 2496)
!2830 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !399, file: !44, line: 690, size: 64, elements: !2831)
!2831 = !{!2832, !3055}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2830, file: !44, line: 691, baseType: !2833, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2835)
!2835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2836)
!2836 = !{!2837, !2838, !2842, !2847, !2851, !2852, !2853, !2857, !2870, !2871, !2879, !2883, !2884, !2888, !2889, !2893, !2898, !2899, !2903, !2907, !3015, !3019, !3020, !3024, !3025, !3029, !3033, !3038, !3042, !3046, !3050, !3054}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2835, file: !44, line: 1823, baseType: !166, size: 64)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2835, file: !44, line: 1824, baseType: !2839, size: 64, offset: 64)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!500, !321, !500, !153}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2835, file: !44, line: 1825, baseType: !2843, size: 64, offset: 128)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{!276, !321, !155, !291, !2846}
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2835, file: !44, line: 1826, baseType: !2848, size: 64, offset: 192)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!276, !321, !149, !291, !2846}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2835, file: !44, line: 1827, baseType: !813, size: 64, offset: 256)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2835, file: !44, line: 1828, baseType: !813, size: 64, offset: 320)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2835, file: !44, line: 1829, baseType: !2854, size: 64, offset: 384)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{!153, !816, !459}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2835, file: !44, line: 1830, baseType: !2858, size: 64, offset: 448)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!153, !321, !2861}
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2863)
!2863 = !{!2864, !2869}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2862, file: !44, line: 1777, baseType: !2865, size: 64)
!2865 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2866)
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2867 = !DISubroutineType(types: !2868)
!2868 = !{!153, !2861, !149, !153, !500, !390, !7}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2862, file: !44, line: 1778, baseType: !500, size: 64, offset: 64)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2835, file: !44, line: 1831, baseType: !2858, size: 64, offset: 512)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2835, file: !44, line: 1832, baseType: !2872, size: 64, offset: 576)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!2875, !321, !2877}
!2875 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2876, line: 52, baseType: !7)
!2876 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !588, line: 27, flags: DIFlagFwdDecl)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2835, file: !44, line: 1833, baseType: !2880, size: 64, offset: 640)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!147, !321, !7, !156}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2835, file: !44, line: 1834, baseType: !2880, size: 64, offset: 704)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2835, file: !44, line: 1835, baseType: !2885, size: 64, offset: 768)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!153, !321, !950}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2835, file: !44, line: 1836, baseType: !156, size: 64, offset: 832)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2835, file: !44, line: 1837, baseType: !2890, size: 64, offset: 896)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DISubroutineType(types: !2892)
!2892 = !{!153, !398, !321}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2835, file: !44, line: 1838, baseType: !2894, size: 64, offset: 960)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!153, !321, !2897}
!2897 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !152)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2835, file: !44, line: 1839, baseType: !2890, size: 64, offset: 1024)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2835, file: !44, line: 1840, baseType: !2900, size: 64, offset: 1088)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!153, !321, !500, !500, !153}
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2835, file: !44, line: 1841, baseType: !2904, size: 64, offset: 1152)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!153, !153, !321, !153}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2835, file: !44, line: 1842, baseType: !2908, size: 64, offset: 1216)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!153, !321, !153, !2911}
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2913)
!2913 = !{!2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2945, !2946, !2947, !2960, !2991}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2912, file: !44, line: 1063, baseType: !2911, size: 64)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2912, file: !44, line: 1064, baseType: !192, size: 128, offset: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2912, file: !44, line: 1065, baseType: !608, size: 128, offset: 192)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2912, file: !44, line: 1066, baseType: !192, size: 128, offset: 320)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2912, file: !44, line: 1069, baseType: !192, size: 128, offset: 448)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2912, file: !44, line: 1072, baseType: !2897, size: 64, offset: 576)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2912, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2912, file: !44, line: 1074, baseType: !396, size: 8, offset: 672)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2912, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2912, file: !44, line: 1076, baseType: !153, size: 32, offset: 736)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2912, file: !44, line: 1077, baseType: !1450, size: 128, offset: 768)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2912, file: !44, line: 1078, baseType: !321, size: 64, offset: 896)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2912, file: !44, line: 1079, baseType: !500, size: 64, offset: 960)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2912, file: !44, line: 1080, baseType: !500, size: 64, offset: 1024)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2912, file: !44, line: 1082, baseType: !2929, size: 64, offset: 1088)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2931)
!2931 = !{!2932, !2940, !2941, !2942, !2943, !2944}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2930, file: !44, line: 1315, baseType: !2933)
!2933 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2934, line: 20, baseType: !2935)
!2934 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2935 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2934, line: 11, elements: !2936)
!2936 = !{!2937}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2935, file: !2934, line: 12, baseType: !2938)
!2938 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !217, line: 33, baseType: !2939)
!2939 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 31, elements: !219)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2930, file: !44, line: 1316, baseType: !153, size: 32)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2930, file: !44, line: 1317, baseType: !153, size: 32, offset: 32)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2930, file: !44, line: 1318, baseType: !2929, size: 64, offset: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2930, file: !44, line: 1319, baseType: !321, size: 64, offset: 128)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2930, file: !44, line: 1320, baseType: !334, size: 128, align: 64, offset: 192)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2912, file: !44, line: 1084, baseType: !156, size: 64, offset: 1152)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2912, file: !44, line: 1085, baseType: !156, size: 64, offset: 1216)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2912, file: !44, line: 1087, baseType: !2948, size: 64, offset: 1280)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2950)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !2951)
!2951 = !{!2952, !2956}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2950, file: !44, line: 1012, baseType: !2953, size: 64)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{null, !2911, !2911}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2950, file: !44, line: 1013, baseType: !2957, size: 64, offset: 64)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{null, !2911}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2912, file: !44, line: 1088, baseType: !2961, size: 64, offset: 1344)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2963)
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !2964)
!2964 = !{!2965, !2969, !2973, !2974, !2978, !2982, !2986, !2990}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2963, file: !44, line: 1017, baseType: !2966, size: 64)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!2897, !2897}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2963, file: !44, line: 1018, baseType: !2970, size: 64, offset: 64)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{null, !2897}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2963, file: !44, line: 1019, baseType: !2957, size: 64, offset: 128)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2963, file: !44, line: 1020, baseType: !2975, size: 64, offset: 192)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!153, !2911, !153}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2963, file: !44, line: 1021, baseType: !2979, size: 64, offset: 256)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{!459, !2911}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2963, file: !44, line: 1022, baseType: !2983, size: 64, offset: 320)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{!153, !2911, !153, !195}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2963, file: !44, line: 1023, baseType: !2987, size: 64, offset: 384)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DISubroutineType(types: !2989)
!2989 = !{null, !2911, !790}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2963, file: !44, line: 1024, baseType: !2979, size: 64, offset: 448)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2912, file: !44, line: 1097, baseType: !2992, size: 256, offset: 1408)
!2992 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2912, file: !44, line: 1089, size: 256, elements: !2993)
!2993 = !{!2994, !3003, !3009}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2992, file: !44, line: 1090, baseType: !2995, size: 256)
!2995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2996, line: 10, size: 256, elements: !2997)
!2996 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2997 = !{!2998, !2999, !3002}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2995, file: !2996, line: 11, baseType: !384, size: 32)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2995, file: !2996, line: 12, baseType: !3000, size: 64, offset: 64)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2996, line: 5, flags: DIFlagFwdDecl)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2995, file: !2996, line: 13, baseType: !192, size: 128, offset: 128)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2992, file: !44, line: 1091, baseType: !3004, size: 64)
!3004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2996, line: 17, size: 64, elements: !3005)
!3005 = !{!3006}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3004, file: !2996, line: 18, baseType: !3007, size: 64)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2996, line: 16, flags: DIFlagFwdDecl)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2992, file: !44, line: 1096, baseType: !3010, size: 192)
!3010 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2992, file: !44, line: 1092, size: 192, elements: !3011)
!3011 = !{!3012, !3013, !3014}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3010, file: !44, line: 1093, baseType: !192, size: 128)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3010, file: !44, line: 1094, baseType: !153, size: 32, offset: 128)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3010, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2835, file: !44, line: 1843, baseType: !3016, size: 64, offset: 1280)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!276, !321, !690, !153, !291, !2846, !153}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2835, file: !44, line: 1844, baseType: !1070, size: 64, offset: 1344)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2835, file: !44, line: 1845, baseType: !3021, size: 64, offset: 1408)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = !DISubroutineType(types: !3023)
!3023 = !{!153, !153}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2835, file: !44, line: 1846, baseType: !2908, size: 64, offset: 1472)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2835, file: !44, line: 1847, baseType: !3026, size: 64, offset: 1536)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{!276, !2068, !321, !2846, !291, !7}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2835, file: !44, line: 1848, baseType: !3030, size: 64, offset: 1600)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{!276, !321, !2846, !2068, !291, !7}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2835, file: !44, line: 1849, baseType: !3034, size: 64, offset: 1664)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!153, !321, !147, !3037, !790}
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2835, file: !44, line: 1850, baseType: !3039, size: 64, offset: 1728)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!147, !321, !153, !500, !500}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2835, file: !44, line: 1852, baseType: !3043, size: 64, offset: 1792)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{null, !680, !321}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2835, file: !44, line: 1856, baseType: !3047, size: 64, offset: 1856)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{!276, !321, !500, !321, !500, !291, !7}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2835, file: !44, line: 1858, baseType: !3051, size: 64, offset: 1920)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{!500, !321, !500, !321, !500, !500, !7}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2835, file: !44, line: 1861, baseType: !2900, size: 64, offset: 1984)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2830, file: !44, line: 692, baseType: !633, size: 64)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !399, file: !44, line: 694, baseType: !3057, size: 64, offset: 2560)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3059)
!3059 = !{!3060, !3061, !3062, !3063}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3058, file: !44, line: 1101, baseType: !205)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3058, file: !44, line: 1102, baseType: !192, size: 128)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3058, file: !44, line: 1103, baseType: !192, size: 128, offset: 128)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3058, file: !44, line: 1104, baseType: !192, size: 128, offset: 256)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !399, file: !44, line: 695, baseType: !704, size: 1216, align: 64, offset: 2624)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !399, file: !44, line: 696, baseType: !192, size: 128, offset: 3840)
!3066 = !DIDerivedType(tag: DW_TAG_member, scope: !399, file: !44, line: 697, baseType: !3067, size: 64, offset: 3968)
!3067 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !399, file: !44, line: 697, size: 64, elements: !3068)
!3068 = !{!3069, !3070, !3071, !3074, !3075}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3067, file: !44, line: 698, baseType: !2068, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3067, file: !44, line: 699, baseType: !2585, size: 64)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3067, file: !44, line: 700, baseType: !3072, size: 64)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3067, file: !44, line: 701, baseType: !155, size: 64)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3067, file: !44, line: 702, baseType: !7, size: 32)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !399, file: !44, line: 705, baseType: !386, size: 32, offset: 4032)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !399, file: !44, line: 708, baseType: !386, size: 32, offset: 4064)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !399, file: !44, line: 709, baseType: !2667, size: 64, offset: 4096)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !399, file: !44, line: 720, baseType: !152, size: 64, offset: 4160)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !352, file: !349, line: 98, baseType: !3081, size: 256, offset: 448)
!3081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !396, size: 256, elements: !2200)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !352, file: !349, line: 101, baseType: !3083, size: 32, offset: 704)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3084, line: 25, size: 32, elements: !3085)
!3084 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3085 = !{!3086}
!3086 = !DIDerivedType(tag: DW_TAG_member, scope: !3083, file: !3084, line: 26, baseType: !3087, size: 32)
!3087 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3083, file: !3084, line: 26, size: 32, elements: !3088)
!3088 = !{!3089}
!3089 = !DIDerivedType(tag: DW_TAG_member, scope: !3087, file: !3084, line: 30, baseType: !3090, size: 32)
!3090 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3087, file: !3084, line: 30, size: 32, elements: !3091)
!3091 = !{!3092, !3093}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3090, file: !3084, line: 31, baseType: !205)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3090, file: !3084, line: 32, baseType: !153, size: 32)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !352, file: !349, line: 102, baseType: !2684, size: 64, offset: 768)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !352, file: !349, line: 103, baseType: !568, size: 64, offset: 832)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !352, file: !349, line: 104, baseType: !156, size: 64, offset: 896)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !352, file: !349, line: 105, baseType: !152, size: 64, offset: 960)
!3098 = !DIDerivedType(tag: DW_TAG_member, scope: !352, file: !349, line: 107, baseType: !3099, size: 128, offset: 1024)
!3099 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !352, file: !349, line: 107, size: 128, elements: !3100)
!3100 = !{!3101, !3102}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3099, file: !349, line: 108, baseType: !192, size: 128)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3099, file: !349, line: 109, baseType: !3103, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !352, file: !349, line: 111, baseType: !192, size: 128, offset: 1152)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !352, file: !349, line: 112, baseType: !192, size: 128, offset: 1280)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !352, file: !349, line: 120, baseType: !3107, size: 128, offset: 1408)
!3107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !352, file: !349, line: 116, size: 128, elements: !3108)
!3108 = !{!3109, !3110, !3111}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3107, file: !349, line: 117, baseType: !608, size: 128)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3107, file: !349, line: 118, baseType: !366, size: 128)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3107, file: !349, line: 119, baseType: !334, size: 128, align: 64)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !322, file: !44, line: 922, baseType: !398, size: 64, offset: 256)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !322, file: !44, line: 923, baseType: !2833, size: 64, offset: 320)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !322, file: !44, line: 929, baseType: !205, offset: 384)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !322, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !322, file: !44, line: 931, baseType: !740, size: 64, offset: 448)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !322, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !322, file: !44, line: 933, baseType: !2680, size: 32, offset: 544)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !322, file: !44, line: 934, baseType: !1142, size: 192, offset: 576)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !322, file: !44, line: 935, baseType: !500, size: 64, offset: 768)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !322, file: !44, line: 936, baseType: !3122, size: 192, offset: 832)
!3122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3123)
!3123 = !{!3124, !3125, !3126, !3127, !3128, !3129}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3122, file: !44, line: 886, baseType: !2933)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3122, file: !44, line: 887, baseType: !1440, size: 64)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3122, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3122, file: !44, line: 889, baseType: !404, size: 32, offset: 96)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3122, file: !44, line: 889, baseType: !404, size: 32, offset: 128)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3122, file: !44, line: 890, baseType: !153, size: 32, offset: 160)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !322, file: !44, line: 937, baseType: !1516, size: 64, offset: 1024)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !322, file: !44, line: 938, baseType: !3132, size: 256, offset: 1088)
!3132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3133)
!3133 = !{!3134, !3135, !3136, !3137, !3138, !3139}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3132, file: !44, line: 897, baseType: !156, size: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3132, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3132, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3132, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3132, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3132, file: !44, line: 904, baseType: !500, size: 64, offset: 192)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !322, file: !44, line: 940, baseType: !390, size: 64, offset: 1344)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !322, file: !44, line: 945, baseType: !152, size: 64, offset: 1408)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !322, file: !44, line: 949, baseType: !192, size: 128, offset: 1472)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !322, file: !44, line: 950, baseType: !192, size: 128, offset: 1600)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !322, file: !44, line: 952, baseType: !703, size: 64, offset: 1728)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !322, file: !44, line: 953, baseType: !878, size: 32, offset: 1792)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !322, file: !44, line: 954, baseType: !878, size: 32, offset: 1824)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !312, file: !270, line: 174, baseType: !318, size: 64, offset: 320)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !312, file: !270, line: 176, baseType: !3149, size: 64, offset: 384)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{!153, !321, !198, !311, !950}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !300, file: !270, line: 90, baseType: !295, size: 64, offset: 192)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !300, file: !270, line: 91, baseType: !3154, size: 64, offset: 256)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !260, file: !188, line: 143, baseType: !3156, size: 64, offset: 256)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!3159, !198}
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3161)
!3161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3162)
!3162 = !{!3163, !3164, !3168, !3172, !3178, !3182}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3161, file: !61, line: 40, baseType: !60, size: 32)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3161, file: !61, line: 41, baseType: !3165, size: 64, offset: 64)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!459}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3161, file: !61, line: 42, baseType: !3169, size: 64, offset: 128)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{!152}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3161, file: !61, line: 43, baseType: !3173, size: 64, offset: 192)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!2097, !3176}
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3161, file: !61, line: 44, baseType: !3179, size: 64, offset: 256)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{!2097}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3161, file: !61, line: 45, baseType: !437, size: 64, offset: 320)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !260, file: !188, line: 144, baseType: !3184, size: 64, offset: 320)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DISubroutineType(types: !3186)
!3186 = !{!2097, !198}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !260, file: !188, line: 145, baseType: !3188, size: 64, offset: 384)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{null, !198, !3191, !3192}
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !187, file: !188, line: 70, baseType: !3194, size: 64, offset: 384)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !588, line: 123, size: 1024, elements: !3196)
!3196 = !{!3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3325, !3326, !3327, !3328, !3329}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3195, file: !588, line: 124, baseType: !716, size: 32)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3195, file: !588, line: 125, baseType: !716, size: 32, offset: 32)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3195, file: !588, line: 135, baseType: !3194, size: 64, offset: 64)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3195, file: !588, line: 136, baseType: !149, size: 64, offset: 128)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3195, file: !588, line: 138, baseType: !729, size: 192, align: 64, offset: 192)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3195, file: !588, line: 140, baseType: !2097, size: 64, offset: 384)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3195, file: !588, line: 141, baseType: !7, size: 32, offset: 448)
!3204 = !DIDerivedType(tag: DW_TAG_member, scope: !3195, file: !588, line: 142, baseType: !3205, size: 256, offset: 512)
!3205 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3195, file: !588, line: 142, size: 256, elements: !3206)
!3206 = !{!3207, !3253, !3257}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3205, file: !588, line: 143, baseType: !3208, size: 192)
!3208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !588, line: 91, size: 192, elements: !3209)
!3209 = !{!3210, !3211, !3212}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3208, file: !588, line: 92, baseType: !156, size: 64)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3208, file: !588, line: 94, baseType: !725, size: 64, offset: 64)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3208, file: !588, line: 100, baseType: !3213, size: 64, offset: 128)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !588, line: 180, size: 704, elements: !3215)
!3215 = !{!3216, !3217, !3218, !3225, !3226, !3227, !3251, !3252}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3214, file: !588, line: 182, baseType: !3194, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3214, file: !588, line: 183, baseType: !7, size: 32, offset: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3214, file: !588, line: 186, baseType: !3219, size: 192, offset: 128)
!3219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3220, line: 19, size: 192, elements: !3221)
!3220 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3221 = !{!3222, !3223, !3224}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3219, file: !3220, line: 20, baseType: !708, size: 128)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3219, file: !3220, line: 21, baseType: !7, size: 32, offset: 128)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3219, file: !3220, line: 22, baseType: !7, size: 32, offset: 160)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3214, file: !588, line: 187, baseType: !384, size: 32, offset: 320)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3214, file: !588, line: 188, baseType: !384, size: 32, offset: 352)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3214, file: !588, line: 189, baseType: !3228, size: 64, offset: 384)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !588, line: 168, size: 320, elements: !3230)
!3230 = !{!3231, !3235, !3239, !3243, !3247}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3229, file: !588, line: 169, baseType: !3232, size: 64)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!153, !680, !3213}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3229, file: !588, line: 171, baseType: !3236, size: 64, offset: 64)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DISubroutineType(types: !3238)
!3238 = !{!153, !3194, !149, !285}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3229, file: !588, line: 173, baseType: !3240, size: 64, offset: 128)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = !DISubroutineType(types: !3242)
!3242 = !{!153, !3194}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3229, file: !588, line: 174, baseType: !3244, size: 64, offset: 192)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = !DISubroutineType(types: !3246)
!3246 = !{!153, !3194, !3194, !149}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3229, file: !588, line: 176, baseType: !3248, size: 64, offset: 256)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{!153, !680, !3194, !3213}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3214, file: !588, line: 192, baseType: !192, size: 128, offset: 448)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3214, file: !588, line: 194, baseType: !1450, size: 128, offset: 576)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3205, file: !588, line: 144, baseType: !3254, size: 64)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !588, line: 103, size: 64, elements: !3255)
!3255 = !{!3256}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3254, file: !588, line: 104, baseType: !3194, size: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3205, file: !588, line: 145, baseType: !3258, size: 256)
!3258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !588, line: 107, size: 256, elements: !3259)
!3259 = !{!3260, !3320, !3323, !3324}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3258, file: !588, line: 108, baseType: !3261, size: 64)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3263)
!3263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !588, line: 217, size: 768, elements: !3264)
!3264 = !{!3265, !3285, !3289, !3293, !3297, !3301, !3305, !3309, !3310, !3311, !3312, !3316}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3263, file: !588, line: 222, baseType: !3266, size: 64)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DISubroutineType(types: !3268)
!3268 = !{!153, !3269}
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !588, line: 197, size: 1088, elements: !3271)
!3271 = !{!3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3270, file: !588, line: 199, baseType: !3194, size: 64)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3270, file: !588, line: 200, baseType: !321, size: 64, offset: 64)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3270, file: !588, line: 201, baseType: !680, size: 64, offset: 128)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3270, file: !588, line: 202, baseType: !152, size: 64, offset: 192)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3270, file: !588, line: 205, baseType: !1142, size: 192, offset: 256)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3270, file: !588, line: 206, baseType: !1142, size: 192, offset: 448)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3270, file: !588, line: 207, baseType: !153, size: 32, offset: 640)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3270, file: !588, line: 208, baseType: !192, size: 128, offset: 704)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3270, file: !588, line: 209, baseType: !155, size: 64, offset: 832)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3270, file: !588, line: 211, baseType: !291, size: 64, offset: 896)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3270, file: !588, line: 212, baseType: !459, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3270, file: !588, line: 213, baseType: !459, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3270, file: !588, line: 214, baseType: !978, size: 64, offset: 1024)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3263, file: !588, line: 223, baseType: !3286, size: 64, offset: 64)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{null, !3269}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3263, file: !588, line: 236, baseType: !3290, size: 64, offset: 128)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!153, !680, !152}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3263, file: !588, line: 238, baseType: !3294, size: 64, offset: 192)
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = !DISubroutineType(types: !3296)
!3296 = !{!152, !680, !2846}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3263, file: !588, line: 239, baseType: !3298, size: 64, offset: 256)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DISubroutineType(types: !3300)
!3300 = !{!152, !680, !152, !2846}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3263, file: !588, line: 240, baseType: !3302, size: 64, offset: 320)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{null, !680, !152}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3263, file: !588, line: 242, baseType: !3306, size: 64, offset: 384)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!276, !3269, !155, !291, !500}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3263, file: !588, line: 252, baseType: !291, size: 64, offset: 448)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3263, file: !588, line: 259, baseType: !459, size: 8, offset: 512)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3263, file: !588, line: 260, baseType: !3306, size: 64, offset: 576)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3263, file: !588, line: 263, baseType: !3313, size: 64, offset: 640)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{!2875, !3269, !2877}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3263, file: !588, line: 266, baseType: !3317, size: 64, offset: 704)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = !DISubroutineType(types: !3319)
!3319 = !{!153, !3269, !950}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3258, file: !588, line: 109, baseType: !3321, size: 64, offset: 64)
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !588, line: 31, flags: DIFlagFwdDecl)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3258, file: !588, line: 110, baseType: !500, size: 64, offset: 128)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3258, file: !588, line: 111, baseType: !3194, size: 64, offset: 192)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3195, file: !588, line: 148, baseType: !152, size: 64, offset: 768)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3195, file: !588, line: 154, baseType: !390, size: 64, offset: 832)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3195, file: !588, line: 156, baseType: !286, size: 16, offset: 896)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3195, file: !588, line: 157, baseType: !285, size: 16, offset: 912)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3195, file: !588, line: 158, baseType: !3330, size: 64, offset: 960)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !588, line: 32, flags: DIFlagFwdDecl)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !187, file: !188, line: 71, baseType: !3333, size: 32, offset: 448)
!3333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3334, line: 19, size: 32, elements: !3335)
!3334 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3335 = !{!3336}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3333, file: !3334, line: 20, baseType: !1199, size: 32)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !187, file: !188, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !187, file: !188, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !187, file: !188, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !187, file: !188, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !187, file: !188, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !184, file: !73, line: 463, baseType: !183, size: 64, offset: 512)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !184, file: !73, line: 465, baseType: !3344, size: 64, offset: 576)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !184, file: !73, line: 467, baseType: !149, size: 64, offset: 640)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !184, file: !73, line: 468, baseType: !3348, size: 64, offset: 704)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3350)
!3350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3351)
!3351 = !{!3352, !3353, !3354, !3358, !3363, !3367}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3350, file: !73, line: 88, baseType: !149, size: 64)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3350, file: !73, line: 89, baseType: !297, size: 64, offset: 64)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3350, file: !73, line: 90, baseType: !3355, size: 64, offset: 128)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{!153, !183, !241}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3350, file: !73, line: 91, baseType: !3359, size: 64, offset: 192)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!155, !183, !3362, !3191, !3192}
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3350, file: !73, line: 93, baseType: !3364, size: 64, offset: 256)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{null, !183}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3350, file: !73, line: 95, baseType: !3368, size: 64, offset: 320)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3370)
!3370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3371)
!3371 = !{!3372, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3370, file: !80, line: 279, baseType: !3373, size: 64)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{!153, !183}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3370, file: !80, line: 280, baseType: !3364, size: 64, offset: 64)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3370, file: !80, line: 281, baseType: !3373, size: 64, offset: 128)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3370, file: !80, line: 282, baseType: !3373, size: 64, offset: 192)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3370, file: !80, line: 283, baseType: !3373, size: 64, offset: 256)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3370, file: !80, line: 284, baseType: !3373, size: 64, offset: 320)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3370, file: !80, line: 285, baseType: !3373, size: 64, offset: 384)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3370, file: !80, line: 286, baseType: !3373, size: 64, offset: 448)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3370, file: !80, line: 287, baseType: !3373, size: 64, offset: 512)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3370, file: !80, line: 288, baseType: !3373, size: 64, offset: 576)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3370, file: !80, line: 289, baseType: !3373, size: 64, offset: 640)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3370, file: !80, line: 290, baseType: !3373, size: 64, offset: 704)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3370, file: !80, line: 291, baseType: !3373, size: 64, offset: 768)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3370, file: !80, line: 292, baseType: !3373, size: 64, offset: 832)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3370, file: !80, line: 293, baseType: !3373, size: 64, offset: 896)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3370, file: !80, line: 294, baseType: !3373, size: 64, offset: 960)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3370, file: !80, line: 295, baseType: !3373, size: 64, offset: 1024)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3370, file: !80, line: 296, baseType: !3373, size: 64, offset: 1088)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3370, file: !80, line: 297, baseType: !3373, size: 64, offset: 1152)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3370, file: !80, line: 298, baseType: !3373, size: 64, offset: 1216)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3370, file: !80, line: 299, baseType: !3373, size: 64, offset: 1280)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3370, file: !80, line: 300, baseType: !3373, size: 64, offset: 1344)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3370, file: !80, line: 301, baseType: !3373, size: 64, offset: 1408)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !184, file: !73, line: 470, baseType: !3399, size: 64, offset: 768)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3401, line: 82, size: 1408, elements: !3402)
!3401 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3402 = !{!3403, !3404, !3405, !3406, !3407, !3408, !3409, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3466, !3469, !3470}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3400, file: !3401, line: 83, baseType: !149, size: 64)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3400, file: !3401, line: 84, baseType: !149, size: 64, offset: 64)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3400, file: !3401, line: 85, baseType: !183, size: 64, offset: 128)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3400, file: !3401, line: 86, baseType: !297, size: 64, offset: 192)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3400, file: !3401, line: 87, baseType: !297, size: 64, offset: 256)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3400, file: !3401, line: 88, baseType: !297, size: 64, offset: 320)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3400, file: !3401, line: 90, baseType: !3410, size: 64, offset: 384)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!153, !183, !3413}
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3415)
!3415 = !{!3416, !3417, !3418, !3419, !3420, !3421, !3422, !3426, !3430, !3431, !3432, !3433, !3434, !3442, !3443, !3444, !3445, !3446, !3447}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3414, file: !67, line: 96, baseType: !149, size: 64)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3414, file: !67, line: 97, baseType: !3399, size: 64, offset: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3414, file: !67, line: 99, baseType: !166, size: 64, offset: 128)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3414, file: !67, line: 100, baseType: !149, size: 64, offset: 192)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3414, file: !67, line: 102, baseType: !459, size: 8, offset: 256)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3414, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3414, file: !67, line: 105, baseType: !3423, size: 64, offset: 320)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3425)
!3425 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !67, line: 105, flags: DIFlagFwdDecl)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3414, file: !67, line: 106, baseType: !3427, size: 64, offset: 384)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3429)
!3429 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !67, line: 106, flags: DIFlagFwdDecl)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3414, file: !67, line: 108, baseType: !3373, size: 64, offset: 448)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3414, file: !67, line: 109, baseType: !3364, size: 64, offset: 512)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3414, file: !67, line: 110, baseType: !3373, size: 64, offset: 576)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3414, file: !67, line: 111, baseType: !3364, size: 64, offset: 640)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3414, file: !67, line: 112, baseType: !3435, size: 64, offset: 704)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{!153, !183, !3438}
!3438 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3439)
!3439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3440)
!3440 = !{!3441}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3439, file: !80, line: 51, baseType: !153, size: 32)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3414, file: !67, line: 113, baseType: !3373, size: 64, offset: 768)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3414, file: !67, line: 114, baseType: !297, size: 64, offset: 832)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3414, file: !67, line: 115, baseType: !297, size: 64, offset: 896)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3414, file: !67, line: 117, baseType: !3368, size: 64, offset: 960)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3414, file: !67, line: 118, baseType: !3364, size: 64, offset: 1024)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3414, file: !67, line: 120, baseType: !3448, size: 64, offset: 1088)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3400, file: !3401, line: 91, baseType: !3355, size: 64, offset: 448)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3400, file: !3401, line: 92, baseType: !3373, size: 64, offset: 512)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3400, file: !3401, line: 93, baseType: !3364, size: 64, offset: 576)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3400, file: !3401, line: 94, baseType: !3373, size: 64, offset: 640)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3400, file: !3401, line: 95, baseType: !3364, size: 64, offset: 704)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3400, file: !3401, line: 97, baseType: !3373, size: 64, offset: 768)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3400, file: !3401, line: 98, baseType: !3373, size: 64, offset: 832)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3400, file: !3401, line: 100, baseType: !3435, size: 64, offset: 896)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3400, file: !3401, line: 101, baseType: !3373, size: 64, offset: 960)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3400, file: !3401, line: 103, baseType: !3373, size: 64, offset: 1024)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3400, file: !3401, line: 105, baseType: !3373, size: 64, offset: 1088)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3400, file: !3401, line: 107, baseType: !3368, size: 64, offset: 1152)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3400, file: !3401, line: 109, baseType: !3463, size: 64, offset: 1216)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3465)
!3465 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3401, line: 109, flags: DIFlagFwdDecl)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3400, file: !3401, line: 111, baseType: !3467, size: 64, offset: 1280)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3401, line: 111, flags: DIFlagFwdDecl)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3400, file: !3401, line: 112, baseType: !614, offset: 1344)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3400, file: !3401, line: 114, baseType: !459, size: 8, offset: 1344)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !184, file: !73, line: 471, baseType: !3413, size: 64, offset: 832)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !184, file: !73, line: 473, baseType: !152, size: 64, offset: 896)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !184, file: !73, line: 475, baseType: !152, size: 64, offset: 960)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !184, file: !73, line: 480, baseType: !1142, size: 192, offset: 1024)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !184, file: !73, line: 484, baseType: !3476, size: 576, offset: 1216)
!3476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3477)
!3477 = !{!3478, !3479, !3480, !3481, !3482, !3483}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3476, file: !73, line: 362, baseType: !192, size: 128)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3476, file: !73, line: 363, baseType: !192, size: 128, offset: 128)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3476, file: !73, line: 364, baseType: !192, size: 128, offset: 256)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3476, file: !73, line: 365, baseType: !192, size: 128, offset: 384)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3476, file: !73, line: 366, baseType: !459, size: 8, offset: 512)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3476, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !184, file: !73, line: 485, baseType: !3485, size: 2304, offset: 1792)
!3485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3486)
!3486 = !{!3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3582, !3586}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3485, file: !80, line: 566, baseType: !3438, size: 32)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3485, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3485, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3485, file: !80, line: 569, baseType: !459, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3485, file: !80, line: 570, baseType: !459, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3485, file: !80, line: 571, baseType: !459, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3485, file: !80, line: 572, baseType: !459, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3485, file: !80, line: 573, baseType: !459, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3485, file: !80, line: 574, baseType: !459, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3485, file: !80, line: 575, baseType: !459, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3485, file: !80, line: 576, baseType: !459, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3485, file: !80, line: 577, baseType: !384, size: 32, offset: 64)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3485, file: !80, line: 578, baseType: !205, offset: 96)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3485, file: !80, line: 580, baseType: !192, size: 128, offset: 128)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3485, file: !80, line: 581, baseType: !1471, size: 192, offset: 256)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3485, file: !80, line: 582, baseType: !3503, size: 64, offset: 448)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3505, line: 43, size: 1472, elements: !3506)
!3505 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3506 = !{!3507, !3508, !3509, !3510, !3511, !3514, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3504, file: !3505, line: 44, baseType: !149, size: 64)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3504, file: !3505, line: 45, baseType: !153, size: 32, offset: 64)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3504, file: !3505, line: 46, baseType: !192, size: 128, offset: 128)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3504, file: !3505, line: 47, baseType: !205, offset: 256)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3504, file: !3505, line: 48, baseType: !3512, size: 64, offset: 256)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3504, file: !3505, line: 49, baseType: !3515, size: 320, offset: 320)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3516, line: 11, size: 320, elements: !3517)
!3516 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3517 = !{!3518, !3519, !3520, !3525}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3515, file: !3516, line: 16, baseType: !608, size: 128)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3515, file: !3516, line: 17, baseType: !156, size: 64, offset: 128)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3515, file: !3516, line: 18, baseType: !3521, size: 64, offset: 192)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = !DISubroutineType(types: !3523)
!3523 = !{null, !3524}
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3515, file: !3516, line: 19, baseType: !384, size: 32, offset: 256)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3504, file: !3505, line: 50, baseType: !156, size: 64, offset: 640)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3504, file: !3505, line: 51, baseType: !1269, size: 64, offset: 704)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3504, file: !3505, line: 52, baseType: !1269, size: 64, offset: 768)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3504, file: !3505, line: 53, baseType: !1269, size: 64, offset: 832)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3504, file: !3505, line: 54, baseType: !1269, size: 64, offset: 896)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3504, file: !3505, line: 55, baseType: !1269, size: 64, offset: 960)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3504, file: !3505, line: 56, baseType: !156, size: 64, offset: 1024)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3504, file: !3505, line: 57, baseType: !156, size: 64, offset: 1088)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3504, file: !3505, line: 58, baseType: !156, size: 64, offset: 1152)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3504, file: !3505, line: 59, baseType: !156, size: 64, offset: 1216)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3504, file: !3505, line: 60, baseType: !156, size: 64, offset: 1280)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3504, file: !3505, line: 61, baseType: !183, size: 64, offset: 1344)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3504, file: !3505, line: 62, baseType: !459, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3504, file: !3505, line: 63, baseType: !459, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3485, file: !80, line: 583, baseType: !459, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3485, file: !80, line: 584, baseType: !459, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3485, file: !80, line: 585, baseType: !459, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3485, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3485, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3485, file: !80, line: 592, baseType: !1261, size: 512, offset: 576)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3485, file: !80, line: 593, baseType: !390, size: 64, offset: 1088)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3485, file: !80, line: 594, baseType: !1927, size: 256, offset: 1152)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3485, file: !80, line: 595, baseType: !1450, size: 128, offset: 1408)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3485, file: !80, line: 596, baseType: !3512, size: 64, offset: 1536)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3485, file: !80, line: 597, baseType: !716, size: 32, offset: 1600)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3485, file: !80, line: 598, baseType: !716, size: 32, offset: 1632)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3485, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3485, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3485, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3485, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3485, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3485, file: !80, line: 604, baseType: !459, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3485, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3485, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3485, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3485, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3485, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3485, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3485, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3485, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3485, file: !80, line: 613, baseType: !153, size: 32, offset: 1792)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3485, file: !80, line: 614, baseType: !153, size: 32, offset: 1824)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3485, file: !80, line: 615, baseType: !390, size: 64, offset: 1856)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3485, file: !80, line: 616, baseType: !390, size: 64, offset: 1920)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3485, file: !80, line: 617, baseType: !390, size: 64, offset: 1984)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3485, file: !80, line: 618, baseType: !390, size: 64, offset: 2048)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3485, file: !80, line: 620, baseType: !3573, size: 64, offset: 2112)
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3575)
!3575 = !{!3576, !3577, !3578, !3579}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3574, file: !80, line: 537, baseType: !205)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3574, file: !80, line: 538, baseType: !7, size: 32)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3574, file: !80, line: 540, baseType: !192, size: 128, offset: 64)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3574, file: !80, line: 543, baseType: !3580, size: 64, offset: 192)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3485, file: !80, line: 621, baseType: !3583, size: 64, offset: 2176)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{null, !183, !1413}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3485, file: !80, line: 622, baseType: !3587, size: 64, offset: 2240)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !184, file: !73, line: 486, baseType: !3590, size: 64, offset: 4096)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3592)
!3592 = !{!3593, !3594, !3595, !3599, !3600, !3601}
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3591, file: !80, line: 643, baseType: !3370, size: 1472)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3591, file: !80, line: 644, baseType: !3373, size: 64, offset: 1472)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3591, file: !80, line: 645, baseType: !3596, size: 64, offset: 1536)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = !DISubroutineType(types: !3598)
!3598 = !{null, !183, !459}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3591, file: !80, line: 646, baseType: !3373, size: 64, offset: 1600)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3591, file: !80, line: 647, baseType: !3364, size: 64, offset: 1664)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3591, file: !80, line: 648, baseType: !3364, size: 64, offset: 1728)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !184, file: !73, line: 493, baseType: !3603, size: 64, offset: 4160)
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3604 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !73, line: 493, flags: DIFlagFwdDecl)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !184, file: !73, line: 499, baseType: !192, size: 128, offset: 4224)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !184, file: !73, line: 502, baseType: !3607, size: 64, offset: 4352)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3609)
!3609 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !184, file: !73, line: 504, baseType: !3611, size: 64, offset: 4416)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !184, file: !73, line: 505, baseType: !390, size: 64, offset: 4480)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !184, file: !73, line: 510, baseType: !390, size: 64, offset: 4544)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !184, file: !73, line: 511, baseType: !3615, size: 64, offset: 4608)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3617)
!3617 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !184, file: !73, line: 513, baseType: !3619, size: 64, offset: 4672)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3621)
!3621 = !{!3622, !3623}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3620, file: !73, line: 293, baseType: !7, size: 32)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3620, file: !73, line: 294, baseType: !156, size: 64, offset: 64)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !184, file: !73, line: 515, baseType: !192, size: 128, offset: 4736)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !184, file: !73, line: 526, baseType: !3626, offset: 4864)
!3626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3627, line: 5, elements: !219)
!3627 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !184, file: !73, line: 528, baseType: !3629, size: 64, offset: 4864)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3630 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3631, line: 14, flags: DIFlagFwdDecl)
!3631 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !184, file: !73, line: 529, baseType: !3633, size: 64, offset: 4928)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3635, line: 17, size: 192, elements: !3636)
!3635 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3636 = !{!3637, !3638, !3720}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3634, file: !3635, line: 18, baseType: !3633, size: 64)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3634, file: !3635, line: 19, baseType: !3639, size: 64, offset: 64)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3641)
!3641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3635, line: 110, size: 1152, elements: !3642)
!3642 = !{!3643, !3647, !3651, !3657, !3663, !3667, !3671, !3675, !3679, !3680, !3684, !3688, !3692, !3703, !3704, !3705, !3706, !3716}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3641, file: !3635, line: 111, baseType: !3644, size: 64)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{!3633, !3633}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3641, file: !3635, line: 112, baseType: !3648, size: 64, offset: 64)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = !DISubroutineType(types: !3650)
!3650 = !{null, !3633}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3641, file: !3635, line: 113, baseType: !3652, size: 64, offset: 128)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = !DISubroutineType(types: !3654)
!3654 = !{!459, !3655}
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3634)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3641, file: !3635, line: 114, baseType: !3658, size: 64, offset: 192)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DISubroutineType(types: !3660)
!3660 = !{!2097, !3655, !3661}
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3641, file: !3635, line: 116, baseType: !3664, size: 64, offset: 256)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{!459, !3655, !149}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3641, file: !3635, line: 118, baseType: !3668, size: 64, offset: 320)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{!153, !3655, !149, !7, !152, !291}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3641, file: !3635, line: 123, baseType: !3672, size: 64, offset: 384)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!153, !3655, !149, !148, !291}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3641, file: !3635, line: 126, baseType: !3676, size: 64, offset: 448)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!149, !3655}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3641, file: !3635, line: 127, baseType: !3676, size: 64, offset: 512)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3641, file: !3635, line: 128, baseType: !3681, size: 64, offset: 576)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = !DISubroutineType(types: !3683)
!3683 = !{!3633, !3655}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3641, file: !3635, line: 130, baseType: !3685, size: 64, offset: 640)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{!3633, !3655, !3633}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3641, file: !3635, line: 133, baseType: !3689, size: 64, offset: 704)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{!3633, !3655, !149}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3641, file: !3635, line: 135, baseType: !3693, size: 64, offset: 768)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DISubroutineType(types: !3695)
!3695 = !{!153, !3655, !149, !149, !7, !7, !3696}
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3635, line: 43, size: 640, elements: !3698)
!3698 = !{!3699, !3700, !3701}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3697, file: !3635, line: 44, baseType: !3633, size: 64)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3697, file: !3635, line: 45, baseType: !7, size: 32, offset: 64)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3697, file: !3635, line: 46, baseType: !3702, size: 512, offset: 128)
!3702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 512, elements: !1299)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3641, file: !3635, line: 140, baseType: !3685, size: 64, offset: 832)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3641, file: !3635, line: 143, baseType: !3681, size: 64, offset: 896)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3641, file: !3635, line: 145, baseType: !3644, size: 64, offset: 960)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3641, file: !3635, line: 146, baseType: !3707, size: 64, offset: 1024)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{!153, !3655, !3710}
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3635, line: 29, size: 128, elements: !3712)
!3712 = !{!3713, !3714, !3715}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3711, file: !3635, line: 30, baseType: !7, size: 32)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3711, file: !3635, line: 31, baseType: !7, size: 32, offset: 32)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3711, file: !3635, line: 32, baseType: !3655, size: 64, offset: 64)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3641, file: !3635, line: 148, baseType: !3717, size: 64, offset: 1088)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{!153, !3655, !183}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3634, file: !3635, line: 20, baseType: !183, size: 64, offset: 128)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !184, file: !73, line: 534, baseType: !482, size: 32, offset: 4992)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !184, file: !73, line: 535, baseType: !384, size: 32, offset: 5024)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !184, file: !73, line: 537, baseType: !205, offset: 5056)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !184, file: !73, line: 538, baseType: !192, size: 128, offset: 5056)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !184, file: !73, line: 540, baseType: !3726, size: 64, offset: 5184)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3728, line: 54, size: 960, elements: !3729)
!3728 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3729 = !{!3730, !3731, !3732, !3733, !3734, !3735, !3736, !3740, !3744, !3745, !3746, !3747, !3751, !3755, !3756}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3727, file: !3728, line: 55, baseType: !149, size: 64)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3727, file: !3728, line: 56, baseType: !166, size: 64, offset: 64)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3727, file: !3728, line: 58, baseType: !297, size: 64, offset: 128)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3727, file: !3728, line: 59, baseType: !297, size: 64, offset: 192)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3727, file: !3728, line: 60, baseType: !198, size: 64, offset: 256)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3727, file: !3728, line: 62, baseType: !3355, size: 64, offset: 320)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3727, file: !3728, line: 63, baseType: !3737, size: 64, offset: 384)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{!155, !183, !3362}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3727, file: !3728, line: 65, baseType: !3741, size: 64, offset: 448)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{null, !3726}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3727, file: !3728, line: 66, baseType: !3364, size: 64, offset: 512)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3727, file: !3728, line: 68, baseType: !3373, size: 64, offset: 576)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3727, file: !3728, line: 70, baseType: !3159, size: 64, offset: 640)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3727, file: !3728, line: 71, baseType: !3748, size: 64, offset: 704)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{!2097, !183}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3727, file: !3728, line: 73, baseType: !3752, size: 64, offset: 768)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{null, !183, !3191, !3192}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3727, file: !3728, line: 75, baseType: !3368, size: 64, offset: 832)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3727, file: !3728, line: 77, baseType: !3467, size: 64, offset: 896)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !184, file: !73, line: 541, baseType: !297, size: 64, offset: 5248)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !184, file: !73, line: 543, baseType: !3364, size: 64, offset: 5312)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !184, file: !73, line: 544, baseType: !3760, size: 64, offset: 5376)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !184, file: !73, line: 545, baseType: !3763, size: 64, offset: 5440)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !184, file: !73, line: 547, baseType: !459, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !184, file: !73, line: 548, baseType: !459, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !184, file: !73, line: 549, baseType: !459, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !184, file: !73, line: 550, baseType: !459, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !174, file: !112, line: 548, baseType: !153, size: 32, offset: 320)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "detach_count", scope: !174, file: !112, line: 549, baseType: !7, size: 32, offset: 352)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "hw_dev", scope: !174, file: !112, line: 550, baseType: !183, size: 64, offset: 384)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !174, file: !112, line: 552, baseType: !149, size: 64, offset: 448)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "board_ptr", scope: !174, file: !112, line: 553, baseType: !2097, size: 64, offset: 512)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "attached", scope: !174, file: !112, line: 554, baseType: !7, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "ioenabled", scope: !174, file: !112, line: 555, baseType: !7, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "spinlock", scope: !174, file: !112, line: 556, baseType: !205, offset: 584)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !174, file: !112, line: 557, baseType: !1142, size: 192, offset: 640)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "attach_lock", scope: !174, file: !112, line: 558, baseType: !736, size: 256, offset: 832)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !174, file: !112, line: 559, baseType: !3333, size: 32, offset: 1088)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "n_subdevices", scope: !174, file: !112, line: 561, baseType: !153, size: 32, offset: 1120)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "subdevices", scope: !174, file: !112, line: 562, baseType: !3782, size: 64, offset: 1152)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_subdevice", file: !112, line: 153, size: 1792, elements: !3784)
!3784 = !{!3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3860, !3873, !3876, !3877, !3891, !3892, !3893, !3894, !3898, !3903, !3904, !3905, !3906, !3910, !3911, !3912, !3913, !3914}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3783, file: !112, line: 154, baseType: !173, size: 64)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3783, file: !112, line: 155, baseType: !153, size: 32, offset: 64)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3783, file: !112, line: 156, baseType: !153, size: 32, offset: 96)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "n_chan", scope: !3783, file: !112, line: 157, baseType: !153, size: 32, offset: 128)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "subdev_flags", scope: !3783, file: !112, line: 158, baseType: !153, size: 32, offset: 160)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "len_chanlist", scope: !3783, file: !112, line: 159, baseType: !153, size: 32, offset: 192)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3783, file: !112, line: 161, baseType: !152, size: 64, offset: 256)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "async", scope: !3783, file: !112, line: 163, baseType: !3793, size: 64, offset: 320)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_async", file: !112, line: 347, size: 1536, elements: !3795)
!3795 = !{!3796, !3797, !3798, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3846, !3847, !3848}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3794, file: !112, line: 348, baseType: !152, size: 64)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_bufsz", scope: !3794, file: !112, line: 349, baseType: !7, size: 32, offset: 64)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "buf_map", scope: !3794, file: !112, line: 350, baseType: !3799, size: 64, offset: 128)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_map", file: !112, line: 249, size: 256, elements: !3801)
!3801 = !{!3802, !3803, !3809, !3810, !3811}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "dma_hw_dev", scope: !3800, file: !112, line: 250, baseType: !183, size: 64)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "page_list", scope: !3800, file: !112, line: 251, baseType: !3804, size: 64, offset: 64)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_page", file: !112, line: 220, size: 128, elements: !3806)
!3806 = !{!3807, !3808}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "virt_addr", scope: !3805, file: !112, line: 221, baseType: !152, size: 64)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3805, file: !112, line: 222, baseType: !889, size: 64, offset: 64)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "n_pages", scope: !3800, file: !112, line: 252, baseType: !7, size: 32, offset: 128)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "dma_dir", scope: !3800, file: !112, line: 253, baseType: !93, size: 32, offset: 160)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3800, file: !112, line: 254, baseType: !3333, size: 32, offset: 192)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "max_bufsize", scope: !3794, file: !112, line: 351, baseType: !7, size: 32, offset: 192)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_count", scope: !3794, file: !112, line: 352, baseType: !7, size: 32, offset: 224)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_alloc_count", scope: !3794, file: !112, line: 353, baseType: !7, size: 32, offset: 256)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_count", scope: !3794, file: !112, line: 354, baseType: !7, size: 32, offset: 288)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_alloc_count", scope: !3794, file: !112, line: 355, baseType: !7, size: 32, offset: 320)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_ptr", scope: !3794, file: !112, line: 356, baseType: !7, size: 32, offset: 352)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_ptr", scope: !3794, file: !112, line: 357, baseType: !7, size: 32, offset: 384)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "cur_chan", scope: !3794, file: !112, line: 358, baseType: !7, size: 32, offset: 416)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "scans_done", scope: !3794, file: !112, line: 359, baseType: !7, size: 32, offset: 448)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "scan_progress", scope: !3794, file: !112, line: 360, baseType: !7, size: 32, offset: 480)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "munge_chan", scope: !3794, file: !112, line: 361, baseType: !7, size: 32, offset: 512)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "munge_count", scope: !3794, file: !112, line: 362, baseType: !7, size: 32, offset: 544)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "munge_ptr", scope: !3794, file: !112, line: 363, baseType: !7, size: 32, offset: 576)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3794, file: !112, line: 364, baseType: !7, size: 32, offset: 608)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !3794, file: !112, line: 365, baseType: !3827, size: 640, offset: 640)
!3827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_cmd", file: !106, line: 589, size: 640, elements: !3828)
!3828 = !{!3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3845}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "subdev", scope: !3827, file: !106, line: 590, baseType: !7, size: 32)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3827, file: !106, line: 591, baseType: !7, size: 32, offset: 32)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "start_src", scope: !3827, file: !106, line: 593, baseType: !7, size: 32, offset: 64)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "start_arg", scope: !3827, file: !106, line: 594, baseType: !7, size: 32, offset: 96)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "scan_begin_src", scope: !3827, file: !106, line: 596, baseType: !7, size: 32, offset: 128)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "scan_begin_arg", scope: !3827, file: !106, line: 597, baseType: !7, size: 32, offset: 160)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "convert_src", scope: !3827, file: !106, line: 599, baseType: !7, size: 32, offset: 192)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "convert_arg", scope: !3827, file: !106, line: 600, baseType: !7, size: 32, offset: 224)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "scan_end_src", scope: !3827, file: !106, line: 602, baseType: !7, size: 32, offset: 256)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "scan_end_arg", scope: !3827, file: !106, line: 603, baseType: !7, size: 32, offset: 288)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "stop_src", scope: !3827, file: !106, line: 605, baseType: !7, size: 32, offset: 320)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "stop_arg", scope: !3827, file: !106, line: 606, baseType: !7, size: 32, offset: 352)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist", scope: !3827, file: !106, line: 608, baseType: !2653, size: 64, offset: 384)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist_len", scope: !3827, file: !106, line: 609, baseType: !7, size: 32, offset: 448)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3827, file: !106, line: 611, baseType: !3844, size: 64, offset: 512)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !3827, file: !106, line: 612, baseType: !7, size: 32, offset: 576)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "wait_head", scope: !3794, file: !112, line: 366, baseType: !1450, size: 128, offset: 1280)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "cb_mask", scope: !3794, file: !112, line: 367, baseType: !7, size: 32, offset: 1408)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "inttrig", scope: !3794, file: !112, line: 368, baseType: !3849, size: 64, offset: 1472)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!153, !173, !3782, !7}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3783, file: !112, line: 165, baseType: !152, size: 64, offset: 384)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !3783, file: !112, line: 166, baseType: !152, size: 64, offset: 448)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "runflags", scope: !3783, file: !112, line: 167, baseType: !7, size: 32, offset: 512)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "spin_lock", scope: !3783, file: !112, line: 168, baseType: !205, offset: 544)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "io_bits", scope: !3783, file: !112, line: 170, baseType: !7, size: 32, offset: 544)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata", scope: !3783, file: !112, line: 172, baseType: !7, size: 32, offset: 576)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata_list", scope: !3783, file: !112, line: 173, baseType: !3859, size: 64, offset: 640)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "range_table", scope: !3783, file: !112, line: 175, baseType: !3861, size: 64, offset: 704)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3863)
!3863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_lrange", file: !112, line: 635, size: 32, elements: !3864)
!3864 = !{!3865, !3866}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3863, file: !112, line: 636, baseType: !153, size: 32)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3863, file: !112, line: 637, baseType: !3867, offset: 32)
!3867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3868, elements: !2301)
!3868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_krange", file: !106, line: 685, size: 96, elements: !3869)
!3869 = !{!3870, !3871, !3872}
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !3868, file: !106, line: 686, baseType: !153, size: 32)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3868, file: !106, line: 687, baseType: !153, size: 32, offset: 32)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3868, file: !106, line: 688, baseType: !7, size: 32, offset: 64)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "range_table_list", scope: !3783, file: !112, line: 176, baseType: !3874, size: 64, offset: 768)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3861)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist", scope: !3783, file: !112, line: 178, baseType: !2653, size: 64, offset: 832)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "insn_read", scope: !3783, file: !112, line: 180, baseType: !3878, size: 64, offset: 896)
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = !DISubroutineType(types: !3880)
!3880 = !{!153, !173, !3782, !3881, !2653}
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_insn", file: !106, line: 491, size: 320, elements: !3883)
!3883 = !{!3884, !3885, !3886, !3887, !3888, !3889}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3882, file: !106, line: 492, baseType: !7, size: 32)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !3882, file: !106, line: 493, baseType: !7, size: 32, offset: 32)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3882, file: !106, line: 494, baseType: !2653, size: 64, offset: 64)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "subdev", scope: !3882, file: !106, line: 495, baseType: !7, size: 32, offset: 128)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "chanspec", scope: !3882, file: !106, line: 496, baseType: !7, size: 32, offset: 160)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !3882, file: !106, line: 497, baseType: !3890, size: 96, offset: 192)
!3890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 96, elements: !246)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "insn_write", scope: !3783, file: !112, line: 182, baseType: !3878, size: 64, offset: 960)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "insn_bits", scope: !3783, file: !112, line: 184, baseType: !3878, size: 64, offset: 1024)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "insn_config", scope: !3783, file: !112, line: 186, baseType: !3878, size: 64, offset: 1088)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmd", scope: !3783, file: !112, line: 191, baseType: !3895, size: 64, offset: 1152)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{!153, !173, !3782}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmdtest", scope: !3783, file: !112, line: 192, baseType: !3899, size: 64, offset: 1216)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DISubroutineType(types: !3901)
!3901 = !{!153, !173, !3782, !3902}
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3783, file: !112, line: 195, baseType: !3895, size: 64, offset: 1280)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "cancel", scope: !3783, file: !112, line: 196, baseType: !3895, size: 64, offset: 1344)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "buf_change", scope: !3783, file: !112, line: 199, baseType: !3895, size: 64, offset: 1408)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "munge", scope: !3783, file: !112, line: 202, baseType: !3907, size: 64, offset: 1472)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = !DISubroutineType(types: !3909)
!3909 = !{null, !173, !3782, !152, !7, !7}
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "async_dma_dir", scope: !3783, file: !112, line: 205, baseType: !93, size: 32, offset: 1536)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3783, file: !112, line: 207, baseType: !7, size: 32, offset: 1568)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !3783, file: !112, line: 209, baseType: !183, size: 64, offset: 1600)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3783, file: !112, line: 210, baseType: !153, size: 32, offset: 1664)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "readback", scope: !3783, file: !112, line: 212, baseType: !2653, size: 64, offset: 1728)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "mmio", scope: !174, file: !112, line: 565, baseType: !152, size: 64, offset: 1216)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "iobase", scope: !174, file: !112, line: 566, baseType: !156, size: 64, offset: 1280)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "iolen", scope: !174, file: !112, line: 567, baseType: !156, size: 64, offset: 1344)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !174, file: !112, line: 568, baseType: !7, size: 32, offset: 1408)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "read_subdev", scope: !174, file: !112, line: 570, baseType: !3782, size: 64, offset: 1472)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "write_subdev", scope: !174, file: !112, line: 571, baseType: !3782, size: 64, offset: 1536)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "async_queue", scope: !174, file: !112, line: 573, baseType: !2929, size: 64, offset: 1600)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !174, file: !112, line: 575, baseType: !3923, size: 64, offset: 1664)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!153, !173}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !174, file: !112, line: 576, baseType: !3927, size: 64, offset: 1728)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = !DISubroutineType(types: !3929)
!3929 = !{null, !173}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "insn_device_config", scope: !174, file: !112, line: 577, baseType: !3931, size: 64, offset: 1792)
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3932 = !DISubroutineType(types: !3933)
!3933 = !{!153, !173, !3881, !2653}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "get_valid_routes", scope: !174, file: !112, line: 579, baseType: !3935, size: 64, offset: 1856)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = !DISubroutineType(types: !3937)
!3937 = !{!7, !173, !7, !2653}
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_devconfig", file: !106, line: 834, size: 1184, elements: !3940)
!3940 = !{!3941, !3943}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !3939, file: !106, line: 835, baseType: !3942, size: 160)
!3942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 160, elements: !2171)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !3939, file: !106, line: 836, baseType: !3944, size: 1024, offset: 160)
!3944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 1024, elements: !2200)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !161, file: !112, line: 444, baseType: !3927, size: 64, offset: 256)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "auto_attach", scope: !161, file: !112, line: 445, baseType: !3947, size: 64, offset: 320)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = !DISubroutineType(types: !3949)
!3949 = !{!153, !173, !156}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "num_names", scope: !161, file: !112, line: 446, baseType: !7, size: 32, offset: 384)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !161, file: !112, line: 447, baseType: !3952, size: 64, offset: 448)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !161, file: !112, line: 448, baseType: !153, size: 32, offset: 512)
!3955 = !DIGlobalVariableExpression(var: !3956, expr: !DIExpression())
!3956 = distinct !DIGlobalVariable(name: "__key", scope: !3957, file: !3, line: 668, type: !614, isLocal: true, isDefinition: true)
!3957 = distinct !DISubprogram(name: "__comedi_device_postconfig_async", scope: !3, file: !3, line: 642, type: !3896, scopeLine: 644, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!3958 = !{i32 7, !"Dwarf Version", i32 4}
!3959 = !{i32 2, !"Debug Info Version", i32 3}
!3960 = !{i32 1, !"wchar_size", i32 2}
!3961 = !{i32 1, !"Code Model", i32 2}
!3962 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!3963 = distinct !DISubprogram(name: "comedi_set_hw_dev", scope: !3, file: !3, line: 50, type: !3964, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !219)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{!153, !173, !183}
!3966 = !DILocalVariable(name: "dev", arg: 1, scope: !3963, file: !3, line: 50, type: !173)
!3967 = !DILocation(line: 50, column: 45, scope: !3963)
!3968 = !DILocalVariable(name: "hw_dev", arg: 2, scope: !3963, file: !3, line: 50, type: !183)
!3969 = !DILocation(line: 50, column: 65, scope: !3963)
!3970 = !DILocation(line: 52, column: 6, scope: !3971)
!3971 = distinct !DILexicalBlock(scope: !3963, file: !3, line: 52, column: 6)
!3972 = !DILocation(line: 52, column: 16, scope: !3971)
!3973 = !DILocation(line: 52, column: 21, scope: !3971)
!3974 = !DILocation(line: 52, column: 13, scope: !3971)
!3975 = !DILocation(line: 52, column: 6, scope: !3963)
!3976 = !DILocation(line: 53, column: 3, scope: !3971)
!3977 = !DILocation(line: 54, column: 6, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3963, file: !3, line: 54, column: 6)
!3979 = !DILocation(line: 54, column: 11, scope: !3978)
!3980 = !DILocation(line: 54, column: 6, scope: !3963)
!3981 = !DILocation(line: 55, column: 3, scope: !3978)
!3982 = !DILocation(line: 56, column: 27, scope: !3963)
!3983 = !DILocation(line: 56, column: 16, scope: !3963)
!3984 = !DILocation(line: 56, column: 2, scope: !3963)
!3985 = !DILocation(line: 56, column: 7, scope: !3963)
!3986 = !DILocation(line: 56, column: 14, scope: !3963)
!3987 = !DILocation(line: 57, column: 2, scope: !3963)
!3988 = !DILocation(line: 58, column: 1, scope: !3963)
!3989 = distinct !DISubprogram(name: "comedi_alloc_devpriv", scope: !3, file: !3, line: 78, type: !3990, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !219)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{!152, !173, !291}
!3992 = !DILocalVariable(name: "dev", arg: 1, scope: !3989, file: !3, line: 78, type: !173)
!3993 = !DILocation(line: 78, column: 50, scope: !3989)
!3994 = !DILocalVariable(name: "size", arg: 2, scope: !3989, file: !3, line: 78, type: !291)
!3995 = !DILocation(line: 78, column: 62, scope: !3989)
!3996 = !DILocation(line: 80, column: 25, scope: !3989)
!3997 = !DILocation(line: 80, column: 17, scope: !3989)
!3998 = !DILocation(line: 80, column: 2, scope: !3989)
!3999 = !DILocation(line: 80, column: 7, scope: !3989)
!4000 = !DILocation(line: 80, column: 15, scope: !3989)
!4001 = !DILocation(line: 81, column: 9, scope: !3989)
!4002 = !DILocation(line: 81, column: 14, scope: !3989)
!4003 = !DILocation(line: 81, column: 2, scope: !3989)
!4004 = distinct !DISubprogram(name: "kzalloc", scope: !123, file: !123, line: 662, type: !4005, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4005 = !DISubroutineType(types: !4006)
!4006 = !{!152, !291, !145}
!4007 = !DILocalVariable(name: "s", arg: 1, scope: !4008, file: !123, line: 445, type: !904)
!4008 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !123, file: !123, line: 445, type: !4009, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!152, !904, !145, !291}
!4011 = !DILocation(line: 445, column: 72, scope: !4008, inlinedAt: !4012)
!4012 = distinct !DILocation(line: 552, column: 10, scope: !4013, inlinedAt: !4016)
!4013 = distinct !DILexicalBlock(scope: !4014, file: !123, line: 540, column: 34)
!4014 = distinct !DILexicalBlock(scope: !4015, file: !123, line: 540, column: 6)
!4015 = distinct !DISubprogram(name: "kmalloc", scope: !123, file: !123, line: 538, type: !4005, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4016 = distinct !DILocation(line: 664, column: 9, scope: !4004)
!4017 = !DILocalVariable(name: "flags", arg: 2, scope: !4008, file: !123, line: 446, type: !145)
!4018 = !DILocation(line: 446, column: 9, scope: !4008, inlinedAt: !4012)
!4019 = !DILocalVariable(name: "size", arg: 3, scope: !4008, file: !123, line: 446, type: !291)
!4020 = !DILocation(line: 446, column: 23, scope: !4008, inlinedAt: !4012)
!4021 = !DILocalVariable(name: "ret", scope: !4008, file: !123, line: 448, type: !152)
!4022 = !DILocation(line: 448, column: 8, scope: !4008, inlinedAt: !4012)
!4023 = !DILocalVariable(name: "flags", arg: 1, scope: !4024, file: !123, line: 318, type: !145)
!4024 = distinct !DISubprogram(name: "kmalloc_type", scope: !123, file: !123, line: 318, type: !4025, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{!122, !145}
!4027 = !DILocation(line: 318, column: 67, scope: !4024, inlinedAt: !4028)
!4028 = distinct !DILocation(line: 553, column: 20, scope: !4013, inlinedAt: !4016)
!4029 = !DILocalVariable(name: "size", arg: 1, scope: !4030, file: !123, line: 346, type: !291)
!4030 = distinct !DISubprogram(name: "kmalloc_index", scope: !123, file: !123, line: 346, type: !4031, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4031 = !DISubroutineType(types: !4032)
!4032 = !{!7, !291}
!4033 = !DILocation(line: 346, column: 58, scope: !4030, inlinedAt: !4034)
!4034 = distinct !DILocation(line: 547, column: 11, scope: !4013, inlinedAt: !4016)
!4035 = !DILocalVariable(name: "size", arg: 1, scope: !4036, file: !123, line: 472, type: !291)
!4036 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !123, file: !123, line: 472, type: !4037, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{!152, !291, !145, !7}
!4039 = !DILocation(line: 472, column: 28, scope: !4036, inlinedAt: !4040)
!4040 = distinct !DILocation(line: 481, column: 9, scope: !4041, inlinedAt: !4042)
!4041 = distinct !DISubprogram(name: "kmalloc_large", scope: !123, file: !123, line: 478, type: !4005, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4042 = distinct !DILocation(line: 545, column: 11, scope: !4043, inlinedAt: !4016)
!4043 = distinct !DILexicalBlock(scope: !4013, file: !123, line: 544, column: 7)
!4044 = !DILocalVariable(name: "flags", arg: 2, scope: !4036, file: !123, line: 472, type: !145)
!4045 = !DILocation(line: 472, column: 40, scope: !4036, inlinedAt: !4040)
!4046 = !DILocalVariable(name: "order", arg: 3, scope: !4036, file: !123, line: 472, type: !7)
!4047 = !DILocation(line: 472, column: 60, scope: !4036, inlinedAt: !4040)
!4048 = !DILocalVariable(name: "size", arg: 1, scope: !4041, file: !123, line: 478, type: !291)
!4049 = !DILocation(line: 478, column: 51, scope: !4041, inlinedAt: !4042)
!4050 = !DILocalVariable(name: "flags", arg: 2, scope: !4041, file: !123, line: 478, type: !145)
!4051 = !DILocation(line: 478, column: 63, scope: !4041, inlinedAt: !4042)
!4052 = !DILocalVariable(name: "order", scope: !4041, file: !123, line: 480, type: !7)
!4053 = !DILocation(line: 480, column: 15, scope: !4041, inlinedAt: !4042)
!4054 = !DILocalVariable(name: "size", arg: 1, scope: !4015, file: !123, line: 538, type: !291)
!4055 = !DILocation(line: 538, column: 45, scope: !4015, inlinedAt: !4016)
!4056 = !DILocalVariable(name: "flags", arg: 2, scope: !4015, file: !123, line: 538, type: !145)
!4057 = !DILocation(line: 538, column: 57, scope: !4015, inlinedAt: !4016)
!4058 = !DILocalVariable(name: "index", scope: !4013, file: !123, line: 542, type: !7)
!4059 = !DILocation(line: 542, column: 16, scope: !4013, inlinedAt: !4016)
!4060 = !DILocalVariable(name: "size", arg: 1, scope: !4004, file: !123, line: 662, type: !291)
!4061 = !DILocation(line: 662, column: 36, scope: !4004)
!4062 = !DILocalVariable(name: "flags", arg: 2, scope: !4004, file: !123, line: 662, type: !145)
!4063 = !DILocation(line: 662, column: 48, scope: !4004)
!4064 = !DILocation(line: 664, column: 17, scope: !4004)
!4065 = !DILocation(line: 664, column: 23, scope: !4004)
!4066 = !DILocation(line: 664, column: 29, scope: !4004)
!4067 = !DILocation(line: 540, column: 27, scope: !4014, inlinedAt: !4016)
!4068 = !DILocation(line: 540, column: 6, scope: !4014, inlinedAt: !4016)
!4069 = !DILocation(line: 540, column: 6, scope: !4015, inlinedAt: !4016)
!4070 = !DILocation(line: 544, column: 7, scope: !4043, inlinedAt: !4016)
!4071 = !DILocation(line: 544, column: 12, scope: !4043, inlinedAt: !4016)
!4072 = !DILocation(line: 544, column: 7, scope: !4013, inlinedAt: !4016)
!4073 = !DILocation(line: 545, column: 25, scope: !4043, inlinedAt: !4016)
!4074 = !DILocation(line: 545, column: 31, scope: !4043, inlinedAt: !4016)
!4075 = !DILocation(line: 480, column: 33, scope: !4041, inlinedAt: !4042)
!4076 = !DILocation(line: 480, column: 23, scope: !4041, inlinedAt: !4042)
!4077 = !DILocation(line: 481, column: 29, scope: !4041, inlinedAt: !4042)
!4078 = !DILocation(line: 481, column: 35, scope: !4041, inlinedAt: !4042)
!4079 = !DILocation(line: 481, column: 42, scope: !4041, inlinedAt: !4042)
!4080 = !DILocation(line: 474, column: 23, scope: !4036, inlinedAt: !4040)
!4081 = !DILocation(line: 474, column: 29, scope: !4036, inlinedAt: !4040)
!4082 = !DILocation(line: 474, column: 36, scope: !4036, inlinedAt: !4040)
!4083 = !DILocation(line: 474, column: 9, scope: !4036, inlinedAt: !4040)
!4084 = !DILocation(line: 545, column: 4, scope: !4043, inlinedAt: !4016)
!4085 = !DILocation(line: 547, column: 25, scope: !4013, inlinedAt: !4016)
!4086 = !DILocation(line: 348, column: 7, scope: !4087, inlinedAt: !4034)
!4087 = distinct !DILexicalBlock(scope: !4030, file: !123, line: 348, column: 6)
!4088 = !DILocation(line: 348, column: 6, scope: !4030, inlinedAt: !4034)
!4089 = !DILocation(line: 349, column: 3, scope: !4087, inlinedAt: !4034)
!4090 = !DILocation(line: 351, column: 6, scope: !4091, inlinedAt: !4034)
!4091 = distinct !DILexicalBlock(scope: !4030, file: !123, line: 351, column: 6)
!4092 = !DILocation(line: 351, column: 11, scope: !4091, inlinedAt: !4034)
!4093 = !DILocation(line: 351, column: 6, scope: !4030, inlinedAt: !4034)
!4094 = !DILocation(line: 352, column: 3, scope: !4091, inlinedAt: !4034)
!4095 = !DILocation(line: 354, column: 32, scope: !4096, inlinedAt: !4034)
!4096 = distinct !DILexicalBlock(scope: !4030, file: !123, line: 354, column: 6)
!4097 = !DILocation(line: 354, column: 37, scope: !4096, inlinedAt: !4034)
!4098 = !DILocation(line: 354, column: 42, scope: !4096, inlinedAt: !4034)
!4099 = !DILocation(line: 354, column: 45, scope: !4096, inlinedAt: !4034)
!4100 = !DILocation(line: 354, column: 50, scope: !4096, inlinedAt: !4034)
!4101 = !DILocation(line: 354, column: 6, scope: !4030, inlinedAt: !4034)
!4102 = !DILocation(line: 355, column: 3, scope: !4096, inlinedAt: !4034)
!4103 = !DILocation(line: 356, column: 32, scope: !4104, inlinedAt: !4034)
!4104 = distinct !DILexicalBlock(scope: !4030, file: !123, line: 356, column: 6)
!4105 = !DILocation(line: 356, column: 37, scope: !4104, inlinedAt: !4034)
!4106 = !DILocation(line: 356, column: 43, scope: !4104, inlinedAt: !4034)
!4107 = !DILocation(line: 356, column: 46, scope: !4104, inlinedAt: !4034)
!4108 = !DILocation(line: 356, column: 51, scope: !4104, inlinedAt: !4034)
!4109 = !DILocation(line: 356, column: 6, scope: !4030, inlinedAt: !4034)
!4110 = !DILocation(line: 357, column: 3, scope: !4104, inlinedAt: !4034)
!4111 = !DILocation(line: 358, column: 6, scope: !4112, inlinedAt: !4034)
!4112 = distinct !DILexicalBlock(scope: !4030, file: !123, line: 358, column: 6)
!4113 = !DILocation(line: 358, column: 11, scope: !4112, inlinedAt: !4034)
!4114 = !DILocation(line: 358, column: 6, scope: !4030, inlinedAt: !4034)
!4115 = !DILocation(line: 358, column: 26, scope: !4112, inlinedAt: !4034)
!4116 = !DILocation(line: 359, column: 6, scope: !4117, inlinedAt: !4034)
!4117 = distinct !DILexicalBlock(scope: !4030, file: !123, line: 359, column: 6)
!4118 = !DILocation(line: 359, column: 11, scope: !4117, inlinedAt: !4034)
!4119 = !DILocation(line: 359, column: 6, scope: !4030, inlinedAt: !4034)
!4120 = !DILocation(line: 359, column: 26, scope: !4117, inlinedAt: !4034)
!4121 = !DILocation(line: 360, column: 6, scope: !4122, inlinedAt: !4034)
!4122 = distinct !DILexicalBlock(scope: !4030, file: !123, line: 360, column: 6)
!4123 = !DILocation(line: 360, column: 11, scope: !4122, inlinedAt: !4034)
!4124 = !DILocation(line: 360, column: 6, scope: !4030, inlinedAt: !4034)
!4125 = !DILocation(line: 360, column: 26, scope: !4122, inlinedAt: !4034)
!4126 = !DILocation(line: 361, column: 6, scope: !4127, inlinedAt: !4034)
!4127 = distinct !DILexicalBlock(scope: !4030, file: !123, line: 361, column: 6)
!4128 = !DILocation(line: 361, column: 11, scope: !4127, inlinedAt: !4034)
!4129 = !DILocation(line: 361, column: 6, scope: !4030, inlinedAt: !4034)
!4130 = !DILocation(line: 361, column: 26, scope: !4127, inlinedAt: !4034)
!4131 = !DILocation(line: 362, column: 6, scope: !4132, inlinedAt: !4034)
!4132 = distinct !DILexicalBlock(scope: !4030, file: !123, line: 362, column: 6)
!4133 = !DILocation(line: 362, column: 11, scope: !4132, inlinedAt: !4034)
!4134 = !DILocation(line: 362, column: 6, scope: !4030, inlinedAt: !4034)
!4135 = !DILocation(line: 362, column: 26, scope: !4132, inlinedAt: !4034)
!4136 = !DILocation(line: 363, column: 6, scope: !4137, inlinedAt: !4034)
!4137 = distinct !DILexicalBlock(scope: !4030, file: !123, line: 363, column: 6)
!4138 = !DILocation(line: 363, column: 11, scope: !4137, inlinedAt: !4034)
!4139 = !DILocation(line: 363, column: 6, scope: !4030, inlinedAt: !4034)
!4140 = !DILocation(line: 363, column: 26, scope: !4137, inlinedAt: !4034)
!4141 = !DILocation(line: 364, column: 6, scope: !4142, inlinedAt: !4034)
!4142 = distinct !DILexicalBlock(scope: !4030, file: !123, line: 364, column: 6)
!4143 = !DILocation(line: 364, column: 11, scope: !4142, inlinedAt: !4034)
!4144 = !DILocation(line: 364, column: 6, scope: !4030, inlinedAt: !4034)
!4145 = !DILocation(line: 364, column: 26, scope: !4142, inlinedAt: !4034)
!4146 = !DILocation(line: 365, column: 6, scope: !4147, inlinedAt: !4034)
!4147 = distinct !DILexicalBlock(scope: !4030, file: !123, line: 365, column: 6)
!4148 = !DILocation(line: 365, column: 11, scope: !4147, inlinedAt: !4034)
!4149 = !DILocation(line: 365, column: 6, scope: !4030, inlinedAt: !4034)
!4150 = !DILocation(line: 365, column: 26, scope: !4147, inlinedAt: !4034)
!4151 = !DILocation(line: 366, column: 6, scope: !4152, inlinedAt: !4034)
!4152 = distinct !DILexicalBlock(scope: !4030, file: !123, line: 366, column: 6)
!4153 = !DILocation(line: 366, column: 11, scope: !4152, inlinedAt: !4034)
!4154 = !DILocation(line: 366, column: 6, scope: !4030, inlinedAt: !4034)
!4155 = !DILocation(line: 366, column: 26, scope: !4152, inlinedAt: !4034)
!4156 = !DILocation(line: 367, column: 6, scope: !4157, inlinedAt: !4034)
!4157 = distinct !DILexicalBlock(scope: !4030, file: !123, line: 367, column: 6)
!4158 = !DILocation(line: 367, column: 11, scope: !4157, inlinedAt: !4034)
!4159 = !DILocation(line: 367, column: 6, scope: !4030, inlinedAt: !4034)
!4160 = !DILocation(line: 367, column: 26, scope: !4157, inlinedAt: !4034)
!4161 = !DILocation(line: 368, column: 6, scope: !4162, inlinedAt: !4034)
!4162 = distinct !DILexicalBlock(scope: !4030, file: !123, line: 368, column: 6)
!4163 = !DILocation(line: 368, column: 11, scope: !4162, inlinedAt: !4034)
!4164 = !DILocation(line: 368, column: 6, scope: !4030, inlinedAt: !4034)
!4165 = !DILocation(line: 368, column: 26, scope: !4162, inlinedAt: !4034)
!4166 = !DILocation(line: 369, column: 6, scope: !4167, inlinedAt: !4034)
!4167 = distinct !DILexicalBlock(scope: !4030, file: !123, line: 369, column: 6)
!4168 = !DILocation(line: 369, column: 11, scope: !4167, inlinedAt: !4034)
!4169 = !DILocation(line: 369, column: 6, scope: !4030, inlinedAt: !4034)
!4170 = !DILocation(line: 369, column: 26, scope: !4167, inlinedAt: !4034)
!4171 = !DILocation(line: 370, column: 6, scope: !4172, inlinedAt: !4034)
!4172 = distinct !DILexicalBlock(scope: !4030, file: !123, line: 370, column: 6)
!4173 = !DILocation(line: 370, column: 11, scope: !4172, inlinedAt: !4034)
!4174 = !DILocation(line: 370, column: 6, scope: !4030, inlinedAt: !4034)
!4175 = !DILocation(line: 370, column: 26, scope: !4172, inlinedAt: !4034)
!4176 = !DILocation(line: 371, column: 6, scope: !4177, inlinedAt: !4034)
!4177 = distinct !DILexicalBlock(scope: !4030, file: !123, line: 371, column: 6)
!4178 = !DILocation(line: 371, column: 11, scope: !4177, inlinedAt: !4034)
!4179 = !DILocation(line: 371, column: 6, scope: !4030, inlinedAt: !4034)
!4180 = !DILocation(line: 371, column: 26, scope: !4177, inlinedAt: !4034)
!4181 = !DILocation(line: 372, column: 6, scope: !4182, inlinedAt: !4034)
!4182 = distinct !DILexicalBlock(scope: !4030, file: !123, line: 372, column: 6)
!4183 = !DILocation(line: 372, column: 11, scope: !4182, inlinedAt: !4034)
!4184 = !DILocation(line: 372, column: 6, scope: !4030, inlinedAt: !4034)
!4185 = !DILocation(line: 372, column: 26, scope: !4182, inlinedAt: !4034)
!4186 = !DILocation(line: 373, column: 6, scope: !4187, inlinedAt: !4034)
!4187 = distinct !DILexicalBlock(scope: !4030, file: !123, line: 373, column: 6)
!4188 = !DILocation(line: 373, column: 11, scope: !4187, inlinedAt: !4034)
!4189 = !DILocation(line: 373, column: 6, scope: !4030, inlinedAt: !4034)
!4190 = !DILocation(line: 373, column: 26, scope: !4187, inlinedAt: !4034)
!4191 = !DILocation(line: 374, column: 6, scope: !4192, inlinedAt: !4034)
!4192 = distinct !DILexicalBlock(scope: !4030, file: !123, line: 374, column: 6)
!4193 = !DILocation(line: 374, column: 11, scope: !4192, inlinedAt: !4034)
!4194 = !DILocation(line: 374, column: 6, scope: !4030, inlinedAt: !4034)
!4195 = !DILocation(line: 374, column: 26, scope: !4192, inlinedAt: !4034)
!4196 = !DILocation(line: 375, column: 6, scope: !4197, inlinedAt: !4034)
!4197 = distinct !DILexicalBlock(scope: !4030, file: !123, line: 375, column: 6)
!4198 = !DILocation(line: 375, column: 11, scope: !4197, inlinedAt: !4034)
!4199 = !DILocation(line: 375, column: 6, scope: !4030, inlinedAt: !4034)
!4200 = !DILocation(line: 375, column: 27, scope: !4197, inlinedAt: !4034)
!4201 = !DILocation(line: 376, column: 6, scope: !4202, inlinedAt: !4034)
!4202 = distinct !DILexicalBlock(scope: !4030, file: !123, line: 376, column: 6)
!4203 = !DILocation(line: 376, column: 11, scope: !4202, inlinedAt: !4034)
!4204 = !DILocation(line: 376, column: 6, scope: !4030, inlinedAt: !4034)
!4205 = !DILocation(line: 376, column: 32, scope: !4202, inlinedAt: !4034)
!4206 = !DILocation(line: 377, column: 6, scope: !4207, inlinedAt: !4034)
!4207 = distinct !DILexicalBlock(scope: !4030, file: !123, line: 377, column: 6)
!4208 = !DILocation(line: 377, column: 11, scope: !4207, inlinedAt: !4034)
!4209 = !DILocation(line: 377, column: 6, scope: !4030, inlinedAt: !4034)
!4210 = !DILocation(line: 377, column: 32, scope: !4207, inlinedAt: !4034)
!4211 = !DILocation(line: 378, column: 6, scope: !4212, inlinedAt: !4034)
!4212 = distinct !DILexicalBlock(scope: !4030, file: !123, line: 378, column: 6)
!4213 = !DILocation(line: 378, column: 11, scope: !4212, inlinedAt: !4034)
!4214 = !DILocation(line: 378, column: 6, scope: !4030, inlinedAt: !4034)
!4215 = !DILocation(line: 378, column: 32, scope: !4212, inlinedAt: !4034)
!4216 = !DILocation(line: 379, column: 6, scope: !4217, inlinedAt: !4034)
!4217 = distinct !DILexicalBlock(scope: !4030, file: !123, line: 379, column: 6)
!4218 = !DILocation(line: 379, column: 11, scope: !4217, inlinedAt: !4034)
!4219 = !DILocation(line: 379, column: 6, scope: !4030, inlinedAt: !4034)
!4220 = !DILocation(line: 379, column: 33, scope: !4217, inlinedAt: !4034)
!4221 = !DILocation(line: 380, column: 6, scope: !4222, inlinedAt: !4034)
!4222 = distinct !DILexicalBlock(scope: !4030, file: !123, line: 380, column: 6)
!4223 = !DILocation(line: 380, column: 11, scope: !4222, inlinedAt: !4034)
!4224 = !DILocation(line: 380, column: 6, scope: !4030, inlinedAt: !4034)
!4225 = !DILocation(line: 380, column: 33, scope: !4222, inlinedAt: !4034)
!4226 = !DILocation(line: 381, column: 6, scope: !4227, inlinedAt: !4034)
!4227 = distinct !DILexicalBlock(scope: !4030, file: !123, line: 381, column: 6)
!4228 = !DILocation(line: 381, column: 11, scope: !4227, inlinedAt: !4034)
!4229 = !DILocation(line: 381, column: 6, scope: !4030, inlinedAt: !4034)
!4230 = !DILocation(line: 381, column: 33, scope: !4227, inlinedAt: !4034)
!4231 = !DILocation(line: 382, column: 2, scope: !4232, inlinedAt: !4034)
!4232 = distinct !DILexicalBlock(scope: !4233, file: !123, line: 382, column: 2)
!4233 = distinct !DILexicalBlock(scope: !4030, file: !123, line: 382, column: 2)
!4234 = !{i32 -2143536659, i32 -2143536630, i32 -2143536584, i32 -2143536526, i32 -2143536472, i32 -2143536418, i32 -2143536363, i32 -2143536332}
!4235 = !DILocation(line: 382, column: 2, scope: !4236, inlinedAt: !4034)
!4236 = distinct !DILexicalBlock(scope: !4237, file: !123, line: 382, column: 2)
!4237 = distinct !DILexicalBlock(scope: !4233, file: !123, line: 382, column: 2)
!4238 = !{i32 -2143535889, i32 -2143535882, i32 -2143535828, i32 -2143535797, i32 -2143535767}
!4239 = !DILocation(line: 382, column: 2, scope: !4237, inlinedAt: !4034)
!4240 = !DILocation(line: 386, column: 1, scope: !4030, inlinedAt: !4034)
!4241 = !DILocation(line: 547, column: 9, scope: !4013, inlinedAt: !4016)
!4242 = !DILocation(line: 549, column: 8, scope: !4243, inlinedAt: !4016)
!4243 = distinct !DILexicalBlock(scope: !4013, file: !123, line: 549, column: 7)
!4244 = !DILocation(line: 549, column: 7, scope: !4013, inlinedAt: !4016)
!4245 = !DILocation(line: 550, column: 4, scope: !4243, inlinedAt: !4016)
!4246 = !DILocation(line: 553, column: 33, scope: !4013, inlinedAt: !4016)
!4247 = !DILocation(line: 325, column: 6, scope: !4248, inlinedAt: !4028)
!4248 = distinct !DILexicalBlock(scope: !4024, file: !123, line: 325, column: 6)
!4249 = !DILocation(line: 325, column: 6, scope: !4024, inlinedAt: !4028)
!4250 = !DILocation(line: 326, column: 3, scope: !4248, inlinedAt: !4028)
!4251 = !DILocation(line: 332, column: 9, scope: !4024, inlinedAt: !4028)
!4252 = !DILocation(line: 332, column: 15, scope: !4024, inlinedAt: !4028)
!4253 = !DILocation(line: 332, column: 2, scope: !4024, inlinedAt: !4028)
!4254 = !DILocation(line: 336, column: 1, scope: !4024, inlinedAt: !4028)
!4255 = !DILocation(line: 553, column: 5, scope: !4013, inlinedAt: !4016)
!4256 = !DILocation(line: 553, column: 41, scope: !4013, inlinedAt: !4016)
!4257 = !DILocation(line: 554, column: 5, scope: !4013, inlinedAt: !4016)
!4258 = !DILocation(line: 554, column: 12, scope: !4013, inlinedAt: !4016)
!4259 = !DILocation(line: 448, column: 31, scope: !4008, inlinedAt: !4012)
!4260 = !DILocation(line: 448, column: 34, scope: !4008, inlinedAt: !4012)
!4261 = !DILocation(line: 448, column: 14, scope: !4008, inlinedAt: !4012)
!4262 = !DILocation(line: 450, column: 22, scope: !4008, inlinedAt: !4012)
!4263 = !DILocation(line: 450, column: 25, scope: !4008, inlinedAt: !4012)
!4264 = !DILocation(line: 450, column: 30, scope: !4008, inlinedAt: !4012)
!4265 = !DILocation(line: 450, column: 36, scope: !4008, inlinedAt: !4012)
!4266 = !DILocation(line: 450, column: 8, scope: !4008, inlinedAt: !4012)
!4267 = !DILocation(line: 450, column: 6, scope: !4008, inlinedAt: !4012)
!4268 = !DILocation(line: 451, column: 9, scope: !4008, inlinedAt: !4012)
!4269 = !DILocation(line: 552, column: 3, scope: !4013, inlinedAt: !4016)
!4270 = !DILocation(line: 557, column: 19, scope: !4015, inlinedAt: !4016)
!4271 = !DILocation(line: 557, column: 25, scope: !4015, inlinedAt: !4016)
!4272 = !DILocation(line: 557, column: 9, scope: !4015, inlinedAt: !4016)
!4273 = !DILocation(line: 557, column: 2, scope: !4015, inlinedAt: !4016)
!4274 = !DILocation(line: 558, column: 1, scope: !4015, inlinedAt: !4016)
!4275 = !DILocation(line: 664, column: 2, scope: !4004)
!4276 = distinct !DISubprogram(name: "comedi_alloc_subdevices", scope: !3, file: !3, line: 97, type: !4277, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4277 = !DISubroutineType(types: !4278)
!4278 = !{!153, !173, !153}
!4279 = !DILocalVariable(name: "lock", arg: 1, scope: !4280, file: !4281, line: 327, type: !1033)
!4280 = distinct !DISubprogram(name: "spinlock_check", scope: !4281, file: !4281, line: 327, type: !4282, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4281 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!4282 = !DISubroutineType(types: !4283)
!4283 = !{!4284, !1033}
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!4285 = !DILocation(line: 327, column: 67, scope: !4280, inlinedAt: !4286)
!4286 = distinct !DILocation(line: 116, column: 3, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !4288, file: !3, line: 116, column: 3)
!4288 = distinct !DILexicalBlock(scope: !4289, file: !3, line: 111, column: 39)
!4289 = distinct !DILexicalBlock(scope: !4290, file: !3, line: 111, column: 2)
!4290 = distinct !DILexicalBlock(scope: !4276, file: !3, line: 111, column: 2)
!4291 = !DILocalVariable(name: "dev", arg: 1, scope: !4276, file: !3, line: 97, type: !173)
!4292 = !DILocation(line: 97, column: 51, scope: !4276)
!4293 = !DILocalVariable(name: "num_subdevices", arg: 2, scope: !4276, file: !3, line: 97, type: !153)
!4294 = !DILocation(line: 97, column: 60, scope: !4276)
!4295 = !DILocalVariable(name: "s", scope: !4276, file: !3, line: 99, type: !3782)
!4296 = !DILocation(line: 99, column: 27, scope: !4276)
!4297 = !DILocalVariable(name: "i", scope: !4276, file: !3, line: 100, type: !153)
!4298 = !DILocation(line: 100, column: 6, scope: !4276)
!4299 = !DILocation(line: 102, column: 6, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !4276, file: !3, line: 102, column: 6)
!4301 = !DILocation(line: 102, column: 21, scope: !4300)
!4302 = !DILocation(line: 102, column: 6, scope: !4276)
!4303 = !DILocation(line: 103, column: 3, scope: !4300)
!4304 = !DILocation(line: 105, column: 14, scope: !4276)
!4305 = !DILocation(line: 105, column: 6, scope: !4276)
!4306 = !DILocation(line: 105, column: 4, scope: !4276)
!4307 = !DILocation(line: 106, column: 7, scope: !4308)
!4308 = distinct !DILexicalBlock(scope: !4276, file: !3, line: 106, column: 6)
!4309 = !DILocation(line: 106, column: 6, scope: !4276)
!4310 = !DILocation(line: 107, column: 3, scope: !4308)
!4311 = !DILocation(line: 108, column: 20, scope: !4276)
!4312 = !DILocation(line: 108, column: 2, scope: !4276)
!4313 = !DILocation(line: 108, column: 7, scope: !4276)
!4314 = !DILocation(line: 108, column: 18, scope: !4276)
!4315 = !DILocation(line: 109, column: 22, scope: !4276)
!4316 = !DILocation(line: 109, column: 2, scope: !4276)
!4317 = !DILocation(line: 109, column: 7, scope: !4276)
!4318 = !DILocation(line: 109, column: 20, scope: !4276)
!4319 = !DILocation(line: 111, column: 9, scope: !4290)
!4320 = !DILocation(line: 111, column: 7, scope: !4290)
!4321 = !DILocation(line: 111, column: 14, scope: !4289)
!4322 = !DILocation(line: 111, column: 18, scope: !4289)
!4323 = !DILocation(line: 111, column: 16, scope: !4289)
!4324 = !DILocation(line: 111, column: 2, scope: !4290)
!4325 = !DILocation(line: 112, column: 8, scope: !4288)
!4326 = !DILocation(line: 112, column: 13, scope: !4288)
!4327 = !DILocation(line: 112, column: 24, scope: !4288)
!4328 = !DILocation(line: 112, column: 5, scope: !4288)
!4329 = !DILocation(line: 113, column: 15, scope: !4288)
!4330 = !DILocation(line: 113, column: 3, scope: !4288)
!4331 = !DILocation(line: 113, column: 6, scope: !4288)
!4332 = !DILocation(line: 113, column: 13, scope: !4288)
!4333 = !DILocation(line: 114, column: 14, scope: !4288)
!4334 = !DILocation(line: 114, column: 3, scope: !4288)
!4335 = !DILocation(line: 114, column: 6, scope: !4288)
!4336 = !DILocation(line: 114, column: 12, scope: !4288)
!4337 = !DILocation(line: 115, column: 3, scope: !4288)
!4338 = !DILocation(line: 115, column: 6, scope: !4288)
!4339 = !DILocation(line: 115, column: 20, scope: !4288)
!4340 = !DILocation(line: 116, column: 3, scope: !4288)
!4341 = !DILocation(line: 116, column: 3, scope: !4287)
!4342 = !DILocation(line: 329, column: 10, scope: !4280, inlinedAt: !4286)
!4343 = !DILocation(line: 329, column: 16, scope: !4280, inlinedAt: !4286)
!4344 = !DILocation(line: 117, column: 3, scope: !4288)
!4345 = !DILocation(line: 117, column: 6, scope: !4288)
!4346 = !DILocation(line: 117, column: 12, scope: !4288)
!4347 = !DILocation(line: 118, column: 2, scope: !4288)
!4348 = !DILocation(line: 111, column: 34, scope: !4289)
!4349 = !DILocation(line: 111, column: 2, scope: !4289)
!4350 = distinct !{!4350, !4324, !4351}
!4351 = !DILocation(line: 118, column: 2, scope: !4290)
!4352 = !DILocation(line: 119, column: 2, scope: !4276)
!4353 = !DILocation(line: 120, column: 1, scope: !4276)
!4354 = distinct !DISubprogram(name: "kcalloc", scope: !123, file: !123, line: 601, type: !4355, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4355 = !DISubroutineType(types: !4356)
!4356 = !{!152, !291, !291, !145}
!4357 = !DILocalVariable(name: "n", arg: 1, scope: !4354, file: !123, line: 601, type: !291)
!4358 = !DILocation(line: 601, column: 36, scope: !4354)
!4359 = !DILocalVariable(name: "size", arg: 2, scope: !4354, file: !123, line: 601, type: !291)
!4360 = !DILocation(line: 601, column: 46, scope: !4354)
!4361 = !DILocalVariable(name: "flags", arg: 3, scope: !4354, file: !123, line: 601, type: !145)
!4362 = !DILocation(line: 601, column: 58, scope: !4354)
!4363 = !DILocation(line: 603, column: 23, scope: !4354)
!4364 = !DILocation(line: 603, column: 26, scope: !4354)
!4365 = !DILocation(line: 603, column: 32, scope: !4354)
!4366 = !DILocation(line: 603, column: 38, scope: !4354)
!4367 = !DILocation(line: 603, column: 9, scope: !4354)
!4368 = !DILocation(line: 603, column: 2, scope: !4354)
!4369 = distinct !DISubprogram(name: "comedi_alloc_subdev_readback", scope: !3, file: !3, line: 141, type: !4370, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4370 = !DISubroutineType(types: !4371)
!4371 = !{!153, !3782}
!4372 = !DILocalVariable(name: "s", arg: 1, scope: !4369, file: !3, line: 141, type: !3782)
!4373 = !DILocation(line: 141, column: 59, scope: !4369)
!4374 = !DILocation(line: 143, column: 7, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !4369, file: !3, line: 143, column: 6)
!4376 = !DILocation(line: 143, column: 10, scope: !4375)
!4377 = !DILocation(line: 143, column: 6, scope: !4369)
!4378 = !DILocation(line: 144, column: 3, scope: !4375)
!4379 = !DILocation(line: 146, column: 24, scope: !4369)
!4380 = !DILocation(line: 146, column: 27, scope: !4369)
!4381 = !DILocation(line: 146, column: 16, scope: !4369)
!4382 = !DILocation(line: 146, column: 2, scope: !4369)
!4383 = !DILocation(line: 146, column: 5, scope: !4369)
!4384 = !DILocation(line: 146, column: 14, scope: !4369)
!4385 = !DILocation(line: 147, column: 7, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !4369, file: !3, line: 147, column: 6)
!4387 = !DILocation(line: 147, column: 10, scope: !4386)
!4388 = !DILocation(line: 147, column: 6, scope: !4369)
!4389 = !DILocation(line: 148, column: 3, scope: !4386)
!4390 = !DILocation(line: 150, column: 7, scope: !4391)
!4391 = distinct !DILexicalBlock(scope: !4369, file: !3, line: 150, column: 6)
!4392 = !DILocation(line: 150, column: 10, scope: !4391)
!4393 = !DILocation(line: 150, column: 6, scope: !4369)
!4394 = !DILocation(line: 151, column: 3, scope: !4391)
!4395 = !DILocation(line: 151, column: 6, scope: !4391)
!4396 = !DILocation(line: 151, column: 16, scope: !4391)
!4397 = !DILocation(line: 153, column: 2, scope: !4369)
!4398 = !DILocation(line: 154, column: 1, scope: !4369)
!4399 = distinct !DISubprogram(name: "comedi_readback_insn_read", scope: !3, file: !3, line: 253, type: !3879, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4400 = !DILocalVariable(name: "dev", arg: 1, scope: !4399, file: !3, line: 253, type: !173)
!4401 = !DILocation(line: 253, column: 53, scope: !4399)
!4402 = !DILocalVariable(name: "s", arg: 2, scope: !4399, file: !3, line: 254, type: !3782)
!4403 = !DILocation(line: 254, column: 35, scope: !4399)
!4404 = !DILocalVariable(name: "insn", arg: 3, scope: !4399, file: !3, line: 255, type: !3881)
!4405 = !DILocation(line: 255, column: 30, scope: !4399)
!4406 = !DILocalVariable(name: "data", arg: 4, scope: !4399, file: !3, line: 256, type: !2653)
!4407 = !DILocation(line: 256, column: 24, scope: !4399)
!4408 = !DILocalVariable(name: "chan", scope: !4399, file: !3, line: 258, type: !7)
!4409 = !DILocation(line: 258, column: 15, scope: !4399)
!4410 = !DILocation(line: 258, column: 22, scope: !4399)
!4411 = !DILocalVariable(name: "i", scope: !4399, file: !3, line: 259, type: !153)
!4412 = !DILocation(line: 259, column: 6, scope: !4399)
!4413 = !DILocation(line: 261, column: 7, scope: !4414)
!4414 = distinct !DILexicalBlock(scope: !4399, file: !3, line: 261, column: 6)
!4415 = !DILocation(line: 261, column: 10, scope: !4414)
!4416 = !DILocation(line: 261, column: 6, scope: !4399)
!4417 = !DILocation(line: 262, column: 3, scope: !4414)
!4418 = !DILocation(line: 264, column: 9, scope: !4419)
!4419 = distinct !DILexicalBlock(scope: !4399, file: !3, line: 264, column: 2)
!4420 = !DILocation(line: 264, column: 7, scope: !4419)
!4421 = !DILocation(line: 264, column: 14, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4419, file: !3, line: 264, column: 2)
!4423 = !DILocation(line: 264, column: 18, scope: !4422)
!4424 = !DILocation(line: 264, column: 24, scope: !4422)
!4425 = !DILocation(line: 264, column: 16, scope: !4422)
!4426 = !DILocation(line: 264, column: 2, scope: !4419)
!4427 = !DILocation(line: 265, column: 13, scope: !4422)
!4428 = !DILocation(line: 265, column: 16, scope: !4422)
!4429 = !DILocation(line: 265, column: 25, scope: !4422)
!4430 = !DILocation(line: 265, column: 3, scope: !4422)
!4431 = !DILocation(line: 265, column: 8, scope: !4422)
!4432 = !DILocation(line: 265, column: 11, scope: !4422)
!4433 = !DILocation(line: 264, column: 28, scope: !4422)
!4434 = !DILocation(line: 264, column: 2, scope: !4422)
!4435 = distinct !{!4435, !4426, !4436}
!4436 = !DILocation(line: 265, column: 29, scope: !4419)
!4437 = !DILocation(line: 267, column: 9, scope: !4399)
!4438 = !DILocation(line: 267, column: 15, scope: !4399)
!4439 = !DILocation(line: 267, column: 2, scope: !4399)
!4440 = !DILocation(line: 268, column: 1, scope: !4399)
!4441 = distinct !DISubprogram(name: "comedi_device_detach", scope: !3, file: !3, line: 199, type: !3928, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4442 = !DILocalVariable(name: "dev", arg: 1, scope: !4441, file: !3, line: 199, type: !173)
!4443 = !DILocation(line: 199, column: 49, scope: !4441)
!4444 = !DILocation(line: 201, column: 2, scope: !4441)
!4445 = !DILocation(line: 201, column: 2, scope: !4446)
!4446 = distinct !DILexicalBlock(scope: !4441, file: !3, line: 201, column: 2)
!4447 = !DILocation(line: 202, column: 27, scope: !4441)
!4448 = !DILocation(line: 202, column: 2, scope: !4441)
!4449 = !DILocation(line: 203, column: 14, scope: !4441)
!4450 = !DILocation(line: 203, column: 19, scope: !4441)
!4451 = !DILocation(line: 203, column: 2, scope: !4441)
!4452 = !DILocation(line: 204, column: 2, scope: !4441)
!4453 = !DILocation(line: 204, column: 7, scope: !4441)
!4454 = !DILocation(line: 204, column: 16, scope: !4441)
!4455 = !DILocation(line: 205, column: 2, scope: !4441)
!4456 = !DILocation(line: 205, column: 7, scope: !4441)
!4457 = !DILocation(line: 205, column: 19, scope: !4441)
!4458 = !DILocation(line: 206, column: 6, scope: !4459)
!4459 = distinct !DILexicalBlock(scope: !4441, file: !3, line: 206, column: 6)
!4460 = !DILocation(line: 206, column: 11, scope: !4459)
!4461 = !DILocation(line: 206, column: 6, scope: !4441)
!4462 = !DILocation(line: 207, column: 3, scope: !4459)
!4463 = !DILocation(line: 207, column: 8, scope: !4459)
!4464 = !DILocation(line: 207, column: 16, scope: !4459)
!4465 = !DILocation(line: 207, column: 23, scope: !4459)
!4466 = !DILocation(line: 208, column: 31, scope: !4441)
!4467 = !DILocation(line: 208, column: 2, scope: !4441)
!4468 = !DILocation(line: 209, column: 12, scope: !4441)
!4469 = !DILocation(line: 209, column: 17, scope: !4441)
!4470 = !DILocation(line: 209, column: 2, scope: !4441)
!4471 = !DILocation(line: 210, column: 1, scope: !4441)
!4472 = distinct !DISubprogram(name: "comedi_device_detach_cleanup", scope: !3, file: !3, line: 157, type: !3928, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4473 = !DILocalVariable(name: "dev", arg: 1, scope: !4472, file: !3, line: 157, type: !173)
!4474 = !DILocation(line: 157, column: 64, scope: !4472)
!4475 = !DILocalVariable(name: "i", scope: !4472, file: !3, line: 159, type: !153)
!4476 = !DILocation(line: 159, column: 6, scope: !4472)
!4477 = !DILocalVariable(name: "s", scope: !4472, file: !3, line: 160, type: !3782)
!4478 = !DILocation(line: 160, column: 27, scope: !4472)
!4479 = !DILocation(line: 162, column: 2, scope: !4472)
!4480 = !DILocation(line: 162, column: 2, scope: !4481)
!4481 = distinct !DILexicalBlock(scope: !4472, file: !3, line: 162, column: 2)
!4482 = !DILocation(line: 163, column: 2, scope: !4472)
!4483 = !DILocation(line: 163, column: 2, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4472, file: !3, line: 163, column: 2)
!4485 = !DILocation(line: 164, column: 6, scope: !4486)
!4486 = distinct !DILexicalBlock(scope: !4472, file: !3, line: 164, column: 6)
!4487 = !DILocation(line: 164, column: 11, scope: !4486)
!4488 = !DILocation(line: 164, column: 6, scope: !4472)
!4489 = !DILocation(line: 165, column: 10, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !4491, file: !3, line: 165, column: 3)
!4491 = distinct !DILexicalBlock(scope: !4486, file: !3, line: 164, column: 23)
!4492 = !DILocation(line: 165, column: 8, scope: !4490)
!4493 = !DILocation(line: 165, column: 15, scope: !4494)
!4494 = distinct !DILexicalBlock(scope: !4490, file: !3, line: 165, column: 3)
!4495 = !DILocation(line: 165, column: 19, scope: !4494)
!4496 = !DILocation(line: 165, column: 24, scope: !4494)
!4497 = !DILocation(line: 165, column: 17, scope: !4494)
!4498 = !DILocation(line: 165, column: 3, scope: !4490)
!4499 = !DILocation(line: 166, column: 9, scope: !4500)
!4500 = distinct !DILexicalBlock(scope: !4494, file: !3, line: 165, column: 43)
!4501 = !DILocation(line: 166, column: 14, scope: !4500)
!4502 = !DILocation(line: 166, column: 25, scope: !4500)
!4503 = !DILocation(line: 166, column: 6, scope: !4500)
!4504 = !DILocation(line: 167, column: 35, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4500, file: !3, line: 167, column: 8)
!4506 = !DILocation(line: 167, column: 8, scope: !4505)
!4507 = !DILocation(line: 167, column: 8, scope: !4500)
!4508 = !DILocation(line: 168, column: 11, scope: !4505)
!4509 = !DILocation(line: 168, column: 14, scope: !4505)
!4510 = !DILocation(line: 168, column: 5, scope: !4505)
!4511 = !DILocation(line: 169, column: 32, scope: !4500)
!4512 = !DILocation(line: 169, column: 4, scope: !4500)
!4513 = !DILocation(line: 170, column: 8, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !4500, file: !3, line: 170, column: 8)
!4515 = !DILocation(line: 170, column: 11, scope: !4514)
!4516 = !DILocation(line: 170, column: 8, scope: !4500)
!4517 = !DILocation(line: 171, column: 22, scope: !4518)
!4518 = distinct !DILexicalBlock(scope: !4514, file: !3, line: 170, column: 18)
!4519 = !DILocation(line: 171, column: 27, scope: !4518)
!4520 = !DILocation(line: 171, column: 5, scope: !4518)
!4521 = !DILocation(line: 172, column: 11, scope: !4518)
!4522 = !DILocation(line: 172, column: 14, scope: !4518)
!4523 = !DILocation(line: 172, column: 5, scope: !4518)
!4524 = !DILocation(line: 173, column: 4, scope: !4518)
!4525 = !DILocation(line: 174, column: 10, scope: !4500)
!4526 = !DILocation(line: 174, column: 13, scope: !4500)
!4527 = !DILocation(line: 174, column: 4, scope: !4500)
!4528 = !DILocation(line: 175, column: 3, scope: !4500)
!4529 = !DILocation(line: 165, column: 39, scope: !4494)
!4530 = !DILocation(line: 165, column: 3, scope: !4494)
!4531 = distinct !{!4531, !4498, !4532}
!4532 = !DILocation(line: 175, column: 3, scope: !4490)
!4533 = !DILocation(line: 176, column: 9, scope: !4491)
!4534 = !DILocation(line: 176, column: 14, scope: !4491)
!4535 = !DILocation(line: 176, column: 3, scope: !4491)
!4536 = !DILocation(line: 177, column: 3, scope: !4491)
!4537 = !DILocation(line: 177, column: 8, scope: !4491)
!4538 = !DILocation(line: 177, column: 19, scope: !4491)
!4539 = !DILocation(line: 178, column: 3, scope: !4491)
!4540 = !DILocation(line: 178, column: 8, scope: !4491)
!4541 = !DILocation(line: 178, column: 21, scope: !4491)
!4542 = !DILocation(line: 179, column: 2, scope: !4491)
!4543 = !DILocation(line: 180, column: 8, scope: !4472)
!4544 = !DILocation(line: 180, column: 13, scope: !4472)
!4545 = !DILocation(line: 180, column: 2, scope: !4472)
!4546 = !DILocation(line: 181, column: 8, scope: !4472)
!4547 = !DILocation(line: 181, column: 13, scope: !4472)
!4548 = !DILocation(line: 181, column: 2, scope: !4472)
!4549 = !DILocation(line: 182, column: 2, scope: !4472)
!4550 = !DILocation(line: 182, column: 7, scope: !4472)
!4551 = !DILocation(line: 182, column: 15, scope: !4472)
!4552 = !DILocation(line: 183, column: 2, scope: !4472)
!4553 = !DILocation(line: 183, column: 7, scope: !4472)
!4554 = !DILocation(line: 183, column: 13, scope: !4472)
!4555 = !DILocation(line: 184, column: 2, scope: !4472)
!4556 = !DILocation(line: 184, column: 7, scope: !4472)
!4557 = !DILocation(line: 184, column: 14, scope: !4472)
!4558 = !DILocation(line: 185, column: 2, scope: !4472)
!4559 = !DILocation(line: 185, column: 7, scope: !4472)
!4560 = !DILocation(line: 185, column: 18, scope: !4472)
!4561 = !DILocation(line: 186, column: 2, scope: !4472)
!4562 = !DILocation(line: 186, column: 7, scope: !4472)
!4563 = !DILocation(line: 186, column: 17, scope: !4472)
!4564 = !DILocation(line: 187, column: 2, scope: !4472)
!4565 = !DILocation(line: 187, column: 7, scope: !4472)
!4566 = !DILocation(line: 187, column: 12, scope: !4472)
!4567 = !DILocation(line: 188, column: 2, scope: !4472)
!4568 = !DILocation(line: 188, column: 7, scope: !4472)
!4569 = !DILocation(line: 188, column: 14, scope: !4472)
!4570 = !DILocation(line: 189, column: 2, scope: !4472)
!4571 = !DILocation(line: 189, column: 7, scope: !4472)
!4572 = !DILocation(line: 189, column: 13, scope: !4472)
!4573 = !DILocation(line: 190, column: 2, scope: !4472)
!4574 = !DILocation(line: 190, column: 7, scope: !4472)
!4575 = !DILocation(line: 190, column: 17, scope: !4472)
!4576 = !DILocation(line: 191, column: 2, scope: !4472)
!4577 = !DILocation(line: 191, column: 7, scope: !4472)
!4578 = !DILocation(line: 191, column: 11, scope: !4472)
!4579 = !DILocation(line: 192, column: 2, scope: !4472)
!4580 = !DILocation(line: 192, column: 7, scope: !4472)
!4581 = !DILocation(line: 192, column: 19, scope: !4472)
!4582 = !DILocation(line: 193, column: 2, scope: !4472)
!4583 = !DILocation(line: 193, column: 7, scope: !4472)
!4584 = !DILocation(line: 193, column: 20, scope: !4472)
!4585 = !DILocation(line: 194, column: 2, scope: !4472)
!4586 = !DILocation(line: 194, column: 7, scope: !4472)
!4587 = !DILocation(line: 194, column: 12, scope: !4472)
!4588 = !DILocation(line: 195, column: 2, scope: !4472)
!4589 = !DILocation(line: 195, column: 7, scope: !4472)
!4590 = !DILocation(line: 195, column: 13, scope: !4472)
!4591 = !DILocation(line: 196, column: 22, scope: !4472)
!4592 = !DILocation(line: 196, column: 2, scope: !4472)
!4593 = !DILocation(line: 197, column: 1, scope: !4472)
!4594 = distinct !DISubprogram(name: "insn_inval", scope: !3, file: !3, line: 230, type: !3879, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4595 = !DILocalVariable(name: "dev", arg: 1, scope: !4594, file: !3, line: 230, type: !173)
!4596 = !DILocation(line: 230, column: 38, scope: !4594)
!4597 = !DILocalVariable(name: "s", arg: 2, scope: !4594, file: !3, line: 230, type: !3782)
!4598 = !DILocation(line: 230, column: 68, scope: !4594)
!4599 = !DILocalVariable(name: "insn", arg: 3, scope: !4594, file: !3, line: 231, type: !3881)
!4600 = !DILocation(line: 231, column: 29, scope: !4594)
!4601 = !DILocalVariable(name: "data", arg: 4, scope: !4594, file: !3, line: 231, type: !2653)
!4602 = !DILocation(line: 231, column: 49, scope: !4594)
!4603 = !DILocation(line: 233, column: 2, scope: !4594)
!4604 = distinct !DISubprogram(name: "comedi_timeout", scope: !3, file: !3, line: 288, type: !4605, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4605 = !DISubroutineType(types: !4606)
!4606 = !{!153, !173, !3782, !3881, !4607, !156}
!4607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4608, size: 64)
!4608 = !DISubroutineType(types: !4609)
!4609 = !{!153, !173, !3782, !3881, !156}
!4610 = !DILocalVariable(name: "m", arg: 1, scope: !4611, file: !4612, line: 363, type: !2797)
!4611 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !4612, file: !4612, line: 363, type: !4613, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4612 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/lizy2001/genbc/linux")
!4613 = !DISubroutineType(types: !4614)
!4614 = !{!156, !2797}
!4615 = !DILocation(line: 363, column: 74, scope: !4611, inlinedAt: !4616)
!4616 = distinct !DILocation(line: 297, column: 36, scope: !4604)
!4617 = !DILocalVariable(name: "dev", arg: 1, scope: !4604, file: !3, line: 288, type: !173)
!4618 = !DILocation(line: 288, column: 42, scope: !4604)
!4619 = !DILocalVariable(name: "s", arg: 2, scope: !4604, file: !3, line: 289, type: !3782)
!4620 = !DILocation(line: 289, column: 31, scope: !4604)
!4621 = !DILocalVariable(name: "insn", arg: 3, scope: !4604, file: !3, line: 290, type: !3881)
!4622 = !DILocation(line: 290, column: 26, scope: !4604)
!4623 = !DILocalVariable(name: "cb", arg: 4, scope: !4604, file: !3, line: 291, type: !4607)
!4624 = !DILocation(line: 291, column: 12, scope: !4604)
!4625 = !DILocalVariable(name: "context", arg: 5, scope: !4604, file: !3, line: 295, type: !156)
!4626 = !DILocation(line: 295, column: 20, scope: !4604)
!4627 = !DILocalVariable(name: "timeout", scope: !4604, file: !3, line: 297, type: !156)
!4628 = !DILocation(line: 297, column: 16, scope: !4604)
!4629 = !DILocation(line: 297, column: 26, scope: !4604)
!4630 = !DILocation(line: 365, column: 27, scope: !4631, inlinedAt: !4616)
!4631 = distinct !DILexicalBlock(scope: !4611, file: !4612, line: 365, column: 6)
!4632 = !DILocation(line: 365, column: 6, scope: !4631, inlinedAt: !4616)
!4633 = !DILocation(line: 365, column: 6, scope: !4611, inlinedAt: !4616)
!4634 = !DILocation(line: 366, column: 12, scope: !4635, inlinedAt: !4616)
!4635 = distinct !DILexicalBlock(scope: !4636, file: !4612, line: 366, column: 7)
!4636 = distinct !DILexicalBlock(scope: !4631, file: !4612, line: 365, column: 31)
!4637 = !DILocation(line: 366, column: 14, scope: !4635, inlinedAt: !4616)
!4638 = !DILocation(line: 366, column: 7, scope: !4636, inlinedAt: !4616)
!4639 = !DILocation(line: 367, column: 4, scope: !4635, inlinedAt: !4616)
!4640 = !DILocation(line: 368, column: 28, scope: !4636, inlinedAt: !4616)
!4641 = !DILocation(line: 368, column: 10, scope: !4636, inlinedAt: !4616)
!4642 = !DILocation(line: 368, column: 3, scope: !4636, inlinedAt: !4616)
!4643 = !DILocation(line: 370, column: 29, scope: !4644, inlinedAt: !4616)
!4644 = distinct !DILexicalBlock(scope: !4631, file: !4612, line: 369, column: 9)
!4645 = !DILocation(line: 370, column: 10, scope: !4644, inlinedAt: !4616)
!4646 = !DILocation(line: 370, column: 3, scope: !4644, inlinedAt: !4616)
!4647 = !DILocation(line: 372, column: 1, scope: !4611, inlinedAt: !4616)
!4648 = !DILocation(line: 297, column: 34, scope: !4604)
!4649 = !DILocalVariable(name: "ret", scope: !4604, file: !3, line: 298, type: !153)
!4650 = !DILocation(line: 298, column: 6, scope: !4604)
!4651 = !DILocation(line: 300, column: 2, scope: !4604)
!4652 = !DILocation(line: 300, column: 9, scope: !4604)
!4653 = !DILocation(line: 301, column: 9, scope: !4654)
!4654 = distinct !DILexicalBlock(scope: !4604, file: !3, line: 300, column: 40)
!4655 = !DILocation(line: 301, column: 12, scope: !4654)
!4656 = !DILocation(line: 301, column: 17, scope: !4654)
!4657 = !DILocation(line: 301, column: 20, scope: !4654)
!4658 = !DILocation(line: 301, column: 26, scope: !4654)
!4659 = !DILocation(line: 301, column: 7, scope: !4654)
!4660 = !DILocation(line: 302, column: 7, scope: !4661)
!4661 = distinct !DILexicalBlock(scope: !4654, file: !3, line: 302, column: 7)
!4662 = !DILocation(line: 302, column: 11, scope: !4661)
!4663 = !DILocation(line: 302, column: 7, scope: !4654)
!4664 = !DILocation(line: 303, column: 11, scope: !4661)
!4665 = !DILocation(line: 303, column: 4, scope: !4661)
!4666 = !DILocation(line: 13, column: 2, scope: !4667, inlinedAt: !4669)
!4667 = distinct !DISubprogram(name: "rep_nop", scope: !4668, file: !4668, line: 11, type: !1848, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4668 = !DIFile(filename: "./arch/x86/include/asm/vdso/processor.h", directory: "/home/lizy2001/genbc/linux")
!4669 = distinct !DILocation(line: 18, column: 2, scope: !4670, inlinedAt: !4671)
!4670 = distinct !DISubprogram(name: "cpu_relax", scope: !4668, file: !4668, line: 16, type: !1848, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4671 = distinct !DILocation(line: 304, column: 3, scope: !4654)
!4672 = !{i32 1941145}
!4673 = distinct !{!4673, !4651, !4674}
!4674 = !DILocation(line: 305, column: 2, scope: !4604)
!4675 = !DILocation(line: 306, column: 2, scope: !4604)
!4676 = !DILocation(line: 307, column: 1, scope: !4604)
!4677 = distinct !DISubprogram(name: "comedi_dio_insn_config", scope: !3, file: !3, line: 336, type: !4678, scopeLine: 341, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4678 = !DISubroutineType(types: !4679)
!4679 = !{!153, !173, !3782, !3881, !2653, !7}
!4680 = !DILocalVariable(name: "dev", arg: 1, scope: !4677, file: !3, line: 336, type: !173)
!4681 = !DILocation(line: 336, column: 50, scope: !4677)
!4682 = !DILocalVariable(name: "s", arg: 2, scope: !4677, file: !3, line: 337, type: !3782)
!4683 = !DILocation(line: 337, column: 32, scope: !4677)
!4684 = !DILocalVariable(name: "insn", arg: 3, scope: !4677, file: !3, line: 338, type: !3881)
!4685 = !DILocation(line: 338, column: 27, scope: !4677)
!4686 = !DILocalVariable(name: "data", arg: 4, scope: !4677, file: !3, line: 339, type: !2653)
!4687 = !DILocation(line: 339, column: 21, scope: !4677)
!4688 = !DILocalVariable(name: "mask", arg: 5, scope: !4677, file: !3, line: 340, type: !7)
!4689 = !DILocation(line: 340, column: 20, scope: !4677)
!4690 = !DILocalVariable(name: "chan_mask", scope: !4677, file: !3, line: 342, type: !7)
!4691 = !DILocation(line: 342, column: 15, scope: !4677)
!4692 = !DILocation(line: 342, column: 32, scope: !4677)
!4693 = !DILocation(line: 342, column: 29, scope: !4677)
!4694 = !DILocation(line: 344, column: 7, scope: !4695)
!4695 = distinct !DILexicalBlock(scope: !4677, file: !3, line: 344, column: 6)
!4696 = !DILocation(line: 344, column: 6, scope: !4677)
!4697 = !DILocation(line: 345, column: 10, scope: !4695)
!4698 = !DILocation(line: 345, column: 8, scope: !4695)
!4699 = !DILocation(line: 345, column: 3, scope: !4695)
!4700 = !DILocation(line: 347, column: 10, scope: !4677)
!4701 = !DILocation(line: 347, column: 2, scope: !4677)
!4702 = !DILocation(line: 349, column: 18, scope: !4703)
!4703 = distinct !DILexicalBlock(scope: !4677, file: !3, line: 347, column: 19)
!4704 = !DILocation(line: 349, column: 17, scope: !4703)
!4705 = !DILocation(line: 349, column: 3, scope: !4703)
!4706 = !DILocation(line: 349, column: 6, scope: !4703)
!4707 = !DILocation(line: 349, column: 14, scope: !4703)
!4708 = !DILocation(line: 350, column: 3, scope: !4703)
!4709 = !DILocation(line: 353, column: 17, scope: !4703)
!4710 = !DILocation(line: 353, column: 3, scope: !4703)
!4711 = !DILocation(line: 353, column: 6, scope: !4703)
!4712 = !DILocation(line: 353, column: 14, scope: !4703)
!4713 = !DILocation(line: 354, column: 3, scope: !4703)
!4714 = !DILocation(line: 357, column: 14, scope: !4703)
!4715 = !DILocation(line: 357, column: 17, scope: !4703)
!4716 = !DILocation(line: 357, column: 27, scope: !4703)
!4717 = !DILocation(line: 357, column: 25, scope: !4703)
!4718 = !DILocation(line: 357, column: 13, scope: !4703)
!4719 = !DILocation(line: 357, column: 3, scope: !4703)
!4720 = !DILocation(line: 357, column: 11, scope: !4703)
!4721 = !DILocation(line: 358, column: 10, scope: !4703)
!4722 = !DILocation(line: 358, column: 16, scope: !4703)
!4723 = !DILocation(line: 358, column: 3, scope: !4703)
!4724 = !DILocation(line: 361, column: 3, scope: !4703)
!4725 = !DILocation(line: 364, column: 2, scope: !4677)
!4726 = !DILocation(line: 365, column: 1, scope: !4677)
!4727 = distinct !DISubprogram(name: "comedi_dio_update_state", scope: !3, file: !3, line: 382, type: !4728, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4728 = !DISubroutineType(types: !4729)
!4729 = !{!7, !3782, !2653}
!4730 = !DILocalVariable(name: "s", arg: 1, scope: !4727, file: !3, line: 382, type: !3782)
!4731 = !DILocation(line: 382, column: 63, scope: !4727)
!4732 = !DILocalVariable(name: "data", arg: 2, scope: !4727, file: !3, line: 383, type: !2653)
!4733 = !DILocation(line: 383, column: 24, scope: !4727)
!4734 = !DILocalVariable(name: "chanmask", scope: !4727, file: !3, line: 385, type: !7)
!4735 = !DILocation(line: 385, column: 15, scope: !4727)
!4736 = !DILocation(line: 385, column: 27, scope: !4727)
!4737 = !DILocation(line: 385, column: 30, scope: !4727)
!4738 = !DILocation(line: 385, column: 37, scope: !4727)
!4739 = !DILocation(line: 385, column: 26, scope: !4727)
!4740 = !DILocation(line: 385, column: 52, scope: !4727)
!4741 = !DILocation(line: 385, column: 55, scope: !4727)
!4742 = !DILocation(line: 385, column: 49, scope: !4727)
!4743 = !DILocation(line: 385, column: 63, scope: !4727)
!4744 = !DILocalVariable(name: "mask", scope: !4727, file: !3, line: 387, type: !7)
!4745 = !DILocation(line: 387, column: 15, scope: !4727)
!4746 = !DILocation(line: 387, column: 22, scope: !4727)
!4747 = !DILocation(line: 387, column: 32, scope: !4727)
!4748 = !DILocation(line: 387, column: 30, scope: !4727)
!4749 = !DILocalVariable(name: "bits", scope: !4727, file: !3, line: 388, type: !7)
!4750 = !DILocation(line: 388, column: 15, scope: !4727)
!4751 = !DILocation(line: 388, column: 22, scope: !4727)
!4752 = !DILocation(line: 390, column: 6, scope: !4753)
!4753 = distinct !DILexicalBlock(scope: !4727, file: !3, line: 390, column: 6)
!4754 = !DILocation(line: 390, column: 6, scope: !4727)
!4755 = !DILocation(line: 391, column: 16, scope: !4756)
!4756 = distinct !DILexicalBlock(scope: !4753, file: !3, line: 390, column: 12)
!4757 = !DILocation(line: 391, column: 15, scope: !4756)
!4758 = !DILocation(line: 391, column: 3, scope: !4756)
!4759 = !DILocation(line: 391, column: 6, scope: !4756)
!4760 = !DILocation(line: 391, column: 12, scope: !4756)
!4761 = !DILocation(line: 392, column: 16, scope: !4756)
!4762 = !DILocation(line: 392, column: 23, scope: !4756)
!4763 = !DILocation(line: 392, column: 21, scope: !4756)
!4764 = !DILocation(line: 392, column: 3, scope: !4756)
!4765 = !DILocation(line: 392, column: 6, scope: !4756)
!4766 = !DILocation(line: 392, column: 12, scope: !4756)
!4767 = !DILocation(line: 393, column: 2, scope: !4756)
!4768 = !DILocation(line: 395, column: 9, scope: !4727)
!4769 = !DILocation(line: 395, column: 2, scope: !4727)
!4770 = distinct !DISubprogram(name: "comedi_bytes_per_scan_cmd", scope: !3, file: !3, line: 416, type: !4771, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4771 = !DISubroutineType(types: !4772)
!4772 = !{!7, !3782, !3902}
!4773 = !DILocalVariable(name: "s", arg: 1, scope: !4770, file: !3, line: 416, type: !3782)
!4774 = !DILocation(line: 416, column: 65, scope: !4770)
!4775 = !DILocalVariable(name: "cmd", arg: 2, scope: !4770, file: !3, line: 417, type: !3902)
!4776 = !DILocation(line: 417, column: 31, scope: !4770)
!4777 = !DILocalVariable(name: "num_samples", scope: !4770, file: !3, line: 419, type: !7)
!4778 = !DILocation(line: 419, column: 15, scope: !4770)
!4779 = !DILocalVariable(name: "bits_per_sample", scope: !4770, file: !3, line: 420, type: !7)
!4780 = !DILocation(line: 420, column: 15, scope: !4770)
!4781 = !DILocation(line: 422, column: 10, scope: !4770)
!4782 = !DILocation(line: 422, column: 13, scope: !4770)
!4783 = !DILocation(line: 422, column: 2, scope: !4770)
!4784 = !DILocation(line: 426, column: 49, scope: !4785)
!4785 = distinct !DILexicalBlock(scope: !4770, file: !3, line: 422, column: 19)
!4786 = !DILocation(line: 426, column: 25, scope: !4785)
!4787 = !DILocation(line: 426, column: 23, scope: !4785)
!4788 = !DILocation(line: 426, column: 19, scope: !4785)
!4789 = !DILocation(line: 427, column: 17, scope: !4785)
!4790 = !DILocation(line: 427, column: 15, scope: !4785)
!4791 = !DILocation(line: 428, column: 3, scope: !4785)
!4792 = !DILocation(line: 430, column: 17, scope: !4785)
!4793 = !DILocation(line: 430, column: 22, scope: !4785)
!4794 = !DILocation(line: 430, column: 15, scope: !4785)
!4795 = !DILocation(line: 431, column: 3, scope: !4785)
!4796 = !DILocation(line: 433, column: 33, scope: !4770)
!4797 = !DILocation(line: 433, column: 36, scope: !4770)
!4798 = !DILocation(line: 433, column: 9, scope: !4770)
!4799 = !DILocation(line: 433, column: 2, scope: !4770)
!4800 = distinct !DISubprogram(name: "comedi_bytes_per_sample", scope: !112, file: !112, line: 797, type: !4801, scopeLine: 798, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4801 = !DISubroutineType(types: !4802)
!4802 = !{!7, !3782}
!4803 = !DILocalVariable(name: "s", arg: 1, scope: !4800, file: !112, line: 797, type: !3782)
!4804 = !DILocation(line: 797, column: 77, scope: !4800)
!4805 = !DILocation(line: 799, column: 9, scope: !4800)
!4806 = !DILocation(line: 799, column: 12, scope: !4800)
!4807 = !DILocation(line: 799, column: 25, scope: !4800)
!4808 = !DILocation(line: 799, column: 2, scope: !4800)
!4809 = distinct !DISubprogram(name: "comedi_samples_to_bytes", scope: !112, file: !112, line: 839, type: !4810, scopeLine: 841, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4810 = !DISubroutineType(types: !4811)
!4811 = !{!7, !3782, !7}
!4812 = !DILocalVariable(name: "s", arg: 1, scope: !4809, file: !112, line: 839, type: !3782)
!4813 = !DILocation(line: 839, column: 77, scope: !4809)
!4814 = !DILocalVariable(name: "nsamples", arg: 2, scope: !4809, file: !112, line: 840, type: !7)
!4815 = !DILocation(line: 840, column: 23, scope: !4809)
!4816 = !DILocation(line: 842, column: 9, scope: !4809)
!4817 = !DILocation(line: 842, column: 41, scope: !4809)
!4818 = !DILocation(line: 842, column: 21, scope: !4809)
!4819 = !DILocation(line: 842, column: 18, scope: !4809)
!4820 = !DILocation(line: 842, column: 2, scope: !4809)
!4821 = distinct !DISubprogram(name: "comedi_bytes_per_scan", scope: !3, file: !3, line: 452, type: !4801, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4822 = !DILocalVariable(name: "s", arg: 1, scope: !4821, file: !3, line: 452, type: !3782)
!4823 = !DILocation(line: 452, column: 61, scope: !4821)
!4824 = !DILocalVariable(name: "cmd", scope: !4821, file: !3, line: 454, type: !3902)
!4825 = !DILocation(line: 454, column: 21, scope: !4821)
!4826 = !DILocation(line: 454, column: 28, scope: !4821)
!4827 = !DILocation(line: 454, column: 31, scope: !4821)
!4828 = !DILocation(line: 454, column: 38, scope: !4821)
!4829 = !DILocation(line: 456, column: 35, scope: !4821)
!4830 = !DILocation(line: 456, column: 38, scope: !4821)
!4831 = !DILocation(line: 456, column: 9, scope: !4821)
!4832 = !DILocation(line: 456, column: 2, scope: !4821)
!4833 = distinct !DISubprogram(name: "comedi_nscans_left", scope: !3, file: !3, line: 492, type: !4810, scopeLine: 494, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4834 = !DILocalVariable(name: "s", arg: 1, scope: !4833, file: !3, line: 492, type: !3782)
!4835 = !DILocation(line: 492, column: 58, scope: !4833)
!4836 = !DILocalVariable(name: "nscans", arg: 2, scope: !4833, file: !3, line: 493, type: !7)
!4837 = !DILocation(line: 493, column: 18, scope: !4833)
!4838 = !DILocation(line: 495, column: 6, scope: !4839)
!4839 = distinct !DILexicalBlock(scope: !4833, file: !3, line: 495, column: 6)
!4840 = !DILocation(line: 495, column: 13, scope: !4839)
!4841 = !DILocation(line: 495, column: 6, scope: !4833)
!4842 = !DILocalVariable(name: "nbytes", scope: !4843, file: !3, line: 496, type: !7)
!4843 = distinct !DILexicalBlock(scope: !4839, file: !3, line: 495, column: 19)
!4844 = !DILocation(line: 496, column: 16, scope: !4843)
!4845 = !DILocation(line: 496, column: 53, scope: !4843)
!4846 = !DILocation(line: 496, column: 25, scope: !4843)
!4847 = !DILocation(line: 498, column: 12, scope: !4843)
!4848 = !DILocation(line: 498, column: 43, scope: !4843)
!4849 = !DILocation(line: 498, column: 21, scope: !4843)
!4850 = !DILocation(line: 498, column: 19, scope: !4843)
!4851 = !DILocation(line: 498, column: 10, scope: !4843)
!4852 = !DILocation(line: 499, column: 2, scope: !4843)
!4853 = !DILocation(line: 500, column: 30, scope: !4833)
!4854 = !DILocation(line: 500, column: 33, scope: !4833)
!4855 = !DILocation(line: 500, column: 9, scope: !4833)
!4856 = !DILocation(line: 500, column: 2, scope: !4833)
!4857 = distinct !DISubprogram(name: "__comedi_nscans_left", scope: !3, file: !3, line: 460, type: !4810, scopeLine: 462, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4858 = !DILocalVariable(name: "s", arg: 1, scope: !4857, file: !3, line: 460, type: !3782)
!4859 = !DILocation(line: 460, column: 67, scope: !4857)
!4860 = !DILocalVariable(name: "nscans", arg: 2, scope: !4857, file: !3, line: 461, type: !7)
!4861 = !DILocation(line: 461, column: 20, scope: !4857)
!4862 = !DILocalVariable(name: "async", scope: !4857, file: !3, line: 463, type: !3793)
!4863 = !DILocation(line: 463, column: 23, scope: !4857)
!4864 = !DILocation(line: 463, column: 31, scope: !4857)
!4865 = !DILocation(line: 463, column: 34, scope: !4857)
!4866 = !DILocalVariable(name: "cmd", scope: !4857, file: !3, line: 464, type: !3902)
!4867 = !DILocation(line: 464, column: 21, scope: !4857)
!4868 = !DILocation(line: 464, column: 28, scope: !4857)
!4869 = !DILocation(line: 464, column: 35, scope: !4857)
!4870 = !DILocation(line: 466, column: 6, scope: !4871)
!4871 = distinct !DILexicalBlock(scope: !4857, file: !3, line: 466, column: 6)
!4872 = !DILocation(line: 466, column: 11, scope: !4871)
!4873 = !DILocation(line: 466, column: 20, scope: !4871)
!4874 = !DILocation(line: 466, column: 6, scope: !4857)
!4875 = !DILocalVariable(name: "scans_left", scope: !4876, file: !3, line: 467, type: !7)
!4876 = distinct !DILexicalBlock(scope: !4871, file: !3, line: 466, column: 35)
!4877 = !DILocation(line: 467, column: 16, scope: !4876)
!4878 = !DILocation(line: 469, column: 7, scope: !4879)
!4879 = distinct !DILexicalBlock(scope: !4876, file: !3, line: 469, column: 7)
!4880 = !DILocation(line: 469, column: 14, scope: !4879)
!4881 = !DILocation(line: 469, column: 27, scope: !4879)
!4882 = !DILocation(line: 469, column: 32, scope: !4879)
!4883 = !DILocation(line: 469, column: 25, scope: !4879)
!4884 = !DILocation(line: 469, column: 7, scope: !4876)
!4885 = !DILocation(line: 470, column: 17, scope: !4879)
!4886 = !DILocation(line: 470, column: 22, scope: !4879)
!4887 = !DILocation(line: 470, column: 33, scope: !4879)
!4888 = !DILocation(line: 470, column: 40, scope: !4879)
!4889 = !DILocation(line: 470, column: 31, scope: !4879)
!4890 = !DILocation(line: 470, column: 15, scope: !4879)
!4891 = !DILocation(line: 470, column: 4, scope: !4879)
!4892 = !DILocation(line: 472, column: 7, scope: !4893)
!4893 = distinct !DILexicalBlock(scope: !4876, file: !3, line: 472, column: 7)
!4894 = !DILocation(line: 472, column: 16, scope: !4893)
!4895 = !DILocation(line: 472, column: 14, scope: !4893)
!4896 = !DILocation(line: 472, column: 7, scope: !4876)
!4897 = !DILocation(line: 473, column: 13, scope: !4893)
!4898 = !DILocation(line: 473, column: 11, scope: !4893)
!4899 = !DILocation(line: 473, column: 4, scope: !4893)
!4900 = !DILocation(line: 474, column: 2, scope: !4876)
!4901 = !DILocation(line: 475, column: 9, scope: !4857)
!4902 = !DILocation(line: 475, column: 2, scope: !4857)
!4903 = distinct !DISubprogram(name: "comedi_nsamples_left", scope: !3, file: !3, line: 512, type: !4810, scopeLine: 514, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4904 = !DILocalVariable(name: "s", arg: 1, scope: !4903, file: !3, line: 512, type: !3782)
!4905 = !DILocation(line: 512, column: 60, scope: !4903)
!4906 = !DILocalVariable(name: "nsamples", arg: 2, scope: !4903, file: !3, line: 513, type: !7)
!4907 = !DILocation(line: 513, column: 20, scope: !4903)
!4908 = !DILocalVariable(name: "async", scope: !4903, file: !3, line: 515, type: !3793)
!4909 = !DILocation(line: 515, column: 23, scope: !4903)
!4910 = !DILocation(line: 515, column: 31, scope: !4903)
!4911 = !DILocation(line: 515, column: 34, scope: !4903)
!4912 = !DILocalVariable(name: "cmd", scope: !4903, file: !3, line: 516, type: !3902)
!4913 = !DILocation(line: 516, column: 21, scope: !4903)
!4914 = !DILocation(line: 516, column: 28, scope: !4903)
!4915 = !DILocation(line: 516, column: 35, scope: !4903)
!4916 = !DILocalVariable(name: "scans_left", scope: !4903, file: !3, line: 517, type: !392)
!4917 = !DILocation(line: 517, column: 21, scope: !4903)
!4918 = !DILocalVariable(name: "samples_left", scope: !4903, file: !3, line: 518, type: !392)
!4919 = !DILocation(line: 518, column: 21, scope: !4903)
!4920 = !DILocation(line: 520, column: 6, scope: !4921)
!4921 = distinct !DILexicalBlock(scope: !4903, file: !3, line: 520, column: 6)
!4922 = !DILocation(line: 520, column: 11, scope: !4921)
!4923 = !DILocation(line: 520, column: 20, scope: !4921)
!4924 = !DILocation(line: 520, column: 6, scope: !4903)
!4925 = !DILocation(line: 521, column: 10, scope: !4921)
!4926 = !DILocation(line: 521, column: 3, scope: !4921)
!4927 = !DILocation(line: 523, column: 36, scope: !4903)
!4928 = !DILocation(line: 523, column: 39, scope: !4903)
!4929 = !DILocation(line: 523, column: 44, scope: !4903)
!4930 = !DILocation(line: 523, column: 15, scope: !4903)
!4931 = !DILocation(line: 523, column: 13, scope: !4903)
!4932 = !DILocation(line: 524, column: 7, scope: !4933)
!4933 = distinct !DILexicalBlock(scope: !4903, file: !3, line: 524, column: 6)
!4934 = !DILocation(line: 524, column: 6, scope: !4903)
!4935 = !DILocation(line: 525, column: 3, scope: !4933)
!4936 = !DILocation(line: 527, column: 17, scope: !4903)
!4937 = !DILocation(line: 527, column: 30, scope: !4903)
!4938 = !DILocation(line: 527, column: 35, scope: !4903)
!4939 = !DILocation(line: 527, column: 28, scope: !4903)
!4940 = !DILocation(line: 528, column: 27, scope: !4903)
!4941 = !DILocation(line: 528, column: 30, scope: !4903)
!4942 = !DILocation(line: 528, column: 37, scope: !4903)
!4943 = !DILocation(line: 528, column: 3, scope: !4903)
!4944 = !DILocation(line: 527, column: 48, scope: !4903)
!4945 = !DILocation(line: 527, column: 15, scope: !4903)
!4946 = !DILocation(line: 530, column: 6, scope: !4947)
!4947 = distinct !DILexicalBlock(scope: !4903, file: !3, line: 530, column: 6)
!4948 = !DILocation(line: 530, column: 21, scope: !4947)
!4949 = !DILocation(line: 530, column: 19, scope: !4947)
!4950 = !DILocation(line: 530, column: 6, scope: !4903)
!4951 = !DILocation(line: 531, column: 10, scope: !4947)
!4952 = !DILocation(line: 531, column: 3, scope: !4947)
!4953 = !DILocation(line: 532, column: 9, scope: !4903)
!4954 = !DILocation(line: 532, column: 2, scope: !4903)
!4955 = !DILocation(line: 533, column: 1, scope: !4903)
!4956 = distinct !DISubprogram(name: "comedi_bytes_to_samples", scope: !112, file: !112, line: 825, type: !4810, scopeLine: 827, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4957 = !DILocalVariable(name: "s", arg: 1, scope: !4956, file: !112, line: 825, type: !3782)
!4958 = !DILocation(line: 825, column: 77, scope: !4956)
!4959 = !DILocalVariable(name: "nbytes", arg: 2, scope: !4956, file: !112, line: 826, type: !7)
!4960 = !DILocation(line: 826, column: 23, scope: !4956)
!4961 = !DILocation(line: 828, column: 9, scope: !4956)
!4962 = !DILocation(line: 828, column: 39, scope: !4956)
!4963 = !DILocation(line: 828, column: 19, scope: !4956)
!4964 = !DILocation(line: 828, column: 16, scope: !4956)
!4965 = !DILocation(line: 828, column: 2, scope: !4956)
!4966 = distinct !DISubprogram(name: "comedi_inc_scan_progress", scope: !3, file: !3, line: 546, type: !4967, scopeLine: 548, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4967 = !DISubroutineType(types: !4968)
!4968 = !{null, !3782, !7}
!4969 = !DILocalVariable(name: "s", arg: 1, scope: !4966, file: !3, line: 546, type: !3782)
!4970 = !DILocation(line: 546, column: 56, scope: !4966)
!4971 = !DILocalVariable(name: "num_bytes", arg: 2, scope: !4966, file: !3, line: 547, type: !7)
!4972 = !DILocation(line: 547, column: 23, scope: !4966)
!4973 = !DILocalVariable(name: "async", scope: !4966, file: !3, line: 549, type: !3793)
!4974 = !DILocation(line: 549, column: 23, scope: !4966)
!4975 = !DILocation(line: 549, column: 31, scope: !4966)
!4976 = !DILocation(line: 549, column: 34, scope: !4966)
!4977 = !DILocalVariable(name: "cmd", scope: !4966, file: !3, line: 550, type: !3902)
!4978 = !DILocation(line: 550, column: 21, scope: !4966)
!4979 = !DILocation(line: 550, column: 28, scope: !4966)
!4980 = !DILocation(line: 550, column: 35, scope: !4966)
!4981 = !DILocalVariable(name: "scan_length", scope: !4966, file: !3, line: 551, type: !7)
!4982 = !DILocation(line: 551, column: 15, scope: !4966)
!4983 = !DILocation(line: 551, column: 51, scope: !4966)
!4984 = !DILocation(line: 551, column: 29, scope: !4966)
!4985 = !DILocation(line: 554, column: 8, scope: !4986)
!4986 = distinct !DILexicalBlock(scope: !4966, file: !3, line: 554, column: 6)
!4987 = !DILocation(line: 554, column: 11, scope: !4986)
!4988 = !DILocation(line: 554, column: 24, scope: !4986)
!4989 = !DILocation(line: 554, column: 6, scope: !4966)
!4990 = !DILocation(line: 555, column: 46, scope: !4991)
!4991 = distinct !DILexicalBlock(scope: !4986, file: !3, line: 554, column: 39)
!4992 = !DILocation(line: 555, column: 49, scope: !4991)
!4993 = !DILocation(line: 555, column: 22, scope: !4991)
!4994 = !DILocation(line: 555, column: 3, scope: !4991)
!4995 = !DILocation(line: 555, column: 10, scope: !4991)
!4996 = !DILocation(line: 555, column: 19, scope: !4991)
!4997 = !DILocation(line: 556, column: 22, scope: !4991)
!4998 = !DILocation(line: 556, column: 27, scope: !4991)
!4999 = !DILocation(line: 556, column: 3, scope: !4991)
!5000 = !DILocation(line: 556, column: 10, scope: !4991)
!5001 = !DILocation(line: 556, column: 19, scope: !4991)
!5002 = !DILocation(line: 557, column: 2, scope: !4991)
!5003 = !DILocation(line: 559, column: 26, scope: !4966)
!5004 = !DILocation(line: 559, column: 2, scope: !4966)
!5005 = !DILocation(line: 559, column: 9, scope: !4966)
!5006 = !DILocation(line: 559, column: 23, scope: !4966)
!5007 = !DILocation(line: 560, column: 6, scope: !5008)
!5008 = distinct !DILexicalBlock(scope: !4966, file: !3, line: 560, column: 6)
!5009 = !DILocation(line: 560, column: 13, scope: !5008)
!5010 = !DILocation(line: 560, column: 30, scope: !5008)
!5011 = !DILocation(line: 560, column: 27, scope: !5008)
!5012 = !DILocation(line: 560, column: 6, scope: !4966)
!5013 = !DILocalVariable(name: "nscans", scope: !5014, file: !3, line: 561, type: !7)
!5014 = distinct !DILexicalBlock(scope: !5008, file: !3, line: 560, column: 43)
!5015 = !DILocation(line: 561, column: 16, scope: !5014)
!5016 = !DILocation(line: 561, column: 25, scope: !5014)
!5017 = !DILocation(line: 561, column: 32, scope: !5014)
!5018 = !DILocation(line: 561, column: 48, scope: !5014)
!5019 = !DILocation(line: 561, column: 46, scope: !5014)
!5020 = !DILocation(line: 563, column: 7, scope: !5021)
!5021 = distinct !DILexicalBlock(scope: !5014, file: !3, line: 563, column: 7)
!5022 = !DILocation(line: 563, column: 14, scope: !5021)
!5023 = !DILocation(line: 563, column: 39, scope: !5021)
!5024 = !DILocation(line: 563, column: 37, scope: !5021)
!5025 = !DILocation(line: 563, column: 25, scope: !5021)
!5026 = !DILocation(line: 563, column: 7, scope: !5014)
!5027 = !DILocation(line: 564, column: 25, scope: !5021)
!5028 = !DILocation(line: 564, column: 4, scope: !5021)
!5029 = !DILocation(line: 564, column: 11, scope: !5021)
!5030 = !DILocation(line: 564, column: 22, scope: !5021)
!5031 = !DILocation(line: 566, column: 4, scope: !5021)
!5032 = !DILocation(line: 566, column: 11, scope: !5021)
!5033 = !DILocation(line: 566, column: 22, scope: !5021)
!5034 = !DILocation(line: 568, column: 27, scope: !5014)
!5035 = !DILocation(line: 568, column: 3, scope: !5014)
!5036 = !DILocation(line: 568, column: 10, scope: !5014)
!5037 = !DILocation(line: 568, column: 24, scope: !5014)
!5038 = !DILocation(line: 569, column: 3, scope: !5014)
!5039 = !DILocation(line: 569, column: 10, scope: !5014)
!5040 = !DILocation(line: 569, column: 17, scope: !5014)
!5041 = !DILocation(line: 570, column: 2, scope: !5014)
!5042 = !DILocation(line: 571, column: 1, scope: !4966)
!5043 = distinct !DISubprogram(name: "comedi_handle_events", scope: !3, file: !3, line: 590, type: !5044, scopeLine: 592, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !219)
!5044 = !DISubroutineType(types: !5045)
!5045 = !{!7, !173, !3782}
!5046 = !DILocalVariable(name: "dev", arg: 1, scope: !5043, file: !3, line: 590, type: !173)
!5047 = !DILocation(line: 590, column: 57, scope: !5043)
!5048 = !DILocalVariable(name: "s", arg: 2, scope: !5043, file: !3, line: 591, type: !3782)
!5049 = !DILocation(line: 591, column: 32, scope: !5043)
!5050 = !DILocalVariable(name: "events", scope: !5043, file: !3, line: 593, type: !7)
!5051 = !DILocation(line: 593, column: 15, scope: !5043)
!5052 = !DILocation(line: 593, column: 24, scope: !5043)
!5053 = !DILocation(line: 593, column: 27, scope: !5043)
!5054 = !DILocation(line: 593, column: 34, scope: !5043)
!5055 = !DILocation(line: 595, column: 6, scope: !5056)
!5056 = distinct !DILexicalBlock(scope: !5043, file: !3, line: 595, column: 6)
!5057 = !DILocation(line: 595, column: 13, scope: !5056)
!5058 = !DILocation(line: 595, column: 6, scope: !5043)
!5059 = !DILocation(line: 596, column: 10, scope: !5056)
!5060 = !DILocation(line: 596, column: 3, scope: !5056)
!5061 = !DILocation(line: 598, column: 7, scope: !5062)
!5062 = distinct !DILexicalBlock(scope: !5043, file: !3, line: 598, column: 6)
!5063 = !DILocation(line: 598, column: 14, scope: !5062)
!5064 = !DILocation(line: 598, column: 39, scope: !5062)
!5065 = !DILocation(line: 598, column: 42, scope: !5062)
!5066 = !DILocation(line: 598, column: 45, scope: !5062)
!5067 = !DILocation(line: 598, column: 6, scope: !5043)
!5068 = !DILocation(line: 599, column: 3, scope: !5062)
!5069 = !DILocation(line: 599, column: 6, scope: !5062)
!5070 = !DILocation(line: 599, column: 13, scope: !5062)
!5071 = !DILocation(line: 599, column: 18, scope: !5062)
!5072 = !DILocation(line: 601, column: 15, scope: !5043)
!5073 = !DILocation(line: 601, column: 20, scope: !5043)
!5074 = !DILocation(line: 601, column: 2, scope: !5043)
!5075 = !DILocation(line: 603, column: 9, scope: !5043)
!5076 = !DILocation(line: 603, column: 2, scope: !5043)
!5077 = !DILocation(line: 604, column: 1, scope: !5043)
!5078 = distinct !DISubprogram(name: "comedi_load_firmware", scope: !3, file: !3, line: 838, type: !5079, scopeLine: 845, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !219)
!5079 = !DISubroutineType(types: !5080)
!5080 = !{!153, !173, !183, !149, !5081, !156}
!5081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5082, size: 64)
!5082 = !DISubroutineType(types: !5083)
!5083 = !{!153, !173, !5084, !291, !156}
!5084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5085, size: 64)
!5085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1321)
!5086 = !DILocalVariable(name: "dev", arg: 1, scope: !5078, file: !3, line: 838, type: !173)
!5087 = !DILocation(line: 838, column: 48, scope: !5078)
!5088 = !DILocalVariable(name: "device", arg: 2, scope: !5078, file: !3, line: 839, type: !183)
!5089 = !DILocation(line: 839, column: 20, scope: !5078)
!5090 = !DILocalVariable(name: "name", arg: 3, scope: !5078, file: !3, line: 840, type: !149)
!5091 = !DILocation(line: 840, column: 17, scope: !5078)
!5092 = !DILocalVariable(name: "cb", arg: 4, scope: !5078, file: !3, line: 841, type: !5081)
!5093 = !DILocation(line: 841, column: 11, scope: !5078)
!5094 = !DILocalVariable(name: "context", arg: 5, scope: !5078, file: !3, line: 844, type: !156)
!5095 = !DILocation(line: 844, column: 19, scope: !5078)
!5096 = !DILocalVariable(name: "fw", scope: !5078, file: !3, line: 846, type: !5097)
!5097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5098, size: 64)
!5098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5099)
!5099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "firmware", file: !5100, line: 12, size: 192, elements: !5101)
!5100 = !DIFile(filename: "./include/linux/firmware.h", directory: "/home/lizy2001/genbc/linux")
!5101 = !{!5102, !5103, !5104}
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5099, file: !5100, line: 13, baseType: !291, size: 64)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5099, file: !5100, line: 14, baseType: !5084, size: 64, offset: 64)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5099, file: !5100, line: 17, baseType: !152, size: 64, offset: 128)
!5105 = !DILocation(line: 846, column: 25, scope: !5078)
!5106 = !DILocalVariable(name: "ret", scope: !5078, file: !3, line: 847, type: !153)
!5107 = !DILocation(line: 847, column: 6, scope: !5078)
!5108 = !DILocation(line: 849, column: 7, scope: !5109)
!5109 = distinct !DILexicalBlock(scope: !5078, file: !3, line: 849, column: 6)
!5110 = !DILocation(line: 849, column: 6, scope: !5078)
!5111 = !DILocation(line: 850, column: 3, scope: !5109)
!5112 = !DILocation(line: 852, column: 30, scope: !5078)
!5113 = !DILocation(line: 852, column: 36, scope: !5078)
!5114 = !DILocation(line: 852, column: 8, scope: !5078)
!5115 = !DILocation(line: 852, column: 6, scope: !5078)
!5116 = !DILocation(line: 853, column: 6, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !5078, file: !3, line: 853, column: 6)
!5118 = !DILocation(line: 853, column: 10, scope: !5117)
!5119 = !DILocation(line: 853, column: 6, scope: !5078)
!5120 = !DILocation(line: 854, column: 9, scope: !5121)
!5121 = distinct !DILexicalBlock(scope: !5117, file: !3, line: 853, column: 16)
!5122 = !DILocation(line: 854, column: 12, scope: !5121)
!5123 = !DILocation(line: 854, column: 17, scope: !5121)
!5124 = !DILocation(line: 854, column: 21, scope: !5121)
!5125 = !DILocation(line: 854, column: 27, scope: !5121)
!5126 = !DILocation(line: 854, column: 31, scope: !5121)
!5127 = !DILocation(line: 854, column: 37, scope: !5121)
!5128 = !DILocation(line: 854, column: 7, scope: !5121)
!5129 = !DILocation(line: 855, column: 20, scope: !5121)
!5130 = !DILocation(line: 855, column: 3, scope: !5121)
!5131 = !DILocation(line: 856, column: 2, scope: !5121)
!5132 = !DILocation(line: 858, column: 9, scope: !5078)
!5133 = !DILocation(line: 858, column: 13, scope: !5078)
!5134 = !DILocation(line: 858, column: 19, scope: !5078)
!5135 = !DILocation(line: 858, column: 2, scope: !5078)
!5136 = !DILocation(line: 859, column: 1, scope: !5078)
!5137 = distinct !DISubprogram(name: "__comedi_request_region", scope: !3, file: !3, line: 874, type: !5138, scopeLine: 876, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !219)
!5138 = !DISubroutineType(types: !5139)
!5139 = !{!153, !173, !156, !156}
!5140 = !DILocalVariable(name: "dev", arg: 1, scope: !5137, file: !3, line: 874, type: !173)
!5141 = !DILocation(line: 874, column: 51, scope: !5137)
!5142 = !DILocalVariable(name: "start", arg: 2, scope: !5137, file: !3, line: 875, type: !156)
!5143 = !DILocation(line: 875, column: 22, scope: !5137)
!5144 = !DILocalVariable(name: "len", arg: 3, scope: !5137, file: !3, line: 875, type: !156)
!5145 = !DILocation(line: 875, column: 43, scope: !5137)
!5146 = !DILocation(line: 877, column: 7, scope: !5147)
!5147 = distinct !DILexicalBlock(scope: !5137, file: !3, line: 877, column: 6)
!5148 = !DILocation(line: 877, column: 6, scope: !5137)
!5149 = !DILocation(line: 878, column: 3, scope: !5150)
!5150 = distinct !DILexicalBlock(scope: !5147, file: !3, line: 877, column: 14)
!5151 = !DILocation(line: 881, column: 3, scope: !5150)
!5152 = !DILocation(line: 884, column: 7, scope: !5153)
!5153 = distinct !DILexicalBlock(scope: !5137, file: !3, line: 884, column: 6)
!5154 = !DILocation(line: 884, column: 6, scope: !5137)
!5155 = !DILocation(line: 885, column: 3, scope: !5156)
!5156 = distinct !DILexicalBlock(scope: !5153, file: !3, line: 884, column: 52)
!5157 = !DILocation(line: 887, column: 3, scope: !5156)
!5158 = !DILocation(line: 890, column: 2, scope: !5137)
!5159 = !DILocation(line: 891, column: 1, scope: !5137)
!5160 = distinct !DISubprogram(name: "comedi_request_region", scope: !3, file: !3, line: 909, type: !5138, scopeLine: 911, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !219)
!5161 = !DILocalVariable(name: "dev", arg: 1, scope: !5160, file: !3, line: 909, type: !173)
!5162 = !DILocation(line: 909, column: 49, scope: !5160)
!5163 = !DILocalVariable(name: "start", arg: 2, scope: !5160, file: !3, line: 910, type: !156)
!5164 = !DILocation(line: 910, column: 20, scope: !5160)
!5165 = !DILocalVariable(name: "len", arg: 3, scope: !5160, file: !3, line: 910, type: !156)
!5166 = !DILocation(line: 910, column: 41, scope: !5160)
!5167 = !DILocalVariable(name: "ret", scope: !5160, file: !3, line: 912, type: !153)
!5168 = !DILocation(line: 912, column: 6, scope: !5160)
!5169 = !DILocation(line: 914, column: 32, scope: !5160)
!5170 = !DILocation(line: 914, column: 37, scope: !5160)
!5171 = !DILocation(line: 914, column: 44, scope: !5160)
!5172 = !DILocation(line: 914, column: 8, scope: !5160)
!5173 = !DILocation(line: 914, column: 6, scope: !5160)
!5174 = !DILocation(line: 915, column: 6, scope: !5175)
!5175 = distinct !DILexicalBlock(scope: !5160, file: !3, line: 915, column: 6)
!5176 = !DILocation(line: 915, column: 10, scope: !5175)
!5177 = !DILocation(line: 915, column: 6, scope: !5160)
!5178 = !DILocation(line: 916, column: 17, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !5175, file: !3, line: 915, column: 16)
!5180 = !DILocation(line: 916, column: 3, scope: !5179)
!5181 = !DILocation(line: 916, column: 8, scope: !5179)
!5182 = !DILocation(line: 916, column: 15, scope: !5179)
!5183 = !DILocation(line: 917, column: 16, scope: !5179)
!5184 = !DILocation(line: 917, column: 3, scope: !5179)
!5185 = !DILocation(line: 917, column: 8, scope: !5179)
!5186 = !DILocation(line: 917, column: 14, scope: !5179)
!5187 = !DILocation(line: 918, column: 2, scope: !5179)
!5188 = !DILocation(line: 920, column: 9, scope: !5160)
!5189 = !DILocation(line: 920, column: 2, scope: !5160)
!5190 = distinct !DISubprogram(name: "comedi_legacy_detach", scope: !3, file: !3, line: 936, type: !3928, scopeLine: 937, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !219)
!5191 = !DILocalVariable(name: "dev", arg: 1, scope: !5190, file: !3, line: 936, type: !173)
!5192 = !DILocation(line: 936, column: 49, scope: !5190)
!5193 = !DILocation(line: 938, column: 6, scope: !5194)
!5194 = distinct !DILexicalBlock(scope: !5190, file: !3, line: 938, column: 6)
!5195 = !DILocation(line: 938, column: 11, scope: !5194)
!5196 = !DILocation(line: 938, column: 6, scope: !5190)
!5197 = !DILocation(line: 939, column: 12, scope: !5198)
!5198 = distinct !DILexicalBlock(scope: !5194, file: !3, line: 938, column: 16)
!5199 = !DILocation(line: 939, column: 17, scope: !5198)
!5200 = !DILocation(line: 939, column: 22, scope: !5198)
!5201 = !DILocation(line: 939, column: 3, scope: !5198)
!5202 = !DILocation(line: 940, column: 3, scope: !5198)
!5203 = !DILocation(line: 940, column: 8, scope: !5198)
!5204 = !DILocation(line: 940, column: 12, scope: !5198)
!5205 = !DILocation(line: 941, column: 2, scope: !5198)
!5206 = !DILocation(line: 942, column: 6, scope: !5207)
!5207 = distinct !DILexicalBlock(scope: !5190, file: !3, line: 942, column: 6)
!5208 = !DILocation(line: 942, column: 11, scope: !5207)
!5209 = !DILocation(line: 942, column: 18, scope: !5207)
!5210 = !DILocation(line: 942, column: 21, scope: !5207)
!5211 = !DILocation(line: 942, column: 26, scope: !5207)
!5212 = !DILocation(line: 942, column: 6, scope: !5190)
!5213 = !DILocation(line: 943, column: 3, scope: !5214)
!5214 = distinct !DILexicalBlock(scope: !5207, file: !3, line: 942, column: 33)
!5215 = !DILocation(line: 944, column: 3, scope: !5214)
!5216 = !DILocation(line: 944, column: 8, scope: !5214)
!5217 = !DILocation(line: 944, column: 15, scope: !5214)
!5218 = !DILocation(line: 945, column: 3, scope: !5214)
!5219 = !DILocation(line: 945, column: 8, scope: !5214)
!5220 = !DILocation(line: 945, column: 14, scope: !5214)
!5221 = !DILocation(line: 946, column: 2, scope: !5214)
!5222 = !DILocation(line: 947, column: 1, scope: !5190)
!5223 = distinct !DISubprogram(name: "comedi_device_attach", scope: !3, file: !3, line: 950, type: !171, scopeLine: 951, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !219)
!5224 = !DILocalVariable(name: "dev", arg: 1, scope: !5223, file: !3, line: 950, type: !173)
!5225 = !DILocation(line: 950, column: 48, scope: !5223)
!5226 = !DILocalVariable(name: "it", arg: 2, scope: !5223, file: !3, line: 950, type: !3938)
!5227 = !DILocation(line: 950, column: 78, scope: !5223)
!5228 = !DILocalVariable(name: "driv", scope: !5223, file: !3, line: 952, type: !160)
!5229 = !DILocation(line: 952, column: 24, scope: !5223)
!5230 = !DILocalVariable(name: "ret", scope: !5223, file: !3, line: 953, type: !153)
!5231 = !DILocation(line: 953, column: 6, scope: !5223)
!5232 = !DILocation(line: 955, column: 2, scope: !5223)
!5233 = !DILocation(line: 955, column: 2, scope: !5234)
!5234 = distinct !DILexicalBlock(scope: !5223, file: !3, line: 955, column: 2)
!5235 = !DILocation(line: 956, column: 6, scope: !5236)
!5236 = distinct !DILexicalBlock(scope: !5223, file: !3, line: 956, column: 6)
!5237 = !DILocation(line: 956, column: 11, scope: !5236)
!5238 = !DILocation(line: 956, column: 6, scope: !5223)
!5239 = !DILocation(line: 957, column: 3, scope: !5236)
!5240 = !DILocation(line: 959, column: 2, scope: !5223)
!5241 = !DILocation(line: 960, column: 14, scope: !5242)
!5242 = distinct !DILexicalBlock(scope: !5223, file: !3, line: 960, column: 2)
!5243 = !DILocation(line: 960, column: 12, scope: !5242)
!5244 = !DILocation(line: 960, column: 7, scope: !5242)
!5245 = !DILocation(line: 960, column: 30, scope: !5246)
!5246 = distinct !DILexicalBlock(scope: !5242, file: !3, line: 960, column: 2)
!5247 = !DILocation(line: 960, column: 2, scope: !5242)
!5248 = !DILocation(line: 961, column: 23, scope: !5249)
!5249 = distinct !DILexicalBlock(scope: !5250, file: !3, line: 961, column: 7)
!5250 = distinct !DILexicalBlock(scope: !5246, file: !3, line: 960, column: 55)
!5251 = !DILocation(line: 961, column: 29, scope: !5249)
!5252 = !DILocation(line: 961, column: 8, scope: !5249)
!5253 = !DILocation(line: 961, column: 7, scope: !5250)
!5254 = !DILocation(line: 962, column: 4, scope: !5249)
!5255 = !DILocation(line: 963, column: 7, scope: !5256)
!5256 = distinct !DILexicalBlock(scope: !5250, file: !3, line: 963, column: 7)
!5257 = !DILocation(line: 963, column: 13, scope: !5256)
!5258 = !DILocation(line: 963, column: 7, scope: !5250)
!5259 = !DILocation(line: 964, column: 38, scope: !5260)
!5260 = distinct !DILexicalBlock(scope: !5256, file: !3, line: 963, column: 24)
!5261 = !DILocation(line: 964, column: 44, scope: !5260)
!5262 = !DILocation(line: 964, column: 48, scope: !5260)
!5263 = !DILocation(line: 964, column: 21, scope: !5260)
!5264 = !DILocation(line: 964, column: 4, scope: !5260)
!5265 = !DILocation(line: 964, column: 9, scope: !5260)
!5266 = !DILocation(line: 964, column: 19, scope: !5260)
!5267 = !DILocation(line: 965, column: 8, scope: !5268)
!5268 = distinct !DILexicalBlock(scope: !5260, file: !3, line: 965, column: 8)
!5269 = !DILocation(line: 965, column: 13, scope: !5268)
!5270 = !DILocation(line: 965, column: 8, scope: !5260)
!5271 = !DILocation(line: 966, column: 5, scope: !5268)
!5272 = !DILocation(line: 967, column: 3, scope: !5260)
!5273 = !DILocation(line: 967, column: 21, scope: !5274)
!5274 = distinct !DILexicalBlock(scope: !5256, file: !3, line: 967, column: 14)
!5275 = !DILocation(line: 967, column: 27, scope: !5274)
!5276 = !DILocation(line: 967, column: 40, scope: !5274)
!5277 = !DILocation(line: 967, column: 44, scope: !5274)
!5278 = !DILocation(line: 967, column: 14, scope: !5274)
!5279 = !DILocation(line: 967, column: 56, scope: !5274)
!5280 = !DILocation(line: 967, column: 14, scope: !5256)
!5281 = !DILocation(line: 968, column: 4, scope: !5282)
!5282 = distinct !DILexicalBlock(scope: !5274, file: !3, line: 967, column: 62)
!5283 = !DILocation(line: 970, column: 14, scope: !5250)
!5284 = !DILocation(line: 970, column: 20, scope: !5250)
!5285 = !DILocation(line: 970, column: 3, scope: !5250)
!5286 = !DILocation(line: 971, column: 2, scope: !5250)
!5287 = !DILocation(line: 960, column: 43, scope: !5246)
!5288 = !DILocation(line: 960, column: 49, scope: !5246)
!5289 = !DILocation(line: 960, column: 41, scope: !5246)
!5290 = !DILocation(line: 960, column: 2, scope: !5246)
!5291 = distinct !{!5291, !5247, !5292}
!5292 = !DILocation(line: 971, column: 2, scope: !5242)
!5293 = !DILocation(line: 972, column: 7, scope: !5294)
!5294 = distinct !DILexicalBlock(scope: !5223, file: !3, line: 972, column: 6)
!5295 = !DILocation(line: 972, column: 6, scope: !5223)
!5296 = !DILocation(line: 975, column: 15, scope: !5297)
!5297 = distinct !DILexicalBlock(scope: !5298, file: !3, line: 975, column: 3)
!5298 = distinct !DILexicalBlock(scope: !5294, file: !3, line: 972, column: 13)
!5299 = !DILocation(line: 975, column: 13, scope: !5297)
!5300 = !DILocation(line: 975, column: 8, scope: !5297)
!5301 = !DILocation(line: 975, column: 31, scope: !5302)
!5302 = distinct !DILexicalBlock(scope: !5297, file: !3, line: 975, column: 3)
!5303 = !DILocation(line: 975, column: 3, scope: !5297)
!5304 = !DILocation(line: 976, column: 24, scope: !5305)
!5305 = distinct !DILexicalBlock(scope: !5306, file: !3, line: 976, column: 8)
!5306 = distinct !DILexicalBlock(scope: !5302, file: !3, line: 975, column: 56)
!5307 = !DILocation(line: 976, column: 30, scope: !5305)
!5308 = !DILocation(line: 976, column: 9, scope: !5305)
!5309 = !DILocation(line: 976, column: 8, scope: !5306)
!5310 = !DILocation(line: 977, column: 5, scope: !5305)
!5311 = !DILocation(line: 978, column: 25, scope: !5306)
!5312 = !DILocation(line: 978, column: 4, scope: !5306)
!5313 = !DILocation(line: 979, column: 15, scope: !5306)
!5314 = !DILocation(line: 979, column: 21, scope: !5306)
!5315 = !DILocation(line: 979, column: 4, scope: !5306)
!5316 = !DILocation(line: 980, column: 3, scope: !5306)
!5317 = !DILocation(line: 975, column: 44, scope: !5302)
!5318 = !DILocation(line: 975, column: 50, scope: !5302)
!5319 = !DILocation(line: 975, column: 42, scope: !5302)
!5320 = !DILocation(line: 975, column: 3, scope: !5302)
!5321 = distinct !{!5321, !5303, !5322}
!5322 = !DILocation(line: 980, column: 3, scope: !5297)
!5323 = !DILocation(line: 981, column: 7, scope: !5298)
!5324 = !DILocation(line: 982, column: 3, scope: !5298)
!5325 = !DILocation(line: 984, column: 7, scope: !5326)
!5326 = distinct !DILexicalBlock(scope: !5223, file: !3, line: 984, column: 6)
!5327 = !DILocation(line: 984, column: 13, scope: !5326)
!5328 = !DILocation(line: 984, column: 6, scope: !5223)
!5329 = !DILocation(line: 986, column: 3, scope: !5330)
!5330 = distinct !DILexicalBlock(scope: !5326, file: !3, line: 984, column: 21)
!5331 = !DILocation(line: 989, column: 14, scope: !5330)
!5332 = !DILocation(line: 989, column: 20, scope: !5330)
!5333 = !DILocation(line: 989, column: 3, scope: !5330)
!5334 = !DILocation(line: 990, column: 7, scope: !5330)
!5335 = !DILocation(line: 991, column: 3, scope: !5330)
!5336 = !DILocation(line: 993, column: 16, scope: !5223)
!5337 = !DILocation(line: 993, column: 2, scope: !5223)
!5338 = !DILocation(line: 993, column: 7, scope: !5223)
!5339 = !DILocation(line: 993, column: 14, scope: !5223)
!5340 = !DILocation(line: 994, column: 20, scope: !5223)
!5341 = !DILocation(line: 994, column: 25, scope: !5223)
!5342 = !DILocation(line: 994, column: 53, scope: !5223)
!5343 = !DILocation(line: 994, column: 58, scope: !5223)
!5344 = !DILocation(line: 994, column: 38, scope: !5223)
!5345 = !DILocation(line: 994, column: 37, scope: !5223)
!5346 = !DILocation(line: 995, column: 9, scope: !5223)
!5347 = !DILocation(line: 995, column: 14, scope: !5223)
!5348 = !DILocation(line: 995, column: 22, scope: !5223)
!5349 = !DILocation(line: 994, column: 2, scope: !5223)
!5350 = !DILocation(line: 994, column: 7, scope: !5223)
!5351 = !DILocation(line: 994, column: 18, scope: !5223)
!5352 = !DILocation(line: 996, column: 8, scope: !5223)
!5353 = !DILocation(line: 996, column: 14, scope: !5223)
!5354 = !DILocation(line: 996, column: 21, scope: !5223)
!5355 = !DILocation(line: 996, column: 26, scope: !5223)
!5356 = !DILocation(line: 996, column: 6, scope: !5223)
!5357 = !DILocation(line: 997, column: 6, scope: !5358)
!5358 = distinct !DILexicalBlock(scope: !5223, file: !3, line: 997, column: 6)
!5359 = !DILocation(line: 997, column: 10, scope: !5358)
!5360 = !DILocation(line: 997, column: 6, scope: !5223)
!5361 = !DILocation(line: 998, column: 34, scope: !5358)
!5362 = !DILocation(line: 998, column: 9, scope: !5358)
!5363 = !DILocation(line: 998, column: 7, scope: !5358)
!5364 = !DILocation(line: 998, column: 3, scope: !5358)
!5365 = !DILocation(line: 999, column: 6, scope: !5366)
!5366 = distinct !DILexicalBlock(scope: !5223, file: !3, line: 999, column: 6)
!5367 = !DILocation(line: 999, column: 10, scope: !5366)
!5368 = !DILocation(line: 999, column: 6, scope: !5223)
!5369 = !DILocation(line: 1000, column: 24, scope: !5370)
!5370 = distinct !DILexicalBlock(scope: !5366, file: !3, line: 999, column: 15)
!5371 = !DILocation(line: 1000, column: 3, scope: !5370)
!5372 = !DILocation(line: 1001, column: 14, scope: !5370)
!5373 = !DILocation(line: 1001, column: 20, scope: !5370)
!5374 = !DILocation(line: 1001, column: 3, scope: !5370)
!5375 = !DILocation(line: 1002, column: 2, scope: !5370)
!5376 = !DILocation(line: 999, column: 12, scope: !5366)
!5377 = !DILabel(scope: !5223, name: "out", file: !3, line: 1004)
!5378 = !DILocation(line: 1004, column: 1, scope: !5223)
!5379 = !DILocation(line: 1005, column: 2, scope: !5223)
!5380 = !DILocation(line: 1006, column: 9, scope: !5223)
!5381 = !DILocation(line: 1006, column: 2, scope: !5223)
!5382 = !DILocation(line: 1007, column: 1, scope: !5223)
!5383 = distinct !DISubprogram(name: "try_module_get", scope: !5384, file: !5384, line: 751, type: !5385, scopeLine: 752, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!5384 = !DIFile(filename: "./include/linux/module.h", directory: "/home/lizy2001/genbc/linux")
!5385 = !DISubroutineType(types: !5386)
!5386 = !{!459, !166}
!5387 = !DILocalVariable(name: "module", arg: 1, scope: !5383, file: !5384, line: 751, type: !166)
!5388 = !DILocation(line: 751, column: 50, scope: !5383)
!5389 = !DILocation(line: 753, column: 2, scope: !5383)
!5390 = distinct !DISubprogram(name: "comedi_recognize", scope: !3, file: !3, line: 791, type: !5391, scopeLine: 792, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!5391 = !DISubroutineType(types: !5392)
!5392 = !{!152, !160, !149}
!5393 = !DILocalVariable(name: "driv", arg: 1, scope: !5390, file: !3, line: 791, type: !160)
!5394 = !DILocation(line: 791, column: 53, scope: !5390)
!5395 = !DILocalVariable(name: "name", arg: 2, scope: !5390, file: !3, line: 791, type: !149)
!5396 = !DILocation(line: 791, column: 71, scope: !5390)
!5397 = !DILocalVariable(name: "name_ptr", scope: !5390, file: !3, line: 793, type: !154)
!5398 = !DILocation(line: 793, column: 9, scope: !5390)
!5399 = !DILocation(line: 793, column: 29, scope: !5390)
!5400 = !DILocation(line: 793, column: 35, scope: !5390)
!5401 = !DILocalVariable(name: "i", scope: !5390, file: !3, line: 794, type: !153)
!5402 = !DILocation(line: 794, column: 6, scope: !5390)
!5403 = !DILocation(line: 796, column: 9, scope: !5404)
!5404 = distinct !DILexicalBlock(scope: !5390, file: !3, line: 796, column: 2)
!5405 = !DILocation(line: 796, column: 7, scope: !5404)
!5406 = !DILocation(line: 796, column: 14, scope: !5407)
!5407 = distinct !DILexicalBlock(scope: !5404, file: !3, line: 796, column: 2)
!5408 = !DILocation(line: 796, column: 18, scope: !5407)
!5409 = !DILocation(line: 796, column: 24, scope: !5407)
!5410 = !DILocation(line: 796, column: 16, scope: !5407)
!5411 = !DILocation(line: 796, column: 2, scope: !5404)
!5412 = !DILocation(line: 797, column: 15, scope: !5413)
!5413 = distinct !DILexicalBlock(scope: !5414, file: !3, line: 797, column: 7)
!5414 = distinct !DILexicalBlock(scope: !5407, file: !3, line: 796, column: 40)
!5415 = !DILocation(line: 797, column: 14, scope: !5413)
!5416 = !DILocation(line: 797, column: 25, scope: !5413)
!5417 = !DILocation(line: 797, column: 7, scope: !5413)
!5418 = !DILocation(line: 797, column: 31, scope: !5413)
!5419 = !DILocation(line: 797, column: 7, scope: !5414)
!5420 = !DILocation(line: 798, column: 11, scope: !5413)
!5421 = !DILocation(line: 798, column: 4, scope: !5413)
!5422 = !DILocation(line: 799, column: 22, scope: !5414)
!5423 = !DILocation(line: 799, column: 14, scope: !5414)
!5424 = !DILocation(line: 799, column: 33, scope: !5414)
!5425 = !DILocation(line: 799, column: 39, scope: !5414)
!5426 = !DILocation(line: 799, column: 31, scope: !5414)
!5427 = !DILocation(line: 799, column: 12, scope: !5414)
!5428 = !DILocation(line: 800, column: 2, scope: !5414)
!5429 = !DILocation(line: 796, column: 36, scope: !5407)
!5430 = !DILocation(line: 796, column: 2, scope: !5407)
!5431 = distinct !{!5431, !5411, !5432}
!5432 = !DILocation(line: 800, column: 2, scope: !5404)
!5433 = !DILocation(line: 802, column: 2, scope: !5390)
!5434 = !DILocation(line: 803, column: 1, scope: !5390)
!5435 = distinct !DISubprogram(name: "module_put", scope: !5384, file: !5384, line: 756, type: !5436, scopeLine: 757, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!5436 = !DISubroutineType(types: !5437)
!5437 = !{null, !166}
!5438 = !DILocalVariable(name: "module", arg: 1, scope: !5435, file: !5384, line: 756, type: !166)
!5439 = !DILocation(line: 756, column: 46, scope: !5435)
!5440 = !DILocation(line: 758, column: 1, scope: !5435)
!5441 = distinct !DISubprogram(name: "comedi_report_boards", scope: !3, file: !3, line: 805, type: !5442, scopeLine: 806, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!5442 = !DISubroutineType(types: !5443)
!5443 = !{null, !160}
!5444 = !DILocalVariable(name: "driv", arg: 1, scope: !5441, file: !3, line: 805, type: !160)
!5445 = !DILocation(line: 805, column: 56, scope: !5441)
!5446 = !DILocalVariable(name: "i", scope: !5441, file: !3, line: 807, type: !7)
!5447 = !DILocation(line: 807, column: 15, scope: !5441)
!5448 = !DILocalVariable(name: "name_ptr", scope: !5441, file: !3, line: 808, type: !3952)
!5449 = !DILocation(line: 808, column: 21, scope: !5441)
!5450 = !DILocation(line: 810, column: 2, scope: !5441)
!5451 = !DILocation(line: 813, column: 13, scope: !5441)
!5452 = !DILocation(line: 813, column: 19, scope: !5441)
!5453 = !DILocation(line: 813, column: 11, scope: !5441)
!5454 = !DILocation(line: 814, column: 9, scope: !5455)
!5455 = distinct !DILexicalBlock(scope: !5441, file: !3, line: 814, column: 2)
!5456 = !DILocation(line: 814, column: 7, scope: !5455)
!5457 = !DILocation(line: 814, column: 14, scope: !5458)
!5458 = distinct !DILexicalBlock(scope: !5455, file: !3, line: 814, column: 2)
!5459 = !DILocation(line: 814, column: 18, scope: !5458)
!5460 = !DILocation(line: 814, column: 24, scope: !5458)
!5461 = !DILocation(line: 814, column: 16, scope: !5458)
!5462 = !DILocation(line: 814, column: 2, scope: !5455)
!5463 = !DILocation(line: 815, column: 3, scope: !5464)
!5464 = distinct !DILexicalBlock(scope: !5458, file: !3, line: 814, column: 40)
!5465 = !DILocation(line: 816, column: 38, scope: !5464)
!5466 = !DILocation(line: 816, column: 30, scope: !5464)
!5467 = !DILocation(line: 816, column: 49, scope: !5464)
!5468 = !DILocation(line: 816, column: 55, scope: !5464)
!5469 = !DILocation(line: 816, column: 47, scope: !5464)
!5470 = !DILocation(line: 816, column: 14, scope: !5464)
!5471 = !DILocation(line: 816, column: 12, scope: !5464)
!5472 = !DILocation(line: 817, column: 2, scope: !5464)
!5473 = !DILocation(line: 814, column: 36, scope: !5458)
!5474 = !DILocation(line: 814, column: 2, scope: !5458)
!5475 = distinct !{!5475, !5462, !5476}
!5476 = !DILocation(line: 817, column: 2, scope: !5455)
!5477 = !DILocation(line: 819, column: 6, scope: !5478)
!5478 = distinct !DILexicalBlock(scope: !5441, file: !3, line: 819, column: 6)
!5479 = !DILocation(line: 819, column: 12, scope: !5478)
!5480 = !DILocation(line: 819, column: 22, scope: !5478)
!5481 = !DILocation(line: 819, column: 6, scope: !5441)
!5482 = !DILocation(line: 820, column: 3, scope: !5478)
!5483 = !DILocation(line: 821, column: 1, scope: !5441)
!5484 = distinct !DISubprogram(name: "comedi_device_postconfig", scope: !3, file: !3, line: 751, type: !3924, scopeLine: 752, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!5485 = !DILocalVariable(name: "dev", arg: 1, scope: !5484, file: !3, line: 751, type: !173)
!5486 = !DILocation(line: 751, column: 59, scope: !5484)
!5487 = !DILocalVariable(name: "ret", scope: !5484, file: !3, line: 753, type: !153)
!5488 = !DILocation(line: 753, column: 6, scope: !5484)
!5489 = !DILocation(line: 755, column: 2, scope: !5484)
!5490 = !DILocation(line: 755, column: 2, scope: !5491)
!5491 = distinct !DILexicalBlock(scope: !5484, file: !3, line: 755, column: 2)
!5492 = !DILocation(line: 756, column: 35, scope: !5484)
!5493 = !DILocation(line: 756, column: 8, scope: !5484)
!5494 = !DILocation(line: 756, column: 6, scope: !5484)
!5495 = !DILocation(line: 757, column: 6, scope: !5496)
!5496 = distinct !DILexicalBlock(scope: !5484, file: !3, line: 757, column: 6)
!5497 = !DILocation(line: 757, column: 10, scope: !5496)
!5498 = !DILocation(line: 757, column: 6, scope: !5484)
!5499 = !DILocation(line: 758, column: 10, scope: !5496)
!5500 = !DILocation(line: 758, column: 3, scope: !5496)
!5501 = !DILocation(line: 759, column: 14, scope: !5484)
!5502 = !DILocation(line: 759, column: 19, scope: !5484)
!5503 = !DILocation(line: 759, column: 2, scope: !5484)
!5504 = !DILocation(line: 760, column: 2, scope: !5484)
!5505 = !DILocation(line: 760, column: 7, scope: !5484)
!5506 = !DILocation(line: 760, column: 16, scope: !5484)
!5507 = !DILocation(line: 761, column: 12, scope: !5484)
!5508 = !DILocation(line: 761, column: 17, scope: !5484)
!5509 = !DILocation(line: 761, column: 2, scope: !5484)
!5510 = !DILocation(line: 762, column: 2, scope: !5484)
!5511 = !DILocation(line: 763, column: 1, scope: !5484)
!5512 = distinct !DISubprogram(name: "comedi_auto_config", scope: !3, file: !3, line: 1032, type: !5513, scopeLine: 1034, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !219)
!5513 = !DISubroutineType(types: !5514)
!5514 = !{!153, !183, !160, !156}
!5515 = !DILocalVariable(name: "hardware_device", arg: 1, scope: !5512, file: !3, line: 1032, type: !183)
!5516 = !DILocation(line: 1032, column: 39, scope: !5512)
!5517 = !DILocalVariable(name: "driver", arg: 2, scope: !5512, file: !3, line: 1033, type: !160)
!5518 = !DILocation(line: 1033, column: 32, scope: !5512)
!5519 = !DILocalVariable(name: "context", arg: 3, scope: !5512, file: !3, line: 1033, type: !156)
!5520 = !DILocation(line: 1033, column: 54, scope: !5512)
!5521 = !DILocalVariable(name: "dev", scope: !5512, file: !3, line: 1035, type: !173)
!5522 = !DILocation(line: 1035, column: 24, scope: !5512)
!5523 = !DILocalVariable(name: "ret", scope: !5512, file: !3, line: 1036, type: !153)
!5524 = !DILocation(line: 1036, column: 6, scope: !5512)
!5525 = !DILocation(line: 1038, column: 7, scope: !5526)
!5526 = distinct !DILexicalBlock(scope: !5512, file: !3, line: 1038, column: 6)
!5527 = !DILocation(line: 1038, column: 6, scope: !5512)
!5528 = !DILocation(line: 1039, column: 3, scope: !5529)
!5529 = distinct !DILexicalBlock(scope: !5526, file: !3, line: 1038, column: 24)
!5530 = !DILocation(line: 1040, column: 3, scope: !5529)
!5531 = !DILocation(line: 1042, column: 7, scope: !5532)
!5532 = distinct !DILexicalBlock(scope: !5512, file: !3, line: 1042, column: 6)
!5533 = !DILocation(line: 1042, column: 6, scope: !5512)
!5534 = !DILocation(line: 1043, column: 3, scope: !5535)
!5535 = distinct !DILexicalBlock(scope: !5532, file: !3, line: 1042, column: 15)
!5536 = !DILocation(line: 1045, column: 3, scope: !5535)
!5537 = !DILocation(line: 1048, column: 7, scope: !5538)
!5538 = distinct !DILexicalBlock(scope: !5512, file: !3, line: 1048, column: 6)
!5539 = !DILocation(line: 1048, column: 15, scope: !5538)
!5540 = !DILocation(line: 1048, column: 6, scope: !5512)
!5541 = !DILocation(line: 1049, column: 3, scope: !5542)
!5542 = distinct !DILexicalBlock(scope: !5538, file: !3, line: 1048, column: 28)
!5543 = !DILocation(line: 1052, column: 3, scope: !5542)
!5544 = !DILocation(line: 1055, column: 33, scope: !5512)
!5545 = !DILocation(line: 1055, column: 8, scope: !5512)
!5546 = !DILocation(line: 1055, column: 6, scope: !5512)
!5547 = !DILocation(line: 1056, column: 13, scope: !5548)
!5548 = distinct !DILexicalBlock(scope: !5512, file: !3, line: 1056, column: 6)
!5549 = !DILocation(line: 1056, column: 6, scope: !5548)
!5550 = !DILocation(line: 1056, column: 6, scope: !5512)
!5551 = !DILocation(line: 1057, column: 3, scope: !5552)
!5552 = distinct !DILexicalBlock(scope: !5548, file: !3, line: 1056, column: 19)
!5553 = !DILocation(line: 1060, column: 18, scope: !5552)
!5554 = !DILocation(line: 1060, column: 10, scope: !5552)
!5555 = !DILocation(line: 1060, column: 3, scope: !5552)
!5556 = !DILocation(line: 1063, column: 2, scope: !5512)
!5557 = !DILocation(line: 1063, column: 2, scope: !5558)
!5558 = distinct !DILexicalBlock(scope: !5512, file: !3, line: 1063, column: 2)
!5559 = !DILocation(line: 1065, column: 16, scope: !5512)
!5560 = !DILocation(line: 1065, column: 2, scope: !5512)
!5561 = !DILocation(line: 1065, column: 7, scope: !5512)
!5562 = !DILocation(line: 1065, column: 14, scope: !5512)
!5563 = !DILocation(line: 1066, column: 20, scope: !5512)
!5564 = !DILocation(line: 1066, column: 25, scope: !5512)
!5565 = !DILocation(line: 1066, column: 33, scope: !5512)
!5566 = !DILocation(line: 1066, column: 2, scope: !5512)
!5567 = !DILocation(line: 1066, column: 7, scope: !5512)
!5568 = !DILocation(line: 1066, column: 18, scope: !5512)
!5569 = !DILocation(line: 1067, column: 8, scope: !5512)
!5570 = !DILocation(line: 1067, column: 16, scope: !5512)
!5571 = !DILocation(line: 1067, column: 28, scope: !5512)
!5572 = !DILocation(line: 1067, column: 33, scope: !5512)
!5573 = !DILocation(line: 1067, column: 6, scope: !5512)
!5574 = !DILocation(line: 1068, column: 6, scope: !5575)
!5575 = distinct !DILexicalBlock(scope: !5512, file: !3, line: 1068, column: 6)
!5576 = !DILocation(line: 1068, column: 10, scope: !5575)
!5577 = !DILocation(line: 1068, column: 6, scope: !5512)
!5578 = !DILocation(line: 1069, column: 34, scope: !5575)
!5579 = !DILocation(line: 1069, column: 9, scope: !5575)
!5580 = !DILocation(line: 1069, column: 7, scope: !5575)
!5581 = !DILocation(line: 1069, column: 3, scope: !5575)
!5582 = !DILocation(line: 1071, column: 6, scope: !5583)
!5583 = distinct !DILexicalBlock(scope: !5512, file: !3, line: 1071, column: 6)
!5584 = !DILocation(line: 1071, column: 10, scope: !5583)
!5585 = !DILocation(line: 1071, column: 6, scope: !5512)
!5586 = !DILocation(line: 1072, column: 3, scope: !5587)
!5587 = distinct !DILexicalBlock(scope: !5583, file: !3, line: 1071, column: 15)
!5588 = !DILocation(line: 1075, column: 17, scope: !5587)
!5589 = !DILocation(line: 1075, column: 22, scope: !5587)
!5590 = !DILocation(line: 1075, column: 3, scope: !5587)
!5591 = !DILocation(line: 1076, column: 34, scope: !5587)
!5592 = !DILocation(line: 1076, column: 3, scope: !5587)
!5593 = !DILocation(line: 1077, column: 2, scope: !5587)
!5594 = !DILocation(line: 1082, column: 3, scope: !5595)
!5595 = distinct !DILexicalBlock(scope: !5583, file: !3, line: 1077, column: 9)
!5596 = !DILocation(line: 1085, column: 17, scope: !5595)
!5597 = !DILocation(line: 1085, column: 22, scope: !5595)
!5598 = !DILocation(line: 1085, column: 3, scope: !5595)
!5599 = !DILocation(line: 1087, column: 9, scope: !5512)
!5600 = !DILocation(line: 1087, column: 2, scope: !5512)
!5601 = !DILocation(line: 1088, column: 1, scope: !5512)
!5602 = distinct !DISubprogram(name: "IS_ERR", scope: !5603, file: !5603, line: 34, type: !5604, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!5603 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!5604 = !DISubroutineType(types: !5605)
!5605 = !{!459, !2097}
!5606 = !DILocalVariable(name: "ptr", arg: 1, scope: !5602, file: !5603, line: 34, type: !2097)
!5607 = !DILocation(line: 34, column: 60, scope: !5602)
!5608 = !DILocation(line: 36, column: 9, scope: !5602)
!5609 = !DILocation(line: 36, column: 2, scope: !5602)
!5610 = distinct !DISubprogram(name: "PTR_ERR", scope: !5603, file: !5603, line: 29, type: !5611, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!5611 = !DISubroutineType(types: !5612)
!5612 = !{!147, !2097}
!5613 = !DILocalVariable(name: "ptr", arg: 1, scope: !5610, file: !5603, line: 29, type: !2097)
!5614 = !DILocation(line: 29, column: 61, scope: !5610)
!5615 = !DILocation(line: 31, column: 16, scope: !5610)
!5616 = !DILocation(line: 31, column: 9, scope: !5610)
!5617 = !DILocation(line: 31, column: 2, scope: !5610)
!5618 = distinct !DISubprogram(name: "comedi_auto_unconfig", scope: !3, file: !3, line: 1107, type: !3365, scopeLine: 1108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !219)
!5619 = !DILocalVariable(name: "hardware_device", arg: 1, scope: !5618, file: !3, line: 1107, type: !183)
!5620 = !DILocation(line: 1107, column: 42, scope: !5618)
!5621 = !DILocation(line: 1109, column: 7, scope: !5622)
!5622 = distinct !DILexicalBlock(scope: !5618, file: !3, line: 1109, column: 6)
!5623 = !DILocation(line: 1109, column: 6, scope: !5618)
!5624 = !DILocation(line: 1110, column: 3, scope: !5622)
!5625 = !DILocation(line: 1111, column: 33, scope: !5618)
!5626 = !DILocation(line: 1111, column: 2, scope: !5618)
!5627 = !DILocation(line: 1112, column: 1, scope: !5618)
!5628 = distinct !DISubprogram(name: "comedi_driver_register", scope: !3, file: !3, line: 1126, type: !5629, scopeLine: 1127, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !219)
!5629 = !DISubroutineType(types: !5630)
!5630 = !{!153, !160}
!5631 = !DILocalVariable(name: "driver", arg: 1, scope: !5628, file: !3, line: 1126, type: !160)
!5632 = !DILocation(line: 1126, column: 50, scope: !5628)
!5633 = !DILocation(line: 1128, column: 2, scope: !5628)
!5634 = !DILocation(line: 1129, column: 17, scope: !5628)
!5635 = !DILocation(line: 1129, column: 2, scope: !5628)
!5636 = !DILocation(line: 1129, column: 10, scope: !5628)
!5637 = !DILocation(line: 1129, column: 15, scope: !5628)
!5638 = !DILocation(line: 1130, column: 19, scope: !5628)
!5639 = !DILocation(line: 1130, column: 17, scope: !5628)
!5640 = !DILocation(line: 1131, column: 2, scope: !5628)
!5641 = !DILocation(line: 1133, column: 2, scope: !5628)
!5642 = distinct !DISubprogram(name: "comedi_driver_unregister", scope: !3, file: !3, line: 1146, type: !5442, scopeLine: 1147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !219)
!5643 = !DILocalVariable(name: "driver", arg: 1, scope: !5642, file: !3, line: 1146, type: !160)
!5644 = !DILocation(line: 1146, column: 53, scope: !5642)
!5645 = !DILocalVariable(name: "prev", scope: !5642, file: !3, line: 1148, type: !160)
!5646 = !DILocation(line: 1148, column: 24, scope: !5642)
!5647 = !DILocalVariable(name: "i", scope: !5642, file: !3, line: 1149, type: !153)
!5648 = !DILocation(line: 1149, column: 6, scope: !5642)
!5649 = !DILocation(line: 1152, column: 2, scope: !5642)
!5650 = !DILocation(line: 1153, column: 6, scope: !5651)
!5651 = distinct !DILexicalBlock(scope: !5642, file: !3, line: 1153, column: 6)
!5652 = !DILocation(line: 1153, column: 24, scope: !5651)
!5653 = !DILocation(line: 1153, column: 21, scope: !5651)
!5654 = !DILocation(line: 1153, column: 6, scope: !5642)
!5655 = !DILocation(line: 1154, column: 20, scope: !5656)
!5656 = distinct !DILexicalBlock(scope: !5651, file: !3, line: 1153, column: 32)
!5657 = !DILocation(line: 1154, column: 28, scope: !5656)
!5658 = !DILocation(line: 1154, column: 18, scope: !5656)
!5659 = !DILocation(line: 1155, column: 2, scope: !5656)
!5660 = !DILocation(line: 1156, column: 15, scope: !5661)
!5661 = distinct !DILexicalBlock(scope: !5662, file: !3, line: 1156, column: 3)
!5662 = distinct !DILexicalBlock(scope: !5651, file: !3, line: 1155, column: 9)
!5663 = !DILocation(line: 1156, column: 13, scope: !5661)
!5664 = !DILocation(line: 1156, column: 8, scope: !5661)
!5665 = !DILocation(line: 1156, column: 31, scope: !5666)
!5666 = distinct !DILexicalBlock(scope: !5661, file: !3, line: 1156, column: 3)
!5667 = !DILocation(line: 1156, column: 37, scope: !5666)
!5668 = !DILocation(line: 1156, column: 3, scope: !5661)
!5669 = !DILocation(line: 1157, column: 8, scope: !5670)
!5670 = distinct !DILexicalBlock(scope: !5671, file: !3, line: 1157, column: 8)
!5671 = distinct !DILexicalBlock(scope: !5666, file: !3, line: 1156, column: 62)
!5672 = !DILocation(line: 1157, column: 14, scope: !5670)
!5673 = !DILocation(line: 1157, column: 22, scope: !5670)
!5674 = !DILocation(line: 1157, column: 19, scope: !5670)
!5675 = !DILocation(line: 1157, column: 8, scope: !5671)
!5676 = !DILocation(line: 1158, column: 18, scope: !5677)
!5677 = distinct !DILexicalBlock(scope: !5670, file: !3, line: 1157, column: 30)
!5678 = !DILocation(line: 1158, column: 26, scope: !5677)
!5679 = !DILocation(line: 1158, column: 5, scope: !5677)
!5680 = !DILocation(line: 1158, column: 11, scope: !5677)
!5681 = !DILocation(line: 1158, column: 16, scope: !5677)
!5682 = !DILocation(line: 1159, column: 5, scope: !5677)
!5683 = !DILocation(line: 1161, column: 3, scope: !5671)
!5684 = !DILocation(line: 1156, column: 50, scope: !5666)
!5685 = !DILocation(line: 1156, column: 56, scope: !5666)
!5686 = !DILocation(line: 1156, column: 48, scope: !5666)
!5687 = !DILocation(line: 1156, column: 3, scope: !5666)
!5688 = distinct !{!5688, !5668, !5689}
!5689 = !DILocation(line: 1161, column: 3, scope: !5661)
!5690 = !DILocation(line: 1163, column: 2, scope: !5642)
!5691 = !DILocation(line: 1166, column: 9, scope: !5692)
!5692 = distinct !DILexicalBlock(scope: !5642, file: !3, line: 1166, column: 2)
!5693 = !DILocation(line: 1166, column: 7, scope: !5692)
!5694 = !DILocation(line: 1166, column: 14, scope: !5695)
!5695 = distinct !DILexicalBlock(scope: !5692, file: !3, line: 1166, column: 2)
!5696 = !DILocation(line: 1166, column: 16, scope: !5695)
!5697 = !DILocation(line: 1166, column: 2, scope: !5692)
!5698 = !DILocalVariable(name: "dev", scope: !5699, file: !3, line: 1167, type: !173)
!5699 = distinct !DILexicalBlock(scope: !5695, file: !3, line: 1166, column: 48)
!5700 = !DILocation(line: 1167, column: 25, scope: !5699)
!5701 = !DILocation(line: 1167, column: 57, scope: !5699)
!5702 = !DILocation(line: 1167, column: 31, scope: !5699)
!5703 = !DILocation(line: 1169, column: 8, scope: !5704)
!5704 = distinct !DILexicalBlock(scope: !5699, file: !3, line: 1169, column: 7)
!5705 = !DILocation(line: 1169, column: 7, scope: !5699)
!5706 = !DILocation(line: 1170, column: 4, scope: !5704)
!5707 = !DILocation(line: 1172, column: 15, scope: !5699)
!5708 = !DILocation(line: 1172, column: 20, scope: !5699)
!5709 = !DILocation(line: 1172, column: 3, scope: !5699)
!5710 = !DILocation(line: 1173, column: 7, scope: !5711)
!5711 = distinct !DILexicalBlock(scope: !5699, file: !3, line: 1173, column: 7)
!5712 = !DILocation(line: 1173, column: 12, scope: !5711)
!5713 = !DILocation(line: 1173, column: 21, scope: !5711)
!5714 = !DILocation(line: 1173, column: 24, scope: !5711)
!5715 = !DILocation(line: 1173, column: 29, scope: !5711)
!5716 = !DILocation(line: 1173, column: 39, scope: !5711)
!5717 = !DILocation(line: 1173, column: 36, scope: !5711)
!5718 = !DILocation(line: 1173, column: 7, scope: !5699)
!5719 = !DILocation(line: 1174, column: 8, scope: !5720)
!5720 = distinct !DILexicalBlock(scope: !5721, file: !3, line: 1174, column: 8)
!5721 = distinct !DILexicalBlock(scope: !5711, file: !3, line: 1173, column: 47)
!5722 = !DILocation(line: 1174, column: 13, scope: !5720)
!5723 = !DILocation(line: 1174, column: 8, scope: !5721)
!5724 = !DILocation(line: 1175, column: 5, scope: !5720)
!5725 = !DILocation(line: 1178, column: 25, scope: !5721)
!5726 = !DILocation(line: 1178, column: 4, scope: !5721)
!5727 = !DILocation(line: 1179, column: 3, scope: !5721)
!5728 = !DILocation(line: 1180, column: 17, scope: !5699)
!5729 = !DILocation(line: 1180, column: 22, scope: !5699)
!5730 = !DILocation(line: 1180, column: 3, scope: !5699)
!5731 = !DILocation(line: 1181, column: 18, scope: !5699)
!5732 = !DILocation(line: 1181, column: 3, scope: !5699)
!5733 = !DILocation(line: 1182, column: 2, scope: !5699)
!5734 = !DILocation(line: 1166, column: 44, scope: !5695)
!5735 = !DILocation(line: 1166, column: 2, scope: !5695)
!5736 = distinct !{!5736, !5697, !5737}
!5737 = !DILocation(line: 1182, column: 2, scope: !5692)
!5738 = !DILocation(line: 1183, column: 1, scope: !5642)
!5739 = distinct !DISubprogram(name: "get_order", scope: !5740, file: !5740, line: 29, type: !5741, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!5740 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5741 = !DISubroutineType(types: !5742)
!5742 = !{!153, !156}
!5743 = !DILocalVariable(name: "x", arg: 1, scope: !5744, file: !5745, line: 366, type: !391)
!5744 = distinct !DISubprogram(name: "fls64", scope: !5745, file: !5745, line: 366, type: !5746, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!5745 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5746 = !DISubroutineType(types: !5747)
!5747 = !{!153, !391}
!5748 = !DILocation(line: 366, column: 40, scope: !5744, inlinedAt: !5749)
!5749 = distinct !DILocation(line: 46, column: 9, scope: !5739)
!5750 = !DILocalVariable(name: "bitpos", scope: !5744, file: !5745, line: 368, type: !153)
!5751 = !DILocation(line: 368, column: 6, scope: !5744, inlinedAt: !5749)
!5752 = !DILocalVariable(name: "size", arg: 1, scope: !5739, file: !5740, line: 29, type: !156)
!5753 = !DILocation(line: 29, column: 63, scope: !5739)
!5754 = !DILocation(line: 31, column: 27, scope: !5755)
!5755 = distinct !DILexicalBlock(scope: !5739, file: !5740, line: 31, column: 6)
!5756 = !DILocation(line: 31, column: 6, scope: !5755)
!5757 = !DILocation(line: 31, column: 6, scope: !5739)
!5758 = !DILocation(line: 32, column: 8, scope: !5759)
!5759 = distinct !DILexicalBlock(scope: !5760, file: !5740, line: 32, column: 7)
!5760 = distinct !DILexicalBlock(scope: !5755, file: !5740, line: 31, column: 34)
!5761 = !DILocation(line: 32, column: 7, scope: !5760)
!5762 = !DILocation(line: 33, column: 4, scope: !5759)
!5763 = !DILocation(line: 35, column: 7, scope: !5764)
!5764 = distinct !DILexicalBlock(scope: !5760, file: !5740, line: 35, column: 7)
!5765 = !DILocation(line: 35, column: 12, scope: !5764)
!5766 = !DILocation(line: 35, column: 7, scope: !5760)
!5767 = !DILocation(line: 36, column: 4, scope: !5764)
!5768 = !DILocation(line: 38, column: 10, scope: !5760)
!5769 = !DILocation(line: 38, column: 28, scope: !5760)
!5770 = !DILocation(line: 38, column: 41, scope: !5760)
!5771 = !DILocation(line: 38, column: 3, scope: !5760)
!5772 = !DILocation(line: 41, column: 6, scope: !5739)
!5773 = !DILocation(line: 42, column: 7, scope: !5739)
!5774 = !DILocation(line: 46, column: 15, scope: !5739)
!5775 = !DILocation(line: 374, column: 2, scope: !5744, inlinedAt: !5749)
!5776 = !DILocation(line: 376, column: 14, scope: !5744, inlinedAt: !5749)
!5777 = !{i32 409972}
!5778 = !DILocation(line: 377, column: 9, scope: !5744, inlinedAt: !5749)
!5779 = !DILocation(line: 377, column: 16, scope: !5744, inlinedAt: !5749)
!5780 = !DILocation(line: 46, column: 2, scope: !5739)
!5781 = !DILocation(line: 48, column: 1, scope: !5739)
!5782 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5783, file: !5783, line: 30, type: !5784, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!5783 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5784 = !DISubroutineType(types: !5785)
!5785 = !{!153, !390}
!5786 = !DILocation(line: 366, column: 40, scope: !5744, inlinedAt: !5787)
!5787 = distinct !DILocation(line: 32, column: 9, scope: !5782)
!5788 = !DILocation(line: 368, column: 6, scope: !5744, inlinedAt: !5787)
!5789 = !DILocalVariable(name: "n", arg: 1, scope: !5782, file: !5783, line: 30, type: !390)
!5790 = !DILocation(line: 30, column: 21, scope: !5782)
!5791 = !DILocation(line: 32, column: 15, scope: !5782)
!5792 = !DILocation(line: 374, column: 2, scope: !5744, inlinedAt: !5787)
!5793 = !DILocation(line: 376, column: 14, scope: !5744, inlinedAt: !5787)
!5794 = !DILocation(line: 377, column: 9, scope: !5744, inlinedAt: !5787)
!5795 = !DILocation(line: 377, column: 16, scope: !5744, inlinedAt: !5787)
!5796 = !DILocation(line: 32, column: 18, scope: !5782)
!5797 = !DILocation(line: 32, column: 2, scope: !5782)
!5798 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5799, file: !5799, line: 137, type: !5800, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!5799 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5800 = !DISubroutineType(types: !5801)
!5801 = !{!152, !904, !2097, !291, !145}
!5802 = !DILocalVariable(name: "s", arg: 1, scope: !5798, file: !5799, line: 137, type: !904)
!5803 = !DILocation(line: 137, column: 54, scope: !5798)
!5804 = !DILocalVariable(name: "object", arg: 2, scope: !5798, file: !5799, line: 137, type: !2097)
!5805 = !DILocation(line: 137, column: 69, scope: !5798)
!5806 = !DILocalVariable(name: "size", arg: 3, scope: !5798, file: !5799, line: 138, type: !291)
!5807 = !DILocation(line: 138, column: 12, scope: !5798)
!5808 = !DILocalVariable(name: "flags", arg: 4, scope: !5798, file: !5799, line: 138, type: !145)
!5809 = !DILocation(line: 138, column: 24, scope: !5798)
!5810 = !DILocation(line: 140, column: 17, scope: !5798)
!5811 = !DILocation(line: 140, column: 2, scope: !5798)
!5812 = distinct !DISubprogram(name: "kmalloc_array", scope: !123, file: !123, line: 584, type: !4355, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!5813 = !DILocation(line: 445, column: 72, scope: !4008, inlinedAt: !5814)
!5814 = distinct !DILocation(line: 552, column: 10, scope: !4013, inlinedAt: !5815)
!5815 = distinct !DILocation(line: 591, column: 10, scope: !5816)
!5816 = distinct !DILexicalBlock(scope: !5812, file: !123, line: 590, column: 6)
!5817 = !DILocation(line: 446, column: 9, scope: !4008, inlinedAt: !5814)
!5818 = !DILocation(line: 446, column: 23, scope: !4008, inlinedAt: !5814)
!5819 = !DILocation(line: 448, column: 8, scope: !4008, inlinedAt: !5814)
!5820 = !DILocation(line: 318, column: 67, scope: !4024, inlinedAt: !5821)
!5821 = distinct !DILocation(line: 553, column: 20, scope: !4013, inlinedAt: !5815)
!5822 = !DILocation(line: 346, column: 58, scope: !4030, inlinedAt: !5823)
!5823 = distinct !DILocation(line: 547, column: 11, scope: !4013, inlinedAt: !5815)
!5824 = !DILocation(line: 472, column: 28, scope: !4036, inlinedAt: !5825)
!5825 = distinct !DILocation(line: 481, column: 9, scope: !4041, inlinedAt: !5826)
!5826 = distinct !DILocation(line: 545, column: 11, scope: !4043, inlinedAt: !5815)
!5827 = !DILocation(line: 472, column: 40, scope: !4036, inlinedAt: !5825)
!5828 = !DILocation(line: 472, column: 60, scope: !4036, inlinedAt: !5825)
!5829 = !DILocation(line: 478, column: 51, scope: !4041, inlinedAt: !5826)
!5830 = !DILocation(line: 478, column: 63, scope: !4041, inlinedAt: !5826)
!5831 = !DILocation(line: 480, column: 15, scope: !4041, inlinedAt: !5826)
!5832 = !DILocation(line: 538, column: 45, scope: !4015, inlinedAt: !5815)
!5833 = !DILocation(line: 538, column: 57, scope: !4015, inlinedAt: !5815)
!5834 = !DILocation(line: 542, column: 16, scope: !4013, inlinedAt: !5815)
!5835 = !DILocalVariable(name: "n", arg: 1, scope: !5812, file: !123, line: 584, type: !291)
!5836 = !DILocation(line: 584, column: 42, scope: !5812)
!5837 = !DILocalVariable(name: "size", arg: 2, scope: !5812, file: !123, line: 584, type: !291)
!5838 = !DILocation(line: 584, column: 52, scope: !5812)
!5839 = !DILocalVariable(name: "flags", arg: 3, scope: !5812, file: !123, line: 584, type: !145)
!5840 = !DILocation(line: 584, column: 64, scope: !5812)
!5841 = !DILocalVariable(name: "bytes", scope: !5812, file: !123, line: 586, type: !291)
!5842 = !DILocation(line: 586, column: 9, scope: !5812)
!5843 = !DILocalVariable(name: "__a", scope: !5844, file: !123, line: 588, type: !291)
!5844 = distinct !DILexicalBlock(scope: !5845, file: !123, line: 588, column: 6)
!5845 = distinct !DILexicalBlock(scope: !5812, file: !123, line: 588, column: 6)
!5846 = !DILocation(line: 588, column: 6, scope: !5844)
!5847 = !DILocalVariable(name: "__b", scope: !5844, file: !123, line: 588, type: !291)
!5848 = !DILocalVariable(name: "__d", scope: !5844, file: !123, line: 588, type: !5849)
!5849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!5850 = !DILocation(line: 588, column: 6, scope: !5845)
!5851 = !DILocation(line: 588, column: 6, scope: !5812)
!5852 = !DILocation(line: 589, column: 3, scope: !5845)
!5853 = !DILocation(line: 590, column: 27, scope: !5816)
!5854 = !DILocation(line: 590, column: 6, scope: !5816)
!5855 = !DILocation(line: 590, column: 30, scope: !5816)
!5856 = !DILocation(line: 590, column: 54, scope: !5816)
!5857 = !DILocation(line: 590, column: 33, scope: !5816)
!5858 = !DILocation(line: 590, column: 6, scope: !5812)
!5859 = !DILocation(line: 591, column: 18, scope: !5816)
!5860 = !DILocation(line: 591, column: 25, scope: !5816)
!5861 = !DILocation(line: 540, column: 27, scope: !4014, inlinedAt: !5815)
!5862 = !DILocation(line: 540, column: 6, scope: !4014, inlinedAt: !5815)
!5863 = !DILocation(line: 540, column: 6, scope: !4015, inlinedAt: !5815)
!5864 = !DILocation(line: 544, column: 7, scope: !4043, inlinedAt: !5815)
!5865 = !DILocation(line: 544, column: 12, scope: !4043, inlinedAt: !5815)
!5866 = !DILocation(line: 544, column: 7, scope: !4013, inlinedAt: !5815)
!5867 = !DILocation(line: 545, column: 25, scope: !4043, inlinedAt: !5815)
!5868 = !DILocation(line: 545, column: 31, scope: !4043, inlinedAt: !5815)
!5869 = !DILocation(line: 480, column: 33, scope: !4041, inlinedAt: !5826)
!5870 = !DILocation(line: 480, column: 23, scope: !4041, inlinedAt: !5826)
!5871 = !DILocation(line: 481, column: 29, scope: !4041, inlinedAt: !5826)
!5872 = !DILocation(line: 481, column: 35, scope: !4041, inlinedAt: !5826)
!5873 = !DILocation(line: 481, column: 42, scope: !4041, inlinedAt: !5826)
!5874 = !DILocation(line: 474, column: 23, scope: !4036, inlinedAt: !5825)
!5875 = !DILocation(line: 474, column: 29, scope: !4036, inlinedAt: !5825)
!5876 = !DILocation(line: 474, column: 36, scope: !4036, inlinedAt: !5825)
!5877 = !DILocation(line: 474, column: 9, scope: !4036, inlinedAt: !5825)
!5878 = !DILocation(line: 545, column: 4, scope: !4043, inlinedAt: !5815)
!5879 = !DILocation(line: 547, column: 25, scope: !4013, inlinedAt: !5815)
!5880 = !DILocation(line: 348, column: 7, scope: !4087, inlinedAt: !5823)
!5881 = !DILocation(line: 348, column: 6, scope: !4030, inlinedAt: !5823)
!5882 = !DILocation(line: 349, column: 3, scope: !4087, inlinedAt: !5823)
!5883 = !DILocation(line: 351, column: 6, scope: !4091, inlinedAt: !5823)
!5884 = !DILocation(line: 351, column: 11, scope: !4091, inlinedAt: !5823)
!5885 = !DILocation(line: 351, column: 6, scope: !4030, inlinedAt: !5823)
!5886 = !DILocation(line: 352, column: 3, scope: !4091, inlinedAt: !5823)
!5887 = !DILocation(line: 354, column: 32, scope: !4096, inlinedAt: !5823)
!5888 = !DILocation(line: 354, column: 37, scope: !4096, inlinedAt: !5823)
!5889 = !DILocation(line: 354, column: 42, scope: !4096, inlinedAt: !5823)
!5890 = !DILocation(line: 354, column: 45, scope: !4096, inlinedAt: !5823)
!5891 = !DILocation(line: 354, column: 50, scope: !4096, inlinedAt: !5823)
!5892 = !DILocation(line: 354, column: 6, scope: !4030, inlinedAt: !5823)
!5893 = !DILocation(line: 355, column: 3, scope: !4096, inlinedAt: !5823)
!5894 = !DILocation(line: 356, column: 32, scope: !4104, inlinedAt: !5823)
!5895 = !DILocation(line: 356, column: 37, scope: !4104, inlinedAt: !5823)
!5896 = !DILocation(line: 356, column: 43, scope: !4104, inlinedAt: !5823)
!5897 = !DILocation(line: 356, column: 46, scope: !4104, inlinedAt: !5823)
!5898 = !DILocation(line: 356, column: 51, scope: !4104, inlinedAt: !5823)
!5899 = !DILocation(line: 356, column: 6, scope: !4030, inlinedAt: !5823)
!5900 = !DILocation(line: 357, column: 3, scope: !4104, inlinedAt: !5823)
!5901 = !DILocation(line: 358, column: 6, scope: !4112, inlinedAt: !5823)
!5902 = !DILocation(line: 358, column: 11, scope: !4112, inlinedAt: !5823)
!5903 = !DILocation(line: 358, column: 6, scope: !4030, inlinedAt: !5823)
!5904 = !DILocation(line: 358, column: 26, scope: !4112, inlinedAt: !5823)
!5905 = !DILocation(line: 359, column: 6, scope: !4117, inlinedAt: !5823)
!5906 = !DILocation(line: 359, column: 11, scope: !4117, inlinedAt: !5823)
!5907 = !DILocation(line: 359, column: 6, scope: !4030, inlinedAt: !5823)
!5908 = !DILocation(line: 359, column: 26, scope: !4117, inlinedAt: !5823)
!5909 = !DILocation(line: 360, column: 6, scope: !4122, inlinedAt: !5823)
!5910 = !DILocation(line: 360, column: 11, scope: !4122, inlinedAt: !5823)
!5911 = !DILocation(line: 360, column: 6, scope: !4030, inlinedAt: !5823)
!5912 = !DILocation(line: 360, column: 26, scope: !4122, inlinedAt: !5823)
!5913 = !DILocation(line: 361, column: 6, scope: !4127, inlinedAt: !5823)
!5914 = !DILocation(line: 361, column: 11, scope: !4127, inlinedAt: !5823)
!5915 = !DILocation(line: 361, column: 6, scope: !4030, inlinedAt: !5823)
!5916 = !DILocation(line: 361, column: 26, scope: !4127, inlinedAt: !5823)
!5917 = !DILocation(line: 362, column: 6, scope: !4132, inlinedAt: !5823)
!5918 = !DILocation(line: 362, column: 11, scope: !4132, inlinedAt: !5823)
!5919 = !DILocation(line: 362, column: 6, scope: !4030, inlinedAt: !5823)
!5920 = !DILocation(line: 362, column: 26, scope: !4132, inlinedAt: !5823)
!5921 = !DILocation(line: 363, column: 6, scope: !4137, inlinedAt: !5823)
!5922 = !DILocation(line: 363, column: 11, scope: !4137, inlinedAt: !5823)
!5923 = !DILocation(line: 363, column: 6, scope: !4030, inlinedAt: !5823)
!5924 = !DILocation(line: 363, column: 26, scope: !4137, inlinedAt: !5823)
!5925 = !DILocation(line: 364, column: 6, scope: !4142, inlinedAt: !5823)
!5926 = !DILocation(line: 364, column: 11, scope: !4142, inlinedAt: !5823)
!5927 = !DILocation(line: 364, column: 6, scope: !4030, inlinedAt: !5823)
!5928 = !DILocation(line: 364, column: 26, scope: !4142, inlinedAt: !5823)
!5929 = !DILocation(line: 365, column: 6, scope: !4147, inlinedAt: !5823)
!5930 = !DILocation(line: 365, column: 11, scope: !4147, inlinedAt: !5823)
!5931 = !DILocation(line: 365, column: 6, scope: !4030, inlinedAt: !5823)
!5932 = !DILocation(line: 365, column: 26, scope: !4147, inlinedAt: !5823)
!5933 = !DILocation(line: 366, column: 6, scope: !4152, inlinedAt: !5823)
!5934 = !DILocation(line: 366, column: 11, scope: !4152, inlinedAt: !5823)
!5935 = !DILocation(line: 366, column: 6, scope: !4030, inlinedAt: !5823)
!5936 = !DILocation(line: 366, column: 26, scope: !4152, inlinedAt: !5823)
!5937 = !DILocation(line: 367, column: 6, scope: !4157, inlinedAt: !5823)
!5938 = !DILocation(line: 367, column: 11, scope: !4157, inlinedAt: !5823)
!5939 = !DILocation(line: 367, column: 6, scope: !4030, inlinedAt: !5823)
!5940 = !DILocation(line: 367, column: 26, scope: !4157, inlinedAt: !5823)
!5941 = !DILocation(line: 368, column: 6, scope: !4162, inlinedAt: !5823)
!5942 = !DILocation(line: 368, column: 11, scope: !4162, inlinedAt: !5823)
!5943 = !DILocation(line: 368, column: 6, scope: !4030, inlinedAt: !5823)
!5944 = !DILocation(line: 368, column: 26, scope: !4162, inlinedAt: !5823)
!5945 = !DILocation(line: 369, column: 6, scope: !4167, inlinedAt: !5823)
!5946 = !DILocation(line: 369, column: 11, scope: !4167, inlinedAt: !5823)
!5947 = !DILocation(line: 369, column: 6, scope: !4030, inlinedAt: !5823)
!5948 = !DILocation(line: 369, column: 26, scope: !4167, inlinedAt: !5823)
!5949 = !DILocation(line: 370, column: 6, scope: !4172, inlinedAt: !5823)
!5950 = !DILocation(line: 370, column: 11, scope: !4172, inlinedAt: !5823)
!5951 = !DILocation(line: 370, column: 6, scope: !4030, inlinedAt: !5823)
!5952 = !DILocation(line: 370, column: 26, scope: !4172, inlinedAt: !5823)
!5953 = !DILocation(line: 371, column: 6, scope: !4177, inlinedAt: !5823)
!5954 = !DILocation(line: 371, column: 11, scope: !4177, inlinedAt: !5823)
!5955 = !DILocation(line: 371, column: 6, scope: !4030, inlinedAt: !5823)
!5956 = !DILocation(line: 371, column: 26, scope: !4177, inlinedAt: !5823)
!5957 = !DILocation(line: 372, column: 6, scope: !4182, inlinedAt: !5823)
!5958 = !DILocation(line: 372, column: 11, scope: !4182, inlinedAt: !5823)
!5959 = !DILocation(line: 372, column: 6, scope: !4030, inlinedAt: !5823)
!5960 = !DILocation(line: 372, column: 26, scope: !4182, inlinedAt: !5823)
!5961 = !DILocation(line: 373, column: 6, scope: !4187, inlinedAt: !5823)
!5962 = !DILocation(line: 373, column: 11, scope: !4187, inlinedAt: !5823)
!5963 = !DILocation(line: 373, column: 6, scope: !4030, inlinedAt: !5823)
!5964 = !DILocation(line: 373, column: 26, scope: !4187, inlinedAt: !5823)
!5965 = !DILocation(line: 374, column: 6, scope: !4192, inlinedAt: !5823)
!5966 = !DILocation(line: 374, column: 11, scope: !4192, inlinedAt: !5823)
!5967 = !DILocation(line: 374, column: 6, scope: !4030, inlinedAt: !5823)
!5968 = !DILocation(line: 374, column: 26, scope: !4192, inlinedAt: !5823)
!5969 = !DILocation(line: 375, column: 6, scope: !4197, inlinedAt: !5823)
!5970 = !DILocation(line: 375, column: 11, scope: !4197, inlinedAt: !5823)
!5971 = !DILocation(line: 375, column: 6, scope: !4030, inlinedAt: !5823)
!5972 = !DILocation(line: 375, column: 27, scope: !4197, inlinedAt: !5823)
!5973 = !DILocation(line: 376, column: 6, scope: !4202, inlinedAt: !5823)
!5974 = !DILocation(line: 376, column: 11, scope: !4202, inlinedAt: !5823)
!5975 = !DILocation(line: 376, column: 6, scope: !4030, inlinedAt: !5823)
!5976 = !DILocation(line: 376, column: 32, scope: !4202, inlinedAt: !5823)
!5977 = !DILocation(line: 377, column: 6, scope: !4207, inlinedAt: !5823)
!5978 = !DILocation(line: 377, column: 11, scope: !4207, inlinedAt: !5823)
!5979 = !DILocation(line: 377, column: 6, scope: !4030, inlinedAt: !5823)
!5980 = !DILocation(line: 377, column: 32, scope: !4207, inlinedAt: !5823)
!5981 = !DILocation(line: 378, column: 6, scope: !4212, inlinedAt: !5823)
!5982 = !DILocation(line: 378, column: 11, scope: !4212, inlinedAt: !5823)
!5983 = !DILocation(line: 378, column: 6, scope: !4030, inlinedAt: !5823)
!5984 = !DILocation(line: 378, column: 32, scope: !4212, inlinedAt: !5823)
!5985 = !DILocation(line: 379, column: 6, scope: !4217, inlinedAt: !5823)
!5986 = !DILocation(line: 379, column: 11, scope: !4217, inlinedAt: !5823)
!5987 = !DILocation(line: 379, column: 6, scope: !4030, inlinedAt: !5823)
!5988 = !DILocation(line: 379, column: 33, scope: !4217, inlinedAt: !5823)
!5989 = !DILocation(line: 380, column: 6, scope: !4222, inlinedAt: !5823)
!5990 = !DILocation(line: 380, column: 11, scope: !4222, inlinedAt: !5823)
!5991 = !DILocation(line: 380, column: 6, scope: !4030, inlinedAt: !5823)
!5992 = !DILocation(line: 380, column: 33, scope: !4222, inlinedAt: !5823)
!5993 = !DILocation(line: 381, column: 6, scope: !4227, inlinedAt: !5823)
!5994 = !DILocation(line: 381, column: 11, scope: !4227, inlinedAt: !5823)
!5995 = !DILocation(line: 381, column: 6, scope: !4030, inlinedAt: !5823)
!5996 = !DILocation(line: 381, column: 33, scope: !4227, inlinedAt: !5823)
!5997 = !DILocation(line: 382, column: 2, scope: !4232, inlinedAt: !5823)
!5998 = !DILocation(line: 382, column: 2, scope: !4236, inlinedAt: !5823)
!5999 = !DILocation(line: 382, column: 2, scope: !4237, inlinedAt: !5823)
!6000 = !DILocation(line: 386, column: 1, scope: !4030, inlinedAt: !5823)
!6001 = !DILocation(line: 547, column: 9, scope: !4013, inlinedAt: !5815)
!6002 = !DILocation(line: 549, column: 8, scope: !4243, inlinedAt: !5815)
!6003 = !DILocation(line: 549, column: 7, scope: !4013, inlinedAt: !5815)
!6004 = !DILocation(line: 550, column: 4, scope: !4243, inlinedAt: !5815)
!6005 = !DILocation(line: 553, column: 33, scope: !4013, inlinedAt: !5815)
!6006 = !DILocation(line: 325, column: 6, scope: !4248, inlinedAt: !5821)
!6007 = !DILocation(line: 325, column: 6, scope: !4024, inlinedAt: !5821)
!6008 = !DILocation(line: 326, column: 3, scope: !4248, inlinedAt: !5821)
!6009 = !DILocation(line: 332, column: 9, scope: !4024, inlinedAt: !5821)
!6010 = !DILocation(line: 332, column: 15, scope: !4024, inlinedAt: !5821)
!6011 = !DILocation(line: 332, column: 2, scope: !4024, inlinedAt: !5821)
!6012 = !DILocation(line: 336, column: 1, scope: !4024, inlinedAt: !5821)
!6013 = !DILocation(line: 553, column: 5, scope: !4013, inlinedAt: !5815)
!6014 = !DILocation(line: 553, column: 41, scope: !4013, inlinedAt: !5815)
!6015 = !DILocation(line: 554, column: 5, scope: !4013, inlinedAt: !5815)
!6016 = !DILocation(line: 554, column: 12, scope: !4013, inlinedAt: !5815)
!6017 = !DILocation(line: 448, column: 31, scope: !4008, inlinedAt: !5814)
!6018 = !DILocation(line: 448, column: 34, scope: !4008, inlinedAt: !5814)
!6019 = !DILocation(line: 448, column: 14, scope: !4008, inlinedAt: !5814)
!6020 = !DILocation(line: 450, column: 22, scope: !4008, inlinedAt: !5814)
!6021 = !DILocation(line: 450, column: 25, scope: !4008, inlinedAt: !5814)
!6022 = !DILocation(line: 450, column: 30, scope: !4008, inlinedAt: !5814)
!6023 = !DILocation(line: 450, column: 36, scope: !4008, inlinedAt: !5814)
!6024 = !DILocation(line: 450, column: 8, scope: !4008, inlinedAt: !5814)
!6025 = !DILocation(line: 450, column: 6, scope: !4008, inlinedAt: !5814)
!6026 = !DILocation(line: 451, column: 9, scope: !4008, inlinedAt: !5814)
!6027 = !DILocation(line: 552, column: 3, scope: !4013, inlinedAt: !5815)
!6028 = !DILocation(line: 557, column: 19, scope: !4015, inlinedAt: !5815)
!6029 = !DILocation(line: 557, column: 25, scope: !4015, inlinedAt: !5815)
!6030 = !DILocation(line: 557, column: 9, scope: !4015, inlinedAt: !5815)
!6031 = !DILocation(line: 557, column: 2, scope: !4015, inlinedAt: !5815)
!6032 = !DILocation(line: 558, column: 1, scope: !4015, inlinedAt: !5815)
!6033 = !DILocation(line: 591, column: 3, scope: !5816)
!6034 = !DILocation(line: 592, column: 19, scope: !5812)
!6035 = !DILocation(line: 592, column: 26, scope: !5812)
!6036 = !DILocation(line: 592, column: 9, scope: !5812)
!6037 = !DILocation(line: 592, column: 2, scope: !5812)
!6038 = !DILocation(line: 593, column: 1, scope: !5812)
!6039 = distinct !DISubprogram(name: "__must_check_overflow", scope: !6040, file: !6040, line: 52, type: !6041, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!6040 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!6041 = !DISubroutineType(types: !6042)
!6042 = !{!459, !459}
!6043 = !DILocalVariable(name: "overflow", arg: 1, scope: !6039, file: !6040, line: 52, type: !459)
!6044 = !DILocation(line: 52, column: 60, scope: !6039)
!6045 = !DILocation(line: 54, column: 9, scope: !6039)
!6046 = !DILocation(line: 54, column: 2, scope: !6039)
!6047 = distinct !DISubprogram(name: "comedi_clear_hw_dev", scope: !3, file: !3, line: 61, type: !3928, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!6048 = !DILocalVariable(name: "dev", arg: 1, scope: !6047, file: !3, line: 61, type: !173)
!6049 = !DILocation(line: 61, column: 55, scope: !6047)
!6050 = !DILocation(line: 63, column: 13, scope: !6047)
!6051 = !DILocation(line: 63, column: 18, scope: !6047)
!6052 = !DILocation(line: 63, column: 2, scope: !6047)
!6053 = !DILocation(line: 64, column: 2, scope: !6047)
!6054 = !DILocation(line: 64, column: 7, scope: !6047)
!6055 = !DILocation(line: 64, column: 14, scope: !6047)
!6056 = !DILocation(line: 65, column: 1, scope: !6047)
!6057 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !4612, file: !4612, line: 308, type: !4613, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!6058 = !DILocalVariable(name: "m", arg: 1, scope: !6057, file: !4612, line: 308, type: !2797)
!6059 = !DILocation(line: 308, column: 66, scope: !6057)
!6060 = !DILocation(line: 310, column: 10, scope: !6057)
!6061 = !DILocation(line: 310, column: 12, scope: !6057)
!6062 = !DILocation(line: 310, column: 34, scope: !6057)
!6063 = !DILocation(line: 310, column: 39, scope: !6057)
!6064 = !DILocation(line: 310, column: 2, scope: !6057)
!6065 = distinct !DISubprogram(name: "comedi_sample_shift", scope: !112, file: !112, line: 813, type: !4801, scopeLine: 814, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!6066 = !DILocalVariable(name: "s", arg: 1, scope: !6065, file: !112, line: 813, type: !3782)
!6067 = !DILocation(line: 813, column: 73, scope: !6065)
!6068 = !DILocation(line: 815, column: 9, scope: !6065)
!6069 = !DILocation(line: 815, column: 12, scope: !6065)
!6070 = !DILocation(line: 815, column: 25, scope: !6065)
!6071 = !DILocation(line: 815, column: 2, scope: !6065)
!6072 = distinct !DISubprogram(name: "__comedi_device_postconfig", scope: !3, file: !3, line: 691, type: !3924, scopeLine: 692, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!6073 = !DILocalVariable(name: "dev", arg: 1, scope: !6072, file: !3, line: 691, type: !173)
!6074 = !DILocation(line: 691, column: 61, scope: !6072)
!6075 = !DILocalVariable(name: "s", scope: !6072, file: !3, line: 693, type: !3782)
!6076 = !DILocation(line: 693, column: 27, scope: !6072)
!6077 = !DILocalVariable(name: "ret", scope: !6072, file: !3, line: 694, type: !153)
!6078 = !DILocation(line: 694, column: 6, scope: !6072)
!6079 = !DILocalVariable(name: "i", scope: !6072, file: !3, line: 695, type: !153)
!6080 = !DILocation(line: 695, column: 6, scope: !6072)
!6081 = !DILocation(line: 697, column: 2, scope: !6072)
!6082 = !DILocation(line: 697, column: 2, scope: !6083)
!6083 = distinct !DILexicalBlock(scope: !6072, file: !3, line: 697, column: 2)
!6084 = !DILocation(line: 698, column: 7, scope: !6085)
!6085 = distinct !DILexicalBlock(scope: !6072, file: !3, line: 698, column: 6)
!6086 = !DILocation(line: 698, column: 12, scope: !6085)
!6087 = !DILocation(line: 698, column: 6, scope: !6072)
!6088 = !DILocation(line: 699, column: 3, scope: !6085)
!6089 = !DILocation(line: 699, column: 8, scope: !6085)
!6090 = !DILocation(line: 699, column: 27, scope: !6085)
!6091 = !DILocation(line: 701, column: 7, scope: !6092)
!6092 = distinct !DILexicalBlock(scope: !6072, file: !3, line: 701, column: 6)
!6093 = !DILocation(line: 701, column: 12, scope: !6092)
!6094 = !DILocation(line: 701, column: 6, scope: !6072)
!6095 = !DILocation(line: 702, column: 3, scope: !6092)
!6096 = !DILocation(line: 702, column: 8, scope: !6092)
!6097 = !DILocation(line: 702, column: 25, scope: !6092)
!6098 = !DILocation(line: 704, column: 9, scope: !6099)
!6099 = distinct !DILexicalBlock(scope: !6072, file: !3, line: 704, column: 2)
!6100 = !DILocation(line: 704, column: 7, scope: !6099)
!6101 = !DILocation(line: 704, column: 14, scope: !6102)
!6102 = distinct !DILexicalBlock(scope: !6099, file: !3, line: 704, column: 2)
!6103 = !DILocation(line: 704, column: 18, scope: !6102)
!6104 = !DILocation(line: 704, column: 23, scope: !6102)
!6105 = !DILocation(line: 704, column: 16, scope: !6102)
!6106 = !DILocation(line: 704, column: 2, scope: !6099)
!6107 = !DILocation(line: 705, column: 8, scope: !6108)
!6108 = distinct !DILexicalBlock(scope: !6102, file: !3, line: 704, column: 42)
!6109 = !DILocation(line: 705, column: 13, scope: !6108)
!6110 = !DILocation(line: 705, column: 24, scope: !6108)
!6111 = !DILocation(line: 705, column: 5, scope: !6108)
!6112 = !DILocation(line: 707, column: 7, scope: !6113)
!6113 = distinct !DILexicalBlock(scope: !6108, file: !3, line: 707, column: 7)
!6114 = !DILocation(line: 707, column: 10, scope: !6113)
!6115 = !DILocation(line: 707, column: 15, scope: !6113)
!6116 = !DILocation(line: 707, column: 7, scope: !6108)
!6117 = !DILocation(line: 708, column: 4, scope: !6113)
!6118 = !DILocation(line: 710, column: 7, scope: !6119)
!6119 = distinct !DILexicalBlock(scope: !6108, file: !3, line: 710, column: 7)
!6120 = !DILocation(line: 710, column: 10, scope: !6119)
!6121 = !DILocation(line: 710, column: 15, scope: !6119)
!6122 = !DILocation(line: 710, column: 7, scope: !6108)
!6123 = !DILocation(line: 711, column: 8, scope: !6124)
!6124 = distinct !DILexicalBlock(scope: !6125, file: !3, line: 711, column: 8)
!6125 = distinct !DILexicalBlock(scope: !6119, file: !3, line: 710, column: 34)
!6126 = !DILocation(line: 711, column: 11, scope: !6124)
!6127 = !DILocation(line: 711, column: 18, scope: !6124)
!6128 = !DILocation(line: 711, column: 8, scope: !6125)
!6129 = !DILocation(line: 712, column: 24, scope: !6124)
!6130 = !DILocation(line: 712, column: 27, scope: !6124)
!6131 = !DILocation(line: 712, column: 21, scope: !6124)
!6132 = !DILocation(line: 712, column: 35, scope: !6124)
!6133 = !DILocation(line: 712, column: 5, scope: !6124)
!6134 = !DILocation(line: 712, column: 8, scope: !6124)
!6135 = !DILocation(line: 712, column: 16, scope: !6124)
!6136 = !DILocation(line: 714, column: 5, scope: !6124)
!6137 = !DILocation(line: 714, column: 8, scope: !6124)
!6138 = !DILocation(line: 714, column: 16, scope: !6124)
!6139 = !DILocation(line: 715, column: 3, scope: !6125)
!6140 = !DILocation(line: 717, column: 7, scope: !6141)
!6141 = distinct !DILexicalBlock(scope: !6108, file: !3, line: 717, column: 7)
!6142 = !DILocation(line: 717, column: 10, scope: !6141)
!6143 = !DILocation(line: 717, column: 23, scope: !6141)
!6144 = !DILocation(line: 717, column: 7, scope: !6108)
!6145 = !DILocation(line: 718, column: 4, scope: !6141)
!6146 = !DILocation(line: 718, column: 7, scope: !6141)
!6147 = !DILocation(line: 718, column: 20, scope: !6141)
!6148 = !DILocation(line: 720, column: 7, scope: !6149)
!6149 = distinct !DILexicalBlock(scope: !6108, file: !3, line: 720, column: 7)
!6150 = !DILocation(line: 720, column: 10, scope: !6149)
!6151 = !DILocation(line: 720, column: 7, scope: !6108)
!6152 = !DILocation(line: 721, column: 43, scope: !6153)
!6153 = distinct !DILexicalBlock(scope: !6149, file: !3, line: 720, column: 18)
!6154 = !DILocation(line: 721, column: 48, scope: !6153)
!6155 = !DILocation(line: 721, column: 10, scope: !6153)
!6156 = !DILocation(line: 721, column: 8, scope: !6153)
!6157 = !DILocation(line: 722, column: 8, scope: !6158)
!6158 = distinct !DILexicalBlock(scope: !6153, file: !3, line: 722, column: 8)
!6159 = !DILocation(line: 722, column: 8, scope: !6153)
!6160 = !DILocation(line: 723, column: 12, scope: !6158)
!6161 = !DILocation(line: 723, column: 5, scope: !6158)
!6162 = !DILocation(line: 724, column: 3, scope: !6153)
!6163 = !DILocation(line: 726, column: 8, scope: !6164)
!6164 = distinct !DILexicalBlock(scope: !6108, file: !3, line: 726, column: 7)
!6165 = !DILocation(line: 726, column: 11, scope: !6164)
!6166 = !DILocation(line: 726, column: 23, scope: !6164)
!6167 = !DILocation(line: 726, column: 27, scope: !6164)
!6168 = !DILocation(line: 726, column: 30, scope: !6164)
!6169 = !DILocation(line: 726, column: 7, scope: !6108)
!6170 = !DILocation(line: 727, column: 4, scope: !6164)
!6171 = !DILocation(line: 727, column: 7, scope: !6164)
!6172 = !DILocation(line: 727, column: 19, scope: !6164)
!6173 = !DILocation(line: 729, column: 8, scope: !6174)
!6174 = distinct !DILexicalBlock(scope: !6108, file: !3, line: 729, column: 7)
!6175 = !DILocation(line: 729, column: 11, scope: !6174)
!6176 = !DILocation(line: 729, column: 21, scope: !6174)
!6177 = !DILocation(line: 729, column: 24, scope: !6174)
!6178 = !DILocation(line: 729, column: 27, scope: !6174)
!6179 = !DILocation(line: 729, column: 7, scope: !6108)
!6180 = !DILocation(line: 730, column: 4, scope: !6174)
!6181 = !DILocation(line: 730, column: 7, scope: !6174)
!6182 = !DILocation(line: 730, column: 17, scope: !6174)
!6183 = !DILocation(line: 731, column: 8, scope: !6184)
!6184 = distinct !DILexicalBlock(scope: !6108, file: !3, line: 731, column: 7)
!6185 = !DILocation(line: 731, column: 11, scope: !6184)
!6186 = !DILocation(line: 731, column: 22, scope: !6184)
!6187 = !DILocation(line: 731, column: 25, scope: !6184)
!6188 = !DILocation(line: 731, column: 28, scope: !6184)
!6189 = !DILocation(line: 731, column: 7, scope: !6108)
!6190 = !DILocation(line: 732, column: 4, scope: !6184)
!6191 = !DILocation(line: 732, column: 7, scope: !6184)
!6192 = !DILocation(line: 732, column: 18, scope: !6184)
!6193 = !DILocation(line: 734, column: 8, scope: !6194)
!6194 = distinct !DILexicalBlock(scope: !6108, file: !3, line: 734, column: 7)
!6195 = !DILocation(line: 734, column: 11, scope: !6194)
!6196 = !DILocation(line: 734, column: 7, scope: !6108)
!6197 = !DILocation(line: 735, column: 4, scope: !6194)
!6198 = !DILocation(line: 735, column: 7, scope: !6194)
!6199 = !DILocation(line: 735, column: 17, scope: !6194)
!6200 = !DILocation(line: 736, column: 8, scope: !6201)
!6201 = distinct !DILexicalBlock(scope: !6108, file: !3, line: 736, column: 7)
!6202 = !DILocation(line: 736, column: 11, scope: !6201)
!6203 = !DILocation(line: 736, column: 7, scope: !6108)
!6204 = !DILocation(line: 737, column: 4, scope: !6201)
!6205 = !DILocation(line: 737, column: 7, scope: !6201)
!6206 = !DILocation(line: 737, column: 18, scope: !6201)
!6207 = !DILocation(line: 738, column: 8, scope: !6208)
!6208 = distinct !DILexicalBlock(scope: !6108, file: !3, line: 738, column: 7)
!6209 = !DILocation(line: 738, column: 11, scope: !6208)
!6210 = !DILocation(line: 738, column: 7, scope: !6108)
!6211 = !DILocation(line: 739, column: 4, scope: !6208)
!6212 = !DILocation(line: 739, column: 7, scope: !6208)
!6213 = !DILocation(line: 739, column: 17, scope: !6208)
!6214 = !DILocation(line: 740, column: 8, scope: !6215)
!6215 = distinct !DILexicalBlock(scope: !6108, file: !3, line: 740, column: 7)
!6216 = !DILocation(line: 740, column: 11, scope: !6215)
!6217 = !DILocation(line: 740, column: 7, scope: !6108)
!6218 = !DILocation(line: 741, column: 4, scope: !6215)
!6219 = !DILocation(line: 741, column: 7, scope: !6215)
!6220 = !DILocation(line: 741, column: 19, scope: !6215)
!6221 = !DILocation(line: 743, column: 8, scope: !6222)
!6222 = distinct !DILexicalBlock(scope: !6108, file: !3, line: 743, column: 7)
!6223 = !DILocation(line: 743, column: 11, scope: !6222)
!6224 = !DILocation(line: 743, column: 7, scope: !6108)
!6225 = !DILocation(line: 744, column: 4, scope: !6222)
!6226 = !DILocation(line: 744, column: 7, scope: !6222)
!6227 = !DILocation(line: 744, column: 12, scope: !6222)
!6228 = !DILocation(line: 745, column: 2, scope: !6108)
!6229 = !DILocation(line: 704, column: 38, scope: !6102)
!6230 = !DILocation(line: 704, column: 2, scope: !6102)
!6231 = distinct !{!6231, !6106, !6232}
!6232 = !DILocation(line: 745, column: 2, scope: !6099)
!6233 = !DILocation(line: 747, column: 2, scope: !6072)
!6234 = !DILocation(line: 748, column: 1, scope: !6072)
!6235 = distinct !DISubprogram(name: "insn_device_inval", scope: !3, file: !3, line: 217, type: !3932, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!6236 = !DILocalVariable(name: "dev", arg: 1, scope: !6235, file: !3, line: 217, type: !173)
!6237 = !DILocation(line: 217, column: 52, scope: !6235)
!6238 = !DILocalVariable(name: "insn", arg: 2, scope: !6235, file: !3, line: 218, type: !3881)
!6239 = !DILocation(line: 218, column: 29, scope: !6235)
!6240 = !DILocalVariable(name: "data", arg: 3, scope: !6235, file: !3, line: 218, type: !2653)
!6241 = !DILocation(line: 218, column: 49, scope: !6235)
!6242 = !DILocation(line: 220, column: 2, scope: !6235)
!6243 = distinct !DISubprogram(name: "get_zero_valid_routes", scope: !3, file: !3, line: 223, type: !3936, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!6244 = !DILocalVariable(name: "dev", arg: 1, scope: !6243, file: !3, line: 223, type: !173)
!6245 = !DILocation(line: 223, column: 65, scope: !6243)
!6246 = !DILocalVariable(name: "n_pairs", arg: 2, scope: !6243, file: !3, line: 224, type: !7)
!6247 = !DILocation(line: 224, column: 21, scope: !6243)
!6248 = !DILocalVariable(name: "pair_data", arg: 3, scope: !6243, file: !3, line: 225, type: !2653)
!6249 = !DILocation(line: 225, column: 22, scope: !6243)
!6250 = !DILocation(line: 227, column: 2, scope: !6243)
!6251 = !DILocalVariable(name: "dev", arg: 1, scope: !3957, file: !3, line: 642, type: !173)
!6252 = !DILocation(line: 642, column: 67, scope: !3957)
!6253 = !DILocalVariable(name: "s", arg: 2, scope: !3957, file: !3, line: 643, type: !3782)
!6254 = !DILocation(line: 643, column: 35, scope: !3957)
!6255 = !DILocalVariable(name: "async", scope: !3957, file: !3, line: 645, type: !3793)
!6256 = !DILocation(line: 645, column: 23, scope: !3957)
!6257 = !DILocalVariable(name: "buf_size", scope: !3957, file: !3, line: 646, type: !7)
!6258 = !DILocation(line: 646, column: 15, scope: !3957)
!6259 = !DILocalVariable(name: "ret", scope: !3957, file: !3, line: 647, type: !153)
!6260 = !DILocation(line: 647, column: 6, scope: !3957)
!6261 = !DILocation(line: 649, column: 2, scope: !3957)
!6262 = !DILocation(line: 649, column: 2, scope: !6263)
!6263 = distinct !DILexicalBlock(scope: !3957, file: !3, line: 649, column: 2)
!6264 = !DILocation(line: 650, column: 7, scope: !6265)
!6265 = distinct !DILexicalBlock(scope: !3957, file: !3, line: 650, column: 6)
!6266 = !DILocation(line: 650, column: 10, scope: !6265)
!6267 = !DILocation(line: 650, column: 23, scope: !6265)
!6268 = !DILocation(line: 650, column: 57, scope: !6265)
!6269 = !DILocation(line: 650, column: 6, scope: !3957)
!6270 = !DILocation(line: 651, column: 3, scope: !6271)
!6271 = distinct !DILexicalBlock(scope: !6265, file: !3, line: 650, column: 63)
!6272 = !DILocation(line: 653, column: 3, scope: !6271)
!6273 = !DILocation(line: 655, column: 7, scope: !6274)
!6274 = distinct !DILexicalBlock(scope: !3957, file: !3, line: 655, column: 6)
!6275 = !DILocation(line: 655, column: 10, scope: !6274)
!6276 = !DILocation(line: 655, column: 6, scope: !3957)
!6277 = !DILocation(line: 656, column: 3, scope: !6278)
!6278 = distinct !DILexicalBlock(scope: !6274, file: !3, line: 655, column: 22)
!6279 = !DILocation(line: 658, column: 3, scope: !6278)
!6280 = !DILocation(line: 660, column: 7, scope: !6281)
!6281 = distinct !DILexicalBlock(scope: !3957, file: !3, line: 660, column: 6)
!6282 = !DILocation(line: 660, column: 10, scope: !6281)
!6283 = !DILocation(line: 660, column: 6, scope: !3957)
!6284 = !DILocation(line: 661, column: 3, scope: !6281)
!6285 = !DILocation(line: 664, column: 10, scope: !3957)
!6286 = !DILocation(line: 664, column: 8, scope: !3957)
!6287 = !DILocation(line: 665, column: 7, scope: !6288)
!6288 = distinct !DILexicalBlock(scope: !3957, file: !3, line: 665, column: 6)
!6289 = !DILocation(line: 665, column: 6, scope: !3957)
!6290 = !DILocation(line: 666, column: 3, scope: !6288)
!6291 = !DILocation(line: 668, column: 2, scope: !3957)
!6292 = !DILocation(line: 668, column: 2, scope: !6293)
!6293 = distinct !DILexicalBlock(scope: !3957, file: !3, line: 668, column: 2)
!6294 = !DILocation(line: 669, column: 13, scope: !3957)
!6295 = !DILocation(line: 669, column: 2, scope: !3957)
!6296 = !DILocation(line: 669, column: 5, scope: !3957)
!6297 = !DILocation(line: 669, column: 11, scope: !3957)
!6298 = !DILocation(line: 671, column: 23, scope: !3957)
!6299 = !DILocation(line: 671, column: 53, scope: !3957)
!6300 = !DILocation(line: 671, column: 2, scope: !3957)
!6301 = !DILocation(line: 671, column: 9, scope: !3957)
!6302 = !DILocation(line: 671, column: 21, scope: !3957)
!6303 = !DILocation(line: 672, column: 13, scope: !3957)
!6304 = !DILocation(line: 672, column: 40, scope: !3957)
!6305 = !DILocation(line: 672, column: 11, scope: !3957)
!6306 = !DILocation(line: 673, column: 6, scope: !6307)
!6307 = distinct !DILexicalBlock(scope: !3957, file: !3, line: 673, column: 6)
!6308 = !DILocation(line: 673, column: 17, scope: !6307)
!6309 = !DILocation(line: 673, column: 24, scope: !6307)
!6310 = !DILocation(line: 673, column: 15, scope: !6307)
!6311 = !DILocation(line: 673, column: 6, scope: !3957)
!6312 = !DILocation(line: 674, column: 14, scope: !6307)
!6313 = !DILocation(line: 674, column: 21, scope: !6307)
!6314 = !DILocation(line: 674, column: 12, scope: !6307)
!6315 = !DILocation(line: 674, column: 3, scope: !6307)
!6316 = !DILocation(line: 676, column: 23, scope: !6317)
!6317 = distinct !DILexicalBlock(scope: !3957, file: !3, line: 676, column: 6)
!6318 = !DILocation(line: 676, column: 28, scope: !6317)
!6319 = !DILocation(line: 676, column: 31, scope: !6317)
!6320 = !DILocation(line: 676, column: 6, scope: !6317)
!6321 = !DILocation(line: 676, column: 41, scope: !6317)
!6322 = !DILocation(line: 676, column: 6, scope: !3957)
!6323 = !DILocation(line: 677, column: 3, scope: !6324)
!6324 = distinct !DILexicalBlock(scope: !6317, file: !3, line: 676, column: 46)
!6325 = !DILocation(line: 678, column: 3, scope: !6324)
!6326 = !DILocation(line: 680, column: 6, scope: !6327)
!6327 = distinct !DILexicalBlock(scope: !3957, file: !3, line: 680, column: 6)
!6328 = !DILocation(line: 680, column: 9, scope: !6327)
!6329 = !DILocation(line: 680, column: 6, scope: !3957)
!6330 = !DILocation(line: 681, column: 9, scope: !6331)
!6331 = distinct !DILexicalBlock(scope: !6327, file: !3, line: 680, column: 21)
!6332 = !DILocation(line: 681, column: 12, scope: !6331)
!6333 = !DILocation(line: 681, column: 23, scope: !6331)
!6334 = !DILocation(line: 681, column: 28, scope: !6331)
!6335 = !DILocation(line: 681, column: 7, scope: !6331)
!6336 = !DILocation(line: 682, column: 7, scope: !6337)
!6337 = distinct !DILexicalBlock(scope: !6331, file: !3, line: 682, column: 7)
!6338 = !DILocation(line: 682, column: 11, scope: !6337)
!6339 = !DILocation(line: 682, column: 7, scope: !6331)
!6340 = !DILocation(line: 683, column: 11, scope: !6337)
!6341 = !DILocation(line: 683, column: 4, scope: !6337)
!6342 = !DILocation(line: 684, column: 2, scope: !6331)
!6343 = !DILocation(line: 686, column: 31, scope: !3957)
!6344 = !DILocation(line: 686, column: 2, scope: !3957)
!6345 = !DILocation(line: 688, column: 2, scope: !3957)
!6346 = !DILocation(line: 689, column: 1, scope: !3957)
!6347 = distinct !DISubprogram(name: "insn_rw_emulate_bits", scope: !3, file: !3, line: 607, type: !3879, scopeLine: 611, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!6348 = !DILocalVariable(name: "dev", arg: 1, scope: !6347, file: !3, line: 607, type: !173)
!6349 = !DILocation(line: 607, column: 55, scope: !6347)
!6350 = !DILocalVariable(name: "s", arg: 2, scope: !6347, file: !3, line: 608, type: !3782)
!6351 = !DILocation(line: 608, column: 30, scope: !6347)
!6352 = !DILocalVariable(name: "insn", arg: 3, scope: !6347, file: !3, line: 609, type: !3881)
!6353 = !DILocation(line: 609, column: 25, scope: !6347)
!6354 = !DILocalVariable(name: "data", arg: 4, scope: !6347, file: !3, line: 610, type: !2653)
!6355 = !DILocation(line: 610, column: 19, scope: !6347)
!6356 = !DILocalVariable(name: "_insn", scope: !6347, file: !3, line: 612, type: !3882)
!6357 = !DILocation(line: 612, column: 21, scope: !6347)
!6358 = !DILocalVariable(name: "chan", scope: !6347, file: !3, line: 613, type: !7)
!6359 = !DILocation(line: 613, column: 15, scope: !6347)
!6360 = !DILocation(line: 613, column: 22, scope: !6347)
!6361 = !DILocalVariable(name: "base_chan", scope: !6347, file: !3, line: 614, type: !7)
!6362 = !DILocation(line: 614, column: 15, scope: !6347)
!6363 = !DILocation(line: 614, column: 28, scope: !6347)
!6364 = !DILocation(line: 614, column: 33, scope: !6347)
!6365 = !DILocation(line: 614, column: 27, scope: !6347)
!6366 = !DILocation(line: 614, column: 45, scope: !6347)
!6367 = !DILocalVariable(name: "_data", scope: !6347, file: !3, line: 615, type: !6368)
!6368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !1538)
!6369 = !DILocation(line: 615, column: 15, scope: !6347)
!6370 = !DILocalVariable(name: "ret", scope: !6347, file: !3, line: 616, type: !153)
!6371 = !DILocation(line: 616, column: 6, scope: !6347)
!6372 = !DILocation(line: 618, column: 2, scope: !6347)
!6373 = !DILocation(line: 619, column: 2, scope: !6347)
!6374 = !DILocation(line: 620, column: 8, scope: !6347)
!6375 = !DILocation(line: 620, column: 13, scope: !6347)
!6376 = !DILocation(line: 621, column: 19, scope: !6347)
!6377 = !DILocation(line: 621, column: 8, scope: !6347)
!6378 = !DILocation(line: 621, column: 17, scope: !6347)
!6379 = !DILocation(line: 622, column: 8, scope: !6347)
!6380 = !DILocation(line: 622, column: 10, scope: !6347)
!6381 = !DILocation(line: 623, column: 17, scope: !6347)
!6382 = !DILocation(line: 623, column: 23, scope: !6347)
!6383 = !DILocation(line: 623, column: 8, scope: !6347)
!6384 = !DILocation(line: 623, column: 15, scope: !6347)
!6385 = !DILocation(line: 625, column: 6, scope: !6386)
!6386 = distinct !DILexicalBlock(scope: !6347, file: !3, line: 625, column: 6)
!6387 = !DILocation(line: 625, column: 12, scope: !6386)
!6388 = !DILocation(line: 625, column: 17, scope: !6386)
!6389 = !DILocation(line: 625, column: 6, scope: !6347)
!6390 = !DILocation(line: 626, column: 9, scope: !6391)
!6391 = distinct !DILexicalBlock(scope: !6392, file: !3, line: 626, column: 7)
!6392 = distinct !DILexicalBlock(scope: !6386, file: !3, line: 625, column: 32)
!6393 = !DILocation(line: 626, column: 12, scope: !6391)
!6394 = !DILocation(line: 626, column: 25, scope: !6391)
!6395 = !DILocation(line: 626, column: 7, scope: !6392)
!6396 = !DILocation(line: 627, column: 4, scope: !6391)
!6397 = !DILocation(line: 628, column: 20, scope: !6392)
!6398 = !DILocation(line: 628, column: 27, scope: !6392)
!6399 = !DILocation(line: 628, column: 25, scope: !6392)
!6400 = !DILocation(line: 628, column: 16, scope: !6392)
!6401 = !DILocation(line: 628, column: 3, scope: !6392)
!6402 = !DILocation(line: 628, column: 12, scope: !6392)
!6403 = !DILocation(line: 629, column: 14, scope: !6392)
!6404 = !DILocation(line: 629, column: 31, scope: !6392)
!6405 = !DILocation(line: 629, column: 38, scope: !6392)
!6406 = !DILocation(line: 629, column: 36, scope: !6392)
!6407 = !DILocation(line: 629, column: 27, scope: !6392)
!6408 = !DILocation(line: 629, column: 3, scope: !6392)
!6409 = !DILocation(line: 629, column: 12, scope: !6392)
!6410 = !DILocation(line: 630, column: 2, scope: !6392)
!6411 = !DILocation(line: 632, column: 8, scope: !6347)
!6412 = !DILocation(line: 632, column: 11, scope: !6347)
!6413 = !DILocation(line: 632, column: 21, scope: !6347)
!6414 = !DILocation(line: 632, column: 26, scope: !6347)
!6415 = !DILocation(line: 632, column: 37, scope: !6347)
!6416 = !DILocation(line: 632, column: 6, scope: !6347)
!6417 = !DILocation(line: 633, column: 6, scope: !6418)
!6418 = distinct !DILexicalBlock(scope: !6347, file: !3, line: 633, column: 6)
!6419 = !DILocation(line: 633, column: 10, scope: !6418)
!6420 = !DILocation(line: 633, column: 6, scope: !6347)
!6421 = !DILocation(line: 634, column: 10, scope: !6418)
!6422 = !DILocation(line: 634, column: 3, scope: !6418)
!6423 = !DILocation(line: 636, column: 6, scope: !6424)
!6424 = distinct !DILexicalBlock(scope: !6347, file: !3, line: 636, column: 6)
!6425 = !DILocation(line: 636, column: 12, scope: !6424)
!6426 = !DILocation(line: 636, column: 17, scope: !6424)
!6427 = !DILocation(line: 636, column: 6, scope: !6347)
!6428 = !DILocation(line: 637, column: 14, scope: !6424)
!6429 = !DILocation(line: 637, column: 27, scope: !6424)
!6430 = !DILocation(line: 637, column: 34, scope: !6424)
!6431 = !DILocation(line: 637, column: 32, scope: !6424)
!6432 = !DILocation(line: 637, column: 23, scope: !6424)
!6433 = !DILocation(line: 637, column: 46, scope: !6424)
!6434 = !DILocation(line: 637, column: 3, scope: !6424)
!6435 = !DILocation(line: 637, column: 11, scope: !6424)
!6436 = !DILocation(line: 639, column: 2, scope: !6347)
!6437 = !DILocation(line: 640, column: 1, scope: !6347)
!6438 = distinct !DISubprogram(name: "poll_invalid", scope: !3, file: !3, line: 212, type: !3896, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!6439 = !DILocalVariable(name: "dev", arg: 1, scope: !6438, file: !3, line: 212, type: !173)
!6440 = !DILocation(line: 212, column: 47, scope: !6438)
!6441 = !DILocalVariable(name: "s", arg: 2, scope: !6438, file: !3, line: 212, type: !3782)
!6442 = !DILocation(line: 212, column: 77, scope: !6438)
!6443 = !DILocation(line: 214, column: 2, scope: !6438)
