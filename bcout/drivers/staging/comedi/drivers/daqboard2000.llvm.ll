; ModuleID = '../bcout/drivers/staging/comedi/drivers/daqboard2000.llvm.bc'
source_filename = "drivers/staging/comedi/drivers/daqboard2000.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_db2k_driver_init6:\09\09\09"
module asm ".long\09db2k_driver_init - .\09\09\09"
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
%struct.db2k_boardtype = type { i8*, i8 }
%struct.db2k_private = type { i8* }

@__UNIQUE_ID___addressable_db2k_driver_init234 = internal global i8* bitcast (i32 ()* @db2k_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@db2k_driver = internal global %struct.comedi_driver { %struct.comedi_driver* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), %struct.module* null, i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* null, void (%struct.comedi_device*)* @db2k_detach, i32 (%struct.comedi_device*, i64)* @db2k_auto_attach, i32 0, i8** null, i32 0 }, align 8, !dbg !158
@db2k_pci_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), %struct.pci_device_id* getelementptr inbounds ([3 x %struct.pci_device_id], [3 x %struct.pci_device_id]* @db2k_pci_table, i32 0, i32 0), i32 (%struct.pci_dev*, %struct.pci_device_id*)* @db2k_pci_probe, void (%struct.pci_dev*)* @comedi_pci_auto_unconfig, i32 (%struct.pci_dev*, i32)* null, i32 (%struct.pci_dev*)* null, void (%struct.pci_dev*)* null, i32 (%struct.pci_dev*, i32)* null, %struct.pci_error_handlers* null, %struct.attribute_group** null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, align 8, !dbg !3990
@__exitcall_db2k_driver_exit = internal global void ()* @db2k_driver_exit, section ".exitcall.exit", align 8, !dbg !124
@__UNIQUE_ID_author235 = internal constant [50 x i8] c"daqboard2000.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1, !dbg !131
@__UNIQUE_ID_description236 = internal constant [49 x i8] c"daqboard2000.description=Comedi low-level driver\00", section ".modinfo", align 1, !dbg !138
@__UNIQUE_ID_file237 = internal constant [62 x i8] c"daqboard2000.file=drivers/staging/comedi/drivers/daqboard2000\00", section ".modinfo", align 1, !dbg !143
@__UNIQUE_ID_license238 = internal constant [25 x i8] c"daqboard2000.license=GPL\00", section ".modinfo", align 1, !dbg !148
@__UNIQUE_ID_firmware239 = internal constant [48 x i8] c"daqboard2000.firmware=daqboard2000_firmware.bin\00", section ".modinfo", align 1, !dbg !153
@.str = private unnamed_addr constant [13 x i8] c"daqboard2000\00", align 1
@db2k_boardtypes = internal constant [2 x %struct.db2k_boardtype] [%struct.db2k_boardtype { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8 1 }, %struct.db2k_boardtype { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8 0 }], align 16, !dbg !3980
@.str.1 = private unnamed_addr constant [26 x i8] c"daqboard2000_firmware.bin\00", align 1
@range_bipolar10 = external dso_local constant %struct.comedi_lrange, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"daqboard2001\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"bad firmware - no start sequence\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"bad firmware - odd length (%zu = %zu - %zu)\0A\00", align 1
@db2k_ai_range = internal constant { i32, [13 x %struct.comedi_krange] } { i32 13, [13 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }, %struct.comedi_krange { i32 -625000, i32 625000, i32 0 }, %struct.comedi_krange { i32 -312500, i32 312500, i32 0 }, %struct.comedi_krange { i32 -156000, i32 156000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 2500000, i32 0 }, %struct.comedi_krange { i32 0, i32 1250000, i32 0 }, %struct.comedi_krange { i32 0, i32 625000, i32 0 }, %struct.comedi_krange { i32 0, i32 312500, i32 0 }] }, align 4, !dbg !3988
@db2k_pci_table = internal constant [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 5654, i32 1033, i32 5654, i32 2, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 5654, i32 1033, i32 5654, i32 4, i32 0, i32 0, i64 1 }, %struct.pci_device_id zeroinitializer], align 16, !dbg !4269
@llvm.used = appending global [8 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_db2k_driver_init234 to i8*), i8* bitcast (void ()* @db2k_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_db2k_driver_exit to i8*), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__UNIQUE_ID_author235, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__UNIQUE_ID_description236, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__UNIQUE_ID_file237, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__UNIQUE_ID_license238, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__UNIQUE_ID_firmware239, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @db2k_driver_init() #0 section ".init.text" !dbg !4277 {
entry:
  %call = call i32 @comedi_pci_driver_register(%struct.comedi_driver* @db2k_driver, %struct.pci_driver* @db2k_pci_driver) #5, !dbg !4280
  ret i32 %call, !dbg !4280
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @db2k_driver_exit() #0 section ".exit.text" !dbg !4281 {
entry:
  call void @comedi_pci_driver_unregister(%struct.comedi_driver* @db2k_driver, %struct.pci_driver* @db2k_pci_driver) #5, !dbg !4282
  ret void, !dbg !4282
}

; Function Attrs: noredzone
declare dso_local void @comedi_pci_driver_unregister(%struct.comedi_driver*, %struct.pci_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_pci_driver_register(%struct.comedi_driver*, %struct.pci_driver*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @db2k_detach(%struct.comedi_device* %dev) #2 !dbg !4283 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %devpriv = alloca %struct.db2k_private*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4284, metadata !DIExpression()), !dbg !4285
  call void @llvm.dbg.declare(metadata %struct.db2k_private** %devpriv, metadata !4286, metadata !DIExpression()), !dbg !4291
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4292
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !4293
  %1 = load i8*, i8** %private, align 8, !dbg !4293
  %2 = bitcast i8* %1 to %struct.db2k_private*, !dbg !4292
  store %struct.db2k_private* %2, %struct.db2k_private** %devpriv, align 8, !dbg !4291
  %3 = load %struct.db2k_private*, %struct.db2k_private** %devpriv, align 8, !dbg !4294
  %tobool = icmp ne %struct.db2k_private* %3, null, !dbg !4294
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4296

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.db2k_private*, %struct.db2k_private** %devpriv, align 8, !dbg !4297
  %plx = getelementptr inbounds %struct.db2k_private, %struct.db2k_private* %4, i32 0, i32 0, !dbg !4298
  %5 = load i8*, i8** %plx, align 8, !dbg !4298
  %tobool1 = icmp ne i8* %5, null, !dbg !4297
  br i1 %tobool1, label %if.then, label %if.end, !dbg !4299

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.db2k_private*, %struct.db2k_private** %devpriv, align 8, !dbg !4300
  %plx2 = getelementptr inbounds %struct.db2k_private, %struct.db2k_private* %6, i32 0, i32 0, !dbg !4301
  %7 = load i8*, i8** %plx2, align 8, !dbg !4301
  call void @iounmap(i8* %7) #5, !dbg !4302
  br label %if.end, !dbg !4302

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %8 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4303
  call void @comedi_pci_detach(%struct.comedi_device* %8) #5, !dbg !4304
  ret void, !dbg !4305
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @db2k_auto_attach(%struct.comedi_device* %dev, i64 %context) #2 !dbg !4306 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %context.addr = alloca i64, align 8
  %pcidev = alloca %struct.pci_dev*, align 8
  %board = alloca %struct.db2k_boardtype*, align 8
  %devpriv = alloca %struct.db2k_private*, align 8
  %s = alloca %struct.comedi_subdevice*, align 8
  %result = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4307, metadata !DIExpression()), !dbg !4308
  store i64 %context, i64* %context.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %context.addr, metadata !4309, metadata !DIExpression()), !dbg !4310
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pcidev, metadata !4311, metadata !DIExpression()), !dbg !4312
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4313
  %call = call %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device* %0) #5, !dbg !4314
  store %struct.pci_dev* %call, %struct.pci_dev** %pcidev, align 8, !dbg !4312
  call void @llvm.dbg.declare(metadata %struct.db2k_boardtype** %board, metadata !4315, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.declare(metadata %struct.db2k_private** %devpriv, metadata !4318, metadata !DIExpression()), !dbg !4319
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s, metadata !4320, metadata !DIExpression()), !dbg !4321
  call void @llvm.dbg.declare(metadata i32* %result, metadata !4322, metadata !DIExpression()), !dbg !4323
  %1 = load i64, i64* %context.addr, align 8, !dbg !4324
  %cmp = icmp uge i64 %1, 2, !dbg !4326
  br i1 %cmp, label %if.then, label %if.end, !dbg !4327

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !4328
  br label %return, !dbg !4328

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %context.addr, align 8, !dbg !4329
  %arrayidx = getelementptr [2 x %struct.db2k_boardtype], [2 x %struct.db2k_boardtype]* @db2k_boardtypes, i64 0, i64 %2, !dbg !4330
  store %struct.db2k_boardtype* %arrayidx, %struct.db2k_boardtype** %board, align 8, !dbg !4331
  %3 = load %struct.db2k_boardtype*, %struct.db2k_boardtype** %board, align 8, !dbg !4332
  %name = getelementptr inbounds %struct.db2k_boardtype, %struct.db2k_boardtype* %3, i32 0, i32 0, !dbg !4334
  %4 = load i8*, i8** %name, align 8, !dbg !4334
  %tobool = icmp ne i8* %4, null, !dbg !4332
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !4335

if.then1:                                         ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !4336
  br label %return, !dbg !4336

if.end2:                                          ; preds = %if.end
  %5 = load %struct.db2k_boardtype*, %struct.db2k_boardtype** %board, align 8, !dbg !4337
  %6 = bitcast %struct.db2k_boardtype* %5 to i8*, !dbg !4337
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4338
  %board_ptr = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 9, !dbg !4339
  store i8* %6, i8** %board_ptr, align 8, !dbg !4340
  %8 = load %struct.db2k_boardtype*, %struct.db2k_boardtype** %board, align 8, !dbg !4341
  %name3 = getelementptr inbounds %struct.db2k_boardtype, %struct.db2k_boardtype* %8, i32 0, i32 0, !dbg !4342
  %9 = load i8*, i8** %name3, align 8, !dbg !4342
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4343
  %board_name = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 8, !dbg !4344
  store i8* %9, i8** %board_name, align 8, !dbg !4345
  %11 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4346
  %call4 = call i8* @comedi_alloc_devpriv(%struct.comedi_device* %11, i64 8) #5, !dbg !4347
  %12 = bitcast i8* %call4 to %struct.db2k_private*, !dbg !4347
  store %struct.db2k_private* %12, %struct.db2k_private** %devpriv, align 8, !dbg !4348
  %13 = load %struct.db2k_private*, %struct.db2k_private** %devpriv, align 8, !dbg !4349
  %tobool5 = icmp ne %struct.db2k_private* %13, null, !dbg !4349
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !4351

if.then6:                                         ; preds = %if.end2
  store i32 -12, i32* %retval, align 4, !dbg !4352
  br label %return, !dbg !4352

if.end7:                                          ; preds = %if.end2
  %14 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4353
  %call8 = call i32 @comedi_pci_enable(%struct.comedi_device* %14) #5, !dbg !4354
  store i32 %call8, i32* %result, align 4, !dbg !4355
  %15 = load i32, i32* %result, align 4, !dbg !4356
  %tobool9 = icmp ne i32 %15, 0, !dbg !4356
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !4358

if.then10:                                        ; preds = %if.end7
  %16 = load i32, i32* %result, align 4, !dbg !4359
  store i32 %16, i32* %retval, align 4, !dbg !4360
  br label %return, !dbg !4360

if.end11:                                         ; preds = %if.end7
  %17 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4361
  %call12 = call i8* @pci_ioremap_bar(%struct.pci_dev* %17, i32 0) #5, !dbg !4362
  %18 = load %struct.db2k_private*, %struct.db2k_private** %devpriv, align 8, !dbg !4363
  %plx = getelementptr inbounds %struct.db2k_private, %struct.db2k_private* %18, i32 0, i32 0, !dbg !4364
  store i8* %call12, i8** %plx, align 8, !dbg !4365
  %19 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4366
  %call13 = call i8* @pci_ioremap_bar(%struct.pci_dev* %19, i32 2) #5, !dbg !4367
  %20 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4368
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 17, !dbg !4369
  store i8* %call13, i8** %mmio, align 8, !dbg !4370
  %21 = load %struct.db2k_private*, %struct.db2k_private** %devpriv, align 8, !dbg !4371
  %plx14 = getelementptr inbounds %struct.db2k_private, %struct.db2k_private* %21, i32 0, i32 0, !dbg !4373
  %22 = load i8*, i8** %plx14, align 8, !dbg !4373
  %tobool15 = icmp ne i8* %22, null, !dbg !4371
  br i1 %tobool15, label %lor.lhs.false, label %if.then18, !dbg !4374

lor.lhs.false:                                    ; preds = %if.end11
  %23 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4375
  %mmio16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %23, i32 0, i32 17, !dbg !4376
  %24 = load i8*, i8** %mmio16, align 8, !dbg !4376
  %tobool17 = icmp ne i8* %24, null, !dbg !4375
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !4377

if.then18:                                        ; preds = %lor.lhs.false, %if.end11
  store i32 -12, i32* %retval, align 4, !dbg !4378
  br label %return, !dbg !4378

if.end19:                                         ; preds = %lor.lhs.false
  %25 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4379
  %call20 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %25, i32 3) #5, !dbg !4380
  store i32 %call20, i32* %result, align 4, !dbg !4381
  %26 = load i32, i32* %result, align 4, !dbg !4382
  %tobool21 = icmp ne i32 %26, 0, !dbg !4382
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !4384

if.then22:                                        ; preds = %if.end19
  %27 = load i32, i32* %result, align 4, !dbg !4385
  store i32 %27, i32* %retval, align 4, !dbg !4386
  br label %return, !dbg !4386

if.end23:                                         ; preds = %if.end19
  %28 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4387
  %29 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4388
  %call24 = call %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device* %29) #5, !dbg !4389
  %dev25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %call24, i32 0, i32 41, !dbg !4390
  %call26 = call i32 @comedi_load_firmware(%struct.comedi_device* %28, %struct.device* %dev25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 (%struct.comedi_device*, i8*, i64, i64)* @db2k_load_firmware, i64 0) #5, !dbg !4391
  store i32 %call26, i32* %result, align 4, !dbg !4392
  %30 = load i32, i32* %result, align 4, !dbg !4393
  %cmp27 = icmp slt i32 %30, 0, !dbg !4395
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !4396

if.then28:                                        ; preds = %if.end23
  %31 = load i32, i32* %result, align 4, !dbg !4397
  store i32 %31, i32* %retval, align 4, !dbg !4398
  br label %return, !dbg !4398

if.end29:                                         ; preds = %if.end23
  %32 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4399
  call void @db2k_initialize_adc(%struct.comedi_device* %32) #5, !dbg !4400
  %33 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4401
  call void @db2k_dac_disarm(%struct.comedi_device* %33) #5, !dbg !4402
  %34 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4403
  %subdevices = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %34, i32 0, i32 16, !dbg !4404
  %35 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices, align 8, !dbg !4404
  %arrayidx30 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %35, i64 0, !dbg !4403
  store %struct.comedi_subdevice* %arrayidx30, %struct.comedi_subdevice** %s, align 8, !dbg !4405
  %36 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4406
  %type = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %36, i32 0, i32 2, !dbg !4407
  store i32 1, i32* %type, align 4, !dbg !4408
  %37 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4409
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %37, i32 0, i32 4, !dbg !4410
  store i32 1114112, i32* %subdev_flags, align 4, !dbg !4411
  %38 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4412
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %38, i32 0, i32 3, !dbg !4413
  store i32 24, i32* %n_chan, align 8, !dbg !4414
  %39 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4415
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %39, i32 0, i32 13, !dbg !4416
  store i32 65535, i32* %maxdata, align 8, !dbg !4417
  %40 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4418
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %40, i32 0, i32 18, !dbg !4419
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @db2k_ai_insn_read, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_read, align 8, !dbg !4420
  %41 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4421
  %range_table = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %41, i32 0, i32 15, !dbg !4422
  store %struct.comedi_lrange* bitcast ({ i32, [13 x %struct.comedi_krange] }* @db2k_ai_range to %struct.comedi_lrange*), %struct.comedi_lrange** %range_table, align 8, !dbg !4423
  %42 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4424
  %subdevices31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %42, i32 0, i32 16, !dbg !4425
  %43 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices31, align 8, !dbg !4425
  %arrayidx32 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %43, i64 1, !dbg !4424
  store %struct.comedi_subdevice* %arrayidx32, %struct.comedi_subdevice** %s, align 8, !dbg !4426
  %44 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4427
  %type33 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %44, i32 0, i32 2, !dbg !4428
  store i32 2, i32* %type33, align 4, !dbg !4429
  %45 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4430
  %subdev_flags34 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %45, i32 0, i32 4, !dbg !4431
  store i32 131072, i32* %subdev_flags34, align 4, !dbg !4432
  %46 = load %struct.db2k_boardtype*, %struct.db2k_boardtype** %board, align 8, !dbg !4433
  %has_2_ao = getelementptr inbounds %struct.db2k_boardtype, %struct.db2k_boardtype* %46, i32 0, i32 1, !dbg !4434
  %bf.load = load i8, i8* %has_2_ao, align 8, !dbg !4434
  %bf.clear = and i8 %bf.load, 1, !dbg !4434
  %bf.cast = zext i8 %bf.clear to i32, !dbg !4434
  %tobool35 = icmp ne i32 %bf.cast, 0, !dbg !4433
  %47 = zext i1 %tobool35 to i64, !dbg !4433
  %cond = select i1 %tobool35, i32 2, i32 4, !dbg !4433
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4435
  %n_chan36 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %48, i32 0, i32 3, !dbg !4436
  store i32 %cond, i32* %n_chan36, align 8, !dbg !4437
  %49 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4438
  %maxdata37 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %49, i32 0, i32 13, !dbg !4439
  store i32 65535, i32* %maxdata37, align 8, !dbg !4440
  %50 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4441
  %insn_write = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %50, i32 0, i32 19, !dbg !4442
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @db2k_ao_insn_write, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_write, align 8, !dbg !4443
  %51 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4444
  %range_table38 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %51, i32 0, i32 15, !dbg !4445
  store %struct.comedi_lrange* @range_bipolar10, %struct.comedi_lrange** %range_table38, align 8, !dbg !4446
  %52 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4447
  %call39 = call i32 @comedi_alloc_subdev_readback(%struct.comedi_subdevice* %52) #5, !dbg !4448
  store i32 %call39, i32* %result, align 4, !dbg !4449
  %53 = load i32, i32* %result, align 4, !dbg !4450
  %tobool40 = icmp ne i32 %53, 0, !dbg !4450
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !4452

if.then41:                                        ; preds = %if.end29
  %54 = load i32, i32* %result, align 4, !dbg !4453
  store i32 %54, i32* %retval, align 4, !dbg !4454
  br label %return, !dbg !4454

if.end42:                                         ; preds = %if.end29
  %55 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4455
  %subdevices43 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %55, i32 0, i32 16, !dbg !4456
  %56 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices43, align 8, !dbg !4456
  %arrayidx44 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %56, i64 2, !dbg !4455
  store %struct.comedi_subdevice* %arrayidx44, %struct.comedi_subdevice** %s, align 8, !dbg !4457
  %57 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4458
  %58 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4459
  %call45 = call i32 @subdev_8255_init(%struct.comedi_device* %57, %struct.comedi_subdevice* %58, i32 (%struct.comedi_device*, i32, i32, i32, i64)* @db2k_8255_cb, i64 64) #5, !dbg !4460
  store i32 %call45, i32* %retval, align 4, !dbg !4461
  br label %return, !dbg !4461

return:                                           ; preds = %if.end42, %if.then41, %if.then28, %if.then22, %if.then18, %if.then10, %if.then6, %if.then1, %if.then
  %59 = load i32, i32* %retval, align 4, !dbg !4462
  ret i32 %59, !dbg !4462
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noredzone
declare dso_local void @iounmap(i8*) #1

; Function Attrs: noredzone
declare dso_local void @comedi_pci_detach(%struct.comedi_device*) #1

; Function Attrs: noredzone
declare dso_local %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device*) #1

; Function Attrs: noredzone
declare dso_local i8* @comedi_alloc_devpriv(%struct.comedi_device*, i64) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_pci_enable(%struct.comedi_device*) #1

; Function Attrs: noredzone
declare dso_local i8* @pci_ioremap_bar(%struct.pci_dev*, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_load_firmware(%struct.comedi_device*, %struct.device*, i8*, i32 (%struct.comedi_device*, i8*, i64, i64)*, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @db2k_load_firmware(%struct.comedi_device* %dev, i8* %cpld_array, i64 %len, i64 %context) #2 !dbg !4463 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %cpld_array.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %context.addr = alloca i64, align 8
  %devpriv = alloca %struct.db2k_private*, align 8
  %result = alloca i32, align 4
  %cntrl = alloca i32, align 4
  %retry = alloca i32, align 4
  %i = alloca i64, align 8
  %new_cpld = alloca i8, align 1
  %data = alloca i16, align 2
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4468, metadata !DIExpression()), !dbg !4469
  store i8* %cpld_array, i8** %cpld_array.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %cpld_array.addr, metadata !4470, metadata !DIExpression()), !dbg !4471
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !4472, metadata !DIExpression()), !dbg !4473
  store i64 %context, i64* %context.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %context.addr, metadata !4474, metadata !DIExpression()), !dbg !4475
  call void @llvm.dbg.declare(metadata %struct.db2k_private** %devpriv, metadata !4476, metadata !DIExpression()), !dbg !4477
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4478
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !4479
  %1 = load i8*, i8** %private, align 8, !dbg !4479
  %2 = bitcast i8* %1 to %struct.db2k_private*, !dbg !4478
  store %struct.db2k_private* %2, %struct.db2k_private** %devpriv, align 8, !dbg !4477
  call void @llvm.dbg.declare(metadata i32* %result, metadata !4480, metadata !DIExpression()), !dbg !4481
  store i32 -5, i32* %result, align 4, !dbg !4481
  call void @llvm.dbg.declare(metadata i32* %cntrl, metadata !4482, metadata !DIExpression()), !dbg !4483
  call void @llvm.dbg.declare(metadata i32* %retry, metadata !4484, metadata !DIExpression()), !dbg !4485
  call void @llvm.dbg.declare(metadata i64* %i, metadata !4486, metadata !DIExpression()), !dbg !4487
  call void @llvm.dbg.declare(metadata i8* %new_cpld, metadata !4488, metadata !DIExpression()), !dbg !4489
  store i64 0, i64* %i, align 8, !dbg !4490
  br label %for.cond, !dbg !4492

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, i64* %i, align 8, !dbg !4493
  %add = add i64 %3, 1, !dbg !4495
  %4 = load i64, i64* %len.addr, align 8, !dbg !4496
  %cmp = icmp ult i64 %add, %4, !dbg !4497
  br i1 %cmp, label %for.body, label %for.end, !dbg !4498

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %cpld_array.addr, align 8, !dbg !4499
  %6 = load i64, i64* %i, align 8, !dbg !4502
  %arrayidx = getelementptr i8, i8* %5, i64 %6, !dbg !4499
  %7 = load i8, i8* %arrayidx, align 1, !dbg !4499
  %conv = zext i8 %7 to i32, !dbg !4499
  %cmp1 = icmp eq i32 %conv, 255, !dbg !4503
  br i1 %cmp1, label %land.lhs.true, label %if.end, !dbg !4504

land.lhs.true:                                    ; preds = %for.body
  %8 = load i8*, i8** %cpld_array.addr, align 8, !dbg !4505
  %9 = load i64, i64* %i, align 8, !dbg !4506
  %add3 = add i64 %9, 1, !dbg !4507
  %arrayidx4 = getelementptr i8, i8* %8, i64 %add3, !dbg !4505
  %10 = load i8, i8* %arrayidx4, align 1, !dbg !4505
  %conv5 = zext i8 %10 to i32, !dbg !4505
  %cmp6 = icmp eq i32 %conv5, 32, !dbg !4508
  br i1 %cmp6, label %if.then, label %if.end, !dbg !4509

if.then:                                          ; preds = %land.lhs.true
  br label %for.end, !dbg !4510

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !4511

for.inc:                                          ; preds = %if.end
  %11 = load i64, i64* %i, align 8, !dbg !4512
  %inc = add i64 %11, 1, !dbg !4512
  store i64 %inc, i64* %i, align 8, !dbg !4512
  br label %for.cond, !dbg !4513, !llvm.loop !4514

for.end:                                          ; preds = %if.then, %for.cond
  %12 = load i64, i64* %i, align 8, !dbg !4516
  %add8 = add i64 %12, 1, !dbg !4518
  %13 = load i64, i64* %len.addr, align 8, !dbg !4519
  %cmp9 = icmp uge i64 %add8, %13, !dbg !4520
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !4521

if.then11:                                        ; preds = %for.end
  %14 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4522
  %class_dev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 4, !dbg !4522
  %15 = load %struct.device*, %struct.device** %class_dev, align 8, !dbg !4522
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %15, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !4522
  store i32 -22, i32* %retval, align 4, !dbg !4524
  br label %return, !dbg !4524

if.end12:                                         ; preds = %for.end
  %16 = load i64, i64* %len.addr, align 8, !dbg !4525
  %17 = load i64, i64* %i, align 8, !dbg !4527
  %sub = sub i64 %16, %17, !dbg !4528
  %and = and i64 %sub, 1, !dbg !4529
  %tobool = icmp ne i64 %and, 0, !dbg !4529
  br i1 %tobool, label %if.then13, label %if.end16, !dbg !4530

if.then13:                                        ; preds = %if.end12
  %18 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4531
  %class_dev14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 4, !dbg !4531
  %19 = load %struct.device*, %struct.device** %class_dev14, align 8, !dbg !4531
  %20 = load i64, i64* %len.addr, align 8, !dbg !4531
  %21 = load i64, i64* %i, align 8, !dbg !4531
  %sub15 = sub i64 %20, %21, !dbg !4531
  %22 = load i64, i64* %len.addr, align 8, !dbg !4531
  %23 = load i64, i64* %i, align 8, !dbg !4531
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %19, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i64 %sub15, i64 %22, i64 %23) #6, !dbg !4531
  store i32 -22, i32* %retval, align 4, !dbg !4533
  br label %return, !dbg !4533

if.end16:                                         ; preds = %if.end12
  %24 = load i64, i64* %i, align 8, !dbg !4534
  %25 = load i8*, i8** %cpld_array.addr, align 8, !dbg !4535
  %add.ptr = getelementptr i8, i8* %25, i64 %24, !dbg !4535
  store i8* %add.ptr, i8** %cpld_array.addr, align 8, !dbg !4535
  %26 = load i64, i64* %i, align 8, !dbg !4536
  %27 = load i64, i64* %len.addr, align 8, !dbg !4537
  %sub17 = sub i64 %27, %26, !dbg !4537
  store i64 %sub17, i64* %len.addr, align 8, !dbg !4537
  %28 = load %struct.db2k_private*, %struct.db2k_private** %devpriv, align 8, !dbg !4538
  %plx = getelementptr inbounds %struct.db2k_private, %struct.db2k_private* %28, i32 0, i32 0, !dbg !4539
  %29 = load i8*, i8** %plx, align 8, !dbg !4539
  %add.ptr18 = getelementptr i8, i8* %29, i64 108, !dbg !4540
  %call = call i32 @readl(i8* %add.ptr18) #5, !dbg !4541
  store i32 %call, i32* %cntrl, align 4, !dbg !4542
  %30 = load i32, i32* %cntrl, align 4, !dbg !4543
  %conv19 = zext i32 %30 to i64, !dbg !4543
  %and20 = and i64 %conv19, 268435456, !dbg !4545
  %tobool21 = icmp ne i64 %and20, 0, !dbg !4545
  br i1 %tobool21, label %if.end23, label %if.then22, !dbg !4546

if.then22:                                        ; preds = %if.end16
  store i32 -5, i32* %retval, align 4, !dbg !4547
  br label %return, !dbg !4547

if.end23:                                         ; preds = %if.end16
  store i32 0, i32* %retry, align 4, !dbg !4548
  br label %for.cond24, !dbg !4550

for.cond24:                                       ; preds = %for.inc66, %if.end23
  %31 = load i32, i32* %retry, align 4, !dbg !4551
  %cmp25 = icmp slt i32 %31, 3, !dbg !4553
  br i1 %cmp25, label %for.body27, label %for.end68, !dbg !4554

for.body27:                                       ; preds = %for.cond24
  %32 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4555
  call void @db2k_reset_local_bus(%struct.comedi_device* %32) #5, !dbg !4557
  %33 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4558
  call void @db2k_reload_plx(%struct.comedi_device* %33) #5, !dbg !4559
  %34 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4560
  call void @db2k_pulse_prog_pin(%struct.comedi_device* %34) #5, !dbg !4561
  %35 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4562
  %call28 = call i32 @db2k_wait_cpld_init(%struct.comedi_device* %35) #5, !dbg !4563
  store i32 %call28, i32* %result, align 4, !dbg !4564
  %36 = load i32, i32* %result, align 4, !dbg !4565
  %tobool29 = icmp ne i32 %36, 0, !dbg !4565
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !4567

if.then30:                                        ; preds = %for.body27
  br label %for.inc66, !dbg !4568

if.end31:                                         ; preds = %for.body27
  %37 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4569
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %37, i32 0, i32 17, !dbg !4570
  %38 = load i8*, i8** %mmio, align 8, !dbg !4570
  %add.ptr32 = getelementptr i8, i8* %38, i64 4096, !dbg !4571
  %call33 = call zeroext i16 @readw(i8* %add.ptr32) #5, !dbg !4572
  %conv34 = zext i16 %call33 to i32, !dbg !4572
  %and35 = and i32 %conv34, 61440, !dbg !4573
  %cmp36 = icmp eq i32 %and35, 20480, !dbg !4574
  %frombool = zext i1 %cmp36 to i8, !dbg !4575
  store i8 %frombool, i8* %new_cpld, align 1, !dbg !4575
  br label %for.cond38, !dbg !4576

for.cond38:                                       ; preds = %for.inc54, %if.end31
  %39 = load i64, i64* %i, align 8, !dbg !4577
  %40 = load i64, i64* %len.addr, align 8, !dbg !4580
  %cmp39 = icmp ult i64 %39, %40, !dbg !4581
  br i1 %cmp39, label %for.body41, label %for.end56, !dbg !4582

for.body41:                                       ; preds = %for.cond38
  call void @llvm.dbg.declare(metadata i16* %data, metadata !4583, metadata !DIExpression()), !dbg !4585
  %41 = load i8*, i8** %cpld_array.addr, align 8, !dbg !4586
  %42 = load i64, i64* %i, align 8, !dbg !4587
  %arrayidx42 = getelementptr i8, i8* %41, i64 %42, !dbg !4586
  %43 = load i8, i8* %arrayidx42, align 1, !dbg !4586
  %conv43 = zext i8 %43 to i32, !dbg !4586
  %shl = shl i32 %conv43, 8, !dbg !4588
  %44 = load i8*, i8** %cpld_array.addr, align 8, !dbg !4589
  %45 = load i64, i64* %i, align 8, !dbg !4590
  %add44 = add i64 %45, 1, !dbg !4591
  %arrayidx45 = getelementptr i8, i8* %44, i64 %add44, !dbg !4589
  %46 = load i8, i8* %arrayidx45, align 1, !dbg !4589
  %conv46 = zext i8 %46 to i32, !dbg !4589
  %add47 = add i32 %shl, %conv46, !dbg !4592
  %conv48 = trunc i32 %add47 to i16, !dbg !4593
  store i16 %conv48, i16* %data, align 2, !dbg !4585
  %47 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4594
  %48 = load i16, i16* %data, align 2, !dbg !4595
  %49 = load i8, i8* %new_cpld, align 1, !dbg !4596
  %tobool49 = trunc i8 %49 to i1, !dbg !4596
  %call50 = call i32 @db2k_write_cpld(%struct.comedi_device* %47, i16 zeroext %48, i1 zeroext %tobool49) #5, !dbg !4597
  store i32 %call50, i32* %result, align 4, !dbg !4598
  %50 = load i32, i32* %result, align 4, !dbg !4599
  %tobool51 = icmp ne i32 %50, 0, !dbg !4599
  br i1 %tobool51, label %if.then52, label %if.end53, !dbg !4601

if.then52:                                        ; preds = %for.body41
  br label %for.end56, !dbg !4602

if.end53:                                         ; preds = %for.body41
  br label %for.inc54, !dbg !4603

for.inc54:                                        ; preds = %if.end53
  %51 = load i64, i64* %i, align 8, !dbg !4604
  %add55 = add i64 %51, 2, !dbg !4604
  store i64 %add55, i64* %i, align 8, !dbg !4604
  br label %for.cond38, !dbg !4605, !llvm.loop !4606

for.end56:                                        ; preds = %if.then52, %for.cond38
  %52 = load i32, i32* %result, align 4, !dbg !4608
  %cmp57 = icmp eq i32 %52, 0, !dbg !4610
  br i1 %cmp57, label %if.then59, label %if.end61, !dbg !4611

if.then59:                                        ; preds = %for.end56
  %53 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4612
  %call60 = call i32 @db2k_wait_fpga_programmed(%struct.comedi_device* %53) #5, !dbg !4613
  store i32 %call60, i32* %result, align 4, !dbg !4614
  br label %if.end61, !dbg !4615

if.end61:                                         ; preds = %if.then59, %for.end56
  %54 = load i32, i32* %result, align 4, !dbg !4616
  %cmp62 = icmp eq i32 %54, 0, !dbg !4618
  br i1 %cmp62, label %if.then64, label %if.end65, !dbg !4619

if.then64:                                        ; preds = %if.end61
  %55 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4620
  call void @db2k_reset_local_bus(%struct.comedi_device* %55) #5, !dbg !4622
  %56 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4623
  call void @db2k_reload_plx(%struct.comedi_device* %56) #5, !dbg !4624
  br label %for.end68, !dbg !4625

if.end65:                                         ; preds = %if.end61
  br label %for.inc66, !dbg !4626

for.inc66:                                        ; preds = %if.end65, %if.then30
  %57 = load i32, i32* %retry, align 4, !dbg !4627
  %inc67 = add i32 %57, 1, !dbg !4627
  store i32 %inc67, i32* %retry, align 4, !dbg !4627
  br label %for.cond24, !dbg !4628, !llvm.loop !4629

for.end68:                                        ; preds = %if.then64, %for.cond24
  %58 = load i32, i32* %result, align 4, !dbg !4631
  store i32 %58, i32* %retval, align 4, !dbg !4632
  br label %return, !dbg !4632

return:                                           ; preds = %for.end68, %if.then22, %if.then13, %if.then11
  %59 = load i32, i32* %retval, align 4, !dbg !4633
  ret i32 %59, !dbg !4633
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @db2k_initialize_adc(%struct.comedi_device* %dev) #2 !dbg !4634 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4635, metadata !DIExpression()), !dbg !4636
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4637
  call void @db2k_adc_disarm(%struct.comedi_device* %0) #5, !dbg !4638
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4639
  call void @db2k_activate_reference_dacs(%struct.comedi_device* %1) #5, !dbg !4640
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4641
  call void @db2k_initialize_ctrs(%struct.comedi_device* %2) #5, !dbg !4642
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4643
  call void @db2k_initialize_tmrs(%struct.comedi_device* %3) #5, !dbg !4644
  ret void, !dbg !4645
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @db2k_dac_disarm(%struct.comedi_device* %dev) #2 !dbg !4646 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4647, metadata !DIExpression()), !dbg !4648
  ret void, !dbg !4649
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @db2k_ai_insn_read(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !4650 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %gain = alloca i32, align 4
  %chan = alloca i32, align 4
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4651, metadata !DIExpression()), !dbg !4652
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4653, metadata !DIExpression()), !dbg !4654
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !4655, metadata !DIExpression()), !dbg !4656
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !4657, metadata !DIExpression()), !dbg !4658
  call void @llvm.dbg.declare(metadata i32* %gain, metadata !4659, metadata !DIExpression()), !dbg !4660
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !4661, metadata !DIExpression()), !dbg !4662
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4663, metadata !DIExpression()), !dbg !4664
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4665, metadata !DIExpression()), !dbg !4666
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4667
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 17, !dbg !4668
  %1 = load i8*, i8** %mmio, align 8, !dbg !4668
  %add.ptr = getelementptr i8, i8* %1, i64 0, !dbg !4669
  call void @writew(i16 zeroext 7, i8* %add.ptr) #5, !dbg !4670
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4671
  %mmio1 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %2, i32 0, i32 17, !dbg !4672
  %3 = load i8*, i8** %mmio1, align 8, !dbg !4672
  %add.ptr2 = getelementptr i8, i8* %3, i64 4, !dbg !4673
  call void @writel(i32 1000000, i8* %add.ptr2) #5, !dbg !4674
  %4 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4675
  %mmio3 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 17, !dbg !4676
  %5 = load i8*, i8** %mmio3, align 8, !dbg !4676
  %add.ptr4 = getelementptr i8, i8* %5, i64 10, !dbg !4677
  call void @writew(i16 zeroext 0, i8* %add.ptr4) #5, !dbg !4678
  %6 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4679
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %6, i32 0, i32 4, !dbg !4679
  %7 = load i32, i32* %chanspec, align 4, !dbg !4679
  %shr = lshr i32 %7, 16, !dbg !4679
  %and = and i32 %shr, 255, !dbg !4679
  store i32 %and, i32* %gain, align 4, !dbg !4680
  %8 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4681
  %chanspec5 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %8, i32 0, i32 4, !dbg !4681
  %9 = load i32, i32* %chanspec5, align 4, !dbg !4681
  %and6 = and i32 %9, 65535, !dbg !4681
  store i32 %and6, i32* %chan, align 4, !dbg !4682
  store i32 0, i32* %i, align 4, !dbg !4683
  br label %for.cond, !dbg !4685

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %i, align 4, !dbg !4686
  %11 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4688
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %11, i32 0, i32 1, !dbg !4689
  %12 = load i32, i32* %n, align 4, !dbg !4689
  %cmp = icmp ult i32 %10, %12, !dbg !4690
  br i1 %cmp, label %for.body, label %for.end, !dbg !4691

for.body:                                         ; preds = %for.cond
  %13 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4692
  %14 = load i32, i32* %chan, align 4, !dbg !4694
  %15 = load i32, i32* %gain, align 4, !dbg !4695
  call void @db2k_setup_sampling(%struct.comedi_device* %13, i32 %14, i32 %15) #5, !dbg !4696
  %16 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4697
  %mmio7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 17, !dbg !4698
  %17 = load i8*, i8** %mmio7, align 8, !dbg !4698
  %add.ptr8 = getelementptr i8, i8* %17, i64 0, !dbg !4699
  call void @writew(i16 zeroext 17, i8* %add.ptr8) #5, !dbg !4700
  %18 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4701
  %19 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4702
  %20 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4703
  %call = call i32 @comedi_timeout(%struct.comedi_device* %18, %struct.comedi_subdevice* %19, %struct.comedi_insn* %20, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i64)* @db2k_ai_status, i64 16) #5, !dbg !4704
  store i32 %call, i32* %ret, align 4, !dbg !4705
  %21 = load i32, i32* %ret, align 4, !dbg !4706
  %tobool = icmp ne i32 %21, 0, !dbg !4706
  br i1 %tobool, label %if.then, label %if.end, !dbg !4708

if.then:                                          ; preds = %for.body
  %22 = load i32, i32* %ret, align 4, !dbg !4709
  store i32 %22, i32* %retval, align 4, !dbg !4710
  br label %return, !dbg !4710

if.end:                                           ; preds = %for.body
  %23 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4711
  %mmio9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %23, i32 0, i32 17, !dbg !4712
  %24 = load i8*, i8** %mmio9, align 8, !dbg !4712
  %add.ptr10 = getelementptr i8, i8* %24, i64 0, !dbg !4713
  call void @writew(i16 zeroext 49, i8* %add.ptr10) #5, !dbg !4714
  %25 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4715
  %26 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4716
  %27 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4717
  %call11 = call i32 @comedi_timeout(%struct.comedi_device* %25, %struct.comedi_subdevice* %26, %struct.comedi_insn* %27, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i64)* @db2k_ai_status, i64 8) #5, !dbg !4718
  store i32 %call11, i32* %ret, align 4, !dbg !4719
  %28 = load i32, i32* %ret, align 4, !dbg !4720
  %tobool12 = icmp ne i32 %28, 0, !dbg !4720
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !4722

if.then13:                                        ; preds = %if.end
  %29 = load i32, i32* %ret, align 4, !dbg !4723
  store i32 %29, i32* %retval, align 4, !dbg !4724
  br label %return, !dbg !4724

if.end14:                                         ; preds = %if.end
  %30 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4725
  %31 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4726
  %32 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4727
  %call15 = call i32 @comedi_timeout(%struct.comedi_device* %30, %struct.comedi_subdevice* %31, %struct.comedi_insn* %32, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i64)* @db2k_ai_status, i64 2) #5, !dbg !4728
  store i32 %call15, i32* %ret, align 4, !dbg !4729
  %33 = load i32, i32* %ret, align 4, !dbg !4730
  %tobool16 = icmp ne i32 %33, 0, !dbg !4730
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !4732

if.then17:                                        ; preds = %if.end14
  %34 = load i32, i32* %ret, align 4, !dbg !4733
  store i32 %34, i32* %retval, align 4, !dbg !4734
  br label %return, !dbg !4734

if.end18:                                         ; preds = %if.end14
  %35 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4735
  %mmio19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %35, i32 0, i32 17, !dbg !4736
  %36 = load i8*, i8** %mmio19, align 8, !dbg !4736
  %add.ptr20 = getelementptr i8, i8* %36, i64 16, !dbg !4737
  %call21 = call zeroext i16 @readw(i8* %add.ptr20) #5, !dbg !4738
  %conv = zext i16 %call21 to i32, !dbg !4738
  %37 = load i32*, i32** %data.addr, align 8, !dbg !4739
  %38 = load i32, i32* %i, align 4, !dbg !4740
  %idxprom = sext i32 %38 to i64, !dbg !4739
  %arrayidx = getelementptr i32, i32* %37, i64 %idxprom, !dbg !4739
  store i32 %conv, i32* %arrayidx, align 4, !dbg !4741
  %39 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4742
  %mmio22 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %39, i32 0, i32 17, !dbg !4743
  %40 = load i8*, i8** %mmio22, align 8, !dbg !4743
  %add.ptr23 = getelementptr i8, i8* %40, i64 0, !dbg !4744
  call void @writew(i16 zeroext 48, i8* %add.ptr23) #5, !dbg !4745
  %41 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4746
  %mmio24 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %41, i32 0, i32 17, !dbg !4747
  %42 = load i8*, i8** %mmio24, align 8, !dbg !4747
  %add.ptr25 = getelementptr i8, i8* %42, i64 0, !dbg !4748
  call void @writew(i16 zeroext 16, i8* %add.ptr25) #5, !dbg !4749
  br label %for.inc, !dbg !4750

for.inc:                                          ; preds = %if.end18
  %43 = load i32, i32* %i, align 4, !dbg !4751
  %inc = add i32 %43, 1, !dbg !4751
  store i32 %inc, i32* %i, align 4, !dbg !4751
  br label %for.cond, !dbg !4752, !llvm.loop !4753

for.end:                                          ; preds = %for.cond
  %44 = load i32, i32* %i, align 4, !dbg !4755
  store i32 %44, i32* %retval, align 4, !dbg !4756
  br label %return, !dbg !4756

return:                                           ; preds = %for.end, %if.then17, %if.then13, %if.then
  %45 = load i32, i32* %retval, align 4, !dbg !4757
  ret i32 %45, !dbg !4757
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @db2k_ao_insn_write(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !4758 {
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
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4759, metadata !DIExpression()), !dbg !4760
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4761, metadata !DIExpression()), !dbg !4762
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !4763, metadata !DIExpression()), !dbg !4764
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !4765, metadata !DIExpression()), !dbg !4766
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !4767, metadata !DIExpression()), !dbg !4768
  %0 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4769
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %0, i32 0, i32 4, !dbg !4769
  %1 = load i32, i32* %chanspec, align 4, !dbg !4769
  %and = and i32 %1, 65535, !dbg !4769
  store i32 %and, i32* %chan, align 4, !dbg !4768
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4770, metadata !DIExpression()), !dbg !4771
  store i32 0, i32* %i, align 4, !dbg !4772
  br label %for.cond, !dbg !4774

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !4775
  %3 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4777
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %3, i32 0, i32 1, !dbg !4778
  %4 = load i32, i32* %n, align 4, !dbg !4778
  %cmp = icmp ult i32 %2, %4, !dbg !4779
  br i1 %cmp, label %for.body, label %for.end, !dbg !4780

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %val, metadata !4781, metadata !DIExpression()), !dbg !4783
  %5 = load i32*, i32** %data.addr, align 8, !dbg !4784
  %6 = load i32, i32* %i, align 4, !dbg !4785
  %idxprom = sext i32 %6 to i64, !dbg !4784
  %arrayidx = getelementptr i32, i32* %5, i64 %idxprom, !dbg !4784
  %7 = load i32, i32* %arrayidx, align 4, !dbg !4784
  store i32 %7, i32* %val, align 4, !dbg !4783
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4786, metadata !DIExpression()), !dbg !4787
  %8 = load i32, i32* %val, align 4, !dbg !4788
  %conv = trunc i32 %8 to i16, !dbg !4788
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4789
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 17, !dbg !4790
  %10 = load i8*, i8** %mmio, align 8, !dbg !4790
  %11 = load i32, i32* %chan, align 4, !dbg !4791
  %mul = mul i32 %11, 2, !dbg !4791
  %add = add i32 56, %mul, !dbg !4791
  %idx.ext = zext i32 %add to i64, !dbg !4792
  %add.ptr = getelementptr i8, i8* %10, i64 %idx.ext, !dbg !4792
  call void @writew(i16 zeroext %conv, i8* %add.ptr) #5, !dbg !4793
  %12 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4794
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4795
  %14 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4796
  %call = call i32 @comedi_timeout(%struct.comedi_device* %12, %struct.comedi_subdevice* %13, %struct.comedi_insn* %14, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i64)* @db2k_ao_eoc, i64 0) #5, !dbg !4797
  store i32 %call, i32* %ret, align 4, !dbg !4798
  %15 = load i32, i32* %ret, align 4, !dbg !4799
  %tobool = icmp ne i32 %15, 0, !dbg !4799
  br i1 %tobool, label %if.then, label %if.end, !dbg !4801

if.then:                                          ; preds = %for.body
  %16 = load i32, i32* %ret, align 4, !dbg !4802
  store i32 %16, i32* %retval, align 4, !dbg !4803
  br label %return, !dbg !4803

if.end:                                           ; preds = %for.body
  %17 = load i32, i32* %val, align 4, !dbg !4804
  %18 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4805
  %readback = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %18, i32 0, i32 32, !dbg !4806
  %19 = load i32*, i32** %readback, align 8, !dbg !4806
  %20 = load i32, i32* %chan, align 4, !dbg !4807
  %idxprom1 = zext i32 %20 to i64, !dbg !4805
  %arrayidx2 = getelementptr i32, i32* %19, i64 %idxprom1, !dbg !4805
  store i32 %17, i32* %arrayidx2, align 4, !dbg !4808
  br label %for.inc, !dbg !4809

for.inc:                                          ; preds = %if.end
  %21 = load i32, i32* %i, align 4, !dbg !4810
  %inc = add i32 %21, 1, !dbg !4810
  store i32 %inc, i32* %i, align 4, !dbg !4810
  br label %for.cond, !dbg !4811, !llvm.loop !4812

for.end:                                          ; preds = %for.cond
  %22 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4814
  %n3 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %22, i32 0, i32 1, !dbg !4815
  %23 = load i32, i32* %n3, align 4, !dbg !4815
  store i32 %23, i32* %retval, align 4, !dbg !4816
  br label %return, !dbg !4816

return:                                           ; preds = %for.end, %if.then
  %24 = load i32, i32* %retval, align 4, !dbg !4817
  ret i32 %24, !dbg !4817
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_alloc_subdev_readback(%struct.comedi_subdevice*) #1

; Function Attrs: noredzone
declare dso_local i32 @subdev_8255_init(%struct.comedi_device*, %struct.comedi_subdevice*, i32 (%struct.comedi_device*, i32, i32, i32, i64)*, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @db2k_8255_cb(%struct.comedi_device* %dev, i32 %dir, i32 %port, i32 %data, i64 %iobase) #2 !dbg !4818 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %dir.addr = alloca i32, align 4
  %port.addr = alloca i32, align 4
  %data.addr = alloca i32, align 4
  %iobase.addr = alloca i64, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4821, metadata !DIExpression()), !dbg !4822
  store i32 %dir, i32* %dir.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dir.addr, metadata !4823, metadata !DIExpression()), !dbg !4824
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !4825, metadata !DIExpression()), !dbg !4826
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !4827, metadata !DIExpression()), !dbg !4828
  store i64 %iobase, i64* %iobase.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %iobase.addr, metadata !4829, metadata !DIExpression()), !dbg !4830
  %0 = load i32, i32* %dir.addr, align 4, !dbg !4831
  %tobool = icmp ne i32 %0, 0, !dbg !4831
  br i1 %tobool, label %if.then, label %if.end, !dbg !4833

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %data.addr, align 4, !dbg !4834
  %conv = trunc i32 %1 to i16, !dbg !4834
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4836
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %2, i32 0, i32 17, !dbg !4837
  %3 = load i8*, i8** %mmio, align 8, !dbg !4837
  %4 = load i64, i64* %iobase.addr, align 8, !dbg !4838
  %add.ptr = getelementptr i8, i8* %3, i64 %4, !dbg !4839
  %5 = load i32, i32* %port.addr, align 4, !dbg !4840
  %mul = mul i32 %5, 2, !dbg !4841
  %idx.ext = sext i32 %mul to i64, !dbg !4842
  %add.ptr1 = getelementptr i8, i8* %add.ptr, i64 %idx.ext, !dbg !4842
  call void @writew(i16 zeroext %conv, i8* %add.ptr1) #5, !dbg !4843
  store i32 0, i32* %retval, align 4, !dbg !4844
  br label %return, !dbg !4844

if.end:                                           ; preds = %entry
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4845
  %mmio2 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 17, !dbg !4846
  %7 = load i8*, i8** %mmio2, align 8, !dbg !4846
  %8 = load i64, i64* %iobase.addr, align 8, !dbg !4847
  %add.ptr3 = getelementptr i8, i8* %7, i64 %8, !dbg !4848
  %9 = load i32, i32* %port.addr, align 4, !dbg !4849
  %mul4 = mul i32 %9, 2, !dbg !4850
  %idx.ext5 = sext i32 %mul4 to i64, !dbg !4851
  %add.ptr6 = getelementptr i8, i8* %add.ptr3, i64 %idx.ext5, !dbg !4851
  %call = call zeroext i16 @readw(i8* %add.ptr6) #5, !dbg !4852
  %conv7 = zext i16 %call to i32, !dbg !4852
  store i32 %conv7, i32* %retval, align 4, !dbg !4853
  br label %return, !dbg !4853

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !4854
  ret i32 %10, !dbg !4854
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readl(i8* %addr) #2 !dbg !4855 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !4862, metadata !DIExpression()), !dbg !4863
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4864, metadata !DIExpression()), !dbg !4863
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !4863
  %1 = bitcast i8* %0 to i32*, !dbg !4863
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #7, !dbg !4863, !srcloc !4865
  store i32 %2, i32* %ret, align 4, !dbg !4863
  %3 = load i32, i32* %ret, align 4, !dbg !4863
  ret i32 %3, !dbg !4863
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @db2k_reset_local_bus(%struct.comedi_device* %dev) #2 !dbg !4866 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %devpriv = alloca %struct.db2k_private*, align 8
  %cntrl = alloca i32, align 4
  %__ms = alloca i64, align 8
  %__ms8 = alloca i64, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4867, metadata !DIExpression()), !dbg !4868
  call void @llvm.dbg.declare(metadata %struct.db2k_private** %devpriv, metadata !4869, metadata !DIExpression()), !dbg !4870
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4871
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !4872
  %1 = load i8*, i8** %private, align 8, !dbg !4872
  %2 = bitcast i8* %1 to %struct.db2k_private*, !dbg !4871
  store %struct.db2k_private* %2, %struct.db2k_private** %devpriv, align 8, !dbg !4870
  call void @llvm.dbg.declare(metadata i32* %cntrl, metadata !4873, metadata !DIExpression()), !dbg !4874
  %3 = load %struct.db2k_private*, %struct.db2k_private** %devpriv, align 8, !dbg !4875
  %plx = getelementptr inbounds %struct.db2k_private, %struct.db2k_private* %3, i32 0, i32 0, !dbg !4876
  %4 = load i8*, i8** %plx, align 8, !dbg !4876
  %add.ptr = getelementptr i8, i8* %4, i64 108, !dbg !4877
  %call = call i32 @readl(i8* %add.ptr) #5, !dbg !4878
  store i32 %call, i32* %cntrl, align 4, !dbg !4879
  %5 = load i32, i32* %cntrl, align 4, !dbg !4880
  %conv = zext i32 %5 to i64, !dbg !4880
  %or = or i64 %conv, 1073741824, !dbg !4880
  %conv1 = trunc i64 %or to i32, !dbg !4880
  store i32 %conv1, i32* %cntrl, align 4, !dbg !4880
  %6 = load i32, i32* %cntrl, align 4, !dbg !4881
  %7 = load %struct.db2k_private*, %struct.db2k_private** %devpriv, align 8, !dbg !4882
  %plx2 = getelementptr inbounds %struct.db2k_private, %struct.db2k_private* %7, i32 0, i32 0, !dbg !4883
  %8 = load i8*, i8** %plx2, align 8, !dbg !4883
  %add.ptr3 = getelementptr i8, i8* %8, i64 108, !dbg !4884
  call void @writel(i32 %6, i8* %add.ptr3) #5, !dbg !4885
  call void @llvm.dbg.declare(metadata i64* %__ms, metadata !4886, metadata !DIExpression()), !dbg !4888
  store i64 10, i64* %__ms, align 8, !dbg !4888
  br label %while.cond, !dbg !4888

while.cond:                                       ; preds = %while.body, %entry
  %9 = load i64, i64* %__ms, align 8, !dbg !4888
  %dec = add i64 %9, -1, !dbg !4888
  store i64 %dec, i64* %__ms, align 8, !dbg !4888
  %tobool = icmp ne i64 %9, 0, !dbg !4888
  br i1 %tobool, label %while.body, label %while.end, !dbg !4888

while.body:                                       ; preds = %while.cond
  call void @__const_udelay(i64 4295000) #5, !dbg !4889
  br label %while.cond, !dbg !4888, !llvm.loop !4894

while.end:                                        ; preds = %while.cond
  %10 = load i32, i32* %cntrl, align 4, !dbg !4895
  %conv4 = zext i32 %10 to i64, !dbg !4895
  %and = and i64 %conv4, -1073741825, !dbg !4895
  %conv5 = trunc i64 %and to i32, !dbg !4895
  store i32 %conv5, i32* %cntrl, align 4, !dbg !4895
  %11 = load i32, i32* %cntrl, align 4, !dbg !4896
  %12 = load %struct.db2k_private*, %struct.db2k_private** %devpriv, align 8, !dbg !4897
  %plx6 = getelementptr inbounds %struct.db2k_private, %struct.db2k_private* %12, i32 0, i32 0, !dbg !4898
  %13 = load i8*, i8** %plx6, align 8, !dbg !4898
  %add.ptr7 = getelementptr i8, i8* %13, i64 108, !dbg !4899
  call void @writel(i32 %11, i8* %add.ptr7) #5, !dbg !4900
  call void @llvm.dbg.declare(metadata i64* %__ms8, metadata !4901, metadata !DIExpression()), !dbg !4903
  store i64 10, i64* %__ms8, align 8, !dbg !4903
  br label %while.cond9, !dbg !4903

while.cond9:                                      ; preds = %while.body12, %while.end
  %14 = load i64, i64* %__ms8, align 8, !dbg !4903
  %dec10 = add i64 %14, -1, !dbg !4903
  store i64 %dec10, i64* %__ms8, align 8, !dbg !4903
  %tobool11 = icmp ne i64 %14, 0, !dbg !4903
  br i1 %tobool11, label %while.body12, label %while.end13, !dbg !4903

while.body12:                                     ; preds = %while.cond9
  call void @__const_udelay(i64 4295000) #5, !dbg !4904
  br label %while.cond9, !dbg !4903, !llvm.loop !4909

while.end13:                                      ; preds = %while.cond9
  ret void, !dbg !4910
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @db2k_reload_plx(%struct.comedi_device* %dev) #2 !dbg !4911 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %devpriv = alloca %struct.db2k_private*, align 8
  %cntrl = alloca i32, align 4
  %__ms = alloca i64, align 8
  %__ms8 = alloca i64, align 8
  %__ms19 = alloca i64, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4912, metadata !DIExpression()), !dbg !4913
  call void @llvm.dbg.declare(metadata %struct.db2k_private** %devpriv, metadata !4914, metadata !DIExpression()), !dbg !4915
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4916
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !4917
  %1 = load i8*, i8** %private, align 8, !dbg !4917
  %2 = bitcast i8* %1 to %struct.db2k_private*, !dbg !4916
  store %struct.db2k_private* %2, %struct.db2k_private** %devpriv, align 8, !dbg !4915
  call void @llvm.dbg.declare(metadata i32* %cntrl, metadata !4918, metadata !DIExpression()), !dbg !4919
  %3 = load %struct.db2k_private*, %struct.db2k_private** %devpriv, align 8, !dbg !4920
  %plx = getelementptr inbounds %struct.db2k_private, %struct.db2k_private* %3, i32 0, i32 0, !dbg !4921
  %4 = load i8*, i8** %plx, align 8, !dbg !4921
  %add.ptr = getelementptr i8, i8* %4, i64 108, !dbg !4922
  %call = call i32 @readl(i8* %add.ptr) #5, !dbg !4923
  store i32 %call, i32* %cntrl, align 4, !dbg !4924
  %5 = load i32, i32* %cntrl, align 4, !dbg !4925
  %conv = zext i32 %5 to i64, !dbg !4925
  %and = and i64 %conv, -536870913, !dbg !4925
  %conv1 = trunc i64 %and to i32, !dbg !4925
  store i32 %conv1, i32* %cntrl, align 4, !dbg !4925
  %6 = load i32, i32* %cntrl, align 4, !dbg !4926
  %7 = load %struct.db2k_private*, %struct.db2k_private** %devpriv, align 8, !dbg !4927
  %plx2 = getelementptr inbounds %struct.db2k_private, %struct.db2k_private* %7, i32 0, i32 0, !dbg !4928
  %8 = load i8*, i8** %plx2, align 8, !dbg !4928
  %add.ptr3 = getelementptr i8, i8* %8, i64 108, !dbg !4929
  call void @writel(i32 %6, i8* %add.ptr3) #5, !dbg !4930
  call void @llvm.dbg.declare(metadata i64* %__ms, metadata !4931, metadata !DIExpression()), !dbg !4933
  store i64 10, i64* %__ms, align 8, !dbg !4933
  br label %while.cond, !dbg !4933

while.cond:                                       ; preds = %while.body, %entry
  %9 = load i64, i64* %__ms, align 8, !dbg !4933
  %dec = add i64 %9, -1, !dbg !4933
  store i64 %dec, i64* %__ms, align 8, !dbg !4933
  %tobool = icmp ne i64 %9, 0, !dbg !4933
  br i1 %tobool, label %while.body, label %while.end, !dbg !4933

while.body:                                       ; preds = %while.cond
  call void @__const_udelay(i64 4295000) #5, !dbg !4934
  br label %while.cond, !dbg !4933, !llvm.loop !4939

while.end:                                        ; preds = %while.cond
  %10 = load i32, i32* %cntrl, align 4, !dbg !4940
  %conv4 = zext i32 %10 to i64, !dbg !4940
  %or = or i64 %conv4, 536870912, !dbg !4940
  %conv5 = trunc i64 %or to i32, !dbg !4940
  store i32 %conv5, i32* %cntrl, align 4, !dbg !4940
  %11 = load i32, i32* %cntrl, align 4, !dbg !4941
  %12 = load %struct.db2k_private*, %struct.db2k_private** %devpriv, align 8, !dbg !4942
  %plx6 = getelementptr inbounds %struct.db2k_private, %struct.db2k_private* %12, i32 0, i32 0, !dbg !4943
  %13 = load i8*, i8** %plx6, align 8, !dbg !4943
  %add.ptr7 = getelementptr i8, i8* %13, i64 108, !dbg !4944
  call void @writel(i32 %11, i8* %add.ptr7) #5, !dbg !4945
  call void @llvm.dbg.declare(metadata i64* %__ms8, metadata !4946, metadata !DIExpression()), !dbg !4948
  store i64 10, i64* %__ms8, align 8, !dbg !4948
  br label %while.cond9, !dbg !4948

while.cond9:                                      ; preds = %while.body12, %while.end
  %14 = load i64, i64* %__ms8, align 8, !dbg !4948
  %dec10 = add i64 %14, -1, !dbg !4948
  store i64 %dec10, i64* %__ms8, align 8, !dbg !4948
  %tobool11 = icmp ne i64 %14, 0, !dbg !4948
  br i1 %tobool11, label %while.body12, label %while.end13, !dbg !4948

while.body12:                                     ; preds = %while.cond9
  call void @__const_udelay(i64 4295000) #5, !dbg !4949
  br label %while.cond9, !dbg !4948, !llvm.loop !4954

while.end13:                                      ; preds = %while.cond9
  %15 = load i32, i32* %cntrl, align 4, !dbg !4955
  %conv14 = zext i32 %15 to i64, !dbg !4955
  %and15 = and i64 %conv14, -536870913, !dbg !4955
  %conv16 = trunc i64 %and15 to i32, !dbg !4955
  store i32 %conv16, i32* %cntrl, align 4, !dbg !4955
  %16 = load i32, i32* %cntrl, align 4, !dbg !4956
  %17 = load %struct.db2k_private*, %struct.db2k_private** %devpriv, align 8, !dbg !4957
  %plx17 = getelementptr inbounds %struct.db2k_private, %struct.db2k_private* %17, i32 0, i32 0, !dbg !4958
  %18 = load i8*, i8** %plx17, align 8, !dbg !4958
  %add.ptr18 = getelementptr i8, i8* %18, i64 108, !dbg !4959
  call void @writel(i32 %16, i8* %add.ptr18) #5, !dbg !4960
  call void @llvm.dbg.declare(metadata i64* %__ms19, metadata !4961, metadata !DIExpression()), !dbg !4963
  store i64 10, i64* %__ms19, align 8, !dbg !4963
  br label %while.cond20, !dbg !4963

while.cond20:                                     ; preds = %while.body23, %while.end13
  %19 = load i64, i64* %__ms19, align 8, !dbg !4963
  %dec21 = add i64 %19, -1, !dbg !4963
  store i64 %dec21, i64* %__ms19, align 8, !dbg !4963
  %tobool22 = icmp ne i64 %19, 0, !dbg !4963
  br i1 %tobool22, label %while.body23, label %while.end24, !dbg !4963

while.body23:                                     ; preds = %while.cond20
  call void @__const_udelay(i64 4295000) #5, !dbg !4964
  br label %while.cond20, !dbg !4963, !llvm.loop !4969

while.end24:                                      ; preds = %while.cond20
  ret void, !dbg !4970
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @db2k_pulse_prog_pin(%struct.comedi_device* %dev) #2 !dbg !4971 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %devpriv = alloca %struct.db2k_private*, align 8
  %cntrl = alloca i32, align 4
  %__ms = alloca i64, align 8
  %__ms8 = alloca i64, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4972, metadata !DIExpression()), !dbg !4973
  call void @llvm.dbg.declare(metadata %struct.db2k_private** %devpriv, metadata !4974, metadata !DIExpression()), !dbg !4975
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4976
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !4977
  %1 = load i8*, i8** %private, align 8, !dbg !4977
  %2 = bitcast i8* %1 to %struct.db2k_private*, !dbg !4976
  store %struct.db2k_private* %2, %struct.db2k_private** %devpriv, align 8, !dbg !4975
  call void @llvm.dbg.declare(metadata i32* %cntrl, metadata !4978, metadata !DIExpression()), !dbg !4979
  %3 = load %struct.db2k_private*, %struct.db2k_private** %devpriv, align 8, !dbg !4980
  %plx = getelementptr inbounds %struct.db2k_private, %struct.db2k_private* %3, i32 0, i32 0, !dbg !4981
  %4 = load i8*, i8** %plx, align 8, !dbg !4981
  %add.ptr = getelementptr i8, i8* %4, i64 108, !dbg !4982
  %call = call i32 @readl(i8* %add.ptr) #5, !dbg !4983
  store i32 %call, i32* %cntrl, align 4, !dbg !4984
  %5 = load i32, i32* %cntrl, align 4, !dbg !4985
  %conv = zext i32 %5 to i64, !dbg !4985
  %or = or i64 %conv, 65536, !dbg !4985
  %conv1 = trunc i64 %or to i32, !dbg !4985
  store i32 %conv1, i32* %cntrl, align 4, !dbg !4985
  %6 = load i32, i32* %cntrl, align 4, !dbg !4986
  %7 = load %struct.db2k_private*, %struct.db2k_private** %devpriv, align 8, !dbg !4987
  %plx2 = getelementptr inbounds %struct.db2k_private, %struct.db2k_private* %7, i32 0, i32 0, !dbg !4988
  %8 = load i8*, i8** %plx2, align 8, !dbg !4988
  %add.ptr3 = getelementptr i8, i8* %8, i64 108, !dbg !4989
  call void @writel(i32 %6, i8* %add.ptr3) #5, !dbg !4990
  call void @llvm.dbg.declare(metadata i64* %__ms, metadata !4991, metadata !DIExpression()), !dbg !4993
  store i64 10, i64* %__ms, align 8, !dbg !4993
  br label %while.cond, !dbg !4993

while.cond:                                       ; preds = %while.body, %entry
  %9 = load i64, i64* %__ms, align 8, !dbg !4993
  %dec = add i64 %9, -1, !dbg !4993
  store i64 %dec, i64* %__ms, align 8, !dbg !4993
  %tobool = icmp ne i64 %9, 0, !dbg !4993
  br i1 %tobool, label %while.body, label %while.end, !dbg !4993

while.body:                                       ; preds = %while.cond
  call void @__const_udelay(i64 4295000) #5, !dbg !4994
  br label %while.cond, !dbg !4993, !llvm.loop !4999

while.end:                                        ; preds = %while.cond
  %10 = load i32, i32* %cntrl, align 4, !dbg !5000
  %conv4 = zext i32 %10 to i64, !dbg !5000
  %and = and i64 %conv4, -65537, !dbg !5000
  %conv5 = trunc i64 %and to i32, !dbg !5000
  store i32 %conv5, i32* %cntrl, align 4, !dbg !5000
  %11 = load i32, i32* %cntrl, align 4, !dbg !5001
  %12 = load %struct.db2k_private*, %struct.db2k_private** %devpriv, align 8, !dbg !5002
  %plx6 = getelementptr inbounds %struct.db2k_private, %struct.db2k_private* %12, i32 0, i32 0, !dbg !5003
  %13 = load i8*, i8** %plx6, align 8, !dbg !5003
  %add.ptr7 = getelementptr i8, i8* %13, i64 108, !dbg !5004
  call void @writel(i32 %11, i8* %add.ptr7) #5, !dbg !5005
  call void @llvm.dbg.declare(metadata i64* %__ms8, metadata !5006, metadata !DIExpression()), !dbg !5008
  store i64 10, i64* %__ms8, align 8, !dbg !5008
  br label %while.cond9, !dbg !5008

while.cond9:                                      ; preds = %while.body12, %while.end
  %14 = load i64, i64* %__ms8, align 8, !dbg !5008
  %dec10 = add i64 %14, -1, !dbg !5008
  store i64 %dec10, i64* %__ms8, align 8, !dbg !5008
  %tobool11 = icmp ne i64 %14, 0, !dbg !5008
  br i1 %tobool11, label %while.body12, label %while.end13, !dbg !5008

while.body12:                                     ; preds = %while.cond9
  call void @__const_udelay(i64 4295000) #5, !dbg !5009
  br label %while.cond9, !dbg !5008, !llvm.loop !5014

while.end13:                                      ; preds = %while.cond9
  ret void, !dbg !5015
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @db2k_wait_cpld_init(%struct.comedi_device* %dev) #2 !dbg !5016 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %result = alloca i32, align 4
  %i = alloca i32, align 4
  %cpld = alloca i16, align 2
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5017, metadata !DIExpression()), !dbg !5018
  call void @llvm.dbg.declare(metadata i32* %result, metadata !5019, metadata !DIExpression()), !dbg !5020
  store i32 -110, i32* %result, align 4, !dbg !5020
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5021, metadata !DIExpression()), !dbg !5022
  call void @llvm.dbg.declare(metadata i16* %cpld, metadata !5023, metadata !DIExpression()), !dbg !5024
  store i32 0, i32* %i, align 4, !dbg !5025
  br label %for.cond, !dbg !5027

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !5028
  %cmp = icmp slt i32 %0, 50, !dbg !5030
  br i1 %cmp, label %for.body, label %for.end, !dbg !5031

for.body:                                         ; preds = %for.cond
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5032
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %1, i32 0, i32 17, !dbg !5034
  %2 = load i8*, i8** %mmio, align 8, !dbg !5034
  %add.ptr = getelementptr i8, i8* %2, i64 4096, !dbg !5035
  %call = call zeroext i16 @readw(i8* %add.ptr) #5, !dbg !5036
  store i16 %call, i16* %cpld, align 2, !dbg !5037
  %3 = load i16, i16* %cpld, align 2, !dbg !5038
  %conv = zext i16 %3 to i32, !dbg !5038
  %and = and i32 %conv, 2, !dbg !5040
  %tobool = icmp ne i32 %and, 0, !dbg !5040
  br i1 %tobool, label %if.then, label %if.end, !dbg !5041

if.then:                                          ; preds = %for.body
  store i32 0, i32* %result, align 4, !dbg !5042
  br label %for.end, !dbg !5044

if.end:                                           ; preds = %for.body
  call void @usleep_range(i64 100, i64 1000) #5, !dbg !5045
  br label %for.inc, !dbg !5046

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %i, align 4, !dbg !5047
  %inc = add i32 %4, 1, !dbg !5047
  store i32 %inc, i32* %i, align 4, !dbg !5047
  br label %for.cond, !dbg !5048, !llvm.loop !5049

for.end:                                          ; preds = %if.then, %for.cond
  call void @__const_udelay(i64 21475) #5, !dbg !5051
  %5 = load i32, i32* %result, align 4, !dbg !5056
  ret i32 %5, !dbg !5057
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @readw(i8* %addr) #2 !dbg !5058 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i16, align 2
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5061, metadata !DIExpression()), !dbg !5062
  call void @llvm.dbg.declare(metadata i16* %ret, metadata !5063, metadata !DIExpression()), !dbg !5062
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !5062
  %1 = bitcast i8* %0 to i16*, !dbg !5062
  %2 = call i16 asm sideeffect "movw $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i16* %1) #7, !dbg !5062, !srcloc !5064
  store i16 %2, i16* %ret, align 2, !dbg !5062
  %3 = load i16, i16* %ret, align 2, !dbg !5062
  ret i16 %3, !dbg !5062
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @db2k_write_cpld(%struct.comedi_device* %dev, i16 zeroext %data, i1 zeroext %new_cpld) #2 !dbg !5065 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %data.addr = alloca i16, align 2
  %new_cpld.addr = alloca i8, align 1
  %result = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5068, metadata !DIExpression()), !dbg !5069
  store i16 %data, i16* %data.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %data.addr, metadata !5070, metadata !DIExpression()), !dbg !5071
  %frombool = zext i1 %new_cpld to i8
  store i8 %frombool, i8* %new_cpld.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %new_cpld.addr, metadata !5072, metadata !DIExpression()), !dbg !5073
  call void @llvm.dbg.declare(metadata i32* %result, metadata !5074, metadata !DIExpression()), !dbg !5075
  store i32 0, i32* %result, align 4, !dbg !5075
  %0 = load i8, i8* %new_cpld.addr, align 1, !dbg !5076
  %tobool = trunc i8 %0 to i1, !dbg !5076
  br i1 %tobool, label %if.then, label %if.else, !dbg !5078

if.then:                                          ; preds = %entry
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5079
  %call = call i32 @db2k_wait_cpld_txready(%struct.comedi_device* %1) #5, !dbg !5081
  store i32 %call, i32* %result, align 4, !dbg !5082
  %2 = load i32, i32* %result, align 4, !dbg !5083
  %tobool1 = icmp ne i32 %2, 0, !dbg !5083
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !5085

if.then2:                                         ; preds = %if.then
  %3 = load i32, i32* %result, align 4, !dbg !5086
  store i32 %3, i32* %retval, align 4, !dbg !5087
  br label %return, !dbg !5087

if.end:                                           ; preds = %if.then
  br label %if.end3, !dbg !5088

if.else:                                          ; preds = %entry
  call void @usleep_range(i64 10, i64 20) #5, !dbg !5089
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.end
  %4 = load i16, i16* %data.addr, align 2, !dbg !5091
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5092
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 17, !dbg !5093
  %6 = load i8*, i8** %mmio, align 8, !dbg !5093
  %add.ptr = getelementptr i8, i8* %6, i64 4096, !dbg !5094
  call void @writew(i16 zeroext %4, i8* %add.ptr) #5, !dbg !5095
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5096
  %mmio4 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 17, !dbg !5098
  %8 = load i8*, i8** %mmio4, align 8, !dbg !5098
  %add.ptr5 = getelementptr i8, i8* %8, i64 4096, !dbg !5099
  %call6 = call zeroext i16 @readw(i8* %add.ptr5) #5, !dbg !5100
  %conv = zext i16 %call6 to i32, !dbg !5100
  %and = and i32 %conv, 2, !dbg !5101
  %tobool7 = icmp ne i32 %and, 0, !dbg !5101
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !5102

if.then8:                                         ; preds = %if.end3
  store i32 -5, i32* %result, align 4, !dbg !5103
  br label %if.end9, !dbg !5104

if.end9:                                          ; preds = %if.then8, %if.end3
  %9 = load i32, i32* %result, align 4, !dbg !5105
  store i32 %9, i32* %retval, align 4, !dbg !5106
  br label %return, !dbg !5106

return:                                           ; preds = %if.end9, %if.then2
  %10 = load i32, i32* %retval, align 4, !dbg !5107
  ret i32 %10, !dbg !5107
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @db2k_wait_fpga_programmed(%struct.comedi_device* %dev) #2 !dbg !5108 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %devpriv = alloca %struct.db2k_private*, align 8
  %i = alloca i32, align 4
  %cntrl = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5109, metadata !DIExpression()), !dbg !5110
  call void @llvm.dbg.declare(metadata %struct.db2k_private** %devpriv, metadata !5111, metadata !DIExpression()), !dbg !5112
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5113
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5114
  %1 = load i8*, i8** %private, align 8, !dbg !5114
  %2 = bitcast i8* %1 to %struct.db2k_private*, !dbg !5113
  store %struct.db2k_private* %2, %struct.db2k_private** %devpriv, align 8, !dbg !5112
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5115, metadata !DIExpression()), !dbg !5116
  store i32 0, i32* %i, align 4, !dbg !5117
  br label %for.cond, !dbg !5119

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !dbg !5120
  %cmp = icmp slt i32 %3, 200, !dbg !5122
  br i1 %cmp, label %for.body, label %for.end, !dbg !5123

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %cntrl, metadata !5124, metadata !DIExpression()), !dbg !5126
  %4 = load %struct.db2k_private*, %struct.db2k_private** %devpriv, align 8, !dbg !5127
  %plx = getelementptr inbounds %struct.db2k_private, %struct.db2k_private* %4, i32 0, i32 0, !dbg !5128
  %5 = load i8*, i8** %plx, align 8, !dbg !5128
  %add.ptr = getelementptr i8, i8* %5, i64 108, !dbg !5129
  %call = call i32 @readl(i8* %add.ptr) #5, !dbg !5130
  store i32 %call, i32* %cntrl, align 4, !dbg !5126
  %6 = load i32, i32* %cntrl, align 4, !dbg !5131
  %conv = zext i32 %6 to i64, !dbg !5131
  %and = and i64 %conv, 131072, !dbg !5133
  %tobool = icmp ne i64 %and, 0, !dbg !5133
  br i1 %tobool, label %if.then, label %if.end, !dbg !5134

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval, align 4, !dbg !5135
  br label %return, !dbg !5135

if.end:                                           ; preds = %for.body
  call void @usleep_range(i64 100, i64 1000) #5, !dbg !5136
  br label %for.inc, !dbg !5137

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4, !dbg !5138
  %inc = add i32 %7, 1, !dbg !5138
  store i32 %inc, i32* %i, align 4, !dbg !5138
  br label %for.cond, !dbg !5139, !llvm.loop !5140

for.end:                                          ; preds = %for.cond
  store i32 -110, i32* %retval, align 4, !dbg !5142
  br label %return, !dbg !5142

return:                                           ; preds = %for.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !5143
  ret i32 %8, !dbg !5143
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writel(i32 %val, i8* %addr) #2 !dbg !5144 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5148, metadata !DIExpression()), !dbg !5149
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5150, metadata !DIExpression()), !dbg !5149
  %0 = load i32, i32* %val.addr, align 4, !dbg !5149
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !5149
  %2 = bitcast i8* %1 to i32*, !dbg !5149
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #7, !dbg !5149, !srcloc !5151
  ret void, !dbg !5149
}

; Function Attrs: noredzone
declare dso_local void @__const_udelay(i64) #1

; Function Attrs: noredzone
declare dso_local void @usleep_range(i64, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @db2k_wait_cpld_txready(%struct.comedi_device* %dev) #2 !dbg !5152 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %i = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5153, metadata !DIExpression()), !dbg !5154
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5155, metadata !DIExpression()), !dbg !5156
  store i32 0, i32* %i, align 4, !dbg !5157
  br label %for.cond, !dbg !5159

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !5160
  %cmp = icmp slt i32 %0, 100, !dbg !5162
  br i1 %cmp, label %for.body, label %for.end, !dbg !5163

for.body:                                         ; preds = %for.cond
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5164
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %1, i32 0, i32 17, !dbg !5167
  %2 = load i8*, i8** %mmio, align 8, !dbg !5167
  %add.ptr = getelementptr i8, i8* %2, i64 4096, !dbg !5168
  %call = call zeroext i16 @readw(i8* %add.ptr) #5, !dbg !5169
  %conv = zext i16 %call to i32, !dbg !5169
  %and = and i32 %conv, 4, !dbg !5170
  %tobool = icmp ne i32 %and, 0, !dbg !5170
  br i1 %tobool, label %if.then, label %if.end, !dbg !5171

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval, align 4, !dbg !5172
  br label %return, !dbg !5172

if.end:                                           ; preds = %for.body
  call void @__const_udelay(i64 4295) #5, !dbg !5174
  br label %for.inc, !dbg !5179

for.inc:                                          ; preds = %if.end
  %3 = load i32, i32* %i, align 4, !dbg !5180
  %inc = add i32 %3, 1, !dbg !5180
  store i32 %inc, i32* %i, align 4, !dbg !5180
  br label %for.cond, !dbg !5181, !llvm.loop !5182

for.end:                                          ; preds = %for.cond
  store i32 -110, i32* %retval, align 4, !dbg !5184
  br label %return, !dbg !5184

return:                                           ; preds = %for.end, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !5185
  ret i32 %4, !dbg !5185
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writew(i16 zeroext %val, i8* %addr) #2 !dbg !5186 {
entry:
  %val.addr = alloca i16, align 2
  %addr.addr = alloca i8*, align 8
  store i16 %val, i16* %val.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %val.addr, metadata !5189, metadata !DIExpression()), !dbg !5190
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5191, metadata !DIExpression()), !dbg !5190
  %0 = load i16, i16* %val.addr, align 2, !dbg !5190
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !5190
  %2 = bitcast i8* %1 to i16*, !dbg !5190
  call void asm sideeffect "movw $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i16 %0, i16* %2) #7, !dbg !5190, !srcloc !5192
  ret void, !dbg !5190
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @db2k_adc_disarm(%struct.comedi_device* %dev) #2 !dbg !5193 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5194, metadata !DIExpression()), !dbg !5195
  call void @__const_udelay(i64 8590) #5, !dbg !5196
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5201
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 17, !dbg !5202
  %1 = load i8*, i8** %mmio, align 8, !dbg !5202
  %add.ptr = getelementptr i8, i8* %1, i64 178, !dbg !5203
  call void @writew(i16 zeroext 0, i8* %add.ptr) #5, !dbg !5204
  call void @__const_udelay(i64 8590) #5, !dbg !5205
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5210
  %mmio1 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %2, i32 0, i32 17, !dbg !5211
  %3 = load i8*, i8** %mmio1, align 8, !dbg !5211
  %add.ptr2 = getelementptr i8, i8* %3, i64 178, !dbg !5212
  call void @writew(i16 zeroext 16, i8* %add.ptr2) #5, !dbg !5213
  call void @__const_udelay(i64 8590) #5, !dbg !5214
  %4 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5219
  %mmio3 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 17, !dbg !5220
  %5 = load i8*, i8** %mmio3, align 8, !dbg !5220
  %add.ptr4 = getelementptr i8, i8* %5, i64 0, !dbg !5221
  call void @writew(i16 zeroext 16, i8* %add.ptr4) #5, !dbg !5222
  call void @__const_udelay(i64 8590) #5, !dbg !5223
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5228
  %mmio5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 17, !dbg !5229
  %7 = load i8*, i8** %mmio5, align 8, !dbg !5229
  %add.ptr6 = getelementptr i8, i8* %7, i64 0, !dbg !5230
  call void @writew(i16 zeroext 48, i8* %add.ptr6) #5, !dbg !5231
  %8 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5232
  call void @db2k_adc_stop_dma_transfer(%struct.comedi_device* %8) #5, !dbg !5233
  ret void, !dbg !5234
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @db2k_activate_reference_dacs(%struct.comedi_device* %dev) #2 !dbg !5235 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %val = alloca i32, align 4
  %timeout = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5236, metadata !DIExpression()), !dbg !5237
  call void @llvm.dbg.declare(metadata i32* %val, metadata !5238, metadata !DIExpression()), !dbg !5239
  call void @llvm.dbg.declare(metadata i32* %timeout, metadata !5240, metadata !DIExpression()), !dbg !5241
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5242
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 17, !dbg !5243
  %1 = load i8*, i8** %mmio, align 8, !dbg !5243
  %add.ptr = getelementptr i8, i8* %1, i64 44, !dbg !5244
  call void @writew(i16 zeroext 384, i8* %add.ptr) #5, !dbg !5245
  store i32 0, i32* %timeout, align 4, !dbg !5246
  br label %for.cond, !dbg !5248

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %timeout, align 4, !dbg !5249
  %cmp = icmp slt i32 %2, 20, !dbg !5251
  br i1 %cmp, label %for.body, label %for.end, !dbg !5252

for.body:                                         ; preds = %for.cond
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5253
  %mmio1 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %3, i32 0, i32 17, !dbg !5255
  %4 = load i8*, i8** %mmio1, align 8, !dbg !5255
  %add.ptr2 = getelementptr i8, i8* %4, i64 32, !dbg !5256
  %call = call zeroext i16 @readw(i8* %add.ptr2) #5, !dbg !5257
  %conv = zext i16 %call to i32, !dbg !5257
  store i32 %conv, i32* %val, align 4, !dbg !5258
  %5 = load i32, i32* %val, align 4, !dbg !5259
  %and = and i32 %5, 2, !dbg !5261
  %cmp3 = icmp eq i32 %and, 0, !dbg !5262
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5263

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !5264

if.end:                                           ; preds = %for.body
  call void @__const_udelay(i64 8590) #5, !dbg !5265
  br label %for.inc, !dbg !5270

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %timeout, align 4, !dbg !5271
  %inc = add i32 %6, 1, !dbg !5271
  store i32 %inc, i32* %timeout, align 4, !dbg !5271
  br label %for.cond, !dbg !5272, !llvm.loop !5273

for.end:                                          ; preds = %if.then, %for.cond
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5275
  %mmio5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 17, !dbg !5276
  %8 = load i8*, i8** %mmio5, align 8, !dbg !5276
  %add.ptr6 = getelementptr i8, i8* %8, i64 44, !dbg !5277
  call void @writew(i16 zeroext 128, i8* %add.ptr6) #5, !dbg !5278
  store i32 0, i32* %timeout, align 4, !dbg !5279
  br label %for.cond7, !dbg !5281

for.cond7:                                        ; preds = %for.inc20, %for.end
  %9 = load i32, i32* %timeout, align 4, !dbg !5282
  %cmp8 = icmp slt i32 %9, 20, !dbg !5284
  br i1 %cmp8, label %for.body10, label %for.end22, !dbg !5285

for.body10:                                       ; preds = %for.cond7
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5286
  %mmio11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 17, !dbg !5288
  %11 = load i8*, i8** %mmio11, align 8, !dbg !5288
  %add.ptr12 = getelementptr i8, i8* %11, i64 32, !dbg !5289
  %call13 = call zeroext i16 @readw(i8* %add.ptr12) #5, !dbg !5290
  %conv14 = zext i16 %call13 to i32, !dbg !5290
  store i32 %conv14, i32* %val, align 4, !dbg !5291
  %12 = load i32, i32* %val, align 4, !dbg !5292
  %and15 = and i32 %12, 2, !dbg !5294
  %cmp16 = icmp eq i32 %and15, 0, !dbg !5295
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !5296

if.then18:                                        ; preds = %for.body10
  br label %for.end22, !dbg !5297

if.end19:                                         ; preds = %for.body10
  call void @__const_udelay(i64 8590) #5, !dbg !5298
  br label %for.inc20, !dbg !5303

for.inc20:                                        ; preds = %if.end19
  %13 = load i32, i32* %timeout, align 4, !dbg !5304
  %inc21 = add i32 %13, 1, !dbg !5304
  store i32 %inc21, i32* %timeout, align 4, !dbg !5304
  br label %for.cond7, !dbg !5305, !llvm.loop !5306

for.end22:                                        ; preds = %if.then18, %for.cond7
  ret void, !dbg !5308
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @db2k_initialize_ctrs(%struct.comedi_device* %dev) #2 !dbg !5309 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5310, metadata !DIExpression()), !dbg !5311
  ret void, !dbg !5312
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @db2k_initialize_tmrs(%struct.comedi_device* %dev) #2 !dbg !5313 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5314, metadata !DIExpression()), !dbg !5315
  ret void, !dbg !5316
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @db2k_adc_stop_dma_transfer(%struct.comedi_device* %dev) #2 !dbg !5317 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5318, metadata !DIExpression()), !dbg !5319
  ret void, !dbg !5320
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @db2k_setup_sampling(%struct.comedi_device* %dev, i32 %chan, i32 %gain) #2 !dbg !5321 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %chan.addr = alloca i32, align 4
  %gain.addr = alloca i32, align 4
  %word0 = alloca i16, align 2
  %word1 = alloca i16, align 2
  %word2 = alloca i16, align 2
  %word3 = alloca i16, align 2
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5324, metadata !DIExpression()), !dbg !5325
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !5326, metadata !DIExpression()), !dbg !5327
  store i32 %gain, i32* %gain.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gain.addr, metadata !5328, metadata !DIExpression()), !dbg !5329
  call void @llvm.dbg.declare(metadata i16* %word0, metadata !5330, metadata !DIExpression()), !dbg !5331
  call void @llvm.dbg.declare(metadata i16* %word1, metadata !5332, metadata !DIExpression()), !dbg !5333
  call void @llvm.dbg.declare(metadata i16* %word2, metadata !5334, metadata !DIExpression()), !dbg !5335
  call void @llvm.dbg.declare(metadata i16* %word3, metadata !5336, metadata !DIExpression()), !dbg !5337
  store i16 0, i16* %word0, align 2, !dbg !5338
  store i16 4, i16* %word1, align 2, !dbg !5339
  %0 = load i32, i32* %chan.addr, align 4, !dbg !5340
  %shl = shl i32 %0, 6, !dbg !5341
  %and = and i32 %shl, 192, !dbg !5342
  %conv = trunc i32 %and to i16, !dbg !5343
  store i16 %conv, i16* %word2, align 2, !dbg !5344
  %1 = load i32, i32* %chan.addr, align 4, !dbg !5345
  %div = sdiv i32 %1, 4, !dbg !5346
  switch i32 %div, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
    i32 5, label %sw.bb5
  ], !dbg !5347

sw.bb:                                            ; preds = %entry
  store i16 1, i16* %word3, align 2, !dbg !5348
  br label %sw.epilog, !dbg !5350

sw.bb1:                                           ; preds = %entry
  store i16 2, i16* %word3, align 2, !dbg !5351
  br label %sw.epilog, !dbg !5352

sw.bb2:                                           ; preds = %entry
  store i16 5, i16* %word3, align 2, !dbg !5353
  br label %sw.epilog, !dbg !5354

sw.bb3:                                           ; preds = %entry
  store i16 6, i16* %word3, align 2, !dbg !5355
  br label %sw.epilog, !dbg !5356

sw.bb4:                                           ; preds = %entry
  store i16 65, i16* %word3, align 2, !dbg !5357
  br label %sw.epilog, !dbg !5358

sw.bb5:                                           ; preds = %entry
  store i16 66, i16* %word3, align 2, !dbg !5359
  br label %sw.epilog, !dbg !5360

sw.default:                                       ; preds = %entry
  store i16 0, i16* %word3, align 2, !dbg !5361
  br label %sw.epilog, !dbg !5362

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %2 = load i16, i16* %word2, align 2, !dbg !5363
  %conv6 = zext i16 %2 to i32, !dbg !5363
  %or = or i32 %conv6, 2048, !dbg !5363
  %conv7 = trunc i32 %or to i16, !dbg !5363
  store i16 %conv7, i16* %word2, align 2, !dbg !5363
  %3 = load i16, i16* %word3, align 2, !dbg !5364
  %conv8 = zext i16 %3 to i32, !dbg !5364
  %or9 = or i32 %conv8, 49152, !dbg !5364
  %conv10 = trunc i32 %or9 to i16, !dbg !5364
  store i16 %conv10, i16* %word3, align 2, !dbg !5364
  %4 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5365
  %5 = load i16, i16* %word0, align 2, !dbg !5366
  call void @db2k_write_acq_scan_list_entry(%struct.comedi_device* %4, i16 zeroext %5) #5, !dbg !5367
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5368
  %7 = load i16, i16* %word1, align 2, !dbg !5369
  call void @db2k_write_acq_scan_list_entry(%struct.comedi_device* %6, i16 zeroext %7) #5, !dbg !5370
  %8 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5371
  %9 = load i16, i16* %word2, align 2, !dbg !5372
  call void @db2k_write_acq_scan_list_entry(%struct.comedi_device* %8, i16 zeroext %9) #5, !dbg !5373
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5374
  %11 = load i16, i16* %word3, align 2, !dbg !5375
  call void @db2k_write_acq_scan_list_entry(%struct.comedi_device* %10, i16 zeroext %11) #5, !dbg !5376
  ret void, !dbg !5377
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_timeout(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i64)*, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @db2k_ai_status(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i64 %context) #2 !dbg !5378 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %context.addr = alloca i64, align 8
  %status = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5381, metadata !DIExpression()), !dbg !5382
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5383, metadata !DIExpression()), !dbg !5384
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5385, metadata !DIExpression()), !dbg !5386
  store i64 %context, i64* %context.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %context.addr, metadata !5387, metadata !DIExpression()), !dbg !5388
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5389, metadata !DIExpression()), !dbg !5390
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5391
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 17, !dbg !5392
  %1 = load i8*, i8** %mmio, align 8, !dbg !5392
  %add.ptr = getelementptr i8, i8* %1, i64 0, !dbg !5393
  %call = call zeroext i16 @readw(i8* %add.ptr) #5, !dbg !5394
  %conv = zext i16 %call to i32, !dbg !5394
  store i32 %conv, i32* %status, align 4, !dbg !5395
  %2 = load i32, i32* %status, align 4, !dbg !5396
  %conv1 = zext i32 %2 to i64, !dbg !5396
  %3 = load i64, i64* %context.addr, align 8, !dbg !5398
  %and = and i64 %conv1, %3, !dbg !5399
  %tobool = icmp ne i64 %and, 0, !dbg !5399
  br i1 %tobool, label %if.then, label %if.end, !dbg !5400

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5401
  br label %return, !dbg !5401

if.end:                                           ; preds = %entry
  store i32 -16, i32* %retval, align 4, !dbg !5402
  br label %return, !dbg !5402

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !5403
  ret i32 %4, !dbg !5403
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @db2k_write_acq_scan_list_entry(%struct.comedi_device* %dev, i16 zeroext %entry1) #2 !dbg !5404 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %entry.addr = alloca i16, align 2
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5407, metadata !DIExpression()), !dbg !5408
  store i16 %entry1, i16* %entry.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %entry.addr, metadata !5409, metadata !DIExpression()), !dbg !5410
  %0 = load i16, i16* %entry.addr, align 2, !dbg !5411
  %conv = zext i16 %0 to i32, !dbg !5411
  %and = and i32 %conv, 255, !dbg !5412
  %conv2 = trunc i32 %and to i16, !dbg !5411
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5413
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %1, i32 0, i32 17, !dbg !5414
  %2 = load i8*, i8** %mmio, align 8, !dbg !5414
  %add.ptr = getelementptr i8, i8* %2, i64 2, !dbg !5415
  call void @writew(i16 zeroext %conv2, i8* %add.ptr) #5, !dbg !5416
  %3 = load i16, i16* %entry.addr, align 2, !dbg !5417
  %conv3 = zext i16 %3 to i32, !dbg !5417
  %shr = ashr i32 %conv3, 8, !dbg !5418
  %and4 = and i32 %shr, 255, !dbg !5419
  %conv5 = trunc i32 %and4 to i16, !dbg !5420
  %4 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5421
  %mmio6 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 17, !dbg !5422
  %5 = load i8*, i8** %mmio6, align 8, !dbg !5422
  %add.ptr7 = getelementptr i8, i8* %5, i64 2, !dbg !5423
  call void @writew(i16 zeroext %conv5, i8* %add.ptr7) #5, !dbg !5424
  ret void, !dbg !5425
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @db2k_ao_eoc(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i64 %context) #2 !dbg !5426 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %context.addr = alloca i64, align 8
  %chan = alloca i32, align 4
  %status = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5427, metadata !DIExpression()), !dbg !5428
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5429, metadata !DIExpression()), !dbg !5430
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5431, metadata !DIExpression()), !dbg !5432
  store i64 %context, i64* %context.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %context.addr, metadata !5433, metadata !DIExpression()), !dbg !5434
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !5435, metadata !DIExpression()), !dbg !5436
  %0 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5437
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %0, i32 0, i32 4, !dbg !5437
  %1 = load i32, i32* %chanspec, align 4, !dbg !5437
  %and = and i32 %1, 65535, !dbg !5437
  store i32 %and, i32* %chan, align 4, !dbg !5436
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5438, metadata !DIExpression()), !dbg !5439
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5440
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %2, i32 0, i32 17, !dbg !5441
  %3 = load i8*, i8** %mmio, align 8, !dbg !5441
  %add.ptr = getelementptr i8, i8* %3, i64 32, !dbg !5442
  %call = call zeroext i16 @readw(i8* %add.ptr) #5, !dbg !5443
  %conv = zext i16 %call to i32, !dbg !5443
  store i32 %conv, i32* %status, align 4, !dbg !5444
  %4 = load i32, i32* %status, align 4, !dbg !5445
  %5 = load i32, i32* %chan, align 4, !dbg !5447
  %shl = shl i32 16, %5, !dbg !5447
  %and1 = and i32 %4, %shl, !dbg !5448
  %cmp = icmp eq i32 %and1, 0, !dbg !5449
  br i1 %cmp, label %if.then, label %if.end, !dbg !5450

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5451
  br label %return, !dbg !5451

if.end:                                           ; preds = %entry
  store i32 -16, i32* %retval, align 4, !dbg !5452
  br label %return, !dbg !5452

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !5453
  ret i32 %6, !dbg !5453
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @db2k_pci_probe(%struct.pci_dev* %dev, %struct.pci_device_id* %id) #2 !dbg !5454 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %id.addr = alloca %struct.pci_device_id*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5455, metadata !DIExpression()), !dbg !5456
  store %struct.pci_device_id* %id, %struct.pci_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_device_id** %id.addr, metadata !5457, metadata !DIExpression()), !dbg !5458
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5459
  %1 = load %struct.pci_device_id*, %struct.pci_device_id** %id.addr, align 8, !dbg !5460
  %driver_data = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %1, i32 0, i32 6, !dbg !5461
  %2 = load i64, i64* %driver_data, align 8, !dbg !5461
  %call = call i32 @comedi_pci_auto_config(%struct.pci_dev* %0, %struct.comedi_driver* @db2k_driver, i64 %2) #5, !dbg !5462
  ret i32 %call, !dbg !5463
}

; Function Attrs: noredzone
declare dso_local void @comedi_pci_auto_unconfig(%struct.pci_dev*) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_pci_auto_config(%struct.pci_dev*, %struct.comedi_driver*, i64) #1

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone }
attributes #6 = { cold noredzone }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4272, !4273, !4274, !4275}
!llvm.ident = !{!4276}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_db2k_driver_init234", scope: !2, file: !3, line: 782, type: !184, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !116, globals: !123, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/staging/comedi/drivers/daqboard2000.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !100}
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
!116 = !{!117, !118, !120}
!117 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !122)
!122 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!123 = !{!0, !124, !131, !138, !143, !148, !153, !158, !3980, !3988, !3990, !4269}
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(name: "__exitcall_db2k_driver_exit", scope: !2, file: !3, line: 782, type: !126, isLocal: true, isDefinition: true)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !127, line: 117, baseType: !128)
!127 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DISubroutineType(types: !130)
!130 = !{null}
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author235", scope: !2, file: !3, line: 784, type: !133, isLocal: true, isDefinition: true, align: 8)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 400, elements: !136)
!134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!135 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!136 = !{!137}
!137 = !DISubrange(count: 50)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description236", scope: !2, file: !3, line: 785, type: !140, isLocal: true, isDefinition: true, align: 8)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 392, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 49)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file237", scope: !2, file: !3, line: 786, type: !145, isLocal: true, isDefinition: true, align: 8)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 496, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 62)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license238", scope: !2, file: !3, line: 786, type: !150, isLocal: true, isDefinition: true, align: 8)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 200, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 25)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_firmware239", scope: !2, file: !3, line: 787, type: !155, isLocal: true, isDefinition: true, align: 8)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 384, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 48)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "db2k_driver", scope: !2, file: !3, line: 755, type: !160, isLocal: true, isDefinition: true)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_driver", file: !161, line: 437, size: 576, elements: !162)
!161 = !DIFile(filename: "drivers/staging/comedi/drivers/../comedidev.h", directory: "/home/lizy2001/genbc/linux")
!162 = !{!163, !165, !167, !171, !3970, !3971, !3975, !3976, !3979}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !160, file: !161, line: 439, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !160, file: !161, line: 441, baseType: !166, size: 64, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !160, file: !161, line: 442, baseType: !168, size: 64, offset: 128)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !170, line: 76, flags: DIFlagFwdDecl)
!170 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!171 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !160, file: !161, line: 443, baseType: !172, size: 64, offset: 192)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DISubroutineType(types: !174)
!174 = !{!117, !175, !3963}
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_device", file: !161, line: 541, size: 1920, elements: !177)
!177 = !{!178, !179, !180, !183, !185, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3951, !3955, !3959}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !176, file: !161, line: 542, baseType: !117, size: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !176, file: !161, line: 543, baseType: !164, size: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "pacer", scope: !176, file: !161, line: 544, baseType: !181, size: 64, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_8254", file: !161, line: 544, flags: DIFlagFwdDecl)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !176, file: !161, line: 545, baseType: !184, size: 64, offset: 192)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !176, file: !161, line: 547, baseType: !186, size: 64, offset: 256)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !188)
!188 = !{!189, !3348, !3349, !3352, !3353, !3404, !3495, !3496, !3497, !3498, !3499, !3508, !3613, !3626, !3629, !3630, !3634, !3636, !3637, !3638, !3642, !3648, !3649, !3652, !3656, !3746, !3747, !3748, !3749, !3750, !3782, !3783, !3784, !3787, !3790, !3791, !3792, !3793}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !187, file: !73, line: 462, baseType: !190, size: 512)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !191, line: 64, size: 512, elements: !192)
!191 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!192 = !{!193, !194, !201, !203, !263, !3199, !3338, !3343, !3344, !3345, !3346, !3347}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !190, file: !191, line: 65, baseType: !166, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !190, file: !191, line: 66, baseType: !195, size: 128, offset: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !196, line: 178, size: 128, elements: !197)
!196 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!197 = !{!198, !200}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !195, file: !196, line: 179, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !195, file: !196, line: 179, baseType: !199, size: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !190, file: !191, line: 67, baseType: !202, size: 64, offset: 192)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !190, file: !191, line: 68, baseType: !204, size: 64, offset: 256)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !191, line: 192, size: 704, elements: !206)
!206 = !{!207, !208, !224, !225}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !205, file: !191, line: 193, baseType: !195, size: 128)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !205, file: !191, line: 194, baseType: !209, offset: 128)
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
!224 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !205, file: !191, line: 195, baseType: !190, size: 512, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !205, file: !191, line: 196, baseType: !226, size: 64, offset: 640)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !191, line: 156, size: 192, elements: !229)
!229 = !{!230, !235, !240}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !228, file: !191, line: 157, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!117, !204, !202}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !228, file: !191, line: 158, baseType: !236, size: 64, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!166, !204, !202}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !228, file: !191, line: 159, baseType: !241, size: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{!117, !204, !202, !245}
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !191, line: 148, size: 20736, elements: !247)
!247 = !{!248, !253, !257, !258, !262}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !246, file: !191, line: 149, baseType: !249, size: 192)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 192, elements: !251)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!251 = !{!252}
!252 = !DISubrange(count: 3)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !246, file: !191, line: 150, baseType: !254, size: 4096, offset: 192)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 4096, elements: !255)
!255 = !{!256}
!256 = !DISubrange(count: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !246, file: !191, line: 151, baseType: !117, size: 32, offset: 4288)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !246, file: !191, line: 152, baseType: !259, size: 16384, offset: 4320)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 16384, elements: !260)
!260 = !{!261}
!261 = !DISubrange(count: 2048)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !246, file: !191, line: 153, baseType: !117, size: 32, offset: 20704)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !190, file: !191, line: 69, baseType: !264, size: 64, offset: 320)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !191, line: 138, size: 448, elements: !266)
!266 = !{!267, !271, !300, !302, !3161, !3189, !3193}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !265, file: !191, line: 139, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{null, !202}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !265, file: !191, line: 140, baseType: !272, size: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !274)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !275, line: 230, size: 128, elements: !276)
!275 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!276 = !{!277, !292}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !274, file: !275, line: 231, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!281, !202, !286, !250}
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !196, line: 60, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !283, line: 73, baseType: !284)
!283 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !283, line: 15, baseType: !285)
!285 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !275, line: 30, size: 128, elements: !288)
!288 = !{!289, !290}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !287, file: !275, line: 31, baseType: !166, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !287, file: !275, line: 32, baseType: !291, size: 16, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !196, line: 19, baseType: !122)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !274, file: !275, line: 232, baseType: !293, size: 64, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!281, !202, !286, !166, !296}
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !196, line: 55, baseType: !297)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !283, line: 72, baseType: !298)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !283, line: 16, baseType: !299)
!299 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !265, file: !191, line: 141, baseType: !301, size: 64, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !265, file: !191, line: 142, baseType: !303, size: 64, offset: 192)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !306)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !275, line: 84, size: 320, elements: !307)
!307 = !{!308, !309, !313, !3158, !3159}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !306, file: !275, line: 85, baseType: !166, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !306, file: !275, line: 86, baseType: !310, size: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!291, !202, !286, !117}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !306, file: !275, line: 88, baseType: !314, size: 64, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{!291, !202, !317, !117}
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !275, line: 168, size: 448, elements: !319)
!319 = !{!320, !321, !322, !323, !3153, !3154}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !318, file: !275, line: 169, baseType: !287, size: 128)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !318, file: !275, line: 170, baseType: !296, size: 64, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !318, file: !275, line: 171, baseType: !184, size: 64, offset: 192)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !318, file: !275, line: 172, baseType: !324, size: 64, offset: 256)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!281, !327, !202, !317, !250, !506, !296}
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !329)
!329 = !{!330, !348, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3136, !3137, !3146, !3147, !3148, !3149, !3150, !3151, !3152}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !328, file: !44, line: 920, baseType: !331, size: 128)
!331 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !328, file: !44, line: 917, size: 128, elements: !332)
!332 = !{!333, !339}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !331, file: !44, line: 918, baseType: !334, size: 64)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !335, line: 58, size: 64, elements: !336)
!335 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!336 = !{!337}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !334, file: !335, line: 59, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !331, file: !44, line: 919, baseType: !340, size: 128, align: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !196, line: 216, size: 128, align: 64, elements: !341)
!341 = !{!342, !344}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !340, file: !196, line: 217, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !340, file: !196, line: 218, baseType: !345, size: 64, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{null, !343}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !328, file: !44, line: 921, baseType: !349, size: 128, offset: 128)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !350, line: 8, size: 128, elements: !351)
!350 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!351 = !{!352, !356}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !349, file: !350, line: 9, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !355, line: 18, flags: DIFlagFwdDecl)
!355 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!356 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !349, file: !350, line: 10, baseType: !357, size: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !355, line: 89, size: 1536, elements: !359)
!359 = !{!360, !361, !371, !379, !380, !403, !3086, !3088, !3100, !3101, !3102, !3103, !3104, !3110, !3111, !3112}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !358, file: !355, line: 91, baseType: !7, size: 32)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !358, file: !355, line: 92, baseType: !362, size: 32, offset: 32)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !363, line: 277, baseType: !364)
!363 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !363, line: 277, size: 32, elements: !365)
!365 = !{!366}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !364, file: !363, line: 277, baseType: !367, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !363, line: 70, baseType: !368)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !363, line: 65, size: 32, elements: !369)
!369 = !{!370}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !368, file: !363, line: 66, baseType: !7, size: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !358, file: !355, line: 93, baseType: !372, size: 128, offset: 64)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !373, line: 38, size: 128, elements: !374)
!373 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!374 = !{!375, !377}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !372, file: !373, line: 39, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !372, file: !373, line: 39, baseType: !378, size: 64, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !358, file: !355, line: 94, baseType: !357, size: 64, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !358, file: !355, line: 95, baseType: !381, size: 128, offset: 256)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !355, line: 47, size: 128, elements: !382)
!382 = !{!383, !399}
!383 = !DIDerivedType(tag: DW_TAG_member, scope: !381, file: !355, line: 48, baseType: !384, size: 64)
!384 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !381, file: !355, line: 48, size: 64, elements: !385)
!385 = !{!386, !395}
!386 = !DIDerivedType(tag: DW_TAG_member, scope: !384, file: !355, line: 49, baseType: !387, size: 64)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !384, file: !355, line: 49, size: 64, elements: !388)
!388 = !{!389, !394}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !387, file: !355, line: 50, baseType: !390, size: 32)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !391, line: 21, baseType: !392)
!391 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !393, line: 27, baseType: !7)
!393 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!394 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !387, file: !355, line: 50, baseType: !390, size: 32, offset: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !384, file: !355, line: 52, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !391, line: 23, baseType: !397)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !393, line: 31, baseType: !398)
!398 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !381, file: !355, line: 54, baseType: !400, size: 64, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !402)
!402 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !358, file: !355, line: 96, baseType: !404, size: 64, offset: 384)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !406)
!406 = !{!407, !408, !409, !417, !424, !425, !573, !2797, !2798, !2799, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !3062, !3070, !3071, !3072, !3082, !3083, !3084, !3085}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !405, file: !44, line: 611, baseType: !291, size: 16)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !405, file: !44, line: 612, baseType: !122, size: 16, offset: 16)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !405, file: !44, line: 613, baseType: !410, size: 32, offset: 32)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !411, line: 23, baseType: !412)
!411 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !411, line: 21, size: 32, elements: !413)
!413 = !{!414}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !412, file: !411, line: 22, baseType: !415, size: 32)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !196, line: 32, baseType: !416)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !283, line: 49, baseType: !7)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !405, file: !44, line: 614, baseType: !418, size: 32, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !411, line: 28, baseType: !419)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !411, line: 26, size: 32, elements: !420)
!420 = !{!421}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !419, file: !411, line: 27, baseType: !422, size: 32)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !196, line: 33, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !283, line: 50, baseType: !7)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !405, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !405, file: !44, line: 622, baseType: !426, size: 64, offset: 128)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !428)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !429)
!429 = !{!430, !434, !447, !451, !457, !461, !467, !471, !475, !479, !483, !484, !490, !494, !520, !549, !553, !559, !564, !568, !569}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !428, file: !44, line: 1865, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{!357, !404, !357, !7}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !428, file: !44, line: 1866, baseType: !435, size: 64, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!166, !357, !404, !438}
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !440, line: 10, size: 128, elements: !441)
!440 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!441 = !{!442, !446}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !439, file: !440, line: 11, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DISubroutineType(types: !445)
!445 = !{null, !184}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !439, file: !440, line: 12, baseType: !184, size: 64, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !428, file: !44, line: 1867, baseType: !448, size: 64, offset: 128)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!117, !404, !117}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !428, file: !44, line: 1868, baseType: !452, size: 64, offset: 192)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!455, !404, !117}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !428, file: !44, line: 1870, baseType: !458, size: 64, offset: 256)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!117, !357, !250, !117}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !428, file: !44, line: 1872, baseType: !462, size: 64, offset: 320)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!117, !404, !357, !291, !465}
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !196, line: 30, baseType: !466)
!466 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !428, file: !44, line: 1873, baseType: !468, size: 64, offset: 384)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!117, !357, !404, !357}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !428, file: !44, line: 1874, baseType: !472, size: 64, offset: 448)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!117, !404, !357}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !428, file: !44, line: 1875, baseType: !476, size: 64, offset: 512)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!117, !404, !357, !166}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !428, file: !44, line: 1876, baseType: !480, size: 64, offset: 576)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!117, !404, !357, !291}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !428, file: !44, line: 1877, baseType: !472, size: 64, offset: 640)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !428, file: !44, line: 1878, baseType: !485, size: 64, offset: 704)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!117, !404, !357, !291, !488}
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !196, line: 16, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !196, line: 13, baseType: !390)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !428, file: !44, line: 1879, baseType: !491, size: 64, offset: 768)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!117, !404, !357, !404, !357, !7}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !428, file: !44, line: 1881, baseType: !495, size: 64, offset: 832)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!117, !357, !498}
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !500)
!500 = !{!501, !502, !503, !504, !505, !509, !517, !518, !519}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !499, file: !44, line: 220, baseType: !7, size: 32)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !499, file: !44, line: 221, baseType: !291, size: 16, offset: 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !499, file: !44, line: 222, baseType: !410, size: 32, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !499, file: !44, line: 223, baseType: !418, size: 32, offset: 96)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !499, file: !44, line: 224, baseType: !506, size: 64, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !196, line: 46, baseType: !507)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !283, line: 88, baseType: !508)
!508 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !499, file: !44, line: 225, baseType: !510, size: 128, offset: 192)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !511, line: 13, size: 128, elements: !512)
!511 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!512 = !{!513, !516}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !510, file: !511, line: 14, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !511, line: 8, baseType: !515)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !393, line: 30, baseType: !508)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !510, file: !511, line: 15, baseType: !285, size: 64, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !499, file: !44, line: 226, baseType: !510, size: 128, offset: 320)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !499, file: !44, line: 227, baseType: !510, size: 128, offset: 448)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !499, file: !44, line: 234, baseType: !327, size: 64, offset: 576)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !428, file: !44, line: 1882, baseType: !521, size: 64, offset: 896)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{!117, !524, !526, !390, !7}
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !349)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !528, line: 22, size: 1152, elements: !529)
!528 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!529 = !{!530, !531, !532, !533, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !527, file: !528, line: 23, baseType: !390, size: 32)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !527, file: !528, line: 24, baseType: !291, size: 16, offset: 32)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !527, file: !528, line: 25, baseType: !7, size: 32, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !527, file: !528, line: 26, baseType: !534, size: 32, offset: 96)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !196, line: 104, baseType: !390)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !527, file: !528, line: 27, baseType: !396, size: 64, offset: 128)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !527, file: !528, line: 28, baseType: !396, size: 64, offset: 192)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !527, file: !528, line: 37, baseType: !396, size: 64, offset: 256)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !527, file: !528, line: 38, baseType: !488, size: 32, offset: 320)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !527, file: !528, line: 39, baseType: !488, size: 32, offset: 352)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !527, file: !528, line: 40, baseType: !410, size: 32, offset: 384)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !527, file: !528, line: 41, baseType: !418, size: 32, offset: 416)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !527, file: !528, line: 42, baseType: !506, size: 64, offset: 448)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !527, file: !528, line: 43, baseType: !510, size: 128, offset: 512)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !527, file: !528, line: 44, baseType: !510, size: 128, offset: 640)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !527, file: !528, line: 45, baseType: !510, size: 128, offset: 768)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !527, file: !528, line: 46, baseType: !510, size: 128, offset: 896)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !527, file: !528, line: 47, baseType: !396, size: 64, offset: 1024)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !527, file: !528, line: 48, baseType: !396, size: 64, offset: 1088)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !428, file: !44, line: 1883, baseType: !550, size: 64, offset: 960)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{!281, !357, !250, !296}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !428, file: !44, line: 1884, baseType: !554, size: 64, offset: 1024)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{!117, !404, !557, !396, !396}
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !428, file: !44, line: 1886, baseType: !560, size: 64, offset: 1088)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{!117, !404, !563, !117}
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !428, file: !44, line: 1887, baseType: !565, size: 64, offset: 1152)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{!117, !404, !357, !327, !7, !291}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !428, file: !44, line: 1890, baseType: !480, size: 64, offset: 1216)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !428, file: !44, line: 1891, baseType: !570, size: 64, offset: 1280)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{!117, !404, !455, !117}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !405, file: !44, line: 623, baseType: !574, size: 64, offset: 192)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !576)
!576 = !{!577, !578, !579, !580, !581, !582, !629, !2404, !2486, !2569, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2585, !2589, !2590, !2593, !2594, !2597, !2598, !2599, !2640, !2667, !2668, !2669, !2670, !2671, !2672, !2675, !2677, !2684, !2685, !2687, !2688, !2689, !2748, !2749, !2764, !2765, !2766, !2767, !2768, !2771, !2772, !2773, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !575, file: !44, line: 1417, baseType: !195, size: 128)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !575, file: !44, line: 1418, baseType: !488, size: 32, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !575, file: !44, line: 1419, baseType: !402, size: 8, offset: 160)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !575, file: !44, line: 1420, baseType: !299, size: 64, offset: 192)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !575, file: !44, line: 1421, baseType: !506, size: 64, offset: 256)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !575, file: !44, line: 1422, baseType: !583, size: 64, offset: 320)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !585)
!585 = !{!586, !587, !588, !595, !599, !603, !607, !608, !609, !619, !622, !623, !624, !626, !627, !628}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !584, file: !44, line: 2229, baseType: !166, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !584, file: !44, line: 2230, baseType: !117, size: 32, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !584, file: !44, line: 2238, baseType: !589, size: 64, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!117, !592}
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !594, line: 28, flags: DIFlagFwdDecl)
!594 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!595 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !584, file: !44, line: 2239, baseType: !596, size: 64, offset: 192)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !598)
!598 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !584, file: !44, line: 2240, baseType: !600, size: 64, offset: 256)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{!357, !583, !117, !166, !184}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !584, file: !44, line: 2242, baseType: !604, size: 64, offset: 320)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{null, !574}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !584, file: !44, line: 2243, baseType: !168, size: 64, offset: 384)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !584, file: !44, line: 2244, baseType: !583, size: 64, offset: 448)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !584, file: !44, line: 2245, baseType: !610, size: 64, offset: 512)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !196, line: 182, size: 64, elements: !611)
!611 = !{!612}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !610, file: !196, line: 183, baseType: !613, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !196, line: 186, size: 128, elements: !615)
!615 = !{!616, !617}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !614, file: !196, line: 187, baseType: !613, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !614, file: !196, line: 187, baseType: !618, size: 64, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !584, file: !44, line: 2247, baseType: !620, offset: 576)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !621, line: 187, elements: !223)
!621 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!622 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !584, file: !44, line: 2248, baseType: !620, offset: 576)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !584, file: !44, line: 2249, baseType: !620, offset: 576)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !584, file: !44, line: 2250, baseType: !625, offset: 576)
!625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !620, elements: !251)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !584, file: !44, line: 2252, baseType: !620, offset: 576)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !584, file: !44, line: 2253, baseType: !620, offset: 576)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !584, file: !44, line: 2254, baseType: !620, offset: 576)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !575, file: !44, line: 1423, baseType: !630, size: 64, offset: 384)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !632)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !633)
!633 = !{!634, !638, !642, !643, !647, !653, !657, !658, !659, !663, !667, !668, !669, !670, !676, !681, !682, !689, !690, !691, !692, !2388, !2403}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !632, file: !44, line: 1936, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!404, !574}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !632, file: !44, line: 1937, baseType: !639, size: 64, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{null, !404}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !632, file: !44, line: 1938, baseType: !639, size: 64, offset: 128)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !632, file: !44, line: 1940, baseType: !644, size: 64, offset: 192)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{null, !404, !117}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !632, file: !44, line: 1941, baseType: !648, size: 64, offset: 256)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!117, !404, !651}
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !632, file: !44, line: 1942, baseType: !654, size: 64, offset: 320)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!117, !404}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !632, file: !44, line: 1943, baseType: !639, size: 64, offset: 384)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !632, file: !44, line: 1944, baseType: !604, size: 64, offset: 448)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !632, file: !44, line: 1945, baseType: !660, size: 64, offset: 512)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{!117, !574, !117}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !632, file: !44, line: 1946, baseType: !664, size: 64, offset: 576)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{!117, !574}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !632, file: !44, line: 1947, baseType: !664, size: 64, offset: 640)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !632, file: !44, line: 1948, baseType: !664, size: 64, offset: 704)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !632, file: !44, line: 1949, baseType: !664, size: 64, offset: 768)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !632, file: !44, line: 1950, baseType: !671, size: 64, offset: 832)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{!117, !357, !674}
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !632, file: !44, line: 1951, baseType: !677, size: 64, offset: 896)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{!117, !574, !680, !250}
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !632, file: !44, line: 1952, baseType: !604, size: 64, offset: 960)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !632, file: !44, line: 1954, baseType: !683, size: 64, offset: 1024)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{!117, !686, !357}
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !688, line: 539, flags: DIFlagFwdDecl)
!688 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!689 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !632, file: !44, line: 1955, baseType: !683, size: 64, offset: 1088)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !632, file: !44, line: 1956, baseType: !683, size: 64, offset: 1152)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !632, file: !44, line: 1957, baseType: !683, size: 64, offset: 1216)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !632, file: !44, line: 1963, baseType: !693, size: 64, offset: 1280)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DISubroutineType(types: !695)
!695 = !{!117, !574, !696, !719}
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !698, line: 68, size: 512, align: 128, elements: !699)
!698 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!699 = !{!700, !701, !2380, !2387}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !697, file: !698, line: 69, baseType: !299, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, scope: !697, file: !698, line: 77, baseType: !702, size: 320, offset: 64)
!702 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !697, file: !698, line: 77, size: 320, elements: !703)
!703 = !{!704, !892, !897, !925, !933, !939, !2311, !2379}
!704 = !DIDerivedType(tag: DW_TAG_member, scope: !702, file: !698, line: 78, baseType: !705, size: 320)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !702, file: !698, line: 78, size: 320, elements: !706)
!706 = !{!707, !708, !890, !891}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !705, file: !698, line: 84, baseType: !195, size: 128)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !705, file: !698, line: 86, baseType: !709, size: 64, offset: 128)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !711)
!711 = !{!712, !713, !721, !722, !727, !742, !758, !759, !760, !761, !883, !884, !887, !888, !889}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !710, file: !44, line: 452, baseType: !404, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !710, file: !44, line: 453, baseType: !714, size: 128, offset: 64)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !715, line: 292, size: 128, elements: !716)
!715 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!716 = !{!717, !718, !720}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !714, file: !715, line: 293, baseType: !209)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !714, file: !715, line: 295, baseType: !719, size: 32)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !196, line: 148, baseType: !7)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !714, file: !715, line: 296, baseType: !184, size: 64, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !710, file: !44, line: 454, baseType: !719, size: 32, offset: 192)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !710, file: !44, line: 455, baseType: !723, size: 32, offset: 224)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !196, line: 168, baseType: !724)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !196, line: 166, size: 32, elements: !725)
!725 = !{!726}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !724, file: !196, line: 167, baseType: !117, size: 32)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !710, file: !44, line: 460, baseType: !728, size: 128, offset: 256)
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
!738 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !736, file: !729, line: 25, baseType: !299, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !736, file: !729, line: 26, baseType: !735, size: 64, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !736, file: !729, line: 27, baseType: !735, size: 64, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !728, file: !729, line: 127, baseType: !735, size: 64, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !710, file: !44, line: 461, baseType: !743, size: 256, offset: 384)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !744, line: 35, size: 256, elements: !745)
!744 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!745 = !{!746, !754, !755, !757}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !743, file: !744, line: 36, baseType: !747, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !748, line: 13, baseType: !749)
!748 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !196, line: 175, baseType: !750)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !196, line: 173, size: 64, elements: !751)
!751 = !{!752}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !750, file: !196, line: 174, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !391, line: 22, baseType: !515)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !743, file: !744, line: 42, baseType: !747, size: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !743, file: !744, line: 46, baseType: !756, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !210, line: 29, baseType: !217)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !743, file: !744, line: 47, baseType: !195, size: 128, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !710, file: !44, line: 462, baseType: !299, size: 64, offset: 640)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !710, file: !44, line: 463, baseType: !299, size: 64, offset: 704)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !710, file: !44, line: 464, baseType: !299, size: 64, offset: 768)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !710, file: !44, line: 465, baseType: !762, size: 64, offset: 832)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !764)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !765)
!765 = !{!766, !770, !774, !778, !782, !786, !792, !798, !802, !807, !811, !815, !819, !847, !851, !857, !858, !859, !863, !868, !872, !879}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !764, file: !44, line: 368, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DISubroutineType(types: !769)
!769 = !{!117, !696, !651}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !764, file: !44, line: 369, baseType: !771, size: 64, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{!117, !327, !696}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !764, file: !44, line: 372, baseType: !775, size: 64, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DISubroutineType(types: !777)
!777 = !{!117, !709, !651}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !764, file: !44, line: 375, baseType: !779, size: 64, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DISubroutineType(types: !781)
!781 = !{!117, !696}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !764, file: !44, line: 381, baseType: !783, size: 64, offset: 256)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DISubroutineType(types: !785)
!785 = !{!117, !327, !709, !199, !7}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !764, file: !44, line: 383, baseType: !787, size: 64, offset: 320)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{null, !790}
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !764, file: !44, line: 385, baseType: !793, size: 64, offset: 384)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DISubroutineType(types: !795)
!795 = !{!117, !327, !709, !506, !7, !7, !796, !797}
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !764, file: !44, line: 388, baseType: !799, size: 64, offset: 448)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DISubroutineType(types: !801)
!801 = !{!117, !327, !709, !506, !7, !7, !696, !184}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !764, file: !44, line: 393, baseType: !803, size: 64, offset: 512)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{!806, !709, !806}
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !196, line: 125, baseType: !396)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !764, file: !44, line: 394, baseType: !808, size: 64, offset: 576)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{null, !696, !7, !7}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !764, file: !44, line: 395, baseType: !812, size: 64, offset: 640)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{!117, !696, !719}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !764, file: !44, line: 396, baseType: !816, size: 64, offset: 704)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{null, !696}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !764, file: !44, line: 397, baseType: !820, size: 64, offset: 768)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{!281, !823, !845}
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !825)
!825 = !{!826, !827, !828, !832, !833, !834, !837, !838}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !824, file: !44, line: 321, baseType: !327, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !824, file: !44, line: 326, baseType: !506, size: 64, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !824, file: !44, line: 327, baseType: !829, size: 64, offset: 128)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{null, !823, !285, !285}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !824, file: !44, line: 328, baseType: !184, size: 64, offset: 192)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !824, file: !44, line: 329, baseType: !117, size: 32, offset: 256)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !824, file: !44, line: 330, baseType: !835, size: 16, offset: 288)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !391, line: 19, baseType: !836)
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !393, line: 24, baseType: !122)
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
!850 = !{!117, !709, !696, !696, !5}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !764, file: !44, line: 404, baseType: !852, size: 64, offset: 896)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{!465, !696, !855}
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !856, line: 305, baseType: !7)
!856 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!857 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !764, file: !44, line: 405, baseType: !816, size: 64, offset: 960)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !764, file: !44, line: 406, baseType: !779, size: 64, offset: 1024)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !764, file: !44, line: 407, baseType: !860, size: 64, offset: 1088)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{!117, !696, !299, !299}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !764, file: !44, line: 409, baseType: !864, size: 64, offset: 1152)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DISubroutineType(types: !866)
!866 = !{null, !696, !867, !867}
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !764, file: !44, line: 410, baseType: !869, size: 64, offset: 1216)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{!117, !709, !696}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !764, file: !44, line: 413, baseType: !873, size: 64, offset: 1280)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{!117, !876, !327, !878}
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !764, file: !44, line: 415, baseType: !880, size: 64, offset: 1344)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DISubroutineType(types: !882)
!882 = !{null, !327}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !710, file: !44, line: 466, baseType: !299, size: 64, offset: 896)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !710, file: !44, line: 467, baseType: !885, size: 32, offset: 960)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !886, line: 8, baseType: !390)
!886 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!887 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !710, file: !44, line: 468, baseType: !209, offset: 992)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !710, file: !44, line: 469, baseType: !195, size: 128, offset: 1024)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !710, file: !44, line: 470, baseType: !184, size: 64, offset: 1152)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !705, file: !698, line: 87, baseType: !299, size: 64, offset: 192)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !705, file: !698, line: 94, baseType: !299, size: 64, offset: 256)
!892 = !DIDerivedType(tag: DW_TAG_member, scope: !702, file: !698, line: 96, baseType: !893, size: 64)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !702, file: !698, line: 96, size: 64, elements: !894)
!894 = !{!895}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !893, file: !698, line: 101, baseType: !896, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !196, line: 143, baseType: !396)
!897 = !DIDerivedType(tag: DW_TAG_member, scope: !702, file: !698, line: 103, baseType: !898, size: 320)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !702, file: !698, line: 103, size: 320, elements: !899)
!899 = !{!900, !910, !913, !914}
!900 = !DIDerivedType(tag: DW_TAG_member, scope: !898, file: !698, line: 104, baseType: !901, size: 128)
!901 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !898, file: !698, line: 104, size: 128, elements: !902)
!902 = !{!903, !904}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !901, file: !698, line: 105, baseType: !195, size: 128)
!904 = !DIDerivedType(tag: DW_TAG_member, scope: !901, file: !698, line: 106, baseType: !905, size: 128)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !901, file: !698, line: 106, size: 128, elements: !906)
!906 = !{!907, !908, !909}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !905, file: !698, line: 107, baseType: !696, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !905, file: !698, line: 109, baseType: !117, size: 32, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !905, file: !698, line: 110, baseType: !117, size: 32, offset: 96)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !898, file: !698, line: 117, baseType: !911, size: 64, offset: 128)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !698, line: 117, flags: DIFlagFwdDecl)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !898, file: !698, line: 119, baseType: !184, size: 64, offset: 192)
!914 = !DIDerivedType(tag: DW_TAG_member, scope: !898, file: !698, line: 120, baseType: !915, size: 64, offset: 256)
!915 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !898, file: !698, line: 120, size: 64, elements: !916)
!916 = !{!917, !918, !919}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !915, file: !698, line: 121, baseType: !184, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !915, file: !698, line: 122, baseType: !299, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, scope: !915, file: !698, line: 123, baseType: !920, size: 32)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !915, file: !698, line: 123, size: 32, elements: !921)
!921 = !{!922, !923, !924}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !920, file: !698, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !920, file: !698, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !920, file: !698, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!925 = !DIDerivedType(tag: DW_TAG_member, scope: !702, file: !698, line: 130, baseType: !926, size: 192)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !702, file: !698, line: 130, size: 192, elements: !927)
!927 = !{!928, !929, !930, !931, !932}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !926, file: !698, line: 131, baseType: !299, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !926, file: !698, line: 134, baseType: !402, size: 8, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !926, file: !698, line: 135, baseType: !402, size: 8, offset: 72)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !926, file: !698, line: 136, baseType: !723, size: 32, offset: 96)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !926, file: !698, line: 137, baseType: !7, size: 32, offset: 128)
!933 = !DIDerivedType(tag: DW_TAG_member, scope: !702, file: !698, line: 139, baseType: !934, size: 256)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !702, file: !698, line: 139, size: 256, elements: !935)
!935 = !{!936, !937, !938}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !934, file: !698, line: 140, baseType: !299, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !934, file: !698, line: 141, baseType: !723, size: 32, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !934, file: !698, line: 143, baseType: !195, size: 128, offset: 128)
!939 = !DIDerivedType(tag: DW_TAG_member, scope: !702, file: !698, line: 145, baseType: !940, size: 256)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !702, file: !698, line: 145, size: 256, elements: !941)
!941 = !{!942, !943, !945, !946, !2310}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !940, file: !698, line: 146, baseType: !299, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !940, file: !698, line: 147, baseType: !944, size: 64, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !688, line: 509, baseType: !696)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !940, file: !698, line: 148, baseType: !299, size: 64, offset: 128)
!946 = !DIDerivedType(tag: DW_TAG_member, scope: !940, file: !698, line: 149, baseType: !947, size: 64, offset: 192)
!947 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !940, file: !698, line: 149, size: 64, elements: !948)
!948 = !{!949, !2309}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !947, file: !698, line: 150, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !698, line: 388, size: 7296, elements: !952)
!952 = !{!953, !2305}
!953 = !DIDerivedType(tag: DW_TAG_member, scope: !951, file: !698, line: 389, baseType: !954, size: 7296)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !951, file: !698, line: 389, size: 7296, elements: !955)
!955 = !{!956, !1074, !1075, !1076, !1080, !1081, !1082, !1083, !1084, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1125, !1133, !1136, !1182, !1183, !2289, !2290, !2293, !2294, !2295, !2298, !2299, !2300, !2303, !2304}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !954, file: !698, line: 390, baseType: !957, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !698, line: 305, size: 1472, elements: !959)
!959 = !{!960, !961, !962, !963, !964, !965, !966, !967, !974, !975, !980, !981, !984, !1068, !1069, !1070, !1071, !1072}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !958, file: !698, line: 308, baseType: !299, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !958, file: !698, line: 309, baseType: !299, size: 64, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !958, file: !698, line: 313, baseType: !957, size: 64, offset: 128)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !958, file: !698, line: 313, baseType: !957, size: 64, offset: 192)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !958, file: !698, line: 315, baseType: !736, size: 192, align: 64, offset: 256)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !958, file: !698, line: 323, baseType: !299, size: 64, offset: 448)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !958, file: !698, line: 327, baseType: !950, size: 64, offset: 512)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !958, file: !698, line: 333, baseType: !968, size: 64, offset: 576)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !688, line: 284, baseType: !969)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !688, line: 284, size: 64, elements: !970)
!970 = !{!971}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !969, file: !688, line: 284, baseType: !972, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !973, line: 19, baseType: !299)
!973 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!974 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !958, file: !698, line: 334, baseType: !299, size: 64, offset: 640)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !958, file: !698, line: 343, baseType: !976, size: 256, offset: 704)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !958, file: !698, line: 340, size: 256, elements: !977)
!977 = !{!978, !979}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !976, file: !698, line: 341, baseType: !736, size: 192, align: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !976, file: !698, line: 342, baseType: !299, size: 64, offset: 192)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !958, file: !698, line: 351, baseType: !195, size: 128, offset: 960)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !958, file: !698, line: 353, baseType: !982, size: 64, offset: 1088)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !698, line: 353, flags: DIFlagFwdDecl)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !958, file: !698, line: 356, baseType: !985, size: 64, offset: 1152)
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
!997 = !{!117, !957, !299}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !987, file: !14, line: 561, baseType: !999, size: 64, offset: 192)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!117, !957}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !987, file: !14, line: 562, baseType: !1003, size: 64, offset: 256)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!1006, !1007}
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !698, line: 682, baseType: !7)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1009)
!1009 = !{!1010, !1011, !1012, !1013, !1014, !1015, !1022, !1029, !1035, !1036, !1037, !1039, !1041}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1008, file: !14, line: 509, baseType: !957, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1008, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1008, file: !14, line: 511, baseType: !719, size: 32, offset: 96)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1008, file: !14, line: 512, baseType: !299, size: 64, offset: 128)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1008, file: !14, line: 513, baseType: !299, size: 64, offset: 192)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1008, file: !14, line: 514, baseType: !1016, size: 64, offset: 256)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !688, line: 385, baseType: !1018)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !688, line: 385, size: 64, elements: !1019)
!1019 = !{!1020}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1018, file: !688, line: 385, baseType: !1021, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !973, line: 15, baseType: !299)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1008, file: !14, line: 516, baseType: !1023, size: 64, offset: 320)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !688, line: 359, baseType: !1025)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !688, line: 359, size: 64, elements: !1026)
!1026 = !{!1027}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1025, file: !688, line: 359, baseType: !1028, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !973, line: 16, baseType: !299)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1008, file: !14, line: 519, baseType: !1030, size: 64, offset: 384)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !973, line: 21, baseType: !1031)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !973, line: 21, size: 64, elements: !1032)
!1032 = !{!1033}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1031, file: !973, line: 21, baseType: !1034, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !973, line: 14, baseType: !299)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1008, file: !14, line: 521, baseType: !696, size: 64, offset: 448)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1008, file: !14, line: 522, baseType: !696, size: 64, offset: 512)
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
!1049 = !{null, !1007, !299, !299}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !987, file: !14, line: 567, baseType: !1051, size: 64, offset: 448)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!299, !957}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !987, file: !14, line: 571, baseType: !1003, size: 64, offset: 512)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !987, file: !14, line: 574, baseType: !1003, size: 64, offset: 576)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !987, file: !14, line: 579, baseType: !1057, size: 64, offset: 640)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!117, !957, !299, !184, !117, !117}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !987, file: !14, line: 585, baseType: !1061, size: 64, offset: 704)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!166, !957}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !987, file: !14, line: 615, baseType: !1065, size: 64, offset: 768)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!696, !957, !299}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !958, file: !698, line: 359, baseType: !299, size: 64, offset: 1216)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !958, file: !698, line: 361, baseType: !327, size: 64, offset: 1280)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !958, file: !698, line: 362, baseType: !184, size: 64, offset: 1344)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !958, file: !698, line: 365, baseType: !747, size: 64, offset: 1408)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !958, file: !698, line: 373, baseType: !1073, offset: 1472)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !698, line: 296, elements: !223)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !954, file: !698, line: 391, baseType: !732, size: 64, offset: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !954, file: !698, line: 392, baseType: !396, size: 64, offset: 128)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !954, file: !698, line: 394, baseType: !1077, size: 64, offset: 192)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!299, !327, !299, !299, !299, !299}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !954, file: !698, line: 398, baseType: !299, size: 64, offset: 256)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !954, file: !698, line: 399, baseType: !299, size: 64, offset: 320)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !954, file: !698, line: 405, baseType: !299, size: 64, offset: 384)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !954, file: !698, line: 406, baseType: !299, size: 64, offset: 448)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !954, file: !698, line: 407, baseType: !1085, size: 64, offset: 512)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !688, line: 286, baseType: !1087)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !688, line: 286, size: 64, elements: !1088)
!1088 = !{!1089}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1087, file: !688, line: 286, baseType: !1090, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !973, line: 18, baseType: !299)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !954, file: !698, line: 416, baseType: !723, size: 32, offset: 576)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !954, file: !698, line: 428, baseType: !723, size: 32, offset: 608)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !954, file: !698, line: 437, baseType: !723, size: 32, offset: 640)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !954, file: !698, line: 447, baseType: !723, size: 32, offset: 672)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !954, file: !698, line: 450, baseType: !747, size: 64, offset: 704)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !954, file: !698, line: 452, baseType: !117, size: 32, offset: 768)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !954, file: !698, line: 454, baseType: !209, offset: 800)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !954, file: !698, line: 457, baseType: !743, size: 256, offset: 832)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !954, file: !698, line: 459, baseType: !195, size: 128, offset: 1088)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !954, file: !698, line: 466, baseType: !299, size: 64, offset: 1216)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !954, file: !698, line: 467, baseType: !299, size: 64, offset: 1280)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !954, file: !698, line: 469, baseType: !299, size: 64, offset: 1344)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !954, file: !698, line: 470, baseType: !299, size: 64, offset: 1408)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !954, file: !698, line: 471, baseType: !749, size: 64, offset: 1472)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !954, file: !698, line: 472, baseType: !299, size: 64, offset: 1536)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !954, file: !698, line: 473, baseType: !299, size: 64, offset: 1600)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !954, file: !698, line: 474, baseType: !299, size: 64, offset: 1664)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !954, file: !698, line: 475, baseType: !299, size: 64, offset: 1728)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !954, file: !698, line: 477, baseType: !209, offset: 1792)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !954, file: !698, line: 478, baseType: !299, size: 64, offset: 1792)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !954, file: !698, line: 478, baseType: !299, size: 64, offset: 1856)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !954, file: !698, line: 478, baseType: !299, size: 64, offset: 1920)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !954, file: !698, line: 478, baseType: !299, size: 64, offset: 1984)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !954, file: !698, line: 479, baseType: !299, size: 64, offset: 2048)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !954, file: !698, line: 479, baseType: !299, size: 64, offset: 2112)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !954, file: !698, line: 479, baseType: !299, size: 64, offset: 2176)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !954, file: !698, line: 480, baseType: !299, size: 64, offset: 2240)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !954, file: !698, line: 480, baseType: !299, size: 64, offset: 2304)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !954, file: !698, line: 480, baseType: !299, size: 64, offset: 2368)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !954, file: !698, line: 480, baseType: !299, size: 64, offset: 2432)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !954, file: !698, line: 482, baseType: !1122, size: 2816, offset: 2496)
!1122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 2816, elements: !1123)
!1123 = !{!1124}
!1124 = !DISubrange(count: 44)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !954, file: !698, line: 488, baseType: !1126, size: 256, offset: 5312)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1127, line: 60, size: 256, elements: !1128)
!1127 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1128 = !{!1129}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1126, file: !1127, line: 61, baseType: !1130, size: 256)
!1130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !747, size: 256, elements: !1131)
!1131 = !{!1132}
!1132 = !DISubrange(count: 4)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !954, file: !698, line: 490, baseType: !1134, size: 64, offset: 5568)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !698, line: 490, flags: DIFlagFwdDecl)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !954, file: !698, line: 493, baseType: !1137, size: 896, offset: 5632)
!1137 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1138, line: 53, baseType: !1139)
!1138 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1138, line: 13, size: 896, elements: !1140)
!1140 = !{!1141, !1142, !1143, !1144, !1147, !1148, !1155, !1156, !1176, !1177, !1178}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1139, file: !1138, line: 18, baseType: !396, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1139, file: !1138, line: 28, baseType: !749, size: 64, offset: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1139, file: !1138, line: 31, baseType: !743, size: 256, offset: 128)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1139, file: !1138, line: 32, baseType: !1145, size: 64, offset: 384)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1138, line: 32, flags: DIFlagFwdDecl)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1139, file: !1138, line: 37, baseType: !122, size: 16, offset: 448)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1139, file: !1138, line: 40, baseType: !1149, size: 192, offset: 512)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1150, line: 53, size: 192, elements: !1151)
!1150 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1151 = !{!1152, !1153, !1154}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1149, file: !1150, line: 54, baseType: !747, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1149, file: !1150, line: 55, baseType: !209, offset: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1149, file: !1150, line: 59, baseType: !195, size: 128, offset: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1139, file: !1138, line: 41, baseType: !184, size: 64, offset: 704)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1139, file: !1138, line: 42, baseType: !1157, size: 64, offset: 768)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1159)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1160, line: 13, size: 896, elements: !1161)
!1160 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1161 = !{!1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1159, file: !1160, line: 14, baseType: !184, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1159, file: !1160, line: 15, baseType: !299, size: 64, offset: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1159, file: !1160, line: 17, baseType: !299, size: 64, offset: 128)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1159, file: !1160, line: 17, baseType: !299, size: 64, offset: 192)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1159, file: !1160, line: 19, baseType: !285, size: 64, offset: 256)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1159, file: !1160, line: 21, baseType: !285, size: 64, offset: 320)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1159, file: !1160, line: 22, baseType: !285, size: 64, offset: 384)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1159, file: !1160, line: 23, baseType: !285, size: 64, offset: 448)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1159, file: !1160, line: 24, baseType: !285, size: 64, offset: 512)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1159, file: !1160, line: 25, baseType: !285, size: 64, offset: 576)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1159, file: !1160, line: 26, baseType: !285, size: 64, offset: 640)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1159, file: !1160, line: 27, baseType: !285, size: 64, offset: 704)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1159, file: !1160, line: 28, baseType: !285, size: 64, offset: 768)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1159, file: !1160, line: 29, baseType: !285, size: 64, offset: 832)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1139, file: !1138, line: 44, baseType: !723, size: 32, offset: 832)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1139, file: !1138, line: 50, baseType: !835, size: 16, offset: 864)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1139, file: !1138, line: 51, baseType: !1179, size: 16, offset: 880)
!1179 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !391, line: 18, baseType: !1180)
!1180 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !393, line: 23, baseType: !1181)
!1181 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !954, file: !698, line: 495, baseType: !299, size: 64, offset: 6528)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !954, file: !698, line: 497, baseType: !1184, size: 64, offset: 6592)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !698, line: 381, size: 384, elements: !1186)
!1186 = !{!1187, !1188, !2288}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1185, file: !698, line: 382, baseType: !723, size: 32)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1185, file: !698, line: 383, baseType: !1189, size: 128, offset: 64)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !698, line: 376, size: 128, elements: !1190)
!1190 = !{!1191, !2286}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1189, file: !698, line: 377, baseType: !1192, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1194, line: 640, size: 48640, elements: !1195)
!1194 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1195 = !{!1196, !1202, !1204, !1205, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1222, !1240, !1251, !1336, !1337, !1338, !1349, !1350, !1352, !1353, !1354, !1355, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1434, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1472, !1474, !1475, !1476, !1488, !1489, !1490, !1491, !1492, !1493, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1517, !1522, !1706, !1707, !1708, !1709, !1713, !1716, !1719, !1722, !1725, !1729, !1830, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1874, !1875, !1876, !1877, !1878, !1883, !1884, !1885, !1888, !1889, !1892, !1895, !1898, !1901, !1944, !1947, !1948, !2027, !2028, !2031, !2032, !2035, !2036, !2037, !2041, !2042, !2043, !2056, !2057, !2058, !2068, !2073, !2076, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1193, file: !1194, line: 646, baseType: !1197, size: 128)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1198, line: 56, size: 128, elements: !1199)
!1198 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1199 = !{!1200, !1201}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1197, file: !1198, line: 57, baseType: !299, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1197, file: !1198, line: 58, baseType: !390, size: 32, offset: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1193, file: !1194, line: 649, baseType: !1203, size: 64, offset: 128)
!1203 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !285)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1193, file: !1194, line: 657, baseType: !184, size: 64, offset: 192)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1193, file: !1194, line: 658, baseType: !1206, size: 32, offset: 256)
!1206 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1207, line: 113, baseType: !1208)
!1207 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1207, line: 111, size: 32, elements: !1209)
!1209 = !{!1210}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1208, file: !1207, line: 112, baseType: !723, size: 32)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1193, file: !1194, line: 660, baseType: !7, size: 32, offset: 288)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1193, file: !1194, line: 661, baseType: !7, size: 32, offset: 320)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1193, file: !1194, line: 684, baseType: !117, size: 32, offset: 352)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1193, file: !1194, line: 686, baseType: !117, size: 32, offset: 384)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1193, file: !1194, line: 687, baseType: !117, size: 32, offset: 416)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1193, file: !1194, line: 688, baseType: !117, size: 32, offset: 448)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1193, file: !1194, line: 689, baseType: !7, size: 32, offset: 480)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1193, file: !1194, line: 691, baseType: !1219, size: 64, offset: 512)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1221)
!1221 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1194, line: 691, flags: DIFlagFwdDecl)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1193, file: !1194, line: 692, baseType: !1223, size: 832, offset: 576)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1194, line: 451, size: 832, elements: !1224)
!1224 = !{!1225, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1223, file: !1194, line: 453, baseType: !1226, size: 128)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1194, line: 325, size: 128, elements: !1227)
!1227 = !{!1228, !1229}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1226, file: !1194, line: 326, baseType: !299, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1226, file: !1194, line: 327, baseType: !390, size: 32, offset: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1223, file: !1194, line: 454, baseType: !736, size: 192, align: 64, offset: 128)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1223, file: !1194, line: 455, baseType: !195, size: 128, offset: 320)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1223, file: !1194, line: 456, baseType: !7, size: 32, offset: 448)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1223, file: !1194, line: 458, baseType: !396, size: 64, offset: 512)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1223, file: !1194, line: 459, baseType: !396, size: 64, offset: 576)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1223, file: !1194, line: 460, baseType: !396, size: 64, offset: 640)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1223, file: !1194, line: 461, baseType: !396, size: 64, offset: 704)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1223, file: !1194, line: 463, baseType: !396, size: 64, offset: 768)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1223, file: !1194, line: 465, baseType: !1239, offset: 832)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1194, line: 415, elements: !223)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1193, file: !1194, line: 693, baseType: !1241, size: 384, offset: 1408)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1194, line: 489, size: 384, elements: !1242)
!1242 = !{!1243, !1244, !1245, !1246, !1247, !1248, !1249}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1241, file: !1194, line: 490, baseType: !195, size: 128)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1241, file: !1194, line: 491, baseType: !299, size: 64, offset: 128)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1241, file: !1194, line: 492, baseType: !299, size: 64, offset: 192)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1241, file: !1194, line: 493, baseType: !7, size: 32, offset: 256)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1241, file: !1194, line: 494, baseType: !122, size: 16, offset: 288)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1241, file: !1194, line: 495, baseType: !122, size: 16, offset: 304)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1241, file: !1194, line: 497, baseType: !1250, size: 64, offset: 320)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1193, file: !1194, line: 697, baseType: !1252, size: 1792, offset: 1792)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1194, line: 507, size: 1792, elements: !1253)
!1253 = !{!1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1333, !1334}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1252, file: !1194, line: 508, baseType: !736, size: 192, align: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1252, file: !1194, line: 515, baseType: !396, size: 64, offset: 192)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1252, file: !1194, line: 516, baseType: !396, size: 64, offset: 256)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1252, file: !1194, line: 517, baseType: !396, size: 64, offset: 320)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1252, file: !1194, line: 518, baseType: !396, size: 64, offset: 384)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1252, file: !1194, line: 519, baseType: !396, size: 64, offset: 448)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1252, file: !1194, line: 526, baseType: !753, size: 64, offset: 512)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1252, file: !1194, line: 527, baseType: !396, size: 64, offset: 576)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1252, file: !1194, line: 528, baseType: !7, size: 32, offset: 640)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1252, file: !1194, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1252, file: !1194, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1252, file: !1194, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1252, file: !1194, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1252, file: !1194, line: 563, baseType: !1268, size: 512, offset: 704)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1269)
!1269 = !{!1270, !1278, !1279, !1284, !1327, !1330, !1331, !1332}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1268, file: !20, line: 119, baseType: !1271, size: 256)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1272, line: 9, size: 256, elements: !1273)
!1272 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1273 = !{!1274, !1275}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1271, file: !1272, line: 10, baseType: !736, size: 192, align: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1271, file: !1272, line: 11, baseType: !1276, size: 64, offset: 192)
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1277, line: 29, baseType: !753)
!1277 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1268, file: !20, line: 120, baseType: !1276, size: 64, offset: 256)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1268, file: !20, line: 121, baseType: !1280, size: 64, offset: 320)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!19, !1283}
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1268, file: !20, line: 122, baseType: !1285, size: 64, offset: 384)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1287)
!1287 = !{!1288, !1308, !1309, !1312, !1317, !1318, !1322, !1326}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1286, file: !20, line: 160, baseType: !1289, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1291)
!1291 = !{!1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1290, file: !20, line: 215, baseType: !756)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1290, file: !20, line: 216, baseType: !7, size: 32)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1290, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1290, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1290, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1290, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1290, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1290, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1290, file: !20, line: 233, baseType: !1276, size: 64, offset: 128)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1290, file: !20, line: 234, baseType: !1283, size: 64, offset: 192)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1290, file: !20, line: 235, baseType: !1276, size: 64, offset: 256)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1290, file: !20, line: 236, baseType: !1283, size: 64, offset: 320)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1290, file: !20, line: 237, baseType: !1305, size: 4096, offset: 512)
!1305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1286, size: 4096, elements: !1306)
!1306 = !{!1307}
!1307 = !DISubrange(count: 8)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1286, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1286, file: !20, line: 162, baseType: !1310, size: 32, offset: 96)
!1310 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !196, line: 27, baseType: !1311)
!1311 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !283, line: 96, baseType: !117)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1286, file: !20, line: 163, baseType: !1313, size: 32, offset: 128)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !363, line: 276, baseType: !1314)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !363, line: 276, size: 32, elements: !1315)
!1315 = !{!1316}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1314, file: !363, line: 276, baseType: !367, size: 32)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1286, file: !20, line: 164, baseType: !1283, size: 64, offset: 192)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1286, file: !20, line: 165, baseType: !1319, size: 128, offset: 256)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1272, line: 14, size: 128, elements: !1320)
!1320 = !{!1321}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1319, file: !1272, line: 15, baseType: !728, size: 128)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1286, file: !20, line: 166, baseType: !1323, size: 64, offset: 384)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!1276}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1286, file: !20, line: 167, baseType: !1276, size: 64, offset: 448)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1268, file: !20, line: 123, baseType: !1328, size: 8, offset: 448)
!1328 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !391, line: 17, baseType: !1329)
!1329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !393, line: 21, baseType: !402)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1268, file: !20, line: 124, baseType: !1328, size: 8, offset: 456)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1268, file: !20, line: 125, baseType: !1328, size: 8, offset: 464)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1268, file: !20, line: 126, baseType: !1328, size: 8, offset: 472)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1252, file: !1194, line: 572, baseType: !1268, size: 512, offset: 1216)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1252, file: !1194, line: 580, baseType: !1335, size: 64, offset: 1728)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1193, file: !1194, line: 721, baseType: !7, size: 32, offset: 3584)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1193, file: !1194, line: 722, baseType: !117, size: 32, offset: 3616)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1193, file: !1194, line: 723, baseType: !1339, size: 64, offset: 3648)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1341)
!1341 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1342, line: 17, baseType: !1343)
!1342 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1342, line: 17, size: 64, elements: !1344)
!1344 = !{!1345}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1343, file: !1342, line: 17, baseType: !1346, size: 64)
!1346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 64, elements: !1347)
!1347 = !{!1348}
!1348 = !DISubrange(count: 1)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1193, file: !1194, line: 724, baseType: !1341, size: 64, offset: 3712)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1193, file: !1194, line: 749, baseType: !1351, offset: 3776)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1194, line: 290, elements: !223)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1193, file: !1194, line: 751, baseType: !195, size: 128, offset: 3776)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1193, file: !1194, line: 757, baseType: !950, size: 64, offset: 3904)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1193, file: !1194, line: 758, baseType: !950, size: 64, offset: 3968)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1193, file: !1194, line: 761, baseType: !1356, size: 320, offset: 4032)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1127, line: 34, size: 320, elements: !1357)
!1357 = !{!1358, !1359}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1356, file: !1127, line: 35, baseType: !396, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1356, file: !1127, line: 36, baseType: !1360, size: 256, offset: 64)
!1360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !957, size: 256, elements: !1131)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1193, file: !1194, line: 766, baseType: !117, size: 32, offset: 4352)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1193, file: !1194, line: 767, baseType: !117, size: 32, offset: 4384)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1193, file: !1194, line: 768, baseType: !117, size: 32, offset: 4416)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1193, file: !1194, line: 770, baseType: !117, size: 32, offset: 4448)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1193, file: !1194, line: 772, baseType: !299, size: 64, offset: 4480)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1193, file: !1194, line: 775, baseType: !7, size: 32, offset: 4544)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1193, file: !1194, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1193, file: !1194, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1193, file: !1194, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1193, file: !1194, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1193, file: !1194, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1193, file: !1194, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1193, file: !1194, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1193, file: !1194, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1193, file: !1194, line: 831, baseType: !299, size: 64, offset: 4672)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1193, file: !1194, line: 833, baseType: !1377, size: 384, offset: 4736)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1378)
!1378 = !{!1379, !1384}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1377, file: !25, line: 26, baseType: !1380, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!285, !1383}
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, scope: !1377, file: !25, line: 27, baseType: !1385, size: 320, offset: 64)
!1385 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1377, file: !25, line: 27, size: 320, elements: !1386)
!1386 = !{!1387, !1397, !1424}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1385, file: !25, line: 36, baseType: !1388, size: 320)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1385, file: !25, line: 29, size: 320, elements: !1389)
!1389 = !{!1390, !1392, !1393, !1394, !1395, !1396}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1388, file: !25, line: 30, baseType: !1391, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1388, file: !25, line: 31, baseType: !390, size: 32, offset: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1388, file: !25, line: 32, baseType: !390, size: 32, offset: 96)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1388, file: !25, line: 33, baseType: !390, size: 32, offset: 128)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1388, file: !25, line: 34, baseType: !396, size: 64, offset: 192)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1388, file: !25, line: 35, baseType: !1391, size: 64, offset: 256)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1385, file: !25, line: 46, baseType: !1398, size: 192)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1385, file: !25, line: 38, size: 192, elements: !1399)
!1399 = !{!1400, !1401, !1402, !1423}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1398, file: !25, line: 39, baseType: !1310, size: 32)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1398, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1402 = !DIDerivedType(tag: DW_TAG_member, scope: !1398, file: !25, line: 41, baseType: !1403, size: 64, offset: 64)
!1403 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1398, file: !25, line: 41, size: 64, elements: !1404)
!1404 = !{!1405, !1413}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1403, file: !25, line: 42, baseType: !1406, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1408, line: 7, size: 128, elements: !1409)
!1408 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1409 = !{!1410, !1412}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1407, file: !1408, line: 8, baseType: !1411, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !283, line: 93, baseType: !508)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1407, file: !1408, line: 9, baseType: !508, size: 64, offset: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1403, file: !25, line: 43, baseType: !1414, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1416, line: 7, size: 64, elements: !1417)
!1416 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1417 = !{!1418, !1422}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1415, file: !1416, line: 8, baseType: !1419, size: 32)
!1419 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1416, line: 5, baseType: !1420)
!1420 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !391, line: 20, baseType: !1421)
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !393, line: 26, baseType: !117)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1415, file: !1416, line: 9, baseType: !1420, size: 32, offset: 32)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1398, file: !25, line: 45, baseType: !396, size: 64, offset: 128)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1385, file: !25, line: 54, baseType: !1425, size: 256)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1385, file: !25, line: 48, size: 256, elements: !1426)
!1426 = !{!1427, !1430, !1431, !1432, !1433}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1425, file: !25, line: 49, baseType: !1428, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1425, file: !25, line: 50, baseType: !117, size: 32, offset: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1425, file: !25, line: 51, baseType: !117, size: 32, offset: 96)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1425, file: !25, line: 52, baseType: !299, size: 64, offset: 128)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1425, file: !25, line: 53, baseType: !299, size: 64, offset: 192)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1193, file: !1194, line: 835, baseType: !1435, size: 32, offset: 5120)
!1435 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !196, line: 22, baseType: !1436)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !283, line: 28, baseType: !117)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1193, file: !1194, line: 836, baseType: !1435, size: 32, offset: 5152)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1193, file: !1194, line: 840, baseType: !299, size: 64, offset: 5184)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1193, file: !1194, line: 849, baseType: !1192, size: 64, offset: 5248)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1193, file: !1194, line: 852, baseType: !1192, size: 64, offset: 5312)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1193, file: !1194, line: 857, baseType: !195, size: 128, offset: 5376)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1193, file: !1194, line: 858, baseType: !195, size: 128, offset: 5504)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1193, file: !1194, line: 859, baseType: !1192, size: 64, offset: 5632)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1193, file: !1194, line: 867, baseType: !195, size: 128, offset: 5696)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1193, file: !1194, line: 868, baseType: !195, size: 128, offset: 5824)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1193, file: !1194, line: 871, baseType: !1447, size: 64, offset: 5952)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1449)
!1449 = !{!1450, !1451, !1452, !1453, !1455, !1456, !1463, !1464}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1448, file: !53, line: 61, baseType: !1206, size: 32)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1448, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1448, file: !53, line: 63, baseType: !209, offset: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1448, file: !53, line: 65, baseType: !1454, size: 256, offset: 64)
!1454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 256, elements: !1131)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1448, file: !53, line: 66, baseType: !610, size: 64, offset: 320)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1448, file: !53, line: 68, baseType: !1457, size: 128, offset: 384)
!1457 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1458, line: 40, baseType: !1459)
!1458 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1458, line: 36, size: 128, elements: !1460)
!1460 = !{!1461, !1462}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1459, file: !1458, line: 37, baseType: !209)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1459, file: !1458, line: 38, baseType: !195, size: 128)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1448, file: !53, line: 69, baseType: !340, size: 128, align: 64, offset: 512)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1448, file: !53, line: 70, baseType: !1465, size: 128, offset: 640)
!1465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1466, size: 128, elements: !1347)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1467)
!1467 = !{!1468, !1469}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1466, file: !53, line: 55, baseType: !117, size: 32)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1466, file: !53, line: 56, baseType: !1470, size: 64, offset: 64)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1193, file: !1194, line: 872, baseType: !1473, size: 512, offset: 6016)
!1473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !614, size: 512, elements: !1131)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1193, file: !1194, line: 873, baseType: !195, size: 128, offset: 6528)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1193, file: !1194, line: 874, baseType: !195, size: 128, offset: 6656)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1193, file: !1194, line: 876, baseType: !1477, size: 64, offset: 6784)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1479, line: 26, size: 192, elements: !1480)
!1479 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1480 = !{!1481, !1482}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1478, file: !1479, line: 27, baseType: !7, size: 32)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1478, file: !1479, line: 28, baseType: !1483, size: 128, offset: 64)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1484, line: 43, size: 128, elements: !1485)
!1484 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1485 = !{!1486, !1487}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1483, file: !1484, line: 44, baseType: !756)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1483, file: !1484, line: 45, baseType: !195, size: 128)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1193, file: !1194, line: 879, baseType: !680, size: 64, offset: 6848)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1193, file: !1194, line: 882, baseType: !680, size: 64, offset: 6912)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1193, file: !1194, line: 884, baseType: !396, size: 64, offset: 6976)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1193, file: !1194, line: 885, baseType: !396, size: 64, offset: 7040)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1193, file: !1194, line: 890, baseType: !396, size: 64, offset: 7104)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1193, file: !1194, line: 891, baseType: !1494, size: 128, offset: 7168)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1194, line: 242, size: 128, elements: !1495)
!1495 = !{!1496, !1497, !1498}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1494, file: !1194, line: 244, baseType: !396, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1494, file: !1194, line: 245, baseType: !396, size: 64, offset: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1494, file: !1194, line: 246, baseType: !756, offset: 128)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1193, file: !1194, line: 900, baseType: !299, size: 64, offset: 7296)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1193, file: !1194, line: 901, baseType: !299, size: 64, offset: 7360)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1193, file: !1194, line: 904, baseType: !396, size: 64, offset: 7424)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1193, file: !1194, line: 907, baseType: !396, size: 64, offset: 7488)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1193, file: !1194, line: 910, baseType: !299, size: 64, offset: 7552)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1193, file: !1194, line: 911, baseType: !299, size: 64, offset: 7616)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1193, file: !1194, line: 914, baseType: !1506, size: 640, offset: 7680)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1507, line: 123, size: 640, elements: !1508)
!1507 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1508 = !{!1509, !1515, !1516}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1506, file: !1507, line: 124, baseType: !1510, size: 576)
!1510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1511, size: 576, elements: !251)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1507, line: 108, size: 192, elements: !1512)
!1512 = !{!1513, !1514}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1511, file: !1507, line: 109, baseType: !396, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1511, file: !1507, line: 110, baseType: !1319, size: 128, offset: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1506, file: !1507, line: 125, baseType: !7, size: 32, offset: 576)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1506, file: !1507, line: 126, baseType: !7, size: 32, offset: 608)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1193, file: !1194, line: 917, baseType: !1518, size: 192, offset: 8320)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1507, line: 134, size: 192, elements: !1519)
!1519 = !{!1520, !1521}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1518, file: !1507, line: 135, baseType: !340, size: 128, align: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1518, file: !1507, line: 136, baseType: !7, size: 32, offset: 128)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1193, file: !1194, line: 923, baseType: !1523, size: 64, offset: 8512)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1525)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1526, line: 111, size: 1280, elements: !1527)
!1526 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1527 = !{!1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1547, !1548, !1549, !1550, !1551, !1552, !1659, !1660, !1661, !1662, !1688, !1691, !1701}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1525, file: !1526, line: 112, baseType: !723, size: 32)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1525, file: !1526, line: 120, baseType: !410, size: 32, offset: 32)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1525, file: !1526, line: 121, baseType: !418, size: 32, offset: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1525, file: !1526, line: 122, baseType: !410, size: 32, offset: 96)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1525, file: !1526, line: 123, baseType: !418, size: 32, offset: 128)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1525, file: !1526, line: 124, baseType: !410, size: 32, offset: 160)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1525, file: !1526, line: 125, baseType: !418, size: 32, offset: 192)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1525, file: !1526, line: 126, baseType: !410, size: 32, offset: 224)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1525, file: !1526, line: 127, baseType: !418, size: 32, offset: 256)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1525, file: !1526, line: 128, baseType: !7, size: 32, offset: 288)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1525, file: !1526, line: 129, baseType: !1539, size: 64, offset: 320)
!1539 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1540, line: 26, baseType: !1541)
!1540 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1540, line: 24, size: 64, elements: !1542)
!1542 = !{!1543}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1541, file: !1540, line: 25, baseType: !1544, size: 64)
!1544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 64, elements: !1545)
!1545 = !{!1546}
!1546 = !DISubrange(count: 2)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1525, file: !1526, line: 130, baseType: !1539, size: 64, offset: 384)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1525, file: !1526, line: 131, baseType: !1539, size: 64, offset: 448)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1525, file: !1526, line: 132, baseType: !1539, size: 64, offset: 512)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1525, file: !1526, line: 133, baseType: !1539, size: 64, offset: 576)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1525, file: !1526, line: 135, baseType: !402, size: 8, offset: 640)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1525, file: !1526, line: 137, baseType: !1553, size: 64, offset: 704)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1555, line: 189, size: 1664, elements: !1556)
!1555 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1556 = !{!1557, !1558, !1561, !1566, !1567, !1570, !1571, !1576, !1577, !1578, !1579, !1581, !1582, !1583, !1584, !1585, !1623, !1644}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1554, file: !1555, line: 190, baseType: !1206, size: 32)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1554, file: !1555, line: 191, baseType: !1559, size: 32, offset: 32)
!1559 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1555, line: 28, baseType: !1560)
!1560 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !196, line: 98, baseType: !1420)
!1561 = !DIDerivedType(tag: DW_TAG_member, scope: !1554, file: !1555, line: 192, baseType: !1562, size: 192, offset: 64)
!1562 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1554, file: !1555, line: 192, size: 192, elements: !1563)
!1563 = !{!1564, !1565}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1562, file: !1555, line: 193, baseType: !195, size: 128)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1562, file: !1555, line: 194, baseType: !736, size: 192, align: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1554, file: !1555, line: 199, baseType: !743, size: 256, offset: 256)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1554, file: !1555, line: 200, baseType: !1568, size: 64, offset: 512)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1555, line: 200, flags: DIFlagFwdDecl)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1554, file: !1555, line: 201, baseType: !184, size: 64, offset: 576)
!1571 = !DIDerivedType(tag: DW_TAG_member, scope: !1554, file: !1555, line: 202, baseType: !1572, size: 64, offset: 640)
!1572 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1554, file: !1555, line: 202, size: 64, elements: !1573)
!1573 = !{!1574, !1575}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1572, file: !1555, line: 203, baseType: !514, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1572, file: !1555, line: 204, baseType: !514, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1554, file: !1555, line: 206, baseType: !514, size: 64, offset: 704)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1554, file: !1555, line: 207, baseType: !410, size: 32, offset: 768)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1554, file: !1555, line: 208, baseType: !418, size: 32, offset: 800)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1554, file: !1555, line: 209, baseType: !1580, size: 32, offset: 832)
!1580 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1555, line: 31, baseType: !534)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1554, file: !1555, line: 210, baseType: !122, size: 16, offset: 864)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1554, file: !1555, line: 211, baseType: !122, size: 16, offset: 880)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1554, file: !1555, line: 215, baseType: !1181, size: 16, offset: 896)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1554, file: !1555, line: 222, baseType: !299, size: 64, offset: 960)
!1585 = !DIDerivedType(tag: DW_TAG_member, scope: !1554, file: !1555, line: 239, baseType: !1586, size: 320, offset: 1024)
!1586 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1554, file: !1555, line: 239, size: 320, elements: !1587)
!1587 = !{!1588, !1615}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1586, file: !1555, line: 240, baseType: !1589, size: 320)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1555, line: 108, size: 320, elements: !1590)
!1590 = !{!1591, !1592, !1604, !1607, !1614}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1589, file: !1555, line: 110, baseType: !299, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, scope: !1589, file: !1555, line: 111, baseType: !1593, size: 64, offset: 64)
!1593 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1589, file: !1555, line: 111, size: 64, elements: !1594)
!1594 = !{!1595, !1603}
!1595 = !DIDerivedType(tag: DW_TAG_member, scope: !1593, file: !1555, line: 112, baseType: !1596, size: 64)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1593, file: !1555, line: 112, size: 64, elements: !1597)
!1597 = !{!1598, !1599}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1596, file: !1555, line: 114, baseType: !835, size: 16)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1596, file: !1555, line: 115, baseType: !1600, size: 48, offset: 16)
!1600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 48, elements: !1601)
!1601 = !{!1602}
!1602 = !DISubrange(count: 6)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1593, file: !1555, line: 121, baseType: !299, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1589, file: !1555, line: 123, baseType: !1605, size: 64, offset: 128)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1555, line: 96, flags: DIFlagFwdDecl)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1589, file: !1555, line: 124, baseType: !1608, size: 64, offset: 192)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1555, line: 102, size: 192, elements: !1610)
!1610 = !{!1611, !1612, !1613}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1609, file: !1555, line: 103, baseType: !340, size: 128, align: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1609, file: !1555, line: 104, baseType: !1206, size: 32, offset: 128)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1609, file: !1555, line: 105, baseType: !465, size: 8, offset: 160)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1589, file: !1555, line: 125, baseType: !166, size: 64, offset: 256)
!1615 = !DIDerivedType(tag: DW_TAG_member, scope: !1586, file: !1555, line: 241, baseType: !1616, size: 320)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1586, file: !1555, line: 241, size: 320, elements: !1617)
!1617 = !{!1618, !1619, !1620, !1621, !1622}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1616, file: !1555, line: 242, baseType: !299, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1616, file: !1555, line: 243, baseType: !299, size: 64, offset: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1616, file: !1555, line: 244, baseType: !1605, size: 64, offset: 128)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1616, file: !1555, line: 245, baseType: !1608, size: 64, offset: 192)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1616, file: !1555, line: 246, baseType: !250, size: 64, offset: 256)
!1623 = !DIDerivedType(tag: DW_TAG_member, scope: !1554, file: !1555, line: 254, baseType: !1624, size: 256, offset: 1344)
!1624 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1554, file: !1555, line: 254, size: 256, elements: !1625)
!1625 = !{!1626, !1632}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1624, file: !1555, line: 255, baseType: !1627, size: 256)
!1627 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1555, line: 128, size: 256, elements: !1628)
!1628 = !{!1629, !1630}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1627, file: !1555, line: 129, baseType: !184, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1627, file: !1555, line: 130, baseType: !1631, size: 256)
!1631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 256, elements: !1131)
!1632 = !DIDerivedType(tag: DW_TAG_member, scope: !1624, file: !1555, line: 256, baseType: !1633, size: 256)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1624, file: !1555, line: 256, size: 256, elements: !1634)
!1634 = !{!1635, !1636}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1633, file: !1555, line: 258, baseType: !195, size: 128)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1633, file: !1555, line: 259, baseType: !1637, size: 128, offset: 128)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1638, line: 22, size: 128, elements: !1639)
!1638 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1639 = !{!1640, !1643}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1637, file: !1638, line: 23, baseType: !1641, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1638, line: 23, flags: DIFlagFwdDecl)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1637, file: !1638, line: 24, baseType: !299, size: 64, offset: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1554, file: !1555, line: 274, baseType: !1645, size: 64, offset: 1600)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1555, line: 170, size: 192, elements: !1647)
!1647 = !{!1648, !1657, !1658}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1646, file: !1555, line: 171, baseType: !1649, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1555, line: 165, baseType: !1650)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!117, !1553, !1653, !1655, !1553}
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1606)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1627)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1646, file: !1555, line: 172, baseType: !1553, size: 64, offset: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1646, file: !1555, line: 173, baseType: !1605, size: 64, offset: 128)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1525, file: !1526, line: 138, baseType: !1553, size: 64, offset: 768)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1525, file: !1526, line: 139, baseType: !1553, size: 64, offset: 832)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1525, file: !1526, line: 140, baseType: !1553, size: 64, offset: 896)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1525, file: !1526, line: 145, baseType: !1663, size: 64, offset: 960)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1665, line: 13, size: 896, elements: !1666)
!1665 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1666 = !{!1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1664, file: !1665, line: 14, baseType: !1206, size: 32)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1664, file: !1665, line: 15, baseType: !723, size: 32, offset: 32)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1664, file: !1665, line: 16, baseType: !723, size: 32, offset: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1664, file: !1665, line: 21, baseType: !747, size: 64, offset: 128)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1664, file: !1665, line: 27, baseType: !299, size: 64, offset: 192)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1664, file: !1665, line: 28, baseType: !299, size: 64, offset: 256)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1664, file: !1665, line: 29, baseType: !747, size: 64, offset: 320)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1664, file: !1665, line: 32, baseType: !614, size: 128, offset: 384)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1664, file: !1665, line: 33, baseType: !410, size: 32, offset: 512)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1664, file: !1665, line: 37, baseType: !747, size: 64, offset: 576)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1664, file: !1665, line: 44, baseType: !1678, size: 256, offset: 640)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1679, line: 15, size: 256, elements: !1680)
!1679 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1680 = !{!1681, !1682, !1683, !1684, !1685, !1686, !1687}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1678, file: !1679, line: 16, baseType: !756)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1678, file: !1679, line: 18, baseType: !117, size: 32)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1678, file: !1679, line: 19, baseType: !117, size: 32, offset: 32)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1678, file: !1679, line: 20, baseType: !117, size: 32, offset: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1678, file: !1679, line: 21, baseType: !117, size: 32, offset: 96)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1678, file: !1679, line: 22, baseType: !299, size: 64, offset: 128)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1678, file: !1679, line: 23, baseType: !299, size: 64, offset: 192)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1525, file: !1526, line: 146, baseType: !1689, size: 64, offset: 1024)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !411, line: 18, flags: DIFlagFwdDecl)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1525, file: !1526, line: 147, baseType: !1692, size: 64, offset: 1088)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1526, line: 25, size: 64, elements: !1694)
!1694 = !{!1695, !1696, !1697}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1693, file: !1526, line: 26, baseType: !723, size: 32)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1693, file: !1526, line: 27, baseType: !117, size: 32, offset: 32)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1693, file: !1526, line: 28, baseType: !1698, offset: 64)
!1698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, elements: !1699)
!1699 = !{!1700}
!1700 = !DISubrange(count: 0)
!1701 = !DIDerivedType(tag: DW_TAG_member, scope: !1525, file: !1526, line: 149, baseType: !1702, size: 128, offset: 1152)
!1702 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1525, file: !1526, line: 149, size: 128, elements: !1703)
!1703 = !{!1704, !1705}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1702, file: !1526, line: 150, baseType: !117, size: 32)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1702, file: !1526, line: 151, baseType: !340, size: 128, align: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1193, file: !1194, line: 926, baseType: !1523, size: 64, offset: 8576)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1193, file: !1194, line: 929, baseType: !1523, size: 64, offset: 8640)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1193, file: !1194, line: 933, baseType: !1553, size: 64, offset: 8704)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1193, file: !1194, line: 943, baseType: !1710, size: 128, offset: 8768)
!1710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 128, elements: !1711)
!1711 = !{!1712}
!1712 = !DISubrange(count: 16)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1193, file: !1194, line: 945, baseType: !1714, size: 64, offset: 8896)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1194, line: 49, flags: DIFlagFwdDecl)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1193, file: !1194, line: 956, baseType: !1717, size: 64, offset: 8960)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1194, line: 45, flags: DIFlagFwdDecl)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1193, file: !1194, line: 959, baseType: !1720, size: 64, offset: 9024)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1194, line: 959, flags: DIFlagFwdDecl)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1193, file: !1194, line: 962, baseType: !1723, size: 64, offset: 9088)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1194, line: 66, flags: DIFlagFwdDecl)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1193, file: !1194, line: 966, baseType: !1726, size: 64, offset: 9152)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1728, line: 35, flags: DIFlagFwdDecl)
!1728 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1193, file: !1194, line: 969, baseType: !1730, size: 64, offset: 9216)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1732, line: 82, size: 7296, elements: !1733)
!1732 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1733 = !{!1734, !1735, !1736, !1737, !1738, !1739, !1740, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1769, !1778, !1779, !1781, !1782, !1783, !1786, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1816, !1817, !1824, !1825, !1826, !1827, !1828, !1829}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1731, file: !1732, line: 83, baseType: !1206, size: 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1731, file: !1732, line: 84, baseType: !723, size: 32, offset: 32)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1731, file: !1732, line: 85, baseType: !117, size: 32, offset: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1731, file: !1732, line: 86, baseType: !195, size: 128, offset: 128)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1731, file: !1732, line: 88, baseType: !1457, size: 128, offset: 256)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1731, file: !1732, line: 91, baseType: !1192, size: 64, offset: 384)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1731, file: !1732, line: 94, baseType: !1741, size: 192, offset: 448)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1742, line: 30, size: 192, elements: !1743)
!1742 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1743 = !{!1744, !1745}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1741, file: !1742, line: 31, baseType: !195, size: 128)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1741, file: !1742, line: 32, baseType: !1746, size: 64, offset: 128)
!1746 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1747, line: 25, baseType: !1748)
!1747 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1747, line: 23, size: 64, elements: !1749)
!1749 = !{!1750}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1748, file: !1747, line: 24, baseType: !1346, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1731, file: !1732, line: 97, baseType: !610, size: 64, offset: 640)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1731, file: !1732, line: 100, baseType: !117, size: 32, offset: 704)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1731, file: !1732, line: 106, baseType: !117, size: 32, offset: 736)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1731, file: !1732, line: 107, baseType: !1192, size: 64, offset: 768)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1731, file: !1732, line: 110, baseType: !117, size: 32, offset: 832)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1731, file: !1732, line: 111, baseType: !7, size: 32, offset: 864)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1731, file: !1732, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1731, file: !1732, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1731, file: !1732, line: 128, baseType: !117, size: 32, offset: 928)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1731, file: !1732, line: 129, baseType: !195, size: 128, offset: 960)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1731, file: !1732, line: 132, baseType: !1268, size: 512, offset: 1088)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1731, file: !1732, line: 133, baseType: !1276, size: 64, offset: 1600)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1731, file: !1732, line: 140, baseType: !1764, size: 256, offset: 1664)
!1764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1765, size: 256, elements: !1545)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1732, line: 38, size: 128, elements: !1766)
!1766 = !{!1767, !1768}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1765, file: !1732, line: 39, baseType: !396, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1765, file: !1732, line: 40, baseType: !396, size: 64, offset: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1731, file: !1732, line: 146, baseType: !1770, size: 192, offset: 1920)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1732, line: 66, size: 192, elements: !1771)
!1771 = !{!1772}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1770, file: !1732, line: 67, baseType: !1773, size: 192)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1732, line: 47, size: 192, elements: !1774)
!1774 = !{!1775, !1776, !1777}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1773, file: !1732, line: 48, baseType: !749, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1773, file: !1732, line: 49, baseType: !749, size: 64, offset: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1773, file: !1732, line: 50, baseType: !749, size: 64, offset: 128)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1731, file: !1732, line: 150, baseType: !1506, size: 640, offset: 2112)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1731, file: !1732, line: 153, baseType: !1780, size: 256, offset: 2752)
!1780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1447, size: 256, elements: !1131)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1731, file: !1732, line: 159, baseType: !1447, size: 64, offset: 3008)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1731, file: !1732, line: 162, baseType: !117, size: 32, offset: 3072)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1731, file: !1732, line: 164, baseType: !1784, size: 64, offset: 3136)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1732, line: 164, flags: DIFlagFwdDecl)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1731, file: !1732, line: 175, baseType: !1787, size: 32, offset: 3200)
!1787 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !363, line: 805, baseType: !1788)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !363, line: 798, size: 32, elements: !1789)
!1789 = !{!1790, !1791}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1788, file: !363, line: 803, baseType: !362, size: 32)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1788, file: !363, line: 804, baseType: !209, offset: 32)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1731, file: !1732, line: 176, baseType: !396, size: 64, offset: 3264)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1731, file: !1732, line: 176, baseType: !396, size: 64, offset: 3328)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1731, file: !1732, line: 176, baseType: !396, size: 64, offset: 3392)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1731, file: !1732, line: 176, baseType: !396, size: 64, offset: 3456)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1731, file: !1732, line: 177, baseType: !396, size: 64, offset: 3520)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1731, file: !1732, line: 178, baseType: !396, size: 64, offset: 3584)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1731, file: !1732, line: 179, baseType: !1494, size: 128, offset: 3648)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1731, file: !1732, line: 180, baseType: !299, size: 64, offset: 3776)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1731, file: !1732, line: 180, baseType: !299, size: 64, offset: 3840)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1731, file: !1732, line: 180, baseType: !299, size: 64, offset: 3904)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1731, file: !1732, line: 180, baseType: !299, size: 64, offset: 3968)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1731, file: !1732, line: 181, baseType: !299, size: 64, offset: 4032)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1731, file: !1732, line: 181, baseType: !299, size: 64, offset: 4096)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1731, file: !1732, line: 181, baseType: !299, size: 64, offset: 4160)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1731, file: !1732, line: 181, baseType: !299, size: 64, offset: 4224)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1731, file: !1732, line: 182, baseType: !299, size: 64, offset: 4288)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1731, file: !1732, line: 182, baseType: !299, size: 64, offset: 4352)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1731, file: !1732, line: 182, baseType: !299, size: 64, offset: 4416)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1731, file: !1732, line: 182, baseType: !299, size: 64, offset: 4480)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1731, file: !1732, line: 183, baseType: !299, size: 64, offset: 4544)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1731, file: !1732, line: 183, baseType: !299, size: 64, offset: 4608)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1731, file: !1732, line: 184, baseType: !1814, offset: 4672)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1815, line: 12, elements: !223)
!1815 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1731, file: !1732, line: 192, baseType: !398, size: 64, offset: 4672)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1731, file: !1732, line: 203, baseType: !1818, size: 2048, offset: 4736)
!1818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1819, size: 2048, elements: !1711)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1820, line: 43, size: 128, elements: !1821)
!1820 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1821 = !{!1822, !1823}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1819, file: !1820, line: 44, baseType: !298, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1819, file: !1820, line: 45, baseType: !298, size: 64, offset: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1731, file: !1732, line: 220, baseType: !465, size: 8, offset: 6784)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1731, file: !1732, line: 221, baseType: !1181, size: 16, offset: 6800)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1731, file: !1732, line: 222, baseType: !1181, size: 16, offset: 6816)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1731, file: !1732, line: 224, baseType: !950, size: 64, offset: 6848)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1731, file: !1732, line: 227, baseType: !1149, size: 192, offset: 6912)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1731, file: !1732, line: 233, baseType: !1149, size: 192, offset: 7104)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1193, file: !1194, line: 970, baseType: !1831, size: 64, offset: 9280)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1732, line: 20, size: 16576, elements: !1833)
!1833 = !{!1834, !1835, !1836, !1837}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1832, file: !1732, line: 21, baseType: !209)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1832, file: !1732, line: 22, baseType: !1206, size: 32)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1832, file: !1732, line: 23, baseType: !1457, size: 128, offset: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1832, file: !1732, line: 24, baseType: !1838, size: 16384, offset: 192)
!1838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1839, size: 16384, elements: !255)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1742, line: 49, size: 256, elements: !1840)
!1840 = !{!1841}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1839, file: !1742, line: 50, baseType: !1842, size: 256)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1742, line: 35, size: 256, elements: !1843)
!1843 = !{!1844, !1851, !1852, !1856}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1842, file: !1742, line: 37, baseType: !1845, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1846, line: 19, baseType: !1847)
!1846 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1846, line: 18, baseType: !1849)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{null, !117}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1842, file: !1742, line: 38, baseType: !299, size: 64, offset: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1842, file: !1742, line: 44, baseType: !1853, size: 64, offset: 128)
!1853 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1846, line: 22, baseType: !1854)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1846, line: 21, baseType: !129)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1842, file: !1742, line: 46, baseType: !1746, size: 64, offset: 192)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1193, file: !1194, line: 971, baseType: !1746, size: 64, offset: 9344)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1193, file: !1194, line: 972, baseType: !1746, size: 64, offset: 9408)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1193, file: !1194, line: 974, baseType: !1746, size: 64, offset: 9472)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1193, file: !1194, line: 975, baseType: !1741, size: 192, offset: 9536)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1193, file: !1194, line: 976, baseType: !299, size: 64, offset: 9728)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1193, file: !1194, line: 977, baseType: !296, size: 64, offset: 9792)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1193, file: !1194, line: 978, baseType: !7, size: 32, offset: 9856)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1193, file: !1194, line: 980, baseType: !343, size: 64, offset: 9920)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1193, file: !1194, line: 989, baseType: !1866, size: 128, offset: 9984)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1867, line: 35, size: 128, elements: !1868)
!1867 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1868 = !{!1869, !1870, !1871}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1866, file: !1867, line: 36, baseType: !117, size: 32)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1866, file: !1867, line: 37, baseType: !723, size: 32, offset: 32)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1866, file: !1867, line: 38, baseType: !1872, size: 64, offset: 64)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1867, line: 23, flags: DIFlagFwdDecl)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1193, file: !1194, line: 992, baseType: !396, size: 64, offset: 10112)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1193, file: !1194, line: 993, baseType: !396, size: 64, offset: 10176)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1193, file: !1194, line: 996, baseType: !209, offset: 10240)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1193, file: !1194, line: 999, baseType: !756, offset: 10240)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1193, file: !1194, line: 1001, baseType: !1879, size: 64, offset: 10240)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1194, line: 636, size: 64, elements: !1880)
!1880 = !{!1881}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1879, file: !1194, line: 637, baseType: !1882, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1193, file: !1194, line: 1005, baseType: !728, size: 128, offset: 10304)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1193, file: !1194, line: 1007, baseType: !1192, size: 64, offset: 10432)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1193, file: !1194, line: 1009, baseType: !1886, size: 64, offset: 10496)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1194, line: 1009, flags: DIFlagFwdDecl)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1193, file: !1194, line: 1043, baseType: !184, size: 64, offset: 10560)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1193, file: !1194, line: 1046, baseType: !1890, size: 64, offset: 10624)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1194, line: 41, flags: DIFlagFwdDecl)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1193, file: !1194, line: 1050, baseType: !1893, size: 64, offset: 10688)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1194, line: 42, flags: DIFlagFwdDecl)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1193, file: !1194, line: 1054, baseType: !1896, size: 64, offset: 10752)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1194, line: 55, flags: DIFlagFwdDecl)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1193, file: !1194, line: 1056, baseType: !1899, size: 64, offset: 10816)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1194, line: 40, flags: DIFlagFwdDecl)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1193, file: !1194, line: 1058, baseType: !1902, size: 64, offset: 10880)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1904, line: 99, size: 704, elements: !1905)
!1904 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1905 = !{!1906, !1907, !1908, !1909, !1910, !1911, !1912, !1931, !1932}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1903, file: !1904, line: 100, baseType: !747, size: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1903, file: !1904, line: 101, baseType: !723, size: 32, offset: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1903, file: !1904, line: 102, baseType: !723, size: 32, offset: 96)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1903, file: !1904, line: 105, baseType: !209, offset: 128)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1903, file: !1904, line: 107, baseType: !122, size: 16, offset: 128)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1903, file: !1904, line: 109, baseType: !714, size: 128, offset: 192)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1903, file: !1904, line: 110, baseType: !1913, size: 64, offset: 320)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1904, line: 73, size: 448, elements: !1915)
!1915 = !{!1916, !1919, !1920, !1925, !1930}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1914, file: !1904, line: 74, baseType: !1917, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1904, line: 74, flags: DIFlagFwdDecl)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1914, file: !1904, line: 75, baseType: !1902, size: 64, offset: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, scope: !1914, file: !1904, line: 83, baseType: !1921, size: 128, offset: 128)
!1921 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1914, file: !1904, line: 83, size: 128, elements: !1922)
!1922 = !{!1923, !1924}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1921, file: !1904, line: 84, baseType: !195, size: 128)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1921, file: !1904, line: 85, baseType: !911, size: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, scope: !1914, file: !1904, line: 87, baseType: !1926, size: 128, offset: 256)
!1926 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1914, file: !1904, line: 87, size: 128, elements: !1927)
!1927 = !{!1928, !1929}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1926, file: !1904, line: 88, baseType: !614, size: 128)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1926, file: !1904, line: 89, baseType: !340, size: 128, align: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1914, file: !1904, line: 92, baseType: !7, size: 32, offset: 384)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1903, file: !1904, line: 111, baseType: !610, size: 64, offset: 384)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1903, file: !1904, line: 113, baseType: !1933, size: 256, offset: 448)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1934, line: 102, size: 256, elements: !1935)
!1934 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1935 = !{!1936, !1937, !1938}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1933, file: !1934, line: 103, baseType: !747, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1933, file: !1934, line: 104, baseType: !195, size: 128, offset: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1933, file: !1934, line: 105, baseType: !1939, size: 64, offset: 192)
!1939 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1934, line: 21, baseType: !1940)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{null, !1943}
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1193, file: !1194, line: 1061, baseType: !1945, size: 64, offset: 10944)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1194, line: 43, flags: DIFlagFwdDecl)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1193, file: !1194, line: 1064, baseType: !299, size: 64, offset: 11008)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1193, file: !1194, line: 1065, baseType: !1949, size: 64, offset: 11072)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1742, line: 14, baseType: !1951)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1742, line: 12, size: 384, elements: !1952)
!1952 = !{!1953}
!1953 = !DIDerivedType(tag: DW_TAG_member, scope: !1951, file: !1742, line: 13, baseType: !1954, size: 384)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1951, file: !1742, line: 13, size: 384, elements: !1955)
!1955 = !{!1956, !1957, !1958, !1959}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1954, file: !1742, line: 13, baseType: !117, size: 32)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1954, file: !1742, line: 13, baseType: !117, size: 32, offset: 32)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1954, file: !1742, line: 13, baseType: !117, size: 32, offset: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1954, file: !1742, line: 13, baseType: !1960, size: 256, offset: 128)
!1960 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1961, line: 32, size: 256, elements: !1962)
!1961 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1962 = !{!1963, !1968, !1981, !1987, !1996, !2016, !2021}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1960, file: !1961, line: 37, baseType: !1964, size: 64)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1960, file: !1961, line: 34, size: 64, elements: !1965)
!1965 = !{!1966, !1967}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1964, file: !1961, line: 35, baseType: !1436, size: 32)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1964, file: !1961, line: 36, baseType: !416, size: 32, offset: 32)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1960, file: !1961, line: 45, baseType: !1969, size: 192)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1960, file: !1961, line: 40, size: 192, elements: !1970)
!1970 = !{!1971, !1973, !1974, !1980}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1969, file: !1961, line: 41, baseType: !1972, size: 32)
!1972 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !283, line: 95, baseType: !117)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1969, file: !1961, line: 42, baseType: !117, size: 32, offset: 32)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1969, file: !1961, line: 43, baseType: !1975, size: 64, offset: 64)
!1975 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1961, line: 11, baseType: !1976)
!1976 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1961, line: 8, size: 64, elements: !1977)
!1977 = !{!1978, !1979}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1976, file: !1961, line: 9, baseType: !117, size: 32)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1976, file: !1961, line: 10, baseType: !184, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1969, file: !1961, line: 44, baseType: !117, size: 32, offset: 128)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1960, file: !1961, line: 52, baseType: !1982, size: 128)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1960, file: !1961, line: 48, size: 128, elements: !1983)
!1983 = !{!1984, !1985, !1986}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1982, file: !1961, line: 49, baseType: !1436, size: 32)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1982, file: !1961, line: 50, baseType: !416, size: 32, offset: 32)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1982, file: !1961, line: 51, baseType: !1975, size: 64, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1960, file: !1961, line: 61, baseType: !1988, size: 256)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1960, file: !1961, line: 55, size: 256, elements: !1989)
!1989 = !{!1990, !1991, !1992, !1993, !1995}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1988, file: !1961, line: 56, baseType: !1436, size: 32)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1988, file: !1961, line: 57, baseType: !416, size: 32, offset: 32)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1988, file: !1961, line: 58, baseType: !117, size: 32, offset: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1988, file: !1961, line: 59, baseType: !1994, size: 64, offset: 128)
!1994 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !283, line: 94, baseType: !284)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1988, file: !1961, line: 60, baseType: !1994, size: 64, offset: 192)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1960, file: !1961, line: 95, baseType: !1997, size: 256)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1960, file: !1961, line: 64, size: 256, elements: !1998)
!1998 = !{!1999, !2000}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1997, file: !1961, line: 65, baseType: !184, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, scope: !1997, file: !1961, line: 77, baseType: !2001, size: 192, offset: 64)
!2001 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1997, file: !1961, line: 77, size: 192, elements: !2002)
!2002 = !{!2003, !2004, !2011}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2001, file: !1961, line: 82, baseType: !1181, size: 16)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2001, file: !1961, line: 88, baseType: !2005, size: 192)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2001, file: !1961, line: 84, size: 192, elements: !2006)
!2006 = !{!2007, !2009, !2010}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2005, file: !1961, line: 85, baseType: !2008, size: 64)
!2008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 64, elements: !1306)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2005, file: !1961, line: 86, baseType: !184, size: 64, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2005, file: !1961, line: 87, baseType: !184, size: 64, offset: 128)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2001, file: !1961, line: 93, baseType: !2012, size: 96)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2001, file: !1961, line: 90, size: 96, elements: !2013)
!2013 = !{!2014, !2015}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2012, file: !1961, line: 91, baseType: !2008, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2012, file: !1961, line: 92, baseType: !392, size: 32, offset: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1960, file: !1961, line: 101, baseType: !2017, size: 128)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1960, file: !1961, line: 98, size: 128, elements: !2018)
!2018 = !{!2019, !2020}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2017, file: !1961, line: 99, baseType: !285, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2017, file: !1961, line: 100, baseType: !117, size: 32, offset: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1960, file: !1961, line: 108, baseType: !2022, size: 128)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1960, file: !1961, line: 104, size: 128, elements: !2023)
!2023 = !{!2024, !2025, !2026}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2022, file: !1961, line: 105, baseType: !184, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2022, file: !1961, line: 106, baseType: !117, size: 32, offset: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2022, file: !1961, line: 107, baseType: !7, size: 32, offset: 96)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1193, file: !1194, line: 1067, baseType: !1814, offset: 11136)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1193, file: !1194, line: 1099, baseType: !2029, size: 64, offset: 11136)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1194, line: 56, flags: DIFlagFwdDecl)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1193, file: !1194, line: 1103, baseType: !195, size: 128, offset: 11200)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1193, file: !1194, line: 1104, baseType: !2033, size: 64, offset: 11328)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1194, line: 46, flags: DIFlagFwdDecl)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1193, file: !1194, line: 1105, baseType: !1149, size: 192, offset: 11392)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1193, file: !1194, line: 1106, baseType: !7, size: 32, offset: 11584)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1193, file: !1194, line: 1109, baseType: !2038, size: 128, offset: 11648)
!2038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2039, size: 128, elements: !1545)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1194, line: 51, flags: DIFlagFwdDecl)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1193, file: !1194, line: 1110, baseType: !1149, size: 192, offset: 11776)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1193, file: !1194, line: 1111, baseType: !195, size: 128, offset: 11968)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1193, file: !1194, line: 1173, baseType: !2044, size: 64, offset: 12096)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2046, line: 62, size: 256, align: 256, elements: !2047)
!2046 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2047 = !{!2048, !2049, !2050, !2055}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2045, file: !2046, line: 75, baseType: !392, size: 32)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2045, file: !2046, line: 90, baseType: !392, size: 32, offset: 32)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2045, file: !2046, line: 124, baseType: !2051, size: 64, offset: 64)
!2051 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2045, file: !2046, line: 109, size: 64, elements: !2052)
!2052 = !{!2053, !2054}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2051, file: !2046, line: 110, baseType: !397, size: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2051, file: !2046, line: 112, baseType: !397, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2045, file: !2046, line: 144, baseType: !392, size: 32, offset: 128)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1193, file: !1194, line: 1174, baseType: !390, size: 32, offset: 12160)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1193, file: !1194, line: 1179, baseType: !299, size: 64, offset: 12224)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1193, file: !1194, line: 1182, baseType: !2059, size: 128, offset: 12288)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1127, line: 76, size: 128, elements: !2060)
!2060 = !{!2061, !2066, !2067}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2059, file: !1127, line: 85, baseType: !2062, size: 64)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2063, line: 7, size: 64, elements: !2064)
!2063 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2064 = !{!2065}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2062, file: !2063, line: 12, baseType: !1343, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2059, file: !1127, line: 88, baseType: !465, size: 8, offset: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2059, file: !1127, line: 95, baseType: !465, size: 8, offset: 72)
!2068 = !DIDerivedType(tag: DW_TAG_member, scope: !1193, file: !1194, line: 1184, baseType: !2069, size: 128, offset: 12416)
!2069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1193, file: !1194, line: 1184, size: 128, elements: !2070)
!2070 = !{!2071, !2072}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2069, file: !1194, line: 1185, baseType: !1206, size: 32)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2069, file: !1194, line: 1186, baseType: !340, size: 128, align: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1193, file: !1194, line: 1190, baseType: !2074, size: 64, offset: 12544)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1194, line: 53, flags: DIFlagFwdDecl)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1193, file: !1194, line: 1192, baseType: !2077, size: 128, offset: 12608)
!2077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1127, line: 64, size: 128, elements: !2078)
!2078 = !{!2079, !2080, !2081}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2077, file: !1127, line: 65, baseType: !696, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2077, file: !1127, line: 67, baseType: !392, size: 32, offset: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2077, file: !1127, line: 68, baseType: !392, size: 32, offset: 96)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1193, file: !1194, line: 1206, baseType: !117, size: 32, offset: 12736)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1193, file: !1194, line: 1207, baseType: !117, size: 32, offset: 12768)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1193, file: !1194, line: 1209, baseType: !299, size: 64, offset: 12800)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1193, file: !1194, line: 1219, baseType: !396, size: 64, offset: 12864)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1193, file: !1194, line: 1220, baseType: !396, size: 64, offset: 12928)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1193, file: !1194, line: 1317, baseType: !117, size: 32, offset: 12992)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1193, file: !1194, line: 1319, baseType: !1192, size: 64, offset: 13056)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1193, file: !1194, line: 1322, baseType: !2090, size: 64, offset: 13120)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2092, line: 56, size: 512, elements: !2093)
!2092 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2093 = !{!2094, !2095, !2096, !2097, !2098, !2099, !2100, !2102}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2091, file: !2092, line: 57, baseType: !2090, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2091, file: !2092, line: 58, baseType: !184, size: 64, offset: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2091, file: !2092, line: 59, baseType: !299, size: 64, offset: 128)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2091, file: !2092, line: 60, baseType: !299, size: 64, offset: 192)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2091, file: !2092, line: 61, baseType: !796, size: 64, offset: 256)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2091, file: !2092, line: 62, baseType: !7, size: 32, offset: 320)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2091, file: !2092, line: 63, baseType: !2101, size: 64, offset: 384)
!2101 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !196, line: 153, baseType: !396)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2091, file: !2092, line: 64, baseType: !2103, size: 64, offset: 448)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1193, file: !1194, line: 1326, baseType: !1206, size: 32, offset: 13184)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1193, file: !1194, line: 1342, baseType: !184, size: 64, offset: 13248)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1193, file: !1194, line: 1343, baseType: !397, size: 64, offset: 13312)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1193, file: !1194, line: 1344, baseType: !396, size: 64, offset: 13376)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1193, file: !1194, line: 1345, baseType: !397, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1193, file: !1194, line: 1346, baseType: !397, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1193, file: !1194, line: 1347, baseType: !397, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1193, file: !1194, line: 1348, baseType: !340, size: 128, align: 64, offset: 13504)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1193, file: !1194, line: 1358, baseType: !2114, size: 34816, offset: 13824)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2115, line: 485, size: 34816, elements: !2116)
!2115 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2116 = !{!2117, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2146, !2147, !2148, !2149, !2150, !2151, !2154, !2155, !2156}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2114, file: !2115, line: 487, baseType: !2118, size: 192)
!2118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2119, size: 192, elements: !251)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2120, line: 16, size: 64, elements: !2121)
!2120 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2121 = !{!2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2119, file: !2120, line: 17, baseType: !835, size: 16)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2119, file: !2120, line: 18, baseType: !835, size: 16, offset: 16)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2119, file: !2120, line: 19, baseType: !835, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2119, file: !2120, line: 19, baseType: !835, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2119, file: !2120, line: 19, baseType: !835, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2119, file: !2120, line: 19, baseType: !835, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2119, file: !2120, line: 19, baseType: !835, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2119, file: !2120, line: 20, baseType: !835, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2119, file: !2120, line: 20, baseType: !835, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2119, file: !2120, line: 20, baseType: !835, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2119, file: !2120, line: 20, baseType: !835, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2119, file: !2120, line: 20, baseType: !835, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2119, file: !2120, line: 20, baseType: !835, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2114, file: !2115, line: 491, baseType: !299, size: 64, offset: 192)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2114, file: !2115, line: 495, baseType: !122, size: 16, offset: 256)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2114, file: !2115, line: 496, baseType: !122, size: 16, offset: 272)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2114, file: !2115, line: 497, baseType: !122, size: 16, offset: 288)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2114, file: !2115, line: 498, baseType: !122, size: 16, offset: 304)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2114, file: !2115, line: 502, baseType: !299, size: 64, offset: 320)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2114, file: !2115, line: 503, baseType: !299, size: 64, offset: 384)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2114, file: !2115, line: 514, baseType: !2143, size: 256, offset: 448)
!2143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2144, size: 256, elements: !1131)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2115, line: 483, flags: DIFlagFwdDecl)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2114, file: !2115, line: 516, baseType: !299, size: 64, offset: 704)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2114, file: !2115, line: 518, baseType: !299, size: 64, offset: 768)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2114, file: !2115, line: 520, baseType: !299, size: 64, offset: 832)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2114, file: !2115, line: 521, baseType: !299, size: 64, offset: 896)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2114, file: !2115, line: 522, baseType: !299, size: 64, offset: 960)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2114, file: !2115, line: 528, baseType: !2152, size: 64, offset: 1024)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2115, line: 10, flags: DIFlagFwdDecl)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2114, file: !2115, line: 535, baseType: !299, size: 64, offset: 1088)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2114, file: !2115, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2114, file: !2115, line: 540, baseType: !2157, size: 33280, offset: 1536)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2158, line: 317, size: 33280, elements: !2159)
!2158 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2159 = !{!2160, !2161, !2162}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2157, file: !2158, line: 330, baseType: !7, size: 32)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2157, file: !2158, line: 337, baseType: !299, size: 64, offset: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2157, file: !2158, line: 348, baseType: !2163, size: 32768, offset: 512)
!2163 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2158, line: 304, size: 32768, elements: !2164)
!2164 = !{!2165, !2180, !2219, !2269, !2282}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2163, file: !2158, line: 305, baseType: !2166, size: 896)
!2166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2158, line: 12, size: 896, elements: !2167)
!2167 = !{!2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2179}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2166, file: !2158, line: 13, baseType: !390, size: 32)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2166, file: !2158, line: 14, baseType: !390, size: 32, offset: 32)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2166, file: !2158, line: 15, baseType: !390, size: 32, offset: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2166, file: !2158, line: 16, baseType: !390, size: 32, offset: 96)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2166, file: !2158, line: 17, baseType: !390, size: 32, offset: 128)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2166, file: !2158, line: 18, baseType: !390, size: 32, offset: 160)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2166, file: !2158, line: 19, baseType: !390, size: 32, offset: 192)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2166, file: !2158, line: 22, baseType: !2176, size: 640, offset: 224)
!2176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 640, elements: !2177)
!2177 = !{!2178}
!2178 = !DISubrange(count: 20)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2166, file: !2158, line: 25, baseType: !390, size: 32, offset: 864)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2163, file: !2158, line: 306, baseType: !2181, size: 4096, align: 128)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2158, line: 34, size: 4096, align: 128, elements: !2182)
!2182 = !{!2183, !2184, !2185, !2186, !2187, !2202, !2203, !2204, !2208, !2210, !2214}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2181, file: !2158, line: 35, baseType: !835, size: 16)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2181, file: !2158, line: 36, baseType: !835, size: 16, offset: 16)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2181, file: !2158, line: 37, baseType: !835, size: 16, offset: 32)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2181, file: !2158, line: 38, baseType: !835, size: 16, offset: 48)
!2187 = !DIDerivedType(tag: DW_TAG_member, scope: !2181, file: !2158, line: 39, baseType: !2188, size: 128, offset: 64)
!2188 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2181, file: !2158, line: 39, size: 128, elements: !2189)
!2189 = !{!2190, !2195}
!2190 = !DIDerivedType(tag: DW_TAG_member, scope: !2188, file: !2158, line: 40, baseType: !2191, size: 128)
!2191 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2188, file: !2158, line: 40, size: 128, elements: !2192)
!2192 = !{!2193, !2194}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2191, file: !2158, line: 41, baseType: !396, size: 64)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2191, file: !2158, line: 42, baseType: !396, size: 64, offset: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, scope: !2188, file: !2158, line: 44, baseType: !2196, size: 128)
!2196 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2188, file: !2158, line: 44, size: 128, elements: !2197)
!2197 = !{!2198, !2199, !2200, !2201}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2196, file: !2158, line: 45, baseType: !390, size: 32)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2196, file: !2158, line: 46, baseType: !390, size: 32, offset: 32)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2196, file: !2158, line: 47, baseType: !390, size: 32, offset: 64)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2196, file: !2158, line: 48, baseType: !390, size: 32, offset: 96)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2181, file: !2158, line: 51, baseType: !390, size: 32, offset: 192)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2181, file: !2158, line: 52, baseType: !390, size: 32, offset: 224)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2181, file: !2158, line: 55, baseType: !2205, size: 1024, offset: 256)
!2205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 1024, elements: !2206)
!2206 = !{!2207}
!2207 = !DISubrange(count: 32)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2181, file: !2158, line: 58, baseType: !2209, size: 2048, offset: 1280)
!2209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 2048, elements: !255)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2181, file: !2158, line: 60, baseType: !2211, size: 384, offset: 3328)
!2211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 384, elements: !2212)
!2212 = !{!2213}
!2213 = !DISubrange(count: 12)
!2214 = !DIDerivedType(tag: DW_TAG_member, scope: !2181, file: !2158, line: 62, baseType: !2215, size: 384, offset: 3712)
!2215 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2181, file: !2158, line: 62, size: 384, elements: !2216)
!2216 = !{!2217, !2218}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2215, file: !2158, line: 63, baseType: !2211, size: 384)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2215, file: !2158, line: 64, baseType: !2211, size: 384)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2163, file: !2158, line: 307, baseType: !2220, size: 1088)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2158, line: 79, size: 1088, elements: !2221)
!2221 = !{!2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2268}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2220, file: !2158, line: 80, baseType: !390, size: 32)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2220, file: !2158, line: 81, baseType: !390, size: 32, offset: 32)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2220, file: !2158, line: 82, baseType: !390, size: 32, offset: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2220, file: !2158, line: 83, baseType: !390, size: 32, offset: 96)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2220, file: !2158, line: 84, baseType: !390, size: 32, offset: 128)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2220, file: !2158, line: 85, baseType: !390, size: 32, offset: 160)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2220, file: !2158, line: 86, baseType: !390, size: 32, offset: 192)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2220, file: !2158, line: 88, baseType: !2176, size: 640, offset: 224)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2220, file: !2158, line: 89, baseType: !1328, size: 8, offset: 864)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2220, file: !2158, line: 90, baseType: !1328, size: 8, offset: 872)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2220, file: !2158, line: 91, baseType: !1328, size: 8, offset: 880)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2220, file: !2158, line: 92, baseType: !1328, size: 8, offset: 888)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2220, file: !2158, line: 93, baseType: !1328, size: 8, offset: 896)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2220, file: !2158, line: 94, baseType: !1328, size: 8, offset: 904)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2220, file: !2158, line: 95, baseType: !2237, size: 64, offset: 960)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2239, line: 11, size: 128, elements: !2240)
!2239 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2240 = !{!2241, !2242}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2238, file: !2239, line: 12, baseType: !285, size: 64)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2238, file: !2239, line: 13, baseType: !2243, size: 64, offset: 64)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2245, line: 56, size: 1344, elements: !2246)
!2245 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2246 = !{!2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2244, file: !2245, line: 61, baseType: !299, size: 64)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2244, file: !2245, line: 62, baseType: !299, size: 64, offset: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2244, file: !2245, line: 63, baseType: !299, size: 64, offset: 128)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2244, file: !2245, line: 64, baseType: !299, size: 64, offset: 192)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2244, file: !2245, line: 65, baseType: !299, size: 64, offset: 256)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2244, file: !2245, line: 66, baseType: !299, size: 64, offset: 320)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2244, file: !2245, line: 68, baseType: !299, size: 64, offset: 384)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2244, file: !2245, line: 69, baseType: !299, size: 64, offset: 448)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2244, file: !2245, line: 70, baseType: !299, size: 64, offset: 512)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2244, file: !2245, line: 71, baseType: !299, size: 64, offset: 576)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2244, file: !2245, line: 72, baseType: !299, size: 64, offset: 640)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2244, file: !2245, line: 73, baseType: !299, size: 64, offset: 704)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2244, file: !2245, line: 74, baseType: !299, size: 64, offset: 768)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2244, file: !2245, line: 75, baseType: !299, size: 64, offset: 832)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2244, file: !2245, line: 76, baseType: !299, size: 64, offset: 896)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2244, file: !2245, line: 81, baseType: !299, size: 64, offset: 960)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2244, file: !2245, line: 83, baseType: !299, size: 64, offset: 1024)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2244, file: !2245, line: 84, baseType: !299, size: 64, offset: 1088)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2244, file: !2245, line: 85, baseType: !299, size: 64, offset: 1152)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2244, file: !2245, line: 86, baseType: !299, size: 64, offset: 1216)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2244, file: !2245, line: 87, baseType: !299, size: 64, offset: 1280)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2220, file: !2158, line: 96, baseType: !390, size: 32, offset: 1024)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2163, file: !2158, line: 308, baseType: !2270, size: 4608, align: 512)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2158, line: 289, size: 4608, align: 512, elements: !2271)
!2271 = !{!2272, !2273, !2280}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2270, file: !2158, line: 290, baseType: !2181, size: 4096, align: 128)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2270, file: !2158, line: 291, baseType: !2274, size: 512, offset: 4096)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2158, line: 268, size: 512, elements: !2275)
!2275 = !{!2276, !2277, !2278}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2274, file: !2158, line: 269, baseType: !396, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2274, file: !2158, line: 270, baseType: !396, size: 64, offset: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2274, file: !2158, line: 271, baseType: !2279, size: 384, offset: 128)
!2279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !396, size: 384, elements: !1601)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2270, file: !2158, line: 292, baseType: !2281, offset: 4608)
!2281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1328, elements: !1699)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2163, file: !2158, line: 309, baseType: !2283, size: 32768)
!2283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1328, size: 32768, elements: !2284)
!2284 = !{!2285}
!2285 = !DISubrange(count: 4096)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1189, file: !698, line: 378, baseType: !2287, size: 64, offset: 64)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1185, file: !698, line: 384, baseType: !1478, size: 192, offset: 192)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !954, file: !698, line: 500, baseType: !209, offset: 6656)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !954, file: !698, line: 501, baseType: !2291, size: 64, offset: 6656)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !698, line: 387, flags: DIFlagFwdDecl)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !954, file: !698, line: 516, baseType: !1689, size: 64, offset: 6720)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !954, file: !698, line: 519, baseType: !327, size: 64, offset: 6784)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !954, file: !698, line: 521, baseType: !2296, size: 64, offset: 6848)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !698, line: 521, flags: DIFlagFwdDecl)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !954, file: !698, line: 545, baseType: !723, size: 32, offset: 6912)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !954, file: !698, line: 548, baseType: !465, size: 8, offset: 6944)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !954, file: !698, line: 550, baseType: !2301, offset: 6952)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2302, line: 142, elements: !223)
!2302 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !954, file: !698, line: 554, baseType: !1933, size: 256, offset: 6976)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !954, file: !698, line: 557, baseType: !390, size: 32, offset: 7232)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !951, file: !698, line: 565, baseType: !2306, offset: 7296)
!2306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, elements: !2307)
!2307 = !{!2308}
!2308 = !DISubrange(count: -1)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !947, file: !698, line: 151, baseType: !723, size: 32)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !940, file: !698, line: 156, baseType: !209, offset: 256)
!2311 = !DIDerivedType(tag: DW_TAG_member, scope: !702, file: !698, line: 159, baseType: !2312, size: 128)
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !702, file: !698, line: 159, size: 128, elements: !2313)
!2313 = !{!2314, !2378}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2312, file: !698, line: 161, baseType: !2315, size: 64)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2317)
!2317 = !{!2318, !2328, !2349, !2350, !2351, !2352, !2353, !2365, !2366, !2367}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2316, file: !31, line: 111, baseType: !2319, size: 384)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2320)
!2320 = !{!2321, !2323, !2324, !2325, !2326, !2327}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2319, file: !31, line: 20, baseType: !2322, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !299)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2319, file: !31, line: 21, baseType: !2322, size: 64, offset: 64)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2319, file: !31, line: 22, baseType: !2322, size: 64, offset: 128)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2319, file: !31, line: 23, baseType: !299, size: 64, offset: 192)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2319, file: !31, line: 24, baseType: !299, size: 64, offset: 256)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2319, file: !31, line: 25, baseType: !299, size: 64, offset: 320)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2316, file: !31, line: 112, baseType: !2329, size: 64, offset: 384)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2331, line: 105, size: 128, elements: !2332)
!2331 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2332 = !{!2333, !2334}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2330, file: !2331, line: 110, baseType: !299, size: 64)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2330, file: !2331, line: 118, baseType: !2335, size: 64, offset: 64)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2331, line: 95, size: 448, elements: !2337)
!2337 = !{!2338, !2339, !2344, !2345, !2346, !2347, !2348}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2336, file: !2331, line: 96, baseType: !747, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2336, file: !2331, line: 97, baseType: !2340, size: 64, offset: 64)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2331, line: 60, baseType: !2342)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{null, !2329}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2336, file: !2331, line: 98, baseType: !2340, size: 64, offset: 128)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2336, file: !2331, line: 99, baseType: !465, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2336, file: !2331, line: 100, baseType: !465, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2336, file: !2331, line: 101, baseType: !340, size: 128, align: 64, offset: 256)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2336, file: !2331, line: 102, baseType: !2329, size: 64, offset: 384)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2316, file: !31, line: 113, baseType: !2330, size: 128, offset: 448)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2316, file: !31, line: 114, baseType: !1478, size: 192, offset: 576)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2316, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2316, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2316, file: !31, line: 117, baseType: !2354, size: 64, offset: 832)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2356)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2357)
!2357 = !{!2358, !2359, !2363, !2364}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2356, file: !31, line: 73, baseType: !816, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2356, file: !31, line: 78, baseType: !2360, size: 64, offset: 64)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{null, !2315}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2356, file: !31, line: 83, baseType: !2360, size: 64, offset: 128)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2356, file: !31, line: 89, baseType: !1003, size: 64, offset: 192)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2316, file: !31, line: 118, baseType: !184, size: 64, offset: 896)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2316, file: !31, line: 119, baseType: !117, size: 32, offset: 960)
!2367 = !DIDerivedType(tag: DW_TAG_member, scope: !2316, file: !31, line: 120, baseType: !2368, size: 128, offset: 1024)
!2368 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2316, file: !31, line: 120, size: 128, elements: !2369)
!2369 = !{!2370, !2376}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2368, file: !31, line: 121, baseType: !2371, size: 128)
!2371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2372, line: 6, size: 128, elements: !2373)
!2372 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2373 = !{!2374, !2375}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2371, file: !2372, line: 7, baseType: !396, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2371, file: !2372, line: 8, baseType: !396, size: 64, offset: 64)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2368, file: !31, line: 122, baseType: !2377)
!2377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2371, elements: !1699)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2312, file: !698, line: 162, baseType: !184, size: 64, offset: 64)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !702, file: !698, line: 176, baseType: !340, size: 128, align: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, scope: !697, file: !698, line: 179, baseType: !2381, size: 32, offset: 384)
!2381 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !697, file: !698, line: 179, size: 32, elements: !2382)
!2382 = !{!2383, !2384, !2385, !2386}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2381, file: !698, line: 184, baseType: !723, size: 32)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2381, file: !698, line: 192, baseType: !7, size: 32)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2381, file: !698, line: 194, baseType: !7, size: 32)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2381, file: !698, line: 195, baseType: !117, size: 32)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !697, file: !698, line: 199, baseType: !723, size: 32, offset: 416)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !632, file: !44, line: 1964, baseType: !2389, size: 64, offset: 1344)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!285, !574, !2392}
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2394, line: 12, size: 256, elements: !2395)
!2394 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2395 = !{!2396, !2397, !2398, !2399, !2400}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2393, file: !2394, line: 13, baseType: !719, size: 32)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2393, file: !2394, line: 16, baseType: !117, size: 32, offset: 32)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2393, file: !2394, line: 23, baseType: !299, size: 64, offset: 64)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2393, file: !2394, line: 30, baseType: !299, size: 64, offset: 128)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2393, file: !2394, line: 33, baseType: !2401, size: 64, offset: 192)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !698, line: 27, flags: DIFlagFwdDecl)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !632, file: !44, line: 1966, baseType: !2389, size: 64, offset: 1408)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !575, file: !44, line: 1424, baseType: !2405, size: 64, offset: 448)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2407)
!2407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2408)
!2408 = !{!2409, !2455, !2459, !2463, !2464, !2465, !2466, !2467, !2472, !2477, !2481}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2407, file: !38, line: 323, baseType: !2410, size: 64)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!117, !2413}
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2415)
!2415 = !{!2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2440, !2441, !2442}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2414, file: !38, line: 295, baseType: !614, size: 128)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2414, file: !38, line: 296, baseType: !195, size: 128, offset: 128)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2414, file: !38, line: 297, baseType: !195, size: 128, offset: 256)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2414, file: !38, line: 298, baseType: !195, size: 128, offset: 384)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2414, file: !38, line: 299, baseType: !1149, size: 192, offset: 512)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2414, file: !38, line: 300, baseType: !209, offset: 704)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2414, file: !38, line: 301, baseType: !723, size: 32, offset: 704)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2414, file: !38, line: 302, baseType: !574, size: 64, offset: 768)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2414, file: !38, line: 303, baseType: !2425, size: 64, offset: 832)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2426)
!2426 = !{!2427, !2439}
!2427 = !DIDerivedType(tag: DW_TAG_member, scope: !2425, file: !38, line: 69, baseType: !2428, size: 32)
!2428 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2425, file: !38, line: 69, size: 32, elements: !2429)
!2429 = !{!2430, !2431, !2432}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2428, file: !38, line: 70, baseType: !410, size: 32)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2428, file: !38, line: 71, baseType: !418, size: 32)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2428, file: !38, line: 72, baseType: !2433, size: 32)
!2433 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2434, line: 24, baseType: !2435)
!2434 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2434, line: 22, size: 32, elements: !2436)
!2436 = !{!2437}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2435, file: !2434, line: 23, baseType: !2438, size: 32)
!2438 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2434, line: 20, baseType: !416)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2425, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2414, file: !38, line: 304, baseType: !506, size: 64, offset: 896)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2414, file: !38, line: 305, baseType: !299, size: 64, offset: 960)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2414, file: !38, line: 306, baseType: !2443, size: 576, offset: 1024)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2444)
!2444 = !{!2445, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2443, file: !38, line: 206, baseType: !2446, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !508)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2443, file: !38, line: 207, baseType: !2446, size: 64, offset: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2443, file: !38, line: 208, baseType: !2446, size: 64, offset: 128)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2443, file: !38, line: 209, baseType: !2446, size: 64, offset: 192)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2443, file: !38, line: 210, baseType: !2446, size: 64, offset: 256)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2443, file: !38, line: 211, baseType: !2446, size: 64, offset: 320)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2443, file: !38, line: 212, baseType: !2446, size: 64, offset: 384)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2443, file: !38, line: 213, baseType: !514, size: 64, offset: 448)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2443, file: !38, line: 214, baseType: !514, size: 64, offset: 512)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2407, file: !38, line: 324, baseType: !2456, size: 64, offset: 64)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{!2413, !574, !117}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2407, file: !38, line: 325, baseType: !2460, size: 64, offset: 128)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{null, !2413}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2407, file: !38, line: 326, baseType: !2410, size: 64, offset: 192)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2407, file: !38, line: 327, baseType: !2410, size: 64, offset: 256)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2407, file: !38, line: 328, baseType: !2410, size: 64, offset: 320)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2407, file: !38, line: 329, baseType: !660, size: 64, offset: 384)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2407, file: !38, line: 332, baseType: !2468, size: 64, offset: 448)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{!2471, !404}
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2407, file: !38, line: 333, baseType: !2473, size: 64, offset: 512)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!117, !404, !2476}
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2407, file: !38, line: 335, baseType: !2478, size: 64, offset: 576)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!117, !404, !2471}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2407, file: !38, line: 337, baseType: !2482, size: 64, offset: 640)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{!117, !574, !2485}
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !575, file: !44, line: 1425, baseType: !2487, size: 64, offset: 512)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2489)
!2489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2490)
!2490 = !{!2491, !2495, !2496, !2500, !2501, !2502, !2517, !2540, !2544, !2545, !2568}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2489, file: !38, line: 429, baseType: !2492, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!117, !574, !117, !117, !524}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2489, file: !38, line: 430, baseType: !660, size: 64, offset: 64)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2489, file: !38, line: 431, baseType: !2497, size: 64, offset: 128)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!117, !574, !7}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2489, file: !38, line: 432, baseType: !2497, size: 64, offset: 192)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2489, file: !38, line: 433, baseType: !660, size: 64, offset: 256)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2489, file: !38, line: 434, baseType: !2503, size: 64, offset: 320)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!117, !574, !117, !2506}
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2508)
!2508 = !{!2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2507, file: !38, line: 416, baseType: !117, size: 32)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2507, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2507, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2507, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2507, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2507, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2507, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2507, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2489, file: !38, line: 435, baseType: !2518, size: 64, offset: 384)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!117, !574, !2425, !2521}
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2523)
!2523 = !{!2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2522, file: !38, line: 344, baseType: !117, size: 32)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2522, file: !38, line: 345, baseType: !396, size: 64, offset: 64)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2522, file: !38, line: 346, baseType: !396, size: 64, offset: 128)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2522, file: !38, line: 347, baseType: !396, size: 64, offset: 192)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2522, file: !38, line: 348, baseType: !396, size: 64, offset: 256)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2522, file: !38, line: 349, baseType: !396, size: 64, offset: 320)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2522, file: !38, line: 350, baseType: !396, size: 64, offset: 384)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2522, file: !38, line: 351, baseType: !753, size: 64, offset: 448)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2522, file: !38, line: 353, baseType: !753, size: 64, offset: 512)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2522, file: !38, line: 354, baseType: !117, size: 32, offset: 576)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2522, file: !38, line: 355, baseType: !117, size: 32, offset: 608)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2522, file: !38, line: 356, baseType: !396, size: 64, offset: 640)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2522, file: !38, line: 357, baseType: !396, size: 64, offset: 704)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2522, file: !38, line: 358, baseType: !396, size: 64, offset: 768)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2522, file: !38, line: 359, baseType: !753, size: 64, offset: 832)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2522, file: !38, line: 360, baseType: !117, size: 32, offset: 896)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2489, file: !38, line: 436, baseType: !2541, size: 64, offset: 448)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!117, !574, !2485, !2521}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2489, file: !38, line: 438, baseType: !2518, size: 64, offset: 512)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2489, file: !38, line: 439, baseType: !2546, size: 64, offset: 576)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!117, !574, !2549}
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2551)
!2551 = !{!2552, !2553}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2550, file: !38, line: 410, baseType: !7, size: 32)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2550, file: !38, line: 411, baseType: !2554, size: 1344, offset: 64)
!2554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2555, size: 1344, elements: !251)
!2555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2556)
!2556 = !{!2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2567}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2555, file: !38, line: 396, baseType: !7, size: 32)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2555, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2555, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2555, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2555, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2555, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2555, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2555, file: !38, line: 404, baseType: !398, size: 64, offset: 256)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2555, file: !38, line: 405, baseType: !2566, size: 64, offset: 320)
!2566 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !196, line: 126, baseType: !396)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2555, file: !38, line: 406, baseType: !2566, size: 64, offset: 384)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2489, file: !38, line: 440, baseType: !2497, size: 64, offset: 640)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !575, file: !44, line: 1426, baseType: !2570, size: 64, offset: 576)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2572)
!2572 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !575, file: !44, line: 1427, baseType: !299, size: 64, offset: 640)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !575, file: !44, line: 1428, baseType: !299, size: 64, offset: 704)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !575, file: !44, line: 1429, baseType: !299, size: 64, offset: 768)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !575, file: !44, line: 1430, baseType: !357, size: 64, offset: 832)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !575, file: !44, line: 1431, baseType: !743, size: 256, offset: 896)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !575, file: !44, line: 1432, baseType: !117, size: 32, offset: 1152)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !575, file: !44, line: 1433, baseType: !723, size: 32, offset: 1184)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !575, file: !44, line: 1437, baseType: !2581, size: 64, offset: 1216)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2584)
!2584 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !575, file: !44, line: 1449, baseType: !2586, size: 64, offset: 1280)
!2586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !373, line: 34, size: 64, elements: !2587)
!2587 = !{!2588}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2586, file: !373, line: 35, baseType: !376, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !575, file: !44, line: 1450, baseType: !195, size: 128, offset: 1344)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !575, file: !44, line: 1451, baseType: !2591, size: 64, offset: 1472)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !575, file: !44, line: 1452, baseType: !1899, size: 64, offset: 1536)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !575, file: !44, line: 1453, baseType: !2595, size: 64, offset: 1600)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !575, file: !44, line: 1454, baseType: !614, size: 128, offset: 1664)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !575, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !575, file: !44, line: 1456, baseType: !2600, size: 2432, offset: 1856)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2601)
!2601 = !{!2602, !2603, !2604, !2606, !2638}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2600, file: !38, line: 519, baseType: !7, size: 32)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2600, file: !38, line: 520, baseType: !743, size: 256, offset: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2600, file: !38, line: 521, baseType: !2605, size: 192, offset: 320)
!2605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 192, elements: !251)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2600, file: !38, line: 522, baseType: !2607, size: 1728, offset: 512)
!2607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2608, size: 1728, elements: !251)
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2609)
!2609 = !{!2610, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2608, file: !38, line: 223, baseType: !2611, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2613)
!2613 = !{!2614, !2615, !2628, !2629}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2612, file: !38, line: 444, baseType: !117, size: 32)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2612, file: !38, line: 445, baseType: !2616, size: 64, offset: 64)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2618)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2619)
!2619 = !{!2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2618, file: !38, line: 311, baseType: !660, size: 64)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2618, file: !38, line: 312, baseType: !660, size: 64, offset: 64)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2618, file: !38, line: 313, baseType: !660, size: 64, offset: 128)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2618, file: !38, line: 314, baseType: !660, size: 64, offset: 192)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2618, file: !38, line: 315, baseType: !2410, size: 64, offset: 256)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2618, file: !38, line: 316, baseType: !2410, size: 64, offset: 320)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2618, file: !38, line: 317, baseType: !2410, size: 64, offset: 384)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2618, file: !38, line: 318, baseType: !2482, size: 64, offset: 448)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2612, file: !38, line: 446, baseType: !168, size: 64, offset: 128)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2612, file: !38, line: 447, baseType: !2611, size: 64, offset: 192)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2608, file: !38, line: 224, baseType: !117, size: 32, offset: 64)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2608, file: !38, line: 226, baseType: !195, size: 128, offset: 128)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2608, file: !38, line: 227, baseType: !299, size: 64, offset: 256)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2608, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2608, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2608, file: !38, line: 230, baseType: !2446, size: 64, offset: 384)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2608, file: !38, line: 231, baseType: !2446, size: 64, offset: 448)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2608, file: !38, line: 232, baseType: !184, size: 64, offset: 512)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2600, file: !38, line: 523, baseType: !2639, size: 192, offset: 2240)
!2639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2616, size: 192, elements: !251)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !575, file: !44, line: 1458, baseType: !2641, size: 2112, offset: 4288)
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2642)
!2642 = !{!2643, !2644, !2645}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2641, file: !44, line: 1411, baseType: !117, size: 32)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2641, file: !44, line: 1412, baseType: !1457, size: 128, offset: 64)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2641, file: !44, line: 1413, baseType: !2646, size: 1920, offset: 192)
!2646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2647, size: 1920, elements: !251)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2648, line: 12, size: 640, elements: !2649)
!2648 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2649 = !{!2650, !2658, !2660, !2665, !2666}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2647, file: !2648, line: 13, baseType: !2651, size: 320)
!2651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2652, line: 17, size: 320, elements: !2653)
!2652 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2653 = !{!2654, !2655, !2656, !2657}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2651, file: !2652, line: 18, baseType: !117, size: 32)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2651, file: !2652, line: 19, baseType: !117, size: 32, offset: 32)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2651, file: !2652, line: 20, baseType: !1457, size: 128, offset: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2651, file: !2652, line: 22, baseType: !340, size: 128, align: 64, offset: 192)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2647, file: !2648, line: 14, baseType: !2659, size: 64, offset: 320)
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2647, file: !2648, line: 15, baseType: !2661, size: 64, offset: 384)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2662, line: 16, size: 64, elements: !2663)
!2662 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2663 = !{!2664}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2661, file: !2662, line: 17, baseType: !1192, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2647, file: !2648, line: 16, baseType: !1457, size: 128, offset: 448)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2647, file: !2648, line: 17, baseType: !723, size: 32, offset: 576)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !575, file: !44, line: 1465, baseType: !184, size: 64, offset: 6400)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !575, file: !44, line: 1468, baseType: !390, size: 32, offset: 6464)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !575, file: !44, line: 1470, baseType: !514, size: 64, offset: 6528)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !575, file: !44, line: 1471, baseType: !514, size: 64, offset: 6592)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !575, file: !44, line: 1473, baseType: !392, size: 32, offset: 6656)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !575, file: !44, line: 1474, baseType: !2673, size: 64, offset: 6720)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !575, file: !44, line: 1477, baseType: !2676, size: 256, offset: 6784)
!2676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 256, elements: !2206)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !575, file: !44, line: 1478, baseType: !2678, size: 128, offset: 7040)
!2678 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2679, line: 18, baseType: !2680)
!2679 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2679, line: 16, size: 128, elements: !2681)
!2681 = !{!2682}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2680, file: !2679, line: 17, baseType: !2683, size: 128)
!2683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1329, size: 128, elements: !1711)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !575, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !575, file: !44, line: 1481, baseType: !2686, size: 32, offset: 7200)
!2686 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !196, line: 150, baseType: !7)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !575, file: !44, line: 1487, baseType: !1149, size: 192, offset: 7232)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !575, file: !44, line: 1493, baseType: !166, size: 64, offset: 7424)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !575, file: !44, line: 1495, baseType: !2690, size: 64, offset: 7488)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2692)
!2692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !355, line: 135, size: 1024, align: 512, elements: !2693)
!2693 = !{!2694, !2698, !2699, !2706, !2712, !2716, !2720, !2724, !2725, !2729, !2733, !2738, !2742}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2692, file: !355, line: 136, baseType: !2695, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{!117, !357, !7}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2692, file: !355, line: 137, baseType: !2695, size: 64, offset: 64)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2692, file: !355, line: 138, baseType: !2700, size: 64, offset: 128)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{!117, !2703, !2705}
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !358)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2692, file: !355, line: 139, baseType: !2707, size: 64, offset: 192)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!117, !2703, !7, !166, !2710}
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !381)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2692, file: !355, line: 141, baseType: !2713, size: 64, offset: 256)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!117, !2703}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2692, file: !355, line: 142, baseType: !2717, size: 64, offset: 320)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!117, !357}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2692, file: !355, line: 143, baseType: !2721, size: 64, offset: 384)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{null, !357}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2692, file: !355, line: 144, baseType: !2721, size: 64, offset: 448)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2692, file: !355, line: 145, baseType: !2726, size: 64, offset: 512)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{null, !357, !404}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2692, file: !355, line: 146, baseType: !2730, size: 64, offset: 576)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{!250, !357, !250, !117}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2692, file: !355, line: 147, baseType: !2734, size: 64, offset: 640)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!353, !2737}
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2692, file: !355, line: 148, baseType: !2739, size: 64, offset: 704)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!117, !524, !465}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2692, file: !355, line: 149, baseType: !2743, size: 64, offset: 768)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = !DISubroutineType(types: !2745)
!2745 = !{!357, !357, !2746}
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !405)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !575, file: !44, line: 1500, baseType: !117, size: 32, offset: 7552)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !575, file: !44, line: 1502, baseType: !2750, size: 448, offset: 7616)
!2750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2394, line: 60, size: 448, elements: !2751)
!2751 = !{!2752, !2757, !2758, !2759, !2760, !2761, !2762}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2750, file: !2394, line: 61, baseType: !2753, size: 64)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{!299, !2756, !2392}
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2750, file: !2394, line: 63, baseType: !2753, size: 64, offset: 64)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2750, file: !2394, line: 66, baseType: !285, size: 64, offset: 128)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2750, file: !2394, line: 67, baseType: !117, size: 32, offset: 192)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2750, file: !2394, line: 68, baseType: !7, size: 32, offset: 224)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2750, file: !2394, line: 71, baseType: !195, size: 128, offset: 256)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2750, file: !2394, line: 77, baseType: !2763, size: 64, offset: 384)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !575, file: !44, line: 1505, baseType: !747, size: 64, offset: 8064)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !575, file: !44, line: 1508, baseType: !747, size: 64, offset: 8128)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !575, file: !44, line: 1511, baseType: !117, size: 32, offset: 8192)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !575, file: !44, line: 1514, baseType: !885, size: 32, offset: 8224)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !575, file: !44, line: 1517, baseType: !2769, size: 64, offset: 8256)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1934, line: 18, flags: DIFlagFwdDecl)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !575, file: !44, line: 1518, baseType: !610, size: 64, offset: 8320)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !575, file: !44, line: 1525, baseType: !1689, size: 64, offset: 8384)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !575, file: !44, line: 1532, baseType: !2774, size: 64, offset: 8448)
!2774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2775, line: 52, size: 64, elements: !2776)
!2775 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2776 = !{!2777}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2774, file: !2775, line: 53, baseType: !2778, size: 64)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2775, line: 40, size: 256, elements: !2780)
!2780 = !{!2781, !2782, !2787}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2779, file: !2775, line: 42, baseType: !209)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2779, file: !2775, line: 44, baseType: !2783, size: 192)
!2783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2775, line: 28, size: 192, elements: !2784)
!2784 = !{!2785, !2786}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2783, file: !2775, line: 29, baseType: !195, size: 128)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2783, file: !2775, line: 31, baseType: !285, size: 64, offset: 128)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2779, file: !2775, line: 49, baseType: !285, size: 64, offset: 192)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !575, file: !44, line: 1533, baseType: !2774, size: 64, offset: 8512)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !575, file: !44, line: 1534, baseType: !340, size: 128, align: 64, offset: 8576)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !575, file: !44, line: 1535, baseType: !1933, size: 256, offset: 8704)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !575, file: !44, line: 1537, baseType: !1149, size: 192, offset: 8960)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !575, file: !44, line: 1542, baseType: !117, size: 32, offset: 9152)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !575, file: !44, line: 1545, baseType: !209, offset: 9184)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !575, file: !44, line: 1546, baseType: !195, size: 128, offset: 9216)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !575, file: !44, line: 1548, baseType: !209, offset: 9344)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !575, file: !44, line: 1549, baseType: !195, size: 128, offset: 9344)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !405, file: !44, line: 624, baseType: !709, size: 64, offset: 256)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !405, file: !44, line: 631, baseType: !299, size: 64, offset: 320)
!2799 = !DIDerivedType(tag: DW_TAG_member, scope: !405, file: !44, line: 639, baseType: !2800, size: 32, offset: 384)
!2800 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !405, file: !44, line: 639, size: 32, elements: !2801)
!2801 = !{!2802, !2804}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2800, file: !44, line: 640, baseType: !2803, size: 32)
!2803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2800, file: !44, line: 641, baseType: !7, size: 32)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !405, file: !44, line: 643, baseType: !488, size: 32, offset: 416)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !405, file: !44, line: 644, baseType: !506, size: 64, offset: 448)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !405, file: !44, line: 645, baseType: !510, size: 128, offset: 512)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !405, file: !44, line: 646, baseType: !510, size: 128, offset: 640)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !405, file: !44, line: 647, baseType: !510, size: 128, offset: 768)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !405, file: !44, line: 648, baseType: !209, offset: 896)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !405, file: !44, line: 649, baseType: !122, size: 16, offset: 896)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !405, file: !44, line: 650, baseType: !1328, size: 8, offset: 912)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !405, file: !44, line: 651, baseType: !1328, size: 8, offset: 920)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !405, file: !44, line: 652, baseType: !2566, size: 64, offset: 960)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !405, file: !44, line: 659, baseType: !299, size: 64, offset: 1024)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !405, file: !44, line: 660, baseType: !743, size: 256, offset: 1088)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !405, file: !44, line: 662, baseType: !299, size: 64, offset: 1344)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !405, file: !44, line: 663, baseType: !299, size: 64, offset: 1408)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !405, file: !44, line: 665, baseType: !614, size: 128, offset: 1472)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !405, file: !44, line: 666, baseType: !195, size: 128, offset: 1600)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !405, file: !44, line: 675, baseType: !195, size: 128, offset: 1728)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !405, file: !44, line: 676, baseType: !195, size: 128, offset: 1856)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !405, file: !44, line: 677, baseType: !195, size: 128, offset: 1984)
!2824 = !DIDerivedType(tag: DW_TAG_member, scope: !405, file: !44, line: 678, baseType: !2825, size: 128, offset: 2112)
!2825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !405, file: !44, line: 678, size: 128, elements: !2826)
!2826 = !{!2827, !2828}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2825, file: !44, line: 679, baseType: !610, size: 64)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2825, file: !44, line: 680, baseType: !340, size: 128, align: 64)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !405, file: !44, line: 682, baseType: !749, size: 64, offset: 2240)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !405, file: !44, line: 683, baseType: !749, size: 64, offset: 2304)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !405, file: !44, line: 684, baseType: !723, size: 32, offset: 2368)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !405, file: !44, line: 685, baseType: !723, size: 32, offset: 2400)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !405, file: !44, line: 686, baseType: !723, size: 32, offset: 2432)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !405, file: !44, line: 688, baseType: !723, size: 32, offset: 2464)
!2835 = !DIDerivedType(tag: DW_TAG_member, scope: !405, file: !44, line: 690, baseType: !2836, size: 64, offset: 2496)
!2836 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !405, file: !44, line: 690, size: 64, elements: !2837)
!2837 = !{!2838, !3061}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2836, file: !44, line: 691, baseType: !2839, size: 64)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2841)
!2841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2842)
!2842 = !{!2843, !2844, !2848, !2853, !2857, !2858, !2859, !2863, !2876, !2877, !2885, !2889, !2890, !2894, !2895, !2899, !2904, !2905, !2909, !2913, !3021, !3025, !3026, !3030, !3031, !3035, !3039, !3044, !3048, !3052, !3056, !3060}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2841, file: !44, line: 1823, baseType: !168, size: 64)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2841, file: !44, line: 1824, baseType: !2845, size: 64, offset: 64)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!506, !327, !506, !117}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2841, file: !44, line: 1825, baseType: !2849, size: 64, offset: 128)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = !DISubroutineType(types: !2851)
!2851 = !{!281, !327, !250, !296, !2852}
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2841, file: !44, line: 1826, baseType: !2854, size: 64, offset: 192)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{!281, !327, !166, !296, !2852}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2841, file: !44, line: 1827, baseType: !820, size: 64, offset: 256)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2841, file: !44, line: 1828, baseType: !820, size: 64, offset: 320)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2841, file: !44, line: 1829, baseType: !2860, size: 64, offset: 384)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = !DISubroutineType(types: !2862)
!2862 = !{!117, !823, !465}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2841, file: !44, line: 1830, baseType: !2864, size: 64, offset: 448)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!117, !327, !2867}
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2869)
!2869 = !{!2870, !2875}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2868, file: !44, line: 1777, baseType: !2871, size: 64)
!2871 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2872)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!117, !2867, !166, !117, !506, !396, !7}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2868, file: !44, line: 1778, baseType: !506, size: 64, offset: 64)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2841, file: !44, line: 1831, baseType: !2864, size: 64, offset: 512)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2841, file: !44, line: 1832, baseType: !2878, size: 64, offset: 576)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = !DISubroutineType(types: !2880)
!2880 = !{!2881, !327, !2883}
!2881 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2882, line: 52, baseType: !7)
!2882 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !594, line: 27, flags: DIFlagFwdDecl)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2841, file: !44, line: 1833, baseType: !2886, size: 64, offset: 640)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{!285, !327, !7, !299}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2841, file: !44, line: 1834, baseType: !2886, size: 64, offset: 704)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2841, file: !44, line: 1835, baseType: !2891, size: 64, offset: 768)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{!117, !327, !957}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2841, file: !44, line: 1836, baseType: !299, size: 64, offset: 832)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2841, file: !44, line: 1837, baseType: !2896, size: 64, offset: 896)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{!117, !404, !327}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2841, file: !44, line: 1838, baseType: !2900, size: 64, offset: 960)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!117, !327, !2903}
!2903 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !184)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2841, file: !44, line: 1839, baseType: !2896, size: 64, offset: 1024)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2841, file: !44, line: 1840, baseType: !2906, size: 64, offset: 1088)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{!117, !327, !506, !506, !117}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2841, file: !44, line: 1841, baseType: !2910, size: 64, offset: 1152)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = !DISubroutineType(types: !2912)
!2912 = !{!117, !117, !327, !117}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2841, file: !44, line: 1842, baseType: !2914, size: 64, offset: 1216)
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{!117, !327, !117, !2917}
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2919)
!2919 = !{!2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2951, !2952, !2953, !2966, !2997}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2918, file: !44, line: 1063, baseType: !2917, size: 64)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2918, file: !44, line: 1064, baseType: !195, size: 128, offset: 64)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2918, file: !44, line: 1065, baseType: !614, size: 128, offset: 192)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2918, file: !44, line: 1066, baseType: !195, size: 128, offset: 320)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2918, file: !44, line: 1069, baseType: !195, size: 128, offset: 448)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2918, file: !44, line: 1072, baseType: !2903, size: 64, offset: 576)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2918, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2918, file: !44, line: 1074, baseType: !402, size: 8, offset: 672)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2918, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2918, file: !44, line: 1076, baseType: !117, size: 32, offset: 736)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2918, file: !44, line: 1077, baseType: !1457, size: 128, offset: 768)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2918, file: !44, line: 1078, baseType: !327, size: 64, offset: 896)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2918, file: !44, line: 1079, baseType: !506, size: 64, offset: 960)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2918, file: !44, line: 1080, baseType: !506, size: 64, offset: 1024)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2918, file: !44, line: 1082, baseType: !2935, size: 64, offset: 1088)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2937)
!2937 = !{!2938, !2946, !2947, !2948, !2949, !2950}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2936, file: !44, line: 1315, baseType: !2939)
!2939 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2940, line: 20, baseType: !2941)
!2940 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2940, line: 11, elements: !2942)
!2942 = !{!2943}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2941, file: !2940, line: 12, baseType: !2944)
!2944 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !221, line: 33, baseType: !2945)
!2945 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !221, line: 31, elements: !223)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2936, file: !44, line: 1316, baseType: !117, size: 32)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2936, file: !44, line: 1317, baseType: !117, size: 32, offset: 32)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2936, file: !44, line: 1318, baseType: !2935, size: 64, offset: 64)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2936, file: !44, line: 1319, baseType: !327, size: 64, offset: 128)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2936, file: !44, line: 1320, baseType: !340, size: 128, align: 64, offset: 192)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2918, file: !44, line: 1084, baseType: !299, size: 64, offset: 1152)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2918, file: !44, line: 1085, baseType: !299, size: 64, offset: 1216)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2918, file: !44, line: 1087, baseType: !2954, size: 64, offset: 1280)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2956)
!2956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !2957)
!2957 = !{!2958, !2962}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2956, file: !44, line: 1012, baseType: !2959, size: 64)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{null, !2917, !2917}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2956, file: !44, line: 1013, baseType: !2963, size: 64, offset: 64)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{null, !2917}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2918, file: !44, line: 1088, baseType: !2967, size: 64, offset: 1344)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2969)
!2969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !2970)
!2970 = !{!2971, !2975, !2979, !2980, !2984, !2988, !2992, !2996}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2969, file: !44, line: 1017, baseType: !2972, size: 64)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = !DISubroutineType(types: !2974)
!2974 = !{!2903, !2903}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2969, file: !44, line: 1018, baseType: !2976, size: 64, offset: 64)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{null, !2903}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2969, file: !44, line: 1019, baseType: !2963, size: 64, offset: 128)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2969, file: !44, line: 1020, baseType: !2981, size: 64, offset: 192)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!117, !2917, !117}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2969, file: !44, line: 1021, baseType: !2985, size: 64, offset: 256)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{!465, !2917}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2969, file: !44, line: 1022, baseType: !2989, size: 64, offset: 320)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!117, !2917, !117, !199}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2969, file: !44, line: 1023, baseType: !2993, size: 64, offset: 384)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{null, !2917, !797}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2969, file: !44, line: 1024, baseType: !2985, size: 64, offset: 448)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2918, file: !44, line: 1097, baseType: !2998, size: 256, offset: 1408)
!2998 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2918, file: !44, line: 1089, size: 256, elements: !2999)
!2999 = !{!3000, !3009, !3015}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2998, file: !44, line: 1090, baseType: !3001, size: 256)
!3001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3002, line: 10, size: 256, elements: !3003)
!3002 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3003 = !{!3004, !3005, !3008}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3001, file: !3002, line: 11, baseType: !390, size: 32)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3001, file: !3002, line: 12, baseType: !3006, size: 64, offset: 64)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3002, line: 5, flags: DIFlagFwdDecl)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3001, file: !3002, line: 13, baseType: !195, size: 128, offset: 128)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2998, file: !44, line: 1091, baseType: !3010, size: 64)
!3010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3002, line: 17, size: 64, elements: !3011)
!3011 = !{!3012}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3010, file: !3002, line: 18, baseType: !3013, size: 64)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3002, line: 16, flags: DIFlagFwdDecl)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2998, file: !44, line: 1096, baseType: !3016, size: 192)
!3016 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2998, file: !44, line: 1092, size: 192, elements: !3017)
!3017 = !{!3018, !3019, !3020}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3016, file: !44, line: 1093, baseType: !195, size: 128)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3016, file: !44, line: 1094, baseType: !117, size: 32, offset: 128)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3016, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2841, file: !44, line: 1843, baseType: !3022, size: 64, offset: 1280)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{!281, !327, !696, !117, !296, !2852, !117}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2841, file: !44, line: 1844, baseType: !1077, size: 64, offset: 1344)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2841, file: !44, line: 1845, baseType: !3027, size: 64, offset: 1408)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!117, !117}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2841, file: !44, line: 1846, baseType: !2914, size: 64, offset: 1472)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2841, file: !44, line: 1847, baseType: !3032, size: 64, offset: 1536)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!281, !2074, !327, !2852, !296, !7}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2841, file: !44, line: 1848, baseType: !3036, size: 64, offset: 1600)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!281, !327, !2852, !2074, !296, !7}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2841, file: !44, line: 1849, baseType: !3040, size: 64, offset: 1664)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{!117, !327, !285, !3043, !797}
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2841, file: !44, line: 1850, baseType: !3045, size: 64, offset: 1728)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{!285, !327, !117, !506, !506}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2841, file: !44, line: 1852, baseType: !3049, size: 64, offset: 1792)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{null, !686, !327}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2841, file: !44, line: 1856, baseType: !3053, size: 64, offset: 1856)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{!281, !327, !506, !327, !506, !296, !7}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2841, file: !44, line: 1858, baseType: !3057, size: 64, offset: 1920)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{!506, !327, !506, !327, !506, !506, !7}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2841, file: !44, line: 1861, baseType: !2906, size: 64, offset: 1984)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2836, file: !44, line: 692, baseType: !639, size: 64)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !405, file: !44, line: 694, baseType: !3063, size: 64, offset: 2560)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3065)
!3065 = !{!3066, !3067, !3068, !3069}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3064, file: !44, line: 1101, baseType: !209)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3064, file: !44, line: 1102, baseType: !195, size: 128)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3064, file: !44, line: 1103, baseType: !195, size: 128, offset: 128)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3064, file: !44, line: 1104, baseType: !195, size: 128, offset: 256)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !405, file: !44, line: 695, baseType: !710, size: 1216, align: 64, offset: 2624)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !405, file: !44, line: 696, baseType: !195, size: 128, offset: 3840)
!3072 = !DIDerivedType(tag: DW_TAG_member, scope: !405, file: !44, line: 697, baseType: !3073, size: 64, offset: 3968)
!3073 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !405, file: !44, line: 697, size: 64, elements: !3074)
!3074 = !{!3075, !3076, !3077, !3080, !3081}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3073, file: !44, line: 698, baseType: !2074, size: 64)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3073, file: !44, line: 699, baseType: !2591, size: 64)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3073, file: !44, line: 700, baseType: !3078, size: 64)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3073, file: !44, line: 701, baseType: !250, size: 64)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3073, file: !44, line: 702, baseType: !7, size: 32)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !405, file: !44, line: 705, baseType: !392, size: 32, offset: 4032)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !405, file: !44, line: 708, baseType: !392, size: 32, offset: 4064)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !405, file: !44, line: 709, baseType: !2673, size: 64, offset: 4096)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !405, file: !44, line: 720, baseType: !184, size: 64, offset: 4160)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !358, file: !355, line: 98, baseType: !3087, size: 256, offset: 448)
!3087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 256, elements: !2206)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !358, file: !355, line: 101, baseType: !3089, size: 32, offset: 704)
!3089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3090, line: 25, size: 32, elements: !3091)
!3090 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3091 = !{!3092}
!3092 = !DIDerivedType(tag: DW_TAG_member, scope: !3089, file: !3090, line: 26, baseType: !3093, size: 32)
!3093 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3089, file: !3090, line: 26, size: 32, elements: !3094)
!3094 = !{!3095}
!3095 = !DIDerivedType(tag: DW_TAG_member, scope: !3093, file: !3090, line: 30, baseType: !3096, size: 32)
!3096 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3093, file: !3090, line: 30, size: 32, elements: !3097)
!3097 = !{!3098, !3099}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3096, file: !3090, line: 31, baseType: !209)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3096, file: !3090, line: 32, baseType: !117, size: 32)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !358, file: !355, line: 102, baseType: !2690, size: 64, offset: 768)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !358, file: !355, line: 103, baseType: !574, size: 64, offset: 832)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !358, file: !355, line: 104, baseType: !299, size: 64, offset: 896)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !358, file: !355, line: 105, baseType: !184, size: 64, offset: 960)
!3104 = !DIDerivedType(tag: DW_TAG_member, scope: !358, file: !355, line: 107, baseType: !3105, size: 128, offset: 1024)
!3105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !358, file: !355, line: 107, size: 128, elements: !3106)
!3106 = !{!3107, !3108}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3105, file: !355, line: 108, baseType: !195, size: 128)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3105, file: !355, line: 109, baseType: !3109, size: 64)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !358, file: !355, line: 111, baseType: !195, size: 128, offset: 1152)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !358, file: !355, line: 112, baseType: !195, size: 128, offset: 1280)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !358, file: !355, line: 120, baseType: !3113, size: 128, offset: 1408)
!3113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !358, file: !355, line: 116, size: 128, elements: !3114)
!3114 = !{!3115, !3116, !3117}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3113, file: !355, line: 117, baseType: !614, size: 128)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3113, file: !355, line: 118, baseType: !372, size: 128)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3113, file: !355, line: 119, baseType: !340, size: 128, align: 64)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !328, file: !44, line: 922, baseType: !404, size: 64, offset: 256)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !328, file: !44, line: 923, baseType: !2839, size: 64, offset: 320)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !328, file: !44, line: 929, baseType: !209, offset: 384)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !328, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !328, file: !44, line: 931, baseType: !747, size: 64, offset: 448)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !328, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !328, file: !44, line: 933, baseType: !2686, size: 32, offset: 544)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !328, file: !44, line: 934, baseType: !1149, size: 192, offset: 576)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !328, file: !44, line: 935, baseType: !506, size: 64, offset: 768)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !328, file: !44, line: 936, baseType: !3128, size: 192, offset: 832)
!3128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3129)
!3129 = !{!3130, !3131, !3132, !3133, !3134, !3135}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3128, file: !44, line: 886, baseType: !2939)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3128, file: !44, line: 887, baseType: !1447, size: 64)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3128, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3128, file: !44, line: 889, baseType: !410, size: 32, offset: 96)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3128, file: !44, line: 889, baseType: !410, size: 32, offset: 128)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3128, file: !44, line: 890, baseType: !117, size: 32, offset: 160)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !328, file: !44, line: 937, baseType: !1523, size: 64, offset: 1024)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !328, file: !44, line: 938, baseType: !3138, size: 256, offset: 1088)
!3138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3139)
!3139 = !{!3140, !3141, !3142, !3143, !3144, !3145}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3138, file: !44, line: 897, baseType: !299, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3138, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3138, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3138, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3138, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3138, file: !44, line: 904, baseType: !506, size: 64, offset: 192)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !328, file: !44, line: 940, baseType: !396, size: 64, offset: 1344)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !328, file: !44, line: 945, baseType: !184, size: 64, offset: 1408)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !328, file: !44, line: 949, baseType: !195, size: 128, offset: 1472)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !328, file: !44, line: 950, baseType: !195, size: 128, offset: 1600)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !328, file: !44, line: 952, baseType: !709, size: 64, offset: 1728)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !328, file: !44, line: 953, baseType: !885, size: 32, offset: 1792)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !328, file: !44, line: 954, baseType: !885, size: 32, offset: 1824)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !318, file: !275, line: 174, baseType: !324, size: 64, offset: 320)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !318, file: !275, line: 176, baseType: !3155, size: 64, offset: 384)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!117, !327, !202, !317, !957}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !306, file: !275, line: 90, baseType: !301, size: 64, offset: 192)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !306, file: !275, line: 91, baseType: !3160, size: 64, offset: 256)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !265, file: !191, line: 143, baseType: !3162, size: 64, offset: 256)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{!3165, !202}
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3167)
!3167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3168)
!3168 = !{!3169, !3170, !3174, !3178, !3184, !3188}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3167, file: !61, line: 40, baseType: !60, size: 32)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3167, file: !61, line: 41, baseType: !3171, size: 64, offset: 64)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{!465}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3167, file: !61, line: 42, baseType: !3175, size: 64, offset: 128)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!184}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3167, file: !61, line: 43, baseType: !3179, size: 64, offset: 192)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{!2103, !3182}
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3167, file: !61, line: 44, baseType: !3185, size: 64, offset: 256)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{!2103}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3167, file: !61, line: 45, baseType: !443, size: 64, offset: 320)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !265, file: !191, line: 144, baseType: !3190, size: 64, offset: 320)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!2103, !202}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !265, file: !191, line: 145, baseType: !3194, size: 64, offset: 384)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{null, !202, !3197, !3198}
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !190, file: !191, line: 70, baseType: !3200, size: 64, offset: 384)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !594, line: 123, size: 1024, elements: !3202)
!3202 = !{!3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3331, !3332, !3333, !3334, !3335}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3201, file: !594, line: 124, baseType: !723, size: 32)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3201, file: !594, line: 125, baseType: !723, size: 32, offset: 32)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3201, file: !594, line: 135, baseType: !3200, size: 64, offset: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3201, file: !594, line: 136, baseType: !166, size: 64, offset: 128)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3201, file: !594, line: 138, baseType: !736, size: 192, align: 64, offset: 192)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3201, file: !594, line: 140, baseType: !2103, size: 64, offset: 384)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3201, file: !594, line: 141, baseType: !7, size: 32, offset: 448)
!3210 = !DIDerivedType(tag: DW_TAG_member, scope: !3201, file: !594, line: 142, baseType: !3211, size: 256, offset: 512)
!3211 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3201, file: !594, line: 142, size: 256, elements: !3212)
!3212 = !{!3213, !3259, !3263}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3211, file: !594, line: 143, baseType: !3214, size: 192)
!3214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !594, line: 91, size: 192, elements: !3215)
!3215 = !{!3216, !3217, !3218}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3214, file: !594, line: 92, baseType: !299, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3214, file: !594, line: 94, baseType: !732, size: 64, offset: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3214, file: !594, line: 100, baseType: !3219, size: 64, offset: 128)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !594, line: 180, size: 704, elements: !3221)
!3221 = !{!3222, !3223, !3224, !3231, !3232, !3233, !3257, !3258}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3220, file: !594, line: 182, baseType: !3200, size: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3220, file: !594, line: 183, baseType: !7, size: 32, offset: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3220, file: !594, line: 186, baseType: !3225, size: 192, offset: 128)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3226, line: 19, size: 192, elements: !3227)
!3226 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3227 = !{!3228, !3229, !3230}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3225, file: !3226, line: 20, baseType: !714, size: 128)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3225, file: !3226, line: 21, baseType: !7, size: 32, offset: 128)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3225, file: !3226, line: 22, baseType: !7, size: 32, offset: 160)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3220, file: !594, line: 187, baseType: !390, size: 32, offset: 320)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3220, file: !594, line: 188, baseType: !390, size: 32, offset: 352)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3220, file: !594, line: 189, baseType: !3234, size: 64, offset: 384)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !594, line: 168, size: 320, elements: !3236)
!3236 = !{!3237, !3241, !3245, !3249, !3253}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3235, file: !594, line: 169, baseType: !3238, size: 64)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{!117, !686, !3219}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3235, file: !594, line: 171, baseType: !3242, size: 64, offset: 64)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{!117, !3200, !166, !291}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3235, file: !594, line: 173, baseType: !3246, size: 64, offset: 128)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!117, !3200}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3235, file: !594, line: 174, baseType: !3250, size: 64, offset: 192)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{!117, !3200, !3200, !166}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3235, file: !594, line: 176, baseType: !3254, size: 64, offset: 256)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = !DISubroutineType(types: !3256)
!3256 = !{!117, !686, !3200, !3219}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3220, file: !594, line: 192, baseType: !195, size: 128, offset: 448)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3220, file: !594, line: 194, baseType: !1457, size: 128, offset: 576)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3211, file: !594, line: 144, baseType: !3260, size: 64)
!3260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !594, line: 103, size: 64, elements: !3261)
!3261 = !{!3262}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3260, file: !594, line: 104, baseType: !3200, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3211, file: !594, line: 145, baseType: !3264, size: 256)
!3264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !594, line: 107, size: 256, elements: !3265)
!3265 = !{!3266, !3326, !3329, !3330}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3264, file: !594, line: 108, baseType: !3267, size: 64)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3269)
!3269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !594, line: 217, size: 768, elements: !3270)
!3270 = !{!3271, !3291, !3295, !3299, !3303, !3307, !3311, !3315, !3316, !3317, !3318, !3322}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3269, file: !594, line: 222, baseType: !3272, size: 64)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!117, !3275}
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !594, line: 197, size: 1088, elements: !3277)
!3277 = !{!3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3276, file: !594, line: 199, baseType: !3200, size: 64)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3276, file: !594, line: 200, baseType: !327, size: 64, offset: 64)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3276, file: !594, line: 201, baseType: !686, size: 64, offset: 128)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3276, file: !594, line: 202, baseType: !184, size: 64, offset: 192)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3276, file: !594, line: 205, baseType: !1149, size: 192, offset: 256)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3276, file: !594, line: 206, baseType: !1149, size: 192, offset: 448)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3276, file: !594, line: 207, baseType: !117, size: 32, offset: 640)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3276, file: !594, line: 208, baseType: !195, size: 128, offset: 704)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3276, file: !594, line: 209, baseType: !250, size: 64, offset: 832)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3276, file: !594, line: 211, baseType: !296, size: 64, offset: 896)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3276, file: !594, line: 212, baseType: !465, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3276, file: !594, line: 213, baseType: !465, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3276, file: !594, line: 214, baseType: !985, size: 64, offset: 1024)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3269, file: !594, line: 223, baseType: !3292, size: 64, offset: 64)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{null, !3275}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3269, file: !594, line: 236, baseType: !3296, size: 64, offset: 128)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{!117, !686, !184}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3269, file: !594, line: 238, baseType: !3300, size: 64, offset: 192)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!184, !686, !2852}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3269, file: !594, line: 239, baseType: !3304, size: 64, offset: 256)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{!184, !686, !184, !2852}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3269, file: !594, line: 240, baseType: !3308, size: 64, offset: 320)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{null, !686, !184}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3269, file: !594, line: 242, baseType: !3312, size: 64, offset: 384)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DISubroutineType(types: !3314)
!3314 = !{!281, !3275, !250, !296, !506}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3269, file: !594, line: 252, baseType: !296, size: 64, offset: 448)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3269, file: !594, line: 259, baseType: !465, size: 8, offset: 512)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3269, file: !594, line: 260, baseType: !3312, size: 64, offset: 576)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3269, file: !594, line: 263, baseType: !3319, size: 64, offset: 640)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!2881, !3275, !2883}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3269, file: !594, line: 266, baseType: !3323, size: 64, offset: 704)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{!117, !3275, !957}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3264, file: !594, line: 109, baseType: !3327, size: 64, offset: 64)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !594, line: 31, flags: DIFlagFwdDecl)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3264, file: !594, line: 110, baseType: !506, size: 64, offset: 128)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3264, file: !594, line: 111, baseType: !3200, size: 64, offset: 192)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3201, file: !594, line: 148, baseType: !184, size: 64, offset: 768)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3201, file: !594, line: 154, baseType: !396, size: 64, offset: 832)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3201, file: !594, line: 156, baseType: !122, size: 16, offset: 896)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3201, file: !594, line: 157, baseType: !291, size: 16, offset: 912)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3201, file: !594, line: 158, baseType: !3336, size: 64, offset: 960)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !594, line: 32, flags: DIFlagFwdDecl)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !190, file: !191, line: 71, baseType: !3339, size: 32, offset: 448)
!3339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3340, line: 19, size: 32, elements: !3341)
!3340 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3341 = !{!3342}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3339, file: !3340, line: 20, baseType: !1206, size: 32)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !190, file: !191, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !190, file: !191, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !190, file: !191, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !190, file: !191, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !190, file: !191, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !187, file: !73, line: 463, baseType: !186, size: 64, offset: 512)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !187, file: !73, line: 465, baseType: !3350, size: 64, offset: 576)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !187, file: !73, line: 467, baseType: !166, size: 64, offset: 640)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !187, file: !73, line: 468, baseType: !3354, size: 64, offset: 704)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3356)
!3356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3357)
!3357 = !{!3358, !3359, !3360, !3364, !3369, !3373}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3356, file: !73, line: 88, baseType: !166, size: 64)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3356, file: !73, line: 89, baseType: !303, size: 64, offset: 64)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3356, file: !73, line: 90, baseType: !3361, size: 64, offset: 128)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{!117, !186, !245}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3356, file: !73, line: 91, baseType: !3365, size: 64, offset: 192)
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{!250, !186, !3368, !3197, !3198}
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3356, file: !73, line: 93, baseType: !3370, size: 64, offset: 256)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{null, !186}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3356, file: !73, line: 95, baseType: !3374, size: 64, offset: 320)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3376)
!3376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3377)
!3377 = !{!3378, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3376, file: !80, line: 279, baseType: !3379, size: 64)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!117, !186}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3376, file: !80, line: 280, baseType: !3370, size: 64, offset: 64)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3376, file: !80, line: 281, baseType: !3379, size: 64, offset: 128)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3376, file: !80, line: 282, baseType: !3379, size: 64, offset: 192)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3376, file: !80, line: 283, baseType: !3379, size: 64, offset: 256)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3376, file: !80, line: 284, baseType: !3379, size: 64, offset: 320)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3376, file: !80, line: 285, baseType: !3379, size: 64, offset: 384)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3376, file: !80, line: 286, baseType: !3379, size: 64, offset: 448)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3376, file: !80, line: 287, baseType: !3379, size: 64, offset: 512)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3376, file: !80, line: 288, baseType: !3379, size: 64, offset: 576)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3376, file: !80, line: 289, baseType: !3379, size: 64, offset: 640)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3376, file: !80, line: 290, baseType: !3379, size: 64, offset: 704)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3376, file: !80, line: 291, baseType: !3379, size: 64, offset: 768)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3376, file: !80, line: 292, baseType: !3379, size: 64, offset: 832)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3376, file: !80, line: 293, baseType: !3379, size: 64, offset: 896)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3376, file: !80, line: 294, baseType: !3379, size: 64, offset: 960)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3376, file: !80, line: 295, baseType: !3379, size: 64, offset: 1024)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3376, file: !80, line: 296, baseType: !3379, size: 64, offset: 1088)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3376, file: !80, line: 297, baseType: !3379, size: 64, offset: 1152)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3376, file: !80, line: 298, baseType: !3379, size: 64, offset: 1216)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3376, file: !80, line: 299, baseType: !3379, size: 64, offset: 1280)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3376, file: !80, line: 300, baseType: !3379, size: 64, offset: 1344)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3376, file: !80, line: 301, baseType: !3379, size: 64, offset: 1408)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !187, file: !73, line: 470, baseType: !3405, size: 64, offset: 768)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3407, line: 82, size: 1408, elements: !3408)
!3407 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3408 = !{!3409, !3410, !3411, !3412, !3413, !3414, !3415, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3490, !3493, !3494}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3406, file: !3407, line: 83, baseType: !166, size: 64)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3406, file: !3407, line: 84, baseType: !166, size: 64, offset: 64)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3406, file: !3407, line: 85, baseType: !186, size: 64, offset: 128)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3406, file: !3407, line: 86, baseType: !303, size: 64, offset: 192)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3406, file: !3407, line: 87, baseType: !303, size: 64, offset: 256)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3406, file: !3407, line: 88, baseType: !303, size: 64, offset: 320)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3406, file: !3407, line: 90, baseType: !3416, size: 64, offset: 384)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{!117, !186, !3419}
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3421)
!3421 = !{!3422, !3423, !3424, !3425, !3426, !3427, !3428, !3441, !3454, !3455, !3456, !3457, !3458, !3466, !3467, !3468, !3469, !3470, !3471}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3420, file: !67, line: 96, baseType: !166, size: 64)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3420, file: !67, line: 97, baseType: !3405, size: 64, offset: 64)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3420, file: !67, line: 99, baseType: !168, size: 64, offset: 128)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3420, file: !67, line: 100, baseType: !166, size: 64, offset: 192)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3420, file: !67, line: 102, baseType: !465, size: 8, offset: 256)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3420, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3420, file: !67, line: 105, baseType: !3429, size: 64, offset: 320)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3431)
!3431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3432, line: 262, size: 1600, elements: !3433)
!3432 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3433 = !{!3434, !3435, !3436, !3440}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3431, file: !3432, line: 263, baseType: !2676, size: 256)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3431, file: !3432, line: 264, baseType: !2676, size: 256, offset: 256)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3431, file: !3432, line: 265, baseType: !3437, size: 1024, offset: 512)
!3437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 1024, elements: !3438)
!3438 = !{!3439}
!3439 = !DISubrange(count: 128)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3431, file: !3432, line: 266, baseType: !2103, size: 64, offset: 1536)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3420, file: !67, line: 106, baseType: !3442, size: 64, offset: 384)
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3444)
!3444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3432, line: 210, size: 256, elements: !3445)
!3445 = !{!3446, !3450, !3452, !3453}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3444, file: !3432, line: 211, baseType: !3447, size: 72)
!3447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1329, size: 72, elements: !3448)
!3448 = !{!3449}
!3449 = !DISubrange(count: 9)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3444, file: !3432, line: 212, baseType: !3451, size: 64, offset: 128)
!3451 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3432, line: 14, baseType: !299)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3444, file: !3432, line: 213, baseType: !392, size: 32, offset: 192)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3444, file: !3432, line: 214, baseType: !392, size: 32, offset: 224)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3420, file: !67, line: 108, baseType: !3379, size: 64, offset: 448)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3420, file: !67, line: 109, baseType: !3370, size: 64, offset: 512)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3420, file: !67, line: 110, baseType: !3379, size: 64, offset: 576)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3420, file: !67, line: 111, baseType: !3370, size: 64, offset: 640)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3420, file: !67, line: 112, baseType: !3459, size: 64, offset: 704)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{!117, !186, !3462}
!3462 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3463)
!3463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3464)
!3464 = !{!3465}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3463, file: !80, line: 51, baseType: !117, size: 32)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3420, file: !67, line: 113, baseType: !3379, size: 64, offset: 768)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3420, file: !67, line: 114, baseType: !303, size: 64, offset: 832)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3420, file: !67, line: 115, baseType: !303, size: 64, offset: 896)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3420, file: !67, line: 117, baseType: !3374, size: 64, offset: 960)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3420, file: !67, line: 118, baseType: !3370, size: 64, offset: 1024)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3420, file: !67, line: 120, baseType: !3472, size: 64, offset: 1088)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3406, file: !3407, line: 91, baseType: !3361, size: 64, offset: 448)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3406, file: !3407, line: 92, baseType: !3379, size: 64, offset: 512)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3406, file: !3407, line: 93, baseType: !3370, size: 64, offset: 576)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3406, file: !3407, line: 94, baseType: !3379, size: 64, offset: 640)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3406, file: !3407, line: 95, baseType: !3370, size: 64, offset: 704)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3406, file: !3407, line: 97, baseType: !3379, size: 64, offset: 768)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3406, file: !3407, line: 98, baseType: !3379, size: 64, offset: 832)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3406, file: !3407, line: 100, baseType: !3459, size: 64, offset: 896)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3406, file: !3407, line: 101, baseType: !3379, size: 64, offset: 960)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3406, file: !3407, line: 103, baseType: !3379, size: 64, offset: 1024)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3406, file: !3407, line: 105, baseType: !3379, size: 64, offset: 1088)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3406, file: !3407, line: 107, baseType: !3374, size: 64, offset: 1152)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3406, file: !3407, line: 109, baseType: !3487, size: 64, offset: 1216)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3489)
!3489 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3407, line: 109, flags: DIFlagFwdDecl)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3406, file: !3407, line: 111, baseType: !3491, size: 64, offset: 1280)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3407, line: 111, flags: DIFlagFwdDecl)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3406, file: !3407, line: 112, baseType: !620, offset: 1344)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3406, file: !3407, line: 114, baseType: !465, size: 8, offset: 1344)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !187, file: !73, line: 471, baseType: !3419, size: 64, offset: 832)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !187, file: !73, line: 473, baseType: !184, size: 64, offset: 896)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !187, file: !73, line: 475, baseType: !184, size: 64, offset: 960)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !187, file: !73, line: 480, baseType: !1149, size: 192, offset: 1024)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !187, file: !73, line: 484, baseType: !3500, size: 576, offset: 1216)
!3500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3501)
!3501 = !{!3502, !3503, !3504, !3505, !3506, !3507}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3500, file: !73, line: 362, baseType: !195, size: 128)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3500, file: !73, line: 363, baseType: !195, size: 128, offset: 128)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3500, file: !73, line: 364, baseType: !195, size: 128, offset: 256)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3500, file: !73, line: 365, baseType: !195, size: 128, offset: 384)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3500, file: !73, line: 366, baseType: !465, size: 8, offset: 512)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3500, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !187, file: !73, line: 485, baseType: !3509, size: 2304, offset: 1792)
!3509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3510)
!3510 = !{!3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3606, !3610}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3509, file: !80, line: 566, baseType: !3462, size: 32)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3509, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3509, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3509, file: !80, line: 569, baseType: !465, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3509, file: !80, line: 570, baseType: !465, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3509, file: !80, line: 571, baseType: !465, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3509, file: !80, line: 572, baseType: !465, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3509, file: !80, line: 573, baseType: !465, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3509, file: !80, line: 574, baseType: !465, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3509, file: !80, line: 575, baseType: !465, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3509, file: !80, line: 576, baseType: !465, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3509, file: !80, line: 577, baseType: !390, size: 32, offset: 64)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3509, file: !80, line: 578, baseType: !209, offset: 96)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3509, file: !80, line: 580, baseType: !195, size: 128, offset: 128)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3509, file: !80, line: 581, baseType: !1478, size: 192, offset: 256)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3509, file: !80, line: 582, baseType: !3527, size: 64, offset: 448)
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3528, size: 64)
!3528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3529, line: 43, size: 1472, elements: !3530)
!3529 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3530 = !{!3531, !3532, !3533, !3534, !3535, !3538, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563}
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3528, file: !3529, line: 44, baseType: !166, size: 64)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3528, file: !3529, line: 45, baseType: !117, size: 32, offset: 64)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3528, file: !3529, line: 46, baseType: !195, size: 128, offset: 128)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3528, file: !3529, line: 47, baseType: !209, offset: 256)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3528, file: !3529, line: 48, baseType: !3536, size: 64, offset: 256)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3528, file: !3529, line: 49, baseType: !3539, size: 320, offset: 320)
!3539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3540, line: 11, size: 320, elements: !3541)
!3540 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3541 = !{!3542, !3543, !3544, !3549}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3539, file: !3540, line: 16, baseType: !614, size: 128)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3539, file: !3540, line: 17, baseType: !299, size: 64, offset: 128)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3539, file: !3540, line: 18, baseType: !3545, size: 64, offset: 192)
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3546 = !DISubroutineType(types: !3547)
!3547 = !{null, !3548}
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3539, file: !3540, line: 19, baseType: !390, size: 32, offset: 256)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3528, file: !3529, line: 50, baseType: !299, size: 64, offset: 640)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3528, file: !3529, line: 51, baseType: !1276, size: 64, offset: 704)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3528, file: !3529, line: 52, baseType: !1276, size: 64, offset: 768)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3528, file: !3529, line: 53, baseType: !1276, size: 64, offset: 832)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3528, file: !3529, line: 54, baseType: !1276, size: 64, offset: 896)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3528, file: !3529, line: 55, baseType: !1276, size: 64, offset: 960)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3528, file: !3529, line: 56, baseType: !299, size: 64, offset: 1024)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3528, file: !3529, line: 57, baseType: !299, size: 64, offset: 1088)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3528, file: !3529, line: 58, baseType: !299, size: 64, offset: 1152)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3528, file: !3529, line: 59, baseType: !299, size: 64, offset: 1216)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3528, file: !3529, line: 60, baseType: !299, size: 64, offset: 1280)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3528, file: !3529, line: 61, baseType: !186, size: 64, offset: 1344)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3528, file: !3529, line: 62, baseType: !465, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3528, file: !3529, line: 63, baseType: !465, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3509, file: !80, line: 583, baseType: !465, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3509, file: !80, line: 584, baseType: !465, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3509, file: !80, line: 585, baseType: !465, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3509, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3509, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3509, file: !80, line: 592, baseType: !1268, size: 512, offset: 576)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3509, file: !80, line: 593, baseType: !396, size: 64, offset: 1088)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3509, file: !80, line: 594, baseType: !1933, size: 256, offset: 1152)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3509, file: !80, line: 595, baseType: !1457, size: 128, offset: 1408)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3509, file: !80, line: 596, baseType: !3536, size: 64, offset: 1536)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3509, file: !80, line: 597, baseType: !723, size: 32, offset: 1600)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3509, file: !80, line: 598, baseType: !723, size: 32, offset: 1632)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3509, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3509, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3509, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3509, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3509, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3509, file: !80, line: 604, baseType: !465, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3509, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3509, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3509, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3509, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3509, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3509, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3509, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3509, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3509, file: !80, line: 613, baseType: !117, size: 32, offset: 1792)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3509, file: !80, line: 614, baseType: !117, size: 32, offset: 1824)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3509, file: !80, line: 615, baseType: !396, size: 64, offset: 1856)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3509, file: !80, line: 616, baseType: !396, size: 64, offset: 1920)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3509, file: !80, line: 617, baseType: !396, size: 64, offset: 1984)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3509, file: !80, line: 618, baseType: !396, size: 64, offset: 2048)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3509, file: !80, line: 620, baseType: !3597, size: 64, offset: 2112)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3599)
!3599 = !{!3600, !3601, !3602, !3603}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3598, file: !80, line: 537, baseType: !209)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3598, file: !80, line: 538, baseType: !7, size: 32)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3598, file: !80, line: 540, baseType: !195, size: 128, offset: 64)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3598, file: !80, line: 543, baseType: !3604, size: 64, offset: 192)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3509, file: !80, line: 621, baseType: !3607, size: 64, offset: 2176)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = !DISubroutineType(types: !3609)
!3609 = !{null, !186, !1420}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3509, file: !80, line: 622, baseType: !3611, size: 64, offset: 2240)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !187, file: !73, line: 486, baseType: !3614, size: 64, offset: 4096)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3616)
!3616 = !{!3617, !3618, !3619, !3623, !3624, !3625}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3615, file: !80, line: 643, baseType: !3376, size: 1472)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3615, file: !80, line: 644, baseType: !3379, size: 64, offset: 1472)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3615, file: !80, line: 645, baseType: !3620, size: 64, offset: 1536)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3621 = !DISubroutineType(types: !3622)
!3622 = !{null, !186, !465}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3615, file: !80, line: 646, baseType: !3379, size: 64, offset: 1600)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3615, file: !80, line: 647, baseType: !3370, size: 64, offset: 1664)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3615, file: !80, line: 648, baseType: !3370, size: 64, offset: 1728)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !187, file: !73, line: 493, baseType: !3627, size: 64, offset: 4160)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !73, line: 493, flags: DIFlagFwdDecl)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !187, file: !73, line: 499, baseType: !195, size: 128, offset: 4224)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !187, file: !73, line: 502, baseType: !3631, size: 64, offset: 4352)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3633)
!3633 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !187, file: !73, line: 504, baseType: !3635, size: 64, offset: 4416)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !187, file: !73, line: 505, baseType: !396, size: 64, offset: 4480)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !187, file: !73, line: 510, baseType: !396, size: 64, offset: 4544)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !187, file: !73, line: 511, baseType: !3639, size: 64, offset: 4608)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3641)
!3641 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !187, file: !73, line: 513, baseType: !3643, size: 64, offset: 4672)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3645)
!3645 = !{!3646, !3647}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3644, file: !73, line: 293, baseType: !7, size: 32)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3644, file: !73, line: 294, baseType: !299, size: 64, offset: 64)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !187, file: !73, line: 515, baseType: !195, size: 128, offset: 4736)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !187, file: !73, line: 526, baseType: !3650, offset: 4864)
!3650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3651, line: 5, elements: !223)
!3651 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !187, file: !73, line: 528, baseType: !3653, size: 64, offset: 4864)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3655, line: 14, flags: DIFlagFwdDecl)
!3655 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !187, file: !73, line: 529, baseType: !3657, size: 64, offset: 4928)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3659, line: 17, size: 192, elements: !3660)
!3659 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3660 = !{!3661, !3662, !3745}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3658, file: !3659, line: 18, baseType: !3657, size: 64)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3658, file: !3659, line: 19, baseType: !3663, size: 64, offset: 64)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3665)
!3665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3659, line: 110, size: 1152, elements: !3666)
!3666 = !{!3667, !3671, !3675, !3681, !3687, !3691, !3695, !3700, !3704, !3705, !3709, !3713, !3717, !3728, !3729, !3730, !3731, !3741}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3665, file: !3659, line: 111, baseType: !3668, size: 64)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{!3657, !3657}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3665, file: !3659, line: 112, baseType: !3672, size: 64, offset: 64)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{null, !3657}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3665, file: !3659, line: 113, baseType: !3676, size: 64, offset: 128)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!465, !3679}
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3658)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3665, file: !3659, line: 114, baseType: !3682, size: 64, offset: 192)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!2103, !3679, !3685}
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !187)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3665, file: !3659, line: 116, baseType: !3688, size: 64, offset: 256)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{!465, !3679, !166}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3665, file: !3659, line: 118, baseType: !3692, size: 64, offset: 320)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!117, !3679, !166, !7, !184, !296}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3665, file: !3659, line: 123, baseType: !3696, size: 64, offset: 384)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!117, !3679, !166, !3699, !296}
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3665, file: !3659, line: 126, baseType: !3701, size: 64, offset: 448)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!166, !3679}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3665, file: !3659, line: 127, baseType: !3701, size: 64, offset: 512)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3665, file: !3659, line: 128, baseType: !3706, size: 64, offset: 576)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!3657, !3679}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3665, file: !3659, line: 130, baseType: !3710, size: 64, offset: 640)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!3657, !3679, !3657}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3665, file: !3659, line: 133, baseType: !3714, size: 64, offset: 704)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!3657, !3679, !166}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3665, file: !3659, line: 135, baseType: !3718, size: 64, offset: 768)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!117, !3679, !166, !166, !7, !7, !3721}
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3659, line: 43, size: 640, elements: !3723)
!3723 = !{!3724, !3725, !3726}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3722, file: !3659, line: 44, baseType: !3657, size: 64)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3722, file: !3659, line: 45, baseType: !7, size: 32, offset: 64)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3722, file: !3659, line: 46, baseType: !3727, size: 512, offset: 128)
!3727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !396, size: 512, elements: !1306)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3665, file: !3659, line: 140, baseType: !3710, size: 64, offset: 832)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3665, file: !3659, line: 143, baseType: !3706, size: 64, offset: 896)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3665, file: !3659, line: 145, baseType: !3668, size: 64, offset: 960)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3665, file: !3659, line: 146, baseType: !3732, size: 64, offset: 1024)
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{!117, !3679, !3735}
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3659, line: 29, size: 128, elements: !3737)
!3737 = !{!3738, !3739, !3740}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3736, file: !3659, line: 30, baseType: !7, size: 32)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3736, file: !3659, line: 31, baseType: !7, size: 32, offset: 32)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3736, file: !3659, line: 32, baseType: !3679, size: 64, offset: 64)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3665, file: !3659, line: 148, baseType: !3742, size: 64, offset: 1088)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{!117, !3679, !186}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3658, file: !3659, line: 20, baseType: !186, size: 64, offset: 128)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !187, file: !73, line: 534, baseType: !488, size: 32, offset: 4992)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !187, file: !73, line: 535, baseType: !390, size: 32, offset: 5024)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !187, file: !73, line: 537, baseType: !209, offset: 5056)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !187, file: !73, line: 538, baseType: !195, size: 128, offset: 5056)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !187, file: !73, line: 540, baseType: !3751, size: 64, offset: 5184)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3753, line: 54, size: 960, elements: !3754)
!3753 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3754 = !{!3755, !3756, !3757, !3758, !3759, !3760, !3761, !3765, !3769, !3770, !3771, !3772, !3776, !3780, !3781}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3752, file: !3753, line: 55, baseType: !166, size: 64)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3752, file: !3753, line: 56, baseType: !168, size: 64, offset: 64)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3752, file: !3753, line: 58, baseType: !303, size: 64, offset: 128)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3752, file: !3753, line: 59, baseType: !303, size: 64, offset: 192)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3752, file: !3753, line: 60, baseType: !202, size: 64, offset: 256)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3752, file: !3753, line: 62, baseType: !3361, size: 64, offset: 320)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3752, file: !3753, line: 63, baseType: !3762, size: 64, offset: 384)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DISubroutineType(types: !3764)
!3764 = !{!250, !186, !3368}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3752, file: !3753, line: 65, baseType: !3766, size: 64, offset: 448)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{null, !3751}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3752, file: !3753, line: 66, baseType: !3370, size: 64, offset: 512)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3752, file: !3753, line: 68, baseType: !3379, size: 64, offset: 576)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3752, file: !3753, line: 70, baseType: !3165, size: 64, offset: 640)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3752, file: !3753, line: 71, baseType: !3773, size: 64, offset: 704)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DISubroutineType(types: !3775)
!3775 = !{!2103, !186}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3752, file: !3753, line: 73, baseType: !3777, size: 64, offset: 768)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{null, !186, !3197, !3198}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3752, file: !3753, line: 75, baseType: !3374, size: 64, offset: 832)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3752, file: !3753, line: 77, baseType: !3491, size: 64, offset: 896)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !187, file: !73, line: 541, baseType: !303, size: 64, offset: 5248)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !187, file: !73, line: 543, baseType: !3370, size: 64, offset: 5312)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !187, file: !73, line: 544, baseType: !3785, size: 64, offset: 5376)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !187, file: !73, line: 545, baseType: !3788, size: 64, offset: 5440)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !187, file: !73, line: 547, baseType: !465, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !187, file: !73, line: 548, baseType: !465, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !187, file: !73, line: 549, baseType: !465, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !187, file: !73, line: 550, baseType: !465, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !176, file: !161, line: 548, baseType: !117, size: 32, offset: 320)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "detach_count", scope: !176, file: !161, line: 549, baseType: !7, size: 32, offset: 352)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "hw_dev", scope: !176, file: !161, line: 550, baseType: !186, size: 64, offset: 384)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !176, file: !161, line: 552, baseType: !166, size: 64, offset: 448)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "board_ptr", scope: !176, file: !161, line: 553, baseType: !2103, size: 64, offset: 512)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "attached", scope: !176, file: !161, line: 554, baseType: !7, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "ioenabled", scope: !176, file: !161, line: 555, baseType: !7, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "spinlock", scope: !176, file: !161, line: 556, baseType: !209, offset: 584)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !176, file: !161, line: 557, baseType: !1149, size: 192, offset: 640)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "attach_lock", scope: !176, file: !161, line: 558, baseType: !743, size: 256, offset: 832)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !176, file: !161, line: 559, baseType: !3339, size: 32, offset: 1088)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "n_subdevices", scope: !176, file: !161, line: 561, baseType: !117, size: 32, offset: 1120)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "subdevices", scope: !176, file: !161, line: 562, baseType: !3807, size: 64, offset: 1152)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_subdevice", file: !161, line: 153, size: 1792, elements: !3809)
!3809 = !{!3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3885, !3898, !3901, !3902, !3916, !3917, !3918, !3919, !3923, !3928, !3929, !3930, !3931, !3935, !3936, !3937, !3938, !3939}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3808, file: !161, line: 154, baseType: !175, size: 64)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3808, file: !161, line: 155, baseType: !117, size: 32, offset: 64)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3808, file: !161, line: 156, baseType: !117, size: 32, offset: 96)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "n_chan", scope: !3808, file: !161, line: 157, baseType: !117, size: 32, offset: 128)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "subdev_flags", scope: !3808, file: !161, line: 158, baseType: !117, size: 32, offset: 160)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "len_chanlist", scope: !3808, file: !161, line: 159, baseType: !117, size: 32, offset: 192)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3808, file: !161, line: 161, baseType: !184, size: 64, offset: 256)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "async", scope: !3808, file: !161, line: 163, baseType: !3818, size: 64, offset: 320)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_async", file: !161, line: 347, size: 1536, elements: !3820)
!3820 = !{!3821, !3822, !3823, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3871, !3872, !3873}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3819, file: !161, line: 348, baseType: !184, size: 64)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_bufsz", scope: !3819, file: !161, line: 349, baseType: !7, size: 32, offset: 64)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "buf_map", scope: !3819, file: !161, line: 350, baseType: !3824, size: 64, offset: 128)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_map", file: !161, line: 249, size: 256, elements: !3826)
!3826 = !{!3827, !3828, !3834, !3835, !3836}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "dma_hw_dev", scope: !3825, file: !161, line: 250, baseType: !186, size: 64)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "page_list", scope: !3825, file: !161, line: 251, baseType: !3829, size: 64, offset: 64)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_page", file: !161, line: 220, size: 128, elements: !3831)
!3831 = !{!3832, !3833}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "virt_addr", scope: !3830, file: !161, line: 221, baseType: !184, size: 64)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3830, file: !161, line: 222, baseType: !896, size: 64, offset: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "n_pages", scope: !3825, file: !161, line: 252, baseType: !7, size: 32, offset: 128)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "dma_dir", scope: !3825, file: !161, line: 253, baseType: !93, size: 32, offset: 160)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3825, file: !161, line: 254, baseType: !3339, size: 32, offset: 192)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "max_bufsize", scope: !3819, file: !161, line: 351, baseType: !7, size: 32, offset: 192)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_count", scope: !3819, file: !161, line: 352, baseType: !7, size: 32, offset: 224)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_alloc_count", scope: !3819, file: !161, line: 353, baseType: !7, size: 32, offset: 256)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_count", scope: !3819, file: !161, line: 354, baseType: !7, size: 32, offset: 288)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_alloc_count", scope: !3819, file: !161, line: 355, baseType: !7, size: 32, offset: 320)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_ptr", scope: !3819, file: !161, line: 356, baseType: !7, size: 32, offset: 352)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_ptr", scope: !3819, file: !161, line: 357, baseType: !7, size: 32, offset: 384)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "cur_chan", scope: !3819, file: !161, line: 358, baseType: !7, size: 32, offset: 416)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "scans_done", scope: !3819, file: !161, line: 359, baseType: !7, size: 32, offset: 448)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "scan_progress", scope: !3819, file: !161, line: 360, baseType: !7, size: 32, offset: 480)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "munge_chan", scope: !3819, file: !161, line: 361, baseType: !7, size: 32, offset: 512)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "munge_count", scope: !3819, file: !161, line: 362, baseType: !7, size: 32, offset: 544)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "munge_ptr", scope: !3819, file: !161, line: 363, baseType: !7, size: 32, offset: 576)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3819, file: !161, line: 364, baseType: !7, size: 32, offset: 608)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !3819, file: !161, line: 365, baseType: !3852, size: 640, offset: 640)
!3852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_cmd", file: !101, line: 589, size: 640, elements: !3853)
!3853 = !{!3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3870}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "subdev", scope: !3852, file: !101, line: 590, baseType: !7, size: 32)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3852, file: !101, line: 591, baseType: !7, size: 32, offset: 32)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "start_src", scope: !3852, file: !101, line: 593, baseType: !7, size: 32, offset: 64)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "start_arg", scope: !3852, file: !101, line: 594, baseType: !7, size: 32, offset: 96)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "scan_begin_src", scope: !3852, file: !101, line: 596, baseType: !7, size: 32, offset: 128)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "scan_begin_arg", scope: !3852, file: !101, line: 597, baseType: !7, size: 32, offset: 160)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "convert_src", scope: !3852, file: !101, line: 599, baseType: !7, size: 32, offset: 192)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "convert_arg", scope: !3852, file: !101, line: 600, baseType: !7, size: 32, offset: 224)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "scan_end_src", scope: !3852, file: !101, line: 602, baseType: !7, size: 32, offset: 256)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "scan_end_arg", scope: !3852, file: !101, line: 603, baseType: !7, size: 32, offset: 288)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "stop_src", scope: !3852, file: !101, line: 605, baseType: !7, size: 32, offset: 320)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "stop_arg", scope: !3852, file: !101, line: 606, baseType: !7, size: 32, offset: 352)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist", scope: !3852, file: !101, line: 608, baseType: !2659, size: 64, offset: 384)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist_len", scope: !3852, file: !101, line: 609, baseType: !7, size: 32, offset: 448)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3852, file: !101, line: 611, baseType: !3869, size: 64, offset: 512)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !3852, file: !101, line: 612, baseType: !7, size: 32, offset: 576)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "wait_head", scope: !3819, file: !161, line: 366, baseType: !1457, size: 128, offset: 1280)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "cb_mask", scope: !3819, file: !161, line: 367, baseType: !7, size: 32, offset: 1408)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "inttrig", scope: !3819, file: !161, line: 368, baseType: !3874, size: 64, offset: 1472)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = !DISubroutineType(types: !3876)
!3876 = !{!117, !175, !3807, !7}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3808, file: !161, line: 165, baseType: !184, size: 64, offset: 384)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !3808, file: !161, line: 166, baseType: !184, size: 64, offset: 448)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "runflags", scope: !3808, file: !161, line: 167, baseType: !7, size: 32, offset: 512)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "spin_lock", scope: !3808, file: !161, line: 168, baseType: !209, offset: 544)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "io_bits", scope: !3808, file: !161, line: 170, baseType: !7, size: 32, offset: 544)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata", scope: !3808, file: !161, line: 172, baseType: !7, size: 32, offset: 576)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata_list", scope: !3808, file: !161, line: 173, baseType: !3884, size: 64, offset: 640)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "range_table", scope: !3808, file: !161, line: 175, baseType: !3886, size: 64, offset: 704)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3888)
!3888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_lrange", file: !161, line: 635, size: 32, elements: !3889)
!3889 = !{!3890, !3891}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3888, file: !161, line: 636, baseType: !117, size: 32)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3888, file: !161, line: 637, baseType: !3892, offset: 32)
!3892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3893, elements: !2307)
!3893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_krange", file: !101, line: 685, size: 96, elements: !3894)
!3894 = !{!3895, !3896, !3897}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !3893, file: !101, line: 686, baseType: !117, size: 32)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3893, file: !101, line: 687, baseType: !117, size: 32, offset: 32)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3893, file: !101, line: 688, baseType: !7, size: 32, offset: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "range_table_list", scope: !3808, file: !161, line: 176, baseType: !3899, size: 64, offset: 768)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3886)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist", scope: !3808, file: !161, line: 178, baseType: !2659, size: 64, offset: 832)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "insn_read", scope: !3808, file: !161, line: 180, baseType: !3903, size: 64, offset: 896)
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = !DISubroutineType(types: !3905)
!3905 = !{!117, !175, !3807, !3906, !2659}
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_insn", file: !101, line: 491, size: 320, elements: !3908)
!3908 = !{!3909, !3910, !3911, !3912, !3913, !3914}
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3907, file: !101, line: 492, baseType: !7, size: 32)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !3907, file: !101, line: 493, baseType: !7, size: 32, offset: 32)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3907, file: !101, line: 494, baseType: !2659, size: 64, offset: 64)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "subdev", scope: !3907, file: !101, line: 495, baseType: !7, size: 32, offset: 128)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "chanspec", scope: !3907, file: !101, line: 496, baseType: !7, size: 32, offset: 160)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !3907, file: !101, line: 497, baseType: !3915, size: 96, offset: 192)
!3915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 96, elements: !251)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "insn_write", scope: !3808, file: !161, line: 182, baseType: !3903, size: 64, offset: 960)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "insn_bits", scope: !3808, file: !161, line: 184, baseType: !3903, size: 64, offset: 1024)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "insn_config", scope: !3808, file: !161, line: 186, baseType: !3903, size: 64, offset: 1088)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmd", scope: !3808, file: !161, line: 191, baseType: !3920, size: 64, offset: 1152)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DISubroutineType(types: !3922)
!3922 = !{!117, !175, !3807}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmdtest", scope: !3808, file: !161, line: 192, baseType: !3924, size: 64, offset: 1216)
!3924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3925, size: 64)
!3925 = !DISubroutineType(types: !3926)
!3926 = !{!117, !175, !3807, !3927}
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3808, file: !161, line: 195, baseType: !3920, size: 64, offset: 1280)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "cancel", scope: !3808, file: !161, line: 196, baseType: !3920, size: 64, offset: 1344)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "buf_change", scope: !3808, file: !161, line: 199, baseType: !3920, size: 64, offset: 1408)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "munge", scope: !3808, file: !161, line: 202, baseType: !3932, size: 64, offset: 1472)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{null, !175, !3807, !184, !7, !7}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "async_dma_dir", scope: !3808, file: !161, line: 205, baseType: !93, size: 32, offset: 1536)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3808, file: !161, line: 207, baseType: !7, size: 32, offset: 1568)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !3808, file: !161, line: 209, baseType: !186, size: 64, offset: 1600)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3808, file: !161, line: 210, baseType: !117, size: 32, offset: 1664)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "readback", scope: !3808, file: !161, line: 212, baseType: !2659, size: 64, offset: 1728)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "mmio", scope: !176, file: !161, line: 565, baseType: !184, size: 64, offset: 1216)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "iobase", scope: !176, file: !161, line: 566, baseType: !299, size: 64, offset: 1280)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "iolen", scope: !176, file: !161, line: 567, baseType: !299, size: 64, offset: 1344)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !176, file: !161, line: 568, baseType: !7, size: 32, offset: 1408)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "read_subdev", scope: !176, file: !161, line: 570, baseType: !3807, size: 64, offset: 1472)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "write_subdev", scope: !176, file: !161, line: 571, baseType: !3807, size: 64, offset: 1536)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "async_queue", scope: !176, file: !161, line: 573, baseType: !2935, size: 64, offset: 1600)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !176, file: !161, line: 575, baseType: !3948, size: 64, offset: 1664)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{!117, !175}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !176, file: !161, line: 576, baseType: !3952, size: 64, offset: 1728)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{null, !175}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "insn_device_config", scope: !176, file: !161, line: 577, baseType: !3956, size: 64, offset: 1792)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = !DISubroutineType(types: !3958)
!3958 = !{!117, !175, !3906, !2659}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "get_valid_routes", scope: !176, file: !161, line: 579, baseType: !3960, size: 64, offset: 1856)
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3961 = !DISubroutineType(types: !3962)
!3962 = !{!7, !175, !7, !2659}
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_devconfig", file: !101, line: 834, size: 1184, elements: !3965)
!3965 = !{!3966, !3968}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !3964, file: !101, line: 835, baseType: !3967, size: 160)
!3967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 160, elements: !2177)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !3964, file: !101, line: 836, baseType: !3969, size: 1024, offset: 160)
!3969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 1024, elements: !2206)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !160, file: !161, line: 444, baseType: !3952, size: 64, offset: 256)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "auto_attach", scope: !160, file: !161, line: 445, baseType: !3972, size: 64, offset: 320)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{!117, !175, !299}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "num_names", scope: !160, file: !161, line: 446, baseType: !7, size: 32, offset: 384)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !160, file: !161, line: 447, baseType: !3977, size: 64, offset: 448)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !166)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !160, file: !161, line: 448, baseType: !117, size: 32, offset: 512)
!3980 = !DIGlobalVariableExpression(var: !3981, expr: !DIExpression())
!3981 = distinct !DIGlobalVariable(name: "db2k_boardtypes", scope: !2, file: !3, line: 246, type: !3982, isLocal: true, isDefinition: true)
!3982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3983, size: 256, elements: !1545)
!3983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3984)
!3984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "db2k_boardtype", file: !3, line: 241, size: 128, elements: !3985)
!3985 = !{!3986, !3987}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3984, file: !3, line: 242, baseType: !166, size: 64)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "has_2_ao", scope: !3984, file: !3, line: 243, baseType: !7, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!3988 = !DIGlobalVariableExpression(var: !3989, expr: !DIExpression())
!3989 = distinct !DIGlobalVariable(name: "db2k_ai_range", scope: !2, file: !3, line: 107, type: !3887, isLocal: true, isDefinition: true)
!3990 = !DIGlobalVariableExpression(var: !3991, expr: !DIExpression())
!3991 = distinct !DIGlobalVariable(name: "db2k_pci_driver", scope: !2, file: !3, line: 776, type: !3992, isLocal: true, isDefinition: true)
!3992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !3993, line: 858, size: 2048, elements: !3994)
!3993 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!3994 = !{!3995, !3996, !3997, !4009, !4227, !4231, !4235, !4239, !4240, !4244, !4262, !4263, !4264}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3992, file: !3993, line: 859, baseType: !195, size: 128)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3992, file: !3993, line: 860, baseType: !166, size: 64, offset: 128)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3992, file: !3993, line: 861, baseType: !3998, size: 64, offset: 192)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4000)
!4000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3432, line: 38, size: 256, elements: !4001)
!4001 = !{!4002, !4003, !4004, !4005, !4006, !4007, !4008}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4000, file: !3432, line: 39, baseType: !392, size: 32)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4000, file: !3432, line: 39, baseType: !392, size: 32, offset: 32)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4000, file: !3432, line: 40, baseType: !392, size: 32, offset: 64)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4000, file: !3432, line: 40, baseType: !392, size: 32, offset: 96)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4000, file: !3432, line: 41, baseType: !392, size: 32, offset: 128)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4000, file: !3432, line: 41, baseType: !392, size: 32, offset: 160)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4000, file: !3432, line: 42, baseType: !3451, size: 64, offset: 192)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3992, file: !3993, line: 862, baseType: !4010, size: 64, offset: 256)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!117, !4013, !3998}
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !3993, line: 309, size: 19264, elements: !4015)
!4015 = !{!4016, !4017, !4090, !4091, !4092, !4093, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4121, !4123, !4124, !4125, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4149, !4150, !4151, !4152, !4154, !4155, !4156, !4157, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4200, !4201, !4203, !4204, !4205, !4206, !4208, !4209, !4210, !4213, !4220, !4221, !4222, !4223, !4224, !4225, !4226}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !4014, file: !3993, line: 310, baseType: !195, size: 128)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4014, file: !3993, line: 311, baseType: !4018, size: 64, offset: 128)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !3993, line: 605, size: 8064, elements: !4020)
!4020 = !{!4021, !4022, !4023, !4024, !4025, !4026, !4027, !4042, !4043, !4044, !4068, !4071, !4072, !4076, !4077, !4078, !4079, !4080, !4082, !4083, !4085, !4086, !4087, !4088, !4089}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4019, file: !3993, line: 606, baseType: !195, size: 128)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4019, file: !3993, line: 607, baseType: !4018, size: 64, offset: 128)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4019, file: !3993, line: 608, baseType: !195, size: 128, offset: 192)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4019, file: !3993, line: 609, baseType: !195, size: 128, offset: 320)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4019, file: !3993, line: 610, baseType: !4013, size: 64, offset: 448)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4019, file: !3993, line: 611, baseType: !195, size: 128, offset: 512)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4019, file: !3993, line: 613, baseType: !4028, size: 256, offset: 640)
!4028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4029, size: 256, elements: !1131)
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4031, line: 20, size: 512, elements: !4032)
!4031 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!4032 = !{!4033, !4035, !4036, !4037, !4038, !4039, !4040, !4041}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4030, file: !4031, line: 21, baseType: !4034, size: 64)
!4034 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !196, line: 158, baseType: !2101)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4030, file: !4031, line: 22, baseType: !4034, size: 64, offset: 64)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4030, file: !4031, line: 23, baseType: !166, size: 64, offset: 128)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4030, file: !4031, line: 24, baseType: !299, size: 64, offset: 192)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4030, file: !4031, line: 25, baseType: !299, size: 64, offset: 256)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4030, file: !4031, line: 26, baseType: !4029, size: 64, offset: 320)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4030, file: !4031, line: 26, baseType: !4029, size: 64, offset: 384)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4030, file: !4031, line: 26, baseType: !4029, size: 64, offset: 448)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4019, file: !3993, line: 614, baseType: !195, size: 128, offset: 896)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !4019, file: !3993, line: 615, baseType: !4030, size: 512, offset: 1024)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4019, file: !3993, line: 617, baseType: !4045, size: 64, offset: 1536)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !3993, line: 731, size: 320, elements: !4047)
!4047 = !{!4048, !4052, !4056, !4060, !4064}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4046, file: !3993, line: 732, baseType: !4049, size: 64)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!117, !4018}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4046, file: !3993, line: 733, baseType: !4053, size: 64, offset: 64)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = !DISubroutineType(types: !4055)
!4055 = !{null, !4018}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4046, file: !3993, line: 734, baseType: !4057, size: 64, offset: 128)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{!184, !4018, !7, !117}
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4046, file: !3993, line: 735, baseType: !4061, size: 64, offset: 192)
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 64)
!4062 = !DISubroutineType(types: !4063)
!4063 = !{!117, !4018, !7, !117, !117, !1391}
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4046, file: !3993, line: 736, baseType: !4065, size: 64, offset: 256)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = !DISubroutineType(types: !4067)
!4067 = !{!117, !4018, !7, !117, !117, !390}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4019, file: !3993, line: 618, baseType: !4069, size: 64, offset: 1600)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !3993, line: 537, flags: DIFlagFwdDecl)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4019, file: !3993, line: 619, baseType: !184, size: 64, offset: 1664)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !4019, file: !3993, line: 620, baseType: !4073, size: 64, offset: 1728)
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4074 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4075, line: 123, flags: DIFlagFwdDecl)
!4075 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4019, file: !3993, line: 622, baseType: !402, size: 8, offset: 1792)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4019, file: !3993, line: 623, baseType: !402, size: 8, offset: 1800)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !4019, file: !3993, line: 624, baseType: !402, size: 8, offset: 1808)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !4019, file: !3993, line: 625, baseType: !402, size: 8, offset: 1816)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4019, file: !3993, line: 630, baseType: !4081, size: 384, offset: 1824)
!4081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 384, elements: !156)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !4019, file: !3993, line: 632, baseType: !122, size: 16, offset: 2208)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !4019, file: !3993, line: 633, baseType: !4084, size: 16, offset: 2224)
!4084 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !3993, line: 237, baseType: !122)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !4019, file: !3993, line: 634, baseType: !186, size: 64, offset: 2240)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4019, file: !3993, line: 635, baseType: !187, size: 5568, offset: 2304)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !4019, file: !3993, line: 636, baseType: !317, size: 64, offset: 7872)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !4019, file: !3993, line: 637, baseType: !317, size: 64, offset: 7936)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !4019, file: !3993, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !4014, file: !3993, line: 312, baseType: !4018, size: 64, offset: 192)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4014, file: !3993, line: 314, baseType: !184, size: 64, offset: 256)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !4014, file: !3993, line: 315, baseType: !4073, size: 64, offset: 320)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4014, file: !3993, line: 316, baseType: !4094, size: 64, offset: 384)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !3993, line: 69, size: 832, elements: !4096)
!4096 = !{!4097, !4098, !4099, !4102, !4103}
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4095, file: !3993, line: 70, baseType: !4018, size: 64)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4095, file: !3993, line: 71, baseType: !195, size: 128, offset: 64)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4095, file: !3993, line: 72, baseType: !4100, size: 64, offset: 192)
!4100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4101, size: 64)
!4101 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !3993, line: 72, flags: DIFlagFwdDecl)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4095, file: !3993, line: 73, baseType: !402, size: 8, offset: 256)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4095, file: !3993, line: 74, baseType: !190, size: 512, offset: 320)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !4014, file: !3993, line: 318, baseType: !7, size: 32, offset: 448)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4014, file: !3993, line: 319, baseType: !122, size: 16, offset: 480)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4014, file: !3993, line: 320, baseType: !122, size: 16, offset: 496)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4014, file: !3993, line: 321, baseType: !122, size: 16, offset: 512)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4014, file: !3993, line: 322, baseType: !122, size: 16, offset: 528)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4014, file: !3993, line: 323, baseType: !7, size: 32, offset: 544)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4014, file: !3993, line: 324, baseType: !1328, size: 8, offset: 576)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4014, file: !3993, line: 325, baseType: !1328, size: 8, offset: 584)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !4014, file: !3993, line: 330, baseType: !1328, size: 8, offset: 592)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !4014, file: !3993, line: 331, baseType: !1328, size: 8, offset: 600)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !4014, file: !3993, line: 332, baseType: !1328, size: 8, offset: 608)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !4014, file: !3993, line: 333, baseType: !1328, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !4014, file: !3993, line: 334, baseType: !1328, size: 8, offset: 624)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4014, file: !3993, line: 335, baseType: !1328, size: 8, offset: 632)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !4014, file: !3993, line: 336, baseType: !835, size: 16, offset: 640)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !4014, file: !3993, line: 337, baseType: !4120, size: 64, offset: 704)
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4014, file: !3993, line: 339, baseType: !4122, size: 64, offset: 768)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3992, size: 64)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4014, file: !3993, line: 340, baseType: !396, size: 64, offset: 832)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4014, file: !3993, line: 346, baseType: !3644, size: 128, offset: 896)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !4014, file: !3993, line: 348, baseType: !4126, size: 32, offset: 1024)
!4126 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !3993, line: 155, baseType: !117)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !4014, file: !3993, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !4014, file: !3993, line: 352, baseType: !1328, size: 8, offset: 1064)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !4014, file: !3993, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !4014, file: !3993, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !4014, file: !3993, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !4014, file: !3993, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !4014, file: !3993, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !4014, file: !3993, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !4014, file: !3993, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !4014, file: !3993, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !4014, file: !3993, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !4014, file: !3993, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !4014, file: !3993, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !4014, file: !3993, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !4014, file: !3993, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !4014, file: !3993, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !4014, file: !3993, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !4014, file: !3993, line: 376, baseType: !7, size: 32, offset: 1120)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !4014, file: !3993, line: 377, baseType: !7, size: 32, offset: 1152)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !4014, file: !3993, line: 380, baseType: !4147, size: 64, offset: 1216)
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !3993, line: 303, flags: DIFlagFwdDecl)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !4014, file: !3993, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !4014, file: !3993, line: 383, baseType: !117, size: 32, offset: 1312)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !4014, file: !3993, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !4014, file: !3993, line: 387, baseType: !4153, size: 32, offset: 1376)
!4153 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !3993, line: 180, baseType: !7)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4014, file: !3993, line: 388, baseType: !187, size: 5568, offset: 1408)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !4014, file: !3993, line: 390, baseType: !117, size: 32, offset: 6976)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4014, file: !3993, line: 396, baseType: !7, size: 32, offset: 7008)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4014, file: !3993, line: 397, baseType: !4158, size: 8704, offset: 7040)
!4158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4030, size: 8704, elements: !4159)
!4159 = !{!4160}
!4160 = !DISubrange(count: 17)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4014, file: !3993, line: 399, baseType: !465, size: 8, offset: 15744)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !4014, file: !3993, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !4014, file: !3993, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !4014, file: !3993, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !4014, file: !3993, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !4014, file: !3993, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !4014, file: !3993, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !4014, file: !3993, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !4014, file: !3993, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !4014, file: !3993, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !4014, file: !3993, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !4014, file: !3993, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !4014, file: !3993, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !4014, file: !3993, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !4014, file: !3993, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !4014, file: !3993, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !4014, file: !3993, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !4014, file: !3993, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !4014, file: !3993, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !4014, file: !3993, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !4014, file: !3993, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !4014, file: !3993, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !4014, file: !3993, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !4014, file: !3993, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !4014, file: !3993, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !4014, file: !3993, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !4014, file: !3993, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !4014, file: !3993, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !4014, file: !3993, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !4014, file: !3993, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !4014, file: !3993, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !4014, file: !3993, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !4014, file: !3993, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !4014, file: !3993, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !4014, file: !3993, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !4014, file: !3993, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !4014, file: !3993, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !4014, file: !3993, line: 450, baseType: !4199, size: 16, offset: 15792)
!4199 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !3993, line: 206, baseType: !122)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !4014, file: !3993, line: 451, baseType: !723, size: 32, offset: 15808)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !4014, file: !3993, line: 453, baseType: !4202, size: 512, offset: 15840)
!4202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 512, elements: !1711)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !4014, file: !3993, line: 454, baseType: !610, size: 64, offset: 16384)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !4014, file: !3993, line: 455, baseType: !317, size: 64, offset: 16448)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !4014, file: !3993, line: 456, baseType: !117, size: 32, offset: 16512)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !4014, file: !3993, line: 457, baseType: !4207, size: 1088, offset: 16576)
!4207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 1088, elements: !4159)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !4014, file: !3993, line: 458, baseType: !4207, size: 1088, offset: 17664)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !4014, file: !3993, line: 469, baseType: !303, size: 64, offset: 18752)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !4014, file: !3993, line: 471, baseType: !4211, size: 64, offset: 18816)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !3993, line: 304, flags: DIFlagFwdDecl)
!4213 = !DIDerivedType(tag: DW_TAG_member, scope: !4014, file: !3993, line: 478, baseType: !4214, size: 64, offset: 18880)
!4214 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4014, file: !3993, line: 478, size: 64, elements: !4215)
!4215 = !{!4216, !4219}
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4214, file: !3993, line: 479, baseType: !4217, size: 64)
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4218 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !3993, line: 305, flags: DIFlagFwdDecl)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4214, file: !3993, line: 480, baseType: !4013, size: 64)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !4014, file: !3993, line: 482, baseType: !835, size: 16, offset: 18944)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !4014, file: !3993, line: 483, baseType: !1328, size: 8, offset: 18960)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !4014, file: !3993, line: 497, baseType: !835, size: 16, offset: 18976)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !4014, file: !3993, line: 498, baseType: !2101, size: 64, offset: 19008)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !4014, file: !3993, line: 499, baseType: !296, size: 64, offset: 19072)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !4014, file: !3993, line: 500, baseType: !250, size: 64, offset: 19136)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !4014, file: !3993, line: 502, baseType: !299, size: 64, offset: 19200)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3992, file: !3993, line: 863, baseType: !4228, size: 64, offset: 320)
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4229, size: 64)
!4229 = !DISubroutineType(types: !4230)
!4230 = !{null, !4013}
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3992, file: !3993, line: 864, baseType: !4232, size: 64, offset: 384)
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4233, size: 64)
!4233 = !DISubroutineType(types: !4234)
!4234 = !{!117, !4013, !3462}
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3992, file: !3993, line: 865, baseType: !4236, size: 64, offset: 448)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = !DISubroutineType(types: !4238)
!4238 = !{!117, !4013}
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3992, file: !3993, line: 866, baseType: !4228, size: 64, offset: 512)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !3992, file: !3993, line: 867, baseType: !4241, size: 64, offset: 576)
!4241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4242, size: 64)
!4242 = !DISubroutineType(types: !4243)
!4243 = !{!117, !4013, !117}
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !3992, file: !3993, line: 868, baseType: !4245, size: 64, offset: 640)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4247)
!4247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !3993, line: 795, size: 384, elements: !4248)
!4248 = !{!4249, !4254, !4258, !4259, !4260, !4261}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4247, file: !3993, line: 797, baseType: !4250, size: 64)
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = !DISubroutineType(types: !4252)
!4252 = !{!4253, !4013, !4153}
!4253 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !3993, line: 772, baseType: !7)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4247, file: !3993, line: 801, baseType: !4255, size: 64, offset: 64)
!4255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4256, size: 64)
!4256 = !DISubroutineType(types: !4257)
!4257 = !{!4253, !4013}
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4247, file: !3993, line: 804, baseType: !4255, size: 64, offset: 128)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4247, file: !3993, line: 807, baseType: !4228, size: 64, offset: 192)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4247, file: !3993, line: 808, baseType: !4228, size: 64, offset: 256)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4247, file: !3993, line: 811, baseType: !4228, size: 64, offset: 320)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3992, file: !3993, line: 869, baseType: !303, size: 64, offset: 704)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3992, file: !3993, line: 870, baseType: !3420, size: 1152, offset: 768)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !3992, file: !3993, line: 871, baseType: !4265, size: 128, offset: 1920)
!4265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !3993, line: 759, size: 128, elements: !4266)
!4266 = !{!4267, !4268}
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4265, file: !3993, line: 760, baseType: !209)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4265, file: !3993, line: 761, baseType: !195, size: 128)
!4269 = !DIGlobalVariableExpression(var: !4270, expr: !DIExpression())
!4270 = distinct !DIGlobalVariable(name: "db2k_pci_table", scope: !2, file: !3, line: 767, type: !4271, isLocal: true, isDefinition: true)
!4271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3999, size: 768, elements: !251)
!4272 = !{i32 7, !"Dwarf Version", i32 4}
!4273 = !{i32 2, !"Debug Info Version", i32 3}
!4274 = !{i32 1, !"wchar_size", i32 2}
!4275 = !{i32 1, !"Code Model", i32 2}
!4276 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4277 = distinct !DISubprogram(name: "db2k_driver_init", scope: !3, file: !3, line: 782, type: !4278, scopeLine: 782, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!4278 = !DISubroutineType(types: !4279)
!4279 = !{!117}
!4280 = !DILocation(line: 782, column: 1, scope: !4277)
!4281 = distinct !DISubprogram(name: "db2k_driver_exit", scope: !3, file: !3, line: 782, type: !129, scopeLine: 782, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!4282 = !DILocation(line: 782, column: 1, scope: !4281)
!4283 = distinct !DISubprogram(name: "db2k_detach", scope: !3, file: !3, line: 746, type: !3953, scopeLine: 747, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!4284 = !DILocalVariable(name: "dev", arg: 1, scope: !4283, file: !3, line: 746, type: !175)
!4285 = !DILocation(line: 746, column: 47, scope: !4283)
!4286 = !DILocalVariable(name: "devpriv", scope: !4283, file: !3, line: 748, type: !4287)
!4287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4288, size: 64)
!4288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "db2k_private", file: !3, line: 256, size: 64, elements: !4289)
!4289 = !{!4290}
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "plx", scope: !4288, file: !3, line: 257, baseType: !184, size: 64)
!4291 = !DILocation(line: 748, column: 23, scope: !4283)
!4292 = !DILocation(line: 748, column: 33, scope: !4283)
!4293 = !DILocation(line: 748, column: 38, scope: !4283)
!4294 = !DILocation(line: 750, column: 6, scope: !4295)
!4295 = distinct !DILexicalBlock(scope: !4283, file: !3, line: 750, column: 6)
!4296 = !DILocation(line: 750, column: 14, scope: !4295)
!4297 = !DILocation(line: 750, column: 17, scope: !4295)
!4298 = !DILocation(line: 750, column: 26, scope: !4295)
!4299 = !DILocation(line: 750, column: 6, scope: !4283)
!4300 = !DILocation(line: 751, column: 11, scope: !4295)
!4301 = !DILocation(line: 751, column: 20, scope: !4295)
!4302 = !DILocation(line: 751, column: 3, scope: !4295)
!4303 = !DILocation(line: 752, column: 20, scope: !4283)
!4304 = !DILocation(line: 752, column: 2, scope: !4283)
!4305 = !DILocation(line: 753, column: 1, scope: !4283)
!4306 = distinct !DISubprogram(name: "db2k_auto_attach", scope: !3, file: !3, line: 678, type: !3973, scopeLine: 679, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!4307 = !DILocalVariable(name: "dev", arg: 1, scope: !4306, file: !3, line: 678, type: !175)
!4308 = !DILocation(line: 678, column: 51, scope: !4306)
!4309 = !DILocalVariable(name: "context", arg: 2, scope: !4306, file: !3, line: 678, type: !299)
!4310 = !DILocation(line: 678, column: 70, scope: !4306)
!4311 = !DILocalVariable(name: "pcidev", scope: !4306, file: !3, line: 680, type: !4013)
!4312 = !DILocation(line: 680, column: 18, scope: !4306)
!4313 = !DILocation(line: 680, column: 45, scope: !4306)
!4314 = !DILocation(line: 680, column: 27, scope: !4306)
!4315 = !DILocalVariable(name: "board", scope: !4306, file: !3, line: 681, type: !4316)
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!4317 = !DILocation(line: 681, column: 31, scope: !4306)
!4318 = !DILocalVariable(name: "devpriv", scope: !4306, file: !3, line: 682, type: !4287)
!4319 = !DILocation(line: 682, column: 23, scope: !4306)
!4320 = !DILocalVariable(name: "s", scope: !4306, file: !3, line: 683, type: !3807)
!4321 = !DILocation(line: 683, column: 27, scope: !4306)
!4322 = !DILocalVariable(name: "result", scope: !4306, file: !3, line: 684, type: !117)
!4323 = !DILocation(line: 684, column: 6, scope: !4306)
!4324 = !DILocation(line: 686, column: 6, scope: !4325)
!4325 = distinct !DILexicalBlock(scope: !4306, file: !3, line: 686, column: 6)
!4326 = !DILocation(line: 686, column: 14, scope: !4325)
!4327 = !DILocation(line: 686, column: 6, scope: !4306)
!4328 = !DILocation(line: 687, column: 3, scope: !4325)
!4329 = !DILocation(line: 688, column: 27, scope: !4306)
!4330 = !DILocation(line: 688, column: 11, scope: !4306)
!4331 = !DILocation(line: 688, column: 8, scope: !4306)
!4332 = !DILocation(line: 689, column: 7, scope: !4333)
!4333 = distinct !DILexicalBlock(scope: !4306, file: !3, line: 689, column: 6)
!4334 = !DILocation(line: 689, column: 14, scope: !4333)
!4335 = !DILocation(line: 689, column: 6, scope: !4306)
!4336 = !DILocation(line: 690, column: 3, scope: !4333)
!4337 = !DILocation(line: 691, column: 19, scope: !4306)
!4338 = !DILocation(line: 691, column: 2, scope: !4306)
!4339 = !DILocation(line: 691, column: 7, scope: !4306)
!4340 = !DILocation(line: 691, column: 17, scope: !4306)
!4341 = !DILocation(line: 692, column: 20, scope: !4306)
!4342 = !DILocation(line: 692, column: 27, scope: !4306)
!4343 = !DILocation(line: 692, column: 2, scope: !4306)
!4344 = !DILocation(line: 692, column: 7, scope: !4306)
!4345 = !DILocation(line: 692, column: 18, scope: !4306)
!4346 = !DILocation(line: 694, column: 33, scope: !4306)
!4347 = !DILocation(line: 694, column: 12, scope: !4306)
!4348 = !DILocation(line: 694, column: 10, scope: !4306)
!4349 = !DILocation(line: 695, column: 7, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4306, file: !3, line: 695, column: 6)
!4351 = !DILocation(line: 695, column: 6, scope: !4306)
!4352 = !DILocation(line: 696, column: 3, scope: !4350)
!4353 = !DILocation(line: 698, column: 29, scope: !4306)
!4354 = !DILocation(line: 698, column: 11, scope: !4306)
!4355 = !DILocation(line: 698, column: 9, scope: !4306)
!4356 = !DILocation(line: 699, column: 6, scope: !4357)
!4357 = distinct !DILexicalBlock(scope: !4306, file: !3, line: 699, column: 6)
!4358 = !DILocation(line: 699, column: 6, scope: !4306)
!4359 = !DILocation(line: 700, column: 10, scope: !4357)
!4360 = !DILocation(line: 700, column: 3, scope: !4357)
!4361 = !DILocation(line: 702, column: 33, scope: !4306)
!4362 = !DILocation(line: 702, column: 17, scope: !4306)
!4363 = !DILocation(line: 702, column: 2, scope: !4306)
!4364 = !DILocation(line: 702, column: 11, scope: !4306)
!4365 = !DILocation(line: 702, column: 15, scope: !4306)
!4366 = !DILocation(line: 703, column: 30, scope: !4306)
!4367 = !DILocation(line: 703, column: 14, scope: !4306)
!4368 = !DILocation(line: 703, column: 2, scope: !4306)
!4369 = !DILocation(line: 703, column: 7, scope: !4306)
!4370 = !DILocation(line: 703, column: 12, scope: !4306)
!4371 = !DILocation(line: 704, column: 7, scope: !4372)
!4372 = distinct !DILexicalBlock(scope: !4306, file: !3, line: 704, column: 6)
!4373 = !DILocation(line: 704, column: 16, scope: !4372)
!4374 = !DILocation(line: 704, column: 20, scope: !4372)
!4375 = !DILocation(line: 704, column: 24, scope: !4372)
!4376 = !DILocation(line: 704, column: 29, scope: !4372)
!4377 = !DILocation(line: 704, column: 6, scope: !4306)
!4378 = !DILocation(line: 705, column: 3, scope: !4372)
!4379 = !DILocation(line: 707, column: 35, scope: !4306)
!4380 = !DILocation(line: 707, column: 11, scope: !4306)
!4381 = !DILocation(line: 707, column: 9, scope: !4306)
!4382 = !DILocation(line: 708, column: 6, scope: !4383)
!4383 = distinct !DILexicalBlock(scope: !4306, file: !3, line: 708, column: 6)
!4384 = !DILocation(line: 708, column: 6, scope: !4306)
!4385 = !DILocation(line: 709, column: 10, scope: !4383)
!4386 = !DILocation(line: 709, column: 3, scope: !4383)
!4387 = !DILocation(line: 711, column: 32, scope: !4306)
!4388 = !DILocation(line: 711, column: 56, scope: !4306)
!4389 = !DILocation(line: 711, column: 38, scope: !4306)
!4390 = !DILocation(line: 711, column: 62, scope: !4306)
!4391 = !DILocation(line: 711, column: 11, scope: !4306)
!4392 = !DILocation(line: 711, column: 9, scope: !4306)
!4393 = !DILocation(line: 713, column: 6, scope: !4394)
!4394 = distinct !DILexicalBlock(scope: !4306, file: !3, line: 713, column: 6)
!4395 = !DILocation(line: 713, column: 13, scope: !4394)
!4396 = !DILocation(line: 713, column: 6, scope: !4306)
!4397 = !DILocation(line: 714, column: 10, scope: !4394)
!4398 = !DILocation(line: 714, column: 3, scope: !4394)
!4399 = !DILocation(line: 716, column: 22, scope: !4306)
!4400 = !DILocation(line: 716, column: 2, scope: !4306)
!4401 = !DILocation(line: 717, column: 18, scope: !4306)
!4402 = !DILocation(line: 717, column: 2, scope: !4306)
!4403 = !DILocation(line: 719, column: 7, scope: !4306)
!4404 = !DILocation(line: 719, column: 12, scope: !4306)
!4405 = !DILocation(line: 719, column: 4, scope: !4306)
!4406 = !DILocation(line: 721, column: 2, scope: !4306)
!4407 = !DILocation(line: 721, column: 5, scope: !4306)
!4408 = !DILocation(line: 721, column: 10, scope: !4306)
!4409 = !DILocation(line: 722, column: 2, scope: !4306)
!4410 = !DILocation(line: 722, column: 5, scope: !4306)
!4411 = !DILocation(line: 722, column: 18, scope: !4306)
!4412 = !DILocation(line: 723, column: 2, scope: !4306)
!4413 = !DILocation(line: 723, column: 5, scope: !4306)
!4414 = !DILocation(line: 723, column: 12, scope: !4306)
!4415 = !DILocation(line: 724, column: 2, scope: !4306)
!4416 = !DILocation(line: 724, column: 5, scope: !4306)
!4417 = !DILocation(line: 724, column: 13, scope: !4306)
!4418 = !DILocation(line: 725, column: 2, scope: !4306)
!4419 = !DILocation(line: 725, column: 5, scope: !4306)
!4420 = !DILocation(line: 725, column: 15, scope: !4306)
!4421 = !DILocation(line: 726, column: 2, scope: !4306)
!4422 = !DILocation(line: 726, column: 5, scope: !4306)
!4423 = !DILocation(line: 726, column: 17, scope: !4306)
!4424 = !DILocation(line: 728, column: 7, scope: !4306)
!4425 = !DILocation(line: 728, column: 12, scope: !4306)
!4426 = !DILocation(line: 728, column: 4, scope: !4306)
!4427 = !DILocation(line: 730, column: 2, scope: !4306)
!4428 = !DILocation(line: 730, column: 5, scope: !4306)
!4429 = !DILocation(line: 730, column: 10, scope: !4306)
!4430 = !DILocation(line: 731, column: 2, scope: !4306)
!4431 = !DILocation(line: 731, column: 5, scope: !4306)
!4432 = !DILocation(line: 731, column: 18, scope: !4306)
!4433 = !DILocation(line: 732, column: 14, scope: !4306)
!4434 = !DILocation(line: 732, column: 21, scope: !4306)
!4435 = !DILocation(line: 732, column: 2, scope: !4306)
!4436 = !DILocation(line: 732, column: 5, scope: !4306)
!4437 = !DILocation(line: 732, column: 12, scope: !4306)
!4438 = !DILocation(line: 733, column: 2, scope: !4306)
!4439 = !DILocation(line: 733, column: 5, scope: !4306)
!4440 = !DILocation(line: 733, column: 13, scope: !4306)
!4441 = !DILocation(line: 734, column: 2, scope: !4306)
!4442 = !DILocation(line: 734, column: 5, scope: !4306)
!4443 = !DILocation(line: 734, column: 16, scope: !4306)
!4444 = !DILocation(line: 735, column: 2, scope: !4306)
!4445 = !DILocation(line: 735, column: 5, scope: !4306)
!4446 = !DILocation(line: 735, column: 17, scope: !4306)
!4447 = !DILocation(line: 737, column: 40, scope: !4306)
!4448 = !DILocation(line: 737, column: 11, scope: !4306)
!4449 = !DILocation(line: 737, column: 9, scope: !4306)
!4450 = !DILocation(line: 738, column: 6, scope: !4451)
!4451 = distinct !DILexicalBlock(scope: !4306, file: !3, line: 738, column: 6)
!4452 = !DILocation(line: 738, column: 6, scope: !4306)
!4453 = !DILocation(line: 739, column: 10, scope: !4451)
!4454 = !DILocation(line: 739, column: 3, scope: !4451)
!4455 = !DILocation(line: 741, column: 7, scope: !4306)
!4456 = !DILocation(line: 741, column: 12, scope: !4306)
!4457 = !DILocation(line: 741, column: 4, scope: !4306)
!4458 = !DILocation(line: 742, column: 26, scope: !4306)
!4459 = !DILocation(line: 742, column: 31, scope: !4306)
!4460 = !DILocation(line: 742, column: 9, scope: !4306)
!4461 = !DILocation(line: 742, column: 2, scope: !4306)
!4462 = !DILocation(line: 744, column: 1, scope: !4306)
!4463 = distinct !DISubprogram(name: "db2k_load_firmware", scope: !3, file: !3, line: 531, type: !4464, scopeLine: 533, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!4464 = !DISubroutineType(types: !4465)
!4465 = !{!117, !175, !4466, !296, !299}
!4466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4467, size: 64)
!4467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1328)
!4468 = !DILocalVariable(name: "dev", arg: 1, scope: !4463, file: !3, line: 531, type: !175)
!4469 = !DILocation(line: 531, column: 53, scope: !4463)
!4470 = !DILocalVariable(name: "cpld_array", arg: 2, scope: !4463, file: !3, line: 531, type: !4466)
!4471 = !DILocation(line: 531, column: 68, scope: !4463)
!4472 = !DILocalVariable(name: "len", arg: 3, scope: !4463, file: !3, line: 532, type: !296)
!4473 = !DILocation(line: 532, column: 17, scope: !4463)
!4474 = !DILocalVariable(name: "context", arg: 4, scope: !4463, file: !3, line: 532, type: !299)
!4475 = !DILocation(line: 532, column: 36, scope: !4463)
!4476 = !DILocalVariable(name: "devpriv", scope: !4463, file: !3, line: 534, type: !4287)
!4477 = !DILocation(line: 534, column: 23, scope: !4463)
!4478 = !DILocation(line: 534, column: 33, scope: !4463)
!4479 = !DILocation(line: 534, column: 38, scope: !4463)
!4480 = !DILocalVariable(name: "result", scope: !4463, file: !3, line: 535, type: !117)
!4481 = !DILocation(line: 535, column: 6, scope: !4463)
!4482 = !DILocalVariable(name: "cntrl", scope: !4463, file: !3, line: 536, type: !390)
!4483 = !DILocation(line: 536, column: 6, scope: !4463)
!4484 = !DILocalVariable(name: "retry", scope: !4463, file: !3, line: 537, type: !117)
!4485 = !DILocation(line: 537, column: 6, scope: !4463)
!4486 = !DILocalVariable(name: "i", scope: !4463, file: !3, line: 538, type: !296)
!4487 = !DILocation(line: 538, column: 9, scope: !4463)
!4488 = !DILocalVariable(name: "new_cpld", scope: !4463, file: !3, line: 539, type: !465)
!4489 = !DILocation(line: 539, column: 7, scope: !4463)
!4490 = !DILocation(line: 542, column: 9, scope: !4491)
!4491 = distinct !DILexicalBlock(scope: !4463, file: !3, line: 542, column: 2)
!4492 = !DILocation(line: 542, column: 7, scope: !4491)
!4493 = !DILocation(line: 542, column: 14, scope: !4494)
!4494 = distinct !DILexicalBlock(scope: !4491, file: !3, line: 542, column: 2)
!4495 = !DILocation(line: 542, column: 16, scope: !4494)
!4496 = !DILocation(line: 542, column: 22, scope: !4494)
!4497 = !DILocation(line: 542, column: 20, scope: !4494)
!4498 = !DILocation(line: 542, column: 2, scope: !4491)
!4499 = !DILocation(line: 543, column: 7, scope: !4500)
!4500 = distinct !DILexicalBlock(scope: !4501, file: !3, line: 543, column: 7)
!4501 = distinct !DILexicalBlock(scope: !4494, file: !3, line: 542, column: 32)
!4502 = !DILocation(line: 543, column: 18, scope: !4500)
!4503 = !DILocation(line: 543, column: 21, scope: !4500)
!4504 = !DILocation(line: 543, column: 29, scope: !4500)
!4505 = !DILocation(line: 543, column: 32, scope: !4500)
!4506 = !DILocation(line: 543, column: 43, scope: !4500)
!4507 = !DILocation(line: 543, column: 45, scope: !4500)
!4508 = !DILocation(line: 543, column: 50, scope: !4500)
!4509 = !DILocation(line: 543, column: 7, scope: !4501)
!4510 = !DILocation(line: 544, column: 4, scope: !4500)
!4511 = !DILocation(line: 545, column: 2, scope: !4501)
!4512 = !DILocation(line: 542, column: 28, scope: !4494)
!4513 = !DILocation(line: 542, column: 2, scope: !4494)
!4514 = distinct !{!4514, !4498, !4515}
!4515 = !DILocation(line: 545, column: 2, scope: !4491)
!4516 = !DILocation(line: 546, column: 6, scope: !4517)
!4517 = distinct !DILexicalBlock(scope: !4463, file: !3, line: 546, column: 6)
!4518 = !DILocation(line: 546, column: 8, scope: !4517)
!4519 = !DILocation(line: 546, column: 15, scope: !4517)
!4520 = !DILocation(line: 546, column: 12, scope: !4517)
!4521 = !DILocation(line: 546, column: 6, scope: !4463)
!4522 = !DILocation(line: 547, column: 3, scope: !4523)
!4523 = distinct !DILexicalBlock(scope: !4517, file: !3, line: 546, column: 20)
!4524 = !DILocation(line: 548, column: 3, scope: !4523)
!4525 = !DILocation(line: 551, column: 7, scope: !4526)
!4526 = distinct !DILexicalBlock(scope: !4463, file: !3, line: 551, column: 6)
!4527 = !DILocation(line: 551, column: 13, scope: !4526)
!4528 = !DILocation(line: 551, column: 11, scope: !4526)
!4529 = !DILocation(line: 551, column: 16, scope: !4526)
!4530 = !DILocation(line: 551, column: 6, scope: !4463)
!4531 = !DILocation(line: 552, column: 3, scope: !4532)
!4532 = distinct !DILexicalBlock(scope: !4526, file: !3, line: 551, column: 21)
!4533 = !DILocation(line: 555, column: 3, scope: !4532)
!4534 = !DILocation(line: 558, column: 16, scope: !4463)
!4535 = !DILocation(line: 558, column: 13, scope: !4463)
!4536 = !DILocation(line: 559, column: 9, scope: !4463)
!4537 = !DILocation(line: 559, column: 6, scope: !4463)
!4538 = !DILocation(line: 562, column: 16, scope: !4463)
!4539 = !DILocation(line: 562, column: 25, scope: !4463)
!4540 = !DILocation(line: 562, column: 29, scope: !4463)
!4541 = !DILocation(line: 562, column: 10, scope: !4463)
!4542 = !DILocation(line: 562, column: 8, scope: !4463)
!4543 = !DILocation(line: 563, column: 8, scope: !4544)
!4544 = distinct !DILexicalBlock(scope: !4463, file: !3, line: 563, column: 6)
!4545 = !DILocation(line: 563, column: 14, scope: !4544)
!4546 = !DILocation(line: 563, column: 6, scope: !4463)
!4547 = !DILocation(line: 564, column: 3, scope: !4544)
!4548 = !DILocation(line: 566, column: 13, scope: !4549)
!4549 = distinct !DILexicalBlock(scope: !4463, file: !3, line: 566, column: 2)
!4550 = !DILocation(line: 566, column: 7, scope: !4549)
!4551 = !DILocation(line: 566, column: 18, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !4549, file: !3, line: 566, column: 2)
!4553 = !DILocation(line: 566, column: 24, scope: !4552)
!4554 = !DILocation(line: 566, column: 2, scope: !4549)
!4555 = !DILocation(line: 567, column: 24, scope: !4556)
!4556 = distinct !DILexicalBlock(scope: !4552, file: !3, line: 566, column: 38)
!4557 = !DILocation(line: 567, column: 3, scope: !4556)
!4558 = !DILocation(line: 568, column: 19, scope: !4556)
!4559 = !DILocation(line: 568, column: 3, scope: !4556)
!4560 = !DILocation(line: 569, column: 23, scope: !4556)
!4561 = !DILocation(line: 569, column: 3, scope: !4556)
!4562 = !DILocation(line: 570, column: 32, scope: !4556)
!4563 = !DILocation(line: 570, column: 12, scope: !4556)
!4564 = !DILocation(line: 570, column: 10, scope: !4556)
!4565 = !DILocation(line: 571, column: 7, scope: !4566)
!4566 = distinct !DILexicalBlock(scope: !4556, file: !3, line: 571, column: 7)
!4567 = !DILocation(line: 571, column: 7, scope: !4556)
!4568 = !DILocation(line: 572, column: 4, scope: !4566)
!4569 = !DILocation(line: 574, column: 21, scope: !4556)
!4570 = !DILocation(line: 574, column: 26, scope: !4556)
!4571 = !DILocation(line: 574, column: 31, scope: !4556)
!4572 = !DILocation(line: 574, column: 15, scope: !4556)
!4573 = !DILocation(line: 574, column: 55, scope: !4556)
!4574 = !DILocation(line: 575, column: 32, scope: !4556)
!4575 = !DILocation(line: 574, column: 12, scope: !4556)
!4576 = !DILocation(line: 576, column: 3, scope: !4556)
!4577 = !DILocation(line: 576, column: 10, scope: !4578)
!4578 = distinct !DILexicalBlock(scope: !4579, file: !3, line: 576, column: 3)
!4579 = distinct !DILexicalBlock(scope: !4556, file: !3, line: 576, column: 3)
!4580 = !DILocation(line: 576, column: 14, scope: !4578)
!4581 = !DILocation(line: 576, column: 12, scope: !4578)
!4582 = !DILocation(line: 576, column: 3, scope: !4579)
!4583 = !DILocalVariable(name: "data", scope: !4584, file: !3, line: 577, type: !835)
!4584 = distinct !DILexicalBlock(scope: !4578, file: !3, line: 576, column: 27)
!4585 = !DILocation(line: 577, column: 8, scope: !4584)
!4586 = !DILocation(line: 577, column: 16, scope: !4584)
!4587 = !DILocation(line: 577, column: 27, scope: !4584)
!4588 = !DILocation(line: 577, column: 30, scope: !4584)
!4589 = !DILocation(line: 577, column: 38, scope: !4584)
!4590 = !DILocation(line: 577, column: 49, scope: !4584)
!4591 = !DILocation(line: 577, column: 51, scope: !4584)
!4592 = !DILocation(line: 577, column: 36, scope: !4584)
!4593 = !DILocation(line: 577, column: 15, scope: !4584)
!4594 = !DILocation(line: 579, column: 29, scope: !4584)
!4595 = !DILocation(line: 579, column: 34, scope: !4584)
!4596 = !DILocation(line: 579, column: 40, scope: !4584)
!4597 = !DILocation(line: 579, column: 13, scope: !4584)
!4598 = !DILocation(line: 579, column: 11, scope: !4584)
!4599 = !DILocation(line: 580, column: 8, scope: !4600)
!4600 = distinct !DILexicalBlock(scope: !4584, file: !3, line: 580, column: 8)
!4601 = !DILocation(line: 580, column: 8, scope: !4584)
!4602 = !DILocation(line: 581, column: 5, scope: !4600)
!4603 = !DILocation(line: 582, column: 3, scope: !4584)
!4604 = !DILocation(line: 576, column: 21, scope: !4578)
!4605 = !DILocation(line: 576, column: 3, scope: !4578)
!4606 = distinct !{!4606, !4582, !4607}
!4607 = !DILocation(line: 582, column: 3, scope: !4579)
!4608 = !DILocation(line: 583, column: 7, scope: !4609)
!4609 = distinct !DILexicalBlock(scope: !4556, file: !3, line: 583, column: 7)
!4610 = !DILocation(line: 583, column: 14, scope: !4609)
!4611 = !DILocation(line: 583, column: 7, scope: !4556)
!4612 = !DILocation(line: 584, column: 39, scope: !4609)
!4613 = !DILocation(line: 584, column: 13, scope: !4609)
!4614 = !DILocation(line: 584, column: 11, scope: !4609)
!4615 = !DILocation(line: 584, column: 4, scope: !4609)
!4616 = !DILocation(line: 585, column: 7, scope: !4617)
!4617 = distinct !DILexicalBlock(scope: !4556, file: !3, line: 585, column: 7)
!4618 = !DILocation(line: 585, column: 14, scope: !4617)
!4619 = !DILocation(line: 585, column: 7, scope: !4556)
!4620 = !DILocation(line: 586, column: 25, scope: !4621)
!4621 = distinct !DILexicalBlock(scope: !4617, file: !3, line: 585, column: 20)
!4622 = !DILocation(line: 586, column: 4, scope: !4621)
!4623 = !DILocation(line: 587, column: 20, scope: !4621)
!4624 = !DILocation(line: 587, column: 4, scope: !4621)
!4625 = !DILocation(line: 588, column: 4, scope: !4621)
!4626 = !DILocation(line: 590, column: 2, scope: !4556)
!4627 = !DILocation(line: 566, column: 34, scope: !4552)
!4628 = !DILocation(line: 566, column: 2, scope: !4552)
!4629 = distinct !{!4629, !4554, !4630}
!4630 = !DILocation(line: 590, column: 2, scope: !4549)
!4631 = !DILocation(line: 591, column: 9, scope: !4463)
!4632 = !DILocation(line: 591, column: 2, scope: !4463)
!4633 = !DILocation(line: 592, column: 1, scope: !4463)
!4634 = distinct !DISubprogram(name: "db2k_initialize_adc", scope: !3, file: !3, line: 660, type: !3953, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!4635 = !DILocalVariable(name: "dev", arg: 1, scope: !4634, file: !3, line: 660, type: !175)
!4636 = !DILocation(line: 660, column: 55, scope: !4634)
!4637 = !DILocation(line: 662, column: 18, scope: !4634)
!4638 = !DILocation(line: 662, column: 2, scope: !4634)
!4639 = !DILocation(line: 663, column: 31, scope: !4634)
!4640 = !DILocation(line: 663, column: 2, scope: !4634)
!4641 = !DILocation(line: 664, column: 23, scope: !4634)
!4642 = !DILocation(line: 664, column: 2, scope: !4634)
!4643 = !DILocation(line: 665, column: 23, scope: !4634)
!4644 = !DILocation(line: 665, column: 2, scope: !4634)
!4645 = !DILocation(line: 666, column: 1, scope: !4634)
!4646 = distinct !DISubprogram(name: "db2k_dac_disarm", scope: !3, file: !3, line: 656, type: !3953, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!4647 = !DILocalVariable(name: "dev", arg: 1, scope: !4646, file: !3, line: 656, type: !175)
!4648 = !DILocation(line: 656, column: 51, scope: !4646)
!4649 = !DILocation(line: 658, column: 1, scope: !4646)
!4650 = distinct !DISubprogram(name: "db2k_ai_insn_read", scope: !3, file: !3, line: 318, type: !3904, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!4651 = !DILocalVariable(name: "dev", arg: 1, scope: !4650, file: !3, line: 318, type: !175)
!4652 = !DILocation(line: 318, column: 52, scope: !4650)
!4653 = !DILocalVariable(name: "s", arg: 2, scope: !4650, file: !3, line: 319, type: !3807)
!4654 = !DILocation(line: 319, column: 34, scope: !4650)
!4655 = !DILocalVariable(name: "insn", arg: 3, scope: !4650, file: !3, line: 320, type: !3906)
!4656 = !DILocation(line: 320, column: 29, scope: !4650)
!4657 = !DILocalVariable(name: "data", arg: 4, scope: !4650, file: !3, line: 320, type: !2659)
!4658 = !DILocation(line: 320, column: 49, scope: !4650)
!4659 = !DILocalVariable(name: "gain", scope: !4650, file: !3, line: 322, type: !117)
!4660 = !DILocation(line: 322, column: 6, scope: !4650)
!4661 = !DILocalVariable(name: "chan", scope: !4650, file: !3, line: 322, type: !117)
!4662 = !DILocation(line: 322, column: 12, scope: !4650)
!4663 = !DILocalVariable(name: "ret", scope: !4650, file: !3, line: 323, type: !117)
!4664 = !DILocation(line: 323, column: 6, scope: !4650)
!4665 = !DILocalVariable(name: "i", scope: !4650, file: !3, line: 324, type: !117)
!4666 = !DILocation(line: 324, column: 6, scope: !4650)
!4667 = !DILocation(line: 329, column: 9, scope: !4650)
!4668 = !DILocation(line: 329, column: 14, scope: !4650)
!4669 = !DILocation(line: 329, column: 19, scope: !4650)
!4670 = !DILocation(line: 326, column: 2, scope: !4650)
!4671 = !DILocation(line: 336, column: 18, scope: !4650)
!4672 = !DILocation(line: 336, column: 23, scope: !4650)
!4673 = !DILocation(line: 336, column: 28, scope: !4650)
!4674 = !DILocation(line: 336, column: 2, scope: !4650)
!4675 = !DILocation(line: 337, column: 12, scope: !4650)
!4676 = !DILocation(line: 337, column: 17, scope: !4650)
!4677 = !DILocation(line: 337, column: 22, scope: !4650)
!4678 = !DILocation(line: 337, column: 2, scope: !4650)
!4679 = !DILocation(line: 339, column: 9, scope: !4650)
!4680 = !DILocation(line: 339, column: 7, scope: !4650)
!4681 = !DILocation(line: 340, column: 9, scope: !4650)
!4682 = !DILocation(line: 340, column: 7, scope: !4650)
!4683 = !DILocation(line: 348, column: 9, scope: !4684)
!4684 = distinct !DILexicalBlock(scope: !4650, file: !3, line: 348, column: 2)
!4685 = !DILocation(line: 348, column: 7, scope: !4684)
!4686 = !DILocation(line: 348, column: 14, scope: !4687)
!4687 = distinct !DILexicalBlock(scope: !4684, file: !3, line: 348, column: 2)
!4688 = !DILocation(line: 348, column: 18, scope: !4687)
!4689 = !DILocation(line: 348, column: 24, scope: !4687)
!4690 = !DILocation(line: 348, column: 16, scope: !4687)
!4691 = !DILocation(line: 348, column: 2, scope: !4684)
!4692 = !DILocation(line: 349, column: 23, scope: !4693)
!4693 = distinct !DILexicalBlock(scope: !4687, file: !3, line: 348, column: 32)
!4694 = !DILocation(line: 349, column: 28, scope: !4693)
!4695 = !DILocation(line: 349, column: 34, scope: !4693)
!4696 = !DILocation(line: 349, column: 3, scope: !4693)
!4697 = !DILocation(line: 352, column: 10, scope: !4693)
!4698 = !DILocation(line: 352, column: 15, scope: !4693)
!4699 = !DILocation(line: 352, column: 20, scope: !4693)
!4700 = !DILocation(line: 351, column: 3, scope: !4693)
!4701 = !DILocation(line: 354, column: 24, scope: !4693)
!4702 = !DILocation(line: 354, column: 29, scope: !4693)
!4703 = !DILocation(line: 354, column: 32, scope: !4693)
!4704 = !DILocation(line: 354, column: 9, scope: !4693)
!4705 = !DILocation(line: 354, column: 7, scope: !4693)
!4706 = !DILocation(line: 356, column: 7, scope: !4707)
!4707 = distinct !DILexicalBlock(scope: !4693, file: !3, line: 356, column: 7)
!4708 = !DILocation(line: 356, column: 7, scope: !4693)
!4709 = !DILocation(line: 357, column: 11, scope: !4707)
!4710 = !DILocation(line: 357, column: 4, scope: !4707)
!4711 = !DILocation(line: 360, column: 10, scope: !4693)
!4712 = !DILocation(line: 360, column: 15, scope: !4693)
!4713 = !DILocation(line: 360, column: 20, scope: !4693)
!4714 = !DILocation(line: 359, column: 3, scope: !4693)
!4715 = !DILocation(line: 362, column: 24, scope: !4693)
!4716 = !DILocation(line: 362, column: 29, scope: !4693)
!4717 = !DILocation(line: 362, column: 32, scope: !4693)
!4718 = !DILocation(line: 362, column: 9, scope: !4693)
!4719 = !DILocation(line: 362, column: 7, scope: !4693)
!4720 = !DILocation(line: 364, column: 7, scope: !4721)
!4721 = distinct !DILexicalBlock(scope: !4693, file: !3, line: 364, column: 7)
!4722 = !DILocation(line: 364, column: 7, scope: !4693)
!4723 = !DILocation(line: 365, column: 11, scope: !4721)
!4724 = !DILocation(line: 365, column: 4, scope: !4721)
!4725 = !DILocation(line: 368, column: 18, scope: !4693)
!4726 = !DILocation(line: 368, column: 23, scope: !4693)
!4727 = !DILocation(line: 368, column: 26, scope: !4693)
!4728 = !DILocation(line: 368, column: 3, scope: !4693)
!4729 = !DILocation(line: 367, column: 7, scope: !4693)
!4730 = !DILocation(line: 370, column: 7, scope: !4731)
!4731 = distinct !DILexicalBlock(scope: !4693, file: !3, line: 370, column: 7)
!4732 = !DILocation(line: 370, column: 7, scope: !4693)
!4733 = !DILocation(line: 371, column: 11, scope: !4731)
!4734 = !DILocation(line: 371, column: 4, scope: !4731)
!4735 = !DILocation(line: 373, column: 19, scope: !4693)
!4736 = !DILocation(line: 373, column: 24, scope: !4693)
!4737 = !DILocation(line: 373, column: 29, scope: !4693)
!4738 = !DILocation(line: 373, column: 13, scope: !4693)
!4739 = !DILocation(line: 373, column: 3, scope: !4693)
!4740 = !DILocation(line: 373, column: 8, scope: !4693)
!4741 = !DILocation(line: 373, column: 11, scope: !4693)
!4742 = !DILocation(line: 375, column: 10, scope: !4693)
!4743 = !DILocation(line: 375, column: 15, scope: !4693)
!4744 = !DILocation(line: 375, column: 20, scope: !4693)
!4745 = !DILocation(line: 374, column: 3, scope: !4693)
!4746 = !DILocation(line: 377, column: 10, scope: !4693)
!4747 = !DILocation(line: 377, column: 15, scope: !4693)
!4748 = !DILocation(line: 377, column: 20, scope: !4693)
!4749 = !DILocation(line: 376, column: 3, scope: !4693)
!4750 = !DILocation(line: 378, column: 2, scope: !4693)
!4751 = !DILocation(line: 348, column: 28, scope: !4687)
!4752 = !DILocation(line: 348, column: 2, scope: !4687)
!4753 = distinct !{!4753, !4691, !4754}
!4754 = !DILocation(line: 378, column: 2, scope: !4684)
!4755 = !DILocation(line: 380, column: 9, scope: !4650)
!4756 = !DILocation(line: 380, column: 2, scope: !4650)
!4757 = !DILocation(line: 381, column: 1, scope: !4650)
!4758 = distinct !DISubprogram(name: "db2k_ao_insn_write", scope: !3, file: !3, line: 395, type: !3904, scopeLine: 398, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!4759 = !DILocalVariable(name: "dev", arg: 1, scope: !4758, file: !3, line: 395, type: !175)
!4760 = !DILocation(line: 395, column: 53, scope: !4758)
!4761 = !DILocalVariable(name: "s", arg: 2, scope: !4758, file: !3, line: 396, type: !3807)
!4762 = !DILocation(line: 396, column: 35, scope: !4758)
!4763 = !DILocalVariable(name: "insn", arg: 3, scope: !4758, file: !3, line: 397, type: !3906)
!4764 = !DILocation(line: 397, column: 30, scope: !4758)
!4765 = !DILocalVariable(name: "data", arg: 4, scope: !4758, file: !3, line: 397, type: !2659)
!4766 = !DILocation(line: 397, column: 50, scope: !4758)
!4767 = !DILocalVariable(name: "chan", scope: !4758, file: !3, line: 399, type: !7)
!4768 = !DILocation(line: 399, column: 15, scope: !4758)
!4769 = !DILocation(line: 399, column: 22, scope: !4758)
!4770 = !DILocalVariable(name: "i", scope: !4758, file: !3, line: 400, type: !117)
!4771 = !DILocation(line: 400, column: 6, scope: !4758)
!4772 = !DILocation(line: 402, column: 9, scope: !4773)
!4773 = distinct !DILexicalBlock(scope: !4758, file: !3, line: 402, column: 2)
!4774 = !DILocation(line: 402, column: 7, scope: !4773)
!4775 = !DILocation(line: 402, column: 14, scope: !4776)
!4776 = distinct !DILexicalBlock(scope: !4773, file: !3, line: 402, column: 2)
!4777 = !DILocation(line: 402, column: 18, scope: !4776)
!4778 = !DILocation(line: 402, column: 24, scope: !4776)
!4779 = !DILocation(line: 402, column: 16, scope: !4776)
!4780 = !DILocation(line: 402, column: 2, scope: !4773)
!4781 = !DILocalVariable(name: "val", scope: !4782, file: !3, line: 403, type: !7)
!4782 = distinct !DILexicalBlock(scope: !4776, file: !3, line: 402, column: 32)
!4783 = !DILocation(line: 403, column: 16, scope: !4782)
!4784 = !DILocation(line: 403, column: 22, scope: !4782)
!4785 = !DILocation(line: 403, column: 27, scope: !4782)
!4786 = !DILocalVariable(name: "ret", scope: !4782, file: !3, line: 404, type: !117)
!4787 = !DILocation(line: 404, column: 7, scope: !4782)
!4788 = !DILocation(line: 406, column: 10, scope: !4782)
!4789 = !DILocation(line: 406, column: 15, scope: !4782)
!4790 = !DILocation(line: 406, column: 20, scope: !4782)
!4791 = !DILocation(line: 406, column: 27, scope: !4782)
!4792 = !DILocation(line: 406, column: 25, scope: !4782)
!4793 = !DILocation(line: 406, column: 3, scope: !4782)
!4794 = !DILocation(line: 408, column: 24, scope: !4782)
!4795 = !DILocation(line: 408, column: 29, scope: !4782)
!4796 = !DILocation(line: 408, column: 32, scope: !4782)
!4797 = !DILocation(line: 408, column: 9, scope: !4782)
!4798 = !DILocation(line: 408, column: 7, scope: !4782)
!4799 = !DILocation(line: 409, column: 7, scope: !4800)
!4800 = distinct !DILexicalBlock(scope: !4782, file: !3, line: 409, column: 7)
!4801 = !DILocation(line: 409, column: 7, scope: !4782)
!4802 = !DILocation(line: 410, column: 11, scope: !4800)
!4803 = !DILocation(line: 410, column: 4, scope: !4800)
!4804 = !DILocation(line: 412, column: 23, scope: !4782)
!4805 = !DILocation(line: 412, column: 3, scope: !4782)
!4806 = !DILocation(line: 412, column: 6, scope: !4782)
!4807 = !DILocation(line: 412, column: 15, scope: !4782)
!4808 = !DILocation(line: 412, column: 21, scope: !4782)
!4809 = !DILocation(line: 413, column: 2, scope: !4782)
!4810 = !DILocation(line: 402, column: 28, scope: !4776)
!4811 = !DILocation(line: 402, column: 2, scope: !4776)
!4812 = distinct !{!4812, !4780, !4813}
!4813 = !DILocation(line: 413, column: 2, scope: !4773)
!4814 = !DILocation(line: 415, column: 9, scope: !4758)
!4815 = !DILocation(line: 415, column: 15, scope: !4758)
!4816 = !DILocation(line: 415, column: 2, scope: !4758)
!4817 = !DILocation(line: 416, column: 1, scope: !4758)
!4818 = distinct !DISubprogram(name: "db2k_8255_cb", scope: !3, file: !3, line: 668, type: !4819, scopeLine: 670, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!4819 = !DISubroutineType(types: !4820)
!4820 = !{!117, !175, !117, !117, !117, !299}
!4821 = !DILocalVariable(name: "dev", arg: 1, scope: !4818, file: !3, line: 668, type: !175)
!4822 = !DILocation(line: 668, column: 47, scope: !4818)
!4823 = !DILocalVariable(name: "dir", arg: 2, scope: !4818, file: !3, line: 668, type: !117)
!4824 = !DILocation(line: 668, column: 56, scope: !4818)
!4825 = !DILocalVariable(name: "port", arg: 3, scope: !4818, file: !3, line: 668, type: !117)
!4826 = !DILocation(line: 668, column: 65, scope: !4818)
!4827 = !DILocalVariable(name: "data", arg: 4, scope: !4818, file: !3, line: 668, type: !117)
!4828 = !DILocation(line: 668, column: 75, scope: !4818)
!4829 = !DILocalVariable(name: "iobase", arg: 5, scope: !4818, file: !3, line: 669, type: !299)
!4830 = !DILocation(line: 669, column: 18, scope: !4818)
!4831 = !DILocation(line: 671, column: 6, scope: !4832)
!4832 = distinct !DILexicalBlock(scope: !4818, file: !3, line: 671, column: 6)
!4833 = !DILocation(line: 671, column: 6, scope: !4818)
!4834 = !DILocation(line: 672, column: 10, scope: !4835)
!4835 = distinct !DILexicalBlock(scope: !4832, file: !3, line: 671, column: 11)
!4836 = !DILocation(line: 672, column: 16, scope: !4835)
!4837 = !DILocation(line: 672, column: 21, scope: !4835)
!4838 = !DILocation(line: 672, column: 28, scope: !4835)
!4839 = !DILocation(line: 672, column: 26, scope: !4835)
!4840 = !DILocation(line: 672, column: 37, scope: !4835)
!4841 = !DILocation(line: 672, column: 42, scope: !4835)
!4842 = !DILocation(line: 672, column: 35, scope: !4835)
!4843 = !DILocation(line: 672, column: 3, scope: !4835)
!4844 = !DILocation(line: 673, column: 3, scope: !4835)
!4845 = !DILocation(line: 675, column: 15, scope: !4818)
!4846 = !DILocation(line: 675, column: 20, scope: !4818)
!4847 = !DILocation(line: 675, column: 27, scope: !4818)
!4848 = !DILocation(line: 675, column: 25, scope: !4818)
!4849 = !DILocation(line: 675, column: 36, scope: !4818)
!4850 = !DILocation(line: 675, column: 41, scope: !4818)
!4851 = !DILocation(line: 675, column: 34, scope: !4818)
!4852 = !DILocation(line: 675, column: 9, scope: !4818)
!4853 = !DILocation(line: 675, column: 2, scope: !4818)
!4854 = !DILocation(line: 676, column: 1, scope: !4818)
!4855 = distinct !DISubprogram(name: "readl", scope: !4856, file: !4856, line: 59, type: !4857, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!4856 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!4857 = !DISubroutineType(types: !4858)
!4858 = !{!7, !4859}
!4859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4860, size: 64)
!4860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4861)
!4861 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4862 = !DILocalVariable(name: "addr", arg: 1, scope: !4855, file: !4856, line: 59, type: !4859)
!4863 = !DILocation(line: 59, column: 1, scope: !4855)
!4864 = !DILocalVariable(name: "ret", scope: !4855, file: !4856, line: 59, type: !7)
!4865 = !{i32 -2143407968}
!4866 = distinct !DISubprogram(name: "db2k_reset_local_bus", scope: !3, file: !3, line: 418, type: !3953, scopeLine: 419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!4867 = !DILocalVariable(name: "dev", arg: 1, scope: !4866, file: !3, line: 418, type: !175)
!4868 = !DILocation(line: 418, column: 56, scope: !4866)
!4869 = !DILocalVariable(name: "devpriv", scope: !4866, file: !3, line: 420, type: !4287)
!4870 = !DILocation(line: 420, column: 23, scope: !4866)
!4871 = !DILocation(line: 420, column: 33, scope: !4866)
!4872 = !DILocation(line: 420, column: 38, scope: !4866)
!4873 = !DILocalVariable(name: "cntrl", scope: !4866, file: !3, line: 421, type: !390)
!4874 = !DILocation(line: 421, column: 6, scope: !4866)
!4875 = !DILocation(line: 423, column: 16, scope: !4866)
!4876 = !DILocation(line: 423, column: 25, scope: !4866)
!4877 = !DILocation(line: 423, column: 29, scope: !4866)
!4878 = !DILocation(line: 423, column: 10, scope: !4866)
!4879 = !DILocation(line: 423, column: 8, scope: !4866)
!4880 = !DILocation(line: 424, column: 8, scope: !4866)
!4881 = !DILocation(line: 425, column: 9, scope: !4866)
!4882 = !DILocation(line: 425, column: 16, scope: !4866)
!4883 = !DILocation(line: 425, column: 25, scope: !4866)
!4884 = !DILocation(line: 425, column: 29, scope: !4866)
!4885 = !DILocation(line: 425, column: 2, scope: !4866)
!4886 = !DILocalVariable(name: "__ms", scope: !4887, file: !3, line: 426, type: !299)
!4887 = distinct !DILexicalBlock(scope: !4866, file: !3, line: 426, column: 2)
!4888 = !DILocation(line: 426, column: 2, scope: !4887)
!4889 = !DILocation(line: 426, column: 2, scope: !4890)
!4890 = distinct !DILexicalBlock(scope: !4891, file: !3, line: 426, column: 2)
!4891 = distinct !DILexicalBlock(scope: !4892, file: !3, line: 426, column: 2)
!4892 = distinct !DILexicalBlock(scope: !4893, file: !3, line: 426, column: 2)
!4893 = distinct !DILexicalBlock(scope: !4887, file: !3, line: 426, column: 2)
!4894 = distinct !{!4894, !4888, !4888}
!4895 = !DILocation(line: 427, column: 8, scope: !4866)
!4896 = !DILocation(line: 428, column: 9, scope: !4866)
!4897 = !DILocation(line: 428, column: 16, scope: !4866)
!4898 = !DILocation(line: 428, column: 25, scope: !4866)
!4899 = !DILocation(line: 428, column: 29, scope: !4866)
!4900 = !DILocation(line: 428, column: 2, scope: !4866)
!4901 = !DILocalVariable(name: "__ms", scope: !4902, file: !3, line: 429, type: !299)
!4902 = distinct !DILexicalBlock(scope: !4866, file: !3, line: 429, column: 2)
!4903 = !DILocation(line: 429, column: 2, scope: !4902)
!4904 = !DILocation(line: 429, column: 2, scope: !4905)
!4905 = distinct !DILexicalBlock(scope: !4906, file: !3, line: 429, column: 2)
!4906 = distinct !DILexicalBlock(scope: !4907, file: !3, line: 429, column: 2)
!4907 = distinct !DILexicalBlock(scope: !4908, file: !3, line: 429, column: 2)
!4908 = distinct !DILexicalBlock(scope: !4902, file: !3, line: 429, column: 2)
!4909 = distinct !{!4909, !4903, !4903}
!4910 = !DILocation(line: 430, column: 1, scope: !4866)
!4911 = distinct !DISubprogram(name: "db2k_reload_plx", scope: !3, file: !3, line: 432, type: !3953, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!4912 = !DILocalVariable(name: "dev", arg: 1, scope: !4911, file: !3, line: 432, type: !175)
!4913 = !DILocation(line: 432, column: 51, scope: !4911)
!4914 = !DILocalVariable(name: "devpriv", scope: !4911, file: !3, line: 434, type: !4287)
!4915 = !DILocation(line: 434, column: 23, scope: !4911)
!4916 = !DILocation(line: 434, column: 33, scope: !4911)
!4917 = !DILocation(line: 434, column: 38, scope: !4911)
!4918 = !DILocalVariable(name: "cntrl", scope: !4911, file: !3, line: 435, type: !390)
!4919 = !DILocation(line: 435, column: 6, scope: !4911)
!4920 = !DILocation(line: 437, column: 16, scope: !4911)
!4921 = !DILocation(line: 437, column: 25, scope: !4911)
!4922 = !DILocation(line: 437, column: 29, scope: !4911)
!4923 = !DILocation(line: 437, column: 10, scope: !4911)
!4924 = !DILocation(line: 437, column: 8, scope: !4911)
!4925 = !DILocation(line: 438, column: 8, scope: !4911)
!4926 = !DILocation(line: 439, column: 9, scope: !4911)
!4927 = !DILocation(line: 439, column: 16, scope: !4911)
!4928 = !DILocation(line: 439, column: 25, scope: !4911)
!4929 = !DILocation(line: 439, column: 29, scope: !4911)
!4930 = !DILocation(line: 439, column: 2, scope: !4911)
!4931 = !DILocalVariable(name: "__ms", scope: !4932, file: !3, line: 440, type: !299)
!4932 = distinct !DILexicalBlock(scope: !4911, file: !3, line: 440, column: 2)
!4933 = !DILocation(line: 440, column: 2, scope: !4932)
!4934 = !DILocation(line: 440, column: 2, scope: !4935)
!4935 = distinct !DILexicalBlock(scope: !4936, file: !3, line: 440, column: 2)
!4936 = distinct !DILexicalBlock(scope: !4937, file: !3, line: 440, column: 2)
!4937 = distinct !DILexicalBlock(scope: !4938, file: !3, line: 440, column: 2)
!4938 = distinct !DILexicalBlock(scope: !4932, file: !3, line: 440, column: 2)
!4939 = distinct !{!4939, !4933, !4933}
!4940 = !DILocation(line: 441, column: 8, scope: !4911)
!4941 = !DILocation(line: 442, column: 9, scope: !4911)
!4942 = !DILocation(line: 442, column: 16, scope: !4911)
!4943 = !DILocation(line: 442, column: 25, scope: !4911)
!4944 = !DILocation(line: 442, column: 29, scope: !4911)
!4945 = !DILocation(line: 442, column: 2, scope: !4911)
!4946 = !DILocalVariable(name: "__ms", scope: !4947, file: !3, line: 443, type: !299)
!4947 = distinct !DILexicalBlock(scope: !4911, file: !3, line: 443, column: 2)
!4948 = !DILocation(line: 443, column: 2, scope: !4947)
!4949 = !DILocation(line: 443, column: 2, scope: !4950)
!4950 = distinct !DILexicalBlock(scope: !4951, file: !3, line: 443, column: 2)
!4951 = distinct !DILexicalBlock(scope: !4952, file: !3, line: 443, column: 2)
!4952 = distinct !DILexicalBlock(scope: !4953, file: !3, line: 443, column: 2)
!4953 = distinct !DILexicalBlock(scope: !4947, file: !3, line: 443, column: 2)
!4954 = distinct !{!4954, !4948, !4948}
!4955 = !DILocation(line: 444, column: 8, scope: !4911)
!4956 = !DILocation(line: 445, column: 9, scope: !4911)
!4957 = !DILocation(line: 445, column: 16, scope: !4911)
!4958 = !DILocation(line: 445, column: 25, scope: !4911)
!4959 = !DILocation(line: 445, column: 29, scope: !4911)
!4960 = !DILocation(line: 445, column: 2, scope: !4911)
!4961 = !DILocalVariable(name: "__ms", scope: !4962, file: !3, line: 446, type: !299)
!4962 = distinct !DILexicalBlock(scope: !4911, file: !3, line: 446, column: 2)
!4963 = !DILocation(line: 446, column: 2, scope: !4962)
!4964 = !DILocation(line: 446, column: 2, scope: !4965)
!4965 = distinct !DILexicalBlock(scope: !4966, file: !3, line: 446, column: 2)
!4966 = distinct !DILexicalBlock(scope: !4967, file: !3, line: 446, column: 2)
!4967 = distinct !DILexicalBlock(scope: !4968, file: !3, line: 446, column: 2)
!4968 = distinct !DILexicalBlock(scope: !4962, file: !3, line: 446, column: 2)
!4969 = distinct !{!4969, !4963, !4963}
!4970 = !DILocation(line: 447, column: 1, scope: !4911)
!4971 = distinct !DISubprogram(name: "db2k_pulse_prog_pin", scope: !3, file: !3, line: 449, type: !3953, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!4972 = !DILocalVariable(name: "dev", arg: 1, scope: !4971, file: !3, line: 449, type: !175)
!4973 = !DILocation(line: 449, column: 55, scope: !4971)
!4974 = !DILocalVariable(name: "devpriv", scope: !4971, file: !3, line: 451, type: !4287)
!4975 = !DILocation(line: 451, column: 23, scope: !4971)
!4976 = !DILocation(line: 451, column: 33, scope: !4971)
!4977 = !DILocation(line: 451, column: 38, scope: !4971)
!4978 = !DILocalVariable(name: "cntrl", scope: !4971, file: !3, line: 452, type: !390)
!4979 = !DILocation(line: 452, column: 6, scope: !4971)
!4980 = !DILocation(line: 454, column: 16, scope: !4971)
!4981 = !DILocation(line: 454, column: 25, scope: !4971)
!4982 = !DILocation(line: 454, column: 29, scope: !4971)
!4983 = !DILocation(line: 454, column: 10, scope: !4971)
!4984 = !DILocation(line: 454, column: 8, scope: !4971)
!4985 = !DILocation(line: 455, column: 8, scope: !4971)
!4986 = !DILocation(line: 456, column: 9, scope: !4971)
!4987 = !DILocation(line: 456, column: 16, scope: !4971)
!4988 = !DILocation(line: 456, column: 25, scope: !4971)
!4989 = !DILocation(line: 456, column: 29, scope: !4971)
!4990 = !DILocation(line: 456, column: 2, scope: !4971)
!4991 = !DILocalVariable(name: "__ms", scope: !4992, file: !3, line: 457, type: !299)
!4992 = distinct !DILexicalBlock(scope: !4971, file: !3, line: 457, column: 2)
!4993 = !DILocation(line: 457, column: 2, scope: !4992)
!4994 = !DILocation(line: 457, column: 2, scope: !4995)
!4995 = distinct !DILexicalBlock(scope: !4996, file: !3, line: 457, column: 2)
!4996 = distinct !DILexicalBlock(scope: !4997, file: !3, line: 457, column: 2)
!4997 = distinct !DILexicalBlock(scope: !4998, file: !3, line: 457, column: 2)
!4998 = distinct !DILexicalBlock(scope: !4992, file: !3, line: 457, column: 2)
!4999 = distinct !{!4999, !4993, !4993}
!5000 = !DILocation(line: 458, column: 8, scope: !4971)
!5001 = !DILocation(line: 459, column: 9, scope: !4971)
!5002 = !DILocation(line: 459, column: 16, scope: !4971)
!5003 = !DILocation(line: 459, column: 25, scope: !4971)
!5004 = !DILocation(line: 459, column: 29, scope: !4971)
!5005 = !DILocation(line: 459, column: 2, scope: !4971)
!5006 = !DILocalVariable(name: "__ms", scope: !5007, file: !3, line: 460, type: !299)
!5007 = distinct !DILexicalBlock(scope: !4971, file: !3, line: 460, column: 2)
!5008 = !DILocation(line: 460, column: 2, scope: !5007)
!5009 = !DILocation(line: 460, column: 2, scope: !5010)
!5010 = distinct !DILexicalBlock(scope: !5011, file: !3, line: 460, column: 2)
!5011 = distinct !DILexicalBlock(scope: !5012, file: !3, line: 460, column: 2)
!5012 = distinct !DILexicalBlock(scope: !5013, file: !3, line: 460, column: 2)
!5013 = distinct !DILexicalBlock(scope: !5007, file: !3, line: 460, column: 2)
!5014 = distinct !{!5014, !5008, !5008}
!5015 = !DILocation(line: 461, column: 1, scope: !4971)
!5016 = distinct !DISubprogram(name: "db2k_wait_cpld_init", scope: !3, file: !3, line: 463, type: !3949, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!5017 = !DILocalVariable(name: "dev", arg: 1, scope: !5016, file: !3, line: 463, type: !175)
!5018 = !DILocation(line: 463, column: 54, scope: !5016)
!5019 = !DILocalVariable(name: "result", scope: !5016, file: !3, line: 465, type: !117)
!5020 = !DILocation(line: 465, column: 6, scope: !5016)
!5021 = !DILocalVariable(name: "i", scope: !5016, file: !3, line: 466, type: !117)
!5022 = !DILocation(line: 466, column: 6, scope: !5016)
!5023 = !DILocalVariable(name: "cpld", scope: !5016, file: !3, line: 467, type: !835)
!5024 = !DILocation(line: 467, column: 6, scope: !5016)
!5025 = !DILocation(line: 470, column: 9, scope: !5026)
!5026 = distinct !DILexicalBlock(scope: !5016, file: !3, line: 470, column: 2)
!5027 = !DILocation(line: 470, column: 7, scope: !5026)
!5028 = !DILocation(line: 470, column: 14, scope: !5029)
!5029 = distinct !DILexicalBlock(scope: !5026, file: !3, line: 470, column: 2)
!5030 = !DILocation(line: 470, column: 16, scope: !5029)
!5031 = !DILocation(line: 470, column: 2, scope: !5026)
!5032 = !DILocation(line: 471, column: 16, scope: !5033)
!5033 = distinct !DILexicalBlock(scope: !5029, file: !3, line: 470, column: 27)
!5034 = !DILocation(line: 471, column: 21, scope: !5033)
!5035 = !DILocation(line: 471, column: 26, scope: !5033)
!5036 = !DILocation(line: 471, column: 10, scope: !5033)
!5037 = !DILocation(line: 471, column: 8, scope: !5033)
!5038 = !DILocation(line: 472, column: 7, scope: !5039)
!5039 = distinct !DILexicalBlock(scope: !5033, file: !3, line: 472, column: 7)
!5040 = !DILocation(line: 472, column: 12, scope: !5039)
!5041 = !DILocation(line: 472, column: 7, scope: !5033)
!5042 = !DILocation(line: 473, column: 11, scope: !5043)
!5043 = distinct !DILexicalBlock(scope: !5039, file: !3, line: 472, column: 37)
!5044 = !DILocation(line: 474, column: 4, scope: !5043)
!5045 = !DILocation(line: 476, column: 3, scope: !5033)
!5046 = !DILocation(line: 477, column: 2, scope: !5033)
!5047 = !DILocation(line: 470, column: 23, scope: !5029)
!5048 = !DILocation(line: 470, column: 2, scope: !5029)
!5049 = distinct !{!5049, !5031, !5050}
!5050 = !DILocation(line: 477, column: 2, scope: !5026)
!5051 = !DILocation(line: 478, column: 2, scope: !5052)
!5052 = distinct !DILexicalBlock(scope: !5053, file: !3, line: 478, column: 2)
!5053 = distinct !DILexicalBlock(scope: !5054, file: !3, line: 478, column: 2)
!5054 = distinct !DILexicalBlock(scope: !5055, file: !3, line: 478, column: 2)
!5055 = distinct !DILexicalBlock(scope: !5016, file: !3, line: 478, column: 2)
!5056 = !DILocation(line: 479, column: 9, scope: !5016)
!5057 = !DILocation(line: 479, column: 2, scope: !5016)
!5058 = distinct !DISubprogram(name: "readw", scope: !4856, file: !4856, line: 58, type: !5059, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!5059 = !DISubroutineType(types: !5060)
!5060 = !{!122, !4859}
!5061 = !DILocalVariable(name: "addr", arg: 1, scope: !5058, file: !4856, line: 58, type: !4859)
!5062 = !DILocation(line: 58, column: 1, scope: !5058)
!5063 = !DILocalVariable(name: "ret", scope: !5058, file: !4856, line: 58, type: !122)
!5064 = !{i32 -2143408385}
!5065 = distinct !DISubprogram(name: "db2k_write_cpld", scope: !3, file: !3, line: 496, type: !5066, scopeLine: 497, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!5066 = !DISubroutineType(types: !5067)
!5067 = !{!117, !175, !835, !465}
!5068 = !DILocalVariable(name: "dev", arg: 1, scope: !5065, file: !3, line: 496, type: !175)
!5069 = !DILocation(line: 496, column: 50, scope: !5065)
!5070 = !DILocalVariable(name: "data", arg: 2, scope: !5065, file: !3, line: 496, type: !835)
!5071 = !DILocation(line: 496, column: 59, scope: !5065)
!5072 = !DILocalVariable(name: "new_cpld", arg: 3, scope: !5065, file: !3, line: 496, type: !465)
!5073 = !DILocation(line: 496, column: 70, scope: !5065)
!5074 = !DILocalVariable(name: "result", scope: !5065, file: !3, line: 498, type: !117)
!5075 = !DILocation(line: 498, column: 6, scope: !5065)
!5076 = !DILocation(line: 500, column: 6, scope: !5077)
!5077 = distinct !DILexicalBlock(scope: !5065, file: !3, line: 500, column: 6)
!5078 = !DILocation(line: 500, column: 6, scope: !5065)
!5079 = !DILocation(line: 501, column: 35, scope: !5080)
!5080 = distinct !DILexicalBlock(scope: !5077, file: !3, line: 500, column: 16)
!5081 = !DILocation(line: 501, column: 12, scope: !5080)
!5082 = !DILocation(line: 501, column: 10, scope: !5080)
!5083 = !DILocation(line: 502, column: 7, scope: !5084)
!5084 = distinct !DILexicalBlock(scope: !5080, file: !3, line: 502, column: 7)
!5085 = !DILocation(line: 502, column: 7, scope: !5080)
!5086 = !DILocation(line: 503, column: 11, scope: !5084)
!5087 = !DILocation(line: 503, column: 4, scope: !5084)
!5088 = !DILocation(line: 504, column: 2, scope: !5080)
!5089 = !DILocation(line: 505, column: 3, scope: !5090)
!5090 = distinct !DILexicalBlock(scope: !5077, file: !3, line: 504, column: 9)
!5091 = !DILocation(line: 507, column: 9, scope: !5065)
!5092 = !DILocation(line: 507, column: 15, scope: !5065)
!5093 = !DILocation(line: 507, column: 20, scope: !5065)
!5094 = !DILocation(line: 507, column: 25, scope: !5065)
!5095 = !DILocation(line: 507, column: 2, scope: !5065)
!5096 = !DILocation(line: 508, column: 14, scope: !5097)
!5097 = distinct !DILexicalBlock(scope: !5065, file: !3, line: 508, column: 6)
!5098 = !DILocation(line: 508, column: 19, scope: !5097)
!5099 = !DILocation(line: 508, column: 24, scope: !5097)
!5100 = !DILocation(line: 508, column: 8, scope: !5097)
!5101 = !DILocation(line: 508, column: 48, scope: !5097)
!5102 = !DILocation(line: 508, column: 6, scope: !5065)
!5103 = !DILocation(line: 509, column: 10, scope: !5097)
!5104 = !DILocation(line: 509, column: 3, scope: !5097)
!5105 = !DILocation(line: 511, column: 9, scope: !5065)
!5106 = !DILocation(line: 511, column: 2, scope: !5065)
!5107 = !DILocation(line: 512, column: 1, scope: !5065)
!5108 = distinct !DISubprogram(name: "db2k_wait_fpga_programmed", scope: !3, file: !3, line: 514, type: !3949, scopeLine: 515, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!5109 = !DILocalVariable(name: "dev", arg: 1, scope: !5108, file: !3, line: 514, type: !175)
!5110 = !DILocation(line: 514, column: 60, scope: !5108)
!5111 = !DILocalVariable(name: "devpriv", scope: !5108, file: !3, line: 516, type: !4287)
!5112 = !DILocation(line: 516, column: 23, scope: !5108)
!5113 = !DILocation(line: 516, column: 33, scope: !5108)
!5114 = !DILocation(line: 516, column: 38, scope: !5108)
!5115 = !DILocalVariable(name: "i", scope: !5108, file: !3, line: 517, type: !117)
!5116 = !DILocation(line: 517, column: 6, scope: !5108)
!5117 = !DILocation(line: 520, column: 9, scope: !5118)
!5118 = distinct !DILexicalBlock(scope: !5108, file: !3, line: 520, column: 2)
!5119 = !DILocation(line: 520, column: 7, scope: !5118)
!5120 = !DILocation(line: 520, column: 14, scope: !5121)
!5121 = distinct !DILexicalBlock(scope: !5118, file: !3, line: 520, column: 2)
!5122 = !DILocation(line: 520, column: 16, scope: !5121)
!5123 = !DILocation(line: 520, column: 2, scope: !5118)
!5124 = !DILocalVariable(name: "cntrl", scope: !5125, file: !3, line: 521, type: !390)
!5125 = distinct !DILexicalBlock(scope: !5121, file: !3, line: 520, column: 28)
!5126 = !DILocation(line: 521, column: 7, scope: !5125)
!5127 = !DILocation(line: 521, column: 21, scope: !5125)
!5128 = !DILocation(line: 521, column: 30, scope: !5125)
!5129 = !DILocation(line: 521, column: 34, scope: !5125)
!5130 = !DILocation(line: 521, column: 15, scope: !5125)
!5131 = !DILocation(line: 523, column: 7, scope: !5132)
!5132 = distinct !DILexicalBlock(scope: !5125, file: !3, line: 523, column: 7)
!5133 = !DILocation(line: 523, column: 13, scope: !5132)
!5134 = !DILocation(line: 523, column: 7, scope: !5125)
!5135 = !DILocation(line: 524, column: 4, scope: !5132)
!5136 = !DILocation(line: 526, column: 3, scope: !5125)
!5137 = !DILocation(line: 527, column: 2, scope: !5125)
!5138 = !DILocation(line: 520, column: 24, scope: !5121)
!5139 = !DILocation(line: 520, column: 2, scope: !5121)
!5140 = distinct !{!5140, !5123, !5141}
!5141 = !DILocation(line: 527, column: 2, scope: !5118)
!5142 = !DILocation(line: 528, column: 2, scope: !5108)
!5143 = !DILocation(line: 529, column: 1, scope: !5108)
!5144 = distinct !DISubprogram(name: "writel", scope: !4856, file: !4856, line: 67, type: !5145, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!5145 = !DISubroutineType(types: !5146)
!5146 = !{null, !7, !5147}
!5147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4861, size: 64)
!5148 = !DILocalVariable(name: "val", arg: 1, scope: !5144, file: !4856, line: 67, type: !7)
!5149 = !DILocation(line: 67, column: 1, scope: !5144)
!5150 = !DILocalVariable(name: "addr", arg: 2, scope: !5144, file: !4856, line: 67, type: !5147)
!5151 = !{i32 -2143405575}
!5152 = distinct !DISubprogram(name: "db2k_wait_cpld_txready", scope: !3, file: !3, line: 482, type: !3949, scopeLine: 483, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!5153 = !DILocalVariable(name: "dev", arg: 1, scope: !5152, file: !3, line: 482, type: !175)
!5154 = !DILocation(line: 482, column: 57, scope: !5152)
!5155 = !DILocalVariable(name: "i", scope: !5152, file: !3, line: 484, type: !117)
!5156 = !DILocation(line: 484, column: 6, scope: !5152)
!5157 = !DILocation(line: 486, column: 9, scope: !5158)
!5158 = distinct !DILexicalBlock(scope: !5152, file: !3, line: 486, column: 2)
!5159 = !DILocation(line: 486, column: 7, scope: !5158)
!5160 = !DILocation(line: 486, column: 14, scope: !5161)
!5161 = distinct !DILexicalBlock(scope: !5158, file: !3, line: 486, column: 2)
!5162 = !DILocation(line: 486, column: 16, scope: !5161)
!5163 = !DILocation(line: 486, column: 2, scope: !5158)
!5164 = !DILocation(line: 487, column: 13, scope: !5165)
!5165 = distinct !DILexicalBlock(scope: !5166, file: !3, line: 487, column: 7)
!5166 = distinct !DILexicalBlock(scope: !5161, file: !3, line: 486, column: 28)
!5167 = !DILocation(line: 487, column: 18, scope: !5165)
!5168 = !DILocation(line: 487, column: 23, scope: !5165)
!5169 = !DILocation(line: 487, column: 7, scope: !5165)
!5170 = !DILocation(line: 487, column: 47, scope: !5165)
!5171 = !DILocation(line: 487, column: 7, scope: !5166)
!5172 = !DILocation(line: 489, column: 4, scope: !5173)
!5173 = distinct !DILexicalBlock(scope: !5165, file: !3, line: 488, column: 33)
!5174 = !DILocation(line: 491, column: 3, scope: !5175)
!5175 = distinct !DILexicalBlock(scope: !5176, file: !3, line: 491, column: 3)
!5176 = distinct !DILexicalBlock(scope: !5177, file: !3, line: 491, column: 3)
!5177 = distinct !DILexicalBlock(scope: !5178, file: !3, line: 491, column: 3)
!5178 = distinct !DILexicalBlock(scope: !5166, file: !3, line: 491, column: 3)
!5179 = !DILocation(line: 492, column: 2, scope: !5166)
!5180 = !DILocation(line: 486, column: 24, scope: !5161)
!5181 = !DILocation(line: 486, column: 2, scope: !5161)
!5182 = distinct !{!5182, !5163, !5183}
!5183 = !DILocation(line: 492, column: 2, scope: !5158)
!5184 = !DILocation(line: 493, column: 2, scope: !5152)
!5185 = !DILocation(line: 494, column: 1, scope: !5152)
!5186 = distinct !DISubprogram(name: "writew", scope: !4856, file: !4856, line: 66, type: !5187, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!5187 = !DISubroutineType(types: !5188)
!5188 = !{null, !122, !5147}
!5189 = !DILocalVariable(name: "val", arg: 1, scope: !5186, file: !4856, line: 66, type: !122)
!5190 = !DILocation(line: 66, column: 1, scope: !5186)
!5191 = !DILocalVariable(name: "addr", arg: 2, scope: !5186, file: !4856, line: 66, type: !5147)
!5192 = !{i32 -2143405961}
!5193 = distinct !DISubprogram(name: "db2k_adc_disarm", scope: !3, file: !3, line: 598, type: !3953, scopeLine: 599, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!5194 = !DILocalVariable(name: "dev", arg: 1, scope: !5193, file: !3, line: 598, type: !175)
!5195 = !DILocation(line: 598, column: 51, scope: !5193)
!5196 = !DILocation(line: 601, column: 2, scope: !5197)
!5197 = distinct !DILexicalBlock(scope: !5198, file: !3, line: 601, column: 2)
!5198 = distinct !DILexicalBlock(scope: !5199, file: !3, line: 601, column: 2)
!5199 = distinct !DILexicalBlock(scope: !5200, file: !3, line: 601, column: 2)
!5200 = distinct !DILexicalBlock(scope: !5193, file: !3, line: 601, column: 2)
!5201 = !DILocation(line: 603, column: 9, scope: !5193)
!5202 = !DILocation(line: 603, column: 14, scope: !5193)
!5203 = !DILocation(line: 603, column: 19, scope: !5193)
!5204 = !DILocation(line: 602, column: 2, scope: !5193)
!5205 = !DILocation(line: 604, column: 2, scope: !5206)
!5206 = distinct !DILexicalBlock(scope: !5207, file: !3, line: 604, column: 2)
!5207 = distinct !DILexicalBlock(scope: !5208, file: !3, line: 604, column: 2)
!5208 = distinct !DILexicalBlock(scope: !5209, file: !3, line: 604, column: 2)
!5209 = distinct !DILexicalBlock(scope: !5193, file: !3, line: 604, column: 2)
!5210 = !DILocation(line: 606, column: 9, scope: !5193)
!5211 = !DILocation(line: 606, column: 14, scope: !5193)
!5212 = !DILocation(line: 606, column: 19, scope: !5193)
!5213 = !DILocation(line: 605, column: 2, scope: !5193)
!5214 = !DILocation(line: 609, column: 2, scope: !5215)
!5215 = distinct !DILexicalBlock(scope: !5216, file: !3, line: 609, column: 2)
!5216 = distinct !DILexicalBlock(scope: !5217, file: !3, line: 609, column: 2)
!5217 = distinct !DILexicalBlock(scope: !5218, file: !3, line: 609, column: 2)
!5218 = distinct !DILexicalBlock(scope: !5193, file: !3, line: 609, column: 2)
!5219 = !DILocation(line: 611, column: 9, scope: !5193)
!5220 = !DILocation(line: 611, column: 14, scope: !5193)
!5221 = !DILocation(line: 611, column: 19, scope: !5193)
!5222 = !DILocation(line: 610, column: 2, scope: !5193)
!5223 = !DILocation(line: 614, column: 2, scope: !5224)
!5224 = distinct !DILexicalBlock(scope: !5225, file: !3, line: 614, column: 2)
!5225 = distinct !DILexicalBlock(scope: !5226, file: !3, line: 614, column: 2)
!5226 = distinct !DILexicalBlock(scope: !5227, file: !3, line: 614, column: 2)
!5227 = distinct !DILexicalBlock(scope: !5193, file: !3, line: 614, column: 2)
!5228 = !DILocation(line: 616, column: 9, scope: !5193)
!5229 = !DILocation(line: 616, column: 14, scope: !5193)
!5230 = !DILocation(line: 616, column: 19, scope: !5193)
!5231 = !DILocation(line: 615, column: 2, scope: !5193)
!5232 = !DILocation(line: 619, column: 29, scope: !5193)
!5233 = !DILocation(line: 619, column: 2, scope: !5193)
!5234 = !DILocation(line: 620, column: 1, scope: !5193)
!5235 = distinct !DISubprogram(name: "db2k_activate_reference_dacs", scope: !3, file: !3, line: 622, type: !3953, scopeLine: 623, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!5236 = !DILocalVariable(name: "dev", arg: 1, scope: !5235, file: !3, line: 622, type: !175)
!5237 = !DILocation(line: 622, column: 64, scope: !5235)
!5238 = !DILocalVariable(name: "val", scope: !5235, file: !3, line: 624, type: !7)
!5239 = !DILocation(line: 624, column: 15, scope: !5235)
!5240 = !DILocalVariable(name: "timeout", scope: !5235, file: !3, line: 625, type: !117)
!5241 = !DILocation(line: 625, column: 6, scope: !5235)
!5242 = !DILocation(line: 629, column: 9, scope: !5235)
!5243 = !DILocation(line: 629, column: 14, scope: !5235)
!5244 = !DILocation(line: 629, column: 19, scope: !5235)
!5245 = !DILocation(line: 628, column: 2, scope: !5235)
!5246 = !DILocation(line: 630, column: 15, scope: !5247)
!5247 = distinct !DILexicalBlock(scope: !5235, file: !3, line: 630, column: 2)
!5248 = !DILocation(line: 630, column: 7, scope: !5247)
!5249 = !DILocation(line: 630, column: 20, scope: !5250)
!5250 = distinct !DILexicalBlock(scope: !5247, file: !3, line: 630, column: 2)
!5251 = !DILocation(line: 630, column: 28, scope: !5250)
!5252 = !DILocation(line: 630, column: 2, scope: !5247)
!5253 = !DILocation(line: 631, column: 15, scope: !5254)
!5254 = distinct !DILexicalBlock(scope: !5250, file: !3, line: 630, column: 45)
!5255 = !DILocation(line: 631, column: 20, scope: !5254)
!5256 = !DILocation(line: 631, column: 25, scope: !5254)
!5257 = !DILocation(line: 631, column: 9, scope: !5254)
!5258 = !DILocation(line: 631, column: 7, scope: !5254)
!5259 = !DILocation(line: 632, column: 8, scope: !5260)
!5260 = distinct !DILexicalBlock(scope: !5254, file: !3, line: 632, column: 7)
!5261 = !DILocation(line: 632, column: 12, scope: !5260)
!5262 = !DILocation(line: 632, column: 40, scope: !5260)
!5263 = !DILocation(line: 632, column: 7, scope: !5254)
!5264 = !DILocation(line: 633, column: 4, scope: !5260)
!5265 = !DILocation(line: 634, column: 3, scope: !5266)
!5266 = distinct !DILexicalBlock(scope: !5267, file: !3, line: 634, column: 3)
!5267 = distinct !DILexicalBlock(scope: !5268, file: !3, line: 634, column: 3)
!5268 = distinct !DILexicalBlock(scope: !5269, file: !3, line: 634, column: 3)
!5269 = distinct !DILexicalBlock(scope: !5254, file: !3, line: 634, column: 3)
!5270 = !DILocation(line: 635, column: 2, scope: !5254)
!5271 = !DILocation(line: 630, column: 41, scope: !5250)
!5272 = !DILocation(line: 630, column: 2, scope: !5250)
!5273 = distinct !{!5273, !5252, !5274}
!5274 = !DILocation(line: 635, column: 2, scope: !5247)
!5275 = !DILocation(line: 639, column: 9, scope: !5235)
!5276 = !DILocation(line: 639, column: 14, scope: !5235)
!5277 = !DILocation(line: 639, column: 19, scope: !5235)
!5278 = !DILocation(line: 638, column: 2, scope: !5235)
!5279 = !DILocation(line: 640, column: 15, scope: !5280)
!5280 = distinct !DILexicalBlock(scope: !5235, file: !3, line: 640, column: 2)
!5281 = !DILocation(line: 640, column: 7, scope: !5280)
!5282 = !DILocation(line: 640, column: 20, scope: !5283)
!5283 = distinct !DILexicalBlock(scope: !5280, file: !3, line: 640, column: 2)
!5284 = !DILocation(line: 640, column: 28, scope: !5283)
!5285 = !DILocation(line: 640, column: 2, scope: !5280)
!5286 = !DILocation(line: 641, column: 15, scope: !5287)
!5287 = distinct !DILexicalBlock(scope: !5283, file: !3, line: 640, column: 45)
!5288 = !DILocation(line: 641, column: 20, scope: !5287)
!5289 = !DILocation(line: 641, column: 25, scope: !5287)
!5290 = !DILocation(line: 641, column: 9, scope: !5287)
!5291 = !DILocation(line: 641, column: 7, scope: !5287)
!5292 = !DILocation(line: 642, column: 8, scope: !5293)
!5293 = distinct !DILexicalBlock(scope: !5287, file: !3, line: 642, column: 7)
!5294 = !DILocation(line: 642, column: 12, scope: !5293)
!5295 = !DILocation(line: 642, column: 40, scope: !5293)
!5296 = !DILocation(line: 642, column: 7, scope: !5287)
!5297 = !DILocation(line: 643, column: 4, scope: !5293)
!5298 = !DILocation(line: 644, column: 3, scope: !5299)
!5299 = distinct !DILexicalBlock(scope: !5300, file: !3, line: 644, column: 3)
!5300 = distinct !DILexicalBlock(scope: !5301, file: !3, line: 644, column: 3)
!5301 = distinct !DILexicalBlock(scope: !5302, file: !3, line: 644, column: 3)
!5302 = distinct !DILexicalBlock(scope: !5287, file: !3, line: 644, column: 3)
!5303 = !DILocation(line: 645, column: 2, scope: !5287)
!5304 = !DILocation(line: 640, column: 41, scope: !5283)
!5305 = !DILocation(line: 640, column: 2, scope: !5283)
!5306 = distinct !{!5306, !5285, !5307}
!5307 = !DILocation(line: 645, column: 2, scope: !5280)
!5308 = !DILocation(line: 646, column: 1, scope: !5235)
!5309 = distinct !DISubprogram(name: "db2k_initialize_ctrs", scope: !3, file: !3, line: 648, type: !3953, scopeLine: 649, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!5310 = !DILocalVariable(name: "dev", arg: 1, scope: !5309, file: !3, line: 648, type: !175)
!5311 = !DILocation(line: 648, column: 56, scope: !5309)
!5312 = !DILocation(line: 650, column: 1, scope: !5309)
!5313 = distinct !DISubprogram(name: "db2k_initialize_tmrs", scope: !3, file: !3, line: 652, type: !3953, scopeLine: 653, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!5314 = !DILocalVariable(name: "dev", arg: 1, scope: !5313, file: !3, line: 652, type: !175)
!5315 = !DILocation(line: 652, column: 56, scope: !5313)
!5316 = !DILocation(line: 654, column: 1, scope: !5313)
!5317 = distinct !DISubprogram(name: "db2k_adc_stop_dma_transfer", scope: !3, file: !3, line: 594, type: !3953, scopeLine: 595, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!5318 = !DILocalVariable(name: "dev", arg: 1, scope: !5317, file: !3, line: 594, type: !175)
!5319 = !DILocation(line: 594, column: 62, scope: !5317)
!5320 = !DILocation(line: 596, column: 1, scope: !5317)
!5321 = distinct !DISubprogram(name: "db2k_setup_sampling", scope: !3, file: !3, line: 267, type: !5322, scopeLine: 268, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!5322 = !DISubroutineType(types: !5323)
!5323 = !{null, !175, !117, !117}
!5324 = !DILocalVariable(name: "dev", arg: 1, scope: !5321, file: !3, line: 267, type: !175)
!5325 = !DILocation(line: 267, column: 55, scope: !5321)
!5326 = !DILocalVariable(name: "chan", arg: 2, scope: !5321, file: !3, line: 267, type: !117)
!5327 = !DILocation(line: 267, column: 64, scope: !5321)
!5328 = !DILocalVariable(name: "gain", arg: 3, scope: !5321, file: !3, line: 267, type: !117)
!5329 = !DILocation(line: 267, column: 74, scope: !5321)
!5330 = !DILocalVariable(name: "word0", scope: !5321, file: !3, line: 269, type: !835)
!5331 = !DILocation(line: 269, column: 6, scope: !5321)
!5332 = !DILocalVariable(name: "word1", scope: !5321, file: !3, line: 269, type: !835)
!5333 = !DILocation(line: 269, column: 13, scope: !5321)
!5334 = !DILocalVariable(name: "word2", scope: !5321, file: !3, line: 269, type: !835)
!5335 = !DILocation(line: 269, column: 20, scope: !5321)
!5336 = !DILocalVariable(name: "word3", scope: !5321, file: !3, line: 269, type: !835)
!5337 = !DILocation(line: 269, column: 27, scope: !5321)
!5338 = !DILocation(line: 272, column: 8, scope: !5321)
!5339 = !DILocation(line: 273, column: 8, scope: !5321)
!5340 = !DILocation(line: 274, column: 11, scope: !5321)
!5341 = !DILocation(line: 274, column: 16, scope: !5321)
!5342 = !DILocation(line: 274, column: 22, scope: !5321)
!5343 = !DILocation(line: 274, column: 10, scope: !5321)
!5344 = !DILocation(line: 274, column: 8, scope: !5321)
!5345 = !DILocation(line: 275, column: 10, scope: !5321)
!5346 = !DILocation(line: 275, column: 15, scope: !5321)
!5347 = !DILocation(line: 275, column: 2, scope: !5321)
!5348 = !DILocation(line: 277, column: 9, scope: !5349)
!5349 = distinct !DILexicalBlock(scope: !5321, file: !3, line: 275, column: 20)
!5350 = !DILocation(line: 278, column: 3, scope: !5349)
!5351 = !DILocation(line: 280, column: 9, scope: !5349)
!5352 = !DILocation(line: 281, column: 3, scope: !5349)
!5353 = !DILocation(line: 283, column: 9, scope: !5349)
!5354 = !DILocation(line: 284, column: 3, scope: !5349)
!5355 = !DILocation(line: 286, column: 9, scope: !5349)
!5356 = !DILocation(line: 287, column: 3, scope: !5349)
!5357 = !DILocation(line: 289, column: 9, scope: !5349)
!5358 = !DILocation(line: 290, column: 3, scope: !5349)
!5359 = !DILocation(line: 292, column: 9, scope: !5349)
!5360 = !DILocation(line: 293, column: 3, scope: !5349)
!5361 = !DILocation(line: 295, column: 9, scope: !5349)
!5362 = !DILocation(line: 296, column: 3, scope: !5349)
!5363 = !DILocation(line: 299, column: 8, scope: !5321)
!5364 = !DILocation(line: 300, column: 8, scope: !5321)
!5365 = !DILocation(line: 301, column: 33, scope: !5321)
!5366 = !DILocation(line: 301, column: 38, scope: !5321)
!5367 = !DILocation(line: 301, column: 2, scope: !5321)
!5368 = !DILocation(line: 302, column: 33, scope: !5321)
!5369 = !DILocation(line: 302, column: 38, scope: !5321)
!5370 = !DILocation(line: 302, column: 2, scope: !5321)
!5371 = !DILocation(line: 303, column: 33, scope: !5321)
!5372 = !DILocation(line: 303, column: 38, scope: !5321)
!5373 = !DILocation(line: 303, column: 2, scope: !5321)
!5374 = !DILocation(line: 304, column: 33, scope: !5321)
!5375 = !DILocation(line: 304, column: 38, scope: !5321)
!5376 = !DILocation(line: 304, column: 2, scope: !5321)
!5377 = !DILocation(line: 305, column: 1, scope: !5321)
!5378 = distinct !DISubprogram(name: "db2k_ai_status", scope: !3, file: !3, line: 307, type: !5379, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!5379 = !DISubroutineType(types: !5380)
!5380 = !{!117, !175, !3807, !3906, !299}
!5381 = !DILocalVariable(name: "dev", arg: 1, scope: !5378, file: !3, line: 307, type: !175)
!5382 = !DILocation(line: 307, column: 49, scope: !5378)
!5383 = !DILocalVariable(name: "s", arg: 2, scope: !5378, file: !3, line: 307, type: !3807)
!5384 = !DILocation(line: 307, column: 79, scope: !5378)
!5385 = !DILocalVariable(name: "insn", arg: 3, scope: !5378, file: !3, line: 308, type: !3906)
!5386 = !DILocation(line: 308, column: 26, scope: !5378)
!5387 = !DILocalVariable(name: "context", arg: 4, scope: !5378, file: !3, line: 308, type: !299)
!5388 = !DILocation(line: 308, column: 46, scope: !5378)
!5389 = !DILocalVariable(name: "status", scope: !5378, file: !3, line: 310, type: !7)
!5390 = !DILocation(line: 310, column: 15, scope: !5378)
!5391 = !DILocation(line: 312, column: 17, scope: !5378)
!5392 = !DILocation(line: 312, column: 22, scope: !5378)
!5393 = !DILocation(line: 312, column: 27, scope: !5378)
!5394 = !DILocation(line: 312, column: 11, scope: !5378)
!5395 = !DILocation(line: 312, column: 9, scope: !5378)
!5396 = !DILocation(line: 313, column: 6, scope: !5397)
!5397 = distinct !DILexicalBlock(scope: !5378, file: !3, line: 313, column: 6)
!5398 = !DILocation(line: 313, column: 15, scope: !5397)
!5399 = !DILocation(line: 313, column: 13, scope: !5397)
!5400 = !DILocation(line: 313, column: 6, scope: !5378)
!5401 = !DILocation(line: 314, column: 3, scope: !5397)
!5402 = !DILocation(line: 315, column: 2, scope: !5378)
!5403 = !DILocation(line: 316, column: 1, scope: !5378)
!5404 = distinct !DISubprogram(name: "db2k_write_acq_scan_list_entry", scope: !3, file: !3, line: 260, type: !5405, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!5405 = !DISubroutineType(types: !5406)
!5406 = !{null, !175, !835}
!5407 = !DILocalVariable(name: "dev", arg: 1, scope: !5404, file: !3, line: 260, type: !175)
!5408 = !DILocation(line: 260, column: 66, scope: !5404)
!5409 = !DILocalVariable(name: "entry", arg: 2, scope: !5404, file: !3, line: 260, type: !835)
!5410 = !DILocation(line: 260, column: 75, scope: !5404)
!5411 = !DILocation(line: 262, column: 9, scope: !5404)
!5412 = !DILocation(line: 262, column: 15, scope: !5404)
!5413 = !DILocation(line: 262, column: 25, scope: !5404)
!5414 = !DILocation(line: 262, column: 30, scope: !5404)
!5415 = !DILocation(line: 262, column: 35, scope: !5404)
!5416 = !DILocation(line: 262, column: 2, scope: !5404)
!5417 = !DILocation(line: 263, column: 10, scope: !5404)
!5418 = !DILocation(line: 263, column: 16, scope: !5404)
!5419 = !DILocation(line: 263, column: 22, scope: !5404)
!5420 = !DILocation(line: 263, column: 9, scope: !5404)
!5421 = !DILocation(line: 264, column: 9, scope: !5404)
!5422 = !DILocation(line: 264, column: 14, scope: !5404)
!5423 = !DILocation(line: 264, column: 19, scope: !5404)
!5424 = !DILocation(line: 263, column: 2, scope: !5404)
!5425 = !DILocation(line: 265, column: 1, scope: !5404)
!5426 = distinct !DISubprogram(name: "db2k_ao_eoc", scope: !3, file: !3, line: 383, type: !5379, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!5427 = !DILocalVariable(name: "dev", arg: 1, scope: !5426, file: !3, line: 383, type: !175)
!5428 = !DILocation(line: 383, column: 46, scope: !5426)
!5429 = !DILocalVariable(name: "s", arg: 2, scope: !5426, file: !3, line: 383, type: !3807)
!5430 = !DILocation(line: 383, column: 76, scope: !5426)
!5431 = !DILocalVariable(name: "insn", arg: 3, scope: !5426, file: !3, line: 384, type: !3906)
!5432 = !DILocation(line: 384, column: 30, scope: !5426)
!5433 = !DILocalVariable(name: "context", arg: 4, scope: !5426, file: !3, line: 384, type: !299)
!5434 = !DILocation(line: 384, column: 50, scope: !5426)
!5435 = !DILocalVariable(name: "chan", scope: !5426, file: !3, line: 386, type: !7)
!5436 = !DILocation(line: 386, column: 15, scope: !5426)
!5437 = !DILocation(line: 386, column: 22, scope: !5426)
!5438 = !DILocalVariable(name: "status", scope: !5426, file: !3, line: 387, type: !7)
!5439 = !DILocation(line: 387, column: 15, scope: !5426)
!5440 = !DILocation(line: 389, column: 17, scope: !5426)
!5441 = !DILocation(line: 389, column: 22, scope: !5426)
!5442 = !DILocation(line: 389, column: 27, scope: !5426)
!5443 = !DILocation(line: 389, column: 11, scope: !5426)
!5444 = !DILocation(line: 389, column: 9, scope: !5426)
!5445 = !DILocation(line: 390, column: 7, scope: !5446)
!5446 = distinct !DILexicalBlock(scope: !5426, file: !3, line: 390, column: 6)
!5447 = !DILocation(line: 390, column: 16, scope: !5446)
!5448 = !DILocation(line: 390, column: 14, scope: !5446)
!5449 = !DILocation(line: 390, column: 48, scope: !5446)
!5450 = !DILocation(line: 390, column: 6, scope: !5426)
!5451 = !DILocation(line: 391, column: 3, scope: !5446)
!5452 = !DILocation(line: 392, column: 2, scope: !5426)
!5453 = !DILocation(line: 393, column: 1, scope: !5426)
!5454 = distinct !DISubprogram(name: "db2k_pci_probe", scope: !3, file: !3, line: 762, type: !4011, scopeLine: 763, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!5455 = !DILocalVariable(name: "dev", arg: 1, scope: !5454, file: !3, line: 762, type: !4013)
!5456 = !DILocation(line: 762, column: 43, scope: !5454)
!5457 = !DILocalVariable(name: "id", arg: 2, scope: !5454, file: !3, line: 762, type: !3998)
!5458 = !DILocation(line: 762, column: 76, scope: !5454)
!5459 = !DILocation(line: 764, column: 32, scope: !5454)
!5460 = !DILocation(line: 764, column: 51, scope: !5454)
!5461 = !DILocation(line: 764, column: 55, scope: !5454)
!5462 = !DILocation(line: 764, column: 9, scope: !5454)
!5463 = !DILocation(line: 764, column: 2, scope: !5454)
