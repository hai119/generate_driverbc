; ModuleID = '../bcout/drivers/staging/comedi/drivers/ni_pcidio.llvm.bc'
source_filename = "drivers/staging/comedi/drivers/ni_pcidio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_ni_pcidio_driver_init6:\09\09\09"
module asm ".long\09ni_pcidio_driver_init - .\09\09\09"
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
%struct.nidio_board = type { i8*, i8, i32 }
%struct.paravirt_patch_template = type { %struct.pv_init_ops, %struct.pv_time_ops, %struct.pv_cpu_ops, %struct.pv_irq_ops, %struct.pv_mmu_ops, %struct.pv_lock_ops }
%struct.pv_init_ops = type { i32 (i8, i8*, i64, i32)* }
%struct.pv_time_ops = type { i64 ()*, i64 (i32)* }
%struct.pv_cpu_ops = type { void ()*, i64 (i32)*, void (i32, i64)*, i64 ()*, void (i64)*, void (i64)*, void ()*, void (%struct.desc_ptr*)*, void (%struct.desc_ptr*)*, void (i8*, i32)*, i64 ()*, void (%struct.thread_struct*, i32)*, void (i32)*, void (%struct.desc_struct*, i32, i8*)*, void (%struct.desc_struct*, i32, i8*, i32)*, void (%struct.gate_struct*, i32, %struct.gate_struct*)*, void (%struct.desc_struct*, i32)*, void (%struct.desc_struct*, i32)*, void (i64)*, void ()*, void ()*, void ()*, void (i32*, i32*, i32*, i32*)*, i64 (i32)*, void (i32, i32, i32)*, i64 (i32, i32*)*, i32 (i32, i32, i32)*, i64 (i32)*, void ()*, void ()*, void ()*, void (%struct.task_struct*)*, void (%struct.task_struct*)* }
%struct.desc_ptr = type <{ i16, i64 }>
%struct.gate_struct = type { i16, i16, %struct.idt_bits, i16, i32, i32 }
%struct.idt_bits = type { i16 }
%struct.pv_irq_ops = type { %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void ()*, void ()* }
%struct.paravirt_callee_save = type { i8* }
%struct.pv_mmu_ops = type { void ()*, void ()*, void (i64)*, void (%struct.cpumask*, %struct.flush_tlb_info*)*, void (%struct.mmu_gather*, i8*)*, void (%struct.mm_struct*)*, %struct.paravirt_callee_save, void (i64)*, i64 ()*, void (i64)*, void (%struct.mm_struct*, %struct.mm_struct*)*, void (%struct.mm_struct*, %struct.mm_struct*)*, i32 (%struct.mm_struct*)*, void (%struct.mm_struct*, %struct.pgd_t*)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (i64)*, void (i64)*, void (i64)*, void (i64)*, void (%struct.pte_t*, i64)*, void (%struct.pmd_t*, i64)*, i64 (%struct.vm_area_struct*, i64, %struct.pte_t*)*, void (%struct.vm_area_struct*, i64, %struct.pte_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.pud_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.p4d_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.pgd_t*, i64)*, %struct.pv_lazy_ops, void (i32, i64, i64)* }
%struct.flush_tlb_info = type opaque
%struct.mmu_gather = type opaque
%struct.p4d_t = type { i64 }
%struct.pv_lazy_ops = type { void ()*, void ()*, void ()* }
%struct.pv_lock_ops = type { void (%struct.qspinlock*, i32)*, %struct.paravirt_callee_save, void (i8*, i8)*, void (i32)*, %struct.paravirt_callee_save }
%struct.qspinlock = type opaque
%struct.nidio96_private = type { %struct.mite*, i32, i32, i16, %struct.mite_channel*, %struct.mite_ring*, %struct.spinlock }
%struct.mite = type { %struct.pci_dev*, i8*, [8 x %struct.mite_channel], i32, i32, %struct.spinlock }
%struct.mite_channel = type { %struct.mite*, i32, i32, i32, %struct.mite_ring* }
%struct.mite_ring = type { %struct.device*, i32, %struct.mite_dma_desc*, i64 }
%struct.mite_dma_desc = type { i32, i32, i32, i32 }

@__UNIQUE_ID_firmware234 = internal constant [31 x i8] c"ni_pcidio.firmware=ni6534a.bin\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_firmware235 = internal constant [32 x i8] c"ni_pcidio.firmware=niscrb01.bin\00", section ".modinfo", align 1, !dbg !3090
@__UNIQUE_ID_firmware236 = internal constant [32 x i8] c"ni_pcidio.firmware=niscrb02.bin\00", section ".modinfo", align 1, !dbg !3093
@__UNIQUE_ID___addressable_ni_pcidio_driver_init238 = internal global i8* bitcast (i32 ()* @ni_pcidio_driver_init to i8*), section ".discard.addressable", align 8, !dbg !3095
@ni_pcidio_driver = internal global %struct.comedi_driver { %struct.comedi_driver* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), %struct.module* null, i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* null, void (%struct.comedi_device*)* @nidio_detach, i32 (%struct.comedi_device*, i64)* @nidio_auto_attach, i32 0, i8** null, i32 0 }, align 8, !dbg !3122
@ni_pcidio_pci_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), %struct.pci_device_id* getelementptr inbounds ([4 x %struct.pci_device_id], [4 x %struct.pci_device_id]* @ni_pcidio_pci_table, i32 0, i32 0), i32 (%struct.pci_dev*, %struct.pci_device_id*)* @ni_pcidio_pci_probe, void (%struct.pci_dev*)* @comedi_pci_auto_unconfig, i32 (%struct.pci_dev*, i32)* null, i32 (%struct.pci_dev*)* null, void (%struct.pci_dev*)* null, i32 (%struct.pci_dev*, i32)* null, %struct.pci_error_handlers* null, %struct.attribute_group** null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, align 8, !dbg !4097
@__exitcall_ni_pcidio_driver_exit = internal global void ()* @ni_pcidio_driver_exit, section ".exitcall.exit", align 8, !dbg !3097
@__UNIQUE_ID_author239 = internal constant [47 x i8] c"ni_pcidio.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1, !dbg !3102
@__UNIQUE_ID_description240 = internal constant [46 x i8] c"ni_pcidio.description=Comedi low-level driver\00", section ".modinfo", align 1, !dbg !3107
@__UNIQUE_ID_file241 = internal constant [56 x i8] c"ni_pcidio.file=drivers/staging/comedi/drivers/ni_pcidio\00", section ".modinfo", align 1, !dbg !3112
@__UNIQUE_ID_license242 = internal constant [22 x i8] c"ni_pcidio.license=GPL\00", section ".modinfo", align 1, !dbg !3117
@.str = private unnamed_addr constant [10 x i8] c"ni_pcidio\00", align 1
@nidio_boards = internal constant [3 x %struct.nidio_board] [%struct.nidio_board { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8 0, i32 50 }, %struct.nidio_board { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8 0, i32 50 }, %struct.nidio_board { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8 1, i32 50 }], align 16, !dbg !4076
@.str.1 = private unnamed_addr constant [11 x i8] c"%s rev=%d\0A\00", align 1
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"pci-dio-32hs\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"pxi-6533\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"pci-6534\00", align 1
@pci_6534_upload_firmware.fw_file = internal constant [3 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0)], align 16, !dbg !4085
@.str.5 = private unnamed_addr constant [13 x i8] c"niscrb01.bin\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"niscrb02.bin\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"ni6534a.bin\00", align 1
@pci_6534_load_fpga.timeout = internal constant i32 1000, align 4, !dbg !4089
@.str.8 = private unnamed_addr constant [59 x i8] c"ni_pcidio: failed to load fpga %i, waiting for status 0x2\0A\00", align 1
@.str.9 = private unnamed_addr constant [59 x i8] c"ni_pcidio: failed to load fpga %i, waiting for status 0x3\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"ni_pcidio: failed to load word into fpga %i\0A\00", align 1
@current_task = external dso_local global %struct.task_struct*, section ".data", align 8
@.str.11 = private unnamed_addr constant [43 x i8] c"drivers/staging/comedi/drivers/ni_pcidio.c\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"failed to reserve mite dma channel\0A\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@ni_pcidio_pci_table = internal constant [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 4243, i32 4432, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 4243, i32 4784, i32 -1, i32 -1, i32 0, i32 0, i64 2 }, %struct.pci_device_id { i32 4243, i32 4896, i32 -1, i32 -1, i32 0, i32 0, i64 1 }, %struct.pci_device_id zeroinitializer], align 16, !dbg !4377
@llvm.used = appending global [10 x i8*] [i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__UNIQUE_ID_firmware234, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__UNIQUE_ID_firmware235, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__UNIQUE_ID_firmware236, i32 0, i32 0), i8* bitcast (i8** @__UNIQUE_ID___addressable_ni_pcidio_driver_init238 to i8*), i8* bitcast (void ()* @ni_pcidio_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_ni_pcidio_driver_exit to i8*), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__UNIQUE_ID_author239, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__UNIQUE_ID_description240, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__UNIQUE_ID_file241, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__UNIQUE_ID_license242, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @ni_pcidio_driver_init() #0 section ".init.text" !dbg !4389 {
entry:
  %call = call i32 @comedi_pci_driver_register(%struct.comedi_driver* @ni_pcidio_driver, %struct.pci_driver* @ni_pcidio_pci_driver) #9, !dbg !4392
  ret i32 %call, !dbg !4392
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @ni_pcidio_driver_exit() #0 section ".exit.text" !dbg !4393 {
entry:
  call void @comedi_pci_driver_unregister(%struct.comedi_driver* @ni_pcidio_driver, %struct.pci_driver* @ni_pcidio_pci_driver) #9, !dbg !4394
  ret void, !dbg !4394
}

; Function Attrs: noredzone
declare dso_local void @comedi_pci_driver_unregister(%struct.comedi_driver*, %struct.pci_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_pci_driver_register(%struct.comedi_driver*, %struct.pci_driver*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @nidio_detach(%struct.comedi_device* %dev) #2 !dbg !4395 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %devpriv = alloca %struct.nidio96_private*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4396, metadata !DIExpression()), !dbg !4397
  call void @llvm.dbg.declare(metadata %struct.nidio96_private** %devpriv, metadata !4398, metadata !DIExpression()), !dbg !4443
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4444
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !4445
  %1 = load i8*, i8** %private, align 8, !dbg !4445
  %2 = bitcast i8* %1 to %struct.nidio96_private*, !dbg !4444
  store %struct.nidio96_private* %2, %struct.nidio96_private** %devpriv, align 8, !dbg !4443
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4446
  %irq = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %3, i32 0, i32 20, !dbg !4448
  %4 = load i32, i32* %irq, align 8, !dbg !4448
  %tobool = icmp ne i32 %4, 0, !dbg !4446
  br i1 %tobool, label %if.then, label %if.end, !dbg !4449

if.then:                                          ; preds = %entry
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4450
  %irq1 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 20, !dbg !4451
  %6 = load i32, i32* %irq1, align 8, !dbg !4451
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4452
  %8 = bitcast %struct.comedi_device* %7 to i8*, !dbg !4452
  %call = call i8* @free_irq(i32 %6, i8* %8) #9, !dbg !4453
  br label %if.end, !dbg !4453

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.nidio96_private*, %struct.nidio96_private** %devpriv, align 8, !dbg !4454
  %tobool2 = icmp ne %struct.nidio96_private* %9, null, !dbg !4454
  br i1 %tobool2, label %if.then3, label %if.end9, !dbg !4456

if.then3:                                         ; preds = %if.end
  %10 = load %struct.nidio96_private*, %struct.nidio96_private** %devpriv, align 8, !dbg !4457
  %di_mite_ring = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %10, i32 0, i32 5, !dbg !4460
  %11 = load %struct.mite_ring*, %struct.mite_ring** %di_mite_ring, align 8, !dbg !4460
  %tobool4 = icmp ne %struct.mite_ring* %11, null, !dbg !4457
  br i1 %tobool4, label %if.then5, label %if.end8, !dbg !4461

if.then5:                                         ; preds = %if.then3
  %12 = load %struct.nidio96_private*, %struct.nidio96_private** %devpriv, align 8, !dbg !4462
  %di_mite_ring6 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %12, i32 0, i32 5, !dbg !4464
  %13 = load %struct.mite_ring*, %struct.mite_ring** %di_mite_ring6, align 8, !dbg !4464
  call void @mite_free_ring(%struct.mite_ring* %13) #9, !dbg !4465
  %14 = load %struct.nidio96_private*, %struct.nidio96_private** %devpriv, align 8, !dbg !4466
  %di_mite_ring7 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %14, i32 0, i32 5, !dbg !4467
  store %struct.mite_ring* null, %struct.mite_ring** %di_mite_ring7, align 8, !dbg !4468
  br label %if.end8, !dbg !4469

if.end8:                                          ; preds = %if.then5, %if.then3
  %15 = load %struct.nidio96_private*, %struct.nidio96_private** %devpriv, align 8, !dbg !4470
  %mite = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %15, i32 0, i32 0, !dbg !4471
  %16 = load %struct.mite*, %struct.mite** %mite, align 8, !dbg !4471
  call void @mite_detach(%struct.mite* %16) #9, !dbg !4472
  br label %if.end9, !dbg !4473

if.end9:                                          ; preds = %if.end8, %if.end
  %17 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4474
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 17, !dbg !4476
  %18 = load i8*, i8** %mmio, align 8, !dbg !4476
  %tobool10 = icmp ne i8* %18, null, !dbg !4474
  br i1 %tobool10, label %if.then11, label %if.end13, !dbg !4477

if.then11:                                        ; preds = %if.end9
  %19 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4478
  %mmio12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 17, !dbg !4479
  %20 = load i8*, i8** %mmio12, align 8, !dbg !4479
  call void @iounmap(i8* %20) #9, !dbg !4480
  br label %if.end13, !dbg !4480

if.end13:                                         ; preds = %if.then11, %if.end9
  %21 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4481
  call void @comedi_pci_disable(%struct.comedi_device* %21) #9, !dbg !4482
  ret void, !dbg !4483
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nidio_auto_attach(%struct.comedi_device* %dev, i64 %context) #2 !dbg !4484 {
entry:
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4485, metadata !DIExpression()), !dbg !4491
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %context.addr = alloca i64, align 8
  %pcidev = alloca %struct.pci_dev*, align 8
  %board = alloca %struct.nidio_board*, align 8
  %devpriv = alloca %struct.nidio96_private*, align 8
  %s = alloca %struct.comedi_subdevice*, align 8
  %ret = alloca i32, align 4
  %irq = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 1
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4494, metadata !DIExpression()), !dbg !4495
  store i64 %context, i64* %context.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %context.addr, metadata !4496, metadata !DIExpression()), !dbg !4497
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pcidev, metadata !4498, metadata !DIExpression()), !dbg !4499
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4500
  %call = call %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device* %0) #9, !dbg !4501
  store %struct.pci_dev* %call, %struct.pci_dev** %pcidev, align 8, !dbg !4499
  call void @llvm.dbg.declare(metadata %struct.nidio_board** %board, metadata !4502, metadata !DIExpression()), !dbg !4504
  store %struct.nidio_board* null, %struct.nidio_board** %board, align 8, !dbg !4504
  call void @llvm.dbg.declare(metadata %struct.nidio96_private** %devpriv, metadata !4505, metadata !DIExpression()), !dbg !4506
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s, metadata !4507, metadata !DIExpression()), !dbg !4508
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4509, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.declare(metadata i32* %irq, metadata !4511, metadata !DIExpression()), !dbg !4512
  %1 = load i64, i64* %context.addr, align 8, !dbg !4513
  %cmp = icmp ult i64 %1, 3, !dbg !4515
  br i1 %cmp, label %if.then, label %if.end, !dbg !4516

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %context.addr, align 8, !dbg !4517
  %arrayidx = getelementptr [3 x %struct.nidio_board], [3 x %struct.nidio_board]* @nidio_boards, i64 0, i64 %2, !dbg !4518
  store %struct.nidio_board* %arrayidx, %struct.nidio_board** %board, align 8, !dbg !4519
  br label %if.end, !dbg !4520

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.nidio_board*, %struct.nidio_board** %board, align 8, !dbg !4521
  %tobool = icmp ne %struct.nidio_board* %3, null, !dbg !4521
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !4523

if.then1:                                         ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !4524
  br label %return, !dbg !4524

if.end2:                                          ; preds = %if.end
  %4 = load %struct.nidio_board*, %struct.nidio_board** %board, align 8, !dbg !4525
  %5 = bitcast %struct.nidio_board* %4 to i8*, !dbg !4525
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4526
  %board_ptr = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 9, !dbg !4527
  store i8* %5, i8** %board_ptr, align 8, !dbg !4528
  %7 = load %struct.nidio_board*, %struct.nidio_board** %board, align 8, !dbg !4529
  %name = getelementptr inbounds %struct.nidio_board, %struct.nidio_board* %7, i32 0, i32 0, !dbg !4530
  %8 = load i8*, i8** %name, align 8, !dbg !4530
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4531
  %board_name = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 8, !dbg !4532
  store i8* %8, i8** %board_name, align 8, !dbg !4533
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4534
  %call3 = call i32 @comedi_pci_enable(%struct.comedi_device* %10) #9, !dbg !4535
  store i32 %call3, i32* %ret, align 4, !dbg !4536
  %11 = load i32, i32* %ret, align 4, !dbg !4537
  %tobool4 = icmp ne i32 %11, 0, !dbg !4537
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !4539

if.then5:                                         ; preds = %if.end2
  %12 = load i32, i32* %ret, align 4, !dbg !4540
  store i32 %12, i32* %retval, align 4, !dbg !4541
  br label %return, !dbg !4541

if.end6:                                          ; preds = %if.end2
  %13 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4542
  %call7 = call i8* @comedi_alloc_devpriv(%struct.comedi_device* %13, i64 40) #9, !dbg !4543
  %14 = bitcast i8* %call7 to %struct.nidio96_private*, !dbg !4543
  store %struct.nidio96_private* %14, %struct.nidio96_private** %devpriv, align 8, !dbg !4544
  %15 = load %struct.nidio96_private*, %struct.nidio96_private** %devpriv, align 8, !dbg !4545
  %tobool8 = icmp ne %struct.nidio96_private* %15, null, !dbg !4545
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !4547

if.then9:                                         ; preds = %if.end6
  store i32 -12, i32* %retval, align 4, !dbg !4548
  br label %return, !dbg !4548

if.end10:                                         ; preds = %if.end6
  br label %do.body, !dbg !4549

do.body:                                          ; preds = %if.end10
  %16 = load %struct.nidio96_private*, %struct.nidio96_private** %devpriv, align 8, !dbg !4550
  %mite_channel_lock = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %16, i32 0, i32 6, !dbg !4550
  store %struct.spinlock* %mite_channel_lock, %struct.spinlock** %lock.addr.i, align 8
  %17 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4551
  %18 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %17, i32 0, i32 0, !dbg !4552
  %rlock.i = bitcast %union.anon.3* %18 to %struct.raw_spinlock*, !dbg !4552
  %19 = load %struct.nidio96_private*, %struct.nidio96_private** %devpriv, align 8, !dbg !4550
  %mite_channel_lock12 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %19, i32 0, i32 6, !dbg !4550
  %20 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %.compoundliteral, i32 0, i32 0, !dbg !4550
  %rlock = bitcast %union.anon.3* %20 to %struct.raw_spinlock*, !dbg !4550
  %21 = bitcast %struct.spinlock* %mite_channel_lock12 to i8*, !dbg !4550
  %22 = bitcast %struct.spinlock* %.compoundliteral to i8*, !dbg !4550
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 1 %22, i64 0, i1 false), !dbg !4550
  br label %do.end, !dbg !4550

do.end:                                           ; preds = %do.body
  %23 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4553
  %call13 = call %struct.mite* @mite_attach(%struct.comedi_device* %23, i1 zeroext false) #9, !dbg !4554
  %24 = load %struct.nidio96_private*, %struct.nidio96_private** %devpriv, align 8, !dbg !4555
  %mite = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %24, i32 0, i32 0, !dbg !4556
  store %struct.mite* %call13, %struct.mite** %mite, align 8, !dbg !4557
  %25 = load %struct.nidio96_private*, %struct.nidio96_private** %devpriv, align 8, !dbg !4558
  %mite14 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %25, i32 0, i32 0, !dbg !4560
  %26 = load %struct.mite*, %struct.mite** %mite14, align 8, !dbg !4560
  %tobool15 = icmp ne %struct.mite* %26, null, !dbg !4558
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !4561

if.then16:                                        ; preds = %do.end
  store i32 -12, i32* %retval, align 4, !dbg !4562
  br label %return, !dbg !4562

if.end17:                                         ; preds = %do.end
  %27 = load %struct.nidio96_private*, %struct.nidio96_private** %devpriv, align 8, !dbg !4563
  %mite18 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %27, i32 0, i32 0, !dbg !4564
  %28 = load %struct.mite*, %struct.mite** %mite18, align 8, !dbg !4564
  %call19 = call %struct.mite_ring* @mite_alloc_ring(%struct.mite* %28) #9, !dbg !4565
  %29 = load %struct.nidio96_private*, %struct.nidio96_private** %devpriv, align 8, !dbg !4566
  %di_mite_ring = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %29, i32 0, i32 5, !dbg !4567
  store %struct.mite_ring* %call19, %struct.mite_ring** %di_mite_ring, align 8, !dbg !4568
  %30 = load %struct.nidio96_private*, %struct.nidio96_private** %devpriv, align 8, !dbg !4569
  %di_mite_ring20 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %30, i32 0, i32 5, !dbg !4571
  %31 = load %struct.mite_ring*, %struct.mite_ring** %di_mite_ring20, align 8, !dbg !4571
  %tobool21 = icmp ne %struct.mite_ring* %31, null, !dbg !4569
  br i1 %tobool21, label %if.end23, label %if.then22, !dbg !4572

if.then22:                                        ; preds = %if.end17
  store i32 -12, i32* %retval, align 4, !dbg !4573
  br label %return, !dbg !4573

if.end23:                                         ; preds = %if.end17
  %32 = load %struct.nidio_board*, %struct.nidio_board** %board, align 8, !dbg !4574
  %uses_firmware = getelementptr inbounds %struct.nidio_board, %struct.nidio_board* %32, i32 0, i32 1, !dbg !4576
  %bf.load = load i8, i8* %uses_firmware, align 8, !dbg !4576
  %bf.clear = and i8 %bf.load, 1, !dbg !4576
  %bf.cast = zext i8 %bf.clear to i32, !dbg !4576
  %tobool24 = icmp ne i32 %bf.cast, 0, !dbg !4574
  br i1 %tobool24, label %if.then25, label %if.end30, !dbg !4577

if.then25:                                        ; preds = %if.end23
  %33 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4578
  %call26 = call i32 @pci_6534_upload_firmware(%struct.comedi_device* %33) #9, !dbg !4580
  store i32 %call26, i32* %ret, align 4, !dbg !4581
  %34 = load i32, i32* %ret, align 4, !dbg !4582
  %cmp27 = icmp slt i32 %34, 0, !dbg !4584
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !4585

if.then28:                                        ; preds = %if.then25
  %35 = load i32, i32* %ret, align 4, !dbg !4586
  store i32 %35, i32* %retval, align 4, !dbg !4587
  br label %return, !dbg !4587

if.end29:                                         ; preds = %if.then25
  br label %if.end30, !dbg !4588

if.end30:                                         ; preds = %if.end29, %if.end23
  %36 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4589
  call void @nidio_reset_board(%struct.comedi_device* %36) #9, !dbg !4590
  %37 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4591
  %call31 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %37, i32 1) #9, !dbg !4592
  store i32 %call31, i32* %ret, align 4, !dbg !4593
  %38 = load i32, i32* %ret, align 4, !dbg !4594
  %tobool32 = icmp ne i32 %38, 0, !dbg !4594
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !4596

if.then33:                                        ; preds = %if.end30
  %39 = load i32, i32* %ret, align 4, !dbg !4597
  store i32 %39, i32* %retval, align 4, !dbg !4598
  br label %return, !dbg !4598

if.end34:                                         ; preds = %if.end30
  %40 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4599
  %class_dev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %40, i32 0, i32 4, !dbg !4599
  %41 = load %struct.device*, %struct.device** %class_dev, align 8, !dbg !4599
  %42 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4599
  %board_name35 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %42, i32 0, i32 8, !dbg !4599
  %43 = load i8*, i8** %board_name35, align 8, !dbg !4599
  %44 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4599
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %44, i32 0, i32 17, !dbg !4599
  %45 = load i8*, i8** %mmio, align 8, !dbg !4599
  %add.ptr = getelementptr i8, i8* %45, i64 27, !dbg !4599
  %call36 = call zeroext i8 @readb(i8* %add.ptr) #9, !dbg !4599
  %conv = zext i8 %call36 to i32, !dbg !4599
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %43, i32 %conv) #10, !dbg !4599
  %46 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4600
  %subdevices = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %46, i32 0, i32 16, !dbg !4601
  %47 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices, align 8, !dbg !4601
  %arrayidx37 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %47, i64 0, !dbg !4600
  store %struct.comedi_subdevice* %arrayidx37, %struct.comedi_subdevice** %s, align 8, !dbg !4602
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4603
  %49 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4604
  %read_subdev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %49, i32 0, i32 21, !dbg !4605
  store %struct.comedi_subdevice* %48, %struct.comedi_subdevice** %read_subdev, align 8, !dbg !4606
  %50 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4607
  %type = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %50, i32 0, i32 2, !dbg !4608
  store i32 5, i32* %type, align 4, !dbg !4609
  %51 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4610
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %51, i32 0, i32 4, !dbg !4611
  store i32 805535744, i32* %subdev_flags, align 4, !dbg !4612
  %52 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4613
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %52, i32 0, i32 3, !dbg !4614
  store i32 32, i32* %n_chan, align 8, !dbg !4615
  %53 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4616
  %range_table = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %53, i32 0, i32 15, !dbg !4617
  store %struct.comedi_lrange* @range_unipolar5, %struct.comedi_lrange** %range_table, align 8, !dbg !4618
  %54 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4619
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %54, i32 0, i32 13, !dbg !4620
  store i32 1, i32* %maxdata, align 8, !dbg !4621
  %55 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4622
  %insn_config = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %55, i32 0, i32 21, !dbg !4623
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @ni_pcidio_insn_config, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_config, align 8, !dbg !4624
  %56 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4625
  %insn_bits = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %56, i32 0, i32 20, !dbg !4626
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @ni_pcidio_insn_bits, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_bits, align 8, !dbg !4627
  %57 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4628
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %57, i32 0, i32 22, !dbg !4629
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @ni_pcidio_cmd, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)** %do_cmd, align 8, !dbg !4630
  %58 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4631
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %58, i32 0, i32 23, !dbg !4632
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @ni_pcidio_cmdtest, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)** %do_cmdtest, align 8, !dbg !4633
  %59 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4634
  %cancel = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %59, i32 0, i32 25, !dbg !4635
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @ni_pcidio_cancel, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)** %cancel, align 8, !dbg !4636
  %60 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4637
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %60, i32 0, i32 5, !dbg !4638
  store i32 32, i32* %len_chanlist, align 8, !dbg !4639
  %61 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4640
  %buf_change = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %61, i32 0, i32 26, !dbg !4641
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @ni_pcidio_change, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)** %buf_change, align 8, !dbg !4642
  %62 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4643
  %async_dma_dir = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %62, i32 0, i32 28, !dbg !4644
  store i32 0, i32* %async_dma_dir, align 8, !dbg !4645
  %63 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4646
  %poll = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %63, i32 0, i32 24, !dbg !4647
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @ni_pcidio_poll, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)** %poll, align 8, !dbg !4648
  %64 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4649
  %irq38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %64, i32 0, i32 43, !dbg !4650
  %65 = load i32, i32* %irq38, align 4, !dbg !4650
  store i32 %65, i32* %irq, align 4, !dbg !4651
  %66 = load i32, i32* %irq, align 4, !dbg !4652
  %tobool39 = icmp ne i32 %66, 0, !dbg !4652
  br i1 %tobool39, label %if.then40, label %if.end48, !dbg !4654

if.then40:                                        ; preds = %if.end34
  %67 = load i32, i32* %irq, align 4, !dbg !4655
  %68 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4657
  %board_name41 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %68, i32 0, i32 8, !dbg !4658
  %69 = load i8*, i8** %board_name41, align 8, !dbg !4658
  %70 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4659
  %71 = bitcast %struct.comedi_device* %70 to i8*, !dbg !4659
  %call42 = call i32 @request_irq(i32 %67, i32 (i32, i8*)* @nidio_interrupt, i64 128, i8* %69, i8* %71) #9, !dbg !4660
  store i32 %call42, i32* %ret, align 4, !dbg !4661
  %72 = load i32, i32* %ret, align 4, !dbg !4662
  %cmp43 = icmp eq i32 %72, 0, !dbg !4664
  br i1 %cmp43, label %if.then45, label %if.end47, !dbg !4665

if.then45:                                        ; preds = %if.then40
  %73 = load i32, i32* %irq, align 4, !dbg !4666
  %74 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4667
  %irq46 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %74, i32 0, i32 20, !dbg !4668
  store i32 %73, i32* %irq46, align 8, !dbg !4669
  br label %if.end47, !dbg !4667

if.end47:                                         ; preds = %if.then45, %if.then40
  br label %if.end48, !dbg !4670

if.end48:                                         ; preds = %if.end47, %if.end34
  store i32 0, i32* %retval, align 4, !dbg !4671
  br label %return, !dbg !4671

return:                                           ; preds = %if.end48, %if.then33, %if.then28, %if.then22, %if.then16, %if.then9, %if.then5, %if.then1
  %75 = load i32, i32* %retval, align 4, !dbg !4672
  ret i32 %75, !dbg !4672
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noredzone
declare dso_local i8* @free_irq(i32, i8*) #1

; Function Attrs: noredzone
declare dso_local void @mite_free_ring(%struct.mite_ring*) #1

; Function Attrs: noredzone
declare dso_local void @mite_detach(%struct.mite*) #1

; Function Attrs: noredzone
declare dso_local void @iounmap(i8*) #1

; Function Attrs: noredzone
declare dso_local void @comedi_pci_disable(%struct.comedi_device*) #1

; Function Attrs: noredzone
declare dso_local %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device*) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_pci_enable(%struct.comedi_device*) #1

; Function Attrs: noredzone
declare dso_local i8* @comedi_alloc_devpriv(%struct.comedi_device*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noredzone
declare dso_local %struct.mite* @mite_attach(%struct.comedi_device*, i1 zeroext) #1

; Function Attrs: noredzone
declare dso_local %struct.mite_ring* @mite_alloc_ring(%struct.mite*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci_6534_upload_firmware(%struct.comedi_device* %dev) #2 !dbg !4087 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %devpriv = alloca %struct.nidio96_private*, align 8
  %ret = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4673, metadata !DIExpression()), !dbg !4674
  call void @llvm.dbg.declare(metadata %struct.nidio96_private** %devpriv, metadata !4675, metadata !DIExpression()), !dbg !4676
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4677
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !4678
  %1 = load i8*, i8** %private, align 8, !dbg !4678
  %2 = bitcast i8* %1 to %struct.nidio96_private*, !dbg !4677
  store %struct.nidio96_private* %2, %struct.nidio96_private** %devpriv, align 8, !dbg !4676
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4679, metadata !DIExpression()), !dbg !4680
  call void @llvm.dbg.declare(metadata i32* %n, metadata !4681, metadata !DIExpression()), !dbg !4682
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4683
  %call = call i32 @pci_6534_reset_fpgas(%struct.comedi_device* %3) #9, !dbg !4684
  store i32 %call, i32* %ret, align 4, !dbg !4685
  %4 = load i32, i32* %ret, align 4, !dbg !4686
  %cmp = icmp slt i32 %4, 0, !dbg !4688
  br i1 %cmp, label %if.then, label %if.end, !dbg !4689

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !4690
  store i32 %5, i32* %retval, align 4, !dbg !4691
  br label %return, !dbg !4691

if.end:                                           ; preds = %entry
  store i32 2, i32* %n, align 4, !dbg !4692
  br label %for.cond, !dbg !4694

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %n, align 4, !dbg !4695
  %cmp1 = icmp sge i32 %6, 0, !dbg !4697
  br i1 %cmp1, label %for.body, label %for.end, !dbg !4698

for.body:                                         ; preds = %for.cond
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4699
  %8 = load %struct.nidio96_private*, %struct.nidio96_private** %devpriv, align 8, !dbg !4701
  %mite = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %8, i32 0, i32 0, !dbg !4702
  %9 = load %struct.mite*, %struct.mite** %mite, align 8, !dbg !4702
  %pcidev = getelementptr inbounds %struct.mite, %struct.mite* %9, i32 0, i32 0, !dbg !4703
  %10 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4703
  %dev2 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 41, !dbg !4704
  %11 = load i32, i32* %n, align 4, !dbg !4705
  %idxprom = sext i32 %11 to i64, !dbg !4706
  %arrayidx = getelementptr [3 x i8*], [3 x i8*]* @pci_6534_upload_firmware.fw_file, i64 0, i64 %idxprom, !dbg !4706
  %12 = load i8*, i8** %arrayidx, align 8, !dbg !4706
  %13 = load i32, i32* %n, align 4, !dbg !4707
  %conv = sext i32 %13 to i64, !dbg !4707
  %call3 = call i32 @comedi_load_firmware(%struct.comedi_device* %7, %struct.device* %dev2, i8* %12, i32 (%struct.comedi_device*, i8*, i64, i64)* @pci_6534_load_fpga, i64 %conv) #9, !dbg !4708
  store i32 %call3, i32* %ret, align 4, !dbg !4709
  %14 = load i32, i32* %ret, align 4, !dbg !4710
  %cmp4 = icmp eq i32 %14, 0, !dbg !4712
  br i1 %cmp4, label %land.lhs.true, label %if.end9, !dbg !4713

land.lhs.true:                                    ; preds = %for.body
  %15 = load i32, i32* %n, align 4, !dbg !4714
  %cmp6 = icmp eq i32 %15, 2, !dbg !4715
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !4716

if.then8:                                         ; preds = %land.lhs.true
  %16 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4717
  call void @pci_6534_init_main_fpga(%struct.comedi_device* %16) #9, !dbg !4718
  br label %if.end9, !dbg !4718

if.end9:                                          ; preds = %if.then8, %land.lhs.true, %for.body
  %17 = load i32, i32* %ret, align 4, !dbg !4719
  %cmp10 = icmp slt i32 %17, 0, !dbg !4721
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !4722

if.then12:                                        ; preds = %if.end9
  br label %for.end, !dbg !4723

if.end13:                                         ; preds = %if.end9
  br label %for.inc, !dbg !4724

for.inc:                                          ; preds = %if.end13
  %18 = load i32, i32* %n, align 4, !dbg !4725
  %dec = add i32 %18, -1, !dbg !4725
  store i32 %dec, i32* %n, align 4, !dbg !4725
  br label %for.cond, !dbg !4726, !llvm.loop !4727

for.end:                                          ; preds = %if.then12, %for.cond
  %19 = load i32, i32* %ret, align 4, !dbg !4729
  store i32 %19, i32* %retval, align 4, !dbg !4730
  br label %return, !dbg !4730

return:                                           ; preds = %for.end, %if.then
  %20 = load i32, i32* %retval, align 4, !dbg !4731
  ret i32 %20, !dbg !4731
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @nidio_reset_board(%struct.comedi_device* %dev) #2 !dbg !4732 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4733, metadata !DIExpression()), !dbg !4734
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4735
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 17, !dbg !4736
  %1 = load i8*, i8** %mmio, align 8, !dbg !4736
  %add.ptr = getelementptr i8, i8* %1, i64 28, !dbg !4737
  call void @writel(i32 0, i8* %add.ptr) #9, !dbg !4738
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4739
  %mmio1 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %2, i32 0, i32 17, !dbg !4740
  %3 = load i8*, i8** %mmio1, align 8, !dbg !4740
  %add.ptr2 = getelementptr i8, i8* %3, i64 32, !dbg !4741
  call void @writel(i32 0, i8* %add.ptr2) #9, !dbg !4742
  %4 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4743
  %mmio3 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 17, !dbg !4744
  %5 = load i8*, i8** %mmio3, align 8, !dbg !4744
  %add.ptr4 = getelementptr i8, i8* %5, i64 36, !dbg !4745
  call void @writel(i32 0, i8* %add.ptr4) #9, !dbg !4746
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4747
  %mmio5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 17, !dbg !4748
  %7 = load i8*, i8** %mmio5, align 8, !dbg !4748
  %add.ptr6 = getelementptr i8, i8* %7, i64 5, !dbg !4749
  call void @writeb(i8 zeroext 0, i8* %add.ptr6) #9, !dbg !4750
  ret void, !dbg !4751
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @readb(i8* %addr) #2 !dbg !4752 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i8, align 1
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !4759, metadata !DIExpression()), !dbg !4760
  call void @llvm.dbg.declare(metadata i8* %ret, metadata !4761, metadata !DIExpression()), !dbg !4760
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !4760
  %1 = call i8 asm sideeffect "movb $1,$0", "=q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %0) #8, !dbg !4760, !srcloc !4762
  store i8 %1, i8* %ret, align 1, !dbg !4760
  %2 = load i8, i8* %ret, align 1, !dbg !4760
  ret i8 %2, !dbg !4760
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ni_pcidio_insn_config(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !4763 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %ret = alloca i32, align 4
  %board = alloca %struct.nidio_board*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4764, metadata !DIExpression()), !dbg !4765
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4766, metadata !DIExpression()), !dbg !4767
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !4768, metadata !DIExpression()), !dbg !4769
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !4770, metadata !DIExpression()), !dbg !4771
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4772, metadata !DIExpression()), !dbg !4773
  %0 = load i32*, i32** %data.addr, align 8, !dbg !4774
  %arrayidx = getelementptr i32, i32* %0, i64 0, !dbg !4774
  %1 = load i32, i32* %arrayidx, align 4, !dbg !4774
  %cmp = icmp eq i32 %1, 5005, !dbg !4776
  br i1 %cmp, label %if.then, label %if.end, !dbg !4777

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.nidio_board** %board, metadata !4778, metadata !DIExpression()), !dbg !4780
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4781
  %board_ptr = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %2, i32 0, i32 9, !dbg !4782
  %3 = load i8*, i8** %board_ptr, align 8, !dbg !4782
  %4 = bitcast i8* %3 to %struct.nidio_board*, !dbg !4781
  store %struct.nidio_board* %4, %struct.nidio_board** %board, align 8, !dbg !4780
  %5 = load %struct.nidio_board*, %struct.nidio_board** %board, align 8, !dbg !4783
  %dio_speed = getelementptr inbounds %struct.nidio_board, %struct.nidio_board* %5, i32 0, i32 2, !dbg !4784
  %6 = load i32, i32* %dio_speed, align 4, !dbg !4784
  %7 = load i32*, i32** %data.addr, align 8, !dbg !4785
  %arrayidx1 = getelementptr i32, i32* %7, i64 1, !dbg !4785
  store i32 %6, i32* %arrayidx1, align 4, !dbg !4786
  %8 = load i32*, i32** %data.addr, align 8, !dbg !4787
  %arrayidx2 = getelementptr i32, i32* %8, i64 2, !dbg !4787
  store i32 0, i32* %arrayidx2, align 4, !dbg !4788
  store i32 0, i32* %retval, align 4, !dbg !4789
  br label %return, !dbg !4789

if.end:                                           ; preds = %entry
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4790
  %10 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4791
  %11 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4792
  %12 = load i32*, i32** %data.addr, align 8, !dbg !4793
  %call = call i32 @comedi_dio_insn_config(%struct.comedi_device* %9, %struct.comedi_subdevice* %10, %struct.comedi_insn* %11, i32* %12, i32 0) #9, !dbg !4794
  store i32 %call, i32* %ret, align 4, !dbg !4795
  %13 = load i32, i32* %ret, align 4, !dbg !4796
  %tobool = icmp ne i32 %13, 0, !dbg !4796
  br i1 %tobool, label %if.then3, label %if.end4, !dbg !4798

if.then3:                                         ; preds = %if.end
  %14 = load i32, i32* %ret, align 4, !dbg !4799
  store i32 %14, i32* %retval, align 4, !dbg !4800
  br label %return, !dbg !4800

if.end4:                                          ; preds = %if.end
  %15 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4801
  %io_bits = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %15, i32 0, i32 12, !dbg !4802
  %16 = load i32, i32* %io_bits, align 4, !dbg !4802
  %17 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4803
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 17, !dbg !4804
  %18 = load i8*, i8** %mmio, align 8, !dbg !4804
  %add.ptr = getelementptr i8, i8* %18, i64 32, !dbg !4805
  call void @writel(i32 %16, i8* %add.ptr) #9, !dbg !4806
  %19 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4807
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %19, i32 0, i32 1, !dbg !4808
  %20 = load i32, i32* %n, align 4, !dbg !4808
  store i32 %20, i32* %retval, align 4, !dbg !4809
  br label %return, !dbg !4809

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %21 = load i32, i32* %retval, align 4, !dbg !4810
  ret i32 %21, !dbg !4810
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ni_pcidio_insn_bits(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !4811 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4812, metadata !DIExpression()), !dbg !4813
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4814, metadata !DIExpression()), !dbg !4815
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !4816, metadata !DIExpression()), !dbg !4817
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !4818, metadata !DIExpression()), !dbg !4819
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4820
  %1 = load i32*, i32** %data.addr, align 8, !dbg !4822
  %call = call i32 @comedi_dio_update_state(%struct.comedi_subdevice* %0, i32* %1) #9, !dbg !4823
  %tobool = icmp ne i32 %call, 0, !dbg !4823
  br i1 %tobool, label %if.then, label %if.end, !dbg !4824

if.then:                                          ; preds = %entry
  %2 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4825
  %state = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %2, i32 0, i32 29, !dbg !4826
  %3 = load i32, i32* %state, align 4, !dbg !4826
  %4 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4827
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 17, !dbg !4828
  %5 = load i8*, i8** %mmio, align 8, !dbg !4828
  %add.ptr = getelementptr i8, i8* %5, i64 28, !dbg !4829
  call void @writel(i32 %3, i8* %add.ptr) #9, !dbg !4830
  br label %if.end, !dbg !4830

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4831
  %mmio1 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 17, !dbg !4832
  %7 = load i8*, i8** %mmio1, align 8, !dbg !4832
  %add.ptr2 = getelementptr i8, i8* %7, i64 28, !dbg !4833
  %call3 = call i32 @readl(i8* %add.ptr2) #9, !dbg !4834
  %8 = load i32*, i32** %data.addr, align 8, !dbg !4835
  %arrayidx = getelementptr i32, i32* %8, i64 1, !dbg !4835
  store i32 %call3, i32* %arrayidx, align 4, !dbg !4836
  %9 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4837
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %9, i32 0, i32 1, !dbg !4838
  %10 = load i32, i32* %n, align 4, !dbg !4838
  ret i32 %10, !dbg !4839
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ni_pcidio_cmd(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #2 !dbg !4840 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %devpriv = alloca %struct.nidio96_private*, align 8
  %cmd = alloca %struct.comedi_cmd*, align 8
  %retval80 = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4841, metadata !DIExpression()), !dbg !4842
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4843, metadata !DIExpression()), !dbg !4844
  call void @llvm.dbg.declare(metadata %struct.nidio96_private** %devpriv, metadata !4845, metadata !DIExpression()), !dbg !4846
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4847
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !4848
  %1 = load i8*, i8** %private, align 8, !dbg !4848
  %2 = bitcast i8* %1 to %struct.nidio96_private*, !dbg !4847
  store %struct.nidio96_private* %2, %struct.nidio96_private** %devpriv, align 8, !dbg !4846
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd, metadata !4849, metadata !DIExpression()), !dbg !4850
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4851
  %async = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %3, i32 0, i32 7, !dbg !4852
  %4 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4852
  %cmd1 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %4, i32 0, i32 17, !dbg !4853
  store %struct.comedi_cmd* %cmd1, %struct.comedi_cmd** %cmd, align 8, !dbg !4850
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4854
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 17, !dbg !4855
  %6 = load i8*, i8** %mmio, align 8, !dbg !4855
  %add.ptr = getelementptr i8, i8* %6, i64 32, !dbg !4856
  call void @writel(i32 0, i8* %add.ptr) #9, !dbg !4857
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4858
  %mmio2 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 17, !dbg !4861
  %8 = load i8*, i8** %mmio2, align 8, !dbg !4861
  %add.ptr3 = getelementptr i8, i8* %8, i64 64, !dbg !4862
  call void @writeb(i8 zeroext 15, i8* %add.ptr3) #9, !dbg !4863
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4864
  %mmio4 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 17, !dbg !4865
  %10 = load i8*, i8** %mmio4, align 8, !dbg !4865
  %add.ptr5 = getelementptr i8, i8* %10, i64 77, !dbg !4866
  call void @writeb(i8 zeroext 0, i8* %add.ptr5) #9, !dbg !4867
  %11 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !4868
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %11, i32 0, i32 4, !dbg !4870
  %12 = load i32, i32* %scan_begin_src, align 8, !dbg !4870
  %cmp = icmp eq i32 %12, 16, !dbg !4871
  br i1 %cmp, label %if.then, label %if.else, !dbg !4872

if.then:                                          ; preds = %entry
  %13 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4873
  %mmio6 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 17, !dbg !4875
  %14 = load i8*, i8** %mmio6, align 8, !dbg !4875
  %add.ptr7 = getelementptr i8, i8* %14, i64 65, !dbg !4876
  call void @writeb(i8 zeroext 0, i8* %add.ptr7) #9, !dbg !4877
  %15 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4878
  %mmio8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 17, !dbg !4879
  %16 = load i8*, i8** %mmio8, align 8, !dbg !4879
  %add.ptr9 = getelementptr i8, i8* %16, i64 66, !dbg !4880
  call void @writeb(i8 zeroext 0, i8* %add.ptr9) #9, !dbg !4881
  %17 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4882
  %mmio10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 17, !dbg !4883
  %18 = load i8*, i8** %mmio10, align 8, !dbg !4883
  %add.ptr11 = getelementptr i8, i8* %18, i64 67, !dbg !4884
  call void @writeb(i8 zeroext 1, i8* %add.ptr11) #9, !dbg !4885
  %19 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4886
  %mmio12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 17, !dbg !4887
  %20 = load i8*, i8** %mmio12, align 8, !dbg !4887
  %add.ptr13 = getelementptr i8, i8* %20, i64 70, !dbg !4888
  call void @writeb(i8 zeroext 4, i8* %add.ptr13) #9, !dbg !4889
  %21 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4890
  %mmio14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %21, i32 0, i32 17, !dbg !4891
  %22 = load i8*, i8** %mmio14, align 8, !dbg !4891
  %add.ptr15 = getelementptr i8, i8* %22, i64 71, !dbg !4892
  call void @writeb(i8 zeroext 4, i8* %add.ptr15) #9, !dbg !4893
  %23 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4894
  %mmio16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %23, i32 0, i32 17, !dbg !4895
  %24 = load i8*, i8** %mmio16, align 8, !dbg !4895
  %add.ptr17 = getelementptr i8, i8* %24, i64 73, !dbg !4896
  call void @writeb(i8 zeroext 3, i8* %add.ptr17) #9, !dbg !4897
  %25 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4898
  %mmio18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 17, !dbg !4899
  %26 = load i8*, i8** %mmio18, align 8, !dbg !4899
  %add.ptr19 = getelementptr i8, i8* %26, i64 74, !dbg !4900
  call void @writeb(i8 zeroext -64, i8* %add.ptr19) #9, !dbg !4901
  %27 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !4902
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %27, i32 0, i32 5, !dbg !4903
  %call = call i32 @ni_pcidio_ns_to_timer(i32* %scan_begin_arg, i32 0) #9, !dbg !4904
  %28 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4905
  %mmio20 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %28, i32 0, i32 17, !dbg !4906
  %29 = load i8*, i8** %mmio20, align 8, !dbg !4906
  %add.ptr21 = getelementptr i8, i8* %29, i64 88, !dbg !4907
  call void @writel(i32 %call, i8* %add.ptr21) #9, !dbg !4908
  %30 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4909
  %mmio22 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 17, !dbg !4910
  %31 = load i8*, i8** %mmio22, align 8, !dbg !4910
  %add.ptr23 = getelementptr i8, i8* %31, i64 82, !dbg !4911
  call void @writeb(i8 zeroext 1, i8* %add.ptr23) #9, !dbg !4912
  %32 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4913
  %mmio24 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %32, i32 0, i32 17, !dbg !4914
  %33 = load i8*, i8** %mmio24, align 8, !dbg !4914
  %add.ptr25 = getelementptr i8, i8* %33, i64 83, !dbg !4915
  call void @writeb(i8 zeroext 1, i8* %add.ptr25) #9, !dbg !4916
  %34 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4917
  %mmio26 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %34, i32 0, i32 17, !dbg !4918
  %35 = load i8*, i8** %mmio26, align 8, !dbg !4918
  %add.ptr27 = getelementptr i8, i8* %35, i64 84, !dbg !4919
  call void @writeb(i8 zeroext 1, i8* %add.ptr27) #9, !dbg !4920
  %36 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4921
  %mmio28 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %36, i32 0, i32 17, !dbg !4922
  %37 = load i8*, i8** %mmio28, align 8, !dbg !4922
  %add.ptr29 = getelementptr i8, i8* %37, i64 85, !dbg !4923
  call void @writeb(i8 zeroext 11, i8* %add.ptr29) #9, !dbg !4924
  %38 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4925
  %mmio30 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %38, i32 0, i32 17, !dbg !4926
  %39 = load i8*, i8** %mmio30, align 8, !dbg !4926
  %add.ptr31 = getelementptr i8, i8* %39, i64 86, !dbg !4927
  call void @writeb(i8 zeroext 1, i8* %add.ptr31) #9, !dbg !4928
  %40 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4929
  %mmio32 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %40, i32 0, i32 17, !dbg !4930
  %41 = load i8*, i8** %mmio32, align 8, !dbg !4930
  %add.ptr33 = getelementptr i8, i8* %41, i64 68, !dbg !4931
  call void @writew(i16 zeroext 0, i8* %add.ptr33) #9, !dbg !4932
  %42 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4933
  %mmio34 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %42, i32 0, i32 17, !dbg !4934
  %43 = load i8*, i8** %mmio34, align 8, !dbg !4934
  %add.ptr35 = getelementptr i8, i8* %43, i64 79, !dbg !4935
  call void @writeb(i8 zeroext 0, i8* %add.ptr35) #9, !dbg !4936
  br label %if.end71, !dbg !4937

if.else:                                          ; preds = %entry
  %44 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4938
  %mmio36 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %44, i32 0, i32 17, !dbg !4940
  %45 = load i8*, i8** %mmio36, align 8, !dbg !4940
  %add.ptr37 = getelementptr i8, i8* %45, i64 65, !dbg !4941
  call void @writeb(i8 zeroext 0, i8* %add.ptr37) #9, !dbg !4942
  %46 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4943
  %mmio38 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %46, i32 0, i32 17, !dbg !4944
  %47 = load i8*, i8** %mmio38, align 8, !dbg !4944
  %add.ptr39 = getelementptr i8, i8* %47, i64 66, !dbg !4945
  call void @writeb(i8 zeroext 0, i8* %add.ptr39) #9, !dbg !4946
  %48 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4947
  %mmio40 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %48, i32 0, i32 17, !dbg !4948
  %49 = load i8*, i8** %mmio40, align 8, !dbg !4948
  %add.ptr41 = getelementptr i8, i8* %49, i64 67, !dbg !4949
  call void @writeb(i8 zeroext 0, i8* %add.ptr41) #9, !dbg !4950
  %50 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4951
  %mmio42 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %50, i32 0, i32 17, !dbg !4952
  %51 = load i8*, i8** %mmio42, align 8, !dbg !4952
  %add.ptr43 = getelementptr i8, i8* %51, i64 70, !dbg !4953
  call void @writeb(i8 zeroext 0, i8* %add.ptr43) #9, !dbg !4954
  %52 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4955
  %mmio44 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %52, i32 0, i32 17, !dbg !4956
  %53 = load i8*, i8** %mmio44, align 8, !dbg !4956
  %add.ptr45 = getelementptr i8, i8* %53, i64 71, !dbg !4957
  call void @writeb(i8 zeroext 4, i8* %add.ptr45) #9, !dbg !4958
  %54 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !4959
  %scan_begin_arg46 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %54, i32 0, i32 5, !dbg !4961
  %55 = load i32, i32* %scan_begin_arg46, align 4, !dbg !4961
  %and = and i32 %55, -2147483648, !dbg !4962
  %tobool = icmp ne i32 %and, 0, !dbg !4962
  br i1 %tobool, label %if.else50, label %if.then47, !dbg !4963

if.then47:                                        ; preds = %if.else
  %56 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4964
  %mmio48 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %56, i32 0, i32 17, !dbg !4965
  %57 = load i8*, i8** %mmio48, align 8, !dbg !4965
  %add.ptr49 = getelementptr i8, i8* %57, i64 73, !dbg !4966
  call void @writeb(i8 zeroext 0, i8* %add.ptr49) #9, !dbg !4967
  br label %if.end, !dbg !4967

if.else50:                                        ; preds = %if.else
  %58 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4968
  %mmio51 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %58, i32 0, i32 17, !dbg !4969
  %59 = load i8*, i8** %mmio51, align 8, !dbg !4969
  %add.ptr52 = getelementptr i8, i8* %59, i64 73, !dbg !4970
  call void @writeb(i8 zeroext 2, i8* %add.ptr52) #9, !dbg !4971
  br label %if.end

if.end:                                           ; preds = %if.else50, %if.then47
  %60 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4972
  %mmio53 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %60, i32 0, i32 17, !dbg !4973
  %61 = load i8*, i8** %mmio53, align 8, !dbg !4973
  %add.ptr54 = getelementptr i8, i8* %61, i64 74, !dbg !4974
  call void @writeb(i8 zeroext 0, i8* %add.ptr54) #9, !dbg !4975
  %62 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4976
  %mmio55 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %62, i32 0, i32 17, !dbg !4977
  %63 = load i8*, i8** %mmio55, align 8, !dbg !4977
  %add.ptr56 = getelementptr i8, i8* %63, i64 88, !dbg !4978
  call void @writel(i32 1, i8* %add.ptr56) #9, !dbg !4979
  %64 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4980
  %mmio57 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %64, i32 0, i32 17, !dbg !4981
  %65 = load i8*, i8** %mmio57, align 8, !dbg !4981
  %add.ptr58 = getelementptr i8, i8* %65, i64 82, !dbg !4982
  call void @writeb(i8 zeroext 1, i8* %add.ptr58) #9, !dbg !4983
  %66 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4984
  %mmio59 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %66, i32 0, i32 17, !dbg !4985
  %67 = load i8*, i8** %mmio59, align 8, !dbg !4985
  %add.ptr60 = getelementptr i8, i8* %67, i64 83, !dbg !4986
  call void @writeb(i8 zeroext 1, i8* %add.ptr60) #9, !dbg !4987
  %68 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4988
  %mmio61 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %68, i32 0, i32 17, !dbg !4989
  %69 = load i8*, i8** %mmio61, align 8, !dbg !4989
  %add.ptr62 = getelementptr i8, i8* %69, i64 84, !dbg !4990
  call void @writeb(i8 zeroext 1, i8* %add.ptr62) #9, !dbg !4991
  %70 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4992
  %mmio63 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %70, i32 0, i32 17, !dbg !4993
  %71 = load i8*, i8** %mmio63, align 8, !dbg !4993
  %add.ptr64 = getelementptr i8, i8* %71, i64 85, !dbg !4994
  call void @writeb(i8 zeroext 12, i8* %add.ptr64) #9, !dbg !4995
  %72 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4996
  %mmio65 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %72, i32 0, i32 17, !dbg !4997
  %73 = load i8*, i8** %mmio65, align 8, !dbg !4997
  %add.ptr66 = getelementptr i8, i8* %73, i64 86, !dbg !4998
  call void @writeb(i8 zeroext 16, i8* %add.ptr66) #9, !dbg !4999
  %74 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5000
  %mmio67 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %74, i32 0, i32 17, !dbg !5001
  %75 = load i8*, i8** %mmio67, align 8, !dbg !5001
  %add.ptr68 = getelementptr i8, i8* %75, i64 68, !dbg !5002
  call void @writew(i16 zeroext 0, i8* %add.ptr68) #9, !dbg !5003
  %76 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5004
  %mmio69 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %76, i32 0, i32 17, !dbg !5005
  %77 = load i8*, i8** %mmio69, align 8, !dbg !5005
  %add.ptr70 = getelementptr i8, i8* %77, i64 79, !dbg !5006
  call void @writeb(i8 zeroext 96, i8* %add.ptr70) #9, !dbg !5007
  br label %if.end71

if.end71:                                         ; preds = %if.end, %if.then
  %78 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5008
  %stop_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %78, i32 0, i32 10, !dbg !5010
  %79 = load i32, i32* %stop_src, align 8, !dbg !5010
  %cmp72 = icmp eq i32 %79, 32, !dbg !5011
  br i1 %cmp72, label %if.then73, label %if.else76, !dbg !5012

if.then73:                                        ; preds = %if.end71
  %80 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5013
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %80, i32 0, i32 11, !dbg !5015
  %81 = load i32, i32* %stop_arg, align 4, !dbg !5015
  %82 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5016
  %mmio74 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %82, i32 0, i32 17, !dbg !5017
  %83 = load i8*, i8** %mmio74, align 8, !dbg !5017
  %add.ptr75 = getelementptr i8, i8* %83, i64 20, !dbg !5018
  call void @writel(i32 %81, i8* %add.ptr75) #9, !dbg !5019
  br label %if.end77, !dbg !5020

if.else76:                                        ; preds = %if.end71
  br label %if.end77

if.end77:                                         ; preds = %if.else76, %if.then73
  %84 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5021
  %mmio78 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %84, i32 0, i32 17, !dbg !5022
  %85 = load i8*, i8** %mmio78, align 8, !dbg !5022
  %add.ptr79 = getelementptr i8, i8* %85, i64 6, !dbg !5023
  call void @writeb(i8 zeroext 48, i8* %add.ptr79) #9, !dbg !5024
  call void @llvm.dbg.declare(metadata i32* %retval80, metadata !5025, metadata !DIExpression()), !dbg !5027
  %86 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5028
  %87 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5029
  %call81 = call i32 @setup_mite_dma(%struct.comedi_device* %86, %struct.comedi_subdevice* %87) #9, !dbg !5030
  store i32 %call81, i32* %retval80, align 4, !dbg !5027
  %88 = load i32, i32* %retval80, align 4, !dbg !5031
  %tobool82 = icmp ne i32 %88, 0, !dbg !5031
  br i1 %tobool82, label %if.then83, label %if.end84, !dbg !5033

if.then83:                                        ; preds = %if.end77
  %89 = load i32, i32* %retval80, align 4, !dbg !5034
  store i32 %89, i32* %retval, align 4, !dbg !5035
  br label %return, !dbg !5035

if.end84:                                         ; preds = %if.end77
  %90 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5036
  %mmio85 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %90, i32 0, i32 17, !dbg !5037
  %91 = load i8*, i8** %mmio85, align 8, !dbg !5037
  %add.ptr86 = getelementptr i8, i8* %91, i64 108, !dbg !5038
  call void @writeb(i8 zeroext 0, i8* %add.ptr86) #9, !dbg !5039
  %92 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5040
  %mmio87 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %92, i32 0, i32 17, !dbg !5041
  %93 = load i8*, i8** %mmio87, align 8, !dbg !5041
  %add.ptr88 = getelementptr i8, i8* %93, i64 6, !dbg !5042
  call void @writeb(i8 zeroext -1, i8* %add.ptr88) #9, !dbg !5043
  %94 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5044
  %mmio89 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %94, i32 0, i32 17, !dbg !5045
  %95 = load i8*, i8** %mmio89, align 8, !dbg !5045
  %add.ptr90 = getelementptr i8, i8* %95, i64 75, !dbg !5046
  call void @writeb(i8 zeroext -30, i8* %add.ptr90) #9, !dbg !5047
  %96 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5048
  %mmio91 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %96, i32 0, i32 17, !dbg !5049
  %97 = load i8*, i8** %mmio91, align 8, !dbg !5049
  %add.ptr92 = getelementptr i8, i8* %97, i64 5, !dbg !5050
  call void @writeb(i8 zeroext 3, i8* %add.ptr92) #9, !dbg !5051
  %98 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5052
  %stop_src93 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %98, i32 0, i32 10, !dbg !5054
  %99 = load i32, i32* %stop_src93, align 8, !dbg !5054
  %cmp94 = icmp eq i32 %99, 1, !dbg !5055
  br i1 %cmp94, label %if.then95, label %if.else96, !dbg !5056

if.then95:                                        ; preds = %if.end84
  %100 = load %struct.nidio96_private*, %struct.nidio96_private** %devpriv, align 8, !dbg !5057
  %OP_MODEBits = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %100, i32 0, i32 3, !dbg !5059
  store i16 7, i16* %OP_MODEBits, align 8, !dbg !5060
  br label %if.end98, !dbg !5061

if.else96:                                        ; preds = %if.end84
  %101 = load %struct.nidio96_private*, %struct.nidio96_private** %devpriv, align 8, !dbg !5062
  %OP_MODEBits97 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %101, i32 0, i32 3, !dbg !5064
  store i16 15, i16* %OP_MODEBits97, align 8, !dbg !5065
  br label %if.end98

if.end98:                                         ; preds = %if.else96, %if.then95
  %102 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5066
  %start_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %102, i32 0, i32 2, !dbg !5068
  %103 = load i32, i32* %start_src, align 8, !dbg !5068
  %cmp99 = icmp eq i32 %103, 2, !dbg !5069
  br i1 %cmp99, label %if.then100, label %if.else105, !dbg !5070

if.then100:                                       ; preds = %if.end98
  %104 = load %struct.nidio96_private*, %struct.nidio96_private** %devpriv, align 8, !dbg !5071
  %OP_MODEBits101 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %104, i32 0, i32 3, !dbg !5073
  %105 = load i16, i16* %OP_MODEBits101, align 8, !dbg !5073
  %conv = trunc i16 %105 to i8, !dbg !5071
  %106 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5074
  %mmio102 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %106, i32 0, i32 17, !dbg !5075
  %107 = load i8*, i8** %mmio102, align 8, !dbg !5075
  %add.ptr103 = getelementptr i8, i8* %107, i64 65, !dbg !5076
  call void @writeb(i8 zeroext %conv, i8* %add.ptr103) #9, !dbg !5077
  %108 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5078
  %async104 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %108, i32 0, i32 7, !dbg !5079
  %109 = load %struct.comedi_async*, %struct.comedi_async** %async104, align 8, !dbg !5079
  %inttrig = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %109, i32 0, i32 20, !dbg !5080
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* null, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)** %inttrig, align 8, !dbg !5081
  br label %if.end108, !dbg !5082

if.else105:                                       ; preds = %if.end98
  %110 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5083
  %async106 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %110, i32 0, i32 7, !dbg !5085
  %111 = load %struct.comedi_async*, %struct.comedi_async** %async106, align 8, !dbg !5085
  %inttrig107 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %111, i32 0, i32 20, !dbg !5086
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* @ni_pcidio_inttrig, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)** %inttrig107, align 8, !dbg !5087
  br label %if.end108

if.end108:                                        ; preds = %if.else105, %if.then100
  store i32 0, i32* %retval, align 4, !dbg !5088
  br label %return, !dbg !5088

return:                                           ; preds = %if.end108, %if.then83
  %112 = load i32, i32* %retval, align 4, !dbg !5089
  ret i32 %112, !dbg !5089
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ni_pcidio_cmdtest(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_cmd* %cmd) #2 !dbg !5090 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %cmd.addr = alloca %struct.comedi_cmd*, align 8
  %err = alloca i32, align 4
  %arg = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5091, metadata !DIExpression()), !dbg !5092
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5093, metadata !DIExpression()), !dbg !5094
  store %struct.comedi_cmd* %cmd, %struct.comedi_cmd** %cmd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd.addr, metadata !5095, metadata !DIExpression()), !dbg !5096
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5097, metadata !DIExpression()), !dbg !5098
  store i32 0, i32* %err, align 4, !dbg !5098
  call void @llvm.dbg.declare(metadata i32* %arg, metadata !5099, metadata !DIExpression()), !dbg !5100
  %0 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5101
  %start_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %0, i32 0, i32 2, !dbg !5102
  %call = call i32 @comedi_check_trigger_src(i32* %start_src, i32 130) #9, !dbg !5103
  %1 = load i32, i32* %err, align 4, !dbg !5104
  %or = or i32 %1, %call, !dbg !5104
  store i32 %or, i32* %err, align 4, !dbg !5104
  %2 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5105
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %2, i32 0, i32 4, !dbg !5106
  %call1 = call i32 @comedi_check_trigger_src(i32* %scan_begin_src, i32 80) #9, !dbg !5107
  %3 = load i32, i32* %err, align 4, !dbg !5108
  %or2 = or i32 %3, %call1, !dbg !5108
  store i32 %or2, i32* %err, align 4, !dbg !5108
  %4 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5109
  %convert_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %4, i32 0, i32 6, !dbg !5110
  %call3 = call i32 @comedi_check_trigger_src(i32* %convert_src, i32 2) #9, !dbg !5111
  %5 = load i32, i32* %err, align 4, !dbg !5112
  %or4 = or i32 %5, %call3, !dbg !5112
  store i32 %or4, i32* %err, align 4, !dbg !5112
  %6 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5113
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %6, i32 0, i32 8, !dbg !5114
  %call5 = call i32 @comedi_check_trigger_src(i32* %scan_end_src, i32 32) #9, !dbg !5115
  %7 = load i32, i32* %err, align 4, !dbg !5116
  %or6 = or i32 %7, %call5, !dbg !5116
  store i32 %or6, i32* %err, align 4, !dbg !5116
  %8 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5117
  %stop_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %8, i32 0, i32 10, !dbg !5118
  %call7 = call i32 @comedi_check_trigger_src(i32* %stop_src, i32 33) #9, !dbg !5119
  %9 = load i32, i32* %err, align 4, !dbg !5120
  %or8 = or i32 %9, %call7, !dbg !5120
  store i32 %or8, i32* %err, align 4, !dbg !5120
  %10 = load i32, i32* %err, align 4, !dbg !5121
  %tobool = icmp ne i32 %10, 0, !dbg !5121
  br i1 %tobool, label %if.then, label %if.end, !dbg !5123

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !5124
  br label %return, !dbg !5124

if.end:                                           ; preds = %entry
  %11 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5125
  %start_src9 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %11, i32 0, i32 2, !dbg !5126
  %12 = load i32, i32* %start_src9, align 8, !dbg !5126
  %call10 = call i32 @comedi_check_trigger_is_unique(i32 %12) #9, !dbg !5127
  %13 = load i32, i32* %err, align 4, !dbg !5128
  %or11 = or i32 %13, %call10, !dbg !5128
  store i32 %or11, i32* %err, align 4, !dbg !5128
  %14 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5129
  %scan_begin_src12 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %14, i32 0, i32 4, !dbg !5130
  %15 = load i32, i32* %scan_begin_src12, align 8, !dbg !5130
  %call13 = call i32 @comedi_check_trigger_is_unique(i32 %15) #9, !dbg !5131
  %16 = load i32, i32* %err, align 4, !dbg !5132
  %or14 = or i32 %16, %call13, !dbg !5132
  store i32 %or14, i32* %err, align 4, !dbg !5132
  %17 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5133
  %stop_src15 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %17, i32 0, i32 10, !dbg !5134
  %18 = load i32, i32* %stop_src15, align 8, !dbg !5134
  %call16 = call i32 @comedi_check_trigger_is_unique(i32 %18) #9, !dbg !5135
  %19 = load i32, i32* %err, align 4, !dbg !5136
  %or17 = or i32 %19, %call16, !dbg !5136
  store i32 %or17, i32* %err, align 4, !dbg !5136
  %20 = load i32, i32* %err, align 4, !dbg !5137
  %tobool18 = icmp ne i32 %20, 0, !dbg !5137
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !5139

if.then19:                                        ; preds = %if.end
  store i32 2, i32* %retval, align 4, !dbg !5140
  br label %return, !dbg !5140

if.end20:                                         ; preds = %if.end
  %21 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5141
  %start_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %21, i32 0, i32 3, !dbg !5142
  %call21 = call i32 @comedi_check_trigger_arg_is(i32* %start_arg, i32 0) #9, !dbg !5143
  %22 = load i32, i32* %err, align 4, !dbg !5144
  %or22 = or i32 %22, %call21, !dbg !5144
  store i32 %or22, i32* %err, align 4, !dbg !5144
  %23 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5145
  %scan_begin_src23 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %23, i32 0, i32 4, !dbg !5147
  %24 = load i32, i32* %scan_begin_src23, align 8, !dbg !5147
  %cmp = icmp eq i32 %24, 16, !dbg !5148
  br i1 %cmp, label %if.then24, label %if.else, !dbg !5149

if.then24:                                        ; preds = %if.end20
  %25 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5150
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %25, i32 0, i32 5, !dbg !5152
  %call25 = call i32 @comedi_check_trigger_arg_min(i32* %scan_begin_arg, i32 50) #9, !dbg !5153
  %26 = load i32, i32* %err, align 4, !dbg !5154
  %or26 = or i32 %26, %call25, !dbg !5154
  store i32 %or26, i32* %err, align 4, !dbg !5154
  br label %if.end34, !dbg !5155

if.else:                                          ; preds = %if.end20
  %27 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5156
  %scan_begin_arg27 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %27, i32 0, i32 5, !dbg !5159
  %28 = load i32, i32* %scan_begin_arg27, align 4, !dbg !5159
  %and = and i32 %28, 1073741823, !dbg !5160
  %cmp28 = icmp ne i32 %and, 0, !dbg !5161
  br i1 %cmp28, label %if.then29, label %if.end33, !dbg !5162

if.then29:                                        ; preds = %if.else
  %29 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5163
  %scan_begin_arg30 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %29, i32 0, i32 5, !dbg !5165
  %30 = load i32, i32* %scan_begin_arg30, align 4, !dbg !5166
  %and31 = and i32 %30, -1073741824, !dbg !5166
  store i32 %and31, i32* %scan_begin_arg30, align 4, !dbg !5166
  %31 = load i32, i32* %err, align 4, !dbg !5167
  %or32 = or i32 %31, -22, !dbg !5167
  store i32 %or32, i32* %err, align 4, !dbg !5167
  br label %if.end33, !dbg !5168

if.end33:                                         ; preds = %if.then29, %if.else
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then24
  %32 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5169
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %32, i32 0, i32 7, !dbg !5170
  %call35 = call i32 @comedi_check_trigger_arg_is(i32* %convert_arg, i32 0) #9, !dbg !5171
  %33 = load i32, i32* %err, align 4, !dbg !5172
  %or36 = or i32 %33, %call35, !dbg !5172
  store i32 %or36, i32* %err, align 4, !dbg !5172
  %34 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5173
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %34, i32 0, i32 9, !dbg !5174
  %35 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5175
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %35, i32 0, i32 13, !dbg !5176
  %36 = load i32, i32* %chanlist_len, align 8, !dbg !5176
  %call37 = call i32 @comedi_check_trigger_arg_is(i32* %scan_end_arg, i32 %36) #9, !dbg !5177
  %37 = load i32, i32* %err, align 4, !dbg !5178
  %or38 = or i32 %37, %call37, !dbg !5178
  store i32 %or38, i32* %err, align 4, !dbg !5178
  %38 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5179
  %stop_src39 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %38, i32 0, i32 10, !dbg !5181
  %39 = load i32, i32* %stop_src39, align 8, !dbg !5181
  %cmp40 = icmp eq i32 %39, 32, !dbg !5182
  br i1 %cmp40, label %if.then41, label %if.else44, !dbg !5183

if.then41:                                        ; preds = %if.end34
  %40 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5184
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %40, i32 0, i32 11, !dbg !5185
  %call42 = call i32 @comedi_check_trigger_arg_min(i32* %stop_arg, i32 1) #9, !dbg !5186
  %41 = load i32, i32* %err, align 4, !dbg !5187
  %or43 = or i32 %41, %call42, !dbg !5187
  store i32 %or43, i32* %err, align 4, !dbg !5187
  br label %if.end48, !dbg !5188

if.else44:                                        ; preds = %if.end34
  %42 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5189
  %stop_arg45 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %42, i32 0, i32 11, !dbg !5190
  %call46 = call i32 @comedi_check_trigger_arg_is(i32* %stop_arg45, i32 0) #9, !dbg !5191
  %43 = load i32, i32* %err, align 4, !dbg !5192
  %or47 = or i32 %43, %call46, !dbg !5192
  store i32 %or47, i32* %err, align 4, !dbg !5192
  br label %if.end48

if.end48:                                         ; preds = %if.else44, %if.then41
  %44 = load i32, i32* %err, align 4, !dbg !5193
  %tobool49 = icmp ne i32 %44, 0, !dbg !5193
  br i1 %tobool49, label %if.then50, label %if.end51, !dbg !5195

if.then50:                                        ; preds = %if.end48
  store i32 3, i32* %retval, align 4, !dbg !5196
  br label %return, !dbg !5196

if.end51:                                         ; preds = %if.end48
  %45 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5197
  %scan_begin_src52 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %45, i32 0, i32 4, !dbg !5199
  %46 = load i32, i32* %scan_begin_src52, align 8, !dbg !5199
  %cmp53 = icmp eq i32 %46, 16, !dbg !5200
  br i1 %cmp53, label %if.then54, label %if.end60, !dbg !5201

if.then54:                                        ; preds = %if.end51
  %47 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5202
  %scan_begin_arg55 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %47, i32 0, i32 5, !dbg !5204
  %48 = load i32, i32* %scan_begin_arg55, align 4, !dbg !5204
  store i32 %48, i32* %arg, align 4, !dbg !5205
  %49 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5206
  %flags = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %49, i32 0, i32 1, !dbg !5207
  %50 = load i32, i32* %flags, align 4, !dbg !5207
  %call56 = call i32 @ni_pcidio_ns_to_timer(i32* %arg, i32 %50) #9, !dbg !5208
  %51 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5209
  %scan_begin_arg57 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %51, i32 0, i32 5, !dbg !5210
  %52 = load i32, i32* %arg, align 4, !dbg !5211
  %call58 = call i32 @comedi_check_trigger_arg_is(i32* %scan_begin_arg57, i32 %52) #9, !dbg !5212
  %53 = load i32, i32* %err, align 4, !dbg !5213
  %or59 = or i32 %53, %call58, !dbg !5213
  store i32 %or59, i32* %err, align 4, !dbg !5213
  br label %if.end60, !dbg !5214

if.end60:                                         ; preds = %if.then54, %if.end51
  %54 = load i32, i32* %err, align 4, !dbg !5215
  %tobool61 = icmp ne i32 %54, 0, !dbg !5215
  br i1 %tobool61, label %if.then62, label %if.end63, !dbg !5217

if.then62:                                        ; preds = %if.end60
  store i32 4, i32* %retval, align 4, !dbg !5218
  br label %return, !dbg !5218

if.end63:                                         ; preds = %if.end60
  store i32 0, i32* %retval, align 4, !dbg !5219
  br label %return, !dbg !5219

return:                                           ; preds = %if.end63, %if.then62, %if.then50, %if.then19, %if.then
  %55 = load i32, i32* %retval, align 4, !dbg !5220
  ret i32 %55, !dbg !5220
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ni_pcidio_cancel(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #2 !dbg !5221 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5222, metadata !DIExpression()), !dbg !5223
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5224, metadata !DIExpression()), !dbg !5225
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5226
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 17, !dbg !5227
  %1 = load i8*, i8** %mmio, align 8, !dbg !5227
  %add.ptr = getelementptr i8, i8* %1, i64 5, !dbg !5228
  call void @writeb(i8 zeroext 0, i8* %add.ptr) #9, !dbg !5229
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5230
  call void @ni_pcidio_release_di_mite_channel(%struct.comedi_device* %2) #9, !dbg !5231
  ret i32 0, !dbg !5232
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ni_pcidio_change(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #2 !dbg !5233 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %devpriv = alloca %struct.nidio96_private*, align 8
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5234, metadata !DIExpression()), !dbg !5235
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5236, metadata !DIExpression()), !dbg !5237
  call void @llvm.dbg.declare(metadata %struct.nidio96_private** %devpriv, metadata !5238, metadata !DIExpression()), !dbg !5239
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5240
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5241
  %1 = load i8*, i8** %private, align 8, !dbg !5241
  %2 = bitcast i8* %1 to %struct.nidio96_private*, !dbg !5240
  store %struct.nidio96_private* %2, %struct.nidio96_private** %devpriv, align 8, !dbg !5239
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5242, metadata !DIExpression()), !dbg !5243
  %3 = load %struct.nidio96_private*, %struct.nidio96_private** %devpriv, align 8, !dbg !5244
  %di_mite_ring = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %3, i32 0, i32 5, !dbg !5245
  %4 = load %struct.mite_ring*, %struct.mite_ring** %di_mite_ring, align 8, !dbg !5245
  %5 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5246
  %call = call i32 @mite_buf_change(%struct.mite_ring* %4, %struct.comedi_subdevice* %5) #9, !dbg !5247
  store i32 %call, i32* %ret, align 4, !dbg !5248
  %6 = load i32, i32* %ret, align 4, !dbg !5249
  %cmp = icmp slt i32 %6, 0, !dbg !5251
  br i1 %cmp, label %if.then, label %if.end, !dbg !5252

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %ret, align 4, !dbg !5253
  store i32 %7, i32* %retval, align 4, !dbg !5254
  br label %return, !dbg !5254

if.end:                                           ; preds = %entry
  %8 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5255
  %async = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %8, i32 0, i32 7, !dbg !5256
  %9 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5256
  %prealloc_buf = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %9, i32 0, i32 0, !dbg !5257
  %10 = load i8*, i8** %prealloc_buf, align 8, !dbg !5257
  %11 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5258
  %async1 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %11, i32 0, i32 7, !dbg !5259
  %12 = load %struct.comedi_async*, %struct.comedi_async** %async1, align 8, !dbg !5259
  %prealloc_bufsz = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %12, i32 0, i32 1, !dbg !5260
  %13 = load i32, i32* %prealloc_bufsz, align 8, !dbg !5260
  %conv = zext i32 %13 to i64, !dbg !5258
  call void @llvm.memset.p0i8.i64(i8* align 1 %10, i8 -86, i64 %conv, i1 false), !dbg !5261
  store i32 0, i32* %retval, align 4, !dbg !5262
  br label %return, !dbg !5262

return:                                           ; preds = %if.end, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !5263
  ret i32 %14, !dbg !5263
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ni_pcidio_poll(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #2 !dbg !5264 {
entry:
  %lock.addr.i27 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i27, metadata !5265, metadata !DIExpression()), !dbg !5269
  %lock.addr.i25 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i25, metadata !5271, metadata !DIExpression()), !dbg !5273
  %lock.addr.i23 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i23, metadata !5275, metadata !DIExpression()), !dbg !5279
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !5281, metadata !DIExpression()), !dbg !5282
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4485, metadata !DIExpression()), !dbg !5283
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %devpriv = alloca %struct.nidio96_private*, align 8
  %irq_flags = alloca i64, align 8
  %count = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5290, metadata !DIExpression()), !dbg !5291
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5292, metadata !DIExpression()), !dbg !5293
  call void @llvm.dbg.declare(metadata %struct.nidio96_private** %devpriv, metadata !5294, metadata !DIExpression()), !dbg !5295
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5296
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5297
  %1 = load i8*, i8** %private, align 8, !dbg !5297
  %2 = bitcast i8* %1 to %struct.nidio96_private*, !dbg !5296
  store %struct.nidio96_private* %2, %struct.nidio96_private** %devpriv, align 8, !dbg !5295
  call void @llvm.dbg.declare(metadata i64* %irq_flags, metadata !5298, metadata !DIExpression()), !dbg !5299
  call void @llvm.dbg.declare(metadata i32* %count, metadata !5300, metadata !DIExpression()), !dbg !5301
  br label %do.body, !dbg !5302

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5303

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5304, metadata !DIExpression()), !dbg !5306
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5307, metadata !DIExpression()), !dbg !5306
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !5306
  %conv = zext i1 %cmp to i32, !dbg !5306
  store i32 1, i32* %tmp, align 4, !dbg !5306
  %3 = load i32, i32* %tmp, align 4, !dbg !5306
  br label %do.body2, !dbg !5308

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !5309

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !5310

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !5312, metadata !DIExpression()), !dbg !5315
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !5316, metadata !DIExpression()), !dbg !5315
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !5315
  %conv8 = zext i1 %cmp7 to i32, !dbg !5315
  store i32 1, i32* %tmp9, align 4, !dbg !5315
  %4 = load i32, i32* %tmp9, align 4, !dbg !5315
  %call = call i64 @arch_local_irq_save() #9, !dbg !5317
  store i64 %call, i64* %irq_flags, align 8, !dbg !5317
  br label %do.end, !dbg !5317

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !5310

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !5309

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !5318, !srcloc !5319
  br label %do.body12, !dbg !5318

do.body12:                                        ; preds = %do.body11
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5320
  %spinlock = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 11, !dbg !5320
  store %struct.spinlock* %spinlock, %struct.spinlock** %lock.addr.i, align 8
  %6 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5321
  %7 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %6, i32 0, i32 0, !dbg !5322
  %rlock.i = bitcast %union.anon.3* %7 to %struct.raw_spinlock*, !dbg !5322
  br label %do.end14, !dbg !5320

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !5318

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !5309

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !5308

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !5303

do.end18:                                         ; preds = %do.end17
  %8 = load %struct.nidio96_private*, %struct.nidio96_private** %devpriv, align 8, !dbg !5323
  %mite_channel_lock = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %8, i32 0, i32 6, !dbg !5324
  store %struct.spinlock* %mite_channel_lock, %struct.spinlock** %lock.addr.i25, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !5325, !srcloc !5327
  %9 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i25, align 8, !dbg !5328
  %10 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %9, i32 0, i32 0, !dbg !5328
  %rlock.i26 = bitcast %union.anon.3* %10 to %struct.raw_spinlock*, !dbg !5328
  %11 = load %struct.nidio96_private*, %struct.nidio96_private** %devpriv, align 8, !dbg !5330
  %di_mite_chan = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %11, i32 0, i32 4, !dbg !5332
  %12 = load %struct.mite_channel*, %struct.mite_channel** %di_mite_chan, align 8, !dbg !5332
  %tobool = icmp ne %struct.mite_channel* %12, null, !dbg !5330
  br i1 %tobool, label %if.then, label %if.end, !dbg !5333

if.then:                                          ; preds = %do.end18
  %13 = load %struct.nidio96_private*, %struct.nidio96_private** %devpriv, align 8, !dbg !5334
  %di_mite_chan19 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %13, i32 0, i32 4, !dbg !5335
  %14 = load %struct.mite_channel*, %struct.mite_channel** %di_mite_chan19, align 8, !dbg !5335
  %15 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5336
  call void @mite_sync_dma(%struct.mite_channel* %14, %struct.comedi_subdevice* %15) #9, !dbg !5337
  br label %if.end, !dbg !5337

if.end:                                           ; preds = %if.then, %do.end18
  %16 = load %struct.nidio96_private*, %struct.nidio96_private** %devpriv, align 8, !dbg !5338
  %mite_channel_lock20 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %16, i32 0, i32 6, !dbg !5339
  store %struct.spinlock* %mite_channel_lock20, %struct.spinlock** %lock.addr.i27, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !5340, !srcloc !5342
  %17 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i27, align 8, !dbg !5343
  %18 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %17, i32 0, i32 0, !dbg !5343
  %rlock.i28 = bitcast %union.anon.3* %18 to %struct.raw_spinlock*, !dbg !5343
  %19 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5345
  %call21 = call i32 @comedi_buf_n_bytes_ready(%struct.comedi_subdevice* %19) #9, !dbg !5346
  store i32 %call21, i32* %count, align 4, !dbg !5347
  %20 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5348
  %spinlock22 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 11, !dbg !5349
  %21 = load i64, i64* %irq_flags, align 8, !dbg !5350
  store %struct.spinlock* %spinlock22, %struct.spinlock** %lock.addr.i23, align 8
  store i64 %21, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !289, metadata !5351, metadata !DIExpression()) #8, !dbg !5354
  call void @llvm.dbg.declare(metadata !289, metadata !5355, metadata !DIExpression()) #8, !dbg !5354
  store i32 1, i32* %tmp.i, align 4, !dbg !5354
  %22 = load i32, i32* %tmp.i, align 4, !dbg !5354
  call void @llvm.dbg.declare(metadata !289, metadata !5356, metadata !DIExpression()) #8, !dbg !5361
  call void @llvm.dbg.declare(metadata !289, metadata !5362, metadata !DIExpression()) #8, !dbg !5361
  store i32 1, i32* %tmp8.i, align 4, !dbg !5361
  %23 = load i32, i32* %tmp8.i, align 4, !dbg !5361
  %24 = load i64, i64* %flags.addr.i, align 8, !dbg !5363
  call void @arch_local_irq_restore(i64 %24) #11, !dbg !5363
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !5364, !srcloc !5366
  %25 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i23, align 8, !dbg !5367
  %26 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %25, i32 0, i32 0, !dbg !5367
  %rlock.i24 = bitcast %union.anon.3* %26 to %struct.raw_spinlock*, !dbg !5367
  %27 = load i32, i32* %count, align 4, !dbg !5369
  ret i32 %27, !dbg !5370
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @request_irq(i32 %irq, i32 (i32, i8*)* %handler, i64 %flags, i8* %name, i8* %dev) #2 !dbg !5371 {
entry:
  %irq.addr = alloca i32, align 4
  %handler.addr = alloca i32 (i32, i8*)*, align 8
  %flags.addr = alloca i64, align 8
  %name.addr = alloca i8*, align 8
  %dev.addr = alloca i8*, align 8
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !5379, metadata !DIExpression()), !dbg !5380
  store i32 (i32, i8*)* %handler, i32 (i32, i8*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i32, i8*)** %handler.addr, metadata !5381, metadata !DIExpression()), !dbg !5382
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !5383, metadata !DIExpression()), !dbg !5384
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !5385, metadata !DIExpression()), !dbg !5386
  store i8* %dev, i8** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev.addr, metadata !5387, metadata !DIExpression()), !dbg !5388
  %0 = load i32, i32* %irq.addr, align 4, !dbg !5389
  %1 = load i32 (i32, i8*)*, i32 (i32, i8*)** %handler.addr, align 8, !dbg !5390
  %2 = load i64, i64* %flags.addr, align 8, !dbg !5391
  %3 = load i8*, i8** %name.addr, align 8, !dbg !5392
  %4 = load i8*, i8** %dev.addr, align 8, !dbg !5393
  %call = call i32 @request_threaded_irq(i32 %0, i32 (i32, i8*)* %1, i32 (i32, i8*)* null, i64 %2, i8* %3, i8* %4) #9, !dbg !5394
  ret i32 %call, !dbg !5395
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nidio_interrupt(i32 %irq, i8* %d) #2 !dbg !5396 {
entry:
  %lock.addr.i99 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i99, metadata !5265, metadata !DIExpression()), !dbg !5397
  %lock.addr.i97 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i97, metadata !5265, metadata !DIExpression()), !dbg !5399
  %lock.addr.i95 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i95, metadata !5271, metadata !DIExpression()), !dbg !5401
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !5271, metadata !DIExpression()), !dbg !5403
  %retval = alloca i32, align 4
  %irq.addr = alloca i32, align 4
  %d.addr = alloca i8*, align 8
  %dev = alloca %struct.comedi_device*, align 8
  %devpriv = alloca %struct.nidio96_private*, align 8
  %s = alloca %struct.comedi_subdevice*, align 8
  %async = alloca %struct.comedi_async*, align 8
  %auxdata = alloca i32, align 4
  %flags = alloca i32, align 4
  %status = alloca i32, align 4
  %work = alloca i32, align 4
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !5405, metadata !DIExpression()), !dbg !5406
  store i8* %d, i8** %d.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %d.addr, metadata !5407, metadata !DIExpression()), !dbg !5408
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev, metadata !5409, metadata !DIExpression()), !dbg !5410
  %0 = load i8*, i8** %d.addr, align 8, !dbg !5411
  %1 = bitcast i8* %0 to %struct.comedi_device*, !dbg !5411
  store %struct.comedi_device* %1, %struct.comedi_device** %dev, align 8, !dbg !5410
  call void @llvm.dbg.declare(metadata %struct.nidio96_private** %devpriv, metadata !5412, metadata !DIExpression()), !dbg !5413
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5414
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %2, i32 0, i32 3, !dbg !5415
  %3 = load i8*, i8** %private, align 8, !dbg !5415
  %4 = bitcast i8* %3 to %struct.nidio96_private*, !dbg !5414
  store %struct.nidio96_private* %4, %struct.nidio96_private** %devpriv, align 8, !dbg !5413
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s, metadata !5416, metadata !DIExpression()), !dbg !5417
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5418
  %read_subdev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 21, !dbg !5419
  %6 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %read_subdev, align 8, !dbg !5419
  store %struct.comedi_subdevice* %6, %struct.comedi_subdevice** %s, align 8, !dbg !5417
  call void @llvm.dbg.declare(metadata %struct.comedi_async** %async, metadata !5420, metadata !DIExpression()), !dbg !5421
  %7 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !5422
  %async1 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %7, i32 0, i32 7, !dbg !5423
  %8 = load %struct.comedi_async*, %struct.comedi_async** %async1, align 8, !dbg !5423
  store %struct.comedi_async* %8, %struct.comedi_async** %async, align 8, !dbg !5421
  call void @llvm.dbg.declare(metadata i32* %auxdata, metadata !5424, metadata !DIExpression()), !dbg !5425
  call void @llvm.dbg.declare(metadata i32* %flags, metadata !5426, metadata !DIExpression()), !dbg !5427
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5428, metadata !DIExpression()), !dbg !5429
  call void @llvm.dbg.declare(metadata i32* %work, metadata !5430, metadata !DIExpression()), !dbg !5431
  store i32 0, i32* %work, align 4, !dbg !5431
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5432
  %attached = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 10, !dbg !5434
  %bf.load = load i8, i8* %attached, align 8, !dbg !5434
  %bf.clear = and i8 %bf.load, 1, !dbg !5434
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5434
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5432
  br i1 %tobool, label %if.end, label %if.then, !dbg !5435

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5436
  br label %return, !dbg !5436

if.end:                                           ; preds = %entry
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5438
  %spinlock = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 11, !dbg !5439
  store %struct.spinlock* %spinlock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !5440, !srcloc !5327
  %11 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5441
  %12 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %11, i32 0, i32 0, !dbg !5441
  %rlock.i = bitcast %union.anon.3* %12 to %struct.raw_spinlock*, !dbg !5441
  %13 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5442
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 17, !dbg !5443
  %14 = load i8*, i8** %mmio, align 8, !dbg !5443
  %add.ptr = getelementptr i8, i8* %14, i64 4, !dbg !5444
  %call = call zeroext i8 @readb(i8* %add.ptr) #9, !dbg !5445
  %conv = zext i8 %call to i32, !dbg !5445
  store i32 %conv, i32* %status, align 4, !dbg !5446
  %15 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5447
  %mmio2 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 17, !dbg !5448
  %16 = load i8*, i8** %mmio2, align 8, !dbg !5448
  %add.ptr3 = getelementptr i8, i8* %16, i64 6, !dbg !5449
  %call4 = call zeroext i8 @readb(i8* %add.ptr3) #9, !dbg !5450
  %conv5 = zext i8 %call4 to i32, !dbg !5450
  store i32 %conv5, i32* %flags, align 4, !dbg !5451
  %17 = load %struct.nidio96_private*, %struct.nidio96_private** %devpriv, align 8, !dbg !5452
  %mite_channel_lock = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %17, i32 0, i32 6, !dbg !5453
  store %struct.spinlock* %mite_channel_lock, %struct.spinlock** %lock.addr.i95, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !5454, !srcloc !5327
  %18 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i95, align 8, !dbg !5455
  %19 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %18, i32 0, i32 0, !dbg !5455
  %rlock.i96 = bitcast %union.anon.3* %19 to %struct.raw_spinlock*, !dbg !5455
  %20 = load %struct.nidio96_private*, %struct.nidio96_private** %devpriv, align 8, !dbg !5456
  %di_mite_chan = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %20, i32 0, i32 4, !dbg !5458
  %21 = load %struct.mite_channel*, %struct.mite_channel** %di_mite_chan, align 8, !dbg !5458
  %tobool6 = icmp ne %struct.mite_channel* %21, null, !dbg !5456
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !5459

if.then7:                                         ; preds = %if.end
  %22 = load %struct.nidio96_private*, %struct.nidio96_private** %devpriv, align 8, !dbg !5460
  %di_mite_chan8 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %22, i32 0, i32 4, !dbg !5462
  %23 = load %struct.mite_channel*, %struct.mite_channel** %di_mite_chan8, align 8, !dbg !5462
  %24 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !5463
  call void @mite_ack_linkc(%struct.mite_channel* %23, %struct.comedi_subdevice* %24, i1 zeroext false) #9, !dbg !5464
  br label %if.end9, !dbg !5465

if.end9:                                          ; preds = %if.then7, %if.end
  %25 = load %struct.nidio96_private*, %struct.nidio96_private** %devpriv, align 8, !dbg !5466
  %mite_channel_lock10 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %25, i32 0, i32 6, !dbg !5467
  store %struct.spinlock* %mite_channel_lock10, %struct.spinlock** %lock.addr.i97, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !5468, !srcloc !5342
  %26 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i97, align 8, !dbg !5469
  %27 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %26, i32 0, i32 0, !dbg !5469
  %rlock.i98 = bitcast %union.anon.3* %27 to %struct.raw_spinlock*, !dbg !5469
  br label %while.cond, !dbg !5470

while.cond:                                       ; preds = %if.end83, %if.end9
  %28 = load i32, i32* %status, align 4, !dbg !5471
  %conv11 = sext i32 %28 to i64, !dbg !5471
  %and = and i64 %conv11, 1, !dbg !5472
  %tobool12 = icmp ne i64 %and, 0, !dbg !5470
  br i1 %tobool12, label %while.body, label %while.end92, !dbg !5470

while.body:                                       ; preds = %while.cond
  %29 = load i32, i32* %work, align 4, !dbg !5473
  %inc = add i32 %29, 1, !dbg !5473
  store i32 %inc, i32* %work, align 4, !dbg !5473
  %30 = load i32, i32* %work, align 4, !dbg !5475
  %cmp = icmp sgt i32 %30, 20, !dbg !5477
  br i1 %cmp, label %if.then14, label %if.end17, !dbg !5478

if.then14:                                        ; preds = %while.body
  %31 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5479
  %mmio15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %31, i32 0, i32 17, !dbg !5481
  %32 = load i8*, i8** %mmio15, align 8, !dbg !5481
  %add.ptr16 = getelementptr i8, i8* %32, i64 5, !dbg !5482
  call void @writeb(i8 zeroext 0, i8* %add.ptr16) #9, !dbg !5483
  br label %while.end92, !dbg !5484

if.end17:                                         ; preds = %while.body
  %33 = load i32, i32* %flags, align 4, !dbg !5485
  %conv18 = sext i32 %33 to i64, !dbg !5485
  %and19 = and i64 %conv18, 226, !dbg !5485
  %conv20 = trunc i64 %and19 to i32, !dbg !5485
  store i32 %conv20, i32* %flags, align 4, !dbg !5485
  %34 = load i32, i32* %flags, align 4, !dbg !5486
  %conv21 = sext i32 %34 to i64, !dbg !5486
  %and22 = and i64 %conv21, 1, !dbg !5488
  %tobool23 = icmp ne i64 %and22, 0, !dbg !5488
  br i1 %tobool23, label %if.then24, label %if.end45, !dbg !5489

if.then24:                                        ; preds = %if.end17
  br label %while.cond25, !dbg !5490

while.cond25:                                     ; preds = %if.end36, %if.then24
  %35 = load i32, i32* %flags, align 4, !dbg !5492
  %conv26 = sext i32 %35 to i64, !dbg !5492
  %and27 = and i64 %conv26, 1, !dbg !5493
  %tobool28 = icmp ne i64 %and27, 0, !dbg !5490
  br i1 %tobool28, label %while.body29, label %while.end, !dbg !5490

while.body29:                                     ; preds = %while.cond25
  %36 = load i32, i32* %work, align 4, !dbg !5494
  %inc30 = add i32 %36, 1, !dbg !5494
  store i32 %inc30, i32* %work, align 4, !dbg !5494
  %37 = load i32, i32* %work, align 4, !dbg !5496
  %cmp31 = icmp sgt i32 %37, 100, !dbg !5498
  br i1 %cmp31, label %if.then33, label %if.end36, !dbg !5499

if.then33:                                        ; preds = %while.body29
  %38 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5500
  %mmio34 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %38, i32 0, i32 17, !dbg !5502
  %39 = load i8*, i8** %mmio34, align 8, !dbg !5502
  %add.ptr35 = getelementptr i8, i8* %39, i64 5, !dbg !5503
  call void @writeb(i8 zeroext 0, i8* %add.ptr35) #9, !dbg !5504
  br label %out, !dbg !5505

if.end36:                                         ; preds = %while.body29
  %40 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5506
  %mmio37 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %40, i32 0, i32 17, !dbg !5507
  %41 = load i8*, i8** %mmio37, align 8, !dbg !5507
  %add.ptr38 = getelementptr i8, i8* %41, i64 8, !dbg !5508
  %call39 = call i32 @readl(i8* %add.ptr38) #9, !dbg !5509
  store i32 %call39, i32* %auxdata, align 4, !dbg !5510
  %42 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !5511
  %43 = bitcast i32* %auxdata to i8*, !dbg !5512
  %call40 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %42, i8* %43, i32 1) #9, !dbg !5513
  %44 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5514
  %mmio41 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %44, i32 0, i32 17, !dbg !5515
  %45 = load i8*, i8** %mmio41, align 8, !dbg !5515
  %add.ptr42 = getelementptr i8, i8* %45, i64 6, !dbg !5516
  %call43 = call zeroext i8 @readb(i8* %add.ptr42) #9, !dbg !5517
  %conv44 = zext i8 %call43 to i32, !dbg !5517
  store i32 %conv44, i32* %flags, align 4, !dbg !5518
  br label %while.cond25, !dbg !5490, !llvm.loop !5519

while.end:                                        ; preds = %while.cond25
  br label %if.end45, !dbg !5521

if.end45:                                         ; preds = %while.end, %if.end17
  %46 = load i32, i32* %flags, align 4, !dbg !5522
  %conv46 = sext i32 %46 to i64, !dbg !5522
  %and47 = and i64 %conv46, 2, !dbg !5524
  %tobool48 = icmp ne i64 %and47, 0, !dbg !5524
  br i1 %tobool48, label %if.then49, label %if.else, !dbg !5525

if.then49:                                        ; preds = %if.end45
  %47 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5526
  %mmio50 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %47, i32 0, i32 17, !dbg !5528
  %48 = load i8*, i8** %mmio50, align 8, !dbg !5528
  %add.ptr51 = getelementptr i8, i8* %48, i64 46, !dbg !5529
  call void @writeb(i8 zeroext 1, i8* %add.ptr51) #9, !dbg !5530
  %49 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5531
  %events = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %49, i32 0, i32 16, !dbg !5532
  %50 = load i32, i32* %events, align 4, !dbg !5533
  %or = or i32 %50, 2, !dbg !5533
  store i32 %or, i32* %events, align 4, !dbg !5533
  %51 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5534
  %mmio52 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %51, i32 0, i32 17, !dbg !5535
  %52 = load i8*, i8** %mmio52, align 8, !dbg !5535
  %add.ptr53 = getelementptr i8, i8* %52, i64 65, !dbg !5536
  call void @writeb(i8 zeroext 0, i8* %add.ptr53) #9, !dbg !5537
  br label %while.end92, !dbg !5538

if.else:                                          ; preds = %if.end45
  %53 = load i32, i32* %flags, align 4, !dbg !5539
  %conv54 = sext i32 %53 to i64, !dbg !5539
  %and55 = and i64 %conv54, 32, !dbg !5541
  %tobool56 = icmp ne i64 %and55, 0, !dbg !5541
  br i1 %tobool56, label %if.then57, label %if.else62, !dbg !5542

if.then57:                                        ; preds = %if.else
  %54 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5543
  %mmio58 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %54, i32 0, i32 17, !dbg !5545
  %55 = load i8*, i8** %mmio58, align 8, !dbg !5545
  %add.ptr59 = getelementptr i8, i8* %55, i64 6, !dbg !5546
  call void @writeb(i8 zeroext 8, i8* %add.ptr59) #9, !dbg !5547
  %56 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5548
  %events60 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %56, i32 0, i32 16, !dbg !5549
  %57 = load i32, i32* %events60, align 4, !dbg !5550
  %or61 = or i32 %57, 16, !dbg !5550
  store i32 %or61, i32* %events60, align 4, !dbg !5550
  br label %while.end92, !dbg !5551

if.else62:                                        ; preds = %if.else
  %58 = load i32, i32* %flags, align 4, !dbg !5552
  %conv63 = sext i32 %58 to i64, !dbg !5552
  %and64 = and i64 %conv63, 64, !dbg !5554
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5554
  br i1 %tobool65, label %if.then66, label %if.else71, !dbg !5555

if.then66:                                        ; preds = %if.else62
  %59 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5556
  %mmio67 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %59, i32 0, i32 17, !dbg !5558
  %60 = load i8*, i8** %mmio67, align 8, !dbg !5558
  %add.ptr68 = getelementptr i8, i8* %60, i64 6, !dbg !5559
  call void @writeb(i8 zeroext 16, i8* %add.ptr68) #9, !dbg !5560
  %61 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5561
  %events69 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %61, i32 0, i32 16, !dbg !5562
  %62 = load i32, i32* %events69, align 4, !dbg !5563
  %or70 = or i32 %62, 2, !dbg !5563
  store i32 %or70, i32* %events69, align 4, !dbg !5563
  br label %if.end81, !dbg !5564

if.else71:                                        ; preds = %if.else62
  %63 = load i32, i32* %flags, align 4, !dbg !5565
  %conv72 = sext i32 %63 to i64, !dbg !5565
  %and73 = and i64 %conv72, 128, !dbg !5567
  %tobool74 = icmp ne i64 %and73, 0, !dbg !5567
  br i1 %tobool74, label %if.then75, label %if.end80, !dbg !5568

if.then75:                                        ; preds = %if.else71
  %64 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5569
  %mmio76 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %64, i32 0, i32 17, !dbg !5571
  %65 = load i8*, i8** %mmio76, align 8, !dbg !5571
  %add.ptr77 = getelementptr i8, i8* %65, i64 6, !dbg !5572
  call void @writeb(i8 zeroext 32, i8* %add.ptr77) #9, !dbg !5573
  %66 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5574
  %events78 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %66, i32 0, i32 16, !dbg !5575
  %67 = load i32, i32* %events78, align 4, !dbg !5576
  %or79 = or i32 %67, 2, !dbg !5576
  store i32 %or79, i32* %events78, align 4, !dbg !5576
  br label %if.end80, !dbg !5577

if.end80:                                         ; preds = %if.then75, %if.else71
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.then66
  br label %if.end82

if.end82:                                         ; preds = %if.end81
  br label %if.end83

if.end83:                                         ; preds = %if.end82
  %68 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5578
  %mmio84 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %68, i32 0, i32 17, !dbg !5579
  %69 = load i8*, i8** %mmio84, align 8, !dbg !5579
  %add.ptr85 = getelementptr i8, i8* %69, i64 6, !dbg !5580
  %call86 = call zeroext i8 @readb(i8* %add.ptr85) #9, !dbg !5581
  %conv87 = zext i8 %call86 to i32, !dbg !5581
  store i32 %conv87, i32* %flags, align 4, !dbg !5582
  %70 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5583
  %mmio88 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %70, i32 0, i32 17, !dbg !5584
  %71 = load i8*, i8** %mmio88, align 8, !dbg !5584
  %add.ptr89 = getelementptr i8, i8* %71, i64 4, !dbg !5585
  %call90 = call zeroext i8 @readb(i8* %add.ptr89) #9, !dbg !5586
  %conv91 = zext i8 %call90 to i32, !dbg !5586
  store i32 %conv91, i32* %status, align 4, !dbg !5587
  br label %while.cond, !dbg !5470, !llvm.loop !5588

while.end92:                                      ; preds = %if.then57, %if.then49, %if.then14, %while.cond
  br label %out, !dbg !5470

out:                                              ; preds = %while.end92, %if.then33
  call void @llvm.dbg.label(metadata !5590), !dbg !5591
  %72 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5592
  %73 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !5593
  %call93 = call i32 @comedi_handle_events(%struct.comedi_device* %72, %struct.comedi_subdevice* %73) #9, !dbg !5594
  %74 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5595
  %spinlock94 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %74, i32 0, i32 11, !dbg !5596
  store %struct.spinlock* %spinlock94, %struct.spinlock** %lock.addr.i99, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !5597, !srcloc !5342
  %75 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i99, align 8, !dbg !5598
  %76 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %75, i32 0, i32 0, !dbg !5598
  %rlock.i100 = bitcast %union.anon.3* %76 to %struct.raw_spinlock*, !dbg !5598
  store i32 1, i32* %retval, align 4, !dbg !5599
  br label %return, !dbg !5599

return:                                           ; preds = %out, %if.then
  %77 = load i32, i32* %retval, align 4, !dbg !5600
  ret i32 %77, !dbg !5600
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci_6534_reset_fpgas(%struct.comedi_device* %dev) #2 !dbg !5601 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5602, metadata !DIExpression()), !dbg !5603
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5604, metadata !DIExpression()), !dbg !5605
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5606, metadata !DIExpression()), !dbg !5607
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5608
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 17, !dbg !5609
  %1 = load i8*, i8** %mmio, align 8, !dbg !5609
  %add.ptr = getelementptr i8, i8* %1, i64 256, !dbg !5610
  call void @writew(i16 zeroext 0, i8* %add.ptr) #9, !dbg !5611
  store i32 0, i32* %i, align 4, !dbg !5612
  br label %for.cond, !dbg !5614

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !5615
  %cmp = icmp slt i32 %2, 3, !dbg !5617
  br i1 %cmp, label %for.body, label %for.end, !dbg !5618

for.body:                                         ; preds = %for.cond
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5619
  %4 = load i32, i32* %i, align 4, !dbg !5621
  %call = call i32 @pci_6534_reset_fpga(%struct.comedi_device* %3, i32 %4) #9, !dbg !5622
  store i32 %call, i32* %ret, align 4, !dbg !5623
  %5 = load i32, i32* %ret, align 4, !dbg !5624
  %cmp1 = icmp slt i32 %5, 0, !dbg !5626
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5627

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !5628

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5629

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4, !dbg !5630
  %inc = add i32 %6, 1, !dbg !5630
  store i32 %inc, i32* %i, align 4, !dbg !5630
  br label %for.cond, !dbg !5631, !llvm.loop !5632

for.end:                                          ; preds = %if.then, %for.cond
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5634
  %mmio2 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 17, !dbg !5635
  %8 = load i8*, i8** %mmio2, align 8, !dbg !5635
  %add.ptr3 = getelementptr i8, i8* %8, i64 268, !dbg !5636
  call void @writew(i16 zeroext 0, i8* %add.ptr3) #9, !dbg !5637
  %9 = load i32, i32* %ret, align 4, !dbg !5638
  ret i32 %9, !dbg !5639
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_load_firmware(%struct.comedi_device*, %struct.device*, i8*, i32 (%struct.comedi_device*, i8*, i64, i64)*, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci_6534_load_fpga(%struct.comedi_device* %dev, i8* %data, i64 %data_len, i64 %context) #2 !dbg !4091 {
entry:
  %pscr_ret__.i.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i.i, metadata !5640, metadata !DIExpression()), !dbg !5646
  %__vpp_verify.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i.i, metadata !5654, metadata !DIExpression()), !dbg !5656
  %pfo_val__.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i.i, metadata !5657, metadata !DIExpression()), !dbg !5659
  %tmp.i.i = alloca %struct.task_struct*, align 8
  %tmp1.i.i = alloca %struct.task_struct*, align 8
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %data.addr = alloca i8*, align 8
  %data_len.addr = alloca i64, align 8
  %context.addr = alloca i64, align 8
  %fpga_index = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i64, align 8
  %value = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5660, metadata !DIExpression()), !dbg !5661
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5662, metadata !DIExpression()), !dbg !5663
  store i64 %data_len, i64* %data_len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %data_len.addr, metadata !5664, metadata !DIExpression()), !dbg !5665
  store i64 %context, i64* %context.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %context.addr, metadata !5666, metadata !DIExpression()), !dbg !5667
  call void @llvm.dbg.declare(metadata i32* %fpga_index, metadata !5668, metadata !DIExpression()), !dbg !5669
  %0 = load i64, i64* %context.addr, align 8, !dbg !5670
  %conv = trunc i64 %0 to i32, !dbg !5670
  store i32 %conv, i32* %fpga_index, align 4, !dbg !5669
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5671, metadata !DIExpression()), !dbg !5672
  call void @llvm.dbg.declare(metadata i64* %j, metadata !5673, metadata !DIExpression()), !dbg !5674
  %1 = load i32, i32* %fpga_index, align 4, !dbg !5675
  %or = or i32 128, %1, !dbg !5676
  %conv1 = trunc i32 %or to i16, !dbg !5677
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5678
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %2, i32 0, i32 17, !dbg !5679
  %3 = load i8*, i8** %mmio, align 8, !dbg !5679
  %add.ptr = getelementptr i8, i8* %3, i64 256, !dbg !5680
  call void @writew(i16 zeroext %conv1, i8* %add.ptr) #9, !dbg !5681
  %4 = load i32, i32* %fpga_index, align 4, !dbg !5682
  %or2 = or i32 192, %4, !dbg !5683
  %conv3 = trunc i32 %or2 to i16, !dbg !5684
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5685
  %mmio4 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 17, !dbg !5686
  %6 = load i8*, i8** %mmio4, align 8, !dbg !5686
  %add.ptr5 = getelementptr i8, i8* %6, i64 256, !dbg !5687
  call void @writew(i16 zeroext %conv3, i8* %add.ptr5) #9, !dbg !5688
  store i32 0, i32* %i, align 4, !dbg !5689
  br label %for.cond, !dbg !5691

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5692
  %mmio6 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 17, !dbg !5694
  %8 = load i8*, i8** %mmio6, align 8, !dbg !5694
  %add.ptr7 = getelementptr i8, i8* %8, i64 260, !dbg !5695
  %call = call zeroext i16 @readw(i8* %add.ptr7) #9, !dbg !5696
  %conv8 = zext i16 %call to i32, !dbg !5696
  %and = and i32 %conv8, 2, !dbg !5697
  %cmp = icmp eq i32 %and, 0, !dbg !5698
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5699

land.rhs:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !5700
  %cmp10 = icmp slt i32 %9, 1000, !dbg !5701
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %10 = phi i1 [ false, %for.cond ], [ %cmp10, %land.rhs ], !dbg !5702
  br i1 %10, label %for.body, label %for.end, !dbg !5703

for.body:                                         ; preds = %land.end
  call void @__const_udelay(i64 4295) #9, !dbg !5704
  br label %for.inc, !dbg !5710

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !5711
  %inc = add i32 %11, 1, !dbg !5711
  store i32 %inc, i32* %i, align 4, !dbg !5711
  br label %for.cond, !dbg !5712, !llvm.loop !5713

for.end:                                          ; preds = %land.end
  %12 = load i32, i32* %i, align 4, !dbg !5715
  %cmp12 = icmp eq i32 %12, 1000, !dbg !5717
  br i1 %cmp12, label %if.then, label %if.end, !dbg !5718

if.then:                                          ; preds = %for.end
  %13 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5719
  %class_dev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 4, !dbg !5719
  %14 = load %struct.device*, %struct.device** %class_dev, align 8, !dbg !5719
  %15 = load i32, i32* %fpga_index, align 4, !dbg !5719
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %14, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.8, i64 0, i64 0), i32 %15) #10, !dbg !5719
  store i32 -5, i32* %retval, align 4, !dbg !5721
  br label %return, !dbg !5721

if.end:                                           ; preds = %for.end
  %16 = load i32, i32* %fpga_index, align 4, !dbg !5722
  %or14 = or i32 128, %16, !dbg !5723
  %conv15 = trunc i32 %or14 to i16, !dbg !5724
  %17 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5725
  %mmio16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 17, !dbg !5726
  %18 = load i8*, i8** %mmio16, align 8, !dbg !5726
  %add.ptr17 = getelementptr i8, i8* %18, i64 256, !dbg !5727
  call void @writew(i16 zeroext %conv15, i8* %add.ptr17) #9, !dbg !5728
  store i32 0, i32* %i, align 4, !dbg !5729
  br label %for.cond18, !dbg !5731

for.cond18:                                       ; preds = %for.inc30, %if.end
  %19 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5732
  %mmio19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 17, !dbg !5734
  %20 = load i8*, i8** %mmio19, align 8, !dbg !5734
  %add.ptr20 = getelementptr i8, i8* %20, i64 260, !dbg !5735
  %call21 = call zeroext i16 @readw(i8* %add.ptr20) #9, !dbg !5736
  %conv22 = zext i16 %call21 to i32, !dbg !5736
  %cmp23 = icmp ne i32 %conv22, 3, !dbg !5737
  br i1 %cmp23, label %land.rhs25, label %land.end28, !dbg !5738

land.rhs25:                                       ; preds = %for.cond18
  %21 = load i32, i32* %i, align 4, !dbg !5739
  %cmp26 = icmp slt i32 %21, 1000, !dbg !5740
  br label %land.end28

land.end28:                                       ; preds = %land.rhs25, %for.cond18
  %22 = phi i1 [ false, %for.cond18 ], [ %cmp26, %land.rhs25 ], !dbg !5741
  br i1 %22, label %for.body29, label %for.end32, !dbg !5742

for.body29:                                       ; preds = %land.end28
  call void @__const_udelay(i64 4295) #9, !dbg !5743
  br label %for.inc30, !dbg !5749

for.inc30:                                        ; preds = %for.body29
  %23 = load i32, i32* %i, align 4, !dbg !5750
  %inc31 = add i32 %23, 1, !dbg !5750
  store i32 %inc31, i32* %i, align 4, !dbg !5750
  br label %for.cond18, !dbg !5751, !llvm.loop !5752

for.end32:                                        ; preds = %land.end28
  %24 = load i32, i32* %i, align 4, !dbg !5754
  %cmp33 = icmp eq i32 %24, 1000, !dbg !5756
  br i1 %cmp33, label %if.then35, label %if.end37, !dbg !5757

if.then35:                                        ; preds = %for.end32
  %25 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5758
  %class_dev36 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 4, !dbg !5758
  %26 = load %struct.device*, %struct.device** %class_dev36, align 8, !dbg !5758
  %27 = load i32, i32* %fpga_index, align 4, !dbg !5758
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %26, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9, i64 0, i64 0), i32 %27) #10, !dbg !5758
  store i32 -5, i32* %retval, align 4, !dbg !5760
  br label %return, !dbg !5760

if.end37:                                         ; preds = %for.end32
  store i64 0, i64* %j, align 8, !dbg !5761
  br label %for.cond38, !dbg !5762

for.cond38:                                       ; preds = %if.end74, %if.end37
  %28 = load i64, i64* %j, align 8, !dbg !5763
  %add = add i64 %28, 1, !dbg !5764
  %29 = load i64, i64* %data_len.addr, align 8, !dbg !5765
  %cmp39 = icmp ult i64 %add, %29, !dbg !5766
  br i1 %cmp39, label %for.body41, label %for.end75, !dbg !5767

for.body41:                                       ; preds = %for.cond38
  call void @llvm.dbg.declare(metadata i32* %value, metadata !5768, metadata !DIExpression()), !dbg !5769
  %30 = load i8*, i8** %data.addr, align 8, !dbg !5770
  %31 = load i64, i64* %j, align 8, !dbg !5771
  %inc42 = add i64 %31, 1, !dbg !5771
  store i64 %inc42, i64* %j, align 8, !dbg !5771
  %arrayidx = getelementptr i8, i8* %30, i64 %31, !dbg !5770
  %32 = load i8, i8* %arrayidx, align 1, !dbg !5770
  %conv43 = zext i8 %32 to i32, !dbg !5770
  store i32 %conv43, i32* %value, align 4, !dbg !5769
  %33 = load i8*, i8** %data.addr, align 8, !dbg !5772
  %34 = load i64, i64* %j, align 8, !dbg !5773
  %inc44 = add i64 %34, 1, !dbg !5773
  store i64 %inc44, i64* %j, align 8, !dbg !5773
  %arrayidx45 = getelementptr i8, i8* %33, i64 %34, !dbg !5772
  %35 = load i8, i8* %arrayidx45, align 1, !dbg !5772
  %conv46 = zext i8 %35 to i32, !dbg !5772
  %shl = shl i32 %conv46, 8, !dbg !5774
  %36 = load i32, i32* %value, align 4, !dbg !5775
  %or47 = or i32 %36, %shl, !dbg !5775
  store i32 %or47, i32* %value, align 4, !dbg !5775
  %37 = load i32, i32* %value, align 4, !dbg !5776
  %conv48 = trunc i32 %37 to i16, !dbg !5776
  %38 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5777
  %mmio49 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %38, i32 0, i32 17, !dbg !5778
  %39 = load i8*, i8** %mmio49, align 8, !dbg !5778
  %add.ptr50 = getelementptr i8, i8* %39, i64 264, !dbg !5779
  call void @writew(i16 zeroext %conv48, i8* %add.ptr50) #9, !dbg !5780
  store i32 0, i32* %i, align 4, !dbg !5781
  br label %for.cond51, !dbg !5783

for.cond51:                                       ; preds = %for.inc64, %for.body41
  %40 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5784
  %mmio52 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %40, i32 0, i32 17, !dbg !5786
  %41 = load i8*, i8** %mmio52, align 8, !dbg !5786
  %add.ptr53 = getelementptr i8, i8* %41, i64 260, !dbg !5787
  %call54 = call zeroext i16 @readw(i8* %add.ptr53) #9, !dbg !5788
  %conv55 = zext i16 %call54 to i32, !dbg !5788
  %and56 = and i32 %conv55, 2, !dbg !5789
  %cmp57 = icmp eq i32 %and56, 0, !dbg !5790
  br i1 %cmp57, label %land.rhs59, label %land.end62, !dbg !5791

land.rhs59:                                       ; preds = %for.cond51
  %42 = load i32, i32* %i, align 4, !dbg !5792
  %cmp60 = icmp slt i32 %42, 1000, !dbg !5793
  br label %land.end62

land.end62:                                       ; preds = %land.rhs59, %for.cond51
  %43 = phi i1 [ false, %for.cond51 ], [ %cmp60, %land.rhs59 ], !dbg !5794
  br i1 %43, label %for.body63, label %for.end66, !dbg !5795

for.body63:                                       ; preds = %land.end62
  call void @__const_udelay(i64 4295) #9, !dbg !5796
  br label %for.inc64, !dbg !5802

for.inc64:                                        ; preds = %for.body63
  %44 = load i32, i32* %i, align 4, !dbg !5803
  %inc65 = add i32 %44, 1, !dbg !5803
  store i32 %inc65, i32* %i, align 4, !dbg !5803
  br label %for.cond51, !dbg !5804, !llvm.loop !5805

for.end66:                                        ; preds = %land.end62
  %45 = load i32, i32* %i, align 4, !dbg !5807
  %cmp67 = icmp eq i32 %45, 1000, !dbg !5809
  br i1 %cmp67, label %if.then69, label %if.end71, !dbg !5810

if.then69:                                        ; preds = %for.end66
  %46 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5811
  %class_dev70 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %46, i32 0, i32 4, !dbg !5811
  %47 = load %struct.device*, %struct.device** %class_dev70, align 8, !dbg !5811
  %48 = load i32, i32* %fpga_index, align 4, !dbg !5811
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %47, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i32 %48) #10, !dbg !5811
  store i32 -5, i32* %retval, align 4, !dbg !5813
  br label %return, !dbg !5813

if.end71:                                         ; preds = %for.end66
  store i8* null, i8** %__vpp_verify.i.i, align 8, !dbg !5656
  %49 = load i8*, i8** %__vpp_verify.i.i, align 8, !dbg !5656
  %50 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #12, !dbg !5659, !srcloc !5814
  store i64 %50, i64* %pfo_val__.i.i, align 8, !dbg !5659
  %51 = load i64, i64* %pfo_val__.i.i, align 8, !dbg !5659
  %52 = inttoptr i64 %51 to %struct.task_struct*, !dbg !5659
  store %struct.task_struct* %52, %struct.task_struct** %tmp.i.i, align 8, !dbg !5659
  %53 = load %struct.task_struct*, %struct.task_struct** %tmp.i.i, align 8, !dbg !5659
  store %struct.task_struct* %53, %struct.task_struct** %pscr_ret__.i.i, align 8, !dbg !5646
  %54 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i.i, align 8, !dbg !5646
  store %struct.task_struct* %54, %struct.task_struct** %tmp1.i.i, align 8, !dbg !5646
  %55 = load %struct.task_struct*, %struct.task_struct** %tmp1.i.i, align 8, !dbg !5646
  %56 = bitcast %struct.task_struct* %55 to %struct.thread_info*, !dbg !5815
  %call1.i = call i32 @test_ti_thread_flag(%struct.thread_info* %56, i32 3) #11, !dbg !5815
  %tobool.i = icmp ne i32 %call1.i, 0, !dbg !5815
  %lnot.i = xor i1 %tobool.i, true, !dbg !5815
  %lnot.ext.i = zext i1 %tobool.i to i32, !dbg !5815
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !5815
  br i1 %tobool.i, label %if.then73, label %if.end74, !dbg !5816

if.then73:                                        ; preds = %if.end71
  call void @schedule() #9, !dbg !5817
  br label %if.end74, !dbg !5817

if.end74:                                         ; preds = %if.then73, %if.end71
  br label %for.cond38, !dbg !5818, !llvm.loop !5819

for.end75:                                        ; preds = %for.cond38
  %57 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5821
  %mmio76 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %57, i32 0, i32 17, !dbg !5822
  %58 = load i8*, i8** %mmio76, align 8, !dbg !5822
  %add.ptr77 = getelementptr i8, i8* %58, i64 256, !dbg !5823
  call void @writew(i16 zeroext 0, i8* %add.ptr77) #9, !dbg !5824
  store i32 0, i32* %retval, align 4, !dbg !5825
  br label %return, !dbg !5825

return:                                           ; preds = %for.end75, %if.then69, %if.then35, %if.then
  %59 = load i32, i32* %retval, align 4, !dbg !5826
  ret i32 %59, !dbg !5826
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pci_6534_init_main_fpga(%struct.comedi_device* %dev) #2 !dbg !5827 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5828, metadata !DIExpression()), !dbg !5829
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5830
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 17, !dbg !5831
  %1 = load i8*, i8** %mmio, align 8, !dbg !5831
  %add.ptr = getelementptr i8, i8* %1, i64 512, !dbg !5832
  call void @writel(i32 0, i8* %add.ptr) #9, !dbg !5833
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5834
  %mmio1 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %2, i32 0, i32 17, !dbg !5835
  %3 = load i8*, i8** %mmio1, align 8, !dbg !5835
  %add.ptr2 = getelementptr i8, i8* %3, i64 516, !dbg !5836
  call void @writel(i32 0, i8* %add.ptr2) #9, !dbg !5837
  %4 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5838
  %mmio3 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 17, !dbg !5839
  %5 = load i8*, i8** %mmio3, align 8, !dbg !5839
  %add.ptr4 = getelementptr i8, i8* %5, i64 640, !dbg !5840
  call void @writel(i32 0, i8* %add.ptr4) #9, !dbg !5841
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5842
  %mmio5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 17, !dbg !5843
  %7 = load i8*, i8** %mmio5, align 8, !dbg !5843
  %add.ptr6 = getelementptr i8, i8* %7, i64 644, !dbg !5844
  call void @writel(i32 0, i8* %add.ptr6) #9, !dbg !5845
  %8 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5846
  %mmio7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 17, !dbg !5847
  %9 = load i8*, i8** %mmio7, align 8, !dbg !5847
  %add.ptr8 = getelementptr i8, i8* %9, i64 648, !dbg !5848
  call void @writel(i32 0, i8* %add.ptr8) #9, !dbg !5849
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5850
  %mmio9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 17, !dbg !5851
  %11 = load i8*, i8** %mmio9, align 8, !dbg !5851
  %add.ptr10 = getelementptr i8, i8* %11, i64 652, !dbg !5852
  call void @writel(i32 0, i8* %add.ptr10) #9, !dbg !5853
  ret void, !dbg !5854
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writew(i16 zeroext %val, i8* %addr) #2 !dbg !5855 {
entry:
  %val.addr = alloca i16, align 2
  %addr.addr = alloca i8*, align 8
  store i16 %val, i16* %val.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %val.addr, metadata !5859, metadata !DIExpression()), !dbg !5860
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5861, metadata !DIExpression()), !dbg !5860
  %0 = load i16, i16* %val.addr, align 2, !dbg !5860
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !5860
  %2 = bitcast i8* %1 to i16*, !dbg !5860
  call void asm sideeffect "movw $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i16 %0, i16* %2) #8, !dbg !5860, !srcloc !5862
  ret void, !dbg !5860
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci_6534_reset_fpga(%struct.comedi_device* %dev, i32 %fpga_index) #2 !dbg !5863 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %fpga_index.addr = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5866, metadata !DIExpression()), !dbg !5867
  store i32 %fpga_index, i32* %fpga_index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fpga_index.addr, metadata !5868, metadata !DIExpression()), !dbg !5869
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5870
  %1 = load i32, i32* %fpga_index.addr, align 4, !dbg !5871
  %conv = sext i32 %1 to i64, !dbg !5871
  %call = call i32 @pci_6534_load_fpga(%struct.comedi_device* %0, i8* null, i64 0, i64 %conv) #9, !dbg !5872
  ret i32 %call, !dbg !5873
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @readw(i8* %addr) #2 !dbg !5874 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i16, align 2
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5877, metadata !DIExpression()), !dbg !5878
  call void @llvm.dbg.declare(metadata i16* %ret, metadata !5879, metadata !DIExpression()), !dbg !5878
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !5878
  %1 = bitcast i8* %0 to i16*, !dbg !5878
  %2 = call i16 asm sideeffect "movw $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i16* %1) #8, !dbg !5878, !srcloc !5880
  store i16 %2, i16* %ret, align 2, !dbg !5878
  %3 = load i16, i16* %ret, align 2, !dbg !5878
  ret i16 %3, !dbg !5878
}

; Function Attrs: noredzone
declare dso_local void @__const_udelay(i64) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #5

; Function Attrs: noredzone
declare dso_local void @schedule() #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @test_ti_thread_flag(%struct.thread_info* %ti, i32 %flag) #2 !dbg !5881 {
entry:
  %ti.addr = alloca %struct.thread_info*, align 8
  %flag.addr = alloca i32, align 4
  store %struct.thread_info* %ti, %struct.thread_info** %ti.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thread_info** %ti.addr, metadata !5885, metadata !DIExpression()), !dbg !5886
  store i32 %flag, i32* %flag.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flag.addr, metadata !5887, metadata !DIExpression()), !dbg !5888
  %0 = load i32, i32* %flag.addr, align 4, !dbg !5889
  %conv = sext i32 %0 to i64, !dbg !5889
  %1 = load %struct.thread_info*, %struct.thread_info** %ti.addr, align 8, !dbg !5890
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %1, i32 0, i32 0, !dbg !5891
  %call = call zeroext i1 @test_bit(i64 %conv, i64* %flags) #9, !dbg !5892
  %conv1 = zext i1 %call to i32, !dbg !5892
  ret i32 %conv1, !dbg !5893
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #2 !dbg !5894 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !5901, metadata !DIExpression()), !dbg !5904
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !5906, metadata !DIExpression()), !dbg !5907
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !5908, metadata !DIExpression()), !dbg !5909
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5910, metadata !DIExpression()), !dbg !5912
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5914, metadata !DIExpression()), !dbg !5915
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5916, metadata !DIExpression()), !dbg !5921
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5923, metadata !DIExpression()), !dbg !5924
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5925, metadata !DIExpression()), !dbg !5926
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5927, metadata !DIExpression()), !dbg !5928
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5929
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5930
  %div = sdiv i64 %1, 64, !dbg !5930
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5931
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5929
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5932
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5933
  %conv.i = trunc i64 %4 to i32, !dbg !5933
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #11, !dbg !5934
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5935
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5935
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #11, !dbg !5935
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5936
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !5936
  br i1 %8, label %cond.true, label %cond.false, !dbg !5936

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !5936
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !5936
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !5937
  %and.i = and i64 %11, 63, !dbg !5938
  %shl.i = shl i64 1, %and.i, !dbg !5939
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !5940
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !5941
  %shr.i = ashr i64 %13, 6, !dbg !5942
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !5940
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !5940
  %and1.i = and i64 %shl.i, %14, !dbg !5943
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !5944
  %conv = zext i1 %cmp.i to i32, !dbg !5936
  br label %cond.end, !dbg !5936

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !5936
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !5936
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !5945
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !5946
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #8, !dbg !5947, !srcloc !5948
  store i8 %19, i8* %oldbit.i, align 1, !dbg !5947
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !5949
  %tobool.i = trunc i8 %20 to i1, !dbg !5949
  %conv2 = zext i1 %tobool.i to i32, !dbg !5936
  br label %cond.end, !dbg !5936

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5936
  %tobool = icmp ne i32 %cond, 0, !dbg !5936
  ret i1 %tobool, !dbg !5950
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #2 !dbg !5951 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5955, metadata !DIExpression()), !dbg !5956
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5957, metadata !DIExpression()), !dbg !5958
  ret i1 true, !dbg !5959
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #2 !dbg !5960 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5964, metadata !DIExpression()), !dbg !5965
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5966, metadata !DIExpression()), !dbg !5967
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5968, metadata !DIExpression()), !dbg !5969
  ret void, !dbg !5970
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writel(i32 %val, i8* %addr) #2 !dbg !5971 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5974, metadata !DIExpression()), !dbg !5975
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5976, metadata !DIExpression()), !dbg !5975
  %0 = load i32, i32* %val.addr, align 4, !dbg !5975
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !5975
  %2 = bitcast i8* %1 to i32*, !dbg !5975
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #8, !dbg !5975, !srcloc !5977
  ret void, !dbg !5975
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writeb(i8 zeroext %val, i8* %addr) #2 !dbg !5978 {
entry:
  %val.addr = alloca i8, align 1
  %addr.addr = alloca i8*, align 8
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !5981, metadata !DIExpression()), !dbg !5982
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5983, metadata !DIExpression()), !dbg !5982
  %0 = load i8, i8* %val.addr, align 1, !dbg !5982
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !5982
  call void asm sideeffect "movb $0,$1", "q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 %0, i8* %1) #8, !dbg !5982, !srcloc !5984
  ret void, !dbg !5982
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_dio_insn_config(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_dio_update_state(%struct.comedi_subdevice*, i32*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readl(i8* %addr) #2 !dbg !5985 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5988, metadata !DIExpression()), !dbg !5989
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5990, metadata !DIExpression()), !dbg !5989
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !5989
  %1 = bitcast i8* %0 to i32*, !dbg !5989
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #8, !dbg !5989, !srcloc !5991
  store i32 %2, i32* %ret, align 4, !dbg !5989
  %3 = load i32, i32* %ret, align 4, !dbg !5989
  ret i32 %3, !dbg !5989
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ni_pcidio_ns_to_timer(i32* %nanosec, i32 %flags) #2 !dbg !5992 {
entry:
  %nanosec.addr = alloca i32*, align 8
  %flags.addr = alloca i32, align 4
  %divider = alloca i32, align 4
  %base = alloca i32, align 4
  %__x = alloca i32, align 4
  %__d = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32* %nanosec, i32** %nanosec.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %nanosec.addr, metadata !5995, metadata !DIExpression()), !dbg !5996
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5997, metadata !DIExpression()), !dbg !5998
  call void @llvm.dbg.declare(metadata i32* %divider, metadata !5999, metadata !DIExpression()), !dbg !6000
  call void @llvm.dbg.declare(metadata i32* %base, metadata !6001, metadata !DIExpression()), !dbg !6002
  store i32 50, i32* %base, align 4, !dbg !6003
  %0 = load i32, i32* %flags.addr, align 4, !dbg !6004
  %and = and i32 %0, 196608, !dbg !6005
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb
    i32 65536, label %sw.bb8
    i32 131072, label %sw.bb10
  ], !dbg !6006

sw.bb:                                            ; preds = %entry
  br label %sw.default, !dbg !6007

sw.default:                                       ; preds = %entry, %sw.bb
  call void @llvm.dbg.declare(metadata i32* %__x, metadata !6008, metadata !DIExpression()), !dbg !6011
  %1 = load i32*, i32** %nanosec.addr, align 8, !dbg !6011
  %2 = load i32, i32* %1, align 4, !dbg !6011
  store i32 %2, i32* %__x, align 4, !dbg !6011
  call void @llvm.dbg.declare(metadata i32* %__d, metadata !6012, metadata !DIExpression()), !dbg !6011
  %3 = load i32, i32* %base, align 4, !dbg !6011
  store i32 %3, i32* %__d, align 4, !dbg !6011
  %4 = load i32, i32* %__x, align 4, !dbg !6011
  %cmp = icmp sgt i32 %4, 0, !dbg !6011
  %conv = zext i1 %cmp to i32, !dbg !6011
  %5 = load i32, i32* %__d, align 4, !dbg !6011
  %cmp1 = icmp sgt i32 %5, 0, !dbg !6011
  %conv2 = zext i1 %cmp1 to i32, !dbg !6011
  %cmp3 = icmp eq i32 %conv, %conv2, !dbg !6011
  br i1 %cmp3, label %cond.true, label %cond.false, !dbg !6011

cond.true:                                        ; preds = %sw.default
  %6 = load i32, i32* %__x, align 4, !dbg !6011
  %7 = load i32, i32* %__d, align 4, !dbg !6011
  %div = sdiv i32 %7, 2, !dbg !6011
  %add = add i32 %6, %div, !dbg !6011
  %8 = load i32, i32* %__d, align 4, !dbg !6011
  %div5 = sdiv i32 %add, %8, !dbg !6011
  br label %cond.end, !dbg !6011

cond.false:                                       ; preds = %sw.default
  %9 = load i32, i32* %__x, align 4, !dbg !6011
  %10 = load i32, i32* %__d, align 4, !dbg !6011
  %div6 = sdiv i32 %10, 2, !dbg !6011
  %sub = sub i32 %9, %div6, !dbg !6011
  %11 = load i32, i32* %__d, align 4, !dbg !6011
  %div7 = sdiv i32 %sub, %11, !dbg !6011
  br label %cond.end, !dbg !6011

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div5, %cond.true ], [ %div7, %cond.false ], !dbg !6011
  store i32 %cond, i32* %tmp, align 4, !dbg !6011
  %12 = load i32, i32* %tmp, align 4, !dbg !6011
  store i32 %12, i32* %divider, align 4, !dbg !6013
  br label %sw.epilog, !dbg !6014

sw.bb8:                                           ; preds = %entry
  %13 = load i32*, i32** %nanosec.addr, align 8, !dbg !6015
  %14 = load i32, i32* %13, align 4, !dbg !6016
  %15 = load i32, i32* %base, align 4, !dbg !6017
  %div9 = sdiv i32 %14, %15, !dbg !6018
  store i32 %div9, i32* %divider, align 4, !dbg !6019
  br label %sw.epilog, !dbg !6020

sw.bb10:                                          ; preds = %entry
  %16 = load i32*, i32** %nanosec.addr, align 8, !dbg !6021
  %17 = load i32, i32* %16, align 4, !dbg !6021
  %18 = load i32, i32* %base, align 4, !dbg !6021
  %add11 = add i32 %17, %18, !dbg !6021
  %sub12 = sub i32 %add11, 1, !dbg !6021
  %19 = load i32, i32* %base, align 4, !dbg !6021
  %div13 = sdiv i32 %sub12, %19, !dbg !6021
  store i32 %div13, i32* %divider, align 4, !dbg !6022
  br label %sw.epilog, !dbg !6023

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb8, %cond.end
  %20 = load i32, i32* %base, align 4, !dbg !6024
  %21 = load i32, i32* %divider, align 4, !dbg !6025
  %mul = mul i32 %20, %21, !dbg !6026
  %22 = load i32*, i32** %nanosec.addr, align 8, !dbg !6027
  store i32 %mul, i32* %22, align 4, !dbg !6028
  %23 = load i32, i32* %divider, align 4, !dbg !6029
  ret i32 %23, !dbg !6030
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @setup_mite_dma(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #2 !dbg !6031 {
entry:
  %lock.addr.i28 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i28, metadata !5275, metadata !DIExpression()), !dbg !6032
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !5281, metadata !DIExpression()), !dbg !6034
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4485, metadata !DIExpression()), !dbg !6035
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %devpriv = alloca %struct.nidio96_private*, align 8
  %retval1 = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy7 = alloca i64, align 8
  %__dummy28 = alloca i64, align 8
  %tmp11 = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !6042, metadata !DIExpression()), !dbg !6043
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !6044, metadata !DIExpression()), !dbg !6045
  call void @llvm.dbg.declare(metadata %struct.nidio96_private** %devpriv, metadata !6046, metadata !DIExpression()), !dbg !6047
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6048
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !6049
  %1 = load i8*, i8** %private, align 8, !dbg !6049
  %2 = bitcast i8* %1 to %struct.nidio96_private*, !dbg !6048
  store %struct.nidio96_private* %2, %struct.nidio96_private** %devpriv, align 8, !dbg !6047
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !6050, metadata !DIExpression()), !dbg !6051
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !6052, metadata !DIExpression()), !dbg !6053
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6054
  %call = call i32 @ni_pcidio_request_di_mite_channel(%struct.comedi_device* %3) #9, !dbg !6055
  store i32 %call, i32* %retval1, align 4, !dbg !6056
  %4 = load i32, i32* %retval1, align 4, !dbg !6057
  %tobool = icmp ne i32 %4, 0, !dbg !6057
  br i1 %tobool, label %if.then, label %if.end, !dbg !6059

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %retval1, align 4, !dbg !6060
  store i32 %5, i32* %retval, align 4, !dbg !6061
  br label %return, !dbg !6061

if.end:                                           ; preds = %entry
  %6 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6062
  %7 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6063
  %async = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %7, i32 0, i32 7, !dbg !6064
  %8 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !6064
  %prealloc_bufsz = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %8, i32 0, i32 1, !dbg !6065
  %9 = load i32, i32* %prealloc_bufsz, align 8, !dbg !6065
  %call2 = call i32 @comedi_buf_write_alloc(%struct.comedi_subdevice* %6, i32 %9) #9, !dbg !6066
  br label %do.body, !dbg !6067

do.body:                                          ; preds = %if.end
  br label %do.body3, !dbg !6068

do.body3:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !6069, metadata !DIExpression()), !dbg !6071
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !6072, metadata !DIExpression()), !dbg !6071
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !6071
  %conv = zext i1 %cmp to i32, !dbg !6071
  store i32 1, i32* %tmp, align 4, !dbg !6071
  %10 = load i32, i32* %tmp, align 4, !dbg !6071
  br label %do.body4, !dbg !6073

do.body4:                                         ; preds = %do.body3
  br label %do.body5, !dbg !6074

do.body5:                                         ; preds = %do.body4
  br label %do.body6, !dbg !6075

do.body6:                                         ; preds = %do.body5
  call void @llvm.dbg.declare(metadata i64* %__dummy7, metadata !6077, metadata !DIExpression()), !dbg !6080
  call void @llvm.dbg.declare(metadata i64* %__dummy28, metadata !6081, metadata !DIExpression()), !dbg !6080
  %cmp9 = icmp eq i64* %__dummy7, %__dummy28, !dbg !6080
  %conv10 = zext i1 %cmp9 to i32, !dbg !6080
  store i32 1, i32* %tmp11, align 4, !dbg !6080
  %11 = load i32, i32* %tmp11, align 4, !dbg !6080
  %call12 = call i64 @arch_local_irq_save() #9, !dbg !6082
  store i64 %call12, i64* %flags, align 8, !dbg !6082
  br label %do.end, !dbg !6082

do.end:                                           ; preds = %do.body6
  br label %do.end13, !dbg !6075

do.end13:                                         ; preds = %do.end
  br label %do.body14, !dbg !6074

do.body14:                                        ; preds = %do.end13
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !6083, !srcloc !6084
  br label %do.body15, !dbg !6083

do.body15:                                        ; preds = %do.body14
  %12 = load %struct.nidio96_private*, %struct.nidio96_private** %devpriv, align 8, !dbg !6085
  %mite_channel_lock = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %12, i32 0, i32 6, !dbg !6085
  store %struct.spinlock* %mite_channel_lock, %struct.spinlock** %lock.addr.i, align 8
  %13 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !6086
  %14 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %13, i32 0, i32 0, !dbg !6087
  %rlock.i = bitcast %union.anon.3* %14 to %struct.raw_spinlock*, !dbg !6087
  br label %do.end17, !dbg !6085

do.end17:                                         ; preds = %do.body15
  br label %do.end18, !dbg !6083

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !6074

do.end19:                                         ; preds = %do.end18
  br label %do.end20, !dbg !6073

do.end20:                                         ; preds = %do.end19
  br label %do.end21, !dbg !6068

do.end21:                                         ; preds = %do.end20
  %15 = load %struct.nidio96_private*, %struct.nidio96_private** %devpriv, align 8, !dbg !6088
  %di_mite_chan = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %15, i32 0, i32 4, !dbg !6090
  %16 = load %struct.mite_channel*, %struct.mite_channel** %di_mite_chan, align 8, !dbg !6090
  %tobool22 = icmp ne %struct.mite_channel* %16, null, !dbg !6088
  br i1 %tobool22, label %if.then23, label %if.else, !dbg !6091

if.then23:                                        ; preds = %do.end21
  %17 = load %struct.nidio96_private*, %struct.nidio96_private** %devpriv, align 8, !dbg !6092
  %di_mite_chan24 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %17, i32 0, i32 4, !dbg !6094
  %18 = load %struct.mite_channel*, %struct.mite_channel** %di_mite_chan24, align 8, !dbg !6094
  call void @mite_prep_dma(%struct.mite_channel* %18, i32 32, i32 32) #9, !dbg !6095
  %19 = load %struct.nidio96_private*, %struct.nidio96_private** %devpriv, align 8, !dbg !6096
  %di_mite_chan25 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %19, i32 0, i32 4, !dbg !6097
  %20 = load %struct.mite_channel*, %struct.mite_channel** %di_mite_chan25, align 8, !dbg !6097
  call void @mite_dma_arm(%struct.mite_channel* %20) #9, !dbg !6098
  br label %if.end26, !dbg !6099

if.else:                                          ; preds = %do.end21
  store i32 -5, i32* %retval1, align 4, !dbg !6100
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then23
  %21 = load %struct.nidio96_private*, %struct.nidio96_private** %devpriv, align 8, !dbg !6102
  %mite_channel_lock27 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %21, i32 0, i32 6, !dbg !6103
  %22 = load i64, i64* %flags, align 8, !dbg !6104
  store %struct.spinlock* %mite_channel_lock27, %struct.spinlock** %lock.addr.i28, align 8
  store i64 %22, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !289, metadata !5351, metadata !DIExpression()) #8, !dbg !6105
  call void @llvm.dbg.declare(metadata !289, metadata !5355, metadata !DIExpression()) #8, !dbg !6105
  store i32 1, i32* %tmp.i, align 4, !dbg !6105
  %23 = load i32, i32* %tmp.i, align 4, !dbg !6105
  call void @llvm.dbg.declare(metadata !289, metadata !5356, metadata !DIExpression()) #8, !dbg !6106
  call void @llvm.dbg.declare(metadata !289, metadata !5362, metadata !DIExpression()) #8, !dbg !6106
  store i32 1, i32* %tmp8.i, align 4, !dbg !6106
  %24 = load i32, i32* %tmp8.i, align 4, !dbg !6106
  %25 = load i64, i64* %flags.addr.i, align 8, !dbg !6107
  call void @arch_local_irq_restore(i64 %25) #11, !dbg !6107
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !6108, !srcloc !5366
  %26 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i28, align 8, !dbg !6109
  %27 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %26, i32 0, i32 0, !dbg !6109
  %rlock.i29 = bitcast %union.anon.3* %27 to %struct.raw_spinlock*, !dbg !6109
  %28 = load i32, i32* %retval1, align 4, !dbg !6110
  store i32 %28, i32* %retval, align 4, !dbg !6111
  br label %return, !dbg !6111

return:                                           ; preds = %if.end26, %if.then
  %29 = load i32, i32* %retval, align 4, !dbg !6112
  ret i32 %29, !dbg !6112
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ni_pcidio_inttrig(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, i32 %trig_num) #2 !dbg !6113 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %trig_num.addr = alloca i32, align 4
  %devpriv = alloca %struct.nidio96_private*, align 8
  %cmd = alloca %struct.comedi_cmd*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !6114, metadata !DIExpression()), !dbg !6115
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !6116, metadata !DIExpression()), !dbg !6117
  store i32 %trig_num, i32* %trig_num.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %trig_num.addr, metadata !6118, metadata !DIExpression()), !dbg !6119
  call void @llvm.dbg.declare(metadata %struct.nidio96_private** %devpriv, metadata !6120, metadata !DIExpression()), !dbg !6121
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6122
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !6123
  %1 = load i8*, i8** %private, align 8, !dbg !6123
  %2 = bitcast i8* %1 to %struct.nidio96_private*, !dbg !6122
  store %struct.nidio96_private* %2, %struct.nidio96_private** %devpriv, align 8, !dbg !6121
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd, metadata !6124, metadata !DIExpression()), !dbg !6125
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6126
  %async = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %3, i32 0, i32 7, !dbg !6127
  %4 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !6127
  %cmd1 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %4, i32 0, i32 17, !dbg !6128
  store %struct.comedi_cmd* %cmd1, %struct.comedi_cmd** %cmd, align 8, !dbg !6125
  %5 = load i32, i32* %trig_num.addr, align 4, !dbg !6129
  %6 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !6131
  %start_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %6, i32 0, i32 3, !dbg !6132
  %7 = load i32, i32* %start_arg, align 4, !dbg !6132
  %cmp = icmp ne i32 %5, %7, !dbg !6133
  br i1 %cmp, label %if.then, label %if.end, !dbg !6134

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !6135
  br label %return, !dbg !6135

if.end:                                           ; preds = %entry
  %8 = load %struct.nidio96_private*, %struct.nidio96_private** %devpriv, align 8, !dbg !6136
  %OP_MODEBits = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %8, i32 0, i32 3, !dbg !6137
  %9 = load i16, i16* %OP_MODEBits, align 8, !dbg !6137
  %conv = trunc i16 %9 to i8, !dbg !6136
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6138
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 17, !dbg !6139
  %11 = load i8*, i8** %mmio, align 8, !dbg !6139
  %add.ptr = getelementptr i8, i8* %11, i64 65, !dbg !6140
  call void @writeb(i8 zeroext %conv, i8* %add.ptr) #9, !dbg !6141
  %12 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6142
  %async2 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %12, i32 0, i32 7, !dbg !6143
  %13 = load %struct.comedi_async*, %struct.comedi_async** %async2, align 8, !dbg !6143
  %inttrig = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %13, i32 0, i32 20, !dbg !6144
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* null, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)** %inttrig, align 8, !dbg !6145
  store i32 1, i32* %retval, align 4, !dbg !6146
  br label %return, !dbg !6146

return:                                           ; preds = %if.end, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !6147
  ret i32 %14, !dbg !6147
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ni_pcidio_request_di_mite_channel(%struct.comedi_device* %dev) #2 !dbg !6148 {
entry:
  %lock.addr.i49 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i49, metadata !5275, metadata !DIExpression()), !dbg !6149
  %flags.addr.i50 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i50, metadata !5281, metadata !DIExpression()), !dbg !6153
  %tmp.i51 = alloca i32, align 4
  %tmp8.i52 = alloca i32, align 4
  %lock.addr.i47 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i47, metadata !5275, metadata !DIExpression()), !dbg !6154
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !5281, metadata !DIExpression()), !dbg !6156
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4485, metadata !DIExpression()), !dbg !6157
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %devpriv = alloca %struct.nidio96_private*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !6164, metadata !DIExpression()), !dbg !6165
  call void @llvm.dbg.declare(metadata %struct.nidio96_private** %devpriv, metadata !6166, metadata !DIExpression()), !dbg !6167
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6168
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !6169
  %1 = load i8*, i8** %private, align 8, !dbg !6169
  %2 = bitcast i8* %1 to %struct.nidio96_private*, !dbg !6168
  store %struct.nidio96_private* %2, %struct.nidio96_private** %devpriv, align 8, !dbg !6167
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !6170, metadata !DIExpression()), !dbg !6171
  br label %do.body, !dbg !6172

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6173

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !6174, metadata !DIExpression()), !dbg !6176
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !6177, metadata !DIExpression()), !dbg !6176
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !6176
  %conv = zext i1 %cmp to i32, !dbg !6176
  store i32 1, i32* %tmp, align 4, !dbg !6176
  %3 = load i32, i32* %tmp, align 4, !dbg !6176
  br label %do.body2, !dbg !6178

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !6179

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !6180

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !6182, metadata !DIExpression()), !dbg !6185
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !6186, metadata !DIExpression()), !dbg !6185
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !6185
  %conv8 = zext i1 %cmp7 to i32, !dbg !6185
  store i32 1, i32* %tmp9, align 4, !dbg !6185
  %4 = load i32, i32* %tmp9, align 4, !dbg !6185
  %call = call i64 @arch_local_irq_save() #9, !dbg !6187
  store i64 %call, i64* %flags, align 8, !dbg !6187
  br label %do.end, !dbg !6187

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !6180

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !6179

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !6188, !srcloc !6189
  br label %do.body12, !dbg !6188

do.body12:                                        ; preds = %do.body11
  %5 = load %struct.nidio96_private*, %struct.nidio96_private** %devpriv, align 8, !dbg !6190
  %mite_channel_lock = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %5, i32 0, i32 6, !dbg !6190
  store %struct.spinlock* %mite_channel_lock, %struct.spinlock** %lock.addr.i, align 8
  %6 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !6191
  %7 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %6, i32 0, i32 0, !dbg !6192
  %rlock.i = bitcast %union.anon.3* %7 to %struct.raw_spinlock*, !dbg !6192
  br label %do.end14, !dbg !6190

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !6188

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !6179

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !6178

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !6173

do.end18:                                         ; preds = %do.end17
  br label %do.body19, !dbg !6193

do.body19:                                        ; preds = %do.end18
  %8 = load %struct.nidio96_private*, %struct.nidio96_private** %devpriv, align 8, !dbg !6194
  %di_mite_chan = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %8, i32 0, i32 4, !dbg !6194
  %9 = load %struct.mite_channel*, %struct.mite_channel** %di_mite_chan, align 8, !dbg !6194
  %tobool = icmp ne %struct.mite_channel* %9, null, !dbg !6194
  %lnot = xor i1 %tobool, true, !dbg !6194
  %lnot20 = xor i1 %lnot, true, !dbg !6194
  %lnot.ext = zext i1 %lnot20 to i32, !dbg !6194
  %conv21 = sext i32 %lnot.ext to i64, !dbg !6194
  %tobool22 = icmp ne i64 %conv21, 0, !dbg !6194
  br i1 %tobool22, label %if.then, label %if.end, !dbg !6197

if.then:                                          ; preds = %do.body19
  br label %do.body23, !dbg !6194

do.body23:                                        ; preds = %if.then
  br label %do.body24, !dbg !6198

do.body24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !6200

do.end25:                                         ; preds = %do.body24
  br label %do.body26, !dbg !6198

do.body26:                                        ; preds = %do.end25
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0), i32 300, i32 0, i64 12) #8, !dbg !6202, !srcloc !6204
  br label %do.end27, !dbg !6202

do.end27:                                         ; preds = %do.body26
  br label %do.body28, !dbg !6198

do.body28:                                        ; preds = %do.end27
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 237) #8, !dbg !6205, !srcloc !6208
  unreachable, !dbg !6209

do.end29:                                         ; No predecessors!
  br label %do.end30, !dbg !6198

do.end30:                                         ; preds = %do.end29
  br label %if.end, !dbg !6198

if.end:                                           ; preds = %do.end30, %do.body19
  br label %do.end31, !dbg !6197

do.end31:                                         ; preds = %if.end
  %10 = load %struct.nidio96_private*, %struct.nidio96_private** %devpriv, align 8, !dbg !6210
  %mite = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %10, i32 0, i32 0, !dbg !6211
  %11 = load %struct.mite*, %struct.mite** %mite, align 8, !dbg !6211
  %12 = load %struct.nidio96_private*, %struct.nidio96_private** %devpriv, align 8, !dbg !6212
  %di_mite_ring = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %12, i32 0, i32 5, !dbg !6213
  %13 = load %struct.mite_ring*, %struct.mite_ring** %di_mite_ring, align 8, !dbg !6213
  %call32 = call %struct.mite_channel* @mite_request_channel_in_range(%struct.mite* %11, %struct.mite_ring* %13, i32 1, i32 2) #9, !dbg !6214
  %14 = load %struct.nidio96_private*, %struct.nidio96_private** %devpriv, align 8, !dbg !6215
  %di_mite_chan33 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %14, i32 0, i32 4, !dbg !6216
  store %struct.mite_channel* %call32, %struct.mite_channel** %di_mite_chan33, align 8, !dbg !6217
  %15 = load %struct.nidio96_private*, %struct.nidio96_private** %devpriv, align 8, !dbg !6218
  %di_mite_chan34 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %15, i32 0, i32 4, !dbg !6219
  %16 = load %struct.mite_channel*, %struct.mite_channel** %di_mite_chan34, align 8, !dbg !6219
  %tobool35 = icmp ne %struct.mite_channel* %16, null, !dbg !6218
  br i1 %tobool35, label %if.end38, label %if.then36, !dbg !6220

if.then36:                                        ; preds = %do.end31
  %17 = load %struct.nidio96_private*, %struct.nidio96_private** %devpriv, align 8, !dbg !6221
  %mite_channel_lock37 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %17, i32 0, i32 6, !dbg !6222
  %18 = load i64, i64* %flags, align 8, !dbg !6223
  store %struct.spinlock* %mite_channel_lock37, %struct.spinlock** %lock.addr.i49, align 8
  store i64 %18, i64* %flags.addr.i50, align 8
  call void @llvm.dbg.declare(metadata !289, metadata !5351, metadata !DIExpression()) #8, !dbg !6224
  call void @llvm.dbg.declare(metadata !289, metadata !5355, metadata !DIExpression()) #8, !dbg !6224
  store i32 1, i32* %tmp.i51, align 4, !dbg !6224
  %19 = load i32, i32* %tmp.i51, align 4, !dbg !6224
  call void @llvm.dbg.declare(metadata !289, metadata !5356, metadata !DIExpression()) #8, !dbg !6225
  call void @llvm.dbg.declare(metadata !289, metadata !5362, metadata !DIExpression()) #8, !dbg !6225
  store i32 1, i32* %tmp8.i52, align 4, !dbg !6225
  %20 = load i32, i32* %tmp8.i52, align 4, !dbg !6225
  %21 = load i64, i64* %flags.addr.i50, align 8, !dbg !6226
  call void @arch_local_irq_restore(i64 %21) #11, !dbg !6226
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !6227, !srcloc !5366
  %22 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i49, align 8, !dbg !6228
  %23 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %22, i32 0, i32 0, !dbg !6228
  %rlock.i53 = bitcast %union.anon.3* %23 to %struct.raw_spinlock*, !dbg !6228
  %24 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6229
  %class_dev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %24, i32 0, i32 4, !dbg !6229
  %25 = load %struct.device*, %struct.device** %class_dev, align 8, !dbg !6229
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !6229
  store i32 -16, i32* %retval, align 4, !dbg !6230
  br label %return, !dbg !6230

if.end38:                                         ; preds = %do.end31
  %26 = load %struct.nidio96_private*, %struct.nidio96_private** %devpriv, align 8, !dbg !6231
  %di_mite_chan39 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %26, i32 0, i32 4, !dbg !6232
  %27 = load %struct.mite_channel*, %struct.mite_channel** %di_mite_chan39, align 8, !dbg !6232
  %dir = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %27, i32 0, i32 2, !dbg !6233
  store i32 0, i32* %dir, align 4, !dbg !6234
  %28 = load %struct.nidio96_private*, %struct.nidio96_private** %devpriv, align 8, !dbg !6235
  %di_mite_chan40 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %28, i32 0, i32 4, !dbg !6236
  %29 = load %struct.mite_channel*, %struct.mite_channel** %di_mite_chan40, align 8, !dbg !6236
  %channel = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %29, i32 0, i32 1, !dbg !6237
  %30 = load i32, i32* %channel, align 8, !dbg !6237
  %call41 = call i32 @primary_DMAChannel_bits(i32 %30) #9, !dbg !6238
  %31 = load %struct.nidio96_private*, %struct.nidio96_private** %devpriv, align 8, !dbg !6239
  %di_mite_chan42 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %31, i32 0, i32 4, !dbg !6240
  %32 = load %struct.mite_channel*, %struct.mite_channel** %di_mite_chan42, align 8, !dbg !6240
  %channel43 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %32, i32 0, i32 1, !dbg !6241
  %33 = load i32, i32* %channel43, align 8, !dbg !6241
  %call44 = call i32 @secondary_DMAChannel_bits(i32 %33) #9, !dbg !6242
  %or = or i32 %call41, %call44, !dbg !6243
  %conv45 = trunc i32 %or to i8, !dbg !6238
  %34 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6244
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %34, i32 0, i32 17, !dbg !6245
  %35 = load i8*, i8** %mmio, align 8, !dbg !6245
  %add.ptr = getelementptr i8, i8* %35, i64 76, !dbg !6246
  call void @writeb(i8 zeroext %conv45, i8* %add.ptr) #9, !dbg !6247
  %36 = load %struct.nidio96_private*, %struct.nidio96_private** %devpriv, align 8, !dbg !6248
  %mite_channel_lock46 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %36, i32 0, i32 6, !dbg !6249
  %37 = load i64, i64* %flags, align 8, !dbg !6250
  store %struct.spinlock* %mite_channel_lock46, %struct.spinlock** %lock.addr.i47, align 8
  store i64 %37, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !289, metadata !5351, metadata !DIExpression()) #8, !dbg !6251
  call void @llvm.dbg.declare(metadata !289, metadata !5355, metadata !DIExpression()) #8, !dbg !6251
  store i32 1, i32* %tmp.i, align 4, !dbg !6251
  %38 = load i32, i32* %tmp.i, align 4, !dbg !6251
  call void @llvm.dbg.declare(metadata !289, metadata !5356, metadata !DIExpression()) #8, !dbg !6252
  call void @llvm.dbg.declare(metadata !289, metadata !5362, metadata !DIExpression()) #8, !dbg !6252
  store i32 1, i32* %tmp8.i, align 4, !dbg !6252
  %39 = load i32, i32* %tmp8.i, align 4, !dbg !6252
  %40 = load i64, i64* %flags.addr.i, align 8, !dbg !6253
  call void @arch_local_irq_restore(i64 %40) #11, !dbg !6253
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !6254, !srcloc !5366
  %41 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i47, align 8, !dbg !6255
  %42 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %41, i32 0, i32 0, !dbg !6255
  %rlock.i48 = bitcast %union.anon.3* %42 to %struct.raw_spinlock*, !dbg !6255
  store i32 0, i32* %retval, align 4, !dbg !6256
  br label %return, !dbg !6256

return:                                           ; preds = %if.end38, %if.then36
  %43 = load i32, i32* %retval, align 4, !dbg !6257
  ret i32 %43, !dbg !6257
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_buf_write_alloc(%struct.comedi_subdevice*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #2 !dbg !6258 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !6262, metadata !DIExpression()), !dbg !6263
  %call = call i64 @arch_local_save_flags() #9, !dbg !6264
  store i64 %call, i64* %f, align 8, !dbg !6265
  call void @arch_local_irq_disable() #9, !dbg !6266
  %0 = load i64, i64* %f, align 8, !dbg !6267
  ret i64 %0, !dbg !6268
}

; Function Attrs: noredzone
declare dso_local void @mite_prep_dma(%struct.mite_channel*, i32, i32) #1

; Function Attrs: noredzone
declare dso_local void @mite_dma_arm(%struct.mite_channel*) #1

; Function Attrs: noredzone
declare dso_local %struct.mite_channel* @mite_request_channel_in_range(%struct.mite*, %struct.mite_ring*, i32, i32) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @primary_DMAChannel_bits(i32 %channel) #2 !dbg !6269 {
entry:
  %channel.addr = alloca i32, align 4
  store i32 %channel, i32* %channel.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %channel.addr, metadata !6272, metadata !DIExpression()), !dbg !6273
  %0 = load i32, i32* %channel.addr, align 4, !dbg !6274
  %and = and i32 %0, 3, !dbg !6275
  ret i32 %and, !dbg !6276
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @secondary_DMAChannel_bits(i32 %channel) #2 !dbg !6277 {
entry:
  %channel.addr = alloca i32, align 4
  store i32 %channel, i32* %channel.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %channel.addr, metadata !6278, metadata !DIExpression()), !dbg !6279
  %0 = load i32, i32* %channel.addr, align 4, !dbg !6280
  %shl = shl i32 %0, 2, !dbg !6281
  %and = and i32 %shl, 12, !dbg !6282
  ret i32 %and, !dbg !6283
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #2 !dbg !6284 {
entry:
  %__ret = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  %__mask = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !6285, metadata !DIExpression()), !dbg !6287
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6288, metadata !DIExpression()), !dbg !6287
  %0 = load i64, i64* %__edi, align 8, !dbg !6287
  store i64 %0, i64* %__edi, align 8, !dbg !6287
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6289, metadata !DIExpression()), !dbg !6287
  %1 = load i64, i64* %__esi, align 8, !dbg !6287
  store i64 %1, i64* %__esi, align 8, !dbg !6287
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6290, metadata !DIExpression()), !dbg !6287
  %2 = load i64, i64* %__edx, align 8, !dbg !6287
  store i64 %2, i64* %__edx, align 8, !dbg !6287
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6291, metadata !DIExpression()), !dbg !6287
  %3 = load i64, i64* %__ecx, align 8, !dbg !6287
  store i64 %3, i64* %__ecx, align 8, !dbg !6287
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6292, metadata !DIExpression()), !dbg !6287
  %4 = load i64, i64* %__eax, align 8, !dbg !6287
  store i64 %4, i64* %__eax, align 8, !dbg !6287
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !6287
  %6 = call i64 @llvm.read_register.i64(metadata !4383), !dbg !6293
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #8, !dbg !6293, !srcloc !6296
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !6293
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !6293
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6293
  call void @llvm.write_register.i64(metadata !4383, i64 %asmresult1), !dbg !6293
  %8 = load i64, i64* %__eax, align 8, !dbg !6293
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !6297, metadata !DIExpression()), !dbg !6299
  store i64 -1, i64* %__mask, align 8, !dbg !6299
  %9 = load i64, i64* %__mask, align 8, !dbg !6299
  store i64 %9, i64* %tmp, align 8, !dbg !6299
  %10 = load i64, i64* %tmp, align 8, !dbg !6299
  %and = and i64 %8, %10, !dbg !6293
  store i64 %and, i64* %__ret, align 8, !dbg !6293
  %11 = load i64, i64* %__ret, align 8, !dbg !6287
  store i64 %11, i64* %tmp2, align 8, !dbg !6300
  %12 = load i64, i64* %tmp2, align 8, !dbg !6287
  ret i64 %12, !dbg !6301
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #2 !dbg !6302 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6303, metadata !DIExpression()), !dbg !6305
  %0 = load i64, i64* %__edi, align 8, !dbg !6305
  store i64 %0, i64* %__edi, align 8, !dbg !6305
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6306, metadata !DIExpression()), !dbg !6305
  %1 = load i64, i64* %__esi, align 8, !dbg !6305
  store i64 %1, i64* %__esi, align 8, !dbg !6305
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6307, metadata !DIExpression()), !dbg !6305
  %2 = load i64, i64* %__edx, align 8, !dbg !6305
  store i64 %2, i64* %__edx, align 8, !dbg !6305
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6308, metadata !DIExpression()), !dbg !6305
  %3 = load i64, i64* %__ecx, align 8, !dbg !6305
  store i64 %3, i64* %__ecx, align 8, !dbg !6305
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6309, metadata !DIExpression()), !dbg !6305
  %4 = load i64, i64* %__eax, align 8, !dbg !6305
  store i64 %4, i64* %__eax, align 8, !dbg !6305
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !6305
  %6 = call i64 @llvm.read_register.i64(metadata !4383), !dbg !6305
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #8, !dbg !6305, !srcloc !6310
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !6305
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !6305
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6305
  call void @llvm.write_register.i64(metadata !4383, i64 %asmresult1), !dbg !6305
  ret void, !dbg !6311
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #7

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #2 !dbg !6312 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !6315, metadata !DIExpression()), !dbg !6316
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6317, metadata !DIExpression()), !dbg !6319
  %0 = load i64, i64* %__edi, align 8, !dbg !6319
  store i64 %0, i64* %__edi, align 8, !dbg !6319
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6320, metadata !DIExpression()), !dbg !6319
  %1 = load i64, i64* %__esi, align 8, !dbg !6319
  store i64 %1, i64* %__esi, align 8, !dbg !6319
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6321, metadata !DIExpression()), !dbg !6319
  %2 = load i64, i64* %__edx, align 8, !dbg !6319
  store i64 %2, i64* %__edx, align 8, !dbg !6319
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6322, metadata !DIExpression()), !dbg !6319
  %3 = load i64, i64* %__ecx, align 8, !dbg !6319
  store i64 %3, i64* %__ecx, align 8, !dbg !6319
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6323, metadata !DIExpression()), !dbg !6319
  %4 = load i64, i64* %__eax, align 8, !dbg !6319
  store i64 %4, i64* %__eax, align 8, !dbg !6319
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !6319
  %6 = call i64 @llvm.read_register.i64(metadata !4383), !dbg !6319
  %7 = load i64, i64* %f.addr, align 8, !dbg !6319
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #8, !dbg !6319, !srcloc !6324
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !6319
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !6319
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6319
  call void @llvm.write_register.i64(metadata !4383, i64 %asmresult1), !dbg !6319
  ret void, !dbg !6325
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_src(i32* %src, i32 %flags) #2 !dbg !6326 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i32*, align 8
  %flags.addr = alloca i32, align 4
  %orig_src = alloca i32, align 4
  store i32* %src, i32** %src.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %src.addr, metadata !6329, metadata !DIExpression()), !dbg !6330
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6331, metadata !DIExpression()), !dbg !6332
  call void @llvm.dbg.declare(metadata i32* %orig_src, metadata !6333, metadata !DIExpression()), !dbg !6334
  %0 = load i32*, i32** %src.addr, align 8, !dbg !6335
  %1 = load i32, i32* %0, align 4, !dbg !6336
  store i32 %1, i32* %orig_src, align 4, !dbg !6334
  %2 = load i32, i32* %orig_src, align 4, !dbg !6337
  %3 = load i32, i32* %flags.addr, align 4, !dbg !6338
  %and = and i32 %2, %3, !dbg !6339
  %4 = load i32*, i32** %src.addr, align 8, !dbg !6340
  store i32 %and, i32* %4, align 4, !dbg !6341
  %5 = load i32*, i32** %src.addr, align 8, !dbg !6342
  %6 = load i32, i32* %5, align 4, !dbg !6344
  %cmp = icmp eq i32 %6, 0, !dbg !6345
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !6346

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32*, i32** %src.addr, align 8, !dbg !6347
  %8 = load i32, i32* %7, align 4, !dbg !6348
  %9 = load i32, i32* %orig_src, align 4, !dbg !6349
  %cmp1 = icmp ne i32 %8, %9, !dbg !6350
  br i1 %cmp1, label %if.then, label %if.end, !dbg !6351

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !6352
  br label %return, !dbg !6352

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %retval, align 4, !dbg !6353
  br label %return, !dbg !6353

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !6354
  ret i32 %10, !dbg !6354
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_is_unique(i32 %src) #2 !dbg !6355 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i32, align 4
  store i32 %src, i32* %src.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %src.addr, metadata !6358, metadata !DIExpression()), !dbg !6359
  %0 = load i32, i32* %src.addr, align 4, !dbg !6360
  %1 = load i32, i32* %src.addr, align 4, !dbg !6362
  %sub = sub i32 %1, 1, !dbg !6363
  %and = and i32 %0, %sub, !dbg !6364
  %cmp = icmp ne i32 %and, 0, !dbg !6365
  br i1 %cmp, label %if.then, label %if.end, !dbg !6366

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !6367
  br label %return, !dbg !6367

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6368
  br label %return, !dbg !6368

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !6369
  ret i32 %2, !dbg !6369
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_arg_is(i32* %arg, i32 %val) #2 !dbg !6370 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i32*, align 8
  %val.addr = alloca i32, align 4
  store i32* %arg, i32** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %arg.addr, metadata !6371, metadata !DIExpression()), !dbg !6372
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !6373, metadata !DIExpression()), !dbg !6374
  %0 = load i32*, i32** %arg.addr, align 8, !dbg !6375
  %1 = load i32, i32* %0, align 4, !dbg !6377
  %2 = load i32, i32* %val.addr, align 4, !dbg !6378
  %cmp = icmp ne i32 %1, %2, !dbg !6379
  br i1 %cmp, label %if.then, label %if.end, !dbg !6380

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %val.addr, align 4, !dbg !6381
  %4 = load i32*, i32** %arg.addr, align 8, !dbg !6383
  store i32 %3, i32* %4, align 4, !dbg !6384
  store i32 -22, i32* %retval, align 4, !dbg !6385
  br label %return, !dbg !6385

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6386
  br label %return, !dbg !6386

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !6387
  ret i32 %5, !dbg !6387
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_arg_min(i32* %arg, i32 %val) #2 !dbg !6388 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i32*, align 8
  %val.addr = alloca i32, align 4
  store i32* %arg, i32** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %arg.addr, metadata !6389, metadata !DIExpression()), !dbg !6390
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !6391, metadata !DIExpression()), !dbg !6392
  %0 = load i32*, i32** %arg.addr, align 8, !dbg !6393
  %1 = load i32, i32* %0, align 4, !dbg !6395
  %2 = load i32, i32* %val.addr, align 4, !dbg !6396
  %cmp = icmp ult i32 %1, %2, !dbg !6397
  br i1 %cmp, label %if.then, label %if.end, !dbg !6398

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %val.addr, align 4, !dbg !6399
  %4 = load i32*, i32** %arg.addr, align 8, !dbg !6401
  store i32 %3, i32* %4, align 4, !dbg !6402
  store i32 -22, i32* %retval, align 4, !dbg !6403
  br label %return, !dbg !6403

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6404
  br label %return, !dbg !6404

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !6405
  ret i32 %5, !dbg !6405
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ni_pcidio_release_di_mite_channel(%struct.comedi_device* %dev) #2 !dbg !6406 {
entry:
  %lock.addr.i25 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i25, metadata !5275, metadata !DIExpression()), !dbg !6407
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !5281, metadata !DIExpression()), !dbg !6409
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4485, metadata !DIExpression()), !dbg !6410
  %dev.addr = alloca %struct.comedi_device*, align 8
  %devpriv = alloca %struct.nidio96_private*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !6417, metadata !DIExpression()), !dbg !6418
  call void @llvm.dbg.declare(metadata %struct.nidio96_private** %devpriv, metadata !6419, metadata !DIExpression()), !dbg !6420
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6421
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !6422
  %1 = load i8*, i8** %private, align 8, !dbg !6422
  %2 = bitcast i8* %1 to %struct.nidio96_private*, !dbg !6421
  store %struct.nidio96_private* %2, %struct.nidio96_private** %devpriv, align 8, !dbg !6420
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !6423, metadata !DIExpression()), !dbg !6424
  br label %do.body, !dbg !6425

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6426

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !6427, metadata !DIExpression()), !dbg !6429
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !6430, metadata !DIExpression()), !dbg !6429
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !6429
  %conv = zext i1 %cmp to i32, !dbg !6429
  store i32 1, i32* %tmp, align 4, !dbg !6429
  %3 = load i32, i32* %tmp, align 4, !dbg !6429
  br label %do.body2, !dbg !6431

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !6432

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !6433

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !6435, metadata !DIExpression()), !dbg !6438
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !6439, metadata !DIExpression()), !dbg !6438
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !6438
  %conv8 = zext i1 %cmp7 to i32, !dbg !6438
  store i32 1, i32* %tmp9, align 4, !dbg !6438
  %4 = load i32, i32* %tmp9, align 4, !dbg !6438
  %call = call i64 @arch_local_irq_save() #9, !dbg !6440
  store i64 %call, i64* %flags, align 8, !dbg !6440
  br label %do.end, !dbg !6440

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !6433

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !6432

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !6441, !srcloc !6442
  br label %do.body12, !dbg !6441

do.body12:                                        ; preds = %do.body11
  %5 = load %struct.nidio96_private*, %struct.nidio96_private** %devpriv, align 8, !dbg !6443
  %mite_channel_lock = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %5, i32 0, i32 6, !dbg !6443
  store %struct.spinlock* %mite_channel_lock, %struct.spinlock** %lock.addr.i, align 8
  %6 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !6444
  %7 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %6, i32 0, i32 0, !dbg !6445
  %rlock.i = bitcast %union.anon.3* %7 to %struct.raw_spinlock*, !dbg !6445
  br label %do.end14, !dbg !6443

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !6441

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !6432

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !6431

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !6426

do.end18:                                         ; preds = %do.end17
  %8 = load %struct.nidio96_private*, %struct.nidio96_private** %devpriv, align 8, !dbg !6446
  %di_mite_chan = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %8, i32 0, i32 4, !dbg !6448
  %9 = load %struct.mite_channel*, %struct.mite_channel** %di_mite_chan, align 8, !dbg !6448
  %tobool = icmp ne %struct.mite_channel* %9, null, !dbg !6446
  br i1 %tobool, label %if.then, label %if.end, !dbg !6449

if.then:                                          ; preds = %do.end18
  %10 = load %struct.nidio96_private*, %struct.nidio96_private** %devpriv, align 8, !dbg !6450
  %di_mite_chan19 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %10, i32 0, i32 4, !dbg !6452
  %11 = load %struct.mite_channel*, %struct.mite_channel** %di_mite_chan19, align 8, !dbg !6452
  call void @mite_release_channel(%struct.mite_channel* %11) #9, !dbg !6453
  %12 = load %struct.nidio96_private*, %struct.nidio96_private** %devpriv, align 8, !dbg !6454
  %di_mite_chan20 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %12, i32 0, i32 4, !dbg !6455
  store %struct.mite_channel* null, %struct.mite_channel** %di_mite_chan20, align 8, !dbg !6456
  %call21 = call i32 @primary_DMAChannel_bits(i32 0) #9, !dbg !6457
  %call22 = call i32 @secondary_DMAChannel_bits(i32 0) #9, !dbg !6458
  %or = or i32 %call21, %call22, !dbg !6459
  %conv23 = trunc i32 %or to i8, !dbg !6457
  %13 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6460
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 17, !dbg !6461
  %14 = load i8*, i8** %mmio, align 8, !dbg !6461
  %add.ptr = getelementptr i8, i8* %14, i64 76, !dbg !6462
  call void @writeb(i8 zeroext %conv23, i8* %add.ptr) #9, !dbg !6463
  br label %if.end, !dbg !6464

if.end:                                           ; preds = %if.then, %do.end18
  %15 = load %struct.nidio96_private*, %struct.nidio96_private** %devpriv, align 8, !dbg !6465
  %mite_channel_lock24 = getelementptr inbounds %struct.nidio96_private, %struct.nidio96_private* %15, i32 0, i32 6, !dbg !6466
  %16 = load i64, i64* %flags, align 8, !dbg !6467
  store %struct.spinlock* %mite_channel_lock24, %struct.spinlock** %lock.addr.i25, align 8
  store i64 %16, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !289, metadata !5351, metadata !DIExpression()) #8, !dbg !6468
  call void @llvm.dbg.declare(metadata !289, metadata !5355, metadata !DIExpression()) #8, !dbg !6468
  store i32 1, i32* %tmp.i, align 4, !dbg !6468
  %17 = load i32, i32* %tmp.i, align 4, !dbg !6468
  call void @llvm.dbg.declare(metadata !289, metadata !5356, metadata !DIExpression()) #8, !dbg !6469
  call void @llvm.dbg.declare(metadata !289, metadata !5362, metadata !DIExpression()) #8, !dbg !6469
  store i32 1, i32* %tmp8.i, align 4, !dbg !6469
  %18 = load i32, i32* %tmp8.i, align 4, !dbg !6469
  %19 = load i64, i64* %flags.addr.i, align 8, !dbg !6470
  call void @arch_local_irq_restore(i64 %19) #11, !dbg !6470
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !6471, !srcloc !5366
  %20 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i25, align 8, !dbg !6472
  %21 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %20, i32 0, i32 0, !dbg !6472
  %rlock.i26 = bitcast %union.anon.3* %21 to %struct.raw_spinlock*, !dbg !6472
  ret void, !dbg !6473
}

; Function Attrs: noredzone
declare dso_local void @mite_release_channel(%struct.mite_channel*) #1

; Function Attrs: noredzone
declare dso_local i32 @mite_buf_change(%struct.mite_ring*, %struct.comedi_subdevice*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noredzone
declare dso_local void @mite_sync_dma(%struct.mite_channel*, %struct.comedi_subdevice*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_buf_n_bytes_ready(%struct.comedi_subdevice* %s) #2 !dbg !6474 {
entry:
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !6477, metadata !DIExpression()), !dbg !6478
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6479
  %async = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 7, !dbg !6480
  %1 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !6480
  %buf_write_count = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %1, i32 0, i32 4, !dbg !6481
  %2 = load i32, i32* %buf_write_count, align 4, !dbg !6481
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6482
  %async1 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %3, i32 0, i32 7, !dbg !6483
  %4 = load %struct.comedi_async*, %struct.comedi_async** %async1, align 8, !dbg !6483
  %buf_read_count = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %4, i32 0, i32 6, !dbg !6484
  %5 = load i32, i32* %buf_read_count, align 4, !dbg !6484
  %sub = sub i32 %2, %5, !dbg !6485
  ret i32 %sub, !dbg !6486
}

; Function Attrs: noredzone
declare dso_local i32 @request_threaded_irq(i32, i32 (i32, i8*)*, i32 (i32, i8*)*, i64, i8*, i8*) #1

; Function Attrs: noredzone
declare dso_local void @mite_ack_linkc(%struct.mite_channel*, %struct.comedi_subdevice*, i1 zeroext) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i8*, i32) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone
declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ni_pcidio_pci_probe(%struct.pci_dev* %dev, %struct.pci_device_id* %id) #2 !dbg !6487 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %id.addr = alloca %struct.pci_device_id*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !6488, metadata !DIExpression()), !dbg !6489
  store %struct.pci_device_id* %id, %struct.pci_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_device_id** %id.addr, metadata !6490, metadata !DIExpression()), !dbg !6491
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !6492
  %1 = load %struct.pci_device_id*, %struct.pci_device_id** %id.addr, align 8, !dbg !6493
  %driver_data = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %1, i32 0, i32 6, !dbg !6494
  %2 = load i64, i64* %driver_data, align 8, !dbg !6494
  %call = call i32 @comedi_pci_auto_config(%struct.pci_dev* %0, %struct.comedi_driver* @ni_pcidio_driver, i64 %2) #9, !dbg !6495
  ret i32 %call, !dbg !6496
}

; Function Attrs: noredzone
declare dso_local void @comedi_pci_auto_unconfig(%struct.pci_dev*) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_pci_auto_config(%struct.pci_dev*, %struct.comedi_driver*, i64) #1

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { noredzone }
attributes #10 = { cold noredzone }
attributes #11 = { noredzone nounwind }
attributes #12 = { nounwind readnone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4383}
!llvm.module.flags = !{!4384, !4385, !4386, !4387}
!llvm.ident = !{!4388}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_firmware234", scope: !2, file: !3, line: 214, type: !4380, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !206, globals: !3089, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/staging/comedi/drivers/ni_pcidio.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !100, !105, !121, !128, !143, !184, !189, !195}
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
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "comedi_subdevice_type", file: !106, line: 221, baseType: !7, size: 32, elements: !107)
!106 = !DIFile(filename: "drivers/staging/comedi/drivers/../comedi.h", directory: "/home/lizy2001/genbc/linux")
!107 = !{!108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120}
!108 = !DIEnumerator(name: "COMEDI_SUBD_UNUSED", value: 0, isUnsigned: true)
!109 = !DIEnumerator(name: "COMEDI_SUBD_AI", value: 1, isUnsigned: true)
!110 = !DIEnumerator(name: "COMEDI_SUBD_AO", value: 2, isUnsigned: true)
!111 = !DIEnumerator(name: "COMEDI_SUBD_DI", value: 3, isUnsigned: true)
!112 = !DIEnumerator(name: "COMEDI_SUBD_DO", value: 4, isUnsigned: true)
!113 = !DIEnumerator(name: "COMEDI_SUBD_DIO", value: 5, isUnsigned: true)
!114 = !DIEnumerator(name: "COMEDI_SUBD_COUNTER", value: 6, isUnsigned: true)
!115 = !DIEnumerator(name: "COMEDI_SUBD_TIMER", value: 7, isUnsigned: true)
!116 = !DIEnumerator(name: "COMEDI_SUBD_MEMORY", value: 8, isUnsigned: true)
!117 = !DIEnumerator(name: "COMEDI_SUBD_CALIB", value: 9, isUnsigned: true)
!118 = !DIEnumerator(name: "COMEDI_SUBD_PROC", value: 10, isUnsigned: true)
!119 = !DIEnumerator(name: "COMEDI_SUBD_SERIAL", value: 11, isUnsigned: true)
!120 = !DIEnumerator(name: "COMEDI_SUBD_PWM", value: 12, isUnsigned: true)
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pci_6534_firmware_registers", file: !3, line: 218, baseType: !7, size: 32, elements: !122)
!122 = !{!123, !124, !125, !126, !127}
!123 = !DIEnumerator(name: "Firmware_Control_Register", value: 256, isUnsigned: true)
!124 = !DIEnumerator(name: "Firmware_Status_Register", value: 260, isUnsigned: true)
!125 = !DIEnumerator(name: "Firmware_Data_Register", value: 264, isUnsigned: true)
!126 = !DIEnumerator(name: "Firmware_Mask_Register", value: 268, isUnsigned: true)
!127 = !DIEnumerator(name: "Firmware_Debug_Register", value: 272, isUnsigned: true)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pci_6534_fpga_registers", file: !3, line: 227, baseType: !7, size: 32, elements: !129)
!129 = !{!130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142}
!130 = !DIEnumerator(name: "FPGA_Control1_Register", value: 512, isUnsigned: true)
!131 = !DIEnumerator(name: "FPGA_Control2_Register", value: 516, isUnsigned: true)
!132 = !DIEnumerator(name: "FPGA_Irq_Mask_Register", value: 520, isUnsigned: true)
!133 = !DIEnumerator(name: "FPGA_Status_Register", value: 524, isUnsigned: true)
!134 = !DIEnumerator(name: "FPGA_Signature_Register", value: 528, isUnsigned: true)
!135 = !DIEnumerator(name: "FPGA_SCALS_Counter_Register", value: 640, isUnsigned: true)
!136 = !DIEnumerator(name: "FPGA_SCAMS_Counter_Register", value: 644, isUnsigned: true)
!137 = !DIEnumerator(name: "FPGA_SCBLS_Counter_Register", value: 648, isUnsigned: true)
!138 = !DIEnumerator(name: "FPGA_SCBMS_Counter_Register", value: 652, isUnsigned: true)
!139 = !DIEnumerator(name: "FPGA_Temp_Control_Register", value: 672, isUnsigned: true)
!140 = !DIEnumerator(name: "FPGA_DAR_Register", value: 680, isUnsigned: true)
!141 = !DIEnumerator(name: "FPGA_ELC_Read_Register", value: 696, isUnsigned: true)
!142 = !DIEnumerator(name: "FPGA_ELC_Write_Register", value: 700, isUnsigned: true)
!143 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "configuration_ids", file: !106, line: 308, baseType: !7, size: 32, elements: !144)
!144 = !{!145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183}
!145 = !DIEnumerator(name: "INSN_CONFIG_DIO_INPUT", value: 0, isUnsigned: true)
!146 = !DIEnumerator(name: "INSN_CONFIG_DIO_OUTPUT", value: 1, isUnsigned: true)
!147 = !DIEnumerator(name: "INSN_CONFIG_DIO_OPENDRAIN", value: 2, isUnsigned: true)
!148 = !DIEnumerator(name: "INSN_CONFIG_ANALOG_TRIG", value: 16, isUnsigned: true)
!149 = !DIEnumerator(name: "INSN_CONFIG_ALT_SOURCE", value: 20, isUnsigned: true)
!150 = !DIEnumerator(name: "INSN_CONFIG_DIGITAL_TRIG", value: 21, isUnsigned: true)
!151 = !DIEnumerator(name: "INSN_CONFIG_BLOCK_SIZE", value: 22, isUnsigned: true)
!152 = !DIEnumerator(name: "INSN_CONFIG_TIMER_1", value: 23, isUnsigned: true)
!153 = !DIEnumerator(name: "INSN_CONFIG_FILTER", value: 24, isUnsigned: true)
!154 = !DIEnumerator(name: "INSN_CONFIG_CHANGE_NOTIFY", value: 25, isUnsigned: true)
!155 = !DIEnumerator(name: "INSN_CONFIG_SERIAL_CLOCK", value: 26, isUnsigned: true)
!156 = !DIEnumerator(name: "INSN_CONFIG_BIDIRECTIONAL_DATA", value: 27, isUnsigned: true)
!157 = !DIEnumerator(name: "INSN_CONFIG_DIO_QUERY", value: 28, isUnsigned: true)
!158 = !DIEnumerator(name: "INSN_CONFIG_PWM_OUTPUT", value: 29, isUnsigned: true)
!159 = !DIEnumerator(name: "INSN_CONFIG_GET_PWM_OUTPUT", value: 30, isUnsigned: true)
!160 = !DIEnumerator(name: "INSN_CONFIG_ARM", value: 31, isUnsigned: true)
!161 = !DIEnumerator(name: "INSN_CONFIG_DISARM", value: 32, isUnsigned: true)
!162 = !DIEnumerator(name: "INSN_CONFIG_GET_COUNTER_STATUS", value: 33, isUnsigned: true)
!163 = !DIEnumerator(name: "INSN_CONFIG_RESET", value: 34, isUnsigned: true)
!164 = !DIEnumerator(name: "INSN_CONFIG_GPCT_SINGLE_PULSE_GENERATOR", value: 1001, isUnsigned: true)
!165 = !DIEnumerator(name: "INSN_CONFIG_GPCT_PULSE_TRAIN_GENERATOR", value: 1002, isUnsigned: true)
!166 = !DIEnumerator(name: "INSN_CONFIG_GPCT_QUADRATURE_ENCODER", value: 1003, isUnsigned: true)
!167 = !DIEnumerator(name: "INSN_CONFIG_SET_GATE_SRC", value: 2001, isUnsigned: true)
!168 = !DIEnumerator(name: "INSN_CONFIG_GET_GATE_SRC", value: 2002, isUnsigned: true)
!169 = !DIEnumerator(name: "INSN_CONFIG_SET_CLOCK_SRC", value: 2003, isUnsigned: true)
!170 = !DIEnumerator(name: "INSN_CONFIG_GET_CLOCK_SRC", value: 2004, isUnsigned: true)
!171 = !DIEnumerator(name: "INSN_CONFIG_SET_OTHER_SRC", value: 2005, isUnsigned: true)
!172 = !DIEnumerator(name: "INSN_CONFIG_GET_HARDWARE_BUFFER_SIZE", value: 2006, isUnsigned: true)
!173 = !DIEnumerator(name: "INSN_CONFIG_SET_COUNTER_MODE", value: 4097, isUnsigned: true)
!174 = !DIEnumerator(name: "INSN_CONFIG_8254_SET_MODE", value: 4097, isUnsigned: true)
!175 = !DIEnumerator(name: "INSN_CONFIG_8254_READ_STATUS", value: 4098, isUnsigned: true)
!176 = !DIEnumerator(name: "INSN_CONFIG_SET_ROUTING", value: 4099, isUnsigned: true)
!177 = !DIEnumerator(name: "INSN_CONFIG_GET_ROUTING", value: 4109, isUnsigned: true)
!178 = !DIEnumerator(name: "INSN_CONFIG_PWM_SET_PERIOD", value: 5000, isUnsigned: true)
!179 = !DIEnumerator(name: "INSN_CONFIG_PWM_GET_PERIOD", value: 5001, isUnsigned: true)
!180 = !DIEnumerator(name: "INSN_CONFIG_GET_PWM_STATUS", value: 5002, isUnsigned: true)
!181 = !DIEnumerator(name: "INSN_CONFIG_PWM_SET_H_BRIDGE", value: 5003, isUnsigned: true)
!182 = !DIEnumerator(name: "INSN_CONFIG_PWM_GET_H_BRIDGE", value: 5004, isUnsigned: true)
!183 = !DIEnumerator(name: "INSN_CONFIG_GET_CMD_TIMING_CONSTRAINTS", value: 5005, isUnsigned: true)
!184 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "comedi_io_direction", file: !106, line: 249, baseType: !7, size: 32, elements: !185)
!185 = !{!186, !187, !188}
!186 = !DIEnumerator(name: "COMEDI_INPUT", value: 0, isUnsigned: true)
!187 = !DIEnumerator(name: "COMEDI_OUTPUT", value: 1, isUnsigned: true)
!188 = !DIEnumerator(name: "COMEDI_OPENDRAIN", value: 2, isUnsigned: true)
!189 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !190, line: 11, baseType: !7, size: 32, elements: !191)
!190 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!191 = !{!192, !193, !194}
!192 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!193 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!194 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!195 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "comedi_cb", file: !196, line: 383, baseType: !7, size: 32, elements: !197)
!196 = !DIFile(filename: "drivers/staging/comedi/drivers/../comedidev.h", directory: "/home/lizy2001/genbc/linux")
!197 = !{!198, !199, !200, !201, !202, !203, !204, !205}
!198 = !DIEnumerator(name: "COMEDI_CB_EOS", value: 1, isUnsigned: true)
!199 = !DIEnumerator(name: "COMEDI_CB_EOA", value: 2, isUnsigned: true)
!200 = !DIEnumerator(name: "COMEDI_CB_BLOCK", value: 4, isUnsigned: true)
!201 = !DIEnumerator(name: "COMEDI_CB_EOBUF", value: 8, isUnsigned: true)
!202 = !DIEnumerator(name: "COMEDI_CB_ERROR", value: 16, isUnsigned: true)
!203 = !DIEnumerator(name: "COMEDI_CB_OVERFLOW", value: 32, isUnsigned: true)
!204 = !DIEnumerator(name: "COMEDI_CB_ERROR_MASK", value: 48, isUnsigned: true)
!205 = !DIEnumerator(name: "COMEDI_CB_CANCEL_MASK", value: 50, isUnsigned: true)
!206 = !{!207, !208, !211, !222, !223, !233, !224, !216, !3085, !3087}
!207 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !210)
!210 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !213, line: 56, size: 128, elements: !214)
!213 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!214 = !{!215, !217}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !212, file: !213, line: 57, baseType: !216, size: 64)
!216 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !212, file: !213, line: 58, baseType: !218, size: 32, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !219, line: 21, baseType: !220)
!219 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !221, line: 27, baseType: !7)
!221 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !226, line: 640, size: 48640, elements: !227)
!226 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!227 = !{!228, !229, !232, !234, !245, !246, !247, !248, !249, !250, !251, !252, !256, !290, !301, !411, !412, !413, !424, !425, !427, !428, !2388, !2389, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2466, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2481, !2482, !2483, !2485, !2486, !2487, !2488, !2489, !2490, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2514, !2519, !2520, !2521, !2522, !2523, !2525, !2528, !2531, !2534, !2537, !2541, !2642, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2690, !2691, !2692, !2693, !2694, !2699, !2700, !2701, !2704, !2705, !2708, !2711, !2714, !2715, !2747, !2750, !2751, !2830, !2831, !2834, !2835, !2838, !2839, !2840, !2844, !2845, !2846, !2859, !2860, !2861, !2871, !2876, !2877, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !225, file: !226, line: 646, baseType: !212, size: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !225, file: !226, line: 649, baseType: !230, size: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !231)
!231 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !225, file: !226, line: 657, baseType: !233, size: 64, offset: 192)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !225, file: !226, line: 658, baseType: !235, size: 32, offset: 256)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !236, line: 113, baseType: !237)
!236 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !236, line: 111, size: 32, elements: !238)
!238 = !{!239}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !237, file: !236, line: 112, baseType: !240, size: 32)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !241, line: 168, baseType: !242)
!241 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !241, line: 166, size: 32, elements: !243)
!243 = !{!244}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !242, file: !241, line: 167, baseType: !207, size: 32)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !225, file: !226, line: 660, baseType: !7, size: 32, offset: 288)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !225, file: !226, line: 661, baseType: !7, size: 32, offset: 320)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !225, file: !226, line: 684, baseType: !207, size: 32, offset: 352)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !225, file: !226, line: 686, baseType: !207, size: 32, offset: 384)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !225, file: !226, line: 687, baseType: !207, size: 32, offset: 416)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !225, file: !226, line: 688, baseType: !207, size: 32, offset: 448)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !225, file: !226, line: 689, baseType: !7, size: 32, offset: 480)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !225, file: !226, line: 691, baseType: !253, size: 64, offset: 512)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !255)
!255 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !226, line: 691, flags: DIFlagFwdDecl)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !225, file: !226, line: 692, baseType: !257, size: 832, offset: 576)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !226, line: 451, size: 832, elements: !258)
!258 = !{!259, !264, !272, !278, !279, !283, !284, !285, !286, !287}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !257, file: !226, line: 453, baseType: !260, size: 128)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !226, line: 325, size: 128, elements: !261)
!261 = !{!262, !263}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !260, file: !226, line: 326, baseType: !216, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !260, file: !226, line: 327, baseType: !218, size: 32, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !257, file: !226, line: 454, baseType: !265, size: 192, align: 64, offset: 128)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !266, line: 24, size: 192, align: 64, elements: !267)
!266 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!267 = !{!268, !269, !271}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !265, file: !266, line: 25, baseType: !216, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !265, file: !266, line: 26, baseType: !270, size: 64, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !265, file: !266, line: 27, baseType: !270, size: 64, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !257, file: !226, line: 455, baseType: !273, size: 128, offset: 320)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !241, line: 178, size: 128, elements: !274)
!274 = !{!275, !277}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !273, file: !241, line: 179, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !273, file: !241, line: 179, baseType: !276, size: 64, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !257, file: !226, line: 456, baseType: !7, size: 32, offset: 448)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !257, file: !226, line: 458, baseType: !280, size: 64, offset: 512)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !219, line: 23, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !221, line: 31, baseType: !282)
!282 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !257, file: !226, line: 459, baseType: !280, size: 64, offset: 576)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !257, file: !226, line: 460, baseType: !280, size: 64, offset: 640)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !257, file: !226, line: 461, baseType: !280, size: 64, offset: 704)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !257, file: !226, line: 463, baseType: !280, size: 64, offset: 768)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !257, file: !226, line: 465, baseType: !288, offset: 832)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !226, line: 415, elements: !289)
!289 = !{}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !225, file: !226, line: 693, baseType: !291, size: 384, offset: 1408)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !226, line: 489, size: 384, elements: !292)
!292 = !{!293, !294, !295, !296, !297, !298, !299}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !291, file: !226, line: 490, baseType: !273, size: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !291, file: !226, line: 491, baseType: !216, size: 64, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !291, file: !226, line: 492, baseType: !216, size: 64, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !291, file: !226, line: 493, baseType: !7, size: 32, offset: 256)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !291, file: !226, line: 494, baseType: !210, size: 16, offset: 288)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !291, file: !226, line: 495, baseType: !210, size: 16, offset: 304)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !291, file: !226, line: 497, baseType: !300, size: 64, offset: 320)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !225, file: !226, line: 697, baseType: !302, size: 1792, offset: 1792)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !226, line: 507, size: 1792, elements: !303)
!303 = !{!304, !305, !306, !307, !308, !309, !310, !314, !315, !316, !317, !318, !319, !320, !408, !409}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !302, file: !226, line: 508, baseType: !265, size: 192, align: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !302, file: !226, line: 515, baseType: !280, size: 64, offset: 192)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !302, file: !226, line: 516, baseType: !280, size: 64, offset: 256)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !302, file: !226, line: 517, baseType: !280, size: 64, offset: 320)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !302, file: !226, line: 518, baseType: !280, size: 64, offset: 384)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !302, file: !226, line: 519, baseType: !280, size: 64, offset: 448)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !302, file: !226, line: 526, baseType: !311, size: 64, offset: 512)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !219, line: 22, baseType: !312)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !221, line: 30, baseType: !313)
!313 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !302, file: !226, line: 527, baseType: !280, size: 64, offset: 576)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !302, file: !226, line: 528, baseType: !7, size: 32, offset: 640)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !302, file: !226, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !302, file: !226, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !302, file: !226, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !302, file: !226, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !302, file: !226, line: 563, baseType: !321, size: 512, offset: 704)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !322)
!322 = !{!323, !331, !332, !337, !401, !405, !406, !407}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !321, file: !20, line: 119, baseType: !324, size: 256)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !325, line: 9, size: 256, elements: !326)
!325 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!326 = !{!327, !328}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !324, file: !325, line: 10, baseType: !265, size: 192, align: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !324, file: !325, line: 11, baseType: !329, size: 64, offset: 192)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !330, line: 29, baseType: !311)
!330 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!331 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !321, file: !20, line: 120, baseType: !329, size: 64, offset: 256)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !321, file: !20, line: 121, baseType: !333, size: 64, offset: 320)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{!19, !336}
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !321, file: !20, line: 122, baseType: !338, size: 64, offset: 384)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !340)
!340 = !{!341, !369, !370, !374, !384, !385, !396, !400}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !339, file: !20, line: 160, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !344)
!344 = !{!345, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !343, file: !20, line: 215, baseType: !346)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !347, line: 29, baseType: !348)
!347 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !347, line: 20, elements: !349)
!349 = !{!350}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !348, file: !347, line: 21, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !352, line: 25, baseType: !353)
!352 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !352, line: 25, elements: !289)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !343, file: !20, line: 216, baseType: !7, size: 32)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !343, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !343, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !343, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !343, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !343, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !343, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !343, file: !20, line: 233, baseType: !329, size: 64, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !343, file: !20, line: 234, baseType: !336, size: 64, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !343, file: !20, line: 235, baseType: !329, size: 64, offset: 256)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !343, file: !20, line: 236, baseType: !336, size: 64, offset: 320)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !343, file: !20, line: 237, baseType: !366, size: 4096, offset: 512)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 4096, elements: !367)
!367 = !{!368}
!368 = !DISubrange(count: 8)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !339, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !339, file: !20, line: 162, baseType: !371, size: 32, offset: 96)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !241, line: 27, baseType: !372)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !373, line: 96, baseType: !207)
!373 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!374 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !339, file: !20, line: 163, baseType: !375, size: 32, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !376, line: 276, baseType: !377)
!376 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !376, line: 276, size: 32, elements: !378)
!378 = !{!379}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !377, file: !376, line: 276, baseType: !380, size: 32)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !376, line: 70, baseType: !381)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !376, line: 65, size: 32, elements: !382)
!382 = !{!383}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !381, file: !376, line: 66, baseType: !7, size: 32)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !339, file: !20, line: 164, baseType: !336, size: 64, offset: 192)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !339, file: !20, line: 165, baseType: !386, size: 128, offset: 256)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !325, line: 14, size: 128, elements: !387)
!387 = !{!388}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !386, file: !325, line: 15, baseType: !389, size: 128)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !266, line: 125, size: 128, elements: !390)
!390 = !{!391, !395}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !389, file: !266, line: 126, baseType: !392, size: 64)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !266, line: 31, size: 64, elements: !393)
!393 = !{!394}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !392, file: !266, line: 32, baseType: !270, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !389, file: !266, line: 127, baseType: !270, size: 64, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !339, file: !20, line: 166, baseType: !397, size: 64, offset: 384)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DISubroutineType(types: !399)
!399 = !{!329}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !339, file: !20, line: 167, baseType: !329, size: 64, offset: 448)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !321, file: !20, line: 123, baseType: !402, size: 8, offset: 448)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !219, line: 17, baseType: !403)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !221, line: 21, baseType: !404)
!404 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !321, file: !20, line: 124, baseType: !402, size: 8, offset: 456)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !321, file: !20, line: 125, baseType: !402, size: 8, offset: 464)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !321, file: !20, line: 126, baseType: !402, size: 8, offset: 472)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !302, file: !226, line: 572, baseType: !321, size: 512, offset: 1216)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !302, file: !226, line: 580, baseType: !410, size: 64, offset: 1728)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !225, file: !226, line: 721, baseType: !7, size: 32, offset: 3584)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !225, file: !226, line: 722, baseType: !207, size: 32, offset: 3616)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !225, file: !226, line: 723, baseType: !414, size: 64, offset: 3648)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !416)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !417, line: 17, baseType: !418)
!417 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !417, line: 17, size: 64, elements: !419)
!419 = !{!420}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !418, file: !417, line: 17, baseType: !421, size: 64)
!421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 64, elements: !422)
!422 = !{!423}
!423 = !DISubrange(count: 1)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !225, file: !226, line: 724, baseType: !416, size: 64, offset: 3712)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !225, file: !226, line: 749, baseType: !426, offset: 3776)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !226, line: 290, elements: !289)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !225, file: !226, line: 751, baseType: !273, size: 128, offset: 3776)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !225, file: !226, line: 757, baseType: !429, size: 64, offset: 3904)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !431, line: 388, size: 7296, elements: !432)
!431 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!432 = !{!433, !2384}
!433 = !DIDerivedType(tag: DW_TAG_member, scope: !430, file: !431, line: 389, baseType: !434, size: 7296)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !430, file: !431, line: 389, size: 7296, elements: !435)
!435 = !{!436, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2307, !2313, !2316, !2355, !2356, !2368, !2369, !2372, !2373, !2374, !2377, !2378, !2379, !2382, !2383}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !434, file: !431, line: 390, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !431, line: 305, size: 1472, elements: !439)
!439 = !{!440, !441, !442, !443, !444, !445, !446, !447, !455, !456, !461, !462, !465, !2253, !2254, !2255, !2256, !2257}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !438, file: !431, line: 308, baseType: !216, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !438, file: !431, line: 309, baseType: !216, size: 64, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !438, file: !431, line: 313, baseType: !437, size: 64, offset: 128)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !438, file: !431, line: 313, baseType: !437, size: 64, offset: 192)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !438, file: !431, line: 315, baseType: !265, size: 192, align: 64, offset: 256)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !438, file: !431, line: 323, baseType: !216, size: 64, offset: 448)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !438, file: !431, line: 327, baseType: !429, size: 64, offset: 512)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !438, file: !431, line: 333, baseType: !448, size: 64, offset: 576)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !449, line: 284, baseType: !450)
!449 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !449, line: 284, size: 64, elements: !451)
!451 = !{!452}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !450, file: !449, line: 284, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !454, line: 19, baseType: !216)
!454 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!455 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !438, file: !431, line: 334, baseType: !216, size: 64, offset: 640)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !438, file: !431, line: 343, baseType: !457, size: 256, offset: 704)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !438, file: !431, line: 340, size: 256, elements: !458)
!458 = !{!459, !460}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !457, file: !431, line: 341, baseType: !265, size: 192, align: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !457, file: !431, line: 342, baseType: !216, size: 64, offset: 192)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !438, file: !431, line: 351, baseType: !273, size: 128, offset: 960)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !438, file: !431, line: 353, baseType: !463, size: 64, offset: 1088)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !431, line: 353, flags: DIFlagFwdDecl)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !438, file: !431, line: 356, baseType: !466, size: 64, offset: 1152)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !468)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !469)
!469 = !{!470, !474, !475, !479, !483, !2227, !2231, !2235, !2239, !2240, !2241, !2245, !2249}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !468, file: !14, line: 558, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{null, !437}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !468, file: !14, line: 559, baseType: !471, size: 64, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !468, file: !14, line: 560, baseType: !476, size: 64, offset: 128)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!207, !437, !216}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !468, file: !14, line: 561, baseType: !480, size: 64, offset: 192)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!207, !437}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !468, file: !14, line: 562, baseType: !484, size: 64, offset: 256)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{!487, !488}
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !431, line: 682, baseType: !7)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !490)
!490 = !{!491, !492, !493, !495, !496, !497, !504, !511, !517, !2221, !2222, !2224, !2226}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !489, file: !14, line: 509, baseType: !437, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !489, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !489, file: !14, line: 511, baseType: !494, size: 32, offset: 96)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !241, line: 148, baseType: !7)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !489, file: !14, line: 512, baseType: !216, size: 64, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !489, file: !14, line: 513, baseType: !216, size: 64, offset: 192)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !489, file: !14, line: 514, baseType: !498, size: 64, offset: 256)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !449, line: 385, baseType: !500)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !449, line: 385, size: 64, elements: !501)
!501 = !{!502}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !500, file: !449, line: 385, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !454, line: 15, baseType: !216)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !489, file: !14, line: 516, baseType: !505, size: 64, offset: 320)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !449, line: 359, baseType: !507)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !449, line: 359, size: 64, elements: !508)
!508 = !{!509}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !507, file: !449, line: 359, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !454, line: 16, baseType: !216)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !489, file: !14, line: 519, baseType: !512, size: 64, offset: 384)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !454, line: 21, baseType: !513)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !454, line: 21, size: 64, elements: !514)
!514 = !{!515}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !513, file: !454, line: 21, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !454, line: 14, baseType: !216)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !489, file: !14, line: 521, baseType: !518, size: 64, offset: 448)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !431, line: 68, size: 512, align: 128, elements: !520)
!520 = !{!521, !522, !2213, !2220}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !519, file: !431, line: 69, baseType: !216, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, scope: !519, file: !431, line: 77, baseType: !523, size: 320, offset: 64)
!523 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !519, file: !431, line: 77, size: 320, elements: !524)
!524 = !{!525, !2074, !2079, !2107, !2115, !2121, !2134, !2212}
!525 = !DIDerivedType(tag: DW_TAG_member, scope: !523, file: !431, line: 78, baseType: !526, size: 320)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !523, file: !431, line: 78, size: 320, elements: !527)
!527 = !{!528, !529, !2072, !2073}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !526, file: !431, line: 84, baseType: !273, size: 128)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !526, file: !431, line: 86, baseType: !530, size: 64, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !532)
!532 = !{!533, !1959, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !2067, !2068, !2069, !2070, !2071}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !531, file: !44, line: 452, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !536)
!536 = !{!537, !539, !540, !548, !555, !556, !1891, !1892, !1893, !1894, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1935, !1943, !1944, !1945, !1955, !1956, !1957, !1958}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !535, file: !44, line: 611, baseType: !538, size: 16)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !241, line: 19, baseType: !210)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !535, file: !44, line: 612, baseType: !210, size: 16, offset: 16)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !535, file: !44, line: 613, baseType: !541, size: 32, offset: 32)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !542, line: 23, baseType: !543)
!542 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !542, line: 21, size: 32, elements: !544)
!544 = !{!545}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !543, file: !542, line: 22, baseType: !546, size: 32)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !241, line: 32, baseType: !547)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !373, line: 49, baseType: !7)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !535, file: !44, line: 614, baseType: !549, size: 32, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !542, line: 28, baseType: !550)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !542, line: 26, size: 32, elements: !551)
!551 = !{!552}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !550, file: !542, line: 27, baseType: !553, size: 32)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !241, line: 33, baseType: !554)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !373, line: 50, baseType: !7)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !535, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !535, file: !44, line: 622, baseType: !557, size: 64, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !559)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !560)
!560 = !{!561, !1249, !1262, !1266, !1272, !1276, !1280, !1284, !1288, !1292, !1296, !1297, !1301, !1305, !1841, !1867, !1871, !1877, !1882, !1886, !1887}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !559, file: !44, line: 1865, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!565, !534, !565, !7}
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !567, line: 89, size: 1536, elements: !568)
!567 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!568 = !{!569, !570, !575, !583, !584, !599, !600, !604, !623, !697, !1233, !1234, !1235, !1241, !1242, !1243}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !566, file: !567, line: 91, baseType: !7, size: 32)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !566, file: !567, line: 92, baseType: !571, size: 32, offset: 32)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !376, line: 277, baseType: !572)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !376, line: 277, size: 32, elements: !573)
!573 = !{!574}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !572, file: !376, line: 277, baseType: !380, size: 32)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !566, file: !567, line: 93, baseType: !576, size: 128, offset: 64)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !577, line: 38, size: 128, elements: !578)
!577 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!578 = !{!579, !581}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !576, file: !577, line: 39, baseType: !580, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !576, file: !577, line: 39, baseType: !582, size: 64, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !566, file: !567, line: 94, baseType: !565, size: 64, offset: 192)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !566, file: !567, line: 95, baseType: !585, size: 128, offset: 256)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !567, line: 47, size: 128, elements: !586)
!586 = !{!587, !596}
!587 = !DIDerivedType(tag: DW_TAG_member, scope: !585, file: !567, line: 48, baseType: !588, size: 64)
!588 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !585, file: !567, line: 48, size: 64, elements: !589)
!589 = !{!590, !595}
!590 = !DIDerivedType(tag: DW_TAG_member, scope: !588, file: !567, line: 49, baseType: !591, size: 64)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !588, file: !567, line: 49, size: 64, elements: !592)
!592 = !{!593, !594}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !591, file: !567, line: 50, baseType: !218, size: 32)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !591, file: !567, line: 50, baseType: !218, size: 32, offset: 32)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !588, file: !567, line: 52, baseType: !280, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !585, file: !567, line: 54, baseType: !597, size: 64, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !404)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !566, file: !567, line: 96, baseType: !534, size: 64, offset: 384)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !566, file: !567, line: 98, baseType: !601, size: 256, offset: 448)
!601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 256, elements: !602)
!602 = !{!603}
!603 = !DISubrange(count: 32)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !566, file: !567, line: 101, baseType: !605, size: 32, offset: 704)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !606, line: 25, size: 32, elements: !607)
!606 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!607 = !{!608}
!608 = !DIDerivedType(tag: DW_TAG_member, scope: !605, file: !606, line: 26, baseType: !609, size: 32)
!609 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !605, file: !606, line: 26, size: 32, elements: !610)
!610 = !{!611}
!611 = !DIDerivedType(tag: DW_TAG_member, scope: !609, file: !606, line: 30, baseType: !612, size: 32)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !609, file: !606, line: 30, size: 32, elements: !613)
!613 = !{!614, !622}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !612, file: !606, line: 31, baseType: !615)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !347, line: 83, baseType: !616)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !347, line: 71, elements: !617)
!617 = !{!618}
!618 = !DIDerivedType(tag: DW_TAG_member, scope: !616, file: !347, line: 72, baseType: !619)
!619 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !616, file: !347, line: 72, elements: !620)
!620 = !{!621}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !619, file: !347, line: 73, baseType: !348)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !612, file: !606, line: 32, baseType: !207, size: 32)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !566, file: !567, line: 102, baseType: !624, size: 64, offset: 768)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !626)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !567, line: 135, size: 1024, align: 512, elements: !627)
!627 = !{!628, !632, !633, !640, !649, !653, !657, !661, !662, !666, !671, !683, !691}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !626, file: !567, line: 136, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{!207, !565, !7}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !626, file: !567, line: 137, baseType: !629, size: 64, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !626, file: !567, line: 138, baseType: !634, size: 64, offset: 128)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!207, !637, !639}
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !566)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !626, file: !567, line: 139, baseType: !641, size: 64, offset: 192)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{!207, !637, !7, !644, !647}
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !646)
!646 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !585)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !626, file: !567, line: 141, baseType: !650, size: 64, offset: 256)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{!207, !637}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !626, file: !567, line: 142, baseType: !654, size: 64, offset: 320)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!207, !565}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !626, file: !567, line: 143, baseType: !658, size: 64, offset: 384)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{null, !565}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !626, file: !567, line: 144, baseType: !658, size: 64, offset: 448)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !626, file: !567, line: 145, baseType: !663, size: 64, offset: 512)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{null, !565, !534}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !626, file: !567, line: 146, baseType: !667, size: 64, offset: 576)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{!670, !565, !670, !207}
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !626, file: !567, line: 147, baseType: !672, size: 64, offset: 640)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{!675, !677}
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !567, line: 18, flags: DIFlagFwdDecl)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !679, line: 8, size: 128, elements: !680)
!679 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!680 = !{!681, !682}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !678, file: !679, line: 9, baseType: !675, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !678, file: !679, line: 10, baseType: !565, size: 64, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !626, file: !567, line: 148, baseType: !684, size: 64, offset: 704)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DISubroutineType(types: !686)
!686 = !{!207, !687, !689}
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !678)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !241, line: 30, baseType: !690)
!690 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !626, file: !567, line: 149, baseType: !692, size: 64, offset: 768)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DISubroutineType(types: !694)
!694 = !{!565, !565, !695}
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !535)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !566, file: !567, line: 103, baseType: !698, size: 64, offset: 832)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !700)
!700 = !{!701, !702, !705, !706, !707, !710, !762, !844, !940, !1023, !1027, !1028, !1029, !1030, !1031, !1039, !1040, !1041, !1046, !1050, !1051, !1054, !1057, !1060, !1061, !1062, !1103, !1144, !1145, !1146, !1147, !1148, !1149, !1152, !1154, !1163, !1164, !1166, !1167, !1168, !1169, !1170, !1185, !1186, !1187, !1188, !1191, !1195, !1196, !1199, !1214, !1215, !1216, !1227, !1228, !1229, !1230, !1231, !1232}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !699, file: !44, line: 1417, baseType: !273, size: 128)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !699, file: !44, line: 1418, baseType: !703, size: 32, offset: 128)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !241, line: 16, baseType: !704)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !241, line: 13, baseType: !218)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !699, file: !44, line: 1419, baseType: !404, size: 8, offset: 160)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !699, file: !44, line: 1420, baseType: !216, size: 64, offset: 192)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !699, file: !44, line: 1421, baseType: !708, size: 64, offset: 256)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !241, line: 46, baseType: !709)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !373, line: 88, baseType: !313)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !699, file: !44, line: 1422, baseType: !711, size: 64, offset: 320)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !713)
!713 = !{!714, !715, !716, !723, !727, !731, !735, !739, !740, !750, !753, !754, !755, !759, !760, !761}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !712, file: !44, line: 2229, baseType: !644, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !712, file: !44, line: 2230, baseType: !207, size: 32, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !712, file: !44, line: 2238, baseType: !717, size: 64, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DISubroutineType(types: !719)
!719 = !{!207, !720}
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !722, line: 28, flags: DIFlagFwdDecl)
!722 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!723 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !712, file: !44, line: 2239, baseType: !724, size: 64, offset: 192)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !726)
!726 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !712, file: !44, line: 2240, baseType: !728, size: 64, offset: 256)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DISubroutineType(types: !730)
!730 = !{!565, !711, !207, !644, !233}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !712, file: !44, line: 2242, baseType: !732, size: 64, offset: 320)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{null, !698}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !712, file: !44, line: 2243, baseType: !736, size: 64, offset: 384)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !738, line: 76, flags: DIFlagFwdDecl)
!738 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!739 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !712, file: !44, line: 2244, baseType: !711, size: 64, offset: 448)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !712, file: !44, line: 2245, baseType: !741, size: 64, offset: 512)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !241, line: 182, size: 64, elements: !742)
!742 = !{!743}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !741, file: !241, line: 183, baseType: !744, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !241, line: 186, size: 128, elements: !746)
!746 = !{!747, !748}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !745, file: !241, line: 187, baseType: !744, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !745, file: !241, line: 187, baseType: !749, size: 64, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !712, file: !44, line: 2247, baseType: !751, offset: 576)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !752, line: 187, elements: !289)
!752 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!753 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !712, file: !44, line: 2248, baseType: !751, offset: 576)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !712, file: !44, line: 2249, baseType: !751, offset: 576)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !712, file: !44, line: 2250, baseType: !756, offset: 576)
!756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !751, elements: !757)
!757 = !{!758}
!758 = !DISubrange(count: 3)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !712, file: !44, line: 2252, baseType: !751, offset: 576)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !712, file: !44, line: 2253, baseType: !751, offset: 576)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !712, file: !44, line: 2254, baseType: !751, offset: 576)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !699, file: !44, line: 1423, baseType: !763, size: 64, offset: 384)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !765)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !766)
!766 = !{!767, !771, !775, !776, !780, !786, !790, !791, !792, !796, !800, !801, !802, !803, !809, !814, !815, !821, !822, !823, !824, !828, !843}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !765, file: !44, line: 1936, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{!534, !698}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !765, file: !44, line: 1937, baseType: !772, size: 64, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{null, !534}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !765, file: !44, line: 1938, baseType: !772, size: 64, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !765, file: !44, line: 1940, baseType: !777, size: 64, offset: 192)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DISubroutineType(types: !779)
!779 = !{null, !534, !207}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !765, file: !44, line: 1941, baseType: !781, size: 64, offset: 256)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DISubroutineType(types: !783)
!783 = !{!207, !534, !784}
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !765, file: !44, line: 1942, baseType: !787, size: 64, offset: 320)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{!207, !534}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !765, file: !44, line: 1943, baseType: !772, size: 64, offset: 384)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !765, file: !44, line: 1944, baseType: !732, size: 64, offset: 448)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !765, file: !44, line: 1945, baseType: !793, size: 64, offset: 512)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DISubroutineType(types: !795)
!795 = !{!207, !698, !207}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !765, file: !44, line: 1946, baseType: !797, size: 64, offset: 576)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{!207, !698}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !765, file: !44, line: 1947, baseType: !797, size: 64, offset: 640)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !765, file: !44, line: 1948, baseType: !797, size: 64, offset: 704)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !765, file: !44, line: 1949, baseType: !797, size: 64, offset: 768)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !765, file: !44, line: 1950, baseType: !804, size: 64, offset: 832)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DISubroutineType(types: !806)
!806 = !{!207, !565, !807}
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !765, file: !44, line: 1951, baseType: !810, size: 64, offset: 896)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DISubroutineType(types: !812)
!812 = !{!207, !698, !813, !670}
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !765, file: !44, line: 1952, baseType: !732, size: 64, offset: 960)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !765, file: !44, line: 1954, baseType: !816, size: 64, offset: 1024)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{!207, !819, !565}
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !449, line: 539, flags: DIFlagFwdDecl)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !765, file: !44, line: 1955, baseType: !816, size: 64, offset: 1088)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !765, file: !44, line: 1956, baseType: !816, size: 64, offset: 1152)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !765, file: !44, line: 1957, baseType: !816, size: 64, offset: 1216)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !765, file: !44, line: 1963, baseType: !825, size: 64, offset: 1280)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{!207, !698, !518, !494}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !765, file: !44, line: 1964, baseType: !829, size: 64, offset: 1344)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!231, !698, !832}
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !834, line: 12, size: 256, elements: !835)
!834 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!835 = !{!836, !837, !838, !839, !840}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !833, file: !834, line: 13, baseType: !494, size: 32)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !833, file: !834, line: 16, baseType: !207, size: 32, offset: 32)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !833, file: !834, line: 23, baseType: !216, size: 64, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !833, file: !834, line: 30, baseType: !216, size: 64, offset: 128)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !833, file: !834, line: 33, baseType: !841, size: 64, offset: 192)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !431, line: 27, flags: DIFlagFwdDecl)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !765, file: !44, line: 1966, baseType: !829, size: 64, offset: 1408)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !699, file: !44, line: 1424, baseType: !845, size: 64, offset: 448)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !847)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !848)
!848 = !{!849, !909, !913, !917, !918, !919, !920, !921, !926, !931, !935}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !847, file: !38, line: 323, baseType: !850, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{!207, !853}
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !855)
!855 = !{!856, !857, !858, !859, !860, !873, !874, !875, !876, !892, !893, !894}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !854, file: !38, line: 295, baseType: !745, size: 128)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !854, file: !38, line: 296, baseType: !273, size: 128, offset: 128)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !854, file: !38, line: 297, baseType: !273, size: 128, offset: 256)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !854, file: !38, line: 298, baseType: !273, size: 128, offset: 384)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !854, file: !38, line: 299, baseType: !861, size: 192, offset: 512)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !862, line: 53, size: 192, elements: !863)
!862 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!863 = !{!864, !871, !872}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !861, file: !862, line: 54, baseType: !865, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !866, line: 13, baseType: !867)
!866 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !241, line: 175, baseType: !868)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !241, line: 173, size: 64, elements: !869)
!869 = !{!870}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !868, file: !241, line: 174, baseType: !311, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !861, file: !862, line: 55, baseType: !615, offset: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !861, file: !862, line: 59, baseType: !273, size: 128, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !854, file: !38, line: 300, baseType: !615, offset: 704)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !854, file: !38, line: 301, baseType: !240, size: 32, offset: 704)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !854, file: !38, line: 302, baseType: !698, size: 64, offset: 768)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !854, file: !38, line: 303, baseType: !877, size: 64, offset: 832)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !878)
!878 = !{!879, !891}
!879 = !DIDerivedType(tag: DW_TAG_member, scope: !877, file: !38, line: 69, baseType: !880, size: 32)
!880 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !877, file: !38, line: 69, size: 32, elements: !881)
!881 = !{!882, !883, !884}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !880, file: !38, line: 70, baseType: !541, size: 32)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !880, file: !38, line: 71, baseType: !549, size: 32)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !880, file: !38, line: 72, baseType: !885, size: 32)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !886, line: 24, baseType: !887)
!886 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !886, line: 22, size: 32, elements: !888)
!888 = !{!889}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !887, file: !886, line: 23, baseType: !890, size: 32)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !886, line: 20, baseType: !547)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !877, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !854, file: !38, line: 304, baseType: !708, size: 64, offset: 896)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !854, file: !38, line: 305, baseType: !216, size: 64, offset: 960)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !854, file: !38, line: 306, baseType: !895, size: 576, offset: 1024)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !896)
!896 = !{!897, !899, !900, !901, !902, !903, !904, !905, !908}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !895, file: !38, line: 206, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !313)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !895, file: !38, line: 207, baseType: !898, size: 64, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !895, file: !38, line: 208, baseType: !898, size: 64, offset: 128)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !895, file: !38, line: 209, baseType: !898, size: 64, offset: 192)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !895, file: !38, line: 210, baseType: !898, size: 64, offset: 256)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !895, file: !38, line: 211, baseType: !898, size: 64, offset: 320)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !895, file: !38, line: 212, baseType: !898, size: 64, offset: 384)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !895, file: !38, line: 213, baseType: !906, size: 64, offset: 448)
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !907, line: 8, baseType: !312)
!907 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!908 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !895, file: !38, line: 214, baseType: !906, size: 64, offset: 512)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !847, file: !38, line: 324, baseType: !910, size: 64, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DISubroutineType(types: !912)
!912 = !{!853, !698, !207}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !847, file: !38, line: 325, baseType: !914, size: 64, offset: 128)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DISubroutineType(types: !916)
!916 = !{null, !853}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !847, file: !38, line: 326, baseType: !850, size: 64, offset: 192)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !847, file: !38, line: 327, baseType: !850, size: 64, offset: 256)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !847, file: !38, line: 328, baseType: !850, size: 64, offset: 320)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !847, file: !38, line: 329, baseType: !793, size: 64, offset: 384)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !847, file: !38, line: 332, baseType: !922, size: 64, offset: 448)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DISubroutineType(types: !924)
!924 = !{!925, !534}
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !847, file: !38, line: 333, baseType: !927, size: 64, offset: 512)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DISubroutineType(types: !929)
!929 = !{!207, !534, !930}
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !847, file: !38, line: 335, baseType: !932, size: 64, offset: 576)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{!207, !534, !925}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !847, file: !38, line: 337, baseType: !936, size: 64, offset: 640)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DISubroutineType(types: !938)
!938 = !{!207, !698, !939}
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !699, file: !44, line: 1425, baseType: !941, size: 64, offset: 512)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !943)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !944)
!944 = !{!945, !949, !950, !954, !955, !956, !971, !994, !998, !999, !1022}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !943, file: !38, line: 429, baseType: !946, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DISubroutineType(types: !948)
!948 = !{!207, !698, !207, !207, !687}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !943, file: !38, line: 430, baseType: !793, size: 64, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !943, file: !38, line: 431, baseType: !951, size: 64, offset: 128)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DISubroutineType(types: !953)
!953 = !{!207, !698, !7}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !943, file: !38, line: 432, baseType: !951, size: 64, offset: 192)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !943, file: !38, line: 433, baseType: !793, size: 64, offset: 256)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !943, file: !38, line: 434, baseType: !957, size: 64, offset: 320)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DISubroutineType(types: !959)
!959 = !{!207, !698, !207, !960}
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !962)
!962 = !{!963, !964, !965, !966, !967, !968, !969, !970}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !961, file: !38, line: 416, baseType: !207, size: 32)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !961, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !961, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !961, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !961, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !961, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !961, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !961, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !943, file: !38, line: 435, baseType: !972, size: 64, offset: 384)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DISubroutineType(types: !974)
!974 = !{!207, !698, !877, !975}
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !977)
!977 = !{!978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !976, file: !38, line: 344, baseType: !207, size: 32)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !976, file: !38, line: 345, baseType: !280, size: 64, offset: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !976, file: !38, line: 346, baseType: !280, size: 64, offset: 128)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !976, file: !38, line: 347, baseType: !280, size: 64, offset: 192)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !976, file: !38, line: 348, baseType: !280, size: 64, offset: 256)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !976, file: !38, line: 349, baseType: !280, size: 64, offset: 320)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !976, file: !38, line: 350, baseType: !280, size: 64, offset: 384)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !976, file: !38, line: 351, baseType: !311, size: 64, offset: 448)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !976, file: !38, line: 353, baseType: !311, size: 64, offset: 512)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !976, file: !38, line: 354, baseType: !207, size: 32, offset: 576)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !976, file: !38, line: 355, baseType: !207, size: 32, offset: 608)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !976, file: !38, line: 356, baseType: !280, size: 64, offset: 640)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !976, file: !38, line: 357, baseType: !280, size: 64, offset: 704)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !976, file: !38, line: 358, baseType: !280, size: 64, offset: 768)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !976, file: !38, line: 359, baseType: !311, size: 64, offset: 832)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !976, file: !38, line: 360, baseType: !207, size: 32, offset: 896)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !943, file: !38, line: 436, baseType: !995, size: 64, offset: 448)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DISubroutineType(types: !997)
!997 = !{!207, !698, !939, !975}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !943, file: !38, line: 438, baseType: !972, size: 64, offset: 512)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !943, file: !38, line: 439, baseType: !1000, size: 64, offset: 576)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!207, !698, !1003}
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !1005)
!1005 = !{!1006, !1007}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1004, file: !38, line: 410, baseType: !7, size: 32)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1004, file: !38, line: 411, baseType: !1008, size: 1344, offset: 64)
!1008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1009, size: 1344, elements: !757)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !1010)
!1010 = !{!1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1021}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1009, file: !38, line: 396, baseType: !7, size: 32)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1009, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1009, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1009, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1009, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1009, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1009, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1009, file: !38, line: 404, baseType: !282, size: 64, offset: 256)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1009, file: !38, line: 405, baseType: !1020, size: 64, offset: 320)
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !241, line: 126, baseType: !280)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1009, file: !38, line: 406, baseType: !1020, size: 64, offset: 384)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !943, file: !38, line: 440, baseType: !951, size: 64, offset: 640)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !699, file: !44, line: 1426, baseType: !1024, size: 64, offset: 576)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1026)
!1026 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !699, file: !44, line: 1427, baseType: !216, size: 64, offset: 640)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !699, file: !44, line: 1428, baseType: !216, size: 64, offset: 704)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !699, file: !44, line: 1429, baseType: !216, size: 64, offset: 768)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !699, file: !44, line: 1430, baseType: !565, size: 64, offset: 832)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !699, file: !44, line: 1431, baseType: !1032, size: 256, offset: 896)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1033, line: 35, size: 256, elements: !1034)
!1033 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1034 = !{!1035, !1036, !1037, !1038}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1032, file: !1033, line: 36, baseType: !865, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1032, file: !1033, line: 42, baseType: !865, size: 64, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1032, file: !1033, line: 46, baseType: !346, offset: 128)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1032, file: !1033, line: 47, baseType: !273, size: 128, offset: 128)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !699, file: !44, line: 1432, baseType: !207, size: 32, offset: 1152)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !699, file: !44, line: 1433, baseType: !240, size: 32, offset: 1184)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !699, file: !44, line: 1437, baseType: !1042, size: 64, offset: 1216)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1045)
!1045 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !699, file: !44, line: 1449, baseType: !1047, size: 64, offset: 1280)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !577, line: 34, size: 64, elements: !1048)
!1048 = !{!1049}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1047, file: !577, line: 35, baseType: !580, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !699, file: !44, line: 1450, baseType: !273, size: 128, offset: 1344)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !699, file: !44, line: 1451, baseType: !1052, size: 64, offset: 1472)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !699, file: !44, line: 1452, baseType: !1055, size: 64, offset: 1536)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !226, line: 40, flags: DIFlagFwdDecl)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !699, file: !44, line: 1453, baseType: !1058, size: 64, offset: 1600)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !699, file: !44, line: 1454, baseType: !745, size: 128, offset: 1664)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !699, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !699, file: !44, line: 1456, baseType: !1063, size: 2432, offset: 1856)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !1064)
!1064 = !{!1065, !1066, !1067, !1069, !1101}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1063, file: !38, line: 519, baseType: !7, size: 32)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1063, file: !38, line: 520, baseType: !1032, size: 256, offset: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1063, file: !38, line: 521, baseType: !1068, size: 192, offset: 320)
!1068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !534, size: 192, elements: !757)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1063, file: !38, line: 522, baseType: !1070, size: 1728, offset: 512)
!1070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1071, size: 1728, elements: !757)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !1072)
!1072 = !{!1073, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1071, file: !38, line: 223, baseType: !1074, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !1076)
!1076 = !{!1077, !1078, !1091, !1092}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1075, file: !38, line: 444, baseType: !207, size: 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1075, file: !38, line: 445, baseType: !1079, size: 64, offset: 64)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1081)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !1082)
!1082 = !{!1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1081, file: !38, line: 311, baseType: !793, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1081, file: !38, line: 312, baseType: !793, size: 64, offset: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1081, file: !38, line: 313, baseType: !793, size: 64, offset: 128)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1081, file: !38, line: 314, baseType: !793, size: 64, offset: 192)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1081, file: !38, line: 315, baseType: !850, size: 64, offset: 256)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1081, file: !38, line: 316, baseType: !850, size: 64, offset: 320)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1081, file: !38, line: 317, baseType: !850, size: 64, offset: 384)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1081, file: !38, line: 318, baseType: !936, size: 64, offset: 448)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1075, file: !38, line: 446, baseType: !736, size: 64, offset: 128)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1075, file: !38, line: 447, baseType: !1074, size: 64, offset: 192)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1071, file: !38, line: 224, baseType: !207, size: 32, offset: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1071, file: !38, line: 226, baseType: !273, size: 128, offset: 128)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1071, file: !38, line: 227, baseType: !216, size: 64, offset: 256)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1071, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1071, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1071, file: !38, line: 230, baseType: !898, size: 64, offset: 384)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1071, file: !38, line: 231, baseType: !898, size: 64, offset: 448)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1071, file: !38, line: 232, baseType: !233, size: 64, offset: 512)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1063, file: !38, line: 523, baseType: !1102, size: 192, offset: 2240)
!1102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1079, size: 192, elements: !757)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !699, file: !44, line: 1458, baseType: !1104, size: 2112, offset: 4288)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !1105)
!1105 = !{!1106, !1107, !1114}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1104, file: !44, line: 1411, baseType: !207, size: 32)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !1104, file: !44, line: 1412, baseType: !1108, size: 128, offset: 64)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1109, line: 40, baseType: !1110)
!1109 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1109, line: 36, size: 128, elements: !1111)
!1111 = !{!1112, !1113}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1110, file: !1109, line: 37, baseType: !615)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1110, file: !1109, line: 38, baseType: !273, size: 128)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1104, file: !44, line: 1413, baseType: !1115, size: 1920, offset: 192)
!1115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1116, size: 1920, elements: !757)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1117, line: 12, size: 640, elements: !1118)
!1117 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1118 = !{!1119, !1135, !1137, !1142, !1143}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1116, file: !1117, line: 13, baseType: !1120, size: 320)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1121, line: 17, size: 320, elements: !1122)
!1121 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!1122 = !{!1123, !1124, !1125, !1126}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1120, file: !1121, line: 18, baseType: !207, size: 32)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1120, file: !1121, line: 19, baseType: !207, size: 32, offset: 32)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1120, file: !1121, line: 20, baseType: !1108, size: 128, offset: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1120, file: !1121, line: 22, baseType: !1127, size: 128, align: 64, offset: 192)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !241, line: 216, size: 128, align: 64, elements: !1128)
!1128 = !{!1129, !1131}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1127, file: !241, line: 217, baseType: !1130, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1127, file: !241, line: 218, baseType: !1132, size: 64, offset: 64)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{null, !1130}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1116, file: !1117, line: 14, baseType: !1136, size: 64, offset: 320)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1116, file: !1117, line: 15, baseType: !1138, size: 64, offset: 384)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1139, line: 16, size: 64, elements: !1140)
!1139 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!1140 = !{!1141}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1138, file: !1139, line: 17, baseType: !224, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1116, file: !1117, line: 16, baseType: !1108, size: 128, offset: 448)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1116, file: !1117, line: 17, baseType: !240, size: 32, offset: 576)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !699, file: !44, line: 1465, baseType: !233, size: 64, offset: 6400)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !699, file: !44, line: 1468, baseType: !218, size: 32, offset: 6464)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !699, file: !44, line: 1470, baseType: !906, size: 64, offset: 6528)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !699, file: !44, line: 1471, baseType: !906, size: 64, offset: 6592)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !699, file: !44, line: 1473, baseType: !220, size: 32, offset: 6656)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !699, file: !44, line: 1474, baseType: !1150, size: 64, offset: 6720)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !699, file: !44, line: 1477, baseType: !1153, size: 256, offset: 6784)
!1153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !646, size: 256, elements: !602)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !699, file: !44, line: 1478, baseType: !1155, size: 128, offset: 7040)
!1155 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !1156, line: 18, baseType: !1157)
!1156 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1156, line: 16, size: 128, elements: !1158)
!1158 = !{!1159}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1157, file: !1156, line: 17, baseType: !1160, size: 128)
!1160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !403, size: 128, elements: !1161)
!1161 = !{!1162}
!1162 = !DISubrange(count: 16)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !699, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !699, file: !44, line: 1481, baseType: !1165, size: 32, offset: 7200)
!1165 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !241, line: 150, baseType: !7)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !699, file: !44, line: 1487, baseType: !861, size: 192, offset: 7232)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !699, file: !44, line: 1493, baseType: !644, size: 64, offset: 7424)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !699, file: !44, line: 1495, baseType: !624, size: 64, offset: 7488)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !699, file: !44, line: 1500, baseType: !207, size: 32, offset: 7552)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !699, file: !44, line: 1502, baseType: !1171, size: 448, offset: 7616)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !834, line: 60, size: 448, elements: !1172)
!1172 = !{!1173, !1178, !1179, !1180, !1181, !1182, !1183}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !1171, file: !834, line: 61, baseType: !1174, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!216, !1177, !832}
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !1171, file: !834, line: 63, baseType: !1174, size: 64, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !1171, file: !834, line: 66, baseType: !231, size: 64, offset: 128)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !1171, file: !834, line: 67, baseType: !207, size: 32, offset: 192)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1171, file: !834, line: 68, baseType: !7, size: 32, offset: 224)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1171, file: !834, line: 71, baseType: !273, size: 128, offset: 256)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !1171, file: !834, line: 77, baseType: !1184, size: 64, offset: 384)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !699, file: !44, line: 1505, baseType: !865, size: 64, offset: 8064)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !699, file: !44, line: 1508, baseType: !865, size: 64, offset: 8128)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !699, file: !44, line: 1511, baseType: !207, size: 32, offset: 8192)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !699, file: !44, line: 1514, baseType: !1189, size: 32, offset: 8224)
!1189 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1190, line: 8, baseType: !218)
!1190 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !699, file: !44, line: 1517, baseType: !1192, size: 64, offset: 8256)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1194, line: 18, flags: DIFlagFwdDecl)
!1194 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !699, file: !44, line: 1518, baseType: !741, size: 64, offset: 8320)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !699, file: !44, line: 1525, baseType: !1197, size: 64, offset: 8384)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !542, line: 18, flags: DIFlagFwdDecl)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !699, file: !44, line: 1532, baseType: !1200, size: 64, offset: 8448)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !1201, line: 52, size: 64, elements: !1202)
!1201 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!1202 = !{!1203}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1200, file: !1201, line: 53, baseType: !1204, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !1201, line: 40, size: 256, elements: !1206)
!1206 = !{!1207, !1208, !1213}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1205, file: !1201, line: 42, baseType: !615)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1205, file: !1201, line: 44, baseType: !1209, size: 192)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !1201, line: 28, size: 192, elements: !1210)
!1210 = !{!1211, !1212}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1209, file: !1201, line: 29, baseType: !273, size: 128)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1209, file: !1201, line: 31, baseType: !231, size: 64, offset: 128)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1205, file: !1201, line: 49, baseType: !231, size: 64, offset: 192)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !699, file: !44, line: 1533, baseType: !1200, size: 64, offset: 8512)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !699, file: !44, line: 1534, baseType: !1127, size: 128, align: 64, offset: 8576)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !699, file: !44, line: 1535, baseType: !1217, size: 256, offset: 8704)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1194, line: 102, size: 256, elements: !1218)
!1218 = !{!1219, !1220, !1221}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1217, file: !1194, line: 103, baseType: !865, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1217, file: !1194, line: 104, baseType: !273, size: 128, offset: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1217, file: !1194, line: 105, baseType: !1222, size: 64, offset: 192)
!1222 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1194, line: 21, baseType: !1223)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{null, !1226}
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !699, file: !44, line: 1537, baseType: !861, size: 192, offset: 8960)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !699, file: !44, line: 1542, baseType: !207, size: 32, offset: 9152)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !699, file: !44, line: 1545, baseType: !615, offset: 9184)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !699, file: !44, line: 1546, baseType: !273, size: 128, offset: 9216)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !699, file: !44, line: 1548, baseType: !615, offset: 9344)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !699, file: !44, line: 1549, baseType: !273, size: 128, offset: 9344)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !566, file: !567, line: 104, baseType: !216, size: 64, offset: 896)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !566, file: !567, line: 105, baseType: !233, size: 64, offset: 960)
!1235 = !DIDerivedType(tag: DW_TAG_member, scope: !566, file: !567, line: 107, baseType: !1236, size: 128, offset: 1024)
!1236 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !566, file: !567, line: 107, size: 128, elements: !1237)
!1237 = !{!1238, !1239}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !1236, file: !567, line: 108, baseType: !273, size: 128)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !1236, file: !567, line: 109, baseType: !1240, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !566, file: !567, line: 111, baseType: !273, size: 128, offset: 1152)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !566, file: !567, line: 112, baseType: !273, size: 128, offset: 1280)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !566, file: !567, line: 120, baseType: !1244, size: 128, offset: 1408)
!1244 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !566, file: !567, line: 116, size: 128, elements: !1245)
!1245 = !{!1246, !1247, !1248}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !1244, file: !567, line: 117, baseType: !745, size: 128)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !1244, file: !567, line: 118, baseType: !576, size: 128)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !1244, file: !567, line: 119, baseType: !1127, size: 128, align: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !559, file: !44, line: 1866, baseType: !1250, size: 64, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!644, !565, !534, !1253}
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1255, line: 10, size: 128, elements: !1256)
!1255 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!1256 = !{!1257, !1261}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1254, file: !1255, line: 11, baseType: !1258, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{null, !233}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1254, file: !1255, line: 12, baseType: !233, size: 64, offset: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !559, file: !44, line: 1867, baseType: !1263, size: 64, offset: 128)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!207, !534, !207}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !559, file: !44, line: 1868, baseType: !1267, size: 64, offset: 192)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!1270, !534, !207}
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !559, file: !44, line: 1870, baseType: !1273, size: 64, offset: 256)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!207, !565, !670, !207}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !559, file: !44, line: 1872, baseType: !1277, size: 64, offset: 320)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!207, !534, !565, !538, !689}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !559, file: !44, line: 1873, baseType: !1281, size: 64, offset: 384)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!207, !565, !534, !565}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !559, file: !44, line: 1874, baseType: !1285, size: 64, offset: 448)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!207, !534, !565}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !559, file: !44, line: 1875, baseType: !1289, size: 64, offset: 512)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!207, !534, !565, !644}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !559, file: !44, line: 1876, baseType: !1293, size: 64, offset: 576)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{!207, !534, !565, !538}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !559, file: !44, line: 1877, baseType: !1285, size: 64, offset: 640)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !559, file: !44, line: 1878, baseType: !1298, size: 64, offset: 704)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!207, !534, !565, !538, !703}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !559, file: !44, line: 1879, baseType: !1302, size: 64, offset: 768)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!207, !534, !565, !534, !565, !7}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !559, file: !44, line: 1881, baseType: !1306, size: 64, offset: 832)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!207, !565, !1309}
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !1311)
!1311 = !{!1312, !1313, !1314, !1315, !1316, !1317, !1322, !1323, !1324}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1310, file: !44, line: 220, baseType: !7, size: 32)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1310, file: !44, line: 221, baseType: !538, size: 16, offset: 32)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1310, file: !44, line: 222, baseType: !541, size: 32, offset: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1310, file: !44, line: 223, baseType: !549, size: 32, offset: 96)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1310, file: !44, line: 224, baseType: !708, size: 64, offset: 128)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1310, file: !44, line: 225, baseType: !1318, size: 128, offset: 192)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !907, line: 13, size: 128, elements: !1319)
!1319 = !{!1320, !1321}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1318, file: !907, line: 14, baseType: !906, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1318, file: !907, line: 15, baseType: !231, size: 64, offset: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1310, file: !44, line: 226, baseType: !1318, size: 128, offset: 320)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1310, file: !44, line: 227, baseType: !1318, size: 128, offset: 448)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1310, file: !44, line: 234, baseType: !1325, size: 64, offset: 576)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !1327)
!1327 = !{!1328, !1338, !1339, !1340, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1639, !1825, !1834, !1835, !1836, !1837, !1838, !1839, !1840}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !1326, file: !44, line: 920, baseType: !1329, size: 128)
!1329 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1326, file: !44, line: 917, size: 128, elements: !1330)
!1330 = !{!1331, !1337}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !1329, file: !44, line: 918, baseType: !1332, size: 64)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1333, line: 58, size: 64, elements: !1334)
!1333 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!1334 = !{!1335}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1332, file: !1333, line: 59, baseType: !1336, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !1329, file: !44, line: 919, baseType: !1127, size: 128, align: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1326, file: !44, line: 921, baseType: !678, size: 128, offset: 128)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1326, file: !44, line: 922, baseType: !534, size: 64, offset: 256)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1326, file: !44, line: 923, baseType: !1341, size: 64, offset: 320)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1343)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !1344)
!1344 = !{!1345, !1346, !1350, !1361, !1365, !1393, !1394, !1398, !1411, !1412, !1420, !1424, !1425, !1429, !1430, !1434, !1439, !1440, !1444, !1448, !1557, !1561, !1565, !1569, !1570, !1576, !1580, !1585, !1589, !1593, !1597, !1601}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1343, file: !44, line: 1823, baseType: !736, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1343, file: !44, line: 1824, baseType: !1347, size: 64, offset: 64)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!708, !1325, !708, !207}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1343, file: !44, line: 1825, baseType: !1351, size: 64, offset: 128)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!1354, !1325, !670, !1357, !1360}
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !241, line: 60, baseType: !1355)
!1355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !373, line: 73, baseType: !1356)
!1356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !373, line: 15, baseType: !231)
!1357 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !241, line: 55, baseType: !1358)
!1358 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !373, line: 72, baseType: !1359)
!1359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !373, line: 16, baseType: !216)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1343, file: !44, line: 1826, baseType: !1362, size: 64, offset: 192)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!1354, !1325, !644, !1357, !1360}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1343, file: !44, line: 1827, baseType: !1366, size: 64, offset: 256)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!1354, !1369, !1391}
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !1371)
!1371 = !{!1372, !1373, !1374, !1378, !1379, !1380, !1383, !1384}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1370, file: !44, line: 321, baseType: !1325, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1370, file: !44, line: 326, baseType: !708, size: 64, offset: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1370, file: !44, line: 327, baseType: !1375, size: 64, offset: 128)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{null, !1369, !231, !231}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1370, file: !44, line: 328, baseType: !233, size: 64, offset: 192)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1370, file: !44, line: 329, baseType: !207, size: 32, offset: 256)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1370, file: !44, line: 330, baseType: !1381, size: 16, offset: 288)
!1381 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !219, line: 19, baseType: !1382)
!1382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !221, line: 24, baseType: !210)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1370, file: !44, line: 331, baseType: !1381, size: 16, offset: 304)
!1384 = !DIDerivedType(tag: DW_TAG_member, scope: !1370, file: !44, line: 332, baseType: !1385, size: 64, offset: 320)
!1385 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1370, file: !44, line: 332, size: 64, elements: !1386)
!1386 = !{!1387, !1388}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1385, file: !44, line: 333, baseType: !7, size: 32)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1385, file: !44, line: 334, baseType: !1389, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1343, file: !44, line: 1828, baseType: !1366, size: 64, offset: 320)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1343, file: !44, line: 1829, baseType: !1395, size: 64, offset: 384)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!207, !1369, !689}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !1343, file: !44, line: 1830, baseType: !1399, size: 64, offset: 448)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!207, !1325, !1402}
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !1404)
!1404 = !{!1405, !1410}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1403, file: !44, line: 1777, baseType: !1406, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !1407)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!207, !1402, !644, !207, !708, !280, !7}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1403, file: !44, line: 1778, baseType: !708, size: 64, offset: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1343, file: !44, line: 1831, baseType: !1399, size: 64, offset: 512)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1343, file: !44, line: 1832, baseType: !1413, size: 64, offset: 576)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!1416, !1325, !1418}
!1416 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1417, line: 52, baseType: !7)
!1417 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !722, line: 27, flags: DIFlagFwdDecl)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1343, file: !44, line: 1833, baseType: !1421, size: 64, offset: 640)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!231, !1325, !7, !216}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1343, file: !44, line: 1834, baseType: !1421, size: 64, offset: 704)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1343, file: !44, line: 1835, baseType: !1426, size: 64, offset: 768)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{!207, !1325, !437}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1343, file: !44, line: 1836, baseType: !216, size: 64, offset: 832)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1343, file: !44, line: 1837, baseType: !1431, size: 64, offset: 896)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!207, !534, !1325}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1343, file: !44, line: 1838, baseType: !1435, size: 64, offset: 960)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!207, !1325, !1438}
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !233)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1343, file: !44, line: 1839, baseType: !1431, size: 64, offset: 1024)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1343, file: !44, line: 1840, baseType: !1441, size: 64, offset: 1088)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{!207, !1325, !708, !708, !207}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1343, file: !44, line: 1841, baseType: !1445, size: 64, offset: 1152)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!207, !207, !1325, !207}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1343, file: !44, line: 1842, baseType: !1449, size: 64, offset: 1216)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!207, !1325, !207, !1452}
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !1454)
!1454 = !{!1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1486, !1487, !1488, !1501, !1533}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !1453, file: !44, line: 1063, baseType: !1452, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !1453, file: !44, line: 1064, baseType: !273, size: 128, offset: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !1453, file: !44, line: 1065, baseType: !745, size: 128, offset: 192)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !1453, file: !44, line: 1066, baseType: !273, size: 128, offset: 320)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !1453, file: !44, line: 1069, baseType: !273, size: 128, offset: 448)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !1453, file: !44, line: 1072, baseType: !1438, size: 64, offset: 576)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !1453, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !1453, file: !44, line: 1074, baseType: !404, size: 8, offset: 672)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !1453, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !1453, file: !44, line: 1076, baseType: !207, size: 32, offset: 736)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !1453, file: !44, line: 1077, baseType: !1108, size: 128, offset: 768)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !1453, file: !44, line: 1078, baseType: !1325, size: 64, offset: 896)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !1453, file: !44, line: 1079, baseType: !708, size: 64, offset: 960)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !1453, file: !44, line: 1080, baseType: !708, size: 64, offset: 1024)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !1453, file: !44, line: 1082, baseType: !1470, size: 64, offset: 1088)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !1472)
!1472 = !{!1473, !1481, !1482, !1483, !1484, !1485}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !1471, file: !44, line: 1315, baseType: !1474)
!1474 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1475, line: 20, baseType: !1476)
!1475 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1475, line: 11, elements: !1477)
!1477 = !{!1478}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1476, file: !1475, line: 12, baseType: !1479)
!1479 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !352, line: 33, baseType: !1480)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !352, line: 31, elements: !289)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1471, file: !44, line: 1316, baseType: !207, size: 32)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !1471, file: !44, line: 1317, baseType: !207, size: 32, offset: 32)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !1471, file: !44, line: 1318, baseType: !1470, size: 64, offset: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !1471, file: !44, line: 1319, baseType: !1325, size: 64, offset: 128)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !1471, file: !44, line: 1320, baseType: !1127, size: 128, align: 64, offset: 192)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !1453, file: !44, line: 1084, baseType: !216, size: 64, offset: 1152)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !1453, file: !44, line: 1085, baseType: !216, size: 64, offset: 1216)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !1453, file: !44, line: 1087, baseType: !1489, size: 64, offset: 1280)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1491)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !1492)
!1492 = !{!1493, !1497}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !1491, file: !44, line: 1012, baseType: !1494, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{null, !1452, !1452}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !1491, file: !44, line: 1013, baseType: !1498, size: 64, offset: 64)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{null, !1452}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !1453, file: !44, line: 1088, baseType: !1502, size: 64, offset: 1344)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1504)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !1505)
!1505 = !{!1506, !1510, !1514, !1515, !1519, !1523, !1527, !1532}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !1504, file: !44, line: 1017, baseType: !1507, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!1438, !1438}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !1504, file: !44, line: 1018, baseType: !1511, size: 64, offset: 64)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{null, !1438}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !1504, file: !44, line: 1019, baseType: !1498, size: 64, offset: 128)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !1504, file: !44, line: 1020, baseType: !1516, size: 64, offset: 192)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!207, !1452, !207}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !1504, file: !44, line: 1021, baseType: !1520, size: 64, offset: 256)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!689, !1452}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !1504, file: !44, line: 1022, baseType: !1524, size: 64, offset: 320)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{!207, !1452, !207, !276}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !1504, file: !44, line: 1023, baseType: !1528, size: 64, offset: 384)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{null, !1452, !1531}
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !1504, file: !44, line: 1024, baseType: !1520, size: 64, offset: 448)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !1453, file: !44, line: 1097, baseType: !1534, size: 256, offset: 1408)
!1534 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1453, file: !44, line: 1089, size: 256, elements: !1535)
!1535 = !{!1536, !1545, !1551}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !1534, file: !44, line: 1090, baseType: !1537, size: 256)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !1538, line: 10, size: 256, elements: !1539)
!1538 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!1539 = !{!1540, !1541, !1544}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1537, file: !1538, line: 11, baseType: !218, size: 32)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1537, file: !1538, line: 12, baseType: !1542, size: 64, offset: 64)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !1538, line: 5, flags: DIFlagFwdDecl)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1537, file: !1538, line: 13, baseType: !273, size: 128, offset: 128)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !1534, file: !44, line: 1091, baseType: !1546, size: 64)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !1538, line: 17, size: 64, elements: !1547)
!1547 = !{!1548}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1546, file: !1538, line: 18, baseType: !1549, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !1538, line: 16, flags: DIFlagFwdDecl)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !1534, file: !44, line: 1096, baseType: !1552, size: 192)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1534, file: !44, line: 1092, size: 192, elements: !1553)
!1553 = !{!1554, !1555, !1556}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1552, file: !44, line: 1093, baseType: !273, size: 128)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1552, file: !44, line: 1094, baseType: !207, size: 32, offset: 128)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !1552, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !1343, file: !44, line: 1843, baseType: !1558, size: 64, offset: 1280)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!1354, !1325, !518, !207, !1357, !1360, !207}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1343, file: !44, line: 1844, baseType: !1562, size: 64, offset: 1344)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!216, !1325, !216, !216, !216, !216}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1343, file: !44, line: 1845, baseType: !1566, size: 64, offset: 1408)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!207, !207}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1343, file: !44, line: 1846, baseType: !1449, size: 64, offset: 1472)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1343, file: !44, line: 1847, baseType: !1571, size: 64, offset: 1536)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!1354, !1574, !1325, !1360, !1357, !7}
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !226, line: 53, flags: DIFlagFwdDecl)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1343, file: !44, line: 1848, baseType: !1577, size: 64, offset: 1600)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!1354, !1325, !1360, !1574, !1357, !7}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1343, file: !44, line: 1849, baseType: !1581, size: 64, offset: 1664)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!207, !1325, !231, !1584, !1531}
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1343, file: !44, line: 1850, baseType: !1586, size: 64, offset: 1728)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!231, !1325, !207, !708, !708}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1343, file: !44, line: 1852, baseType: !1590, size: 64, offset: 1792)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{null, !819, !1325}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1343, file: !44, line: 1856, baseType: !1594, size: 64, offset: 1856)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!1354, !1325, !708, !1325, !708, !1357, !7}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1343, file: !44, line: 1858, baseType: !1598, size: 64, offset: 1920)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!708, !1325, !708, !1325, !708, !708, !7}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1343, file: !44, line: 1861, baseType: !1441, size: 64, offset: 1984)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1326, file: !44, line: 929, baseType: !615, offset: 384)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !1326, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1326, file: !44, line: 931, baseType: !865, size: 64, offset: 448)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1326, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1326, file: !44, line: 933, baseType: !1165, size: 32, offset: 544)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1326, file: !44, line: 934, baseType: !861, size: 192, offset: 576)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1326, file: !44, line: 935, baseType: !708, size: 64, offset: 768)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1326, file: !44, line: 936, baseType: !1610, size: 192, offset: 832)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !1611)
!1611 = !{!1612, !1613, !1635, !1636, !1637, !1638}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1610, file: !44, line: 886, baseType: !1474)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1610, file: !44, line: 887, baseType: !1614, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1616)
!1616 = !{!1617, !1618, !1619, !1620, !1624, !1625, !1626, !1627}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1615, file: !53, line: 61, baseType: !235, size: 32)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1615, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1615, file: !53, line: 63, baseType: !615, offset: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1615, file: !53, line: 65, baseType: !1621, size: 256, offset: 64)
!1621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !741, size: 256, elements: !1622)
!1622 = !{!1623}
!1623 = !DISubrange(count: 4)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1615, file: !53, line: 66, baseType: !741, size: 64, offset: 320)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1615, file: !53, line: 68, baseType: !1108, size: 128, offset: 384)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1615, file: !53, line: 69, baseType: !1127, size: 128, align: 64, offset: 512)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1615, file: !53, line: 70, baseType: !1628, size: 128, offset: 640)
!1628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1629, size: 128, elements: !422)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1630)
!1630 = !{!1631, !1632}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1629, file: !53, line: 55, baseType: !207, size: 32)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1629, file: !53, line: 56, baseType: !1633, size: 64, offset: 64)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1610, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1610, file: !44, line: 889, baseType: !541, size: 32, offset: 96)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1610, file: !44, line: 889, baseType: !541, size: 32, offset: 128)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1610, file: !44, line: 890, baseType: !207, size: 32, offset: 160)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1326, file: !44, line: 937, baseType: !1640, size: 64, offset: 1024)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1642)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1643, line: 111, size: 1280, elements: !1644)
!1643 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1644 = !{!1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1664, !1665, !1666, !1667, !1668, !1669, !1780, !1781, !1782, !1783, !1809, !1810, !1820}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1642, file: !1643, line: 112, baseType: !240, size: 32)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1642, file: !1643, line: 120, baseType: !541, size: 32, offset: 32)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1642, file: !1643, line: 121, baseType: !549, size: 32, offset: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1642, file: !1643, line: 122, baseType: !541, size: 32, offset: 96)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1642, file: !1643, line: 123, baseType: !549, size: 32, offset: 128)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1642, file: !1643, line: 124, baseType: !541, size: 32, offset: 160)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1642, file: !1643, line: 125, baseType: !549, size: 32, offset: 192)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1642, file: !1643, line: 126, baseType: !541, size: 32, offset: 224)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1642, file: !1643, line: 127, baseType: !549, size: 32, offset: 256)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1642, file: !1643, line: 128, baseType: !7, size: 32, offset: 288)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1642, file: !1643, line: 129, baseType: !1656, size: 64, offset: 320)
!1656 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1657, line: 26, baseType: !1658)
!1657 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1657, line: 24, size: 64, elements: !1659)
!1659 = !{!1660}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1658, file: !1657, line: 25, baseType: !1661, size: 64)
!1661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 64, elements: !1662)
!1662 = !{!1663}
!1663 = !DISubrange(count: 2)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1642, file: !1643, line: 130, baseType: !1656, size: 64, offset: 384)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1642, file: !1643, line: 131, baseType: !1656, size: 64, offset: 448)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1642, file: !1643, line: 132, baseType: !1656, size: 64, offset: 512)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1642, file: !1643, line: 133, baseType: !1656, size: 64, offset: 576)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1642, file: !1643, line: 135, baseType: !404, size: 8, offset: 640)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1642, file: !1643, line: 137, baseType: !1670, size: 64, offset: 704)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1672, line: 189, size: 1664, elements: !1673)
!1672 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1673 = !{!1674, !1675, !1680, !1685, !1686, !1689, !1690, !1695, !1696, !1697, !1698, !1701, !1702, !1703, !1705, !1706, !1744, !1765}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1671, file: !1672, line: 190, baseType: !235, size: 32)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1671, file: !1672, line: 191, baseType: !1676, size: 32, offset: 32)
!1676 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1672, line: 28, baseType: !1677)
!1677 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !241, line: 98, baseType: !1678)
!1678 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !219, line: 20, baseType: !1679)
!1679 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !221, line: 26, baseType: !207)
!1680 = !DIDerivedType(tag: DW_TAG_member, scope: !1671, file: !1672, line: 192, baseType: !1681, size: 192, offset: 64)
!1681 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1671, file: !1672, line: 192, size: 192, elements: !1682)
!1682 = !{!1683, !1684}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1681, file: !1672, line: 193, baseType: !273, size: 128)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1681, file: !1672, line: 194, baseType: !265, size: 192, align: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1671, file: !1672, line: 199, baseType: !1032, size: 256, offset: 256)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1671, file: !1672, line: 200, baseType: !1687, size: 64, offset: 512)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1672, line: 200, flags: DIFlagFwdDecl)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1671, file: !1672, line: 201, baseType: !233, size: 64, offset: 576)
!1690 = !DIDerivedType(tag: DW_TAG_member, scope: !1671, file: !1672, line: 202, baseType: !1691, size: 64, offset: 640)
!1691 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1671, file: !1672, line: 202, size: 64, elements: !1692)
!1692 = !{!1693, !1694}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1691, file: !1672, line: 203, baseType: !906, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1691, file: !1672, line: 204, baseType: !906, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1671, file: !1672, line: 206, baseType: !906, size: 64, offset: 704)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1671, file: !1672, line: 207, baseType: !541, size: 32, offset: 768)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1671, file: !1672, line: 208, baseType: !549, size: 32, offset: 800)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1671, file: !1672, line: 209, baseType: !1699, size: 32, offset: 832)
!1699 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1672, line: 31, baseType: !1700)
!1700 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !241, line: 104, baseType: !218)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1671, file: !1672, line: 210, baseType: !210, size: 16, offset: 864)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1671, file: !1672, line: 211, baseType: !210, size: 16, offset: 880)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1671, file: !1672, line: 215, baseType: !1704, size: 16, offset: 896)
!1704 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1671, file: !1672, line: 222, baseType: !216, size: 64, offset: 960)
!1706 = !DIDerivedType(tag: DW_TAG_member, scope: !1671, file: !1672, line: 239, baseType: !1707, size: 320, offset: 1024)
!1707 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1671, file: !1672, line: 239, size: 320, elements: !1708)
!1708 = !{!1709, !1736}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1707, file: !1672, line: 240, baseType: !1710, size: 320)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1672, line: 108, size: 320, elements: !1711)
!1711 = !{!1712, !1713, !1725, !1728, !1735}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1710, file: !1672, line: 110, baseType: !216, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, scope: !1710, file: !1672, line: 111, baseType: !1714, size: 64, offset: 64)
!1714 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1710, file: !1672, line: 111, size: 64, elements: !1715)
!1715 = !{!1716, !1724}
!1716 = !DIDerivedType(tag: DW_TAG_member, scope: !1714, file: !1672, line: 112, baseType: !1717, size: 64)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1714, file: !1672, line: 112, size: 64, elements: !1718)
!1718 = !{!1719, !1720}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1717, file: !1672, line: 114, baseType: !1381, size: 16)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1717, file: !1672, line: 115, baseType: !1721, size: 48, offset: 16)
!1721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !646, size: 48, elements: !1722)
!1722 = !{!1723}
!1723 = !DISubrange(count: 6)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1714, file: !1672, line: 121, baseType: !216, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1710, file: !1672, line: 123, baseType: !1726, size: 64, offset: 128)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1672, line: 96, flags: DIFlagFwdDecl)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1710, file: !1672, line: 124, baseType: !1729, size: 64, offset: 192)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1672, line: 102, size: 192, elements: !1731)
!1731 = !{!1732, !1733, !1734}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1730, file: !1672, line: 103, baseType: !1127, size: 128, align: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1730, file: !1672, line: 104, baseType: !235, size: 32, offset: 128)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1730, file: !1672, line: 105, baseType: !689, size: 8, offset: 160)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1710, file: !1672, line: 125, baseType: !644, size: 64, offset: 256)
!1736 = !DIDerivedType(tag: DW_TAG_member, scope: !1707, file: !1672, line: 241, baseType: !1737, size: 320)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1707, file: !1672, line: 241, size: 320, elements: !1738)
!1738 = !{!1739, !1740, !1741, !1742, !1743}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1737, file: !1672, line: 242, baseType: !216, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1737, file: !1672, line: 243, baseType: !216, size: 64, offset: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1737, file: !1672, line: 244, baseType: !1726, size: 64, offset: 128)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1737, file: !1672, line: 245, baseType: !1729, size: 64, offset: 192)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1737, file: !1672, line: 246, baseType: !670, size: 64, offset: 256)
!1744 = !DIDerivedType(tag: DW_TAG_member, scope: !1671, file: !1672, line: 254, baseType: !1745, size: 256, offset: 1344)
!1745 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1671, file: !1672, line: 254, size: 256, elements: !1746)
!1746 = !{!1747, !1753}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1745, file: !1672, line: 255, baseType: !1748, size: 256)
!1748 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1672, line: 128, size: 256, elements: !1749)
!1749 = !{!1750, !1751}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1748, file: !1672, line: 129, baseType: !233, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1748, file: !1672, line: 130, baseType: !1752, size: 256)
!1752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 256, elements: !1622)
!1753 = !DIDerivedType(tag: DW_TAG_member, scope: !1745, file: !1672, line: 256, baseType: !1754, size: 256)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1745, file: !1672, line: 256, size: 256, elements: !1755)
!1755 = !{!1756, !1757}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1754, file: !1672, line: 258, baseType: !273, size: 128)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1754, file: !1672, line: 259, baseType: !1758, size: 128, offset: 128)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1759, line: 22, size: 128, elements: !1760)
!1759 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1760 = !{!1761, !1764}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1758, file: !1759, line: 23, baseType: !1762, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1759, line: 23, flags: DIFlagFwdDecl)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1758, file: !1759, line: 24, baseType: !216, size: 64, offset: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1671, file: !1672, line: 274, baseType: !1766, size: 64, offset: 1600)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1672, line: 170, size: 192, elements: !1768)
!1768 = !{!1769, !1778, !1779}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1767, file: !1672, line: 171, baseType: !1770, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1672, line: 165, baseType: !1771)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{!207, !1670, !1774, !1776, !1670}
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1727)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1748)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1767, file: !1672, line: 172, baseType: !1670, size: 64, offset: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1767, file: !1672, line: 173, baseType: !1726, size: 64, offset: 128)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1642, file: !1643, line: 138, baseType: !1670, size: 64, offset: 768)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1642, file: !1643, line: 139, baseType: !1670, size: 64, offset: 832)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1642, file: !1643, line: 140, baseType: !1670, size: 64, offset: 896)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1642, file: !1643, line: 145, baseType: !1784, size: 64, offset: 960)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1786, line: 13, size: 896, elements: !1787)
!1786 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1787 = !{!1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1785, file: !1786, line: 14, baseType: !235, size: 32)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1785, file: !1786, line: 15, baseType: !240, size: 32, offset: 32)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1785, file: !1786, line: 16, baseType: !240, size: 32, offset: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1785, file: !1786, line: 21, baseType: !865, size: 64, offset: 128)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1785, file: !1786, line: 27, baseType: !216, size: 64, offset: 192)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1785, file: !1786, line: 28, baseType: !216, size: 64, offset: 256)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1785, file: !1786, line: 29, baseType: !865, size: 64, offset: 320)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1785, file: !1786, line: 32, baseType: !745, size: 128, offset: 384)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1785, file: !1786, line: 33, baseType: !541, size: 32, offset: 512)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1785, file: !1786, line: 37, baseType: !865, size: 64, offset: 576)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1785, file: !1786, line: 44, baseType: !1799, size: 256, offset: 640)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1800, line: 15, size: 256, elements: !1801)
!1800 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1801 = !{!1802, !1803, !1804, !1805, !1806, !1807, !1808}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1799, file: !1800, line: 16, baseType: !346)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1799, file: !1800, line: 18, baseType: !207, size: 32)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1799, file: !1800, line: 19, baseType: !207, size: 32, offset: 32)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1799, file: !1800, line: 20, baseType: !207, size: 32, offset: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1799, file: !1800, line: 21, baseType: !207, size: 32, offset: 96)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1799, file: !1800, line: 22, baseType: !216, size: 64, offset: 128)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1799, file: !1800, line: 23, baseType: !216, size: 64, offset: 192)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1642, file: !1643, line: 146, baseType: !1197, size: 64, offset: 1024)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1642, file: !1643, line: 147, baseType: !1811, size: 64, offset: 1088)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1643, line: 25, size: 64, elements: !1813)
!1813 = !{!1814, !1815, !1816}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1812, file: !1643, line: 26, baseType: !240, size: 32)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1812, file: !1643, line: 27, baseType: !207, size: 32, offset: 32)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1812, file: !1643, line: 28, baseType: !1817, offset: 64)
!1817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, elements: !1818)
!1818 = !{!1819}
!1819 = !DISubrange(count: 0)
!1820 = !DIDerivedType(tag: DW_TAG_member, scope: !1642, file: !1643, line: 149, baseType: !1821, size: 128, offset: 1152)
!1821 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1642, file: !1643, line: 149, size: 128, elements: !1822)
!1822 = !{!1823, !1824}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1821, file: !1643, line: 150, baseType: !207, size: 32)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1821, file: !1643, line: 151, baseType: !1127, size: 128, align: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1326, file: !44, line: 938, baseType: !1826, size: 256, offset: 1088)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !1827)
!1827 = !{!1828, !1829, !1830, !1831, !1832, !1833}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1826, file: !44, line: 897, baseType: !216, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1826, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1826, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1826, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1826, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1826, file: !44, line: 904, baseType: !708, size: 64, offset: 192)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1326, file: !44, line: 940, baseType: !280, size: 64, offset: 1344)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1326, file: !44, line: 945, baseType: !233, size: 64, offset: 1408)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !1326, file: !44, line: 949, baseType: !273, size: 128, offset: 1472)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !1326, file: !44, line: 950, baseType: !273, size: 128, offset: 1600)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1326, file: !44, line: 952, baseType: !530, size: 64, offset: 1728)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1326, file: !44, line: 953, baseType: !1189, size: 32, offset: 1792)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1326, file: !44, line: 954, baseType: !1189, size: 32, offset: 1824)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !559, file: !44, line: 1882, baseType: !1842, size: 64, offset: 896)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{!207, !687, !1845, !218, !7}
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1847, line: 22, size: 1152, elements: !1848)
!1847 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!1848 = !{!1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1846, file: !1847, line: 23, baseType: !218, size: 32)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1846, file: !1847, line: 24, baseType: !538, size: 16, offset: 32)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1846, file: !1847, line: 25, baseType: !7, size: 32, offset: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1846, file: !1847, line: 26, baseType: !1700, size: 32, offset: 96)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1846, file: !1847, line: 27, baseType: !280, size: 64, offset: 128)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1846, file: !1847, line: 28, baseType: !280, size: 64, offset: 192)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1846, file: !1847, line: 37, baseType: !280, size: 64, offset: 256)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1846, file: !1847, line: 38, baseType: !703, size: 32, offset: 320)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1846, file: !1847, line: 39, baseType: !703, size: 32, offset: 352)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1846, file: !1847, line: 40, baseType: !541, size: 32, offset: 384)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1846, file: !1847, line: 41, baseType: !549, size: 32, offset: 416)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1846, file: !1847, line: 42, baseType: !708, size: 64, offset: 448)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1846, file: !1847, line: 43, baseType: !1318, size: 128, offset: 512)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1846, file: !1847, line: 44, baseType: !1318, size: 128, offset: 640)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1846, file: !1847, line: 45, baseType: !1318, size: 128, offset: 768)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1846, file: !1847, line: 46, baseType: !1318, size: 128, offset: 896)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1846, file: !1847, line: 47, baseType: !280, size: 64, offset: 1024)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1846, file: !1847, line: 48, baseType: !280, size: 64, offset: 1088)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !559, file: !44, line: 1883, baseType: !1868, size: 64, offset: 960)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!1354, !565, !670, !1357}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !559, file: !44, line: 1884, baseType: !1872, size: 64, offset: 1024)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!207, !534, !1875, !280, !280}
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !559, file: !44, line: 1886, baseType: !1878, size: 64, offset: 1088)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DISubroutineType(types: !1880)
!1880 = !{!207, !534, !1881, !207}
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !559, file: !44, line: 1887, baseType: !1883, size: 64, offset: 1152)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!207, !534, !565, !1325, !7, !538}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !559, file: !44, line: 1890, baseType: !1293, size: 64, offset: 1216)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !559, file: !44, line: 1891, baseType: !1888, size: 64, offset: 1280)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!207, !534, !1270, !207}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !535, file: !44, line: 623, baseType: !698, size: 64, offset: 192)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !535, file: !44, line: 624, baseType: !530, size: 64, offset: 256)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !535, file: !44, line: 631, baseType: !216, size: 64, offset: 320)
!1894 = !DIDerivedType(tag: DW_TAG_member, scope: !535, file: !44, line: 639, baseType: !1895, size: 32, offset: 384)
!1895 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !535, file: !44, line: 639, size: 32, elements: !1896)
!1896 = !{!1897, !1899}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !1895, file: !44, line: 640, baseType: !1898, size: 32)
!1898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !1895, file: !44, line: 641, baseType: !7, size: 32)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !535, file: !44, line: 643, baseType: !703, size: 32, offset: 416)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !535, file: !44, line: 644, baseType: !708, size: 64, offset: 448)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !535, file: !44, line: 645, baseType: !1318, size: 128, offset: 512)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !535, file: !44, line: 646, baseType: !1318, size: 128, offset: 640)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !535, file: !44, line: 647, baseType: !1318, size: 128, offset: 768)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !535, file: !44, line: 648, baseType: !615, offset: 896)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !535, file: !44, line: 649, baseType: !210, size: 16, offset: 896)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !535, file: !44, line: 650, baseType: !402, size: 8, offset: 912)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !535, file: !44, line: 651, baseType: !402, size: 8, offset: 920)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !535, file: !44, line: 652, baseType: !1020, size: 64, offset: 960)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !535, file: !44, line: 659, baseType: !216, size: 64, offset: 1024)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !535, file: !44, line: 660, baseType: !1032, size: 256, offset: 1088)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !535, file: !44, line: 662, baseType: !216, size: 64, offset: 1344)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !535, file: !44, line: 663, baseType: !216, size: 64, offset: 1408)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !535, file: !44, line: 665, baseType: !745, size: 128, offset: 1472)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !535, file: !44, line: 666, baseType: !273, size: 128, offset: 1600)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !535, file: !44, line: 675, baseType: !273, size: 128, offset: 1728)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !535, file: !44, line: 676, baseType: !273, size: 128, offset: 1856)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !535, file: !44, line: 677, baseType: !273, size: 128, offset: 1984)
!1919 = !DIDerivedType(tag: DW_TAG_member, scope: !535, file: !44, line: 678, baseType: !1920, size: 128, offset: 2112)
!1920 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !535, file: !44, line: 678, size: 128, elements: !1921)
!1921 = !{!1922, !1923}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !1920, file: !44, line: 679, baseType: !741, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !1920, file: !44, line: 680, baseType: !1127, size: 128, align: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !535, file: !44, line: 682, baseType: !867, size: 64, offset: 2240)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !535, file: !44, line: 683, baseType: !867, size: 64, offset: 2304)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !535, file: !44, line: 684, baseType: !240, size: 32, offset: 2368)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !535, file: !44, line: 685, baseType: !240, size: 32, offset: 2400)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !535, file: !44, line: 686, baseType: !240, size: 32, offset: 2432)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !535, file: !44, line: 688, baseType: !240, size: 32, offset: 2464)
!1930 = !DIDerivedType(tag: DW_TAG_member, scope: !535, file: !44, line: 690, baseType: !1931, size: 64, offset: 2496)
!1931 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !535, file: !44, line: 690, size: 64, elements: !1932)
!1932 = !{!1933, !1934}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !1931, file: !44, line: 691, baseType: !1341, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1931, file: !44, line: 692, baseType: !772, size: 64)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !535, file: !44, line: 694, baseType: !1936, size: 64, offset: 2560)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !1938)
!1938 = !{!1939, !1940, !1941, !1942}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !1937, file: !44, line: 1101, baseType: !615)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !1937, file: !44, line: 1102, baseType: !273, size: 128)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !1937, file: !44, line: 1103, baseType: !273, size: 128, offset: 128)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !1937, file: !44, line: 1104, baseType: !273, size: 128, offset: 256)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !535, file: !44, line: 695, baseType: !531, size: 1216, align: 64, offset: 2624)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !535, file: !44, line: 696, baseType: !273, size: 128, offset: 3840)
!1945 = !DIDerivedType(tag: DW_TAG_member, scope: !535, file: !44, line: 697, baseType: !1946, size: 64, offset: 3968)
!1946 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !535, file: !44, line: 697, size: 64, elements: !1947)
!1947 = !{!1948, !1949, !1950, !1953, !1954}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !1946, file: !44, line: 698, baseType: !1574, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !1946, file: !44, line: 699, baseType: !1052, size: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !1946, file: !44, line: 700, baseType: !1951, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !1946, file: !44, line: 701, baseType: !670, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !1946, file: !44, line: 702, baseType: !7, size: 32)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !535, file: !44, line: 705, baseType: !220, size: 32, offset: 4032)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !535, file: !44, line: 708, baseType: !220, size: 32, offset: 4064)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !535, file: !44, line: 709, baseType: !1150, size: 64, offset: 4096)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !535, file: !44, line: 720, baseType: !233, size: 64, offset: 4160)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !531, file: !44, line: 453, baseType: !1960, size: 128, offset: 64)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1961, line: 292, size: 128, elements: !1962)
!1961 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1962 = !{!1963, !1964, !1965}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1960, file: !1961, line: 293, baseType: !615)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1960, file: !1961, line: 295, baseType: !494, size: 32)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1960, file: !1961, line: 296, baseType: !233, size: 64, offset: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !531, file: !44, line: 454, baseType: !494, size: 32, offset: 192)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !531, file: !44, line: 455, baseType: !240, size: 32, offset: 224)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !531, file: !44, line: 460, baseType: !389, size: 128, offset: 256)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !531, file: !44, line: 461, baseType: !1032, size: 256, offset: 384)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !531, file: !44, line: 462, baseType: !216, size: 64, offset: 640)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !531, file: !44, line: 463, baseType: !216, size: 64, offset: 704)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !531, file: !44, line: 464, baseType: !216, size: 64, offset: 768)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !531, file: !44, line: 465, baseType: !1974, size: 64, offset: 832)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1976)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !1977)
!1977 = !{!1978, !1982, !1986, !1990, !1994, !1998, !2004, !2009, !2013, !2018, !2022, !2026, !2030, !2031, !2035, !2041, !2042, !2043, !2047, !2052, !2056, !2063}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1976, file: !44, line: 368, baseType: !1979, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!207, !518, !784}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !1976, file: !44, line: 369, baseType: !1983, size: 64, offset: 64)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!207, !1325, !518}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1976, file: !44, line: 372, baseType: !1987, size: 64, offset: 128)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!207, !530, !784}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !1976, file: !44, line: 375, baseType: !1991, size: 64, offset: 192)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!207, !518}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !1976, file: !44, line: 381, baseType: !1995, size: 64, offset: 256)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!207, !1325, !530, !276, !7}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1976, file: !44, line: 383, baseType: !1999, size: 64, offset: 320)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{null, !2002}
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1976, file: !44, line: 385, baseType: !2005, size: 64, offset: 384)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!207, !1325, !530, !708, !7, !7, !2008, !1531}
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1976, file: !44, line: 388, baseType: !2010, size: 64, offset: 448)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!207, !1325, !530, !708, !7, !7, !518, !233}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1976, file: !44, line: 393, baseType: !2014, size: 64, offset: 512)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!2017, !530, !2017}
!2017 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !241, line: 125, baseType: !280)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !1976, file: !44, line: 394, baseType: !2019, size: 64, offset: 576)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{null, !518, !7, !7}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !1976, file: !44, line: 395, baseType: !2023, size: 64, offset: 640)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!207, !518, !494}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !1976, file: !44, line: 396, baseType: !2027, size: 64, offset: 704)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{null, !518}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1976, file: !44, line: 397, baseType: !1366, size: 64, offset: 768)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !1976, file: !44, line: 402, baseType: !2032, size: 64, offset: 832)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{!207, !530, !518, !518, !5}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !1976, file: !44, line: 404, baseType: !2036, size: 64, offset: 896)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!689, !518, !2039}
!2039 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !2040, line: 305, baseType: !7)
!2040 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !1976, file: !44, line: 405, baseType: !2027, size: 64, offset: 960)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !1976, file: !44, line: 406, baseType: !1991, size: 64, offset: 1024)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1976, file: !44, line: 407, baseType: !2044, size: 64, offset: 1088)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!207, !518, !216, !216}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1976, file: !44, line: 409, baseType: !2048, size: 64, offset: 1152)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DISubroutineType(types: !2050)
!2050 = !{null, !518, !2051, !2051}
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1976, file: !44, line: 410, baseType: !2053, size: 64, offset: 1216)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!207, !530, !518}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1976, file: !44, line: 413, baseType: !2057, size: 64, offset: 1280)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!207, !2060, !1325, !2062}
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1976, file: !44, line: 415, baseType: !2064, size: 64, offset: 1344)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{null, !1325}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !531, file: !44, line: 466, baseType: !216, size: 64, offset: 896)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !531, file: !44, line: 467, baseType: !1189, size: 32, offset: 960)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !531, file: !44, line: 468, baseType: !615, offset: 992)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !531, file: !44, line: 469, baseType: !273, size: 128, offset: 1024)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !531, file: !44, line: 470, baseType: !233, size: 64, offset: 1152)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !526, file: !431, line: 87, baseType: !216, size: 64, offset: 192)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !526, file: !431, line: 94, baseType: !216, size: 64, offset: 256)
!2074 = !DIDerivedType(tag: DW_TAG_member, scope: !523, file: !431, line: 96, baseType: !2075, size: 64)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !523, file: !431, line: 96, size: 64, elements: !2076)
!2076 = !{!2077}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2075, file: !431, line: 101, baseType: !2078, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !241, line: 143, baseType: !280)
!2079 = !DIDerivedType(tag: DW_TAG_member, scope: !523, file: !431, line: 103, baseType: !2080, size: 320)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !523, file: !431, line: 103, size: 320, elements: !2081)
!2081 = !{!2082, !2092, !2095, !2096}
!2082 = !DIDerivedType(tag: DW_TAG_member, scope: !2080, file: !431, line: 104, baseType: !2083, size: 128)
!2083 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2080, file: !431, line: 104, size: 128, elements: !2084)
!2084 = !{!2085, !2086}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !2083, file: !431, line: 105, baseType: !273, size: 128)
!2086 = !DIDerivedType(tag: DW_TAG_member, scope: !2083, file: !431, line: 106, baseType: !2087, size: 128)
!2087 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2083, file: !431, line: 106, size: 128, elements: !2088)
!2088 = !{!2089, !2090, !2091}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2087, file: !431, line: 107, baseType: !518, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2087, file: !431, line: 109, baseType: !207, size: 32, offset: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !2087, file: !431, line: 110, baseType: !207, size: 32, offset: 96)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !2080, file: !431, line: 117, baseType: !2093, size: 64, offset: 128)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !431, line: 117, flags: DIFlagFwdDecl)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !2080, file: !431, line: 119, baseType: !233, size: 64, offset: 192)
!2096 = !DIDerivedType(tag: DW_TAG_member, scope: !2080, file: !431, line: 120, baseType: !2097, size: 64, offset: 256)
!2097 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2080, file: !431, line: 120, size: 64, elements: !2098)
!2098 = !{!2099, !2100, !2101}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !2097, file: !431, line: 121, baseType: !233, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !2097, file: !431, line: 122, baseType: !216, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, scope: !2097, file: !431, line: 123, baseType: !2102, size: 32)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2097, file: !431, line: 123, size: 32, elements: !2103)
!2103 = !{!2104, !2105, !2106}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !2102, file: !431, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !2102, file: !431, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2102, file: !431, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!2107 = !DIDerivedType(tag: DW_TAG_member, scope: !523, file: !431, line: 130, baseType: !2108, size: 192)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !523, file: !431, line: 130, size: 192, elements: !2109)
!2109 = !{!2110, !2111, !2112, !2113, !2114}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2108, file: !431, line: 131, baseType: !216, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !2108, file: !431, line: 134, baseType: !404, size: 8, offset: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !2108, file: !431, line: 135, baseType: !404, size: 8, offset: 72)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !2108, file: !431, line: 136, baseType: !240, size: 32, offset: 96)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !2108, file: !431, line: 137, baseType: !7, size: 32, offset: 128)
!2115 = !DIDerivedType(tag: DW_TAG_member, scope: !523, file: !431, line: 139, baseType: !2116, size: 256)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !523, file: !431, line: 139, size: 256, elements: !2117)
!2117 = !{!2118, !2119, !2120}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !2116, file: !431, line: 140, baseType: !216, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !2116, file: !431, line: 141, baseType: !240, size: 32, offset: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !2116, file: !431, line: 143, baseType: !273, size: 128, offset: 128)
!2121 = !DIDerivedType(tag: DW_TAG_member, scope: !523, file: !431, line: 145, baseType: !2122, size: 256)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !523, file: !431, line: 145, size: 256, elements: !2123)
!2123 = !{!2124, !2125, !2127, !2128, !2133}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !2122, file: !431, line: 146, baseType: !216, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !2122, file: !431, line: 147, baseType: !2126, size: 64, offset: 64)
!2126 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !449, line: 509, baseType: !518)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !2122, file: !431, line: 148, baseType: !216, size: 64, offset: 128)
!2128 = !DIDerivedType(tag: DW_TAG_member, scope: !2122, file: !431, line: 149, baseType: !2129, size: 64, offset: 192)
!2129 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2122, file: !431, line: 149, size: 64, elements: !2130)
!2130 = !{!2131, !2132}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !2129, file: !431, line: 150, baseType: !429, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !2129, file: !431, line: 151, baseType: !240, size: 32)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2122, file: !431, line: 156, baseType: !615, offset: 256)
!2134 = !DIDerivedType(tag: DW_TAG_member, scope: !523, file: !431, line: 159, baseType: !2135, size: 128)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !523, file: !431, line: 159, size: 128, elements: !2136)
!2136 = !{!2137, !2211}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2135, file: !431, line: 161, baseType: !2138, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2140)
!2140 = !{!2141, !2151, !2172, !2173, !2184, !2185, !2186, !2198, !2199, !2200}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2139, file: !31, line: 111, baseType: !2142, size: 384)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2143)
!2143 = !{!2144, !2146, !2147, !2148, !2149, !2150}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2142, file: !31, line: 20, baseType: !2145, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2142, file: !31, line: 21, baseType: !2145, size: 64, offset: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2142, file: !31, line: 22, baseType: !2145, size: 64, offset: 128)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2142, file: !31, line: 23, baseType: !216, size: 64, offset: 192)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2142, file: !31, line: 24, baseType: !216, size: 64, offset: 256)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2142, file: !31, line: 25, baseType: !216, size: 64, offset: 320)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2139, file: !31, line: 112, baseType: !2152, size: 64, offset: 384)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2154, line: 105, size: 128, elements: !2155)
!2154 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2155 = !{!2156, !2157}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2153, file: !2154, line: 110, baseType: !216, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2153, file: !2154, line: 118, baseType: !2158, size: 64, offset: 64)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2154, line: 95, size: 448, elements: !2160)
!2160 = !{!2161, !2162, !2167, !2168, !2169, !2170, !2171}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2159, file: !2154, line: 96, baseType: !865, size: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2159, file: !2154, line: 97, baseType: !2163, size: 64, offset: 64)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2154, line: 60, baseType: !2165)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{null, !2152}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2159, file: !2154, line: 98, baseType: !2163, size: 64, offset: 128)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2159, file: !2154, line: 99, baseType: !689, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2159, file: !2154, line: 100, baseType: !689, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2159, file: !2154, line: 101, baseType: !1127, size: 128, align: 64, offset: 256)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2159, file: !2154, line: 102, baseType: !2152, size: 64, offset: 384)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2139, file: !31, line: 113, baseType: !2153, size: 128, offset: 448)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2139, file: !31, line: 114, baseType: !2174, size: 192, offset: 576)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2175, line: 26, size: 192, elements: !2176)
!2175 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!2176 = !{!2177, !2178}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2174, file: !2175, line: 27, baseType: !7, size: 32)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2174, file: !2175, line: 28, baseType: !2179, size: 128, offset: 64)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2180, line: 43, size: 128, elements: !2181)
!2180 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!2181 = !{!2182, !2183}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2179, file: !2180, line: 44, baseType: !346)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2179, file: !2180, line: 45, baseType: !273, size: 128)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2139, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2139, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2139, file: !31, line: 117, baseType: !2187, size: 64, offset: 832)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2189)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2190)
!2190 = !{!2191, !2192, !2196, !2197}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2189, file: !31, line: 73, baseType: !2027, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2189, file: !31, line: 78, baseType: !2193, size: 64, offset: 64)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{null, !2138}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2189, file: !31, line: 83, baseType: !2193, size: 64, offset: 128)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2189, file: !31, line: 89, baseType: !484, size: 64, offset: 192)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2139, file: !31, line: 118, baseType: !233, size: 64, offset: 896)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2139, file: !31, line: 119, baseType: !207, size: 32, offset: 960)
!2200 = !DIDerivedType(tag: DW_TAG_member, scope: !2139, file: !31, line: 120, baseType: !2201, size: 128, offset: 1024)
!2201 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2139, file: !31, line: 120, size: 128, elements: !2202)
!2202 = !{!2203, !2209}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2201, file: !31, line: 121, baseType: !2204, size: 128)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2205, line: 6, size: 128, elements: !2206)
!2205 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2206 = !{!2207, !2208}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2204, file: !2205, line: 7, baseType: !280, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2204, file: !2205, line: 8, baseType: !280, size: 64, offset: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2201, file: !31, line: 122, baseType: !2210)
!2210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2204, elements: !1818)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2135, file: !431, line: 162, baseType: !233, size: 64, offset: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !523, file: !431, line: 176, baseType: !1127, size: 128, align: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, scope: !519, file: !431, line: 179, baseType: !2214, size: 32, offset: 384)
!2214 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !519, file: !431, line: 179, size: 32, elements: !2215)
!2215 = !{!2216, !2217, !2218, !2219}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2214, file: !431, line: 184, baseType: !240, size: 32)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2214, file: !431, line: 192, baseType: !7, size: 32)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2214, file: !431, line: 194, baseType: !7, size: 32)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2214, file: !431, line: 195, baseType: !207, size: 32)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !519, file: !431, line: 199, baseType: !240, size: 32, offset: 416)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !489, file: !14, line: 522, baseType: !518, size: 64, offset: 512)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !489, file: !14, line: 528, baseType: !2223, size: 64, offset: 576)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !489, file: !14, line: 532, baseType: !2225, size: 64, offset: 640)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !489, file: !14, line: 536, baseType: !2126, size: 64, offset: 704)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !468, file: !14, line: 563, baseType: !2228, size: 64, offset: 320)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{!487, !488, !13}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !468, file: !14, line: 565, baseType: !2232, size: 64, offset: 384)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{null, !488, !216, !216}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !468, file: !14, line: 567, baseType: !2236, size: 64, offset: 448)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{!216, !437}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !468, file: !14, line: 571, baseType: !484, size: 64, offset: 512)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !468, file: !14, line: 574, baseType: !484, size: 64, offset: 576)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !468, file: !14, line: 579, baseType: !2242, size: 64, offset: 640)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{!207, !437, !216, !233, !207, !207}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !468, file: !14, line: 585, baseType: !2246, size: 64, offset: 704)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{!644, !437}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !468, file: !14, line: 615, baseType: !2250, size: 64, offset: 768)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!518, !437, !216}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !438, file: !431, line: 359, baseType: !216, size: 64, offset: 1216)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !438, file: !431, line: 361, baseType: !1325, size: 64, offset: 1280)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !438, file: !431, line: 362, baseType: !233, size: 64, offset: 1344)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !438, file: !431, line: 365, baseType: !865, size: 64, offset: 1408)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !438, file: !431, line: 373, baseType: !2258, offset: 1472)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !431, line: 296, elements: !289)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !434, file: !431, line: 391, baseType: !392, size: 64, offset: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !434, file: !431, line: 392, baseType: !280, size: 64, offset: 128)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !434, file: !431, line: 394, baseType: !1562, size: 64, offset: 192)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !434, file: !431, line: 398, baseType: !216, size: 64, offset: 256)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !434, file: !431, line: 399, baseType: !216, size: 64, offset: 320)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !434, file: !431, line: 405, baseType: !216, size: 64, offset: 384)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !434, file: !431, line: 406, baseType: !216, size: 64, offset: 448)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !434, file: !431, line: 407, baseType: !2267, size: 64, offset: 512)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !449, line: 286, baseType: !2269)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !449, line: 286, size: 64, elements: !2270)
!2270 = !{!2271}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2269, file: !449, line: 286, baseType: !2272, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !454, line: 18, baseType: !216)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !434, file: !431, line: 416, baseType: !240, size: 32, offset: 576)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !434, file: !431, line: 428, baseType: !240, size: 32, offset: 608)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !434, file: !431, line: 437, baseType: !240, size: 32, offset: 640)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !434, file: !431, line: 447, baseType: !240, size: 32, offset: 672)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !434, file: !431, line: 450, baseType: !865, size: 64, offset: 704)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !434, file: !431, line: 452, baseType: !207, size: 32, offset: 768)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !434, file: !431, line: 454, baseType: !615, offset: 800)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !434, file: !431, line: 457, baseType: !1032, size: 256, offset: 832)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !434, file: !431, line: 459, baseType: !273, size: 128, offset: 1088)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !434, file: !431, line: 466, baseType: !216, size: 64, offset: 1216)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !434, file: !431, line: 467, baseType: !216, size: 64, offset: 1280)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !434, file: !431, line: 469, baseType: !216, size: 64, offset: 1344)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !434, file: !431, line: 470, baseType: !216, size: 64, offset: 1408)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !434, file: !431, line: 471, baseType: !867, size: 64, offset: 1472)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !434, file: !431, line: 472, baseType: !216, size: 64, offset: 1536)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !434, file: !431, line: 473, baseType: !216, size: 64, offset: 1600)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !434, file: !431, line: 474, baseType: !216, size: 64, offset: 1664)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !434, file: !431, line: 475, baseType: !216, size: 64, offset: 1728)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !434, file: !431, line: 477, baseType: !615, offset: 1792)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !434, file: !431, line: 478, baseType: !216, size: 64, offset: 1792)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !434, file: !431, line: 478, baseType: !216, size: 64, offset: 1856)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !434, file: !431, line: 478, baseType: !216, size: 64, offset: 1920)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !434, file: !431, line: 478, baseType: !216, size: 64, offset: 1984)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !434, file: !431, line: 479, baseType: !216, size: 64, offset: 2048)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !434, file: !431, line: 479, baseType: !216, size: 64, offset: 2112)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !434, file: !431, line: 479, baseType: !216, size: 64, offset: 2176)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !434, file: !431, line: 480, baseType: !216, size: 64, offset: 2240)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !434, file: !431, line: 480, baseType: !216, size: 64, offset: 2304)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !434, file: !431, line: 480, baseType: !216, size: 64, offset: 2368)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !434, file: !431, line: 480, baseType: !216, size: 64, offset: 2432)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !434, file: !431, line: 482, baseType: !2304, size: 2816, offset: 2496)
!2304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 2816, elements: !2305)
!2305 = !{!2306}
!2306 = !DISubrange(count: 44)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !434, file: !431, line: 488, baseType: !2308, size: 256, offset: 5312)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !2309, line: 60, size: 256, elements: !2310)
!2309 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!2310 = !{!2311}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2308, file: !2309, line: 61, baseType: !2312, size: 256)
!2312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !865, size: 256, elements: !1622)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !434, file: !431, line: 490, baseType: !2314, size: 64, offset: 5568)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !431, line: 490, flags: DIFlagFwdDecl)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !434, file: !431, line: 493, baseType: !2317, size: 896, offset: 5632)
!2317 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2318, line: 53, baseType: !2319)
!2318 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2318, line: 13, size: 896, elements: !2320)
!2320 = !{!2321, !2322, !2323, !2324, !2327, !2328, !2329, !2330, !2350, !2351, !2352}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2319, file: !2318, line: 18, baseType: !280, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2319, file: !2318, line: 28, baseType: !867, size: 64, offset: 64)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2319, file: !2318, line: 31, baseType: !1032, size: 256, offset: 128)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2319, file: !2318, line: 32, baseType: !2325, size: 64, offset: 384)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2318, line: 32, flags: DIFlagFwdDecl)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !2319, file: !2318, line: 37, baseType: !210, size: 16, offset: 448)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2319, file: !2318, line: 40, baseType: !861, size: 192, offset: 512)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2319, file: !2318, line: 41, baseType: !233, size: 64, offset: 704)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2319, file: !2318, line: 42, baseType: !2331, size: 64, offset: 768)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2333)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2334, line: 13, size: 896, elements: !2335)
!2334 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!2335 = !{!2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2333, file: !2334, line: 14, baseType: !233, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2333, file: !2334, line: 15, baseType: !216, size: 64, offset: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2333, file: !2334, line: 17, baseType: !216, size: 64, offset: 128)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2333, file: !2334, line: 17, baseType: !216, size: 64, offset: 192)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2333, file: !2334, line: 19, baseType: !231, size: 64, offset: 256)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2333, file: !2334, line: 21, baseType: !231, size: 64, offset: 320)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2333, file: !2334, line: 22, baseType: !231, size: 64, offset: 384)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2333, file: !2334, line: 23, baseType: !231, size: 64, offset: 448)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2333, file: !2334, line: 24, baseType: !231, size: 64, offset: 512)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2333, file: !2334, line: 25, baseType: !231, size: 64, offset: 576)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2333, file: !2334, line: 26, baseType: !231, size: 64, offset: 640)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2333, file: !2334, line: 27, baseType: !231, size: 64, offset: 704)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2333, file: !2334, line: 28, baseType: !231, size: 64, offset: 768)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2333, file: !2334, line: 29, baseType: !231, size: 64, offset: 832)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2319, file: !2318, line: 44, baseType: !240, size: 32, offset: 832)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2319, file: !2318, line: 50, baseType: !1381, size: 16, offset: 864)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2319, file: !2318, line: 51, baseType: !2353, size: 16, offset: 880)
!2353 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !219, line: 18, baseType: !2354)
!2354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !221, line: 23, baseType: !1704)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !434, file: !431, line: 495, baseType: !216, size: 64, offset: 6528)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !434, file: !431, line: 497, baseType: !2357, size: 64, offset: 6592)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !431, line: 381, size: 384, elements: !2359)
!2359 = !{!2360, !2361, !2367}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2358, file: !431, line: 382, baseType: !240, size: 32)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2358, file: !431, line: 383, baseType: !2362, size: 128, offset: 64)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !431, line: 376, size: 128, elements: !2363)
!2363 = !{!2364, !2365}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2362, file: !431, line: 377, baseType: !224, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2362, file: !431, line: 378, baseType: !2366, size: 64, offset: 64)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2358, file: !431, line: 384, baseType: !2174, size: 192, offset: 192)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !434, file: !431, line: 500, baseType: !615, offset: 6656)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !434, file: !431, line: 501, baseType: !2370, size: 64, offset: 6656)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !431, line: 387, flags: DIFlagFwdDecl)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !434, file: !431, line: 516, baseType: !1197, size: 64, offset: 6720)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !434, file: !431, line: 519, baseType: !1325, size: 64, offset: 6784)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !434, file: !431, line: 521, baseType: !2375, size: 64, offset: 6848)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !431, line: 521, flags: DIFlagFwdDecl)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !434, file: !431, line: 545, baseType: !240, size: 32, offset: 6912)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !434, file: !431, line: 548, baseType: !689, size: 8, offset: 6944)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !434, file: !431, line: 550, baseType: !2380, offset: 6952)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2381, line: 142, elements: !289)
!2381 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !434, file: !431, line: 554, baseType: !1217, size: 256, offset: 6976)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !434, file: !431, line: 557, baseType: !218, size: 32, offset: 7232)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !430, file: !431, line: 565, baseType: !2385, offset: 7296)
!2385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, elements: !2386)
!2386 = !{!2387}
!2387 = !DISubrange(count: -1)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !225, file: !226, line: 758, baseType: !429, size: 64, offset: 3968)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !225, file: !226, line: 761, baseType: !2390, size: 320, offset: 4032)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !2309, line: 34, size: 320, elements: !2391)
!2391 = !{!2392, !2393}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !2390, file: !2309, line: 35, baseType: !280, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !2390, file: !2309, line: 36, baseType: !2394, size: 256, offset: 64)
!2394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !437, size: 256, elements: !1622)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !225, file: !226, line: 766, baseType: !207, size: 32, offset: 4352)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !225, file: !226, line: 767, baseType: !207, size: 32, offset: 4384)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !225, file: !226, line: 768, baseType: !207, size: 32, offset: 4416)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !225, file: !226, line: 770, baseType: !207, size: 32, offset: 4448)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !225, file: !226, line: 772, baseType: !216, size: 64, offset: 4480)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !225, file: !226, line: 775, baseType: !7, size: 32, offset: 4544)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !225, file: !226, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !225, file: !226, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !225, file: !226, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !225, file: !226, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !225, file: !226, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !225, file: !226, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !225, file: !226, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !225, file: !226, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !225, file: !226, line: 831, baseType: !216, size: 64, offset: 4672)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !225, file: !226, line: 833, baseType: !2411, size: 384, offset: 4736)
!2411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !2412)
!2412 = !{!2413, !2418}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2411, file: !25, line: 26, baseType: !2414, size: 64)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!231, !2417}
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2418 = !DIDerivedType(tag: DW_TAG_member, scope: !2411, file: !25, line: 27, baseType: !2419, size: 320, offset: 64)
!2419 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2411, file: !25, line: 27, size: 320, elements: !2420)
!2420 = !{!2421, !2431, !2456}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2419, file: !25, line: 36, baseType: !2422, size: 320)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2419, file: !25, line: 29, size: 320, elements: !2423)
!2423 = !{!2424, !2426, !2427, !2428, !2429, !2430}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2422, file: !25, line: 30, baseType: !2425, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2422, file: !25, line: 31, baseType: !218, size: 32, offset: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2422, file: !25, line: 32, baseType: !218, size: 32, offset: 96)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2422, file: !25, line: 33, baseType: !218, size: 32, offset: 128)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2422, file: !25, line: 34, baseType: !280, size: 64, offset: 192)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2422, file: !25, line: 35, baseType: !2425, size: 64, offset: 256)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2419, file: !25, line: 46, baseType: !2432, size: 192)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2419, file: !25, line: 38, size: 192, elements: !2433)
!2433 = !{!2434, !2435, !2436, !2455}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2432, file: !25, line: 39, baseType: !371, size: 32)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2432, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!2436 = !DIDerivedType(tag: DW_TAG_member, scope: !2432, file: !25, line: 41, baseType: !2437, size: 64, offset: 64)
!2437 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2432, file: !25, line: 41, size: 64, elements: !2438)
!2438 = !{!2439, !2447}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2437, file: !25, line: 42, baseType: !2440, size: 64)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2442, line: 7, size: 128, elements: !2443)
!2442 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!2443 = !{!2444, !2446}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2441, file: !2442, line: 8, baseType: !2445, size: 64)
!2445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !373, line: 93, baseType: !313)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2441, file: !2442, line: 9, baseType: !313, size: 64, offset: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2437, file: !25, line: 43, baseType: !2448, size: 64)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2450, line: 7, size: 64, elements: !2451)
!2450 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!2451 = !{!2452, !2454}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2449, file: !2450, line: 8, baseType: !2453, size: 32)
!2453 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2450, line: 5, baseType: !1678)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2449, file: !2450, line: 9, baseType: !1678, size: 32, offset: 32)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2432, file: !25, line: 45, baseType: !280, size: 64, offset: 128)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2419, file: !25, line: 54, baseType: !2457, size: 256)
!2457 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2419, file: !25, line: 48, size: 256, elements: !2458)
!2458 = !{!2459, !2462, !2463, !2464, !2465}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2457, file: !25, line: 49, baseType: !2460, size: 64)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2457, file: !25, line: 50, baseType: !207, size: 32, offset: 64)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2457, file: !25, line: 51, baseType: !207, size: 32, offset: 96)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2457, file: !25, line: 52, baseType: !216, size: 64, offset: 128)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2457, file: !25, line: 53, baseType: !216, size: 64, offset: 192)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !225, file: !226, line: 835, baseType: !2467, size: 32, offset: 5120)
!2467 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !241, line: 22, baseType: !2468)
!2468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !373, line: 28, baseType: !207)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !225, file: !226, line: 836, baseType: !2467, size: 32, offset: 5152)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !225, file: !226, line: 840, baseType: !216, size: 64, offset: 5184)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !225, file: !226, line: 849, baseType: !224, size: 64, offset: 5248)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !225, file: !226, line: 852, baseType: !224, size: 64, offset: 5312)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !225, file: !226, line: 857, baseType: !273, size: 128, offset: 5376)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !225, file: !226, line: 858, baseType: !273, size: 128, offset: 5504)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !225, file: !226, line: 859, baseType: !224, size: 64, offset: 5632)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !225, file: !226, line: 867, baseType: !273, size: 128, offset: 5696)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !225, file: !226, line: 868, baseType: !273, size: 128, offset: 5824)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !225, file: !226, line: 871, baseType: !1614, size: 64, offset: 5952)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !225, file: !226, line: 872, baseType: !2480, size: 512, offset: 6016)
!2480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !745, size: 512, elements: !1622)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !225, file: !226, line: 873, baseType: !273, size: 128, offset: 6528)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !225, file: !226, line: 874, baseType: !273, size: 128, offset: 6656)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !225, file: !226, line: 876, baseType: !2484, size: 64, offset: 6784)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !225, file: !226, line: 879, baseType: !813, size: 64, offset: 6848)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !225, file: !226, line: 882, baseType: !813, size: 64, offset: 6912)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !225, file: !226, line: 884, baseType: !280, size: 64, offset: 6976)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !225, file: !226, line: 885, baseType: !280, size: 64, offset: 7040)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !225, file: !226, line: 890, baseType: !280, size: 64, offset: 7104)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !225, file: !226, line: 891, baseType: !2491, size: 128, offset: 7168)
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !226, line: 242, size: 128, elements: !2492)
!2492 = !{!2493, !2494, !2495}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2491, file: !226, line: 244, baseType: !280, size: 64)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2491, file: !226, line: 245, baseType: !280, size: 64, offset: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2491, file: !226, line: 246, baseType: !346, offset: 128)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !225, file: !226, line: 900, baseType: !216, size: 64, offset: 7296)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !225, file: !226, line: 901, baseType: !216, size: 64, offset: 7360)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !225, file: !226, line: 904, baseType: !280, size: 64, offset: 7424)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !225, file: !226, line: 907, baseType: !280, size: 64, offset: 7488)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !225, file: !226, line: 910, baseType: !216, size: 64, offset: 7552)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !225, file: !226, line: 911, baseType: !216, size: 64, offset: 7616)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !225, file: !226, line: 914, baseType: !2503, size: 640, offset: 7680)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2504, line: 123, size: 640, elements: !2505)
!2504 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!2505 = !{!2506, !2512, !2513}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2503, file: !2504, line: 124, baseType: !2507, size: 576)
!2507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2508, size: 576, elements: !757)
!2508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2504, line: 108, size: 192, elements: !2509)
!2509 = !{!2510, !2511}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2508, file: !2504, line: 109, baseType: !280, size: 64)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2508, file: !2504, line: 110, baseType: !386, size: 128, offset: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2503, file: !2504, line: 125, baseType: !7, size: 32, offset: 576)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2503, file: !2504, line: 126, baseType: !7, size: 32, offset: 608)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !225, file: !226, line: 917, baseType: !2515, size: 192, offset: 8320)
!2515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2504, line: 134, size: 192, elements: !2516)
!2516 = !{!2517, !2518}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2515, file: !2504, line: 135, baseType: !1127, size: 128, align: 64)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2515, file: !2504, line: 136, baseType: !7, size: 32, offset: 128)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !225, file: !226, line: 923, baseType: !1640, size: 64, offset: 8512)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !225, file: !226, line: 926, baseType: !1640, size: 64, offset: 8576)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !225, file: !226, line: 929, baseType: !1640, size: 64, offset: 8640)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !225, file: !226, line: 933, baseType: !1670, size: 64, offset: 8704)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !225, file: !226, line: 943, baseType: !2524, size: 128, offset: 8768)
!2524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !646, size: 128, elements: !1161)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !225, file: !226, line: 945, baseType: !2526, size: 64, offset: 8896)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !226, line: 49, flags: DIFlagFwdDecl)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !225, file: !226, line: 956, baseType: !2529, size: 64, offset: 8960)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !226, line: 45, flags: DIFlagFwdDecl)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !225, file: !226, line: 959, baseType: !2532, size: 64, offset: 9024)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !226, line: 959, flags: DIFlagFwdDecl)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !225, file: !226, line: 962, baseType: !2535, size: 64, offset: 9088)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !226, line: 66, flags: DIFlagFwdDecl)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !225, file: !226, line: 966, baseType: !2538, size: 64, offset: 9152)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2540, line: 35, flags: DIFlagFwdDecl)
!2540 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !225, file: !226, line: 969, baseType: !2542, size: 64, offset: 9216)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2544, line: 82, size: 7296, elements: !2545)
!2544 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!2545 = !{!2546, !2547, !2548, !2549, !2550, !2551, !2552, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2581, !2590, !2591, !2593, !2594, !2595, !2598, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2628, !2629, !2636, !2637, !2638, !2639, !2640, !2641}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2543, file: !2544, line: 83, baseType: !235, size: 32)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2543, file: !2544, line: 84, baseType: !240, size: 32, offset: 32)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2543, file: !2544, line: 85, baseType: !207, size: 32, offset: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2543, file: !2544, line: 86, baseType: !273, size: 128, offset: 128)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2543, file: !2544, line: 88, baseType: !1108, size: 128, offset: 256)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2543, file: !2544, line: 91, baseType: !224, size: 64, offset: 384)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2543, file: !2544, line: 94, baseType: !2553, size: 192, offset: 448)
!2553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2554, line: 30, size: 192, elements: !2555)
!2554 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!2555 = !{!2556, !2557}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2553, file: !2554, line: 31, baseType: !273, size: 128)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2553, file: !2554, line: 32, baseType: !2558, size: 64, offset: 128)
!2558 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2559, line: 25, baseType: !2560)
!2559 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2559, line: 23, size: 64, elements: !2561)
!2561 = !{!2562}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2560, file: !2559, line: 24, baseType: !421, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2543, file: !2544, line: 97, baseType: !741, size: 64, offset: 640)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2543, file: !2544, line: 100, baseType: !207, size: 32, offset: 704)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2543, file: !2544, line: 106, baseType: !207, size: 32, offset: 736)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !2543, file: !2544, line: 107, baseType: !224, size: 64, offset: 768)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2543, file: !2544, line: 110, baseType: !207, size: 32, offset: 832)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2543, file: !2544, line: 111, baseType: !7, size: 32, offset: 864)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2543, file: !2544, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2543, file: !2544, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !2543, file: !2544, line: 128, baseType: !207, size: 32, offset: 928)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2543, file: !2544, line: 129, baseType: !273, size: 128, offset: 960)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2543, file: !2544, line: 132, baseType: !321, size: 512, offset: 1088)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2543, file: !2544, line: 133, baseType: !329, size: 64, offset: 1600)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2543, file: !2544, line: 140, baseType: !2576, size: 256, offset: 1664)
!2576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2577, size: 256, elements: !1662)
!2577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2544, line: 38, size: 128, elements: !2578)
!2578 = !{!2579, !2580}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2577, file: !2544, line: 39, baseType: !280, size: 64)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2577, file: !2544, line: 40, baseType: !280, size: 64, offset: 64)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2543, file: !2544, line: 146, baseType: !2582, size: 192, offset: 1920)
!2582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2544, line: 66, size: 192, elements: !2583)
!2583 = !{!2584}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2582, file: !2544, line: 67, baseType: !2585, size: 192)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2544, line: 47, size: 192, elements: !2586)
!2586 = !{!2587, !2588, !2589}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2585, file: !2544, line: 48, baseType: !867, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2585, file: !2544, line: 49, baseType: !867, size: 64, offset: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2585, file: !2544, line: 50, baseType: !867, size: 64, offset: 128)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2543, file: !2544, line: 150, baseType: !2503, size: 640, offset: 2112)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2543, file: !2544, line: 153, baseType: !2592, size: 256, offset: 2752)
!2592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1614, size: 256, elements: !1622)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2543, file: !2544, line: 159, baseType: !1614, size: 64, offset: 3008)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2543, file: !2544, line: 162, baseType: !207, size: 32, offset: 3072)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2543, file: !2544, line: 164, baseType: !2596, size: 64, offset: 3136)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2544, line: 164, flags: DIFlagFwdDecl)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2543, file: !2544, line: 175, baseType: !2599, size: 32, offset: 3200)
!2599 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !376, line: 805, baseType: !2600)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !376, line: 798, size: 32, elements: !2601)
!2601 = !{!2602, !2603}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2600, file: !376, line: 803, baseType: !571, size: 32)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2600, file: !376, line: 804, baseType: !615, offset: 32)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2543, file: !2544, line: 176, baseType: !280, size: 64, offset: 3264)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2543, file: !2544, line: 176, baseType: !280, size: 64, offset: 3328)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2543, file: !2544, line: 176, baseType: !280, size: 64, offset: 3392)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2543, file: !2544, line: 176, baseType: !280, size: 64, offset: 3456)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2543, file: !2544, line: 177, baseType: !280, size: 64, offset: 3520)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2543, file: !2544, line: 178, baseType: !280, size: 64, offset: 3584)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2543, file: !2544, line: 179, baseType: !2491, size: 128, offset: 3648)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2543, file: !2544, line: 180, baseType: !216, size: 64, offset: 3776)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2543, file: !2544, line: 180, baseType: !216, size: 64, offset: 3840)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2543, file: !2544, line: 180, baseType: !216, size: 64, offset: 3904)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2543, file: !2544, line: 180, baseType: !216, size: 64, offset: 3968)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2543, file: !2544, line: 181, baseType: !216, size: 64, offset: 4032)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2543, file: !2544, line: 181, baseType: !216, size: 64, offset: 4096)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2543, file: !2544, line: 181, baseType: !216, size: 64, offset: 4160)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2543, file: !2544, line: 181, baseType: !216, size: 64, offset: 4224)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2543, file: !2544, line: 182, baseType: !216, size: 64, offset: 4288)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2543, file: !2544, line: 182, baseType: !216, size: 64, offset: 4352)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2543, file: !2544, line: 182, baseType: !216, size: 64, offset: 4416)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2543, file: !2544, line: 182, baseType: !216, size: 64, offset: 4480)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2543, file: !2544, line: 183, baseType: !216, size: 64, offset: 4544)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2543, file: !2544, line: 183, baseType: !216, size: 64, offset: 4608)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2543, file: !2544, line: 184, baseType: !2626, offset: 4672)
!2626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2627, line: 12, elements: !289)
!2627 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2543, file: !2544, line: 192, baseType: !282, size: 64, offset: 4672)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2543, file: !2544, line: 203, baseType: !2630, size: 2048, offset: 4736)
!2630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2631, size: 2048, elements: !1161)
!2631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2632, line: 43, size: 128, elements: !2633)
!2632 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2633 = !{!2634, !2635}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2631, file: !2632, line: 44, baseType: !1359, size: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2631, file: !2632, line: 45, baseType: !1359, size: 64, offset: 64)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2543, file: !2544, line: 220, baseType: !689, size: 8, offset: 6784)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2543, file: !2544, line: 221, baseType: !1704, size: 16, offset: 6800)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2543, file: !2544, line: 222, baseType: !1704, size: 16, offset: 6816)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2543, file: !2544, line: 224, baseType: !429, size: 64, offset: 6848)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2543, file: !2544, line: 227, baseType: !861, size: 192, offset: 6912)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !2543, file: !2544, line: 233, baseType: !861, size: 192, offset: 7104)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !225, file: !226, line: 970, baseType: !2643, size: 64, offset: 9280)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2544, line: 20, size: 16576, elements: !2645)
!2645 = !{!2646, !2647, !2648, !2649}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2644, file: !2544, line: 21, baseType: !615)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2644, file: !2544, line: 22, baseType: !235, size: 32)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2644, file: !2544, line: 23, baseType: !1108, size: 128, offset: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2644, file: !2544, line: 24, baseType: !2650, size: 16384, offset: 192)
!2650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2651, size: 16384, elements: !2671)
!2651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2554, line: 49, size: 256, elements: !2652)
!2652 = !{!2653}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2651, file: !2554, line: 50, baseType: !2654, size: 256)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2554, line: 35, size: 256, elements: !2655)
!2655 = !{!2656, !2663, !2664, !2670}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2654, file: !2554, line: 37, baseType: !2657, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2658, line: 19, baseType: !2659)
!2658 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2660 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2658, line: 18, baseType: !2661)
!2661 = !DISubroutineType(types: !2662)
!2662 = !{null, !207}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2654, file: !2554, line: 38, baseType: !216, size: 64, offset: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2654, file: !2554, line: 44, baseType: !2665, size: 64, offset: 128)
!2665 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2658, line: 22, baseType: !2666)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2658, line: 21, baseType: !2668)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{null}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2654, file: !2554, line: 46, baseType: !2558, size: 64, offset: 192)
!2671 = !{!2672}
!2672 = !DISubrange(count: 64)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !225, file: !226, line: 971, baseType: !2558, size: 64, offset: 9344)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !225, file: !226, line: 972, baseType: !2558, size: 64, offset: 9408)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !225, file: !226, line: 974, baseType: !2558, size: 64, offset: 9472)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !225, file: !226, line: 975, baseType: !2553, size: 192, offset: 9536)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !225, file: !226, line: 976, baseType: !216, size: 64, offset: 9728)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !225, file: !226, line: 977, baseType: !1357, size: 64, offset: 9792)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !225, file: !226, line: 978, baseType: !7, size: 32, offset: 9856)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !225, file: !226, line: 980, baseType: !1130, size: 64, offset: 9920)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !225, file: !226, line: 989, baseType: !2682, size: 128, offset: 9984)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2683, line: 35, size: 128, elements: !2684)
!2683 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2684 = !{!2685, !2686, !2687}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2682, file: !2683, line: 36, baseType: !207, size: 32)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2682, file: !2683, line: 37, baseType: !240, size: 32, offset: 32)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2682, file: !2683, line: 38, baseType: !2688, size: 64, offset: 64)
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2689 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2683, line: 23, flags: DIFlagFwdDecl)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !225, file: !226, line: 992, baseType: !280, size: 64, offset: 10112)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !225, file: !226, line: 993, baseType: !280, size: 64, offset: 10176)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !225, file: !226, line: 996, baseType: !615, offset: 10240)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !225, file: !226, line: 999, baseType: !346, offset: 10240)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !225, file: !226, line: 1001, baseType: !2695, size: 64, offset: 10240)
!2695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !226, line: 636, size: 64, elements: !2696)
!2696 = !{!2697}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2695, file: !226, line: 637, baseType: !2698, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !225, file: !226, line: 1005, baseType: !389, size: 128, offset: 10304)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !225, file: !226, line: 1007, baseType: !224, size: 64, offset: 10432)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !225, file: !226, line: 1009, baseType: !2702, size: 64, offset: 10496)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !226, line: 1009, flags: DIFlagFwdDecl)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !225, file: !226, line: 1043, baseType: !233, size: 64, offset: 10560)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !225, file: !226, line: 1046, baseType: !2706, size: 64, offset: 10624)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !226, line: 41, flags: DIFlagFwdDecl)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !225, file: !226, line: 1050, baseType: !2709, size: 64, offset: 10688)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !226, line: 42, flags: DIFlagFwdDecl)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !225, file: !226, line: 1054, baseType: !2712, size: 64, offset: 10752)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !226, line: 55, flags: DIFlagFwdDecl)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !225, file: !226, line: 1056, baseType: !1055, size: 64, offset: 10816)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !225, file: !226, line: 1058, baseType: !2716, size: 64, offset: 10880)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2718, line: 99, size: 704, elements: !2719)
!2718 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2719 = !{!2720, !2721, !2722, !2723, !2724, !2725, !2726, !2745, !2746}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2717, file: !2718, line: 100, baseType: !865, size: 64)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2717, file: !2718, line: 101, baseType: !240, size: 32, offset: 64)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2717, file: !2718, line: 102, baseType: !240, size: 32, offset: 96)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2717, file: !2718, line: 105, baseType: !615, offset: 128)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2717, file: !2718, line: 107, baseType: !210, size: 16, offset: 128)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2717, file: !2718, line: 109, baseType: !1960, size: 128, offset: 192)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2717, file: !2718, line: 110, baseType: !2727, size: 64, offset: 320)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2718, line: 73, size: 448, elements: !2729)
!2729 = !{!2730, !2733, !2734, !2739, !2744}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2728, file: !2718, line: 74, baseType: !2731, size: 64)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2718, line: 74, flags: DIFlagFwdDecl)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2728, file: !2718, line: 75, baseType: !2716, size: 64, offset: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, scope: !2728, file: !2718, line: 83, baseType: !2735, size: 128, offset: 128)
!2735 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2728, file: !2718, line: 83, size: 128, elements: !2736)
!2736 = !{!2737, !2738}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2735, file: !2718, line: 84, baseType: !273, size: 128)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2735, file: !2718, line: 85, baseType: !2093, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, scope: !2728, file: !2718, line: 87, baseType: !2740, size: 128, offset: 256)
!2740 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2728, file: !2718, line: 87, size: 128, elements: !2741)
!2741 = !{!2742, !2743}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2740, file: !2718, line: 88, baseType: !745, size: 128)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2740, file: !2718, line: 89, baseType: !1127, size: 128, align: 64)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2728, file: !2718, line: 92, baseType: !7, size: 32, offset: 384)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2717, file: !2718, line: 111, baseType: !741, size: 64, offset: 384)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2717, file: !2718, line: 113, baseType: !1217, size: 256, offset: 448)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !225, file: !226, line: 1061, baseType: !2748, size: 64, offset: 10944)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !226, line: 43, flags: DIFlagFwdDecl)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !225, file: !226, line: 1064, baseType: !216, size: 64, offset: 11008)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !225, file: !226, line: 1065, baseType: !2752, size: 64, offset: 11072)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2554, line: 14, baseType: !2754)
!2754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2554, line: 12, size: 384, elements: !2755)
!2755 = !{!2756}
!2756 = !DIDerivedType(tag: DW_TAG_member, scope: !2754, file: !2554, line: 13, baseType: !2757, size: 384)
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2754, file: !2554, line: 13, size: 384, elements: !2758)
!2758 = !{!2759, !2760, !2761, !2762}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2757, file: !2554, line: 13, baseType: !207, size: 32)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2757, file: !2554, line: 13, baseType: !207, size: 32, offset: 32)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2757, file: !2554, line: 13, baseType: !207, size: 32, offset: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2757, file: !2554, line: 13, baseType: !2763, size: 256, offset: 128)
!2763 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2764, line: 32, size: 256, elements: !2765)
!2764 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2765 = !{!2766, !2771, !2784, !2790, !2799, !2819, !2824}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2763, file: !2764, line: 37, baseType: !2767, size: 64)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2763, file: !2764, line: 34, size: 64, elements: !2768)
!2768 = !{!2769, !2770}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2767, file: !2764, line: 35, baseType: !2468, size: 32)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2767, file: !2764, line: 36, baseType: !547, size: 32, offset: 32)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2763, file: !2764, line: 45, baseType: !2772, size: 192)
!2772 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2763, file: !2764, line: 40, size: 192, elements: !2773)
!2773 = !{!2774, !2776, !2777, !2783}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2772, file: !2764, line: 41, baseType: !2775, size: 32)
!2775 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !373, line: 95, baseType: !207)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2772, file: !2764, line: 42, baseType: !207, size: 32, offset: 32)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2772, file: !2764, line: 43, baseType: !2778, size: 64, offset: 64)
!2778 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2764, line: 11, baseType: !2779)
!2779 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2764, line: 8, size: 64, elements: !2780)
!2780 = !{!2781, !2782}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2779, file: !2764, line: 9, baseType: !207, size: 32)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2779, file: !2764, line: 10, baseType: !233, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2772, file: !2764, line: 44, baseType: !207, size: 32, offset: 128)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2763, file: !2764, line: 52, baseType: !2785, size: 128)
!2785 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2763, file: !2764, line: 48, size: 128, elements: !2786)
!2786 = !{!2787, !2788, !2789}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2785, file: !2764, line: 49, baseType: !2468, size: 32)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2785, file: !2764, line: 50, baseType: !547, size: 32, offset: 32)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2785, file: !2764, line: 51, baseType: !2778, size: 64, offset: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2763, file: !2764, line: 61, baseType: !2791, size: 256)
!2791 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2763, file: !2764, line: 55, size: 256, elements: !2792)
!2792 = !{!2793, !2794, !2795, !2796, !2798}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2791, file: !2764, line: 56, baseType: !2468, size: 32)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2791, file: !2764, line: 57, baseType: !547, size: 32, offset: 32)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2791, file: !2764, line: 58, baseType: !207, size: 32, offset: 64)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2791, file: !2764, line: 59, baseType: !2797, size: 64, offset: 128)
!2797 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !373, line: 94, baseType: !1356)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2791, file: !2764, line: 60, baseType: !2797, size: 64, offset: 192)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2763, file: !2764, line: 95, baseType: !2800, size: 256)
!2800 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2763, file: !2764, line: 64, size: 256, elements: !2801)
!2801 = !{!2802, !2803}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2800, file: !2764, line: 65, baseType: !233, size: 64)
!2803 = !DIDerivedType(tag: DW_TAG_member, scope: !2800, file: !2764, line: 77, baseType: !2804, size: 192, offset: 64)
!2804 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2800, file: !2764, line: 77, size: 192, elements: !2805)
!2805 = !{!2806, !2807, !2814}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2804, file: !2764, line: 82, baseType: !1704, size: 16)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2804, file: !2764, line: 88, baseType: !2808, size: 192)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2804, file: !2764, line: 84, size: 192, elements: !2809)
!2809 = !{!2810, !2812, !2813}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2808, file: !2764, line: 85, baseType: !2811, size: 64)
!2811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !646, size: 64, elements: !367)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2808, file: !2764, line: 86, baseType: !233, size: 64, offset: 64)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2808, file: !2764, line: 87, baseType: !233, size: 64, offset: 128)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2804, file: !2764, line: 93, baseType: !2815, size: 96)
!2815 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2804, file: !2764, line: 90, size: 96, elements: !2816)
!2816 = !{!2817, !2818}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2815, file: !2764, line: 91, baseType: !2811, size: 64)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2815, file: !2764, line: 92, baseType: !220, size: 32, offset: 64)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2763, file: !2764, line: 101, baseType: !2820, size: 128)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2763, file: !2764, line: 98, size: 128, elements: !2821)
!2821 = !{!2822, !2823}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2820, file: !2764, line: 99, baseType: !231, size: 64)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2820, file: !2764, line: 100, baseType: !207, size: 32, offset: 64)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2763, file: !2764, line: 108, baseType: !2825, size: 128)
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2763, file: !2764, line: 104, size: 128, elements: !2826)
!2826 = !{!2827, !2828, !2829}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2825, file: !2764, line: 105, baseType: !233, size: 64)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2825, file: !2764, line: 106, baseType: !207, size: 32, offset: 64)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2825, file: !2764, line: 107, baseType: !7, size: 32, offset: 96)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !225, file: !226, line: 1067, baseType: !2626, offset: 11136)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !225, file: !226, line: 1099, baseType: !2832, size: 64, offset: 11136)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !226, line: 56, flags: DIFlagFwdDecl)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !225, file: !226, line: 1103, baseType: !273, size: 128, offset: 11200)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !225, file: !226, line: 1104, baseType: !2836, size: 64, offset: 11328)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !226, line: 46, flags: DIFlagFwdDecl)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !225, file: !226, line: 1105, baseType: !861, size: 192, offset: 11392)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !225, file: !226, line: 1106, baseType: !7, size: 32, offset: 11584)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !225, file: !226, line: 1109, baseType: !2841, size: 128, offset: 11648)
!2841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2842, size: 128, elements: !1662)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !226, line: 51, flags: DIFlagFwdDecl)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !225, file: !226, line: 1110, baseType: !861, size: 192, offset: 11776)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !225, file: !226, line: 1111, baseType: !273, size: 128, offset: 11968)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !225, file: !226, line: 1173, baseType: !2847, size: 64, offset: 12096)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2849, line: 62, size: 256, align: 256, elements: !2850)
!2849 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2850 = !{!2851, !2852, !2853, !2858}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2848, file: !2849, line: 75, baseType: !220, size: 32)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2848, file: !2849, line: 90, baseType: !220, size: 32, offset: 32)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2848, file: !2849, line: 124, baseType: !2854, size: 64, offset: 64)
!2854 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2848, file: !2849, line: 109, size: 64, elements: !2855)
!2855 = !{!2856, !2857}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2854, file: !2849, line: 110, baseType: !281, size: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2854, file: !2849, line: 112, baseType: !281, size: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2848, file: !2849, line: 144, baseType: !220, size: 32, offset: 128)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !225, file: !226, line: 1174, baseType: !218, size: 32, offset: 12160)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !225, file: !226, line: 1179, baseType: !216, size: 64, offset: 12224)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !225, file: !226, line: 1182, baseType: !2862, size: 128, offset: 12288)
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2309, line: 76, size: 128, elements: !2863)
!2863 = !{!2864, !2869, !2870}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2862, file: !2309, line: 85, baseType: !2865, size: 64)
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2866, line: 7, size: 64, elements: !2867)
!2866 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2867 = !{!2868}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2865, file: !2866, line: 12, baseType: !418, size: 64)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2862, file: !2309, line: 88, baseType: !689, size: 8, offset: 64)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2862, file: !2309, line: 95, baseType: !689, size: 8, offset: 72)
!2871 = !DIDerivedType(tag: DW_TAG_member, scope: !225, file: !226, line: 1184, baseType: !2872, size: 128, offset: 12416)
!2872 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !225, file: !226, line: 1184, size: 128, elements: !2873)
!2873 = !{!2874, !2875}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2872, file: !226, line: 1185, baseType: !235, size: 32)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2872, file: !226, line: 1186, baseType: !1127, size: 128, align: 64)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !225, file: !226, line: 1190, baseType: !1574, size: 64, offset: 12544)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !225, file: !226, line: 1192, baseType: !2878, size: 128, offset: 12608)
!2878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2309, line: 64, size: 128, elements: !2879)
!2879 = !{!2880, !2881, !2882}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2878, file: !2309, line: 65, baseType: !518, size: 64)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2878, file: !2309, line: 67, baseType: !220, size: 32, offset: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2878, file: !2309, line: 68, baseType: !220, size: 32, offset: 96)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !225, file: !226, line: 1206, baseType: !207, size: 32, offset: 12736)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !225, file: !226, line: 1207, baseType: !207, size: 32, offset: 12768)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !225, file: !226, line: 1209, baseType: !216, size: 64, offset: 12800)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !225, file: !226, line: 1219, baseType: !280, size: 64, offset: 12864)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !225, file: !226, line: 1220, baseType: !280, size: 64, offset: 12928)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !225, file: !226, line: 1317, baseType: !207, size: 32, offset: 12992)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !225, file: !226, line: 1319, baseType: !224, size: 64, offset: 13056)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !225, file: !226, line: 1322, baseType: !2891, size: 64, offset: 13120)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2893, line: 56, size: 512, elements: !2894)
!2893 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2894 = !{!2895, !2896, !2897, !2898, !2899, !2900, !2901, !2903}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2892, file: !2893, line: 57, baseType: !2891, size: 64)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2892, file: !2893, line: 58, baseType: !233, size: 64, offset: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2892, file: !2893, line: 59, baseType: !216, size: 64, offset: 128)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2892, file: !2893, line: 60, baseType: !216, size: 64, offset: 192)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2892, file: !2893, line: 61, baseType: !2008, size: 64, offset: 256)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2892, file: !2893, line: 62, baseType: !7, size: 32, offset: 320)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2892, file: !2893, line: 63, baseType: !2902, size: 64, offset: 384)
!2902 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !241, line: 153, baseType: !280)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2892, file: !2893, line: 64, baseType: !2904, size: 64, offset: 448)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !225, file: !226, line: 1326, baseType: !235, size: 32, offset: 13184)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !225, file: !226, line: 1342, baseType: !233, size: 64, offset: 13248)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !225, file: !226, line: 1343, baseType: !281, size: 64, offset: 13312)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !225, file: !226, line: 1344, baseType: !280, size: 64, offset: 13376)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !225, file: !226, line: 1345, baseType: !281, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !225, file: !226, line: 1346, baseType: !281, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !225, file: !226, line: 1347, baseType: !281, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !225, file: !226, line: 1348, baseType: !1127, size: 128, align: 64, offset: 13504)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !225, file: !226, line: 1358, baseType: !2915, size: 34816, offset: 13824)
!2915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2916, line: 485, size: 34816, elements: !2917)
!2916 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2917 = !{!2918, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2947, !2948, !2949, !2950, !2951, !2952, !2955, !2956, !2957}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2915, file: !2916, line: 487, baseType: !2919, size: 192)
!2919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2920, size: 192, elements: !757)
!2920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2921, line: 16, size: 64, elements: !2922)
!2921 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2922 = !{!2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2920, file: !2921, line: 17, baseType: !1381, size: 16)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2920, file: !2921, line: 18, baseType: !1381, size: 16, offset: 16)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2920, file: !2921, line: 19, baseType: !1381, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2920, file: !2921, line: 19, baseType: !1381, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2920, file: !2921, line: 19, baseType: !1381, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2920, file: !2921, line: 19, baseType: !1381, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2920, file: !2921, line: 19, baseType: !1381, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2920, file: !2921, line: 20, baseType: !1381, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2920, file: !2921, line: 20, baseType: !1381, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2920, file: !2921, line: 20, baseType: !1381, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2920, file: !2921, line: 20, baseType: !1381, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2920, file: !2921, line: 20, baseType: !1381, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2920, file: !2921, line: 20, baseType: !1381, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2915, file: !2916, line: 491, baseType: !216, size: 64, offset: 192)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2915, file: !2916, line: 495, baseType: !210, size: 16, offset: 256)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2915, file: !2916, line: 496, baseType: !210, size: 16, offset: 272)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2915, file: !2916, line: 497, baseType: !210, size: 16, offset: 288)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2915, file: !2916, line: 498, baseType: !210, size: 16, offset: 304)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2915, file: !2916, line: 502, baseType: !216, size: 64, offset: 320)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2915, file: !2916, line: 503, baseType: !216, size: 64, offset: 384)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2915, file: !2916, line: 514, baseType: !2944, size: 256, offset: 448)
!2944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2945, size: 256, elements: !1622)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2916, line: 483, flags: DIFlagFwdDecl)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2915, file: !2916, line: 516, baseType: !216, size: 64, offset: 704)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2915, file: !2916, line: 518, baseType: !216, size: 64, offset: 768)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2915, file: !2916, line: 520, baseType: !216, size: 64, offset: 832)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2915, file: !2916, line: 521, baseType: !216, size: 64, offset: 896)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2915, file: !2916, line: 522, baseType: !216, size: 64, offset: 960)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2915, file: !2916, line: 528, baseType: !2953, size: 64, offset: 1024)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2916, line: 10, flags: DIFlagFwdDecl)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2915, file: !2916, line: 535, baseType: !216, size: 64, offset: 1088)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2915, file: !2916, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2915, file: !2916, line: 540, baseType: !2958, size: 33280, offset: 1536)
!2958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2959, line: 317, size: 33280, elements: !2960)
!2959 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2960 = !{!2961, !2962, !2963}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2958, file: !2959, line: 330, baseType: !7, size: 32)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2958, file: !2959, line: 337, baseType: !216, size: 64, offset: 64)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2958, file: !2959, line: 348, baseType: !2964, size: 32768, offset: 512)
!2964 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2959, line: 304, size: 32768, elements: !2965)
!2965 = !{!2966, !2981, !3018, !3068, !3081}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2964, file: !2959, line: 305, baseType: !2967, size: 896)
!2967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2959, line: 12, size: 896, elements: !2968)
!2968 = !{!2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2980}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2967, file: !2959, line: 13, baseType: !218, size: 32)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2967, file: !2959, line: 14, baseType: !218, size: 32, offset: 32)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2967, file: !2959, line: 15, baseType: !218, size: 32, offset: 64)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2967, file: !2959, line: 16, baseType: !218, size: 32, offset: 96)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2967, file: !2959, line: 17, baseType: !218, size: 32, offset: 128)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2967, file: !2959, line: 18, baseType: !218, size: 32, offset: 160)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2967, file: !2959, line: 19, baseType: !218, size: 32, offset: 192)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2967, file: !2959, line: 22, baseType: !2977, size: 640, offset: 224)
!2977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 640, elements: !2978)
!2978 = !{!2979}
!2979 = !DISubrange(count: 20)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2967, file: !2959, line: 25, baseType: !218, size: 32, offset: 864)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2964, file: !2959, line: 306, baseType: !2982, size: 4096, align: 128)
!2982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2959, line: 34, size: 4096, align: 128, elements: !2983)
!2983 = !{!2984, !2985, !2986, !2987, !2988, !3003, !3004, !3005, !3007, !3009, !3013}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2982, file: !2959, line: 35, baseType: !1381, size: 16)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2982, file: !2959, line: 36, baseType: !1381, size: 16, offset: 16)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2982, file: !2959, line: 37, baseType: !1381, size: 16, offset: 32)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2982, file: !2959, line: 38, baseType: !1381, size: 16, offset: 48)
!2988 = !DIDerivedType(tag: DW_TAG_member, scope: !2982, file: !2959, line: 39, baseType: !2989, size: 128, offset: 64)
!2989 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2982, file: !2959, line: 39, size: 128, elements: !2990)
!2990 = !{!2991, !2996}
!2991 = !DIDerivedType(tag: DW_TAG_member, scope: !2989, file: !2959, line: 40, baseType: !2992, size: 128)
!2992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2989, file: !2959, line: 40, size: 128, elements: !2993)
!2993 = !{!2994, !2995}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2992, file: !2959, line: 41, baseType: !280, size: 64)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2992, file: !2959, line: 42, baseType: !280, size: 64, offset: 64)
!2996 = !DIDerivedType(tag: DW_TAG_member, scope: !2989, file: !2959, line: 44, baseType: !2997, size: 128)
!2997 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2989, file: !2959, line: 44, size: 128, elements: !2998)
!2998 = !{!2999, !3000, !3001, !3002}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2997, file: !2959, line: 45, baseType: !218, size: 32)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2997, file: !2959, line: 46, baseType: !218, size: 32, offset: 32)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2997, file: !2959, line: 47, baseType: !218, size: 32, offset: 64)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2997, file: !2959, line: 48, baseType: !218, size: 32, offset: 96)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2982, file: !2959, line: 51, baseType: !218, size: 32, offset: 192)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2982, file: !2959, line: 52, baseType: !218, size: 32, offset: 224)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2982, file: !2959, line: 55, baseType: !3006, size: 1024, offset: 256)
!3006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 1024, elements: !602)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2982, file: !2959, line: 58, baseType: !3008, size: 2048, offset: 1280)
!3008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 2048, elements: !2671)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2982, file: !2959, line: 60, baseType: !3010, size: 384, offset: 3328)
!3010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 384, elements: !3011)
!3011 = !{!3012}
!3012 = !DISubrange(count: 12)
!3013 = !DIDerivedType(tag: DW_TAG_member, scope: !2982, file: !2959, line: 62, baseType: !3014, size: 384, offset: 3712)
!3014 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2982, file: !2959, line: 62, size: 384, elements: !3015)
!3015 = !{!3016, !3017}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3014, file: !2959, line: 63, baseType: !3010, size: 384)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3014, file: !2959, line: 64, baseType: !3010, size: 384)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2964, file: !2959, line: 307, baseType: !3019, size: 1088)
!3019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2959, line: 79, size: 1088, elements: !3020)
!3020 = !{!3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3067}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3019, file: !2959, line: 80, baseType: !218, size: 32)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3019, file: !2959, line: 81, baseType: !218, size: 32, offset: 32)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3019, file: !2959, line: 82, baseType: !218, size: 32, offset: 64)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3019, file: !2959, line: 83, baseType: !218, size: 32, offset: 96)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3019, file: !2959, line: 84, baseType: !218, size: 32, offset: 128)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3019, file: !2959, line: 85, baseType: !218, size: 32, offset: 160)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3019, file: !2959, line: 86, baseType: !218, size: 32, offset: 192)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3019, file: !2959, line: 88, baseType: !2977, size: 640, offset: 224)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3019, file: !2959, line: 89, baseType: !402, size: 8, offset: 864)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3019, file: !2959, line: 90, baseType: !402, size: 8, offset: 872)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3019, file: !2959, line: 91, baseType: !402, size: 8, offset: 880)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3019, file: !2959, line: 92, baseType: !402, size: 8, offset: 888)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3019, file: !2959, line: 93, baseType: !402, size: 8, offset: 896)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3019, file: !2959, line: 94, baseType: !402, size: 8, offset: 904)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3019, file: !2959, line: 95, baseType: !3036, size: 64, offset: 960)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3038, line: 11, size: 128, elements: !3039)
!3038 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!3039 = !{!3040, !3041}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3037, file: !3038, line: 12, baseType: !231, size: 64)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3037, file: !3038, line: 13, baseType: !3042, size: 64, offset: 64)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3044, line: 56, size: 1344, elements: !3045)
!3044 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!3045 = !{!3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3043, file: !3044, line: 61, baseType: !216, size: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3043, file: !3044, line: 62, baseType: !216, size: 64, offset: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3043, file: !3044, line: 63, baseType: !216, size: 64, offset: 128)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3043, file: !3044, line: 64, baseType: !216, size: 64, offset: 192)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3043, file: !3044, line: 65, baseType: !216, size: 64, offset: 256)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3043, file: !3044, line: 66, baseType: !216, size: 64, offset: 320)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3043, file: !3044, line: 68, baseType: !216, size: 64, offset: 384)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3043, file: !3044, line: 69, baseType: !216, size: 64, offset: 448)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3043, file: !3044, line: 70, baseType: !216, size: 64, offset: 512)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3043, file: !3044, line: 71, baseType: !216, size: 64, offset: 576)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3043, file: !3044, line: 72, baseType: !216, size: 64, offset: 640)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3043, file: !3044, line: 73, baseType: !216, size: 64, offset: 704)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3043, file: !3044, line: 74, baseType: !216, size: 64, offset: 768)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3043, file: !3044, line: 75, baseType: !216, size: 64, offset: 832)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3043, file: !3044, line: 76, baseType: !216, size: 64, offset: 896)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3043, file: !3044, line: 81, baseType: !216, size: 64, offset: 960)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3043, file: !3044, line: 83, baseType: !216, size: 64, offset: 1024)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3043, file: !3044, line: 84, baseType: !216, size: 64, offset: 1088)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3043, file: !3044, line: 85, baseType: !216, size: 64, offset: 1152)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3043, file: !3044, line: 86, baseType: !216, size: 64, offset: 1216)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3043, file: !3044, line: 87, baseType: !216, size: 64, offset: 1280)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3019, file: !2959, line: 96, baseType: !218, size: 32, offset: 1024)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2964, file: !2959, line: 308, baseType: !3069, size: 4608, align: 512)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2959, line: 289, size: 4608, align: 512, elements: !3070)
!3070 = !{!3071, !3072, !3079}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3069, file: !2959, line: 290, baseType: !2982, size: 4096, align: 128)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3069, file: !2959, line: 291, baseType: !3073, size: 512, offset: 4096)
!3073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2959, line: 268, size: 512, elements: !3074)
!3074 = !{!3075, !3076, !3077}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3073, file: !2959, line: 269, baseType: !280, size: 64)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3073, file: !2959, line: 270, baseType: !280, size: 64, offset: 64)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3073, file: !2959, line: 271, baseType: !3078, size: 384, offset: 128)
!3078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !280, size: 384, elements: !1722)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3069, file: !2959, line: 292, baseType: !3080, offset: 4608)
!3080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, elements: !1818)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2964, file: !2959, line: 309, baseType: !3082, size: 32768)
!3082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 32768, elements: !3083)
!3083 = !{!3084}
!3084 = !DISubrange(count: 4096)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !404)
!3089 = !{!0, !3090, !3093, !3095, !3097, !3102, !3107, !3112, !3117, !3122, !4076, !4085, !4089, !4097, !4377}
!3090 = !DIGlobalVariableExpression(var: !3091, expr: !DIExpression())
!3091 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_firmware235", scope: !2, file: !3, line: 215, type: !3092, isLocal: true, isDefinition: true, align: 8)
!3092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !645, size: 256, elements: !602)
!3093 = !DIGlobalVariableExpression(var: !3094, expr: !DIExpression())
!3094 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_firmware236", scope: !2, file: !3, line: 216, type: !3092, isLocal: true, isDefinition: true, align: 8)
!3095 = !DIGlobalVariableExpression(var: !3096, expr: !DIExpression())
!3096 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ni_pcidio_driver_init238", scope: !2, file: !3, line: 1006, type: !233, isLocal: true, isDefinition: true)
!3097 = !DIGlobalVariableExpression(var: !3098, expr: !DIExpression())
!3098 = distinct !DIGlobalVariable(name: "__exitcall_ni_pcidio_driver_exit", scope: !2, file: !3, line: 1006, type: !3099, isLocal: true, isDefinition: true)
!3099 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !3100, line: 117, baseType: !3101)
!3100 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!3102 = !DIGlobalVariableExpression(var: !3103, expr: !DIExpression())
!3103 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author239", scope: !2, file: !3, line: 1008, type: !3104, isLocal: true, isDefinition: true, align: 8)
!3104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !645, size: 376, elements: !3105)
!3105 = !{!3106}
!3106 = !DISubrange(count: 47)
!3107 = !DIGlobalVariableExpression(var: !3108, expr: !DIExpression())
!3108 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description240", scope: !2, file: !3, line: 1009, type: !3109, isLocal: true, isDefinition: true, align: 8)
!3109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !645, size: 368, elements: !3110)
!3110 = !{!3111}
!3111 = !DISubrange(count: 46)
!3112 = !DIGlobalVariableExpression(var: !3113, expr: !DIExpression())
!3113 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file241", scope: !2, file: !3, line: 1010, type: !3114, isLocal: true, isDefinition: true, align: 8)
!3114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !645, size: 448, elements: !3115)
!3115 = !{!3116}
!3116 = !DISubrange(count: 56)
!3117 = !DIGlobalVariableExpression(var: !3118, expr: !DIExpression())
!3118 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license242", scope: !2, file: !3, line: 1010, type: !3119, isLocal: true, isDefinition: true, align: 8)
!3119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !645, size: 176, elements: !3120)
!3120 = !{!3121}
!3121 = !DISubrange(count: 22)
!3122 = !DIGlobalVariableExpression(var: !3123, expr: !DIExpression())
!3123 = distinct !DIGlobalVariable(name: "ni_pcidio_driver", scope: !2, file: !3, line: 979, type: !3124, isLocal: true, isDefinition: true)
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_driver", file: !196, line: 437, size: 576, elements: !3125)
!3125 = !{!3126, !3128, !3129, !3130, !4066, !4067, !4071, !4072, !4075}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3124, file: !196, line: 439, baseType: !3127, size: 64)
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !3124, file: !196, line: 441, baseType: !644, size: 64, offset: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !3124, file: !196, line: 442, baseType: !736, size: 64, offset: 128)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !3124, file: !196, line: 443, baseType: !3131, size: 64, offset: 192)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{!207, !3134, !4059}
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_device", file: !196, line: 541, size: 1920, elements: !3136)
!3136 = !{!3137, !3138, !3139, !3142, !3143, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4047, !4051, !4055}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !3135, file: !196, line: 542, baseType: !207, size: 32)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3135, file: !196, line: 543, baseType: !3127, size: 64, offset: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "pacer", scope: !3135, file: !196, line: 544, baseType: !3140, size: 64, offset: 128)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_8254", file: !196, line: 544, flags: DIFlagFwdDecl)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3135, file: !196, line: 545, baseType: !233, size: 64, offset: 192)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !3135, file: !196, line: 547, baseType: !3144, size: 64, offset: 256)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !3146)
!3146 = !{!3147, !3444, !3445, !3448, !3449, !3500, !3591, !3592, !3593, !3594, !3595, !3604, !3709, !3722, !3725, !3726, !3730, !3732, !3733, !3734, !3738, !3744, !3745, !3748, !3752, !3842, !3843, !3844, !3845, !3846, !3878, !3879, !3880, !3883, !3886, !3887, !3888, !3889}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3145, file: !73, line: 462, baseType: !3148, size: 512)
!3148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !3149, line: 64, size: 512, elements: !3150)
!3149 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!3150 = !{!3151, !3152, !3153, !3155, !3195, !3295, !3434, !3439, !3440, !3441, !3442, !3443}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3148, file: !3149, line: 65, baseType: !644, size: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3148, file: !3149, line: 66, baseType: !273, size: 128, offset: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3148, file: !3149, line: 67, baseType: !3154, size: 64, offset: 192)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !3148, file: !3149, line: 68, baseType: !3156, size: 64, offset: 256)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !3149, line: 192, size: 704, elements: !3158)
!3158 = !{!3159, !3160, !3161, !3162}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3157, file: !3149, line: 193, baseType: !273, size: 128)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3157, file: !3149, line: 194, baseType: !615, offset: 128)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3157, file: !3149, line: 195, baseType: !3148, size: 512, offset: 128)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !3157, file: !3149, line: 196, baseType: !3163, size: 64, offset: 640)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3165)
!3165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !3149, line: 156, size: 192, elements: !3166)
!3166 = !{!3167, !3172, !3177}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3165, file: !3149, line: 157, baseType: !3168, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3169)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{!207, !3156, !3154}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3165, file: !3149, line: 158, baseType: !3173, size: 64, offset: 64)
!3173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3174)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{!644, !3156, !3154}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3165, file: !3149, line: 159, baseType: !3178, size: 64, offset: 128)
!3178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3179)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{!207, !3156, !3154, !3182}
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !3149, line: 148, size: 20736, elements: !3184)
!3184 = !{!3185, !3187, !3189, !3190, !3194}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !3183, file: !3149, line: 149, baseType: !3186, size: 192)
!3186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !670, size: 192, elements: !757)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !3183, file: !3149, line: 150, baseType: !3188, size: 4096, offset: 192)
!3188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !670, size: 4096, elements: !2671)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !3183, file: !3149, line: 151, baseType: !207, size: 32, offset: 4288)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3183, file: !3149, line: 152, baseType: !3191, size: 16384, offset: 4320)
!3191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !646, size: 16384, elements: !3192)
!3192 = !{!3193}
!3193 = !DISubrange(count: 2048)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !3183, file: !3149, line: 153, baseType: !207, size: 32, offset: 20704)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !3148, file: !3149, line: 69, baseType: !3196, size: 64, offset: 320)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !3149, line: 138, size: 448, elements: !3198)
!3198 = !{!3199, !3203, !3222, !3224, !3257, !3285, !3289}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3197, file: !3149, line: 139, baseType: !3200, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{null, !3154}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !3197, file: !3149, line: 140, baseType: !3204, size: 64, offset: 64)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3206)
!3206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !3207, line: 230, size: 128, elements: !3208)
!3207 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!3208 = !{!3209, !3218}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3206, file: !3207, line: 231, baseType: !3210, size: 64)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{!1354, !3154, !3213, !670}
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !3207, line: 30, size: 128, elements: !3215)
!3215 = !{!3216, !3217}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3214, file: !3207, line: 31, baseType: !644, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3214, file: !3207, line: 32, baseType: !538, size: 16, offset: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3206, file: !3207, line: 232, baseType: !3219, size: 64, offset: 64)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{!1354, !3154, !3213, !644, !1357}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !3197, file: !3149, line: 141, baseType: !3223, size: 64, offset: 128)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !3197, file: !3149, line: 142, baseType: !3225, size: 64, offset: 192)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3228)
!3228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !3207, line: 84, size: 320, elements: !3229)
!3229 = !{!3230, !3231, !3235, !3254, !3255}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3228, file: !3207, line: 85, baseType: !644, size: 64)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !3228, file: !3207, line: 86, baseType: !3232, size: 64, offset: 64)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!538, !3154, !3213, !207}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !3228, file: !3207, line: 88, baseType: !3236, size: 64, offset: 128)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DISubroutineType(types: !3238)
!3238 = !{!538, !3154, !3239, !207}
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !3207, line: 168, size: 448, elements: !3241)
!3241 = !{!3242, !3243, !3244, !3245, !3249, !3250}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3240, file: !3207, line: 169, baseType: !3214, size: 128)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3240, file: !3207, line: 170, baseType: !1357, size: 64, offset: 128)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3240, file: !3207, line: 171, baseType: !233, size: 64, offset: 192)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3240, file: !3207, line: 172, baseType: !3246, size: 64, offset: 256)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!1354, !1325, !3154, !3239, !670, !708, !1357}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3240, file: !3207, line: 174, baseType: !3246, size: 64, offset: 320)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3240, file: !3207, line: 176, baseType: !3251, size: 64, offset: 384)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = !DISubroutineType(types: !3253)
!3253 = !{!207, !1325, !3154, !3239, !437}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !3228, file: !3207, line: 90, baseType: !3223, size: 64, offset: 192)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !3228, file: !3207, line: 91, baseType: !3256, size: 64, offset: 256)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !3197, file: !3149, line: 143, baseType: !3258, size: 64, offset: 256)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!3261, !3154}
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3263)
!3263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3264)
!3264 = !{!3265, !3266, !3270, !3274, !3280, !3284}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3263, file: !61, line: 40, baseType: !60, size: 32)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3263, file: !61, line: 41, baseType: !3267, size: 64, offset: 64)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!689}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3263, file: !61, line: 42, baseType: !3271, size: 64, offset: 128)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DISubroutineType(types: !3273)
!3273 = !{!233}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3263, file: !61, line: 43, baseType: !3275, size: 64, offset: 192)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{!2904, !3278}
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3263, file: !61, line: 44, baseType: !3281, size: 64, offset: 256)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!2904}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3263, file: !61, line: 45, baseType: !1258, size: 64, offset: 320)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3197, file: !3149, line: 144, baseType: !3286, size: 64, offset: 320)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{!2904, !3154}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3197, file: !3149, line: 145, baseType: !3290, size: 64, offset: 384)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{null, !3154, !3293, !3294}
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !3148, file: !3149, line: 70, baseType: !3296, size: 64, offset: 384)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !722, line: 123, size: 1024, elements: !3298)
!3298 = !{!3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3427, !3428, !3429, !3430, !3431}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3297, file: !722, line: 124, baseType: !240, size: 32)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3297, file: !722, line: 125, baseType: !240, size: 32, offset: 32)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3297, file: !722, line: 135, baseType: !3296, size: 64, offset: 64)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3297, file: !722, line: 136, baseType: !644, size: 64, offset: 128)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3297, file: !722, line: 138, baseType: !265, size: 192, align: 64, offset: 192)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3297, file: !722, line: 140, baseType: !2904, size: 64, offset: 384)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3297, file: !722, line: 141, baseType: !7, size: 32, offset: 448)
!3306 = !DIDerivedType(tag: DW_TAG_member, scope: !3297, file: !722, line: 142, baseType: !3307, size: 256, offset: 512)
!3307 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3297, file: !722, line: 142, size: 256, elements: !3308)
!3308 = !{!3309, !3355, !3359}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3307, file: !722, line: 143, baseType: !3310, size: 192)
!3310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !722, line: 91, size: 192, elements: !3311)
!3311 = !{!3312, !3313, !3314}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3310, file: !722, line: 92, baseType: !216, size: 64)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3310, file: !722, line: 94, baseType: !392, size: 64, offset: 64)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3310, file: !722, line: 100, baseType: !3315, size: 64, offset: 128)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !722, line: 180, size: 704, elements: !3317)
!3317 = !{!3318, !3319, !3320, !3327, !3328, !3329, !3353, !3354}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3316, file: !722, line: 182, baseType: !3296, size: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3316, file: !722, line: 183, baseType: !7, size: 32, offset: 64)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3316, file: !722, line: 186, baseType: !3321, size: 192, offset: 128)
!3321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3322, line: 19, size: 192, elements: !3323)
!3322 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3323 = !{!3324, !3325, !3326}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3321, file: !3322, line: 20, baseType: !1960, size: 128)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3321, file: !3322, line: 21, baseType: !7, size: 32, offset: 128)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3321, file: !3322, line: 22, baseType: !7, size: 32, offset: 160)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3316, file: !722, line: 187, baseType: !218, size: 32, offset: 320)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3316, file: !722, line: 188, baseType: !218, size: 32, offset: 352)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3316, file: !722, line: 189, baseType: !3330, size: 64, offset: 384)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !722, line: 168, size: 320, elements: !3332)
!3332 = !{!3333, !3337, !3341, !3345, !3349}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3331, file: !722, line: 169, baseType: !3334, size: 64)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{!207, !819, !3315}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3331, file: !722, line: 171, baseType: !3338, size: 64, offset: 64)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DISubroutineType(types: !3340)
!3340 = !{!207, !3296, !644, !538}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3331, file: !722, line: 173, baseType: !3342, size: 64, offset: 128)
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = !DISubroutineType(types: !3344)
!3344 = !{!207, !3296}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3331, file: !722, line: 174, baseType: !3346, size: 64, offset: 192)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = !DISubroutineType(types: !3348)
!3348 = !{!207, !3296, !3296, !644}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3331, file: !722, line: 176, baseType: !3350, size: 64, offset: 256)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!207, !819, !3296, !3315}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3316, file: !722, line: 192, baseType: !273, size: 128, offset: 448)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3316, file: !722, line: 194, baseType: !1108, size: 128, offset: 576)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3307, file: !722, line: 144, baseType: !3356, size: 64)
!3356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !722, line: 103, size: 64, elements: !3357)
!3357 = !{!3358}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3356, file: !722, line: 104, baseType: !3296, size: 64)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3307, file: !722, line: 145, baseType: !3360, size: 256)
!3360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !722, line: 107, size: 256, elements: !3361)
!3361 = !{!3362, !3422, !3425, !3426}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3360, file: !722, line: 108, baseType: !3363, size: 64)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3365)
!3365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !722, line: 217, size: 768, elements: !3366)
!3366 = !{!3367, !3387, !3391, !3395, !3399, !3403, !3407, !3411, !3412, !3413, !3414, !3418}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3365, file: !722, line: 222, baseType: !3368, size: 64)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = !DISubroutineType(types: !3370)
!3370 = !{!207, !3371}
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !722, line: 197, size: 1088, elements: !3373)
!3373 = !{!3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3372, file: !722, line: 199, baseType: !3296, size: 64)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3372, file: !722, line: 200, baseType: !1325, size: 64, offset: 64)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3372, file: !722, line: 201, baseType: !819, size: 64, offset: 128)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3372, file: !722, line: 202, baseType: !233, size: 64, offset: 192)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3372, file: !722, line: 205, baseType: !861, size: 192, offset: 256)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3372, file: !722, line: 206, baseType: !861, size: 192, offset: 448)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3372, file: !722, line: 207, baseType: !207, size: 32, offset: 640)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3372, file: !722, line: 208, baseType: !273, size: 128, offset: 704)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3372, file: !722, line: 209, baseType: !670, size: 64, offset: 832)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3372, file: !722, line: 211, baseType: !1357, size: 64, offset: 896)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3372, file: !722, line: 212, baseType: !689, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3372, file: !722, line: 213, baseType: !689, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3372, file: !722, line: 214, baseType: !466, size: 64, offset: 1024)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3365, file: !722, line: 223, baseType: !3388, size: 64, offset: 64)
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{null, !3371}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3365, file: !722, line: 236, baseType: !3392, size: 64, offset: 128)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = !DISubroutineType(types: !3394)
!3394 = !{!207, !819, !233}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3365, file: !722, line: 238, baseType: !3396, size: 64, offset: 192)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3397, size: 64)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{!233, !819, !1360}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3365, file: !722, line: 239, baseType: !3400, size: 64, offset: 256)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = !DISubroutineType(types: !3402)
!3402 = !{!233, !819, !233, !1360}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3365, file: !722, line: 240, baseType: !3404, size: 64, offset: 320)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{null, !819, !233}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3365, file: !722, line: 242, baseType: !3408, size: 64, offset: 384)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = !DISubroutineType(types: !3410)
!3410 = !{!1354, !3371, !670, !1357, !708}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3365, file: !722, line: 252, baseType: !1357, size: 64, offset: 448)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3365, file: !722, line: 259, baseType: !689, size: 8, offset: 512)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3365, file: !722, line: 260, baseType: !3408, size: 64, offset: 576)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3365, file: !722, line: 263, baseType: !3415, size: 64, offset: 640)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{!1416, !3371, !1418}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3365, file: !722, line: 266, baseType: !3419, size: 64, offset: 704)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{!207, !3371, !437}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3360, file: !722, line: 109, baseType: !3423, size: 64, offset: 64)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !722, line: 31, flags: DIFlagFwdDecl)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3360, file: !722, line: 110, baseType: !708, size: 64, offset: 128)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3360, file: !722, line: 111, baseType: !3296, size: 64, offset: 192)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3297, file: !722, line: 148, baseType: !233, size: 64, offset: 768)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3297, file: !722, line: 154, baseType: !280, size: 64, offset: 832)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3297, file: !722, line: 156, baseType: !210, size: 16, offset: 896)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3297, file: !722, line: 157, baseType: !538, size: 16, offset: 912)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3297, file: !722, line: 158, baseType: !3432, size: 64, offset: 960)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !722, line: 32, flags: DIFlagFwdDecl)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3148, file: !3149, line: 71, baseType: !3435, size: 32, offset: 448)
!3435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3436, line: 19, size: 32, elements: !3437)
!3436 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3437 = !{!3438}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3435, file: !3436, line: 20, baseType: !235, size: 32)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !3148, file: !3149, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !3148, file: !3149, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !3148, file: !3149, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !3148, file: !3149, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !3148, file: !3149, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3145, file: !73, line: 463, baseType: !3144, size: 64, offset: 512)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3145, file: !73, line: 465, baseType: !3446, size: 64, offset: 576)
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3447 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3145, file: !73, line: 467, baseType: !644, size: 64, offset: 640)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3145, file: !73, line: 468, baseType: !3450, size: 64, offset: 704)
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3452)
!3452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3453)
!3453 = !{!3454, !3455, !3456, !3460, !3465, !3469}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3452, file: !73, line: 88, baseType: !644, size: 64)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3452, file: !73, line: 89, baseType: !3225, size: 64, offset: 64)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3452, file: !73, line: 90, baseType: !3457, size: 64, offset: 128)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DISubroutineType(types: !3459)
!3459 = !{!207, !3144, !3182}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3452, file: !73, line: 91, baseType: !3461, size: 64, offset: 192)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = !DISubroutineType(types: !3463)
!3463 = !{!670, !3144, !3464, !3293, !3294}
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3452, file: !73, line: 93, baseType: !3466, size: 64, offset: 256)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{null, !3144}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3452, file: !73, line: 95, baseType: !3470, size: 64, offset: 320)
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3471, size: 64)
!3471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3472)
!3472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3473)
!3473 = !{!3474, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3472, file: !80, line: 279, baseType: !3475, size: 64)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = !DISubroutineType(types: !3477)
!3477 = !{!207, !3144}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3472, file: !80, line: 280, baseType: !3466, size: 64, offset: 64)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3472, file: !80, line: 281, baseType: !3475, size: 64, offset: 128)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3472, file: !80, line: 282, baseType: !3475, size: 64, offset: 192)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3472, file: !80, line: 283, baseType: !3475, size: 64, offset: 256)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3472, file: !80, line: 284, baseType: !3475, size: 64, offset: 320)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3472, file: !80, line: 285, baseType: !3475, size: 64, offset: 384)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3472, file: !80, line: 286, baseType: !3475, size: 64, offset: 448)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3472, file: !80, line: 287, baseType: !3475, size: 64, offset: 512)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3472, file: !80, line: 288, baseType: !3475, size: 64, offset: 576)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3472, file: !80, line: 289, baseType: !3475, size: 64, offset: 640)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3472, file: !80, line: 290, baseType: !3475, size: 64, offset: 704)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3472, file: !80, line: 291, baseType: !3475, size: 64, offset: 768)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3472, file: !80, line: 292, baseType: !3475, size: 64, offset: 832)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3472, file: !80, line: 293, baseType: !3475, size: 64, offset: 896)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3472, file: !80, line: 294, baseType: !3475, size: 64, offset: 960)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3472, file: !80, line: 295, baseType: !3475, size: 64, offset: 1024)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3472, file: !80, line: 296, baseType: !3475, size: 64, offset: 1088)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3472, file: !80, line: 297, baseType: !3475, size: 64, offset: 1152)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3472, file: !80, line: 298, baseType: !3475, size: 64, offset: 1216)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3472, file: !80, line: 299, baseType: !3475, size: 64, offset: 1280)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3472, file: !80, line: 300, baseType: !3475, size: 64, offset: 1344)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3472, file: !80, line: 301, baseType: !3475, size: 64, offset: 1408)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3145, file: !73, line: 470, baseType: !3501, size: 64, offset: 768)
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3503, line: 82, size: 1408, elements: !3504)
!3503 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3504 = !{!3505, !3506, !3507, !3508, !3509, !3510, !3511, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3586, !3589, !3590}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3502, file: !3503, line: 83, baseType: !644, size: 64)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3502, file: !3503, line: 84, baseType: !644, size: 64, offset: 64)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3502, file: !3503, line: 85, baseType: !3144, size: 64, offset: 128)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3502, file: !3503, line: 86, baseType: !3225, size: 64, offset: 192)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3502, file: !3503, line: 87, baseType: !3225, size: 64, offset: 256)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3502, file: !3503, line: 88, baseType: !3225, size: 64, offset: 320)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3502, file: !3503, line: 90, baseType: !3512, size: 64, offset: 384)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!207, !3144, !3515}
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3517)
!3517 = !{!3518, !3519, !3520, !3521, !3522, !3523, !3524, !3537, !3550, !3551, !3552, !3553, !3554, !3562, !3563, !3564, !3565, !3566, !3567}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3516, file: !67, line: 96, baseType: !644, size: 64)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3516, file: !67, line: 97, baseType: !3501, size: 64, offset: 64)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3516, file: !67, line: 99, baseType: !736, size: 64, offset: 128)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3516, file: !67, line: 100, baseType: !644, size: 64, offset: 192)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3516, file: !67, line: 102, baseType: !689, size: 8, offset: 256)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3516, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3516, file: !67, line: 105, baseType: !3525, size: 64, offset: 320)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3527)
!3527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3528, line: 262, size: 1600, elements: !3529)
!3528 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3529 = !{!3530, !3531, !3532, !3536}
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3527, file: !3528, line: 263, baseType: !1153, size: 256)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3527, file: !3528, line: 264, baseType: !1153, size: 256, offset: 256)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3527, file: !3528, line: 265, baseType: !3533, size: 1024, offset: 512)
!3533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !646, size: 1024, elements: !3534)
!3534 = !{!3535}
!3535 = !DISubrange(count: 128)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3527, file: !3528, line: 266, baseType: !2904, size: 64, offset: 1536)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3516, file: !67, line: 106, baseType: !3538, size: 64, offset: 384)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3540)
!3540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3528, line: 210, size: 256, elements: !3541)
!3541 = !{!3542, !3546, !3548, !3549}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3540, file: !3528, line: 211, baseType: !3543, size: 72)
!3543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !403, size: 72, elements: !3544)
!3544 = !{!3545}
!3545 = !DISubrange(count: 9)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3540, file: !3528, line: 212, baseType: !3547, size: 64, offset: 128)
!3547 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3528, line: 14, baseType: !216)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3540, file: !3528, line: 213, baseType: !220, size: 32, offset: 192)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3540, file: !3528, line: 214, baseType: !220, size: 32, offset: 224)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3516, file: !67, line: 108, baseType: !3475, size: 64, offset: 448)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3516, file: !67, line: 109, baseType: !3466, size: 64, offset: 512)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3516, file: !67, line: 110, baseType: !3475, size: 64, offset: 576)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3516, file: !67, line: 111, baseType: !3466, size: 64, offset: 640)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3516, file: !67, line: 112, baseType: !3555, size: 64, offset: 704)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{!207, !3144, !3558}
!3558 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3559)
!3559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3560)
!3560 = !{!3561}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3559, file: !80, line: 51, baseType: !207, size: 32)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3516, file: !67, line: 113, baseType: !3475, size: 64, offset: 768)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3516, file: !67, line: 114, baseType: !3225, size: 64, offset: 832)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3516, file: !67, line: 115, baseType: !3225, size: 64, offset: 896)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3516, file: !67, line: 117, baseType: !3470, size: 64, offset: 960)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3516, file: !67, line: 118, baseType: !3466, size: 64, offset: 1024)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3516, file: !67, line: 120, baseType: !3568, size: 64, offset: 1088)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3502, file: !3503, line: 91, baseType: !3457, size: 64, offset: 448)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3502, file: !3503, line: 92, baseType: !3475, size: 64, offset: 512)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3502, file: !3503, line: 93, baseType: !3466, size: 64, offset: 576)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3502, file: !3503, line: 94, baseType: !3475, size: 64, offset: 640)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3502, file: !3503, line: 95, baseType: !3466, size: 64, offset: 704)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3502, file: !3503, line: 97, baseType: !3475, size: 64, offset: 768)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3502, file: !3503, line: 98, baseType: !3475, size: 64, offset: 832)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3502, file: !3503, line: 100, baseType: !3555, size: 64, offset: 896)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3502, file: !3503, line: 101, baseType: !3475, size: 64, offset: 960)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3502, file: !3503, line: 103, baseType: !3475, size: 64, offset: 1024)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3502, file: !3503, line: 105, baseType: !3475, size: 64, offset: 1088)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3502, file: !3503, line: 107, baseType: !3470, size: 64, offset: 1152)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3502, file: !3503, line: 109, baseType: !3583, size: 64, offset: 1216)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3585)
!3585 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3503, line: 109, flags: DIFlagFwdDecl)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3502, file: !3503, line: 111, baseType: !3587, size: 64, offset: 1280)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3503, line: 111, flags: DIFlagFwdDecl)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3502, file: !3503, line: 112, baseType: !751, offset: 1344)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3502, file: !3503, line: 114, baseType: !689, size: 8, offset: 1344)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3145, file: !73, line: 471, baseType: !3515, size: 64, offset: 832)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3145, file: !73, line: 473, baseType: !233, size: 64, offset: 896)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3145, file: !73, line: 475, baseType: !233, size: 64, offset: 960)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3145, file: !73, line: 480, baseType: !861, size: 192, offset: 1024)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3145, file: !73, line: 484, baseType: !3596, size: 576, offset: 1216)
!3596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3597)
!3597 = !{!3598, !3599, !3600, !3601, !3602, !3603}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3596, file: !73, line: 362, baseType: !273, size: 128)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3596, file: !73, line: 363, baseType: !273, size: 128, offset: 128)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3596, file: !73, line: 364, baseType: !273, size: 128, offset: 256)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3596, file: !73, line: 365, baseType: !273, size: 128, offset: 384)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3596, file: !73, line: 366, baseType: !689, size: 8, offset: 512)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3596, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3145, file: !73, line: 485, baseType: !3605, size: 2304, offset: 1792)
!3605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3606)
!3606 = !{!3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3702, !3706}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3605, file: !80, line: 566, baseType: !3558, size: 32)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3605, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3605, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3605, file: !80, line: 569, baseType: !689, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3605, file: !80, line: 570, baseType: !689, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3605, file: !80, line: 571, baseType: !689, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3605, file: !80, line: 572, baseType: !689, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3605, file: !80, line: 573, baseType: !689, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3605, file: !80, line: 574, baseType: !689, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3605, file: !80, line: 575, baseType: !689, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3605, file: !80, line: 576, baseType: !689, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3605, file: !80, line: 577, baseType: !218, size: 32, offset: 64)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3605, file: !80, line: 578, baseType: !615, offset: 96)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3605, file: !80, line: 580, baseType: !273, size: 128, offset: 128)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3605, file: !80, line: 581, baseType: !2174, size: 192, offset: 256)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3605, file: !80, line: 582, baseType: !3623, size: 64, offset: 448)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3625, line: 43, size: 1472, elements: !3626)
!3625 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3626 = !{!3627, !3628, !3629, !3630, !3631, !3634, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3624, file: !3625, line: 44, baseType: !644, size: 64)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3624, file: !3625, line: 45, baseType: !207, size: 32, offset: 64)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3624, file: !3625, line: 46, baseType: !273, size: 128, offset: 128)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3624, file: !3625, line: 47, baseType: !615, offset: 256)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3624, file: !3625, line: 48, baseType: !3632, size: 64, offset: 256)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3624, file: !3625, line: 49, baseType: !3635, size: 320, offset: 320)
!3635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3636, line: 11, size: 320, elements: !3637)
!3636 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3637 = !{!3638, !3639, !3640, !3645}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3635, file: !3636, line: 16, baseType: !745, size: 128)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3635, file: !3636, line: 17, baseType: !216, size: 64, offset: 128)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3635, file: !3636, line: 18, baseType: !3641, size: 64, offset: 192)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DISubroutineType(types: !3643)
!3643 = !{null, !3644}
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3635, file: !3636, line: 19, baseType: !218, size: 32, offset: 256)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3624, file: !3625, line: 50, baseType: !216, size: 64, offset: 640)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3624, file: !3625, line: 51, baseType: !329, size: 64, offset: 704)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3624, file: !3625, line: 52, baseType: !329, size: 64, offset: 768)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3624, file: !3625, line: 53, baseType: !329, size: 64, offset: 832)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3624, file: !3625, line: 54, baseType: !329, size: 64, offset: 896)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3624, file: !3625, line: 55, baseType: !329, size: 64, offset: 960)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3624, file: !3625, line: 56, baseType: !216, size: 64, offset: 1024)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3624, file: !3625, line: 57, baseType: !216, size: 64, offset: 1088)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3624, file: !3625, line: 58, baseType: !216, size: 64, offset: 1152)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3624, file: !3625, line: 59, baseType: !216, size: 64, offset: 1216)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3624, file: !3625, line: 60, baseType: !216, size: 64, offset: 1280)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3624, file: !3625, line: 61, baseType: !3144, size: 64, offset: 1344)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3624, file: !3625, line: 62, baseType: !689, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3624, file: !3625, line: 63, baseType: !689, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3605, file: !80, line: 583, baseType: !689, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3605, file: !80, line: 584, baseType: !689, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3605, file: !80, line: 585, baseType: !689, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3605, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3605, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3605, file: !80, line: 592, baseType: !321, size: 512, offset: 576)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3605, file: !80, line: 593, baseType: !280, size: 64, offset: 1088)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3605, file: !80, line: 594, baseType: !1217, size: 256, offset: 1152)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3605, file: !80, line: 595, baseType: !1108, size: 128, offset: 1408)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3605, file: !80, line: 596, baseType: !3632, size: 64, offset: 1536)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3605, file: !80, line: 597, baseType: !240, size: 32, offset: 1600)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3605, file: !80, line: 598, baseType: !240, size: 32, offset: 1632)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3605, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3605, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3605, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3605, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3605, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3605, file: !80, line: 604, baseType: !689, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3605, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3605, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3605, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3605, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3605, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3605, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3605, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3605, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3605, file: !80, line: 613, baseType: !207, size: 32, offset: 1792)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3605, file: !80, line: 614, baseType: !207, size: 32, offset: 1824)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3605, file: !80, line: 615, baseType: !280, size: 64, offset: 1856)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3605, file: !80, line: 616, baseType: !280, size: 64, offset: 1920)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3605, file: !80, line: 617, baseType: !280, size: 64, offset: 1984)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3605, file: !80, line: 618, baseType: !280, size: 64, offset: 2048)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3605, file: !80, line: 620, baseType: !3693, size: 64, offset: 2112)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3695)
!3695 = !{!3696, !3697, !3698, !3699}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3694, file: !80, line: 537, baseType: !615)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3694, file: !80, line: 538, baseType: !7, size: 32)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3694, file: !80, line: 540, baseType: !273, size: 128, offset: 64)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3694, file: !80, line: 543, baseType: !3700, size: 64, offset: 192)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3605, file: !80, line: 621, baseType: !3703, size: 64, offset: 2176)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{null, !3144, !1678}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3605, file: !80, line: 622, baseType: !3707, size: 64, offset: 2240)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3145, file: !73, line: 486, baseType: !3710, size: 64, offset: 4096)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3712)
!3712 = !{!3713, !3714, !3715, !3719, !3720, !3721}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3711, file: !80, line: 643, baseType: !3472, size: 1472)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3711, file: !80, line: 644, baseType: !3475, size: 64, offset: 1472)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3711, file: !80, line: 645, baseType: !3716, size: 64, offset: 1536)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{null, !3144, !689}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3711, file: !80, line: 646, baseType: !3475, size: 64, offset: 1600)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3711, file: !80, line: 647, baseType: !3466, size: 64, offset: 1664)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3711, file: !80, line: 648, baseType: !3466, size: 64, offset: 1728)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3145, file: !73, line: 493, baseType: !3723, size: 64, offset: 4160)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !73, line: 493, flags: DIFlagFwdDecl)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3145, file: !73, line: 499, baseType: !273, size: 128, offset: 4224)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3145, file: !73, line: 502, baseType: !3727, size: 64, offset: 4352)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3729)
!3729 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3145, file: !73, line: 504, baseType: !3731, size: 64, offset: 4416)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3145, file: !73, line: 505, baseType: !280, size: 64, offset: 4480)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3145, file: !73, line: 510, baseType: !280, size: 64, offset: 4544)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3145, file: !73, line: 511, baseType: !3735, size: 64, offset: 4608)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3737)
!3737 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3145, file: !73, line: 513, baseType: !3739, size: 64, offset: 4672)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3741)
!3741 = !{!3742, !3743}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3740, file: !73, line: 293, baseType: !7, size: 32)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3740, file: !73, line: 294, baseType: !216, size: 64, offset: 64)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3145, file: !73, line: 515, baseType: !273, size: 128, offset: 4736)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3145, file: !73, line: 526, baseType: !3746, offset: 4864)
!3746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3747, line: 5, elements: !289)
!3747 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3145, file: !73, line: 528, baseType: !3749, size: 64, offset: 4864)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3751, line: 14, flags: DIFlagFwdDecl)
!3751 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3145, file: !73, line: 529, baseType: !3753, size: 64, offset: 4928)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3755, line: 17, size: 192, elements: !3756)
!3755 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3756 = !{!3757, !3758, !3841}
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3754, file: !3755, line: 18, baseType: !3753, size: 64)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3754, file: !3755, line: 19, baseType: !3759, size: 64, offset: 64)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3761)
!3761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3755, line: 110, size: 1152, elements: !3762)
!3762 = !{!3763, !3767, !3771, !3777, !3783, !3787, !3791, !3796, !3800, !3801, !3805, !3809, !3813, !3824, !3825, !3826, !3827, !3837}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3761, file: !3755, line: 111, baseType: !3764, size: 64)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!3753, !3753}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3761, file: !3755, line: 112, baseType: !3768, size: 64, offset: 64)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{null, !3753}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3761, file: !3755, line: 113, baseType: !3772, size: 64, offset: 128)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DISubroutineType(types: !3774)
!3774 = !{!689, !3775}
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3754)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3761, file: !3755, line: 114, baseType: !3778, size: 64, offset: 192)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DISubroutineType(types: !3780)
!3780 = !{!2904, !3775, !3781}
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3145)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3761, file: !3755, line: 116, baseType: !3784, size: 64, offset: 256)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{!689, !3775, !644}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3761, file: !3755, line: 118, baseType: !3788, size: 64, offset: 320)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{!207, !3775, !644, !7, !233, !1357}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3761, file: !3755, line: 123, baseType: !3792, size: 64, offset: 384)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DISubroutineType(types: !3794)
!3794 = !{!207, !3775, !644, !3795, !1357}
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3761, file: !3755, line: 126, baseType: !3797, size: 64, offset: 448)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{!644, !3775}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3761, file: !3755, line: 127, baseType: !3797, size: 64, offset: 512)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3761, file: !3755, line: 128, baseType: !3802, size: 64, offset: 576)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{!3753, !3775}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3761, file: !3755, line: 130, baseType: !3806, size: 64, offset: 640)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!3753, !3775, !3753}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3761, file: !3755, line: 133, baseType: !3810, size: 64, offset: 704)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!3753, !3775, !644}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3761, file: !3755, line: 135, baseType: !3814, size: 64, offset: 768)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!207, !3775, !644, !644, !7, !7, !3817}
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3755, line: 43, size: 640, elements: !3819)
!3819 = !{!3820, !3821, !3822}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3818, file: !3755, line: 44, baseType: !3753, size: 64)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3818, file: !3755, line: 45, baseType: !7, size: 32, offset: 64)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3818, file: !3755, line: 46, baseType: !3823, size: 512, offset: 128)
!3823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !280, size: 512, elements: !367)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3761, file: !3755, line: 140, baseType: !3806, size: 64, offset: 832)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3761, file: !3755, line: 143, baseType: !3802, size: 64, offset: 896)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3761, file: !3755, line: 145, baseType: !3764, size: 64, offset: 960)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3761, file: !3755, line: 146, baseType: !3828, size: 64, offset: 1024)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!207, !3775, !3831}
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3755, line: 29, size: 128, elements: !3833)
!3833 = !{!3834, !3835, !3836}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3832, file: !3755, line: 30, baseType: !7, size: 32)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3832, file: !3755, line: 31, baseType: !7, size: 32, offset: 32)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3832, file: !3755, line: 32, baseType: !3775, size: 64, offset: 64)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3761, file: !3755, line: 148, baseType: !3838, size: 64, offset: 1088)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{!207, !3775, !3144}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3754, file: !3755, line: 20, baseType: !3144, size: 64, offset: 128)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3145, file: !73, line: 534, baseType: !703, size: 32, offset: 4992)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3145, file: !73, line: 535, baseType: !218, size: 32, offset: 5024)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3145, file: !73, line: 537, baseType: !615, offset: 5056)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3145, file: !73, line: 538, baseType: !273, size: 128, offset: 5056)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3145, file: !73, line: 540, baseType: !3847, size: 64, offset: 5184)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3849, line: 54, size: 960, elements: !3850)
!3849 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3850 = !{!3851, !3852, !3853, !3854, !3855, !3856, !3857, !3861, !3865, !3866, !3867, !3868, !3872, !3876, !3877}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3848, file: !3849, line: 55, baseType: !644, size: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3848, file: !3849, line: 56, baseType: !736, size: 64, offset: 64)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3848, file: !3849, line: 58, baseType: !3225, size: 64, offset: 128)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3848, file: !3849, line: 59, baseType: !3225, size: 64, offset: 192)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3848, file: !3849, line: 60, baseType: !3154, size: 64, offset: 256)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3848, file: !3849, line: 62, baseType: !3457, size: 64, offset: 320)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3848, file: !3849, line: 63, baseType: !3858, size: 64, offset: 384)
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = !DISubroutineType(types: !3860)
!3860 = !{!670, !3144, !3464}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3848, file: !3849, line: 65, baseType: !3862, size: 64, offset: 448)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = !DISubroutineType(types: !3864)
!3864 = !{null, !3847}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3848, file: !3849, line: 66, baseType: !3466, size: 64, offset: 512)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3848, file: !3849, line: 68, baseType: !3475, size: 64, offset: 576)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3848, file: !3849, line: 70, baseType: !3261, size: 64, offset: 640)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3848, file: !3849, line: 71, baseType: !3869, size: 64, offset: 704)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DISubroutineType(types: !3871)
!3871 = !{!2904, !3144}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3848, file: !3849, line: 73, baseType: !3873, size: 64, offset: 768)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{null, !3144, !3293, !3294}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3848, file: !3849, line: 75, baseType: !3470, size: 64, offset: 832)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3848, file: !3849, line: 77, baseType: !3587, size: 64, offset: 896)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3145, file: !73, line: 541, baseType: !3225, size: 64, offset: 5248)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3145, file: !73, line: 543, baseType: !3466, size: 64, offset: 5312)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3145, file: !73, line: 544, baseType: !3881, size: 64, offset: 5376)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3145, file: !73, line: 545, baseType: !3884, size: 64, offset: 5440)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3145, file: !73, line: 547, baseType: !689, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3145, file: !73, line: 548, baseType: !689, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3145, file: !73, line: 549, baseType: !689, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3145, file: !73, line: 550, baseType: !689, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3135, file: !196, line: 548, baseType: !207, size: 32, offset: 320)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "detach_count", scope: !3135, file: !196, line: 549, baseType: !7, size: 32, offset: 352)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "hw_dev", scope: !3135, file: !196, line: 550, baseType: !3144, size: 64, offset: 384)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !3135, file: !196, line: 552, baseType: !644, size: 64, offset: 448)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "board_ptr", scope: !3135, file: !196, line: 553, baseType: !2904, size: 64, offset: 512)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "attached", scope: !3135, file: !196, line: 554, baseType: !7, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "ioenabled", scope: !3135, file: !196, line: 555, baseType: !7, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "spinlock", scope: !3135, file: !196, line: 556, baseType: !615, offset: 584)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3135, file: !196, line: 557, baseType: !861, size: 192, offset: 640)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "attach_lock", scope: !3135, file: !196, line: 558, baseType: !1032, size: 256, offset: 832)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3135, file: !196, line: 559, baseType: !3435, size: 32, offset: 1088)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "n_subdevices", scope: !3135, file: !196, line: 561, baseType: !207, size: 32, offset: 1120)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "subdevices", scope: !3135, file: !196, line: 562, baseType: !3903, size: 64, offset: 1152)
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_subdevice", file: !196, line: 153, size: 1792, elements: !3905)
!3905 = !{!3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3981, !3994, !3997, !3998, !4012, !4013, !4014, !4015, !4019, !4024, !4025, !4026, !4027, !4031, !4032, !4033, !4034, !4035}
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3904, file: !196, line: 154, baseType: !3134, size: 64)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3904, file: !196, line: 155, baseType: !207, size: 32, offset: 64)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3904, file: !196, line: 156, baseType: !207, size: 32, offset: 96)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "n_chan", scope: !3904, file: !196, line: 157, baseType: !207, size: 32, offset: 128)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "subdev_flags", scope: !3904, file: !196, line: 158, baseType: !207, size: 32, offset: 160)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "len_chanlist", scope: !3904, file: !196, line: 159, baseType: !207, size: 32, offset: 192)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3904, file: !196, line: 161, baseType: !233, size: 64, offset: 256)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "async", scope: !3904, file: !196, line: 163, baseType: !3914, size: 64, offset: 320)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_async", file: !196, line: 347, size: 1536, elements: !3916)
!3916 = !{!3917, !3918, !3919, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3967, !3968, !3969}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3915, file: !196, line: 348, baseType: !233, size: 64)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_bufsz", scope: !3915, file: !196, line: 349, baseType: !7, size: 32, offset: 64)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "buf_map", scope: !3915, file: !196, line: 350, baseType: !3920, size: 64, offset: 128)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_map", file: !196, line: 249, size: 256, elements: !3922)
!3922 = !{!3923, !3924, !3930, !3931, !3932}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "dma_hw_dev", scope: !3921, file: !196, line: 250, baseType: !3144, size: 64)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "page_list", scope: !3921, file: !196, line: 251, baseType: !3925, size: 64, offset: 64)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_page", file: !196, line: 220, size: 128, elements: !3927)
!3927 = !{!3928, !3929}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "virt_addr", scope: !3926, file: !196, line: 221, baseType: !233, size: 64)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3926, file: !196, line: 222, baseType: !2078, size: 64, offset: 64)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "n_pages", scope: !3921, file: !196, line: 252, baseType: !7, size: 32, offset: 128)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "dma_dir", scope: !3921, file: !196, line: 253, baseType: !93, size: 32, offset: 160)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3921, file: !196, line: 254, baseType: !3435, size: 32, offset: 192)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "max_bufsize", scope: !3915, file: !196, line: 351, baseType: !7, size: 32, offset: 192)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_count", scope: !3915, file: !196, line: 352, baseType: !7, size: 32, offset: 224)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_alloc_count", scope: !3915, file: !196, line: 353, baseType: !7, size: 32, offset: 256)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_count", scope: !3915, file: !196, line: 354, baseType: !7, size: 32, offset: 288)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_alloc_count", scope: !3915, file: !196, line: 355, baseType: !7, size: 32, offset: 320)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_ptr", scope: !3915, file: !196, line: 356, baseType: !7, size: 32, offset: 352)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_ptr", scope: !3915, file: !196, line: 357, baseType: !7, size: 32, offset: 384)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "cur_chan", scope: !3915, file: !196, line: 358, baseType: !7, size: 32, offset: 416)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "scans_done", scope: !3915, file: !196, line: 359, baseType: !7, size: 32, offset: 448)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "scan_progress", scope: !3915, file: !196, line: 360, baseType: !7, size: 32, offset: 480)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "munge_chan", scope: !3915, file: !196, line: 361, baseType: !7, size: 32, offset: 512)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "munge_count", scope: !3915, file: !196, line: 362, baseType: !7, size: 32, offset: 544)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "munge_ptr", scope: !3915, file: !196, line: 363, baseType: !7, size: 32, offset: 576)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3915, file: !196, line: 364, baseType: !7, size: 32, offset: 608)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !3915, file: !196, line: 365, baseType: !3948, size: 640, offset: 640)
!3948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_cmd", file: !106, line: 589, size: 640, elements: !3949)
!3949 = !{!3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3966}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "subdev", scope: !3948, file: !106, line: 590, baseType: !7, size: 32)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3948, file: !106, line: 591, baseType: !7, size: 32, offset: 32)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "start_src", scope: !3948, file: !106, line: 593, baseType: !7, size: 32, offset: 64)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "start_arg", scope: !3948, file: !106, line: 594, baseType: !7, size: 32, offset: 96)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "scan_begin_src", scope: !3948, file: !106, line: 596, baseType: !7, size: 32, offset: 128)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "scan_begin_arg", scope: !3948, file: !106, line: 597, baseType: !7, size: 32, offset: 160)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "convert_src", scope: !3948, file: !106, line: 599, baseType: !7, size: 32, offset: 192)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "convert_arg", scope: !3948, file: !106, line: 600, baseType: !7, size: 32, offset: 224)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "scan_end_src", scope: !3948, file: !106, line: 602, baseType: !7, size: 32, offset: 256)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "scan_end_arg", scope: !3948, file: !106, line: 603, baseType: !7, size: 32, offset: 288)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "stop_src", scope: !3948, file: !106, line: 605, baseType: !7, size: 32, offset: 320)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "stop_arg", scope: !3948, file: !106, line: 606, baseType: !7, size: 32, offset: 352)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist", scope: !3948, file: !106, line: 608, baseType: !1136, size: 64, offset: 384)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist_len", scope: !3948, file: !106, line: 609, baseType: !7, size: 32, offset: 448)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3948, file: !106, line: 611, baseType: !3965, size: 64, offset: 512)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !3948, file: !106, line: 612, baseType: !7, size: 32, offset: 576)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "wait_head", scope: !3915, file: !196, line: 366, baseType: !1108, size: 128, offset: 1280)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "cb_mask", scope: !3915, file: !196, line: 367, baseType: !7, size: 32, offset: 1408)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "inttrig", scope: !3915, file: !196, line: 368, baseType: !3970, size: 64, offset: 1472)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!207, !3134, !3903, !7}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3904, file: !196, line: 165, baseType: !233, size: 64, offset: 384)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !3904, file: !196, line: 166, baseType: !233, size: 64, offset: 448)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "runflags", scope: !3904, file: !196, line: 167, baseType: !7, size: 32, offset: 512)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "spin_lock", scope: !3904, file: !196, line: 168, baseType: !615, offset: 544)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "io_bits", scope: !3904, file: !196, line: 170, baseType: !7, size: 32, offset: 544)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata", scope: !3904, file: !196, line: 172, baseType: !7, size: 32, offset: 576)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata_list", scope: !3904, file: !196, line: 173, baseType: !3980, size: 64, offset: 640)
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "range_table", scope: !3904, file: !196, line: 175, baseType: !3982, size: 64, offset: 704)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3984)
!3984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_lrange", file: !196, line: 635, size: 32, elements: !3985)
!3985 = !{!3986, !3987}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3984, file: !196, line: 636, baseType: !207, size: 32)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3984, file: !196, line: 637, baseType: !3988, offset: 32)
!3988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3989, elements: !2386)
!3989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_krange", file: !106, line: 685, size: 96, elements: !3990)
!3990 = !{!3991, !3992, !3993}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !3989, file: !106, line: 686, baseType: !207, size: 32)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3989, file: !106, line: 687, baseType: !207, size: 32, offset: 32)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3989, file: !106, line: 688, baseType: !7, size: 32, offset: 64)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "range_table_list", scope: !3904, file: !196, line: 176, baseType: !3995, size: 64, offset: 768)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3982)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist", scope: !3904, file: !196, line: 178, baseType: !1136, size: 64, offset: 832)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "insn_read", scope: !3904, file: !196, line: 180, baseType: !3999, size: 64, offset: 896)
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = !DISubroutineType(types: !4001)
!4001 = !{!207, !3134, !3903, !4002, !1136}
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_insn", file: !106, line: 491, size: 320, elements: !4004)
!4004 = !{!4005, !4006, !4007, !4008, !4009, !4010}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4003, file: !106, line: 492, baseType: !7, size: 32)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !4003, file: !106, line: 493, baseType: !7, size: 32, offset: 32)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4003, file: !106, line: 494, baseType: !1136, size: 64, offset: 64)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "subdev", scope: !4003, file: !106, line: 495, baseType: !7, size: 32, offset: 128)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "chanspec", scope: !4003, file: !106, line: 496, baseType: !7, size: 32, offset: 160)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !4003, file: !106, line: 497, baseType: !4011, size: 96, offset: 192)
!4011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 96, elements: !757)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "insn_write", scope: !3904, file: !196, line: 182, baseType: !3999, size: 64, offset: 960)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "insn_bits", scope: !3904, file: !196, line: 184, baseType: !3999, size: 64, offset: 1024)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "insn_config", scope: !3904, file: !196, line: 186, baseType: !3999, size: 64, offset: 1088)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmd", scope: !3904, file: !196, line: 191, baseType: !4016, size: 64, offset: 1152)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!4017 = !DISubroutineType(types: !4018)
!4018 = !{!207, !3134, !3903}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmdtest", scope: !3904, file: !196, line: 192, baseType: !4020, size: 64, offset: 1216)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = !DISubroutineType(types: !4022)
!4022 = !{!207, !3134, !3903, !4023}
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3904, file: !196, line: 195, baseType: !4016, size: 64, offset: 1280)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "cancel", scope: !3904, file: !196, line: 196, baseType: !4016, size: 64, offset: 1344)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "buf_change", scope: !3904, file: !196, line: 199, baseType: !4016, size: 64, offset: 1408)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "munge", scope: !3904, file: !196, line: 202, baseType: !4028, size: 64, offset: 1472)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{null, !3134, !3903, !233, !7, !7}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "async_dma_dir", scope: !3904, file: !196, line: 205, baseType: !93, size: 32, offset: 1536)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3904, file: !196, line: 207, baseType: !7, size: 32, offset: 1568)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !3904, file: !196, line: 209, baseType: !3144, size: 64, offset: 1600)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3904, file: !196, line: 210, baseType: !207, size: 32, offset: 1664)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "readback", scope: !3904, file: !196, line: 212, baseType: !1136, size: 64, offset: 1728)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "mmio", scope: !3135, file: !196, line: 565, baseType: !233, size: 64, offset: 1216)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "iobase", scope: !3135, file: !196, line: 566, baseType: !216, size: 64, offset: 1280)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "iolen", scope: !3135, file: !196, line: 567, baseType: !216, size: 64, offset: 1344)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3135, file: !196, line: 568, baseType: !7, size: 32, offset: 1408)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "read_subdev", scope: !3135, file: !196, line: 570, baseType: !3903, size: 64, offset: 1472)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "write_subdev", scope: !3135, file: !196, line: 571, baseType: !3903, size: 64, offset: 1536)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "async_queue", scope: !3135, file: !196, line: 573, baseType: !1470, size: 64, offset: 1600)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3135, file: !196, line: 575, baseType: !4044, size: 64, offset: 1664)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{!207, !3134}
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3135, file: !196, line: 576, baseType: !4048, size: 64, offset: 1728)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DISubroutineType(types: !4050)
!4050 = !{null, !3134}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "insn_device_config", scope: !3135, file: !196, line: 577, baseType: !4052, size: 64, offset: 1792)
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = !DISubroutineType(types: !4054)
!4054 = !{!207, !3134, !4002, !1136}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "get_valid_routes", scope: !3135, file: !196, line: 579, baseType: !4056, size: 64, offset: 1856)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{!7, !3134, !7, !1136}
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_devconfig", file: !106, line: 834, size: 1184, elements: !4061)
!4061 = !{!4062, !4064}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !4060, file: !106, line: 835, baseType: !4063, size: 160)
!4063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !646, size: 160, elements: !2978)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !4060, file: !106, line: 836, baseType: !4065, size: 1024, offset: 160)
!4065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 1024, elements: !602)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3124, file: !196, line: 444, baseType: !4048, size: 64, offset: 256)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "auto_attach", scope: !3124, file: !196, line: 445, baseType: !4068, size: 64, offset: 320)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = !DISubroutineType(types: !4070)
!4070 = !{!207, !3134, !216}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "num_names", scope: !3124, file: !196, line: 446, baseType: !7, size: 32, offset: 384)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !3124, file: !196, line: 447, baseType: !4073, size: 64, offset: 448)
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4074 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !644)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3124, file: !196, line: 448, baseType: !207, size: 32, offset: 512)
!4076 = !DIGlobalVariableExpression(var: !4077, expr: !DIExpression())
!4077 = distinct !DIGlobalVariable(name: "nidio_boards", scope: !2, file: !3, line: 268, type: !4078, isLocal: true, isDefinition: true)
!4078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4079, size: 384, elements: !757)
!4079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4080)
!4080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nidio_board", file: !3, line: 262, size: 128, elements: !4081)
!4081 = !{!4082, !4083, !4084}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4080, file: !3, line: 263, baseType: !644, size: 64)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "uses_firmware", scope: !4080, file: !3, line: 264, baseType: !7, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "dio_speed", scope: !4080, file: !3, line: 265, baseType: !7, size: 32, offset: 96)
!4085 = !DIGlobalVariableExpression(var: !4086, expr: !DIExpression())
!4086 = distinct !DIGlobalVariable(name: "fw_file", scope: !4087, file: !3, line: 846, type: !4088, isLocal: true, isDefinition: true)
!4087 = distinct !DISubprogram(name: "pci_6534_upload_firmware", scope: !3, file: !3, line: 843, type: !4045, scopeLine: 844, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!4088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4074, size: 192, elements: !757)
!4089 = !DIGlobalVariableExpression(var: !4090, expr: !DIExpression())
!4090 = distinct !DIGlobalVariable(name: "timeout", scope: !4091, file: !3, line: 760, type: !4096, isLocal: true, isDefinition: true)
!4091 = distinct !DISubprogram(name: "pci_6534_load_fpga", scope: !3, file: !3, line: 756, type: !4092, scopeLine: 759, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!4092 = !DISubroutineType(types: !4093)
!4093 = !{!207, !3134, !4094, !1357, !216}
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !402)
!4096 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!4097 = !DIGlobalVariableExpression(var: !4098, expr: !DIExpression())
!4098 = distinct !DIGlobalVariable(name: "ni_pcidio_pci_driver", scope: !2, file: !3, line: 1000, type: !4099, isLocal: true, isDefinition: true)
!4099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !4100, line: 858, size: 2048, elements: !4101)
!4100 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!4101 = !{!4102, !4103, !4104, !4116, !4335, !4339, !4343, !4347, !4348, !4352, !4370, !4371, !4372}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4099, file: !4100, line: 859, baseType: !273, size: 128)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4099, file: !4100, line: 860, baseType: !644, size: 64, offset: 128)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4099, file: !4100, line: 861, baseType: !4105, size: 64, offset: 192)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4107)
!4107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3528, line: 38, size: 256, elements: !4108)
!4108 = !{!4109, !4110, !4111, !4112, !4113, !4114, !4115}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4107, file: !3528, line: 39, baseType: !220, size: 32)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4107, file: !3528, line: 39, baseType: !220, size: 32, offset: 32)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4107, file: !3528, line: 40, baseType: !220, size: 32, offset: 64)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4107, file: !3528, line: 40, baseType: !220, size: 32, offset: 96)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4107, file: !3528, line: 41, baseType: !220, size: 32, offset: 128)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4107, file: !3528, line: 41, baseType: !220, size: 32, offset: 160)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4107, file: !3528, line: 42, baseType: !3547, size: 64, offset: 192)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4099, file: !4100, line: 862, baseType: !4117, size: 64, offset: 256)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DISubroutineType(types: !4119)
!4119 = !{!207, !4120, !4105}
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !4100, line: 309, size: 19264, elements: !4122)
!4122 = !{!4123, !4124, !4199, !4200, !4201, !4202, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4231, !4232, !4233, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4257, !4258, !4259, !4260, !4262, !4263, !4264, !4265, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4308, !4309, !4311, !4312, !4313, !4314, !4316, !4317, !4318, !4321, !4328, !4329, !4330, !4331, !4332, !4333, !4334}
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !4121, file: !4100, line: 310, baseType: !273, size: 128)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4121, file: !4100, line: 311, baseType: !4125, size: 64, offset: 128)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !4100, line: 605, size: 8064, elements: !4127)
!4127 = !{!4128, !4129, !4130, !4131, !4132, !4133, !4134, !4149, !4150, !4151, !4175, !4178, !4179, !4183, !4184, !4185, !4186, !4187, !4191, !4192, !4194, !4195, !4196, !4197, !4198}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4126, file: !4100, line: 606, baseType: !273, size: 128)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4126, file: !4100, line: 607, baseType: !4125, size: 64, offset: 128)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4126, file: !4100, line: 608, baseType: !273, size: 128, offset: 192)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4126, file: !4100, line: 609, baseType: !273, size: 128, offset: 320)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4126, file: !4100, line: 610, baseType: !4120, size: 64, offset: 448)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4126, file: !4100, line: 611, baseType: !273, size: 128, offset: 512)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4126, file: !4100, line: 613, baseType: !4135, size: 256, offset: 640)
!4135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4136, size: 256, elements: !1622)
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4137, size: 64)
!4137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4138, line: 20, size: 512, elements: !4139)
!4138 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!4139 = !{!4140, !4142, !4143, !4144, !4145, !4146, !4147, !4148}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4137, file: !4138, line: 21, baseType: !4141, size: 64)
!4141 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !241, line: 158, baseType: !2902)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4137, file: !4138, line: 22, baseType: !4141, size: 64, offset: 64)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4137, file: !4138, line: 23, baseType: !644, size: 64, offset: 128)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4137, file: !4138, line: 24, baseType: !216, size: 64, offset: 192)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4137, file: !4138, line: 25, baseType: !216, size: 64, offset: 256)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4137, file: !4138, line: 26, baseType: !4136, size: 64, offset: 320)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4137, file: !4138, line: 26, baseType: !4136, size: 64, offset: 384)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4137, file: !4138, line: 26, baseType: !4136, size: 64, offset: 448)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4126, file: !4100, line: 614, baseType: !273, size: 128, offset: 896)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !4126, file: !4100, line: 615, baseType: !4137, size: 512, offset: 1024)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4126, file: !4100, line: 617, baseType: !4152, size: 64, offset: 1536)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !4100, line: 731, size: 320, elements: !4154)
!4154 = !{!4155, !4159, !4163, !4167, !4171}
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4153, file: !4100, line: 732, baseType: !4156, size: 64)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = !DISubroutineType(types: !4158)
!4158 = !{!207, !4125}
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4153, file: !4100, line: 733, baseType: !4160, size: 64, offset: 64)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = !DISubroutineType(types: !4162)
!4162 = !{null, !4125}
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4153, file: !4100, line: 734, baseType: !4164, size: 64, offset: 128)
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4165, size: 64)
!4165 = !DISubroutineType(types: !4166)
!4166 = !{!233, !4125, !7, !207}
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4153, file: !4100, line: 735, baseType: !4168, size: 64, offset: 192)
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4169, size: 64)
!4169 = !DISubroutineType(types: !4170)
!4170 = !{!207, !4125, !7, !207, !207, !2425}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4153, file: !4100, line: 736, baseType: !4172, size: 64, offset: 256)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = !DISubroutineType(types: !4174)
!4174 = !{!207, !4125, !7, !207, !207, !218}
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4126, file: !4100, line: 618, baseType: !4176, size: 64, offset: 1600)
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4177 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !4100, line: 537, flags: DIFlagFwdDecl)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4126, file: !4100, line: 619, baseType: !233, size: 64, offset: 1664)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !4126, file: !4100, line: 620, baseType: !4180, size: 64, offset: 1728)
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4181, size: 64)
!4181 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4182, line: 123, flags: DIFlagFwdDecl)
!4182 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4126, file: !4100, line: 622, baseType: !404, size: 8, offset: 1792)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4126, file: !4100, line: 623, baseType: !404, size: 8, offset: 1800)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !4126, file: !4100, line: 624, baseType: !404, size: 8, offset: 1808)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !4126, file: !4100, line: 625, baseType: !404, size: 8, offset: 1816)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4126, file: !4100, line: 630, baseType: !4188, size: 384, offset: 1824)
!4188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !646, size: 384, elements: !4189)
!4189 = !{!4190}
!4190 = !DISubrange(count: 48)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !4126, file: !4100, line: 632, baseType: !210, size: 16, offset: 2208)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !4126, file: !4100, line: 633, baseType: !4193, size: 16, offset: 2224)
!4193 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !4100, line: 237, baseType: !210)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !4126, file: !4100, line: 634, baseType: !3144, size: 64, offset: 2240)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4126, file: !4100, line: 635, baseType: !3145, size: 5568, offset: 2304)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !4126, file: !4100, line: 636, baseType: !3239, size: 64, offset: 7872)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !4126, file: !4100, line: 637, baseType: !3239, size: 64, offset: 7936)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !4126, file: !4100, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !4121, file: !4100, line: 312, baseType: !4125, size: 64, offset: 192)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4121, file: !4100, line: 314, baseType: !233, size: 64, offset: 256)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !4121, file: !4100, line: 315, baseType: !4180, size: 64, offset: 320)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4121, file: !4100, line: 316, baseType: !4203, size: 64, offset: 384)
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !4100, line: 69, size: 832, elements: !4205)
!4205 = !{!4206, !4207, !4208, !4211, !4212}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4204, file: !4100, line: 70, baseType: !4125, size: 64)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4204, file: !4100, line: 71, baseType: !273, size: 128, offset: 64)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4204, file: !4100, line: 72, baseType: !4209, size: 64, offset: 192)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !4100, line: 72, flags: DIFlagFwdDecl)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4204, file: !4100, line: 73, baseType: !404, size: 8, offset: 256)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4204, file: !4100, line: 74, baseType: !3148, size: 512, offset: 320)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !4121, file: !4100, line: 318, baseType: !7, size: 32, offset: 448)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4121, file: !4100, line: 319, baseType: !210, size: 16, offset: 480)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4121, file: !4100, line: 320, baseType: !210, size: 16, offset: 496)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4121, file: !4100, line: 321, baseType: !210, size: 16, offset: 512)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4121, file: !4100, line: 322, baseType: !210, size: 16, offset: 528)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4121, file: !4100, line: 323, baseType: !7, size: 32, offset: 544)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4121, file: !4100, line: 324, baseType: !402, size: 8, offset: 576)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4121, file: !4100, line: 325, baseType: !402, size: 8, offset: 584)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !4121, file: !4100, line: 330, baseType: !402, size: 8, offset: 592)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !4121, file: !4100, line: 331, baseType: !402, size: 8, offset: 600)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !4121, file: !4100, line: 332, baseType: !402, size: 8, offset: 608)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !4121, file: !4100, line: 333, baseType: !402, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !4121, file: !4100, line: 334, baseType: !402, size: 8, offset: 624)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4121, file: !4100, line: 335, baseType: !402, size: 8, offset: 632)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !4121, file: !4100, line: 336, baseType: !1381, size: 16, offset: 640)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !4121, file: !4100, line: 337, baseType: !222, size: 64, offset: 704)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4121, file: !4100, line: 339, baseType: !4230, size: 64, offset: 768)
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4121, file: !4100, line: 340, baseType: !280, size: 64, offset: 832)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4121, file: !4100, line: 346, baseType: !3740, size: 128, offset: 896)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !4121, file: !4100, line: 348, baseType: !4234, size: 32, offset: 1024)
!4234 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !4100, line: 155, baseType: !207)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !4121, file: !4100, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !4121, file: !4100, line: 352, baseType: !402, size: 8, offset: 1064)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !4121, file: !4100, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !4121, file: !4100, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !4121, file: !4100, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !4121, file: !4100, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !4121, file: !4100, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !4121, file: !4100, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !4121, file: !4100, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !4121, file: !4100, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !4121, file: !4100, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !4121, file: !4100, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !4121, file: !4100, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !4121, file: !4100, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !4121, file: !4100, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !4121, file: !4100, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !4121, file: !4100, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !4121, file: !4100, line: 376, baseType: !7, size: 32, offset: 1120)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !4121, file: !4100, line: 377, baseType: !7, size: 32, offset: 1152)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !4121, file: !4100, line: 380, baseType: !4255, size: 64, offset: 1216)
!4255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4256, size: 64)
!4256 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !4100, line: 303, flags: DIFlagFwdDecl)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !4121, file: !4100, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !4121, file: !4100, line: 383, baseType: !207, size: 32, offset: 1312)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !4121, file: !4100, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !4121, file: !4100, line: 387, baseType: !4261, size: 32, offset: 1376)
!4261 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !4100, line: 180, baseType: !7)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4121, file: !4100, line: 388, baseType: !3145, size: 5568, offset: 1408)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !4121, file: !4100, line: 390, baseType: !207, size: 32, offset: 6976)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4121, file: !4100, line: 396, baseType: !7, size: 32, offset: 7008)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4121, file: !4100, line: 397, baseType: !4266, size: 8704, offset: 7040)
!4266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4137, size: 8704, elements: !4267)
!4267 = !{!4268}
!4268 = !DISubrange(count: 17)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4121, file: !4100, line: 399, baseType: !689, size: 8, offset: 15744)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !4121, file: !4100, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !4121, file: !4100, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !4121, file: !4100, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !4121, file: !4100, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !4121, file: !4100, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !4121, file: !4100, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !4121, file: !4100, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !4121, file: !4100, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !4121, file: !4100, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !4121, file: !4100, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !4121, file: !4100, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !4121, file: !4100, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !4121, file: !4100, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !4121, file: !4100, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !4121, file: !4100, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !4121, file: !4100, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !4121, file: !4100, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !4121, file: !4100, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !4121, file: !4100, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !4121, file: !4100, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !4121, file: !4100, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !4121, file: !4100, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !4121, file: !4100, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !4121, file: !4100, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !4121, file: !4100, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !4121, file: !4100, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !4121, file: !4100, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !4121, file: !4100, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !4121, file: !4100, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !4121, file: !4100, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !4121, file: !4100, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !4121, file: !4100, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !4121, file: !4100, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !4121, file: !4100, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !4121, file: !4100, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !4121, file: !4100, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !4121, file: !4100, line: 450, baseType: !4307, size: 16, offset: 15792)
!4307 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !4100, line: 206, baseType: !210)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !4121, file: !4100, line: 451, baseType: !240, size: 32, offset: 15808)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !4121, file: !4100, line: 453, baseType: !4310, size: 512, offset: 15840)
!4310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 512, elements: !1161)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !4121, file: !4100, line: 454, baseType: !741, size: 64, offset: 16384)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !4121, file: !4100, line: 455, baseType: !3239, size: 64, offset: 16448)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !4121, file: !4100, line: 456, baseType: !207, size: 32, offset: 16512)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !4121, file: !4100, line: 457, baseType: !4315, size: 1088, offset: 16576)
!4315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3239, size: 1088, elements: !4267)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !4121, file: !4100, line: 458, baseType: !4315, size: 1088, offset: 17664)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !4121, file: !4100, line: 469, baseType: !3225, size: 64, offset: 18752)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !4121, file: !4100, line: 471, baseType: !4319, size: 64, offset: 18816)
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4320, size: 64)
!4320 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !4100, line: 304, flags: DIFlagFwdDecl)
!4321 = !DIDerivedType(tag: DW_TAG_member, scope: !4121, file: !4100, line: 478, baseType: !4322, size: 64, offset: 18880)
!4322 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4121, file: !4100, line: 478, size: 64, elements: !4323)
!4323 = !{!4324, !4327}
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4322, file: !4100, line: 479, baseType: !4325, size: 64)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !4100, line: 305, flags: DIFlagFwdDecl)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4322, file: !4100, line: 480, baseType: !4120, size: 64)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !4121, file: !4100, line: 482, baseType: !1381, size: 16, offset: 18944)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !4121, file: !4100, line: 483, baseType: !402, size: 8, offset: 18960)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !4121, file: !4100, line: 497, baseType: !1381, size: 16, offset: 18976)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !4121, file: !4100, line: 498, baseType: !2902, size: 64, offset: 19008)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !4121, file: !4100, line: 499, baseType: !1357, size: 64, offset: 19072)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !4121, file: !4100, line: 500, baseType: !670, size: 64, offset: 19136)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !4121, file: !4100, line: 502, baseType: !216, size: 64, offset: 19200)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4099, file: !4100, line: 863, baseType: !4336, size: 64, offset: 320)
!4336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4337, size: 64)
!4337 = !DISubroutineType(types: !4338)
!4338 = !{null, !4120}
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4099, file: !4100, line: 864, baseType: !4340, size: 64, offset: 384)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4341 = !DISubroutineType(types: !4342)
!4342 = !{!207, !4120, !3558}
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4099, file: !4100, line: 865, baseType: !4344, size: 64, offset: 448)
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4345 = !DISubroutineType(types: !4346)
!4346 = !{!207, !4120}
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4099, file: !4100, line: 866, baseType: !4336, size: 64, offset: 512)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4099, file: !4100, line: 867, baseType: !4349, size: 64, offset: 576)
!4349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4350, size: 64)
!4350 = !DISubroutineType(types: !4351)
!4351 = !{!207, !4120, !207}
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4099, file: !4100, line: 868, baseType: !4353, size: 64, offset: 640)
!4353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4354, size: 64)
!4354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4355)
!4355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !4100, line: 795, size: 384, elements: !4356)
!4356 = !{!4357, !4362, !4366, !4367, !4368, !4369}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4355, file: !4100, line: 797, baseType: !4358, size: 64)
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4359 = !DISubroutineType(types: !4360)
!4360 = !{!4361, !4120, !4261}
!4361 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !4100, line: 772, baseType: !7)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4355, file: !4100, line: 801, baseType: !4363, size: 64, offset: 64)
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4364, size: 64)
!4364 = !DISubroutineType(types: !4365)
!4365 = !{!4361, !4120}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4355, file: !4100, line: 804, baseType: !4363, size: 64, offset: 128)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4355, file: !4100, line: 807, baseType: !4336, size: 64, offset: 192)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4355, file: !4100, line: 808, baseType: !4336, size: 64, offset: 256)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4355, file: !4100, line: 811, baseType: !4336, size: 64, offset: 320)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4099, file: !4100, line: 869, baseType: !3225, size: 64, offset: 704)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4099, file: !4100, line: 870, baseType: !3516, size: 1152, offset: 768)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4099, file: !4100, line: 871, baseType: !4373, size: 128, offset: 1920)
!4373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !4100, line: 759, size: 128, elements: !4374)
!4374 = !{!4375, !4376}
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4373, file: !4100, line: 760, baseType: !615)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4373, file: !4100, line: 761, baseType: !273, size: 128)
!4377 = !DIGlobalVariableExpression(var: !4378, expr: !DIExpression())
!4378 = distinct !DIGlobalVariable(name: "ni_pcidio_pci_table", scope: !2, file: !3, line: 992, type: !4379, isLocal: true, isDefinition: true)
!4379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4106, size: 1024, elements: !1622)
!4380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !645, size: 248, elements: !4381)
!4381 = !{!4382}
!4382 = !DISubrange(count: 31)
!4383 = !{!"rsp"}
!4384 = !{i32 7, !"Dwarf Version", i32 4}
!4385 = !{i32 2, !"Debug Info Version", i32 3}
!4386 = !{i32 1, !"wchar_size", i32 2}
!4387 = !{i32 1, !"Code Model", i32 2}
!4388 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4389 = distinct !DISubprogram(name: "ni_pcidio_driver_init", scope: !3, file: !3, line: 1006, type: !4390, scopeLine: 1006, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!4390 = !DISubroutineType(types: !4391)
!4391 = !{!207}
!4392 = !DILocation(line: 1006, column: 1, scope: !4389)
!4393 = distinct !DISubprogram(name: "ni_pcidio_driver_exit", scope: !3, file: !3, line: 1006, type: !2668, scopeLine: 1006, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!4394 = !DILocation(line: 1006, column: 1, scope: !4393)
!4395 = distinct !DISubprogram(name: "nidio_detach", scope: !3, file: !3, line: 961, type: !4049, scopeLine: 962, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!4396 = !DILocalVariable(name: "dev", arg: 1, scope: !4395, file: !3, line: 961, type: !3134)
!4397 = !DILocation(line: 961, column: 48, scope: !4395)
!4398 = !DILocalVariable(name: "devpriv", scope: !4395, file: !3, line: 963, type: !4399)
!4399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4400, size: 64)
!4400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nidio96_private", file: !3, line: 284, size: 320, elements: !4401)
!4401 = !{!4402, !4436, !4437, !4438, !4439, !4441, !4442}
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "mite", scope: !4400, file: !3, line: 285, baseType: !4403, size: 64)
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4404, size: 64)
!4404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mite", file: !4405, line: 44, size: 2240, elements: !4406)
!4405 = !DIFile(filename: "drivers/staging/comedi/drivers/mite.h", directory: "/home/lizy2001/genbc/linux")
!4406 = !{!4407, !4408, !4409, !4433, !4434, !4435}
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "pcidev", scope: !4404, file: !4405, line: 45, baseType: !4120, size: 64)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "mmio", scope: !4404, file: !4405, line: 46, baseType: !233, size: 64, offset: 64)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !4404, file: !4405, line: 47, baseType: !4410, size: 2048, offset: 128)
!4410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4411, size: 2048, elements: !367)
!4411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mite_channel", file: !4405, line: 36, size: 256, elements: !4412)
!4412 = !{!4413, !4414, !4415, !4416, !4417}
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "mite", scope: !4411, file: !4405, line: 37, baseType: !4403, size: 64)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !4411, file: !4405, line: 38, baseType: !7, size: 32, offset: 64)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4411, file: !4405, line: 39, baseType: !207, size: 32, offset: 96)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !4411, file: !4405, line: 40, baseType: !207, size: 32, offset: 128)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "ring", scope: !4411, file: !4405, line: 41, baseType: !4418, size: 64, offset: 192)
!4418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4419, size: 64)
!4419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mite_ring", file: !4405, line: 29, size: 256, elements: !4420)
!4420 = !{!4421, !4422, !4423, !4432}
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "hw_dev", scope: !4419, file: !4405, line: 30, baseType: !3144, size: 64)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "n_links", scope: !4419, file: !4405, line: 31, baseType: !7, size: 32, offset: 64)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "descs", scope: !4419, file: !4405, line: 32, baseType: !4424, size: 64, offset: 128)
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mite_dma_desc", file: !4405, line: 22, size: 128, elements: !4426)
!4426 = !{!4427, !4429, !4430, !4431}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4425, file: !4405, line: 23, baseType: !4428, size: 32)
!4428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !1417, line: 31, baseType: !220)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4425, file: !4405, line: 24, baseType: !4428, size: 32, offset: 32)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4425, file: !4405, line: 25, baseType: !4428, size: 32, offset: 64)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "dar", scope: !4425, file: !4405, line: 26, baseType: !218, size: 32, offset: 96)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !4419, file: !4405, line: 33, baseType: !2078, size: 64, offset: 192)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "num_channels", scope: !4404, file: !4405, line: 48, baseType: !207, size: 32, offset: 2176)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "fifo_size", scope: !4404, file: !4405, line: 49, baseType: !7, size: 32, offset: 2208)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4404, file: !4405, line: 51, baseType: !615, offset: 2240)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "boardtype", scope: !4400, file: !3, line: 286, baseType: !207, size: 32, offset: 64)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "dio", scope: !4400, file: !3, line: 287, baseType: !207, size: 32, offset: 96)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "OP_MODEBits", scope: !4400, file: !3, line: 288, baseType: !210, size: 16, offset: 128)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "di_mite_chan", scope: !4400, file: !3, line: 289, baseType: !4440, size: 64, offset: 192)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4411, size: 64)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "di_mite_ring", scope: !4400, file: !3, line: 290, baseType: !4418, size: 64, offset: 256)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "mite_channel_lock", scope: !4400, file: !3, line: 291, baseType: !615, offset: 320)
!4443 = !DILocation(line: 963, column: 26, scope: !4395)
!4444 = !DILocation(line: 963, column: 36, scope: !4395)
!4445 = !DILocation(line: 963, column: 41, scope: !4395)
!4446 = !DILocation(line: 965, column: 6, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4395, file: !3, line: 965, column: 6)
!4448 = !DILocation(line: 965, column: 11, scope: !4447)
!4449 = !DILocation(line: 965, column: 6, scope: !4395)
!4450 = !DILocation(line: 966, column: 12, scope: !4447)
!4451 = !DILocation(line: 966, column: 17, scope: !4447)
!4452 = !DILocation(line: 966, column: 22, scope: !4447)
!4453 = !DILocation(line: 966, column: 3, scope: !4447)
!4454 = !DILocation(line: 967, column: 6, scope: !4455)
!4455 = distinct !DILexicalBlock(scope: !4395, file: !3, line: 967, column: 6)
!4456 = !DILocation(line: 967, column: 6, scope: !4395)
!4457 = !DILocation(line: 968, column: 7, scope: !4458)
!4458 = distinct !DILexicalBlock(scope: !4459, file: !3, line: 968, column: 7)
!4459 = distinct !DILexicalBlock(scope: !4455, file: !3, line: 967, column: 15)
!4460 = !DILocation(line: 968, column: 16, scope: !4458)
!4461 = !DILocation(line: 968, column: 7, scope: !4459)
!4462 = !DILocation(line: 969, column: 19, scope: !4463)
!4463 = distinct !DILexicalBlock(scope: !4458, file: !3, line: 968, column: 30)
!4464 = !DILocation(line: 969, column: 28, scope: !4463)
!4465 = !DILocation(line: 969, column: 4, scope: !4463)
!4466 = !DILocation(line: 970, column: 4, scope: !4463)
!4467 = !DILocation(line: 970, column: 13, scope: !4463)
!4468 = !DILocation(line: 970, column: 26, scope: !4463)
!4469 = !DILocation(line: 971, column: 3, scope: !4463)
!4470 = !DILocation(line: 972, column: 15, scope: !4459)
!4471 = !DILocation(line: 972, column: 24, scope: !4459)
!4472 = !DILocation(line: 972, column: 3, scope: !4459)
!4473 = !DILocation(line: 973, column: 2, scope: !4459)
!4474 = !DILocation(line: 974, column: 6, scope: !4475)
!4475 = distinct !DILexicalBlock(scope: !4395, file: !3, line: 974, column: 6)
!4476 = !DILocation(line: 974, column: 11, scope: !4475)
!4477 = !DILocation(line: 974, column: 6, scope: !4395)
!4478 = !DILocation(line: 975, column: 11, scope: !4475)
!4479 = !DILocation(line: 975, column: 16, scope: !4475)
!4480 = !DILocation(line: 975, column: 3, scope: !4475)
!4481 = !DILocation(line: 976, column: 21, scope: !4395)
!4482 = !DILocation(line: 976, column: 2, scope: !4395)
!4483 = !DILocation(line: 977, column: 1, scope: !4395)
!4484 = distinct !DISubprogram(name: "nidio_auto_attach", scope: !3, file: !3, line: 880, type: !4069, scopeLine: 882, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!4485 = !DILocalVariable(name: "lock", arg: 1, scope: !4486, file: !4487, line: 327, type: !2225)
!4486 = distinct !DISubprogram(name: "spinlock_check", scope: !4487, file: !4487, line: 327, type: !4488, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!4487 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!4488 = !DISubroutineType(types: !4489)
!4489 = !{!4490, !2225}
!4490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!4491 = !DILocation(line: 327, column: 67, scope: !4486, inlinedAt: !4492)
!4492 = distinct !DILocation(line: 905, column: 2, scope: !4493)
!4493 = distinct !DILexicalBlock(scope: !4484, file: !3, line: 905, column: 2)
!4494 = !DILocalVariable(name: "dev", arg: 1, scope: !4484, file: !3, line: 880, type: !3134)
!4495 = !DILocation(line: 880, column: 52, scope: !4484)
!4496 = !DILocalVariable(name: "context", arg: 2, scope: !4484, file: !3, line: 881, type: !216)
!4497 = !DILocation(line: 881, column: 23, scope: !4484)
!4498 = !DILocalVariable(name: "pcidev", scope: !4484, file: !3, line: 883, type: !4120)
!4499 = !DILocation(line: 883, column: 18, scope: !4484)
!4500 = !DILocation(line: 883, column: 45, scope: !4484)
!4501 = !DILocation(line: 883, column: 27, scope: !4484)
!4502 = !DILocalVariable(name: "board", scope: !4484, file: !3, line: 884, type: !4503)
!4503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4504 = !DILocation(line: 884, column: 28, scope: !4484)
!4505 = !DILocalVariable(name: "devpriv", scope: !4484, file: !3, line: 885, type: !4399)
!4506 = !DILocation(line: 885, column: 26, scope: !4484)
!4507 = !DILocalVariable(name: "s", scope: !4484, file: !3, line: 886, type: !3903)
!4508 = !DILocation(line: 886, column: 27, scope: !4484)
!4509 = !DILocalVariable(name: "ret", scope: !4484, file: !3, line: 887, type: !207)
!4510 = !DILocation(line: 887, column: 6, scope: !4484)
!4511 = !DILocalVariable(name: "irq", scope: !4484, file: !3, line: 888, type: !7)
!4512 = !DILocation(line: 888, column: 15, scope: !4484)
!4513 = !DILocation(line: 890, column: 6, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !4484, file: !3, line: 890, column: 6)
!4515 = !DILocation(line: 890, column: 14, scope: !4514)
!4516 = !DILocation(line: 890, column: 6, scope: !4484)
!4517 = !DILocation(line: 891, column: 25, scope: !4514)
!4518 = !DILocation(line: 891, column: 12, scope: !4514)
!4519 = !DILocation(line: 891, column: 9, scope: !4514)
!4520 = !DILocation(line: 891, column: 3, scope: !4514)
!4521 = !DILocation(line: 892, column: 7, scope: !4522)
!4522 = distinct !DILexicalBlock(scope: !4484, file: !3, line: 892, column: 6)
!4523 = !DILocation(line: 892, column: 6, scope: !4484)
!4524 = !DILocation(line: 893, column: 3, scope: !4522)
!4525 = !DILocation(line: 894, column: 19, scope: !4484)
!4526 = !DILocation(line: 894, column: 2, scope: !4484)
!4527 = !DILocation(line: 894, column: 7, scope: !4484)
!4528 = !DILocation(line: 894, column: 17, scope: !4484)
!4529 = !DILocation(line: 895, column: 20, scope: !4484)
!4530 = !DILocation(line: 895, column: 27, scope: !4484)
!4531 = !DILocation(line: 895, column: 2, scope: !4484)
!4532 = !DILocation(line: 895, column: 7, scope: !4484)
!4533 = !DILocation(line: 895, column: 18, scope: !4484)
!4534 = !DILocation(line: 897, column: 26, scope: !4484)
!4535 = !DILocation(line: 897, column: 8, scope: !4484)
!4536 = !DILocation(line: 897, column: 6, scope: !4484)
!4537 = !DILocation(line: 898, column: 6, scope: !4538)
!4538 = distinct !DILexicalBlock(scope: !4484, file: !3, line: 898, column: 6)
!4539 = !DILocation(line: 898, column: 6, scope: !4484)
!4540 = !DILocation(line: 899, column: 10, scope: !4538)
!4541 = !DILocation(line: 899, column: 3, scope: !4538)
!4542 = !DILocation(line: 901, column: 33, scope: !4484)
!4543 = !DILocation(line: 901, column: 12, scope: !4484)
!4544 = !DILocation(line: 901, column: 10, scope: !4484)
!4545 = !DILocation(line: 902, column: 7, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4484, file: !3, line: 902, column: 6)
!4547 = !DILocation(line: 902, column: 6, scope: !4484)
!4548 = !DILocation(line: 903, column: 3, scope: !4546)
!4549 = !DILocation(line: 905, column: 2, scope: !4484)
!4550 = !DILocation(line: 905, column: 2, scope: !4493)
!4551 = !DILocation(line: 329, column: 10, scope: !4486, inlinedAt: !4492)
!4552 = !DILocation(line: 329, column: 16, scope: !4486, inlinedAt: !4492)
!4553 = !DILocation(line: 907, column: 30, scope: !4484)
!4554 = !DILocation(line: 907, column: 18, scope: !4484)
!4555 = !DILocation(line: 907, column: 2, scope: !4484)
!4556 = !DILocation(line: 907, column: 11, scope: !4484)
!4557 = !DILocation(line: 907, column: 16, scope: !4484)
!4558 = !DILocation(line: 908, column: 7, scope: !4559)
!4559 = distinct !DILexicalBlock(scope: !4484, file: !3, line: 908, column: 6)
!4560 = !DILocation(line: 908, column: 16, scope: !4559)
!4561 = !DILocation(line: 908, column: 6, scope: !4484)
!4562 = !DILocation(line: 909, column: 3, scope: !4559)
!4563 = !DILocation(line: 911, column: 42, scope: !4484)
!4564 = !DILocation(line: 911, column: 51, scope: !4484)
!4565 = !DILocation(line: 911, column: 26, scope: !4484)
!4566 = !DILocation(line: 911, column: 2, scope: !4484)
!4567 = !DILocation(line: 911, column: 11, scope: !4484)
!4568 = !DILocation(line: 911, column: 24, scope: !4484)
!4569 = !DILocation(line: 912, column: 7, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !4484, file: !3, line: 912, column: 6)
!4571 = !DILocation(line: 912, column: 16, scope: !4570)
!4572 = !DILocation(line: 912, column: 6, scope: !4484)
!4573 = !DILocation(line: 913, column: 3, scope: !4570)
!4574 = !DILocation(line: 915, column: 6, scope: !4575)
!4575 = distinct !DILexicalBlock(scope: !4484, file: !3, line: 915, column: 6)
!4576 = !DILocation(line: 915, column: 13, scope: !4575)
!4577 = !DILocation(line: 915, column: 6, scope: !4484)
!4578 = !DILocation(line: 916, column: 34, scope: !4579)
!4579 = distinct !DILexicalBlock(scope: !4575, file: !3, line: 915, column: 28)
!4580 = !DILocation(line: 916, column: 9, scope: !4579)
!4581 = !DILocation(line: 916, column: 7, scope: !4579)
!4582 = !DILocation(line: 917, column: 7, scope: !4583)
!4583 = distinct !DILexicalBlock(scope: !4579, file: !3, line: 917, column: 7)
!4584 = !DILocation(line: 917, column: 11, scope: !4583)
!4585 = !DILocation(line: 917, column: 7, scope: !4579)
!4586 = !DILocation(line: 918, column: 11, scope: !4583)
!4587 = !DILocation(line: 918, column: 4, scope: !4583)
!4588 = !DILocation(line: 919, column: 2, scope: !4579)
!4589 = !DILocation(line: 921, column: 20, scope: !4484)
!4590 = !DILocation(line: 921, column: 2, scope: !4484)
!4591 = !DILocation(line: 923, column: 32, scope: !4484)
!4592 = !DILocation(line: 923, column: 8, scope: !4484)
!4593 = !DILocation(line: 923, column: 6, scope: !4484)
!4594 = !DILocation(line: 924, column: 6, scope: !4595)
!4595 = distinct !DILexicalBlock(scope: !4484, file: !3, line: 924, column: 6)
!4596 = !DILocation(line: 924, column: 6, scope: !4484)
!4597 = !DILocation(line: 925, column: 10, scope: !4595)
!4598 = !DILocation(line: 925, column: 3, scope: !4595)
!4599 = !DILocation(line: 927, column: 2, scope: !4484)
!4600 = !DILocation(line: 930, column: 7, scope: !4484)
!4601 = !DILocation(line: 930, column: 12, scope: !4484)
!4602 = !DILocation(line: 930, column: 4, scope: !4484)
!4603 = !DILocation(line: 932, column: 21, scope: !4484)
!4604 = !DILocation(line: 932, column: 2, scope: !4484)
!4605 = !DILocation(line: 932, column: 7, scope: !4484)
!4606 = !DILocation(line: 932, column: 19, scope: !4484)
!4607 = !DILocation(line: 933, column: 2, scope: !4484)
!4608 = !DILocation(line: 933, column: 5, scope: !4484)
!4609 = !DILocation(line: 933, column: 10, scope: !4484)
!4610 = !DILocation(line: 934, column: 2, scope: !4484)
!4611 = !DILocation(line: 934, column: 5, scope: !4484)
!4612 = !DILocation(line: 934, column: 18, scope: !4484)
!4613 = !DILocation(line: 937, column: 2, scope: !4484)
!4614 = !DILocation(line: 937, column: 5, scope: !4484)
!4615 = !DILocation(line: 937, column: 12, scope: !4484)
!4616 = !DILocation(line: 938, column: 2, scope: !4484)
!4617 = !DILocation(line: 938, column: 5, scope: !4484)
!4618 = !DILocation(line: 938, column: 17, scope: !4484)
!4619 = !DILocation(line: 939, column: 2, scope: !4484)
!4620 = !DILocation(line: 939, column: 5, scope: !4484)
!4621 = !DILocation(line: 939, column: 13, scope: !4484)
!4622 = !DILocation(line: 940, column: 2, scope: !4484)
!4623 = !DILocation(line: 940, column: 5, scope: !4484)
!4624 = !DILocation(line: 940, column: 17, scope: !4484)
!4625 = !DILocation(line: 941, column: 2, scope: !4484)
!4626 = !DILocation(line: 941, column: 5, scope: !4484)
!4627 = !DILocation(line: 941, column: 15, scope: !4484)
!4628 = !DILocation(line: 942, column: 2, scope: !4484)
!4629 = !DILocation(line: 942, column: 5, scope: !4484)
!4630 = !DILocation(line: 942, column: 12, scope: !4484)
!4631 = !DILocation(line: 943, column: 2, scope: !4484)
!4632 = !DILocation(line: 943, column: 5, scope: !4484)
!4633 = !DILocation(line: 943, column: 16, scope: !4484)
!4634 = !DILocation(line: 944, column: 2, scope: !4484)
!4635 = !DILocation(line: 944, column: 5, scope: !4484)
!4636 = !DILocation(line: 944, column: 12, scope: !4484)
!4637 = !DILocation(line: 945, column: 2, scope: !4484)
!4638 = !DILocation(line: 945, column: 5, scope: !4484)
!4639 = !DILocation(line: 945, column: 18, scope: !4484)
!4640 = !DILocation(line: 946, column: 2, scope: !4484)
!4641 = !DILocation(line: 946, column: 5, scope: !4484)
!4642 = !DILocation(line: 946, column: 16, scope: !4484)
!4643 = !DILocation(line: 947, column: 2, scope: !4484)
!4644 = !DILocation(line: 947, column: 5, scope: !4484)
!4645 = !DILocation(line: 947, column: 19, scope: !4484)
!4646 = !DILocation(line: 948, column: 2, scope: !4484)
!4647 = !DILocation(line: 948, column: 5, scope: !4484)
!4648 = !DILocation(line: 948, column: 10, scope: !4484)
!4649 = !DILocation(line: 950, column: 8, scope: !4484)
!4650 = !DILocation(line: 950, column: 16, scope: !4484)
!4651 = !DILocation(line: 950, column: 6, scope: !4484)
!4652 = !DILocation(line: 951, column: 6, scope: !4653)
!4653 = distinct !DILexicalBlock(scope: !4484, file: !3, line: 951, column: 6)
!4654 = !DILocation(line: 951, column: 6, scope: !4484)
!4655 = !DILocation(line: 952, column: 21, scope: !4656)
!4656 = distinct !DILexicalBlock(scope: !4653, file: !3, line: 951, column: 11)
!4657 = !DILocation(line: 953, column: 7, scope: !4656)
!4658 = !DILocation(line: 953, column: 12, scope: !4656)
!4659 = !DILocation(line: 953, column: 24, scope: !4656)
!4660 = !DILocation(line: 952, column: 9, scope: !4656)
!4661 = !DILocation(line: 952, column: 7, scope: !4656)
!4662 = !DILocation(line: 954, column: 7, scope: !4663)
!4663 = distinct !DILexicalBlock(scope: !4656, file: !3, line: 954, column: 7)
!4664 = !DILocation(line: 954, column: 11, scope: !4663)
!4665 = !DILocation(line: 954, column: 7, scope: !4656)
!4666 = !DILocation(line: 955, column: 15, scope: !4663)
!4667 = !DILocation(line: 955, column: 4, scope: !4663)
!4668 = !DILocation(line: 955, column: 9, scope: !4663)
!4669 = !DILocation(line: 955, column: 13, scope: !4663)
!4670 = !DILocation(line: 956, column: 2, scope: !4656)
!4671 = !DILocation(line: 958, column: 2, scope: !4484)
!4672 = !DILocation(line: 959, column: 1, scope: !4484)
!4673 = !DILocalVariable(name: "dev", arg: 1, scope: !4087, file: !3, line: 843, type: !3134)
!4674 = !DILocation(line: 843, column: 59, scope: !4087)
!4675 = !DILocalVariable(name: "devpriv", scope: !4087, file: !3, line: 845, type: !4399)
!4676 = !DILocation(line: 845, column: 26, scope: !4087)
!4677 = !DILocation(line: 845, column: 36, scope: !4087)
!4678 = !DILocation(line: 845, column: 41, scope: !4087)
!4679 = !DILocalVariable(name: "ret", scope: !4087, file: !3, line: 851, type: !207)
!4680 = !DILocation(line: 851, column: 6, scope: !4087)
!4681 = !DILocalVariable(name: "n", scope: !4087, file: !3, line: 852, type: !207)
!4682 = !DILocation(line: 852, column: 6, scope: !4087)
!4683 = !DILocation(line: 854, column: 29, scope: !4087)
!4684 = !DILocation(line: 854, column: 8, scope: !4087)
!4685 = !DILocation(line: 854, column: 6, scope: !4087)
!4686 = !DILocation(line: 855, column: 6, scope: !4687)
!4687 = distinct !DILexicalBlock(scope: !4087, file: !3, line: 855, column: 6)
!4688 = !DILocation(line: 855, column: 10, scope: !4687)
!4689 = !DILocation(line: 855, column: 6, scope: !4087)
!4690 = !DILocation(line: 856, column: 10, scope: !4687)
!4691 = !DILocation(line: 856, column: 3, scope: !4687)
!4692 = !DILocation(line: 858, column: 9, scope: !4693)
!4693 = distinct !DILexicalBlock(scope: !4087, file: !3, line: 858, column: 2)
!4694 = !DILocation(line: 858, column: 7, scope: !4693)
!4695 = !DILocation(line: 858, column: 14, scope: !4696)
!4696 = distinct !DILexicalBlock(scope: !4693, file: !3, line: 858, column: 2)
!4697 = !DILocation(line: 858, column: 16, scope: !4696)
!4698 = !DILocation(line: 858, column: 2, scope: !4693)
!4699 = !DILocation(line: 859, column: 30, scope: !4700)
!4700 = distinct !DILexicalBlock(scope: !4696, file: !3, line: 858, column: 27)
!4701 = !DILocation(line: 859, column: 36, scope: !4700)
!4702 = !DILocation(line: 859, column: 45, scope: !4700)
!4703 = !DILocation(line: 859, column: 51, scope: !4700)
!4704 = !DILocation(line: 859, column: 59, scope: !4700)
!4705 = !DILocation(line: 860, column: 17, scope: !4700)
!4706 = !DILocation(line: 860, column: 9, scope: !4700)
!4707 = !DILocation(line: 861, column: 29, scope: !4700)
!4708 = !DILocation(line: 859, column: 9, scope: !4700)
!4709 = !DILocation(line: 859, column: 7, scope: !4700)
!4710 = !DILocation(line: 862, column: 7, scope: !4711)
!4711 = distinct !DILexicalBlock(scope: !4700, file: !3, line: 862, column: 7)
!4712 = !DILocation(line: 862, column: 11, scope: !4711)
!4713 = !DILocation(line: 862, column: 16, scope: !4711)
!4714 = !DILocation(line: 862, column: 19, scope: !4711)
!4715 = !DILocation(line: 862, column: 21, scope: !4711)
!4716 = !DILocation(line: 862, column: 7, scope: !4700)
!4717 = !DILocation(line: 863, column: 28, scope: !4711)
!4718 = !DILocation(line: 863, column: 4, scope: !4711)
!4719 = !DILocation(line: 864, column: 7, scope: !4720)
!4720 = distinct !DILexicalBlock(scope: !4700, file: !3, line: 864, column: 7)
!4721 = !DILocation(line: 864, column: 11, scope: !4720)
!4722 = !DILocation(line: 864, column: 7, scope: !4700)
!4723 = !DILocation(line: 865, column: 4, scope: !4720)
!4724 = !DILocation(line: 866, column: 2, scope: !4700)
!4725 = !DILocation(line: 858, column: 23, scope: !4696)
!4726 = !DILocation(line: 858, column: 2, scope: !4696)
!4727 = distinct !{!4727, !4698, !4728}
!4728 = !DILocation(line: 866, column: 2, scope: !4693)
!4729 = !DILocation(line: 867, column: 9, scope: !4087)
!4730 = !DILocation(line: 867, column: 2, scope: !4087)
!4731 = !DILocation(line: 868, column: 1, scope: !4087)
!4732 = distinct !DISubprogram(name: "nidio_reset_board", scope: !3, file: !3, line: 870, type: !4049, scopeLine: 871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!4733 = !DILocalVariable(name: "dev", arg: 1, scope: !4732, file: !3, line: 870, type: !3134)
!4734 = !DILocation(line: 870, column: 53, scope: !4732)
!4735 = !DILocation(line: 872, column: 12, scope: !4732)
!4736 = !DILocation(line: 872, column: 17, scope: !4732)
!4737 = !DILocation(line: 872, column: 22, scope: !4732)
!4738 = !DILocation(line: 872, column: 2, scope: !4732)
!4739 = !DILocation(line: 873, column: 12, scope: !4732)
!4740 = !DILocation(line: 873, column: 17, scope: !4732)
!4741 = !DILocation(line: 873, column: 22, scope: !4732)
!4742 = !DILocation(line: 873, column: 2, scope: !4732)
!4743 = !DILocation(line: 874, column: 12, scope: !4732)
!4744 = !DILocation(line: 874, column: 17, scope: !4732)
!4745 = !DILocation(line: 874, column: 22, scope: !4732)
!4746 = !DILocation(line: 874, column: 2, scope: !4732)
!4747 = !DILocation(line: 877, column: 12, scope: !4732)
!4748 = !DILocation(line: 877, column: 17, scope: !4732)
!4749 = !DILocation(line: 877, column: 22, scope: !4732)
!4750 = !DILocation(line: 877, column: 2, scope: !4732)
!4751 = !DILocation(line: 878, column: 1, scope: !4732)
!4752 = distinct !DISubprogram(name: "readb", scope: !4753, file: !4753, line: 57, type: !4754, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!4753 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!4754 = !DISubroutineType(types: !4755)
!4755 = !{!404, !4756}
!4756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4757, size: 64)
!4757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4758)
!4758 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4759 = !DILocalVariable(name: "addr", arg: 1, scope: !4752, file: !4753, line: 57, type: !4756)
!4760 = !DILocation(line: 57, column: 1, scope: !4752)
!4761 = !DILocalVariable(name: "ret", scope: !4752, file: !4753, line: 57, type: !404)
!4762 = !{i32 -2143404409}
!4763 = distinct !DISubprogram(name: "ni_pcidio_insn_config", scope: !3, file: !3, line: 467, type: !4000, scopeLine: 471, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!4764 = !DILocalVariable(name: "dev", arg: 1, scope: !4763, file: !3, line: 467, type: !3134)
!4765 = !DILocation(line: 467, column: 56, scope: !4763)
!4766 = !DILocalVariable(name: "s", arg: 2, scope: !4763, file: !3, line: 468, type: !3903)
!4767 = !DILocation(line: 468, column: 31, scope: !4763)
!4768 = !DILocalVariable(name: "insn", arg: 3, scope: !4763, file: !3, line: 469, type: !4002)
!4769 = !DILocation(line: 469, column: 26, scope: !4763)
!4770 = !DILocalVariable(name: "data", arg: 4, scope: !4763, file: !3, line: 470, type: !1136)
!4771 = !DILocation(line: 470, column: 20, scope: !4763)
!4772 = !DILocalVariable(name: "ret", scope: !4763, file: !3, line: 472, type: !207)
!4773 = !DILocation(line: 472, column: 6, scope: !4763)
!4774 = !DILocation(line: 474, column: 6, scope: !4775)
!4775 = distinct !DILexicalBlock(scope: !4763, file: !3, line: 474, column: 6)
!4776 = !DILocation(line: 474, column: 14, scope: !4775)
!4777 = !DILocation(line: 474, column: 6, scope: !4763)
!4778 = !DILocalVariable(name: "board", scope: !4779, file: !3, line: 475, type: !4503)
!4779 = distinct !DILexicalBlock(scope: !4775, file: !3, line: 474, column: 57)
!4780 = !DILocation(line: 475, column: 29, scope: !4779)
!4781 = !DILocation(line: 475, column: 37, scope: !4779)
!4782 = !DILocation(line: 475, column: 42, scope: !4779)
!4783 = !DILocation(line: 478, column: 13, scope: !4779)
!4784 = !DILocation(line: 478, column: 20, scope: !4779)
!4785 = !DILocation(line: 478, column: 3, scope: !4779)
!4786 = !DILocation(line: 478, column: 11, scope: !4779)
!4787 = !DILocation(line: 479, column: 3, scope: !4779)
!4788 = !DILocation(line: 479, column: 11, scope: !4779)
!4789 = !DILocation(line: 480, column: 3, scope: !4779)
!4790 = !DILocation(line: 483, column: 31, scope: !4763)
!4791 = !DILocation(line: 483, column: 36, scope: !4763)
!4792 = !DILocation(line: 483, column: 39, scope: !4763)
!4793 = !DILocation(line: 483, column: 45, scope: !4763)
!4794 = !DILocation(line: 483, column: 8, scope: !4763)
!4795 = !DILocation(line: 483, column: 6, scope: !4763)
!4796 = !DILocation(line: 484, column: 6, scope: !4797)
!4797 = distinct !DILexicalBlock(scope: !4763, file: !3, line: 484, column: 6)
!4798 = !DILocation(line: 484, column: 6, scope: !4763)
!4799 = !DILocation(line: 485, column: 10, scope: !4797)
!4800 = !DILocation(line: 485, column: 3, scope: !4797)
!4801 = !DILocation(line: 487, column: 9, scope: !4763)
!4802 = !DILocation(line: 487, column: 12, scope: !4763)
!4803 = !DILocation(line: 487, column: 21, scope: !4763)
!4804 = !DILocation(line: 487, column: 26, scope: !4763)
!4805 = !DILocation(line: 487, column: 31, scope: !4763)
!4806 = !DILocation(line: 487, column: 2, scope: !4763)
!4807 = !DILocation(line: 489, column: 9, scope: !4763)
!4808 = !DILocation(line: 489, column: 15, scope: !4763)
!4809 = !DILocation(line: 489, column: 2, scope: !4763)
!4810 = !DILocation(line: 490, column: 1, scope: !4763)
!4811 = distinct !DISubprogram(name: "ni_pcidio_insn_bits", scope: !3, file: !3, line: 492, type: !4000, scopeLine: 496, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!4812 = !DILocalVariable(name: "dev", arg: 1, scope: !4811, file: !3, line: 492, type: !3134)
!4813 = !DILocation(line: 492, column: 54, scope: !4811)
!4814 = !DILocalVariable(name: "s", arg: 2, scope: !4811, file: !3, line: 493, type: !3903)
!4815 = !DILocation(line: 493, column: 36, scope: !4811)
!4816 = !DILocalVariable(name: "insn", arg: 3, scope: !4811, file: !3, line: 494, type: !4002)
!4817 = !DILocation(line: 494, column: 31, scope: !4811)
!4818 = !DILocalVariable(name: "data", arg: 4, scope: !4811, file: !3, line: 495, type: !1136)
!4819 = !DILocation(line: 495, column: 25, scope: !4811)
!4820 = !DILocation(line: 497, column: 30, scope: !4821)
!4821 = distinct !DILexicalBlock(scope: !4811, file: !3, line: 497, column: 6)
!4822 = !DILocation(line: 497, column: 33, scope: !4821)
!4823 = !DILocation(line: 497, column: 6, scope: !4821)
!4824 = !DILocation(line: 497, column: 6, scope: !4811)
!4825 = !DILocation(line: 498, column: 10, scope: !4821)
!4826 = !DILocation(line: 498, column: 13, scope: !4821)
!4827 = !DILocation(line: 498, column: 20, scope: !4821)
!4828 = !DILocation(line: 498, column: 25, scope: !4821)
!4829 = !DILocation(line: 498, column: 30, scope: !4821)
!4830 = !DILocation(line: 498, column: 3, scope: !4821)
!4831 = !DILocation(line: 500, column: 18, scope: !4811)
!4832 = !DILocation(line: 500, column: 23, scope: !4811)
!4833 = !DILocation(line: 500, column: 28, scope: !4811)
!4834 = !DILocation(line: 500, column: 12, scope: !4811)
!4835 = !DILocation(line: 500, column: 2, scope: !4811)
!4836 = !DILocation(line: 500, column: 10, scope: !4811)
!4837 = !DILocation(line: 502, column: 9, scope: !4811)
!4838 = !DILocation(line: 502, column: 15, scope: !4811)
!4839 = !DILocation(line: 502, column: 2, scope: !4811)
!4840 = distinct !DISubprogram(name: "ni_pcidio_cmd", scope: !3, file: !3, line: 618, type: !4017, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!4841 = !DILocalVariable(name: "dev", arg: 1, scope: !4840, file: !3, line: 618, type: !3134)
!4842 = !DILocation(line: 618, column: 48, scope: !4840)
!4843 = !DILocalVariable(name: "s", arg: 2, scope: !4840, file: !3, line: 618, type: !3903)
!4844 = !DILocation(line: 618, column: 78, scope: !4840)
!4845 = !DILocalVariable(name: "devpriv", scope: !4840, file: !3, line: 620, type: !4399)
!4846 = !DILocation(line: 620, column: 26, scope: !4840)
!4847 = !DILocation(line: 620, column: 36, scope: !4840)
!4848 = !DILocation(line: 620, column: 41, scope: !4840)
!4849 = !DILocalVariable(name: "cmd", scope: !4840, file: !3, line: 621, type: !4023)
!4850 = !DILocation(line: 621, column: 21, scope: !4840)
!4851 = !DILocation(line: 621, column: 28, scope: !4840)
!4852 = !DILocation(line: 621, column: 31, scope: !4840)
!4853 = !DILocation(line: 621, column: 38, scope: !4840)
!4854 = !DILocation(line: 624, column: 17, scope: !4840)
!4855 = !DILocation(line: 624, column: 22, scope: !4840)
!4856 = !DILocation(line: 624, column: 27, scope: !4840)
!4857 = !DILocation(line: 624, column: 2, scope: !4840)
!4858 = !DILocation(line: 628, column: 16, scope: !4859)
!4859 = distinct !DILexicalBlock(scope: !4860, file: !3, line: 626, column: 9)
!4860 = distinct !DILexicalBlock(scope: !4840, file: !3, line: 626, column: 6)
!4861 = !DILocation(line: 628, column: 21, scope: !4859)
!4862 = !DILocation(line: 628, column: 26, scope: !4859)
!4863 = !DILocation(line: 628, column: 3, scope: !4859)
!4864 = !DILocation(line: 632, column: 10, scope: !4859)
!4865 = !DILocation(line: 632, column: 15, scope: !4859)
!4866 = !DILocation(line: 632, column: 20, scope: !4859)
!4867 = !DILocation(line: 631, column: 3, scope: !4859)
!4868 = !DILocation(line: 640, column: 6, scope: !4869)
!4869 = distinct !DILexicalBlock(scope: !4840, file: !3, line: 640, column: 6)
!4870 = !DILocation(line: 640, column: 11, scope: !4869)
!4871 = !DILocation(line: 640, column: 26, scope: !4869)
!4872 = !DILocation(line: 640, column: 6, scope: !4840)
!4873 = !DILocation(line: 642, column: 13, scope: !4874)
!4874 = distinct !DILexicalBlock(scope: !4869, file: !3, line: 640, column: 41)
!4875 = !DILocation(line: 642, column: 18, scope: !4874)
!4876 = !DILocation(line: 642, column: 23, scope: !4874)
!4877 = !DILocation(line: 642, column: 3, scope: !4874)
!4878 = !DILocation(line: 643, column: 16, scope: !4874)
!4879 = !DILocation(line: 643, column: 21, scope: !4874)
!4880 = !DILocation(line: 643, column: 26, scope: !4874)
!4881 = !DILocation(line: 643, column: 3, scope: !4874)
!4882 = !DILocation(line: 644, column: 13, scope: !4874)
!4883 = !DILocation(line: 644, column: 18, scope: !4874)
!4884 = !DILocation(line: 644, column: 23, scope: !4874)
!4885 = !DILocation(line: 644, column: 3, scope: !4874)
!4886 = !DILocation(line: 645, column: 16, scope: !4874)
!4887 = !DILocation(line: 645, column: 21, scope: !4874)
!4888 = !DILocation(line: 645, column: 26, scope: !4874)
!4889 = !DILocation(line: 645, column: 3, scope: !4874)
!4890 = !DILocation(line: 646, column: 13, scope: !4874)
!4891 = !DILocation(line: 646, column: 18, scope: !4874)
!4892 = !DILocation(line: 646, column: 23, scope: !4874)
!4893 = !DILocation(line: 646, column: 3, scope: !4874)
!4894 = !DILocation(line: 647, column: 13, scope: !4874)
!4895 = !DILocation(line: 647, column: 18, scope: !4874)
!4896 = !DILocation(line: 647, column: 23, scope: !4874)
!4897 = !DILocation(line: 647, column: 3, scope: !4874)
!4898 = !DILocation(line: 648, column: 16, scope: !4874)
!4899 = !DILocation(line: 648, column: 21, scope: !4874)
!4900 = !DILocation(line: 648, column: 26, scope: !4874)
!4901 = !DILocation(line: 648, column: 3, scope: !4874)
!4902 = !DILocation(line: 649, column: 33, scope: !4874)
!4903 = !DILocation(line: 649, column: 38, scope: !4874)
!4904 = !DILocation(line: 649, column: 10, scope: !4874)
!4905 = !DILocation(line: 651, column: 10, scope: !4874)
!4906 = !DILocation(line: 651, column: 15, scope: !4874)
!4907 = !DILocation(line: 651, column: 20, scope: !4874)
!4908 = !DILocation(line: 649, column: 3, scope: !4874)
!4909 = !DILocation(line: 652, column: 13, scope: !4874)
!4910 = !DILocation(line: 652, column: 18, scope: !4874)
!4911 = !DILocation(line: 652, column: 23, scope: !4874)
!4912 = !DILocation(line: 652, column: 3, scope: !4874)
!4913 = !DILocation(line: 653, column: 13, scope: !4874)
!4914 = !DILocation(line: 653, column: 18, scope: !4874)
!4915 = !DILocation(line: 653, column: 23, scope: !4874)
!4916 = !DILocation(line: 653, column: 3, scope: !4874)
!4917 = !DILocation(line: 654, column: 13, scope: !4874)
!4918 = !DILocation(line: 654, column: 18, scope: !4874)
!4919 = !DILocation(line: 654, column: 23, scope: !4874)
!4920 = !DILocation(line: 654, column: 3, scope: !4874)
!4921 = !DILocation(line: 655, column: 16, scope: !4874)
!4922 = !DILocation(line: 655, column: 21, scope: !4874)
!4923 = !DILocation(line: 655, column: 26, scope: !4874)
!4924 = !DILocation(line: 655, column: 3, scope: !4874)
!4925 = !DILocation(line: 656, column: 16, scope: !4874)
!4926 = !DILocation(line: 656, column: 21, scope: !4874)
!4927 = !DILocation(line: 656, column: 26, scope: !4874)
!4928 = !DILocation(line: 656, column: 3, scope: !4874)
!4929 = !DILocation(line: 661, column: 13, scope: !4874)
!4930 = !DILocation(line: 661, column: 18, scope: !4874)
!4931 = !DILocation(line: 661, column: 23, scope: !4874)
!4932 = !DILocation(line: 661, column: 3, scope: !4874)
!4933 = !DILocation(line: 662, column: 13, scope: !4874)
!4934 = !DILocation(line: 662, column: 18, scope: !4874)
!4935 = !DILocation(line: 662, column: 23, scope: !4874)
!4936 = !DILocation(line: 662, column: 3, scope: !4874)
!4937 = !DILocation(line: 663, column: 2, scope: !4874)
!4938 = !DILocation(line: 666, column: 13, scope: !4939)
!4939 = distinct !DILexicalBlock(scope: !4869, file: !3, line: 663, column: 9)
!4940 = !DILocation(line: 666, column: 18, scope: !4939)
!4941 = !DILocation(line: 666, column: 23, scope: !4939)
!4942 = !DILocation(line: 666, column: 3, scope: !4939)
!4943 = !DILocation(line: 667, column: 16, scope: !4939)
!4944 = !DILocation(line: 667, column: 21, scope: !4939)
!4945 = !DILocation(line: 667, column: 26, scope: !4939)
!4946 = !DILocation(line: 667, column: 3, scope: !4939)
!4947 = !DILocation(line: 668, column: 13, scope: !4939)
!4948 = !DILocation(line: 668, column: 18, scope: !4939)
!4949 = !DILocation(line: 668, column: 23, scope: !4939)
!4950 = !DILocation(line: 668, column: 3, scope: !4939)
!4951 = !DILocation(line: 669, column: 16, scope: !4939)
!4952 = !DILocation(line: 669, column: 21, scope: !4939)
!4953 = !DILocation(line: 669, column: 26, scope: !4939)
!4954 = !DILocation(line: 669, column: 3, scope: !4939)
!4955 = !DILocation(line: 670, column: 13, scope: !4939)
!4956 = !DILocation(line: 670, column: 18, scope: !4939)
!4957 = !DILocation(line: 670, column: 23, scope: !4939)
!4958 = !DILocation(line: 670, column: 3, scope: !4939)
!4959 = !DILocation(line: 671, column: 9, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4939, file: !3, line: 671, column: 7)
!4961 = !DILocation(line: 671, column: 14, scope: !4960)
!4962 = !DILocation(line: 671, column: 29, scope: !4960)
!4963 = !DILocation(line: 671, column: 7, scope: !4939)
!4964 = !DILocation(line: 672, column: 14, scope: !4960)
!4965 = !DILocation(line: 672, column: 19, scope: !4960)
!4966 = !DILocation(line: 672, column: 24, scope: !4960)
!4967 = !DILocation(line: 672, column: 4, scope: !4960)
!4968 = !DILocation(line: 674, column: 14, scope: !4960)
!4969 = !DILocation(line: 674, column: 19, scope: !4960)
!4970 = !DILocation(line: 674, column: 24, scope: !4960)
!4971 = !DILocation(line: 674, column: 4, scope: !4960)
!4972 = !DILocation(line: 675, column: 16, scope: !4939)
!4973 = !DILocation(line: 675, column: 21, scope: !4939)
!4974 = !DILocation(line: 675, column: 26, scope: !4939)
!4975 = !DILocation(line: 675, column: 3, scope: !4939)
!4976 = !DILocation(line: 676, column: 13, scope: !4939)
!4977 = !DILocation(line: 676, column: 18, scope: !4939)
!4978 = !DILocation(line: 676, column: 23, scope: !4939)
!4979 = !DILocation(line: 676, column: 3, scope: !4939)
!4980 = !DILocation(line: 677, column: 13, scope: !4939)
!4981 = !DILocation(line: 677, column: 18, scope: !4939)
!4982 = !DILocation(line: 677, column: 23, scope: !4939)
!4983 = !DILocation(line: 677, column: 3, scope: !4939)
!4984 = !DILocation(line: 678, column: 13, scope: !4939)
!4985 = !DILocation(line: 678, column: 18, scope: !4939)
!4986 = !DILocation(line: 678, column: 23, scope: !4939)
!4987 = !DILocation(line: 678, column: 3, scope: !4939)
!4988 = !DILocation(line: 679, column: 13, scope: !4939)
!4989 = !DILocation(line: 679, column: 18, scope: !4939)
!4990 = !DILocation(line: 679, column: 23, scope: !4939)
!4991 = !DILocation(line: 679, column: 3, scope: !4939)
!4992 = !DILocation(line: 680, column: 16, scope: !4939)
!4993 = !DILocation(line: 680, column: 21, scope: !4939)
!4994 = !DILocation(line: 680, column: 26, scope: !4939)
!4995 = !DILocation(line: 680, column: 3, scope: !4939)
!4996 = !DILocation(line: 681, column: 16, scope: !4939)
!4997 = !DILocation(line: 681, column: 21, scope: !4939)
!4998 = !DILocation(line: 681, column: 26, scope: !4939)
!4999 = !DILocation(line: 681, column: 3, scope: !4939)
!5000 = !DILocation(line: 682, column: 13, scope: !4939)
!5001 = !DILocation(line: 682, column: 18, scope: !4939)
!5002 = !DILocation(line: 682, column: 23, scope: !4939)
!5003 = !DILocation(line: 682, column: 3, scope: !4939)
!5004 = !DILocation(line: 683, column: 16, scope: !4939)
!5005 = !DILocation(line: 683, column: 21, scope: !4939)
!5006 = !DILocation(line: 683, column: 26, scope: !4939)
!5007 = !DILocation(line: 683, column: 3, scope: !4939)
!5008 = !DILocation(line: 686, column: 6, scope: !5009)
!5009 = distinct !DILexicalBlock(scope: !4840, file: !3, line: 686, column: 6)
!5010 = !DILocation(line: 686, column: 11, scope: !5009)
!5011 = !DILocation(line: 686, column: 20, scope: !5009)
!5012 = !DILocation(line: 686, column: 6, scope: !4840)
!5013 = !DILocation(line: 687, column: 10, scope: !5014)
!5014 = distinct !DILexicalBlock(scope: !5009, file: !3, line: 686, column: 35)
!5015 = !DILocation(line: 687, column: 15, scope: !5014)
!5016 = !DILocation(line: 688, column: 10, scope: !5014)
!5017 = !DILocation(line: 688, column: 15, scope: !5014)
!5018 = !DILocation(line: 688, column: 20, scope: !5014)
!5019 = !DILocation(line: 687, column: 3, scope: !5014)
!5020 = !DILocation(line: 689, column: 2, scope: !5014)
!5021 = !DILocation(line: 695, column: 9, scope: !4840)
!5022 = !DILocation(line: 695, column: 14, scope: !4840)
!5023 = !DILocation(line: 695, column: 19, scope: !4840)
!5024 = !DILocation(line: 694, column: 2, scope: !4840)
!5025 = !DILocalVariable(name: "retval", scope: !5026, file: !3, line: 698, type: !207)
!5026 = distinct !DILexicalBlock(scope: !4840, file: !3, line: 697, column: 2)
!5027 = !DILocation(line: 698, column: 7, scope: !5026)
!5028 = !DILocation(line: 698, column: 31, scope: !5026)
!5029 = !DILocation(line: 698, column: 36, scope: !5026)
!5030 = !DILocation(line: 698, column: 16, scope: !5026)
!5031 = !DILocation(line: 700, column: 7, scope: !5032)
!5032 = distinct !DILexicalBlock(scope: !5026, file: !3, line: 700, column: 7)
!5033 = !DILocation(line: 700, column: 7, scope: !5026)
!5034 = !DILocation(line: 701, column: 11, scope: !5032)
!5035 = !DILocation(line: 701, column: 4, scope: !5032)
!5036 = !DILocation(line: 706, column: 15, scope: !4840)
!5037 = !DILocation(line: 706, column: 20, scope: !4840)
!5038 = !DILocation(line: 706, column: 25, scope: !4840)
!5039 = !DILocation(line: 706, column: 2, scope: !4840)
!5040 = !DILocation(line: 709, column: 15, scope: !4840)
!5041 = !DILocation(line: 709, column: 20, scope: !4840)
!5042 = !DILocation(line: 709, column: 25, scope: !4840)
!5043 = !DILocation(line: 709, column: 2, scope: !4840)
!5044 = !DILocation(line: 712, column: 17, scope: !4840)
!5045 = !DILocation(line: 712, column: 22, scope: !4840)
!5046 = !DILocation(line: 712, column: 27, scope: !4840)
!5047 = !DILocation(line: 712, column: 2, scope: !4840)
!5048 = !DILocation(line: 713, column: 15, scope: !4840)
!5049 = !DILocation(line: 713, column: 20, scope: !4840)
!5050 = !DILocation(line: 713, column: 25, scope: !4840)
!5051 = !DILocation(line: 713, column: 2, scope: !4840)
!5052 = !DILocation(line: 715, column: 6, scope: !5053)
!5053 = distinct !DILexicalBlock(scope: !4840, file: !3, line: 715, column: 6)
!5054 = !DILocation(line: 715, column: 11, scope: !5053)
!5055 = !DILocation(line: 715, column: 20, scope: !5053)
!5056 = !DILocation(line: 715, column: 6, scope: !4840)
!5057 = !DILocation(line: 716, column: 3, scope: !5058)
!5058 = distinct !DILexicalBlock(scope: !5053, file: !3, line: 715, column: 34)
!5059 = !DILocation(line: 716, column: 12, scope: !5058)
!5060 = !DILocation(line: 716, column: 24, scope: !5058)
!5061 = !DILocation(line: 717, column: 2, scope: !5058)
!5062 = !DILocation(line: 718, column: 3, scope: !5063)
!5063 = distinct !DILexicalBlock(scope: !5053, file: !3, line: 717, column: 9)
!5064 = !DILocation(line: 718, column: 12, scope: !5063)
!5065 = !DILocation(line: 718, column: 24, scope: !5063)
!5066 = !DILocation(line: 720, column: 6, scope: !5067)
!5067 = distinct !DILexicalBlock(scope: !4840, file: !3, line: 720, column: 6)
!5068 = !DILocation(line: 720, column: 11, scope: !5067)
!5069 = !DILocation(line: 720, column: 21, scope: !5067)
!5070 = !DILocation(line: 720, column: 6, scope: !4840)
!5071 = !DILocation(line: 722, column: 10, scope: !5072)
!5072 = distinct !DILexicalBlock(scope: !5067, file: !3, line: 720, column: 34)
!5073 = !DILocation(line: 722, column: 19, scope: !5072)
!5074 = !DILocation(line: 722, column: 32, scope: !5072)
!5075 = !DILocation(line: 722, column: 37, scope: !5072)
!5076 = !DILocation(line: 722, column: 42, scope: !5072)
!5077 = !DILocation(line: 722, column: 3, scope: !5072)
!5078 = !DILocation(line: 723, column: 3, scope: !5072)
!5079 = !DILocation(line: 723, column: 6, scope: !5072)
!5080 = !DILocation(line: 723, column: 13, scope: !5072)
!5081 = !DILocation(line: 723, column: 21, scope: !5072)
!5082 = !DILocation(line: 724, column: 2, scope: !5072)
!5083 = !DILocation(line: 726, column: 3, scope: !5084)
!5084 = distinct !DILexicalBlock(scope: !5067, file: !3, line: 724, column: 9)
!5085 = !DILocation(line: 726, column: 6, scope: !5084)
!5086 = !DILocation(line: 726, column: 13, scope: !5084)
!5087 = !DILocation(line: 726, column: 21, scope: !5084)
!5088 = !DILocation(line: 729, column: 2, scope: !4840)
!5089 = !DILocation(line: 730, column: 1, scope: !4840)
!5090 = distinct !DISubprogram(name: "ni_pcidio_cmdtest", scope: !3, file: !3, line: 528, type: !4021, scopeLine: 530, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!5091 = !DILocalVariable(name: "dev", arg: 1, scope: !5090, file: !3, line: 528, type: !3134)
!5092 = !DILocation(line: 528, column: 52, scope: !5090)
!5093 = !DILocalVariable(name: "s", arg: 2, scope: !5090, file: !3, line: 529, type: !3903)
!5094 = !DILocation(line: 529, column: 34, scope: !5090)
!5095 = !DILocalVariable(name: "cmd", arg: 3, scope: !5090, file: !3, line: 529, type: !4023)
!5096 = !DILocation(line: 529, column: 56, scope: !5090)
!5097 = !DILocalVariable(name: "err", scope: !5090, file: !3, line: 531, type: !207)
!5098 = !DILocation(line: 531, column: 6, scope: !5090)
!5099 = !DILocalVariable(name: "arg", scope: !5090, file: !3, line: 532, type: !7)
!5100 = !DILocation(line: 532, column: 15, scope: !5090)
!5101 = !DILocation(line: 536, column: 35, scope: !5090)
!5102 = !DILocation(line: 536, column: 40, scope: !5090)
!5103 = !DILocation(line: 536, column: 9, scope: !5090)
!5104 = !DILocation(line: 536, column: 6, scope: !5090)
!5105 = !DILocation(line: 537, column: 35, scope: !5090)
!5106 = !DILocation(line: 537, column: 40, scope: !5090)
!5107 = !DILocation(line: 537, column: 9, scope: !5090)
!5108 = !DILocation(line: 537, column: 6, scope: !5090)
!5109 = !DILocation(line: 539, column: 35, scope: !5090)
!5110 = !DILocation(line: 539, column: 40, scope: !5090)
!5111 = !DILocation(line: 539, column: 9, scope: !5090)
!5112 = !DILocation(line: 539, column: 6, scope: !5090)
!5113 = !DILocation(line: 540, column: 35, scope: !5090)
!5114 = !DILocation(line: 540, column: 40, scope: !5090)
!5115 = !DILocation(line: 540, column: 9, scope: !5090)
!5116 = !DILocation(line: 540, column: 6, scope: !5090)
!5117 = !DILocation(line: 541, column: 35, scope: !5090)
!5118 = !DILocation(line: 541, column: 40, scope: !5090)
!5119 = !DILocation(line: 541, column: 9, scope: !5090)
!5120 = !DILocation(line: 541, column: 6, scope: !5090)
!5121 = !DILocation(line: 543, column: 6, scope: !5122)
!5122 = distinct !DILexicalBlock(scope: !5090, file: !3, line: 543, column: 6)
!5123 = !DILocation(line: 543, column: 6, scope: !5090)
!5124 = !DILocation(line: 544, column: 3, scope: !5122)
!5125 = !DILocation(line: 548, column: 40, scope: !5090)
!5126 = !DILocation(line: 548, column: 45, scope: !5090)
!5127 = !DILocation(line: 548, column: 9, scope: !5090)
!5128 = !DILocation(line: 548, column: 6, scope: !5090)
!5129 = !DILocation(line: 549, column: 40, scope: !5090)
!5130 = !DILocation(line: 549, column: 45, scope: !5090)
!5131 = !DILocation(line: 549, column: 9, scope: !5090)
!5132 = !DILocation(line: 549, column: 6, scope: !5090)
!5133 = !DILocation(line: 550, column: 40, scope: !5090)
!5134 = !DILocation(line: 550, column: 45, scope: !5090)
!5135 = !DILocation(line: 550, column: 9, scope: !5090)
!5136 = !DILocation(line: 550, column: 6, scope: !5090)
!5137 = !DILocation(line: 554, column: 6, scope: !5138)
!5138 = distinct !DILexicalBlock(scope: !5090, file: !3, line: 554, column: 6)
!5139 = !DILocation(line: 554, column: 6, scope: !5090)
!5140 = !DILocation(line: 555, column: 3, scope: !5138)
!5141 = !DILocation(line: 559, column: 38, scope: !5090)
!5142 = !DILocation(line: 559, column: 43, scope: !5090)
!5143 = !DILocation(line: 559, column: 9, scope: !5090)
!5144 = !DILocation(line: 559, column: 6, scope: !5090)
!5145 = !DILocation(line: 563, column: 6, scope: !5146)
!5146 = distinct !DILexicalBlock(scope: !5090, file: !3, line: 563, column: 6)
!5147 = !DILocation(line: 563, column: 11, scope: !5146)
!5148 = !DILocation(line: 563, column: 26, scope: !5146)
!5149 = !DILocation(line: 563, column: 6, scope: !5090)
!5150 = !DILocation(line: 564, column: 40, scope: !5151)
!5151 = distinct !DILexicalBlock(scope: !5146, file: !3, line: 563, column: 41)
!5152 = !DILocation(line: 564, column: 45, scope: !5151)
!5153 = !DILocation(line: 564, column: 10, scope: !5151)
!5154 = !DILocation(line: 564, column: 7, scope: !5151)
!5155 = !DILocation(line: 567, column: 2, scope: !5151)
!5156 = !DILocation(line: 570, column: 8, scope: !5157)
!5157 = distinct !DILexicalBlock(scope: !5158, file: !3, line: 570, column: 7)
!5158 = distinct !DILexicalBlock(scope: !5146, file: !3, line: 567, column: 9)
!5159 = !DILocation(line: 570, column: 13, scope: !5157)
!5160 = !DILocation(line: 570, column: 28, scope: !5157)
!5161 = !DILocation(line: 570, column: 54, scope: !5157)
!5162 = !DILocation(line: 570, column: 7, scope: !5158)
!5163 = !DILocation(line: 571, column: 4, scope: !5164)
!5164 = distinct !DILexicalBlock(scope: !5157, file: !3, line: 570, column: 60)
!5165 = !DILocation(line: 571, column: 9, scope: !5164)
!5166 = !DILocation(line: 571, column: 24, scope: !5164)
!5167 = !DILocation(line: 572, column: 8, scope: !5164)
!5168 = !DILocation(line: 573, column: 3, scope: !5164)
!5169 = !DILocation(line: 576, column: 38, scope: !5090)
!5170 = !DILocation(line: 576, column: 43, scope: !5090)
!5171 = !DILocation(line: 576, column: 9, scope: !5090)
!5172 = !DILocation(line: 576, column: 6, scope: !5090)
!5173 = !DILocation(line: 577, column: 38, scope: !5090)
!5174 = !DILocation(line: 577, column: 43, scope: !5090)
!5175 = !DILocation(line: 578, column: 9, scope: !5090)
!5176 = !DILocation(line: 578, column: 14, scope: !5090)
!5177 = !DILocation(line: 577, column: 9, scope: !5090)
!5178 = !DILocation(line: 577, column: 6, scope: !5090)
!5179 = !DILocation(line: 580, column: 6, scope: !5180)
!5180 = distinct !DILexicalBlock(scope: !5090, file: !3, line: 580, column: 6)
!5181 = !DILocation(line: 580, column: 11, scope: !5180)
!5182 = !DILocation(line: 580, column: 20, scope: !5180)
!5183 = !DILocation(line: 580, column: 6, scope: !5090)
!5184 = !DILocation(line: 581, column: 40, scope: !5180)
!5185 = !DILocation(line: 581, column: 45, scope: !5180)
!5186 = !DILocation(line: 581, column: 10, scope: !5180)
!5187 = !DILocation(line: 581, column: 7, scope: !5180)
!5188 = !DILocation(line: 581, column: 3, scope: !5180)
!5189 = !DILocation(line: 583, column: 39, scope: !5180)
!5190 = !DILocation(line: 583, column: 44, scope: !5180)
!5191 = !DILocation(line: 583, column: 10, scope: !5180)
!5192 = !DILocation(line: 583, column: 7, scope: !5180)
!5193 = !DILocation(line: 585, column: 6, scope: !5194)
!5194 = distinct !DILexicalBlock(scope: !5090, file: !3, line: 585, column: 6)
!5195 = !DILocation(line: 585, column: 6, scope: !5090)
!5196 = !DILocation(line: 586, column: 3, scope: !5194)
!5197 = !DILocation(line: 590, column: 6, scope: !5198)
!5198 = distinct !DILexicalBlock(scope: !5090, file: !3, line: 590, column: 6)
!5199 = !DILocation(line: 590, column: 11, scope: !5198)
!5200 = !DILocation(line: 590, column: 26, scope: !5198)
!5201 = !DILocation(line: 590, column: 6, scope: !5090)
!5202 = !DILocation(line: 591, column: 9, scope: !5203)
!5203 = distinct !DILexicalBlock(scope: !5198, file: !3, line: 590, column: 41)
!5204 = !DILocation(line: 591, column: 14, scope: !5203)
!5205 = !DILocation(line: 591, column: 7, scope: !5203)
!5206 = !DILocation(line: 592, column: 31, scope: !5203)
!5207 = !DILocation(line: 592, column: 36, scope: !5203)
!5208 = !DILocation(line: 592, column: 3, scope: !5203)
!5209 = !DILocation(line: 593, column: 39, scope: !5203)
!5210 = !DILocation(line: 593, column: 44, scope: !5203)
!5211 = !DILocation(line: 593, column: 60, scope: !5203)
!5212 = !DILocation(line: 593, column: 10, scope: !5203)
!5213 = !DILocation(line: 593, column: 7, scope: !5203)
!5214 = !DILocation(line: 594, column: 2, scope: !5203)
!5215 = !DILocation(line: 596, column: 6, scope: !5216)
!5216 = distinct !DILexicalBlock(scope: !5090, file: !3, line: 596, column: 6)
!5217 = !DILocation(line: 596, column: 6, scope: !5090)
!5218 = !DILocation(line: 597, column: 3, scope: !5216)
!5219 = !DILocation(line: 599, column: 2, scope: !5090)
!5220 = !DILocation(line: 600, column: 1, scope: !5090)
!5221 = distinct !DISubprogram(name: "ni_pcidio_cancel", scope: !3, file: !3, line: 732, type: !4017, scopeLine: 734, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!5222 = !DILocalVariable(name: "dev", arg: 1, scope: !5221, file: !3, line: 732, type: !3134)
!5223 = !DILocation(line: 732, column: 51, scope: !5221)
!5224 = !DILocalVariable(name: "s", arg: 2, scope: !5221, file: !3, line: 733, type: !3903)
!5225 = !DILocation(line: 733, column: 33, scope: !5221)
!5226 = !DILocation(line: 735, column: 15, scope: !5221)
!5227 = !DILocation(line: 735, column: 20, scope: !5221)
!5228 = !DILocation(line: 735, column: 25, scope: !5221)
!5229 = !DILocation(line: 735, column: 2, scope: !5221)
!5230 = !DILocation(line: 736, column: 36, scope: !5221)
!5231 = !DILocation(line: 736, column: 2, scope: !5221)
!5232 = !DILocation(line: 738, column: 2, scope: !5221)
!5233 = distinct !DISubprogram(name: "ni_pcidio_change", scope: !3, file: !3, line: 741, type: !4017, scopeLine: 743, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!5234 = !DILocalVariable(name: "dev", arg: 1, scope: !5233, file: !3, line: 741, type: !3134)
!5235 = !DILocation(line: 741, column: 51, scope: !5233)
!5236 = !DILocalVariable(name: "s", arg: 2, scope: !5233, file: !3, line: 742, type: !3903)
!5237 = !DILocation(line: 742, column: 33, scope: !5233)
!5238 = !DILocalVariable(name: "devpriv", scope: !5233, file: !3, line: 744, type: !4399)
!5239 = !DILocation(line: 744, column: 26, scope: !5233)
!5240 = !DILocation(line: 744, column: 36, scope: !5233)
!5241 = !DILocation(line: 744, column: 41, scope: !5233)
!5242 = !DILocalVariable(name: "ret", scope: !5233, file: !3, line: 745, type: !207)
!5243 = !DILocation(line: 745, column: 6, scope: !5233)
!5244 = !DILocation(line: 747, column: 24, scope: !5233)
!5245 = !DILocation(line: 747, column: 33, scope: !5233)
!5246 = !DILocation(line: 747, column: 47, scope: !5233)
!5247 = !DILocation(line: 747, column: 8, scope: !5233)
!5248 = !DILocation(line: 747, column: 6, scope: !5233)
!5249 = !DILocation(line: 748, column: 6, scope: !5250)
!5250 = distinct !DILexicalBlock(scope: !5233, file: !3, line: 748, column: 6)
!5251 = !DILocation(line: 748, column: 10, scope: !5250)
!5252 = !DILocation(line: 748, column: 6, scope: !5233)
!5253 = !DILocation(line: 749, column: 10, scope: !5250)
!5254 = !DILocation(line: 749, column: 3, scope: !5250)
!5255 = !DILocation(line: 751, column: 9, scope: !5233)
!5256 = !DILocation(line: 751, column: 12, scope: !5233)
!5257 = !DILocation(line: 751, column: 19, scope: !5233)
!5258 = !DILocation(line: 751, column: 39, scope: !5233)
!5259 = !DILocation(line: 751, column: 42, scope: !5233)
!5260 = !DILocation(line: 751, column: 49, scope: !5233)
!5261 = !DILocation(line: 751, column: 2, scope: !5233)
!5262 = !DILocation(line: 753, column: 2, scope: !5233)
!5263 = !DILocation(line: 754, column: 1, scope: !5233)
!5264 = distinct !DISubprogram(name: "ni_pcidio_poll", scope: !3, file: !3, line: 358, type: !4017, scopeLine: 359, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!5265 = !DILocalVariable(name: "lock", arg: 1, scope: !5266, file: !4487, line: 392, type: !2225)
!5266 = distinct !DISubprogram(name: "spin_unlock", scope: !4487, file: !4487, line: 392, type: !5267, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!5267 = !DISubroutineType(types: !5268)
!5268 = !{null, !2225}
!5269 = !DILocation(line: 392, column: 53, scope: !5266, inlinedAt: !5270)
!5270 = distinct !DILocation(line: 368, column: 2, scope: !5264)
!5271 = !DILocalVariable(name: "lock", arg: 1, scope: !5272, file: !4487, line: 352, type: !2225)
!5272 = distinct !DISubprogram(name: "spin_lock", scope: !4487, file: !4487, line: 352, type: !5267, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!5273 = !DILocation(line: 352, column: 51, scope: !5272, inlinedAt: !5274)
!5274 = distinct !DILocation(line: 365, column: 2, scope: !5264)
!5275 = !DILocalVariable(name: "lock", arg: 1, scope: !5276, file: !4487, line: 407, type: !2225)
!5276 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !4487, file: !4487, line: 407, type: !5277, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!5277 = !DISubroutineType(types: !5278)
!5278 = !{null, !2225, !216}
!5279 = !DILocation(line: 407, column: 64, scope: !5276, inlinedAt: !5280)
!5280 = distinct !DILocation(line: 370, column: 2, scope: !5264)
!5281 = !DILocalVariable(name: "flags", arg: 2, scope: !5276, file: !4487, line: 407, type: !216)
!5282 = !DILocation(line: 407, column: 84, scope: !5276, inlinedAt: !5280)
!5283 = !DILocation(line: 327, column: 67, scope: !4486, inlinedAt: !5284)
!5284 = distinct !DILocation(line: 364, column: 2, scope: !5285)
!5285 = distinct !DILexicalBlock(scope: !5286, file: !3, line: 364, column: 2)
!5286 = distinct !DILexicalBlock(scope: !5287, file: !3, line: 364, column: 2)
!5287 = distinct !DILexicalBlock(scope: !5288, file: !3, line: 364, column: 2)
!5288 = distinct !DILexicalBlock(scope: !5289, file: !3, line: 364, column: 2)
!5289 = distinct !DILexicalBlock(scope: !5264, file: !3, line: 364, column: 2)
!5290 = !DILocalVariable(name: "dev", arg: 1, scope: !5264, file: !3, line: 358, type: !3134)
!5291 = !DILocation(line: 358, column: 49, scope: !5264)
!5292 = !DILocalVariable(name: "s", arg: 2, scope: !5264, file: !3, line: 358, type: !3903)
!5293 = !DILocation(line: 358, column: 79, scope: !5264)
!5294 = !DILocalVariable(name: "devpriv", scope: !5264, file: !3, line: 360, type: !4399)
!5295 = !DILocation(line: 360, column: 26, scope: !5264)
!5296 = !DILocation(line: 360, column: 36, scope: !5264)
!5297 = !DILocation(line: 360, column: 41, scope: !5264)
!5298 = !DILocalVariable(name: "irq_flags", scope: !5264, file: !3, line: 361, type: !216)
!5299 = !DILocation(line: 361, column: 16, scope: !5264)
!5300 = !DILocalVariable(name: "count", scope: !5264, file: !3, line: 362, type: !207)
!5301 = !DILocation(line: 362, column: 6, scope: !5264)
!5302 = !DILocation(line: 364, column: 2, scope: !5264)
!5303 = !DILocation(line: 364, column: 2, scope: !5289)
!5304 = !DILocalVariable(name: "__dummy", scope: !5305, file: !3, line: 364, type: !216)
!5305 = distinct !DILexicalBlock(scope: !5288, file: !3, line: 364, column: 2)
!5306 = !DILocation(line: 364, column: 2, scope: !5305)
!5307 = !DILocalVariable(name: "__dummy2", scope: !5305, file: !3, line: 364, type: !216)
!5308 = !DILocation(line: 364, column: 2, scope: !5288)
!5309 = !DILocation(line: 364, column: 2, scope: !5287)
!5310 = !DILocation(line: 364, column: 2, scope: !5311)
!5311 = distinct !DILexicalBlock(scope: !5287, file: !3, line: 364, column: 2)
!5312 = !DILocalVariable(name: "__dummy", scope: !5313, file: !3, line: 364, type: !216)
!5313 = distinct !DILexicalBlock(scope: !5314, file: !3, line: 364, column: 2)
!5314 = distinct !DILexicalBlock(scope: !5311, file: !3, line: 364, column: 2)
!5315 = !DILocation(line: 364, column: 2, scope: !5313)
!5316 = !DILocalVariable(name: "__dummy2", scope: !5313, file: !3, line: 364, type: !216)
!5317 = !DILocation(line: 364, column: 2, scope: !5314)
!5318 = !DILocation(line: 364, column: 2, scope: !5286)
!5319 = !{i32 -2141608945}
!5320 = !DILocation(line: 364, column: 2, scope: !5285)
!5321 = !DILocation(line: 329, column: 10, scope: !4486, inlinedAt: !5284)
!5322 = !DILocation(line: 329, column: 16, scope: !4486, inlinedAt: !5284)
!5323 = !DILocation(line: 365, column: 13, scope: !5264)
!5324 = !DILocation(line: 365, column: 22, scope: !5264)
!5325 = !DILocation(line: 354, column: 2, scope: !5326, inlinedAt: !5274)
!5326 = distinct !DILexicalBlock(scope: !5272, file: !4487, line: 354, column: 2)
!5327 = !{i32 -2145455825}
!5328 = !DILocation(line: 354, column: 2, scope: !5329, inlinedAt: !5274)
!5329 = distinct !DILexicalBlock(scope: !5326, file: !4487, line: 354, column: 2)
!5330 = !DILocation(line: 366, column: 6, scope: !5331)
!5331 = distinct !DILexicalBlock(scope: !5264, file: !3, line: 366, column: 6)
!5332 = !DILocation(line: 366, column: 15, scope: !5331)
!5333 = !DILocation(line: 366, column: 6, scope: !5264)
!5334 = !DILocation(line: 367, column: 17, scope: !5331)
!5335 = !DILocation(line: 367, column: 26, scope: !5331)
!5336 = !DILocation(line: 367, column: 40, scope: !5331)
!5337 = !DILocation(line: 367, column: 3, scope: !5331)
!5338 = !DILocation(line: 368, column: 15, scope: !5264)
!5339 = !DILocation(line: 368, column: 24, scope: !5264)
!5340 = !DILocation(line: 394, column: 2, scope: !5341, inlinedAt: !5270)
!5341 = distinct !DILexicalBlock(scope: !5266, file: !4487, line: 394, column: 2)
!5342 = !{i32 -2145453464}
!5343 = !DILocation(line: 394, column: 2, scope: !5344, inlinedAt: !5270)
!5344 = distinct !DILexicalBlock(scope: !5341, file: !4487, line: 394, column: 2)
!5345 = !DILocation(line: 369, column: 35, scope: !5264)
!5346 = !DILocation(line: 369, column: 10, scope: !5264)
!5347 = !DILocation(line: 369, column: 8, scope: !5264)
!5348 = !DILocation(line: 370, column: 26, scope: !5264)
!5349 = !DILocation(line: 370, column: 31, scope: !5264)
!5350 = !DILocation(line: 370, column: 41, scope: !5264)
!5351 = !DILocalVariable(name: "__dummy", scope: !5352, file: !4487, line: 409, type: !216)
!5352 = distinct !DILexicalBlock(scope: !5353, file: !4487, line: 409, column: 2)
!5353 = distinct !DILexicalBlock(scope: !5276, file: !4487, line: 409, column: 2)
!5354 = !DILocation(line: 409, column: 2, scope: !5352, inlinedAt: !5280)
!5355 = !DILocalVariable(name: "__dummy2", scope: !5352, file: !4487, line: 409, type: !216)
!5356 = !DILocalVariable(name: "__dummy", scope: !5357, file: !4487, line: 409, type: !216)
!5357 = distinct !DILexicalBlock(scope: !5358, file: !4487, line: 409, column: 2)
!5358 = distinct !DILexicalBlock(scope: !5359, file: !4487, line: 409, column: 2)
!5359 = distinct !DILexicalBlock(scope: !5360, file: !4487, line: 409, column: 2)
!5360 = distinct !DILexicalBlock(scope: !5353, file: !4487, line: 409, column: 2)
!5361 = !DILocation(line: 409, column: 2, scope: !5357, inlinedAt: !5280)
!5362 = !DILocalVariable(name: "__dummy2", scope: !5357, file: !4487, line: 409, type: !216)
!5363 = !DILocation(line: 409, column: 2, scope: !5358, inlinedAt: !5280)
!5364 = !DILocation(line: 409, column: 2, scope: !5365, inlinedAt: !5280)
!5365 = distinct !DILexicalBlock(scope: !5360, file: !4487, line: 409, column: 2)
!5366 = !{i32 -2145451138}
!5367 = !DILocation(line: 409, column: 2, scope: !5368, inlinedAt: !5280)
!5368 = distinct !DILexicalBlock(scope: !5365, file: !4487, line: 409, column: 2)
!5369 = !DILocation(line: 371, column: 9, scope: !5264)
!5370 = !DILocation(line: 371, column: 2, scope: !5264)
!5371 = distinct !DISubprogram(name: "request_irq", scope: !4182, file: !4182, line: 157, type: !5372, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!5372 = !DISubroutineType(types: !5373)
!5373 = !{!207, !7, !5374, !216, !644, !233}
!5374 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !4182, line: 92, baseType: !5375)
!5375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5376, size: 64)
!5376 = !DISubroutineType(types: !5377)
!5377 = !{!5378, !207, !233}
!5378 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !190, line: 17, baseType: !189)
!5379 = !DILocalVariable(name: "irq", arg: 1, scope: !5371, file: !4182, line: 157, type: !7)
!5380 = !DILocation(line: 157, column: 26, scope: !5371)
!5381 = !DILocalVariable(name: "handler", arg: 2, scope: !5371, file: !4182, line: 157, type: !5374)
!5382 = !DILocation(line: 157, column: 45, scope: !5371)
!5383 = !DILocalVariable(name: "flags", arg: 3, scope: !5371, file: !4182, line: 157, type: !216)
!5384 = !DILocation(line: 157, column: 68, scope: !5371)
!5385 = !DILocalVariable(name: "name", arg: 4, scope: !5371, file: !4182, line: 158, type: !644)
!5386 = !DILocation(line: 158, column: 18, scope: !5371)
!5387 = !DILocalVariable(name: "dev", arg: 5, scope: !5371, file: !4182, line: 158, type: !233)
!5388 = !DILocation(line: 158, column: 30, scope: !5371)
!5389 = !DILocation(line: 160, column: 30, scope: !5371)
!5390 = !DILocation(line: 160, column: 35, scope: !5371)
!5391 = !DILocation(line: 160, column: 50, scope: !5371)
!5392 = !DILocation(line: 160, column: 57, scope: !5371)
!5393 = !DILocation(line: 160, column: 63, scope: !5371)
!5394 = !DILocation(line: 160, column: 9, scope: !5371)
!5395 = !DILocation(line: 160, column: 2, scope: !5371)
!5396 = distinct !DISubprogram(name: "nidio_interrupt", scope: !3, file: !3, line: 374, type: !5376, scopeLine: 375, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!5397 = !DILocation(line: 392, column: 53, scope: !5266, inlinedAt: !5398)
!5398 = distinct !DILocation(line: 463, column: 2, scope: !5396)
!5399 = !DILocation(line: 392, column: 53, scope: !5266, inlinedAt: !5400)
!5400 = distinct !DILocation(line: 402, column: 2, scope: !5396)
!5401 = !DILocation(line: 352, column: 51, scope: !5272, inlinedAt: !5402)
!5402 = distinct !DILocation(line: 397, column: 2, scope: !5396)
!5403 = !DILocation(line: 352, column: 51, scope: !5272, inlinedAt: !5404)
!5404 = distinct !DILocation(line: 392, column: 2, scope: !5396)
!5405 = !DILocalVariable(name: "irq", arg: 1, scope: !5396, file: !3, line: 374, type: !207)
!5406 = !DILocation(line: 374, column: 40, scope: !5396)
!5407 = !DILocalVariable(name: "d", arg: 2, scope: !5396, file: !3, line: 374, type: !233)
!5408 = !DILocation(line: 374, column: 51, scope: !5396)
!5409 = !DILocalVariable(name: "dev", scope: !5396, file: !3, line: 376, type: !3134)
!5410 = !DILocation(line: 376, column: 24, scope: !5396)
!5411 = !DILocation(line: 376, column: 30, scope: !5396)
!5412 = !DILocalVariable(name: "devpriv", scope: !5396, file: !3, line: 377, type: !4399)
!5413 = !DILocation(line: 377, column: 26, scope: !5396)
!5414 = !DILocation(line: 377, column: 36, scope: !5396)
!5415 = !DILocation(line: 377, column: 41, scope: !5396)
!5416 = !DILocalVariable(name: "s", scope: !5396, file: !3, line: 378, type: !3903)
!5417 = !DILocation(line: 378, column: 27, scope: !5396)
!5418 = !DILocation(line: 378, column: 31, scope: !5396)
!5419 = !DILocation(line: 378, column: 36, scope: !5396)
!5420 = !DILocalVariable(name: "async", scope: !5396, file: !3, line: 379, type: !3914)
!5421 = !DILocation(line: 379, column: 23, scope: !5396)
!5422 = !DILocation(line: 379, column: 31, scope: !5396)
!5423 = !DILocation(line: 379, column: 34, scope: !5396)
!5424 = !DILocalVariable(name: "auxdata", scope: !5396, file: !3, line: 380, type: !7)
!5425 = !DILocation(line: 380, column: 15, scope: !5396)
!5426 = !DILocalVariable(name: "flags", scope: !5396, file: !3, line: 381, type: !207)
!5427 = !DILocation(line: 381, column: 6, scope: !5396)
!5428 = !DILocalVariable(name: "status", scope: !5396, file: !3, line: 382, type: !207)
!5429 = !DILocation(line: 382, column: 6, scope: !5396)
!5430 = !DILocalVariable(name: "work", scope: !5396, file: !3, line: 383, type: !207)
!5431 = !DILocation(line: 383, column: 6, scope: !5396)
!5432 = !DILocation(line: 386, column: 7, scope: !5433)
!5433 = distinct !DILexicalBlock(scope: !5396, file: !3, line: 386, column: 6)
!5434 = !DILocation(line: 386, column: 12, scope: !5433)
!5435 = !DILocation(line: 386, column: 6, scope: !5396)
!5436 = !DILocation(line: 388, column: 3, scope: !5437)
!5437 = distinct !DILexicalBlock(scope: !5433, file: !3, line: 386, column: 22)
!5438 = !DILocation(line: 392, column: 13, scope: !5396)
!5439 = !DILocation(line: 392, column: 18, scope: !5396)
!5440 = !DILocation(line: 354, column: 2, scope: !5326, inlinedAt: !5404)
!5441 = !DILocation(line: 354, column: 2, scope: !5329, inlinedAt: !5404)
!5442 = !DILocation(line: 394, column: 17, scope: !5396)
!5443 = !DILocation(line: 394, column: 22, scope: !5396)
!5444 = !DILocation(line: 394, column: 27, scope: !5396)
!5445 = !DILocation(line: 394, column: 11, scope: !5396)
!5446 = !DILocation(line: 394, column: 9, scope: !5396)
!5447 = !DILocation(line: 395, column: 16, scope: !5396)
!5448 = !DILocation(line: 395, column: 21, scope: !5396)
!5449 = !DILocation(line: 395, column: 26, scope: !5396)
!5450 = !DILocation(line: 395, column: 10, scope: !5396)
!5451 = !DILocation(line: 395, column: 8, scope: !5396)
!5452 = !DILocation(line: 397, column: 13, scope: !5396)
!5453 = !DILocation(line: 397, column: 22, scope: !5396)
!5454 = !DILocation(line: 354, column: 2, scope: !5326, inlinedAt: !5402)
!5455 = !DILocation(line: 354, column: 2, scope: !5329, inlinedAt: !5402)
!5456 = !DILocation(line: 398, column: 6, scope: !5457)
!5457 = distinct !DILexicalBlock(scope: !5396, file: !3, line: 398, column: 6)
!5458 = !DILocation(line: 398, column: 15, scope: !5457)
!5459 = !DILocation(line: 398, column: 6, scope: !5396)
!5460 = !DILocation(line: 399, column: 18, scope: !5461)
!5461 = distinct !DILexicalBlock(scope: !5457, file: !3, line: 398, column: 29)
!5462 = !DILocation(line: 399, column: 27, scope: !5461)
!5463 = !DILocation(line: 399, column: 41, scope: !5461)
!5464 = !DILocation(line: 399, column: 3, scope: !5461)
!5465 = !DILocation(line: 401, column: 2, scope: !5461)
!5466 = !DILocation(line: 402, column: 15, scope: !5396)
!5467 = !DILocation(line: 402, column: 24, scope: !5396)
!5468 = !DILocation(line: 394, column: 2, scope: !5341, inlinedAt: !5400)
!5469 = !DILocation(line: 394, column: 2, scope: !5344, inlinedAt: !5400)
!5470 = !DILocation(line: 404, column: 2, scope: !5396)
!5471 = !DILocation(line: 404, column: 9, scope: !5396)
!5472 = !DILocation(line: 404, column: 16, scope: !5396)
!5473 = !DILocation(line: 405, column: 7, scope: !5474)
!5474 = distinct !DILexicalBlock(scope: !5396, file: !3, line: 404, column: 29)
!5475 = !DILocation(line: 406, column: 7, scope: !5476)
!5476 = distinct !DILexicalBlock(scope: !5474, file: !3, line: 406, column: 7)
!5477 = !DILocation(line: 406, column: 12, scope: !5476)
!5478 = !DILocation(line: 406, column: 7, scope: !5474)
!5479 = !DILocation(line: 409, column: 11, scope: !5480)
!5480 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 406, column: 18)
!5481 = !DILocation(line: 409, column: 16, scope: !5480)
!5482 = !DILocation(line: 409, column: 21, scope: !5480)
!5483 = !DILocation(line: 408, column: 4, scope: !5480)
!5484 = !DILocation(line: 410, column: 4, scope: !5480)
!5485 = !DILocation(line: 413, column: 9, scope: !5474)
!5486 = !DILocation(line: 415, column: 7, scope: !5487)
!5487 = distinct !DILexicalBlock(scope: !5474, file: !3, line: 415, column: 7)
!5488 = !DILocation(line: 415, column: 13, scope: !5487)
!5489 = !DILocation(line: 415, column: 7, scope: !5474)
!5490 = !DILocation(line: 416, column: 4, scope: !5491)
!5491 = distinct !DILexicalBlock(scope: !5487, file: !3, line: 415, column: 31)
!5492 = !DILocation(line: 416, column: 11, scope: !5491)
!5493 = !DILocation(line: 416, column: 17, scope: !5491)
!5494 = !DILocation(line: 417, column: 9, scope: !5495)
!5495 = distinct !DILexicalBlock(scope: !5491, file: !3, line: 416, column: 35)
!5496 = !DILocation(line: 418, column: 9, scope: !5497)
!5497 = distinct !DILexicalBlock(scope: !5495, file: !3, line: 418, column: 9)
!5498 = !DILocation(line: 418, column: 14, scope: !5497)
!5499 = !DILocation(line: 418, column: 9, scope: !5495)
!5500 = !DILocation(line: 421, column: 19, scope: !5501)
!5501 = distinct !DILexicalBlock(scope: !5497, file: !3, line: 418, column: 21)
!5502 = !DILocation(line: 421, column: 24, scope: !5501)
!5503 = !DILocation(line: 421, column: 29, scope: !5501)
!5504 = !DILocation(line: 421, column: 6, scope: !5501)
!5505 = !DILocation(line: 424, column: 6, scope: !5501)
!5506 = !DILocation(line: 426, column: 21, scope: !5495)
!5507 = !DILocation(line: 426, column: 26, scope: !5495)
!5508 = !DILocation(line: 426, column: 31, scope: !5495)
!5509 = !DILocation(line: 426, column: 15, scope: !5495)
!5510 = !DILocation(line: 426, column: 13, scope: !5495)
!5511 = !DILocation(line: 427, column: 30, scope: !5495)
!5512 = !DILocation(line: 427, column: 33, scope: !5495)
!5513 = !DILocation(line: 427, column: 5, scope: !5495)
!5514 = !DILocation(line: 428, column: 19, scope: !5495)
!5515 = !DILocation(line: 428, column: 24, scope: !5495)
!5516 = !DILocation(line: 428, column: 29, scope: !5495)
!5517 = !DILocation(line: 428, column: 13, scope: !5495)
!5518 = !DILocation(line: 428, column: 11, scope: !5495)
!5519 = distinct !{!5519, !5490, !5520}
!5520 = !DILocation(line: 429, column: 4, scope: !5491)
!5521 = !DILocation(line: 430, column: 3, scope: !5491)
!5522 = !DILocation(line: 432, column: 7, scope: !5523)
!5523 = distinct !DILexicalBlock(scope: !5474, file: !3, line: 432, column: 7)
!5524 = !DILocation(line: 432, column: 13, scope: !5523)
!5525 = !DILocation(line: 432, column: 7, scope: !5474)
!5526 = !DILocation(line: 433, column: 26, scope: !5527)
!5527 = distinct !DILexicalBlock(scope: !5523, file: !3, line: 432, column: 30)
!5528 = !DILocation(line: 433, column: 31, scope: !5527)
!5529 = !DILocation(line: 433, column: 36, scope: !5527)
!5530 = !DILocation(line: 433, column: 4, scope: !5527)
!5531 = !DILocation(line: 434, column: 4, scope: !5527)
!5532 = !DILocation(line: 434, column: 11, scope: !5527)
!5533 = !DILocation(line: 434, column: 18, scope: !5527)
!5534 = !DILocation(line: 436, column: 17, scope: !5527)
!5535 = !DILocation(line: 436, column: 22, scope: !5527)
!5536 = !DILocation(line: 436, column: 27, scope: !5527)
!5537 = !DILocation(line: 436, column: 4, scope: !5527)
!5538 = !DILocation(line: 437, column: 4, scope: !5527)
!5539 = !DILocation(line: 438, column: 14, scope: !5540)
!5540 = distinct !DILexicalBlock(scope: !5523, file: !3, line: 438, column: 14)
!5541 = !DILocation(line: 438, column: 20, scope: !5540)
!5542 = !DILocation(line: 438, column: 14, scope: !5523)
!5543 = !DILocation(line: 439, column: 25, scope: !5544)
!5544 = distinct !DILexicalBlock(scope: !5540, file: !3, line: 438, column: 30)
!5545 = !DILocation(line: 439, column: 30, scope: !5544)
!5546 = !DILocation(line: 439, column: 35, scope: !5544)
!5547 = !DILocation(line: 439, column: 4, scope: !5544)
!5548 = !DILocation(line: 440, column: 4, scope: !5544)
!5549 = !DILocation(line: 440, column: 11, scope: !5544)
!5550 = !DILocation(line: 440, column: 18, scope: !5544)
!5551 = !DILocation(line: 441, column: 4, scope: !5544)
!5552 = !DILocation(line: 442, column: 14, scope: !5553)
!5553 = distinct !DILexicalBlock(scope: !5540, file: !3, line: 442, column: 14)
!5554 = !DILocation(line: 442, column: 20, scope: !5553)
!5555 = !DILocation(line: 442, column: 14, scope: !5540)
!5556 = !DILocation(line: 444, column: 11, scope: !5557)
!5557 = distinct !DILexicalBlock(scope: !5553, file: !3, line: 442, column: 34)
!5558 = !DILocation(line: 444, column: 16, scope: !5557)
!5559 = !DILocation(line: 444, column: 21, scope: !5557)
!5560 = !DILocation(line: 443, column: 4, scope: !5557)
!5561 = !DILocation(line: 445, column: 4, scope: !5557)
!5562 = !DILocation(line: 445, column: 11, scope: !5557)
!5563 = !DILocation(line: 445, column: 18, scope: !5557)
!5564 = !DILocation(line: 446, column: 3, scope: !5557)
!5565 = !DILocation(line: 446, column: 14, scope: !5566)
!5566 = distinct !DILexicalBlock(scope: !5553, file: !3, line: 446, column: 14)
!5567 = !DILocation(line: 446, column: 20, scope: !5566)
!5568 = !DILocation(line: 446, column: 14, scope: !5553)
!5569 = !DILocation(line: 448, column: 11, scope: !5570)
!5570 = distinct !DILexicalBlock(scope: !5566, file: !3, line: 446, column: 36)
!5571 = !DILocation(line: 448, column: 16, scope: !5570)
!5572 = !DILocation(line: 448, column: 21, scope: !5570)
!5573 = !DILocation(line: 447, column: 4, scope: !5570)
!5574 = !DILocation(line: 449, column: 4, scope: !5570)
!5575 = !DILocation(line: 449, column: 11, scope: !5570)
!5576 = !DILocation(line: 449, column: 18, scope: !5570)
!5577 = !DILocation(line: 450, column: 3, scope: !5570)
!5578 = !DILocation(line: 452, column: 17, scope: !5474)
!5579 = !DILocation(line: 452, column: 22, scope: !5474)
!5580 = !DILocation(line: 452, column: 27, scope: !5474)
!5581 = !DILocation(line: 452, column: 11, scope: !5474)
!5582 = !DILocation(line: 452, column: 9, scope: !5474)
!5583 = !DILocation(line: 453, column: 18, scope: !5474)
!5584 = !DILocation(line: 453, column: 23, scope: !5474)
!5585 = !DILocation(line: 453, column: 28, scope: !5474)
!5586 = !DILocation(line: 453, column: 12, scope: !5474)
!5587 = !DILocation(line: 453, column: 10, scope: !5474)
!5588 = distinct !{!5588, !5470, !5589}
!5589 = !DILocation(line: 454, column: 2, scope: !5396)
!5590 = !DILabel(scope: !5396, name: "out", file: !3, line: 456)
!5591 = !DILocation(line: 456, column: 1, scope: !5396)
!5592 = !DILocation(line: 457, column: 23, scope: !5396)
!5593 = !DILocation(line: 457, column: 28, scope: !5396)
!5594 = !DILocation(line: 457, column: 2, scope: !5396)
!5595 = !DILocation(line: 463, column: 15, scope: !5396)
!5596 = !DILocation(line: 463, column: 20, scope: !5396)
!5597 = !DILocation(line: 394, column: 2, scope: !5341, inlinedAt: !5398)
!5598 = !DILocation(line: 394, column: 2, scope: !5344, inlinedAt: !5398)
!5599 = !DILocation(line: 464, column: 2, scope: !5396)
!5600 = !DILocation(line: 465, column: 1, scope: !5396)
!5601 = distinct !DISubprogram(name: "pci_6534_reset_fpgas", scope: !3, file: !3, line: 818, type: !4045, scopeLine: 819, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!5602 = !DILocalVariable(name: "dev", arg: 1, scope: !5601, file: !3, line: 818, type: !3134)
!5603 = !DILocation(line: 818, column: 55, scope: !5601)
!5604 = !DILocalVariable(name: "ret", scope: !5601, file: !3, line: 820, type: !207)
!5605 = !DILocation(line: 820, column: 6, scope: !5601)
!5606 = !DILocalVariable(name: "i", scope: !5601, file: !3, line: 821, type: !207)
!5607 = !DILocation(line: 821, column: 6, scope: !5601)
!5608 = !DILocation(line: 823, column: 14, scope: !5601)
!5609 = !DILocation(line: 823, column: 19, scope: !5601)
!5610 = !DILocation(line: 823, column: 24, scope: !5601)
!5611 = !DILocation(line: 823, column: 2, scope: !5601)
!5612 = !DILocation(line: 824, column: 9, scope: !5613)
!5613 = distinct !DILexicalBlock(scope: !5601, file: !3, line: 824, column: 2)
!5614 = !DILocation(line: 824, column: 7, scope: !5613)
!5615 = !DILocation(line: 824, column: 14, scope: !5616)
!5616 = distinct !DILexicalBlock(scope: !5613, file: !3, line: 824, column: 2)
!5617 = !DILocation(line: 824, column: 16, scope: !5616)
!5618 = !DILocation(line: 824, column: 2, scope: !5613)
!5619 = !DILocation(line: 825, column: 29, scope: !5620)
!5620 = distinct !DILexicalBlock(scope: !5616, file: !3, line: 824, column: 26)
!5621 = !DILocation(line: 825, column: 34, scope: !5620)
!5622 = !DILocation(line: 825, column: 9, scope: !5620)
!5623 = !DILocation(line: 825, column: 7, scope: !5620)
!5624 = !DILocation(line: 826, column: 7, scope: !5625)
!5625 = distinct !DILexicalBlock(scope: !5620, file: !3, line: 826, column: 7)
!5626 = !DILocation(line: 826, column: 11, scope: !5625)
!5627 = !DILocation(line: 826, column: 7, scope: !5620)
!5628 = !DILocation(line: 827, column: 4, scope: !5625)
!5629 = !DILocation(line: 828, column: 2, scope: !5620)
!5630 = !DILocation(line: 824, column: 21, scope: !5616)
!5631 = !DILocation(line: 824, column: 2, scope: !5616)
!5632 = distinct !{!5632, !5618, !5633}
!5633 = !DILocation(line: 828, column: 2, scope: !5613)
!5634 = !DILocation(line: 829, column: 14, scope: !5601)
!5635 = !DILocation(line: 829, column: 19, scope: !5601)
!5636 = !DILocation(line: 829, column: 24, scope: !5601)
!5637 = !DILocation(line: 829, column: 2, scope: !5601)
!5638 = !DILocation(line: 830, column: 9, scope: !5601)
!5639 = !DILocation(line: 830, column: 2, scope: !5601)
!5640 = !DILocalVariable(name: "pscr_ret__", scope: !5641, file: !5642, line: 15, type: !224)
!5641 = distinct !DILexicalBlock(scope: !5643, file: !5642, line: 15, column: 9)
!5642 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/lizy2001/genbc/linux")
!5643 = distinct !DISubprogram(name: "get_current", scope: !5642, file: !5642, line: 13, type: !5644, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!5644 = !DISubroutineType(types: !5645)
!5645 = !{!224}
!5646 = !DILocation(line: 15, column: 9, scope: !5641, inlinedAt: !5647)
!5647 = distinct !DILocation(line: 1897, column: 9, scope: !5648, inlinedAt: !5649)
!5648 = distinct !DISubprogram(name: "need_resched", scope: !226, file: !226, line: 1895, type: !3268, scopeLine: 1896, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!5649 = distinct !DILocation(line: 806, column: 7, scope: !5650)
!5650 = distinct !DILexicalBlock(scope: !5651, file: !3, line: 806, column: 7)
!5651 = distinct !DILexicalBlock(scope: !5652, file: !3, line: 790, column: 33)
!5652 = distinct !DILexicalBlock(scope: !5653, file: !3, line: 790, column: 2)
!5653 = distinct !DILexicalBlock(scope: !4091, file: !3, line: 790, column: 2)
!5654 = !DILocalVariable(name: "__vpp_verify", scope: !5655, file: !5642, line: 15, type: !2904)
!5655 = distinct !DILexicalBlock(scope: !5641, file: !5642, line: 15, column: 9)
!5656 = !DILocation(line: 15, column: 9, scope: !5655, inlinedAt: !5647)
!5657 = !DILocalVariable(name: "pfo_val__", scope: !5658, file: !5642, line: 15, type: !280)
!5658 = distinct !DILexicalBlock(scope: !5641, file: !5642, line: 15, column: 9)
!5659 = !DILocation(line: 15, column: 9, scope: !5658, inlinedAt: !5647)
!5660 = !DILocalVariable(name: "dev", arg: 1, scope: !4091, file: !3, line: 756, type: !3134)
!5661 = !DILocation(line: 756, column: 53, scope: !4091)
!5662 = !DILocalVariable(name: "data", arg: 2, scope: !4091, file: !3, line: 757, type: !4094)
!5663 = !DILocation(line: 757, column: 20, scope: !4091)
!5664 = !DILocalVariable(name: "data_len", arg: 3, scope: !4091, file: !3, line: 757, type: !1357)
!5665 = !DILocation(line: 757, column: 33, scope: !4091)
!5666 = !DILocalVariable(name: "context", arg: 4, scope: !4091, file: !3, line: 758, type: !216)
!5667 = !DILocation(line: 758, column: 24, scope: !4091)
!5668 = !DILocalVariable(name: "fpga_index", scope: !4091, file: !3, line: 761, type: !207)
!5669 = !DILocation(line: 761, column: 6, scope: !4091)
!5670 = !DILocation(line: 761, column: 19, scope: !4091)
!5671 = !DILocalVariable(name: "i", scope: !4091, file: !3, line: 762, type: !207)
!5672 = !DILocation(line: 762, column: 6, scope: !4091)
!5673 = !DILocalVariable(name: "j", scope: !4091, file: !3, line: 763, type: !1357)
!5674 = !DILocation(line: 763, column: 9, scope: !4091)
!5675 = !DILocation(line: 765, column: 16, scope: !4091)
!5676 = !DILocation(line: 765, column: 14, scope: !4091)
!5677 = !DILocation(line: 765, column: 9, scope: !4091)
!5678 = !DILocation(line: 765, column: 28, scope: !4091)
!5679 = !DILocation(line: 765, column: 33, scope: !4091)
!5680 = !DILocation(line: 765, column: 38, scope: !4091)
!5681 = !DILocation(line: 765, column: 2, scope: !4091)
!5682 = !DILocation(line: 766, column: 16, scope: !4091)
!5683 = !DILocation(line: 766, column: 14, scope: !4091)
!5684 = !DILocation(line: 766, column: 9, scope: !4091)
!5685 = !DILocation(line: 766, column: 28, scope: !4091)
!5686 = !DILocation(line: 766, column: 33, scope: !4091)
!5687 = !DILocation(line: 766, column: 38, scope: !4091)
!5688 = !DILocation(line: 766, column: 2, scope: !4091)
!5689 = !DILocation(line: 767, column: 9, scope: !5690)
!5690 = distinct !DILexicalBlock(scope: !4091, file: !3, line: 767, column: 2)
!5691 = !DILocation(line: 767, column: 7, scope: !5690)
!5692 = !DILocation(line: 768, column: 14, scope: !5693)
!5693 = distinct !DILexicalBlock(scope: !5690, file: !3, line: 767, column: 2)
!5694 = !DILocation(line: 768, column: 19, scope: !5693)
!5695 = !DILocation(line: 768, column: 24, scope: !5693)
!5696 = !DILocation(line: 768, column: 8, scope: !5693)
!5697 = !DILocation(line: 768, column: 52, scope: !5693)
!5698 = !DILocation(line: 768, column: 59, scope: !5693)
!5699 = !DILocation(line: 768, column: 64, scope: !5693)
!5700 = !DILocation(line: 769, column: 7, scope: !5693)
!5701 = !DILocation(line: 769, column: 9, scope: !5693)
!5702 = !DILocation(line: 0, scope: !5693)
!5703 = !DILocation(line: 767, column: 2, scope: !5690)
!5704 = !DILocation(line: 770, column: 3, scope: !5705)
!5705 = distinct !DILexicalBlock(scope: !5706, file: !3, line: 770, column: 3)
!5706 = distinct !DILexicalBlock(scope: !5707, file: !3, line: 770, column: 3)
!5707 = distinct !DILexicalBlock(scope: !5708, file: !3, line: 770, column: 3)
!5708 = distinct !DILexicalBlock(scope: !5709, file: !3, line: 770, column: 3)
!5709 = distinct !DILexicalBlock(scope: !5693, file: !3, line: 769, column: 25)
!5710 = !DILocation(line: 771, column: 2, scope: !5709)
!5711 = !DILocation(line: 769, column: 20, scope: !5693)
!5712 = !DILocation(line: 767, column: 2, scope: !5693)
!5713 = distinct !{!5713, !5703, !5714}
!5714 = !DILocation(line: 771, column: 2, scope: !5690)
!5715 = !DILocation(line: 772, column: 6, scope: !5716)
!5716 = distinct !DILexicalBlock(scope: !4091, file: !3, line: 772, column: 6)
!5717 = !DILocation(line: 772, column: 8, scope: !5716)
!5718 = !DILocation(line: 772, column: 6, scope: !4091)
!5719 = !DILocation(line: 773, column: 3, scope: !5720)
!5720 = distinct !DILexicalBlock(scope: !5716, file: !3, line: 772, column: 20)
!5721 = !DILocation(line: 776, column: 3, scope: !5720)
!5722 = !DILocation(line: 778, column: 16, scope: !4091)
!5723 = !DILocation(line: 778, column: 14, scope: !4091)
!5724 = !DILocation(line: 778, column: 9, scope: !4091)
!5725 = !DILocation(line: 778, column: 28, scope: !4091)
!5726 = !DILocation(line: 778, column: 33, scope: !4091)
!5727 = !DILocation(line: 778, column: 38, scope: !4091)
!5728 = !DILocation(line: 778, column: 2, scope: !4091)
!5729 = !DILocation(line: 779, column: 9, scope: !5730)
!5730 = distinct !DILexicalBlock(scope: !4091, file: !3, line: 779, column: 2)
!5731 = !DILocation(line: 779, column: 7, scope: !5730)
!5732 = !DILocation(line: 780, column: 13, scope: !5733)
!5733 = distinct !DILexicalBlock(scope: !5730, file: !3, line: 779, column: 2)
!5734 = !DILocation(line: 780, column: 18, scope: !5733)
!5735 = !DILocation(line: 780, column: 23, scope: !5733)
!5736 = !DILocation(line: 780, column: 7, scope: !5733)
!5737 = !DILocation(line: 780, column: 51, scope: !5733)
!5738 = !DILocation(line: 780, column: 58, scope: !5733)
!5739 = !DILocation(line: 781, column: 7, scope: !5733)
!5740 = !DILocation(line: 781, column: 9, scope: !5733)
!5741 = !DILocation(line: 0, scope: !5733)
!5742 = !DILocation(line: 779, column: 2, scope: !5730)
!5743 = !DILocation(line: 782, column: 3, scope: !5744)
!5744 = distinct !DILexicalBlock(scope: !5745, file: !3, line: 782, column: 3)
!5745 = distinct !DILexicalBlock(scope: !5746, file: !3, line: 782, column: 3)
!5746 = distinct !DILexicalBlock(scope: !5747, file: !3, line: 782, column: 3)
!5747 = distinct !DILexicalBlock(scope: !5748, file: !3, line: 782, column: 3)
!5748 = distinct !DILexicalBlock(scope: !5733, file: !3, line: 781, column: 25)
!5749 = !DILocation(line: 783, column: 2, scope: !5748)
!5750 = !DILocation(line: 781, column: 20, scope: !5733)
!5751 = !DILocation(line: 779, column: 2, scope: !5733)
!5752 = distinct !{!5752, !5742, !5753}
!5753 = !DILocation(line: 783, column: 2, scope: !5730)
!5754 = !DILocation(line: 784, column: 6, scope: !5755)
!5755 = distinct !DILexicalBlock(scope: !4091, file: !3, line: 784, column: 6)
!5756 = !DILocation(line: 784, column: 8, scope: !5755)
!5757 = !DILocation(line: 784, column: 6, scope: !4091)
!5758 = !DILocation(line: 785, column: 3, scope: !5759)
!5759 = distinct !DILexicalBlock(scope: !5755, file: !3, line: 784, column: 20)
!5760 = !DILocation(line: 788, column: 3, scope: !5759)
!5761 = !DILocation(line: 790, column: 9, scope: !5653)
!5762 = !DILocation(line: 790, column: 7, scope: !5653)
!5763 = !DILocation(line: 790, column: 14, scope: !5652)
!5764 = !DILocation(line: 790, column: 16, scope: !5652)
!5765 = !DILocation(line: 790, column: 22, scope: !5652)
!5766 = !DILocation(line: 790, column: 20, scope: !5652)
!5767 = !DILocation(line: 790, column: 2, scope: !5653)
!5768 = !DILocalVariable(name: "value", scope: !5651, file: !3, line: 791, type: !7)
!5769 = !DILocation(line: 791, column: 16, scope: !5651)
!5770 = !DILocation(line: 791, column: 24, scope: !5651)
!5771 = !DILocation(line: 791, column: 30, scope: !5651)
!5772 = !DILocation(line: 793, column: 12, scope: !5651)
!5773 = !DILocation(line: 793, column: 18, scope: !5651)
!5774 = !DILocation(line: 793, column: 22, scope: !5651)
!5775 = !DILocation(line: 793, column: 9, scope: !5651)
!5776 = !DILocation(line: 794, column: 10, scope: !5651)
!5777 = !DILocation(line: 794, column: 17, scope: !5651)
!5778 = !DILocation(line: 794, column: 22, scope: !5651)
!5779 = !DILocation(line: 794, column: 27, scope: !5651)
!5780 = !DILocation(line: 794, column: 3, scope: !5651)
!5781 = !DILocation(line: 795, column: 10, scope: !5782)
!5782 = distinct !DILexicalBlock(scope: !5651, file: !3, line: 795, column: 3)
!5783 = !DILocation(line: 795, column: 8, scope: !5782)
!5784 = !DILocation(line: 796, column: 15, scope: !5785)
!5785 = distinct !DILexicalBlock(scope: !5782, file: !3, line: 795, column: 3)
!5786 = !DILocation(line: 796, column: 20, scope: !5785)
!5787 = !DILocation(line: 796, column: 25, scope: !5785)
!5788 = !DILocation(line: 796, column: 9, scope: !5785)
!5789 = !DILocation(line: 796, column: 53, scope: !5785)
!5790 = !DILocation(line: 796, column: 60, scope: !5785)
!5791 = !DILocation(line: 797, column: 8, scope: !5785)
!5792 = !DILocation(line: 797, column: 11, scope: !5785)
!5793 = !DILocation(line: 797, column: 13, scope: !5785)
!5794 = !DILocation(line: 0, scope: !5785)
!5795 = !DILocation(line: 795, column: 3, scope: !5782)
!5796 = !DILocation(line: 798, column: 4, scope: !5797)
!5797 = distinct !DILexicalBlock(scope: !5798, file: !3, line: 798, column: 4)
!5798 = distinct !DILexicalBlock(scope: !5799, file: !3, line: 798, column: 4)
!5799 = distinct !DILexicalBlock(scope: !5800, file: !3, line: 798, column: 4)
!5800 = distinct !DILexicalBlock(scope: !5801, file: !3, line: 798, column: 4)
!5801 = distinct !DILexicalBlock(scope: !5785, file: !3, line: 797, column: 29)
!5802 = !DILocation(line: 799, column: 3, scope: !5801)
!5803 = !DILocation(line: 797, column: 24, scope: !5785)
!5804 = !DILocation(line: 795, column: 3, scope: !5785)
!5805 = distinct !{!5805, !5795, !5806}
!5806 = !DILocation(line: 799, column: 3, scope: !5782)
!5807 = !DILocation(line: 800, column: 7, scope: !5808)
!5808 = distinct !DILexicalBlock(scope: !5651, file: !3, line: 800, column: 7)
!5809 = !DILocation(line: 800, column: 9, scope: !5808)
!5810 = !DILocation(line: 800, column: 7, scope: !5651)
!5811 = !DILocation(line: 801, column: 4, scope: !5812)
!5812 = distinct !DILexicalBlock(scope: !5808, file: !3, line: 800, column: 21)
!5813 = !DILocation(line: 804, column: 4, scope: !5812)
!5814 = !{i32 -2146205559}
!5815 = !DILocation(line: 1897, column: 9, scope: !5648, inlinedAt: !5649)
!5816 = !DILocation(line: 806, column: 7, scope: !5651)
!5817 = !DILocation(line: 807, column: 4, scope: !5650)
!5818 = !DILocation(line: 790, column: 2, scope: !5652)
!5819 = distinct !{!5819, !5767, !5820}
!5820 = !DILocation(line: 808, column: 2, scope: !5653)
!5821 = !DILocation(line: 809, column: 14, scope: !4091)
!5822 = !DILocation(line: 809, column: 19, scope: !4091)
!5823 = !DILocation(line: 809, column: 24, scope: !4091)
!5824 = !DILocation(line: 809, column: 2, scope: !4091)
!5825 = !DILocation(line: 810, column: 2, scope: !4091)
!5826 = !DILocation(line: 811, column: 1, scope: !4091)
!5827 = distinct !DISubprogram(name: "pci_6534_init_main_fpga", scope: !3, file: !3, line: 833, type: !4049, scopeLine: 834, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!5828 = !DILocalVariable(name: "dev", arg: 1, scope: !5827, file: !3, line: 833, type: !3134)
!5829 = !DILocation(line: 833, column: 59, scope: !5827)
!5830 = !DILocation(line: 835, column: 12, scope: !5827)
!5831 = !DILocation(line: 835, column: 17, scope: !5827)
!5832 = !DILocation(line: 835, column: 22, scope: !5827)
!5833 = !DILocation(line: 835, column: 2, scope: !5827)
!5834 = !DILocation(line: 836, column: 12, scope: !5827)
!5835 = !DILocation(line: 836, column: 17, scope: !5827)
!5836 = !DILocation(line: 836, column: 22, scope: !5827)
!5837 = !DILocation(line: 836, column: 2, scope: !5827)
!5838 = !DILocation(line: 837, column: 12, scope: !5827)
!5839 = !DILocation(line: 837, column: 17, scope: !5827)
!5840 = !DILocation(line: 837, column: 22, scope: !5827)
!5841 = !DILocation(line: 837, column: 2, scope: !5827)
!5842 = !DILocation(line: 838, column: 12, scope: !5827)
!5843 = !DILocation(line: 838, column: 17, scope: !5827)
!5844 = !DILocation(line: 838, column: 22, scope: !5827)
!5845 = !DILocation(line: 838, column: 2, scope: !5827)
!5846 = !DILocation(line: 839, column: 12, scope: !5827)
!5847 = !DILocation(line: 839, column: 17, scope: !5827)
!5848 = !DILocation(line: 839, column: 22, scope: !5827)
!5849 = !DILocation(line: 839, column: 2, scope: !5827)
!5850 = !DILocation(line: 840, column: 12, scope: !5827)
!5851 = !DILocation(line: 840, column: 17, scope: !5827)
!5852 = !DILocation(line: 840, column: 22, scope: !5827)
!5853 = !DILocation(line: 840, column: 2, scope: !5827)
!5854 = !DILocation(line: 841, column: 1, scope: !5827)
!5855 = distinct !DISubprogram(name: "writew", scope: !4753, file: !4753, line: 66, type: !5856, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!5856 = !DISubroutineType(types: !5857)
!5857 = !{null, !210, !5858}
!5858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4758, size: 64)
!5859 = !DILocalVariable(name: "val", arg: 1, scope: !5855, file: !4753, line: 66, type: !210)
!5860 = !DILocation(line: 66, column: 1, scope: !5855)
!5861 = !DILocalVariable(name: "addr", arg: 2, scope: !5855, file: !4753, line: 66, type: !5858)
!5862 = !{i32 -2143401571}
!5863 = distinct !DISubprogram(name: "pci_6534_reset_fpga", scope: !3, file: !3, line: 813, type: !5864, scopeLine: 814, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!5864 = !DISubroutineType(types: !5865)
!5865 = !{!207, !3134, !207}
!5866 = !DILocalVariable(name: "dev", arg: 1, scope: !5863, file: !3, line: 813, type: !3134)
!5867 = !DILocation(line: 813, column: 54, scope: !5863)
!5868 = !DILocalVariable(name: "fpga_index", arg: 2, scope: !5863, file: !3, line: 813, type: !207)
!5869 = !DILocation(line: 813, column: 63, scope: !5863)
!5870 = !DILocation(line: 815, column: 28, scope: !5863)
!5871 = !DILocation(line: 815, column: 42, scope: !5863)
!5872 = !DILocation(line: 815, column: 9, scope: !5863)
!5873 = !DILocation(line: 815, column: 2, scope: !5863)
!5874 = distinct !DISubprogram(name: "readw", scope: !4753, file: !4753, line: 58, type: !5875, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!5875 = !DISubroutineType(types: !5876)
!5876 = !{!210, !4756}
!5877 = !DILocalVariable(name: "addr", arg: 1, scope: !5874, file: !4753, line: 58, type: !4756)
!5878 = !DILocation(line: 58, column: 1, scope: !5874)
!5879 = !DILocalVariable(name: "ret", scope: !5874, file: !4753, line: 58, type: !210)
!5880 = !{i32 -2143403995}
!5881 = distinct !DISubprogram(name: "test_ti_thread_flag", scope: !5882, file: !5882, line: 82, type: !5883, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!5882 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!5883 = !DISubroutineType(types: !5884)
!5884 = !{!207, !211, !207}
!5885 = !DILocalVariable(name: "ti", arg: 1, scope: !5881, file: !5882, line: 82, type: !211)
!5886 = !DILocation(line: 82, column: 59, scope: !5881)
!5887 = !DILocalVariable(name: "flag", arg: 2, scope: !5881, file: !5882, line: 82, type: !207)
!5888 = !DILocation(line: 82, column: 67, scope: !5881)
!5889 = !DILocation(line: 84, column: 18, scope: !5881)
!5890 = !DILocation(line: 84, column: 42, scope: !5881)
!5891 = !DILocation(line: 84, column: 46, scope: !5881)
!5892 = !DILocation(line: 84, column: 9, scope: !5881)
!5893 = !DILocation(line: 84, column: 2, scope: !5881)
!5894 = distinct !DISubprogram(name: "test_bit", scope: !5895, file: !5895, line: 132, type: !5896, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!5895 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!5896 = !DISubroutineType(types: !5897)
!5897 = !{!689, !231, !5898}
!5898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5899, size: 64)
!5899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5900)
!5900 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !216)
!5901 = !DILocalVariable(name: "nr", arg: 1, scope: !5902, file: !5903, line: 210, type: !231)
!5902 = distinct !DISubprogram(name: "variable_test_bit", scope: !5903, file: !5903, line: 210, type: !5896, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!5903 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5904 = !DILocation(line: 210, column: 52, scope: !5902, inlinedAt: !5905)
!5905 = distinct !DILocation(line: 135, column: 9, scope: !5894)
!5906 = !DILocalVariable(name: "addr", arg: 2, scope: !5902, file: !5903, line: 210, type: !5898)
!5907 = !DILocation(line: 210, column: 86, scope: !5902, inlinedAt: !5905)
!5908 = !DILocalVariable(name: "oldbit", scope: !5902, file: !5903, line: 212, type: !689)
!5909 = !DILocation(line: 212, column: 7, scope: !5902, inlinedAt: !5905)
!5910 = !DILocalVariable(name: "nr", arg: 1, scope: !5911, file: !5903, line: 204, type: !231)
!5911 = distinct !DISubprogram(name: "constant_test_bit", scope: !5903, file: !5903, line: 204, type: !5896, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!5912 = !DILocation(line: 204, column: 52, scope: !5911, inlinedAt: !5913)
!5913 = distinct !DILocation(line: 135, column: 9, scope: !5894)
!5914 = !DILocalVariable(name: "addr", arg: 2, scope: !5911, file: !5903, line: 204, type: !5898)
!5915 = !DILocation(line: 204, column: 86, scope: !5911, inlinedAt: !5913)
!5916 = !DILocalVariable(name: "v", arg: 1, scope: !5917, file: !5918, line: 69, type: !4756)
!5917 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5918, file: !5918, line: 69, type: !5919, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!5918 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5919 = !DISubroutineType(types: !5920)
!5920 = !{null, !4756, !1357}
!5921 = !DILocation(line: 69, column: 73, scope: !5917, inlinedAt: !5922)
!5922 = distinct !DILocation(line: 134, column: 2, scope: !5894)
!5923 = !DILocalVariable(name: "size", arg: 2, scope: !5917, file: !5918, line: 69, type: !1357)
!5924 = !DILocation(line: 69, column: 83, scope: !5917, inlinedAt: !5922)
!5925 = !DILocalVariable(name: "nr", arg: 1, scope: !5894, file: !5895, line: 132, type: !231)
!5926 = !DILocation(line: 132, column: 34, scope: !5894)
!5927 = !DILocalVariable(name: "addr", arg: 2, scope: !5894, file: !5895, line: 132, type: !5898)
!5928 = !DILocation(line: 132, column: 68, scope: !5894)
!5929 = !DILocation(line: 134, column: 25, scope: !5894)
!5930 = !DILocation(line: 134, column: 32, scope: !5894)
!5931 = !DILocation(line: 134, column: 30, scope: !5894)
!5932 = !DILocation(line: 71, column: 19, scope: !5917, inlinedAt: !5922)
!5933 = !DILocation(line: 71, column: 22, scope: !5917, inlinedAt: !5922)
!5934 = !DILocation(line: 71, column: 2, scope: !5917, inlinedAt: !5922)
!5935 = !DILocation(line: 72, column: 2, scope: !5917, inlinedAt: !5922)
!5936 = !DILocation(line: 135, column: 9, scope: !5894)
!5937 = !DILocation(line: 206, column: 19, scope: !5911, inlinedAt: !5913)
!5938 = !DILocation(line: 206, column: 22, scope: !5911, inlinedAt: !5913)
!5939 = !DILocation(line: 206, column: 15, scope: !5911, inlinedAt: !5913)
!5940 = !DILocation(line: 207, column: 4, scope: !5911, inlinedAt: !5913)
!5941 = !DILocation(line: 207, column: 9, scope: !5911, inlinedAt: !5913)
!5942 = !DILocation(line: 207, column: 12, scope: !5911, inlinedAt: !5913)
!5943 = !DILocation(line: 206, column: 44, scope: !5911, inlinedAt: !5913)
!5944 = !DILocation(line: 207, column: 37, scope: !5911, inlinedAt: !5913)
!5945 = !DILocation(line: 217, column: 33, scope: !5902, inlinedAt: !5905)
!5946 = !DILocation(line: 217, column: 46, scope: !5902, inlinedAt: !5905)
!5947 = !DILocation(line: 214, column: 2, scope: !5902, inlinedAt: !5905)
!5948 = !{i32 -2147119721, i32 -2147119661}
!5949 = !DILocation(line: 219, column: 9, scope: !5902, inlinedAt: !5905)
!5950 = !DILocation(line: 135, column: 2, scope: !5894)
!5951 = distinct !DISubprogram(name: "kasan_check_read", scope: !5952, file: !5952, line: 34, type: !5953, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!5952 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5953 = !DISubroutineType(types: !5954)
!5954 = !{!689, !4756, !7}
!5955 = !DILocalVariable(name: "p", arg: 1, scope: !5951, file: !5952, line: 34, type: !4756)
!5956 = !DILocation(line: 34, column: 58, scope: !5951)
!5957 = !DILocalVariable(name: "size", arg: 2, scope: !5951, file: !5952, line: 34, type: !7)
!5958 = !DILocation(line: 34, column: 74, scope: !5951)
!5959 = !DILocation(line: 36, column: 2, scope: !5951)
!5960 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5961, file: !5961, line: 178, type: !5962, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!5961 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5962 = !DISubroutineType(types: !5963)
!5963 = !{null, !4756, !1357, !207}
!5964 = !DILocalVariable(name: "ptr", arg: 1, scope: !5960, file: !5961, line: 178, type: !4756)
!5965 = !DILocation(line: 178, column: 60, scope: !5960)
!5966 = !DILocalVariable(name: "size", arg: 2, scope: !5960, file: !5961, line: 178, type: !1357)
!5967 = !DILocation(line: 178, column: 72, scope: !5960)
!5968 = !DILocalVariable(name: "type", arg: 3, scope: !5960, file: !5961, line: 179, type: !207)
!5969 = !DILocation(line: 179, column: 15, scope: !5960)
!5970 = !DILocation(line: 179, column: 23, scope: !5960)
!5971 = distinct !DISubprogram(name: "writel", scope: !4753, file: !4753, line: 67, type: !5972, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!5972 = !DISubroutineType(types: !5973)
!5973 = !{null, !7, !5858}
!5974 = !DILocalVariable(name: "val", arg: 1, scope: !5971, file: !4753, line: 67, type: !7)
!5975 = !DILocation(line: 67, column: 1, scope: !5971)
!5976 = !DILocalVariable(name: "addr", arg: 2, scope: !5971, file: !4753, line: 67, type: !5858)
!5977 = !{i32 -2143401185}
!5978 = distinct !DISubprogram(name: "writeb", scope: !4753, file: !4753, line: 65, type: !5979, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!5979 = !DISubroutineType(types: !5980)
!5980 = !{null, !404, !5858}
!5981 = !DILocalVariable(name: "val", arg: 1, scope: !5978, file: !4753, line: 65, type: !404)
!5982 = !DILocation(line: 65, column: 1, scope: !5978)
!5983 = !DILocalVariable(name: "addr", arg: 2, scope: !5978, file: !4753, line: 65, type: !5858)
!5984 = !{i32 -2143401955}
!5985 = distinct !DISubprogram(name: "readl", scope: !4753, file: !4753, line: 59, type: !5986, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!5986 = !DISubroutineType(types: !5987)
!5987 = !{!7, !4756}
!5988 = !DILocalVariable(name: "addr", arg: 1, scope: !5985, file: !4753, line: 59, type: !4756)
!5989 = !DILocation(line: 59, column: 1, scope: !5985)
!5990 = !DILocalVariable(name: "ret", scope: !5985, file: !4753, line: 59, type: !7)
!5991 = !{i32 -2143403578}
!5992 = distinct !DISubprogram(name: "ni_pcidio_ns_to_timer", scope: !3, file: !3, line: 505, type: !5993, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!5993 = !DISubroutineType(types: !5994)
!5994 = !{!207, !813, !7}
!5995 = !DILocalVariable(name: "nanosec", arg: 1, scope: !5992, file: !3, line: 505, type: !813)
!5996 = !DILocation(line: 505, column: 39, scope: !5992)
!5997 = !DILocalVariable(name: "flags", arg: 2, scope: !5992, file: !3, line: 505, type: !7)
!5998 = !DILocation(line: 505, column: 61, scope: !5992)
!5999 = !DILocalVariable(name: "divider", scope: !5992, file: !3, line: 507, type: !207)
!6000 = !DILocation(line: 507, column: 6, scope: !5992)
!6001 = !DILocalVariable(name: "base", scope: !5992, file: !3, line: 507, type: !207)
!6002 = !DILocation(line: 507, column: 15, scope: !5992)
!6003 = !DILocation(line: 509, column: 7, scope: !5992)
!6004 = !DILocation(line: 511, column: 10, scope: !5992)
!6005 = !DILocation(line: 511, column: 16, scope: !5992)
!6006 = !DILocation(line: 511, column: 2, scope: !5992)
!6007 = !DILocation(line: 511, column: 35, scope: !5992)
!6008 = !DILocalVariable(name: "__x", scope: !6009, file: !3, line: 514, type: !207)
!6009 = distinct !DILexicalBlock(scope: !6010, file: !3, line: 514, column: 13)
!6010 = distinct !DILexicalBlock(scope: !5992, file: !3, line: 511, column: 35)
!6011 = !DILocation(line: 514, column: 13, scope: !6009)
!6012 = !DILocalVariable(name: "__d", scope: !6009, file: !3, line: 514, type: !207)
!6013 = !DILocation(line: 514, column: 11, scope: !6010)
!6014 = !DILocation(line: 515, column: 3, scope: !6010)
!6015 = !DILocation(line: 517, column: 15, scope: !6010)
!6016 = !DILocation(line: 517, column: 14, scope: !6010)
!6017 = !DILocation(line: 517, column: 26, scope: !6010)
!6018 = !DILocation(line: 517, column: 24, scope: !6010)
!6019 = !DILocation(line: 517, column: 11, scope: !6010)
!6020 = !DILocation(line: 518, column: 3, scope: !6010)
!6021 = !DILocation(line: 520, column: 13, scope: !6010)
!6022 = !DILocation(line: 520, column: 11, scope: !6010)
!6023 = !DILocation(line: 521, column: 3, scope: !6010)
!6024 = !DILocation(line: 524, column: 13, scope: !5992)
!6025 = !DILocation(line: 524, column: 20, scope: !5992)
!6026 = !DILocation(line: 524, column: 18, scope: !5992)
!6027 = !DILocation(line: 524, column: 3, scope: !5992)
!6028 = !DILocation(line: 524, column: 11, scope: !5992)
!6029 = !DILocation(line: 525, column: 9, scope: !5992)
!6030 = !DILocation(line: 525, column: 2, scope: !5992)
!6031 = distinct !DISubprogram(name: "setup_mite_dma", scope: !3, file: !3, line: 333, type: !4017, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!6032 = !DILocation(line: 407, column: 64, scope: !5276, inlinedAt: !6033)
!6033 = distinct !DILocation(line: 353, column: 2, scope: !6031)
!6034 = !DILocation(line: 407, column: 84, scope: !5276, inlinedAt: !6033)
!6035 = !DILocation(line: 327, column: 67, scope: !4486, inlinedAt: !6036)
!6036 = distinct !DILocation(line: 346, column: 2, scope: !6037)
!6037 = distinct !DILexicalBlock(scope: !6038, file: !3, line: 346, column: 2)
!6038 = distinct !DILexicalBlock(scope: !6039, file: !3, line: 346, column: 2)
!6039 = distinct !DILexicalBlock(scope: !6040, file: !3, line: 346, column: 2)
!6040 = distinct !DILexicalBlock(scope: !6041, file: !3, line: 346, column: 2)
!6041 = distinct !DILexicalBlock(scope: !6031, file: !3, line: 346, column: 2)
!6042 = !DILocalVariable(name: "dev", arg: 1, scope: !6031, file: !3, line: 333, type: !3134)
!6043 = !DILocation(line: 333, column: 49, scope: !6031)
!6044 = !DILocalVariable(name: "s", arg: 2, scope: !6031, file: !3, line: 333, type: !3903)
!6045 = !DILocation(line: 333, column: 79, scope: !6031)
!6046 = !DILocalVariable(name: "devpriv", scope: !6031, file: !3, line: 335, type: !4399)
!6047 = !DILocation(line: 335, column: 26, scope: !6031)
!6048 = !DILocation(line: 335, column: 36, scope: !6031)
!6049 = !DILocation(line: 335, column: 41, scope: !6031)
!6050 = !DILocalVariable(name: "retval", scope: !6031, file: !3, line: 336, type: !207)
!6051 = !DILocation(line: 336, column: 6, scope: !6031)
!6052 = !DILocalVariable(name: "flags", scope: !6031, file: !3, line: 337, type: !216)
!6053 = !DILocation(line: 337, column: 16, scope: !6031)
!6054 = !DILocation(line: 339, column: 45, scope: !6031)
!6055 = !DILocation(line: 339, column: 11, scope: !6031)
!6056 = !DILocation(line: 339, column: 9, scope: !6031)
!6057 = !DILocation(line: 340, column: 6, scope: !6058)
!6058 = distinct !DILexicalBlock(scope: !6031, file: !3, line: 340, column: 6)
!6059 = !DILocation(line: 340, column: 6, scope: !6031)
!6060 = !DILocation(line: 341, column: 10, scope: !6058)
!6061 = !DILocation(line: 341, column: 3, scope: !6058)
!6062 = !DILocation(line: 344, column: 25, scope: !6031)
!6063 = !DILocation(line: 344, column: 28, scope: !6031)
!6064 = !DILocation(line: 344, column: 31, scope: !6031)
!6065 = !DILocation(line: 344, column: 38, scope: !6031)
!6066 = !DILocation(line: 344, column: 2, scope: !6031)
!6067 = !DILocation(line: 346, column: 2, scope: !6031)
!6068 = !DILocation(line: 346, column: 2, scope: !6041)
!6069 = !DILocalVariable(name: "__dummy", scope: !6070, file: !3, line: 346, type: !216)
!6070 = distinct !DILexicalBlock(scope: !6040, file: !3, line: 346, column: 2)
!6071 = !DILocation(line: 346, column: 2, scope: !6070)
!6072 = !DILocalVariable(name: "__dummy2", scope: !6070, file: !3, line: 346, type: !216)
!6073 = !DILocation(line: 346, column: 2, scope: !6040)
!6074 = !DILocation(line: 346, column: 2, scope: !6039)
!6075 = !DILocation(line: 346, column: 2, scope: !6076)
!6076 = distinct !DILexicalBlock(scope: !6039, file: !3, line: 346, column: 2)
!6077 = !DILocalVariable(name: "__dummy", scope: !6078, file: !3, line: 346, type: !216)
!6078 = distinct !DILexicalBlock(scope: !6079, file: !3, line: 346, column: 2)
!6079 = distinct !DILexicalBlock(scope: !6076, file: !3, line: 346, column: 2)
!6080 = !DILocation(line: 346, column: 2, scope: !6078)
!6081 = !DILocalVariable(name: "__dummy2", scope: !6078, file: !3, line: 346, type: !216)
!6082 = !DILocation(line: 346, column: 2, scope: !6079)
!6083 = !DILocation(line: 346, column: 2, scope: !6038)
!6084 = !{i32 -2141610053}
!6085 = !DILocation(line: 346, column: 2, scope: !6037)
!6086 = !DILocation(line: 329, column: 10, scope: !4486, inlinedAt: !6036)
!6087 = !DILocation(line: 329, column: 16, scope: !4486, inlinedAt: !6036)
!6088 = !DILocation(line: 347, column: 6, scope: !6089)
!6089 = distinct !DILexicalBlock(scope: !6031, file: !3, line: 347, column: 6)
!6090 = !DILocation(line: 347, column: 15, scope: !6089)
!6091 = !DILocation(line: 347, column: 6, scope: !6031)
!6092 = !DILocation(line: 348, column: 17, scope: !6093)
!6093 = distinct !DILexicalBlock(scope: !6089, file: !3, line: 347, column: 29)
!6094 = !DILocation(line: 348, column: 26, scope: !6093)
!6095 = !DILocation(line: 348, column: 3, scope: !6093)
!6096 = !DILocation(line: 349, column: 16, scope: !6093)
!6097 = !DILocation(line: 349, column: 25, scope: !6093)
!6098 = !DILocation(line: 349, column: 3, scope: !6093)
!6099 = !DILocation(line: 350, column: 2, scope: !6093)
!6100 = !DILocation(line: 351, column: 10, scope: !6101)
!6101 = distinct !DILexicalBlock(scope: !6089, file: !3, line: 350, column: 9)
!6102 = !DILocation(line: 353, column: 26, scope: !6031)
!6103 = !DILocation(line: 353, column: 35, scope: !6031)
!6104 = !DILocation(line: 353, column: 54, scope: !6031)
!6105 = !DILocation(line: 409, column: 2, scope: !5352, inlinedAt: !6033)
!6106 = !DILocation(line: 409, column: 2, scope: !5357, inlinedAt: !6033)
!6107 = !DILocation(line: 409, column: 2, scope: !5358, inlinedAt: !6033)
!6108 = !DILocation(line: 409, column: 2, scope: !5365, inlinedAt: !6033)
!6109 = !DILocation(line: 409, column: 2, scope: !5368, inlinedAt: !6033)
!6110 = !DILocation(line: 355, column: 9, scope: !6031)
!6111 = !DILocation(line: 355, column: 2, scope: !6031)
!6112 = !DILocation(line: 356, column: 1, scope: !6031)
!6113 = distinct !DISubprogram(name: "ni_pcidio_inttrig", scope: !3, file: !3, line: 602, type: !3971, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!6114 = !DILocalVariable(name: "dev", arg: 1, scope: !6113, file: !3, line: 602, type: !3134)
!6115 = !DILocation(line: 602, column: 52, scope: !6113)
!6116 = !DILocalVariable(name: "s", arg: 2, scope: !6113, file: !3, line: 603, type: !3903)
!6117 = !DILocation(line: 603, column: 34, scope: !6113)
!6118 = !DILocalVariable(name: "trig_num", arg: 3, scope: !6113, file: !3, line: 604, type: !7)
!6119 = !DILocation(line: 604, column: 22, scope: !6113)
!6120 = !DILocalVariable(name: "devpriv", scope: !6113, file: !3, line: 606, type: !4399)
!6121 = !DILocation(line: 606, column: 26, scope: !6113)
!6122 = !DILocation(line: 606, column: 36, scope: !6113)
!6123 = !DILocation(line: 606, column: 41, scope: !6113)
!6124 = !DILocalVariable(name: "cmd", scope: !6113, file: !3, line: 607, type: !4023)
!6125 = !DILocation(line: 607, column: 21, scope: !6113)
!6126 = !DILocation(line: 607, column: 28, scope: !6113)
!6127 = !DILocation(line: 607, column: 31, scope: !6113)
!6128 = !DILocation(line: 607, column: 38, scope: !6113)
!6129 = !DILocation(line: 609, column: 6, scope: !6130)
!6130 = distinct !DILexicalBlock(scope: !6113, file: !3, line: 609, column: 6)
!6131 = !DILocation(line: 609, column: 18, scope: !6130)
!6132 = !DILocation(line: 609, column: 23, scope: !6130)
!6133 = !DILocation(line: 609, column: 15, scope: !6130)
!6134 = !DILocation(line: 609, column: 6, scope: !6113)
!6135 = !DILocation(line: 610, column: 3, scope: !6130)
!6136 = !DILocation(line: 612, column: 9, scope: !6113)
!6137 = !DILocation(line: 612, column: 18, scope: !6113)
!6138 = !DILocation(line: 612, column: 31, scope: !6113)
!6139 = !DILocation(line: 612, column: 36, scope: !6113)
!6140 = !DILocation(line: 612, column: 41, scope: !6113)
!6141 = !DILocation(line: 612, column: 2, scope: !6113)
!6142 = !DILocation(line: 613, column: 2, scope: !6113)
!6143 = !DILocation(line: 613, column: 5, scope: !6113)
!6144 = !DILocation(line: 613, column: 12, scope: !6113)
!6145 = !DILocation(line: 613, column: 20, scope: !6113)
!6146 = !DILocation(line: 615, column: 2, scope: !6113)
!6147 = !DILocation(line: 616, column: 1, scope: !6113)
!6148 = distinct !DISubprogram(name: "ni_pcidio_request_di_mite_channel", scope: !3, file: !3, line: 294, type: !4045, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!6149 = !DILocation(line: 407, column: 64, scope: !5276, inlinedAt: !6150)
!6150 = distinct !DILocation(line: 305, column: 3, scope: !6151)
!6151 = distinct !DILexicalBlock(scope: !6152, file: !3, line: 304, column: 30)
!6152 = distinct !DILexicalBlock(scope: !6148, file: !3, line: 304, column: 6)
!6153 = !DILocation(line: 407, column: 84, scope: !5276, inlinedAt: !6150)
!6154 = !DILocation(line: 407, column: 64, scope: !5276, inlinedAt: !6155)
!6155 = distinct !DILocation(line: 313, column: 2, scope: !6148)
!6156 = !DILocation(line: 407, column: 84, scope: !5276, inlinedAt: !6155)
!6157 = !DILocation(line: 327, column: 67, scope: !4486, inlinedAt: !6158)
!6158 = distinct !DILocation(line: 299, column: 2, scope: !6159)
!6159 = distinct !DILexicalBlock(scope: !6160, file: !3, line: 299, column: 2)
!6160 = distinct !DILexicalBlock(scope: !6161, file: !3, line: 299, column: 2)
!6161 = distinct !DILexicalBlock(scope: !6162, file: !3, line: 299, column: 2)
!6162 = distinct !DILexicalBlock(scope: !6163, file: !3, line: 299, column: 2)
!6163 = distinct !DILexicalBlock(scope: !6148, file: !3, line: 299, column: 2)
!6164 = !DILocalVariable(name: "dev", arg: 1, scope: !6148, file: !3, line: 294, type: !3134)
!6165 = !DILocation(line: 294, column: 68, scope: !6148)
!6166 = !DILocalVariable(name: "devpriv", scope: !6148, file: !3, line: 296, type: !4399)
!6167 = !DILocation(line: 296, column: 26, scope: !6148)
!6168 = !DILocation(line: 296, column: 36, scope: !6148)
!6169 = !DILocation(line: 296, column: 41, scope: !6148)
!6170 = !DILocalVariable(name: "flags", scope: !6148, file: !3, line: 297, type: !216)
!6171 = !DILocation(line: 297, column: 16, scope: !6148)
!6172 = !DILocation(line: 299, column: 2, scope: !6148)
!6173 = !DILocation(line: 299, column: 2, scope: !6163)
!6174 = !DILocalVariable(name: "__dummy", scope: !6175, file: !3, line: 299, type: !216)
!6175 = distinct !DILexicalBlock(scope: !6162, file: !3, line: 299, column: 2)
!6176 = !DILocation(line: 299, column: 2, scope: !6175)
!6177 = !DILocalVariable(name: "__dummy2", scope: !6175, file: !3, line: 299, type: !216)
!6178 = !DILocation(line: 299, column: 2, scope: !6162)
!6179 = !DILocation(line: 299, column: 2, scope: !6161)
!6180 = !DILocation(line: 299, column: 2, scope: !6181)
!6181 = distinct !DILexicalBlock(scope: !6161, file: !3, line: 299, column: 2)
!6182 = !DILocalVariable(name: "__dummy", scope: !6183, file: !3, line: 299, type: !216)
!6183 = distinct !DILexicalBlock(scope: !6184, file: !3, line: 299, column: 2)
!6184 = distinct !DILexicalBlock(scope: !6181, file: !3, line: 299, column: 2)
!6185 = !DILocation(line: 299, column: 2, scope: !6183)
!6186 = !DILocalVariable(name: "__dummy2", scope: !6183, file: !3, line: 299, type: !216)
!6187 = !DILocation(line: 299, column: 2, scope: !6184)
!6188 = !DILocation(line: 299, column: 2, scope: !6160)
!6189 = !{i32 -2141613729}
!6190 = !DILocation(line: 299, column: 2, scope: !6159)
!6191 = !DILocation(line: 329, column: 10, scope: !4486, inlinedAt: !6158)
!6192 = !DILocation(line: 329, column: 16, scope: !4486, inlinedAt: !6158)
!6193 = !DILocation(line: 300, column: 2, scope: !6148)
!6194 = !DILocation(line: 300, column: 2, scope: !6195)
!6195 = distinct !DILexicalBlock(scope: !6196, file: !3, line: 300, column: 2)
!6196 = distinct !DILexicalBlock(scope: !6148, file: !3, line: 300, column: 2)
!6197 = !DILocation(line: 300, column: 2, scope: !6196)
!6198 = !DILocation(line: 300, column: 2, scope: !6199)
!6199 = distinct !DILexicalBlock(scope: !6195, file: !3, line: 300, column: 2)
!6200 = !DILocation(line: 300, column: 2, scope: !6201)
!6201 = distinct !DILexicalBlock(scope: !6199, file: !3, line: 300, column: 2)
!6202 = !DILocation(line: 300, column: 2, scope: !6203)
!6203 = distinct !DILexicalBlock(scope: !6199, file: !3, line: 300, column: 2)
!6204 = !{i32 -2141613277, i32 -2141613248, i32 -2141613202, i32 -2141613144, i32 -2141613090, i32 -2141613036, i32 -2141612981, i32 -2141612950}
!6205 = !DILocation(line: 300, column: 2, scope: !6206)
!6206 = distinct !DILexicalBlock(scope: !6207, file: !3, line: 300, column: 2)
!6207 = distinct !DILexicalBlock(scope: !6199, file: !3, line: 300, column: 2)
!6208 = !{i32 -2141612485, i32 -2141612478, i32 -2141612424, i32 -2141612393, i32 -2141612363}
!6209 = !DILocation(line: 300, column: 2, scope: !6207)
!6210 = !DILocation(line: 302, column: 36, scope: !6148)
!6211 = !DILocation(line: 302, column: 45, scope: !6148)
!6212 = !DILocation(line: 303, column: 8, scope: !6148)
!6213 = !DILocation(line: 303, column: 17, scope: !6148)
!6214 = !DILocation(line: 302, column: 6, scope: !6148)
!6215 = !DILocation(line: 301, column: 2, scope: !6148)
!6216 = !DILocation(line: 301, column: 11, scope: !6148)
!6217 = !DILocation(line: 301, column: 24, scope: !6148)
!6218 = !DILocation(line: 304, column: 7, scope: !6152)
!6219 = !DILocation(line: 304, column: 16, scope: !6152)
!6220 = !DILocation(line: 304, column: 6, scope: !6148)
!6221 = !DILocation(line: 305, column: 27, scope: !6151)
!6222 = !DILocation(line: 305, column: 36, scope: !6151)
!6223 = !DILocation(line: 305, column: 55, scope: !6151)
!6224 = !DILocation(line: 409, column: 2, scope: !5352, inlinedAt: !6150)
!6225 = !DILocation(line: 409, column: 2, scope: !5357, inlinedAt: !6150)
!6226 = !DILocation(line: 409, column: 2, scope: !5358, inlinedAt: !6150)
!6227 = !DILocation(line: 409, column: 2, scope: !5365, inlinedAt: !6150)
!6228 = !DILocation(line: 409, column: 2, scope: !5368, inlinedAt: !6150)
!6229 = !DILocation(line: 306, column: 3, scope: !6151)
!6230 = !DILocation(line: 307, column: 3, scope: !6151)
!6231 = !DILocation(line: 309, column: 2, scope: !6148)
!6232 = !DILocation(line: 309, column: 11, scope: !6148)
!6233 = !DILocation(line: 309, column: 25, scope: !6148)
!6234 = !DILocation(line: 309, column: 29, scope: !6148)
!6235 = !DILocation(line: 310, column: 33, scope: !6148)
!6236 = !DILocation(line: 310, column: 42, scope: !6148)
!6237 = !DILocation(line: 310, column: 56, scope: !6148)
!6238 = !DILocation(line: 310, column: 9, scope: !6148)
!6239 = !DILocation(line: 311, column: 35, scope: !6148)
!6240 = !DILocation(line: 311, column: 44, scope: !6148)
!6241 = !DILocation(line: 311, column: 58, scope: !6148)
!6242 = !DILocation(line: 311, column: 9, scope: !6148)
!6243 = !DILocation(line: 310, column: 65, scope: !6148)
!6244 = !DILocation(line: 312, column: 9, scope: !6148)
!6245 = !DILocation(line: 312, column: 14, scope: !6148)
!6246 = !DILocation(line: 312, column: 19, scope: !6148)
!6247 = !DILocation(line: 310, column: 2, scope: !6148)
!6248 = !DILocation(line: 313, column: 26, scope: !6148)
!6249 = !DILocation(line: 313, column: 35, scope: !6148)
!6250 = !DILocation(line: 313, column: 54, scope: !6148)
!6251 = !DILocation(line: 409, column: 2, scope: !5352, inlinedAt: !6155)
!6252 = !DILocation(line: 409, column: 2, scope: !5357, inlinedAt: !6155)
!6253 = !DILocation(line: 409, column: 2, scope: !5358, inlinedAt: !6155)
!6254 = !DILocation(line: 409, column: 2, scope: !5365, inlinedAt: !6155)
!6255 = !DILocation(line: 409, column: 2, scope: !5368, inlinedAt: !6155)
!6256 = !DILocation(line: 314, column: 2, scope: !6148)
!6257 = !DILocation(line: 315, column: 1, scope: !6148)
!6258 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !6259, file: !6259, line: 666, type: !6260, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!6259 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!6260 = !DISubroutineType(types: !6261)
!6261 = !{!216}
!6262 = !DILocalVariable(name: "f", scope: !6258, file: !6259, line: 668, type: !216)
!6263 = !DILocation(line: 668, column: 16, scope: !6258)
!6264 = !DILocation(line: 670, column: 6, scope: !6258)
!6265 = !DILocation(line: 670, column: 4, scope: !6258)
!6266 = !DILocation(line: 671, column: 2, scope: !6258)
!6267 = !DILocation(line: 672, column: 9, scope: !6258)
!6268 = !DILocation(line: 672, column: 2, scope: !6258)
!6269 = distinct !DISubprogram(name: "primary_DMAChannel_bits", scope: !3, file: !3, line: 164, type: !6270, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!6270 = !DISubroutineType(types: !6271)
!6271 = !{!7, !7}
!6272 = !DILocalVariable(name: "channel", arg: 1, scope: !6269, file: !3, line: 164, type: !7)
!6273 = !DILocation(line: 164, column: 65, scope: !6269)
!6274 = !DILocation(line: 166, column: 9, scope: !6269)
!6275 = !DILocation(line: 166, column: 17, scope: !6269)
!6276 = !DILocation(line: 166, column: 2, scope: !6269)
!6277 = distinct !DISubprogram(name: "secondary_DMAChannel_bits", scope: !3, file: !3, line: 169, type: !6270, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!6278 = !DILocalVariable(name: "channel", arg: 1, scope: !6277, file: !3, line: 169, type: !7)
!6279 = !DILocation(line: 169, column: 67, scope: !6277)
!6280 = !DILocation(line: 171, column: 10, scope: !6277)
!6281 = !DILocation(line: 171, column: 18, scope: !6277)
!6282 = !DILocation(line: 171, column: 24, scope: !6277)
!6283 = !DILocation(line: 171, column: 2, scope: !6277)
!6284 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !6259, file: !6259, line: 646, type: !6260, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!6285 = !DILocalVariable(name: "__ret", scope: !6286, file: !6259, line: 648, type: !216)
!6286 = distinct !DILexicalBlock(scope: !6284, file: !6259, line: 648, column: 9)
!6287 = !DILocation(line: 648, column: 9, scope: !6286)
!6288 = !DILocalVariable(name: "__edi", scope: !6286, file: !6259, line: 648, type: !216)
!6289 = !DILocalVariable(name: "__esi", scope: !6286, file: !6259, line: 648, type: !216)
!6290 = !DILocalVariable(name: "__edx", scope: !6286, file: !6259, line: 648, type: !216)
!6291 = !DILocalVariable(name: "__ecx", scope: !6286, file: !6259, line: 648, type: !216)
!6292 = !DILocalVariable(name: "__eax", scope: !6286, file: !6259, line: 648, type: !216)
!6293 = !DILocation(line: 648, column: 9, scope: !6294)
!6294 = distinct !DILexicalBlock(scope: !6295, file: !6259, line: 648, column: 9)
!6295 = distinct !DILexicalBlock(scope: !6286, file: !6259, line: 648, column: 9)
!6296 = !{i32 -2145764707, i32 -2145762392, i32 -2145762158, i32 -2145762107, i32 -2145762079, i32 -2145762054, i32 -2145762370, i32 -2145762357, i32 -2145761919, i32 -2145761800, i32 -2145762265, i32 -2145762238, i32 -2145762210, i32 -2145762180}
!6297 = !DILocalVariable(name: "__mask", scope: !6298, file: !6259, line: 648, type: !216)
!6298 = distinct !DILexicalBlock(scope: !6294, file: !6259, line: 648, column: 9)
!6299 = !DILocation(line: 648, column: 9, scope: !6298)
!6300 = !DILocation(line: 648, column: 9, scope: !6295)
!6301 = !DILocation(line: 648, column: 2, scope: !6284)
!6302 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !6259, file: !6259, line: 656, type: !2668, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!6303 = !DILocalVariable(name: "__edi", scope: !6304, file: !6259, line: 658, type: !216)
!6304 = distinct !DILexicalBlock(scope: !6302, file: !6259, line: 658, column: 2)
!6305 = !DILocation(line: 658, column: 2, scope: !6304)
!6306 = !DILocalVariable(name: "__esi", scope: !6304, file: !6259, line: 658, type: !216)
!6307 = !DILocalVariable(name: "__edx", scope: !6304, file: !6259, line: 658, type: !216)
!6308 = !DILocalVariable(name: "__ecx", scope: !6304, file: !6259, line: 658, type: !216)
!6309 = !DILocalVariable(name: "__eax", scope: !6304, file: !6259, line: 658, type: !216)
!6310 = !{i32 -2145757613, i32 -2145756881, i32 -2145756647, i32 -2145756596, i32 -2145756568, i32 -2145756543, i32 -2145756859, i32 -2145756846, i32 -2145756408, i32 -2145756289, i32 -2145756754, i32 -2145756727, i32 -2145756699, i32 -2145756669}
!6311 = !DILocation(line: 659, column: 1, scope: !6302)
!6312 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !6259, file: !6259, line: 651, type: !6313, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!6313 = !DISubroutineType(types: !6314)
!6314 = !{null, !216}
!6315 = !DILocalVariable(name: "f", arg: 1, scope: !6312, file: !6259, line: 651, type: !216)
!6316 = !DILocation(line: 651, column: 65, scope: !6312)
!6317 = !DILocalVariable(name: "__edi", scope: !6318, file: !6259, line: 653, type: !216)
!6318 = distinct !DILexicalBlock(scope: !6312, file: !6259, line: 653, column: 2)
!6319 = !DILocation(line: 653, column: 2, scope: !6318)
!6320 = !DILocalVariable(name: "__esi", scope: !6318, file: !6259, line: 653, type: !216)
!6321 = !DILocalVariable(name: "__edx", scope: !6318, file: !6259, line: 653, type: !216)
!6322 = !DILocalVariable(name: "__ecx", scope: !6318, file: !6259, line: 653, type: !216)
!6323 = !DILocalVariable(name: "__eax", scope: !6318, file: !6259, line: 653, type: !216)
!6324 = !{i32 -2145760240, i32 -2145759490, i32 -2145759256, i32 -2145759205, i32 -2145759177, i32 -2145759152, i32 -2145759468, i32 -2145759455, i32 -2145759017, i32 -2145758898, i32 -2145759363, i32 -2145759336, i32 -2145759308, i32 -2145759278}
!6325 = !DILocation(line: 654, column: 1, scope: !6312)
!6326 = distinct !DISubprogram(name: "comedi_check_trigger_src", scope: !196, file: !196, line: 859, type: !6327, scopeLine: 861, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!6327 = !DISubroutineType(types: !6328)
!6328 = !{!207, !1136, !7}
!6329 = !DILocalVariable(name: "src", arg: 1, scope: !6326, file: !196, line: 859, type: !1136)
!6330 = !DILocation(line: 859, column: 58, scope: !6326)
!6331 = !DILocalVariable(name: "flags", arg: 2, scope: !6326, file: !196, line: 860, type: !7)
!6332 = !DILocation(line: 860, column: 22, scope: !6326)
!6333 = !DILocalVariable(name: "orig_src", scope: !6326, file: !196, line: 862, type: !7)
!6334 = !DILocation(line: 862, column: 15, scope: !6326)
!6335 = !DILocation(line: 862, column: 27, scope: !6326)
!6336 = !DILocation(line: 862, column: 26, scope: !6326)
!6337 = !DILocation(line: 864, column: 9, scope: !6326)
!6338 = !DILocation(line: 864, column: 20, scope: !6326)
!6339 = !DILocation(line: 864, column: 18, scope: !6326)
!6340 = !DILocation(line: 864, column: 3, scope: !6326)
!6341 = !DILocation(line: 864, column: 7, scope: !6326)
!6342 = !DILocation(line: 865, column: 7, scope: !6343)
!6343 = distinct !DILexicalBlock(scope: !6326, file: !196, line: 865, column: 6)
!6344 = !DILocation(line: 865, column: 6, scope: !6343)
!6345 = !DILocation(line: 865, column: 11, scope: !6343)
!6346 = !DILocation(line: 865, column: 27, scope: !6343)
!6347 = !DILocation(line: 865, column: 31, scope: !6343)
!6348 = !DILocation(line: 865, column: 30, scope: !6343)
!6349 = !DILocation(line: 865, column: 38, scope: !6343)
!6350 = !DILocation(line: 865, column: 35, scope: !6343)
!6351 = !DILocation(line: 865, column: 6, scope: !6326)
!6352 = !DILocation(line: 866, column: 3, scope: !6343)
!6353 = !DILocation(line: 867, column: 2, scope: !6326)
!6354 = !DILocation(line: 868, column: 1, scope: !6326)
!6355 = distinct !DISubprogram(name: "comedi_check_trigger_is_unique", scope: !196, file: !196, line: 878, type: !6356, scopeLine: 879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!6356 = !DISubroutineType(types: !6357)
!6357 = !{!207, !7}
!6358 = !DILocalVariable(name: "src", arg: 1, scope: !6355, file: !196, line: 878, type: !7)
!6359 = !DILocation(line: 878, column: 63, scope: !6355)
!6360 = !DILocation(line: 881, column: 7, scope: !6361)
!6361 = distinct !DILexicalBlock(scope: !6355, file: !196, line: 881, column: 6)
!6362 = !DILocation(line: 881, column: 14, scope: !6361)
!6363 = !DILocation(line: 881, column: 18, scope: !6361)
!6364 = !DILocation(line: 881, column: 11, scope: !6361)
!6365 = !DILocation(line: 881, column: 24, scope: !6361)
!6366 = !DILocation(line: 881, column: 6, scope: !6355)
!6367 = !DILocation(line: 882, column: 3, scope: !6361)
!6368 = !DILocation(line: 883, column: 2, scope: !6355)
!6369 = !DILocation(line: 884, column: 1, scope: !6355)
!6370 = distinct !DISubprogram(name: "comedi_check_trigger_arg_is", scope: !196, file: !196, line: 897, type: !6327, scopeLine: 899, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!6371 = !DILocalVariable(name: "arg", arg: 1, scope: !6370, file: !196, line: 897, type: !1136)
!6372 = !DILocation(line: 897, column: 61, scope: !6370)
!6373 = !DILocalVariable(name: "val", arg: 2, scope: !6370, file: !196, line: 898, type: !7)
!6374 = !DILocation(line: 898, column: 25, scope: !6370)
!6375 = !DILocation(line: 900, column: 7, scope: !6376)
!6376 = distinct !DILexicalBlock(scope: !6370, file: !196, line: 900, column: 6)
!6377 = !DILocation(line: 900, column: 6, scope: !6376)
!6378 = !DILocation(line: 900, column: 14, scope: !6376)
!6379 = !DILocation(line: 900, column: 11, scope: !6376)
!6380 = !DILocation(line: 900, column: 6, scope: !6370)
!6381 = !DILocation(line: 901, column: 10, scope: !6382)
!6382 = distinct !DILexicalBlock(scope: !6376, file: !196, line: 900, column: 19)
!6383 = !DILocation(line: 901, column: 4, scope: !6382)
!6384 = !DILocation(line: 901, column: 8, scope: !6382)
!6385 = !DILocation(line: 902, column: 3, scope: !6382)
!6386 = !DILocation(line: 904, column: 2, scope: !6370)
!6387 = !DILocation(line: 905, column: 1, scope: !6370)
!6388 = distinct !DISubprogram(name: "comedi_check_trigger_arg_min", scope: !196, file: !196, line: 918, type: !6327, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!6389 = !DILocalVariable(name: "arg", arg: 1, scope: !6388, file: !196, line: 918, type: !1136)
!6390 = !DILocation(line: 918, column: 62, scope: !6388)
!6391 = !DILocalVariable(name: "val", arg: 2, scope: !6388, file: !196, line: 919, type: !7)
!6392 = !DILocation(line: 919, column: 26, scope: !6388)
!6393 = !DILocation(line: 921, column: 7, scope: !6394)
!6394 = distinct !DILexicalBlock(scope: !6388, file: !196, line: 921, column: 6)
!6395 = !DILocation(line: 921, column: 6, scope: !6394)
!6396 = !DILocation(line: 921, column: 13, scope: !6394)
!6397 = !DILocation(line: 921, column: 11, scope: !6394)
!6398 = !DILocation(line: 921, column: 6, scope: !6388)
!6399 = !DILocation(line: 922, column: 10, scope: !6400)
!6400 = distinct !DILexicalBlock(scope: !6394, file: !196, line: 921, column: 18)
!6401 = !DILocation(line: 922, column: 4, scope: !6400)
!6402 = !DILocation(line: 922, column: 8, scope: !6400)
!6403 = !DILocation(line: 923, column: 3, scope: !6400)
!6404 = !DILocation(line: 925, column: 2, scope: !6388)
!6405 = !DILocation(line: 926, column: 1, scope: !6388)
!6406 = distinct !DISubprogram(name: "ni_pcidio_release_di_mite_channel", scope: !3, file: !3, line: 317, type: !4049, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!6407 = !DILocation(line: 407, column: 64, scope: !5276, inlinedAt: !6408)
!6408 = distinct !DILocation(line: 330, column: 2, scope: !6406)
!6409 = !DILocation(line: 407, column: 84, scope: !5276, inlinedAt: !6408)
!6410 = !DILocation(line: 327, column: 67, scope: !4486, inlinedAt: !6411)
!6411 = distinct !DILocation(line: 322, column: 2, scope: !6412)
!6412 = distinct !DILexicalBlock(scope: !6413, file: !3, line: 322, column: 2)
!6413 = distinct !DILexicalBlock(scope: !6414, file: !3, line: 322, column: 2)
!6414 = distinct !DILexicalBlock(scope: !6415, file: !3, line: 322, column: 2)
!6415 = distinct !DILexicalBlock(scope: !6416, file: !3, line: 322, column: 2)
!6416 = distinct !DILexicalBlock(scope: !6406, file: !3, line: 322, column: 2)
!6417 = !DILocalVariable(name: "dev", arg: 1, scope: !6406, file: !3, line: 317, type: !3134)
!6418 = !DILocation(line: 317, column: 69, scope: !6406)
!6419 = !DILocalVariable(name: "devpriv", scope: !6406, file: !3, line: 319, type: !4399)
!6420 = !DILocation(line: 319, column: 26, scope: !6406)
!6421 = !DILocation(line: 319, column: 36, scope: !6406)
!6422 = !DILocation(line: 319, column: 41, scope: !6406)
!6423 = !DILocalVariable(name: "flags", scope: !6406, file: !3, line: 320, type: !216)
!6424 = !DILocation(line: 320, column: 16, scope: !6406)
!6425 = !DILocation(line: 322, column: 2, scope: !6406)
!6426 = !DILocation(line: 322, column: 2, scope: !6416)
!6427 = !DILocalVariable(name: "__dummy", scope: !6428, file: !3, line: 322, type: !216)
!6428 = distinct !DILexicalBlock(scope: !6415, file: !3, line: 322, column: 2)
!6429 = !DILocation(line: 322, column: 2, scope: !6428)
!6430 = !DILocalVariable(name: "__dummy2", scope: !6428, file: !3, line: 322, type: !216)
!6431 = !DILocation(line: 322, column: 2, scope: !6415)
!6432 = !DILocation(line: 322, column: 2, scope: !6414)
!6433 = !DILocation(line: 322, column: 2, scope: !6434)
!6434 = distinct !DILexicalBlock(scope: !6414, file: !3, line: 322, column: 2)
!6435 = !DILocalVariable(name: "__dummy", scope: !6436, file: !3, line: 322, type: !216)
!6436 = distinct !DILexicalBlock(scope: !6437, file: !3, line: 322, column: 2)
!6437 = distinct !DILexicalBlock(scope: !6434, file: !3, line: 322, column: 2)
!6438 = !DILocation(line: 322, column: 2, scope: !6436)
!6439 = !DILocalVariable(name: "__dummy2", scope: !6436, file: !3, line: 322, type: !216)
!6440 = !DILocation(line: 322, column: 2, scope: !6437)
!6441 = !DILocation(line: 322, column: 2, scope: !6413)
!6442 = !{i32 -2141611206}
!6443 = !DILocation(line: 322, column: 2, scope: !6412)
!6444 = !DILocation(line: 329, column: 10, scope: !4486, inlinedAt: !6411)
!6445 = !DILocation(line: 329, column: 16, scope: !4486, inlinedAt: !6411)
!6446 = !DILocation(line: 323, column: 6, scope: !6447)
!6447 = distinct !DILexicalBlock(scope: !6406, file: !3, line: 323, column: 6)
!6448 = !DILocation(line: 323, column: 15, scope: !6447)
!6449 = !DILocation(line: 323, column: 6, scope: !6406)
!6450 = !DILocation(line: 324, column: 24, scope: !6451)
!6451 = distinct !DILexicalBlock(scope: !6447, file: !3, line: 323, column: 29)
!6452 = !DILocation(line: 324, column: 33, scope: !6451)
!6453 = !DILocation(line: 324, column: 3, scope: !6451)
!6454 = !DILocation(line: 325, column: 3, scope: !6451)
!6455 = !DILocation(line: 325, column: 12, scope: !6451)
!6456 = !DILocation(line: 325, column: 25, scope: !6451)
!6457 = !DILocation(line: 326, column: 10, scope: !6451)
!6458 = !DILocation(line: 327, column: 10, scope: !6451)
!6459 = !DILocation(line: 326, column: 37, scope: !6451)
!6460 = !DILocation(line: 328, column: 10, scope: !6451)
!6461 = !DILocation(line: 328, column: 15, scope: !6451)
!6462 = !DILocation(line: 328, column: 20, scope: !6451)
!6463 = !DILocation(line: 326, column: 3, scope: !6451)
!6464 = !DILocation(line: 329, column: 2, scope: !6451)
!6465 = !DILocation(line: 330, column: 26, scope: !6406)
!6466 = !DILocation(line: 330, column: 35, scope: !6406)
!6467 = !DILocation(line: 330, column: 54, scope: !6406)
!6468 = !DILocation(line: 409, column: 2, scope: !5352, inlinedAt: !6408)
!6469 = !DILocation(line: 409, column: 2, scope: !5357, inlinedAt: !6408)
!6470 = !DILocation(line: 409, column: 2, scope: !5358, inlinedAt: !6408)
!6471 = !DILocation(line: 409, column: 2, scope: !5365, inlinedAt: !6408)
!6472 = !DILocation(line: 409, column: 2, scope: !5368, inlinedAt: !6408)
!6473 = !DILocation(line: 331, column: 1, scope: !6406)
!6474 = distinct !DISubprogram(name: "comedi_buf_n_bytes_ready", scope: !196, file: !196, line: 967, type: !6475, scopeLine: 968, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!6475 = !DISubroutineType(types: !6476)
!6476 = !{!7, !3903}
!6477 = !DILocalVariable(name: "s", arg: 1, scope: !6474, file: !196, line: 967, type: !3903)
!6478 = !DILocation(line: 967, column: 78, scope: !6474)
!6479 = !DILocation(line: 969, column: 9, scope: !6474)
!6480 = !DILocation(line: 969, column: 12, scope: !6474)
!6481 = !DILocation(line: 969, column: 19, scope: !6474)
!6482 = !DILocation(line: 969, column: 37, scope: !6474)
!6483 = !DILocation(line: 969, column: 40, scope: !6474)
!6484 = !DILocation(line: 969, column: 47, scope: !6474)
!6485 = !DILocation(line: 969, column: 35, scope: !6474)
!6486 = !DILocation(line: 969, column: 2, scope: !6474)
!6487 = distinct !DISubprogram(name: "ni_pcidio_pci_probe", scope: !3, file: !3, line: 986, type: !4118, scopeLine: 988, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!6488 = !DILocalVariable(name: "dev", arg: 1, scope: !6487, file: !3, line: 986, type: !4120)
!6489 = !DILocation(line: 986, column: 48, scope: !6487)
!6490 = !DILocalVariable(name: "id", arg: 2, scope: !6487, file: !3, line: 987, type: !4105)
!6491 = !DILocation(line: 987, column: 39, scope: !6487)
!6492 = !DILocation(line: 989, column: 32, scope: !6487)
!6493 = !DILocation(line: 989, column: 56, scope: !6487)
!6494 = !DILocation(line: 989, column: 60, scope: !6487)
!6495 = !DILocation(line: 989, column: 9, scope: !6487)
!6496 = !DILocation(line: 989, column: 2, scope: !6487)
