; ModuleID = '../bcout/drivers/staging/comedi/drivers/rtd520.llvm.bc'
source_filename = "drivers/staging/comedi/drivers/rtd520.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_rtd520_driver_init6:\09\09\09"
module asm ".long\09rtd520_driver_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.comedi_driver = type { %struct.comedi_driver*, i8*, %struct.module*, i32 (%struct.comedi_device*, %struct.comedi_devconfig*)*, void (%struct.comedi_device*)*, i32 (%struct.comedi_device*, i64)*, i32, i8**, i32 }
%struct.module = type opaque
%struct.comedi_device = type { i32, %struct.comedi_driver*, %struct.comedi_8254*, i8*, %struct.device*, i32, i32, %struct.device*, i8*, i8*, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, %struct.comedi_subdevice*, i8*, i64, i64, i32, %struct.comedi_subdevice*, %struct.comedi_subdevice*, %struct.fasync_struct*, i32 (%struct.comedi_device*)*, void (%struct.comedi_device*)*, i32 (%struct.comedi_device*, %struct.comedi_insn*, i32*)*, i32 (%struct.comedi_device*, i32, i32*)* }
%struct.comedi_8254 = type { i64, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x i8], i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* }
%struct.comedi_insn = type { i32, i32, i32*, i32, i32, [3 x i32] }
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
%struct.comedi_subdevice = type { %struct.comedi_device*, i32, i32, i32, i32, i32, i8*, %struct.comedi_async*, i8*, i8*, i32, %struct.spinlock, i32, i32, i32*, %struct.comedi_lrange*, %struct.comedi_lrange**, i32*, {}*, {}*, {}*, {}*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)*, void (%struct.comedi_device*, %struct.comedi_subdevice*, i8*, i32, i32)*, i32, i32, %struct.device*, i32, i32* }
%struct.comedi_async = type { i8*, i32, %struct.comedi_buf_map*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.comedi_cmd, %struct.wait_queue_head, i32, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* }
%struct.comedi_buf_map = type { %struct.device*, %struct.comedi_buf_page*, i32, i32, %struct.kref }
%struct.comedi_buf_page = type { i8*, i64 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i16*, i32 }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
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
%struct.rtd_boardinfo = type { i8*, i32, i32, %struct.comedi_lrange* }
%struct.rtd_private = type { i8*, i8*, i64, i32, i32, i32, [3 x i8], [3 x i8] }

@__UNIQUE_ID___addressable_rtd520_driver_init234 = internal global i8* bitcast (i32 ()* @rtd520_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@rtd520_driver = internal global %struct.comedi_driver { %struct.comedi_driver* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), %struct.module* null, i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* null, void (%struct.comedi_device*)* @rtd_detach, i32 (%struct.comedi_device*, i64)* @rtd_auto_attach, i32 0, i8** null, i32 0 }, align 8, !dbg !173
@rtd520_pci_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), %struct.pci_device_id* getelementptr inbounds ([3 x %struct.pci_device_id], [3 x %struct.pci_device_id]* @rtd520_pci_table, i32 0, i32 0), i32 (%struct.pci_dev*, %struct.pci_device_id*)* @rtd520_pci_probe, void (%struct.pci_dev*)* @comedi_pci_auto_unconfig, i32 (%struct.pci_dev*, i32)* null, i32 (%struct.pci_dev*)* null, void (%struct.pci_dev*)* null, i32 (%struct.pci_dev*, i32)* null, %struct.pci_error_handlers* null, %struct.attribute_group** null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, align 8, !dbg !4028
@__exitcall_rtd520_driver_exit = internal global void ()* @rtd520_driver_exit, section ".exitcall.exit", align 8, !dbg !144
@__UNIQUE_ID_author235 = internal constant [44 x i8] c"rtd520.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1, !dbg !151
@__UNIQUE_ID_description236 = internal constant [43 x i8] c"rtd520.description=Comedi low-level driver\00", section ".modinfo", align 1, !dbg !158
@__UNIQUE_ID_file237 = internal constant [50 x i8] c"rtd520.file=drivers/staging/comedi/drivers/rtd520\00", section ".modinfo", align 1, !dbg !163
@__UNIQUE_ID_license238 = internal constant [19 x i8] c"rtd520.license=GPL\00", section ".modinfo", align 1, !dbg !168
@.str = private unnamed_addr constant [7 x i8] c"rtd520\00", align 1
@rtd520_boards = internal constant [2 x %struct.rtd_boardinfo] [%struct.rtd_boardinfo { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 6, i32 12, %struct.comedi_lrange* bitcast ({ i32, [18 x %struct.comedi_krange] }* @rtd_ai_7520_range to %struct.comedi_lrange*) }, %struct.rtd_boardinfo { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 8, i32 16, %struct.comedi_lrange* bitcast ({ i32, [24 x %struct.comedi_krange] }* @rtd_ai_4520_range to %struct.comedi_lrange*) }], align 16, !dbg !4009
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"DM7520\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"PCI4520\00", align 1
@rtd_ai_7520_range = internal constant { i32, [18 x %struct.comedi_krange] } { i32 18, [18 x %struct.comedi_krange] [%struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }, %struct.comedi_krange { i32 -625000, i32 625000, i32 0 }, %struct.comedi_krange { i32 -312500, i32 312500, i32 0 }, %struct.comedi_krange { i32 -156250, i32 156250, i32 0 }, %struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }, %struct.comedi_krange { i32 -625000, i32 625000, i32 0 }, %struct.comedi_krange { i32 -312500, i32 312500, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 2500000, i32 0 }, %struct.comedi_krange { i32 0, i32 1250000, i32 0 }, %struct.comedi_krange { i32 0, i32 625000, i32 0 }, %struct.comedi_krange { i32 0, i32 312500, i32 0 }] }, align 4, !dbg !4019
@rtd_ai_4520_range = internal constant { i32, [24 x %struct.comedi_krange] } { i32 24, [24 x %struct.comedi_krange] [%struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }, %struct.comedi_krange { i32 -625000, i32 625000, i32 0 }, %struct.comedi_krange { i32 -312500, i32 312500, i32 0 }, %struct.comedi_krange { i32 -156250, i32 156250, i32 0 }, %struct.comedi_krange { i32 -78125, i32 78125, i32 0 }, %struct.comedi_krange { i32 -39062, i32 39062, i32 0 }, %struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }, %struct.comedi_krange { i32 -625000, i32 625000, i32 0 }, %struct.comedi_krange { i32 -312500, i32 312500, i32 0 }, %struct.comedi_krange { i32 -156250, i32 156250, i32 0 }, %struct.comedi_krange { i32 -78125, i32 78125, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 2500000, i32 0 }, %struct.comedi_krange { i32 0, i32 1250000, i32 0 }, %struct.comedi_krange { i32 0, i32 625000, i32 0 }, %struct.comedi_krange { i32 0, i32 312500, i32 0 }, %struct.comedi_krange { i32 0, i32 156250, i32 0 }, %struct.comedi_krange { i32 0, i32 78125, i32 0 }] }, align 4, !dbg !4021
@.str.5 = private unnamed_addr constant [35 x i8] c"PCI latency changed from %d to %d\0A\00", align 1
@rtd_ao_range = internal constant { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }] }, align 4, !dbg !4023
@rtd520_probe_fifo_depth.limit = internal constant i32 8192, align 4, !dbg !4025
@.str.7 = private unnamed_addr constant [28 x i8] c"failed to probe fifo size.\0A\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"unexpected fifo size of %i, expected 1024 or 8192.\0A\00", align 1
@rtd520_pci_table = internal constant [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 5173, i32 29984, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 5173, i32 17696, i32 -1, i32 -1, i32 0, i32 0, i64 1 }, %struct.pci_device_id zeroinitializer], align 16, !dbg !4309
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_rtd520_driver_init234 to i8*), i8* bitcast (void ()* @rtd520_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_rtd520_driver_exit to i8*), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__UNIQUE_ID_author235, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__UNIQUE_ID_description236, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__UNIQUE_ID_file237, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__UNIQUE_ID_license238, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @rtd520_driver_init() #0 section ".init.text" !dbg !4317 {
entry:
  %call = call i32 @comedi_pci_driver_register(%struct.comedi_driver* @rtd520_driver, %struct.pci_driver* @rtd520_pci_driver) #5, !dbg !4320
  ret i32 %call, !dbg !4320
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @rtd520_driver_exit() #0 section ".exit.text" !dbg !4321 {
entry:
  call void @comedi_pci_driver_unregister(%struct.comedi_driver* @rtd520_driver, %struct.pci_driver* @rtd520_pci_driver) #5, !dbg !4322
  ret void, !dbg !4322
}

; Function Attrs: noredzone
declare dso_local void @comedi_pci_driver_unregister(%struct.comedi_driver*, %struct.pci_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_pci_driver_register(%struct.comedi_driver*, %struct.pci_driver*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @rtd_detach(%struct.comedi_device* %dev) #2 !dbg !4323 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %devpriv = alloca %struct.rtd_private*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4324, metadata !DIExpression()), !dbg !4325
  call void @llvm.dbg.declare(metadata %struct.rtd_private** %devpriv, metadata !4326, metadata !DIExpression()), !dbg !4339
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4340
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !4341
  %1 = load i8*, i8** %private, align 8, !dbg !4341
  %2 = bitcast i8* %1 to %struct.rtd_private*, !dbg !4340
  store %struct.rtd_private* %2, %struct.rtd_private** %devpriv, align 8, !dbg !4339
  %3 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !4342
  %tobool = icmp ne %struct.rtd_private* %3, null, !dbg !4342
  br i1 %tobool, label %if.then, label %if.end22, !dbg !4344

if.then:                                          ; preds = %entry
  %4 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4345
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 17, !dbg !4348
  %5 = load i8*, i8** %mmio, align 8, !dbg !4348
  %tobool1 = icmp ne i8* %5, null, !dbg !4345
  br i1 %tobool1, label %land.lhs.true, label %if.end, !dbg !4349

land.lhs.true:                                    ; preds = %if.then
  %6 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !4350
  %lcfg = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %6, i32 0, i32 1, !dbg !4351
  %7 = load i8*, i8** %lcfg, align 8, !dbg !4351
  %tobool2 = icmp ne i8* %7, null, !dbg !4350
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !4352

if.then3:                                         ; preds = %land.lhs.true
  %8 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4353
  call void @rtd_reset(%struct.comedi_device* %8) #5, !dbg !4354
  br label %if.end, !dbg !4354

if.end:                                           ; preds = %if.then3, %land.lhs.true, %if.then
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4355
  %irq = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 20, !dbg !4357
  %10 = load i32, i32* %irq, align 8, !dbg !4357
  %tobool4 = icmp ne i32 %10, 0, !dbg !4355
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !4358

if.then5:                                         ; preds = %if.end
  %11 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4359
  %irq6 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 20, !dbg !4360
  %12 = load i32, i32* %irq6, align 8, !dbg !4360
  %13 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4361
  %14 = bitcast %struct.comedi_device* %13 to i8*, !dbg !4361
  %call = call i8* @free_irq(i32 %12, i8* %14) #5, !dbg !4362
  br label %if.end7, !dbg !4362

if.end7:                                          ; preds = %if.then5, %if.end
  %15 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4363
  %mmio8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 17, !dbg !4365
  %16 = load i8*, i8** %mmio8, align 8, !dbg !4365
  %tobool9 = icmp ne i8* %16, null, !dbg !4363
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !4366

if.then10:                                        ; preds = %if.end7
  %17 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4367
  %mmio11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 17, !dbg !4368
  %18 = load i8*, i8** %mmio11, align 8, !dbg !4368
  call void @iounmap(i8* %18) #5, !dbg !4369
  br label %if.end12, !dbg !4369

if.end12:                                         ; preds = %if.then10, %if.end7
  %19 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !4370
  %las1 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %19, i32 0, i32 0, !dbg !4372
  %20 = load i8*, i8** %las1, align 8, !dbg !4372
  %tobool13 = icmp ne i8* %20, null, !dbg !4370
  br i1 %tobool13, label %if.then14, label %if.end16, !dbg !4373

if.then14:                                        ; preds = %if.end12
  %21 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !4374
  %las115 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %21, i32 0, i32 0, !dbg !4375
  %22 = load i8*, i8** %las115, align 8, !dbg !4375
  call void @iounmap(i8* %22) #5, !dbg !4376
  br label %if.end16, !dbg !4376

if.end16:                                         ; preds = %if.then14, %if.end12
  %23 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !4377
  %lcfg17 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %23, i32 0, i32 1, !dbg !4379
  %24 = load i8*, i8** %lcfg17, align 8, !dbg !4379
  %tobool18 = icmp ne i8* %24, null, !dbg !4377
  br i1 %tobool18, label %if.then19, label %if.end21, !dbg !4380

if.then19:                                        ; preds = %if.end16
  %25 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !4381
  %lcfg20 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %25, i32 0, i32 1, !dbg !4382
  %26 = load i8*, i8** %lcfg20, align 8, !dbg !4382
  call void @iounmap(i8* %26) #5, !dbg !4383
  br label %if.end21, !dbg !4383

if.end21:                                         ; preds = %if.then19, %if.end16
  br label %if.end22, !dbg !4384

if.end22:                                         ; preds = %if.end21, %entry
  %27 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4385
  call void @comedi_pci_disable(%struct.comedi_device* %27) #5, !dbg !4386
  ret void, !dbg !4387
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtd_auto_attach(%struct.comedi_device* %dev, i64 %context) #2 !dbg !4388 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %context.addr = alloca i64, align 8
  %pcidev = alloca %struct.pci_dev*, align 8
  %board = alloca %struct.rtd_boardinfo*, align 8
  %devpriv = alloca %struct.rtd_private*, align 8
  %s = alloca %struct.comedi_subdevice*, align 8
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4389, metadata !DIExpression()), !dbg !4390
  store i64 %context, i64* %context.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %context.addr, metadata !4391, metadata !DIExpression()), !dbg !4392
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pcidev, metadata !4393, metadata !DIExpression()), !dbg !4394
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4395
  %call = call %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device* %0) #5, !dbg !4396
  store %struct.pci_dev* %call, %struct.pci_dev** %pcidev, align 8, !dbg !4394
  call void @llvm.dbg.declare(metadata %struct.rtd_boardinfo** %board, metadata !4397, metadata !DIExpression()), !dbg !4399
  store %struct.rtd_boardinfo* null, %struct.rtd_boardinfo** %board, align 8, !dbg !4399
  call void @llvm.dbg.declare(metadata %struct.rtd_private** %devpriv, metadata !4400, metadata !DIExpression()), !dbg !4401
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s, metadata !4402, metadata !DIExpression()), !dbg !4403
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4404, metadata !DIExpression()), !dbg !4405
  %1 = load i64, i64* %context.addr, align 8, !dbg !4406
  %cmp = icmp ult i64 %1, 2, !dbg !4408
  br i1 %cmp, label %if.then, label %if.end, !dbg !4409

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %context.addr, align 8, !dbg !4410
  %arrayidx = getelementptr [2 x %struct.rtd_boardinfo], [2 x %struct.rtd_boardinfo]* @rtd520_boards, i64 0, i64 %2, !dbg !4411
  store %struct.rtd_boardinfo* %arrayidx, %struct.rtd_boardinfo** %board, align 8, !dbg !4412
  br label %if.end, !dbg !4413

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.rtd_boardinfo*, %struct.rtd_boardinfo** %board, align 8, !dbg !4414
  %tobool = icmp ne %struct.rtd_boardinfo* %3, null, !dbg !4414
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !4416

if.then1:                                         ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !4417
  br label %return, !dbg !4417

if.end2:                                          ; preds = %if.end
  %4 = load %struct.rtd_boardinfo*, %struct.rtd_boardinfo** %board, align 8, !dbg !4418
  %5 = bitcast %struct.rtd_boardinfo* %4 to i8*, !dbg !4418
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4419
  %board_ptr = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 9, !dbg !4420
  store i8* %5, i8** %board_ptr, align 8, !dbg !4421
  %7 = load %struct.rtd_boardinfo*, %struct.rtd_boardinfo** %board, align 8, !dbg !4422
  %name = getelementptr inbounds %struct.rtd_boardinfo, %struct.rtd_boardinfo* %7, i32 0, i32 0, !dbg !4423
  %8 = load i8*, i8** %name, align 8, !dbg !4423
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4424
  %board_name = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 8, !dbg !4425
  store i8* %8, i8** %board_name, align 8, !dbg !4426
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4427
  %call3 = call i8* @comedi_alloc_devpriv(%struct.comedi_device* %10, i64 48) #5, !dbg !4428
  %11 = bitcast i8* %call3 to %struct.rtd_private*, !dbg !4428
  store %struct.rtd_private* %11, %struct.rtd_private** %devpriv, align 8, !dbg !4429
  %12 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !4430
  %tobool4 = icmp ne %struct.rtd_private* %12, null, !dbg !4430
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !4432

if.then5:                                         ; preds = %if.end2
  store i32 -12, i32* %retval, align 4, !dbg !4433
  br label %return, !dbg !4433

if.end6:                                          ; preds = %if.end2
  %13 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4434
  %call7 = call i32 @comedi_pci_enable(%struct.comedi_device* %13) #5, !dbg !4435
  store i32 %call7, i32* %ret, align 4, !dbg !4436
  %14 = load i32, i32* %ret, align 4, !dbg !4437
  %tobool8 = icmp ne i32 %14, 0, !dbg !4437
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !4439

if.then9:                                         ; preds = %if.end6
  %15 = load i32, i32* %ret, align 4, !dbg !4440
  store i32 %15, i32* %retval, align 4, !dbg !4441
  br label %return, !dbg !4441

if.end10:                                         ; preds = %if.end6
  %16 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4442
  %call11 = call i8* @pci_ioremap_bar(%struct.pci_dev* %16, i32 2) #5, !dbg !4443
  %17 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4444
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 17, !dbg !4445
  store i8* %call11, i8** %mmio, align 8, !dbg !4446
  %18 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4447
  %call12 = call i8* @pci_ioremap_bar(%struct.pci_dev* %18, i32 3) #5, !dbg !4448
  %19 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !4449
  %las1 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %19, i32 0, i32 0, !dbg !4450
  store i8* %call12, i8** %las1, align 8, !dbg !4451
  %20 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4452
  %call13 = call i8* @pci_ioremap_bar(%struct.pci_dev* %20, i32 0) #5, !dbg !4453
  %21 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !4454
  %lcfg = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %21, i32 0, i32 1, !dbg !4455
  store i8* %call13, i8** %lcfg, align 8, !dbg !4456
  %22 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4457
  %mmio14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %22, i32 0, i32 17, !dbg !4459
  %23 = load i8*, i8** %mmio14, align 8, !dbg !4459
  %tobool15 = icmp ne i8* %23, null, !dbg !4457
  br i1 %tobool15, label %lor.lhs.false, label %if.then21, !dbg !4460

lor.lhs.false:                                    ; preds = %if.end10
  %24 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !4461
  %las116 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %24, i32 0, i32 0, !dbg !4462
  %25 = load i8*, i8** %las116, align 8, !dbg !4462
  %tobool17 = icmp ne i8* %25, null, !dbg !4461
  br i1 %tobool17, label %lor.lhs.false18, label %if.then21, !dbg !4463

lor.lhs.false18:                                  ; preds = %lor.lhs.false
  %26 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !4464
  %lcfg19 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %26, i32 0, i32 1, !dbg !4465
  %27 = load i8*, i8** %lcfg19, align 8, !dbg !4465
  %tobool20 = icmp ne i8* %27, null, !dbg !4464
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !4466

if.then21:                                        ; preds = %lor.lhs.false18, %lor.lhs.false, %if.end10
  store i32 -12, i32* %retval, align 4, !dbg !4467
  br label %return, !dbg !4467

if.end22:                                         ; preds = %lor.lhs.false18
  %28 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4468
  %29 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4469
  call void @rtd_pci_latency_quirk(%struct.comedi_device* %28, %struct.pci_dev* %29) #5, !dbg !4470
  %30 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4471
  %irq = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 43, !dbg !4473
  %31 = load i32, i32* %irq, align 4, !dbg !4473
  %tobool23 = icmp ne i32 %31, 0, !dbg !4471
  br i1 %tobool23, label %if.then24, label %if.end33, !dbg !4474

if.then24:                                        ; preds = %if.end22
  %32 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4475
  %irq25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 43, !dbg !4477
  %33 = load i32, i32* %irq25, align 4, !dbg !4477
  %34 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4478
  %board_name26 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %34, i32 0, i32 8, !dbg !4479
  %35 = load i8*, i8** %board_name26, align 8, !dbg !4479
  %36 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4480
  %37 = bitcast %struct.comedi_device* %36 to i8*, !dbg !4480
  %call27 = call i32 @request_irq(i32 %33, i32 (i32, i8*)* @rtd_interrupt, i64 128, i8* %35, i8* %37) #5, !dbg !4481
  store i32 %call27, i32* %ret, align 4, !dbg !4482
  %38 = load i32, i32* %ret, align 4, !dbg !4483
  %cmp28 = icmp eq i32 %38, 0, !dbg !4485
  br i1 %cmp28, label %if.then29, label %if.end32, !dbg !4486

if.then29:                                        ; preds = %if.then24
  %39 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4487
  %irq30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 43, !dbg !4488
  %40 = load i32, i32* %irq30, align 4, !dbg !4488
  %41 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4489
  %irq31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %41, i32 0, i32 20, !dbg !4490
  store i32 %40, i32* %irq31, align 8, !dbg !4491
  br label %if.end32, !dbg !4489

if.end32:                                         ; preds = %if.then29, %if.then24
  br label %if.end33, !dbg !4492

if.end33:                                         ; preds = %if.end32, %if.end22
  %42 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4493
  %call34 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %42, i32 4) #5, !dbg !4494
  store i32 %call34, i32* %ret, align 4, !dbg !4495
  %43 = load i32, i32* %ret, align 4, !dbg !4496
  %tobool35 = icmp ne i32 %43, 0, !dbg !4496
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !4498

if.then36:                                        ; preds = %if.end33
  %44 = load i32, i32* %ret, align 4, !dbg !4499
  store i32 %44, i32* %retval, align 4, !dbg !4500
  br label %return, !dbg !4500

if.end37:                                         ; preds = %if.end33
  %45 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4501
  %subdevices = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %45, i32 0, i32 16, !dbg !4502
  %46 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices, align 8, !dbg !4502
  %arrayidx38 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %46, i64 0, !dbg !4501
  store %struct.comedi_subdevice* %arrayidx38, %struct.comedi_subdevice** %s, align 8, !dbg !4503
  %47 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4504
  %type = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %47, i32 0, i32 2, !dbg !4505
  store i32 1, i32* %type, align 4, !dbg !4506
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4507
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %48, i32 0, i32 4, !dbg !4508
  store i32 7405568, i32* %subdev_flags, align 4, !dbg !4509
  %49 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4510
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %49, i32 0, i32 3, !dbg !4511
  store i32 16, i32* %n_chan, align 8, !dbg !4512
  %50 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4513
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %50, i32 0, i32 13, !dbg !4514
  store i32 4095, i32* %maxdata, align 8, !dbg !4515
  %51 = load %struct.rtd_boardinfo*, %struct.rtd_boardinfo** %board, align 8, !dbg !4516
  %ai_range = getelementptr inbounds %struct.rtd_boardinfo, %struct.rtd_boardinfo* %51, i32 0, i32 3, !dbg !4517
  %52 = load %struct.comedi_lrange*, %struct.comedi_lrange** %ai_range, align 8, !dbg !4517
  %53 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4518
  %range_table = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %53, i32 0, i32 15, !dbg !4519
  store %struct.comedi_lrange* %52, %struct.comedi_lrange** %range_table, align 8, !dbg !4520
  %54 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4521
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %54, i32 0, i32 5, !dbg !4522
  store i32 128, i32* %len_chanlist, align 8, !dbg !4523
  %55 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4524
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %55, i32 0, i32 18, !dbg !4525
  %insn_read39 = bitcast {}** %insn_read to i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)**, !dbg !4525
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @rtd_ai_rinsn, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_read39, align 8, !dbg !4526
  %56 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4527
  %irq40 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %56, i32 0, i32 20, !dbg !4529
  %57 = load i32, i32* %irq40, align 8, !dbg !4529
  %tobool41 = icmp ne i32 %57, 0, !dbg !4527
  br i1 %tobool41, label %if.then42, label %if.end44, !dbg !4530

if.then42:                                        ; preds = %if.end37
  %58 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4531
  %59 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4533
  %read_subdev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %59, i32 0, i32 21, !dbg !4534
  store %struct.comedi_subdevice* %58, %struct.comedi_subdevice** %read_subdev, align 8, !dbg !4535
  %60 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4536
  %subdev_flags43 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %60, i32 0, i32 4, !dbg !4537
  %61 = load i32, i32* %subdev_flags43, align 4, !dbg !4538
  %or = or i32 %61, 32768, !dbg !4538
  store i32 %or, i32* %subdev_flags43, align 4, !dbg !4538
  %62 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4539
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %62, i32 0, i32 22, !dbg !4540
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @rtd_ai_cmd, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)** %do_cmd, align 8, !dbg !4541
  %63 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4542
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %63, i32 0, i32 23, !dbg !4543
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @rtd_ai_cmdtest, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)** %do_cmdtest, align 8, !dbg !4544
  %64 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4545
  %cancel = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %64, i32 0, i32 25, !dbg !4546
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @rtd_ai_cancel, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)** %cancel, align 8, !dbg !4547
  br label %if.end44, !dbg !4548

if.end44:                                         ; preds = %if.then42, %if.end37
  %65 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4549
  %subdevices45 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %65, i32 0, i32 16, !dbg !4550
  %66 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices45, align 8, !dbg !4550
  %arrayidx46 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %66, i64 1, !dbg !4549
  store %struct.comedi_subdevice* %arrayidx46, %struct.comedi_subdevice** %s, align 8, !dbg !4551
  %67 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4552
  %type47 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %67, i32 0, i32 2, !dbg !4553
  store i32 2, i32* %type47, align 4, !dbg !4554
  %68 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4555
  %subdev_flags48 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %68, i32 0, i32 4, !dbg !4556
  store i32 131072, i32* %subdev_flags48, align 4, !dbg !4557
  %69 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4558
  %n_chan49 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %69, i32 0, i32 3, !dbg !4559
  store i32 2, i32* %n_chan49, align 8, !dbg !4560
  %70 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4561
  %maxdata50 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %70, i32 0, i32 13, !dbg !4562
  store i32 4095, i32* %maxdata50, align 8, !dbg !4563
  %71 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4564
  %range_table51 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %71, i32 0, i32 15, !dbg !4565
  store %struct.comedi_lrange* bitcast ({ i32, [4 x %struct.comedi_krange] }* @rtd_ao_range to %struct.comedi_lrange*), %struct.comedi_lrange** %range_table51, align 8, !dbg !4566
  %72 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4567
  %insn_write = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %72, i32 0, i32 19, !dbg !4568
  %insn_write52 = bitcast {}** %insn_write to i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)**, !dbg !4568
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @rtd_ao_insn_write, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_write52, align 8, !dbg !4569
  %73 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4570
  %call53 = call i32 @comedi_alloc_subdev_readback(%struct.comedi_subdevice* %73) #5, !dbg !4571
  store i32 %call53, i32* %ret, align 4, !dbg !4572
  %74 = load i32, i32* %ret, align 4, !dbg !4573
  %tobool54 = icmp ne i32 %74, 0, !dbg !4573
  br i1 %tobool54, label %if.then55, label %if.end56, !dbg !4575

if.then55:                                        ; preds = %if.end44
  %75 = load i32, i32* %ret, align 4, !dbg !4576
  store i32 %75, i32* %retval, align 4, !dbg !4577
  br label %return, !dbg !4577

if.end56:                                         ; preds = %if.end44
  %76 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4578
  %subdevices57 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %76, i32 0, i32 16, !dbg !4579
  %77 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices57, align 8, !dbg !4579
  %arrayidx58 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %77, i64 2, !dbg !4578
  store %struct.comedi_subdevice* %arrayidx58, %struct.comedi_subdevice** %s, align 8, !dbg !4580
  %78 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4581
  %type59 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %78, i32 0, i32 2, !dbg !4582
  store i32 5, i32* %type59, align 4, !dbg !4583
  %79 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4584
  %subdev_flags60 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %79, i32 0, i32 4, !dbg !4585
  store i32 196608, i32* %subdev_flags60, align 4, !dbg !4586
  %80 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4587
  %n_chan61 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %80, i32 0, i32 3, !dbg !4588
  store i32 8, i32* %n_chan61, align 8, !dbg !4589
  %81 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4590
  %maxdata62 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %81, i32 0, i32 13, !dbg !4591
  store i32 1, i32* %maxdata62, align 8, !dbg !4592
  %82 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4593
  %range_table63 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %82, i32 0, i32 15, !dbg !4594
  store %struct.comedi_lrange* @range_unipolar5, %struct.comedi_lrange** %range_table63, align 8, !dbg !4595
  %83 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4596
  %insn_bits = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %83, i32 0, i32 20, !dbg !4597
  %insn_bits64 = bitcast {}** %insn_bits to i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)**, !dbg !4597
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @rtd_dio_insn_bits, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_bits64, align 8, !dbg !4598
  %84 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4599
  %insn_config = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %84, i32 0, i32 21, !dbg !4600
  %insn_config65 = bitcast {}** %insn_config to i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)**, !dbg !4600
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @rtd_dio_insn_config, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_config65, align 8, !dbg !4601
  %85 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4602
  %subdevices66 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %85, i32 0, i32 16, !dbg !4603
  %86 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices66, align 8, !dbg !4603
  %arrayidx67 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %86, i64 3, !dbg !4602
  store %struct.comedi_subdevice* %arrayidx67, %struct.comedi_subdevice** %s, align 8, !dbg !4604
  %87 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4605
  %mmio68 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %87, i32 0, i32 17, !dbg !4606
  %88 = load i8*, i8** %mmio68, align 8, !dbg !4606
  %add.ptr = getelementptr i8, i8* %88, i64 96, !dbg !4607
  %call69 = call %struct.comedi_8254* @comedi_8254_mm_init(i8* %add.ptr, i32 125, i32 1, i32 2) #5, !dbg !4608
  %89 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4609
  %pacer = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %89, i32 0, i32 2, !dbg !4610
  store %struct.comedi_8254* %call69, %struct.comedi_8254** %pacer, align 8, !dbg !4611
  %90 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4612
  %pacer70 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %90, i32 0, i32 2, !dbg !4614
  %91 = load %struct.comedi_8254*, %struct.comedi_8254** %pacer70, align 8, !dbg !4614
  %tobool71 = icmp ne %struct.comedi_8254* %91, null, !dbg !4612
  br i1 %tobool71, label %if.end73, label %if.then72, !dbg !4615

if.then72:                                        ; preds = %if.end56
  store i32 -12, i32* %retval, align 4, !dbg !4616
  br label %return, !dbg !4616

if.end73:                                         ; preds = %if.end56
  %92 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4617
  %93 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4618
  %pacer74 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %93, i32 0, i32 2, !dbg !4619
  %94 = load %struct.comedi_8254*, %struct.comedi_8254** %pacer74, align 8, !dbg !4619
  call void @comedi_8254_subdevice_init(%struct.comedi_subdevice* %92, %struct.comedi_8254* %94) #5, !dbg !4620
  %95 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4621
  %pacer75 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %95, i32 0, i32 2, !dbg !4622
  %96 = load %struct.comedi_8254*, %struct.comedi_8254** %pacer75, align 8, !dbg !4622
  %insn_config76 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %96, i32 0, i32 14, !dbg !4623
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @rtd_counter_insn_config, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_config76, align 8, !dbg !4624
  %97 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4625
  call void @rtd_init_board(%struct.comedi_device* %97) #5, !dbg !4626
  %98 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4627
  %call77 = call i32 @rtd520_probe_fifo_depth(%struct.comedi_device* %98) #5, !dbg !4628
  store i32 %call77, i32* %ret, align 4, !dbg !4629
  %99 = load i32, i32* %ret, align 4, !dbg !4630
  %cmp78 = icmp slt i32 %99, 0, !dbg !4632
  br i1 %cmp78, label %if.then79, label %if.end80, !dbg !4633

if.then79:                                        ; preds = %if.end73
  %100 = load i32, i32* %ret, align 4, !dbg !4634
  store i32 %100, i32* %retval, align 4, !dbg !4635
  br label %return, !dbg !4635

if.end80:                                         ; preds = %if.end73
  %101 = load i32, i32* %ret, align 4, !dbg !4636
  %102 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !4637
  %fifosz = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %102, i32 0, i32 5, !dbg !4638
  store i32 %101, i32* %fifosz, align 8, !dbg !4639
  %103 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4640
  %irq81 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %103, i32 0, i32 20, !dbg !4642
  %104 = load i32, i32* %irq81, align 8, !dbg !4642
  %tobool82 = icmp ne i32 %104, 0, !dbg !4640
  br i1 %tobool82, label %if.then83, label %if.end86, !dbg !4643

if.then83:                                        ; preds = %if.end80
  %105 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !4644
  %lcfg84 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %105, i32 0, i32 1, !dbg !4645
  %106 = load i8*, i8** %lcfg84, align 8, !dbg !4645
  %add.ptr85 = getelementptr i8, i8* %106, i64 104, !dbg !4646
  call void @writel(i32 2304, i8* %add.ptr85) #5, !dbg !4647
  br label %if.end86, !dbg !4647

if.end86:                                         ; preds = %if.then83, %if.end80
  store i32 0, i32* %retval, align 4, !dbg !4648
  br label %return, !dbg !4648

return:                                           ; preds = %if.end86, %if.then79, %if.then72, %if.then55, %if.then36, %if.then21, %if.then9, %if.then5, %if.then1
  %107 = load i32, i32* %retval, align 4, !dbg !4649
  ret i32 %107, !dbg !4649
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @rtd_reset(%struct.comedi_device* %dev) #2 !dbg !4650 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %devpriv = alloca %struct.rtd_private*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4651, metadata !DIExpression()), !dbg !4652
  call void @llvm.dbg.declare(metadata %struct.rtd_private** %devpriv, metadata !4653, metadata !DIExpression()), !dbg !4654
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4655
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !4656
  %1 = load i8*, i8** %private, align 8, !dbg !4656
  %2 = bitcast i8* %1 to %struct.rtd_private*, !dbg !4655
  store %struct.rtd_private* %2, %struct.rtd_private** %devpriv, align 8, !dbg !4654
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4657
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %3, i32 0, i32 17, !dbg !4658
  %4 = load i8*, i8** %mmio, align 8, !dbg !4658
  %add.ptr = getelementptr i8, i8* %4, i64 256, !dbg !4659
  call void @writel(i32 0, i8* %add.ptr) #5, !dbg !4660
  call void @usleep_range(i64 100, i64 1000) #5, !dbg !4661
  %5 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !4662
  %lcfg = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %5, i32 0, i32 1, !dbg !4663
  %6 = load i8*, i8** %lcfg, align 8, !dbg !4663
  %add.ptr1 = getelementptr i8, i8* %6, i64 104, !dbg !4664
  call void @writel(i32 0, i8* %add.ptr1) #5, !dbg !4665
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4666
  %mmio2 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 17, !dbg !4667
  %8 = load i8*, i8** %mmio2, align 8, !dbg !4667
  %add.ptr3 = getelementptr i8, i8* %8, i64 48, !dbg !4668
  call void @writew(i16 zeroext 0, i8* %add.ptr3) #5, !dbg !4669
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4670
  %mmio4 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 17, !dbg !4671
  %10 = load i8*, i8** %mmio4, align 8, !dbg !4671
  %add.ptr5 = getelementptr i8, i8* %10, i64 52, !dbg !4672
  call void @writew(i16 zeroext -1, i8* %add.ptr5) #5, !dbg !4673
  %11 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4674
  %mmio6 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 17, !dbg !4675
  %12 = load i8*, i8** %mmio6, align 8, !dbg !4675
  %add.ptr7 = getelementptr i8, i8* %12, i64 52, !dbg !4676
  %call = call zeroext i16 @readw(i8* %add.ptr7) #5, !dbg !4677
  ret void, !dbg !4678
}

; Function Attrs: noredzone
declare dso_local i8* @free_irq(i32, i8*) #1

; Function Attrs: noredzone
declare dso_local void @iounmap(i8*) #1

; Function Attrs: noredzone
declare dso_local void @comedi_pci_disable(%struct.comedi_device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writel(i32 %val, i8* %addr) #2 !dbg !4679 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !4685, metadata !DIExpression()), !dbg !4686
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !4687, metadata !DIExpression()), !dbg !4686
  %0 = load i32, i32* %val.addr, align 4, !dbg !4686
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !4686
  %2 = bitcast i8* %1 to i32*, !dbg !4686
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #6, !dbg !4686, !srcloc !4688
  ret void, !dbg !4686
}

; Function Attrs: noredzone
declare dso_local void @usleep_range(i64, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writew(i16 zeroext %val, i8* %addr) #2 !dbg !4689 {
entry:
  %val.addr = alloca i16, align 2
  %addr.addr = alloca i8*, align 8
  store i16 %val, i16* %val.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %val.addr, metadata !4692, metadata !DIExpression()), !dbg !4693
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !4694, metadata !DIExpression()), !dbg !4693
  %0 = load i16, i16* %val.addr, align 2, !dbg !4693
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !4693
  %2 = bitcast i8* %1 to i16*, !dbg !4693
  call void asm sideeffect "movw $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i16 %0, i16* %2) #6, !dbg !4693, !srcloc !4695
  ret void, !dbg !4693
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @readw(i8* %addr) #2 !dbg !4696 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i16, align 2
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !4701, metadata !DIExpression()), !dbg !4702
  call void @llvm.dbg.declare(metadata i16* %ret, metadata !4703, metadata !DIExpression()), !dbg !4702
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !4702
  %1 = bitcast i8* %0 to i16*, !dbg !4702
  %2 = call i16 asm sideeffect "movw $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i16* %1) #6, !dbg !4702, !srcloc !4704
  store i16 %2, i16* %ret, align 2, !dbg !4702
  %3 = load i16, i16* %ret, align 2, !dbg !4702
  ret i16 %3, !dbg !4702
}

; Function Attrs: noredzone
declare dso_local %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device*) #1

; Function Attrs: noredzone
declare dso_local i8* @comedi_alloc_devpriv(%struct.comedi_device*, i64) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_pci_enable(%struct.comedi_device*) #1

; Function Attrs: noredzone
declare dso_local i8* @pci_ioremap_bar(%struct.pci_dev*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @rtd_pci_latency_quirk(%struct.comedi_device* %dev, %struct.pci_dev* %pcidev) #2 !dbg !4705 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %pcidev.addr = alloca %struct.pci_dev*, align 8
  %pci_latency = alloca i8, align 1
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4708, metadata !DIExpression()), !dbg !4709
  store %struct.pci_dev* %pcidev, %struct.pci_dev** %pcidev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pcidev.addr, metadata !4710, metadata !DIExpression()), !dbg !4711
  call void @llvm.dbg.declare(metadata i8* %pci_latency, metadata !4712, metadata !DIExpression()), !dbg !4713
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pcidev.addr, align 8, !dbg !4714
  %call = call i32 @pci_read_config_byte(%struct.pci_dev* %0, i32 13, i8* %pci_latency) #5, !dbg !4715
  %1 = load i8, i8* %pci_latency, align 1, !dbg !4716
  %conv = zext i8 %1 to i32, !dbg !4716
  %cmp = icmp slt i32 %conv, 32, !dbg !4718
  br i1 %cmp, label %if.then, label %if.end, !dbg !4719

if.then:                                          ; preds = %entry
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4720
  %class_dev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %2, i32 0, i32 4, !dbg !4720
  %3 = load %struct.device*, %struct.device** %class_dev, align 8, !dbg !4720
  %4 = load i8, i8* %pci_latency, align 1, !dbg !4720
  %conv2 = zext i8 %4 to i32, !dbg !4720
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %conv2, i32 32) #7, !dbg !4720
  %5 = load %struct.pci_dev*, %struct.pci_dev** %pcidev.addr, align 8, !dbg !4722
  %call3 = call i32 @pci_write_config_byte(%struct.pci_dev* %5, i32 13, i8 zeroext 32) #5, !dbg !4723
  br label %if.end, !dbg !4724

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4725
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @request_irq(i32 %irq, i32 (i32, i8*)* %handler, i64 %flags, i8* %name, i8* %dev) #2 !dbg !4726 {
entry:
  %irq.addr = alloca i32, align 4
  %handler.addr = alloca i32 (i32, i8*)*, align 8
  %flags.addr = alloca i64, align 8
  %name.addr = alloca i8*, align 8
  %dev.addr = alloca i8*, align 8
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !4734, metadata !DIExpression()), !dbg !4735
  store i32 (i32, i8*)* %handler, i32 (i32, i8*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i32, i8*)** %handler.addr, metadata !4736, metadata !DIExpression()), !dbg !4737
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !4738, metadata !DIExpression()), !dbg !4739
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !4740, metadata !DIExpression()), !dbg !4741
  store i8* %dev, i8** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev.addr, metadata !4742, metadata !DIExpression()), !dbg !4743
  %0 = load i32, i32* %irq.addr, align 4, !dbg !4744
  %1 = load i32 (i32, i8*)*, i32 (i32, i8*)** %handler.addr, align 8, !dbg !4745
  %2 = load i64, i64* %flags.addr, align 8, !dbg !4746
  %3 = load i8*, i8** %name.addr, align 8, !dbg !4747
  %4 = load i8*, i8** %dev.addr, align 8, !dbg !4748
  %call = call i32 @request_threaded_irq(i32 %0, i32 (i32, i8*)* %1, i32 (i32, i8*)* null, i64 %2, i8* %3, i8* %4) #5, !dbg !4749
  ret i32 %call, !dbg !4750
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtd_interrupt(i32 %irq, i8* %d) #2 !dbg !4751 {
entry:
  %retval = alloca i32, align 4
  %irq.addr = alloca i32, align 4
  %d.addr = alloca i8*, align 8
  %dev = alloca %struct.comedi_device*, align 8
  %s = alloca %struct.comedi_subdevice*, align 8
  %devpriv = alloca %struct.rtd_private*, align 8
  %overrun = alloca i32, align 4
  %status = alloca i16, align 2
  %fifo_status = alloca i16, align 2
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !4752, metadata !DIExpression()), !dbg !4753
  store i8* %d, i8** %d.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %d.addr, metadata !4754, metadata !DIExpression()), !dbg !4755
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev, metadata !4756, metadata !DIExpression()), !dbg !4757
  %0 = load i8*, i8** %d.addr, align 8, !dbg !4758
  %1 = bitcast i8* %0 to %struct.comedi_device*, !dbg !4758
  store %struct.comedi_device* %1, %struct.comedi_device** %dev, align 8, !dbg !4757
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s, metadata !4759, metadata !DIExpression()), !dbg !4760
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4761
  %read_subdev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %2, i32 0, i32 21, !dbg !4762
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %read_subdev, align 8, !dbg !4762
  store %struct.comedi_subdevice* %3, %struct.comedi_subdevice** %s, align 8, !dbg !4760
  call void @llvm.dbg.declare(metadata %struct.rtd_private** %devpriv, metadata !4763, metadata !DIExpression()), !dbg !4764
  %4 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4765
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 3, !dbg !4766
  %5 = load i8*, i8** %private, align 8, !dbg !4766
  %6 = bitcast i8* %5 to %struct.rtd_private*, !dbg !4765
  store %struct.rtd_private* %6, %struct.rtd_private** %devpriv, align 8, !dbg !4764
  call void @llvm.dbg.declare(metadata i32* %overrun, metadata !4767, metadata !DIExpression()), !dbg !4768
  call void @llvm.dbg.declare(metadata i16* %status, metadata !4769, metadata !DIExpression()), !dbg !4770
  call void @llvm.dbg.declare(metadata i16* %fifo_status, metadata !4771, metadata !DIExpression()), !dbg !4772
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4773
  %attached = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 10, !dbg !4775
  %bf.load = load i8, i8* %attached, align 8, !dbg !4775
  %bf.clear = and i8 %bf.load, 1, !dbg !4775
  %bf.cast = zext i8 %bf.clear to i32, !dbg !4775
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !4773
  br i1 %tobool, label %if.end, label %if.then, !dbg !4776

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4777
  br label %return, !dbg !4777

if.end:                                           ; preds = %entry
  %8 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4778
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 17, !dbg !4779
  %9 = load i8*, i8** %mmio, align 8, !dbg !4779
  %add.ptr = getelementptr i8, i8* %9, i64 16, !dbg !4780
  %call = call i32 @readl(i8* %add.ptr) #5, !dbg !4781
  %conv = trunc i32 %call to i16, !dbg !4781
  store i16 %conv, i16* %fifo_status, align 2, !dbg !4782
  %10 = load i16, i16* %fifo_status, align 2, !dbg !4783
  %conv1 = zext i16 %10 to i64, !dbg !4783
  %and = and i64 %conv1, 1024, !dbg !4785
  %tobool2 = icmp ne i64 %and, 0, !dbg !4785
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !4786

if.then3:                                         ; preds = %if.end
  br label %xfer_abort, !dbg !4787

if.end4:                                          ; preds = %if.end
  %11 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4788
  %mmio5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 17, !dbg !4789
  %12 = load i8*, i8** %mmio5, align 8, !dbg !4789
  %add.ptr6 = getelementptr i8, i8* %12, i64 48, !dbg !4790
  %call7 = call zeroext i16 @readw(i8* %add.ptr6) #5, !dbg !4791
  store i16 %call7, i16* %status, align 2, !dbg !4792
  %13 = load i16, i16* %status, align 2, !dbg !4793
  %conv8 = zext i16 %13 to i32, !dbg !4793
  %cmp = icmp eq i32 %conv8, 0, !dbg !4795
  br i1 %cmp, label %if.then10, label %if.end11, !dbg !4796

if.then10:                                        ; preds = %if.end4
  store i32 1, i32* %retval, align 4, !dbg !4797
  br label %return, !dbg !4797

if.end11:                                         ; preds = %if.end4
  %14 = load i16, i16* %status, align 2, !dbg !4798
  %conv12 = zext i16 %14 to i64, !dbg !4798
  %and13 = and i64 %conv12, 16, !dbg !4800
  %tobool14 = icmp ne i64 %and13, 0, !dbg !4800
  br i1 %tobool14, label %if.then15, label %if.end50, !dbg !4801

if.then15:                                        ; preds = %if.end11
  %15 = load i16, i16* %fifo_status, align 2, !dbg !4802
  %conv16 = zext i16 %15 to i64, !dbg !4802
  %and17 = and i64 %conv16, 512, !dbg !4805
  %tobool18 = icmp ne i64 %and17, 0, !dbg !4805
  br i1 %tobool18, label %if.else, label %if.then19, !dbg !4806

if.then19:                                        ; preds = %if.then15
  %16 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4807
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4810
  %18 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !4811
  %fifosz = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %18, i32 0, i32 5, !dbg !4812
  %19 = load i32, i32* %fifosz, align 8, !dbg !4812
  %div = udiv i32 %19, 2, !dbg !4813
  %call20 = call i32 @ai_read_n(%struct.comedi_device* %16, %struct.comedi_subdevice* %17, i32 %div) #5, !dbg !4814
  %cmp21 = icmp slt i32 %call20, 0, !dbg !4815
  br i1 %cmp21, label %if.then23, label %if.end24, !dbg !4816

if.then23:                                        ; preds = %if.then19
  br label %xfer_abort, !dbg !4817

if.end24:                                         ; preds = %if.then19
  %20 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !4818
  %ai_count = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %20, i32 0, i32 2, !dbg !4820
  %21 = load i64, i64* %ai_count, align 8, !dbg !4820
  %cmp25 = icmp eq i64 %21, 0, !dbg !4821
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !4822

if.then27:                                        ; preds = %if.end24
  br label %xfer_done, !dbg !4823

if.end28:                                         ; preds = %if.end24
  br label %if.end49, !dbg !4824

if.else:                                          ; preds = %if.then15
  %22 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !4825
  %xfer_count = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %22, i32 0, i32 3, !dbg !4827
  %23 = load i32, i32* %xfer_count, align 8, !dbg !4827
  %cmp29 = icmp sgt i32 %23, 0, !dbg !4828
  br i1 %cmp29, label %if.then31, label %if.end48, !dbg !4829

if.then31:                                        ; preds = %if.else
  %24 = load i16, i16* %fifo_status, align 2, !dbg !4830
  %conv32 = zext i16 %24 to i64, !dbg !4830
  %and33 = and i64 %conv32, 256, !dbg !4833
  %tobool34 = icmp ne i64 %and33, 0, !dbg !4833
  br i1 %tobool34, label %if.then35, label %if.end47, !dbg !4834

if.then35:                                        ; preds = %if.then31
  %25 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4835
  %26 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4838
  %27 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !4839
  %xfer_count36 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %27, i32 0, i32 3, !dbg !4840
  %28 = load i32, i32* %xfer_count36, align 8, !dbg !4840
  %call37 = call i32 @ai_read_n(%struct.comedi_device* %25, %struct.comedi_subdevice* %26, i32 %28) #5, !dbg !4841
  %cmp38 = icmp slt i32 %call37, 0, !dbg !4842
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !4843

if.then40:                                        ; preds = %if.then35
  br label %xfer_abort, !dbg !4844

if.end41:                                         ; preds = %if.then35
  %29 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !4845
  %ai_count42 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %29, i32 0, i32 2, !dbg !4847
  %30 = load i64, i64* %ai_count42, align 8, !dbg !4847
  %cmp43 = icmp eq i64 %30, 0, !dbg !4848
  br i1 %cmp43, label %if.then45, label %if.end46, !dbg !4849

if.then45:                                        ; preds = %if.end41
  br label %xfer_done, !dbg !4850

if.end46:                                         ; preds = %if.end41
  br label %if.end47, !dbg !4851

if.end47:                                         ; preds = %if.end46, %if.then31
  br label %if.end48, !dbg !4852

if.end48:                                         ; preds = %if.end47, %if.else
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.end28
  br label %if.end50, !dbg !4853

if.end50:                                         ; preds = %if.end49, %if.end11
  %31 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4854
  %mmio51 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %31, i32 0, i32 17, !dbg !4855
  %32 = load i8*, i8** %mmio51, align 8, !dbg !4855
  %add.ptr52 = getelementptr i8, i8* %32, i64 56, !dbg !4856
  %call53 = call i32 @readl(i8* %add.ptr52) #5, !dbg !4857
  %and54 = and i32 %call53, 65535, !dbg !4858
  store i32 %and54, i32* %overrun, align 4, !dbg !4859
  %33 = load i32, i32* %overrun, align 4, !dbg !4860
  %tobool55 = icmp ne i32 %33, 0, !dbg !4860
  br i1 %tobool55, label %if.then56, label %if.end57, !dbg !4862

if.then56:                                        ; preds = %if.end50
  br label %xfer_abort, !dbg !4863

if.end57:                                         ; preds = %if.end50
  %34 = load i16, i16* %status, align 2, !dbg !4864
  %35 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4865
  %mmio58 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %35, i32 0, i32 17, !dbg !4866
  %36 = load i8*, i8** %mmio58, align 8, !dbg !4866
  %add.ptr59 = getelementptr i8, i8* %36, i64 52, !dbg !4867
  call void @writew(i16 zeroext %34, i8* %add.ptr59) #5, !dbg !4868
  %37 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4869
  %mmio60 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %37, i32 0, i32 17, !dbg !4870
  %38 = load i8*, i8** %mmio60, align 8, !dbg !4870
  %add.ptr61 = getelementptr i8, i8* %38, i64 52, !dbg !4871
  %call62 = call zeroext i16 @readw(i8* %add.ptr61) #5, !dbg !4872
  %39 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4873
  %40 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4874
  %call63 = call i32 @comedi_handle_events(%struct.comedi_device* %39, %struct.comedi_subdevice* %40) #5, !dbg !4875
  store i32 1, i32* %retval, align 4, !dbg !4876
  br label %return, !dbg !4876

xfer_abort:                                       ; preds = %if.then56, %if.then40, %if.then23, %if.then3
  call void @llvm.dbg.label(metadata !4877), !dbg !4878
  %41 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4879
  %async = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %41, i32 0, i32 7, !dbg !4880
  %42 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4880
  %events = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %42, i32 0, i32 16, !dbg !4881
  %43 = load i32, i32* %events, align 4, !dbg !4882
  %or = or i32 %43, 16, !dbg !4882
  store i32 %or, i32* %events, align 4, !dbg !4882
  br label %xfer_done, !dbg !4879

xfer_done:                                        ; preds = %xfer_abort, %if.then45, %if.then27
  call void @llvm.dbg.label(metadata !4883), !dbg !4884
  %44 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4885
  %async64 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %44, i32 0, i32 7, !dbg !4886
  %45 = load %struct.comedi_async*, %struct.comedi_async** %async64, align 8, !dbg !4886
  %events65 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %45, i32 0, i32 16, !dbg !4887
  %46 = load i32, i32* %events65, align 4, !dbg !4888
  %or66 = or i32 %46, 2, !dbg !4888
  store i32 %or66, i32* %events65, align 4, !dbg !4888
  %47 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4889
  %mmio67 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %47, i32 0, i32 17, !dbg !4890
  %48 = load i8*, i8** %mmio67, align 8, !dbg !4890
  %add.ptr68 = getelementptr i8, i8* %48, i64 48, !dbg !4891
  %call69 = call zeroext i16 @readw(i8* %add.ptr68) #5, !dbg !4892
  store i16 %call69, i16* %status, align 2, !dbg !4893
  %49 = load i16, i16* %status, align 2, !dbg !4894
  %50 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4895
  %mmio70 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %50, i32 0, i32 17, !dbg !4896
  %51 = load i8*, i8** %mmio70, align 8, !dbg !4896
  %add.ptr71 = getelementptr i8, i8* %51, i64 52, !dbg !4897
  call void @writew(i16 zeroext %49, i8* %add.ptr71) #5, !dbg !4898
  %52 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4899
  %mmio72 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %52, i32 0, i32 17, !dbg !4900
  %53 = load i8*, i8** %mmio72, align 8, !dbg !4900
  %add.ptr73 = getelementptr i8, i8* %53, i64 52, !dbg !4901
  %call74 = call zeroext i16 @readw(i8* %add.ptr73) #5, !dbg !4902
  %54 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4903
  %mmio75 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %54, i32 0, i32 17, !dbg !4904
  %55 = load i8*, i8** %mmio75, align 8, !dbg !4904
  %add.ptr76 = getelementptr i8, i8* %55, i64 16, !dbg !4905
  %call77 = call i32 @readl(i8* %add.ptr76) #5, !dbg !4906
  %conv78 = trunc i32 %call77 to i16, !dbg !4906
  store i16 %conv78, i16* %fifo_status, align 2, !dbg !4907
  %56 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4908
  %mmio79 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %56, i32 0, i32 17, !dbg !4909
  %57 = load i8*, i8** %mmio79, align 8, !dbg !4909
  %add.ptr80 = getelementptr i8, i8* %57, i64 56, !dbg !4910
  %call81 = call i32 @readl(i8* %add.ptr80) #5, !dbg !4911
  %and82 = and i32 %call81, 65535, !dbg !4912
  store i32 %and82, i32* %overrun, align 4, !dbg !4913
  %58 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4914
  %59 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4915
  %call83 = call i32 @comedi_handle_events(%struct.comedi_device* %58, %struct.comedi_subdevice* %59) #5, !dbg !4916
  store i32 1, i32* %retval, align 4, !dbg !4917
  br label %return, !dbg !4917

return:                                           ; preds = %xfer_done, %if.end57, %if.then10, %if.then
  %60 = load i32, i32* %retval, align 4, !dbg !4918
  ret i32 %60, !dbg !4918
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtd_ai_rinsn(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !4919 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %devpriv = alloca %struct.rtd_private*, align 8
  %range = alloca i32, align 4
  %ret = alloca i32, align 4
  %n = alloca i32, align 4
  %d = alloca i16, align 2
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4920, metadata !DIExpression()), !dbg !4921
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4922, metadata !DIExpression()), !dbg !4923
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !4924, metadata !DIExpression()), !dbg !4925
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !4926, metadata !DIExpression()), !dbg !4927
  call void @llvm.dbg.declare(metadata %struct.rtd_private** %devpriv, metadata !4928, metadata !DIExpression()), !dbg !4929
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4930
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !4931
  %1 = load i8*, i8** %private, align 8, !dbg !4931
  %2 = bitcast i8* %1 to %struct.rtd_private*, !dbg !4930
  store %struct.rtd_private* %2, %struct.rtd_private** %devpriv, align 8, !dbg !4929
  call void @llvm.dbg.declare(metadata i32* %range, metadata !4932, metadata !DIExpression()), !dbg !4933
  %3 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4934
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %3, i32 0, i32 4, !dbg !4934
  %4 = load i32, i32* %chanspec, align 4, !dbg !4934
  %shr = lshr i32 %4, 16, !dbg !4934
  %and = and i32 %shr, 255, !dbg !4934
  store i32 %and, i32* %range, align 4, !dbg !4933
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4935, metadata !DIExpression()), !dbg !4936
  call void @llvm.dbg.declare(metadata i32* %n, metadata !4937, metadata !DIExpression()), !dbg !4938
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4939
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 17, !dbg !4940
  %6 = load i8*, i8** %mmio, align 8, !dbg !4940
  %add.ptr = getelementptr i8, i8* %6, i64 300, !dbg !4941
  call void @writel(i32 0, i8* %add.ptr) #5, !dbg !4942
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4943
  %8 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4944
  %chanspec1 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %8, i32 0, i32 4, !dbg !4945
  call void @rtd_load_channelgain_list(%struct.comedi_device* %7, i32 1, i32* %chanspec1) #5, !dbg !4946
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4947
  %mmio2 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 17, !dbg !4948
  %10 = load i8*, i8** %mmio2, align 8, !dbg !4948
  %add.ptr3 = getelementptr i8, i8* %10, i64 268, !dbg !4949
  call void @writel(i32 0, i8* %add.ptr3) #5, !dbg !4950
  store i32 0, i32* %n, align 4, !dbg !4951
  br label %for.cond, !dbg !4953

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %n, align 4, !dbg !4954
  %12 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4956
  %n4 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %12, i32 0, i32 1, !dbg !4957
  %13 = load i32, i32* %n4, align 4, !dbg !4957
  %cmp = icmp ult i32 %11, %13, !dbg !4958
  br i1 %cmp, label %for.body, label %for.end, !dbg !4959

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i16* %d, metadata !4960, metadata !DIExpression()), !dbg !4962
  %14 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4963
  %mmio5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 17, !dbg !4964
  %15 = load i8*, i8** %mmio5, align 8, !dbg !4964
  %add.ptr6 = getelementptr i8, i8* %15, i64 16, !dbg !4965
  call void @writew(i16 zeroext 0, i8* %add.ptr6) #5, !dbg !4966
  %16 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4967
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4968
  %18 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4969
  %call = call i32 @comedi_timeout(%struct.comedi_device* %16, %struct.comedi_subdevice* %17, %struct.comedi_insn* %18, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i64)* @rtd_ai_eoc, i64 0) #5, !dbg !4970
  store i32 %call, i32* %ret, align 4, !dbg !4971
  %19 = load i32, i32* %ret, align 4, !dbg !4972
  %tobool = icmp ne i32 %19, 0, !dbg !4972
  br i1 %tobool, label %if.then, label %if.end, !dbg !4974

if.then:                                          ; preds = %for.body
  %20 = load i32, i32* %ret, align 4, !dbg !4975
  store i32 %20, i32* %retval, align 4, !dbg !4976
  br label %return, !dbg !4976

if.end:                                           ; preds = %for.body
  %21 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !4977
  %las1 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %21, i32 0, i32 0, !dbg !4978
  %22 = load i8*, i8** %las1, align 8, !dbg !4978
  %add.ptr7 = getelementptr i8, i8* %22, i64 0, !dbg !4979
  %call8 = call zeroext i16 @readw(i8* %add.ptr7) #5, !dbg !4980
  store i16 %call8, i16* %d, align 2, !dbg !4981
  %23 = load i16, i16* %d, align 2, !dbg !4982
  %conv = zext i16 %23 to i32, !dbg !4982
  %shr9 = ashr i32 %conv, 3, !dbg !4982
  %conv10 = trunc i32 %shr9 to i16, !dbg !4982
  store i16 %conv10, i16* %d, align 2, !dbg !4982
  %24 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4983
  %25 = load i32, i32* %range, align 4, !dbg !4985
  %call11 = call zeroext i1 @comedi_range_is_bipolar(%struct.comedi_subdevice* %24, i32 %25) #5, !dbg !4986
  br i1 %call11, label %if.then12, label %if.end16, !dbg !4987

if.then12:                                        ; preds = %if.end
  %26 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4988
  %27 = load i16, i16* %d, align 2, !dbg !4989
  %conv13 = zext i16 %27 to i32, !dbg !4989
  %call14 = call i32 @comedi_offset_munge(%struct.comedi_subdevice* %26, i32 %conv13) #5, !dbg !4990
  %conv15 = trunc i32 %call14 to i16, !dbg !4990
  store i16 %conv15, i16* %d, align 2, !dbg !4991
  br label %if.end16, !dbg !4992

if.end16:                                         ; preds = %if.then12, %if.end
  %28 = load i16, i16* %d, align 2, !dbg !4993
  %conv17 = zext i16 %28 to i32, !dbg !4993
  %29 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4994
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %29, i32 0, i32 13, !dbg !4995
  %30 = load i32, i32* %maxdata, align 8, !dbg !4995
  %and18 = and i32 %conv17, %30, !dbg !4996
  %31 = load i32*, i32** %data.addr, align 8, !dbg !4997
  %32 = load i32, i32* %n, align 4, !dbg !4998
  %idxprom = sext i32 %32 to i64, !dbg !4997
  %arrayidx = getelementptr i32, i32* %31, i64 %idxprom, !dbg !4997
  store i32 %and18, i32* %arrayidx, align 4, !dbg !4999
  br label %for.inc, !dbg !5000

for.inc:                                          ; preds = %if.end16
  %33 = load i32, i32* %n, align 4, !dbg !5001
  %inc = add i32 %33, 1, !dbg !5001
  store i32 %inc, i32* %n, align 4, !dbg !5001
  br label %for.cond, !dbg !5002, !llvm.loop !5003

for.end:                                          ; preds = %for.cond
  %34 = load i32, i32* %n, align 4, !dbg !5005
  store i32 %34, i32* %retval, align 4, !dbg !5006
  br label %return, !dbg !5006

return:                                           ; preds = %for.end, %if.then
  %35 = load i32, i32* %retval, align 4, !dbg !5007
  ret i32 %35, !dbg !5007
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtd_ai_cmd(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #2 !dbg !5008 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %devpriv = alloca %struct.rtd_private*, align 8
  %cmd = alloca %struct.comedi_cmd*, align 8
  %timer = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5009, metadata !DIExpression()), !dbg !5010
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5011, metadata !DIExpression()), !dbg !5012
  call void @llvm.dbg.declare(metadata %struct.rtd_private** %devpriv, metadata !5013, metadata !DIExpression()), !dbg !5014
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5015
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5016
  %1 = load i8*, i8** %private, align 8, !dbg !5016
  %2 = bitcast i8* %1 to %struct.rtd_private*, !dbg !5015
  store %struct.rtd_private* %2, %struct.rtd_private** %devpriv, align 8, !dbg !5014
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd, metadata !5017, metadata !DIExpression()), !dbg !5018
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5019
  %async = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %3, i32 0, i32 7, !dbg !5020
  %4 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5020
  %cmd1 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %4, i32 0, i32 17, !dbg !5021
  store %struct.comedi_cmd* %cmd1, %struct.comedi_cmd** %cmd, align 8, !dbg !5018
  call void @llvm.dbg.declare(metadata i32* %timer, metadata !5022, metadata !DIExpression()), !dbg !5023
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5024
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 17, !dbg !5025
  %6 = load i8*, i8** %mmio, align 8, !dbg !5025
  %add.ptr = getelementptr i8, i8* %6, i64 280, !dbg !5026
  call void @writel(i32 0, i8* %add.ptr) #5, !dbg !5027
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5028
  %mmio2 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 17, !dbg !5029
  %8 = load i8*, i8** %mmio2, align 8, !dbg !5029
  %add.ptr3 = getelementptr i8, i8* %8, i64 40, !dbg !5030
  call void @writel(i32 0, i8* %add.ptr3) #5, !dbg !5031
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5032
  %mmio4 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 17, !dbg !5033
  %10 = load i8*, i8** %mmio4, align 8, !dbg !5033
  %add.ptr5 = getelementptr i8, i8* %10, i64 268, !dbg !5034
  call void @writel(i32 0, i8* %add.ptr5) #5, !dbg !5035
  %11 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5036
  %mmio6 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 17, !dbg !5037
  %12 = load i8*, i8** %mmio6, align 8, !dbg !5037
  %add.ptr7 = getelementptr i8, i8* %12, i64 48, !dbg !5038
  call void @writew(i16 zeroext 0, i8* %add.ptr7) #5, !dbg !5039
  %13 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5040
  %mmio8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 17, !dbg !5041
  %14 = load i8*, i8** %mmio8, align 8, !dbg !5041
  %add.ptr9 = getelementptr i8, i8* %14, i64 300, !dbg !5042
  call void @writel(i32 0, i8* %add.ptr9) #5, !dbg !5043
  %15 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5044
  %mmio10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 17, !dbg !5045
  %16 = load i8*, i8** %mmio10, align 8, !dbg !5045
  %add.ptr11 = getelementptr i8, i8* %16, i64 56, !dbg !5046
  call void @writel(i32 0, i8* %add.ptr11) #5, !dbg !5047
  %17 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5048
  %18 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5049
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %18, i32 0, i32 13, !dbg !5050
  %19 = load i32, i32* %chanlist_len, align 8, !dbg !5050
  %20 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5051
  %chanlist = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %20, i32 0, i32 12, !dbg !5052
  %21 = load i32*, i32** %chanlist, align 8, !dbg !5052
  call void @rtd_load_channelgain_list(%struct.comedi_device* %17, i32 %19, i32* %21) #5, !dbg !5053
  %22 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5054
  %chanlist_len12 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %22, i32 0, i32 13, !dbg !5056
  %23 = load i32, i32* %chanlist_len12, align 8, !dbg !5056
  %cmp = icmp ugt i32 %23, 1, !dbg !5057
  br i1 %cmp, label %if.then, label %if.else, !dbg !5058

if.then:                                          ; preds = %entry
  %24 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5059
  %mmio13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %24, i32 0, i32 17, !dbg !5061
  %25 = load i8*, i8** %mmio13, align 8, !dbg !5061
  %add.ptr14 = getelementptr i8, i8* %25, i64 276, !dbg !5062
  call void @writel(i32 0, i8* %add.ptr14) #5, !dbg !5063
  %26 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5064
  %mmio15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %26, i32 0, i32 17, !dbg !5065
  %27 = load i8*, i8** %mmio15, align 8, !dbg !5065
  %add.ptr16 = getelementptr i8, i8* %27, i64 272, !dbg !5066
  call void @writel(i32 1, i8* %add.ptr16) #5, !dbg !5067
  %28 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5068
  %mmio17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %28, i32 0, i32 17, !dbg !5069
  %29 = load i8*, i8** %mmio17, align 8, !dbg !5069
  %add.ptr18 = getelementptr i8, i8* %29, i64 268, !dbg !5070
  call void @writel(i32 2, i8* %add.ptr18) #5, !dbg !5071
  br label %if.end, !dbg !5072

if.else:                                          ; preds = %entry
  %30 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5073
  %mmio19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 17, !dbg !5075
  %31 = load i8*, i8** %mmio19, align 8, !dbg !5075
  %add.ptr20 = getelementptr i8, i8* %31, i64 276, !dbg !5076
  call void @writel(i32 0, i8* %add.ptr20) #5, !dbg !5077
  %32 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5078
  %mmio21 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %32, i32 0, i32 17, !dbg !5079
  %33 = load i8*, i8** %mmio21, align 8, !dbg !5079
  %add.ptr22 = getelementptr i8, i8* %33, i64 268, !dbg !5080
  call void @writel(i32 1, i8* %add.ptr22) #5, !dbg !5081
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %34 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !5082
  %fifosz = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %34, i32 0, i32 5, !dbg !5083
  %35 = load i32, i32* %fifosz, align 8, !dbg !5083
  %div = udiv i32 %35, 2, !dbg !5084
  %sub = sub i32 %div, 1, !dbg !5085
  %and = and i32 %sub, 65535, !dbg !5086
  %36 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5087
  %mmio23 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %36, i32 0, i32 17, !dbg !5088
  %37 = load i8*, i8** %mmio23, align 8, !dbg !5088
  %add.ptr24 = getelementptr i8, i8* %37, i64 88, !dbg !5089
  call void @writel(i32 %and, i8* %add.ptr24) #5, !dbg !5090
  %38 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5091
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %38, i32 0, i32 4, !dbg !5093
  %39 = load i32, i32* %scan_begin_src, align 8, !dbg !5093
  %cmp25 = icmp eq i32 %39, 16, !dbg !5094
  br i1 %cmp25, label %if.then26, label %if.else70, !dbg !5095

if.then26:                                        ; preds = %if.end
  %40 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5096
  %flags = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %40, i32 0, i32 1, !dbg !5099
  %41 = load i32, i32* %flags, align 4, !dbg !5099
  %and27 = and i32 %41, 32, !dbg !5100
  %tobool = icmp ne i32 %and27, 0, !dbg !5100
  br i1 %tobool, label %if.then28, label %if.else31, !dbg !5101

if.then28:                                        ; preds = %if.then26
  %42 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5102
  %chanlist_len29 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %42, i32 0, i32 13, !dbg !5104
  %43 = load i32, i32* %chanlist_len29, align 8, !dbg !5104
  %44 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !5105
  %xfer_count = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %44, i32 0, i32 3, !dbg !5106
  store i32 %43, i32* %xfer_count, align 8, !dbg !5107
  %45 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !5108
  %flags30 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %45, i32 0, i32 4, !dbg !5109
  %46 = load i32, i32* %flags30, align 4, !dbg !5110
  %or = or i32 %46, 1, !dbg !5110
  store i32 %or, i32* %flags30, align 4, !dbg !5110
  br label %if.end54, !dbg !5111

if.else31:                                        ; preds = %if.then26
  %47 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5112
  %chanlist_len32 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %47, i32 0, i32 13, !dbg !5114
  %48 = load i32, i32* %chanlist_len32, align 8, !dbg !5114
  %mul = mul i32 10000000, %48, !dbg !5115
  %49 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5116
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %49, i32 0, i32 5, !dbg !5117
  %50 = load i32, i32* %scan_begin_arg, align 4, !dbg !5117
  %div33 = udiv i32 %mul, %50, !dbg !5118
  %51 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !5119
  %xfer_count34 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %51, i32 0, i32 3, !dbg !5120
  store i32 %div33, i32* %xfer_count34, align 8, !dbg !5121
  %52 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !5122
  %xfer_count35 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %52, i32 0, i32 3, !dbg !5124
  %53 = load i32, i32* %xfer_count35, align 8, !dbg !5124
  %54 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5125
  %chanlist_len36 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %54, i32 0, i32 13, !dbg !5126
  %55 = load i32, i32* %chanlist_len36, align 8, !dbg !5126
  %cmp37 = icmp ult i32 %53, %55, !dbg !5127
  br i1 %cmp37, label %if.then38, label %if.else41, !dbg !5128

if.then38:                                        ; preds = %if.else31
  %56 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5129
  %chanlist_len39 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %56, i32 0, i32 13, !dbg !5131
  %57 = load i32, i32* %chanlist_len39, align 8, !dbg !5131
  %58 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !5132
  %xfer_count40 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %58, i32 0, i32 3, !dbg !5133
  store i32 %57, i32* %xfer_count40, align 8, !dbg !5134
  br label %if.end51, !dbg !5135

if.else41:                                        ; preds = %if.else31
  %59 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !5136
  %xfer_count42 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %59, i32 0, i32 3, !dbg !5136
  %60 = load i32, i32* %xfer_count42, align 8, !dbg !5136
  %61 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5136
  %chanlist_len43 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %61, i32 0, i32 13, !dbg !5136
  %62 = load i32, i32* %chanlist_len43, align 8, !dbg !5136
  %add = add i32 %60, %62, !dbg !5136
  %sub44 = sub i32 %add, 1, !dbg !5136
  %63 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5136
  %chanlist_len45 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %63, i32 0, i32 13, !dbg !5136
  %64 = load i32, i32* %chanlist_len45, align 8, !dbg !5136
  %div46 = udiv i32 %sub44, %64, !dbg !5136
  %65 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !5138
  %xfer_count47 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %65, i32 0, i32 3, !dbg !5139
  store i32 %div46, i32* %xfer_count47, align 8, !dbg !5140
  %66 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5141
  %chanlist_len48 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %66, i32 0, i32 13, !dbg !5142
  %67 = load i32, i32* %chanlist_len48, align 8, !dbg !5142
  %68 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !5143
  %xfer_count49 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %68, i32 0, i32 3, !dbg !5144
  %69 = load i32, i32* %xfer_count49, align 8, !dbg !5145
  %mul50 = mul i32 %69, %67, !dbg !5145
  store i32 %mul50, i32* %xfer_count49, align 8, !dbg !5145
  br label %if.end51

if.end51:                                         ; preds = %if.else41, %if.then38
  %70 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !5146
  %flags52 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %70, i32 0, i32 4, !dbg !5147
  %71 = load i32, i32* %flags52, align 4, !dbg !5148
  %or53 = or i32 %71, 1, !dbg !5148
  store i32 %or53, i32* %flags52, align 4, !dbg !5148
  br label %if.end54

if.end54:                                         ; preds = %if.end51, %if.then28
  %72 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !5149
  %xfer_count55 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %72, i32 0, i32 3, !dbg !5151
  %73 = load i32, i32* %xfer_count55, align 8, !dbg !5151
  %74 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !5152
  %fifosz56 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %74, i32 0, i32 5, !dbg !5153
  %75 = load i32, i32* %fifosz56, align 8, !dbg !5153
  %div57 = udiv i32 %75, 2, !dbg !5154
  %cmp58 = icmp uge i32 %73, %div57, !dbg !5155
  br i1 %cmp58, label %if.then59, label %if.else63, !dbg !5156

if.then59:                                        ; preds = %if.end54
  %76 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !5157
  %xfer_count60 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %76, i32 0, i32 3, !dbg !5159
  store i32 0, i32* %xfer_count60, align 8, !dbg !5160
  %77 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !5161
  %flags61 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %77, i32 0, i32 4, !dbg !5162
  %78 = load i32, i32* %flags61, align 4, !dbg !5163
  %and62 = and i32 %78, -2, !dbg !5163
  store i32 %and62, i32* %flags61, align 4, !dbg !5163
  br label %if.end69, !dbg !5164

if.else63:                                        ; preds = %if.end54
  %79 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !5165
  %xfer_count64 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %79, i32 0, i32 3, !dbg !5167
  %80 = load i32, i32* %xfer_count64, align 8, !dbg !5167
  %sub65 = sub i32 %80, 1, !dbg !5168
  %and66 = and i32 %sub65, 65535, !dbg !5169
  %81 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5170
  %mmio67 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %81, i32 0, i32 17, !dbg !5171
  %82 = load i8*, i8** %mmio67, align 8, !dbg !5171
  %add.ptr68 = getelementptr i8, i8* %82, i64 88, !dbg !5172
  call void @writel(i32 %and66, i8* %add.ptr68) #5, !dbg !5173
  br label %if.end69

if.end69:                                         ; preds = %if.else63, %if.then59
  br label %if.end74, !dbg !5174

if.else70:                                        ; preds = %if.end
  %83 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !5175
  %xfer_count71 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %83, i32 0, i32 3, !dbg !5177
  store i32 0, i32* %xfer_count71, align 8, !dbg !5178
  %84 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !5179
  %flags72 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %84, i32 0, i32 4, !dbg !5180
  %85 = load i32, i32* %flags72, align 4, !dbg !5181
  %and73 = and i32 %85, -2, !dbg !5181
  store i32 %and73, i32* %flags72, align 4, !dbg !5181
  br label %if.end74

if.end74:                                         ; preds = %if.else70, %if.end69
  %86 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5182
  %mmio75 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %86, i32 0, i32 17, !dbg !5183
  %87 = load i8*, i8** %mmio75, align 8, !dbg !5183
  %add.ptr76 = getelementptr i8, i8* %87, i64 384, !dbg !5184
  call void @writel(i32 1, i8* %add.ptr76) #5, !dbg !5185
  %88 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5186
  %mmio77 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %88, i32 0, i32 17, !dbg !5187
  %89 = load i8*, i8** %mmio77, align 8, !dbg !5187
  %add.ptr78 = getelementptr i8, i8* %89, i64 284, !dbg !5188
  call void @writel(i32 1, i8* %add.ptr78) #5, !dbg !5189
  %90 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5190
  %stop_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %90, i32 0, i32 10, !dbg !5191
  %91 = load i32, i32* %stop_src, align 8, !dbg !5191
  switch i32 %91, label %sw.epilog [
    i32 32, label %sw.bb
    i32 1, label %sw.bb94
  ], !dbg !5192

sw.bb:                                            ; preds = %if.end74
  %92 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5193
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %92, i32 0, i32 11, !dbg !5195
  %93 = load i32, i32* %stop_arg, align 4, !dbg !5195
  %94 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5196
  %chanlist_len79 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %94, i32 0, i32 13, !dbg !5197
  %95 = load i32, i32* %chanlist_len79, align 8, !dbg !5197
  %mul80 = mul i32 %93, %95, !dbg !5198
  %conv = zext i32 %mul80 to i64, !dbg !5193
  %96 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !5199
  %ai_count = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %96, i32 0, i32 2, !dbg !5200
  store i64 %conv, i64* %ai_count, align 8, !dbg !5201
  %97 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !5202
  %xfer_count81 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %97, i32 0, i32 3, !dbg !5204
  %98 = load i32, i32* %xfer_count81, align 8, !dbg !5204
  %cmp82 = icmp sgt i32 %98, 0, !dbg !5205
  br i1 %cmp82, label %land.lhs.true, label %if.end93, !dbg !5206

land.lhs.true:                                    ; preds = %sw.bb
  %99 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !5207
  %xfer_count84 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %99, i32 0, i32 3, !dbg !5208
  %100 = load i32, i32* %xfer_count84, align 8, !dbg !5208
  %conv85 = sext i32 %100 to i64, !dbg !5207
  %101 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !5209
  %ai_count86 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %101, i32 0, i32 2, !dbg !5210
  %102 = load i64, i64* %ai_count86, align 8, !dbg !5210
  %cmp87 = icmp sgt i64 %conv85, %102, !dbg !5211
  br i1 %cmp87, label %if.then89, label %if.end93, !dbg !5212

if.then89:                                        ; preds = %land.lhs.true
  %103 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !5213
  %ai_count90 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %103, i32 0, i32 2, !dbg !5215
  %104 = load i64, i64* %ai_count90, align 8, !dbg !5215
  %conv91 = trunc i64 %104 to i32, !dbg !5213
  %105 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !5216
  %xfer_count92 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %105, i32 0, i32 3, !dbg !5217
  store i32 %conv91, i32* %xfer_count92, align 8, !dbg !5218
  br label %if.end93, !dbg !5219

if.end93:                                         ; preds = %if.then89, %land.lhs.true, %sw.bb
  br label %sw.epilog, !dbg !5220

sw.bb94:                                          ; preds = %if.end74
  %106 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !5221
  %ai_count95 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %106, i32 0, i32 2, !dbg !5222
  store i64 -1, i64* %ai_count95, align 8, !dbg !5223
  br label %sw.epilog, !dbg !5224

sw.epilog:                                        ; preds = %if.end74, %sw.bb94, %if.end93
  %107 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5225
  %scan_begin_src96 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %107, i32 0, i32 4, !dbg !5226
  %108 = load i32, i32* %scan_begin_src96, align 8, !dbg !5226
  switch i32 %108, label %sw.epilog105 [
    i32 16, label %sw.bb97
    i32 64, label %sw.bb102
  ], !dbg !5227

sw.bb97:                                          ; preds = %sw.epilog
  %109 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5228
  %scan_begin_arg98 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %109, i32 0, i32 5, !dbg !5230
  %call = call i32 @rtd_ns_to_timer(i32* %scan_begin_arg98, i32 0) #5, !dbg !5231
  store i32 %call, i32* %timer, align 4, !dbg !5232
  %110 = load i32, i32* %timer, align 4, !dbg !5233
  %and99 = and i32 %110, 16777215, !dbg !5234
  %111 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5235
  %mmio100 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %111, i32 0, i32 17, !dbg !5236
  %112 = load i8*, i8** %mmio100, align 8, !dbg !5236
  %add.ptr101 = getelementptr i8, i8* %112, i64 64, !dbg !5237
  call void @writel(i32 %and99, i8* %add.ptr101) #5, !dbg !5238
  br label %sw.epilog105, !dbg !5239

sw.bb102:                                         ; preds = %sw.epilog
  %113 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5240
  %mmio103 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %113, i32 0, i32 17, !dbg !5241
  %114 = load i8*, i8** %mmio103, align 8, !dbg !5241
  %add.ptr104 = getelementptr i8, i8* %114, i64 276, !dbg !5242
  call void @writel(i32 1, i8* %add.ptr104) #5, !dbg !5243
  br label %sw.epilog105, !dbg !5244

sw.epilog105:                                     ; preds = %sw.epilog, %sw.bb102, %sw.bb97
  %115 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5245
  %convert_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %115, i32 0, i32 6, !dbg !5246
  %116 = load i32, i32* %convert_src, align 8, !dbg !5246
  switch i32 %116, label %sw.epilog119 [
    i32 16, label %sw.bb106
    i32 64, label %sw.bb116
  ], !dbg !5247

sw.bb106:                                         ; preds = %sw.epilog105
  %117 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5248
  %chanlist_len107 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %117, i32 0, i32 13, !dbg !5251
  %118 = load i32, i32* %chanlist_len107, align 8, !dbg !5251
  %cmp108 = icmp ugt i32 %118, 1, !dbg !5252
  br i1 %cmp108, label %if.then110, label %if.end115, !dbg !5253

if.then110:                                       ; preds = %sw.bb106
  %119 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5254
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %119, i32 0, i32 7, !dbg !5256
  %call111 = call i32 @rtd_ns_to_timer(i32* %convert_arg, i32 0) #5, !dbg !5257
  store i32 %call111, i32* %timer, align 4, !dbg !5258
  %120 = load i32, i32* %timer, align 4, !dbg !5259
  %and112 = and i32 %120, 1023, !dbg !5260
  %121 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5261
  %mmio113 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %121, i32 0, i32 17, !dbg !5262
  %122 = load i8*, i8** %mmio113, align 8, !dbg !5262
  %add.ptr114 = getelementptr i8, i8* %122, i64 68, !dbg !5263
  call void @writel(i32 %and112, i8* %add.ptr114) #5, !dbg !5264
  br label %if.end115, !dbg !5265

if.end115:                                        ; preds = %if.then110, %sw.bb106
  br label %sw.epilog119, !dbg !5266

sw.bb116:                                         ; preds = %sw.epilog105
  %123 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5267
  %mmio117 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %123, i32 0, i32 17, !dbg !5268
  %124 = load i8*, i8** %mmio117, align 8, !dbg !5268
  %add.ptr118 = getelementptr i8, i8* %124, i64 272, !dbg !5269
  call void @writel(i32 2, i8* %add.ptr118) #5, !dbg !5270
  br label %sw.epilog119, !dbg !5271

sw.epilog119:                                     ; preds = %sw.epilog105, %sw.bb116, %if.end115
  %125 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5272
  %mmio120 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %125, i32 0, i32 17, !dbg !5273
  %126 = load i8*, i8** %mmio120, align 8, !dbg !5273
  %add.ptr121 = getelementptr i8, i8* %126, i64 52, !dbg !5274
  call void @writew(i16 zeroext -1, i8* %add.ptr121) #5, !dbg !5275
  %127 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5276
  %mmio122 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %127, i32 0, i32 17, !dbg !5277
  %128 = load i8*, i8** %mmio122, align 8, !dbg !5277
  %add.ptr123 = getelementptr i8, i8* %128, i64 52, !dbg !5278
  %call124 = call zeroext i16 @readw(i8* %add.ptr123) #5, !dbg !5279
  %129 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5280
  %mmio125 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %129, i32 0, i32 17, !dbg !5281
  %130 = load i8*, i8** %mmio125, align 8, !dbg !5281
  %add.ptr126 = getelementptr i8, i8* %130, i64 48, !dbg !5282
  call void @writew(i16 zeroext 16, i8* %add.ptr126) #5, !dbg !5283
  %131 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5284
  %mmio127 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %131, i32 0, i32 17, !dbg !5285
  %132 = load i8*, i8** %mmio127, align 8, !dbg !5285
  %add.ptr128 = getelementptr i8, i8* %132, i64 40, !dbg !5286
  %call129 = call i32 @readl(i8* %add.ptr128) #5, !dbg !5287
  ret i32 0, !dbg !5288
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtd_ai_cmdtest(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_cmd* %cmd) #2 !dbg !5289 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %cmd.addr = alloca %struct.comedi_cmd*, align 8
  %err = alloca i32, align 4
  %arg = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5290, metadata !DIExpression()), !dbg !5291
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5292, metadata !DIExpression()), !dbg !5293
  store %struct.comedi_cmd* %cmd, %struct.comedi_cmd** %cmd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd.addr, metadata !5294, metadata !DIExpression()), !dbg !5295
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5296, metadata !DIExpression()), !dbg !5297
  store i32 0, i32* %err, align 4, !dbg !5297
  call void @llvm.dbg.declare(metadata i32* %arg, metadata !5298, metadata !DIExpression()), !dbg !5299
  %0 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5300
  %start_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %0, i32 0, i32 2, !dbg !5301
  %call = call i32 @comedi_check_trigger_src(i32* %start_src, i32 2) #5, !dbg !5302
  %1 = load i32, i32* %err, align 4, !dbg !5303
  %or = or i32 %1, %call, !dbg !5303
  store i32 %or, i32* %err, align 4, !dbg !5303
  %2 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5304
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %2, i32 0, i32 4, !dbg !5305
  %call1 = call i32 @comedi_check_trigger_src(i32* %scan_begin_src, i32 80) #5, !dbg !5306
  %3 = load i32, i32* %err, align 4, !dbg !5307
  %or2 = or i32 %3, %call1, !dbg !5307
  store i32 %or2, i32* %err, align 4, !dbg !5307
  %4 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5308
  %convert_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %4, i32 0, i32 6, !dbg !5309
  %call3 = call i32 @comedi_check_trigger_src(i32* %convert_src, i32 80) #5, !dbg !5310
  %5 = load i32, i32* %err, align 4, !dbg !5311
  %or4 = or i32 %5, %call3, !dbg !5311
  store i32 %or4, i32* %err, align 4, !dbg !5311
  %6 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5312
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %6, i32 0, i32 8, !dbg !5313
  %call5 = call i32 @comedi_check_trigger_src(i32* %scan_end_src, i32 32) #5, !dbg !5314
  %7 = load i32, i32* %err, align 4, !dbg !5315
  %or6 = or i32 %7, %call5, !dbg !5315
  store i32 %or6, i32* %err, align 4, !dbg !5315
  %8 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5316
  %stop_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %8, i32 0, i32 10, !dbg !5317
  %call7 = call i32 @comedi_check_trigger_src(i32* %stop_src, i32 33) #5, !dbg !5318
  %9 = load i32, i32* %err, align 4, !dbg !5319
  %or8 = or i32 %9, %call7, !dbg !5319
  store i32 %or8, i32* %err, align 4, !dbg !5319
  %10 = load i32, i32* %err, align 4, !dbg !5320
  %tobool = icmp ne i32 %10, 0, !dbg !5320
  br i1 %tobool, label %if.then, label %if.end, !dbg !5322

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !5323
  br label %return, !dbg !5323

if.end:                                           ; preds = %entry
  %11 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5324
  %scan_begin_src9 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %11, i32 0, i32 4, !dbg !5325
  %12 = load i32, i32* %scan_begin_src9, align 8, !dbg !5325
  %call10 = call i32 @comedi_check_trigger_is_unique(i32 %12) #5, !dbg !5326
  %13 = load i32, i32* %err, align 4, !dbg !5327
  %or11 = or i32 %13, %call10, !dbg !5327
  store i32 %or11, i32* %err, align 4, !dbg !5327
  %14 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5328
  %convert_src12 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %14, i32 0, i32 6, !dbg !5329
  %15 = load i32, i32* %convert_src12, align 8, !dbg !5329
  %call13 = call i32 @comedi_check_trigger_is_unique(i32 %15) #5, !dbg !5330
  %16 = load i32, i32* %err, align 4, !dbg !5331
  %or14 = or i32 %16, %call13, !dbg !5331
  store i32 %or14, i32* %err, align 4, !dbg !5331
  %17 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5332
  %stop_src15 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %17, i32 0, i32 10, !dbg !5333
  %18 = load i32, i32* %stop_src15, align 8, !dbg !5333
  %call16 = call i32 @comedi_check_trigger_is_unique(i32 %18) #5, !dbg !5334
  %19 = load i32, i32* %err, align 4, !dbg !5335
  %or17 = or i32 %19, %call16, !dbg !5335
  store i32 %or17, i32* %err, align 4, !dbg !5335
  %20 = load i32, i32* %err, align 4, !dbg !5336
  %tobool18 = icmp ne i32 %20, 0, !dbg !5336
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !5338

if.then19:                                        ; preds = %if.end
  store i32 2, i32* %retval, align 4, !dbg !5339
  br label %return, !dbg !5339

if.end20:                                         ; preds = %if.end
  %21 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5340
  %start_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %21, i32 0, i32 3, !dbg !5341
  %call21 = call i32 @comedi_check_trigger_arg_is(i32* %start_arg, i32 0) #5, !dbg !5342
  %22 = load i32, i32* %err, align 4, !dbg !5343
  %or22 = or i32 %22, %call21, !dbg !5343
  store i32 %or22, i32* %err, align 4, !dbg !5343
  %23 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5344
  %scan_begin_src23 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %23, i32 0, i32 4, !dbg !5346
  %24 = load i32, i32* %scan_begin_src23, align 8, !dbg !5346
  %cmp = icmp eq i32 %24, 16, !dbg !5347
  br i1 %cmp, label %if.then24, label %if.else59, !dbg !5348

if.then24:                                        ; preds = %if.end20
  %25 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5349
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %25, i32 0, i32 13, !dbg !5352
  %26 = load i32, i32* %chanlist_len, align 8, !dbg !5352
  %cmp25 = icmp eq i32 %26, 1, !dbg !5353
  br i1 %cmp25, label %if.then26, label %if.else, !dbg !5354

if.then26:                                        ; preds = %if.then24
  %27 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5355
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %27, i32 0, i32 5, !dbg !5358
  %call27 = call i32 @comedi_check_trigger_arg_min(i32* %scan_begin_arg, i32 875) #5, !dbg !5359
  %tobool28 = icmp ne i32 %call27, 0, !dbg !5359
  br i1 %tobool28, label %if.then29, label %if.end33, !dbg !5360

if.then29:                                        ; preds = %if.then26
  %28 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5361
  %scan_begin_arg30 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %28, i32 0, i32 5, !dbg !5363
  %call31 = call i32 @rtd_ns_to_timer(i32* %scan_begin_arg30, i32 131072) #5, !dbg !5364
  %29 = load i32, i32* %err, align 4, !dbg !5365
  %or32 = or i32 %29, -22, !dbg !5365
  store i32 %or32, i32* %err, align 4, !dbg !5365
  br label %if.end33, !dbg !5366

if.end33:                                         ; preds = %if.then29, %if.then26
  %30 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5367
  %scan_begin_arg34 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %30, i32 0, i32 5, !dbg !5369
  %call35 = call i32 @comedi_check_trigger_arg_max(i32* %scan_begin_arg34, i32 5000000) #5, !dbg !5370
  %tobool36 = icmp ne i32 %call35, 0, !dbg !5370
  br i1 %tobool36, label %if.then37, label %if.end41, !dbg !5371

if.then37:                                        ; preds = %if.end33
  %31 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5372
  %scan_begin_arg38 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %31, i32 0, i32 5, !dbg !5374
  %call39 = call i32 @rtd_ns_to_timer(i32* %scan_begin_arg38, i32 65536) #5, !dbg !5375
  %32 = load i32, i32* %err, align 4, !dbg !5376
  %or40 = or i32 %32, -22, !dbg !5376
  store i32 %or40, i32* %err, align 4, !dbg !5376
  br label %if.end41, !dbg !5377

if.end41:                                         ; preds = %if.then37, %if.end33
  br label %if.end58, !dbg !5378

if.else:                                          ; preds = %if.then24
  %33 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5379
  %scan_begin_arg42 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %33, i32 0, i32 5, !dbg !5382
  %call43 = call i32 @comedi_check_trigger_arg_min(i32* %scan_begin_arg42, i32 1625) #5, !dbg !5383
  %tobool44 = icmp ne i32 %call43, 0, !dbg !5383
  br i1 %tobool44, label %if.then45, label %if.end49, !dbg !5384

if.then45:                                        ; preds = %if.else
  %34 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5385
  %scan_begin_arg46 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %34, i32 0, i32 5, !dbg !5387
  %call47 = call i32 @rtd_ns_to_timer(i32* %scan_begin_arg46, i32 131072) #5, !dbg !5388
  %35 = load i32, i32* %err, align 4, !dbg !5389
  %or48 = or i32 %35, -22, !dbg !5389
  store i32 %or48, i32* %err, align 4, !dbg !5389
  br label %if.end49, !dbg !5390

if.end49:                                         ; preds = %if.then45, %if.else
  %36 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5391
  %scan_begin_arg50 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %36, i32 0, i32 5, !dbg !5393
  %call51 = call i32 @comedi_check_trigger_arg_max(i32* %scan_begin_arg50, i32 2097151875) #5, !dbg !5394
  %tobool52 = icmp ne i32 %call51, 0, !dbg !5394
  br i1 %tobool52, label %if.then53, label %if.end57, !dbg !5395

if.then53:                                        ; preds = %if.end49
  %37 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5396
  %scan_begin_arg54 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %37, i32 0, i32 5, !dbg !5398
  %call55 = call i32 @rtd_ns_to_timer(i32* %scan_begin_arg54, i32 65536) #5, !dbg !5399
  %38 = load i32, i32* %err, align 4, !dbg !5400
  %or56 = or i32 %38, -22, !dbg !5400
  store i32 %or56, i32* %err, align 4, !dbg !5400
  br label %if.end57, !dbg !5401

if.end57:                                         ; preds = %if.then53, %if.end49
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.end41
  br label %if.end63, !dbg !5402

if.else59:                                        ; preds = %if.end20
  %39 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5403
  %scan_begin_arg60 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %39, i32 0, i32 5, !dbg !5405
  %call61 = call i32 @comedi_check_trigger_arg_max(i32* %scan_begin_arg60, i32 9) #5, !dbg !5406
  %40 = load i32, i32* %err, align 4, !dbg !5407
  %or62 = or i32 %40, %call61, !dbg !5407
  store i32 %or62, i32* %err, align 4, !dbg !5407
  br label %if.end63

if.end63:                                         ; preds = %if.else59, %if.end58
  %41 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5408
  %convert_src64 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %41, i32 0, i32 6, !dbg !5410
  %42 = load i32, i32* %convert_src64, align 8, !dbg !5410
  %cmp65 = icmp eq i32 %42, 16, !dbg !5411
  br i1 %cmp65, label %if.then66, label %if.else103, !dbg !5412

if.then66:                                        ; preds = %if.end63
  %43 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5413
  %chanlist_len67 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %43, i32 0, i32 13, !dbg !5416
  %44 = load i32, i32* %chanlist_len67, align 8, !dbg !5416
  %cmp68 = icmp eq i32 %44, 1, !dbg !5417
  br i1 %cmp68, label %if.then69, label %if.else85, !dbg !5418

if.then69:                                        ; preds = %if.then66
  %45 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5419
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %45, i32 0, i32 7, !dbg !5422
  %call70 = call i32 @comedi_check_trigger_arg_min(i32* %convert_arg, i32 875) #5, !dbg !5423
  %tobool71 = icmp ne i32 %call70, 0, !dbg !5423
  br i1 %tobool71, label %if.then72, label %if.end76, !dbg !5424

if.then72:                                        ; preds = %if.then69
  %46 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5425
  %convert_arg73 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %46, i32 0, i32 7, !dbg !5427
  %call74 = call i32 @rtd_ns_to_timer(i32* %convert_arg73, i32 131072) #5, !dbg !5428
  %47 = load i32, i32* %err, align 4, !dbg !5429
  %or75 = or i32 %47, -22, !dbg !5429
  store i32 %or75, i32* %err, align 4, !dbg !5429
  br label %if.end76, !dbg !5430

if.end76:                                         ; preds = %if.then72, %if.then69
  %48 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5431
  %convert_arg77 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %48, i32 0, i32 7, !dbg !5433
  %call78 = call i32 @comedi_check_trigger_arg_max(i32* %convert_arg77, i32 5000000) #5, !dbg !5434
  %tobool79 = icmp ne i32 %call78, 0, !dbg !5434
  br i1 %tobool79, label %if.then80, label %if.end84, !dbg !5435

if.then80:                                        ; preds = %if.end76
  %49 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5436
  %convert_arg81 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %49, i32 0, i32 7, !dbg !5438
  %call82 = call i32 @rtd_ns_to_timer(i32* %convert_arg81, i32 65536) #5, !dbg !5439
  %50 = load i32, i32* %err, align 4, !dbg !5440
  %or83 = or i32 %50, -22, !dbg !5440
  store i32 %or83, i32* %err, align 4, !dbg !5440
  br label %if.end84, !dbg !5441

if.end84:                                         ; preds = %if.then80, %if.end76
  br label %if.end102, !dbg !5442

if.else85:                                        ; preds = %if.then66
  %51 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5443
  %convert_arg86 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %51, i32 0, i32 7, !dbg !5446
  %call87 = call i32 @comedi_check_trigger_arg_min(i32* %convert_arg86, i32 1625) #5, !dbg !5447
  %tobool88 = icmp ne i32 %call87, 0, !dbg !5447
  br i1 %tobool88, label %if.then89, label %if.end93, !dbg !5448

if.then89:                                        ; preds = %if.else85
  %52 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5449
  %convert_arg90 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %52, i32 0, i32 7, !dbg !5451
  %call91 = call i32 @rtd_ns_to_timer(i32* %convert_arg90, i32 131072) #5, !dbg !5452
  %53 = load i32, i32* %err, align 4, !dbg !5453
  %or92 = or i32 %53, -22, !dbg !5453
  store i32 %or92, i32* %err, align 4, !dbg !5453
  br label %if.end93, !dbg !5454

if.end93:                                         ; preds = %if.then89, %if.else85
  %54 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5455
  %convert_arg94 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %54, i32 0, i32 7, !dbg !5457
  %call95 = call i32 @comedi_check_trigger_arg_max(i32* %convert_arg94, i32 2097151875) #5, !dbg !5458
  %tobool96 = icmp ne i32 %call95, 0, !dbg !5458
  br i1 %tobool96, label %if.then97, label %if.end101, !dbg !5459

if.then97:                                        ; preds = %if.end93
  %55 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5460
  %convert_arg98 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %55, i32 0, i32 7, !dbg !5462
  %call99 = call i32 @rtd_ns_to_timer(i32* %convert_arg98, i32 65536) #5, !dbg !5463
  %56 = load i32, i32* %err, align 4, !dbg !5464
  %or100 = or i32 %56, -22, !dbg !5464
  store i32 %or100, i32* %err, align 4, !dbg !5464
  br label %if.end101, !dbg !5465

if.end101:                                        ; preds = %if.then97, %if.end93
  br label %if.end102

if.end102:                                        ; preds = %if.end101, %if.end84
  br label %if.end107, !dbg !5466

if.else103:                                       ; preds = %if.end63
  %57 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5467
  %convert_arg104 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %57, i32 0, i32 7, !dbg !5469
  %call105 = call i32 @comedi_check_trigger_arg_max(i32* %convert_arg104, i32 9) #5, !dbg !5470
  %58 = load i32, i32* %err, align 4, !dbg !5471
  %or106 = or i32 %58, %call105, !dbg !5471
  store i32 %or106, i32* %err, align 4, !dbg !5471
  br label %if.end107

if.end107:                                        ; preds = %if.else103, %if.end102
  %59 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5472
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %59, i32 0, i32 9, !dbg !5473
  %60 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5474
  %chanlist_len108 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %60, i32 0, i32 13, !dbg !5475
  %61 = load i32, i32* %chanlist_len108, align 8, !dbg !5475
  %call109 = call i32 @comedi_check_trigger_arg_is(i32* %scan_end_arg, i32 %61) #5, !dbg !5476
  %62 = load i32, i32* %err, align 4, !dbg !5477
  %or110 = or i32 %62, %call109, !dbg !5477
  store i32 %or110, i32* %err, align 4, !dbg !5477
  %63 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5478
  %stop_src111 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %63, i32 0, i32 10, !dbg !5480
  %64 = load i32, i32* %stop_src111, align 8, !dbg !5480
  %cmp112 = icmp eq i32 %64, 32, !dbg !5481
  br i1 %cmp112, label %if.then113, label %if.else116, !dbg !5482

if.then113:                                       ; preds = %if.end107
  %65 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5483
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %65, i32 0, i32 11, !dbg !5484
  %call114 = call i32 @comedi_check_trigger_arg_min(i32* %stop_arg, i32 1) #5, !dbg !5485
  %66 = load i32, i32* %err, align 4, !dbg !5486
  %or115 = or i32 %66, %call114, !dbg !5486
  store i32 %or115, i32* %err, align 4, !dbg !5486
  br label %if.end120, !dbg !5487

if.else116:                                       ; preds = %if.end107
  %67 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5488
  %stop_arg117 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %67, i32 0, i32 11, !dbg !5489
  %call118 = call i32 @comedi_check_trigger_arg_is(i32* %stop_arg117, i32 0) #5, !dbg !5490
  %68 = load i32, i32* %err, align 4, !dbg !5491
  %or119 = or i32 %68, %call118, !dbg !5491
  store i32 %or119, i32* %err, align 4, !dbg !5491
  br label %if.end120

if.end120:                                        ; preds = %if.else116, %if.then113
  %69 = load i32, i32* %err, align 4, !dbg !5492
  %tobool121 = icmp ne i32 %69, 0, !dbg !5492
  br i1 %tobool121, label %if.then122, label %if.end123, !dbg !5494

if.then122:                                       ; preds = %if.end120
  store i32 3, i32* %retval, align 4, !dbg !5495
  br label %return, !dbg !5495

if.end123:                                        ; preds = %if.end120
  %70 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5496
  %scan_begin_src124 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %70, i32 0, i32 4, !dbg !5498
  %71 = load i32, i32* %scan_begin_src124, align 8, !dbg !5498
  %cmp125 = icmp eq i32 %71, 16, !dbg !5499
  br i1 %cmp125, label %if.then126, label %if.end132, !dbg !5500

if.then126:                                       ; preds = %if.end123
  %72 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5501
  %scan_begin_arg127 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %72, i32 0, i32 5, !dbg !5503
  %73 = load i32, i32* %scan_begin_arg127, align 4, !dbg !5503
  store i32 %73, i32* %arg, align 4, !dbg !5504
  %74 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5505
  %flags = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %74, i32 0, i32 1, !dbg !5506
  %75 = load i32, i32* %flags, align 4, !dbg !5506
  %call128 = call i32 @rtd_ns_to_timer(i32* %arg, i32 %75) #5, !dbg !5507
  %76 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5508
  %scan_begin_arg129 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %76, i32 0, i32 5, !dbg !5509
  %77 = load i32, i32* %arg, align 4, !dbg !5510
  %call130 = call i32 @comedi_check_trigger_arg_is(i32* %scan_begin_arg129, i32 %77) #5, !dbg !5511
  %78 = load i32, i32* %err, align 4, !dbg !5512
  %or131 = or i32 %78, %call130, !dbg !5512
  store i32 %or131, i32* %err, align 4, !dbg !5512
  br label %if.end132, !dbg !5513

if.end132:                                        ; preds = %if.then126, %if.end123
  %79 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5514
  %convert_src133 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %79, i32 0, i32 6, !dbg !5516
  %80 = load i32, i32* %convert_src133, align 8, !dbg !5516
  %cmp134 = icmp eq i32 %80, 16, !dbg !5517
  br i1 %cmp134, label %if.then135, label %if.end151, !dbg !5518

if.then135:                                       ; preds = %if.end132
  %81 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5519
  %convert_arg136 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %81, i32 0, i32 7, !dbg !5521
  %82 = load i32, i32* %convert_arg136, align 4, !dbg !5521
  store i32 %82, i32* %arg, align 4, !dbg !5522
  %83 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5523
  %flags137 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %83, i32 0, i32 1, !dbg !5524
  %84 = load i32, i32* %flags137, align 4, !dbg !5524
  %call138 = call i32 @rtd_ns_to_timer(i32* %arg, i32 %84) #5, !dbg !5525
  %85 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5526
  %convert_arg139 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %85, i32 0, i32 7, !dbg !5527
  %86 = load i32, i32* %arg, align 4, !dbg !5528
  %call140 = call i32 @comedi_check_trigger_arg_is(i32* %convert_arg139, i32 %86) #5, !dbg !5529
  %87 = load i32, i32* %err, align 4, !dbg !5530
  %or141 = or i32 %87, %call140, !dbg !5530
  store i32 %or141, i32* %err, align 4, !dbg !5530
  %88 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5531
  %scan_begin_src142 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %88, i32 0, i32 4, !dbg !5533
  %89 = load i32, i32* %scan_begin_src142, align 8, !dbg !5533
  %cmp143 = icmp eq i32 %89, 16, !dbg !5534
  br i1 %cmp143, label %if.then144, label %if.end150, !dbg !5535

if.then144:                                       ; preds = %if.then135
  %90 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5536
  %convert_arg145 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %90, i32 0, i32 7, !dbg !5538
  %91 = load i32, i32* %convert_arg145, align 4, !dbg !5538
  %92 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5539
  %scan_end_arg146 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %92, i32 0, i32 9, !dbg !5540
  %93 = load i32, i32* %scan_end_arg146, align 4, !dbg !5540
  %mul = mul i32 %91, %93, !dbg !5541
  store i32 %mul, i32* %arg, align 4, !dbg !5542
  %94 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5543
  %scan_begin_arg147 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %94, i32 0, i32 5, !dbg !5544
  %95 = load i32, i32* %arg, align 4, !dbg !5545
  %call148 = call i32 @comedi_check_trigger_arg_min(i32* %scan_begin_arg147, i32 %95) #5, !dbg !5546
  %96 = load i32, i32* %err, align 4, !dbg !5547
  %or149 = or i32 %96, %call148, !dbg !5547
  store i32 %or149, i32* %err, align 4, !dbg !5547
  br label %if.end150, !dbg !5548

if.end150:                                        ; preds = %if.then144, %if.then135
  br label %if.end151, !dbg !5549

if.end151:                                        ; preds = %if.end150, %if.end132
  %97 = load i32, i32* %err, align 4, !dbg !5550
  %tobool152 = icmp ne i32 %97, 0, !dbg !5550
  br i1 %tobool152, label %if.then153, label %if.end154, !dbg !5552

if.then153:                                       ; preds = %if.end151
  store i32 4, i32* %retval, align 4, !dbg !5553
  br label %return, !dbg !5553

if.end154:                                        ; preds = %if.end151
  store i32 0, i32* %retval, align 4, !dbg !5554
  br label %return, !dbg !5554

return:                                           ; preds = %if.end154, %if.then153, %if.then122, %if.then19, %if.then
  %98 = load i32, i32* %retval, align 4, !dbg !5555
  ret i32 %98, !dbg !5555
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtd_ai_cancel(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #2 !dbg !5556 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %devpriv = alloca %struct.rtd_private*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5557, metadata !DIExpression()), !dbg !5558
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5559, metadata !DIExpression()), !dbg !5560
  call void @llvm.dbg.declare(metadata %struct.rtd_private** %devpriv, metadata !5561, metadata !DIExpression()), !dbg !5562
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5563
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5564
  %1 = load i8*, i8** %private, align 8, !dbg !5564
  %2 = bitcast i8* %1 to %struct.rtd_private*, !dbg !5563
  store %struct.rtd_private* %2, %struct.rtd_private** %devpriv, align 8, !dbg !5562
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5565
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %3, i32 0, i32 17, !dbg !5566
  %4 = load i8*, i8** %mmio, align 8, !dbg !5566
  %add.ptr = getelementptr i8, i8* %4, i64 280, !dbg !5567
  call void @writel(i32 0, i8* %add.ptr) #5, !dbg !5568
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5569
  %mmio1 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 17, !dbg !5570
  %6 = load i8*, i8** %mmio1, align 8, !dbg !5570
  %add.ptr2 = getelementptr i8, i8* %6, i64 40, !dbg !5571
  call void @writel(i32 0, i8* %add.ptr2) #5, !dbg !5572
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5573
  %mmio3 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 17, !dbg !5574
  %8 = load i8*, i8** %mmio3, align 8, !dbg !5574
  %add.ptr4 = getelementptr i8, i8* %8, i64 268, !dbg !5575
  call void @writel(i32 0, i8* %add.ptr4) #5, !dbg !5576
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5577
  %mmio5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 17, !dbg !5578
  %10 = load i8*, i8** %mmio5, align 8, !dbg !5578
  %add.ptr6 = getelementptr i8, i8* %10, i64 48, !dbg !5579
  call void @writew(i16 zeroext 0, i8* %add.ptr6) #5, !dbg !5580
  %11 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !5581
  %ai_count = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %11, i32 0, i32 2, !dbg !5582
  store i64 0, i64* %ai_count, align 8, !dbg !5583
  %12 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5584
  %mmio7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 17, !dbg !5585
  %13 = load i8*, i8** %mmio7, align 8, !dbg !5585
  %add.ptr8 = getelementptr i8, i8* %13, i64 300, !dbg !5586
  call void @writel(i32 0, i8* %add.ptr8) #5, !dbg !5587
  ret i32 0, !dbg !5588
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtd_ao_insn_write(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5589 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %devpriv = alloca %struct.rtd_private*, align 8
  %chan = alloca i32, align 4
  %range = alloca i32, align 4
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %val = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5590, metadata !DIExpression()), !dbg !5591
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5592, metadata !DIExpression()), !dbg !5593
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5594, metadata !DIExpression()), !dbg !5595
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5596, metadata !DIExpression()), !dbg !5597
  call void @llvm.dbg.declare(metadata %struct.rtd_private** %devpriv, metadata !5598, metadata !DIExpression()), !dbg !5599
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5600
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5601
  %1 = load i8*, i8** %private, align 8, !dbg !5601
  %2 = bitcast i8* %1 to %struct.rtd_private*, !dbg !5600
  store %struct.rtd_private* %2, %struct.rtd_private** %devpriv, align 8, !dbg !5599
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !5602, metadata !DIExpression()), !dbg !5603
  %3 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5604
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %3, i32 0, i32 4, !dbg !5604
  %4 = load i32, i32* %chanspec, align 4, !dbg !5604
  %and = and i32 %4, 65535, !dbg !5604
  store i32 %and, i32* %chan, align 4, !dbg !5603
  call void @llvm.dbg.declare(metadata i32* %range, metadata !5605, metadata !DIExpression()), !dbg !5606
  %5 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5607
  %chanspec1 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %5, i32 0, i32 4, !dbg !5607
  %6 = load i32, i32* %chanspec1, align 4, !dbg !5607
  %shr = lshr i32 %6, 16, !dbg !5607
  %and2 = and i32 %shr, 255, !dbg !5607
  store i32 %and2, i32* %range, align 4, !dbg !5606
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5608, metadata !DIExpression()), !dbg !5609
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5610, metadata !DIExpression()), !dbg !5611
  %7 = load i32, i32* %range, align 4, !dbg !5612
  %and3 = and i32 %7, 7, !dbg !5613
  %conv = trunc i32 %and3 to i16, !dbg !5612
  %8 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5614
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 17, !dbg !5615
  %9 = load i8*, i8** %mmio, align 8, !dbg !5615
  %10 = load i32, i32* %chan, align 4, !dbg !5616
  %mul = mul i32 %10, 20, !dbg !5616
  %add = add i32 336, %mul, !dbg !5616
  %idx.ext = zext i32 %add to i64, !dbg !5617
  %add.ptr = getelementptr i8, i8* %9, i64 %idx.ext, !dbg !5617
  call void @writew(i16 zeroext %conv, i8* %add.ptr) #5, !dbg !5618
  store i32 0, i32* %i, align 4, !dbg !5619
  br label %for.cond, !dbg !5621

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %i, align 4, !dbg !5622
  %12 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5624
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %12, i32 0, i32 1, !dbg !5625
  %13 = load i32, i32* %n, align 4, !dbg !5625
  %cmp = icmp ult i32 %11, %13, !dbg !5626
  br i1 %cmp, label %for.body, label %for.end, !dbg !5627

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %val, metadata !5628, metadata !DIExpression()), !dbg !5630
  %14 = load i32*, i32** %data.addr, align 8, !dbg !5631
  %15 = load i32, i32* %i, align 4, !dbg !5632
  %idxprom = sext i32 %15 to i64, !dbg !5631
  %arrayidx = getelementptr i32, i32* %14, i64 %idxprom, !dbg !5631
  %16 = load i32, i32* %arrayidx, align 4, !dbg !5631
  store i32 %16, i32* %val, align 4, !dbg !5630
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5633
  %18 = load i32, i32* %range, align 4, !dbg !5635
  %call = call zeroext i1 @comedi_range_is_bipolar(%struct.comedi_subdevice* %17, i32 %18) #5, !dbg !5636
  br i1 %call, label %if.then, label %if.end, !dbg !5637

if.then:                                          ; preds = %for.body
  %19 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5638
  %20 = load i32, i32* %val, align 4, !dbg !5640
  %call5 = call i32 @comedi_offset_munge(%struct.comedi_subdevice* %19, i32 %20) #5, !dbg !5641
  store i32 %call5, i32* %val, align 4, !dbg !5642
  %21 = load i32, i32* %val, align 4, !dbg !5643
  %22 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5644
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %22, i32 0, i32 13, !dbg !5645
  %23 = load i32, i32* %maxdata, align 8, !dbg !5645
  %add6 = add i32 %23, 1, !dbg !5646
  %shr7 = lshr i32 %add6, 1, !dbg !5647
  %and8 = and i32 %21, %shr7, !dbg !5648
  %shl = shl i32 %and8, 1, !dbg !5649
  %24 = load i32, i32* %val, align 4, !dbg !5650
  %or = or i32 %24, %shl, !dbg !5650
  store i32 %or, i32* %val, align 4, !dbg !5650
  br label %if.end, !dbg !5651

if.end:                                           ; preds = %if.then, %for.body
  %25 = load i32, i32* %val, align 4, !dbg !5652
  %shl9 = shl i32 %25, 3, !dbg !5652
  store i32 %shl9, i32* %val, align 4, !dbg !5652
  %26 = load i32, i32* %val, align 4, !dbg !5653
  %conv10 = trunc i32 %26 to i16, !dbg !5653
  %27 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !5654
  %las1 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %27, i32 0, i32 0, !dbg !5655
  %28 = load i8*, i8** %las1, align 8, !dbg !5655
  %29 = load i32, i32* %chan, align 4, !dbg !5656
  %mul11 = mul i32 %29, 4, !dbg !5656
  %add12 = add i32 8, %mul11, !dbg !5656
  %idx.ext13 = zext i32 %add12 to i64, !dbg !5657
  %add.ptr14 = getelementptr i8, i8* %28, i64 %idx.ext13, !dbg !5657
  call void @writew(i16 zeroext %conv10, i8* %add.ptr14) #5, !dbg !5658
  %30 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5659
  %mmio15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 17, !dbg !5660
  %31 = load i8*, i8** %mmio15, align 8, !dbg !5660
  %32 = load i32, i32* %chan, align 4, !dbg !5661
  %mul16 = mul i32 %32, 4, !dbg !5661
  %add17 = add i32 20, %mul16, !dbg !5661
  %idx.ext18 = zext i32 %add17 to i64, !dbg !5662
  %add.ptr19 = getelementptr i8, i8* %31, i64 %idx.ext18, !dbg !5662
  call void @writew(i16 zeroext 0, i8* %add.ptr19) #5, !dbg !5663
  %33 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5664
  %34 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5665
  %35 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5666
  %call20 = call i32 @comedi_timeout(%struct.comedi_device* %33, %struct.comedi_subdevice* %34, %struct.comedi_insn* %35, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i64)* @rtd_ao_eoc, i64 0) #5, !dbg !5667
  store i32 %call20, i32* %ret, align 4, !dbg !5668
  %36 = load i32, i32* %ret, align 4, !dbg !5669
  %tobool = icmp ne i32 %36, 0, !dbg !5669
  br i1 %tobool, label %if.then21, label %if.end22, !dbg !5671

if.then21:                                        ; preds = %if.end
  %37 = load i32, i32* %ret, align 4, !dbg !5672
  store i32 %37, i32* %retval, align 4, !dbg !5673
  br label %return, !dbg !5673

if.end22:                                         ; preds = %if.end
  %38 = load i32*, i32** %data.addr, align 8, !dbg !5674
  %39 = load i32, i32* %i, align 4, !dbg !5675
  %idxprom23 = sext i32 %39 to i64, !dbg !5674
  %arrayidx24 = getelementptr i32, i32* %38, i64 %idxprom23, !dbg !5674
  %40 = load i32, i32* %arrayidx24, align 4, !dbg !5674
  %41 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5676
  %readback = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %41, i32 0, i32 32, !dbg !5677
  %42 = load i32*, i32** %readback, align 8, !dbg !5677
  %43 = load i32, i32* %chan, align 4, !dbg !5678
  %idxprom25 = zext i32 %43 to i64, !dbg !5676
  %arrayidx26 = getelementptr i32, i32* %42, i64 %idxprom25, !dbg !5676
  store i32 %40, i32* %arrayidx26, align 4, !dbg !5679
  br label %for.inc, !dbg !5680

for.inc:                                          ; preds = %if.end22
  %44 = load i32, i32* %i, align 4, !dbg !5681
  %inc = add i32 %44, 1, !dbg !5681
  store i32 %inc, i32* %i, align 4, !dbg !5681
  br label %for.cond, !dbg !5682, !llvm.loop !5683

for.end:                                          ; preds = %for.cond
  %45 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5685
  %n27 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %45, i32 0, i32 1, !dbg !5686
  %46 = load i32, i32* %n27, align 4, !dbg !5686
  store i32 %46, i32* %retval, align 4, !dbg !5687
  br label %return, !dbg !5687

return:                                           ; preds = %for.end, %if.then21
  %47 = load i32, i32* %retval, align 4, !dbg !5688
  ret i32 %47, !dbg !5688
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_alloc_subdev_readback(%struct.comedi_subdevice*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtd_dio_insn_bits(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5689 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5690, metadata !DIExpression()), !dbg !5691
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5692, metadata !DIExpression()), !dbg !5693
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5694, metadata !DIExpression()), !dbg !5695
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5696, metadata !DIExpression()), !dbg !5697
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5698
  %1 = load i32*, i32** %data.addr, align 8, !dbg !5700
  %call = call i32 @comedi_dio_update_state(%struct.comedi_subdevice* %0, i32* %1) #5, !dbg !5701
  %tobool = icmp ne i32 %call, 0, !dbg !5701
  br i1 %tobool, label %if.then, label %if.end, !dbg !5702

if.then:                                          ; preds = %entry
  %2 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5703
  %state = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %2, i32 0, i32 29, !dbg !5704
  %3 = load i32, i32* %state, align 4, !dbg !5704
  %and = and i32 %3, 255, !dbg !5705
  %conv = trunc i32 %and to i16, !dbg !5703
  %4 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5706
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 17, !dbg !5707
  %5 = load i8*, i8** %mmio, align 8, !dbg !5707
  %add.ptr = getelementptr i8, i8* %5, i64 112, !dbg !5708
  call void @writew(i16 zeroext %conv, i8* %add.ptr) #5, !dbg !5709
  br label %if.end, !dbg !5709

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5710
  %mmio1 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 17, !dbg !5711
  %7 = load i8*, i8** %mmio1, align 8, !dbg !5711
  %add.ptr2 = getelementptr i8, i8* %7, i64 112, !dbg !5712
  %call3 = call zeroext i16 @readw(i8* %add.ptr2) #5, !dbg !5713
  %conv4 = zext i16 %call3 to i32, !dbg !5713
  %and5 = and i32 %conv4, 255, !dbg !5714
  %8 = load i32*, i32** %data.addr, align 8, !dbg !5715
  %arrayidx = getelementptr i32, i32* %8, i64 1, !dbg !5715
  store i32 %and5, i32* %arrayidx, align 4, !dbg !5716
  %9 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5717
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %9, i32 0, i32 1, !dbg !5718
  %10 = load i32, i32* %n, align 4, !dbg !5718
  ret i32 %10, !dbg !5719
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtd_dio_insn_config(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5720 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5721, metadata !DIExpression()), !dbg !5722
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5723, metadata !DIExpression()), !dbg !5724
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5725, metadata !DIExpression()), !dbg !5726
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5727, metadata !DIExpression()), !dbg !5728
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5729, metadata !DIExpression()), !dbg !5730
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5731
  %1 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5732
  %2 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5733
  %3 = load i32*, i32** %data.addr, align 8, !dbg !5734
  %call = call i32 @comedi_dio_insn_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3, i32 0) #5, !dbg !5735
  store i32 %call, i32* %ret, align 4, !dbg !5736
  %4 = load i32, i32* %ret, align 4, !dbg !5737
  %tobool = icmp ne i32 %4, 0, !dbg !5737
  br i1 %tobool, label %if.then, label %if.end, !dbg !5739

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !5740
  store i32 %5, i32* %retval, align 4, !dbg !5741
  br label %return, !dbg !5741

if.end:                                           ; preds = %entry
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5742
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 17, !dbg !5743
  %7 = load i8*, i8** %mmio, align 8, !dbg !5743
  %add.ptr = getelementptr i8, i8* %7, i64 124, !dbg !5744
  call void @writew(i16 zeroext 1, i8* %add.ptr) #5, !dbg !5745
  %8 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5746
  %io_bits = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %8, i32 0, i32 12, !dbg !5747
  %9 = load i32, i32* %io_bits, align 4, !dbg !5747
  %and = and i32 %9, 255, !dbg !5748
  %conv = trunc i32 %and to i16, !dbg !5746
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5749
  %mmio1 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 17, !dbg !5750
  %11 = load i8*, i8** %mmio1, align 8, !dbg !5750
  %add.ptr2 = getelementptr i8, i8* %11, i64 120, !dbg !5751
  call void @writew(i16 zeroext %conv, i8* %add.ptr2) #5, !dbg !5752
  %12 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5753
  %mmio3 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 17, !dbg !5754
  %13 = load i8*, i8** %mmio3, align 8, !dbg !5754
  %add.ptr4 = getelementptr i8, i8* %13, i64 124, !dbg !5755
  call void @writew(i16 zeroext 0, i8* %add.ptr4) #5, !dbg !5756
  %14 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5757
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %14, i32 0, i32 1, !dbg !5758
  %15 = load i32, i32* %n, align 4, !dbg !5758
  store i32 %15, i32* %retval, align 4, !dbg !5759
  br label %return, !dbg !5759

return:                                           ; preds = %if.end, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !5760
  ret i32 %16, !dbg !5760
}

; Function Attrs: noredzone
declare dso_local %struct.comedi_8254* @comedi_8254_mm_init(i8*, i32, i32, i32) #1

; Function Attrs: noredzone
declare dso_local void @comedi_8254_subdevice_init(%struct.comedi_subdevice*, %struct.comedi_8254*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtd_counter_insn_config(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5761 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %devpriv = alloca %struct.rtd_private*, align 8
  %chan = alloca i32, align 4
  %max_src = alloca i32, align 4
  %src = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5762, metadata !DIExpression()), !dbg !5763
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5764, metadata !DIExpression()), !dbg !5765
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5766, metadata !DIExpression()), !dbg !5767
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5768, metadata !DIExpression()), !dbg !5769
  call void @llvm.dbg.declare(metadata %struct.rtd_private** %devpriv, metadata !5770, metadata !DIExpression()), !dbg !5771
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5772
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5773
  %1 = load i8*, i8** %private, align 8, !dbg !5773
  %2 = bitcast i8* %1 to %struct.rtd_private*, !dbg !5772
  store %struct.rtd_private* %2, %struct.rtd_private** %devpriv, align 8, !dbg !5771
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !5774, metadata !DIExpression()), !dbg !5775
  %3 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5776
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %3, i32 0, i32 4, !dbg !5776
  %4 = load i32, i32* %chanspec, align 4, !dbg !5776
  %and = and i32 %4, 65535, !dbg !5776
  store i32 %and, i32* %chan, align 4, !dbg !5775
  call void @llvm.dbg.declare(metadata i32* %max_src, metadata !5777, metadata !DIExpression()), !dbg !5778
  call void @llvm.dbg.declare(metadata i32* %src, metadata !5779, metadata !DIExpression()), !dbg !5780
  %5 = load i32*, i32** %data.addr, align 8, !dbg !5781
  %arrayidx = getelementptr i32, i32* %5, i64 0, !dbg !5781
  %6 = load i32, i32* %arrayidx, align 4, !dbg !5781
  switch i32 %6, label %sw.default43 [
    i32 2001, label %sw.bb
    i32 2002, label %sw.bb5
    i32 2003, label %sw.bb11
    i32 2004, label %sw.bb29
  ], !dbg !5782

sw.bb:                                            ; preds = %entry
  %7 = load i32*, i32** %data.addr, align 8, !dbg !5783
  %arrayidx1 = getelementptr i32, i32* %7, i64 2, !dbg !5783
  %8 = load i32, i32* %arrayidx1, align 4, !dbg !5783
  store i32 %8, i32* %src, align 4, !dbg !5785
  %9 = load i32, i32* %chan, align 4, !dbg !5786
  %cmp = icmp eq i32 %9, 0, !dbg !5787
  %10 = zext i1 %cmp to i64, !dbg !5788
  %cond = select i1 %cmp, i32 3, i32 4, !dbg !5788
  store i32 %cond, i32* %max_src, align 4, !dbg !5789
  %11 = load i32, i32* %src, align 4, !dbg !5790
  %12 = load i32, i32* %max_src, align 4, !dbg !5792
  %cmp2 = icmp ugt i32 %11, %12, !dbg !5793
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5794

if.then:                                          ; preds = %sw.bb
  store i32 -22, i32* %retval, align 4, !dbg !5795
  br label %return, !dbg !5795

if.end:                                           ; preds = %sw.bb
  %13 = load i32, i32* %src, align 4, !dbg !5796
  %conv = trunc i32 %13 to i8, !dbg !5796
  %14 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !5797
  %timer_gate_src = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %14, i32 0, i32 6, !dbg !5798
  %15 = load i32, i32* %chan, align 4, !dbg !5799
  %idxprom = zext i32 %15 to i64, !dbg !5797
  %arrayidx3 = getelementptr [3 x i8], [3 x i8]* %timer_gate_src, i64 0, i64 %idxprom, !dbg !5797
  store i8 %conv, i8* %arrayidx3, align 1, !dbg !5800
  %16 = load i32, i32* %src, align 4, !dbg !5801
  %conv4 = trunc i32 %16 to i8, !dbg !5801
  %17 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5802
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 17, !dbg !5803
  %18 = load i8*, i8** %mmio, align 8, !dbg !5803
  %19 = load i32, i32* %chan, align 4, !dbg !5804
  %mul = mul i32 %19, 8, !dbg !5804
  %add = add i32 432, %mul, !dbg !5804
  %idx.ext = zext i32 %add to i64, !dbg !5805
  %add.ptr = getelementptr i8, i8* %18, i64 %idx.ext, !dbg !5805
  call void @writeb(i8 zeroext %conv4, i8* %add.ptr) #5, !dbg !5806
  br label %sw.epilog44, !dbg !5807

sw.bb5:                                           ; preds = %entry
  %20 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !5808
  %timer_gate_src6 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %20, i32 0, i32 6, !dbg !5809
  %21 = load i32, i32* %chan, align 4, !dbg !5810
  %idxprom7 = zext i32 %21 to i64, !dbg !5808
  %arrayidx8 = getelementptr [3 x i8], [3 x i8]* %timer_gate_src6, i64 0, i64 %idxprom7, !dbg !5808
  %22 = load i8, i8* %arrayidx8, align 1, !dbg !5808
  %conv9 = zext i8 %22 to i32, !dbg !5808
  %23 = load i32*, i32** %data.addr, align 8, !dbg !5811
  %arrayidx10 = getelementptr i32, i32* %23, i64 2, !dbg !5811
  store i32 %conv9, i32* %arrayidx10, align 4, !dbg !5812
  br label %sw.epilog44, !dbg !5813

sw.bb11:                                          ; preds = %entry
  %24 = load i32*, i32** %data.addr, align 8, !dbg !5814
  %arrayidx12 = getelementptr i32, i32* %24, i64 1, !dbg !5814
  %25 = load i32, i32* %arrayidx12, align 4, !dbg !5814
  store i32 %25, i32* %src, align 4, !dbg !5815
  %26 = load i32, i32* %chan, align 4, !dbg !5816
  switch i32 %26, label %sw.default [
    i32 0, label %sw.bb13
    i32 1, label %sw.bb14
    i32 2, label %sw.bb15
  ], !dbg !5817

sw.bb13:                                          ; preds = %sw.bb11
  store i32 3, i32* %max_src, align 4, !dbg !5818
  br label %sw.epilog, !dbg !5820

sw.bb14:                                          ; preds = %sw.bb11
  store i32 5, i32* %max_src, align 4, !dbg !5821
  br label %sw.epilog, !dbg !5822

sw.bb15:                                          ; preds = %sw.bb11
  store i32 4, i32* %max_src, align 4, !dbg !5823
  br label %sw.epilog, !dbg !5824

sw.default:                                       ; preds = %sw.bb11
  store i32 -22, i32* %retval, align 4, !dbg !5825
  br label %return, !dbg !5825

sw.epilog:                                        ; preds = %sw.bb15, %sw.bb14, %sw.bb13
  %27 = load i32, i32* %src, align 4, !dbg !5826
  %28 = load i32, i32* %max_src, align 4, !dbg !5828
  %cmp16 = icmp ugt i32 %27, %28, !dbg !5829
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !5830

if.then18:                                        ; preds = %sw.epilog
  store i32 -22, i32* %retval, align 4, !dbg !5831
  br label %return, !dbg !5831

if.end19:                                         ; preds = %sw.epilog
  %29 = load i32, i32* %src, align 4, !dbg !5832
  %conv20 = trunc i32 %29 to i8, !dbg !5832
  %30 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !5833
  %timer_clk_src = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %30, i32 0, i32 7, !dbg !5834
  %31 = load i32, i32* %chan, align 4, !dbg !5835
  %idxprom21 = zext i32 %31 to i64, !dbg !5833
  %arrayidx22 = getelementptr [3 x i8], [3 x i8]* %timer_clk_src, i64 0, i64 %idxprom21, !dbg !5833
  store i8 %conv20, i8* %arrayidx22, align 1, !dbg !5836
  %32 = load i32, i32* %src, align 4, !dbg !5837
  %conv23 = trunc i32 %32 to i8, !dbg !5837
  %33 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5838
  %mmio24 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %33, i32 0, i32 17, !dbg !5839
  %34 = load i8*, i8** %mmio24, align 8, !dbg !5839
  %35 = load i32, i32* %chan, align 4, !dbg !5840
  %mul25 = mul i32 %35, 8, !dbg !5840
  %add26 = add i32 428, %mul25, !dbg !5840
  %idx.ext27 = zext i32 %add26 to i64, !dbg !5841
  %add.ptr28 = getelementptr i8, i8* %34, i64 %idx.ext27, !dbg !5841
  call void @writeb(i8 zeroext %conv23, i8* %add.ptr28) #5, !dbg !5842
  br label %sw.epilog44, !dbg !5843

sw.bb29:                                          ; preds = %entry
  %36 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !5844
  %timer_clk_src30 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %36, i32 0, i32 7, !dbg !5845
  %37 = load i32, i32* %chan, align 4, !dbg !5846
  %idxprom31 = zext i32 %37 to i64, !dbg !5844
  %arrayidx32 = getelementptr [3 x i8], [3 x i8]* %timer_clk_src30, i64 0, i64 %idxprom31, !dbg !5844
  %38 = load i8, i8* %arrayidx32, align 1, !dbg !5844
  %conv33 = zext i8 %38 to i32, !dbg !5844
  store i32 %conv33, i32* %src, align 4, !dbg !5847
  %39 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !5848
  %timer_clk_src34 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %39, i32 0, i32 7, !dbg !5849
  %40 = load i32, i32* %chan, align 4, !dbg !5850
  %idxprom35 = zext i32 %40 to i64, !dbg !5848
  %arrayidx36 = getelementptr [3 x i8], [3 x i8]* %timer_clk_src34, i64 0, i64 %idxprom35, !dbg !5848
  %41 = load i8, i8* %arrayidx36, align 1, !dbg !5848
  %conv37 = zext i8 %41 to i32, !dbg !5848
  %42 = load i32*, i32** %data.addr, align 8, !dbg !5851
  %arrayidx38 = getelementptr i32, i32* %42, i64 1, !dbg !5851
  store i32 %conv37, i32* %arrayidx38, align 4, !dbg !5852
  %43 = load i32, i32* %src, align 4, !dbg !5853
  %cmp39 = icmp eq i32 %43, 0, !dbg !5854
  %44 = zext i1 %cmp39 to i64, !dbg !5855
  %cond41 = select i1 %cmp39, i32 125, i32 0, !dbg !5855
  %45 = load i32*, i32** %data.addr, align 8, !dbg !5856
  %arrayidx42 = getelementptr i32, i32* %45, i64 2, !dbg !5856
  store i32 %cond41, i32* %arrayidx42, align 4, !dbg !5857
  br label %sw.epilog44, !dbg !5858

sw.default43:                                     ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5859
  br label %return, !dbg !5859

sw.epilog44:                                      ; preds = %sw.bb29, %if.end19, %sw.bb5, %if.end
  %46 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5860
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %46, i32 0, i32 1, !dbg !5861
  %47 = load i32, i32* %n, align 4, !dbg !5861
  store i32 %47, i32* %retval, align 4, !dbg !5862
  br label %return, !dbg !5862

return:                                           ; preds = %sw.epilog44, %sw.default43, %if.then18, %sw.default, %if.then
  %48 = load i32, i32* %retval, align 4, !dbg !5863
  ret i32 %48, !dbg !5863
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @rtd_init_board(%struct.comedi_device* %dev) #2 !dbg !5864 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5865, metadata !DIExpression()), !dbg !5866
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5867
  call void @rtd_reset(%struct.comedi_device* %0) #5, !dbg !5868
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5869
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %1, i32 0, i32 17, !dbg !5870
  %2 = load i8*, i8** %mmio, align 8, !dbg !5870
  %add.ptr = getelementptr i8, i8* %2, i64 56, !dbg !5871
  call void @writel(i32 0, i8* %add.ptr) #5, !dbg !5872
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5873
  %mmio1 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %3, i32 0, i32 17, !dbg !5874
  %4 = load i8*, i8** %mmio1, align 8, !dbg !5874
  %add.ptr2 = getelementptr i8, i8* %4, i64 332, !dbg !5875
  call void @writel(i32 0, i8* %add.ptr2) #5, !dbg !5876
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5877
  %mmio3 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 17, !dbg !5878
  %6 = load i8*, i8** %mmio3, align 8, !dbg !5878
  %add.ptr4 = getelementptr i8, i8* %6, i64 300, !dbg !5879
  call void @writel(i32 0, i8* %add.ptr4) #5, !dbg !5880
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5881
  %mmio5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 17, !dbg !5882
  %8 = load i8*, i8** %mmio5, align 8, !dbg !5882
  %add.ptr6 = getelementptr i8, i8* %8, i64 348, !dbg !5883
  call void @writel(i32 0, i8* %add.ptr6) #5, !dbg !5884
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5885
  %mmio7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 17, !dbg !5886
  %10 = load i8*, i8** %mmio7, align 8, !dbg !5886
  %add.ptr8 = getelementptr i8, i8* %10, i64 368, !dbg !5887
  call void @writel(i32 0, i8* %add.ptr8) #5, !dbg !5888
  %11 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5889
  %mmio9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 17, !dbg !5890
  %12 = load i8*, i8** %mmio9, align 8, !dbg !5890
  %add.ptr10 = getelementptr i8, i8* %12, i64 124, !dbg !5891
  call void @writew(i16 zeroext 0, i8* %add.ptr10) #5, !dbg !5892
  ret void, !dbg !5893
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtd520_probe_fifo_depth(%struct.comedi_device* %dev) #2 !dbg !4027 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %chanspec = alloca i32, align 4
  %i = alloca i32, align 4
  %fifo_size = alloca i32, align 4
  %fifo_status = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5894, metadata !DIExpression()), !dbg !5895
  call void @llvm.dbg.declare(metadata i32* %chanspec, metadata !5896, metadata !DIExpression()), !dbg !5897
  store i32 0, i32* %chanspec, align 4, !dbg !5897
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5898, metadata !DIExpression()), !dbg !5899
  call void @llvm.dbg.declare(metadata i32* %fifo_size, metadata !5900, metadata !DIExpression()), !dbg !5901
  store i32 0, i32* %fifo_size, align 4, !dbg !5901
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5902
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 17, !dbg !5903
  %1 = load i8*, i8** %mmio, align 8, !dbg !5903
  %add.ptr = getelementptr i8, i8* %1, i64 300, !dbg !5904
  call void @writel(i32 0, i8* %add.ptr) #5, !dbg !5905
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5906
  call void @rtd_load_channelgain_list(%struct.comedi_device* %2, i32 1, i32* %chanspec) #5, !dbg !5907
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5908
  %mmio1 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %3, i32 0, i32 17, !dbg !5909
  %4 = load i8*, i8** %mmio1, align 8, !dbg !5909
  %add.ptr2 = getelementptr i8, i8* %4, i64 268, !dbg !5910
  call void @writel(i32 0, i8* %add.ptr2) #5, !dbg !5911
  store i32 0, i32* %i, align 4, !dbg !5912
  br label %for.cond, !dbg !5914

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !dbg !5915
  %cmp = icmp ult i32 %5, 8192, !dbg !5917
  br i1 %cmp, label %for.body, label %for.end, !dbg !5918

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %fifo_status, metadata !5919, metadata !DIExpression()), !dbg !5921
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5922
  %mmio3 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 17, !dbg !5923
  %7 = load i8*, i8** %mmio3, align 8, !dbg !5923
  %add.ptr4 = getelementptr i8, i8* %7, i64 16, !dbg !5924
  call void @writew(i16 zeroext 0, i8* %add.ptr4) #5, !dbg !5925
  call void @usleep_range(i64 1, i64 1000) #5, !dbg !5926
  %8 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5927
  %mmio5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 17, !dbg !5928
  %9 = load i8*, i8** %mmio5, align 8, !dbg !5928
  %add.ptr6 = getelementptr i8, i8* %9, i64 16, !dbg !5929
  %call = call i32 @readl(i8* %add.ptr6) #5, !dbg !5930
  store i32 %call, i32* %fifo_status, align 4, !dbg !5931
  %10 = load i32, i32* %fifo_status, align 4, !dbg !5932
  %conv = zext i32 %10 to i64, !dbg !5932
  %and = and i64 %conv, 512, !dbg !5934
  %cmp7 = icmp eq i64 %and, 0, !dbg !5935
  br i1 %cmp7, label %if.then, label %if.end, !dbg !5936

if.then:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !5937
  %mul = mul i32 2, %11, !dbg !5939
  store i32 %mul, i32* %fifo_size, align 4, !dbg !5940
  br label %for.end, !dbg !5941

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5942

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4, !dbg !5943
  %inc = add i32 %12, 1, !dbg !5943
  store i32 %inc, i32* %i, align 4, !dbg !5943
  br label %for.cond, !dbg !5944, !llvm.loop !5945

for.end:                                          ; preds = %if.then, %for.cond
  %13 = load i32, i32* %i, align 4, !dbg !5947
  %cmp9 = icmp eq i32 %13, 8192, !dbg !5949
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !5950

if.then11:                                        ; preds = %for.end
  %14 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5951
  %class_dev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 4, !dbg !5951
  %15 = load %struct.device*, %struct.device** %class_dev, align 8, !dbg !5951
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0)) #7, !dbg !5951
  store i32 -5, i32* %retval, align 4, !dbg !5953
  br label %return, !dbg !5953

if.end12:                                         ; preds = %for.end
  %16 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5954
  %mmio13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 17, !dbg !5955
  %17 = load i8*, i8** %mmio13, align 8, !dbg !5955
  %add.ptr14 = getelementptr i8, i8* %17, i64 300, !dbg !5956
  call void @writel(i32 0, i8* %add.ptr14) #5, !dbg !5957
  %18 = load i32, i32* %fifo_size, align 4, !dbg !5958
  %cmp15 = icmp ne i32 %18, 1024, !dbg !5960
  br i1 %cmp15, label %land.lhs.true, label %if.end21, !dbg !5961

land.lhs.true:                                    ; preds = %if.end12
  %19 = load i32, i32* %fifo_size, align 4, !dbg !5962
  %cmp17 = icmp ne i32 %19, 8192, !dbg !5963
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !5964

if.then19:                                        ; preds = %land.lhs.true
  %20 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5965
  %class_dev20 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 4, !dbg !5965
  %21 = load %struct.device*, %struct.device** %class_dev20, align 8, !dbg !5965
  %22 = load i32, i32* %fifo_size, align 4, !dbg !5965
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %21, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0), i32 %22) #7, !dbg !5965
  store i32 -5, i32* %retval, align 4, !dbg !5967
  br label %return, !dbg !5967

if.end21:                                         ; preds = %land.lhs.true, %if.end12
  %23 = load i32, i32* %fifo_size, align 4, !dbg !5968
  store i32 %23, i32* %retval, align 4, !dbg !5969
  br label %return, !dbg !5969

return:                                           ; preds = %if.end21, %if.then19, %if.then11
  %24 = load i32, i32* %retval, align 4, !dbg !5970
  ret i32 %24, !dbg !5970
}

; Function Attrs: noredzone
declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i8*) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #4

; Function Attrs: noredzone
declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i8 zeroext) #1

; Function Attrs: noredzone
declare dso_local i32 @request_threaded_irq(i32, i32 (i32, i8*)*, i32 (i32, i8*)*, i64, i8*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readl(i8* %addr) #2 !dbg !5971 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5974, metadata !DIExpression()), !dbg !5975
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5976, metadata !DIExpression()), !dbg !5975
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !5975
  %1 = bitcast i8* %0 to i32*, !dbg !5975
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #6, !dbg !5975, !srcloc !5977
  store i32 %2, i32* %ret, align 4, !dbg !5975
  %3 = load i32, i32* %ret, align 4, !dbg !5975
  ret i32 %3, !dbg !5975
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ai_read_n(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, i32 %count) #2 !dbg !5978 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %count.addr = alloca i32, align 4
  %devpriv = alloca %struct.rtd_private*, align 8
  %async = alloca %struct.comedi_async*, align 8
  %cmd = alloca %struct.comedi_cmd*, align 8
  %ii = alloca i32, align 4
  %range = alloca i32, align 4
  %d = alloca i16, align 2
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5981, metadata !DIExpression()), !dbg !5982
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5983, metadata !DIExpression()), !dbg !5984
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !5985, metadata !DIExpression()), !dbg !5986
  call void @llvm.dbg.declare(metadata %struct.rtd_private** %devpriv, metadata !5987, metadata !DIExpression()), !dbg !5988
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5989
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5990
  %1 = load i8*, i8** %private, align 8, !dbg !5990
  %2 = bitcast i8* %1 to %struct.rtd_private*, !dbg !5989
  store %struct.rtd_private* %2, %struct.rtd_private** %devpriv, align 8, !dbg !5988
  call void @llvm.dbg.declare(metadata %struct.comedi_async** %async, metadata !5991, metadata !DIExpression()), !dbg !5992
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5993
  %async1 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %3, i32 0, i32 7, !dbg !5994
  %4 = load %struct.comedi_async*, %struct.comedi_async** %async1, align 8, !dbg !5994
  store %struct.comedi_async* %4, %struct.comedi_async** %async, align 8, !dbg !5992
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd, metadata !5995, metadata !DIExpression()), !dbg !5996
  %5 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5997
  %cmd2 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %5, i32 0, i32 17, !dbg !5998
  store %struct.comedi_cmd* %cmd2, %struct.comedi_cmd** %cmd, align 8, !dbg !5996
  call void @llvm.dbg.declare(metadata i32* %ii, metadata !5999, metadata !DIExpression()), !dbg !6000
  store i32 0, i32* %ii, align 4, !dbg !6001
  br label %for.cond, !dbg !6003

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %ii, align 4, !dbg !6004
  %7 = load i32, i32* %count.addr, align 4, !dbg !6006
  %cmp = icmp slt i32 %6, %7, !dbg !6007
  br i1 %cmp, label %for.body, label %for.end, !dbg !6008

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %range, metadata !6009, metadata !DIExpression()), !dbg !6011
  %8 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !6012
  %chanlist = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %8, i32 0, i32 12, !dbg !6012
  %9 = load i32*, i32** %chanlist, align 8, !dbg !6012
  %10 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !6012
  %cur_chan = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %10, i32 0, i32 10, !dbg !6012
  %11 = load i32, i32* %cur_chan, align 4, !dbg !6012
  %idxprom = zext i32 %11 to i64, !dbg !6012
  %arrayidx = getelementptr i32, i32* %9, i64 %idxprom, !dbg !6012
  %12 = load i32, i32* %arrayidx, align 4, !dbg !6012
  %shr = lshr i32 %12, 16, !dbg !6012
  %and = and i32 %shr, 255, !dbg !6012
  store i32 %and, i32* %range, align 4, !dbg !6011
  call void @llvm.dbg.declare(metadata i16* %d, metadata !6013, metadata !DIExpression()), !dbg !6014
  %13 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !6015
  %ai_count = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %13, i32 0, i32 2, !dbg !6017
  %14 = load i64, i64* %ai_count, align 8, !dbg !6017
  %cmp3 = icmp eq i64 %14, 0, !dbg !6018
  br i1 %cmp3, label %if.then, label %if.end, !dbg !6019

if.then:                                          ; preds = %for.body
  %15 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !6020
  %las1 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %15, i32 0, i32 0, !dbg !6022
  %16 = load i8*, i8** %las1, align 8, !dbg !6022
  %add.ptr = getelementptr i8, i8* %16, i64 0, !dbg !6023
  %call = call zeroext i16 @readw(i8* %add.ptr) #5, !dbg !6024
  store i16 %call, i16* %d, align 2, !dbg !6025
  br label %for.inc, !dbg !6026

if.end:                                           ; preds = %for.body
  %17 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !6027
  %las14 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %17, i32 0, i32 0, !dbg !6028
  %18 = load i8*, i8** %las14, align 8, !dbg !6028
  %add.ptr5 = getelementptr i8, i8* %18, i64 0, !dbg !6029
  %call6 = call zeroext i16 @readw(i8* %add.ptr5) #5, !dbg !6030
  store i16 %call6, i16* %d, align 2, !dbg !6031
  %19 = load i16, i16* %d, align 2, !dbg !6032
  %conv = zext i16 %19 to i32, !dbg !6032
  %shr7 = ashr i32 %conv, 3, !dbg !6032
  %conv8 = trunc i32 %shr7 to i16, !dbg !6032
  store i16 %conv8, i16* %d, align 2, !dbg !6032
  %20 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6033
  %21 = load i32, i32* %range, align 4, !dbg !6035
  %call9 = call zeroext i1 @comedi_range_is_bipolar(%struct.comedi_subdevice* %20, i32 %21) #5, !dbg !6036
  br i1 %call9, label %if.then10, label %if.end14, !dbg !6037

if.then10:                                        ; preds = %if.end
  %22 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6038
  %23 = load i16, i16* %d, align 2, !dbg !6039
  %conv11 = zext i16 %23 to i32, !dbg !6039
  %call12 = call i32 @comedi_offset_munge(%struct.comedi_subdevice* %22, i32 %conv11) #5, !dbg !6040
  %conv13 = trunc i32 %call12 to i16, !dbg !6040
  store i16 %conv13, i16* %d, align 2, !dbg !6041
  br label %if.end14, !dbg !6042

if.end14:                                         ; preds = %if.then10, %if.end
  %24 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6043
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %24, i32 0, i32 13, !dbg !6044
  %25 = load i32, i32* %maxdata, align 8, !dbg !6044
  %26 = load i16, i16* %d, align 2, !dbg !6045
  %conv15 = zext i16 %26 to i32, !dbg !6045
  %and16 = and i32 %conv15, %25, !dbg !6045
  %conv17 = trunc i32 %and16 to i16, !dbg !6045
  store i16 %conv17, i16* %d, align 2, !dbg !6045
  %27 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6046
  %28 = bitcast i16* %d to i8*, !dbg !6048
  %call18 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %27, i8* %28, i32 1) #5, !dbg !6049
  %tobool = icmp ne i32 %call18, 0, !dbg !6049
  br i1 %tobool, label %if.end20, label %if.then19, !dbg !6050

if.then19:                                        ; preds = %if.end14
  store i32 -1, i32* %retval, align 4, !dbg !6051
  br label %return, !dbg !6051

if.end20:                                         ; preds = %if.end14
  %29 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !6052
  %ai_count21 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %29, i32 0, i32 2, !dbg !6054
  %30 = load i64, i64* %ai_count21, align 8, !dbg !6054
  %cmp22 = icmp sgt i64 %30, 0, !dbg !6055
  br i1 %cmp22, label %if.then24, label %if.end26, !dbg !6056

if.then24:                                        ; preds = %if.end20
  %31 = load %struct.rtd_private*, %struct.rtd_private** %devpriv, align 8, !dbg !6057
  %ai_count25 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %31, i32 0, i32 2, !dbg !6058
  %32 = load i64, i64* %ai_count25, align 8, !dbg !6059
  %dec = add i64 %32, -1, !dbg !6059
  store i64 %dec, i64* %ai_count25, align 8, !dbg !6059
  br label %if.end26, !dbg !6057

if.end26:                                         ; preds = %if.then24, %if.end20
  br label %for.inc, !dbg !6060

for.inc:                                          ; preds = %if.end26, %if.then
  %33 = load i32, i32* %ii, align 4, !dbg !6061
  %inc = add i32 %33, 1, !dbg !6061
  store i32 %inc, i32* %ii, align 4, !dbg !6061
  br label %for.cond, !dbg !6062, !llvm.loop !6063

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !6065
  br label %return, !dbg !6065

return:                                           ; preds = %for.end, %if.then19
  %34 = load i32, i32* %retval, align 4, !dbg !6066
  ret i32 %34, !dbg !6066
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @comedi_range_is_bipolar(%struct.comedi_subdevice* %s, i32 %range) #2 !dbg !6067 {
entry:
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %range.addr = alloca i32, align 4
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !6070, metadata !DIExpression()), !dbg !6071
  store i32 %range, i32* %range.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %range.addr, metadata !6072, metadata !DIExpression()), !dbg !6073
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6074
  %range_table = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 15, !dbg !6075
  %1 = load %struct.comedi_lrange*, %struct.comedi_lrange** %range_table, align 8, !dbg !6075
  %range1 = getelementptr inbounds %struct.comedi_lrange, %struct.comedi_lrange* %1, i32 0, i32 1, !dbg !6076
  %2 = load i32, i32* %range.addr, align 4, !dbg !6077
  %idxprom = zext i32 %2 to i64, !dbg !6074
  %arrayidx = getelementptr [0 x %struct.comedi_krange], [0 x %struct.comedi_krange]* %range1, i64 0, i64 %idxprom, !dbg !6074
  %min = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %arrayidx, i32 0, i32 0, !dbg !6078
  %3 = load i32, i32* %min, align 4, !dbg !6078
  %cmp = icmp slt i32 %3, 0, !dbg !6079
  ret i1 %cmp, !dbg !6080
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_offset_munge(%struct.comedi_subdevice* %s, i32 %val) #2 !dbg !6081 {
entry:
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %val.addr = alloca i32, align 4
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !6084, metadata !DIExpression()), !dbg !6085
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !6086, metadata !DIExpression()), !dbg !6087
  %0 = load i32, i32* %val.addr, align 4, !dbg !6088
  %1 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6089
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %1, i32 0, i32 13, !dbg !6090
  %2 = load i32, i32* %maxdata, align 8, !dbg !6090
  %xor = xor i32 %0, %2, !dbg !6091
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6092
  %maxdata1 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %3, i32 0, i32 13, !dbg !6093
  %4 = load i32, i32* %maxdata1, align 8, !dbg !6093
  %shr = lshr i32 %4, 1, !dbg !6094
  %xor2 = xor i32 %xor, %shr, !dbg !6095
  ret i32 %xor2, !dbg !6096
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i8*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @rtd_load_channelgain_list(%struct.comedi_device* %dev, i32 %n_chan, i32* %list) #2 !dbg !6097 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %n_chan.addr = alloca i32, align 4
  %list.addr = alloca i32*, align 8
  %ii = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !6100, metadata !DIExpression()), !dbg !6101
  store i32 %n_chan, i32* %n_chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n_chan.addr, metadata !6102, metadata !DIExpression()), !dbg !6103
  store i32* %list, i32** %list.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %list.addr, metadata !6104, metadata !DIExpression()), !dbg !6105
  %0 = load i32, i32* %n_chan.addr, align 4, !dbg !6106
  %cmp = icmp ugt i32 %0, 1, !dbg !6108
  br i1 %cmp, label %if.then, label %if.else, !dbg !6109

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %ii, metadata !6110, metadata !DIExpression()), !dbg !6112
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6113
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %1, i32 0, i32 17, !dbg !6114
  %2 = load i8*, i8** %mmio, align 8, !dbg !6114
  %add.ptr = getelementptr i8, i8* %2, i64 332, !dbg !6115
  call void @writel(i32 0, i8* %add.ptr) #5, !dbg !6116
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6117
  %mmio1 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %3, i32 0, i32 17, !dbg !6118
  %4 = load i8*, i8** %mmio1, align 8, !dbg !6118
  %add.ptr2 = getelementptr i8, i8* %4, i64 316, !dbg !6119
  call void @writel(i32 1, i8* %add.ptr2) #5, !dbg !6120
  store i32 0, i32* %ii, align 4, !dbg !6121
  br label %for.cond, !dbg !6123

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %ii, align 4, !dbg !6124
  %6 = load i32, i32* %n_chan.addr, align 4, !dbg !6126
  %cmp3 = icmp ult i32 %5, %6, !dbg !6127
  br i1 %cmp3, label %for.body, label %for.end, !dbg !6128

for.body:                                         ; preds = %for.cond
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6129
  %8 = load i32*, i32** %list.addr, align 8, !dbg !6131
  %9 = load i32, i32* %ii, align 4, !dbg !6132
  %idxprom = sext i32 %9 to i64, !dbg !6131
  %arrayidx = getelementptr i32, i32* %8, i64 %idxprom, !dbg !6131
  %10 = load i32, i32* %arrayidx, align 4, !dbg !6131
  %11 = load i32, i32* %ii, align 4, !dbg !6133
  %call = call zeroext i16 @rtd_convert_chan_gain(%struct.comedi_device* %7, i32 %10, i32 %11) #5, !dbg !6134
  %conv = zext i16 %call to i32, !dbg !6134
  %12 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6135
  %mmio4 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 17, !dbg !6136
  %13 = load i8*, i8** %mmio4, align 8, !dbg !6136
  %add.ptr5 = getelementptr i8, i8* %13, i64 304, !dbg !6137
  call void @writel(i32 %conv, i8* %add.ptr5) #5, !dbg !6138
  br label %for.inc, !dbg !6139

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %ii, align 4, !dbg !6140
  %inc = add i32 %14, 1, !dbg !6140
  store i32 %inc, i32* %ii, align 4, !dbg !6140
  br label %for.cond, !dbg !6141, !llvm.loop !6142

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !6144

if.else:                                          ; preds = %entry
  %15 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6145
  %mmio6 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 17, !dbg !6147
  %16 = load i8*, i8** %mmio6, align 8, !dbg !6147
  %add.ptr7 = getelementptr i8, i8* %16, i64 316, !dbg !6148
  call void @writel(i32 0, i8* %add.ptr7) #5, !dbg !6149
  %17 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6150
  %18 = load i32*, i32** %list.addr, align 8, !dbg !6151
  %arrayidx8 = getelementptr i32, i32* %18, i64 0, !dbg !6151
  %19 = load i32, i32* %arrayidx8, align 4, !dbg !6151
  %call9 = call zeroext i16 @rtd_convert_chan_gain(%struct.comedi_device* %17, i32 %19, i32 0) #5, !dbg !6152
  %conv10 = zext i16 %call9 to i32, !dbg !6152
  %20 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6153
  %mmio11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 17, !dbg !6154
  %21 = load i8*, i8** %mmio11, align 8, !dbg !6154
  %add.ptr12 = getelementptr i8, i8* %21, i64 308, !dbg !6155
  call void @writel(i32 %conv10, i8* %add.ptr12) #5, !dbg !6156
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !6157
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_timeout(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i64)*, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtd_ai_eoc(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i64 %context) #2 !dbg !6158 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %context.addr = alloca i64, align 8
  %status = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !6161, metadata !DIExpression()), !dbg !6162
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !6163, metadata !DIExpression()), !dbg !6164
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !6165, metadata !DIExpression()), !dbg !6166
  store i64 %context, i64* %context.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %context.addr, metadata !6167, metadata !DIExpression()), !dbg !6168
  call void @llvm.dbg.declare(metadata i32* %status, metadata !6169, metadata !DIExpression()), !dbg !6170
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6171
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 17, !dbg !6172
  %1 = load i8*, i8** %mmio, align 8, !dbg !6172
  %add.ptr = getelementptr i8, i8* %1, i64 16, !dbg !6173
  %call = call i32 @readl(i8* %add.ptr) #5, !dbg !6174
  store i32 %call, i32* %status, align 4, !dbg !6175
  %2 = load i32, i32* %status, align 4, !dbg !6176
  %conv = zext i32 %2 to i64, !dbg !6176
  %and = and i64 %conv, 256, !dbg !6178
  %tobool = icmp ne i64 %and, 0, !dbg !6178
  br i1 %tobool, label %if.then, label %if.end, !dbg !6179

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6180
  br label %return, !dbg !6180

if.end:                                           ; preds = %entry
  store i32 -16, i32* %retval, align 4, !dbg !6181
  br label %return, !dbg !6181

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !6182
  ret i32 %3, !dbg !6182
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @rtd_convert_chan_gain(%struct.comedi_device* %dev, i32 %chanspec, i32 %index) #2 !dbg !6183 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %chanspec.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %board = alloca %struct.rtd_boardinfo*, align 8
  %chan = alloca i32, align 4
  %range = alloca i32, align 4
  %aref = alloca i32, align 4
  %r = alloca i16, align 2
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !6186, metadata !DIExpression()), !dbg !6187
  store i32 %chanspec, i32* %chanspec.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chanspec.addr, metadata !6188, metadata !DIExpression()), !dbg !6189
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !6190, metadata !DIExpression()), !dbg !6191
  call void @llvm.dbg.declare(metadata %struct.rtd_boardinfo** %board, metadata !6192, metadata !DIExpression()), !dbg !6193
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6194
  %board_ptr = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 9, !dbg !6195
  %1 = load i8*, i8** %board_ptr, align 8, !dbg !6195
  %2 = bitcast i8* %1 to %struct.rtd_boardinfo*, !dbg !6194
  store %struct.rtd_boardinfo* %2, %struct.rtd_boardinfo** %board, align 8, !dbg !6193
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !6196, metadata !DIExpression()), !dbg !6197
  %3 = load i32, i32* %chanspec.addr, align 4, !dbg !6198
  %and = and i32 %3, 65535, !dbg !6198
  store i32 %and, i32* %chan, align 4, !dbg !6197
  call void @llvm.dbg.declare(metadata i32* %range, metadata !6199, metadata !DIExpression()), !dbg !6200
  %4 = load i32, i32* %chanspec.addr, align 4, !dbg !6201
  %shr = lshr i32 %4, 16, !dbg !6201
  %and1 = and i32 %shr, 255, !dbg !6201
  store i32 %and1, i32* %range, align 4, !dbg !6200
  call void @llvm.dbg.declare(metadata i32* %aref, metadata !6202, metadata !DIExpression()), !dbg !6203
  %5 = load i32, i32* %chanspec.addr, align 4, !dbg !6204
  %shr2 = lshr i32 %5, 24, !dbg !6204
  %and3 = and i32 %shr2, 3, !dbg !6204
  store i32 %and3, i32* %aref, align 4, !dbg !6203
  call void @llvm.dbg.declare(metadata i16* %r, metadata !6205, metadata !DIExpression()), !dbg !6206
  store i16 0, i16* %r, align 2, !dbg !6206
  %6 = load i32, i32* %chan, align 4, !dbg !6207
  %and4 = and i32 %6, 15, !dbg !6208
  %7 = load i16, i16* %r, align 2, !dbg !6209
  %conv = zext i16 %7 to i32, !dbg !6209
  %or = or i32 %conv, %and4, !dbg !6209
  %conv5 = trunc i32 %or to i16, !dbg !6209
  store i16 %conv5, i16* %r, align 2, !dbg !6209
  %8 = load i32, i32* %range, align 4, !dbg !6210
  %9 = load %struct.rtd_boardinfo*, %struct.rtd_boardinfo** %board, align 8, !dbg !6212
  %range_bip10 = getelementptr inbounds %struct.rtd_boardinfo, %struct.rtd_boardinfo* %9, i32 0, i32 1, !dbg !6213
  %10 = load i32, i32* %range_bip10, align 8, !dbg !6213
  %cmp = icmp ult i32 %8, %10, !dbg !6214
  br i1 %cmp, label %if.then, label %if.else, !dbg !6215

if.then:                                          ; preds = %entry
  %11 = load i16, i16* %r, align 2, !dbg !6216
  %conv7 = zext i16 %11 to i32, !dbg !6216
  %conv8 = trunc i32 %conv7 to i16, !dbg !6216
  store i16 %conv8, i16* %r, align 2, !dbg !6216
  %12 = load i32, i32* %range, align 4, !dbg !6218
  %and9 = and i32 %12, 7, !dbg !6219
  %shl = shl i32 %and9, 4, !dbg !6220
  %13 = load i16, i16* %r, align 2, !dbg !6221
  %conv10 = zext i16 %13 to i32, !dbg !6221
  %or11 = or i32 %conv10, %shl, !dbg !6221
  %conv12 = trunc i32 %or11 to i16, !dbg !6221
  store i16 %conv12, i16* %r, align 2, !dbg !6221
  br label %if.end36, !dbg !6222

if.else:                                          ; preds = %entry
  %14 = load i32, i32* %range, align 4, !dbg !6223
  %15 = load %struct.rtd_boardinfo*, %struct.rtd_boardinfo** %board, align 8, !dbg !6225
  %range_uni10 = getelementptr inbounds %struct.rtd_boardinfo, %struct.rtd_boardinfo* %15, i32 0, i32 2, !dbg !6226
  %16 = load i32, i32* %range_uni10, align 4, !dbg !6226
  %cmp13 = icmp ult i32 %14, %16, !dbg !6227
  br i1 %cmp13, label %if.then15, label %if.else25, !dbg !6228

if.then15:                                        ; preds = %if.else
  %17 = load i16, i16* %r, align 2, !dbg !6229
  %conv16 = zext i16 %17 to i32, !dbg !6229
  %or17 = or i32 %conv16, 256, !dbg !6229
  %conv18 = trunc i32 %or17 to i16, !dbg !6229
  store i16 %conv18, i16* %r, align 2, !dbg !6229
  %18 = load i32, i32* %range, align 4, !dbg !6231
  %19 = load %struct.rtd_boardinfo*, %struct.rtd_boardinfo** %board, align 8, !dbg !6232
  %range_bip1019 = getelementptr inbounds %struct.rtd_boardinfo, %struct.rtd_boardinfo* %19, i32 0, i32 1, !dbg !6233
  %20 = load i32, i32* %range_bip1019, align 8, !dbg !6233
  %sub = sub i32 %18, %20, !dbg !6234
  %and20 = and i32 %sub, 7, !dbg !6235
  %shl21 = shl i32 %and20, 4, !dbg !6236
  %21 = load i16, i16* %r, align 2, !dbg !6237
  %conv22 = zext i16 %21 to i32, !dbg !6237
  %or23 = or i32 %conv22, %shl21, !dbg !6237
  %conv24 = trunc i32 %or23 to i16, !dbg !6237
  store i16 %conv24, i16* %r, align 2, !dbg !6237
  br label %if.end, !dbg !6238

if.else25:                                        ; preds = %if.else
  %22 = load i16, i16* %r, align 2, !dbg !6239
  %conv26 = zext i16 %22 to i32, !dbg !6239
  %or27 = or i32 %conv26, 512, !dbg !6239
  %conv28 = trunc i32 %or27 to i16, !dbg !6239
  store i16 %conv28, i16* %r, align 2, !dbg !6239
  %23 = load i32, i32* %range, align 4, !dbg !6241
  %24 = load %struct.rtd_boardinfo*, %struct.rtd_boardinfo** %board, align 8, !dbg !6242
  %range_uni1029 = getelementptr inbounds %struct.rtd_boardinfo, %struct.rtd_boardinfo* %24, i32 0, i32 2, !dbg !6243
  %25 = load i32, i32* %range_uni1029, align 4, !dbg !6243
  %sub30 = sub i32 %23, %25, !dbg !6244
  %and31 = and i32 %sub30, 7, !dbg !6245
  %shl32 = shl i32 %and31, 4, !dbg !6246
  %26 = load i16, i16* %r, align 2, !dbg !6247
  %conv33 = zext i16 %26 to i32, !dbg !6247
  %or34 = or i32 %conv33, %shl32, !dbg !6247
  %conv35 = trunc i32 %or34 to i16, !dbg !6247
  store i16 %conv35, i16* %r, align 2, !dbg !6247
  br label %if.end

if.end:                                           ; preds = %if.else25, %if.then15
  br label %if.end36

if.end36:                                         ; preds = %if.end, %if.then
  %27 = load i32, i32* %aref, align 4, !dbg !6248
  switch i32 %27, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb37
    i32 2, label %sw.bb41
    i32 3, label %sw.bb45
  ], !dbg !6249

sw.bb:                                            ; preds = %if.end36
  br label %sw.epilog, !dbg !6250

sw.bb37:                                          ; preds = %if.end36
  %28 = load i16, i16* %r, align 2, !dbg !6252
  %conv38 = zext i16 %28 to i32, !dbg !6252
  %or39 = or i32 %conv38, 128, !dbg !6252
  %conv40 = trunc i32 %or39 to i16, !dbg !6252
  store i16 %conv40, i16* %r, align 2, !dbg !6252
  br label %sw.epilog, !dbg !6253

sw.bb41:                                          ; preds = %if.end36
  %29 = load i16, i16* %r, align 2, !dbg !6254
  %conv42 = zext i16 %29 to i32, !dbg !6254
  %or43 = or i32 %conv42, 1024, !dbg !6254
  %conv44 = trunc i32 %or43 to i16, !dbg !6254
  store i16 %conv44, i16* %r, align 2, !dbg !6254
  br label %sw.epilog, !dbg !6255

sw.bb45:                                          ; preds = %if.end36
  br label %sw.epilog, !dbg !6256

sw.epilog:                                        ; preds = %if.end36, %sw.bb45, %sw.bb41, %sw.bb37, %sw.bb
  %30 = load i16, i16* %r, align 2, !dbg !6257
  ret i16 %30, !dbg !6258
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtd_ns_to_timer(i32* %ns, i32 %flags) #2 !dbg !6259 {
entry:
  %ns.addr = alloca i32*, align 8
  %flags.addr = alloca i32, align 4
  store i32* %ns, i32** %ns.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ns.addr, metadata !6262, metadata !DIExpression()), !dbg !6263
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6264, metadata !DIExpression()), !dbg !6265
  %0 = load i32*, i32** %ns.addr, align 8, !dbg !6266
  %1 = load i32, i32* %flags.addr, align 4, !dbg !6267
  %call = call i32 @rtd_ns_to_timer_base(i32* %0, i32 %1, i32 125) #5, !dbg !6268
  ret i32 %call, !dbg !6269
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtd_ns_to_timer_base(i32* %nanosec, i32 %flags, i32 %base) #2 !dbg !6270 {
entry:
  %nanosec.addr = alloca i32*, align 8
  %flags.addr = alloca i32, align 4
  %base.addr = alloca i32, align 4
  %divider = alloca i32, align 4
  %__x = alloca i32, align 4
  %__d = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32* %nanosec, i32** %nanosec.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %nanosec.addr, metadata !6273, metadata !DIExpression()), !dbg !6274
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6275, metadata !DIExpression()), !dbg !6276
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !6277, metadata !DIExpression()), !dbg !6278
  call void @llvm.dbg.declare(metadata i32* %divider, metadata !6279, metadata !DIExpression()), !dbg !6280
  %0 = load i32, i32* %flags.addr, align 4, !dbg !6281
  %and = and i32 %0, 196608, !dbg !6282
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb
    i32 65536, label %sw.bb2
    i32 131072, label %sw.bb4
  ], !dbg !6283

sw.bb:                                            ; preds = %entry
  br label %sw.default, !dbg !6284

sw.default:                                       ; preds = %entry, %sw.bb
  call void @llvm.dbg.declare(metadata i32* %__x, metadata !6285, metadata !DIExpression()), !dbg !6288
  %1 = load i32*, i32** %nanosec.addr, align 8, !dbg !6288
  %2 = load i32, i32* %1, align 4, !dbg !6288
  store i32 %2, i32* %__x, align 4, !dbg !6288
  call void @llvm.dbg.declare(metadata i32* %__d, metadata !6289, metadata !DIExpression()), !dbg !6288
  %3 = load i32, i32* %base.addr, align 4, !dbg !6288
  store i32 %3, i32* %__d, align 4, !dbg !6288
  %4 = load i32, i32* %__x, align 4, !dbg !6288
  %5 = load i32, i32* %__d, align 4, !dbg !6288
  %div = sdiv i32 %5, 2, !dbg !6288
  %add = add i32 %4, %div, !dbg !6288
  %6 = load i32, i32* %__d, align 4, !dbg !6288
  %div1 = udiv i32 %add, %6, !dbg !6288
  store i32 %div1, i32* %tmp, align 4, !dbg !6288
  %7 = load i32, i32* %tmp, align 4, !dbg !6288
  store i32 %7, i32* %divider, align 4, !dbg !6290
  br label %sw.epilog, !dbg !6291

sw.bb2:                                           ; preds = %entry
  %8 = load i32*, i32** %nanosec.addr, align 8, !dbg !6292
  %9 = load i32, i32* %8, align 4, !dbg !6293
  %10 = load i32, i32* %base.addr, align 4, !dbg !6294
  %div3 = udiv i32 %9, %10, !dbg !6295
  store i32 %div3, i32* %divider, align 4, !dbg !6296
  br label %sw.epilog, !dbg !6297

sw.bb4:                                           ; preds = %entry
  %11 = load i32*, i32** %nanosec.addr, align 8, !dbg !6298
  %12 = load i32, i32* %11, align 4, !dbg !6298
  %13 = load i32, i32* %base.addr, align 4, !dbg !6298
  %add5 = add i32 %12, %13, !dbg !6298
  %sub = sub i32 %add5, 1, !dbg !6298
  %14 = load i32, i32* %base.addr, align 4, !dbg !6298
  %div6 = udiv i32 %sub, %14, !dbg !6298
  store i32 %div6, i32* %divider, align 4, !dbg !6299
  br label %sw.epilog, !dbg !6300

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb2, %sw.default
  %15 = load i32, i32* %divider, align 4, !dbg !6301
  %cmp = icmp slt i32 %15, 2, !dbg !6303
  br i1 %cmp, label %if.then, label %if.end, !dbg !6304

if.then:                                          ; preds = %sw.epilog
  store i32 2, i32* %divider, align 4, !dbg !6305
  br label %if.end, !dbg !6306

if.end:                                           ; preds = %if.then, %sw.epilog
  %16 = load i32, i32* %base.addr, align 4, !dbg !6307
  %17 = load i32, i32* %divider, align 4, !dbg !6308
  %mul = mul i32 %16, %17, !dbg !6309
  %18 = load i32*, i32** %nanosec.addr, align 8, !dbg !6310
  store i32 %mul, i32* %18, align 4, !dbg !6311
  %19 = load i32, i32* %divider, align 4, !dbg !6312
  %sub7 = sub i32 %19, 1, !dbg !6313
  ret i32 %sub7, !dbg !6314
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_src(i32* %src, i32 %flags) #2 !dbg !6315 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i32*, align 8
  %flags.addr = alloca i32, align 4
  %orig_src = alloca i32, align 4
  store i32* %src, i32** %src.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %src.addr, metadata !6316, metadata !DIExpression()), !dbg !6317
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6318, metadata !DIExpression()), !dbg !6319
  call void @llvm.dbg.declare(metadata i32* %orig_src, metadata !6320, metadata !DIExpression()), !dbg !6321
  %0 = load i32*, i32** %src.addr, align 8, !dbg !6322
  %1 = load i32, i32* %0, align 4, !dbg !6323
  store i32 %1, i32* %orig_src, align 4, !dbg !6321
  %2 = load i32, i32* %orig_src, align 4, !dbg !6324
  %3 = load i32, i32* %flags.addr, align 4, !dbg !6325
  %and = and i32 %2, %3, !dbg !6326
  %4 = load i32*, i32** %src.addr, align 8, !dbg !6327
  store i32 %and, i32* %4, align 4, !dbg !6328
  %5 = load i32*, i32** %src.addr, align 8, !dbg !6329
  %6 = load i32, i32* %5, align 4, !dbg !6331
  %cmp = icmp eq i32 %6, 0, !dbg !6332
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !6333

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32*, i32** %src.addr, align 8, !dbg !6334
  %8 = load i32, i32* %7, align 4, !dbg !6335
  %9 = load i32, i32* %orig_src, align 4, !dbg !6336
  %cmp1 = icmp ne i32 %8, %9, !dbg !6337
  br i1 %cmp1, label %if.then, label %if.end, !dbg !6338

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !6339
  br label %return, !dbg !6339

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %retval, align 4, !dbg !6340
  br label %return, !dbg !6340

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !6341
  ret i32 %10, !dbg !6341
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_is_unique(i32 %src) #2 !dbg !6342 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i32, align 4
  store i32 %src, i32* %src.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %src.addr, metadata !6345, metadata !DIExpression()), !dbg !6346
  %0 = load i32, i32* %src.addr, align 4, !dbg !6347
  %1 = load i32, i32* %src.addr, align 4, !dbg !6349
  %sub = sub i32 %1, 1, !dbg !6350
  %and = and i32 %0, %sub, !dbg !6351
  %cmp = icmp ne i32 %and, 0, !dbg !6352
  br i1 %cmp, label %if.then, label %if.end, !dbg !6353

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !6354
  br label %return, !dbg !6354

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6355
  br label %return, !dbg !6355

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !6356
  ret i32 %2, !dbg !6356
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_arg_is(i32* %arg, i32 %val) #2 !dbg !6357 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i32*, align 8
  %val.addr = alloca i32, align 4
  store i32* %arg, i32** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %arg.addr, metadata !6358, metadata !DIExpression()), !dbg !6359
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !6360, metadata !DIExpression()), !dbg !6361
  %0 = load i32*, i32** %arg.addr, align 8, !dbg !6362
  %1 = load i32, i32* %0, align 4, !dbg !6364
  %2 = load i32, i32* %val.addr, align 4, !dbg !6365
  %cmp = icmp ne i32 %1, %2, !dbg !6366
  br i1 %cmp, label %if.then, label %if.end, !dbg !6367

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %val.addr, align 4, !dbg !6368
  %4 = load i32*, i32** %arg.addr, align 8, !dbg !6370
  store i32 %3, i32* %4, align 4, !dbg !6371
  store i32 -22, i32* %retval, align 4, !dbg !6372
  br label %return, !dbg !6372

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6373
  br label %return, !dbg !6373

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !6374
  ret i32 %5, !dbg !6374
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_arg_min(i32* %arg, i32 %val) #2 !dbg !6375 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i32*, align 8
  %val.addr = alloca i32, align 4
  store i32* %arg, i32** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %arg.addr, metadata !6376, metadata !DIExpression()), !dbg !6377
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !6378, metadata !DIExpression()), !dbg !6379
  %0 = load i32*, i32** %arg.addr, align 8, !dbg !6380
  %1 = load i32, i32* %0, align 4, !dbg !6382
  %2 = load i32, i32* %val.addr, align 4, !dbg !6383
  %cmp = icmp ult i32 %1, %2, !dbg !6384
  br i1 %cmp, label %if.then, label %if.end, !dbg !6385

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %val.addr, align 4, !dbg !6386
  %4 = load i32*, i32** %arg.addr, align 8, !dbg !6388
  store i32 %3, i32* %4, align 4, !dbg !6389
  store i32 -22, i32* %retval, align 4, !dbg !6390
  br label %return, !dbg !6390

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6391
  br label %return, !dbg !6391

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !6392
  ret i32 %5, !dbg !6392
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_arg_max(i32* %arg, i32 %val) #2 !dbg !6393 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i32*, align 8
  %val.addr = alloca i32, align 4
  store i32* %arg, i32** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %arg.addr, metadata !6394, metadata !DIExpression()), !dbg !6395
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !6396, metadata !DIExpression()), !dbg !6397
  %0 = load i32*, i32** %arg.addr, align 8, !dbg !6398
  %1 = load i32, i32* %0, align 4, !dbg !6400
  %2 = load i32, i32* %val.addr, align 4, !dbg !6401
  %cmp = icmp ugt i32 %1, %2, !dbg !6402
  br i1 %cmp, label %if.then, label %if.end, !dbg !6403

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %val.addr, align 4, !dbg !6404
  %4 = load i32*, i32** %arg.addr, align 8, !dbg !6406
  store i32 %3, i32* %4, align 4, !dbg !6407
  store i32 -22, i32* %retval, align 4, !dbg !6408
  br label %return, !dbg !6408

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6409
  br label %return, !dbg !6409

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !6410
  ret i32 %5, !dbg !6410
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtd_ao_eoc(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i64 %context) #2 !dbg !6411 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %context.addr = alloca i64, align 8
  %chan = alloca i32, align 4
  %bit = alloca i32, align 4
  %status = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !6412, metadata !DIExpression()), !dbg !6413
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !6414, metadata !DIExpression()), !dbg !6415
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !6416, metadata !DIExpression()), !dbg !6417
  store i64 %context, i64* %context.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %context.addr, metadata !6418, metadata !DIExpression()), !dbg !6419
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !6420, metadata !DIExpression()), !dbg !6421
  %0 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !6422
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %0, i32 0, i32 4, !dbg !6422
  %1 = load i32, i32* %chanspec, align 4, !dbg !6422
  %and = and i32 %1, 65535, !dbg !6422
  store i32 %and, i32* %chan, align 4, !dbg !6421
  call void @llvm.dbg.declare(metadata i32* %bit, metadata !6423, metadata !DIExpression()), !dbg !6424
  %2 = load i32, i32* %chan, align 4, !dbg !6425
  %cmp = icmp eq i32 %2, 0, !dbg !6426
  %3 = zext i1 %cmp to i64, !dbg !6427
  %cond = select i1 %cmp, i64 1, i64 16, !dbg !6427
  %conv = trunc i64 %cond to i32, !dbg !6427
  store i32 %conv, i32* %bit, align 4, !dbg !6424
  call void @llvm.dbg.declare(metadata i32* %status, metadata !6428, metadata !DIExpression()), !dbg !6429
  %4 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6430
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 17, !dbg !6431
  %5 = load i8*, i8** %mmio, align 8, !dbg !6431
  %add.ptr = getelementptr i8, i8* %5, i64 16, !dbg !6432
  %call = call i32 @readl(i8* %add.ptr) #5, !dbg !6433
  store i32 %call, i32* %status, align 4, !dbg !6434
  %6 = load i32, i32* %status, align 4, !dbg !6435
  %7 = load i32, i32* %bit, align 4, !dbg !6437
  %and1 = and i32 %6, %7, !dbg !6438
  %tobool = icmp ne i32 %and1, 0, !dbg !6438
  br i1 %tobool, label %if.then, label %if.end, !dbg !6439

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6440
  br label %return, !dbg !6440

if.end:                                           ; preds = %entry
  store i32 -16, i32* %retval, align 4, !dbg !6441
  br label %return, !dbg !6441

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !6442
  ret i32 %8, !dbg !6442
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_dio_update_state(%struct.comedi_subdevice*, i32*) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_dio_insn_config(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writeb(i8 zeroext %val, i8* %addr) #2 !dbg !6443 {
entry:
  %val.addr = alloca i8, align 1
  %addr.addr = alloca i8*, align 8
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !6446, metadata !DIExpression()), !dbg !6447
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !6448, metadata !DIExpression()), !dbg !6447
  %0 = load i8, i8* %val.addr, align 1, !dbg !6447
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !6447
  call void asm sideeffect "movb $0,$1", "q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 %0, i8* %1) #6, !dbg !6447, !srcloc !6449
  ret void, !dbg !6447
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rtd520_pci_probe(%struct.pci_dev* %dev, %struct.pci_device_id* %id) #2 !dbg !6450 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %id.addr = alloca %struct.pci_device_id*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !6451, metadata !DIExpression()), !dbg !6452
  store %struct.pci_device_id* %id, %struct.pci_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_device_id** %id.addr, metadata !6453, metadata !DIExpression()), !dbg !6454
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !6455
  %1 = load %struct.pci_device_id*, %struct.pci_device_id** %id.addr, align 8, !dbg !6456
  %driver_data = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %1, i32 0, i32 6, !dbg !6457
  %2 = load i64, i64* %driver_data, align 8, !dbg !6457
  %call = call i32 @comedi_pci_auto_config(%struct.pci_dev* %0, %struct.comedi_driver* @rtd520_driver, i64 %2) #5, !dbg !6458
  ret i32 %call, !dbg !6459
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
attributes #6 = { nounwind }
attributes #7 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4312, !4313, !4314, !4315}
!llvm.ident = !{!4316}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rtd520_driver_init234", scope: !2, file: !3, line: 1361, type: !202, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !133, globals: !143, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/staging/comedi/drivers/rtd520.c", directory: "/home/lizy2001/genbc/linux")
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
!133 = !{!134, !136, !139, !140}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !138)
!138 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!139 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !142)
!142 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!143 = !{!0, !144, !151, !158, !163, !168, !173, !4009, !4019, !4021, !4023, !4025, !4028, !4309}
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(name: "__exitcall_rtd520_driver_exit", scope: !2, file: !3, line: 1361, type: !146, isLocal: true, isDefinition: true)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !147, line: 117, baseType: !148)
!147 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DISubroutineType(types: !150)
!150 = !{null}
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author235", scope: !2, file: !3, line: 1363, type: !153, isLocal: true, isDefinition: true, align: 8)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 352, elements: !156)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!155 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!156 = !{!157}
!157 = !DISubrange(count: 44)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description236", scope: !2, file: !3, line: 1364, type: !160, isLocal: true, isDefinition: true, align: 8)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 344, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 43)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file237", scope: !2, file: !3, line: 1365, type: !165, isLocal: true, isDefinition: true, align: 8)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 400, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 50)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license238", scope: !2, file: !3, line: 1365, type: !170, isLocal: true, isDefinition: true, align: 8)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 152, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 19)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(name: "rtd520_driver", scope: !2, file: !3, line: 1335, type: !175, isLocal: true, isDefinition: true)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_driver", file: !123, line: 437, size: 576, elements: !176)
!176 = !{!177, !179, !181, !185, !3999, !4000, !4004, !4005, !4008}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !175, file: !123, line: 439, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !175, file: !123, line: 441, baseType: !180, size: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !175, file: !123, line: 442, baseType: !182, size: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !184, line: 76, flags: DIFlagFwdDecl)
!184 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!185 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !175, file: !123, line: 443, baseType: !186, size: 64, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DISubroutineType(types: !188)
!188 = !{!139, !189, !3992}
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_device", file: !123, line: 541, size: 1920, elements: !191)
!191 = !{!192, !193, !194, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3980, !3984, !3988}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !190, file: !123, line: 542, baseType: !139, size: 32)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !190, file: !123, line: 543, baseType: !178, size: 64, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "pacer", scope: !190, file: !123, line: 544, baseType: !195, size: 64, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_8254", file: !197, line: 78, size: 704, elements: !198)
!197 = !DIFile(filename: "drivers/staging/comedi/drivers/comedi_8254.h", directory: "/home/lizy2001/genbc/linux")
!198 = !{!199, !201, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !216, !217, !222}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "iobase", scope: !196, file: !197, line: 79, baseType: !200, size: 64)
!200 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "mmio", scope: !196, file: !197, line: 80, baseType: !202, size: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "iosize", scope: !196, file: !197, line: 81, baseType: !7, size: 32, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "regshift", scope: !196, file: !197, line: 82, baseType: !7, size: 32, offset: 160)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "osc_base", scope: !196, file: !197, line: 83, baseType: !7, size: 32, offset: 192)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "divisor", scope: !196, file: !197, line: 84, baseType: !7, size: 32, offset: 224)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "divisor1", scope: !196, file: !197, line: 85, baseType: !7, size: 32, offset: 256)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "divisor2", scope: !196, file: !197, line: 86, baseType: !7, size: 32, offset: 288)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "next_div", scope: !196, file: !197, line: 87, baseType: !7, size: 32, offset: 320)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "next_div1", scope: !196, file: !197, line: 88, baseType: !7, size: 32, offset: 352)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "next_div2", scope: !196, file: !197, line: 89, baseType: !7, size: 32, offset: 384)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "clock_src", scope: !196, file: !197, line: 90, baseType: !213, size: 96, offset: 416)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 96, elements: !214)
!214 = !{!215}
!215 = !DISubrange(count: 3)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "gate_src", scope: !196, file: !197, line: 91, baseType: !213, size: 96, offset: 512)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !196, file: !197, line: 92, baseType: !218, size: 24, offset: 608)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 24, elements: !214)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !220, line: 30, baseType: !221)
!220 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!221 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "insn_config", scope: !196, file: !197, line: 94, baseType: !223, size: 64, offset: 640)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{!139, !189, !226, !3945, !2711}
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_subdevice", file: !123, line: 153, size: 1792, elements: !228)
!228 = !{!229, !230, !231, !232, !233, !234, !235, !236, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3903, !3916, !3919, !3920, !3921, !3922, !3923, !3924, !3928, !3933, !3934, !3935, !3936, !3940, !3941, !3942, !3943, !3944}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !227, file: !123, line: 154, baseType: !189, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !227, file: !123, line: 155, baseType: !139, size: 32, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !227, file: !123, line: 156, baseType: !139, size: 32, offset: 96)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "n_chan", scope: !227, file: !123, line: 157, baseType: !139, size: 32, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "subdev_flags", scope: !227, file: !123, line: 158, baseType: !139, size: 32, offset: 160)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "len_chanlist", scope: !227, file: !123, line: 159, baseType: !139, size: 32, offset: 192)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !227, file: !123, line: 161, baseType: !202, size: 64, offset: 256)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "async", scope: !227, file: !123, line: 163, baseType: !237, size: 64, offset: 320)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_async", file: !123, line: 347, size: 1536, elements: !239)
!239 = !{!240, !241, !242, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3889, !3890, !3891}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !238, file: !123, line: 348, baseType: !202, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_bufsz", scope: !238, file: !123, line: 349, baseType: !7, size: 32, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "buf_map", scope: !238, file: !123, line: 350, baseType: !243, size: 64, offset: 128)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_map", file: !123, line: 249, size: 256, elements: !245)
!245 = !{!246, !3846, !3852, !3853, !3854}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "dma_hw_dev", scope: !244, file: !123, line: 250, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !249)
!249 = !{!250, !3400, !3401, !3404, !3405, !3456, !3547, !3548, !3549, !3550, !3551, !3560, !3665, !3678, !3681, !3682, !3686, !3688, !3689, !3690, !3694, !3700, !3701, !3704, !3708, !3798, !3799, !3800, !3801, !3802, !3834, !3835, !3836, !3839, !3842, !3843, !3844, !3845}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !248, file: !73, line: 462, baseType: !251, size: 512)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !252, line: 64, size: 512, elements: !253)
!252 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!253 = !{!254, !255, !261, !263, !321, !3251, !3390, !3395, !3396, !3397, !3398, !3399}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !251, file: !252, line: 65, baseType: !180, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !251, file: !252, line: 66, baseType: !256, size: 128, offset: 64)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !220, line: 178, size: 128, elements: !257)
!257 = !{!258, !260}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !256, file: !220, line: 179, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !256, file: !220, line: 179, baseType: !259, size: 64, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !251, file: !252, line: 67, baseType: !262, size: 64, offset: 192)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !251, file: !252, line: 68, baseType: !264, size: 64, offset: 256)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !252, line: 192, size: 704, elements: !266)
!266 = !{!267, !268, !284, !285}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !265, file: !252, line: 193, baseType: !256, size: 128)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !265, file: !252, line: 194, baseType: !269, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !270, line: 83, baseType: !271)
!270 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !270, line: 71, elements: !272)
!272 = !{!273}
!273 = !DIDerivedType(tag: DW_TAG_member, scope: !271, file: !270, line: 72, baseType: !274)
!274 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !271, file: !270, line: 72, elements: !275)
!275 = !{!276}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !274, file: !270, line: 73, baseType: !277)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !270, line: 20, elements: !278)
!278 = !{!279}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !277, file: !270, line: 21, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !281, line: 25, baseType: !282)
!281 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !281, line: 25, elements: !283)
!283 = !{}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !265, file: !252, line: 195, baseType: !251, size: 512, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !265, file: !252, line: 196, baseType: !286, size: 64, offset: 640)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !288)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !252, line: 156, size: 192, elements: !289)
!289 = !{!290, !295, !300}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !288, file: !252, line: 157, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !292)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{!139, !264, !262}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !288, file: !252, line: 158, baseType: !296, size: 64, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !297)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DISubroutineType(types: !299)
!299 = !{!180, !264, !262}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !288, file: !252, line: 159, baseType: !301, size: 64, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{!139, !264, !262, !305}
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !252, line: 148, size: 20736, elements: !307)
!307 = !{!308, !311, !315, !316, !320}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !306, file: !252, line: 149, baseType: !309, size: 192)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 192, elements: !214)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !306, file: !252, line: 150, baseType: !312, size: 4096, offset: 192)
!312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 4096, elements: !313)
!313 = !{!314}
!314 = !DISubrange(count: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !306, file: !252, line: 151, baseType: !139, size: 32, offset: 4288)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !306, file: !252, line: 152, baseType: !317, size: 16384, offset: 4320)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 16384, elements: !318)
!318 = !{!319}
!319 = !DISubrange(count: 2048)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !306, file: !252, line: 153, baseType: !139, size: 32, offset: 20704)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !251, file: !252, line: 69, baseType: !322, size: 64, offset: 320)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !252, line: 138, size: 448, elements: !324)
!324 = !{!325, !329, !357, !359, !3213, !3241, !3245}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !323, file: !252, line: 139, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{null, !262}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !323, file: !252, line: 140, baseType: !330, size: 64, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !332)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !333, line: 230, size: 128, elements: !334)
!333 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!334 = !{!335, !350}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !332, file: !333, line: 231, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!339, !262, !344, !310}
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !220, line: 60, baseType: !340)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !341, line: 73, baseType: !342)
!341 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !341, line: 15, baseType: !343)
!343 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !333, line: 30, size: 128, elements: !346)
!346 = !{!347, !348}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !345, file: !333, line: 31, baseType: !180, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !345, file: !333, line: 32, baseType: !349, size: 16, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !220, line: 19, baseType: !138)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !332, file: !333, line: 232, baseType: !351, size: 64, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{!339, !262, !344, !180, !354}
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !220, line: 55, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !341, line: 72, baseType: !356)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !341, line: 16, baseType: !200)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !323, file: !252, line: 141, baseType: !358, size: 64, offset: 128)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !323, file: !252, line: 142, baseType: !360, size: 64, offset: 192)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !363)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !333, line: 84, size: 320, elements: !364)
!364 = !{!365, !366, !370, !3210, !3211}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !363, file: !333, line: 85, baseType: !180, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !363, file: !333, line: 86, baseType: !367, size: 64, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DISubroutineType(types: !369)
!369 = !{!349, !262, !344, !139}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !363, file: !333, line: 88, baseType: !371, size: 64, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DISubroutineType(types: !373)
!373 = !{!349, !262, !374, !139}
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !333, line: 168, size: 448, elements: !376)
!376 = !{!377, !378, !379, !380, !3205, !3206}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !375, file: !333, line: 169, baseType: !345, size: 128)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !375, file: !333, line: 170, baseType: !354, size: 64, offset: 128)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !375, file: !333, line: 171, baseType: !202, size: 64, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !375, file: !333, line: 172, baseType: !381, size: 64, offset: 256)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{!339, !384, !262, !374, !310, !560, !354}
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !386)
!386 = !{!387, !405, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3188, !3189, !3198, !3199, !3200, !3201, !3202, !3203, !3204}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !385, file: !44, line: 920, baseType: !388, size: 128)
!388 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !385, file: !44, line: 917, size: 128, elements: !389)
!389 = !{!390, !396}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !388, file: !44, line: 918, baseType: !391, size: 64)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !392, line: 58, size: 64, elements: !393)
!392 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!393 = !{!394}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !391, file: !392, line: 59, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !388, file: !44, line: 919, baseType: !397, size: 128, align: 64)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !220, line: 216, size: 128, align: 64, elements: !398)
!398 = !{!399, !401}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !397, file: !220, line: 217, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !397, file: !220, line: 218, baseType: !402, size: 64, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{null, !400}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !385, file: !44, line: 921, baseType: !406, size: 128, offset: 128)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !407, line: 8, size: 128, elements: !408)
!407 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!408 = !{!409, !413}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !406, file: !407, line: 9, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !412, line: 18, flags: DIFlagFwdDecl)
!412 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!413 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !406, file: !407, line: 10, baseType: !414, size: 64, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !412, line: 89, size: 1536, elements: !416)
!416 = !{!417, !418, !428, !436, !437, !459, !3138, !3140, !3152, !3153, !3154, !3155, !3156, !3162, !3163, !3164}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !415, file: !412, line: 91, baseType: !7, size: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !415, file: !412, line: 92, baseType: !419, size: 32, offset: 32)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !420, line: 277, baseType: !421)
!420 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !420, line: 277, size: 32, elements: !422)
!422 = !{!423}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !421, file: !420, line: 277, baseType: !424, size: 32)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !420, line: 70, baseType: !425)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !420, line: 65, size: 32, elements: !426)
!426 = !{!427}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !425, file: !420, line: 66, baseType: !7, size: 32)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !415, file: !412, line: 93, baseType: !429, size: 128, offset: 64)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !430, line: 38, size: 128, elements: !431)
!430 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!431 = !{!432, !434}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !429, file: !430, line: 39, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !429, file: !430, line: 39, baseType: !435, size: 64, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !415, file: !412, line: 94, baseType: !414, size: 64, offset: 192)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !415, file: !412, line: 95, baseType: !438, size: 128, offset: 256)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !412, line: 47, size: 128, elements: !439)
!439 = !{!440, !456}
!440 = !DIDerivedType(tag: DW_TAG_member, scope: !438, file: !412, line: 48, baseType: !441, size: 64)
!441 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !438, file: !412, line: 48, size: 64, elements: !442)
!442 = !{!443, !452}
!443 = !DIDerivedType(tag: DW_TAG_member, scope: !441, file: !412, line: 49, baseType: !444, size: 64)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !441, file: !412, line: 49, size: 64, elements: !445)
!445 = !{!446, !451}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !444, file: !412, line: 50, baseType: !447, size: 32)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !448, line: 21, baseType: !449)
!448 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !450, line: 27, baseType: !7)
!450 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!451 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !444, file: !412, line: 50, baseType: !447, size: 32, offset: 32)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !441, file: !412, line: 52, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !448, line: 23, baseType: !454)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !450, line: 31, baseType: !455)
!455 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !438, file: !412, line: 54, baseType: !457, size: 64, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !415, file: !412, line: 96, baseType: !460, size: 64, offset: 384)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !462)
!462 = !{!463, !464, !465, !473, !480, !481, !627, !2849, !2850, !2851, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !3114, !3122, !3123, !3124, !3134, !3135, !3136, !3137}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !461, file: !44, line: 611, baseType: !349, size: 16)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !461, file: !44, line: 612, baseType: !138, size: 16, offset: 16)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !461, file: !44, line: 613, baseType: !466, size: 32, offset: 32)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !467, line: 23, baseType: !468)
!467 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !467, line: 21, size: 32, elements: !469)
!469 = !{!470}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !468, file: !467, line: 22, baseType: !471, size: 32)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !220, line: 32, baseType: !472)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !341, line: 49, baseType: !7)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !461, file: !44, line: 614, baseType: !474, size: 32, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !467, line: 28, baseType: !475)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !467, line: 26, size: 32, elements: !476)
!476 = !{!477}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !475, file: !467, line: 27, baseType: !478, size: 32)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !220, line: 33, baseType: !479)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !341, line: 50, baseType: !7)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !461, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !461, file: !44, line: 622, baseType: !482, size: 64, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !484)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !485)
!485 = !{!486, !490, !503, !507, !513, !517, !521, !525, !529, !533, !537, !538, !544, !548, !574, !603, !607, !613, !618, !622, !623}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !484, file: !44, line: 1865, baseType: !487, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!414, !460, !414, !7}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !484, file: !44, line: 1866, baseType: !491, size: 64, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!180, !414, !460, !494}
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !496, line: 10, size: 128, elements: !497)
!496 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!497 = !{!498, !502}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !495, file: !496, line: 11, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{null, !202}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !495, file: !496, line: 12, baseType: !202, size: 64, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !484, file: !44, line: 1867, baseType: !504, size: 64, offset: 128)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!139, !460, !139}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !484, file: !44, line: 1868, baseType: !508, size: 64, offset: 192)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!511, !460, !139}
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !484, file: !44, line: 1870, baseType: !514, size: 64, offset: 256)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!139, !414, !310, !139}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !484, file: !44, line: 1872, baseType: !518, size: 64, offset: 320)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!139, !460, !414, !349, !219}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !484, file: !44, line: 1873, baseType: !522, size: 64, offset: 384)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{!139, !414, !460, !414}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !484, file: !44, line: 1874, baseType: !526, size: 64, offset: 448)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DISubroutineType(types: !528)
!528 = !{!139, !460, !414}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !484, file: !44, line: 1875, baseType: !530, size: 64, offset: 512)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DISubroutineType(types: !532)
!532 = !{!139, !460, !414, !180}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !484, file: !44, line: 1876, baseType: !534, size: 64, offset: 576)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{!139, !460, !414, !349}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !484, file: !44, line: 1877, baseType: !526, size: 64, offset: 640)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !484, file: !44, line: 1878, baseType: !539, size: 64, offset: 704)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{!139, !460, !414, !349, !542}
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !220, line: 16, baseType: !543)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !220, line: 13, baseType: !447)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !484, file: !44, line: 1879, baseType: !545, size: 64, offset: 768)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!139, !460, !414, !460, !414, !7}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !484, file: !44, line: 1881, baseType: !549, size: 64, offset: 832)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{!139, !414, !552}
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !554)
!554 = !{!555, !556, !557, !558, !559, !563, !571, !572, !573}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !553, file: !44, line: 220, baseType: !7, size: 32)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !553, file: !44, line: 221, baseType: !349, size: 16, offset: 32)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !553, file: !44, line: 222, baseType: !466, size: 32, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !553, file: !44, line: 223, baseType: !474, size: 32, offset: 96)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !553, file: !44, line: 224, baseType: !560, size: 64, offset: 128)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !220, line: 46, baseType: !561)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !341, line: 88, baseType: !562)
!562 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !553, file: !44, line: 225, baseType: !564, size: 128, offset: 192)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !565, line: 13, size: 128, elements: !566)
!565 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!566 = !{!567, !570}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !564, file: !565, line: 14, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !565, line: 8, baseType: !569)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !450, line: 30, baseType: !562)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !564, file: !565, line: 15, baseType: !343, size: 64, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !553, file: !44, line: 226, baseType: !564, size: 128, offset: 320)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !553, file: !44, line: 227, baseType: !564, size: 128, offset: 448)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !553, file: !44, line: 234, baseType: !384, size: 64, offset: 576)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !484, file: !44, line: 1882, baseType: !575, size: 64, offset: 896)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!139, !578, !580, !447, !7}
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !406)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !582, line: 22, size: 1152, elements: !583)
!582 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!583 = !{!584, !585, !586, !587, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !581, file: !582, line: 23, baseType: !447, size: 32)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !581, file: !582, line: 24, baseType: !349, size: 16, offset: 32)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !581, file: !582, line: 25, baseType: !7, size: 32, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !581, file: !582, line: 26, baseType: !588, size: 32, offset: 96)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !220, line: 104, baseType: !447)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !581, file: !582, line: 27, baseType: !453, size: 64, offset: 128)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !581, file: !582, line: 28, baseType: !453, size: 64, offset: 192)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !581, file: !582, line: 37, baseType: !453, size: 64, offset: 256)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !581, file: !582, line: 38, baseType: !542, size: 32, offset: 320)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !581, file: !582, line: 39, baseType: !542, size: 32, offset: 352)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !581, file: !582, line: 40, baseType: !466, size: 32, offset: 384)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !581, file: !582, line: 41, baseType: !474, size: 32, offset: 416)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !581, file: !582, line: 42, baseType: !560, size: 64, offset: 448)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !581, file: !582, line: 43, baseType: !564, size: 128, offset: 512)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !581, file: !582, line: 44, baseType: !564, size: 128, offset: 640)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !581, file: !582, line: 45, baseType: !564, size: 128, offset: 768)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !581, file: !582, line: 46, baseType: !564, size: 128, offset: 896)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !581, file: !582, line: 47, baseType: !453, size: 64, offset: 1024)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !581, file: !582, line: 48, baseType: !453, size: 64, offset: 1088)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !484, file: !44, line: 1883, baseType: !604, size: 64, offset: 960)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{!339, !414, !310, !354}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !484, file: !44, line: 1884, baseType: !608, size: 64, offset: 1024)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{!139, !460, !611, !453, !453}
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !484, file: !44, line: 1886, baseType: !614, size: 64, offset: 1088)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{!139, !460, !617, !139}
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !484, file: !44, line: 1887, baseType: !619, size: 64, offset: 1152)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{!139, !460, !414, !384, !7, !349}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !484, file: !44, line: 1890, baseType: !534, size: 64, offset: 1216)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !484, file: !44, line: 1891, baseType: !624, size: 64, offset: 1280)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!139, !460, !511, !139}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !461, file: !44, line: 623, baseType: !628, size: 64, offset: 192)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !630)
!630 = !{!631, !632, !633, !634, !635, !636, !683, !2456, !2538, !2621, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2637, !2641, !2642, !2645, !2646, !2649, !2650, !2651, !2692, !2719, !2720, !2721, !2722, !2723, !2724, !2727, !2729, !2736, !2737, !2739, !2740, !2741, !2800, !2801, !2816, !2817, !2818, !2819, !2820, !2823, !2824, !2825, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !629, file: !44, line: 1417, baseType: !256, size: 128)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !629, file: !44, line: 1418, baseType: !542, size: 32, offset: 128)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !629, file: !44, line: 1419, baseType: !142, size: 8, offset: 160)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !629, file: !44, line: 1420, baseType: !200, size: 64, offset: 192)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !629, file: !44, line: 1421, baseType: !560, size: 64, offset: 256)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !629, file: !44, line: 1422, baseType: !637, size: 64, offset: 320)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !639)
!639 = !{!640, !641, !642, !649, !653, !657, !661, !662, !663, !673, !676, !677, !678, !680, !681, !682}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !638, file: !44, line: 2229, baseType: !180, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !638, file: !44, line: 2230, baseType: !139, size: 32, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !638, file: !44, line: 2238, baseType: !643, size: 64, offset: 128)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!139, !646}
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !648, line: 28, flags: DIFlagFwdDecl)
!648 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!649 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !638, file: !44, line: 2239, baseType: !650, size: 64, offset: 192)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !652)
!652 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !638, file: !44, line: 2240, baseType: !654, size: 64, offset: 256)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!414, !637, !139, !180, !202}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !638, file: !44, line: 2242, baseType: !658, size: 64, offset: 320)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{null, !628}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !638, file: !44, line: 2243, baseType: !182, size: 64, offset: 384)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !638, file: !44, line: 2244, baseType: !637, size: 64, offset: 448)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !638, file: !44, line: 2245, baseType: !664, size: 64, offset: 512)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !220, line: 182, size: 64, elements: !665)
!665 = !{!666}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !664, file: !220, line: 183, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !220, line: 186, size: 128, elements: !669)
!669 = !{!670, !671}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !668, file: !220, line: 187, baseType: !667, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !668, file: !220, line: 187, baseType: !672, size: 64, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !638, file: !44, line: 2247, baseType: !674, offset: 576)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !675, line: 187, elements: !283)
!675 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!676 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !638, file: !44, line: 2248, baseType: !674, offset: 576)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !638, file: !44, line: 2249, baseType: !674, offset: 576)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !638, file: !44, line: 2250, baseType: !679, offset: 576)
!679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !674, elements: !214)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !638, file: !44, line: 2252, baseType: !674, offset: 576)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !638, file: !44, line: 2253, baseType: !674, offset: 576)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !638, file: !44, line: 2254, baseType: !674, offset: 576)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !629, file: !44, line: 1423, baseType: !684, size: 64, offset: 384)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !686)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !687)
!687 = !{!688, !692, !696, !697, !701, !707, !711, !712, !713, !717, !721, !722, !723, !724, !730, !735, !736, !743, !744, !745, !746, !2440, !2455}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !686, file: !44, line: 1936, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{!460, !628}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !686, file: !44, line: 1937, baseType: !693, size: 64, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DISubroutineType(types: !695)
!695 = !{null, !460}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !686, file: !44, line: 1938, baseType: !693, size: 64, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !686, file: !44, line: 1940, baseType: !698, size: 64, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{null, !460, !139}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !686, file: !44, line: 1941, baseType: !702, size: 64, offset: 256)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DISubroutineType(types: !704)
!704 = !{!139, !460, !705}
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !686, file: !44, line: 1942, baseType: !708, size: 64, offset: 320)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!139, !460}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !686, file: !44, line: 1943, baseType: !693, size: 64, offset: 384)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !686, file: !44, line: 1944, baseType: !658, size: 64, offset: 448)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !686, file: !44, line: 1945, baseType: !714, size: 64, offset: 512)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!139, !628, !139}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !686, file: !44, line: 1946, baseType: !718, size: 64, offset: 576)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{!139, !628}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !686, file: !44, line: 1947, baseType: !718, size: 64, offset: 640)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !686, file: !44, line: 1948, baseType: !718, size: 64, offset: 704)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !686, file: !44, line: 1949, baseType: !718, size: 64, offset: 768)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !686, file: !44, line: 1950, baseType: !725, size: 64, offset: 832)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{!139, !414, !728}
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !686, file: !44, line: 1951, baseType: !731, size: 64, offset: 896)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{!139, !628, !734, !310}
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !686, file: !44, line: 1952, baseType: !658, size: 64, offset: 960)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !686, file: !44, line: 1954, baseType: !737, size: 64, offset: 1024)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!139, !740, !414}
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !742, line: 539, flags: DIFlagFwdDecl)
!742 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!743 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !686, file: !44, line: 1955, baseType: !737, size: 64, offset: 1088)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !686, file: !44, line: 1956, baseType: !737, size: 64, offset: 1152)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !686, file: !44, line: 1957, baseType: !737, size: 64, offset: 1216)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !686, file: !44, line: 1963, baseType: !747, size: 64, offset: 1280)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{!139, !628, !750, !773}
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !752, line: 68, size: 512, align: 128, elements: !753)
!752 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!753 = !{!754, !755, !2432, !2439}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !751, file: !752, line: 69, baseType: !200, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, scope: !751, file: !752, line: 77, baseType: !756, size: 320, offset: 64)
!756 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !751, file: !752, line: 77, size: 320, elements: !757)
!757 = !{!758, !946, !951, !979, !987, !993, !2363, !2431}
!758 = !DIDerivedType(tag: DW_TAG_member, scope: !756, file: !752, line: 78, baseType: !759, size: 320)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !756, file: !752, line: 78, size: 320, elements: !760)
!760 = !{!761, !762, !944, !945}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !759, file: !752, line: 84, baseType: !256, size: 128)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !759, file: !752, line: 86, baseType: !763, size: 64, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !765)
!765 = !{!766, !767, !775, !776, !781, !796, !812, !813, !814, !815, !937, !938, !941, !942, !943}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !764, file: !44, line: 452, baseType: !460, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !764, file: !44, line: 453, baseType: !768, size: 128, offset: 64)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !769, line: 292, size: 128, elements: !770)
!769 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!770 = !{!771, !772, !774}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !768, file: !769, line: 293, baseType: !269)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !768, file: !769, line: 295, baseType: !773, size: 32)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !220, line: 148, baseType: !7)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !768, file: !769, line: 296, baseType: !202, size: 64, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !764, file: !44, line: 454, baseType: !773, size: 32, offset: 192)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !764, file: !44, line: 455, baseType: !777, size: 32, offset: 224)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !220, line: 168, baseType: !778)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !220, line: 166, size: 32, elements: !779)
!779 = !{!780}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !778, file: !220, line: 167, baseType: !139, size: 32)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !764, file: !44, line: 460, baseType: !782, size: 128, offset: 256)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !783, line: 125, size: 128, elements: !784)
!783 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!784 = !{!785, !795}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !782, file: !783, line: 126, baseType: !786, size: 64)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !783, line: 31, size: 64, elements: !787)
!787 = !{!788}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !786, file: !783, line: 32, baseType: !789, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !783, line: 24, size: 192, align: 64, elements: !791)
!791 = !{!792, !793, !794}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !790, file: !783, line: 25, baseType: !200, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !790, file: !783, line: 26, baseType: !789, size: 64, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !790, file: !783, line: 27, baseType: !789, size: 64, offset: 128)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !782, file: !783, line: 127, baseType: !789, size: 64, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !764, file: !44, line: 461, baseType: !797, size: 256, offset: 384)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !798, line: 35, size: 256, elements: !799)
!798 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!799 = !{!800, !808, !809, !811}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !797, file: !798, line: 36, baseType: !801, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !802, line: 13, baseType: !803)
!802 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !220, line: 175, baseType: !804)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !220, line: 173, size: 64, elements: !805)
!805 = !{!806}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !804, file: !220, line: 174, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !448, line: 22, baseType: !569)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !797, file: !798, line: 42, baseType: !801, size: 64, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !797, file: !798, line: 46, baseType: !810, offset: 128)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !270, line: 29, baseType: !277)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !797, file: !798, line: 47, baseType: !256, size: 128, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !764, file: !44, line: 462, baseType: !200, size: 64, offset: 640)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !764, file: !44, line: 463, baseType: !200, size: 64, offset: 704)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !764, file: !44, line: 464, baseType: !200, size: 64, offset: 768)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !764, file: !44, line: 465, baseType: !816, size: 64, offset: 832)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !818)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !819)
!819 = !{!820, !824, !828, !832, !836, !840, !846, !852, !856, !861, !865, !869, !873, !901, !905, !911, !912, !913, !917, !922, !926, !933}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !818, file: !44, line: 368, baseType: !821, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DISubroutineType(types: !823)
!823 = !{!139, !750, !705}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !818, file: !44, line: 369, baseType: !825, size: 64, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{!139, !384, !750}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !818, file: !44, line: 372, baseType: !829, size: 64, offset: 128)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!139, !763, !705}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !818, file: !44, line: 375, baseType: !833, size: 64, offset: 192)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{!139, !750}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !818, file: !44, line: 381, baseType: !837, size: 64, offset: 256)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{!139, !384, !763, !259, !7}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !818, file: !44, line: 383, baseType: !841, size: 64, offset: 320)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{null, !844}
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !818, file: !44, line: 385, baseType: !847, size: 64, offset: 384)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{!139, !384, !763, !560, !7, !7, !850, !851}
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !818, file: !44, line: 388, baseType: !853, size: 64, offset: 448)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!139, !384, !763, !560, !7, !7, !750, !202}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !818, file: !44, line: 393, baseType: !857, size: 64, offset: 512)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{!860, !763, !860}
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !220, line: 125, baseType: !453)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !818, file: !44, line: 394, baseType: !862, size: 64, offset: 576)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DISubroutineType(types: !864)
!864 = !{null, !750, !7, !7}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !818, file: !44, line: 395, baseType: !866, size: 64, offset: 640)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{!139, !750, !773}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !818, file: !44, line: 396, baseType: !870, size: 64, offset: 704)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{null, !750}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !818, file: !44, line: 397, baseType: !874, size: 64, offset: 768)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DISubroutineType(types: !876)
!876 = !{!339, !877, !899}
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !879)
!879 = !{!880, !881, !882, !886, !887, !888, !891, !892}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !878, file: !44, line: 321, baseType: !384, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !878, file: !44, line: 326, baseType: !560, size: 64, offset: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !878, file: !44, line: 327, baseType: !883, size: 64, offset: 128)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DISubroutineType(types: !885)
!885 = !{null, !877, !343, !343}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !878, file: !44, line: 328, baseType: !202, size: 64, offset: 192)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !878, file: !44, line: 329, baseType: !139, size: 32, offset: 256)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !878, file: !44, line: 330, baseType: !889, size: 16, offset: 288)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !448, line: 19, baseType: !890)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !450, line: 24, baseType: !138)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !878, file: !44, line: 331, baseType: !889, size: 16, offset: 304)
!892 = !DIDerivedType(tag: DW_TAG_member, scope: !878, file: !44, line: 332, baseType: !893, size: 64, offset: 320)
!893 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !878, file: !44, line: 332, size: 64, elements: !894)
!894 = !{!895, !896}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !893, file: !44, line: 333, baseType: !7, size: 32)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !893, file: !44, line: 334, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !818, file: !44, line: 402, baseType: !902, size: 64, offset: 832)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DISubroutineType(types: !904)
!904 = !{!139, !763, !750, !750, !5}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !818, file: !44, line: 404, baseType: !906, size: 64, offset: 896)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DISubroutineType(types: !908)
!908 = !{!219, !750, !909}
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !910, line: 305, baseType: !7)
!910 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!911 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !818, file: !44, line: 405, baseType: !870, size: 64, offset: 960)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !818, file: !44, line: 406, baseType: !833, size: 64, offset: 1024)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !818, file: !44, line: 407, baseType: !914, size: 64, offset: 1088)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DISubroutineType(types: !916)
!916 = !{!139, !750, !200, !200}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !818, file: !44, line: 409, baseType: !918, size: 64, offset: 1152)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DISubroutineType(types: !920)
!920 = !{null, !750, !921, !921}
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !818, file: !44, line: 410, baseType: !923, size: 64, offset: 1216)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{!139, !763, !750}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !818, file: !44, line: 413, baseType: !927, size: 64, offset: 1280)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DISubroutineType(types: !929)
!929 = !{!139, !930, !384, !932}
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !818, file: !44, line: 415, baseType: !934, size: 64, offset: 1344)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DISubroutineType(types: !936)
!936 = !{null, !384}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !764, file: !44, line: 466, baseType: !200, size: 64, offset: 896)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !764, file: !44, line: 467, baseType: !939, size: 32, offset: 960)
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !940, line: 8, baseType: !447)
!940 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!941 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !764, file: !44, line: 468, baseType: !269, offset: 992)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !764, file: !44, line: 469, baseType: !256, size: 128, offset: 1024)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !764, file: !44, line: 470, baseType: !202, size: 64, offset: 1152)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !759, file: !752, line: 87, baseType: !200, size: 64, offset: 192)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !759, file: !752, line: 94, baseType: !200, size: 64, offset: 256)
!946 = !DIDerivedType(tag: DW_TAG_member, scope: !756, file: !752, line: 96, baseType: !947, size: 64)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !756, file: !752, line: 96, size: 64, elements: !948)
!948 = !{!949}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !947, file: !752, line: 101, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !220, line: 143, baseType: !453)
!951 = !DIDerivedType(tag: DW_TAG_member, scope: !756, file: !752, line: 103, baseType: !952, size: 320)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !756, file: !752, line: 103, size: 320, elements: !953)
!953 = !{!954, !964, !967, !968}
!954 = !DIDerivedType(tag: DW_TAG_member, scope: !952, file: !752, line: 104, baseType: !955, size: 128)
!955 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !952, file: !752, line: 104, size: 128, elements: !956)
!956 = !{!957, !958}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !955, file: !752, line: 105, baseType: !256, size: 128)
!958 = !DIDerivedType(tag: DW_TAG_member, scope: !955, file: !752, line: 106, baseType: !959, size: 128)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !955, file: !752, line: 106, size: 128, elements: !960)
!960 = !{!961, !962, !963}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !959, file: !752, line: 107, baseType: !750, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !959, file: !752, line: 109, baseType: !139, size: 32, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !959, file: !752, line: 110, baseType: !139, size: 32, offset: 96)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !952, file: !752, line: 117, baseType: !965, size: 64, offset: 128)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !752, line: 117, flags: DIFlagFwdDecl)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !952, file: !752, line: 119, baseType: !202, size: 64, offset: 192)
!968 = !DIDerivedType(tag: DW_TAG_member, scope: !952, file: !752, line: 120, baseType: !969, size: 64, offset: 256)
!969 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !952, file: !752, line: 120, size: 64, elements: !970)
!970 = !{!971, !972, !973}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !969, file: !752, line: 121, baseType: !202, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !969, file: !752, line: 122, baseType: !200, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, scope: !969, file: !752, line: 123, baseType: !974, size: 32)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !969, file: !752, line: 123, size: 32, elements: !975)
!975 = !{!976, !977, !978}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !974, file: !752, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !974, file: !752, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !974, file: !752, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!979 = !DIDerivedType(tag: DW_TAG_member, scope: !756, file: !752, line: 130, baseType: !980, size: 192)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !756, file: !752, line: 130, size: 192, elements: !981)
!981 = !{!982, !983, !984, !985, !986}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !980, file: !752, line: 131, baseType: !200, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !980, file: !752, line: 134, baseType: !142, size: 8, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !980, file: !752, line: 135, baseType: !142, size: 8, offset: 72)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !980, file: !752, line: 136, baseType: !777, size: 32, offset: 96)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !980, file: !752, line: 137, baseType: !7, size: 32, offset: 128)
!987 = !DIDerivedType(tag: DW_TAG_member, scope: !756, file: !752, line: 139, baseType: !988, size: 256)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !756, file: !752, line: 139, size: 256, elements: !989)
!989 = !{!990, !991, !992}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !988, file: !752, line: 140, baseType: !200, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !988, file: !752, line: 141, baseType: !777, size: 32, offset: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !988, file: !752, line: 143, baseType: !256, size: 128, offset: 128)
!993 = !DIDerivedType(tag: DW_TAG_member, scope: !756, file: !752, line: 145, baseType: !994, size: 256)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !756, file: !752, line: 145, size: 256, elements: !995)
!995 = !{!996, !997, !999, !1000, !2362}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !994, file: !752, line: 146, baseType: !200, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !994, file: !752, line: 147, baseType: !998, size: 64, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !742, line: 509, baseType: !750)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !994, file: !752, line: 148, baseType: !200, size: 64, offset: 128)
!1000 = !DIDerivedType(tag: DW_TAG_member, scope: !994, file: !752, line: 149, baseType: !1001, size: 64, offset: 192)
!1001 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !994, file: !752, line: 149, size: 64, elements: !1002)
!1002 = !{!1003, !2361}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1001, file: !752, line: 150, baseType: !1004, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !752, line: 388, size: 7296, elements: !1006)
!1006 = !{!1007, !2357}
!1007 = !DIDerivedType(tag: DW_TAG_member, scope: !1005, file: !752, line: 389, baseType: !1008, size: 7296)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1005, file: !752, line: 389, size: 7296, elements: !1009)
!1009 = !{!1010, !1128, !1129, !1130, !1134, !1135, !1136, !1137, !1138, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1177, !1185, !1188, !1234, !1235, !2341, !2342, !2345, !2346, !2347, !2350, !2351, !2352, !2355, !2356}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1008, file: !752, line: 390, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !752, line: 305, size: 1472, elements: !1013)
!1013 = !{!1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1028, !1029, !1034, !1035, !1038, !1122, !1123, !1124, !1125, !1126}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1012, file: !752, line: 308, baseType: !200, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1012, file: !752, line: 309, baseType: !200, size: 64, offset: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1012, file: !752, line: 313, baseType: !1011, size: 64, offset: 128)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1012, file: !752, line: 313, baseType: !1011, size: 64, offset: 192)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1012, file: !752, line: 315, baseType: !790, size: 192, align: 64, offset: 256)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1012, file: !752, line: 323, baseType: !200, size: 64, offset: 448)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1012, file: !752, line: 327, baseType: !1004, size: 64, offset: 512)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1012, file: !752, line: 333, baseType: !1022, size: 64, offset: 576)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !742, line: 284, baseType: !1023)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !742, line: 284, size: 64, elements: !1024)
!1024 = !{!1025}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1023, file: !742, line: 284, baseType: !1026, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1027, line: 19, baseType: !200)
!1027 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1012, file: !752, line: 334, baseType: !200, size: 64, offset: 640)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1012, file: !752, line: 343, baseType: !1030, size: 256, offset: 704)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1012, file: !752, line: 340, size: 256, elements: !1031)
!1031 = !{!1032, !1033}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1030, file: !752, line: 341, baseType: !790, size: 192, align: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1030, file: !752, line: 342, baseType: !200, size: 64, offset: 192)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1012, file: !752, line: 351, baseType: !256, size: 128, offset: 960)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1012, file: !752, line: 353, baseType: !1036, size: 64, offset: 1088)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !752, line: 353, flags: DIFlagFwdDecl)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1012, file: !752, line: 356, baseType: !1039, size: 64, offset: 1152)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1041)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1042)
!1042 = !{!1043, !1047, !1048, !1052, !1056, !1096, !1100, !1104, !1108, !1109, !1110, !1114, !1118}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1041, file: !14, line: 558, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{null, !1011}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1041, file: !14, line: 559, baseType: !1044, size: 64, offset: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1041, file: !14, line: 560, baseType: !1049, size: 64, offset: 128)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!139, !1011, !200}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1041, file: !14, line: 561, baseType: !1053, size: 64, offset: 192)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!139, !1011}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1041, file: !14, line: 562, baseType: !1057, size: 64, offset: 256)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!1060, !1061}
!1060 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !752, line: 682, baseType: !7)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1063)
!1063 = !{!1064, !1065, !1066, !1067, !1068, !1069, !1076, !1083, !1089, !1090, !1091, !1093, !1095}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1062, file: !14, line: 509, baseType: !1011, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1062, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1062, file: !14, line: 511, baseType: !773, size: 32, offset: 96)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1062, file: !14, line: 512, baseType: !200, size: 64, offset: 128)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1062, file: !14, line: 513, baseType: !200, size: 64, offset: 192)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1062, file: !14, line: 514, baseType: !1070, size: 64, offset: 256)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !742, line: 385, baseType: !1072)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !742, line: 385, size: 64, elements: !1073)
!1073 = !{!1074}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1072, file: !742, line: 385, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1027, line: 15, baseType: !200)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1062, file: !14, line: 516, baseType: !1077, size: 64, offset: 320)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !742, line: 359, baseType: !1079)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !742, line: 359, size: 64, elements: !1080)
!1080 = !{!1081}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1079, file: !742, line: 359, baseType: !1082, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1027, line: 16, baseType: !200)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1062, file: !14, line: 519, baseType: !1084, size: 64, offset: 384)
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1027, line: 21, baseType: !1085)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1027, line: 21, size: 64, elements: !1086)
!1086 = !{!1087}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1085, file: !1027, line: 21, baseType: !1088, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1027, line: 14, baseType: !200)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1062, file: !14, line: 521, baseType: !750, size: 64, offset: 448)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1062, file: !14, line: 522, baseType: !750, size: 64, offset: 512)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1062, file: !14, line: 528, baseType: !1092, size: 64, offset: 576)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1062, file: !14, line: 532, baseType: !1094, size: 64, offset: 640)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1062, file: !14, line: 536, baseType: !998, size: 64, offset: 704)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1041, file: !14, line: 563, baseType: !1097, size: 64, offset: 320)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!1060, !1061, !13}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1041, file: !14, line: 565, baseType: !1101, size: 64, offset: 384)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{null, !1061, !200, !200}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1041, file: !14, line: 567, baseType: !1105, size: 64, offset: 448)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!200, !1011}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1041, file: !14, line: 571, baseType: !1057, size: 64, offset: 512)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1041, file: !14, line: 574, baseType: !1057, size: 64, offset: 576)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1041, file: !14, line: 579, baseType: !1111, size: 64, offset: 640)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!139, !1011, !200, !202, !139, !139}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1041, file: !14, line: 585, baseType: !1115, size: 64, offset: 704)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!180, !1011}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1041, file: !14, line: 615, baseType: !1119, size: 64, offset: 768)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!750, !1011, !200}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1012, file: !752, line: 359, baseType: !200, size: 64, offset: 1216)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1012, file: !752, line: 361, baseType: !384, size: 64, offset: 1280)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1012, file: !752, line: 362, baseType: !202, size: 64, offset: 1344)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1012, file: !752, line: 365, baseType: !801, size: 64, offset: 1408)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1012, file: !752, line: 373, baseType: !1127, offset: 1472)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !752, line: 296, elements: !283)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1008, file: !752, line: 391, baseType: !786, size: 64, offset: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1008, file: !752, line: 392, baseType: !453, size: 64, offset: 128)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1008, file: !752, line: 394, baseType: !1131, size: 64, offset: 192)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!200, !384, !200, !200, !200, !200}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1008, file: !752, line: 398, baseType: !200, size: 64, offset: 256)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1008, file: !752, line: 399, baseType: !200, size: 64, offset: 320)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1008, file: !752, line: 405, baseType: !200, size: 64, offset: 384)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1008, file: !752, line: 406, baseType: !200, size: 64, offset: 448)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1008, file: !752, line: 407, baseType: !1139, size: 64, offset: 512)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !742, line: 286, baseType: !1141)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !742, line: 286, size: 64, elements: !1142)
!1142 = !{!1143}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1141, file: !742, line: 286, baseType: !1144, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1027, line: 18, baseType: !200)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1008, file: !752, line: 416, baseType: !777, size: 32, offset: 576)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1008, file: !752, line: 428, baseType: !777, size: 32, offset: 608)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1008, file: !752, line: 437, baseType: !777, size: 32, offset: 640)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1008, file: !752, line: 447, baseType: !777, size: 32, offset: 672)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1008, file: !752, line: 450, baseType: !801, size: 64, offset: 704)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1008, file: !752, line: 452, baseType: !139, size: 32, offset: 768)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1008, file: !752, line: 454, baseType: !269, offset: 800)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1008, file: !752, line: 457, baseType: !797, size: 256, offset: 832)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1008, file: !752, line: 459, baseType: !256, size: 128, offset: 1088)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1008, file: !752, line: 466, baseType: !200, size: 64, offset: 1216)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1008, file: !752, line: 467, baseType: !200, size: 64, offset: 1280)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1008, file: !752, line: 469, baseType: !200, size: 64, offset: 1344)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1008, file: !752, line: 470, baseType: !200, size: 64, offset: 1408)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1008, file: !752, line: 471, baseType: !803, size: 64, offset: 1472)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1008, file: !752, line: 472, baseType: !200, size: 64, offset: 1536)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1008, file: !752, line: 473, baseType: !200, size: 64, offset: 1600)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1008, file: !752, line: 474, baseType: !200, size: 64, offset: 1664)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1008, file: !752, line: 475, baseType: !200, size: 64, offset: 1728)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1008, file: !752, line: 477, baseType: !269, offset: 1792)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1008, file: !752, line: 478, baseType: !200, size: 64, offset: 1792)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1008, file: !752, line: 478, baseType: !200, size: 64, offset: 1856)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1008, file: !752, line: 478, baseType: !200, size: 64, offset: 1920)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1008, file: !752, line: 478, baseType: !200, size: 64, offset: 1984)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1008, file: !752, line: 479, baseType: !200, size: 64, offset: 2048)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1008, file: !752, line: 479, baseType: !200, size: 64, offset: 2112)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1008, file: !752, line: 479, baseType: !200, size: 64, offset: 2176)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1008, file: !752, line: 480, baseType: !200, size: 64, offset: 2240)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1008, file: !752, line: 480, baseType: !200, size: 64, offset: 2304)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1008, file: !752, line: 480, baseType: !200, size: 64, offset: 2368)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1008, file: !752, line: 480, baseType: !200, size: 64, offset: 2432)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1008, file: !752, line: 482, baseType: !1176, size: 2816, offset: 2496)
!1176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 2816, elements: !156)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1008, file: !752, line: 488, baseType: !1178, size: 256, offset: 5312)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1179, line: 60, size: 256, elements: !1180)
!1179 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1180 = !{!1181}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1178, file: !1179, line: 61, baseType: !1182, size: 256)
!1182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !801, size: 256, elements: !1183)
!1183 = !{!1184}
!1184 = !DISubrange(count: 4)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1008, file: !752, line: 490, baseType: !1186, size: 64, offset: 5568)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !752, line: 490, flags: DIFlagFwdDecl)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1008, file: !752, line: 493, baseType: !1189, size: 896, offset: 5632)
!1189 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1190, line: 53, baseType: !1191)
!1190 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1190, line: 13, size: 896, elements: !1192)
!1192 = !{!1193, !1194, !1195, !1196, !1199, !1200, !1207, !1208, !1228, !1229, !1230}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1191, file: !1190, line: 18, baseType: !453, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1191, file: !1190, line: 28, baseType: !803, size: 64, offset: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1191, file: !1190, line: 31, baseType: !797, size: 256, offset: 128)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1191, file: !1190, line: 32, baseType: !1197, size: 64, offset: 384)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1190, line: 32, flags: DIFlagFwdDecl)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1191, file: !1190, line: 37, baseType: !138, size: 16, offset: 448)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1191, file: !1190, line: 40, baseType: !1201, size: 192, offset: 512)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1202, line: 53, size: 192, elements: !1203)
!1202 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1203 = !{!1204, !1205, !1206}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1201, file: !1202, line: 54, baseType: !801, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1201, file: !1202, line: 55, baseType: !269, offset: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1201, file: !1202, line: 59, baseType: !256, size: 128, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1191, file: !1190, line: 41, baseType: !202, size: 64, offset: 704)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1191, file: !1190, line: 42, baseType: !1209, size: 64, offset: 768)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1211)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1212, line: 13, size: 896, elements: !1213)
!1212 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1213 = !{!1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1211, file: !1212, line: 14, baseType: !202, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1211, file: !1212, line: 15, baseType: !200, size: 64, offset: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1211, file: !1212, line: 17, baseType: !200, size: 64, offset: 128)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1211, file: !1212, line: 17, baseType: !200, size: 64, offset: 192)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1211, file: !1212, line: 19, baseType: !343, size: 64, offset: 256)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1211, file: !1212, line: 21, baseType: !343, size: 64, offset: 320)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1211, file: !1212, line: 22, baseType: !343, size: 64, offset: 384)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1211, file: !1212, line: 23, baseType: !343, size: 64, offset: 448)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1211, file: !1212, line: 24, baseType: !343, size: 64, offset: 512)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1211, file: !1212, line: 25, baseType: !343, size: 64, offset: 576)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1211, file: !1212, line: 26, baseType: !343, size: 64, offset: 640)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1211, file: !1212, line: 27, baseType: !343, size: 64, offset: 704)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1211, file: !1212, line: 28, baseType: !343, size: 64, offset: 768)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1211, file: !1212, line: 29, baseType: !343, size: 64, offset: 832)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1191, file: !1190, line: 44, baseType: !777, size: 32, offset: 832)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1191, file: !1190, line: 50, baseType: !889, size: 16, offset: 864)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1191, file: !1190, line: 51, baseType: !1231, size: 16, offset: 880)
!1231 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !448, line: 18, baseType: !1232)
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !450, line: 23, baseType: !1233)
!1233 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1008, file: !752, line: 495, baseType: !200, size: 64, offset: 6528)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1008, file: !752, line: 497, baseType: !1236, size: 64, offset: 6592)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !752, line: 381, size: 384, elements: !1238)
!1238 = !{!1239, !1240, !2340}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1237, file: !752, line: 382, baseType: !777, size: 32)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1237, file: !752, line: 383, baseType: !1241, size: 128, offset: 64)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !752, line: 376, size: 128, elements: !1242)
!1242 = !{!1243, !2338}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1241, file: !752, line: 377, baseType: !1244, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1246, line: 640, size: 48640, elements: !1247)
!1246 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1247 = !{!1248, !1254, !1256, !1257, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1274, !1292, !1303, !1388, !1389, !1390, !1401, !1402, !1404, !1405, !1406, !1407, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1486, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1524, !1526, !1527, !1528, !1540, !1541, !1542, !1543, !1544, !1545, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1569, !1574, !1758, !1759, !1760, !1761, !1765, !1768, !1771, !1774, !1777, !1781, !1882, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1926, !1927, !1928, !1929, !1930, !1935, !1936, !1937, !1940, !1941, !1944, !1947, !1950, !1953, !1996, !1999, !2000, !2079, !2080, !2083, !2084, !2087, !2088, !2089, !2093, !2094, !2095, !2108, !2109, !2110, !2120, !2125, !2128, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1245, file: !1246, line: 646, baseType: !1249, size: 128)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1250, line: 56, size: 128, elements: !1251)
!1250 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1251 = !{!1252, !1253}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1249, file: !1250, line: 57, baseType: !200, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1249, file: !1250, line: 58, baseType: !447, size: 32, offset: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1245, file: !1246, line: 649, baseType: !1255, size: 64, offset: 128)
!1255 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !343)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1245, file: !1246, line: 657, baseType: !202, size: 64, offset: 192)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1245, file: !1246, line: 658, baseType: !1258, size: 32, offset: 256)
!1258 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1259, line: 113, baseType: !1260)
!1259 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1259, line: 111, size: 32, elements: !1261)
!1261 = !{!1262}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1260, file: !1259, line: 112, baseType: !777, size: 32)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1245, file: !1246, line: 660, baseType: !7, size: 32, offset: 288)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1245, file: !1246, line: 661, baseType: !7, size: 32, offset: 320)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1245, file: !1246, line: 684, baseType: !139, size: 32, offset: 352)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1245, file: !1246, line: 686, baseType: !139, size: 32, offset: 384)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1245, file: !1246, line: 687, baseType: !139, size: 32, offset: 416)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1245, file: !1246, line: 688, baseType: !139, size: 32, offset: 448)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1245, file: !1246, line: 689, baseType: !7, size: 32, offset: 480)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1245, file: !1246, line: 691, baseType: !1271, size: 64, offset: 512)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1273)
!1273 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1246, line: 691, flags: DIFlagFwdDecl)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1245, file: !1246, line: 692, baseType: !1275, size: 832, offset: 576)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1246, line: 451, size: 832, elements: !1276)
!1276 = !{!1277, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1275, file: !1246, line: 453, baseType: !1278, size: 128)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1246, line: 325, size: 128, elements: !1279)
!1279 = !{!1280, !1281}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1278, file: !1246, line: 326, baseType: !200, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1278, file: !1246, line: 327, baseType: !447, size: 32, offset: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1275, file: !1246, line: 454, baseType: !790, size: 192, align: 64, offset: 128)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1275, file: !1246, line: 455, baseType: !256, size: 128, offset: 320)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1275, file: !1246, line: 456, baseType: !7, size: 32, offset: 448)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1275, file: !1246, line: 458, baseType: !453, size: 64, offset: 512)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1275, file: !1246, line: 459, baseType: !453, size: 64, offset: 576)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1275, file: !1246, line: 460, baseType: !453, size: 64, offset: 640)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1275, file: !1246, line: 461, baseType: !453, size: 64, offset: 704)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1275, file: !1246, line: 463, baseType: !453, size: 64, offset: 768)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1275, file: !1246, line: 465, baseType: !1291, offset: 832)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1246, line: 415, elements: !283)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1245, file: !1246, line: 693, baseType: !1293, size: 384, offset: 1408)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1246, line: 489, size: 384, elements: !1294)
!1294 = !{!1295, !1296, !1297, !1298, !1299, !1300, !1301}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1293, file: !1246, line: 490, baseType: !256, size: 128)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1293, file: !1246, line: 491, baseType: !200, size: 64, offset: 128)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1293, file: !1246, line: 492, baseType: !200, size: 64, offset: 192)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1293, file: !1246, line: 493, baseType: !7, size: 32, offset: 256)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1293, file: !1246, line: 494, baseType: !138, size: 16, offset: 288)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1293, file: !1246, line: 495, baseType: !138, size: 16, offset: 304)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1293, file: !1246, line: 497, baseType: !1302, size: 64, offset: 320)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1245, file: !1246, line: 697, baseType: !1304, size: 1792, offset: 1792)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1246, line: 507, size: 1792, elements: !1305)
!1305 = !{!1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1385, !1386}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1304, file: !1246, line: 508, baseType: !790, size: 192, align: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1304, file: !1246, line: 515, baseType: !453, size: 64, offset: 192)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1304, file: !1246, line: 516, baseType: !453, size: 64, offset: 256)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1304, file: !1246, line: 517, baseType: !453, size: 64, offset: 320)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1304, file: !1246, line: 518, baseType: !453, size: 64, offset: 384)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1304, file: !1246, line: 519, baseType: !453, size: 64, offset: 448)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1304, file: !1246, line: 526, baseType: !807, size: 64, offset: 512)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1304, file: !1246, line: 527, baseType: !453, size: 64, offset: 576)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1304, file: !1246, line: 528, baseType: !7, size: 32, offset: 640)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1304, file: !1246, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1304, file: !1246, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1304, file: !1246, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1304, file: !1246, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1304, file: !1246, line: 563, baseType: !1320, size: 512, offset: 704)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1321)
!1321 = !{!1322, !1330, !1331, !1336, !1379, !1382, !1383, !1384}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1320, file: !20, line: 119, baseType: !1323, size: 256)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1324, line: 9, size: 256, elements: !1325)
!1324 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1325 = !{!1326, !1327}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1323, file: !1324, line: 10, baseType: !790, size: 192, align: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1323, file: !1324, line: 11, baseType: !1328, size: 64, offset: 192)
!1328 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1329, line: 29, baseType: !807)
!1329 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1320, file: !20, line: 120, baseType: !1328, size: 64, offset: 256)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1320, file: !20, line: 121, baseType: !1332, size: 64, offset: 320)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!19, !1335}
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1320, file: !20, line: 122, baseType: !1337, size: 64, offset: 384)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1339)
!1339 = !{!1340, !1360, !1361, !1364, !1369, !1370, !1374, !1378}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1338, file: !20, line: 160, baseType: !1341, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1343)
!1343 = !{!1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1342, file: !20, line: 215, baseType: !810)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1342, file: !20, line: 216, baseType: !7, size: 32)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1342, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1342, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1342, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1342, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1342, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1342, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1342, file: !20, line: 233, baseType: !1328, size: 64, offset: 128)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1342, file: !20, line: 234, baseType: !1335, size: 64, offset: 192)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1342, file: !20, line: 235, baseType: !1328, size: 64, offset: 256)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1342, file: !20, line: 236, baseType: !1335, size: 64, offset: 320)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1342, file: !20, line: 237, baseType: !1357, size: 4096, offset: 512)
!1357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1338, size: 4096, elements: !1358)
!1358 = !{!1359}
!1359 = !DISubrange(count: 8)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1338, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1338, file: !20, line: 162, baseType: !1362, size: 32, offset: 96)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !220, line: 27, baseType: !1363)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !341, line: 96, baseType: !139)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1338, file: !20, line: 163, baseType: !1365, size: 32, offset: 128)
!1365 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !420, line: 276, baseType: !1366)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !420, line: 276, size: 32, elements: !1367)
!1367 = !{!1368}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1366, file: !420, line: 276, baseType: !424, size: 32)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1338, file: !20, line: 164, baseType: !1335, size: 64, offset: 192)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1338, file: !20, line: 165, baseType: !1371, size: 128, offset: 256)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1324, line: 14, size: 128, elements: !1372)
!1372 = !{!1373}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1371, file: !1324, line: 15, baseType: !782, size: 128)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1338, file: !20, line: 166, baseType: !1375, size: 64, offset: 384)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!1328}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1338, file: !20, line: 167, baseType: !1328, size: 64, offset: 448)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1320, file: !20, line: 123, baseType: !1380, size: 8, offset: 448)
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !448, line: 17, baseType: !1381)
!1381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !450, line: 21, baseType: !142)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1320, file: !20, line: 124, baseType: !1380, size: 8, offset: 456)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1320, file: !20, line: 125, baseType: !1380, size: 8, offset: 464)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1320, file: !20, line: 126, baseType: !1380, size: 8, offset: 472)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1304, file: !1246, line: 572, baseType: !1320, size: 512, offset: 1216)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1304, file: !1246, line: 580, baseType: !1387, size: 64, offset: 1728)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1245, file: !1246, line: 721, baseType: !7, size: 32, offset: 3584)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1245, file: !1246, line: 722, baseType: !139, size: 32, offset: 3616)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1245, file: !1246, line: 723, baseType: !1391, size: 64, offset: 3648)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1393)
!1393 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1394, line: 17, baseType: !1395)
!1394 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1394, line: 17, size: 64, elements: !1396)
!1396 = !{!1397}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1395, file: !1394, line: 17, baseType: !1398, size: 64)
!1398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 64, elements: !1399)
!1399 = !{!1400}
!1400 = !DISubrange(count: 1)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1245, file: !1246, line: 724, baseType: !1393, size: 64, offset: 3712)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1245, file: !1246, line: 749, baseType: !1403, offset: 3776)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1246, line: 290, elements: !283)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1245, file: !1246, line: 751, baseType: !256, size: 128, offset: 3776)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1245, file: !1246, line: 757, baseType: !1004, size: 64, offset: 3904)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1245, file: !1246, line: 758, baseType: !1004, size: 64, offset: 3968)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1245, file: !1246, line: 761, baseType: !1408, size: 320, offset: 4032)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1179, line: 34, size: 320, elements: !1409)
!1409 = !{!1410, !1411}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1408, file: !1179, line: 35, baseType: !453, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1408, file: !1179, line: 36, baseType: !1412, size: 256, offset: 64)
!1412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1011, size: 256, elements: !1183)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1245, file: !1246, line: 766, baseType: !139, size: 32, offset: 4352)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1245, file: !1246, line: 767, baseType: !139, size: 32, offset: 4384)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1245, file: !1246, line: 768, baseType: !139, size: 32, offset: 4416)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1245, file: !1246, line: 770, baseType: !139, size: 32, offset: 4448)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1245, file: !1246, line: 772, baseType: !200, size: 64, offset: 4480)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1245, file: !1246, line: 775, baseType: !7, size: 32, offset: 4544)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1245, file: !1246, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1245, file: !1246, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1245, file: !1246, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1245, file: !1246, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1245, file: !1246, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1245, file: !1246, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1245, file: !1246, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1245, file: !1246, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1245, file: !1246, line: 831, baseType: !200, size: 64, offset: 4672)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1245, file: !1246, line: 833, baseType: !1429, size: 384, offset: 4736)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1430)
!1430 = !{!1431, !1436}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1429, file: !25, line: 26, baseType: !1432, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!343, !1435}
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, scope: !1429, file: !25, line: 27, baseType: !1437, size: 320, offset: 64)
!1437 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1429, file: !25, line: 27, size: 320, elements: !1438)
!1438 = !{!1439, !1449, !1476}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1437, file: !25, line: 36, baseType: !1440, size: 320)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1437, file: !25, line: 29, size: 320, elements: !1441)
!1441 = !{!1442, !1444, !1445, !1446, !1447, !1448}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1440, file: !25, line: 30, baseType: !1443, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1440, file: !25, line: 31, baseType: !447, size: 32, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1440, file: !25, line: 32, baseType: !447, size: 32, offset: 96)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1440, file: !25, line: 33, baseType: !447, size: 32, offset: 128)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1440, file: !25, line: 34, baseType: !453, size: 64, offset: 192)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1440, file: !25, line: 35, baseType: !1443, size: 64, offset: 256)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1437, file: !25, line: 46, baseType: !1450, size: 192)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1437, file: !25, line: 38, size: 192, elements: !1451)
!1451 = !{!1452, !1453, !1454, !1475}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1450, file: !25, line: 39, baseType: !1362, size: 32)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1450, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1454 = !DIDerivedType(tag: DW_TAG_member, scope: !1450, file: !25, line: 41, baseType: !1455, size: 64, offset: 64)
!1455 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1450, file: !25, line: 41, size: 64, elements: !1456)
!1456 = !{!1457, !1465}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1455, file: !25, line: 42, baseType: !1458, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1460, line: 7, size: 128, elements: !1461)
!1460 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1461 = !{!1462, !1464}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1459, file: !1460, line: 8, baseType: !1463, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !341, line: 93, baseType: !562)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1459, file: !1460, line: 9, baseType: !562, size: 64, offset: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1455, file: !25, line: 43, baseType: !1466, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1468, line: 7, size: 64, elements: !1469)
!1468 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1469 = !{!1470, !1474}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1467, file: !1468, line: 8, baseType: !1471, size: 32)
!1471 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1468, line: 5, baseType: !1472)
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !448, line: 20, baseType: !1473)
!1473 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !450, line: 26, baseType: !139)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1467, file: !1468, line: 9, baseType: !1472, size: 32, offset: 32)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1450, file: !25, line: 45, baseType: !453, size: 64, offset: 128)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1437, file: !25, line: 54, baseType: !1477, size: 256)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1437, file: !25, line: 48, size: 256, elements: !1478)
!1478 = !{!1479, !1482, !1483, !1484, !1485}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1477, file: !25, line: 49, baseType: !1480, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1477, file: !25, line: 50, baseType: !139, size: 32, offset: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1477, file: !25, line: 51, baseType: !139, size: 32, offset: 96)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1477, file: !25, line: 52, baseType: !200, size: 64, offset: 128)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1477, file: !25, line: 53, baseType: !200, size: 64, offset: 192)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1245, file: !1246, line: 835, baseType: !1487, size: 32, offset: 5120)
!1487 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !220, line: 22, baseType: !1488)
!1488 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !341, line: 28, baseType: !139)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1245, file: !1246, line: 836, baseType: !1487, size: 32, offset: 5152)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1245, file: !1246, line: 840, baseType: !200, size: 64, offset: 5184)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1245, file: !1246, line: 849, baseType: !1244, size: 64, offset: 5248)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1245, file: !1246, line: 852, baseType: !1244, size: 64, offset: 5312)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1245, file: !1246, line: 857, baseType: !256, size: 128, offset: 5376)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1245, file: !1246, line: 858, baseType: !256, size: 128, offset: 5504)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1245, file: !1246, line: 859, baseType: !1244, size: 64, offset: 5632)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1245, file: !1246, line: 867, baseType: !256, size: 128, offset: 5696)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1245, file: !1246, line: 868, baseType: !256, size: 128, offset: 5824)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1245, file: !1246, line: 871, baseType: !1499, size: 64, offset: 5952)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1501)
!1501 = !{!1502, !1503, !1504, !1505, !1507, !1508, !1515, !1516}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1500, file: !53, line: 61, baseType: !1258, size: 32)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1500, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1500, file: !53, line: 63, baseType: !269, offset: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1500, file: !53, line: 65, baseType: !1506, size: 256, offset: 64)
!1506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !664, size: 256, elements: !1183)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1500, file: !53, line: 66, baseType: !664, size: 64, offset: 320)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1500, file: !53, line: 68, baseType: !1509, size: 128, offset: 384)
!1509 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1510, line: 40, baseType: !1511)
!1510 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1510, line: 36, size: 128, elements: !1512)
!1512 = !{!1513, !1514}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1511, file: !1510, line: 37, baseType: !269)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1511, file: !1510, line: 38, baseType: !256, size: 128)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1500, file: !53, line: 69, baseType: !397, size: 128, align: 64, offset: 512)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1500, file: !53, line: 70, baseType: !1517, size: 128, offset: 640)
!1517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1518, size: 128, elements: !1399)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1519)
!1519 = !{!1520, !1521}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1518, file: !53, line: 55, baseType: !139, size: 32)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1518, file: !53, line: 56, baseType: !1522, size: 64, offset: 64)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1245, file: !1246, line: 872, baseType: !1525, size: 512, offset: 6016)
!1525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !668, size: 512, elements: !1183)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1245, file: !1246, line: 873, baseType: !256, size: 128, offset: 6528)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1245, file: !1246, line: 874, baseType: !256, size: 128, offset: 6656)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1245, file: !1246, line: 876, baseType: !1529, size: 64, offset: 6784)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1531, line: 26, size: 192, elements: !1532)
!1531 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1532 = !{!1533, !1534}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1530, file: !1531, line: 27, baseType: !7, size: 32)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1530, file: !1531, line: 28, baseType: !1535, size: 128, offset: 64)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1536, line: 43, size: 128, elements: !1537)
!1536 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1537 = !{!1538, !1539}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1535, file: !1536, line: 44, baseType: !810)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1535, file: !1536, line: 45, baseType: !256, size: 128)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1245, file: !1246, line: 879, baseType: !734, size: 64, offset: 6848)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1245, file: !1246, line: 882, baseType: !734, size: 64, offset: 6912)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1245, file: !1246, line: 884, baseType: !453, size: 64, offset: 6976)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1245, file: !1246, line: 885, baseType: !453, size: 64, offset: 7040)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1245, file: !1246, line: 890, baseType: !453, size: 64, offset: 7104)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1245, file: !1246, line: 891, baseType: !1546, size: 128, offset: 7168)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1246, line: 242, size: 128, elements: !1547)
!1547 = !{!1548, !1549, !1550}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1546, file: !1246, line: 244, baseType: !453, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1546, file: !1246, line: 245, baseType: !453, size: 64, offset: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1546, file: !1246, line: 246, baseType: !810, offset: 128)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1245, file: !1246, line: 900, baseType: !200, size: 64, offset: 7296)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1245, file: !1246, line: 901, baseType: !200, size: 64, offset: 7360)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1245, file: !1246, line: 904, baseType: !453, size: 64, offset: 7424)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1245, file: !1246, line: 907, baseType: !453, size: 64, offset: 7488)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1245, file: !1246, line: 910, baseType: !200, size: 64, offset: 7552)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1245, file: !1246, line: 911, baseType: !200, size: 64, offset: 7616)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1245, file: !1246, line: 914, baseType: !1558, size: 640, offset: 7680)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1559, line: 123, size: 640, elements: !1560)
!1559 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1560 = !{!1561, !1567, !1568}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1558, file: !1559, line: 124, baseType: !1562, size: 576)
!1562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1563, size: 576, elements: !214)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1559, line: 108, size: 192, elements: !1564)
!1564 = !{!1565, !1566}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1563, file: !1559, line: 109, baseType: !453, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1563, file: !1559, line: 110, baseType: !1371, size: 128, offset: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1558, file: !1559, line: 125, baseType: !7, size: 32, offset: 576)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1558, file: !1559, line: 126, baseType: !7, size: 32, offset: 608)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1245, file: !1246, line: 917, baseType: !1570, size: 192, offset: 8320)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1559, line: 134, size: 192, elements: !1571)
!1571 = !{!1572, !1573}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1570, file: !1559, line: 135, baseType: !397, size: 128, align: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1570, file: !1559, line: 136, baseType: !7, size: 32, offset: 128)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1245, file: !1246, line: 923, baseType: !1575, size: 64, offset: 8512)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1577)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1578, line: 111, size: 1280, elements: !1579)
!1578 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1579 = !{!1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1599, !1600, !1601, !1602, !1603, !1604, !1711, !1712, !1713, !1714, !1740, !1743, !1753}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1577, file: !1578, line: 112, baseType: !777, size: 32)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1577, file: !1578, line: 120, baseType: !466, size: 32, offset: 32)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1577, file: !1578, line: 121, baseType: !474, size: 32, offset: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1577, file: !1578, line: 122, baseType: !466, size: 32, offset: 96)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1577, file: !1578, line: 123, baseType: !474, size: 32, offset: 128)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1577, file: !1578, line: 124, baseType: !466, size: 32, offset: 160)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1577, file: !1578, line: 125, baseType: !474, size: 32, offset: 192)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1577, file: !1578, line: 126, baseType: !466, size: 32, offset: 224)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1577, file: !1578, line: 127, baseType: !474, size: 32, offset: 256)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1577, file: !1578, line: 128, baseType: !7, size: 32, offset: 288)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1577, file: !1578, line: 129, baseType: !1591, size: 64, offset: 320)
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1592, line: 26, baseType: !1593)
!1592 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1592, line: 24, size: 64, elements: !1594)
!1594 = !{!1595}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1593, file: !1592, line: 25, baseType: !1596, size: 64)
!1596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !449, size: 64, elements: !1597)
!1597 = !{!1598}
!1598 = !DISubrange(count: 2)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1577, file: !1578, line: 130, baseType: !1591, size: 64, offset: 384)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1577, file: !1578, line: 131, baseType: !1591, size: 64, offset: 448)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1577, file: !1578, line: 132, baseType: !1591, size: 64, offset: 512)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1577, file: !1578, line: 133, baseType: !1591, size: 64, offset: 576)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1577, file: !1578, line: 135, baseType: !142, size: 8, offset: 640)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1577, file: !1578, line: 137, baseType: !1605, size: 64, offset: 704)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1607, line: 189, size: 1664, elements: !1608)
!1607 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1608 = !{!1609, !1610, !1613, !1618, !1619, !1622, !1623, !1628, !1629, !1630, !1631, !1633, !1634, !1635, !1636, !1637, !1675, !1696}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1606, file: !1607, line: 190, baseType: !1258, size: 32)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1606, file: !1607, line: 191, baseType: !1611, size: 32, offset: 32)
!1611 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1607, line: 28, baseType: !1612)
!1612 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !220, line: 98, baseType: !1472)
!1613 = !DIDerivedType(tag: DW_TAG_member, scope: !1606, file: !1607, line: 192, baseType: !1614, size: 192, offset: 64)
!1614 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1606, file: !1607, line: 192, size: 192, elements: !1615)
!1615 = !{!1616, !1617}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1614, file: !1607, line: 193, baseType: !256, size: 128)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1614, file: !1607, line: 194, baseType: !790, size: 192, align: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1606, file: !1607, line: 199, baseType: !797, size: 256, offset: 256)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1606, file: !1607, line: 200, baseType: !1620, size: 64, offset: 512)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1607, line: 200, flags: DIFlagFwdDecl)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1606, file: !1607, line: 201, baseType: !202, size: 64, offset: 576)
!1623 = !DIDerivedType(tag: DW_TAG_member, scope: !1606, file: !1607, line: 202, baseType: !1624, size: 64, offset: 640)
!1624 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1606, file: !1607, line: 202, size: 64, elements: !1625)
!1625 = !{!1626, !1627}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1624, file: !1607, line: 203, baseType: !568, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1624, file: !1607, line: 204, baseType: !568, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1606, file: !1607, line: 206, baseType: !568, size: 64, offset: 704)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1606, file: !1607, line: 207, baseType: !466, size: 32, offset: 768)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1606, file: !1607, line: 208, baseType: !474, size: 32, offset: 800)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1606, file: !1607, line: 209, baseType: !1632, size: 32, offset: 832)
!1632 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1607, line: 31, baseType: !588)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1606, file: !1607, line: 210, baseType: !138, size: 16, offset: 864)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1606, file: !1607, line: 211, baseType: !138, size: 16, offset: 880)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1606, file: !1607, line: 215, baseType: !1233, size: 16, offset: 896)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1606, file: !1607, line: 222, baseType: !200, size: 64, offset: 960)
!1637 = !DIDerivedType(tag: DW_TAG_member, scope: !1606, file: !1607, line: 239, baseType: !1638, size: 320, offset: 1024)
!1638 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1606, file: !1607, line: 239, size: 320, elements: !1639)
!1639 = !{!1640, !1667}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1638, file: !1607, line: 240, baseType: !1641, size: 320)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1607, line: 108, size: 320, elements: !1642)
!1642 = !{!1643, !1644, !1656, !1659, !1666}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1641, file: !1607, line: 110, baseType: !200, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, scope: !1641, file: !1607, line: 111, baseType: !1645, size: 64, offset: 64)
!1645 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1641, file: !1607, line: 111, size: 64, elements: !1646)
!1646 = !{!1647, !1655}
!1647 = !DIDerivedType(tag: DW_TAG_member, scope: !1645, file: !1607, line: 112, baseType: !1648, size: 64)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1645, file: !1607, line: 112, size: 64, elements: !1649)
!1649 = !{!1650, !1651}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1648, file: !1607, line: 114, baseType: !889, size: 16)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1648, file: !1607, line: 115, baseType: !1652, size: 48, offset: 16)
!1652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 48, elements: !1653)
!1653 = !{!1654}
!1654 = !DISubrange(count: 6)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1645, file: !1607, line: 121, baseType: !200, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1641, file: !1607, line: 123, baseType: !1657, size: 64, offset: 128)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1607, line: 96, flags: DIFlagFwdDecl)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1641, file: !1607, line: 124, baseType: !1660, size: 64, offset: 192)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1607, line: 102, size: 192, elements: !1662)
!1662 = !{!1663, !1664, !1665}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1661, file: !1607, line: 103, baseType: !397, size: 128, align: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1661, file: !1607, line: 104, baseType: !1258, size: 32, offset: 128)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1661, file: !1607, line: 105, baseType: !219, size: 8, offset: 160)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1641, file: !1607, line: 125, baseType: !180, size: 64, offset: 256)
!1667 = !DIDerivedType(tag: DW_TAG_member, scope: !1638, file: !1607, line: 241, baseType: !1668, size: 320)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1638, file: !1607, line: 241, size: 320, elements: !1669)
!1669 = !{!1670, !1671, !1672, !1673, !1674}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1668, file: !1607, line: 242, baseType: !200, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1668, file: !1607, line: 243, baseType: !200, size: 64, offset: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1668, file: !1607, line: 244, baseType: !1657, size: 64, offset: 128)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1668, file: !1607, line: 245, baseType: !1660, size: 64, offset: 192)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1668, file: !1607, line: 246, baseType: !310, size: 64, offset: 256)
!1675 = !DIDerivedType(tag: DW_TAG_member, scope: !1606, file: !1607, line: 254, baseType: !1676, size: 256, offset: 1344)
!1676 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1606, file: !1607, line: 254, size: 256, elements: !1677)
!1677 = !{!1678, !1684}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1676, file: !1607, line: 255, baseType: !1679, size: 256)
!1679 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1607, line: 128, size: 256, elements: !1680)
!1680 = !{!1681, !1682}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1679, file: !1607, line: 129, baseType: !202, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1679, file: !1607, line: 130, baseType: !1683, size: 256)
!1683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 256, elements: !1183)
!1684 = !DIDerivedType(tag: DW_TAG_member, scope: !1676, file: !1607, line: 256, baseType: !1685, size: 256)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1676, file: !1607, line: 256, size: 256, elements: !1686)
!1686 = !{!1687, !1688}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1685, file: !1607, line: 258, baseType: !256, size: 128)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1685, file: !1607, line: 259, baseType: !1689, size: 128, offset: 128)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1690, line: 22, size: 128, elements: !1691)
!1690 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1691 = !{!1692, !1695}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1689, file: !1690, line: 23, baseType: !1693, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1690, line: 23, flags: DIFlagFwdDecl)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1689, file: !1690, line: 24, baseType: !200, size: 64, offset: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1606, file: !1607, line: 274, baseType: !1697, size: 64, offset: 1600)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1607, line: 170, size: 192, elements: !1699)
!1699 = !{!1700, !1709, !1710}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1698, file: !1607, line: 171, baseType: !1701, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1607, line: 165, baseType: !1702)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!139, !1605, !1705, !1707, !1605}
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1658)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1679)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1698, file: !1607, line: 172, baseType: !1605, size: 64, offset: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1698, file: !1607, line: 173, baseType: !1657, size: 64, offset: 128)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1577, file: !1578, line: 138, baseType: !1605, size: 64, offset: 768)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1577, file: !1578, line: 139, baseType: !1605, size: 64, offset: 832)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1577, file: !1578, line: 140, baseType: !1605, size: 64, offset: 896)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1577, file: !1578, line: 145, baseType: !1715, size: 64, offset: 960)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1717, line: 13, size: 896, elements: !1718)
!1717 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1718 = !{!1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1716, file: !1717, line: 14, baseType: !1258, size: 32)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1716, file: !1717, line: 15, baseType: !777, size: 32, offset: 32)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1716, file: !1717, line: 16, baseType: !777, size: 32, offset: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1716, file: !1717, line: 21, baseType: !801, size: 64, offset: 128)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1716, file: !1717, line: 27, baseType: !200, size: 64, offset: 192)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1716, file: !1717, line: 28, baseType: !200, size: 64, offset: 256)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1716, file: !1717, line: 29, baseType: !801, size: 64, offset: 320)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1716, file: !1717, line: 32, baseType: !668, size: 128, offset: 384)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1716, file: !1717, line: 33, baseType: !466, size: 32, offset: 512)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1716, file: !1717, line: 37, baseType: !801, size: 64, offset: 576)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1716, file: !1717, line: 44, baseType: !1730, size: 256, offset: 640)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1731, line: 15, size: 256, elements: !1732)
!1731 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1732 = !{!1733, !1734, !1735, !1736, !1737, !1738, !1739}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1730, file: !1731, line: 16, baseType: !810)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1730, file: !1731, line: 18, baseType: !139, size: 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1730, file: !1731, line: 19, baseType: !139, size: 32, offset: 32)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1730, file: !1731, line: 20, baseType: !139, size: 32, offset: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1730, file: !1731, line: 21, baseType: !139, size: 32, offset: 96)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1730, file: !1731, line: 22, baseType: !200, size: 64, offset: 128)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1730, file: !1731, line: 23, baseType: !200, size: 64, offset: 192)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1577, file: !1578, line: 146, baseType: !1741, size: 64, offset: 1024)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !467, line: 18, flags: DIFlagFwdDecl)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1577, file: !1578, line: 147, baseType: !1744, size: 64, offset: 1088)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1578, line: 25, size: 64, elements: !1746)
!1746 = !{!1747, !1748, !1749}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1745, file: !1578, line: 26, baseType: !777, size: 32)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1745, file: !1578, line: 27, baseType: !139, size: 32, offset: 32)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1745, file: !1578, line: 28, baseType: !1750, offset: 64)
!1750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !474, elements: !1751)
!1751 = !{!1752}
!1752 = !DISubrange(count: 0)
!1753 = !DIDerivedType(tag: DW_TAG_member, scope: !1577, file: !1578, line: 149, baseType: !1754, size: 128, offset: 1152)
!1754 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1577, file: !1578, line: 149, size: 128, elements: !1755)
!1755 = !{!1756, !1757}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1754, file: !1578, line: 150, baseType: !139, size: 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1754, file: !1578, line: 151, baseType: !397, size: 128, align: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1245, file: !1246, line: 926, baseType: !1575, size: 64, offset: 8576)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1245, file: !1246, line: 929, baseType: !1575, size: 64, offset: 8640)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1245, file: !1246, line: 933, baseType: !1605, size: 64, offset: 8704)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1245, file: !1246, line: 943, baseType: !1762, size: 128, offset: 8768)
!1762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 128, elements: !1763)
!1763 = !{!1764}
!1764 = !DISubrange(count: 16)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1245, file: !1246, line: 945, baseType: !1766, size: 64, offset: 8896)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1246, line: 49, flags: DIFlagFwdDecl)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1245, file: !1246, line: 956, baseType: !1769, size: 64, offset: 8960)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1246, line: 45, flags: DIFlagFwdDecl)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1245, file: !1246, line: 959, baseType: !1772, size: 64, offset: 9024)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1246, line: 959, flags: DIFlagFwdDecl)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1245, file: !1246, line: 962, baseType: !1775, size: 64, offset: 9088)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1246, line: 66, flags: DIFlagFwdDecl)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1245, file: !1246, line: 966, baseType: !1778, size: 64, offset: 9152)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1780, line: 35, flags: DIFlagFwdDecl)
!1780 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1245, file: !1246, line: 969, baseType: !1782, size: 64, offset: 9216)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1784, line: 82, size: 7296, elements: !1785)
!1784 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1785 = !{!1786, !1787, !1788, !1789, !1790, !1791, !1792, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1821, !1830, !1831, !1833, !1834, !1835, !1838, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1868, !1869, !1876, !1877, !1878, !1879, !1880, !1881}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1783, file: !1784, line: 83, baseType: !1258, size: 32)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1783, file: !1784, line: 84, baseType: !777, size: 32, offset: 32)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1783, file: !1784, line: 85, baseType: !139, size: 32, offset: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1783, file: !1784, line: 86, baseType: !256, size: 128, offset: 128)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1783, file: !1784, line: 88, baseType: !1509, size: 128, offset: 256)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1783, file: !1784, line: 91, baseType: !1244, size: 64, offset: 384)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1783, file: !1784, line: 94, baseType: !1793, size: 192, offset: 448)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1794, line: 30, size: 192, elements: !1795)
!1794 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1795 = !{!1796, !1797}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1793, file: !1794, line: 31, baseType: !256, size: 128)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1793, file: !1794, line: 32, baseType: !1798, size: 64, offset: 128)
!1798 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1799, line: 25, baseType: !1800)
!1799 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1799, line: 23, size: 64, elements: !1801)
!1801 = !{!1802}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1800, file: !1799, line: 24, baseType: !1398, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1783, file: !1784, line: 97, baseType: !664, size: 64, offset: 640)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1783, file: !1784, line: 100, baseType: !139, size: 32, offset: 704)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1783, file: !1784, line: 106, baseType: !139, size: 32, offset: 736)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1783, file: !1784, line: 107, baseType: !1244, size: 64, offset: 768)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1783, file: !1784, line: 110, baseType: !139, size: 32, offset: 832)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1783, file: !1784, line: 111, baseType: !7, size: 32, offset: 864)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1783, file: !1784, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1783, file: !1784, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1783, file: !1784, line: 128, baseType: !139, size: 32, offset: 928)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1783, file: !1784, line: 129, baseType: !256, size: 128, offset: 960)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1783, file: !1784, line: 132, baseType: !1320, size: 512, offset: 1088)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1783, file: !1784, line: 133, baseType: !1328, size: 64, offset: 1600)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1783, file: !1784, line: 140, baseType: !1816, size: 256, offset: 1664)
!1816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1817, size: 256, elements: !1597)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1784, line: 38, size: 128, elements: !1818)
!1818 = !{!1819, !1820}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1817, file: !1784, line: 39, baseType: !453, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1817, file: !1784, line: 40, baseType: !453, size: 64, offset: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1783, file: !1784, line: 146, baseType: !1822, size: 192, offset: 1920)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1784, line: 66, size: 192, elements: !1823)
!1823 = !{!1824}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1822, file: !1784, line: 67, baseType: !1825, size: 192)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1784, line: 47, size: 192, elements: !1826)
!1826 = !{!1827, !1828, !1829}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1825, file: !1784, line: 48, baseType: !803, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1825, file: !1784, line: 49, baseType: !803, size: 64, offset: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1825, file: !1784, line: 50, baseType: !803, size: 64, offset: 128)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1783, file: !1784, line: 150, baseType: !1558, size: 640, offset: 2112)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1783, file: !1784, line: 153, baseType: !1832, size: 256, offset: 2752)
!1832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1499, size: 256, elements: !1183)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1783, file: !1784, line: 159, baseType: !1499, size: 64, offset: 3008)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1783, file: !1784, line: 162, baseType: !139, size: 32, offset: 3072)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1783, file: !1784, line: 164, baseType: !1836, size: 64, offset: 3136)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1784, line: 164, flags: DIFlagFwdDecl)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1783, file: !1784, line: 175, baseType: !1839, size: 32, offset: 3200)
!1839 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !420, line: 805, baseType: !1840)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !420, line: 798, size: 32, elements: !1841)
!1841 = !{!1842, !1843}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1840, file: !420, line: 803, baseType: !419, size: 32)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1840, file: !420, line: 804, baseType: !269, offset: 32)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1783, file: !1784, line: 176, baseType: !453, size: 64, offset: 3264)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1783, file: !1784, line: 176, baseType: !453, size: 64, offset: 3328)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1783, file: !1784, line: 176, baseType: !453, size: 64, offset: 3392)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1783, file: !1784, line: 176, baseType: !453, size: 64, offset: 3456)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1783, file: !1784, line: 177, baseType: !453, size: 64, offset: 3520)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1783, file: !1784, line: 178, baseType: !453, size: 64, offset: 3584)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1783, file: !1784, line: 179, baseType: !1546, size: 128, offset: 3648)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1783, file: !1784, line: 180, baseType: !200, size: 64, offset: 3776)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1783, file: !1784, line: 180, baseType: !200, size: 64, offset: 3840)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1783, file: !1784, line: 180, baseType: !200, size: 64, offset: 3904)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1783, file: !1784, line: 180, baseType: !200, size: 64, offset: 3968)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1783, file: !1784, line: 181, baseType: !200, size: 64, offset: 4032)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1783, file: !1784, line: 181, baseType: !200, size: 64, offset: 4096)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1783, file: !1784, line: 181, baseType: !200, size: 64, offset: 4160)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1783, file: !1784, line: 181, baseType: !200, size: 64, offset: 4224)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1783, file: !1784, line: 182, baseType: !200, size: 64, offset: 4288)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1783, file: !1784, line: 182, baseType: !200, size: 64, offset: 4352)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1783, file: !1784, line: 182, baseType: !200, size: 64, offset: 4416)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1783, file: !1784, line: 182, baseType: !200, size: 64, offset: 4480)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1783, file: !1784, line: 183, baseType: !200, size: 64, offset: 4544)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1783, file: !1784, line: 183, baseType: !200, size: 64, offset: 4608)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1783, file: !1784, line: 184, baseType: !1866, offset: 4672)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1867, line: 12, elements: !283)
!1867 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1783, file: !1784, line: 192, baseType: !455, size: 64, offset: 4672)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1783, file: !1784, line: 203, baseType: !1870, size: 2048, offset: 4736)
!1870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1871, size: 2048, elements: !1763)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1872, line: 43, size: 128, elements: !1873)
!1872 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1873 = !{!1874, !1875}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1871, file: !1872, line: 44, baseType: !356, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1871, file: !1872, line: 45, baseType: !356, size: 64, offset: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1783, file: !1784, line: 220, baseType: !219, size: 8, offset: 6784)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1783, file: !1784, line: 221, baseType: !1233, size: 16, offset: 6800)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1783, file: !1784, line: 222, baseType: !1233, size: 16, offset: 6816)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1783, file: !1784, line: 224, baseType: !1004, size: 64, offset: 6848)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1783, file: !1784, line: 227, baseType: !1201, size: 192, offset: 6912)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1783, file: !1784, line: 233, baseType: !1201, size: 192, offset: 7104)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1245, file: !1246, line: 970, baseType: !1883, size: 64, offset: 9280)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1784, line: 20, size: 16576, elements: !1885)
!1885 = !{!1886, !1887, !1888, !1889}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1884, file: !1784, line: 21, baseType: !269)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1884, file: !1784, line: 22, baseType: !1258, size: 32)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1884, file: !1784, line: 23, baseType: !1509, size: 128, offset: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1884, file: !1784, line: 24, baseType: !1890, size: 16384, offset: 192)
!1890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1891, size: 16384, elements: !313)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1794, line: 49, size: 256, elements: !1892)
!1892 = !{!1893}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1891, file: !1794, line: 50, baseType: !1894, size: 256)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1794, line: 35, size: 256, elements: !1895)
!1895 = !{!1896, !1903, !1904, !1908}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1894, file: !1794, line: 37, baseType: !1897, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1898, line: 19, baseType: !1899)
!1898 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1898, line: 18, baseType: !1901)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{null, !139}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1894, file: !1794, line: 38, baseType: !200, size: 64, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1894, file: !1794, line: 44, baseType: !1905, size: 64, offset: 128)
!1905 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1898, line: 22, baseType: !1906)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1898, line: 21, baseType: !149)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1894, file: !1794, line: 46, baseType: !1798, size: 64, offset: 192)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1245, file: !1246, line: 971, baseType: !1798, size: 64, offset: 9344)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1245, file: !1246, line: 972, baseType: !1798, size: 64, offset: 9408)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1245, file: !1246, line: 974, baseType: !1798, size: 64, offset: 9472)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1245, file: !1246, line: 975, baseType: !1793, size: 192, offset: 9536)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1245, file: !1246, line: 976, baseType: !200, size: 64, offset: 9728)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1245, file: !1246, line: 977, baseType: !354, size: 64, offset: 9792)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1245, file: !1246, line: 978, baseType: !7, size: 32, offset: 9856)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1245, file: !1246, line: 980, baseType: !400, size: 64, offset: 9920)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1245, file: !1246, line: 989, baseType: !1918, size: 128, offset: 9984)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1919, line: 35, size: 128, elements: !1920)
!1919 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1920 = !{!1921, !1922, !1923}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1918, file: !1919, line: 36, baseType: !139, size: 32)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1918, file: !1919, line: 37, baseType: !777, size: 32, offset: 32)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1918, file: !1919, line: 38, baseType: !1924, size: 64, offset: 64)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1919, line: 23, flags: DIFlagFwdDecl)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1245, file: !1246, line: 992, baseType: !453, size: 64, offset: 10112)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1245, file: !1246, line: 993, baseType: !453, size: 64, offset: 10176)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1245, file: !1246, line: 996, baseType: !269, offset: 10240)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1245, file: !1246, line: 999, baseType: !810, offset: 10240)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1245, file: !1246, line: 1001, baseType: !1931, size: 64, offset: 10240)
!1931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1246, line: 636, size: 64, elements: !1932)
!1932 = !{!1933}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1931, file: !1246, line: 637, baseType: !1934, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1245, file: !1246, line: 1005, baseType: !782, size: 128, offset: 10304)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1245, file: !1246, line: 1007, baseType: !1244, size: 64, offset: 10432)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1245, file: !1246, line: 1009, baseType: !1938, size: 64, offset: 10496)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1246, line: 1009, flags: DIFlagFwdDecl)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1245, file: !1246, line: 1043, baseType: !202, size: 64, offset: 10560)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1245, file: !1246, line: 1046, baseType: !1942, size: 64, offset: 10624)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1246, line: 41, flags: DIFlagFwdDecl)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1245, file: !1246, line: 1050, baseType: !1945, size: 64, offset: 10688)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1246, line: 42, flags: DIFlagFwdDecl)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1245, file: !1246, line: 1054, baseType: !1948, size: 64, offset: 10752)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1246, line: 55, flags: DIFlagFwdDecl)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1245, file: !1246, line: 1056, baseType: !1951, size: 64, offset: 10816)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1246, line: 40, flags: DIFlagFwdDecl)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1245, file: !1246, line: 1058, baseType: !1954, size: 64, offset: 10880)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1956, line: 99, size: 704, elements: !1957)
!1956 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1957 = !{!1958, !1959, !1960, !1961, !1962, !1963, !1964, !1983, !1984}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1955, file: !1956, line: 100, baseType: !801, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1955, file: !1956, line: 101, baseType: !777, size: 32, offset: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1955, file: !1956, line: 102, baseType: !777, size: 32, offset: 96)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1955, file: !1956, line: 105, baseType: !269, offset: 128)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1955, file: !1956, line: 107, baseType: !138, size: 16, offset: 128)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1955, file: !1956, line: 109, baseType: !768, size: 128, offset: 192)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1955, file: !1956, line: 110, baseType: !1965, size: 64, offset: 320)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1956, line: 73, size: 448, elements: !1967)
!1967 = !{!1968, !1971, !1972, !1977, !1982}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1966, file: !1956, line: 74, baseType: !1969, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1956, line: 74, flags: DIFlagFwdDecl)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1966, file: !1956, line: 75, baseType: !1954, size: 64, offset: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, scope: !1966, file: !1956, line: 83, baseType: !1973, size: 128, offset: 128)
!1973 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1966, file: !1956, line: 83, size: 128, elements: !1974)
!1974 = !{!1975, !1976}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1973, file: !1956, line: 84, baseType: !256, size: 128)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1973, file: !1956, line: 85, baseType: !965, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, scope: !1966, file: !1956, line: 87, baseType: !1978, size: 128, offset: 256)
!1978 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1966, file: !1956, line: 87, size: 128, elements: !1979)
!1979 = !{!1980, !1981}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1978, file: !1956, line: 88, baseType: !668, size: 128)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1978, file: !1956, line: 89, baseType: !397, size: 128, align: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1966, file: !1956, line: 92, baseType: !7, size: 32, offset: 384)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1955, file: !1956, line: 111, baseType: !664, size: 64, offset: 384)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1955, file: !1956, line: 113, baseType: !1985, size: 256, offset: 448)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1986, line: 102, size: 256, elements: !1987)
!1986 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1987 = !{!1988, !1989, !1990}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1985, file: !1986, line: 103, baseType: !801, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1985, file: !1986, line: 104, baseType: !256, size: 128, offset: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1985, file: !1986, line: 105, baseType: !1991, size: 64, offset: 192)
!1991 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1986, line: 21, baseType: !1992)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{null, !1995}
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1245, file: !1246, line: 1061, baseType: !1997, size: 64, offset: 10944)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1246, line: 43, flags: DIFlagFwdDecl)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1245, file: !1246, line: 1064, baseType: !200, size: 64, offset: 11008)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1245, file: !1246, line: 1065, baseType: !2001, size: 64, offset: 11072)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1794, line: 14, baseType: !2003)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1794, line: 12, size: 384, elements: !2004)
!2004 = !{!2005}
!2005 = !DIDerivedType(tag: DW_TAG_member, scope: !2003, file: !1794, line: 13, baseType: !2006, size: 384)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2003, file: !1794, line: 13, size: 384, elements: !2007)
!2007 = !{!2008, !2009, !2010, !2011}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2006, file: !1794, line: 13, baseType: !139, size: 32)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2006, file: !1794, line: 13, baseType: !139, size: 32, offset: 32)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2006, file: !1794, line: 13, baseType: !139, size: 32, offset: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2006, file: !1794, line: 13, baseType: !2012, size: 256, offset: 128)
!2012 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2013, line: 32, size: 256, elements: !2014)
!2013 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2014 = !{!2015, !2020, !2033, !2039, !2048, !2068, !2073}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2012, file: !2013, line: 37, baseType: !2016, size: 64)
!2016 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2012, file: !2013, line: 34, size: 64, elements: !2017)
!2017 = !{!2018, !2019}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2016, file: !2013, line: 35, baseType: !1488, size: 32)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2016, file: !2013, line: 36, baseType: !472, size: 32, offset: 32)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2012, file: !2013, line: 45, baseType: !2021, size: 192)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2012, file: !2013, line: 40, size: 192, elements: !2022)
!2022 = !{!2023, !2025, !2026, !2032}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2021, file: !2013, line: 41, baseType: !2024, size: 32)
!2024 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !341, line: 95, baseType: !139)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2021, file: !2013, line: 42, baseType: !139, size: 32, offset: 32)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2021, file: !2013, line: 43, baseType: !2027, size: 64, offset: 64)
!2027 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2013, line: 11, baseType: !2028)
!2028 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2013, line: 8, size: 64, elements: !2029)
!2029 = !{!2030, !2031}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2028, file: !2013, line: 9, baseType: !139, size: 32)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2028, file: !2013, line: 10, baseType: !202, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2021, file: !2013, line: 44, baseType: !139, size: 32, offset: 128)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2012, file: !2013, line: 52, baseType: !2034, size: 128)
!2034 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2012, file: !2013, line: 48, size: 128, elements: !2035)
!2035 = !{!2036, !2037, !2038}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2034, file: !2013, line: 49, baseType: !1488, size: 32)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2034, file: !2013, line: 50, baseType: !472, size: 32, offset: 32)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2034, file: !2013, line: 51, baseType: !2027, size: 64, offset: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2012, file: !2013, line: 61, baseType: !2040, size: 256)
!2040 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2012, file: !2013, line: 55, size: 256, elements: !2041)
!2041 = !{!2042, !2043, !2044, !2045, !2047}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2040, file: !2013, line: 56, baseType: !1488, size: 32)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2040, file: !2013, line: 57, baseType: !472, size: 32, offset: 32)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2040, file: !2013, line: 58, baseType: !139, size: 32, offset: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2040, file: !2013, line: 59, baseType: !2046, size: 64, offset: 128)
!2046 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !341, line: 94, baseType: !342)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2040, file: !2013, line: 60, baseType: !2046, size: 64, offset: 192)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2012, file: !2013, line: 95, baseType: !2049, size: 256)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2012, file: !2013, line: 64, size: 256, elements: !2050)
!2050 = !{!2051, !2052}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2049, file: !2013, line: 65, baseType: !202, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, scope: !2049, file: !2013, line: 77, baseType: !2053, size: 192, offset: 64)
!2053 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2049, file: !2013, line: 77, size: 192, elements: !2054)
!2054 = !{!2055, !2056, !2063}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2053, file: !2013, line: 82, baseType: !1233, size: 16)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2053, file: !2013, line: 88, baseType: !2057, size: 192)
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2053, file: !2013, line: 84, size: 192, elements: !2058)
!2058 = !{!2059, !2061, !2062}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2057, file: !2013, line: 85, baseType: !2060, size: 64)
!2060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 64, elements: !1358)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2057, file: !2013, line: 86, baseType: !202, size: 64, offset: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2057, file: !2013, line: 87, baseType: !202, size: 64, offset: 128)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2053, file: !2013, line: 93, baseType: !2064, size: 96)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2053, file: !2013, line: 90, size: 96, elements: !2065)
!2065 = !{!2066, !2067}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2064, file: !2013, line: 91, baseType: !2060, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2064, file: !2013, line: 92, baseType: !449, size: 32, offset: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2012, file: !2013, line: 101, baseType: !2069, size: 128)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2012, file: !2013, line: 98, size: 128, elements: !2070)
!2070 = !{!2071, !2072}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2069, file: !2013, line: 99, baseType: !343, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2069, file: !2013, line: 100, baseType: !139, size: 32, offset: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2012, file: !2013, line: 108, baseType: !2074, size: 128)
!2074 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2012, file: !2013, line: 104, size: 128, elements: !2075)
!2075 = !{!2076, !2077, !2078}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2074, file: !2013, line: 105, baseType: !202, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2074, file: !2013, line: 106, baseType: !139, size: 32, offset: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2074, file: !2013, line: 107, baseType: !7, size: 32, offset: 96)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1245, file: !1246, line: 1067, baseType: !1866, offset: 11136)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1245, file: !1246, line: 1099, baseType: !2081, size: 64, offset: 11136)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1246, line: 56, flags: DIFlagFwdDecl)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1245, file: !1246, line: 1103, baseType: !256, size: 128, offset: 11200)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1245, file: !1246, line: 1104, baseType: !2085, size: 64, offset: 11328)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1246, line: 46, flags: DIFlagFwdDecl)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1245, file: !1246, line: 1105, baseType: !1201, size: 192, offset: 11392)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1245, file: !1246, line: 1106, baseType: !7, size: 32, offset: 11584)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1245, file: !1246, line: 1109, baseType: !2090, size: 128, offset: 11648)
!2090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2091, size: 128, elements: !1597)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1246, line: 51, flags: DIFlagFwdDecl)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1245, file: !1246, line: 1110, baseType: !1201, size: 192, offset: 11776)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1245, file: !1246, line: 1111, baseType: !256, size: 128, offset: 11968)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1245, file: !1246, line: 1173, baseType: !2096, size: 64, offset: 12096)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2098, line: 62, size: 256, align: 256, elements: !2099)
!2098 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2099 = !{!2100, !2101, !2102, !2107}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2097, file: !2098, line: 75, baseType: !449, size: 32)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2097, file: !2098, line: 90, baseType: !449, size: 32, offset: 32)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2097, file: !2098, line: 124, baseType: !2103, size: 64, offset: 64)
!2103 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2097, file: !2098, line: 109, size: 64, elements: !2104)
!2104 = !{!2105, !2106}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2103, file: !2098, line: 110, baseType: !454, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2103, file: !2098, line: 112, baseType: !454, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2097, file: !2098, line: 144, baseType: !449, size: 32, offset: 128)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1245, file: !1246, line: 1174, baseType: !447, size: 32, offset: 12160)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1245, file: !1246, line: 1179, baseType: !200, size: 64, offset: 12224)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1245, file: !1246, line: 1182, baseType: !2111, size: 128, offset: 12288)
!2111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1179, line: 76, size: 128, elements: !2112)
!2112 = !{!2113, !2118, !2119}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2111, file: !1179, line: 85, baseType: !2114, size: 64)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2115, line: 7, size: 64, elements: !2116)
!2115 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2116 = !{!2117}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2114, file: !2115, line: 12, baseType: !1395, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2111, file: !1179, line: 88, baseType: !219, size: 8, offset: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2111, file: !1179, line: 95, baseType: !219, size: 8, offset: 72)
!2120 = !DIDerivedType(tag: DW_TAG_member, scope: !1245, file: !1246, line: 1184, baseType: !2121, size: 128, offset: 12416)
!2121 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1245, file: !1246, line: 1184, size: 128, elements: !2122)
!2122 = !{!2123, !2124}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2121, file: !1246, line: 1185, baseType: !1258, size: 32)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2121, file: !1246, line: 1186, baseType: !397, size: 128, align: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1245, file: !1246, line: 1190, baseType: !2126, size: 64, offset: 12544)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1246, line: 53, flags: DIFlagFwdDecl)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1245, file: !1246, line: 1192, baseType: !2129, size: 128, offset: 12608)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1179, line: 64, size: 128, elements: !2130)
!2130 = !{!2131, !2132, !2133}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2129, file: !1179, line: 65, baseType: !750, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2129, file: !1179, line: 67, baseType: !449, size: 32, offset: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2129, file: !1179, line: 68, baseType: !449, size: 32, offset: 96)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1245, file: !1246, line: 1206, baseType: !139, size: 32, offset: 12736)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1245, file: !1246, line: 1207, baseType: !139, size: 32, offset: 12768)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1245, file: !1246, line: 1209, baseType: !200, size: 64, offset: 12800)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1245, file: !1246, line: 1219, baseType: !453, size: 64, offset: 12864)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1245, file: !1246, line: 1220, baseType: !453, size: 64, offset: 12928)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1245, file: !1246, line: 1317, baseType: !139, size: 32, offset: 12992)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1245, file: !1246, line: 1319, baseType: !1244, size: 64, offset: 13056)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1245, file: !1246, line: 1322, baseType: !2142, size: 64, offset: 13120)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2144, line: 56, size: 512, elements: !2145)
!2144 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2145 = !{!2146, !2147, !2148, !2149, !2150, !2151, !2152, !2154}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2143, file: !2144, line: 57, baseType: !2142, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2143, file: !2144, line: 58, baseType: !202, size: 64, offset: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2143, file: !2144, line: 59, baseType: !200, size: 64, offset: 128)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2143, file: !2144, line: 60, baseType: !200, size: 64, offset: 192)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2143, file: !2144, line: 61, baseType: !850, size: 64, offset: 256)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2143, file: !2144, line: 62, baseType: !7, size: 32, offset: 320)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2143, file: !2144, line: 63, baseType: !2153, size: 64, offset: 384)
!2153 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !220, line: 153, baseType: !453)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2143, file: !2144, line: 64, baseType: !2155, size: 64, offset: 448)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1245, file: !1246, line: 1326, baseType: !1258, size: 32, offset: 13184)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1245, file: !1246, line: 1342, baseType: !202, size: 64, offset: 13248)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1245, file: !1246, line: 1343, baseType: !454, size: 64, offset: 13312)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1245, file: !1246, line: 1344, baseType: !453, size: 64, offset: 13376)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1245, file: !1246, line: 1345, baseType: !454, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1245, file: !1246, line: 1346, baseType: !454, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1245, file: !1246, line: 1347, baseType: !454, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1245, file: !1246, line: 1348, baseType: !397, size: 128, align: 64, offset: 13504)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1245, file: !1246, line: 1358, baseType: !2166, size: 34816, offset: 13824)
!2166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2167, line: 485, size: 34816, elements: !2168)
!2167 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2168 = !{!2169, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2198, !2199, !2200, !2201, !2202, !2203, !2206, !2207, !2208}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2166, file: !2167, line: 487, baseType: !2170, size: 192)
!2170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2171, size: 192, elements: !214)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2172, line: 16, size: 64, elements: !2173)
!2172 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2173 = !{!2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2171, file: !2172, line: 17, baseType: !889, size: 16)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2171, file: !2172, line: 18, baseType: !889, size: 16, offset: 16)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2171, file: !2172, line: 19, baseType: !889, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2171, file: !2172, line: 19, baseType: !889, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2171, file: !2172, line: 19, baseType: !889, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2171, file: !2172, line: 19, baseType: !889, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2171, file: !2172, line: 19, baseType: !889, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2171, file: !2172, line: 20, baseType: !889, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2171, file: !2172, line: 20, baseType: !889, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2171, file: !2172, line: 20, baseType: !889, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2171, file: !2172, line: 20, baseType: !889, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2171, file: !2172, line: 20, baseType: !889, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2171, file: !2172, line: 20, baseType: !889, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2166, file: !2167, line: 491, baseType: !200, size: 64, offset: 192)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2166, file: !2167, line: 495, baseType: !138, size: 16, offset: 256)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2166, file: !2167, line: 496, baseType: !138, size: 16, offset: 272)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2166, file: !2167, line: 497, baseType: !138, size: 16, offset: 288)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2166, file: !2167, line: 498, baseType: !138, size: 16, offset: 304)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2166, file: !2167, line: 502, baseType: !200, size: 64, offset: 320)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2166, file: !2167, line: 503, baseType: !200, size: 64, offset: 384)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2166, file: !2167, line: 514, baseType: !2195, size: 256, offset: 448)
!2195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2196, size: 256, elements: !1183)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2167, line: 483, flags: DIFlagFwdDecl)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2166, file: !2167, line: 516, baseType: !200, size: 64, offset: 704)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2166, file: !2167, line: 518, baseType: !200, size: 64, offset: 768)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2166, file: !2167, line: 520, baseType: !200, size: 64, offset: 832)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2166, file: !2167, line: 521, baseType: !200, size: 64, offset: 896)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2166, file: !2167, line: 522, baseType: !200, size: 64, offset: 960)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2166, file: !2167, line: 528, baseType: !2204, size: 64, offset: 1024)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2167, line: 10, flags: DIFlagFwdDecl)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2166, file: !2167, line: 535, baseType: !200, size: 64, offset: 1088)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2166, file: !2167, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2166, file: !2167, line: 540, baseType: !2209, size: 33280, offset: 1536)
!2209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2210, line: 317, size: 33280, elements: !2211)
!2210 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2211 = !{!2212, !2213, !2214}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2209, file: !2210, line: 330, baseType: !7, size: 32)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2209, file: !2210, line: 337, baseType: !200, size: 64, offset: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2209, file: !2210, line: 348, baseType: !2215, size: 32768, offset: 512)
!2215 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2210, line: 304, size: 32768, elements: !2216)
!2216 = !{!2217, !2232, !2271, !2321, !2334}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2215, file: !2210, line: 305, baseType: !2218, size: 896)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2210, line: 12, size: 896, elements: !2219)
!2219 = !{!2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2231}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2218, file: !2210, line: 13, baseType: !447, size: 32)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2218, file: !2210, line: 14, baseType: !447, size: 32, offset: 32)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2218, file: !2210, line: 15, baseType: !447, size: 32, offset: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2218, file: !2210, line: 16, baseType: !447, size: 32, offset: 96)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2218, file: !2210, line: 17, baseType: !447, size: 32, offset: 128)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2218, file: !2210, line: 18, baseType: !447, size: 32, offset: 160)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2218, file: !2210, line: 19, baseType: !447, size: 32, offset: 192)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2218, file: !2210, line: 22, baseType: !2228, size: 640, offset: 224)
!2228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !447, size: 640, elements: !2229)
!2229 = !{!2230}
!2230 = !DISubrange(count: 20)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2218, file: !2210, line: 25, baseType: !447, size: 32, offset: 864)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2215, file: !2210, line: 306, baseType: !2233, size: 4096, align: 128)
!2233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2210, line: 34, size: 4096, align: 128, elements: !2234)
!2234 = !{!2235, !2236, !2237, !2238, !2239, !2254, !2255, !2256, !2260, !2262, !2266}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2233, file: !2210, line: 35, baseType: !889, size: 16)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2233, file: !2210, line: 36, baseType: !889, size: 16, offset: 16)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2233, file: !2210, line: 37, baseType: !889, size: 16, offset: 32)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2233, file: !2210, line: 38, baseType: !889, size: 16, offset: 48)
!2239 = !DIDerivedType(tag: DW_TAG_member, scope: !2233, file: !2210, line: 39, baseType: !2240, size: 128, offset: 64)
!2240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2233, file: !2210, line: 39, size: 128, elements: !2241)
!2241 = !{!2242, !2247}
!2242 = !DIDerivedType(tag: DW_TAG_member, scope: !2240, file: !2210, line: 40, baseType: !2243, size: 128)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2240, file: !2210, line: 40, size: 128, elements: !2244)
!2244 = !{!2245, !2246}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2243, file: !2210, line: 41, baseType: !453, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2243, file: !2210, line: 42, baseType: !453, size: 64, offset: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, scope: !2240, file: !2210, line: 44, baseType: !2248, size: 128)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2240, file: !2210, line: 44, size: 128, elements: !2249)
!2249 = !{!2250, !2251, !2252, !2253}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2248, file: !2210, line: 45, baseType: !447, size: 32)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2248, file: !2210, line: 46, baseType: !447, size: 32, offset: 32)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2248, file: !2210, line: 47, baseType: !447, size: 32, offset: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2248, file: !2210, line: 48, baseType: !447, size: 32, offset: 96)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2233, file: !2210, line: 51, baseType: !447, size: 32, offset: 192)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2233, file: !2210, line: 52, baseType: !447, size: 32, offset: 224)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2233, file: !2210, line: 55, baseType: !2257, size: 1024, offset: 256)
!2257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !447, size: 1024, elements: !2258)
!2258 = !{!2259}
!2259 = !DISubrange(count: 32)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2233, file: !2210, line: 58, baseType: !2261, size: 2048, offset: 1280)
!2261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !447, size: 2048, elements: !313)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2233, file: !2210, line: 60, baseType: !2263, size: 384, offset: 3328)
!2263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !447, size: 384, elements: !2264)
!2264 = !{!2265}
!2265 = !DISubrange(count: 12)
!2266 = !DIDerivedType(tag: DW_TAG_member, scope: !2233, file: !2210, line: 62, baseType: !2267, size: 384, offset: 3712)
!2267 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2233, file: !2210, line: 62, size: 384, elements: !2268)
!2268 = !{!2269, !2270}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2267, file: !2210, line: 63, baseType: !2263, size: 384)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2267, file: !2210, line: 64, baseType: !2263, size: 384)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2215, file: !2210, line: 307, baseType: !2272, size: 1088)
!2272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2210, line: 79, size: 1088, elements: !2273)
!2273 = !{!2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2320}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2272, file: !2210, line: 80, baseType: !447, size: 32)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2272, file: !2210, line: 81, baseType: !447, size: 32, offset: 32)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2272, file: !2210, line: 82, baseType: !447, size: 32, offset: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2272, file: !2210, line: 83, baseType: !447, size: 32, offset: 96)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2272, file: !2210, line: 84, baseType: !447, size: 32, offset: 128)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2272, file: !2210, line: 85, baseType: !447, size: 32, offset: 160)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2272, file: !2210, line: 86, baseType: !447, size: 32, offset: 192)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2272, file: !2210, line: 88, baseType: !2228, size: 640, offset: 224)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2272, file: !2210, line: 89, baseType: !1380, size: 8, offset: 864)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2272, file: !2210, line: 90, baseType: !1380, size: 8, offset: 872)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2272, file: !2210, line: 91, baseType: !1380, size: 8, offset: 880)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2272, file: !2210, line: 92, baseType: !1380, size: 8, offset: 888)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2272, file: !2210, line: 93, baseType: !1380, size: 8, offset: 896)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2272, file: !2210, line: 94, baseType: !1380, size: 8, offset: 904)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2272, file: !2210, line: 95, baseType: !2289, size: 64, offset: 960)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2291, line: 11, size: 128, elements: !2292)
!2291 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2292 = !{!2293, !2294}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2290, file: !2291, line: 12, baseType: !343, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2290, file: !2291, line: 13, baseType: !2295, size: 64, offset: 64)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2297, line: 56, size: 1344, elements: !2298)
!2297 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2298 = !{!2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2296, file: !2297, line: 61, baseType: !200, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2296, file: !2297, line: 62, baseType: !200, size: 64, offset: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2296, file: !2297, line: 63, baseType: !200, size: 64, offset: 128)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2296, file: !2297, line: 64, baseType: !200, size: 64, offset: 192)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2296, file: !2297, line: 65, baseType: !200, size: 64, offset: 256)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2296, file: !2297, line: 66, baseType: !200, size: 64, offset: 320)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2296, file: !2297, line: 68, baseType: !200, size: 64, offset: 384)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2296, file: !2297, line: 69, baseType: !200, size: 64, offset: 448)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2296, file: !2297, line: 70, baseType: !200, size: 64, offset: 512)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2296, file: !2297, line: 71, baseType: !200, size: 64, offset: 576)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2296, file: !2297, line: 72, baseType: !200, size: 64, offset: 640)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2296, file: !2297, line: 73, baseType: !200, size: 64, offset: 704)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2296, file: !2297, line: 74, baseType: !200, size: 64, offset: 768)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2296, file: !2297, line: 75, baseType: !200, size: 64, offset: 832)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2296, file: !2297, line: 76, baseType: !200, size: 64, offset: 896)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2296, file: !2297, line: 81, baseType: !200, size: 64, offset: 960)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2296, file: !2297, line: 83, baseType: !200, size: 64, offset: 1024)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2296, file: !2297, line: 84, baseType: !200, size: 64, offset: 1088)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2296, file: !2297, line: 85, baseType: !200, size: 64, offset: 1152)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2296, file: !2297, line: 86, baseType: !200, size: 64, offset: 1216)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2296, file: !2297, line: 87, baseType: !200, size: 64, offset: 1280)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2272, file: !2210, line: 96, baseType: !447, size: 32, offset: 1024)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2215, file: !2210, line: 308, baseType: !2322, size: 4608, align: 512)
!2322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2210, line: 289, size: 4608, align: 512, elements: !2323)
!2323 = !{!2324, !2325, !2332}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2322, file: !2210, line: 290, baseType: !2233, size: 4096, align: 128)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2322, file: !2210, line: 291, baseType: !2326, size: 512, offset: 4096)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2210, line: 268, size: 512, elements: !2327)
!2327 = !{!2328, !2329, !2330}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2326, file: !2210, line: 269, baseType: !453, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2326, file: !2210, line: 270, baseType: !453, size: 64, offset: 64)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2326, file: !2210, line: 271, baseType: !2331, size: 384, offset: 128)
!2331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !453, size: 384, elements: !1653)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2322, file: !2210, line: 292, baseType: !2333, offset: 4608)
!2333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1380, elements: !1751)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2215, file: !2210, line: 309, baseType: !2335, size: 32768)
!2335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1380, size: 32768, elements: !2336)
!2336 = !{!2337}
!2337 = !DISubrange(count: 4096)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1241, file: !752, line: 378, baseType: !2339, size: 64, offset: 64)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1237, file: !752, line: 384, baseType: !1530, size: 192, offset: 192)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1008, file: !752, line: 500, baseType: !269, offset: 6656)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1008, file: !752, line: 501, baseType: !2343, size: 64, offset: 6656)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !752, line: 387, flags: DIFlagFwdDecl)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1008, file: !752, line: 516, baseType: !1741, size: 64, offset: 6720)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1008, file: !752, line: 519, baseType: !384, size: 64, offset: 6784)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1008, file: !752, line: 521, baseType: !2348, size: 64, offset: 6848)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !752, line: 521, flags: DIFlagFwdDecl)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1008, file: !752, line: 545, baseType: !777, size: 32, offset: 6912)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1008, file: !752, line: 548, baseType: !219, size: 8, offset: 6944)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1008, file: !752, line: 550, baseType: !2353, offset: 6952)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2354, line: 142, elements: !283)
!2354 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1008, file: !752, line: 554, baseType: !1985, size: 256, offset: 6976)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1008, file: !752, line: 557, baseType: !447, size: 32, offset: 7232)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1005, file: !752, line: 565, baseType: !2358, offset: 7296)
!2358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, elements: !2359)
!2359 = !{!2360}
!2360 = !DISubrange(count: -1)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1001, file: !752, line: 151, baseType: !777, size: 32)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !994, file: !752, line: 156, baseType: !269, offset: 256)
!2363 = !DIDerivedType(tag: DW_TAG_member, scope: !756, file: !752, line: 159, baseType: !2364, size: 128)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !756, file: !752, line: 159, size: 128, elements: !2365)
!2365 = !{!2366, !2430}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2364, file: !752, line: 161, baseType: !2367, size: 64)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2369)
!2369 = !{!2370, !2380, !2401, !2402, !2403, !2404, !2405, !2417, !2418, !2419}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2368, file: !31, line: 111, baseType: !2371, size: 384)
!2371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2372)
!2372 = !{!2373, !2375, !2376, !2377, !2378, !2379}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2371, file: !31, line: 20, baseType: !2374, size: 64)
!2374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2371, file: !31, line: 21, baseType: !2374, size: 64, offset: 64)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2371, file: !31, line: 22, baseType: !2374, size: 64, offset: 128)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2371, file: !31, line: 23, baseType: !200, size: 64, offset: 192)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2371, file: !31, line: 24, baseType: !200, size: 64, offset: 256)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2371, file: !31, line: 25, baseType: !200, size: 64, offset: 320)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2368, file: !31, line: 112, baseType: !2381, size: 64, offset: 384)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2383, line: 105, size: 128, elements: !2384)
!2383 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2384 = !{!2385, !2386}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2382, file: !2383, line: 110, baseType: !200, size: 64)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2382, file: !2383, line: 118, baseType: !2387, size: 64, offset: 64)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2383, line: 95, size: 448, elements: !2389)
!2389 = !{!2390, !2391, !2396, !2397, !2398, !2399, !2400}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2388, file: !2383, line: 96, baseType: !801, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2388, file: !2383, line: 97, baseType: !2392, size: 64, offset: 64)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2383, line: 60, baseType: !2394)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{null, !2381}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2388, file: !2383, line: 98, baseType: !2392, size: 64, offset: 128)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2388, file: !2383, line: 99, baseType: !219, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2388, file: !2383, line: 100, baseType: !219, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2388, file: !2383, line: 101, baseType: !397, size: 128, align: 64, offset: 256)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2388, file: !2383, line: 102, baseType: !2381, size: 64, offset: 384)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2368, file: !31, line: 113, baseType: !2382, size: 128, offset: 448)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2368, file: !31, line: 114, baseType: !1530, size: 192, offset: 576)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2368, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2368, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2368, file: !31, line: 117, baseType: !2406, size: 64, offset: 832)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2408)
!2408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2409)
!2409 = !{!2410, !2411, !2415, !2416}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2408, file: !31, line: 73, baseType: !870, size: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2408, file: !31, line: 78, baseType: !2412, size: 64, offset: 64)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{null, !2367}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2408, file: !31, line: 83, baseType: !2412, size: 64, offset: 128)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2408, file: !31, line: 89, baseType: !1057, size: 64, offset: 192)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2368, file: !31, line: 118, baseType: !202, size: 64, offset: 896)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2368, file: !31, line: 119, baseType: !139, size: 32, offset: 960)
!2419 = !DIDerivedType(tag: DW_TAG_member, scope: !2368, file: !31, line: 120, baseType: !2420, size: 128, offset: 1024)
!2420 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2368, file: !31, line: 120, size: 128, elements: !2421)
!2421 = !{!2422, !2428}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2420, file: !31, line: 121, baseType: !2423, size: 128)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2424, line: 6, size: 128, elements: !2425)
!2424 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2425 = !{!2426, !2427}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2423, file: !2424, line: 7, baseType: !453, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2423, file: !2424, line: 8, baseType: !453, size: 64, offset: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2420, file: !31, line: 122, baseType: !2429)
!2429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2423, elements: !1751)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2364, file: !752, line: 162, baseType: !202, size: 64, offset: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !756, file: !752, line: 176, baseType: !397, size: 128, align: 64)
!2432 = !DIDerivedType(tag: DW_TAG_member, scope: !751, file: !752, line: 179, baseType: !2433, size: 32, offset: 384)
!2433 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !751, file: !752, line: 179, size: 32, elements: !2434)
!2434 = !{!2435, !2436, !2437, !2438}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2433, file: !752, line: 184, baseType: !777, size: 32)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2433, file: !752, line: 192, baseType: !7, size: 32)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2433, file: !752, line: 194, baseType: !7, size: 32)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2433, file: !752, line: 195, baseType: !139, size: 32)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !751, file: !752, line: 199, baseType: !777, size: 32, offset: 416)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !686, file: !44, line: 1964, baseType: !2441, size: 64, offset: 1344)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!343, !628, !2444}
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2446, line: 12, size: 256, elements: !2447)
!2446 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2447 = !{!2448, !2449, !2450, !2451, !2452}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2445, file: !2446, line: 13, baseType: !773, size: 32)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2445, file: !2446, line: 16, baseType: !139, size: 32, offset: 32)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2445, file: !2446, line: 23, baseType: !200, size: 64, offset: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2445, file: !2446, line: 30, baseType: !200, size: 64, offset: 128)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2445, file: !2446, line: 33, baseType: !2453, size: 64, offset: 192)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !752, line: 27, flags: DIFlagFwdDecl)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !686, file: !44, line: 1966, baseType: !2441, size: 64, offset: 1408)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !629, file: !44, line: 1424, baseType: !2457, size: 64, offset: 448)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2459)
!2459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2460)
!2460 = !{!2461, !2507, !2511, !2515, !2516, !2517, !2518, !2519, !2524, !2529, !2533}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2459, file: !38, line: 323, baseType: !2462, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!139, !2465}
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2467)
!2467 = !{!2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2492, !2493, !2494}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2466, file: !38, line: 295, baseType: !668, size: 128)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2466, file: !38, line: 296, baseType: !256, size: 128, offset: 128)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2466, file: !38, line: 297, baseType: !256, size: 128, offset: 256)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2466, file: !38, line: 298, baseType: !256, size: 128, offset: 384)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2466, file: !38, line: 299, baseType: !1201, size: 192, offset: 512)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2466, file: !38, line: 300, baseType: !269, offset: 704)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2466, file: !38, line: 301, baseType: !777, size: 32, offset: 704)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2466, file: !38, line: 302, baseType: !628, size: 64, offset: 768)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2466, file: !38, line: 303, baseType: !2477, size: 64, offset: 832)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2478)
!2478 = !{!2479, !2491}
!2479 = !DIDerivedType(tag: DW_TAG_member, scope: !2477, file: !38, line: 69, baseType: !2480, size: 32)
!2480 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2477, file: !38, line: 69, size: 32, elements: !2481)
!2481 = !{!2482, !2483, !2484}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2480, file: !38, line: 70, baseType: !466, size: 32)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2480, file: !38, line: 71, baseType: !474, size: 32)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2480, file: !38, line: 72, baseType: !2485, size: 32)
!2485 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2486, line: 24, baseType: !2487)
!2486 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2487 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2486, line: 22, size: 32, elements: !2488)
!2488 = !{!2489}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2487, file: !2486, line: 23, baseType: !2490, size: 32)
!2490 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2486, line: 20, baseType: !472)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2477, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2466, file: !38, line: 304, baseType: !560, size: 64, offset: 896)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2466, file: !38, line: 305, baseType: !200, size: 64, offset: 960)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2466, file: !38, line: 306, baseType: !2495, size: 576, offset: 1024)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2496)
!2496 = !{!2497, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2495, file: !38, line: 206, baseType: !2498, size: 64)
!2498 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !562)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2495, file: !38, line: 207, baseType: !2498, size: 64, offset: 64)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2495, file: !38, line: 208, baseType: !2498, size: 64, offset: 128)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2495, file: !38, line: 209, baseType: !2498, size: 64, offset: 192)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2495, file: !38, line: 210, baseType: !2498, size: 64, offset: 256)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2495, file: !38, line: 211, baseType: !2498, size: 64, offset: 320)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2495, file: !38, line: 212, baseType: !2498, size: 64, offset: 384)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2495, file: !38, line: 213, baseType: !568, size: 64, offset: 448)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2495, file: !38, line: 214, baseType: !568, size: 64, offset: 512)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2459, file: !38, line: 324, baseType: !2508, size: 64, offset: 64)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{!2465, !628, !139}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2459, file: !38, line: 325, baseType: !2512, size: 64, offset: 128)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{null, !2465}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2459, file: !38, line: 326, baseType: !2462, size: 64, offset: 192)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2459, file: !38, line: 327, baseType: !2462, size: 64, offset: 256)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2459, file: !38, line: 328, baseType: !2462, size: 64, offset: 320)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2459, file: !38, line: 329, baseType: !714, size: 64, offset: 384)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2459, file: !38, line: 332, baseType: !2520, size: 64, offset: 448)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!2523, !460}
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2459, file: !38, line: 333, baseType: !2525, size: 64, offset: 512)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{!139, !460, !2528}
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2459, file: !38, line: 335, baseType: !2530, size: 64, offset: 576)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!139, !460, !2523}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2459, file: !38, line: 337, baseType: !2534, size: 64, offset: 640)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!139, !628, !2537}
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !629, file: !44, line: 1425, baseType: !2539, size: 64, offset: 512)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2541)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2542)
!2542 = !{!2543, !2547, !2548, !2552, !2553, !2554, !2569, !2592, !2596, !2597, !2620}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2541, file: !38, line: 429, baseType: !2544, size: 64)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!139, !628, !139, !139, !578}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2541, file: !38, line: 430, baseType: !714, size: 64, offset: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2541, file: !38, line: 431, baseType: !2549, size: 64, offset: 128)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{!139, !628, !7}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2541, file: !38, line: 432, baseType: !2549, size: 64, offset: 192)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2541, file: !38, line: 433, baseType: !714, size: 64, offset: 256)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2541, file: !38, line: 434, baseType: !2555, size: 64, offset: 320)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{!139, !628, !139, !2558}
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2560)
!2560 = !{!2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2559, file: !38, line: 416, baseType: !139, size: 32)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2559, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2559, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2559, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2559, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2559, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2559, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2559, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2541, file: !38, line: 435, baseType: !2570, size: 64, offset: 384)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{!139, !628, !2477, !2573}
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2575)
!2575 = !{!2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2574, file: !38, line: 344, baseType: !139, size: 32)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2574, file: !38, line: 345, baseType: !453, size: 64, offset: 64)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2574, file: !38, line: 346, baseType: !453, size: 64, offset: 128)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2574, file: !38, line: 347, baseType: !453, size: 64, offset: 192)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2574, file: !38, line: 348, baseType: !453, size: 64, offset: 256)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2574, file: !38, line: 349, baseType: !453, size: 64, offset: 320)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2574, file: !38, line: 350, baseType: !453, size: 64, offset: 384)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2574, file: !38, line: 351, baseType: !807, size: 64, offset: 448)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2574, file: !38, line: 353, baseType: !807, size: 64, offset: 512)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2574, file: !38, line: 354, baseType: !139, size: 32, offset: 576)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2574, file: !38, line: 355, baseType: !139, size: 32, offset: 608)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2574, file: !38, line: 356, baseType: !453, size: 64, offset: 640)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2574, file: !38, line: 357, baseType: !453, size: 64, offset: 704)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2574, file: !38, line: 358, baseType: !453, size: 64, offset: 768)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2574, file: !38, line: 359, baseType: !807, size: 64, offset: 832)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2574, file: !38, line: 360, baseType: !139, size: 32, offset: 896)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2541, file: !38, line: 436, baseType: !2593, size: 64, offset: 448)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!139, !628, !2537, !2573}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2541, file: !38, line: 438, baseType: !2570, size: 64, offset: 512)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2541, file: !38, line: 439, baseType: !2598, size: 64, offset: 576)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{!139, !628, !2601}
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2603)
!2603 = !{!2604, !2605}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2602, file: !38, line: 410, baseType: !7, size: 32)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2602, file: !38, line: 411, baseType: !2606, size: 1344, offset: 64)
!2606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2607, size: 1344, elements: !214)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2608)
!2608 = !{!2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2619}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2607, file: !38, line: 396, baseType: !7, size: 32)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2607, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2607, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2607, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2607, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2607, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2607, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2607, file: !38, line: 404, baseType: !455, size: 64, offset: 256)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2607, file: !38, line: 405, baseType: !2618, size: 64, offset: 320)
!2618 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !220, line: 126, baseType: !453)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2607, file: !38, line: 406, baseType: !2618, size: 64, offset: 384)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2541, file: !38, line: 440, baseType: !2549, size: 64, offset: 640)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !629, file: !44, line: 1426, baseType: !2622, size: 64, offset: 576)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2624)
!2624 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !629, file: !44, line: 1427, baseType: !200, size: 64, offset: 640)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !629, file: !44, line: 1428, baseType: !200, size: 64, offset: 704)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !629, file: !44, line: 1429, baseType: !200, size: 64, offset: 768)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !629, file: !44, line: 1430, baseType: !414, size: 64, offset: 832)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !629, file: !44, line: 1431, baseType: !797, size: 256, offset: 896)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !629, file: !44, line: 1432, baseType: !139, size: 32, offset: 1152)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !629, file: !44, line: 1433, baseType: !777, size: 32, offset: 1184)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !629, file: !44, line: 1437, baseType: !2633, size: 64, offset: 1216)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2636)
!2636 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !629, file: !44, line: 1449, baseType: !2638, size: 64, offset: 1280)
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !430, line: 34, size: 64, elements: !2639)
!2639 = !{!2640}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2638, file: !430, line: 35, baseType: !433, size: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !629, file: !44, line: 1450, baseType: !256, size: 128, offset: 1344)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !629, file: !44, line: 1451, baseType: !2643, size: 64, offset: 1472)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !629, file: !44, line: 1452, baseType: !1951, size: 64, offset: 1536)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !629, file: !44, line: 1453, baseType: !2647, size: 64, offset: 1600)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !629, file: !44, line: 1454, baseType: !668, size: 128, offset: 1664)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !629, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !629, file: !44, line: 1456, baseType: !2652, size: 2432, offset: 1856)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2653)
!2653 = !{!2654, !2655, !2656, !2658, !2690}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2652, file: !38, line: 519, baseType: !7, size: 32)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2652, file: !38, line: 520, baseType: !797, size: 256, offset: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2652, file: !38, line: 521, baseType: !2657, size: 192, offset: 320)
!2657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 192, elements: !214)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2652, file: !38, line: 522, baseType: !2659, size: 1728, offset: 512)
!2659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2660, size: 1728, elements: !214)
!2660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2661)
!2661 = !{!2662, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2660, file: !38, line: 223, baseType: !2663, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2665)
!2665 = !{!2666, !2667, !2680, !2681}
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2664, file: !38, line: 444, baseType: !139, size: 32)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2664, file: !38, line: 445, baseType: !2668, size: 64, offset: 64)
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2669, size: 64)
!2669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2670)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2671)
!2671 = !{!2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2670, file: !38, line: 311, baseType: !714, size: 64)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2670, file: !38, line: 312, baseType: !714, size: 64, offset: 64)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2670, file: !38, line: 313, baseType: !714, size: 64, offset: 128)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2670, file: !38, line: 314, baseType: !714, size: 64, offset: 192)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2670, file: !38, line: 315, baseType: !2462, size: 64, offset: 256)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2670, file: !38, line: 316, baseType: !2462, size: 64, offset: 320)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2670, file: !38, line: 317, baseType: !2462, size: 64, offset: 384)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2670, file: !38, line: 318, baseType: !2534, size: 64, offset: 448)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2664, file: !38, line: 446, baseType: !182, size: 64, offset: 128)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2664, file: !38, line: 447, baseType: !2663, size: 64, offset: 192)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2660, file: !38, line: 224, baseType: !139, size: 32, offset: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2660, file: !38, line: 226, baseType: !256, size: 128, offset: 128)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2660, file: !38, line: 227, baseType: !200, size: 64, offset: 256)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2660, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2660, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2660, file: !38, line: 230, baseType: !2498, size: 64, offset: 384)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2660, file: !38, line: 231, baseType: !2498, size: 64, offset: 448)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2660, file: !38, line: 232, baseType: !202, size: 64, offset: 512)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2652, file: !38, line: 523, baseType: !2691, size: 192, offset: 2240)
!2691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2668, size: 192, elements: !214)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !629, file: !44, line: 1458, baseType: !2693, size: 2112, offset: 4288)
!2693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2694)
!2694 = !{!2695, !2696, !2697}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2693, file: !44, line: 1411, baseType: !139, size: 32)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2693, file: !44, line: 1412, baseType: !1509, size: 128, offset: 64)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2693, file: !44, line: 1413, baseType: !2698, size: 1920, offset: 192)
!2698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2699, size: 1920, elements: !214)
!2699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2700, line: 12, size: 640, elements: !2701)
!2700 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2701 = !{!2702, !2710, !2712, !2717, !2718}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2699, file: !2700, line: 13, baseType: !2703, size: 320)
!2703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2704, line: 17, size: 320, elements: !2705)
!2704 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2705 = !{!2706, !2707, !2708, !2709}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2703, file: !2704, line: 18, baseType: !139, size: 32)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2703, file: !2704, line: 19, baseType: !139, size: 32, offset: 32)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2703, file: !2704, line: 20, baseType: !1509, size: 128, offset: 64)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2703, file: !2704, line: 22, baseType: !397, size: 128, align: 64, offset: 192)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2699, file: !2700, line: 14, baseType: !2711, size: 64, offset: 320)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2699, file: !2700, line: 15, baseType: !2713, size: 64, offset: 384)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2714, line: 16, size: 64, elements: !2715)
!2714 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2715 = !{!2716}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2713, file: !2714, line: 17, baseType: !1244, size: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2699, file: !2700, line: 16, baseType: !1509, size: 128, offset: 448)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2699, file: !2700, line: 17, baseType: !777, size: 32, offset: 576)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !629, file: !44, line: 1465, baseType: !202, size: 64, offset: 6400)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !629, file: !44, line: 1468, baseType: !447, size: 32, offset: 6464)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !629, file: !44, line: 1470, baseType: !568, size: 64, offset: 6528)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !629, file: !44, line: 1471, baseType: !568, size: 64, offset: 6592)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !629, file: !44, line: 1473, baseType: !449, size: 32, offset: 6656)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !629, file: !44, line: 1474, baseType: !2725, size: 64, offset: 6720)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !629, file: !44, line: 1477, baseType: !2728, size: 256, offset: 6784)
!2728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 256, elements: !2258)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !629, file: !44, line: 1478, baseType: !2730, size: 128, offset: 7040)
!2730 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2731, line: 18, baseType: !2732)
!2731 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2732 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2731, line: 16, size: 128, elements: !2733)
!2733 = !{!2734}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2732, file: !2731, line: 17, baseType: !2735, size: 128)
!2735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1381, size: 128, elements: !1763)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !629, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !629, file: !44, line: 1481, baseType: !2738, size: 32, offset: 7200)
!2738 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !220, line: 150, baseType: !7)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !629, file: !44, line: 1487, baseType: !1201, size: 192, offset: 7232)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !629, file: !44, line: 1493, baseType: !180, size: 64, offset: 7424)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !629, file: !44, line: 1495, baseType: !2742, size: 64, offset: 7488)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2744)
!2744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !412, line: 135, size: 1024, align: 512, elements: !2745)
!2745 = !{!2746, !2750, !2751, !2758, !2764, !2768, !2772, !2776, !2777, !2781, !2785, !2790, !2794}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2744, file: !412, line: 136, baseType: !2747, size: 64)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{!139, !414, !7}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2744, file: !412, line: 137, baseType: !2747, size: 64, offset: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2744, file: !412, line: 138, baseType: !2752, size: 64, offset: 128)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!139, !2755, !2757}
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !415)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2744, file: !412, line: 139, baseType: !2759, size: 64, offset: 192)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{!139, !2755, !7, !180, !2762}
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !438)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2744, file: !412, line: 141, baseType: !2765, size: 64, offset: 256)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!139, !2755}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2744, file: !412, line: 142, baseType: !2769, size: 64, offset: 320)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{!139, !414}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2744, file: !412, line: 143, baseType: !2773, size: 64, offset: 384)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{null, !414}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2744, file: !412, line: 144, baseType: !2773, size: 64, offset: 448)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2744, file: !412, line: 145, baseType: !2778, size: 64, offset: 512)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DISubroutineType(types: !2780)
!2780 = !{null, !414, !460}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2744, file: !412, line: 146, baseType: !2782, size: 64, offset: 576)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{!310, !414, !310, !139}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2744, file: !412, line: 147, baseType: !2786, size: 64, offset: 640)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DISubroutineType(types: !2788)
!2788 = !{!410, !2789}
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2744, file: !412, line: 148, baseType: !2791, size: 64, offset: 704)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{!139, !578, !219}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2744, file: !412, line: 149, baseType: !2795, size: 64, offset: 768)
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2796, size: 64)
!2796 = !DISubroutineType(types: !2797)
!2797 = !{!414, !414, !2798}
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !461)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !629, file: !44, line: 1500, baseType: !139, size: 32, offset: 7552)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !629, file: !44, line: 1502, baseType: !2802, size: 448, offset: 7616)
!2802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2446, line: 60, size: 448, elements: !2803)
!2803 = !{!2804, !2809, !2810, !2811, !2812, !2813, !2814}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2802, file: !2446, line: 61, baseType: !2805, size: 64)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!200, !2808, !2444}
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2802, file: !2446, line: 63, baseType: !2805, size: 64, offset: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2802, file: !2446, line: 66, baseType: !343, size: 64, offset: 128)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2802, file: !2446, line: 67, baseType: !139, size: 32, offset: 192)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2802, file: !2446, line: 68, baseType: !7, size: 32, offset: 224)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2802, file: !2446, line: 71, baseType: !256, size: 128, offset: 256)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2802, file: !2446, line: 77, baseType: !2815, size: 64, offset: 384)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !629, file: !44, line: 1505, baseType: !801, size: 64, offset: 8064)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !629, file: !44, line: 1508, baseType: !801, size: 64, offset: 8128)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !629, file: !44, line: 1511, baseType: !139, size: 32, offset: 8192)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !629, file: !44, line: 1514, baseType: !939, size: 32, offset: 8224)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !629, file: !44, line: 1517, baseType: !2821, size: 64, offset: 8256)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1986, line: 18, flags: DIFlagFwdDecl)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !629, file: !44, line: 1518, baseType: !664, size: 64, offset: 8320)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !629, file: !44, line: 1525, baseType: !1741, size: 64, offset: 8384)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !629, file: !44, line: 1532, baseType: !2826, size: 64, offset: 8448)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2827, line: 52, size: 64, elements: !2828)
!2827 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2828 = !{!2829}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2826, file: !2827, line: 53, baseType: !2830, size: 64)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2827, line: 40, size: 256, elements: !2832)
!2832 = !{!2833, !2834, !2839}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2831, file: !2827, line: 42, baseType: !269)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2831, file: !2827, line: 44, baseType: !2835, size: 192)
!2835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2827, line: 28, size: 192, elements: !2836)
!2836 = !{!2837, !2838}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2835, file: !2827, line: 29, baseType: !256, size: 128)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2835, file: !2827, line: 31, baseType: !343, size: 64, offset: 128)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2831, file: !2827, line: 49, baseType: !343, size: 64, offset: 192)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !629, file: !44, line: 1533, baseType: !2826, size: 64, offset: 8512)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !629, file: !44, line: 1534, baseType: !397, size: 128, align: 64, offset: 8576)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !629, file: !44, line: 1535, baseType: !1985, size: 256, offset: 8704)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !629, file: !44, line: 1537, baseType: !1201, size: 192, offset: 8960)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !629, file: !44, line: 1542, baseType: !139, size: 32, offset: 9152)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !629, file: !44, line: 1545, baseType: !269, offset: 9184)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !629, file: !44, line: 1546, baseType: !256, size: 128, offset: 9216)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !629, file: !44, line: 1548, baseType: !269, offset: 9344)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !629, file: !44, line: 1549, baseType: !256, size: 128, offset: 9344)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !461, file: !44, line: 624, baseType: !763, size: 64, offset: 256)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !461, file: !44, line: 631, baseType: !200, size: 64, offset: 320)
!2851 = !DIDerivedType(tag: DW_TAG_member, scope: !461, file: !44, line: 639, baseType: !2852, size: 32, offset: 384)
!2852 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !461, file: !44, line: 639, size: 32, elements: !2853)
!2853 = !{!2854, !2856}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2852, file: !44, line: 640, baseType: !2855, size: 32)
!2855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2852, file: !44, line: 641, baseType: !7, size: 32)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !461, file: !44, line: 643, baseType: !542, size: 32, offset: 416)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !461, file: !44, line: 644, baseType: !560, size: 64, offset: 448)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !461, file: !44, line: 645, baseType: !564, size: 128, offset: 512)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !461, file: !44, line: 646, baseType: !564, size: 128, offset: 640)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !461, file: !44, line: 647, baseType: !564, size: 128, offset: 768)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !461, file: !44, line: 648, baseType: !269, offset: 896)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !461, file: !44, line: 649, baseType: !138, size: 16, offset: 896)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !461, file: !44, line: 650, baseType: !1380, size: 8, offset: 912)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !461, file: !44, line: 651, baseType: !1380, size: 8, offset: 920)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !461, file: !44, line: 652, baseType: !2618, size: 64, offset: 960)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !461, file: !44, line: 659, baseType: !200, size: 64, offset: 1024)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !461, file: !44, line: 660, baseType: !797, size: 256, offset: 1088)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !461, file: !44, line: 662, baseType: !200, size: 64, offset: 1344)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !461, file: !44, line: 663, baseType: !200, size: 64, offset: 1408)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !461, file: !44, line: 665, baseType: !668, size: 128, offset: 1472)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !461, file: !44, line: 666, baseType: !256, size: 128, offset: 1600)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !461, file: !44, line: 675, baseType: !256, size: 128, offset: 1728)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !461, file: !44, line: 676, baseType: !256, size: 128, offset: 1856)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !461, file: !44, line: 677, baseType: !256, size: 128, offset: 1984)
!2876 = !DIDerivedType(tag: DW_TAG_member, scope: !461, file: !44, line: 678, baseType: !2877, size: 128, offset: 2112)
!2877 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !461, file: !44, line: 678, size: 128, elements: !2878)
!2878 = !{!2879, !2880}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2877, file: !44, line: 679, baseType: !664, size: 64)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2877, file: !44, line: 680, baseType: !397, size: 128, align: 64)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !461, file: !44, line: 682, baseType: !803, size: 64, offset: 2240)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !461, file: !44, line: 683, baseType: !803, size: 64, offset: 2304)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !461, file: !44, line: 684, baseType: !777, size: 32, offset: 2368)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !461, file: !44, line: 685, baseType: !777, size: 32, offset: 2400)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !461, file: !44, line: 686, baseType: !777, size: 32, offset: 2432)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !461, file: !44, line: 688, baseType: !777, size: 32, offset: 2464)
!2887 = !DIDerivedType(tag: DW_TAG_member, scope: !461, file: !44, line: 690, baseType: !2888, size: 64, offset: 2496)
!2888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !461, file: !44, line: 690, size: 64, elements: !2889)
!2889 = !{!2890, !3113}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2888, file: !44, line: 691, baseType: !2891, size: 64)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2893)
!2893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2894)
!2894 = !{!2895, !2896, !2900, !2905, !2909, !2910, !2911, !2915, !2928, !2929, !2937, !2941, !2942, !2946, !2947, !2951, !2956, !2957, !2961, !2965, !3073, !3077, !3078, !3082, !3083, !3087, !3091, !3096, !3100, !3104, !3108, !3112}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2893, file: !44, line: 1823, baseType: !182, size: 64)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2893, file: !44, line: 1824, baseType: !2897, size: 64, offset: 64)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{!560, !384, !560, !139}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2893, file: !44, line: 1825, baseType: !2901, size: 64, offset: 128)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = !DISubroutineType(types: !2903)
!2903 = !{!339, !384, !310, !354, !2904}
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2893, file: !44, line: 1826, baseType: !2906, size: 64, offset: 192)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{!339, !384, !180, !354, !2904}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2893, file: !44, line: 1827, baseType: !874, size: 64, offset: 256)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2893, file: !44, line: 1828, baseType: !874, size: 64, offset: 320)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2893, file: !44, line: 1829, baseType: !2912, size: 64, offset: 384)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!139, !877, !219}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2893, file: !44, line: 1830, baseType: !2916, size: 64, offset: 448)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!139, !384, !2919}
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2921)
!2921 = !{!2922, !2927}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2920, file: !44, line: 1777, baseType: !2923, size: 64)
!2923 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2924)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{!139, !2919, !180, !139, !560, !453, !7}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2920, file: !44, line: 1778, baseType: !560, size: 64, offset: 64)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2893, file: !44, line: 1831, baseType: !2916, size: 64, offset: 512)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2893, file: !44, line: 1832, baseType: !2930, size: 64, offset: 576)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!2933, !384, !2935}
!2933 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2934, line: 52, baseType: !7)
!2934 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !648, line: 27, flags: DIFlagFwdDecl)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2893, file: !44, line: 1833, baseType: !2938, size: 64, offset: 640)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{!343, !384, !7, !200}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2893, file: !44, line: 1834, baseType: !2938, size: 64, offset: 704)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2893, file: !44, line: 1835, baseType: !2943, size: 64, offset: 768)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{!139, !384, !1011}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2893, file: !44, line: 1836, baseType: !200, size: 64, offset: 832)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2893, file: !44, line: 1837, baseType: !2948, size: 64, offset: 896)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{!139, !460, !384}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2893, file: !44, line: 1838, baseType: !2952, size: 64, offset: 960)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{!139, !384, !2955}
!2955 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !202)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2893, file: !44, line: 1839, baseType: !2948, size: 64, offset: 1024)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2893, file: !44, line: 1840, baseType: !2958, size: 64, offset: 1088)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!139, !384, !560, !560, !139}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2893, file: !44, line: 1841, baseType: !2962, size: 64, offset: 1152)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!139, !139, !384, !139}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2893, file: !44, line: 1842, baseType: !2966, size: 64, offset: 1216)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!139, !384, !139, !2969}
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2971)
!2971 = !{!2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !3003, !3004, !3005, !3018, !3049}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2970, file: !44, line: 1063, baseType: !2969, size: 64)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2970, file: !44, line: 1064, baseType: !256, size: 128, offset: 64)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2970, file: !44, line: 1065, baseType: !668, size: 128, offset: 192)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2970, file: !44, line: 1066, baseType: !256, size: 128, offset: 320)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2970, file: !44, line: 1069, baseType: !256, size: 128, offset: 448)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2970, file: !44, line: 1072, baseType: !2955, size: 64, offset: 576)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2970, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2970, file: !44, line: 1074, baseType: !142, size: 8, offset: 672)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2970, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2970, file: !44, line: 1076, baseType: !139, size: 32, offset: 736)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2970, file: !44, line: 1077, baseType: !1509, size: 128, offset: 768)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2970, file: !44, line: 1078, baseType: !384, size: 64, offset: 896)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2970, file: !44, line: 1079, baseType: !560, size: 64, offset: 960)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2970, file: !44, line: 1080, baseType: !560, size: 64, offset: 1024)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2970, file: !44, line: 1082, baseType: !2987, size: 64, offset: 1088)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2989)
!2989 = !{!2990, !2998, !2999, !3000, !3001, !3002}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2988, file: !44, line: 1315, baseType: !2991)
!2991 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2992, line: 20, baseType: !2993)
!2992 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2992, line: 11, elements: !2994)
!2994 = !{!2995}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2993, file: !2992, line: 12, baseType: !2996)
!2996 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !281, line: 33, baseType: !2997)
!2997 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !281, line: 31, elements: !283)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2988, file: !44, line: 1316, baseType: !139, size: 32)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2988, file: !44, line: 1317, baseType: !139, size: 32, offset: 32)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2988, file: !44, line: 1318, baseType: !2987, size: 64, offset: 64)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2988, file: !44, line: 1319, baseType: !384, size: 64, offset: 128)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2988, file: !44, line: 1320, baseType: !397, size: 128, align: 64, offset: 192)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2970, file: !44, line: 1084, baseType: !200, size: 64, offset: 1152)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2970, file: !44, line: 1085, baseType: !200, size: 64, offset: 1216)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2970, file: !44, line: 1087, baseType: !3006, size: 64, offset: 1280)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3008)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !3009)
!3009 = !{!3010, !3014}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3008, file: !44, line: 1012, baseType: !3011, size: 64)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{null, !2969, !2969}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3008, file: !44, line: 1013, baseType: !3015, size: 64, offset: 64)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{null, !2969}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2970, file: !44, line: 1088, baseType: !3019, size: 64, offset: 1344)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3021)
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !3022)
!3022 = !{!3023, !3027, !3031, !3032, !3036, !3040, !3044, !3048}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3021, file: !44, line: 1017, baseType: !3024, size: 64)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{!2955, !2955}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3021, file: !44, line: 1018, baseType: !3028, size: 64, offset: 64)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{null, !2955}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3021, file: !44, line: 1019, baseType: !3015, size: 64, offset: 128)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3021, file: !44, line: 1020, baseType: !3033, size: 64, offset: 192)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{!139, !2969, !139}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3021, file: !44, line: 1021, baseType: !3037, size: 64, offset: 256)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DISubroutineType(types: !3039)
!3039 = !{!219, !2969}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3021, file: !44, line: 1022, baseType: !3041, size: 64, offset: 320)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!139, !2969, !139, !259}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3021, file: !44, line: 1023, baseType: !3045, size: 64, offset: 384)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{null, !2969, !851}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3021, file: !44, line: 1024, baseType: !3037, size: 64, offset: 448)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2970, file: !44, line: 1097, baseType: !3050, size: 256, offset: 1408)
!3050 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2970, file: !44, line: 1089, size: 256, elements: !3051)
!3051 = !{!3052, !3061, !3067}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3050, file: !44, line: 1090, baseType: !3053, size: 256)
!3053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3054, line: 10, size: 256, elements: !3055)
!3054 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3055 = !{!3056, !3057, !3060}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3053, file: !3054, line: 11, baseType: !447, size: 32)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3053, file: !3054, line: 12, baseType: !3058, size: 64, offset: 64)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3054, line: 5, flags: DIFlagFwdDecl)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3053, file: !3054, line: 13, baseType: !256, size: 128, offset: 128)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3050, file: !44, line: 1091, baseType: !3062, size: 64)
!3062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3054, line: 17, size: 64, elements: !3063)
!3063 = !{!3064}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3062, file: !3054, line: 18, baseType: !3065, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3054, line: 16, flags: DIFlagFwdDecl)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3050, file: !44, line: 1096, baseType: !3068, size: 192)
!3068 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3050, file: !44, line: 1092, size: 192, elements: !3069)
!3069 = !{!3070, !3071, !3072}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3068, file: !44, line: 1093, baseType: !256, size: 128)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3068, file: !44, line: 1094, baseType: !139, size: 32, offset: 128)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3068, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2893, file: !44, line: 1843, baseType: !3074, size: 64, offset: 1280)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{!339, !384, !750, !139, !354, !2904, !139}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2893, file: !44, line: 1844, baseType: !1131, size: 64, offset: 1344)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2893, file: !44, line: 1845, baseType: !3079, size: 64, offset: 1408)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!139, !139}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2893, file: !44, line: 1846, baseType: !2966, size: 64, offset: 1472)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2893, file: !44, line: 1847, baseType: !3084, size: 64, offset: 1536)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{!339, !2126, !384, !2904, !354, !7}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2893, file: !44, line: 1848, baseType: !3088, size: 64, offset: 1600)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{!339, !384, !2904, !2126, !354, !7}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2893, file: !44, line: 1849, baseType: !3092, size: 64, offset: 1664)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{!139, !384, !343, !3095, !851}
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2893, file: !44, line: 1850, baseType: !3097, size: 64, offset: 1728)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!343, !384, !139, !560, !560}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2893, file: !44, line: 1852, baseType: !3101, size: 64, offset: 1792)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{null, !740, !384}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2893, file: !44, line: 1856, baseType: !3105, size: 64, offset: 1856)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!339, !384, !560, !384, !560, !354, !7}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2893, file: !44, line: 1858, baseType: !3109, size: 64, offset: 1920)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{!560, !384, !560, !384, !560, !560, !7}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2893, file: !44, line: 1861, baseType: !2958, size: 64, offset: 1984)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2888, file: !44, line: 692, baseType: !693, size: 64)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !461, file: !44, line: 694, baseType: !3115, size: 64, offset: 2560)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3117)
!3117 = !{!3118, !3119, !3120, !3121}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3116, file: !44, line: 1101, baseType: !269)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3116, file: !44, line: 1102, baseType: !256, size: 128)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3116, file: !44, line: 1103, baseType: !256, size: 128, offset: 128)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3116, file: !44, line: 1104, baseType: !256, size: 128, offset: 256)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !461, file: !44, line: 695, baseType: !764, size: 1216, align: 64, offset: 2624)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !461, file: !44, line: 696, baseType: !256, size: 128, offset: 3840)
!3124 = !DIDerivedType(tag: DW_TAG_member, scope: !461, file: !44, line: 697, baseType: !3125, size: 64, offset: 3968)
!3125 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !461, file: !44, line: 697, size: 64, elements: !3126)
!3126 = !{!3127, !3128, !3129, !3132, !3133}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3125, file: !44, line: 698, baseType: !2126, size: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3125, file: !44, line: 699, baseType: !2643, size: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3125, file: !44, line: 700, baseType: !3130, size: 64)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3125, file: !44, line: 701, baseType: !310, size: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3125, file: !44, line: 702, baseType: !7, size: 32)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !461, file: !44, line: 705, baseType: !449, size: 32, offset: 4032)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !461, file: !44, line: 708, baseType: !449, size: 32, offset: 4064)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !461, file: !44, line: 709, baseType: !2725, size: 64, offset: 4096)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !461, file: !44, line: 720, baseType: !202, size: 64, offset: 4160)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !415, file: !412, line: 98, baseType: !3139, size: 256, offset: 448)
!3139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 256, elements: !2258)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !415, file: !412, line: 101, baseType: !3141, size: 32, offset: 704)
!3141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3142, line: 25, size: 32, elements: !3143)
!3142 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3143 = !{!3144}
!3144 = !DIDerivedType(tag: DW_TAG_member, scope: !3141, file: !3142, line: 26, baseType: !3145, size: 32)
!3145 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3141, file: !3142, line: 26, size: 32, elements: !3146)
!3146 = !{!3147}
!3147 = !DIDerivedType(tag: DW_TAG_member, scope: !3145, file: !3142, line: 30, baseType: !3148, size: 32)
!3148 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3145, file: !3142, line: 30, size: 32, elements: !3149)
!3149 = !{!3150, !3151}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3148, file: !3142, line: 31, baseType: !269)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3148, file: !3142, line: 32, baseType: !139, size: 32)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !415, file: !412, line: 102, baseType: !2742, size: 64, offset: 768)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !415, file: !412, line: 103, baseType: !628, size: 64, offset: 832)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !415, file: !412, line: 104, baseType: !200, size: 64, offset: 896)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !415, file: !412, line: 105, baseType: !202, size: 64, offset: 960)
!3156 = !DIDerivedType(tag: DW_TAG_member, scope: !415, file: !412, line: 107, baseType: !3157, size: 128, offset: 1024)
!3157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !415, file: !412, line: 107, size: 128, elements: !3158)
!3158 = !{!3159, !3160}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3157, file: !412, line: 108, baseType: !256, size: 128)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3157, file: !412, line: 109, baseType: !3161, size: 64)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !415, file: !412, line: 111, baseType: !256, size: 128, offset: 1152)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !415, file: !412, line: 112, baseType: !256, size: 128, offset: 1280)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !415, file: !412, line: 120, baseType: !3165, size: 128, offset: 1408)
!3165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !415, file: !412, line: 116, size: 128, elements: !3166)
!3166 = !{!3167, !3168, !3169}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3165, file: !412, line: 117, baseType: !668, size: 128)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3165, file: !412, line: 118, baseType: !429, size: 128)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3165, file: !412, line: 119, baseType: !397, size: 128, align: 64)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !385, file: !44, line: 922, baseType: !460, size: 64, offset: 256)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !385, file: !44, line: 923, baseType: !2891, size: 64, offset: 320)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !385, file: !44, line: 929, baseType: !269, offset: 384)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !385, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !385, file: !44, line: 931, baseType: !801, size: 64, offset: 448)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !385, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !385, file: !44, line: 933, baseType: !2738, size: 32, offset: 544)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !385, file: !44, line: 934, baseType: !1201, size: 192, offset: 576)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !385, file: !44, line: 935, baseType: !560, size: 64, offset: 768)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !385, file: !44, line: 936, baseType: !3180, size: 192, offset: 832)
!3180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3181)
!3181 = !{!3182, !3183, !3184, !3185, !3186, !3187}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3180, file: !44, line: 886, baseType: !2991)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3180, file: !44, line: 887, baseType: !1499, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3180, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3180, file: !44, line: 889, baseType: !466, size: 32, offset: 96)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3180, file: !44, line: 889, baseType: !466, size: 32, offset: 128)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3180, file: !44, line: 890, baseType: !139, size: 32, offset: 160)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !385, file: !44, line: 937, baseType: !1575, size: 64, offset: 1024)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !385, file: !44, line: 938, baseType: !3190, size: 256, offset: 1088)
!3190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3191)
!3191 = !{!3192, !3193, !3194, !3195, !3196, !3197}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3190, file: !44, line: 897, baseType: !200, size: 64)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3190, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3190, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3190, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3190, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3190, file: !44, line: 904, baseType: !560, size: 64, offset: 192)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !385, file: !44, line: 940, baseType: !453, size: 64, offset: 1344)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !385, file: !44, line: 945, baseType: !202, size: 64, offset: 1408)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !385, file: !44, line: 949, baseType: !256, size: 128, offset: 1472)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !385, file: !44, line: 950, baseType: !256, size: 128, offset: 1600)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !385, file: !44, line: 952, baseType: !763, size: 64, offset: 1728)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !385, file: !44, line: 953, baseType: !939, size: 32, offset: 1792)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !385, file: !44, line: 954, baseType: !939, size: 32, offset: 1824)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !375, file: !333, line: 174, baseType: !381, size: 64, offset: 320)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !375, file: !333, line: 176, baseType: !3207, size: 64, offset: 384)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = !DISubroutineType(types: !3209)
!3209 = !{!139, !384, !262, !374, !1011}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !363, file: !333, line: 90, baseType: !358, size: 64, offset: 192)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !363, file: !333, line: 91, baseType: !3212, size: 64, offset: 256)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !323, file: !252, line: 143, baseType: !3214, size: 64, offset: 256)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!3217, !262}
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3219)
!3219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3220)
!3220 = !{!3221, !3222, !3226, !3230, !3236, !3240}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3219, file: !61, line: 40, baseType: !60, size: 32)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3219, file: !61, line: 41, baseType: !3223, size: 64, offset: 64)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DISubroutineType(types: !3225)
!3225 = !{!219}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3219, file: !61, line: 42, baseType: !3227, size: 64, offset: 128)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{!202}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3219, file: !61, line: 43, baseType: !3231, size: 64, offset: 192)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = !DISubroutineType(types: !3233)
!3233 = !{!2155, !3234}
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3219, file: !61, line: 44, baseType: !3237, size: 64, offset: 256)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!2155}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3219, file: !61, line: 45, baseType: !499, size: 64, offset: 320)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !323, file: !252, line: 144, baseType: !3242, size: 64, offset: 320)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{!2155, !262}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !323, file: !252, line: 145, baseType: !3246, size: 64, offset: 384)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{null, !262, !3249, !3250}
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !251, file: !252, line: 70, baseType: !3252, size: 64, offset: 384)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !648, line: 123, size: 1024, elements: !3254)
!3254 = !{!3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3383, !3384, !3385, !3386, !3387}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3253, file: !648, line: 124, baseType: !777, size: 32)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3253, file: !648, line: 125, baseType: !777, size: 32, offset: 32)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3253, file: !648, line: 135, baseType: !3252, size: 64, offset: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3253, file: !648, line: 136, baseType: !180, size: 64, offset: 128)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3253, file: !648, line: 138, baseType: !790, size: 192, align: 64, offset: 192)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3253, file: !648, line: 140, baseType: !2155, size: 64, offset: 384)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3253, file: !648, line: 141, baseType: !7, size: 32, offset: 448)
!3262 = !DIDerivedType(tag: DW_TAG_member, scope: !3253, file: !648, line: 142, baseType: !3263, size: 256, offset: 512)
!3263 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3253, file: !648, line: 142, size: 256, elements: !3264)
!3264 = !{!3265, !3311, !3315}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3263, file: !648, line: 143, baseType: !3266, size: 192)
!3266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !648, line: 91, size: 192, elements: !3267)
!3267 = !{!3268, !3269, !3270}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3266, file: !648, line: 92, baseType: !200, size: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3266, file: !648, line: 94, baseType: !786, size: 64, offset: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3266, file: !648, line: 100, baseType: !3271, size: 64, offset: 128)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !648, line: 180, size: 704, elements: !3273)
!3273 = !{!3274, !3275, !3276, !3283, !3284, !3285, !3309, !3310}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3272, file: !648, line: 182, baseType: !3252, size: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3272, file: !648, line: 183, baseType: !7, size: 32, offset: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3272, file: !648, line: 186, baseType: !3277, size: 192, offset: 128)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3278, line: 19, size: 192, elements: !3279)
!3278 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3279 = !{!3280, !3281, !3282}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3277, file: !3278, line: 20, baseType: !768, size: 128)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3277, file: !3278, line: 21, baseType: !7, size: 32, offset: 128)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3277, file: !3278, line: 22, baseType: !7, size: 32, offset: 160)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3272, file: !648, line: 187, baseType: !447, size: 32, offset: 320)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3272, file: !648, line: 188, baseType: !447, size: 32, offset: 352)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3272, file: !648, line: 189, baseType: !3286, size: 64, offset: 384)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !648, line: 168, size: 320, elements: !3288)
!3288 = !{!3289, !3293, !3297, !3301, !3305}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3287, file: !648, line: 169, baseType: !3290, size: 64)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!139, !740, !3271}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3287, file: !648, line: 171, baseType: !3294, size: 64, offset: 64)
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = !DISubroutineType(types: !3296)
!3296 = !{!139, !3252, !180, !349}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3287, file: !648, line: 173, baseType: !3298, size: 64, offset: 128)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DISubroutineType(types: !3300)
!3300 = !{!139, !3252}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3287, file: !648, line: 174, baseType: !3302, size: 64, offset: 192)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!139, !3252, !3252, !180}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3287, file: !648, line: 176, baseType: !3306, size: 64, offset: 256)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!139, !740, !3252, !3271}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3272, file: !648, line: 192, baseType: !256, size: 128, offset: 448)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3272, file: !648, line: 194, baseType: !1509, size: 128, offset: 576)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3263, file: !648, line: 144, baseType: !3312, size: 64)
!3312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !648, line: 103, size: 64, elements: !3313)
!3313 = !{!3314}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3312, file: !648, line: 104, baseType: !3252, size: 64)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3263, file: !648, line: 145, baseType: !3316, size: 256)
!3316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !648, line: 107, size: 256, elements: !3317)
!3317 = !{!3318, !3378, !3381, !3382}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3316, file: !648, line: 108, baseType: !3319, size: 64)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3321)
!3321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !648, line: 217, size: 768, elements: !3322)
!3322 = !{!3323, !3343, !3347, !3351, !3355, !3359, !3363, !3367, !3368, !3369, !3370, !3374}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3321, file: !648, line: 222, baseType: !3324, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!139, !3327}
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !648, line: 197, size: 1088, elements: !3329)
!3329 = !{!3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3328, file: !648, line: 199, baseType: !3252, size: 64)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3328, file: !648, line: 200, baseType: !384, size: 64, offset: 64)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3328, file: !648, line: 201, baseType: !740, size: 64, offset: 128)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3328, file: !648, line: 202, baseType: !202, size: 64, offset: 192)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3328, file: !648, line: 205, baseType: !1201, size: 192, offset: 256)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3328, file: !648, line: 206, baseType: !1201, size: 192, offset: 448)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3328, file: !648, line: 207, baseType: !139, size: 32, offset: 640)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3328, file: !648, line: 208, baseType: !256, size: 128, offset: 704)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3328, file: !648, line: 209, baseType: !310, size: 64, offset: 832)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3328, file: !648, line: 211, baseType: !354, size: 64, offset: 896)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3328, file: !648, line: 212, baseType: !219, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3328, file: !648, line: 213, baseType: !219, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3328, file: !648, line: 214, baseType: !1039, size: 64, offset: 1024)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3321, file: !648, line: 223, baseType: !3344, size: 64, offset: 64)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = !DISubroutineType(types: !3346)
!3346 = !{null, !3327}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3321, file: !648, line: 236, baseType: !3348, size: 64, offset: 128)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DISubroutineType(types: !3350)
!3350 = !{!139, !740, !202}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3321, file: !648, line: 238, baseType: !3352, size: 64, offset: 192)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{!202, !740, !2904}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3321, file: !648, line: 239, baseType: !3356, size: 64, offset: 256)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = !DISubroutineType(types: !3358)
!3358 = !{!202, !740, !202, !2904}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3321, file: !648, line: 240, baseType: !3360, size: 64, offset: 320)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{null, !740, !202}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3321, file: !648, line: 242, baseType: !3364, size: 64, offset: 384)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{!339, !3327, !310, !354, !560}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3321, file: !648, line: 252, baseType: !354, size: 64, offset: 448)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3321, file: !648, line: 259, baseType: !219, size: 8, offset: 512)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3321, file: !648, line: 260, baseType: !3364, size: 64, offset: 576)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3321, file: !648, line: 263, baseType: !3371, size: 64, offset: 640)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{!2933, !3327, !2935}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3321, file: !648, line: 266, baseType: !3375, size: 64, offset: 704)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{!139, !3327, !1011}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3316, file: !648, line: 109, baseType: !3379, size: 64, offset: 64)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !648, line: 31, flags: DIFlagFwdDecl)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3316, file: !648, line: 110, baseType: !560, size: 64, offset: 128)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3316, file: !648, line: 111, baseType: !3252, size: 64, offset: 192)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3253, file: !648, line: 148, baseType: !202, size: 64, offset: 768)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3253, file: !648, line: 154, baseType: !453, size: 64, offset: 832)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3253, file: !648, line: 156, baseType: !138, size: 16, offset: 896)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3253, file: !648, line: 157, baseType: !349, size: 16, offset: 912)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3253, file: !648, line: 158, baseType: !3388, size: 64, offset: 960)
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3389 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !648, line: 32, flags: DIFlagFwdDecl)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !251, file: !252, line: 71, baseType: !3391, size: 32, offset: 448)
!3391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3392, line: 19, size: 32, elements: !3393)
!3392 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3393 = !{!3394}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3391, file: !3392, line: 20, baseType: !1258, size: 32)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !251, file: !252, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !251, file: !252, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !251, file: !252, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !251, file: !252, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !251, file: !252, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !248, file: !73, line: 463, baseType: !247, size: 64, offset: 512)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !248, file: !73, line: 465, baseType: !3402, size: 64, offset: 576)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !248, file: !73, line: 467, baseType: !180, size: 64, offset: 640)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !248, file: !73, line: 468, baseType: !3406, size: 64, offset: 704)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3408)
!3408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3409)
!3409 = !{!3410, !3411, !3412, !3416, !3421, !3425}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3408, file: !73, line: 88, baseType: !180, size: 64)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3408, file: !73, line: 89, baseType: !360, size: 64, offset: 64)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3408, file: !73, line: 90, baseType: !3413, size: 64, offset: 128)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DISubroutineType(types: !3415)
!3415 = !{!139, !247, !305}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3408, file: !73, line: 91, baseType: !3417, size: 64, offset: 192)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DISubroutineType(types: !3419)
!3419 = !{!310, !247, !3420, !3249, !3250}
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3408, file: !73, line: 93, baseType: !3422, size: 64, offset: 256)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DISubroutineType(types: !3424)
!3424 = !{null, !247}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3408, file: !73, line: 95, baseType: !3426, size: 64, offset: 320)
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3428)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3429)
!3429 = !{!3430, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3428, file: !80, line: 279, baseType: !3431, size: 64)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = !DISubroutineType(types: !3433)
!3433 = !{!139, !247}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3428, file: !80, line: 280, baseType: !3422, size: 64, offset: 64)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3428, file: !80, line: 281, baseType: !3431, size: 64, offset: 128)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3428, file: !80, line: 282, baseType: !3431, size: 64, offset: 192)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3428, file: !80, line: 283, baseType: !3431, size: 64, offset: 256)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3428, file: !80, line: 284, baseType: !3431, size: 64, offset: 320)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3428, file: !80, line: 285, baseType: !3431, size: 64, offset: 384)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3428, file: !80, line: 286, baseType: !3431, size: 64, offset: 448)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3428, file: !80, line: 287, baseType: !3431, size: 64, offset: 512)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3428, file: !80, line: 288, baseType: !3431, size: 64, offset: 576)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3428, file: !80, line: 289, baseType: !3431, size: 64, offset: 640)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3428, file: !80, line: 290, baseType: !3431, size: 64, offset: 704)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3428, file: !80, line: 291, baseType: !3431, size: 64, offset: 768)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3428, file: !80, line: 292, baseType: !3431, size: 64, offset: 832)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3428, file: !80, line: 293, baseType: !3431, size: 64, offset: 896)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3428, file: !80, line: 294, baseType: !3431, size: 64, offset: 960)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3428, file: !80, line: 295, baseType: !3431, size: 64, offset: 1024)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3428, file: !80, line: 296, baseType: !3431, size: 64, offset: 1088)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3428, file: !80, line: 297, baseType: !3431, size: 64, offset: 1152)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3428, file: !80, line: 298, baseType: !3431, size: 64, offset: 1216)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3428, file: !80, line: 299, baseType: !3431, size: 64, offset: 1280)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3428, file: !80, line: 300, baseType: !3431, size: 64, offset: 1344)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3428, file: !80, line: 301, baseType: !3431, size: 64, offset: 1408)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !248, file: !73, line: 470, baseType: !3457, size: 64, offset: 768)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3459, line: 82, size: 1408, elements: !3460)
!3459 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3460 = !{!3461, !3462, !3463, !3464, !3465, !3466, !3467, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3542, !3545, !3546}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3458, file: !3459, line: 83, baseType: !180, size: 64)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3458, file: !3459, line: 84, baseType: !180, size: 64, offset: 64)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3458, file: !3459, line: 85, baseType: !247, size: 64, offset: 128)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3458, file: !3459, line: 86, baseType: !360, size: 64, offset: 192)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3458, file: !3459, line: 87, baseType: !360, size: 64, offset: 256)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3458, file: !3459, line: 88, baseType: !360, size: 64, offset: 320)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3458, file: !3459, line: 90, baseType: !3468, size: 64, offset: 384)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{!139, !247, !3471}
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3473)
!3473 = !{!3474, !3475, !3476, !3477, !3478, !3479, !3480, !3493, !3506, !3507, !3508, !3509, !3510, !3518, !3519, !3520, !3521, !3522, !3523}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3472, file: !67, line: 96, baseType: !180, size: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3472, file: !67, line: 97, baseType: !3457, size: 64, offset: 64)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3472, file: !67, line: 99, baseType: !182, size: 64, offset: 128)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3472, file: !67, line: 100, baseType: !180, size: 64, offset: 192)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3472, file: !67, line: 102, baseType: !219, size: 8, offset: 256)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3472, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3472, file: !67, line: 105, baseType: !3481, size: 64, offset: 320)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3483)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3484, line: 262, size: 1600, elements: !3485)
!3484 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3485 = !{!3486, !3487, !3488, !3492}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3483, file: !3484, line: 263, baseType: !2728, size: 256)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3483, file: !3484, line: 264, baseType: !2728, size: 256, offset: 256)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3483, file: !3484, line: 265, baseType: !3489, size: 1024, offset: 512)
!3489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 1024, elements: !3490)
!3490 = !{!3491}
!3491 = !DISubrange(count: 128)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3483, file: !3484, line: 266, baseType: !2155, size: 64, offset: 1536)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3472, file: !67, line: 106, baseType: !3494, size: 64, offset: 384)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3496)
!3496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3484, line: 210, size: 256, elements: !3497)
!3497 = !{!3498, !3502, !3504, !3505}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3496, file: !3484, line: 211, baseType: !3499, size: 72)
!3499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1381, size: 72, elements: !3500)
!3500 = !{!3501}
!3501 = !DISubrange(count: 9)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3496, file: !3484, line: 212, baseType: !3503, size: 64, offset: 128)
!3503 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3484, line: 14, baseType: !200)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3496, file: !3484, line: 213, baseType: !449, size: 32, offset: 192)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3496, file: !3484, line: 214, baseType: !449, size: 32, offset: 224)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3472, file: !67, line: 108, baseType: !3431, size: 64, offset: 448)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3472, file: !67, line: 109, baseType: !3422, size: 64, offset: 512)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3472, file: !67, line: 110, baseType: !3431, size: 64, offset: 576)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3472, file: !67, line: 111, baseType: !3422, size: 64, offset: 640)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3472, file: !67, line: 112, baseType: !3511, size: 64, offset: 704)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DISubroutineType(types: !3513)
!3513 = !{!139, !247, !3514}
!3514 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3515)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3516)
!3516 = !{!3517}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3515, file: !80, line: 51, baseType: !139, size: 32)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3472, file: !67, line: 113, baseType: !3431, size: 64, offset: 768)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3472, file: !67, line: 114, baseType: !360, size: 64, offset: 832)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3472, file: !67, line: 115, baseType: !360, size: 64, offset: 896)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3472, file: !67, line: 117, baseType: !3426, size: 64, offset: 960)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3472, file: !67, line: 118, baseType: !3422, size: 64, offset: 1024)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3472, file: !67, line: 120, baseType: !3524, size: 64, offset: 1088)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3458, file: !3459, line: 91, baseType: !3413, size: 64, offset: 448)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3458, file: !3459, line: 92, baseType: !3431, size: 64, offset: 512)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3458, file: !3459, line: 93, baseType: !3422, size: 64, offset: 576)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3458, file: !3459, line: 94, baseType: !3431, size: 64, offset: 640)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3458, file: !3459, line: 95, baseType: !3422, size: 64, offset: 704)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3458, file: !3459, line: 97, baseType: !3431, size: 64, offset: 768)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3458, file: !3459, line: 98, baseType: !3431, size: 64, offset: 832)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3458, file: !3459, line: 100, baseType: !3511, size: 64, offset: 896)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3458, file: !3459, line: 101, baseType: !3431, size: 64, offset: 960)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3458, file: !3459, line: 103, baseType: !3431, size: 64, offset: 1024)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3458, file: !3459, line: 105, baseType: !3431, size: 64, offset: 1088)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3458, file: !3459, line: 107, baseType: !3426, size: 64, offset: 1152)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3458, file: !3459, line: 109, baseType: !3539, size: 64, offset: 1216)
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3541)
!3541 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3459, line: 109, flags: DIFlagFwdDecl)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3458, file: !3459, line: 111, baseType: !3543, size: 64, offset: 1280)
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3459, line: 111, flags: DIFlagFwdDecl)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3458, file: !3459, line: 112, baseType: !674, offset: 1344)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3458, file: !3459, line: 114, baseType: !219, size: 8, offset: 1344)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !248, file: !73, line: 471, baseType: !3471, size: 64, offset: 832)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !248, file: !73, line: 473, baseType: !202, size: 64, offset: 896)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !248, file: !73, line: 475, baseType: !202, size: 64, offset: 960)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !248, file: !73, line: 480, baseType: !1201, size: 192, offset: 1024)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !248, file: !73, line: 484, baseType: !3552, size: 576, offset: 1216)
!3552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3553)
!3553 = !{!3554, !3555, !3556, !3557, !3558, !3559}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3552, file: !73, line: 362, baseType: !256, size: 128)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3552, file: !73, line: 363, baseType: !256, size: 128, offset: 128)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3552, file: !73, line: 364, baseType: !256, size: 128, offset: 256)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3552, file: !73, line: 365, baseType: !256, size: 128, offset: 384)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3552, file: !73, line: 366, baseType: !219, size: 8, offset: 512)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3552, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !248, file: !73, line: 485, baseType: !3561, size: 2304, offset: 1792)
!3561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3562)
!3562 = !{!3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3658, !3662}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3561, file: !80, line: 566, baseType: !3514, size: 32)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3561, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3561, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3561, file: !80, line: 569, baseType: !219, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3561, file: !80, line: 570, baseType: !219, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3561, file: !80, line: 571, baseType: !219, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3561, file: !80, line: 572, baseType: !219, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3561, file: !80, line: 573, baseType: !219, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3561, file: !80, line: 574, baseType: !219, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3561, file: !80, line: 575, baseType: !219, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3561, file: !80, line: 576, baseType: !219, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3561, file: !80, line: 577, baseType: !447, size: 32, offset: 64)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3561, file: !80, line: 578, baseType: !269, offset: 96)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3561, file: !80, line: 580, baseType: !256, size: 128, offset: 128)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3561, file: !80, line: 581, baseType: !1530, size: 192, offset: 256)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3561, file: !80, line: 582, baseType: !3579, size: 64, offset: 448)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3581, line: 43, size: 1472, elements: !3582)
!3581 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3582 = !{!3583, !3584, !3585, !3586, !3587, !3590, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3580, file: !3581, line: 44, baseType: !180, size: 64)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3580, file: !3581, line: 45, baseType: !139, size: 32, offset: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3580, file: !3581, line: 46, baseType: !256, size: 128, offset: 128)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3580, file: !3581, line: 47, baseType: !269, offset: 256)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3580, file: !3581, line: 48, baseType: !3588, size: 64, offset: 256)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3580, file: !3581, line: 49, baseType: !3591, size: 320, offset: 320)
!3591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3592, line: 11, size: 320, elements: !3593)
!3592 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3593 = !{!3594, !3595, !3596, !3601}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3591, file: !3592, line: 16, baseType: !668, size: 128)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3591, file: !3592, line: 17, baseType: !200, size: 64, offset: 128)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3591, file: !3592, line: 18, baseType: !3597, size: 64, offset: 192)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DISubroutineType(types: !3599)
!3599 = !{null, !3600}
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3591, file: !3592, line: 19, baseType: !447, size: 32, offset: 256)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3580, file: !3581, line: 50, baseType: !200, size: 64, offset: 640)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3580, file: !3581, line: 51, baseType: !1328, size: 64, offset: 704)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3580, file: !3581, line: 52, baseType: !1328, size: 64, offset: 768)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3580, file: !3581, line: 53, baseType: !1328, size: 64, offset: 832)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3580, file: !3581, line: 54, baseType: !1328, size: 64, offset: 896)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3580, file: !3581, line: 55, baseType: !1328, size: 64, offset: 960)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3580, file: !3581, line: 56, baseType: !200, size: 64, offset: 1024)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3580, file: !3581, line: 57, baseType: !200, size: 64, offset: 1088)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3580, file: !3581, line: 58, baseType: !200, size: 64, offset: 1152)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3580, file: !3581, line: 59, baseType: !200, size: 64, offset: 1216)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3580, file: !3581, line: 60, baseType: !200, size: 64, offset: 1280)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3580, file: !3581, line: 61, baseType: !247, size: 64, offset: 1344)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3580, file: !3581, line: 62, baseType: !219, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3580, file: !3581, line: 63, baseType: !219, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3561, file: !80, line: 583, baseType: !219, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3561, file: !80, line: 584, baseType: !219, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3561, file: !80, line: 585, baseType: !219, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3561, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3561, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3561, file: !80, line: 592, baseType: !1320, size: 512, offset: 576)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3561, file: !80, line: 593, baseType: !453, size: 64, offset: 1088)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3561, file: !80, line: 594, baseType: !1985, size: 256, offset: 1152)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3561, file: !80, line: 595, baseType: !1509, size: 128, offset: 1408)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3561, file: !80, line: 596, baseType: !3588, size: 64, offset: 1536)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3561, file: !80, line: 597, baseType: !777, size: 32, offset: 1600)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3561, file: !80, line: 598, baseType: !777, size: 32, offset: 1632)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3561, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3561, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3561, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3561, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3561, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3561, file: !80, line: 604, baseType: !219, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3561, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3561, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3561, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3561, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3561, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3561, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3561, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3561, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3561, file: !80, line: 613, baseType: !139, size: 32, offset: 1792)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3561, file: !80, line: 614, baseType: !139, size: 32, offset: 1824)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3561, file: !80, line: 615, baseType: !453, size: 64, offset: 1856)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3561, file: !80, line: 616, baseType: !453, size: 64, offset: 1920)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3561, file: !80, line: 617, baseType: !453, size: 64, offset: 1984)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3561, file: !80, line: 618, baseType: !453, size: 64, offset: 2048)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3561, file: !80, line: 620, baseType: !3649, size: 64, offset: 2112)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3651)
!3651 = !{!3652, !3653, !3654, !3655}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3650, file: !80, line: 537, baseType: !269)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3650, file: !80, line: 538, baseType: !7, size: 32)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3650, file: !80, line: 540, baseType: !256, size: 128, offset: 64)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3650, file: !80, line: 543, baseType: !3656, size: 64, offset: 192)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3561, file: !80, line: 621, baseType: !3659, size: 64, offset: 2176)
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = !DISubroutineType(types: !3661)
!3661 = !{null, !247, !1472}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3561, file: !80, line: 622, baseType: !3663, size: 64, offset: 2240)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !248, file: !73, line: 486, baseType: !3666, size: 64, offset: 4096)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3668)
!3668 = !{!3669, !3670, !3671, !3675, !3676, !3677}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3667, file: !80, line: 643, baseType: !3428, size: 1472)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3667, file: !80, line: 644, baseType: !3431, size: 64, offset: 1472)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3667, file: !80, line: 645, baseType: !3672, size: 64, offset: 1536)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{null, !247, !219}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3667, file: !80, line: 646, baseType: !3431, size: 64, offset: 1600)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3667, file: !80, line: 647, baseType: !3422, size: 64, offset: 1664)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3667, file: !80, line: 648, baseType: !3422, size: 64, offset: 1728)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !248, file: !73, line: 493, baseType: !3679, size: 64, offset: 4160)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !73, line: 493, flags: DIFlagFwdDecl)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !248, file: !73, line: 499, baseType: !256, size: 128, offset: 4224)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !248, file: !73, line: 502, baseType: !3683, size: 64, offset: 4352)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3685)
!3685 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !248, file: !73, line: 504, baseType: !3687, size: 64, offset: 4416)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !248, file: !73, line: 505, baseType: !453, size: 64, offset: 4480)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !248, file: !73, line: 510, baseType: !453, size: 64, offset: 4544)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !248, file: !73, line: 511, baseType: !3691, size: 64, offset: 4608)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3693)
!3693 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !248, file: !73, line: 513, baseType: !3695, size: 64, offset: 4672)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3697)
!3697 = !{!3698, !3699}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3696, file: !73, line: 293, baseType: !7, size: 32)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3696, file: !73, line: 294, baseType: !200, size: 64, offset: 64)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !248, file: !73, line: 515, baseType: !256, size: 128, offset: 4736)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !248, file: !73, line: 526, baseType: !3702, offset: 4864)
!3702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3703, line: 5, elements: !283)
!3703 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !248, file: !73, line: 528, baseType: !3705, size: 64, offset: 4864)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3707, line: 14, flags: DIFlagFwdDecl)
!3707 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !248, file: !73, line: 529, baseType: !3709, size: 64, offset: 4928)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3711, line: 17, size: 192, elements: !3712)
!3711 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3712 = !{!3713, !3714, !3797}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3710, file: !3711, line: 18, baseType: !3709, size: 64)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3710, file: !3711, line: 19, baseType: !3715, size: 64, offset: 64)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3717)
!3717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3711, line: 110, size: 1152, elements: !3718)
!3718 = !{!3719, !3723, !3727, !3733, !3739, !3743, !3747, !3752, !3756, !3757, !3761, !3765, !3769, !3780, !3781, !3782, !3783, !3793}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3717, file: !3711, line: 111, baseType: !3720, size: 64)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!3709, !3709}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3717, file: !3711, line: 112, baseType: !3724, size: 64, offset: 64)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = !DISubroutineType(types: !3726)
!3726 = !{null, !3709}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3717, file: !3711, line: 113, baseType: !3728, size: 64, offset: 128)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!219, !3731}
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3710)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3717, file: !3711, line: 114, baseType: !3734, size: 64, offset: 192)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{!2155, !3731, !3737}
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !248)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3717, file: !3711, line: 116, baseType: !3740, size: 64, offset: 256)
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3741, size: 64)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{!219, !3731, !180}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3717, file: !3711, line: 118, baseType: !3744, size: 64, offset: 320)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!139, !3731, !180, !7, !202, !354}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3717, file: !3711, line: 123, baseType: !3748, size: 64, offset: 384)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{!139, !3731, !180, !3751, !354}
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3717, file: !3711, line: 126, baseType: !3753, size: 64, offset: 448)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{!180, !3731}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3717, file: !3711, line: 127, baseType: !3753, size: 64, offset: 512)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3717, file: !3711, line: 128, baseType: !3758, size: 64, offset: 576)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = !DISubroutineType(types: !3760)
!3760 = !{!3709, !3731}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3717, file: !3711, line: 130, baseType: !3762, size: 64, offset: 640)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DISubroutineType(types: !3764)
!3764 = !{!3709, !3731, !3709}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3717, file: !3711, line: 133, baseType: !3766, size: 64, offset: 704)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{!3709, !3731, !180}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3717, file: !3711, line: 135, baseType: !3770, size: 64, offset: 768)
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = !DISubroutineType(types: !3772)
!3772 = !{!139, !3731, !180, !180, !7, !7, !3773}
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3711, line: 43, size: 640, elements: !3775)
!3775 = !{!3776, !3777, !3778}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3774, file: !3711, line: 44, baseType: !3709, size: 64)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3774, file: !3711, line: 45, baseType: !7, size: 32, offset: 64)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3774, file: !3711, line: 46, baseType: !3779, size: 512, offset: 128)
!3779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !453, size: 512, elements: !1358)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3717, file: !3711, line: 140, baseType: !3762, size: 64, offset: 832)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3717, file: !3711, line: 143, baseType: !3758, size: 64, offset: 896)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3717, file: !3711, line: 145, baseType: !3720, size: 64, offset: 960)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3717, file: !3711, line: 146, baseType: !3784, size: 64, offset: 1024)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{!139, !3731, !3787}
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3711, line: 29, size: 128, elements: !3789)
!3789 = !{!3790, !3791, !3792}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3788, file: !3711, line: 30, baseType: !7, size: 32)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3788, file: !3711, line: 31, baseType: !7, size: 32, offset: 32)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3788, file: !3711, line: 32, baseType: !3731, size: 64, offset: 64)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3717, file: !3711, line: 148, baseType: !3794, size: 64, offset: 1088)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!139, !3731, !247}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3710, file: !3711, line: 20, baseType: !247, size: 64, offset: 128)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !248, file: !73, line: 534, baseType: !542, size: 32, offset: 4992)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !248, file: !73, line: 535, baseType: !447, size: 32, offset: 5024)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !248, file: !73, line: 537, baseType: !269, offset: 5056)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !248, file: !73, line: 538, baseType: !256, size: 128, offset: 5056)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !248, file: !73, line: 540, baseType: !3803, size: 64, offset: 5184)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3805, line: 54, size: 960, elements: !3806)
!3805 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3806 = !{!3807, !3808, !3809, !3810, !3811, !3812, !3813, !3817, !3821, !3822, !3823, !3824, !3828, !3832, !3833}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3804, file: !3805, line: 55, baseType: !180, size: 64)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3804, file: !3805, line: 56, baseType: !182, size: 64, offset: 64)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3804, file: !3805, line: 58, baseType: !360, size: 64, offset: 128)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3804, file: !3805, line: 59, baseType: !360, size: 64, offset: 192)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3804, file: !3805, line: 60, baseType: !262, size: 64, offset: 256)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3804, file: !3805, line: 62, baseType: !3413, size: 64, offset: 320)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3804, file: !3805, line: 63, baseType: !3814, size: 64, offset: 384)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!310, !247, !3420}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3804, file: !3805, line: 65, baseType: !3818, size: 64, offset: 448)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DISubroutineType(types: !3820)
!3820 = !{null, !3803}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3804, file: !3805, line: 66, baseType: !3422, size: 64, offset: 512)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3804, file: !3805, line: 68, baseType: !3431, size: 64, offset: 576)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3804, file: !3805, line: 70, baseType: !3217, size: 64, offset: 640)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3804, file: !3805, line: 71, baseType: !3825, size: 64, offset: 704)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = !DISubroutineType(types: !3827)
!3827 = !{!2155, !247}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3804, file: !3805, line: 73, baseType: !3829, size: 64, offset: 768)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{null, !247, !3249, !3250}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3804, file: !3805, line: 75, baseType: !3426, size: 64, offset: 832)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3804, file: !3805, line: 77, baseType: !3543, size: 64, offset: 896)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !248, file: !73, line: 541, baseType: !360, size: 64, offset: 5248)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !248, file: !73, line: 543, baseType: !3422, size: 64, offset: 5312)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !248, file: !73, line: 544, baseType: !3837, size: 64, offset: 5376)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !248, file: !73, line: 545, baseType: !3840, size: 64, offset: 5440)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !248, file: !73, line: 547, baseType: !219, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !248, file: !73, line: 548, baseType: !219, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !248, file: !73, line: 549, baseType: !219, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !248, file: !73, line: 550, baseType: !219, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "page_list", scope: !244, file: !123, line: 251, baseType: !3847, size: 64, offset: 64)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_page", file: !123, line: 220, size: 128, elements: !3849)
!3849 = !{!3850, !3851}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "virt_addr", scope: !3848, file: !123, line: 221, baseType: !202, size: 64)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3848, file: !123, line: 222, baseType: !950, size: 64, offset: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "n_pages", scope: !244, file: !123, line: 252, baseType: !7, size: 32, offset: 128)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "dma_dir", scope: !244, file: !123, line: 253, baseType: !93, size: 32, offset: 160)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !244, file: !123, line: 254, baseType: !3391, size: 32, offset: 192)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "max_bufsize", scope: !238, file: !123, line: 351, baseType: !7, size: 32, offset: 192)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_count", scope: !238, file: !123, line: 352, baseType: !7, size: 32, offset: 224)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_alloc_count", scope: !238, file: !123, line: 353, baseType: !7, size: 32, offset: 256)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_count", scope: !238, file: !123, line: 354, baseType: !7, size: 32, offset: 288)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_alloc_count", scope: !238, file: !123, line: 355, baseType: !7, size: 32, offset: 320)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_ptr", scope: !238, file: !123, line: 356, baseType: !7, size: 32, offset: 352)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_ptr", scope: !238, file: !123, line: 357, baseType: !7, size: 32, offset: 384)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "cur_chan", scope: !238, file: !123, line: 358, baseType: !7, size: 32, offset: 416)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "scans_done", scope: !238, file: !123, line: 359, baseType: !7, size: 32, offset: 448)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "scan_progress", scope: !238, file: !123, line: 360, baseType: !7, size: 32, offset: 480)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "munge_chan", scope: !238, file: !123, line: 361, baseType: !7, size: 32, offset: 512)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "munge_count", scope: !238, file: !123, line: 362, baseType: !7, size: 32, offset: 544)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "munge_ptr", scope: !238, file: !123, line: 363, baseType: !7, size: 32, offset: 576)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !238, file: !123, line: 364, baseType: !7, size: 32, offset: 608)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !238, file: !123, line: 365, baseType: !3870, size: 640, offset: 640)
!3870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_cmd", file: !101, line: 589, size: 640, elements: !3871)
!3871 = !{!3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3888}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "subdev", scope: !3870, file: !101, line: 590, baseType: !7, size: 32)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3870, file: !101, line: 591, baseType: !7, size: 32, offset: 32)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "start_src", scope: !3870, file: !101, line: 593, baseType: !7, size: 32, offset: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "start_arg", scope: !3870, file: !101, line: 594, baseType: !7, size: 32, offset: 96)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "scan_begin_src", scope: !3870, file: !101, line: 596, baseType: !7, size: 32, offset: 128)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "scan_begin_arg", scope: !3870, file: !101, line: 597, baseType: !7, size: 32, offset: 160)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "convert_src", scope: !3870, file: !101, line: 599, baseType: !7, size: 32, offset: 192)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "convert_arg", scope: !3870, file: !101, line: 600, baseType: !7, size: 32, offset: 224)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "scan_end_src", scope: !3870, file: !101, line: 602, baseType: !7, size: 32, offset: 256)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "scan_end_arg", scope: !3870, file: !101, line: 603, baseType: !7, size: 32, offset: 288)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "stop_src", scope: !3870, file: !101, line: 605, baseType: !7, size: 32, offset: 320)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "stop_arg", scope: !3870, file: !101, line: 606, baseType: !7, size: 32, offset: 352)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist", scope: !3870, file: !101, line: 608, baseType: !2711, size: 64, offset: 384)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist_len", scope: !3870, file: !101, line: 609, baseType: !7, size: 32, offset: 448)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3870, file: !101, line: 611, baseType: !3887, size: 64, offset: 512)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !3870, file: !101, line: 612, baseType: !7, size: 32, offset: 576)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "wait_head", scope: !238, file: !123, line: 366, baseType: !1509, size: 128, offset: 1280)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "cb_mask", scope: !238, file: !123, line: 367, baseType: !7, size: 32, offset: 1408)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "inttrig", scope: !238, file: !123, line: 368, baseType: !3892, size: 64, offset: 1472)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = !DISubroutineType(types: !3894)
!3894 = !{!139, !189, !226, !7}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !227, file: !123, line: 165, baseType: !202, size: 64, offset: 384)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !227, file: !123, line: 166, baseType: !202, size: 64, offset: 448)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "runflags", scope: !227, file: !123, line: 167, baseType: !7, size: 32, offset: 512)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "spin_lock", scope: !227, file: !123, line: 168, baseType: !269, offset: 544)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "io_bits", scope: !227, file: !123, line: 170, baseType: !7, size: 32, offset: 544)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata", scope: !227, file: !123, line: 172, baseType: !7, size: 32, offset: 576)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata_list", scope: !227, file: !123, line: 173, baseType: !3902, size: 64, offset: 640)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "range_table", scope: !227, file: !123, line: 175, baseType: !3904, size: 64, offset: 704)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3906)
!3906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_lrange", file: !123, line: 635, size: 32, elements: !3907)
!3907 = !{!3908, !3909}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3906, file: !123, line: 636, baseType: !139, size: 32)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3906, file: !123, line: 637, baseType: !3910, offset: 32)
!3910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3911, elements: !2359)
!3911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_krange", file: !101, line: 685, size: 96, elements: !3912)
!3912 = !{!3913, !3914, !3915}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !3911, file: !101, line: 686, baseType: !139, size: 32)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3911, file: !101, line: 687, baseType: !139, size: 32, offset: 32)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3911, file: !101, line: 688, baseType: !7, size: 32, offset: 64)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "range_table_list", scope: !227, file: !123, line: 176, baseType: !3917, size: 64, offset: 768)
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3918, size: 64)
!3918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3904)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist", scope: !227, file: !123, line: 178, baseType: !2711, size: 64, offset: 832)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "insn_read", scope: !227, file: !123, line: 180, baseType: !223, size: 64, offset: 896)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "insn_write", scope: !227, file: !123, line: 182, baseType: !223, size: 64, offset: 960)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "insn_bits", scope: !227, file: !123, line: 184, baseType: !223, size: 64, offset: 1024)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "insn_config", scope: !227, file: !123, line: 186, baseType: !223, size: 64, offset: 1088)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmd", scope: !227, file: !123, line: 191, baseType: !3925, size: 64, offset: 1152)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = !DISubroutineType(types: !3927)
!3927 = !{!139, !189, !226}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmdtest", scope: !227, file: !123, line: 192, baseType: !3929, size: 64, offset: 1216)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = !DISubroutineType(types: !3931)
!3931 = !{!139, !189, !226, !3932}
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !227, file: !123, line: 195, baseType: !3925, size: 64, offset: 1280)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "cancel", scope: !227, file: !123, line: 196, baseType: !3925, size: 64, offset: 1344)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "buf_change", scope: !227, file: !123, line: 199, baseType: !3925, size: 64, offset: 1408)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "munge", scope: !227, file: !123, line: 202, baseType: !3937, size: 64, offset: 1472)
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!3938 = !DISubroutineType(types: !3939)
!3939 = !{null, !189, !226, !202, !7, !7}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "async_dma_dir", scope: !227, file: !123, line: 205, baseType: !93, size: 32, offset: 1536)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !227, file: !123, line: 207, baseType: !7, size: 32, offset: 1568)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !227, file: !123, line: 209, baseType: !247, size: 64, offset: 1600)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !227, file: !123, line: 210, baseType: !139, size: 32, offset: 1664)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "readback", scope: !227, file: !123, line: 212, baseType: !2711, size: 64, offset: 1728)
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_insn", file: !101, line: 491, size: 320, elements: !3947)
!3947 = !{!3948, !3949, !3950, !3951, !3952, !3953}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3946, file: !101, line: 492, baseType: !7, size: 32)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !3946, file: !101, line: 493, baseType: !7, size: 32, offset: 32)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3946, file: !101, line: 494, baseType: !2711, size: 64, offset: 64)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "subdev", scope: !3946, file: !101, line: 495, baseType: !7, size: 32, offset: 128)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "chanspec", scope: !3946, file: !101, line: 496, baseType: !7, size: 32, offset: 160)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !3946, file: !101, line: 497, baseType: !213, size: 96, offset: 192)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !190, file: !123, line: 545, baseType: !202, size: 64, offset: 192)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !190, file: !123, line: 547, baseType: !247, size: 64, offset: 256)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !190, file: !123, line: 548, baseType: !139, size: 32, offset: 320)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "detach_count", scope: !190, file: !123, line: 549, baseType: !7, size: 32, offset: 352)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "hw_dev", scope: !190, file: !123, line: 550, baseType: !247, size: 64, offset: 384)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !190, file: !123, line: 552, baseType: !180, size: 64, offset: 448)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "board_ptr", scope: !190, file: !123, line: 553, baseType: !2155, size: 64, offset: 512)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "attached", scope: !190, file: !123, line: 554, baseType: !7, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "ioenabled", scope: !190, file: !123, line: 555, baseType: !7, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "spinlock", scope: !190, file: !123, line: 556, baseType: !269, offset: 584)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !190, file: !123, line: 557, baseType: !1201, size: 192, offset: 640)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "attach_lock", scope: !190, file: !123, line: 558, baseType: !797, size: 256, offset: 832)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !190, file: !123, line: 559, baseType: !3391, size: 32, offset: 1088)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "n_subdevices", scope: !190, file: !123, line: 561, baseType: !139, size: 32, offset: 1120)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "subdevices", scope: !190, file: !123, line: 562, baseType: !226, size: 64, offset: 1152)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "mmio", scope: !190, file: !123, line: 565, baseType: !202, size: 64, offset: 1216)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "iobase", scope: !190, file: !123, line: 566, baseType: !200, size: 64, offset: 1280)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "iolen", scope: !190, file: !123, line: 567, baseType: !200, size: 64, offset: 1344)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !190, file: !123, line: 568, baseType: !7, size: 32, offset: 1408)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "read_subdev", scope: !190, file: !123, line: 570, baseType: !226, size: 64, offset: 1472)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "write_subdev", scope: !190, file: !123, line: 571, baseType: !226, size: 64, offset: 1536)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "async_queue", scope: !190, file: !123, line: 573, baseType: !2987, size: 64, offset: 1600)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !190, file: !123, line: 575, baseType: !3977, size: 64, offset: 1664)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = !DISubroutineType(types: !3979)
!3979 = !{!139, !189}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !190, file: !123, line: 576, baseType: !3981, size: 64, offset: 1728)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = !DISubroutineType(types: !3983)
!3983 = !{null, !189}
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "insn_device_config", scope: !190, file: !123, line: 577, baseType: !3985, size: 64, offset: 1792)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{!139, !189, !3945, !2711}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "get_valid_routes", scope: !190, file: !123, line: 579, baseType: !3989, size: 64, offset: 1856)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{!7, !189, !7, !2711}
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_devconfig", file: !101, line: 834, size: 1184, elements: !3994)
!3994 = !{!3995, !3997}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !3993, file: !101, line: 835, baseType: !3996, size: 160)
!3996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 160, elements: !2229)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !3993, file: !101, line: 836, baseType: !3998, size: 1024, offset: 160)
!3998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 1024, elements: !2258)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !175, file: !123, line: 444, baseType: !3981, size: 64, offset: 256)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "auto_attach", scope: !175, file: !123, line: 445, baseType: !4001, size: 64, offset: 320)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!139, !189, !200}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "num_names", scope: !175, file: !123, line: 446, baseType: !7, size: 32, offset: 384)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !175, file: !123, line: 447, baseType: !4006, size: 64, offset: 448)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !175, file: !123, line: 448, baseType: !139, size: 32, offset: 512)
!4009 = !DIGlobalVariableExpression(var: !4010, expr: !DIExpression())
!4010 = distinct !DIGlobalVariable(name: "rtd520_boards", scope: !2, file: !3, line: 333, type: !4011, isLocal: true, isDefinition: true)
!4011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4012, size: 384, elements: !1597)
!4012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4013)
!4013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtd_boardinfo", file: !3, line: 326, size: 192, elements: !4014)
!4014 = !{!4015, !4016, !4017, !4018}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4013, file: !3, line: 327, baseType: !180, size: 64)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "range_bip10", scope: !4013, file: !3, line: 328, baseType: !139, size: 32, offset: 64)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "range_uni10", scope: !4013, file: !3, line: 329, baseType: !139, size: 32, offset: 96)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "ai_range", scope: !4013, file: !3, line: 330, baseType: !3904, size: 64, offset: 128)
!4019 = !DIGlobalVariableExpression(var: !4020, expr: !DIExpression())
!4020 = distinct !DIGlobalVariable(name: "rtd_ai_7520_range", scope: !2, file: !3, line: 252, type: !3905, isLocal: true, isDefinition: true)
!4021 = !DIGlobalVariableExpression(var: !4022, expr: !DIExpression())
!4022 = distinct !DIGlobalVariable(name: "rtd_ai_4520_range", scope: !2, file: !3, line: 279, type: !3905, isLocal: true, isDefinition: true)
!4023 = !DIGlobalVariableExpression(var: !4024, expr: !DIExpression())
!4024 = distinct !DIGlobalVariable(name: "rtd_ao_range", scope: !2, file: !3, line: 312, type: !3905, isLocal: true, isDefinition: true)
!4025 = !DIGlobalVariableExpression(var: !4026, expr: !DIExpression())
!4026 = distinct !DIGlobalVariable(name: "limit", scope: !4027, file: !3, line: 486, type: !2855, isLocal: true, isDefinition: true)
!4027 = distinct !DISubprogram(name: "rtd520_probe_fifo_depth", scope: !3, file: !3, line: 482, type: !3978, scopeLine: 483, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !283)
!4028 = !DIGlobalVariableExpression(var: !4029, expr: !DIExpression())
!4029 = distinct !DIGlobalVariable(name: "rtd520_pci_driver", scope: !2, file: !3, line: 1355, type: !4030, isLocal: true, isDefinition: true)
!4030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !4031, line: 858, size: 2048, elements: !4032)
!4031 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!4032 = !{!4033, !4034, !4035, !4047, !4267, !4271, !4275, !4279, !4280, !4284, !4302, !4303, !4304}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4030, file: !4031, line: 859, baseType: !256, size: 128)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4030, file: !4031, line: 860, baseType: !180, size: 64, offset: 128)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4030, file: !4031, line: 861, baseType: !4036, size: 64, offset: 192)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4038)
!4038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3484, line: 38, size: 256, elements: !4039)
!4039 = !{!4040, !4041, !4042, !4043, !4044, !4045, !4046}
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4038, file: !3484, line: 39, baseType: !449, size: 32)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4038, file: !3484, line: 39, baseType: !449, size: 32, offset: 32)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4038, file: !3484, line: 40, baseType: !449, size: 32, offset: 64)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4038, file: !3484, line: 40, baseType: !449, size: 32, offset: 96)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4038, file: !3484, line: 41, baseType: !449, size: 32, offset: 128)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4038, file: !3484, line: 41, baseType: !449, size: 32, offset: 160)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4038, file: !3484, line: 42, baseType: !3503, size: 64, offset: 192)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4030, file: !4031, line: 862, baseType: !4048, size: 64, offset: 256)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DISubroutineType(types: !4050)
!4050 = !{!139, !4051, !4036}
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !4031, line: 309, size: 19264, elements: !4053)
!4053 = !{!4054, !4055, !4130, !4131, !4132, !4133, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4161, !4163, !4164, !4165, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4189, !4190, !4191, !4192, !4194, !4195, !4196, !4197, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4240, !4241, !4243, !4244, !4245, !4246, !4248, !4249, !4250, !4253, !4260, !4261, !4262, !4263, !4264, !4265, !4266}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !4052, file: !4031, line: 310, baseType: !256, size: 128)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4052, file: !4031, line: 311, baseType: !4056, size: 64, offset: 128)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !4031, line: 605, size: 8064, elements: !4058)
!4058 = !{!4059, !4060, !4061, !4062, !4063, !4064, !4065, !4080, !4081, !4082, !4106, !4109, !4110, !4114, !4115, !4116, !4117, !4118, !4122, !4123, !4125, !4126, !4127, !4128, !4129}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4057, file: !4031, line: 606, baseType: !256, size: 128)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4057, file: !4031, line: 607, baseType: !4056, size: 64, offset: 128)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4057, file: !4031, line: 608, baseType: !256, size: 128, offset: 192)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4057, file: !4031, line: 609, baseType: !256, size: 128, offset: 320)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4057, file: !4031, line: 610, baseType: !4051, size: 64, offset: 448)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4057, file: !4031, line: 611, baseType: !256, size: 128, offset: 512)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4057, file: !4031, line: 613, baseType: !4066, size: 256, offset: 640)
!4066 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4067, size: 256, elements: !1183)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4069, line: 20, size: 512, elements: !4070)
!4069 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!4070 = !{!4071, !4073, !4074, !4075, !4076, !4077, !4078, !4079}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4068, file: !4069, line: 21, baseType: !4072, size: 64)
!4072 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !220, line: 158, baseType: !2153)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4068, file: !4069, line: 22, baseType: !4072, size: 64, offset: 64)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4068, file: !4069, line: 23, baseType: !180, size: 64, offset: 128)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4068, file: !4069, line: 24, baseType: !200, size: 64, offset: 192)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4068, file: !4069, line: 25, baseType: !200, size: 64, offset: 256)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4068, file: !4069, line: 26, baseType: !4067, size: 64, offset: 320)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4068, file: !4069, line: 26, baseType: !4067, size: 64, offset: 384)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4068, file: !4069, line: 26, baseType: !4067, size: 64, offset: 448)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4057, file: !4031, line: 614, baseType: !256, size: 128, offset: 896)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !4057, file: !4031, line: 615, baseType: !4068, size: 512, offset: 1024)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4057, file: !4031, line: 617, baseType: !4083, size: 64, offset: 1536)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !4031, line: 731, size: 320, elements: !4085)
!4085 = !{!4086, !4090, !4094, !4098, !4102}
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4084, file: !4031, line: 732, baseType: !4087, size: 64)
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4088 = !DISubroutineType(types: !4089)
!4089 = !{!139, !4056}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4084, file: !4031, line: 733, baseType: !4091, size: 64, offset: 64)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = !DISubroutineType(types: !4093)
!4093 = !{null, !4056}
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4084, file: !4031, line: 734, baseType: !4095, size: 64, offset: 128)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DISubroutineType(types: !4097)
!4097 = !{!202, !4056, !7, !139}
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4084, file: !4031, line: 735, baseType: !4099, size: 64, offset: 192)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{!139, !4056, !7, !139, !139, !1443}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4084, file: !4031, line: 736, baseType: !4103, size: 64, offset: 256)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{!139, !4056, !7, !139, !139, !447}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4057, file: !4031, line: 618, baseType: !4107, size: 64, offset: 1600)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !4031, line: 537, flags: DIFlagFwdDecl)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4057, file: !4031, line: 619, baseType: !202, size: 64, offset: 1664)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !4057, file: !4031, line: 620, baseType: !4111, size: 64, offset: 1728)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4112 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4113, line: 123, flags: DIFlagFwdDecl)
!4113 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4057, file: !4031, line: 622, baseType: !142, size: 8, offset: 1792)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4057, file: !4031, line: 623, baseType: !142, size: 8, offset: 1800)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !4057, file: !4031, line: 624, baseType: !142, size: 8, offset: 1808)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !4057, file: !4031, line: 625, baseType: !142, size: 8, offset: 1816)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4057, file: !4031, line: 630, baseType: !4119, size: 384, offset: 1824)
!4119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 384, elements: !4120)
!4120 = !{!4121}
!4121 = !DISubrange(count: 48)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !4057, file: !4031, line: 632, baseType: !138, size: 16, offset: 2208)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !4057, file: !4031, line: 633, baseType: !4124, size: 16, offset: 2224)
!4124 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !4031, line: 237, baseType: !138)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !4057, file: !4031, line: 634, baseType: !247, size: 64, offset: 2240)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4057, file: !4031, line: 635, baseType: !248, size: 5568, offset: 2304)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !4057, file: !4031, line: 636, baseType: !374, size: 64, offset: 7872)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !4057, file: !4031, line: 637, baseType: !374, size: 64, offset: 7936)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !4057, file: !4031, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !4052, file: !4031, line: 312, baseType: !4056, size: 64, offset: 192)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4052, file: !4031, line: 314, baseType: !202, size: 64, offset: 256)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !4052, file: !4031, line: 315, baseType: !4111, size: 64, offset: 320)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4052, file: !4031, line: 316, baseType: !4134, size: 64, offset: 384)
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !4031, line: 69, size: 832, elements: !4136)
!4136 = !{!4137, !4138, !4139, !4142, !4143}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4135, file: !4031, line: 70, baseType: !4056, size: 64)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4135, file: !4031, line: 71, baseType: !256, size: 128, offset: 64)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4135, file: !4031, line: 72, baseType: !4140, size: 64, offset: 192)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !4031, line: 72, flags: DIFlagFwdDecl)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4135, file: !4031, line: 73, baseType: !142, size: 8, offset: 256)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4135, file: !4031, line: 74, baseType: !251, size: 512, offset: 320)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !4052, file: !4031, line: 318, baseType: !7, size: 32, offset: 448)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4052, file: !4031, line: 319, baseType: !138, size: 16, offset: 480)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4052, file: !4031, line: 320, baseType: !138, size: 16, offset: 496)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4052, file: !4031, line: 321, baseType: !138, size: 16, offset: 512)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4052, file: !4031, line: 322, baseType: !138, size: 16, offset: 528)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4052, file: !4031, line: 323, baseType: !7, size: 32, offset: 544)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4052, file: !4031, line: 324, baseType: !1380, size: 8, offset: 576)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4052, file: !4031, line: 325, baseType: !1380, size: 8, offset: 584)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !4052, file: !4031, line: 330, baseType: !1380, size: 8, offset: 592)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !4052, file: !4031, line: 331, baseType: !1380, size: 8, offset: 600)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !4052, file: !4031, line: 332, baseType: !1380, size: 8, offset: 608)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !4052, file: !4031, line: 333, baseType: !1380, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !4052, file: !4031, line: 334, baseType: !1380, size: 8, offset: 624)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4052, file: !4031, line: 335, baseType: !1380, size: 8, offset: 632)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !4052, file: !4031, line: 336, baseType: !889, size: 16, offset: 640)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !4052, file: !4031, line: 337, baseType: !4160, size: 64, offset: 704)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4052, file: !4031, line: 339, baseType: !4162, size: 64, offset: 768)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4052, file: !4031, line: 340, baseType: !453, size: 64, offset: 832)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4052, file: !4031, line: 346, baseType: !3696, size: 128, offset: 896)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !4052, file: !4031, line: 348, baseType: !4166, size: 32, offset: 1024)
!4166 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !4031, line: 155, baseType: !139)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !4052, file: !4031, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !4052, file: !4031, line: 352, baseType: !1380, size: 8, offset: 1064)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !4052, file: !4031, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !4052, file: !4031, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !4052, file: !4031, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !4052, file: !4031, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !4052, file: !4031, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !4052, file: !4031, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !4052, file: !4031, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !4052, file: !4031, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !4052, file: !4031, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !4052, file: !4031, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !4052, file: !4031, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !4052, file: !4031, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !4052, file: !4031, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !4052, file: !4031, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !4052, file: !4031, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !4052, file: !4031, line: 376, baseType: !7, size: 32, offset: 1120)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !4052, file: !4031, line: 377, baseType: !7, size: 32, offset: 1152)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !4052, file: !4031, line: 380, baseType: !4187, size: 64, offset: 1216)
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4188, size: 64)
!4188 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !4031, line: 303, flags: DIFlagFwdDecl)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !4052, file: !4031, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !4052, file: !4031, line: 383, baseType: !139, size: 32, offset: 1312)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !4052, file: !4031, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !4052, file: !4031, line: 387, baseType: !4193, size: 32, offset: 1376)
!4193 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !4031, line: 180, baseType: !7)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4052, file: !4031, line: 388, baseType: !248, size: 5568, offset: 1408)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !4052, file: !4031, line: 390, baseType: !139, size: 32, offset: 6976)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4052, file: !4031, line: 396, baseType: !7, size: 32, offset: 7008)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4052, file: !4031, line: 397, baseType: !4198, size: 8704, offset: 7040)
!4198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4068, size: 8704, elements: !4199)
!4199 = !{!4200}
!4200 = !DISubrange(count: 17)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4052, file: !4031, line: 399, baseType: !219, size: 8, offset: 15744)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !4052, file: !4031, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !4052, file: !4031, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !4052, file: !4031, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !4052, file: !4031, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !4052, file: !4031, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !4052, file: !4031, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !4052, file: !4031, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !4052, file: !4031, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !4052, file: !4031, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !4052, file: !4031, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !4052, file: !4031, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !4052, file: !4031, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !4052, file: !4031, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !4052, file: !4031, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !4052, file: !4031, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !4052, file: !4031, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !4052, file: !4031, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !4052, file: !4031, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !4052, file: !4031, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !4052, file: !4031, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !4052, file: !4031, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !4052, file: !4031, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !4052, file: !4031, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !4052, file: !4031, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !4052, file: !4031, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !4052, file: !4031, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !4052, file: !4031, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !4052, file: !4031, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !4052, file: !4031, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !4052, file: !4031, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !4052, file: !4031, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !4052, file: !4031, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !4052, file: !4031, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !4052, file: !4031, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !4052, file: !4031, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !4052, file: !4031, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !4052, file: !4031, line: 450, baseType: !4239, size: 16, offset: 15792)
!4239 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !4031, line: 206, baseType: !138)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !4052, file: !4031, line: 451, baseType: !777, size: 32, offset: 15808)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !4052, file: !4031, line: 453, baseType: !4242, size: 512, offset: 15840)
!4242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !447, size: 512, elements: !1763)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !4052, file: !4031, line: 454, baseType: !664, size: 64, offset: 16384)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !4052, file: !4031, line: 455, baseType: !374, size: 64, offset: 16448)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !4052, file: !4031, line: 456, baseType: !139, size: 32, offset: 16512)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !4052, file: !4031, line: 457, baseType: !4247, size: 1088, offset: 16576)
!4247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !374, size: 1088, elements: !4199)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !4052, file: !4031, line: 458, baseType: !4247, size: 1088, offset: 17664)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !4052, file: !4031, line: 469, baseType: !360, size: 64, offset: 18752)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !4052, file: !4031, line: 471, baseType: !4251, size: 64, offset: 18816)
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !4031, line: 304, flags: DIFlagFwdDecl)
!4253 = !DIDerivedType(tag: DW_TAG_member, scope: !4052, file: !4031, line: 478, baseType: !4254, size: 64, offset: 18880)
!4254 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4052, file: !4031, line: 478, size: 64, elements: !4255)
!4255 = !{!4256, !4259}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4254, file: !4031, line: 479, baseType: !4257, size: 64)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !4031, line: 305, flags: DIFlagFwdDecl)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4254, file: !4031, line: 480, baseType: !4051, size: 64)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !4052, file: !4031, line: 482, baseType: !889, size: 16, offset: 18944)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !4052, file: !4031, line: 483, baseType: !1380, size: 8, offset: 18960)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !4052, file: !4031, line: 497, baseType: !889, size: 16, offset: 18976)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !4052, file: !4031, line: 498, baseType: !2153, size: 64, offset: 19008)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !4052, file: !4031, line: 499, baseType: !354, size: 64, offset: 19072)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !4052, file: !4031, line: 500, baseType: !310, size: 64, offset: 19136)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !4052, file: !4031, line: 502, baseType: !200, size: 64, offset: 19200)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4030, file: !4031, line: 863, baseType: !4268, size: 64, offset: 320)
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4269, size: 64)
!4269 = !DISubroutineType(types: !4270)
!4270 = !{null, !4051}
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4030, file: !4031, line: 864, baseType: !4272, size: 64, offset: 384)
!4272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4273, size: 64)
!4273 = !DISubroutineType(types: !4274)
!4274 = !{!139, !4051, !3514}
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4030, file: !4031, line: 865, baseType: !4276, size: 64, offset: 448)
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4277, size: 64)
!4277 = !DISubroutineType(types: !4278)
!4278 = !{!139, !4051}
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4030, file: !4031, line: 866, baseType: !4268, size: 64, offset: 512)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4030, file: !4031, line: 867, baseType: !4281, size: 64, offset: 576)
!4281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4282, size: 64)
!4282 = !DISubroutineType(types: !4283)
!4283 = !{!139, !4051, !139}
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4030, file: !4031, line: 868, baseType: !4285, size: 64, offset: 640)
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4286, size: 64)
!4286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4287)
!4287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !4031, line: 795, size: 384, elements: !4288)
!4288 = !{!4289, !4294, !4298, !4299, !4300, !4301}
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4287, file: !4031, line: 797, baseType: !4290, size: 64)
!4290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4291, size: 64)
!4291 = !DISubroutineType(types: !4292)
!4292 = !{!4293, !4051, !4193}
!4293 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !4031, line: 772, baseType: !7)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4287, file: !4031, line: 801, baseType: !4295, size: 64, offset: 64)
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4296, size: 64)
!4296 = !DISubroutineType(types: !4297)
!4297 = !{!4293, !4051}
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4287, file: !4031, line: 804, baseType: !4295, size: 64, offset: 128)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4287, file: !4031, line: 807, baseType: !4268, size: 64, offset: 192)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4287, file: !4031, line: 808, baseType: !4268, size: 64, offset: 256)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4287, file: !4031, line: 811, baseType: !4268, size: 64, offset: 320)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4030, file: !4031, line: 869, baseType: !360, size: 64, offset: 704)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4030, file: !4031, line: 870, baseType: !3472, size: 1152, offset: 768)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4030, file: !4031, line: 871, baseType: !4305, size: 128, offset: 1920)
!4305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !4031, line: 759, size: 128, elements: !4306)
!4306 = !{!4307, !4308}
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4305, file: !4031, line: 760, baseType: !269)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4305, file: !4031, line: 761, baseType: !256, size: 128)
!4309 = !DIGlobalVariableExpression(var: !4310, expr: !DIExpression())
!4310 = distinct !DIGlobalVariable(name: "rtd520_pci_table", scope: !2, file: !3, line: 1348, type: !4311, isLocal: true, isDefinition: true)
!4311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4037, size: 768, elements: !214)
!4312 = !{i32 7, !"Dwarf Version", i32 4}
!4313 = !{i32 2, !"Debug Info Version", i32 3}
!4314 = !{i32 1, !"wchar_size", i32 2}
!4315 = !{i32 1, !"Code Model", i32 2}
!4316 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4317 = distinct !DISubprogram(name: "rtd520_driver_init", scope: !3, file: !3, line: 1361, type: !4318, scopeLine: 1361, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !283)
!4318 = !DISubroutineType(types: !4319)
!4319 = !{!139}
!4320 = !DILocation(line: 1361, column: 1, scope: !4317)
!4321 = distinct !DISubprogram(name: "rtd520_driver_exit", scope: !3, file: !3, line: 1361, type: !149, scopeLine: 1361, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !283)
!4322 = !DILocation(line: 1361, column: 1, scope: !4321)
!4323 = distinct !DISubprogram(name: "rtd_detach", scope: !3, file: !3, line: 1315, type: !3982, scopeLine: 1316, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !283)
!4324 = !DILocalVariable(name: "dev", arg: 1, scope: !4323, file: !3, line: 1315, type: !189)
!4325 = !DILocation(line: 1315, column: 46, scope: !4323)
!4326 = !DILocalVariable(name: "devpriv", scope: !4323, file: !3, line: 1317, type: !4327)
!4327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4328, size: 64)
!4328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtd_private", file: !3, line: 348, size: 384, elements: !4329)
!4329 = !{!4330, !4331, !4332, !4333, !4334, !4335, !4336, !4338}
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "las1", scope: !4328, file: !3, line: 350, baseType: !202, size: 64)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "lcfg", scope: !4328, file: !3, line: 351, baseType: !202, size: 64, offset: 64)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "ai_count", scope: !4328, file: !3, line: 353, baseType: !343, size: 64, offset: 128)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "xfer_count", scope: !4328, file: !3, line: 354, baseType: !139, size: 32, offset: 192)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4328, file: !3, line: 355, baseType: !139, size: 32, offset: 224)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "fifosz", scope: !4328, file: !3, line: 356, baseType: !7, size: 32, offset: 256)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "timer_gate_src", scope: !4328, file: !3, line: 359, baseType: !4337, size: 24, offset: 288)
!4337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 24, elements: !214)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "timer_clk_src", scope: !4328, file: !3, line: 360, baseType: !4337, size: 24, offset: 312)
!4339 = !DILocation(line: 1317, column: 22, scope: !4323)
!4340 = !DILocation(line: 1317, column: 32, scope: !4323)
!4341 = !DILocation(line: 1317, column: 37, scope: !4323)
!4342 = !DILocation(line: 1319, column: 6, scope: !4343)
!4343 = distinct !DILexicalBlock(scope: !4323, file: !3, line: 1319, column: 6)
!4344 = !DILocation(line: 1319, column: 6, scope: !4323)
!4345 = !DILocation(line: 1321, column: 7, scope: !4346)
!4346 = distinct !DILexicalBlock(scope: !4347, file: !3, line: 1321, column: 7)
!4347 = distinct !DILexicalBlock(scope: !4343, file: !3, line: 1319, column: 15)
!4348 = !DILocation(line: 1321, column: 12, scope: !4346)
!4349 = !DILocation(line: 1321, column: 17, scope: !4346)
!4350 = !DILocation(line: 1321, column: 20, scope: !4346)
!4351 = !DILocation(line: 1321, column: 29, scope: !4346)
!4352 = !DILocation(line: 1321, column: 7, scope: !4347)
!4353 = !DILocation(line: 1322, column: 14, scope: !4346)
!4354 = !DILocation(line: 1322, column: 4, scope: !4346)
!4355 = !DILocation(line: 1323, column: 7, scope: !4356)
!4356 = distinct !DILexicalBlock(scope: !4347, file: !3, line: 1323, column: 7)
!4357 = !DILocation(line: 1323, column: 12, scope: !4356)
!4358 = !DILocation(line: 1323, column: 7, scope: !4347)
!4359 = !DILocation(line: 1324, column: 13, scope: !4356)
!4360 = !DILocation(line: 1324, column: 18, scope: !4356)
!4361 = !DILocation(line: 1324, column: 23, scope: !4356)
!4362 = !DILocation(line: 1324, column: 4, scope: !4356)
!4363 = !DILocation(line: 1325, column: 7, scope: !4364)
!4364 = distinct !DILexicalBlock(scope: !4347, file: !3, line: 1325, column: 7)
!4365 = !DILocation(line: 1325, column: 12, scope: !4364)
!4366 = !DILocation(line: 1325, column: 7, scope: !4347)
!4367 = !DILocation(line: 1326, column: 12, scope: !4364)
!4368 = !DILocation(line: 1326, column: 17, scope: !4364)
!4369 = !DILocation(line: 1326, column: 4, scope: !4364)
!4370 = !DILocation(line: 1327, column: 7, scope: !4371)
!4371 = distinct !DILexicalBlock(scope: !4347, file: !3, line: 1327, column: 7)
!4372 = !DILocation(line: 1327, column: 16, scope: !4371)
!4373 = !DILocation(line: 1327, column: 7, scope: !4347)
!4374 = !DILocation(line: 1328, column: 12, scope: !4371)
!4375 = !DILocation(line: 1328, column: 21, scope: !4371)
!4376 = !DILocation(line: 1328, column: 4, scope: !4371)
!4377 = !DILocation(line: 1329, column: 7, scope: !4378)
!4378 = distinct !DILexicalBlock(scope: !4347, file: !3, line: 1329, column: 7)
!4379 = !DILocation(line: 1329, column: 16, scope: !4378)
!4380 = !DILocation(line: 1329, column: 7, scope: !4347)
!4381 = !DILocation(line: 1330, column: 12, scope: !4378)
!4382 = !DILocation(line: 1330, column: 21, scope: !4378)
!4383 = !DILocation(line: 1330, column: 4, scope: !4378)
!4384 = !DILocation(line: 1331, column: 2, scope: !4347)
!4385 = !DILocation(line: 1332, column: 21, scope: !4323)
!4386 = !DILocation(line: 1332, column: 2, scope: !4323)
!4387 = !DILocation(line: 1333, column: 1, scope: !4323)
!4388 = distinct !DISubprogram(name: "rtd_auto_attach", scope: !3, file: !3, line: 1207, type: !4002, scopeLine: 1209, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !283)
!4389 = !DILocalVariable(name: "dev", arg: 1, scope: !4388, file: !3, line: 1207, type: !189)
!4390 = !DILocation(line: 1207, column: 50, scope: !4388)
!4391 = !DILocalVariable(name: "context", arg: 2, scope: !4388, file: !3, line: 1208, type: !200)
!4392 = !DILocation(line: 1208, column: 21, scope: !4388)
!4393 = !DILocalVariable(name: "pcidev", scope: !4388, file: !3, line: 1210, type: !4051)
!4394 = !DILocation(line: 1210, column: 18, scope: !4388)
!4395 = !DILocation(line: 1210, column: 45, scope: !4388)
!4396 = !DILocation(line: 1210, column: 27, scope: !4388)
!4397 = !DILocalVariable(name: "board", scope: !4388, file: !3, line: 1211, type: !4398)
!4398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4399 = !DILocation(line: 1211, column: 30, scope: !4388)
!4400 = !DILocalVariable(name: "devpriv", scope: !4388, file: !3, line: 1212, type: !4327)
!4401 = !DILocation(line: 1212, column: 22, scope: !4388)
!4402 = !DILocalVariable(name: "s", scope: !4388, file: !3, line: 1213, type: !226)
!4403 = !DILocation(line: 1213, column: 27, scope: !4388)
!4404 = !DILocalVariable(name: "ret", scope: !4388, file: !3, line: 1214, type: !139)
!4405 = !DILocation(line: 1214, column: 6, scope: !4388)
!4406 = !DILocation(line: 1216, column: 6, scope: !4407)
!4407 = distinct !DILexicalBlock(scope: !4388, file: !3, line: 1216, column: 6)
!4408 = !DILocation(line: 1216, column: 14, scope: !4407)
!4409 = !DILocation(line: 1216, column: 6, scope: !4388)
!4410 = !DILocation(line: 1217, column: 26, scope: !4407)
!4411 = !DILocation(line: 1217, column: 12, scope: !4407)
!4412 = !DILocation(line: 1217, column: 9, scope: !4407)
!4413 = !DILocation(line: 1217, column: 3, scope: !4407)
!4414 = !DILocation(line: 1218, column: 7, scope: !4415)
!4415 = distinct !DILexicalBlock(scope: !4388, file: !3, line: 1218, column: 6)
!4416 = !DILocation(line: 1218, column: 6, scope: !4388)
!4417 = !DILocation(line: 1219, column: 3, scope: !4415)
!4418 = !DILocation(line: 1220, column: 19, scope: !4388)
!4419 = !DILocation(line: 1220, column: 2, scope: !4388)
!4420 = !DILocation(line: 1220, column: 7, scope: !4388)
!4421 = !DILocation(line: 1220, column: 17, scope: !4388)
!4422 = !DILocation(line: 1221, column: 20, scope: !4388)
!4423 = !DILocation(line: 1221, column: 27, scope: !4388)
!4424 = !DILocation(line: 1221, column: 2, scope: !4388)
!4425 = !DILocation(line: 1221, column: 7, scope: !4388)
!4426 = !DILocation(line: 1221, column: 18, scope: !4388)
!4427 = !DILocation(line: 1223, column: 33, scope: !4388)
!4428 = !DILocation(line: 1223, column: 12, scope: !4388)
!4429 = !DILocation(line: 1223, column: 10, scope: !4388)
!4430 = !DILocation(line: 1224, column: 7, scope: !4431)
!4431 = distinct !DILexicalBlock(scope: !4388, file: !3, line: 1224, column: 6)
!4432 = !DILocation(line: 1224, column: 6, scope: !4388)
!4433 = !DILocation(line: 1225, column: 3, scope: !4431)
!4434 = !DILocation(line: 1227, column: 26, scope: !4388)
!4435 = !DILocation(line: 1227, column: 8, scope: !4388)
!4436 = !DILocation(line: 1227, column: 6, scope: !4388)
!4437 = !DILocation(line: 1228, column: 6, scope: !4438)
!4438 = distinct !DILexicalBlock(scope: !4388, file: !3, line: 1228, column: 6)
!4439 = !DILocation(line: 1228, column: 6, scope: !4388)
!4440 = !DILocation(line: 1229, column: 10, scope: !4438)
!4441 = !DILocation(line: 1229, column: 3, scope: !4438)
!4442 = !DILocation(line: 1231, column: 30, scope: !4388)
!4443 = !DILocation(line: 1231, column: 14, scope: !4388)
!4444 = !DILocation(line: 1231, column: 2, scope: !4388)
!4445 = !DILocation(line: 1231, column: 7, scope: !4388)
!4446 = !DILocation(line: 1231, column: 12, scope: !4388)
!4447 = !DILocation(line: 1232, column: 34, scope: !4388)
!4448 = !DILocation(line: 1232, column: 18, scope: !4388)
!4449 = !DILocation(line: 1232, column: 2, scope: !4388)
!4450 = !DILocation(line: 1232, column: 11, scope: !4388)
!4451 = !DILocation(line: 1232, column: 16, scope: !4388)
!4452 = !DILocation(line: 1233, column: 34, scope: !4388)
!4453 = !DILocation(line: 1233, column: 18, scope: !4388)
!4454 = !DILocation(line: 1233, column: 2, scope: !4388)
!4455 = !DILocation(line: 1233, column: 11, scope: !4388)
!4456 = !DILocation(line: 1233, column: 16, scope: !4388)
!4457 = !DILocation(line: 1234, column: 7, scope: !4458)
!4458 = distinct !DILexicalBlock(scope: !4388, file: !3, line: 1234, column: 6)
!4459 = !DILocation(line: 1234, column: 12, scope: !4458)
!4460 = !DILocation(line: 1234, column: 17, scope: !4458)
!4461 = !DILocation(line: 1234, column: 21, scope: !4458)
!4462 = !DILocation(line: 1234, column: 30, scope: !4458)
!4463 = !DILocation(line: 1234, column: 35, scope: !4458)
!4464 = !DILocation(line: 1234, column: 39, scope: !4458)
!4465 = !DILocation(line: 1234, column: 48, scope: !4458)
!4466 = !DILocation(line: 1234, column: 6, scope: !4388)
!4467 = !DILocation(line: 1235, column: 3, scope: !4458)
!4468 = !DILocation(line: 1237, column: 24, scope: !4388)
!4469 = !DILocation(line: 1237, column: 29, scope: !4388)
!4470 = !DILocation(line: 1237, column: 2, scope: !4388)
!4471 = !DILocation(line: 1239, column: 6, scope: !4472)
!4472 = distinct !DILexicalBlock(scope: !4388, file: !3, line: 1239, column: 6)
!4473 = !DILocation(line: 1239, column: 14, scope: !4472)
!4474 = !DILocation(line: 1239, column: 6, scope: !4388)
!4475 = !DILocation(line: 1240, column: 21, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4472, file: !3, line: 1239, column: 19)
!4477 = !DILocation(line: 1240, column: 29, scope: !4476)
!4478 = !DILocation(line: 1241, column: 7, scope: !4476)
!4479 = !DILocation(line: 1241, column: 12, scope: !4476)
!4480 = !DILocation(line: 1241, column: 24, scope: !4476)
!4481 = !DILocation(line: 1240, column: 9, scope: !4476)
!4482 = !DILocation(line: 1240, column: 7, scope: !4476)
!4483 = !DILocation(line: 1242, column: 7, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4476, file: !3, line: 1242, column: 7)
!4485 = !DILocation(line: 1242, column: 11, scope: !4484)
!4486 = !DILocation(line: 1242, column: 7, scope: !4476)
!4487 = !DILocation(line: 1243, column: 15, scope: !4484)
!4488 = !DILocation(line: 1243, column: 23, scope: !4484)
!4489 = !DILocation(line: 1243, column: 4, scope: !4484)
!4490 = !DILocation(line: 1243, column: 9, scope: !4484)
!4491 = !DILocation(line: 1243, column: 13, scope: !4484)
!4492 = !DILocation(line: 1244, column: 2, scope: !4476)
!4493 = !DILocation(line: 1246, column: 32, scope: !4388)
!4494 = !DILocation(line: 1246, column: 8, scope: !4388)
!4495 = !DILocation(line: 1246, column: 6, scope: !4388)
!4496 = !DILocation(line: 1247, column: 6, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !4388, file: !3, line: 1247, column: 6)
!4498 = !DILocation(line: 1247, column: 6, scope: !4388)
!4499 = !DILocation(line: 1248, column: 10, scope: !4497)
!4500 = !DILocation(line: 1248, column: 3, scope: !4497)
!4501 = !DILocation(line: 1250, column: 7, scope: !4388)
!4502 = !DILocation(line: 1250, column: 12, scope: !4388)
!4503 = !DILocation(line: 1250, column: 4, scope: !4388)
!4504 = !DILocation(line: 1252, column: 2, scope: !4388)
!4505 = !DILocation(line: 1252, column: 5, scope: !4388)
!4506 = !DILocation(line: 1252, column: 11, scope: !4388)
!4507 = !DILocation(line: 1253, column: 2, scope: !4388)
!4508 = !DILocation(line: 1253, column: 5, scope: !4388)
!4509 = !DILocation(line: 1253, column: 18, scope: !4388)
!4510 = !DILocation(line: 1254, column: 2, scope: !4388)
!4511 = !DILocation(line: 1254, column: 5, scope: !4388)
!4512 = !DILocation(line: 1254, column: 12, scope: !4388)
!4513 = !DILocation(line: 1255, column: 2, scope: !4388)
!4514 = !DILocation(line: 1255, column: 5, scope: !4388)
!4515 = !DILocation(line: 1255, column: 13, scope: !4388)
!4516 = !DILocation(line: 1256, column: 19, scope: !4388)
!4517 = !DILocation(line: 1256, column: 26, scope: !4388)
!4518 = !DILocation(line: 1256, column: 2, scope: !4388)
!4519 = !DILocation(line: 1256, column: 5, scope: !4388)
!4520 = !DILocation(line: 1256, column: 17, scope: !4388)
!4521 = !DILocation(line: 1257, column: 2, scope: !4388)
!4522 = !DILocation(line: 1257, column: 5, scope: !4388)
!4523 = !DILocation(line: 1257, column: 18, scope: !4388)
!4524 = !DILocation(line: 1258, column: 2, scope: !4388)
!4525 = !DILocation(line: 1258, column: 5, scope: !4388)
!4526 = !DILocation(line: 1258, column: 15, scope: !4388)
!4527 = !DILocation(line: 1259, column: 6, scope: !4528)
!4528 = distinct !DILexicalBlock(scope: !4388, file: !3, line: 1259, column: 6)
!4529 = !DILocation(line: 1259, column: 11, scope: !4528)
!4530 = !DILocation(line: 1259, column: 6, scope: !4388)
!4531 = !DILocation(line: 1260, column: 22, scope: !4532)
!4532 = distinct !DILexicalBlock(scope: !4528, file: !3, line: 1259, column: 16)
!4533 = !DILocation(line: 1260, column: 3, scope: !4532)
!4534 = !DILocation(line: 1260, column: 8, scope: !4532)
!4535 = !DILocation(line: 1260, column: 20, scope: !4532)
!4536 = !DILocation(line: 1261, column: 3, scope: !4532)
!4537 = !DILocation(line: 1261, column: 6, scope: !4532)
!4538 = !DILocation(line: 1261, column: 19, scope: !4532)
!4539 = !DILocation(line: 1262, column: 3, scope: !4532)
!4540 = !DILocation(line: 1262, column: 6, scope: !4532)
!4541 = !DILocation(line: 1262, column: 13, scope: !4532)
!4542 = !DILocation(line: 1263, column: 3, scope: !4532)
!4543 = !DILocation(line: 1263, column: 6, scope: !4532)
!4544 = !DILocation(line: 1263, column: 17, scope: !4532)
!4545 = !DILocation(line: 1264, column: 3, scope: !4532)
!4546 = !DILocation(line: 1264, column: 6, scope: !4532)
!4547 = !DILocation(line: 1264, column: 13, scope: !4532)
!4548 = !DILocation(line: 1265, column: 2, scope: !4532)
!4549 = !DILocation(line: 1267, column: 7, scope: !4388)
!4550 = !DILocation(line: 1267, column: 12, scope: !4388)
!4551 = !DILocation(line: 1267, column: 4, scope: !4388)
!4552 = !DILocation(line: 1269, column: 2, scope: !4388)
!4553 = !DILocation(line: 1269, column: 5, scope: !4388)
!4554 = !DILocation(line: 1269, column: 11, scope: !4388)
!4555 = !DILocation(line: 1270, column: 2, scope: !4388)
!4556 = !DILocation(line: 1270, column: 5, scope: !4388)
!4557 = !DILocation(line: 1270, column: 18, scope: !4388)
!4558 = !DILocation(line: 1271, column: 2, scope: !4388)
!4559 = !DILocation(line: 1271, column: 5, scope: !4388)
!4560 = !DILocation(line: 1271, column: 12, scope: !4388)
!4561 = !DILocation(line: 1272, column: 2, scope: !4388)
!4562 = !DILocation(line: 1272, column: 5, scope: !4388)
!4563 = !DILocation(line: 1272, column: 13, scope: !4388)
!4564 = !DILocation(line: 1273, column: 2, scope: !4388)
!4565 = !DILocation(line: 1273, column: 5, scope: !4388)
!4566 = !DILocation(line: 1273, column: 17, scope: !4388)
!4567 = !DILocation(line: 1274, column: 2, scope: !4388)
!4568 = !DILocation(line: 1274, column: 5, scope: !4388)
!4569 = !DILocation(line: 1274, column: 16, scope: !4388)
!4570 = !DILocation(line: 1276, column: 37, scope: !4388)
!4571 = !DILocation(line: 1276, column: 8, scope: !4388)
!4572 = !DILocation(line: 1276, column: 6, scope: !4388)
!4573 = !DILocation(line: 1277, column: 6, scope: !4574)
!4574 = distinct !DILexicalBlock(scope: !4388, file: !3, line: 1277, column: 6)
!4575 = !DILocation(line: 1277, column: 6, scope: !4388)
!4576 = !DILocation(line: 1278, column: 10, scope: !4574)
!4577 = !DILocation(line: 1278, column: 3, scope: !4574)
!4578 = !DILocation(line: 1280, column: 7, scope: !4388)
!4579 = !DILocation(line: 1280, column: 12, scope: !4388)
!4580 = !DILocation(line: 1280, column: 4, scope: !4388)
!4581 = !DILocation(line: 1282, column: 2, scope: !4388)
!4582 = !DILocation(line: 1282, column: 5, scope: !4388)
!4583 = !DILocation(line: 1282, column: 11, scope: !4388)
!4584 = !DILocation(line: 1283, column: 2, scope: !4388)
!4585 = !DILocation(line: 1283, column: 5, scope: !4388)
!4586 = !DILocation(line: 1283, column: 18, scope: !4388)
!4587 = !DILocation(line: 1285, column: 2, scope: !4388)
!4588 = !DILocation(line: 1285, column: 5, scope: !4388)
!4589 = !DILocation(line: 1285, column: 12, scope: !4388)
!4590 = !DILocation(line: 1286, column: 2, scope: !4388)
!4591 = !DILocation(line: 1286, column: 5, scope: !4388)
!4592 = !DILocation(line: 1286, column: 13, scope: !4388)
!4593 = !DILocation(line: 1287, column: 2, scope: !4388)
!4594 = !DILocation(line: 1287, column: 5, scope: !4388)
!4595 = !DILocation(line: 1287, column: 17, scope: !4388)
!4596 = !DILocation(line: 1288, column: 2, scope: !4388)
!4597 = !DILocation(line: 1288, column: 5, scope: !4388)
!4598 = !DILocation(line: 1288, column: 15, scope: !4388)
!4599 = !DILocation(line: 1289, column: 2, scope: !4388)
!4600 = !DILocation(line: 1289, column: 5, scope: !4388)
!4601 = !DILocation(line: 1289, column: 17, scope: !4388)
!4602 = !DILocation(line: 1292, column: 7, scope: !4388)
!4603 = !DILocation(line: 1292, column: 12, scope: !4388)
!4604 = !DILocation(line: 1292, column: 4, scope: !4388)
!4605 = !DILocation(line: 1293, column: 35, scope: !4388)
!4606 = !DILocation(line: 1293, column: 40, scope: !4388)
!4607 = !DILocation(line: 1293, column: 45, scope: !4388)
!4608 = !DILocation(line: 1293, column: 15, scope: !4388)
!4609 = !DILocation(line: 1293, column: 2, scope: !4388)
!4610 = !DILocation(line: 1293, column: 7, scope: !4388)
!4611 = !DILocation(line: 1293, column: 13, scope: !4388)
!4612 = !DILocation(line: 1295, column: 7, scope: !4613)
!4613 = distinct !DILexicalBlock(scope: !4388, file: !3, line: 1295, column: 6)
!4614 = !DILocation(line: 1295, column: 12, scope: !4613)
!4615 = !DILocation(line: 1295, column: 6, scope: !4388)
!4616 = !DILocation(line: 1296, column: 3, scope: !4613)
!4617 = !DILocation(line: 1298, column: 29, scope: !4388)
!4618 = !DILocation(line: 1298, column: 32, scope: !4388)
!4619 = !DILocation(line: 1298, column: 37, scope: !4388)
!4620 = !DILocation(line: 1298, column: 2, scope: !4388)
!4621 = !DILocation(line: 1299, column: 2, scope: !4388)
!4622 = !DILocation(line: 1299, column: 7, scope: !4388)
!4623 = !DILocation(line: 1299, column: 14, scope: !4388)
!4624 = !DILocation(line: 1299, column: 26, scope: !4388)
!4625 = !DILocation(line: 1301, column: 17, scope: !4388)
!4626 = !DILocation(line: 1301, column: 2, scope: !4388)
!4627 = !DILocation(line: 1303, column: 32, scope: !4388)
!4628 = !DILocation(line: 1303, column: 8, scope: !4388)
!4629 = !DILocation(line: 1303, column: 6, scope: !4388)
!4630 = !DILocation(line: 1304, column: 6, scope: !4631)
!4631 = distinct !DILexicalBlock(scope: !4388, file: !3, line: 1304, column: 6)
!4632 = !DILocation(line: 1304, column: 10, scope: !4631)
!4633 = !DILocation(line: 1304, column: 6, scope: !4388)
!4634 = !DILocation(line: 1305, column: 10, scope: !4631)
!4635 = !DILocation(line: 1305, column: 3, scope: !4631)
!4636 = !DILocation(line: 1306, column: 20, scope: !4388)
!4637 = !DILocation(line: 1306, column: 2, scope: !4388)
!4638 = !DILocation(line: 1306, column: 11, scope: !4388)
!4639 = !DILocation(line: 1306, column: 18, scope: !4388)
!4640 = !DILocation(line: 1308, column: 6, scope: !4641)
!4641 = distinct !DILexicalBlock(scope: !4388, file: !3, line: 1308, column: 6)
!4642 = !DILocation(line: 1308, column: 11, scope: !4641)
!4643 = !DILocation(line: 1308, column: 6, scope: !4388)
!4644 = !DILocation(line: 1310, column: 10, scope: !4641)
!4645 = !DILocation(line: 1310, column: 19, scope: !4641)
!4646 = !DILocation(line: 1310, column: 24, scope: !4641)
!4647 = !DILocation(line: 1309, column: 3, scope: !4641)
!4648 = !DILocation(line: 1312, column: 2, scope: !4388)
!4649 = !DILocation(line: 1313, column: 1, scope: !4388)
!4650 = distinct !DISubprogram(name: "rtd_reset", scope: !3, file: !3, line: 1162, type: !3982, scopeLine: 1163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !283)
!4651 = !DILocalVariable(name: "dev", arg: 1, scope: !4650, file: !3, line: 1162, type: !189)
!4652 = !DILocation(line: 1162, column: 45, scope: !4650)
!4653 = !DILocalVariable(name: "devpriv", scope: !4650, file: !3, line: 1164, type: !4327)
!4654 = !DILocation(line: 1164, column: 22, scope: !4650)
!4655 = !DILocation(line: 1164, column: 32, scope: !4650)
!4656 = !DILocation(line: 1164, column: 37, scope: !4650)
!4657 = !DILocation(line: 1166, column: 12, scope: !4650)
!4658 = !DILocation(line: 1166, column: 17, scope: !4650)
!4659 = !DILocation(line: 1166, column: 22, scope: !4650)
!4660 = !DILocation(line: 1166, column: 2, scope: !4650)
!4661 = !DILocation(line: 1167, column: 2, scope: !4650)
!4662 = !DILocation(line: 1168, column: 12, scope: !4650)
!4663 = !DILocation(line: 1168, column: 21, scope: !4650)
!4664 = !DILocation(line: 1168, column: 26, scope: !4650)
!4665 = !DILocation(line: 1168, column: 2, scope: !4650)
!4666 = !DILocation(line: 1169, column: 12, scope: !4650)
!4667 = !DILocation(line: 1169, column: 17, scope: !4650)
!4668 = !DILocation(line: 1169, column: 22, scope: !4650)
!4669 = !DILocation(line: 1169, column: 2, scope: !4650)
!4670 = !DILocation(line: 1170, column: 13, scope: !4650)
!4671 = !DILocation(line: 1170, column: 18, scope: !4650)
!4672 = !DILocation(line: 1170, column: 23, scope: !4650)
!4673 = !DILocation(line: 1170, column: 2, scope: !4650)
!4674 = !DILocation(line: 1171, column: 8, scope: !4650)
!4675 = !DILocation(line: 1171, column: 13, scope: !4650)
!4676 = !DILocation(line: 1171, column: 18, scope: !4650)
!4677 = !DILocation(line: 1171, column: 2, scope: !4650)
!4678 = !DILocation(line: 1172, column: 1, scope: !4650)
!4679 = distinct !DISubprogram(name: "writel", scope: !4680, file: !4680, line: 67, type: !4681, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !283)
!4680 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!4681 = !DISubroutineType(types: !4682)
!4682 = !{null, !7, !4683}
!4683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4684, size: 64)
!4684 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4685 = !DILocalVariable(name: "val", arg: 1, scope: !4679, file: !4680, line: 67, type: !7)
!4686 = !DILocation(line: 67, column: 1, scope: !4679)
!4687 = !DILocalVariable(name: "addr", arg: 2, scope: !4679, file: !4680, line: 67, type: !4683)
!4688 = !{i32 -2143388226}
!4689 = distinct !DISubprogram(name: "writew", scope: !4680, file: !4680, line: 66, type: !4690, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !283)
!4690 = !DISubroutineType(types: !4691)
!4691 = !{null, !138, !4683}
!4692 = !DILocalVariable(name: "val", arg: 1, scope: !4689, file: !4680, line: 66, type: !138)
!4693 = !DILocation(line: 66, column: 1, scope: !4689)
!4694 = !DILocalVariable(name: "addr", arg: 2, scope: !4689, file: !4680, line: 66, type: !4683)
!4695 = !{i32 -2143388612}
!4696 = distinct !DISubprogram(name: "readw", scope: !4680, file: !4680, line: 58, type: !4697, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !283)
!4697 = !DISubroutineType(types: !4698)
!4698 = !{!138, !4699}
!4699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4700, size: 64)
!4700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4684)
!4701 = !DILocalVariable(name: "addr", arg: 1, scope: !4696, file: !4680, line: 58, type: !4699)
!4702 = !DILocation(line: 58, column: 1, scope: !4696)
!4703 = !DILocalVariable(name: "ret", scope: !4696, file: !4680, line: 58, type: !138)
!4704 = !{i32 -2143391036}
!4705 = distinct !DISubprogram(name: "rtd_pci_latency_quirk", scope: !3, file: !3, line: 1193, type: !4706, scopeLine: 1195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !283)
!4706 = !DISubroutineType(types: !4707)
!4707 = !{null, !189, !4051}
!4708 = !DILocalVariable(name: "dev", arg: 1, scope: !4705, file: !3, line: 1193, type: !189)
!4709 = !DILocation(line: 1193, column: 57, scope: !4705)
!4710 = !DILocalVariable(name: "pcidev", arg: 2, scope: !4705, file: !3, line: 1194, type: !4051)
!4711 = !DILocation(line: 1194, column: 23, scope: !4705)
!4712 = !DILocalVariable(name: "pci_latency", scope: !4705, file: !3, line: 1196, type: !142)
!4713 = !DILocation(line: 1196, column: 16, scope: !4705)
!4714 = !DILocation(line: 1198, column: 23, scope: !4705)
!4715 = !DILocation(line: 1198, column: 2, scope: !4705)
!4716 = !DILocation(line: 1199, column: 6, scope: !4717)
!4717 = distinct !DILexicalBlock(scope: !4705, file: !3, line: 1199, column: 6)
!4718 = !DILocation(line: 1199, column: 18, scope: !4717)
!4719 = !DILocation(line: 1199, column: 6, scope: !4705)
!4720 = !DILocation(line: 1200, column: 3, scope: !4721)
!4721 = distinct !DILexicalBlock(scope: !4717, file: !3, line: 1199, column: 24)
!4722 = !DILocation(line: 1203, column: 25, scope: !4721)
!4723 = !DILocation(line: 1203, column: 3, scope: !4721)
!4724 = !DILocation(line: 1204, column: 2, scope: !4721)
!4725 = !DILocation(line: 1205, column: 1, scope: !4705)
!4726 = distinct !DISubprogram(name: "request_irq", scope: !4113, file: !4113, line: 157, type: !4727, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !283)
!4727 = !DISubroutineType(types: !4728)
!4728 = !{!139, !7, !4729, !200, !180, !202}
!4729 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !4113, line: 92, baseType: !4730)
!4730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4731, size: 64)
!4731 = !DISubroutineType(types: !4732)
!4732 = !{!4733, !139, !202}
!4733 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !117, line: 17, baseType: !116)
!4734 = !DILocalVariable(name: "irq", arg: 1, scope: !4726, file: !4113, line: 157, type: !7)
!4735 = !DILocation(line: 157, column: 26, scope: !4726)
!4736 = !DILocalVariable(name: "handler", arg: 2, scope: !4726, file: !4113, line: 157, type: !4729)
!4737 = !DILocation(line: 157, column: 45, scope: !4726)
!4738 = !DILocalVariable(name: "flags", arg: 3, scope: !4726, file: !4113, line: 157, type: !200)
!4739 = !DILocation(line: 157, column: 68, scope: !4726)
!4740 = !DILocalVariable(name: "name", arg: 4, scope: !4726, file: !4113, line: 158, type: !180)
!4741 = !DILocation(line: 158, column: 18, scope: !4726)
!4742 = !DILocalVariable(name: "dev", arg: 5, scope: !4726, file: !4113, line: 158, type: !202)
!4743 = !DILocation(line: 158, column: 30, scope: !4726)
!4744 = !DILocation(line: 160, column: 30, scope: !4726)
!4745 = !DILocation(line: 160, column: 35, scope: !4726)
!4746 = !DILocation(line: 160, column: 50, scope: !4726)
!4747 = !DILocation(line: 160, column: 57, scope: !4726)
!4748 = !DILocation(line: 160, column: 63, scope: !4726)
!4749 = !DILocation(line: 160, column: 9, scope: !4726)
!4750 = !DILocation(line: 160, column: 2, scope: !4726)
!4751 = distinct !DISubprogram(name: "rtd_interrupt", scope: !3, file: !3, line: 609, type: !4731, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !283)
!4752 = !DILocalVariable(name: "irq", arg: 1, scope: !4751, file: !3, line: 609, type: !139)
!4753 = !DILocation(line: 609, column: 38, scope: !4751)
!4754 = !DILocalVariable(name: "d", arg: 2, scope: !4751, file: !3, line: 609, type: !202)
!4755 = !DILocation(line: 609, column: 49, scope: !4751)
!4756 = !DILocalVariable(name: "dev", scope: !4751, file: !3, line: 611, type: !189)
!4757 = !DILocation(line: 611, column: 24, scope: !4751)
!4758 = !DILocation(line: 611, column: 30, scope: !4751)
!4759 = !DILocalVariable(name: "s", scope: !4751, file: !3, line: 612, type: !226)
!4760 = !DILocation(line: 612, column: 27, scope: !4751)
!4761 = !DILocation(line: 612, column: 31, scope: !4751)
!4762 = !DILocation(line: 612, column: 36, scope: !4751)
!4763 = !DILocalVariable(name: "devpriv", scope: !4751, file: !3, line: 613, type: !4327)
!4764 = !DILocation(line: 613, column: 22, scope: !4751)
!4765 = !DILocation(line: 613, column: 32, scope: !4751)
!4766 = !DILocation(line: 613, column: 37, scope: !4751)
!4767 = !DILocalVariable(name: "overrun", scope: !4751, file: !3, line: 614, type: !447)
!4768 = !DILocation(line: 614, column: 6, scope: !4751)
!4769 = !DILocalVariable(name: "status", scope: !4751, file: !3, line: 615, type: !889)
!4770 = !DILocation(line: 615, column: 6, scope: !4751)
!4771 = !DILocalVariable(name: "fifo_status", scope: !4751, file: !3, line: 616, type: !889)
!4772 = !DILocation(line: 616, column: 6, scope: !4751)
!4773 = !DILocation(line: 618, column: 7, scope: !4774)
!4774 = distinct !DILexicalBlock(scope: !4751, file: !3, line: 618, column: 6)
!4775 = !DILocation(line: 618, column: 12, scope: !4774)
!4776 = !DILocation(line: 618, column: 6, scope: !4751)
!4777 = !DILocation(line: 619, column: 3, scope: !4774)
!4778 = !DILocation(line: 621, column: 22, scope: !4751)
!4779 = !DILocation(line: 621, column: 27, scope: !4751)
!4780 = !DILocation(line: 621, column: 32, scope: !4751)
!4781 = !DILocation(line: 621, column: 16, scope: !4751)
!4782 = !DILocation(line: 621, column: 14, scope: !4751)
!4783 = !DILocation(line: 623, column: 8, scope: !4784)
!4784 = distinct !DILexicalBlock(scope: !4751, file: !3, line: 623, column: 6)
!4785 = !DILocation(line: 623, column: 20, scope: !4784)
!4786 = !DILocation(line: 623, column: 6, scope: !4751)
!4787 = !DILocation(line: 624, column: 3, scope: !4784)
!4788 = !DILocation(line: 626, column: 17, scope: !4751)
!4789 = !DILocation(line: 626, column: 22, scope: !4751)
!4790 = !DILocation(line: 626, column: 27, scope: !4751)
!4791 = !DILocation(line: 626, column: 11, scope: !4751)
!4792 = !DILocation(line: 626, column: 9, scope: !4751)
!4793 = !DILocation(line: 628, column: 6, scope: !4794)
!4794 = distinct !DILexicalBlock(scope: !4751, file: !3, line: 628, column: 6)
!4795 = !DILocation(line: 628, column: 13, scope: !4794)
!4796 = !DILocation(line: 628, column: 6, scope: !4751)
!4797 = !DILocation(line: 629, column: 3, scope: !4794)
!4798 = !DILocation(line: 631, column: 6, scope: !4799)
!4799 = distinct !DILexicalBlock(scope: !4751, file: !3, line: 631, column: 6)
!4800 = !DILocation(line: 631, column: 13, scope: !4799)
!4801 = !DILocation(line: 631, column: 6, scope: !4751)
!4802 = !DILocation(line: 638, column: 9, scope: !4803)
!4803 = distinct !DILexicalBlock(scope: !4804, file: !3, line: 638, column: 7)
!4804 = distinct !DILexicalBlock(scope: !4799, file: !3, line: 631, column: 35)
!4805 = !DILocation(line: 638, column: 21, scope: !4803)
!4806 = !DILocation(line: 638, column: 7, scope: !4804)
!4807 = !DILocation(line: 640, column: 18, scope: !4808)
!4808 = distinct !DILexicalBlock(scope: !4809, file: !3, line: 640, column: 8)
!4809 = distinct !DILexicalBlock(scope: !4803, file: !3, line: 638, column: 39)
!4810 = !DILocation(line: 640, column: 23, scope: !4808)
!4811 = !DILocation(line: 640, column: 26, scope: !4808)
!4812 = !DILocation(line: 640, column: 35, scope: !4808)
!4813 = !DILocation(line: 640, column: 42, scope: !4808)
!4814 = !DILocation(line: 640, column: 8, scope: !4808)
!4815 = !DILocation(line: 640, column: 47, scope: !4808)
!4816 = !DILocation(line: 640, column: 8, scope: !4809)
!4817 = !DILocation(line: 641, column: 5, scope: !4808)
!4818 = !DILocation(line: 643, column: 8, scope: !4819)
!4819 = distinct !DILexicalBlock(scope: !4809, file: !3, line: 643, column: 8)
!4820 = !DILocation(line: 643, column: 17, scope: !4819)
!4821 = !DILocation(line: 643, column: 26, scope: !4819)
!4822 = !DILocation(line: 643, column: 8, scope: !4809)
!4823 = !DILocation(line: 644, column: 5, scope: !4819)
!4824 = !DILocation(line: 645, column: 3, scope: !4809)
!4825 = !DILocation(line: 645, column: 14, scope: !4826)
!4826 = distinct !DILexicalBlock(scope: !4803, file: !3, line: 645, column: 14)
!4827 = !DILocation(line: 645, column: 23, scope: !4826)
!4828 = !DILocation(line: 645, column: 34, scope: !4826)
!4829 = !DILocation(line: 645, column: 14, scope: !4803)
!4830 = !DILocation(line: 646, column: 8, scope: !4831)
!4831 = distinct !DILexicalBlock(scope: !4832, file: !3, line: 646, column: 8)
!4832 = distinct !DILexicalBlock(scope: !4826, file: !3, line: 645, column: 39)
!4833 = !DILocation(line: 646, column: 20, scope: !4831)
!4834 = !DILocation(line: 646, column: 8, scope: !4832)
!4835 = !DILocation(line: 648, column: 19, scope: !4836)
!4836 = distinct !DILexicalBlock(scope: !4837, file: !3, line: 648, column: 9)
!4837 = distinct !DILexicalBlock(scope: !4831, file: !3, line: 646, column: 40)
!4838 = !DILocation(line: 648, column: 24, scope: !4836)
!4839 = !DILocation(line: 648, column: 27, scope: !4836)
!4840 = !DILocation(line: 648, column: 36, scope: !4836)
!4841 = !DILocation(line: 648, column: 9, scope: !4836)
!4842 = !DILocation(line: 648, column: 48, scope: !4836)
!4843 = !DILocation(line: 648, column: 9, scope: !4837)
!4844 = !DILocation(line: 649, column: 6, scope: !4836)
!4845 = !DILocation(line: 651, column: 9, scope: !4846)
!4846 = distinct !DILexicalBlock(scope: !4837, file: !3, line: 651, column: 9)
!4847 = !DILocation(line: 651, column: 18, scope: !4846)
!4848 = !DILocation(line: 651, column: 27, scope: !4846)
!4849 = !DILocation(line: 651, column: 9, scope: !4837)
!4850 = !DILocation(line: 652, column: 6, scope: !4846)
!4851 = !DILocation(line: 653, column: 4, scope: !4837)
!4852 = !DILocation(line: 654, column: 3, scope: !4832)
!4853 = !DILocation(line: 655, column: 2, scope: !4804)
!4854 = !DILocation(line: 657, column: 18, scope: !4751)
!4855 = !DILocation(line: 657, column: 23, scope: !4751)
!4856 = !DILocation(line: 657, column: 28, scope: !4751)
!4857 = !DILocation(line: 657, column: 12, scope: !4751)
!4858 = !DILocation(line: 657, column: 44, scope: !4751)
!4859 = !DILocation(line: 657, column: 10, scope: !4751)
!4860 = !DILocation(line: 658, column: 6, scope: !4861)
!4861 = distinct !DILexicalBlock(scope: !4751, file: !3, line: 658, column: 6)
!4862 = !DILocation(line: 658, column: 6, scope: !4751)
!4863 = !DILocation(line: 659, column: 3, scope: !4861)
!4864 = !DILocation(line: 662, column: 9, scope: !4751)
!4865 = !DILocation(line: 662, column: 17, scope: !4751)
!4866 = !DILocation(line: 662, column: 22, scope: !4751)
!4867 = !DILocation(line: 662, column: 27, scope: !4751)
!4868 = !DILocation(line: 662, column: 2, scope: !4751)
!4869 = !DILocation(line: 663, column: 8, scope: !4751)
!4870 = !DILocation(line: 663, column: 13, scope: !4751)
!4871 = !DILocation(line: 663, column: 18, scope: !4751)
!4872 = !DILocation(line: 663, column: 2, scope: !4751)
!4873 = !DILocation(line: 665, column: 23, scope: !4751)
!4874 = !DILocation(line: 665, column: 28, scope: !4751)
!4875 = !DILocation(line: 665, column: 2, scope: !4751)
!4876 = !DILocation(line: 667, column: 2, scope: !4751)
!4877 = !DILabel(scope: !4751, name: "xfer_abort", file: !3, line: 669)
!4878 = !DILocation(line: 669, column: 1, scope: !4751)
!4879 = !DILocation(line: 670, column: 2, scope: !4751)
!4880 = !DILocation(line: 670, column: 5, scope: !4751)
!4881 = !DILocation(line: 670, column: 12, scope: !4751)
!4882 = !DILocation(line: 670, column: 19, scope: !4751)
!4883 = !DILabel(scope: !4751, name: "xfer_done", file: !3, line: 672)
!4884 = !DILocation(line: 672, column: 1, scope: !4751)
!4885 = !DILocation(line: 673, column: 2, scope: !4751)
!4886 = !DILocation(line: 673, column: 5, scope: !4751)
!4887 = !DILocation(line: 673, column: 12, scope: !4751)
!4888 = !DILocation(line: 673, column: 19, scope: !4751)
!4889 = !DILocation(line: 676, column: 17, scope: !4751)
!4890 = !DILocation(line: 676, column: 22, scope: !4751)
!4891 = !DILocation(line: 676, column: 27, scope: !4751)
!4892 = !DILocation(line: 676, column: 11, scope: !4751)
!4893 = !DILocation(line: 676, column: 9, scope: !4751)
!4894 = !DILocation(line: 677, column: 9, scope: !4751)
!4895 = !DILocation(line: 677, column: 17, scope: !4751)
!4896 = !DILocation(line: 677, column: 22, scope: !4751)
!4897 = !DILocation(line: 677, column: 27, scope: !4751)
!4898 = !DILocation(line: 677, column: 2, scope: !4751)
!4899 = !DILocation(line: 678, column: 8, scope: !4751)
!4900 = !DILocation(line: 678, column: 13, scope: !4751)
!4901 = !DILocation(line: 678, column: 18, scope: !4751)
!4902 = !DILocation(line: 678, column: 2, scope: !4751)
!4903 = !DILocation(line: 680, column: 22, scope: !4751)
!4904 = !DILocation(line: 680, column: 27, scope: !4751)
!4905 = !DILocation(line: 680, column: 32, scope: !4751)
!4906 = !DILocation(line: 680, column: 16, scope: !4751)
!4907 = !DILocation(line: 680, column: 14, scope: !4751)
!4908 = !DILocation(line: 681, column: 18, scope: !4751)
!4909 = !DILocation(line: 681, column: 23, scope: !4751)
!4910 = !DILocation(line: 681, column: 28, scope: !4751)
!4911 = !DILocation(line: 681, column: 12, scope: !4751)
!4912 = !DILocation(line: 681, column: 44, scope: !4751)
!4913 = !DILocation(line: 681, column: 10, scope: !4751)
!4914 = !DILocation(line: 683, column: 23, scope: !4751)
!4915 = !DILocation(line: 683, column: 28, scope: !4751)
!4916 = !DILocation(line: 683, column: 2, scope: !4751)
!4917 = !DILocation(line: 685, column: 2, scope: !4751)
!4918 = !DILocation(line: 686, column: 1, scope: !4751)
!4919 = distinct !DISubprogram(name: "rtd_ai_rinsn", scope: !3, file: !3, line: 532, type: !224, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !283)
!4920 = !DILocalVariable(name: "dev", arg: 1, scope: !4919, file: !3, line: 532, type: !189)
!4921 = !DILocation(line: 532, column: 47, scope: !4919)
!4922 = !DILocalVariable(name: "s", arg: 2, scope: !4919, file: !3, line: 533, type: !226)
!4923 = !DILocation(line: 533, column: 29, scope: !4919)
!4924 = !DILocalVariable(name: "insn", arg: 3, scope: !4919, file: !3, line: 533, type: !3945)
!4925 = !DILocation(line: 533, column: 52, scope: !4919)
!4926 = !DILocalVariable(name: "data", arg: 4, scope: !4919, file: !3, line: 534, type: !2711)
!4927 = !DILocation(line: 534, column: 18, scope: !4919)
!4928 = !DILocalVariable(name: "devpriv", scope: !4919, file: !3, line: 536, type: !4327)
!4929 = !DILocation(line: 536, column: 22, scope: !4919)
!4930 = !DILocation(line: 536, column: 32, scope: !4919)
!4931 = !DILocation(line: 536, column: 37, scope: !4919)
!4932 = !DILocalVariable(name: "range", scope: !4919, file: !3, line: 537, type: !7)
!4933 = !DILocation(line: 537, column: 15, scope: !4919)
!4934 = !DILocation(line: 537, column: 23, scope: !4919)
!4935 = !DILocalVariable(name: "ret", scope: !4919, file: !3, line: 538, type: !139)
!4936 = !DILocation(line: 538, column: 6, scope: !4919)
!4937 = !DILocalVariable(name: "n", scope: !4919, file: !3, line: 539, type: !139)
!4938 = !DILocation(line: 539, column: 6, scope: !4919)
!4939 = !DILocation(line: 542, column: 12, scope: !4919)
!4940 = !DILocation(line: 542, column: 17, scope: !4919)
!4941 = !DILocation(line: 542, column: 22, scope: !4919)
!4942 = !DILocation(line: 542, column: 2, scope: !4919)
!4943 = !DILocation(line: 545, column: 28, scope: !4919)
!4944 = !DILocation(line: 545, column: 37, scope: !4919)
!4945 = !DILocation(line: 545, column: 43, scope: !4919)
!4946 = !DILocation(line: 545, column: 2, scope: !4919)
!4947 = !DILocation(line: 548, column: 12, scope: !4919)
!4948 = !DILocation(line: 548, column: 17, scope: !4919)
!4949 = !DILocation(line: 548, column: 22, scope: !4919)
!4950 = !DILocation(line: 548, column: 2, scope: !4919)
!4951 = !DILocation(line: 551, column: 9, scope: !4952)
!4952 = distinct !DILexicalBlock(scope: !4919, file: !3, line: 551, column: 2)
!4953 = !DILocation(line: 551, column: 7, scope: !4952)
!4954 = !DILocation(line: 551, column: 14, scope: !4955)
!4955 = distinct !DILexicalBlock(scope: !4952, file: !3, line: 551, column: 2)
!4956 = !DILocation(line: 551, column: 18, scope: !4955)
!4957 = !DILocation(line: 551, column: 24, scope: !4955)
!4958 = !DILocation(line: 551, column: 16, scope: !4955)
!4959 = !DILocation(line: 551, column: 2, scope: !4952)
!4960 = !DILocalVariable(name: "d", scope: !4961, file: !3, line: 552, type: !138)
!4961 = distinct !DILexicalBlock(scope: !4955, file: !3, line: 551, column: 32)
!4962 = !DILocation(line: 552, column: 18, scope: !4961)
!4963 = !DILocation(line: 554, column: 13, scope: !4961)
!4964 = !DILocation(line: 554, column: 18, scope: !4961)
!4965 = !DILocation(line: 554, column: 23, scope: !4961)
!4966 = !DILocation(line: 554, column: 3, scope: !4961)
!4967 = !DILocation(line: 556, column: 24, scope: !4961)
!4968 = !DILocation(line: 556, column: 29, scope: !4961)
!4969 = !DILocation(line: 556, column: 32, scope: !4961)
!4970 = !DILocation(line: 556, column: 9, scope: !4961)
!4971 = !DILocation(line: 556, column: 7, scope: !4961)
!4972 = !DILocation(line: 557, column: 7, scope: !4973)
!4973 = distinct !DILexicalBlock(scope: !4961, file: !3, line: 557, column: 7)
!4974 = !DILocation(line: 557, column: 7, scope: !4961)
!4975 = !DILocation(line: 558, column: 11, scope: !4973)
!4976 = !DILocation(line: 558, column: 4, scope: !4973)
!4977 = !DILocation(line: 561, column: 13, scope: !4961)
!4978 = !DILocation(line: 561, column: 22, scope: !4961)
!4979 = !DILocation(line: 561, column: 27, scope: !4961)
!4980 = !DILocation(line: 561, column: 7, scope: !4961)
!4981 = !DILocation(line: 561, column: 5, scope: !4961)
!4982 = !DILocation(line: 562, column: 5, scope: !4961)
!4983 = !DILocation(line: 565, column: 31, scope: !4984)
!4984 = distinct !DILexicalBlock(scope: !4961, file: !3, line: 565, column: 7)
!4985 = !DILocation(line: 565, column: 34, scope: !4984)
!4986 = !DILocation(line: 565, column: 7, scope: !4984)
!4987 = !DILocation(line: 565, column: 7, scope: !4961)
!4988 = !DILocation(line: 566, column: 28, scope: !4984)
!4989 = !DILocation(line: 566, column: 31, scope: !4984)
!4990 = !DILocation(line: 566, column: 8, scope: !4984)
!4991 = !DILocation(line: 566, column: 6, scope: !4984)
!4992 = !DILocation(line: 566, column: 4, scope: !4984)
!4993 = !DILocation(line: 568, column: 13, scope: !4961)
!4994 = !DILocation(line: 568, column: 17, scope: !4961)
!4995 = !DILocation(line: 568, column: 20, scope: !4961)
!4996 = !DILocation(line: 568, column: 15, scope: !4961)
!4997 = !DILocation(line: 568, column: 3, scope: !4961)
!4998 = !DILocation(line: 568, column: 8, scope: !4961)
!4999 = !DILocation(line: 568, column: 11, scope: !4961)
!5000 = !DILocation(line: 569, column: 2, scope: !4961)
!5001 = !DILocation(line: 551, column: 28, scope: !4955)
!5002 = !DILocation(line: 551, column: 2, scope: !4955)
!5003 = distinct !{!5003, !4959, !5004}
!5004 = !DILocation(line: 569, column: 2, scope: !4952)
!5005 = !DILocation(line: 572, column: 9, scope: !4919)
!5006 = !DILocation(line: 572, column: 2, scope: !4919)
!5007 = !DILocation(line: 573, column: 1, scope: !4919)
!5008 = distinct !DISubprogram(name: "rtd_ai_cmd", scope: !3, file: !3, line: 829, type: !3926, scopeLine: 830, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !283)
!5009 = !DILocalVariable(name: "dev", arg: 1, scope: !5008, file: !3, line: 829, type: !189)
!5010 = !DILocation(line: 829, column: 45, scope: !5008)
!5011 = !DILocalVariable(name: "s", arg: 2, scope: !5008, file: !3, line: 829, type: !226)
!5012 = !DILocation(line: 829, column: 75, scope: !5008)
!5013 = !DILocalVariable(name: "devpriv", scope: !5008, file: !3, line: 831, type: !4327)
!5014 = !DILocation(line: 831, column: 22, scope: !5008)
!5015 = !DILocation(line: 831, column: 32, scope: !5008)
!5016 = !DILocation(line: 831, column: 37, scope: !5008)
!5017 = !DILocalVariable(name: "cmd", scope: !5008, file: !3, line: 832, type: !3932)
!5018 = !DILocation(line: 832, column: 21, scope: !5008)
!5019 = !DILocation(line: 832, column: 28, scope: !5008)
!5020 = !DILocation(line: 832, column: 31, scope: !5008)
!5021 = !DILocation(line: 832, column: 38, scope: !5008)
!5022 = !DILocalVariable(name: "timer", scope: !5008, file: !3, line: 833, type: !139)
!5023 = !DILocation(line: 833, column: 6, scope: !5008)
!5024 = !DILocation(line: 837, column: 12, scope: !5008)
!5025 = !DILocation(line: 837, column: 17, scope: !5008)
!5026 = !DILocation(line: 837, column: 22, scope: !5008)
!5027 = !DILocation(line: 837, column: 2, scope: !5008)
!5028 = !DILocation(line: 838, column: 12, scope: !5008)
!5029 = !DILocation(line: 838, column: 17, scope: !5008)
!5030 = !DILocation(line: 838, column: 22, scope: !5008)
!5031 = !DILocation(line: 838, column: 2, scope: !5008)
!5032 = !DILocation(line: 839, column: 12, scope: !5008)
!5033 = !DILocation(line: 839, column: 17, scope: !5008)
!5034 = !DILocation(line: 839, column: 22, scope: !5008)
!5035 = !DILocation(line: 839, column: 2, scope: !5008)
!5036 = !DILocation(line: 840, column: 12, scope: !5008)
!5037 = !DILocation(line: 840, column: 17, scope: !5008)
!5038 = !DILocation(line: 840, column: 22, scope: !5008)
!5039 = !DILocation(line: 840, column: 2, scope: !5008)
!5040 = !DILocation(line: 841, column: 12, scope: !5008)
!5041 = !DILocation(line: 841, column: 17, scope: !5008)
!5042 = !DILocation(line: 841, column: 22, scope: !5008)
!5043 = !DILocation(line: 841, column: 2, scope: !5008)
!5044 = !DILocation(line: 842, column: 12, scope: !5008)
!5045 = !DILocation(line: 842, column: 17, scope: !5008)
!5046 = !DILocation(line: 842, column: 22, scope: !5008)
!5047 = !DILocation(line: 842, column: 2, scope: !5008)
!5048 = !DILocation(line: 846, column: 28, scope: !5008)
!5049 = !DILocation(line: 846, column: 33, scope: !5008)
!5050 = !DILocation(line: 846, column: 38, scope: !5008)
!5051 = !DILocation(line: 846, column: 52, scope: !5008)
!5052 = !DILocation(line: 846, column: 57, scope: !5008)
!5053 = !DILocation(line: 846, column: 2, scope: !5008)
!5054 = !DILocation(line: 849, column: 6, scope: !5055)
!5055 = distinct !DILexicalBlock(scope: !5008, file: !3, line: 849, column: 6)
!5056 = !DILocation(line: 849, column: 11, scope: !5055)
!5057 = !DILocation(line: 849, column: 24, scope: !5055)
!5058 = !DILocation(line: 849, column: 6, scope: !5008)
!5059 = !DILocation(line: 851, column: 13, scope: !5060)
!5060 = distinct !DILexicalBlock(scope: !5055, file: !3, line: 849, column: 29)
!5061 = !DILocation(line: 851, column: 18, scope: !5060)
!5062 = !DILocation(line: 851, column: 23, scope: !5060)
!5063 = !DILocation(line: 851, column: 3, scope: !5060)
!5064 = !DILocation(line: 853, column: 13, scope: !5060)
!5065 = !DILocation(line: 853, column: 18, scope: !5060)
!5066 = !DILocation(line: 853, column: 23, scope: !5060)
!5067 = !DILocation(line: 853, column: 3, scope: !5060)
!5068 = !DILocation(line: 855, column: 13, scope: !5060)
!5069 = !DILocation(line: 855, column: 18, scope: !5060)
!5070 = !DILocation(line: 855, column: 23, scope: !5060)
!5071 = !DILocation(line: 855, column: 3, scope: !5060)
!5072 = !DILocation(line: 856, column: 2, scope: !5060)
!5073 = !DILocation(line: 858, column: 13, scope: !5074)
!5074 = distinct !DILexicalBlock(scope: !5055, file: !3, line: 856, column: 9)
!5075 = !DILocation(line: 858, column: 18, scope: !5074)
!5076 = !DILocation(line: 858, column: 23, scope: !5074)
!5077 = !DILocation(line: 858, column: 3, scope: !5074)
!5078 = !DILocation(line: 860, column: 13, scope: !5074)
!5079 = !DILocation(line: 860, column: 18, scope: !5074)
!5080 = !DILocation(line: 860, column: 23, scope: !5074)
!5081 = !DILocation(line: 860, column: 3, scope: !5074)
!5082 = !DILocation(line: 862, column: 10, scope: !5008)
!5083 = !DILocation(line: 862, column: 19, scope: !5008)
!5084 = !DILocation(line: 862, column: 26, scope: !5008)
!5085 = !DILocation(line: 862, column: 30, scope: !5008)
!5086 = !DILocation(line: 862, column: 35, scope: !5008)
!5087 = !DILocation(line: 862, column: 45, scope: !5008)
!5088 = !DILocation(line: 862, column: 50, scope: !5008)
!5089 = !DILocation(line: 862, column: 55, scope: !5008)
!5090 = !DILocation(line: 862, column: 2, scope: !5008)
!5091 = !DILocation(line: 864, column: 6, scope: !5092)
!5092 = distinct !DILexicalBlock(scope: !5008, file: !3, line: 864, column: 6)
!5093 = !DILocation(line: 864, column: 11, scope: !5092)
!5094 = !DILocation(line: 864, column: 26, scope: !5092)
!5095 = !DILocation(line: 864, column: 6, scope: !5008)
!5096 = !DILocation(line: 867, column: 7, scope: !5097)
!5097 = distinct !DILexicalBlock(scope: !5098, file: !3, line: 867, column: 7)
!5098 = distinct !DILexicalBlock(scope: !5092, file: !3, line: 864, column: 41)
!5099 = !DILocation(line: 867, column: 12, scope: !5097)
!5100 = !DILocation(line: 867, column: 18, scope: !5097)
!5101 = !DILocation(line: 867, column: 7, scope: !5098)
!5102 = !DILocation(line: 873, column: 26, scope: !5103)
!5103 = distinct !DILexicalBlock(scope: !5097, file: !3, line: 867, column: 35)
!5104 = !DILocation(line: 873, column: 31, scope: !5103)
!5105 = !DILocation(line: 873, column: 4, scope: !5103)
!5106 = !DILocation(line: 873, column: 13, scope: !5103)
!5107 = !DILocation(line: 873, column: 24, scope: !5103)
!5108 = !DILocation(line: 874, column: 4, scope: !5103)
!5109 = !DILocation(line: 874, column: 13, scope: !5103)
!5110 = !DILocation(line: 874, column: 19, scope: !5103)
!5111 = !DILocation(line: 875, column: 3, scope: !5103)
!5112 = !DILocation(line: 878, column: 31, scope: !5113)
!5113 = distinct !DILexicalBlock(scope: !5097, file: !3, line: 875, column: 10)
!5114 = !DILocation(line: 878, column: 36, scope: !5113)
!5115 = !DILocation(line: 878, column: 29, scope: !5113)
!5116 = !DILocation(line: 879, column: 8, scope: !5113)
!5117 = !DILocation(line: 879, column: 13, scope: !5113)
!5118 = !DILocation(line: 878, column: 50, scope: !5113)
!5119 = !DILocation(line: 877, column: 4, scope: !5113)
!5120 = !DILocation(line: 877, column: 13, scope: !5113)
!5121 = !DILocation(line: 877, column: 24, scope: !5113)
!5122 = !DILocation(line: 880, column: 8, scope: !5123)
!5123 = distinct !DILexicalBlock(scope: !5113, file: !3, line: 880, column: 8)
!5124 = !DILocation(line: 880, column: 17, scope: !5123)
!5125 = !DILocation(line: 880, column: 30, scope: !5123)
!5126 = !DILocation(line: 880, column: 35, scope: !5123)
!5127 = !DILocation(line: 880, column: 28, scope: !5123)
!5128 = !DILocation(line: 880, column: 8, scope: !5113)
!5129 = !DILocation(line: 882, column: 27, scope: !5130)
!5130 = distinct !DILexicalBlock(scope: !5123, file: !3, line: 880, column: 49)
!5131 = !DILocation(line: 882, column: 32, scope: !5130)
!5132 = !DILocation(line: 882, column: 5, scope: !5130)
!5133 = !DILocation(line: 882, column: 14, scope: !5130)
!5134 = !DILocation(line: 882, column: 25, scope: !5130)
!5135 = !DILocation(line: 883, column: 4, scope: !5130)
!5136 = !DILocation(line: 885, column: 9, scope: !5137)
!5137 = distinct !DILexicalBlock(scope: !5123, file: !3, line: 883, column: 11)
!5138 = !DILocation(line: 884, column: 5, scope: !5137)
!5139 = !DILocation(line: 884, column: 14, scope: !5137)
!5140 = !DILocation(line: 884, column: 25, scope: !5137)
!5141 = !DILocation(line: 887, column: 28, scope: !5137)
!5142 = !DILocation(line: 887, column: 33, scope: !5137)
!5143 = !DILocation(line: 887, column: 5, scope: !5137)
!5144 = !DILocation(line: 887, column: 14, scope: !5137)
!5145 = !DILocation(line: 887, column: 25, scope: !5137)
!5146 = !DILocation(line: 889, column: 4, scope: !5113)
!5147 = !DILocation(line: 889, column: 13, scope: !5113)
!5148 = !DILocation(line: 889, column: 19, scope: !5113)
!5149 = !DILocation(line: 891, column: 7, scope: !5150)
!5150 = distinct !DILexicalBlock(scope: !5098, file: !3, line: 891, column: 7)
!5151 = !DILocation(line: 891, column: 16, scope: !5150)
!5152 = !DILocation(line: 891, column: 31, scope: !5150)
!5153 = !DILocation(line: 891, column: 40, scope: !5150)
!5154 = !DILocation(line: 891, column: 47, scope: !5150)
!5155 = !DILocation(line: 891, column: 27, scope: !5150)
!5156 = !DILocation(line: 891, column: 7, scope: !5098)
!5157 = !DILocation(line: 893, column: 4, scope: !5158)
!5158 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 891, column: 53)
!5159 = !DILocation(line: 893, column: 13, scope: !5158)
!5160 = !DILocation(line: 893, column: 24, scope: !5158)
!5161 = !DILocation(line: 894, column: 4, scope: !5158)
!5162 = !DILocation(line: 894, column: 13, scope: !5158)
!5163 = !DILocation(line: 894, column: 19, scope: !5158)
!5164 = !DILocation(line: 895, column: 3, scope: !5158)
!5165 = !DILocation(line: 897, column: 12, scope: !5166)
!5166 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 895, column: 10)
!5167 = !DILocation(line: 897, column: 21, scope: !5166)
!5168 = !DILocation(line: 897, column: 32, scope: !5166)
!5169 = !DILocation(line: 897, column: 37, scope: !5166)
!5170 = !DILocation(line: 898, column: 11, scope: !5166)
!5171 = !DILocation(line: 898, column: 16, scope: !5166)
!5172 = !DILocation(line: 898, column: 21, scope: !5166)
!5173 = !DILocation(line: 897, column: 4, scope: !5166)
!5174 = !DILocation(line: 900, column: 2, scope: !5098)
!5175 = !DILocation(line: 901, column: 3, scope: !5176)
!5176 = distinct !DILexicalBlock(scope: !5092, file: !3, line: 900, column: 9)
!5177 = !DILocation(line: 901, column: 12, scope: !5176)
!5178 = !DILocation(line: 901, column: 23, scope: !5176)
!5179 = !DILocation(line: 902, column: 3, scope: !5176)
!5180 = !DILocation(line: 902, column: 12, scope: !5176)
!5181 = !DILocation(line: 902, column: 18, scope: !5176)
!5182 = !DILocation(line: 905, column: 12, scope: !5008)
!5183 = !DILocation(line: 905, column: 17, scope: !5008)
!5184 = !DILocation(line: 905, column: 22, scope: !5008)
!5185 = !DILocation(line: 905, column: 2, scope: !5008)
!5186 = !DILocation(line: 907, column: 12, scope: !5008)
!5187 = !DILocation(line: 907, column: 17, scope: !5008)
!5188 = !DILocation(line: 907, column: 22, scope: !5008)
!5189 = !DILocation(line: 907, column: 2, scope: !5008)
!5190 = !DILocation(line: 912, column: 10, scope: !5008)
!5191 = !DILocation(line: 912, column: 15, scope: !5008)
!5192 = !DILocation(line: 912, column: 2, scope: !5008)
!5193 = !DILocation(line: 914, column: 23, scope: !5194)
!5194 = distinct !DILexicalBlock(scope: !5008, file: !3, line: 912, column: 25)
!5195 = !DILocation(line: 914, column: 28, scope: !5194)
!5196 = !DILocation(line: 914, column: 39, scope: !5194)
!5197 = !DILocation(line: 914, column: 44, scope: !5194)
!5198 = !DILocation(line: 914, column: 37, scope: !5194)
!5199 = !DILocation(line: 914, column: 3, scope: !5194)
!5200 = !DILocation(line: 914, column: 12, scope: !5194)
!5201 = !DILocation(line: 914, column: 21, scope: !5194)
!5202 = !DILocation(line: 915, column: 8, scope: !5203)
!5203 = distinct !DILexicalBlock(scope: !5194, file: !3, line: 915, column: 7)
!5204 = !DILocation(line: 915, column: 17, scope: !5203)
!5205 = !DILocation(line: 915, column: 28, scope: !5203)
!5206 = !DILocation(line: 915, column: 33, scope: !5203)
!5207 = !DILocation(line: 916, column: 8, scope: !5203)
!5208 = !DILocation(line: 916, column: 17, scope: !5203)
!5209 = !DILocation(line: 916, column: 30, scope: !5203)
!5210 = !DILocation(line: 916, column: 39, scope: !5203)
!5211 = !DILocation(line: 916, column: 28, scope: !5203)
!5212 = !DILocation(line: 915, column: 7, scope: !5194)
!5213 = !DILocation(line: 917, column: 26, scope: !5214)
!5214 = distinct !DILexicalBlock(scope: !5203, file: !3, line: 916, column: 50)
!5215 = !DILocation(line: 917, column: 35, scope: !5214)
!5216 = !DILocation(line: 917, column: 4, scope: !5214)
!5217 = !DILocation(line: 917, column: 13, scope: !5214)
!5218 = !DILocation(line: 917, column: 24, scope: !5214)
!5219 = !DILocation(line: 918, column: 3, scope: !5214)
!5220 = !DILocation(line: 919, column: 3, scope: !5194)
!5221 = !DILocation(line: 922, column: 3, scope: !5194)
!5222 = !DILocation(line: 922, column: 12, scope: !5194)
!5223 = !DILocation(line: 922, column: 21, scope: !5194)
!5224 = !DILocation(line: 923, column: 3, scope: !5194)
!5225 = !DILocation(line: 927, column: 10, scope: !5008)
!5226 = !DILocation(line: 927, column: 15, scope: !5008)
!5227 = !DILocation(line: 927, column: 2, scope: !5008)
!5228 = !DILocation(line: 929, column: 28, scope: !5229)
!5229 = distinct !DILexicalBlock(scope: !5008, file: !3, line: 927, column: 31)
!5230 = !DILocation(line: 929, column: 33, scope: !5229)
!5231 = !DILocation(line: 929, column: 11, scope: !5229)
!5232 = !DILocation(line: 929, column: 9, scope: !5229)
!5233 = !DILocation(line: 932, column: 10, scope: !5229)
!5234 = !DILocation(line: 932, column: 16, scope: !5229)
!5235 = !DILocation(line: 932, column: 28, scope: !5229)
!5236 = !DILocation(line: 932, column: 33, scope: !5229)
!5237 = !DILocation(line: 932, column: 38, scope: !5229)
!5238 = !DILocation(line: 932, column: 3, scope: !5229)
!5239 = !DILocation(line: 934, column: 3, scope: !5229)
!5240 = !DILocation(line: 938, column: 13, scope: !5229)
!5241 = !DILocation(line: 938, column: 18, scope: !5229)
!5242 = !DILocation(line: 938, column: 23, scope: !5229)
!5243 = !DILocation(line: 938, column: 3, scope: !5229)
!5244 = !DILocation(line: 939, column: 3, scope: !5229)
!5245 = !DILocation(line: 943, column: 10, scope: !5008)
!5246 = !DILocation(line: 943, column: 15, scope: !5008)
!5247 = !DILocation(line: 943, column: 2, scope: !5008)
!5248 = !DILocation(line: 945, column: 7, scope: !5249)
!5249 = distinct !DILexicalBlock(scope: !5250, file: !3, line: 945, column: 7)
!5250 = distinct !DILexicalBlock(scope: !5008, file: !3, line: 943, column: 28)
!5251 = !DILocation(line: 945, column: 12, scope: !5249)
!5252 = !DILocation(line: 945, column: 25, scope: !5249)
!5253 = !DILocation(line: 945, column: 7, scope: !5250)
!5254 = !DILocation(line: 947, column: 29, scope: !5255)
!5255 = distinct !DILexicalBlock(scope: !5249, file: !3, line: 945, column: 30)
!5256 = !DILocation(line: 947, column: 34, scope: !5255)
!5257 = !DILocation(line: 947, column: 12, scope: !5255)
!5258 = !DILocation(line: 947, column: 10, scope: !5255)
!5259 = !DILocation(line: 950, column: 11, scope: !5255)
!5260 = !DILocation(line: 950, column: 17, scope: !5255)
!5261 = !DILocation(line: 950, column: 26, scope: !5255)
!5262 = !DILocation(line: 950, column: 31, scope: !5255)
!5263 = !DILocation(line: 950, column: 36, scope: !5255)
!5264 = !DILocation(line: 950, column: 4, scope: !5255)
!5265 = !DILocation(line: 951, column: 3, scope: !5255)
!5266 = !DILocation(line: 953, column: 3, scope: !5250)
!5267 = !DILocation(line: 957, column: 13, scope: !5250)
!5268 = !DILocation(line: 957, column: 18, scope: !5250)
!5269 = !DILocation(line: 957, column: 23, scope: !5250)
!5270 = !DILocation(line: 957, column: 3, scope: !5250)
!5271 = !DILocation(line: 958, column: 3, scope: !5250)
!5272 = !DILocation(line: 966, column: 13, scope: !5008)
!5273 = !DILocation(line: 966, column: 18, scope: !5008)
!5274 = !DILocation(line: 966, column: 23, scope: !5008)
!5275 = !DILocation(line: 966, column: 2, scope: !5008)
!5276 = !DILocation(line: 967, column: 8, scope: !5008)
!5277 = !DILocation(line: 967, column: 13, scope: !5008)
!5278 = !DILocation(line: 967, column: 18, scope: !5008)
!5279 = !DILocation(line: 967, column: 2, scope: !5008)
!5280 = !DILocation(line: 971, column: 29, scope: !5008)
!5281 = !DILocation(line: 971, column: 34, scope: !5008)
!5282 = !DILocation(line: 971, column: 39, scope: !5008)
!5283 = !DILocation(line: 971, column: 2, scope: !5008)
!5284 = !DILocation(line: 975, column: 8, scope: !5008)
!5285 = !DILocation(line: 975, column: 13, scope: !5008)
!5286 = !DILocation(line: 975, column: 18, scope: !5008)
!5287 = !DILocation(line: 975, column: 2, scope: !5008)
!5288 = !DILocation(line: 976, column: 2, scope: !5008)
!5289 = distinct !DISubprogram(name: "rtd_ai_cmdtest", scope: !3, file: !3, line: 688, type: !3930, scopeLine: 690, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !283)
!5290 = !DILocalVariable(name: "dev", arg: 1, scope: !5289, file: !3, line: 688, type: !189)
!5291 = !DILocation(line: 688, column: 49, scope: !5289)
!5292 = !DILocalVariable(name: "s", arg: 2, scope: !5289, file: !3, line: 689, type: !226)
!5293 = !DILocation(line: 689, column: 31, scope: !5289)
!5294 = !DILocalVariable(name: "cmd", arg: 3, scope: !5289, file: !3, line: 689, type: !3932)
!5295 = !DILocation(line: 689, column: 53, scope: !5289)
!5296 = !DILocalVariable(name: "err", scope: !5289, file: !3, line: 691, type: !139)
!5297 = !DILocation(line: 691, column: 6, scope: !5289)
!5298 = !DILocalVariable(name: "arg", scope: !5289, file: !3, line: 692, type: !7)
!5299 = !DILocation(line: 692, column: 15, scope: !5289)
!5300 = !DILocation(line: 696, column: 35, scope: !5289)
!5301 = !DILocation(line: 696, column: 40, scope: !5289)
!5302 = !DILocation(line: 696, column: 9, scope: !5289)
!5303 = !DILocation(line: 696, column: 6, scope: !5289)
!5304 = !DILocation(line: 697, column: 35, scope: !5289)
!5305 = !DILocation(line: 697, column: 40, scope: !5289)
!5306 = !DILocation(line: 697, column: 9, scope: !5289)
!5307 = !DILocation(line: 697, column: 6, scope: !5289)
!5308 = !DILocation(line: 699, column: 35, scope: !5289)
!5309 = !DILocation(line: 699, column: 40, scope: !5289)
!5310 = !DILocation(line: 699, column: 9, scope: !5289)
!5311 = !DILocation(line: 699, column: 6, scope: !5289)
!5312 = !DILocation(line: 701, column: 35, scope: !5289)
!5313 = !DILocation(line: 701, column: 40, scope: !5289)
!5314 = !DILocation(line: 701, column: 9, scope: !5289)
!5315 = !DILocation(line: 701, column: 6, scope: !5289)
!5316 = !DILocation(line: 702, column: 35, scope: !5289)
!5317 = !DILocation(line: 702, column: 40, scope: !5289)
!5318 = !DILocation(line: 702, column: 9, scope: !5289)
!5319 = !DILocation(line: 702, column: 6, scope: !5289)
!5320 = !DILocation(line: 704, column: 6, scope: !5321)
!5321 = distinct !DILexicalBlock(scope: !5289, file: !3, line: 704, column: 6)
!5322 = !DILocation(line: 704, column: 6, scope: !5289)
!5323 = !DILocation(line: 705, column: 3, scope: !5321)
!5324 = !DILocation(line: 709, column: 40, scope: !5289)
!5325 = !DILocation(line: 709, column: 45, scope: !5289)
!5326 = !DILocation(line: 709, column: 9, scope: !5289)
!5327 = !DILocation(line: 709, column: 6, scope: !5289)
!5328 = !DILocation(line: 710, column: 40, scope: !5289)
!5329 = !DILocation(line: 710, column: 45, scope: !5289)
!5330 = !DILocation(line: 710, column: 9, scope: !5289)
!5331 = !DILocation(line: 710, column: 6, scope: !5289)
!5332 = !DILocation(line: 711, column: 40, scope: !5289)
!5333 = !DILocation(line: 711, column: 45, scope: !5289)
!5334 = !DILocation(line: 711, column: 9, scope: !5289)
!5335 = !DILocation(line: 711, column: 6, scope: !5289)
!5336 = !DILocation(line: 715, column: 6, scope: !5337)
!5337 = distinct !DILexicalBlock(scope: !5289, file: !3, line: 715, column: 6)
!5338 = !DILocation(line: 715, column: 6, scope: !5289)
!5339 = !DILocation(line: 716, column: 3, scope: !5337)
!5340 = !DILocation(line: 720, column: 38, scope: !5289)
!5341 = !DILocation(line: 720, column: 43, scope: !5289)
!5342 = !DILocation(line: 720, column: 9, scope: !5289)
!5343 = !DILocation(line: 720, column: 6, scope: !5289)
!5344 = !DILocation(line: 722, column: 6, scope: !5345)
!5345 = distinct !DILexicalBlock(scope: !5289, file: !3, line: 722, column: 6)
!5346 = !DILocation(line: 722, column: 11, scope: !5345)
!5347 = !DILocation(line: 722, column: 26, scope: !5345)
!5348 = !DILocation(line: 722, column: 6, scope: !5289)
!5349 = !DILocation(line: 724, column: 7, scope: !5350)
!5350 = distinct !DILexicalBlock(scope: !5351, file: !3, line: 724, column: 7)
!5351 = distinct !DILexicalBlock(scope: !5345, file: !3, line: 722, column: 41)
!5352 = !DILocation(line: 724, column: 12, scope: !5350)
!5353 = !DILocation(line: 724, column: 25, scope: !5350)
!5354 = !DILocation(line: 724, column: 7, scope: !5351)
!5355 = !DILocation(line: 725, column: 38, scope: !5356)
!5356 = distinct !DILexicalBlock(scope: !5357, file: !3, line: 725, column: 8)
!5357 = distinct !DILexicalBlock(scope: !5350, file: !3, line: 724, column: 31)
!5358 = !DILocation(line: 725, column: 43, scope: !5356)
!5359 = !DILocation(line: 725, column: 8, scope: !5356)
!5360 = !DILocation(line: 725, column: 8, scope: !5357)
!5361 = !DILocation(line: 727, column: 22, scope: !5362)
!5362 = distinct !DILexicalBlock(scope: !5356, file: !3, line: 726, column: 27)
!5363 = !DILocation(line: 727, column: 27, scope: !5362)
!5364 = !DILocation(line: 727, column: 5, scope: !5362)
!5365 = !DILocation(line: 729, column: 9, scope: !5362)
!5366 = !DILocation(line: 730, column: 4, scope: !5362)
!5367 = !DILocation(line: 731, column: 38, scope: !5368)
!5368 = distinct !DILexicalBlock(scope: !5357, file: !3, line: 731, column: 8)
!5369 = !DILocation(line: 731, column: 43, scope: !5368)
!5370 = !DILocation(line: 731, column: 8, scope: !5368)
!5371 = !DILocation(line: 731, column: 8, scope: !5357)
!5372 = !DILocation(line: 733, column: 22, scope: !5373)
!5373 = distinct !DILexicalBlock(scope: !5368, file: !3, line: 732, column: 27)
!5374 = !DILocation(line: 733, column: 27, scope: !5373)
!5375 = !DILocation(line: 733, column: 5, scope: !5373)
!5376 = !DILocation(line: 735, column: 9, scope: !5373)
!5377 = !DILocation(line: 736, column: 4, scope: !5373)
!5378 = !DILocation(line: 737, column: 3, scope: !5357)
!5379 = !DILocation(line: 738, column: 38, scope: !5380)
!5380 = distinct !DILexicalBlock(scope: !5381, file: !3, line: 738, column: 8)
!5381 = distinct !DILexicalBlock(scope: !5350, file: !3, line: 737, column: 10)
!5382 = !DILocation(line: 738, column: 43, scope: !5380)
!5383 = !DILocation(line: 738, column: 8, scope: !5380)
!5384 = !DILocation(line: 738, column: 8, scope: !5381)
!5385 = !DILocation(line: 740, column: 22, scope: !5386)
!5386 = distinct !DILexicalBlock(scope: !5380, file: !3, line: 739, column: 25)
!5387 = !DILocation(line: 740, column: 27, scope: !5386)
!5388 = !DILocation(line: 740, column: 5, scope: !5386)
!5389 = !DILocation(line: 742, column: 9, scope: !5386)
!5390 = !DILocation(line: 743, column: 4, scope: !5386)
!5391 = !DILocation(line: 744, column: 38, scope: !5392)
!5392 = distinct !DILexicalBlock(scope: !5381, file: !3, line: 744, column: 8)
!5393 = !DILocation(line: 744, column: 43, scope: !5392)
!5394 = !DILocation(line: 744, column: 8, scope: !5392)
!5395 = !DILocation(line: 744, column: 8, scope: !5381)
!5396 = !DILocation(line: 746, column: 22, scope: !5397)
!5397 = distinct !DILexicalBlock(scope: !5392, file: !3, line: 745, column: 25)
!5398 = !DILocation(line: 746, column: 27, scope: !5397)
!5399 = !DILocation(line: 746, column: 5, scope: !5397)
!5400 = !DILocation(line: 748, column: 9, scope: !5397)
!5401 = !DILocation(line: 749, column: 4, scope: !5397)
!5402 = !DILocation(line: 751, column: 2, scope: !5351)
!5403 = !DILocation(line: 755, column: 40, scope: !5404)
!5404 = distinct !DILexicalBlock(scope: !5345, file: !3, line: 751, column: 9)
!5405 = !DILocation(line: 755, column: 45, scope: !5404)
!5406 = !DILocation(line: 755, column: 10, scope: !5404)
!5407 = !DILocation(line: 755, column: 7, scope: !5404)
!5408 = !DILocation(line: 758, column: 6, scope: !5409)
!5409 = distinct !DILexicalBlock(scope: !5289, file: !3, line: 758, column: 6)
!5410 = !DILocation(line: 758, column: 11, scope: !5409)
!5411 = !DILocation(line: 758, column: 23, scope: !5409)
!5412 = !DILocation(line: 758, column: 6, scope: !5289)
!5413 = !DILocation(line: 759, column: 7, scope: !5414)
!5414 = distinct !DILexicalBlock(scope: !5415, file: !3, line: 759, column: 7)
!5415 = distinct !DILexicalBlock(scope: !5409, file: !3, line: 758, column: 38)
!5416 = !DILocation(line: 759, column: 12, scope: !5414)
!5417 = !DILocation(line: 759, column: 25, scope: !5414)
!5418 = !DILocation(line: 759, column: 7, scope: !5415)
!5419 = !DILocation(line: 760, column: 38, scope: !5420)
!5420 = distinct !DILexicalBlock(scope: !5421, file: !3, line: 760, column: 8)
!5421 = distinct !DILexicalBlock(scope: !5414, file: !3, line: 759, column: 31)
!5422 = !DILocation(line: 760, column: 43, scope: !5420)
!5423 = !DILocation(line: 760, column: 8, scope: !5420)
!5424 = !DILocation(line: 760, column: 8, scope: !5421)
!5425 = !DILocation(line: 762, column: 22, scope: !5426)
!5426 = distinct !DILexicalBlock(scope: !5420, file: !3, line: 761, column: 27)
!5427 = !DILocation(line: 762, column: 27, scope: !5426)
!5428 = !DILocation(line: 762, column: 5, scope: !5426)
!5429 = !DILocation(line: 764, column: 9, scope: !5426)
!5430 = !DILocation(line: 765, column: 4, scope: !5426)
!5431 = !DILocation(line: 766, column: 38, scope: !5432)
!5432 = distinct !DILexicalBlock(scope: !5421, file: !3, line: 766, column: 8)
!5433 = !DILocation(line: 766, column: 43, scope: !5432)
!5434 = !DILocation(line: 766, column: 8, scope: !5432)
!5435 = !DILocation(line: 766, column: 8, scope: !5421)
!5436 = !DILocation(line: 768, column: 22, scope: !5437)
!5437 = distinct !DILexicalBlock(scope: !5432, file: !3, line: 767, column: 27)
!5438 = !DILocation(line: 768, column: 27, scope: !5437)
!5439 = !DILocation(line: 768, column: 5, scope: !5437)
!5440 = !DILocation(line: 770, column: 9, scope: !5437)
!5441 = !DILocation(line: 771, column: 4, scope: !5437)
!5442 = !DILocation(line: 772, column: 3, scope: !5421)
!5443 = !DILocation(line: 773, column: 38, scope: !5444)
!5444 = distinct !DILexicalBlock(scope: !5445, file: !3, line: 773, column: 8)
!5445 = distinct !DILexicalBlock(scope: !5414, file: !3, line: 772, column: 10)
!5446 = !DILocation(line: 773, column: 43, scope: !5444)
!5447 = !DILocation(line: 773, column: 8, scope: !5444)
!5448 = !DILocation(line: 773, column: 8, scope: !5445)
!5449 = !DILocation(line: 775, column: 22, scope: !5450)
!5450 = distinct !DILexicalBlock(scope: !5444, file: !3, line: 774, column: 25)
!5451 = !DILocation(line: 775, column: 27, scope: !5450)
!5452 = !DILocation(line: 775, column: 5, scope: !5450)
!5453 = !DILocation(line: 777, column: 9, scope: !5450)
!5454 = !DILocation(line: 778, column: 4, scope: !5450)
!5455 = !DILocation(line: 779, column: 38, scope: !5456)
!5456 = distinct !DILexicalBlock(scope: !5445, file: !3, line: 779, column: 8)
!5457 = !DILocation(line: 779, column: 43, scope: !5456)
!5458 = !DILocation(line: 779, column: 8, scope: !5456)
!5459 = !DILocation(line: 779, column: 8, scope: !5445)
!5460 = !DILocation(line: 781, column: 22, scope: !5461)
!5461 = distinct !DILexicalBlock(scope: !5456, file: !3, line: 780, column: 25)
!5462 = !DILocation(line: 781, column: 27, scope: !5461)
!5463 = !DILocation(line: 781, column: 5, scope: !5461)
!5464 = !DILocation(line: 783, column: 9, scope: !5461)
!5465 = !DILocation(line: 784, column: 4, scope: !5461)
!5466 = !DILocation(line: 786, column: 2, scope: !5415)
!5467 = !DILocation(line: 789, column: 40, scope: !5468)
!5468 = distinct !DILexicalBlock(scope: !5409, file: !3, line: 786, column: 9)
!5469 = !DILocation(line: 789, column: 45, scope: !5468)
!5470 = !DILocation(line: 789, column: 10, scope: !5468)
!5471 = !DILocation(line: 789, column: 7, scope: !5468)
!5472 = !DILocation(line: 792, column: 38, scope: !5289)
!5473 = !DILocation(line: 792, column: 43, scope: !5289)
!5474 = !DILocation(line: 793, column: 9, scope: !5289)
!5475 = !DILocation(line: 793, column: 14, scope: !5289)
!5476 = !DILocation(line: 792, column: 9, scope: !5289)
!5477 = !DILocation(line: 792, column: 6, scope: !5289)
!5478 = !DILocation(line: 795, column: 6, scope: !5479)
!5479 = distinct !DILexicalBlock(scope: !5289, file: !3, line: 795, column: 6)
!5480 = !DILocation(line: 795, column: 11, scope: !5479)
!5481 = !DILocation(line: 795, column: 20, scope: !5479)
!5482 = !DILocation(line: 795, column: 6, scope: !5289)
!5483 = !DILocation(line: 796, column: 40, scope: !5479)
!5484 = !DILocation(line: 796, column: 45, scope: !5479)
!5485 = !DILocation(line: 796, column: 10, scope: !5479)
!5486 = !DILocation(line: 796, column: 7, scope: !5479)
!5487 = !DILocation(line: 796, column: 3, scope: !5479)
!5488 = !DILocation(line: 798, column: 39, scope: !5479)
!5489 = !DILocation(line: 798, column: 44, scope: !5479)
!5490 = !DILocation(line: 798, column: 10, scope: !5479)
!5491 = !DILocation(line: 798, column: 7, scope: !5479)
!5492 = !DILocation(line: 800, column: 6, scope: !5493)
!5493 = distinct !DILexicalBlock(scope: !5289, file: !3, line: 800, column: 6)
!5494 = !DILocation(line: 800, column: 6, scope: !5289)
!5495 = !DILocation(line: 801, column: 3, scope: !5493)
!5496 = !DILocation(line: 805, column: 6, scope: !5497)
!5497 = distinct !DILexicalBlock(scope: !5289, file: !3, line: 805, column: 6)
!5498 = !DILocation(line: 805, column: 11, scope: !5497)
!5499 = !DILocation(line: 805, column: 26, scope: !5497)
!5500 = !DILocation(line: 805, column: 6, scope: !5289)
!5501 = !DILocation(line: 806, column: 9, scope: !5502)
!5502 = distinct !DILexicalBlock(scope: !5497, file: !3, line: 805, column: 41)
!5503 = !DILocation(line: 806, column: 14, scope: !5502)
!5504 = !DILocation(line: 806, column: 7, scope: !5502)
!5505 = !DILocation(line: 807, column: 25, scope: !5502)
!5506 = !DILocation(line: 807, column: 30, scope: !5502)
!5507 = !DILocation(line: 807, column: 3, scope: !5502)
!5508 = !DILocation(line: 808, column: 39, scope: !5502)
!5509 = !DILocation(line: 808, column: 44, scope: !5502)
!5510 = !DILocation(line: 808, column: 60, scope: !5502)
!5511 = !DILocation(line: 808, column: 10, scope: !5502)
!5512 = !DILocation(line: 808, column: 7, scope: !5502)
!5513 = !DILocation(line: 809, column: 2, scope: !5502)
!5514 = !DILocation(line: 811, column: 6, scope: !5515)
!5515 = distinct !DILexicalBlock(scope: !5289, file: !3, line: 811, column: 6)
!5516 = !DILocation(line: 811, column: 11, scope: !5515)
!5517 = !DILocation(line: 811, column: 23, scope: !5515)
!5518 = !DILocation(line: 811, column: 6, scope: !5289)
!5519 = !DILocation(line: 812, column: 9, scope: !5520)
!5520 = distinct !DILexicalBlock(scope: !5515, file: !3, line: 811, column: 38)
!5521 = !DILocation(line: 812, column: 14, scope: !5520)
!5522 = !DILocation(line: 812, column: 7, scope: !5520)
!5523 = !DILocation(line: 813, column: 25, scope: !5520)
!5524 = !DILocation(line: 813, column: 30, scope: !5520)
!5525 = !DILocation(line: 813, column: 3, scope: !5520)
!5526 = !DILocation(line: 814, column: 39, scope: !5520)
!5527 = !DILocation(line: 814, column: 44, scope: !5520)
!5528 = !DILocation(line: 814, column: 57, scope: !5520)
!5529 = !DILocation(line: 814, column: 10, scope: !5520)
!5530 = !DILocation(line: 814, column: 7, scope: !5520)
!5531 = !DILocation(line: 816, column: 7, scope: !5532)
!5532 = distinct !DILexicalBlock(scope: !5520, file: !3, line: 816, column: 7)
!5533 = !DILocation(line: 816, column: 12, scope: !5532)
!5534 = !DILocation(line: 816, column: 27, scope: !5532)
!5535 = !DILocation(line: 816, column: 7, scope: !5520)
!5536 = !DILocation(line: 817, column: 10, scope: !5537)
!5537 = distinct !DILexicalBlock(scope: !5532, file: !3, line: 816, column: 42)
!5538 = !DILocation(line: 817, column: 15, scope: !5537)
!5539 = !DILocation(line: 817, column: 29, scope: !5537)
!5540 = !DILocation(line: 817, column: 34, scope: !5537)
!5541 = !DILocation(line: 817, column: 27, scope: !5537)
!5542 = !DILocation(line: 817, column: 8, scope: !5537)
!5543 = !DILocation(line: 819, column: 7, scope: !5537)
!5544 = !DILocation(line: 819, column: 12, scope: !5537)
!5545 = !DILocation(line: 819, column: 28, scope: !5537)
!5546 = !DILocation(line: 818, column: 11, scope: !5537)
!5547 = !DILocation(line: 818, column: 8, scope: !5537)
!5548 = !DILocation(line: 820, column: 3, scope: !5537)
!5549 = !DILocation(line: 821, column: 2, scope: !5520)
!5550 = !DILocation(line: 823, column: 6, scope: !5551)
!5551 = distinct !DILexicalBlock(scope: !5289, file: !3, line: 823, column: 6)
!5552 = !DILocation(line: 823, column: 6, scope: !5289)
!5553 = !DILocation(line: 824, column: 3, scope: !5551)
!5554 = !DILocation(line: 826, column: 2, scope: !5289)
!5555 = !DILocation(line: 827, column: 1, scope: !5289)
!5556 = distinct !DISubprogram(name: "rtd_ai_cancel", scope: !3, file: !3, line: 979, type: !3926, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !283)
!5557 = !DILocalVariable(name: "dev", arg: 1, scope: !5556, file: !3, line: 979, type: !189)
!5558 = !DILocation(line: 979, column: 48, scope: !5556)
!5559 = !DILocalVariable(name: "s", arg: 2, scope: !5556, file: !3, line: 979, type: !226)
!5560 = !DILocation(line: 979, column: 78, scope: !5556)
!5561 = !DILocalVariable(name: "devpriv", scope: !5556, file: !3, line: 981, type: !4327)
!5562 = !DILocation(line: 981, column: 22, scope: !5556)
!5563 = !DILocation(line: 981, column: 32, scope: !5556)
!5564 = !DILocation(line: 981, column: 37, scope: !5556)
!5565 = !DILocation(line: 984, column: 12, scope: !5556)
!5566 = !DILocation(line: 984, column: 17, scope: !5556)
!5567 = !DILocation(line: 984, column: 22, scope: !5556)
!5568 = !DILocation(line: 984, column: 2, scope: !5556)
!5569 = !DILocation(line: 985, column: 12, scope: !5556)
!5570 = !DILocation(line: 985, column: 17, scope: !5556)
!5571 = !DILocation(line: 985, column: 22, scope: !5556)
!5572 = !DILocation(line: 985, column: 2, scope: !5556)
!5573 = !DILocation(line: 986, column: 12, scope: !5556)
!5574 = !DILocation(line: 986, column: 17, scope: !5556)
!5575 = !DILocation(line: 986, column: 22, scope: !5556)
!5576 = !DILocation(line: 986, column: 2, scope: !5556)
!5577 = !DILocation(line: 987, column: 12, scope: !5556)
!5578 = !DILocation(line: 987, column: 17, scope: !5556)
!5579 = !DILocation(line: 987, column: 22, scope: !5556)
!5580 = !DILocation(line: 987, column: 2, scope: !5556)
!5581 = !DILocation(line: 988, column: 2, scope: !5556)
!5582 = !DILocation(line: 988, column: 11, scope: !5556)
!5583 = !DILocation(line: 988, column: 20, scope: !5556)
!5584 = !DILocation(line: 989, column: 12, scope: !5556)
!5585 = !DILocation(line: 989, column: 17, scope: !5556)
!5586 = !DILocation(line: 989, column: 22, scope: !5556)
!5587 = !DILocation(line: 989, column: 2, scope: !5556)
!5588 = !DILocation(line: 990, column: 2, scope: !5556)
!5589 = distinct !DISubprogram(name: "rtd_ao_insn_write", scope: !3, file: !3, line: 1008, type: !224, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !283)
!5590 = !DILocalVariable(name: "dev", arg: 1, scope: !5589, file: !3, line: 1008, type: !189)
!5591 = !DILocation(line: 1008, column: 52, scope: !5589)
!5592 = !DILocalVariable(name: "s", arg: 2, scope: !5589, file: !3, line: 1009, type: !226)
!5593 = !DILocation(line: 1009, column: 34, scope: !5589)
!5594 = !DILocalVariable(name: "insn", arg: 3, scope: !5589, file: !3, line: 1010, type: !3945)
!5595 = !DILocation(line: 1010, column: 29, scope: !5589)
!5596 = !DILocalVariable(name: "data", arg: 4, scope: !5589, file: !3, line: 1011, type: !2711)
!5597 = !DILocation(line: 1011, column: 23, scope: !5589)
!5598 = !DILocalVariable(name: "devpriv", scope: !5589, file: !3, line: 1013, type: !4327)
!5599 = !DILocation(line: 1013, column: 22, scope: !5589)
!5600 = !DILocation(line: 1013, column: 32, scope: !5589)
!5601 = !DILocation(line: 1013, column: 37, scope: !5589)
!5602 = !DILocalVariable(name: "chan", scope: !5589, file: !3, line: 1014, type: !7)
!5603 = !DILocation(line: 1014, column: 15, scope: !5589)
!5604 = !DILocation(line: 1014, column: 22, scope: !5589)
!5605 = !DILocalVariable(name: "range", scope: !5589, file: !3, line: 1015, type: !7)
!5606 = !DILocation(line: 1015, column: 15, scope: !5589)
!5607 = !DILocation(line: 1015, column: 23, scope: !5589)
!5608 = !DILocalVariable(name: "ret", scope: !5589, file: !3, line: 1016, type: !139)
!5609 = !DILocation(line: 1016, column: 6, scope: !5589)
!5610 = !DILocalVariable(name: "i", scope: !5589, file: !3, line: 1017, type: !139)
!5611 = !DILocation(line: 1017, column: 6, scope: !5589)
!5612 = !DILocation(line: 1020, column: 9, scope: !5589)
!5613 = !DILocation(line: 1020, column: 15, scope: !5589)
!5614 = !DILocation(line: 1020, column: 20, scope: !5589)
!5615 = !DILocation(line: 1020, column: 25, scope: !5589)
!5616 = !DILocation(line: 1020, column: 32, scope: !5589)
!5617 = !DILocation(line: 1020, column: 30, scope: !5589)
!5618 = !DILocation(line: 1020, column: 2, scope: !5589)
!5619 = !DILocation(line: 1022, column: 9, scope: !5620)
!5620 = distinct !DILexicalBlock(scope: !5589, file: !3, line: 1022, column: 2)
!5621 = !DILocation(line: 1022, column: 7, scope: !5620)
!5622 = !DILocation(line: 1022, column: 14, scope: !5623)
!5623 = distinct !DILexicalBlock(scope: !5620, file: !3, line: 1022, column: 2)
!5624 = !DILocation(line: 1022, column: 18, scope: !5623)
!5625 = !DILocation(line: 1022, column: 24, scope: !5623)
!5626 = !DILocation(line: 1022, column: 16, scope: !5623)
!5627 = !DILocation(line: 1022, column: 2, scope: !5620)
!5628 = !DILocalVariable(name: "val", scope: !5629, file: !3, line: 1023, type: !7)
!5629 = distinct !DILexicalBlock(scope: !5623, file: !3, line: 1022, column: 32)
!5630 = !DILocation(line: 1023, column: 16, scope: !5629)
!5631 = !DILocation(line: 1023, column: 22, scope: !5629)
!5632 = !DILocation(line: 1023, column: 27, scope: !5629)
!5633 = !DILocation(line: 1026, column: 31, scope: !5634)
!5634 = distinct !DILexicalBlock(scope: !5629, file: !3, line: 1026, column: 7)
!5635 = !DILocation(line: 1026, column: 34, scope: !5634)
!5636 = !DILocation(line: 1026, column: 7, scope: !5634)
!5637 = !DILocation(line: 1026, column: 7, scope: !5629)
!5638 = !DILocation(line: 1027, column: 30, scope: !5639)
!5639 = distinct !DILexicalBlock(scope: !5634, file: !3, line: 1026, column: 42)
!5640 = !DILocation(line: 1027, column: 33, scope: !5639)
!5641 = !DILocation(line: 1027, column: 10, scope: !5639)
!5642 = !DILocation(line: 1027, column: 8, scope: !5639)
!5643 = !DILocation(line: 1028, column: 12, scope: !5639)
!5644 = !DILocation(line: 1028, column: 20, scope: !5639)
!5645 = !DILocation(line: 1028, column: 23, scope: !5639)
!5646 = !DILocation(line: 1028, column: 31, scope: !5639)
!5647 = !DILocation(line: 1028, column: 36, scope: !5639)
!5648 = !DILocation(line: 1028, column: 16, scope: !5639)
!5649 = !DILocation(line: 1028, column: 43, scope: !5639)
!5650 = !DILocation(line: 1028, column: 8, scope: !5639)
!5651 = !DILocation(line: 1029, column: 3, scope: !5639)
!5652 = !DILocation(line: 1032, column: 7, scope: !5629)
!5653 = !DILocation(line: 1034, column: 10, scope: !5629)
!5654 = !DILocation(line: 1034, column: 15, scope: !5629)
!5655 = !DILocation(line: 1034, column: 24, scope: !5629)
!5656 = !DILocation(line: 1034, column: 31, scope: !5629)
!5657 = !DILocation(line: 1034, column: 29, scope: !5629)
!5658 = !DILocation(line: 1034, column: 3, scope: !5629)
!5659 = !DILocation(line: 1035, column: 13, scope: !5629)
!5660 = !DILocation(line: 1035, column: 18, scope: !5629)
!5661 = !DILocation(line: 1035, column: 25, scope: !5629)
!5662 = !DILocation(line: 1035, column: 23, scope: !5629)
!5663 = !DILocation(line: 1035, column: 3, scope: !5629)
!5664 = !DILocation(line: 1037, column: 24, scope: !5629)
!5665 = !DILocation(line: 1037, column: 29, scope: !5629)
!5666 = !DILocation(line: 1037, column: 32, scope: !5629)
!5667 = !DILocation(line: 1037, column: 9, scope: !5629)
!5668 = !DILocation(line: 1037, column: 7, scope: !5629)
!5669 = !DILocation(line: 1038, column: 7, scope: !5670)
!5670 = distinct !DILexicalBlock(scope: !5629, file: !3, line: 1038, column: 7)
!5671 = !DILocation(line: 1038, column: 7, scope: !5629)
!5672 = !DILocation(line: 1039, column: 11, scope: !5670)
!5673 = !DILocation(line: 1039, column: 4, scope: !5670)
!5674 = !DILocation(line: 1041, column: 23, scope: !5629)
!5675 = !DILocation(line: 1041, column: 28, scope: !5629)
!5676 = !DILocation(line: 1041, column: 3, scope: !5629)
!5677 = !DILocation(line: 1041, column: 6, scope: !5629)
!5678 = !DILocation(line: 1041, column: 15, scope: !5629)
!5679 = !DILocation(line: 1041, column: 21, scope: !5629)
!5680 = !DILocation(line: 1042, column: 2, scope: !5629)
!5681 = !DILocation(line: 1022, column: 27, scope: !5623)
!5682 = !DILocation(line: 1022, column: 2, scope: !5623)
!5683 = distinct !{!5683, !5627, !5684}
!5684 = !DILocation(line: 1042, column: 2, scope: !5620)
!5685 = !DILocation(line: 1044, column: 9, scope: !5589)
!5686 = !DILocation(line: 1044, column: 15, scope: !5589)
!5687 = !DILocation(line: 1044, column: 2, scope: !5589)
!5688 = !DILocation(line: 1045, column: 1, scope: !5589)
!5689 = distinct !DISubprogram(name: "rtd_dio_insn_bits", scope: !3, file: !3, line: 1047, type: !224, scopeLine: 1051, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !283)
!5690 = !DILocalVariable(name: "dev", arg: 1, scope: !5689, file: !3, line: 1047, type: !189)
!5691 = !DILocation(line: 1047, column: 52, scope: !5689)
!5692 = !DILocalVariable(name: "s", arg: 2, scope: !5689, file: !3, line: 1048, type: !226)
!5693 = !DILocation(line: 1048, column: 34, scope: !5689)
!5694 = !DILocalVariable(name: "insn", arg: 3, scope: !5689, file: !3, line: 1049, type: !3945)
!5695 = !DILocation(line: 1049, column: 29, scope: !5689)
!5696 = !DILocalVariable(name: "data", arg: 4, scope: !5689, file: !3, line: 1050, type: !2711)
!5697 = !DILocation(line: 1050, column: 23, scope: !5689)
!5698 = !DILocation(line: 1052, column: 30, scope: !5699)
!5699 = distinct !DILexicalBlock(scope: !5689, file: !3, line: 1052, column: 6)
!5700 = !DILocation(line: 1052, column: 33, scope: !5699)
!5701 = !DILocation(line: 1052, column: 6, scope: !5699)
!5702 = !DILocation(line: 1052, column: 6, scope: !5689)
!5703 = !DILocation(line: 1053, column: 10, scope: !5699)
!5704 = !DILocation(line: 1053, column: 13, scope: !5699)
!5705 = !DILocation(line: 1053, column: 19, scope: !5699)
!5706 = !DILocation(line: 1053, column: 27, scope: !5699)
!5707 = !DILocation(line: 1053, column: 32, scope: !5699)
!5708 = !DILocation(line: 1053, column: 37, scope: !5699)
!5709 = !DILocation(line: 1053, column: 3, scope: !5699)
!5710 = !DILocation(line: 1055, column: 18, scope: !5689)
!5711 = !DILocation(line: 1055, column: 23, scope: !5689)
!5712 = !DILocation(line: 1055, column: 28, scope: !5689)
!5713 = !DILocation(line: 1055, column: 12, scope: !5689)
!5714 = !DILocation(line: 1055, column: 41, scope: !5689)
!5715 = !DILocation(line: 1055, column: 2, scope: !5689)
!5716 = !DILocation(line: 1055, column: 10, scope: !5689)
!5717 = !DILocation(line: 1057, column: 9, scope: !5689)
!5718 = !DILocation(line: 1057, column: 15, scope: !5689)
!5719 = !DILocation(line: 1057, column: 2, scope: !5689)
!5720 = distinct !DISubprogram(name: "rtd_dio_insn_config", scope: !3, file: !3, line: 1060, type: !224, scopeLine: 1064, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !283)
!5721 = !DILocalVariable(name: "dev", arg: 1, scope: !5720, file: !3, line: 1060, type: !189)
!5722 = !DILocation(line: 1060, column: 54, scope: !5720)
!5723 = !DILocalVariable(name: "s", arg: 2, scope: !5720, file: !3, line: 1061, type: !226)
!5724 = !DILocation(line: 1061, column: 36, scope: !5720)
!5725 = !DILocalVariable(name: "insn", arg: 3, scope: !5720, file: !3, line: 1062, type: !3945)
!5726 = !DILocation(line: 1062, column: 31, scope: !5720)
!5727 = !DILocalVariable(name: "data", arg: 4, scope: !5720, file: !3, line: 1063, type: !2711)
!5728 = !DILocation(line: 1063, column: 25, scope: !5720)
!5729 = !DILocalVariable(name: "ret", scope: !5720, file: !3, line: 1065, type: !139)
!5730 = !DILocation(line: 1065, column: 6, scope: !5720)
!5731 = !DILocation(line: 1067, column: 31, scope: !5720)
!5732 = !DILocation(line: 1067, column: 36, scope: !5720)
!5733 = !DILocation(line: 1067, column: 39, scope: !5720)
!5734 = !DILocation(line: 1067, column: 45, scope: !5720)
!5735 = !DILocation(line: 1067, column: 8, scope: !5720)
!5736 = !DILocation(line: 1067, column: 6, scope: !5720)
!5737 = !DILocation(line: 1068, column: 6, scope: !5738)
!5738 = distinct !DILexicalBlock(scope: !5720, file: !3, line: 1068, column: 6)
!5739 = !DILocation(line: 1068, column: 6, scope: !5720)
!5740 = !DILocation(line: 1069, column: 10, scope: !5738)
!5741 = !DILocation(line: 1069, column: 3, scope: !5738)
!5742 = !DILocation(line: 1074, column: 15, scope: !5720)
!5743 = !DILocation(line: 1074, column: 20, scope: !5720)
!5744 = !DILocation(line: 1074, column: 25, scope: !5720)
!5745 = !DILocation(line: 1074, column: 2, scope: !5720)
!5746 = !DILocation(line: 1075, column: 9, scope: !5720)
!5747 = !DILocation(line: 1075, column: 12, scope: !5720)
!5748 = !DILocation(line: 1075, column: 20, scope: !5720)
!5749 = !DILocation(line: 1075, column: 28, scope: !5720)
!5750 = !DILocation(line: 1075, column: 33, scope: !5720)
!5751 = !DILocation(line: 1075, column: 38, scope: !5720)
!5752 = !DILocation(line: 1075, column: 2, scope: !5720)
!5753 = !DILocation(line: 1078, column: 15, scope: !5720)
!5754 = !DILocation(line: 1078, column: 20, scope: !5720)
!5755 = !DILocation(line: 1078, column: 25, scope: !5720)
!5756 = !DILocation(line: 1078, column: 2, scope: !5720)
!5757 = !DILocation(line: 1084, column: 9, scope: !5720)
!5758 = !DILocation(line: 1084, column: 15, scope: !5720)
!5759 = !DILocation(line: 1084, column: 2, scope: !5720)
!5760 = !DILocation(line: 1085, column: 1, scope: !5720)
!5761 = distinct !DISubprogram(name: "rtd_counter_insn_config", scope: !3, file: !3, line: 1087, type: !224, scopeLine: 1091, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !283)
!5762 = !DILocalVariable(name: "dev", arg: 1, scope: !5761, file: !3, line: 1087, type: !189)
!5763 = !DILocation(line: 1087, column: 58, scope: !5761)
!5764 = !DILocalVariable(name: "s", arg: 2, scope: !5761, file: !3, line: 1088, type: !226)
!5765 = !DILocation(line: 1088, column: 33, scope: !5761)
!5766 = !DILocalVariable(name: "insn", arg: 3, scope: !5761, file: !3, line: 1089, type: !3945)
!5767 = !DILocation(line: 1089, column: 28, scope: !5761)
!5768 = !DILocalVariable(name: "data", arg: 4, scope: !5761, file: !3, line: 1090, type: !2711)
!5769 = !DILocation(line: 1090, column: 22, scope: !5761)
!5770 = !DILocalVariable(name: "devpriv", scope: !5761, file: !3, line: 1092, type: !4327)
!5771 = !DILocation(line: 1092, column: 22, scope: !5761)
!5772 = !DILocation(line: 1092, column: 32, scope: !5761)
!5773 = !DILocation(line: 1092, column: 37, scope: !5761)
!5774 = !DILocalVariable(name: "chan", scope: !5761, file: !3, line: 1093, type: !7)
!5775 = !DILocation(line: 1093, column: 15, scope: !5761)
!5776 = !DILocation(line: 1093, column: 22, scope: !5761)
!5777 = !DILocalVariable(name: "max_src", scope: !5761, file: !3, line: 1094, type: !7)
!5778 = !DILocation(line: 1094, column: 15, scope: !5761)
!5779 = !DILocalVariable(name: "src", scope: !5761, file: !3, line: 1095, type: !7)
!5780 = !DILocation(line: 1095, column: 15, scope: !5761)
!5781 = !DILocation(line: 1097, column: 10, scope: !5761)
!5782 = !DILocation(line: 1097, column: 2, scope: !5761)
!5783 = !DILocation(line: 1108, column: 9, scope: !5784)
!5784 = distinct !DILexicalBlock(scope: !5761, file: !3, line: 1097, column: 19)
!5785 = !DILocation(line: 1108, column: 7, scope: !5784)
!5786 = !DILocation(line: 1109, column: 14, scope: !5784)
!5787 = !DILocation(line: 1109, column: 19, scope: !5784)
!5788 = !DILocation(line: 1109, column: 13, scope: !5784)
!5789 = !DILocation(line: 1109, column: 11, scope: !5784)
!5790 = !DILocation(line: 1110, column: 7, scope: !5791)
!5791 = distinct !DILexicalBlock(scope: !5784, file: !3, line: 1110, column: 7)
!5792 = !DILocation(line: 1110, column: 13, scope: !5791)
!5793 = !DILocation(line: 1110, column: 11, scope: !5791)
!5794 = !DILocation(line: 1110, column: 7, scope: !5784)
!5795 = !DILocation(line: 1111, column: 4, scope: !5791)
!5796 = !DILocation(line: 1113, column: 35, scope: !5784)
!5797 = !DILocation(line: 1113, column: 3, scope: !5784)
!5798 = !DILocation(line: 1113, column: 12, scope: !5784)
!5799 = !DILocation(line: 1113, column: 27, scope: !5784)
!5800 = !DILocation(line: 1113, column: 33, scope: !5784)
!5801 = !DILocation(line: 1114, column: 10, scope: !5784)
!5802 = !DILocation(line: 1114, column: 15, scope: !5784)
!5803 = !DILocation(line: 1114, column: 20, scope: !5784)
!5804 = !DILocation(line: 1114, column: 27, scope: !5784)
!5805 = !DILocation(line: 1114, column: 25, scope: !5784)
!5806 = !DILocation(line: 1114, column: 3, scope: !5784)
!5807 = !DILocation(line: 1115, column: 3, scope: !5784)
!5808 = !DILocation(line: 1117, column: 13, scope: !5784)
!5809 = !DILocation(line: 1117, column: 22, scope: !5784)
!5810 = !DILocation(line: 1117, column: 37, scope: !5784)
!5811 = !DILocation(line: 1117, column: 3, scope: !5784)
!5812 = !DILocation(line: 1117, column: 11, scope: !5784)
!5813 = !DILocation(line: 1118, column: 3, scope: !5784)
!5814 = !DILocation(line: 1130, column: 9, scope: !5784)
!5815 = !DILocation(line: 1130, column: 7, scope: !5784)
!5816 = !DILocation(line: 1131, column: 11, scope: !5784)
!5817 = !DILocation(line: 1131, column: 3, scope: !5784)
!5818 = !DILocation(line: 1133, column: 12, scope: !5819)
!5819 = distinct !DILexicalBlock(scope: !5784, file: !3, line: 1131, column: 17)
!5820 = !DILocation(line: 1134, column: 4, scope: !5819)
!5821 = !DILocation(line: 1136, column: 12, scope: !5819)
!5822 = !DILocation(line: 1137, column: 4, scope: !5819)
!5823 = !DILocation(line: 1139, column: 12, scope: !5819)
!5824 = !DILocation(line: 1140, column: 4, scope: !5819)
!5825 = !DILocation(line: 1142, column: 4, scope: !5819)
!5826 = !DILocation(line: 1144, column: 7, scope: !5827)
!5827 = distinct !DILexicalBlock(scope: !5784, file: !3, line: 1144, column: 7)
!5828 = !DILocation(line: 1144, column: 13, scope: !5827)
!5829 = !DILocation(line: 1144, column: 11, scope: !5827)
!5830 = !DILocation(line: 1144, column: 7, scope: !5784)
!5831 = !DILocation(line: 1145, column: 4, scope: !5827)
!5832 = !DILocation(line: 1147, column: 34, scope: !5784)
!5833 = !DILocation(line: 1147, column: 3, scope: !5784)
!5834 = !DILocation(line: 1147, column: 12, scope: !5784)
!5835 = !DILocation(line: 1147, column: 26, scope: !5784)
!5836 = !DILocation(line: 1147, column: 32, scope: !5784)
!5837 = !DILocation(line: 1148, column: 10, scope: !5784)
!5838 = !DILocation(line: 1148, column: 15, scope: !5784)
!5839 = !DILocation(line: 1148, column: 20, scope: !5784)
!5840 = !DILocation(line: 1148, column: 27, scope: !5784)
!5841 = !DILocation(line: 1148, column: 25, scope: !5784)
!5842 = !DILocation(line: 1148, column: 3, scope: !5784)
!5843 = !DILocation(line: 1149, column: 3, scope: !5784)
!5844 = !DILocation(line: 1151, column: 9, scope: !5784)
!5845 = !DILocation(line: 1151, column: 18, scope: !5784)
!5846 = !DILocation(line: 1151, column: 32, scope: !5784)
!5847 = !DILocation(line: 1151, column: 7, scope: !5784)
!5848 = !DILocation(line: 1152, column: 13, scope: !5784)
!5849 = !DILocation(line: 1152, column: 22, scope: !5784)
!5850 = !DILocation(line: 1152, column: 36, scope: !5784)
!5851 = !DILocation(line: 1152, column: 3, scope: !5784)
!5852 = !DILocation(line: 1152, column: 11, scope: !5784)
!5853 = !DILocation(line: 1153, column: 14, scope: !5784)
!5854 = !DILocation(line: 1153, column: 18, scope: !5784)
!5855 = !DILocation(line: 1153, column: 13, scope: !5784)
!5856 = !DILocation(line: 1153, column: 3, scope: !5784)
!5857 = !DILocation(line: 1153, column: 11, scope: !5784)
!5858 = !DILocation(line: 1154, column: 3, scope: !5784)
!5859 = !DILocation(line: 1156, column: 3, scope: !5784)
!5860 = !DILocation(line: 1159, column: 9, scope: !5761)
!5861 = !DILocation(line: 1159, column: 15, scope: !5761)
!5862 = !DILocation(line: 1159, column: 2, scope: !5761)
!5863 = !DILocation(line: 1160, column: 1, scope: !5761)
!5864 = distinct !DISubprogram(name: "rtd_init_board", scope: !3, file: !3, line: 1178, type: !3982, scopeLine: 1179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !283)
!5865 = !DILocalVariable(name: "dev", arg: 1, scope: !5864, file: !3, line: 1178, type: !189)
!5866 = !DILocation(line: 1178, column: 50, scope: !5864)
!5867 = !DILocation(line: 1180, column: 12, scope: !5864)
!5868 = !DILocation(line: 1180, column: 2, scope: !5864)
!5869 = !DILocation(line: 1182, column: 12, scope: !5864)
!5870 = !DILocation(line: 1182, column: 17, scope: !5864)
!5871 = !DILocation(line: 1182, column: 22, scope: !5864)
!5872 = !DILocation(line: 1182, column: 2, scope: !5864)
!5873 = !DILocation(line: 1183, column: 12, scope: !5864)
!5874 = !DILocation(line: 1183, column: 17, scope: !5864)
!5875 = !DILocation(line: 1183, column: 22, scope: !5864)
!5876 = !DILocation(line: 1183, column: 2, scope: !5864)
!5877 = !DILocation(line: 1184, column: 12, scope: !5864)
!5878 = !DILocation(line: 1184, column: 17, scope: !5864)
!5879 = !DILocation(line: 1184, column: 22, scope: !5864)
!5880 = !DILocation(line: 1184, column: 2, scope: !5864)
!5881 = !DILocation(line: 1185, column: 12, scope: !5864)
!5882 = !DILocation(line: 1185, column: 17, scope: !5864)
!5883 = !DILocation(line: 1185, column: 22, scope: !5864)
!5884 = !DILocation(line: 1185, column: 2, scope: !5864)
!5885 = !DILocation(line: 1186, column: 12, scope: !5864)
!5886 = !DILocation(line: 1186, column: 17, scope: !5864)
!5887 = !DILocation(line: 1186, column: 22, scope: !5864)
!5888 = !DILocation(line: 1186, column: 2, scope: !5864)
!5889 = !DILocation(line: 1188, column: 12, scope: !5864)
!5890 = !DILocation(line: 1188, column: 17, scope: !5864)
!5891 = !DILocation(line: 1188, column: 22, scope: !5864)
!5892 = !DILocation(line: 1188, column: 2, scope: !5864)
!5893 = !DILocation(line: 1190, column: 1, scope: !5864)
!5894 = !DILocalVariable(name: "dev", arg: 1, scope: !4027, file: !3, line: 482, type: !189)
!5895 = !DILocation(line: 482, column: 58, scope: !4027)
!5896 = !DILocalVariable(name: "chanspec", scope: !4027, file: !3, line: 484, type: !7)
!5897 = !DILocation(line: 484, column: 15, scope: !4027)
!5898 = !DILocalVariable(name: "i", scope: !4027, file: !3, line: 485, type: !7)
!5899 = !DILocation(line: 485, column: 15, scope: !4027)
!5900 = !DILocalVariable(name: "fifo_size", scope: !4027, file: !3, line: 487, type: !7)
!5901 = !DILocation(line: 487, column: 15, scope: !4027)
!5902 = !DILocation(line: 489, column: 12, scope: !4027)
!5903 = !DILocation(line: 489, column: 17, scope: !4027)
!5904 = !DILocation(line: 489, column: 22, scope: !4027)
!5905 = !DILocation(line: 489, column: 2, scope: !4027)
!5906 = !DILocation(line: 490, column: 28, scope: !4027)
!5907 = !DILocation(line: 490, column: 2, scope: !4027)
!5908 = !DILocation(line: 492, column: 12, scope: !4027)
!5909 = !DILocation(line: 492, column: 17, scope: !4027)
!5910 = !DILocation(line: 492, column: 22, scope: !4027)
!5911 = !DILocation(line: 492, column: 2, scope: !4027)
!5912 = !DILocation(line: 494, column: 9, scope: !5913)
!5913 = distinct !DILexicalBlock(scope: !4027, file: !3, line: 494, column: 2)
!5914 = !DILocation(line: 494, column: 7, scope: !5913)
!5915 = !DILocation(line: 494, column: 14, scope: !5916)
!5916 = distinct !DILexicalBlock(scope: !5913, file: !3, line: 494, column: 2)
!5917 = !DILocation(line: 494, column: 16, scope: !5916)
!5918 = !DILocation(line: 494, column: 2, scope: !5913)
!5919 = !DILocalVariable(name: "fifo_status", scope: !5920, file: !3, line: 495, type: !7)
!5920 = distinct !DILexicalBlock(scope: !5916, file: !3, line: 494, column: 30)
!5921 = !DILocation(line: 495, column: 16, scope: !5920)
!5922 = !DILocation(line: 497, column: 13, scope: !5920)
!5923 = !DILocation(line: 497, column: 18, scope: !5920)
!5924 = !DILocation(line: 497, column: 23, scope: !5920)
!5925 = !DILocation(line: 497, column: 3, scope: !5920)
!5926 = !DILocation(line: 498, column: 3, scope: !5920)
!5927 = !DILocation(line: 499, column: 23, scope: !5920)
!5928 = !DILocation(line: 499, column: 28, scope: !5920)
!5929 = !DILocation(line: 499, column: 33, scope: !5920)
!5930 = !DILocation(line: 499, column: 17, scope: !5920)
!5931 = !DILocation(line: 499, column: 15, scope: !5920)
!5932 = !DILocation(line: 500, column: 8, scope: !5933)
!5933 = distinct !DILexicalBlock(scope: !5920, file: !3, line: 500, column: 7)
!5934 = !DILocation(line: 500, column: 20, scope: !5933)
!5935 = !DILocation(line: 500, column: 37, scope: !5933)
!5936 = !DILocation(line: 500, column: 7, scope: !5920)
!5937 = !DILocation(line: 501, column: 20, scope: !5938)
!5938 = distinct !DILexicalBlock(scope: !5933, file: !3, line: 500, column: 43)
!5939 = !DILocation(line: 501, column: 18, scope: !5938)
!5940 = !DILocation(line: 501, column: 14, scope: !5938)
!5941 = !DILocation(line: 502, column: 4, scope: !5938)
!5942 = !DILocation(line: 504, column: 2, scope: !5920)
!5943 = !DILocation(line: 494, column: 25, scope: !5916)
!5944 = !DILocation(line: 494, column: 2, scope: !5916)
!5945 = distinct !{!5945, !5918, !5946}
!5946 = !DILocation(line: 504, column: 2, scope: !5913)
!5947 = !DILocation(line: 505, column: 6, scope: !5948)
!5948 = distinct !DILexicalBlock(scope: !4027, file: !3, line: 505, column: 6)
!5949 = !DILocation(line: 505, column: 8, scope: !5948)
!5950 = !DILocation(line: 505, column: 6, scope: !4027)
!5951 = !DILocation(line: 506, column: 3, scope: !5952)
!5952 = distinct !DILexicalBlock(scope: !5948, file: !3, line: 505, column: 18)
!5953 = !DILocation(line: 507, column: 3, scope: !5952)
!5954 = !DILocation(line: 509, column: 12, scope: !4027)
!5955 = !DILocation(line: 509, column: 17, scope: !4027)
!5956 = !DILocation(line: 509, column: 22, scope: !4027)
!5957 = !DILocation(line: 509, column: 2, scope: !4027)
!5958 = !DILocation(line: 510, column: 6, scope: !5959)
!5959 = distinct !DILexicalBlock(scope: !4027, file: !3, line: 510, column: 6)
!5960 = !DILocation(line: 510, column: 16, scope: !5959)
!5961 = !DILocation(line: 510, column: 25, scope: !5959)
!5962 = !DILocation(line: 510, column: 28, scope: !5959)
!5963 = !DILocation(line: 510, column: 38, scope: !5959)
!5964 = !DILocation(line: 510, column: 6, scope: !4027)
!5965 = !DILocation(line: 511, column: 3, scope: !5966)
!5966 = distinct !DILexicalBlock(scope: !5959, file: !3, line: 510, column: 49)
!5967 = !DILocation(line: 514, column: 3, scope: !5966)
!5968 = !DILocation(line: 516, column: 9, scope: !4027)
!5969 = !DILocation(line: 516, column: 2, scope: !4027)
!5970 = !DILocation(line: 517, column: 1, scope: !4027)
!5971 = distinct !DISubprogram(name: "readl", scope: !4680, file: !4680, line: 59, type: !5972, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !283)
!5972 = !DISubroutineType(types: !5973)
!5973 = !{!7, !4699}
!5974 = !DILocalVariable(name: "addr", arg: 1, scope: !5971, file: !4680, line: 59, type: !4699)
!5975 = !DILocation(line: 59, column: 1, scope: !5971)
!5976 = !DILocalVariable(name: "ret", scope: !5971, file: !4680, line: 59, type: !7)
!5977 = !{i32 -2143390619}
!5978 = distinct !DISubprogram(name: "ai_read_n", scope: !3, file: !3, line: 575, type: !5979, scopeLine: 577, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !283)
!5979 = !DISubroutineType(types: !5980)
!5980 = !{!139, !189, !226, !139}
!5981 = !DILocalVariable(name: "dev", arg: 1, scope: !5978, file: !3, line: 575, type: !189)
!5982 = !DILocation(line: 575, column: 44, scope: !5978)
!5983 = !DILocalVariable(name: "s", arg: 2, scope: !5978, file: !3, line: 575, type: !226)
!5984 = !DILocation(line: 575, column: 74, scope: !5978)
!5985 = !DILocalVariable(name: "count", arg: 3, scope: !5978, file: !3, line: 576, type: !139)
!5986 = !DILocation(line: 576, column: 12, scope: !5978)
!5987 = !DILocalVariable(name: "devpriv", scope: !5978, file: !3, line: 578, type: !4327)
!5988 = !DILocation(line: 578, column: 22, scope: !5978)
!5989 = !DILocation(line: 578, column: 32, scope: !5978)
!5990 = !DILocation(line: 578, column: 37, scope: !5978)
!5991 = !DILocalVariable(name: "async", scope: !5978, file: !3, line: 579, type: !237)
!5992 = !DILocation(line: 579, column: 23, scope: !5978)
!5993 = !DILocation(line: 579, column: 31, scope: !5978)
!5994 = !DILocation(line: 579, column: 34, scope: !5978)
!5995 = !DILocalVariable(name: "cmd", scope: !5978, file: !3, line: 580, type: !3932)
!5996 = !DILocation(line: 580, column: 21, scope: !5978)
!5997 = !DILocation(line: 580, column: 28, scope: !5978)
!5998 = !DILocation(line: 580, column: 35, scope: !5978)
!5999 = !DILocalVariable(name: "ii", scope: !5978, file: !3, line: 581, type: !139)
!6000 = !DILocation(line: 581, column: 6, scope: !5978)
!6001 = !DILocation(line: 583, column: 10, scope: !6002)
!6002 = distinct !DILexicalBlock(scope: !5978, file: !3, line: 583, column: 2)
!6003 = !DILocation(line: 583, column: 7, scope: !6002)
!6004 = !DILocation(line: 583, column: 15, scope: !6005)
!6005 = distinct !DILexicalBlock(scope: !6002, file: !3, line: 583, column: 2)
!6006 = !DILocation(line: 583, column: 20, scope: !6005)
!6007 = !DILocation(line: 583, column: 18, scope: !6005)
!6008 = !DILocation(line: 583, column: 2, scope: !6002)
!6009 = !DILocalVariable(name: "range", scope: !6010, file: !3, line: 584, type: !7)
!6010 = distinct !DILexicalBlock(scope: !6005, file: !3, line: 583, column: 33)
!6011 = !DILocation(line: 584, column: 16, scope: !6010)
!6012 = !DILocation(line: 584, column: 24, scope: !6010)
!6013 = !DILocalVariable(name: "d", scope: !6010, file: !3, line: 585, type: !138)
!6014 = !DILocation(line: 585, column: 18, scope: !6010)
!6015 = !DILocation(line: 587, column: 7, scope: !6016)
!6016 = distinct !DILexicalBlock(scope: !6010, file: !3, line: 587, column: 7)
!6017 = !DILocation(line: 587, column: 16, scope: !6016)
!6018 = !DILocation(line: 587, column: 25, scope: !6016)
!6019 = !DILocation(line: 587, column: 7, scope: !6010)
!6020 = !DILocation(line: 588, column: 14, scope: !6021)
!6021 = distinct !DILexicalBlock(scope: !6016, file: !3, line: 587, column: 31)
!6022 = !DILocation(line: 588, column: 23, scope: !6021)
!6023 = !DILocation(line: 588, column: 28, scope: !6021)
!6024 = !DILocation(line: 588, column: 8, scope: !6021)
!6025 = !DILocation(line: 588, column: 6, scope: !6021)
!6026 = !DILocation(line: 589, column: 4, scope: !6021)
!6027 = !DILocation(line: 592, column: 13, scope: !6010)
!6028 = !DILocation(line: 592, column: 22, scope: !6010)
!6029 = !DILocation(line: 592, column: 27, scope: !6010)
!6030 = !DILocation(line: 592, column: 7, scope: !6010)
!6031 = !DILocation(line: 592, column: 5, scope: !6010)
!6032 = !DILocation(line: 593, column: 5, scope: !6010)
!6033 = !DILocation(line: 596, column: 31, scope: !6034)
!6034 = distinct !DILexicalBlock(scope: !6010, file: !3, line: 596, column: 7)
!6035 = !DILocation(line: 596, column: 34, scope: !6034)
!6036 = !DILocation(line: 596, column: 7, scope: !6034)
!6037 = !DILocation(line: 596, column: 7, scope: !6010)
!6038 = !DILocation(line: 597, column: 28, scope: !6034)
!6039 = !DILocation(line: 597, column: 31, scope: !6034)
!6040 = !DILocation(line: 597, column: 8, scope: !6034)
!6041 = !DILocation(line: 597, column: 6, scope: !6034)
!6042 = !DILocation(line: 597, column: 4, scope: !6034)
!6043 = !DILocation(line: 598, column: 8, scope: !6010)
!6044 = !DILocation(line: 598, column: 11, scope: !6010)
!6045 = !DILocation(line: 598, column: 5, scope: !6010)
!6046 = !DILocation(line: 600, column: 33, scope: !6047)
!6047 = distinct !DILexicalBlock(scope: !6010, file: !3, line: 600, column: 7)
!6048 = !DILocation(line: 600, column: 36, scope: !6047)
!6049 = !DILocation(line: 600, column: 8, scope: !6047)
!6050 = !DILocation(line: 600, column: 7, scope: !6010)
!6051 = !DILocation(line: 601, column: 4, scope: !6047)
!6052 = !DILocation(line: 603, column: 7, scope: !6053)
!6053 = distinct !DILexicalBlock(scope: !6010, file: !3, line: 603, column: 7)
!6054 = !DILocation(line: 603, column: 16, scope: !6053)
!6055 = !DILocation(line: 603, column: 25, scope: !6053)
!6056 = !DILocation(line: 603, column: 7, scope: !6010)
!6057 = !DILocation(line: 604, column: 4, scope: !6053)
!6058 = !DILocation(line: 604, column: 13, scope: !6053)
!6059 = !DILocation(line: 604, column: 21, scope: !6053)
!6060 = !DILocation(line: 605, column: 2, scope: !6010)
!6061 = !DILocation(line: 583, column: 29, scope: !6005)
!6062 = !DILocation(line: 583, column: 2, scope: !6005)
!6063 = distinct !{!6063, !6008, !6064}
!6064 = !DILocation(line: 605, column: 2, scope: !6002)
!6065 = !DILocation(line: 606, column: 2, scope: !5978)
!6066 = !DILocation(line: 607, column: 1, scope: !5978)
!6067 = distinct !DISubprogram(name: "comedi_range_is_bipolar", scope: !123, file: !123, line: 655, type: !6068, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !283)
!6068 = !DISubroutineType(types: !6069)
!6069 = !{!219, !226, !7}
!6070 = !DILocalVariable(name: "s", arg: 1, scope: !6067, file: !123, line: 655, type: !226)
!6071 = !DILocation(line: 655, column: 69, scope: !6067)
!6072 = !DILocalVariable(name: "range", arg: 2, scope: !6067, file: !123, line: 656, type: !7)
!6073 = !DILocation(line: 656, column: 22, scope: !6067)
!6074 = !DILocation(line: 658, column: 9, scope: !6067)
!6075 = !DILocation(line: 658, column: 12, scope: !6067)
!6076 = !DILocation(line: 658, column: 25, scope: !6067)
!6077 = !DILocation(line: 658, column: 31, scope: !6067)
!6078 = !DILocation(line: 658, column: 38, scope: !6067)
!6079 = !DILocation(line: 658, column: 42, scope: !6067)
!6080 = !DILocation(line: 658, column: 2, scope: !6067)
!6081 = distinct !DISubprogram(name: "comedi_offset_munge", scope: !123, file: !123, line: 782, type: !6082, scopeLine: 784, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !283)
!6082 = !DISubroutineType(types: !6083)
!6083 = !{!7, !226, !7}
!6084 = !DILocalVariable(name: "s", arg: 1, scope: !6081, file: !123, line: 782, type: !226)
!6085 = !DILocation(line: 782, column: 73, scope: !6081)
!6086 = !DILocalVariable(name: "val", arg: 2, scope: !6081, file: !123, line: 783, type: !7)
!6087 = !DILocation(line: 783, column: 26, scope: !6081)
!6088 = !DILocation(line: 785, column: 9, scope: !6081)
!6089 = !DILocation(line: 785, column: 15, scope: !6081)
!6090 = !DILocation(line: 785, column: 18, scope: !6081)
!6091 = !DILocation(line: 785, column: 13, scope: !6081)
!6092 = !DILocation(line: 785, column: 29, scope: !6081)
!6093 = !DILocation(line: 785, column: 32, scope: !6081)
!6094 = !DILocation(line: 785, column: 40, scope: !6081)
!6095 = !DILocation(line: 785, column: 26, scope: !6081)
!6096 = !DILocation(line: 785, column: 2, scope: !6081)
!6097 = distinct !DISubprogram(name: "rtd_load_channelgain_list", scope: !3, file: !3, line: 459, type: !6098, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !283)
!6098 = !DISubroutineType(types: !6099)
!6099 = !{null, !189, !7, !2711}
!6100 = !DILocalVariable(name: "dev", arg: 1, scope: !6097, file: !3, line: 459, type: !189)
!6101 = !DILocation(line: 459, column: 61, scope: !6097)
!6102 = !DILocalVariable(name: "n_chan", arg: 2, scope: !6097, file: !3, line: 460, type: !7)
!6103 = !DILocation(line: 460, column: 24, scope: !6097)
!6104 = !DILocalVariable(name: "list", arg: 3, scope: !6097, file: !3, line: 460, type: !2711)
!6105 = !DILocation(line: 460, column: 46, scope: !6097)
!6106 = !DILocation(line: 462, column: 6, scope: !6107)
!6107 = distinct !DILexicalBlock(scope: !6097, file: !3, line: 462, column: 6)
!6108 = !DILocation(line: 462, column: 13, scope: !6107)
!6109 = !DILocation(line: 462, column: 6, scope: !6097)
!6110 = !DILocalVariable(name: "ii", scope: !6111, file: !3, line: 463, type: !139)
!6111 = distinct !DILexicalBlock(scope: !6107, file: !3, line: 462, column: 18)
!6112 = !DILocation(line: 463, column: 7, scope: !6111)
!6113 = !DILocation(line: 465, column: 13, scope: !6111)
!6114 = !DILocation(line: 465, column: 18, scope: !6111)
!6115 = !DILocation(line: 465, column: 23, scope: !6111)
!6116 = !DILocation(line: 465, column: 3, scope: !6111)
!6117 = !DILocation(line: 466, column: 13, scope: !6111)
!6118 = !DILocation(line: 466, column: 18, scope: !6111)
!6119 = !DILocation(line: 466, column: 23, scope: !6111)
!6120 = !DILocation(line: 466, column: 3, scope: !6111)
!6121 = !DILocation(line: 467, column: 11, scope: !6122)
!6122 = distinct !DILexicalBlock(scope: !6111, file: !3, line: 467, column: 3)
!6123 = !DILocation(line: 467, column: 8, scope: !6122)
!6124 = !DILocation(line: 467, column: 16, scope: !6125)
!6125 = distinct !DILexicalBlock(scope: !6122, file: !3, line: 467, column: 3)
!6126 = !DILocation(line: 467, column: 21, scope: !6125)
!6127 = !DILocation(line: 467, column: 19, scope: !6125)
!6128 = !DILocation(line: 467, column: 3, scope: !6122)
!6129 = !DILocation(line: 468, column: 33, scope: !6130)
!6130 = distinct !DILexicalBlock(scope: !6125, file: !3, line: 467, column: 35)
!6131 = !DILocation(line: 468, column: 38, scope: !6130)
!6132 = !DILocation(line: 468, column: 43, scope: !6130)
!6133 = !DILocation(line: 468, column: 48, scope: !6130)
!6134 = !DILocation(line: 468, column: 11, scope: !6130)
!6135 = !DILocation(line: 469, column: 11, scope: !6130)
!6136 = !DILocation(line: 469, column: 16, scope: !6130)
!6137 = !DILocation(line: 469, column: 21, scope: !6130)
!6138 = !DILocation(line: 468, column: 4, scope: !6130)
!6139 = !DILocation(line: 470, column: 3, scope: !6130)
!6140 = !DILocation(line: 467, column: 31, scope: !6125)
!6141 = !DILocation(line: 467, column: 3, scope: !6125)
!6142 = distinct !{!6142, !6128, !6143}
!6143 = !DILocation(line: 470, column: 3, scope: !6122)
!6144 = !DILocation(line: 471, column: 2, scope: !6111)
!6145 = !DILocation(line: 472, column: 13, scope: !6146)
!6146 = distinct !DILexicalBlock(scope: !6107, file: !3, line: 471, column: 9)
!6147 = !DILocation(line: 472, column: 18, scope: !6146)
!6148 = !DILocation(line: 472, column: 23, scope: !6146)
!6149 = !DILocation(line: 472, column: 3, scope: !6146)
!6150 = !DILocation(line: 473, column: 32, scope: !6146)
!6151 = !DILocation(line: 473, column: 37, scope: !6146)
!6152 = !DILocation(line: 473, column: 10, scope: !6146)
!6153 = !DILocation(line: 474, column: 10, scope: !6146)
!6154 = !DILocation(line: 474, column: 15, scope: !6146)
!6155 = !DILocation(line: 474, column: 20, scope: !6146)
!6156 = !DILocation(line: 473, column: 3, scope: !6146)
!6157 = !DILocation(line: 476, column: 1, scope: !6097)
!6158 = distinct !DISubprogram(name: "rtd_ai_eoc", scope: !3, file: !3, line: 519, type: !6159, scopeLine: 523, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !283)
!6159 = !DISubroutineType(types: !6160)
!6160 = !{!139, !189, !226, !3945, !200}
!6161 = !DILocalVariable(name: "dev", arg: 1, scope: !6158, file: !3, line: 519, type: !189)
!6162 = !DILocation(line: 519, column: 45, scope: !6158)
!6163 = !DILocalVariable(name: "s", arg: 2, scope: !6158, file: !3, line: 520, type: !226)
!6164 = !DILocation(line: 520, column: 34, scope: !6158)
!6165 = !DILocalVariable(name: "insn", arg: 3, scope: !6158, file: !3, line: 521, type: !3945)
!6166 = !DILocation(line: 521, column: 29, scope: !6158)
!6167 = !DILocalVariable(name: "context", arg: 4, scope: !6158, file: !3, line: 522, type: !200)
!6168 = !DILocation(line: 522, column: 23, scope: !6158)
!6169 = !DILocalVariable(name: "status", scope: !6158, file: !3, line: 524, type: !7)
!6170 = !DILocation(line: 524, column: 15, scope: !6158)
!6171 = !DILocation(line: 526, column: 17, scope: !6158)
!6172 = !DILocation(line: 526, column: 22, scope: !6158)
!6173 = !DILocation(line: 526, column: 27, scope: !6158)
!6174 = !DILocation(line: 526, column: 11, scope: !6158)
!6175 = !DILocation(line: 526, column: 9, scope: !6158)
!6176 = !DILocation(line: 527, column: 6, scope: !6177)
!6177 = distinct !DILexicalBlock(scope: !6158, file: !3, line: 527, column: 6)
!6178 = !DILocation(line: 527, column: 13, scope: !6177)
!6179 = !DILocation(line: 527, column: 6, scope: !6158)
!6180 = !DILocation(line: 528, column: 3, scope: !6177)
!6181 = !DILocation(line: 529, column: 2, scope: !6158)
!6182 = !DILocation(line: 530, column: 1, scope: !6158)
!6183 = distinct !DISubprogram(name: "rtd_convert_chan_gain", scope: !3, file: !3, line: 414, type: !6184, scopeLine: 416, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !283)
!6184 = !DISubroutineType(types: !6185)
!6185 = !{!138, !189, !7, !139}
!6186 = !DILocalVariable(name: "dev", arg: 1, scope: !6183, file: !3, line: 414, type: !189)
!6187 = !DILocation(line: 414, column: 67, scope: !6183)
!6188 = !DILocalVariable(name: "chanspec", arg: 2, scope: !6183, file: !3, line: 415, type: !7)
!6189 = !DILocation(line: 415, column: 23, scope: !6183)
!6190 = !DILocalVariable(name: "index", arg: 3, scope: !6183, file: !3, line: 415, type: !139)
!6191 = !DILocation(line: 415, column: 37, scope: !6183)
!6192 = !DILocalVariable(name: "board", scope: !6183, file: !3, line: 417, type: !4398)
!6193 = !DILocation(line: 417, column: 30, scope: !6183)
!6194 = !DILocation(line: 417, column: 38, scope: !6183)
!6195 = !DILocation(line: 417, column: 43, scope: !6183)
!6196 = !DILocalVariable(name: "chan", scope: !6183, file: !3, line: 418, type: !7)
!6197 = !DILocation(line: 418, column: 15, scope: !6183)
!6198 = !DILocation(line: 418, column: 22, scope: !6183)
!6199 = !DILocalVariable(name: "range", scope: !6183, file: !3, line: 419, type: !7)
!6200 = !DILocation(line: 419, column: 15, scope: !6183)
!6201 = !DILocation(line: 419, column: 23, scope: !6183)
!6202 = !DILocalVariable(name: "aref", scope: !6183, file: !3, line: 420, type: !7)
!6203 = !DILocation(line: 420, column: 15, scope: !6183)
!6204 = !DILocation(line: 420, column: 22, scope: !6183)
!6205 = !DILocalVariable(name: "r", scope: !6183, file: !3, line: 421, type: !138)
!6206 = !DILocation(line: 421, column: 17, scope: !6183)
!6207 = !DILocation(line: 423, column: 7, scope: !6183)
!6208 = !DILocation(line: 423, column: 12, scope: !6183)
!6209 = !DILocation(line: 423, column: 4, scope: !6183)
!6210 = !DILocation(line: 426, column: 6, scope: !6211)
!6211 = distinct !DILexicalBlock(scope: !6183, file: !3, line: 426, column: 6)
!6212 = !DILocation(line: 426, column: 14, scope: !6211)
!6213 = !DILocation(line: 426, column: 21, scope: !6211)
!6214 = !DILocation(line: 426, column: 12, scope: !6211)
!6215 = !DILocation(line: 426, column: 6, scope: !6183)
!6216 = !DILocation(line: 428, column: 5, scope: !6217)
!6217 = distinct !DILexicalBlock(scope: !6211, file: !3, line: 426, column: 34)
!6218 = !DILocation(line: 429, column: 9, scope: !6217)
!6219 = !DILocation(line: 429, column: 15, scope: !6217)
!6220 = !DILocation(line: 429, column: 22, scope: !6217)
!6221 = !DILocation(line: 429, column: 5, scope: !6217)
!6222 = !DILocation(line: 430, column: 2, scope: !6217)
!6223 = !DILocation(line: 430, column: 13, scope: !6224)
!6224 = distinct !DILexicalBlock(scope: !6211, file: !3, line: 430, column: 13)
!6225 = !DILocation(line: 430, column: 21, scope: !6224)
!6226 = !DILocation(line: 430, column: 28, scope: !6224)
!6227 = !DILocation(line: 430, column: 19, scope: !6224)
!6228 = !DILocation(line: 430, column: 13, scope: !6211)
!6229 = !DILocation(line: 432, column: 5, scope: !6230)
!6230 = distinct !DILexicalBlock(scope: !6224, file: !3, line: 430, column: 41)
!6231 = !DILocation(line: 433, column: 10, scope: !6230)
!6232 = !DILocation(line: 433, column: 18, scope: !6230)
!6233 = !DILocation(line: 433, column: 25, scope: !6230)
!6234 = !DILocation(line: 433, column: 16, scope: !6230)
!6235 = !DILocation(line: 433, column: 38, scope: !6230)
!6236 = !DILocation(line: 433, column: 45, scope: !6230)
!6237 = !DILocation(line: 433, column: 5, scope: !6230)
!6238 = !DILocation(line: 434, column: 2, scope: !6230)
!6239 = !DILocation(line: 436, column: 5, scope: !6240)
!6240 = distinct !DILexicalBlock(scope: !6224, file: !3, line: 434, column: 9)
!6241 = !DILocation(line: 437, column: 10, scope: !6240)
!6242 = !DILocation(line: 437, column: 18, scope: !6240)
!6243 = !DILocation(line: 437, column: 25, scope: !6240)
!6244 = !DILocation(line: 437, column: 16, scope: !6240)
!6245 = !DILocation(line: 437, column: 38, scope: !6240)
!6246 = !DILocation(line: 437, column: 45, scope: !6240)
!6247 = !DILocation(line: 437, column: 5, scope: !6240)
!6248 = !DILocation(line: 440, column: 10, scope: !6183)
!6249 = !DILocation(line: 440, column: 2, scope: !6183)
!6250 = !DILocation(line: 442, column: 3, scope: !6251)
!6251 = distinct !DILexicalBlock(scope: !6183, file: !3, line: 440, column: 16)
!6252 = !DILocation(line: 445, column: 5, scope: !6251)
!6253 = !DILocation(line: 446, column: 3, scope: !6251)
!6254 = !DILocation(line: 449, column: 5, scope: !6251)
!6255 = !DILocation(line: 450, column: 3, scope: !6251)
!6256 = !DILocation(line: 453, column: 3, scope: !6251)
!6257 = !DILocation(line: 455, column: 9, scope: !6183)
!6258 = !DILocation(line: 455, column: 2, scope: !6183)
!6259 = distinct !DISubprogram(name: "rtd_ns_to_timer", scope: !3, file: !3, line: 408, type: !6260, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !283)
!6260 = !DISubroutineType(types: !6261)
!6261 = !{!139, !2711, !7}
!6262 = !DILocalVariable(name: "ns", arg: 1, scope: !6259, file: !3, line: 408, type: !2711)
!6263 = !DILocation(line: 408, column: 42, scope: !6259)
!6264 = !DILocalVariable(name: "flags", arg: 2, scope: !6259, file: !3, line: 408, type: !7)
!6265 = !DILocation(line: 408, column: 59, scope: !6259)
!6266 = !DILocation(line: 410, column: 30, scope: !6259)
!6267 = !DILocation(line: 410, column: 34, scope: !6259)
!6268 = !DILocation(line: 410, column: 9, scope: !6259)
!6269 = !DILocation(line: 410, column: 2, scope: !6259)
!6270 = distinct !DISubprogram(name: "rtd_ns_to_timer_base", scope: !3, file: !3, line: 374, type: !6271, scopeLine: 376, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !283)
!6271 = !DISubroutineType(types: !6272)
!6272 = !{!139, !2711, !7, !139}
!6273 = !DILocalVariable(name: "nanosec", arg: 1, scope: !6270, file: !3, line: 374, type: !2711)
!6274 = !DILocation(line: 374, column: 47, scope: !6270)
!6275 = !DILocalVariable(name: "flags", arg: 2, scope: !6270, file: !3, line: 375, type: !7)
!6276 = !DILocation(line: 375, column: 18, scope: !6270)
!6277 = !DILocalVariable(name: "base", arg: 3, scope: !6270, file: !3, line: 375, type: !139)
!6278 = !DILocation(line: 375, column: 29, scope: !6270)
!6279 = !DILocalVariable(name: "divider", scope: !6270, file: !3, line: 377, type: !139)
!6280 = !DILocation(line: 377, column: 6, scope: !6270)
!6281 = !DILocation(line: 379, column: 10, scope: !6270)
!6282 = !DILocation(line: 379, column: 16, scope: !6270)
!6283 = !DILocation(line: 379, column: 2, scope: !6270)
!6284 = !DILocation(line: 379, column: 35, scope: !6270)
!6285 = !DILocalVariable(name: "__x", scope: !6286, file: !3, line: 382, type: !7)
!6286 = distinct !DILexicalBlock(scope: !6287, file: !3, line: 382, column: 13)
!6287 = distinct !DILexicalBlock(scope: !6270, file: !3, line: 379, column: 35)
!6288 = !DILocation(line: 382, column: 13, scope: !6286)
!6289 = !DILocalVariable(name: "__d", scope: !6286, file: !3, line: 382, type: !139)
!6290 = !DILocation(line: 382, column: 11, scope: !6287)
!6291 = !DILocation(line: 383, column: 3, scope: !6287)
!6292 = !DILocation(line: 385, column: 15, scope: !6287)
!6293 = !DILocation(line: 385, column: 14, scope: !6287)
!6294 = !DILocation(line: 385, column: 26, scope: !6287)
!6295 = !DILocation(line: 385, column: 24, scope: !6287)
!6296 = !DILocation(line: 385, column: 11, scope: !6287)
!6297 = !DILocation(line: 386, column: 3, scope: !6287)
!6298 = !DILocation(line: 388, column: 13, scope: !6287)
!6299 = !DILocation(line: 388, column: 11, scope: !6287)
!6300 = !DILocation(line: 389, column: 3, scope: !6287)
!6301 = !DILocation(line: 391, column: 6, scope: !6302)
!6302 = distinct !DILexicalBlock(scope: !6270, file: !3, line: 391, column: 6)
!6303 = !DILocation(line: 391, column: 14, scope: !6302)
!6304 = !DILocation(line: 391, column: 6, scope: !6270)
!6305 = !DILocation(line: 392, column: 11, scope: !6302)
!6306 = !DILocation(line: 392, column: 3, scope: !6302)
!6307 = !DILocation(line: 399, column: 13, scope: !6270)
!6308 = !DILocation(line: 399, column: 20, scope: !6270)
!6309 = !DILocation(line: 399, column: 18, scope: !6270)
!6310 = !DILocation(line: 399, column: 3, scope: !6270)
!6311 = !DILocation(line: 399, column: 11, scope: !6270)
!6312 = !DILocation(line: 400, column: 9, scope: !6270)
!6313 = !DILocation(line: 400, column: 17, scope: !6270)
!6314 = !DILocation(line: 400, column: 2, scope: !6270)
!6315 = distinct !DISubprogram(name: "comedi_check_trigger_src", scope: !123, file: !123, line: 859, type: !6260, scopeLine: 861, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !283)
!6316 = !DILocalVariable(name: "src", arg: 1, scope: !6315, file: !123, line: 859, type: !2711)
!6317 = !DILocation(line: 859, column: 58, scope: !6315)
!6318 = !DILocalVariable(name: "flags", arg: 2, scope: !6315, file: !123, line: 860, type: !7)
!6319 = !DILocation(line: 860, column: 22, scope: !6315)
!6320 = !DILocalVariable(name: "orig_src", scope: !6315, file: !123, line: 862, type: !7)
!6321 = !DILocation(line: 862, column: 15, scope: !6315)
!6322 = !DILocation(line: 862, column: 27, scope: !6315)
!6323 = !DILocation(line: 862, column: 26, scope: !6315)
!6324 = !DILocation(line: 864, column: 9, scope: !6315)
!6325 = !DILocation(line: 864, column: 20, scope: !6315)
!6326 = !DILocation(line: 864, column: 18, scope: !6315)
!6327 = !DILocation(line: 864, column: 3, scope: !6315)
!6328 = !DILocation(line: 864, column: 7, scope: !6315)
!6329 = !DILocation(line: 865, column: 7, scope: !6330)
!6330 = distinct !DILexicalBlock(scope: !6315, file: !123, line: 865, column: 6)
!6331 = !DILocation(line: 865, column: 6, scope: !6330)
!6332 = !DILocation(line: 865, column: 11, scope: !6330)
!6333 = !DILocation(line: 865, column: 27, scope: !6330)
!6334 = !DILocation(line: 865, column: 31, scope: !6330)
!6335 = !DILocation(line: 865, column: 30, scope: !6330)
!6336 = !DILocation(line: 865, column: 38, scope: !6330)
!6337 = !DILocation(line: 865, column: 35, scope: !6330)
!6338 = !DILocation(line: 865, column: 6, scope: !6315)
!6339 = !DILocation(line: 866, column: 3, scope: !6330)
!6340 = !DILocation(line: 867, column: 2, scope: !6315)
!6341 = !DILocation(line: 868, column: 1, scope: !6315)
!6342 = distinct !DISubprogram(name: "comedi_check_trigger_is_unique", scope: !123, file: !123, line: 878, type: !6343, scopeLine: 879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !283)
!6343 = !DISubroutineType(types: !6344)
!6344 = !{!139, !7}
!6345 = !DILocalVariable(name: "src", arg: 1, scope: !6342, file: !123, line: 878, type: !7)
!6346 = !DILocation(line: 878, column: 63, scope: !6342)
!6347 = !DILocation(line: 881, column: 7, scope: !6348)
!6348 = distinct !DILexicalBlock(scope: !6342, file: !123, line: 881, column: 6)
!6349 = !DILocation(line: 881, column: 14, scope: !6348)
!6350 = !DILocation(line: 881, column: 18, scope: !6348)
!6351 = !DILocation(line: 881, column: 11, scope: !6348)
!6352 = !DILocation(line: 881, column: 24, scope: !6348)
!6353 = !DILocation(line: 881, column: 6, scope: !6342)
!6354 = !DILocation(line: 882, column: 3, scope: !6348)
!6355 = !DILocation(line: 883, column: 2, scope: !6342)
!6356 = !DILocation(line: 884, column: 1, scope: !6342)
!6357 = distinct !DISubprogram(name: "comedi_check_trigger_arg_is", scope: !123, file: !123, line: 897, type: !6260, scopeLine: 899, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !283)
!6358 = !DILocalVariable(name: "arg", arg: 1, scope: !6357, file: !123, line: 897, type: !2711)
!6359 = !DILocation(line: 897, column: 61, scope: !6357)
!6360 = !DILocalVariable(name: "val", arg: 2, scope: !6357, file: !123, line: 898, type: !7)
!6361 = !DILocation(line: 898, column: 25, scope: !6357)
!6362 = !DILocation(line: 900, column: 7, scope: !6363)
!6363 = distinct !DILexicalBlock(scope: !6357, file: !123, line: 900, column: 6)
!6364 = !DILocation(line: 900, column: 6, scope: !6363)
!6365 = !DILocation(line: 900, column: 14, scope: !6363)
!6366 = !DILocation(line: 900, column: 11, scope: !6363)
!6367 = !DILocation(line: 900, column: 6, scope: !6357)
!6368 = !DILocation(line: 901, column: 10, scope: !6369)
!6369 = distinct !DILexicalBlock(scope: !6363, file: !123, line: 900, column: 19)
!6370 = !DILocation(line: 901, column: 4, scope: !6369)
!6371 = !DILocation(line: 901, column: 8, scope: !6369)
!6372 = !DILocation(line: 902, column: 3, scope: !6369)
!6373 = !DILocation(line: 904, column: 2, scope: !6357)
!6374 = !DILocation(line: 905, column: 1, scope: !6357)
!6375 = distinct !DISubprogram(name: "comedi_check_trigger_arg_min", scope: !123, file: !123, line: 918, type: !6260, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !283)
!6376 = !DILocalVariable(name: "arg", arg: 1, scope: !6375, file: !123, line: 918, type: !2711)
!6377 = !DILocation(line: 918, column: 62, scope: !6375)
!6378 = !DILocalVariable(name: "val", arg: 2, scope: !6375, file: !123, line: 919, type: !7)
!6379 = !DILocation(line: 919, column: 26, scope: !6375)
!6380 = !DILocation(line: 921, column: 7, scope: !6381)
!6381 = distinct !DILexicalBlock(scope: !6375, file: !123, line: 921, column: 6)
!6382 = !DILocation(line: 921, column: 6, scope: !6381)
!6383 = !DILocation(line: 921, column: 13, scope: !6381)
!6384 = !DILocation(line: 921, column: 11, scope: !6381)
!6385 = !DILocation(line: 921, column: 6, scope: !6375)
!6386 = !DILocation(line: 922, column: 10, scope: !6387)
!6387 = distinct !DILexicalBlock(scope: !6381, file: !123, line: 921, column: 18)
!6388 = !DILocation(line: 922, column: 4, scope: !6387)
!6389 = !DILocation(line: 922, column: 8, scope: !6387)
!6390 = !DILocation(line: 923, column: 3, scope: !6387)
!6391 = !DILocation(line: 925, column: 2, scope: !6375)
!6392 = !DILocation(line: 926, column: 1, scope: !6375)
!6393 = distinct !DISubprogram(name: "comedi_check_trigger_arg_max", scope: !123, file: !123, line: 939, type: !6260, scopeLine: 941, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !283)
!6394 = !DILocalVariable(name: "arg", arg: 1, scope: !6393, file: !123, line: 939, type: !2711)
!6395 = !DILocation(line: 939, column: 62, scope: !6393)
!6396 = !DILocalVariable(name: "val", arg: 2, scope: !6393, file: !123, line: 940, type: !7)
!6397 = !DILocation(line: 940, column: 26, scope: !6393)
!6398 = !DILocation(line: 942, column: 7, scope: !6399)
!6399 = distinct !DILexicalBlock(scope: !6393, file: !123, line: 942, column: 6)
!6400 = !DILocation(line: 942, column: 6, scope: !6399)
!6401 = !DILocation(line: 942, column: 13, scope: !6399)
!6402 = !DILocation(line: 942, column: 11, scope: !6399)
!6403 = !DILocation(line: 942, column: 6, scope: !6393)
!6404 = !DILocation(line: 943, column: 10, scope: !6405)
!6405 = distinct !DILexicalBlock(scope: !6399, file: !123, line: 942, column: 18)
!6406 = !DILocation(line: 943, column: 4, scope: !6405)
!6407 = !DILocation(line: 943, column: 8, scope: !6405)
!6408 = !DILocation(line: 944, column: 3, scope: !6405)
!6409 = !DILocation(line: 946, column: 2, scope: !6393)
!6410 = !DILocation(line: 947, column: 1, scope: !6393)
!6411 = distinct !DISubprogram(name: "rtd_ao_eoc", scope: !3, file: !3, line: 993, type: !6159, scopeLine: 997, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !283)
!6412 = !DILocalVariable(name: "dev", arg: 1, scope: !6411, file: !3, line: 993, type: !189)
!6413 = !DILocation(line: 993, column: 45, scope: !6411)
!6414 = !DILocalVariable(name: "s", arg: 2, scope: !6411, file: !3, line: 994, type: !226)
!6415 = !DILocation(line: 994, column: 34, scope: !6411)
!6416 = !DILocalVariable(name: "insn", arg: 3, scope: !6411, file: !3, line: 995, type: !3945)
!6417 = !DILocation(line: 995, column: 29, scope: !6411)
!6418 = !DILocalVariable(name: "context", arg: 4, scope: !6411, file: !3, line: 996, type: !200)
!6419 = !DILocation(line: 996, column: 23, scope: !6411)
!6420 = !DILocalVariable(name: "chan", scope: !6411, file: !3, line: 998, type: !7)
!6421 = !DILocation(line: 998, column: 15, scope: !6411)
!6422 = !DILocation(line: 998, column: 22, scope: !6411)
!6423 = !DILocalVariable(name: "bit", scope: !6411, file: !3, line: 999, type: !7)
!6424 = !DILocation(line: 999, column: 15, scope: !6411)
!6425 = !DILocation(line: 999, column: 22, scope: !6411)
!6426 = !DILocation(line: 999, column: 27, scope: !6411)
!6427 = !DILocation(line: 999, column: 21, scope: !6411)
!6428 = !DILocalVariable(name: "status", scope: !6411, file: !3, line: 1000, type: !7)
!6429 = !DILocation(line: 1000, column: 15, scope: !6411)
!6430 = !DILocation(line: 1002, column: 17, scope: !6411)
!6431 = !DILocation(line: 1002, column: 22, scope: !6411)
!6432 = !DILocation(line: 1002, column: 27, scope: !6411)
!6433 = !DILocation(line: 1002, column: 11, scope: !6411)
!6434 = !DILocation(line: 1002, column: 9, scope: !6411)
!6435 = !DILocation(line: 1003, column: 6, scope: !6436)
!6436 = distinct !DILexicalBlock(scope: !6411, file: !3, line: 1003, column: 6)
!6437 = !DILocation(line: 1003, column: 15, scope: !6436)
!6438 = !DILocation(line: 1003, column: 13, scope: !6436)
!6439 = !DILocation(line: 1003, column: 6, scope: !6411)
!6440 = !DILocation(line: 1004, column: 3, scope: !6436)
!6441 = !DILocation(line: 1005, column: 2, scope: !6411)
!6442 = !DILocation(line: 1006, column: 1, scope: !6411)
!6443 = distinct !DISubprogram(name: "writeb", scope: !4680, file: !4680, line: 65, type: !6444, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !283)
!6444 = !DISubroutineType(types: !6445)
!6445 = !{null, !142, !4683}
!6446 = !DILocalVariable(name: "val", arg: 1, scope: !6443, file: !4680, line: 65, type: !142)
!6447 = !DILocation(line: 65, column: 1, scope: !6443)
!6448 = !DILocalVariable(name: "addr", arg: 2, scope: !6443, file: !4680, line: 65, type: !4683)
!6449 = !{i32 -2143388996}
!6450 = distinct !DISubprogram(name: "rtd520_pci_probe", scope: !3, file: !3, line: 1342, type: !4049, scopeLine: 1344, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !283)
!6451 = !DILocalVariable(name: "dev", arg: 1, scope: !6450, file: !3, line: 1342, type: !4051)
!6452 = !DILocation(line: 1342, column: 45, scope: !6450)
!6453 = !DILocalVariable(name: "id", arg: 2, scope: !6450, file: !3, line: 1343, type: !4036)
!6454 = !DILocation(line: 1343, column: 36, scope: !6450)
!6455 = !DILocation(line: 1345, column: 32, scope: !6450)
!6456 = !DILocation(line: 1345, column: 53, scope: !6450)
!6457 = !DILocation(line: 1345, column: 57, scope: !6450)
!6458 = !DILocation(line: 1345, column: 9, scope: !6450)
!6459 = !DILocation(line: 1345, column: 2, scope: !6450)
