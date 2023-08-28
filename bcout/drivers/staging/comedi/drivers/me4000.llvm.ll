; ModuleID = '../bcout/drivers/staging/comedi/drivers/me4000.llvm.bc'
source_filename = "drivers/staging/comedi/drivers/me4000.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_me4000_driver_init6:\09\09\09"
module asm ".long\09me4000_driver_init - .\09\09\09"
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
%struct.me4000_board = type { i8*, i32, i8 }
%struct.me4000_private = type { i64, i32, i32, i32, i32 }

@__UNIQUE_ID___addressable_me4000_driver_init234 = internal global i8* bitcast (i32 ()* @me4000_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@me4000_driver = internal global %struct.comedi_driver { %struct.comedi_driver* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), %struct.module* null, i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* null, void (%struct.comedi_device*)* @me4000_detach, i32 (%struct.comedi_device*, i64)* @me4000_auto_attach, i32 0, i8** null, i32 0 }, align 8, !dbg !170
@me4000_pci_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), %struct.pci_device_id* getelementptr inbounds ([14 x %struct.pci_device_id], [14 x %struct.pci_device_id]* @me4000_pci_table, i32 0, i32 0), i32 (%struct.pci_dev*, %struct.pci_device_id*)* @me4000_pci_probe, void (%struct.pci_dev*)* @comedi_pci_auto_unconfig, i32 (%struct.pci_dev*, i32)* null, i32 (%struct.pci_dev*)* null, void (%struct.pci_dev*)* null, i32 (%struct.pci_dev*, i32)* null, %struct.pci_error_handlers* null, %struct.attribute_group** null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, align 8, !dbg !4026
@__exitcall_me4000_driver_exit = internal global void ()* @me4000_driver_exit, section ".exitcall.exit", align 8, !dbg !136
@__UNIQUE_ID_author235 = internal constant [44 x i8] c"me4000.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1, !dbg !143
@__UNIQUE_ID_description236 = internal constant [68 x i8] c"me4000.description=Comedi driver for Meilhaus ME-4000 series boards\00", section ".modinfo", align 1, !dbg !150
@__UNIQUE_ID_file237 = internal constant [50 x i8] c"me4000.file=drivers/staging/comedi/drivers/me4000\00", section ".modinfo", align 1, !dbg !155
@__UNIQUE_ID_license238 = internal constant [19 x i8] c"me4000.license=GPL\00", section ".modinfo", align 1, !dbg !160
@__UNIQUE_ID_firmware239 = internal constant [36 x i8] c"me4000.firmware=me4000_firmware.bin\00", section ".modinfo", align 1, !dbg !165
@.str = private unnamed_addr constant [7 x i8] c"me4000\00", align 1
@me4000_boards = internal constant [13 x %struct.me4000_board] [%struct.me4000_board { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 16, i8 0 }, %struct.me4000_board { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 32, i8 33 }, %struct.me4000_board { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 32, i8 33 }, %struct.me4000_board { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 32, i8 35 }, %struct.me4000_board { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i32 32, i8 35 }, %struct.me4000_board { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 32, i8 45 }, %struct.me4000_board { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 32, i8 45 }, %struct.me4000_board { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 32, i8 47 }, %struct.me4000_board { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32 32, i8 47 }, %struct.me4000_board { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i32 32, i8 61 }, %struct.me4000_board { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 32, i8 61 }, %struct.me4000_board { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 32, i8 63 }, %struct.me4000_board { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i32 32, i8 63 }], align 16, !dbg !4008
@.str.1 = private unnamed_addr constant [20 x i8] c"me4000_firmware.bin\00", align 1
@range_bipolar10 = external dso_local constant %struct.comedi_lrange, align 4
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"ME-4650\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"ME-4660\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"ME-4660i\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"ME-4660s\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"ME-4660is\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"ME-4670\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"ME-4670i\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"ME-4670s\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"ME-4670is\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"ME-4680\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"ME-4680i\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"ME-4680s\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"ME-4680is\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"Can't init Xilinx\0A\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"Xilinx is still busy (i = %d)\0A\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"DONE flag is not set\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"Download not successful\0A\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"FIFO overflow\0A\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"Undefined FIFO state\0A\00", align 1
@me4000_ai_range = internal constant { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 0, i32 2500000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }] }, align 4, !dbg !4024
@.str.22 = private unnamed_addr constant [39 x i8] c"Differential inputs are not available\0A\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"Range must be bipolar when aref = diff\0A\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"Analog input is not available\0A\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"Invalid start arg\0A\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"Invalid convert arg\0A\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"Invalid scan end arg\0A\00", align 1
@me4000_pci_table = internal constant [14 x %struct.pci_device_id] [%struct.pci_device_id { i32 5122, i32 18000, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 5122, i32 18016, i32 -1, i32 -1, i32 0, i32 0, i64 1 }, %struct.pci_device_id { i32 5122, i32 18017, i32 -1, i32 -1, i32 0, i32 0, i64 2 }, %struct.pci_device_id { i32 5122, i32 18018, i32 -1, i32 -1, i32 0, i32 0, i64 3 }, %struct.pci_device_id { i32 5122, i32 18019, i32 -1, i32 -1, i32 0, i32 0, i64 4 }, %struct.pci_device_id { i32 5122, i32 18032, i32 -1, i32 -1, i32 0, i32 0, i64 5 }, %struct.pci_device_id { i32 5122, i32 18033, i32 -1, i32 -1, i32 0, i32 0, i64 6 }, %struct.pci_device_id { i32 5122, i32 18034, i32 -1, i32 -1, i32 0, i32 0, i64 7 }, %struct.pci_device_id { i32 5122, i32 18035, i32 -1, i32 -1, i32 0, i32 0, i64 8 }, %struct.pci_device_id { i32 5122, i32 18048, i32 -1, i32 -1, i32 0, i32 0, i64 9 }, %struct.pci_device_id { i32 5122, i32 18049, i32 -1, i32 -1, i32 0, i32 0, i64 10 }, %struct.pci_device_id { i32 5122, i32 18050, i32 -1, i32 -1, i32 0, i32 0, i64 11 }, %struct.pci_device_id { i32 5122, i32 18051, i32 -1, i32 -1, i32 0, i32 0, i64 12 }, %struct.pci_device_id zeroinitializer], align 16, !dbg !4307
@llvm.used = appending global [8 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_me4000_driver_init234 to i8*), i8* bitcast (void ()* @me4000_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_me4000_driver_exit to i8*), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__UNIQUE_ID_author235, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__UNIQUE_ID_description236, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__UNIQUE_ID_file237, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__UNIQUE_ID_license238, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__UNIQUE_ID_firmware239, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @me4000_driver_init() #0 section ".init.text" !dbg !4317 {
entry:
  %call = call i32 @comedi_pci_driver_register(%struct.comedi_driver* @me4000_driver, %struct.pci_driver* @me4000_pci_driver) #5, !dbg !4320
  ret i32 %call, !dbg !4320
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @me4000_driver_exit() #0 section ".exit.text" !dbg !4321 {
entry:
  call void @comedi_pci_driver_unregister(%struct.comedi_driver* @me4000_driver, %struct.pci_driver* @me4000_pci_driver) #5, !dbg !4322
  ret void, !dbg !4322
}

; Function Attrs: noredzone
declare dso_local void @comedi_pci_driver_unregister(%struct.comedi_driver*, %struct.pci_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_pci_driver_register(%struct.comedi_driver*, %struct.pci_driver*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @me4000_detach(%struct.comedi_device* %dev) #2 !dbg !4323 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %devpriv = alloca %struct.me4000_private*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4324, metadata !DIExpression()), !dbg !4325
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4326
  %irq = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 20, !dbg !4328
  %1 = load i32, i32* %irq, align 8, !dbg !4328
  %tobool = icmp ne i32 %1, 0, !dbg !4326
  br i1 %tobool, label %if.then, label %if.end, !dbg !4329

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.me4000_private** %devpriv, metadata !4330, metadata !DIExpression()), !dbg !4340
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4341
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %2, i32 0, i32 3, !dbg !4342
  %3 = load i8*, i8** %private, align 8, !dbg !4342
  %4 = bitcast i8* %3 to %struct.me4000_private*, !dbg !4341
  store %struct.me4000_private* %4, %struct.me4000_private** %devpriv, align 8, !dbg !4340
  %5 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !4343
  %plx_regbase = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %5, i32 0, i32 0, !dbg !4344
  %6 = load i64, i64* %plx_regbase, align 8, !dbg !4344
  %add = add i64 %6, 76, !dbg !4345
  %conv = trunc i64 %add to i32, !dbg !4343
  call void @outl(i32 0, i32 %conv) #5, !dbg !4346
  br label %if.end, !dbg !4347

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4348
  call void @comedi_pci_detach(%struct.comedi_device* %7) #5, !dbg !4349
  ret void, !dbg !4350
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @me4000_auto_attach(%struct.comedi_device* %dev, i64 %context) #2 !dbg !4351 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %context.addr = alloca i64, align 8
  %pcidev = alloca %struct.pci_dev*, align 8
  %board = alloca %struct.me4000_board*, align 8
  %devpriv = alloca %struct.me4000_private*, align 8
  %s = alloca %struct.comedi_subdevice*, align 8
  %result = alloca i32, align 4
  %timer_base = alloca i64, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4352, metadata !DIExpression()), !dbg !4353
  store i64 %context, i64* %context.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %context.addr, metadata !4354, metadata !DIExpression()), !dbg !4355
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pcidev, metadata !4356, metadata !DIExpression()), !dbg !4357
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4358
  %call = call %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device* %0) #5, !dbg !4359
  store %struct.pci_dev* %call, %struct.pci_dev** %pcidev, align 8, !dbg !4357
  call void @llvm.dbg.declare(metadata %struct.me4000_board** %board, metadata !4360, metadata !DIExpression()), !dbg !4362
  store %struct.me4000_board* null, %struct.me4000_board** %board, align 8, !dbg !4362
  call void @llvm.dbg.declare(metadata %struct.me4000_private** %devpriv, metadata !4363, metadata !DIExpression()), !dbg !4364
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s, metadata !4365, metadata !DIExpression()), !dbg !4366
  call void @llvm.dbg.declare(metadata i32* %result, metadata !4367, metadata !DIExpression()), !dbg !4368
  %1 = load i64, i64* %context.addr, align 8, !dbg !4369
  %cmp = icmp ult i64 %1, 13, !dbg !4371
  br i1 %cmp, label %if.then, label %if.end, !dbg !4372

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %context.addr, align 8, !dbg !4373
  %arrayidx = getelementptr [13 x %struct.me4000_board], [13 x %struct.me4000_board]* @me4000_boards, i64 0, i64 %2, !dbg !4374
  store %struct.me4000_board* %arrayidx, %struct.me4000_board** %board, align 8, !dbg !4375
  br label %if.end, !dbg !4376

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.me4000_board*, %struct.me4000_board** %board, align 8, !dbg !4377
  %tobool = icmp ne %struct.me4000_board* %3, null, !dbg !4377
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !4379

if.then1:                                         ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !4380
  br label %return, !dbg !4380

if.end2:                                          ; preds = %if.end
  %4 = load %struct.me4000_board*, %struct.me4000_board** %board, align 8, !dbg !4381
  %5 = bitcast %struct.me4000_board* %4 to i8*, !dbg !4381
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4382
  %board_ptr = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 9, !dbg !4383
  store i8* %5, i8** %board_ptr, align 8, !dbg !4384
  %7 = load %struct.me4000_board*, %struct.me4000_board** %board, align 8, !dbg !4385
  %name = getelementptr inbounds %struct.me4000_board, %struct.me4000_board* %7, i32 0, i32 0, !dbg !4386
  %8 = load i8*, i8** %name, align 8, !dbg !4386
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4387
  %board_name = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 8, !dbg !4388
  store i8* %8, i8** %board_name, align 8, !dbg !4389
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4390
  %call3 = call i8* @comedi_alloc_devpriv(%struct.comedi_device* %10, i64 24) #5, !dbg !4391
  %11 = bitcast i8* %call3 to %struct.me4000_private*, !dbg !4391
  store %struct.me4000_private* %11, %struct.me4000_private** %devpriv, align 8, !dbg !4392
  %12 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !4393
  %tobool4 = icmp ne %struct.me4000_private* %12, null, !dbg !4393
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !4395

if.then5:                                         ; preds = %if.end2
  store i32 -12, i32* %retval, align 4, !dbg !4396
  br label %return, !dbg !4396

if.end6:                                          ; preds = %if.end2
  %13 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4397
  %call7 = call i32 @comedi_pci_enable(%struct.comedi_device* %13) #5, !dbg !4398
  store i32 %call7, i32* %result, align 4, !dbg !4399
  %14 = load i32, i32* %result, align 4, !dbg !4400
  %tobool8 = icmp ne i32 %14, 0, !dbg !4400
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !4402

if.then9:                                         ; preds = %if.end6
  %15 = load i32, i32* %result, align 4, !dbg !4403
  store i32 %15, i32* %retval, align 4, !dbg !4404
  br label %return, !dbg !4404

if.end10:                                         ; preds = %if.end6
  %16 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4405
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 44, !dbg !4405
  %arrayidx11 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 1, !dbg !4405
  %start = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx11, i32 0, i32 0, !dbg !4405
  %17 = load i64, i64* %start, align 8, !dbg !4405
  %18 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !4406
  %plx_regbase = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %18, i32 0, i32 0, !dbg !4407
  store i64 %17, i64* %plx_regbase, align 8, !dbg !4408
  %19 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4409
  %resource12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 44, !dbg !4409
  %arrayidx13 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource12, i64 0, i64 2, !dbg !4409
  %start14 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx13, i32 0, i32 0, !dbg !4409
  %20 = load i64, i64* %start14, align 8, !dbg !4409
  %21 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4410
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %21, i32 0, i32 18, !dbg !4411
  store i64 %20, i64* %iobase, align 8, !dbg !4412
  %22 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !4413
  %plx_regbase15 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %22, i32 0, i32 0, !dbg !4415
  %23 = load i64, i64* %plx_regbase15, align 8, !dbg !4415
  %tobool16 = icmp ne i64 %23, 0, !dbg !4413
  br i1 %tobool16, label %lor.lhs.false, label %if.then19, !dbg !4416

lor.lhs.false:                                    ; preds = %if.end10
  %24 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4417
  %iobase17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %24, i32 0, i32 18, !dbg !4418
  %25 = load i64, i64* %iobase17, align 8, !dbg !4418
  %tobool18 = icmp ne i64 %25, 0, !dbg !4417
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !4419

if.then19:                                        ; preds = %lor.lhs.false, %if.end10
  store i32 -19, i32* %retval, align 4, !dbg !4420
  br label %return, !dbg !4420

if.end20:                                         ; preds = %lor.lhs.false
  %26 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4421
  %27 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4422
  %dev21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 41, !dbg !4423
  %call22 = call i32 @comedi_load_firmware(%struct.comedi_device* %26, %struct.device* %dev21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 (%struct.comedi_device*, i8*, i64, i64)* @me4000_xilinx_download, i64 0) #5, !dbg !4424
  store i32 %call22, i32* %result, align 4, !dbg !4425
  %28 = load i32, i32* %result, align 4, !dbg !4426
  %cmp23 = icmp slt i32 %28, 0, !dbg !4428
  br i1 %cmp23, label %if.then24, label %if.end25, !dbg !4429

if.then24:                                        ; preds = %if.end20
  %29 = load i32, i32* %result, align 4, !dbg !4430
  store i32 %29, i32* %retval, align 4, !dbg !4431
  br label %return, !dbg !4431

if.end25:                                         ; preds = %if.end20
  %30 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4432
  call void @me4000_reset(%struct.comedi_device* %30) #5, !dbg !4433
  %31 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4434
  %irq = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 43, !dbg !4436
  %32 = load i32, i32* %irq, align 4, !dbg !4436
  %cmp26 = icmp ugt i32 %32, 0, !dbg !4437
  br i1 %cmp26, label %if.then27, label %if.end37, !dbg !4438

if.then27:                                        ; preds = %if.end25
  %33 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4439
  %irq28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 43, !dbg !4441
  %34 = load i32, i32* %irq28, align 4, !dbg !4441
  %35 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4442
  %board_name29 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %35, i32 0, i32 8, !dbg !4443
  %36 = load i8*, i8** %board_name29, align 8, !dbg !4443
  %37 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4444
  %38 = bitcast %struct.comedi_device* %37 to i8*, !dbg !4444
  %call30 = call i32 @request_irq(i32 %34, i32 (i32, i8*)* @me4000_ai_isr, i64 128, i8* %36, i8* %38) #5, !dbg !4445
  store i32 %call30, i32* %result, align 4, !dbg !4446
  %39 = load i32, i32* %result, align 4, !dbg !4447
  %cmp31 = icmp eq i32 %39, 0, !dbg !4449
  br i1 %cmp31, label %if.then32, label %if.end36, !dbg !4450

if.then32:                                        ; preds = %if.then27
  %40 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4451
  %irq33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 43, !dbg !4453
  %41 = load i32, i32* %irq33, align 4, !dbg !4453
  %42 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4454
  %irq34 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %42, i32 0, i32 20, !dbg !4455
  store i32 %41, i32* %irq34, align 8, !dbg !4456
  %43 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !4457
  %plx_regbase35 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %43, i32 0, i32 0, !dbg !4458
  %44 = load i64, i64* %plx_regbase35, align 8, !dbg !4458
  %add = add i64 %44, 76, !dbg !4459
  %conv = trunc i64 %add to i32, !dbg !4457
  call void @outl(i32 67, i32 %conv) #5, !dbg !4460
  br label %if.end36, !dbg !4461

if.end36:                                         ; preds = %if.then32, %if.then27
  br label %if.end37, !dbg !4462

if.end37:                                         ; preds = %if.end36, %if.end25
  %45 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4463
  %call38 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %45, i32 4) #5, !dbg !4464
  store i32 %call38, i32* %result, align 4, !dbg !4465
  %46 = load i32, i32* %result, align 4, !dbg !4466
  %tobool39 = icmp ne i32 %46, 0, !dbg !4466
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !4468

if.then40:                                        ; preds = %if.end37
  %47 = load i32, i32* %result, align 4, !dbg !4469
  store i32 %47, i32* %retval, align 4, !dbg !4470
  br label %return, !dbg !4470

if.end41:                                         ; preds = %if.end37
  %48 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4471
  %subdevices = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %48, i32 0, i32 16, !dbg !4472
  %49 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices, align 8, !dbg !4472
  %arrayidx42 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %49, i64 0, !dbg !4471
  store %struct.comedi_subdevice* %arrayidx42, %struct.comedi_subdevice** %s, align 8, !dbg !4473
  %50 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4474
  %type = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %50, i32 0, i32 2, !dbg !4475
  store i32 1, i32* %type, align 4, !dbg !4476
  %51 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4477
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %51, i32 0, i32 4, !dbg !4478
  store i32 3211264, i32* %subdev_flags, align 4, !dbg !4479
  %52 = load %struct.me4000_board*, %struct.me4000_board** %board, align 8, !dbg !4480
  %can_do_diff_ai = getelementptr inbounds %struct.me4000_board, %struct.me4000_board* %52, i32 0, i32 2, !dbg !4482
  %bf.load = load i8, i8* %can_do_diff_ai, align 4, !dbg !4482
  %bf.clear = and i8 %bf.load, 1, !dbg !4482
  %bf.cast = zext i8 %bf.clear to i32, !dbg !4482
  %tobool43 = icmp ne i32 %bf.cast, 0, !dbg !4480
  br i1 %tobool43, label %if.then44, label %if.end46, !dbg !4483

if.then44:                                        ; preds = %if.end41
  %53 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4484
  %subdev_flags45 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %53, i32 0, i32 4, !dbg !4485
  %54 = load i32, i32* %subdev_flags45, align 4, !dbg !4486
  %or = or i32 %54, 4194304, !dbg !4486
  store i32 %or, i32* %subdev_flags45, align 4, !dbg !4486
  br label %if.end46, !dbg !4484

if.end46:                                         ; preds = %if.then44, %if.end41
  %55 = load %struct.me4000_board*, %struct.me4000_board** %board, align 8, !dbg !4487
  %ai_nchan = getelementptr inbounds %struct.me4000_board, %struct.me4000_board* %55, i32 0, i32 1, !dbg !4488
  %56 = load i32, i32* %ai_nchan, align 8, !dbg !4488
  %57 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4489
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %57, i32 0, i32 3, !dbg !4490
  store i32 %56, i32* %n_chan, align 8, !dbg !4491
  %58 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4492
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %58, i32 0, i32 13, !dbg !4493
  store i32 65535, i32* %maxdata, align 8, !dbg !4494
  %59 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4495
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %59, i32 0, i32 5, !dbg !4496
  store i32 1024, i32* %len_chanlist, align 8, !dbg !4497
  %60 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4498
  %range_table = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %60, i32 0, i32 15, !dbg !4499
  store %struct.comedi_lrange* bitcast ({ i32, [4 x %struct.comedi_krange] }* @me4000_ai_range to %struct.comedi_lrange*), %struct.comedi_lrange** %range_table, align 8, !dbg !4500
  %61 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4501
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %61, i32 0, i32 18, !dbg !4502
  %insn_read47 = bitcast {}** %insn_read to i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)**, !dbg !4502
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @me4000_ai_insn_read, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_read47, align 8, !dbg !4503
  %62 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4504
  %irq48 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %62, i32 0, i32 20, !dbg !4506
  %63 = load i32, i32* %irq48, align 8, !dbg !4506
  %tobool49 = icmp ne i32 %63, 0, !dbg !4504
  br i1 %tobool49, label %if.then50, label %if.end53, !dbg !4507

if.then50:                                        ; preds = %if.end46
  %64 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4508
  %65 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4510
  %read_subdev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %65, i32 0, i32 21, !dbg !4511
  store %struct.comedi_subdevice* %64, %struct.comedi_subdevice** %read_subdev, align 8, !dbg !4512
  %66 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4513
  %subdev_flags51 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %66, i32 0, i32 4, !dbg !4514
  %67 = load i32, i32* %subdev_flags51, align 4, !dbg !4515
  %or52 = or i32 %67, 32768, !dbg !4515
  store i32 %or52, i32* %subdev_flags51, align 4, !dbg !4515
  %68 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4516
  %cancel = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %68, i32 0, i32 25, !dbg !4517
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @me4000_ai_cancel, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)** %cancel, align 8, !dbg !4518
  %69 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4519
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %69, i32 0, i32 23, !dbg !4520
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @me4000_ai_do_cmd_test, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)** %do_cmdtest, align 8, !dbg !4521
  %70 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4522
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %70, i32 0, i32 22, !dbg !4523
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @me4000_ai_do_cmd, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)** %do_cmd, align 8, !dbg !4524
  br label %if.end53, !dbg !4525

if.end53:                                         ; preds = %if.then50, %if.end46
  %71 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4526
  %subdevices54 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %71, i32 0, i32 16, !dbg !4527
  %72 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices54, align 8, !dbg !4527
  %arrayidx55 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %72, i64 1, !dbg !4526
  store %struct.comedi_subdevice* %arrayidx55, %struct.comedi_subdevice** %s, align 8, !dbg !4528
  %73 = load %struct.me4000_board*, %struct.me4000_board** %board, align 8, !dbg !4529
  %has_ao = getelementptr inbounds %struct.me4000_board, %struct.me4000_board* %73, i32 0, i32 2, !dbg !4531
  %bf.load56 = load i8, i8* %has_ao, align 4, !dbg !4531
  %bf.lshr = lshr i8 %bf.load56, 3, !dbg !4531
  %bf.clear57 = and i8 %bf.lshr, 1, !dbg !4531
  %bf.cast58 = zext i8 %bf.clear57 to i32, !dbg !4531
  %tobool59 = icmp ne i32 %bf.cast58, 0, !dbg !4529
  br i1 %tobool59, label %if.then60, label %if.else, !dbg !4532

if.then60:                                        ; preds = %if.end53
  %74 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4533
  %type61 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %74, i32 0, i32 2, !dbg !4535
  store i32 2, i32* %type61, align 4, !dbg !4536
  %75 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4537
  %subdev_flags62 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %75, i32 0, i32 4, !dbg !4538
  store i32 3276800, i32* %subdev_flags62, align 4, !dbg !4539
  %76 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4540
  %n_chan63 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %76, i32 0, i32 3, !dbg !4541
  store i32 4, i32* %n_chan63, align 8, !dbg !4542
  %77 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4543
  %maxdata64 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %77, i32 0, i32 13, !dbg !4544
  store i32 65535, i32* %maxdata64, align 8, !dbg !4545
  %78 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4546
  %range_table65 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %78, i32 0, i32 15, !dbg !4547
  store %struct.comedi_lrange* @range_bipolar10, %struct.comedi_lrange** %range_table65, align 8, !dbg !4548
  %79 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4549
  %insn_write = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %79, i32 0, i32 19, !dbg !4550
  %insn_write66 = bitcast {}** %insn_write to i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)**, !dbg !4550
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @me4000_ao_insn_write, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_write66, align 8, !dbg !4551
  %80 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4552
  %call67 = call i32 @comedi_alloc_subdev_readback(%struct.comedi_subdevice* %80) #5, !dbg !4553
  store i32 %call67, i32* %result, align 4, !dbg !4554
  %81 = load i32, i32* %result, align 4, !dbg !4555
  %tobool68 = icmp ne i32 %81, 0, !dbg !4555
  br i1 %tobool68, label %if.then69, label %if.end70, !dbg !4557

if.then69:                                        ; preds = %if.then60
  %82 = load i32, i32* %result, align 4, !dbg !4558
  store i32 %82, i32* %retval, align 4, !dbg !4559
  br label %return, !dbg !4559

if.end70:                                         ; preds = %if.then60
  br label %if.end72, !dbg !4560

if.else:                                          ; preds = %if.end53
  %83 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4561
  %type71 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %83, i32 0, i32 2, !dbg !4563
  store i32 0, i32* %type71, align 4, !dbg !4564
  br label %if.end72

if.end72:                                         ; preds = %if.else, %if.end70
  %84 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4565
  %subdevices73 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %84, i32 0, i32 16, !dbg !4566
  %85 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices73, align 8, !dbg !4566
  %arrayidx74 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %85, i64 2, !dbg !4565
  store %struct.comedi_subdevice* %arrayidx74, %struct.comedi_subdevice** %s, align 8, !dbg !4567
  %86 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4568
  %type75 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %86, i32 0, i32 2, !dbg !4569
  store i32 5, i32* %type75, align 4, !dbg !4570
  %87 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4571
  %subdev_flags76 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %87, i32 0, i32 4, !dbg !4572
  store i32 196608, i32* %subdev_flags76, align 4, !dbg !4573
  %88 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4574
  %n_chan77 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %88, i32 0, i32 3, !dbg !4575
  store i32 32, i32* %n_chan77, align 8, !dbg !4576
  %89 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4577
  %maxdata78 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %89, i32 0, i32 13, !dbg !4578
  store i32 1, i32* %maxdata78, align 8, !dbg !4579
  %90 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4580
  %range_table79 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %90, i32 0, i32 15, !dbg !4581
  store %struct.comedi_lrange* @range_unipolar5, %struct.comedi_lrange** %range_table79, align 8, !dbg !4582
  %91 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4583
  %insn_bits = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %91, i32 0, i32 20, !dbg !4584
  %insn_bits80 = bitcast {}** %insn_bits to i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)**, !dbg !4584
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @me4000_dio_insn_bits, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_bits80, align 8, !dbg !4585
  %92 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4586
  %insn_config = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %92, i32 0, i32 21, !dbg !4587
  %insn_config81 = bitcast {}** %insn_config to i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)**, !dbg !4587
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @me4000_dio_insn_config, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_config81, align 8, !dbg !4588
  %93 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4589
  %iobase82 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %93, i32 0, i32 18, !dbg !4591
  %94 = load i64, i64* %iobase82, align 8, !dbg !4591
  %add83 = add i64 %94, 176, !dbg !4592
  %conv84 = trunc i64 %add83 to i32, !dbg !4589
  %call85 = call i32 @inl(i32 %conv84) #5, !dbg !4593
  %tobool86 = icmp ne i32 %call85, 0, !dbg !4593
  br i1 %tobool86, label %if.end92, label %if.then87, !dbg !4594

if.then87:                                        ; preds = %if.end72
  %95 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4595
  %io_bits = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %95, i32 0, i32 12, !dbg !4597
  %96 = load i32, i32* %io_bits, align 4, !dbg !4598
  %or88 = or i32 %96, 255, !dbg !4598
  store i32 %or88, i32* %io_bits, align 4, !dbg !4598
  %97 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4599
  %iobase89 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %97, i32 0, i32 18, !dbg !4600
  %98 = load i64, i64* %iobase89, align 8, !dbg !4600
  %add90 = add i64 %98, 176, !dbg !4601
  %conv91 = trunc i64 %add90 to i32, !dbg !4599
  call void @outl(i32 1, i32 %conv91) #5, !dbg !4602
  br label %if.end92, !dbg !4603

if.end92:                                         ; preds = %if.then87, %if.end72
  %99 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4604
  %subdevices93 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %99, i32 0, i32 16, !dbg !4605
  %100 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices93, align 8, !dbg !4605
  %arrayidx94 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %100, i64 3, !dbg !4604
  store %struct.comedi_subdevice* %arrayidx94, %struct.comedi_subdevice** %s, align 8, !dbg !4606
  %101 = load %struct.me4000_board*, %struct.me4000_board** %board, align 8, !dbg !4607
  %has_counter = getelementptr inbounds %struct.me4000_board, %struct.me4000_board* %101, i32 0, i32 2, !dbg !4609
  %bf.load95 = load i8, i8* %has_counter, align 4, !dbg !4609
  %bf.lshr96 = lshr i8 %bf.load95, 5, !dbg !4609
  %bf.clear97 = and i8 %bf.lshr96, 1, !dbg !4609
  %bf.cast98 = zext i8 %bf.clear97 to i32, !dbg !4609
  %tobool99 = icmp ne i32 %bf.cast98, 0, !dbg !4607
  br i1 %tobool99, label %if.then100, label %if.else113, !dbg !4610

if.then100:                                       ; preds = %if.end92
  call void @llvm.dbg.declare(metadata i64* %timer_base, metadata !4611, metadata !DIExpression()), !dbg !4613
  %102 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4614
  %resource101 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %102, i32 0, i32 44, !dbg !4614
  %arrayidx102 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource101, i64 0, i64 3, !dbg !4614
  %start103 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx102, i32 0, i32 0, !dbg !4614
  %103 = load i64, i64* %start103, align 8, !dbg !4614
  store i64 %103, i64* %timer_base, align 8, !dbg !4613
  %104 = load i64, i64* %timer_base, align 8, !dbg !4615
  %tobool104 = icmp ne i64 %104, 0, !dbg !4615
  br i1 %tobool104, label %if.end106, label %if.then105, !dbg !4617

if.then105:                                       ; preds = %if.then100
  store i32 -19, i32* %retval, align 4, !dbg !4618
  br label %return, !dbg !4618

if.end106:                                        ; preds = %if.then100
  %105 = load i64, i64* %timer_base, align 8, !dbg !4619
  %call107 = call %struct.comedi_8254* @comedi_8254_init(i64 %105, i32 0, i32 1, i32 0) #5, !dbg !4620
  %106 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4621
  %pacer = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %106, i32 0, i32 2, !dbg !4622
  store %struct.comedi_8254* %call107, %struct.comedi_8254** %pacer, align 8, !dbg !4623
  %107 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4624
  %pacer108 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %107, i32 0, i32 2, !dbg !4626
  %108 = load %struct.comedi_8254*, %struct.comedi_8254** %pacer108, align 8, !dbg !4626
  %tobool109 = icmp ne %struct.comedi_8254* %108, null, !dbg !4624
  br i1 %tobool109, label %if.end111, label %if.then110, !dbg !4627

if.then110:                                       ; preds = %if.end106
  store i32 -12, i32* %retval, align 4, !dbg !4628
  br label %return, !dbg !4628

if.end111:                                        ; preds = %if.end106
  %109 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4629
  %110 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4630
  %pacer112 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %110, i32 0, i32 2, !dbg !4631
  %111 = load %struct.comedi_8254*, %struct.comedi_8254** %pacer112, align 8, !dbg !4631
  call void @comedi_8254_subdevice_init(%struct.comedi_subdevice* %109, %struct.comedi_8254* %111) #5, !dbg !4632
  br label %if.end115, !dbg !4633

if.else113:                                       ; preds = %if.end92
  %112 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4634
  %type114 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %112, i32 0, i32 2, !dbg !4636
  store i32 0, i32* %type114, align 4, !dbg !4637
  br label %if.end115

if.end115:                                        ; preds = %if.else113, %if.end111
  store i32 0, i32* %retval, align 4, !dbg !4638
  br label %return, !dbg !4638

return:                                           ; preds = %if.end115, %if.then110, %if.then105, %if.then69, %if.then40, %if.then24, %if.then19, %if.then9, %if.then5, %if.then1
  %113 = load i32, i32* %retval, align 4, !dbg !4639
  ret i32 %113, !dbg !4639
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outl(i32 %value, i32 %port) #2 !dbg !4640 {
entry:
  %value.addr = alloca i32, align 4
  %port.addr = alloca i32, align 4
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !4644, metadata !DIExpression()), !dbg !4645
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !4646, metadata !DIExpression()), !dbg !4645
  %0 = load i32, i32* %value.addr, align 4, !dbg !4645
  %1 = load i32, i32* %port.addr, align 4, !dbg !4645
  call void asm sideeffect "outl $0, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 %1) #6, !dbg !4645, !srcloc !4647
  ret void, !dbg !4645
}

; Function Attrs: noredzone
declare dso_local void @comedi_pci_detach(%struct.comedi_device*) #1

; Function Attrs: noredzone
declare dso_local %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device*) #1

; Function Attrs: noredzone
declare dso_local i8* @comedi_alloc_devpriv(%struct.comedi_device*, i64) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_pci_enable(%struct.comedi_device*) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_load_firmware(%struct.comedi_device*, %struct.device*, i8*, i32 (%struct.comedi_device*, i8*, i64, i64)*, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @me4000_xilinx_download(%struct.comedi_device* %dev, i8* %data, i64 %size, i64 %context) #2 !dbg !4648 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %context.addr = alloca i64, align 8
  %pcidev = alloca %struct.pci_dev*, align 8
  %devpriv = alloca %struct.me4000_private*, align 8
  %xilinx_iobase = alloca i64, align 8
  %file_length = alloca i32, align 4
  %val = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4653, metadata !DIExpression()), !dbg !4654
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4655, metadata !DIExpression()), !dbg !4656
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4657, metadata !DIExpression()), !dbg !4658
  store i64 %context, i64* %context.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %context.addr, metadata !4659, metadata !DIExpression()), !dbg !4660
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pcidev, metadata !4661, metadata !DIExpression()), !dbg !4662
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4663
  %call = call %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device* %0) #5, !dbg !4664
  store %struct.pci_dev* %call, %struct.pci_dev** %pcidev, align 8, !dbg !4662
  call void @llvm.dbg.declare(metadata %struct.me4000_private** %devpriv, metadata !4665, metadata !DIExpression()), !dbg !4666
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4667
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %1, i32 0, i32 3, !dbg !4668
  %2 = load i8*, i8** %private, align 8, !dbg !4668
  %3 = bitcast i8* %2 to %struct.me4000_private*, !dbg !4667
  store %struct.me4000_private* %3, %struct.me4000_private** %devpriv, align 8, !dbg !4666
  call void @llvm.dbg.declare(metadata i64* %xilinx_iobase, metadata !4669, metadata !DIExpression()), !dbg !4670
  %4 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4671
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 44, !dbg !4671
  %arrayidx = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 5, !dbg !4671
  %start = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx, i32 0, i32 0, !dbg !4671
  %5 = load i64, i64* %start, align 8, !dbg !4671
  store i64 %5, i64* %xilinx_iobase, align 8, !dbg !4670
  call void @llvm.dbg.declare(metadata i32* %file_length, metadata !4672, metadata !DIExpression()), !dbg !4673
  call void @llvm.dbg.declare(metadata i32* %val, metadata !4674, metadata !DIExpression()), !dbg !4675
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4676, metadata !DIExpression()), !dbg !4677
  %6 = load i64, i64* %xilinx_iobase, align 8, !dbg !4678
  %tobool = icmp ne i64 %6, 0, !dbg !4678
  br i1 %tobool, label %if.end, label %if.then, !dbg !4680

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !4681
  br label %return, !dbg !4681

if.end:                                           ; preds = %entry
  %7 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !4682
  %plx_regbase = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %7, i32 0, i32 0, !dbg !4683
  %8 = load i64, i64* %plx_regbase, align 8, !dbg !4683
  %add = add i64 %8, 76, !dbg !4684
  %conv = trunc i64 %add to i32, !dbg !4682
  call void @outl(i32 16, i32 %conv) #5, !dbg !4685
  %9 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !4686
  %plx_regbase1 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %9, i32 0, i32 0, !dbg !4687
  %10 = load i64, i64* %plx_regbase1, align 8, !dbg !4687
  %add2 = add i64 %10, 80, !dbg !4688
  %conv3 = trunc i64 %add2 to i32, !dbg !4686
  %call4 = call i32 @inl(i32 %conv3) #5, !dbg !4689
  store i32 %call4, i32* %val, align 4, !dbg !4690
  %11 = load i32, i32* %val, align 4, !dbg !4691
  %conv5 = zext i32 %11 to i64, !dbg !4691
  %or = or i64 %conv5, 256, !dbg !4691
  %conv6 = trunc i64 %or to i32, !dbg !4691
  store i32 %conv6, i32* %val, align 4, !dbg !4691
  %12 = load i32, i32* %val, align 4, !dbg !4692
  %13 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !4693
  %plx_regbase7 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %13, i32 0, i32 0, !dbg !4694
  %14 = load i64, i64* %plx_regbase7, align 8, !dbg !4694
  %add8 = add i64 %14, 80, !dbg !4695
  %conv9 = trunc i64 %add8 to i32, !dbg !4693
  call void @outl(i32 %12, i32 %conv9) #5, !dbg !4696
  %15 = load i64, i64* %xilinx_iobase, align 8, !dbg !4697
  %add10 = add i64 %15, 200, !dbg !4698
  %conv11 = trunc i64 %add10 to i32, !dbg !4697
  %call12 = call zeroext i8 @inb(i32 %conv11) #5, !dbg !4699
  call void @usleep_range(i64 20, i64 1000) #5, !dbg !4700
  %16 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !4701
  %plx_regbase13 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %16, i32 0, i32 0, !dbg !4702
  %17 = load i64, i64* %plx_regbase13, align 8, !dbg !4702
  %add14 = add i64 %17, 76, !dbg !4703
  %conv15 = trunc i64 %add14 to i32, !dbg !4701
  %call16 = call i32 @inl(i32 %conv15) #5, !dbg !4704
  store i32 %call16, i32* %val, align 4, !dbg !4705
  %18 = load i32, i32* %val, align 4, !dbg !4706
  %conv17 = zext i32 %18 to i64, !dbg !4706
  %and = and i64 %conv17, 32, !dbg !4708
  %tobool18 = icmp ne i64 %and, 0, !dbg !4708
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !4709

if.then19:                                        ; preds = %if.end
  %19 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4710
  %class_dev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 4, !dbg !4710
  %20 = load %struct.device*, %struct.device** %class_dev, align 8, !dbg !4710
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0)) #7, !dbg !4710
  store i32 -5, i32* %retval, align 4, !dbg !4712
  br label %return, !dbg !4712

if.end20:                                         ; preds = %if.end
  %21 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !4713
  %plx_regbase21 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %21, i32 0, i32 0, !dbg !4714
  %22 = load i64, i64* %plx_regbase21, align 8, !dbg !4714
  %add22 = add i64 %22, 80, !dbg !4715
  %conv23 = trunc i64 %add22 to i32, !dbg !4713
  %call24 = call i32 @inl(i32 %conv23) #5, !dbg !4716
  store i32 %call24, i32* %val, align 4, !dbg !4717
  %23 = load i32, i32* %val, align 4, !dbg !4718
  %conv25 = zext i32 %23 to i64, !dbg !4718
  %and26 = and i64 %conv25, -257, !dbg !4718
  %conv27 = trunc i64 %and26 to i32, !dbg !4718
  store i32 %conv27, i32* %val, align 4, !dbg !4718
  %24 = load i32, i32* %val, align 4, !dbg !4719
  %25 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !4720
  %plx_regbase28 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %25, i32 0, i32 0, !dbg !4721
  %26 = load i64, i64* %plx_regbase28, align 8, !dbg !4721
  %add29 = add i64 %26, 80, !dbg !4722
  %conv30 = trunc i64 %add29 to i32, !dbg !4720
  call void @outl(i32 %24, i32 %conv30) #5, !dbg !4723
  %27 = load i8*, i8** %data.addr, align 8, !dbg !4724
  %arrayidx31 = getelementptr i8, i8* %27, i64 0, !dbg !4724
  %28 = load i8, i8* %arrayidx31, align 1, !dbg !4724
  %conv32 = zext i8 %28 to i32, !dbg !4725
  %and33 = and i32 %conv32, 255, !dbg !4726
  %shl = shl i32 %and33, 24, !dbg !4727
  %29 = load i8*, i8** %data.addr, align 8, !dbg !4728
  %arrayidx34 = getelementptr i8, i8* %29, i64 1, !dbg !4728
  %30 = load i8, i8* %arrayidx34, align 1, !dbg !4728
  %conv35 = zext i8 %30 to i32, !dbg !4729
  %and36 = and i32 %conv35, 255, !dbg !4730
  %shl37 = shl i32 %and36, 16, !dbg !4731
  %add38 = add i32 %shl, %shl37, !dbg !4732
  %31 = load i8*, i8** %data.addr, align 8, !dbg !4733
  %arrayidx39 = getelementptr i8, i8* %31, i64 2, !dbg !4733
  %32 = load i8, i8* %arrayidx39, align 1, !dbg !4733
  %conv40 = zext i8 %32 to i32, !dbg !4734
  %and41 = and i32 %conv40, 255, !dbg !4735
  %shl42 = shl i32 %and41, 8, !dbg !4736
  %add43 = add i32 %add38, %shl42, !dbg !4737
  %33 = load i8*, i8** %data.addr, align 8, !dbg !4738
  %arrayidx44 = getelementptr i8, i8* %33, i64 3, !dbg !4738
  %34 = load i8, i8* %arrayidx44, align 1, !dbg !4738
  %conv45 = zext i8 %34 to i32, !dbg !4739
  %and46 = and i32 %conv45, 255, !dbg !4740
  %add47 = add i32 %add43, %and46, !dbg !4741
  store i32 %add47, i32* %file_length, align 4, !dbg !4742
  call void @usleep_range(i64 10, i64 1000) #5, !dbg !4743
  store i32 0, i32* %i, align 4, !dbg !4744
  br label %for.cond, !dbg !4746

for.cond:                                         ; preds = %for.inc, %if.end20
  %35 = load i32, i32* %i, align 4, !dbg !4747
  %36 = load i32, i32* %file_length, align 4, !dbg !4749
  %cmp = icmp ult i32 %35, %36, !dbg !4750
  br i1 %cmp, label %for.body, label %for.end, !dbg !4751

for.body:                                         ; preds = %for.cond
  %37 = load i8*, i8** %data.addr, align 8, !dbg !4752
  %38 = load i32, i32* %i, align 4, !dbg !4754
  %add49 = add i32 16, %38, !dbg !4755
  %idxprom = zext i32 %add49 to i64, !dbg !4752
  %arrayidx50 = getelementptr i8, i8* %37, i64 %idxprom, !dbg !4752
  %39 = load i8, i8* %arrayidx50, align 1, !dbg !4752
  %40 = load i64, i64* %xilinx_iobase, align 8, !dbg !4756
  %conv51 = trunc i64 %40 to i32, !dbg !4756
  call void @outb(i8 zeroext %39, i32 %conv51) #5, !dbg !4757
  call void @usleep_range(i64 10, i64 1000) #5, !dbg !4758
  %41 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !4759
  %plx_regbase52 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %41, i32 0, i32 0, !dbg !4760
  %42 = load i64, i64* %plx_regbase52, align 8, !dbg !4760
  %add53 = add i64 %42, 80, !dbg !4761
  %conv54 = trunc i64 %add53 to i32, !dbg !4759
  %call55 = call i32 @inl(i32 %conv54) #5, !dbg !4762
  store i32 %call55, i32* %val, align 4, !dbg !4763
  %43 = load i32, i32* %val, align 4, !dbg !4764
  %conv56 = zext i32 %43 to i64, !dbg !4764
  %and57 = and i64 %conv56, 32, !dbg !4766
  %tobool58 = icmp ne i64 %and57, 0, !dbg !4766
  br i1 %tobool58, label %if.then59, label %if.end61, !dbg !4767

if.then59:                                        ; preds = %for.body
  %44 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4768
  %class_dev60 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %44, i32 0, i32 4, !dbg !4768
  %45 = load %struct.device*, %struct.device** %class_dev60, align 8, !dbg !4768
  %46 = load i32, i32* %i, align 4, !dbg !4768
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0), i32 %46) #7, !dbg !4768
  store i32 -5, i32* %retval, align 4, !dbg !4770
  br label %return, !dbg !4770

if.end61:                                         ; preds = %for.body
  br label %for.inc, !dbg !4771

for.inc:                                          ; preds = %if.end61
  %47 = load i32, i32* %i, align 4, !dbg !4772
  %inc = add i32 %47, 1, !dbg !4772
  store i32 %inc, i32* %i, align 4, !dbg !4772
  br label %for.cond, !dbg !4773, !llvm.loop !4774

for.end:                                          ; preds = %for.cond
  %48 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !4776
  %plx_regbase62 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %48, i32 0, i32 0, !dbg !4777
  %49 = load i64, i64* %plx_regbase62, align 8, !dbg !4777
  %add63 = add i64 %49, 80, !dbg !4778
  %conv64 = trunc i64 %add63 to i32, !dbg !4776
  %call65 = call i32 @inl(i32 %conv64) #5, !dbg !4779
  store i32 %call65, i32* %val, align 4, !dbg !4780
  %50 = load i32, i32* %val, align 4, !dbg !4781
  %conv66 = zext i32 %50 to i64, !dbg !4781
  %and67 = and i64 %conv66, 4, !dbg !4783
  %tobool68 = icmp ne i64 %and67, 0, !dbg !4783
  br i1 %tobool68, label %if.end72, label %if.then69, !dbg !4784

if.then69:                                        ; preds = %for.end
  %51 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4785
  %class_dev70 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %51, i32 0, i32 4, !dbg !4785
  %52 = load %struct.device*, %struct.device** %class_dev70, align 8, !dbg !4785
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0)) #7, !dbg !4785
  %53 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4787
  %class_dev71 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %53, i32 0, i32 4, !dbg !4787
  %54 = load %struct.device*, %struct.device** %class_dev71, align 8, !dbg !4787
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0)) #7, !dbg !4787
  store i32 -5, i32* %retval, align 4, !dbg !4788
  br label %return, !dbg !4788

if.end72:                                         ; preds = %for.end
  %55 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !4789
  %plx_regbase73 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %55, i32 0, i32 0, !dbg !4790
  %56 = load i64, i64* %plx_regbase73, align 8, !dbg !4790
  %add74 = add i64 %56, 80, !dbg !4791
  %conv75 = trunc i64 %add74 to i32, !dbg !4789
  %call76 = call i32 @inl(i32 %conv75) #5, !dbg !4792
  store i32 %call76, i32* %val, align 4, !dbg !4793
  %57 = load i32, i32* %val, align 4, !dbg !4794
  %conv77 = zext i32 %57 to i64, !dbg !4794
  %or78 = or i64 %conv77, 256, !dbg !4794
  %conv79 = trunc i64 %or78 to i32, !dbg !4794
  store i32 %conv79, i32* %val, align 4, !dbg !4794
  %58 = load i32, i32* %val, align 4, !dbg !4795
  %59 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !4796
  %plx_regbase80 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %59, i32 0, i32 0, !dbg !4797
  %60 = load i64, i64* %plx_regbase80, align 8, !dbg !4797
  %add81 = add i64 %60, 80, !dbg !4798
  %conv82 = trunc i64 %add81 to i32, !dbg !4796
  call void @outl(i32 %58, i32 %conv82) #5, !dbg !4799
  store i32 0, i32* %retval, align 4, !dbg !4800
  br label %return, !dbg !4800

return:                                           ; preds = %if.end72, %if.then69, %if.then59, %if.then19, %if.then
  %61 = load i32, i32* %retval, align 4, !dbg !4801
  ret i32 %61, !dbg !4801
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @me4000_reset(%struct.comedi_device* %dev) #2 !dbg !4802 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %devpriv = alloca %struct.me4000_private*, align 8
  %val = alloca i32, align 4
  %chan = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4803, metadata !DIExpression()), !dbg !4804
  call void @llvm.dbg.declare(metadata %struct.me4000_private** %devpriv, metadata !4805, metadata !DIExpression()), !dbg !4806
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4807
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !4808
  %1 = load i8*, i8** %private, align 8, !dbg !4808
  %2 = bitcast i8* %1 to %struct.me4000_private*, !dbg !4807
  store %struct.me4000_private* %2, %struct.me4000_private** %devpriv, align 8, !dbg !4806
  call void @llvm.dbg.declare(metadata i32* %val, metadata !4809, metadata !DIExpression()), !dbg !4810
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !4811, metadata !DIExpression()), !dbg !4812
  %3 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !4813
  %plx_regbase = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %3, i32 0, i32 0, !dbg !4814
  %4 = load i64, i64* %plx_regbase, align 8, !dbg !4814
  %add = add i64 %4, 76, !dbg !4815
  %conv = trunc i64 %add to i32, !dbg !4813
  call void @outl(i32 0, i32 %conv) #5, !dbg !4816
  %5 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !4817
  %plx_regbase1 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %5, i32 0, i32 0, !dbg !4818
  %6 = load i64, i64* %plx_regbase1, align 8, !dbg !4818
  %add2 = add i64 %6, 80, !dbg !4819
  %conv3 = trunc i64 %add2 to i32, !dbg !4817
  %call = call i32 @inl(i32 %conv3) #5, !dbg !4820
  store i32 %call, i32* %val, align 4, !dbg !4821
  %7 = load i32, i32* %val, align 4, !dbg !4822
  %conv4 = zext i32 %7 to i64, !dbg !4822
  %or = or i64 %conv4, 1073741824, !dbg !4822
  %conv5 = trunc i64 %or to i32, !dbg !4822
  store i32 %conv5, i32* %val, align 4, !dbg !4822
  %8 = load i32, i32* %val, align 4, !dbg !4823
  %9 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !4824
  %plx_regbase6 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %9, i32 0, i32 0, !dbg !4825
  %10 = load i64, i64* %plx_regbase6, align 8, !dbg !4825
  %add7 = add i64 %10, 80, !dbg !4826
  %conv8 = trunc i64 %add7 to i32, !dbg !4824
  call void @outl(i32 %8, i32 %conv8) #5, !dbg !4827
  %11 = load i32, i32* %val, align 4, !dbg !4828
  %conv9 = zext i32 %11 to i64, !dbg !4828
  %and = and i64 %conv9, -1073741825, !dbg !4828
  %conv10 = trunc i64 %and to i32, !dbg !4828
  store i32 %conv10, i32* %val, align 4, !dbg !4828
  %12 = load i32, i32* %val, align 4, !dbg !4829
  %13 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !4830
  %plx_regbase11 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %13, i32 0, i32 0, !dbg !4831
  %14 = load i64, i64* %plx_regbase11, align 8, !dbg !4831
  %add12 = add i64 %14, 80, !dbg !4832
  %conv13 = trunc i64 %add12 to i32, !dbg !4830
  call void @outl(i32 %12, i32 %conv13) #5, !dbg !4833
  store i32 0, i32* %chan, align 4, !dbg !4834
  br label %for.cond, !dbg !4836

for.cond:                                         ; preds = %for.inc, %entry
  %15 = load i32, i32* %chan, align 4, !dbg !4837
  %cmp = icmp slt i32 %15, 4, !dbg !4839
  br i1 %cmp, label %for.body, label %for.end, !dbg !4840

for.body:                                         ; preds = %for.cond
  %16 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4841
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 18, !dbg !4842
  %17 = load i64, i64* %iobase, align 8, !dbg !4842
  %18 = load i32, i32* %chan, align 4, !dbg !4843
  %mul = mul i32 %18, 24, !dbg !4843
  %add15 = add i32 12, %mul, !dbg !4843
  %conv16 = sext i32 %add15 to i64, !dbg !4843
  %add17 = add i64 %17, %conv16, !dbg !4844
  %conv18 = trunc i64 %add17 to i32, !dbg !4841
  call void @outl(i32 32768, i32 %conv18) #5, !dbg !4845
  br label %for.inc, !dbg !4845

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %chan, align 4, !dbg !4846
  %inc = add i32 %19, 1, !dbg !4846
  store i32 %inc, i32* %chan, align 4, !dbg !4846
  br label %for.cond, !dbg !4847, !llvm.loop !4848

for.end:                                          ; preds = %for.cond
  %20 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4850
  call void @me4000_ai_reset(%struct.comedi_device* %20) #5, !dbg !4851
  store i32 132, i32* %val, align 4, !dbg !4852
  store i32 0, i32* %chan, align 4, !dbg !4853
  br label %for.cond19, !dbg !4855

for.cond19:                                       ; preds = %for.inc29, %for.end
  %21 = load i32, i32* %chan, align 4, !dbg !4856
  %cmp20 = icmp slt i32 %21, 4, !dbg !4858
  br i1 %cmp20, label %for.body22, label %for.end31, !dbg !4859

for.body22:                                       ; preds = %for.cond19
  %22 = load i32, i32* %val, align 4, !dbg !4860
  %23 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4861
  %iobase23 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %23, i32 0, i32 18, !dbg !4862
  %24 = load i64, i64* %iobase23, align 8, !dbg !4862
  %25 = load i32, i32* %chan, align 4, !dbg !4863
  %mul24 = mul i32 %25, 24, !dbg !4863
  %add25 = add i32 0, %mul24, !dbg !4863
  %conv26 = sext i32 %add25 to i64, !dbg !4863
  %add27 = add i64 %24, %conv26, !dbg !4864
  %conv28 = trunc i64 %add27 to i32, !dbg !4861
  call void @outl(i32 %22, i32 %conv28) #5, !dbg !4865
  br label %for.inc29, !dbg !4865

for.inc29:                                        ; preds = %for.body22
  %26 = load i32, i32* %chan, align 4, !dbg !4866
  %inc30 = add i32 %26, 1, !dbg !4866
  store i32 %inc30, i32* %chan, align 4, !dbg !4866
  br label %for.cond19, !dbg !4867, !llvm.loop !4868

for.end31:                                        ; preds = %for.cond19
  %27 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4870
  %iobase32 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %27, i32 0, i32 18, !dbg !4871
  %28 = load i64, i64* %iobase32, align 8, !dbg !4871
  %add33 = add i64 %28, 188, !dbg !4872
  %conv34 = trunc i64 %add33 to i32, !dbg !4870
  call void @outl(i32 76, i32 %conv34) #5, !dbg !4873
  %29 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4874
  %iobase35 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %29, i32 0, i32 18, !dbg !4876
  %30 = load i64, i64* %iobase35, align 8, !dbg !4876
  %add36 = add i64 %30, 176, !dbg !4877
  %conv37 = trunc i64 %add36 to i32, !dbg !4874
  %call38 = call i32 @inl(i32 %conv37) #5, !dbg !4878
  %and39 = and i32 %call38, 1, !dbg !4879
  %tobool = icmp ne i32 %and39, 0, !dbg !4879
  br i1 %tobool, label %if.end, label %if.then, !dbg !4880

if.then:                                          ; preds = %for.end31
  %31 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4881
  %iobase40 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %31, i32 0, i32 18, !dbg !4882
  %32 = load i64, i64* %iobase40, align 8, !dbg !4882
  %add41 = add i64 %32, 184, !dbg !4883
  %conv42 = trunc i64 %add41 to i32, !dbg !4881
  call void @outl(i32 1, i32 %conv42) #5, !dbg !4884
  br label %if.end, !dbg !4884

if.end:                                           ; preds = %if.then, %for.end31
  ret void, !dbg !4885
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @request_irq(i32 %irq, i32 (i32, i8*)* %handler, i64 %flags, i8* %name, i8* %dev) #2 !dbg !4886 {
entry:
  %irq.addr = alloca i32, align 4
  %handler.addr = alloca i32 (i32, i8*)*, align 8
  %flags.addr = alloca i64, align 8
  %name.addr = alloca i8*, align 8
  %dev.addr = alloca i8*, align 8
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !4894, metadata !DIExpression()), !dbg !4895
  store i32 (i32, i8*)* %handler, i32 (i32, i8*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i32, i8*)** %handler.addr, metadata !4896, metadata !DIExpression()), !dbg !4897
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !4898, metadata !DIExpression()), !dbg !4899
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !4900, metadata !DIExpression()), !dbg !4901
  store i8* %dev, i8** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev.addr, metadata !4902, metadata !DIExpression()), !dbg !4903
  %0 = load i32, i32* %irq.addr, align 4, !dbg !4904
  %1 = load i32 (i32, i8*)*, i32 (i32, i8*)** %handler.addr, align 8, !dbg !4905
  %2 = load i64, i64* %flags.addr, align 8, !dbg !4906
  %3 = load i8*, i8** %name.addr, align 8, !dbg !4907
  %4 = load i8*, i8** %dev.addr, align 8, !dbg !4908
  %call = call i32 @request_threaded_irq(i32 %0, i32 (i32, i8*)* %1, i32 (i32, i8*)* null, i64 %2, i8* %3, i8* %4) #5, !dbg !4909
  ret i32 %call, !dbg !4910
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @me4000_ai_isr(i32 %irq, i8* %dev_id) #2 !dbg !4911 {
entry:
  %retval = alloca i32, align 4
  %irq.addr = alloca i32, align 4
  %dev_id.addr = alloca i8*, align 8
  %tmp = alloca i32, align 4
  %dev = alloca %struct.comedi_device*, align 8
  %s = alloca %struct.comedi_subdevice*, align 8
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %lval = alloca i32, align 4
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !4912, metadata !DIExpression()), !dbg !4913
  store i8* %dev_id, i8** %dev_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev_id.addr, metadata !4914, metadata !DIExpression()), !dbg !4915
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !4916, metadata !DIExpression()), !dbg !4917
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev, metadata !4918, metadata !DIExpression()), !dbg !4919
  %0 = load i8*, i8** %dev_id.addr, align 8, !dbg !4920
  %1 = bitcast i8* %0 to %struct.comedi_device*, !dbg !4920
  store %struct.comedi_device* %1, %struct.comedi_device** %dev, align 8, !dbg !4919
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s, metadata !4921, metadata !DIExpression()), !dbg !4922
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4923
  %read_subdev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %2, i32 0, i32 21, !dbg !4924
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %read_subdev, align 8, !dbg !4924
  store %struct.comedi_subdevice* %3, %struct.comedi_subdevice** %s, align 8, !dbg !4922
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4925, metadata !DIExpression()), !dbg !4926
  call void @llvm.dbg.declare(metadata i32* %c, metadata !4927, metadata !DIExpression()), !dbg !4928
  store i32 0, i32* %c, align 4, !dbg !4928
  call void @llvm.dbg.declare(metadata i32* %lval, metadata !4929, metadata !DIExpression()), !dbg !4930
  %4 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4931
  %attached = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 10, !dbg !4933
  %bf.load = load i8, i8* %attached, align 8, !dbg !4933
  %bf.clear = and i8 %bf.load, 1, !dbg !4933
  %bf.cast = zext i8 %bf.clear to i32, !dbg !4933
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !4931
  br i1 %tobool, label %if.end, label %if.then, !dbg !4934

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4935
  br label %return, !dbg !4935

if.end:                                           ; preds = %entry
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4936
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 18, !dbg !4938
  %6 = load i64, i64* %iobase, align 8, !dbg !4938
  %add = add i64 %6, 156, !dbg !4939
  %conv = trunc i64 %add to i32, !dbg !4936
  %call = call i32 @inl(i32 %conv) #5, !dbg !4940
  %conv1 = zext i32 %call to i64, !dbg !4940
  %and = and i64 %conv1, 4, !dbg !4941
  %tobool2 = icmp ne i64 %and, 0, !dbg !4941
  br i1 %tobool2, label %if.then3, label %if.end56, !dbg !4942

if.then3:                                         ; preds = %if.end
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4943
  %iobase4 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 18, !dbg !4945
  %8 = load i64, i64* %iobase4, align 8, !dbg !4945
  %add5 = add i64 %8, 116, !dbg !4946
  %conv6 = trunc i64 %add5 to i32, !dbg !4943
  %call7 = call i32 @inl(i32 %conv6) #5, !dbg !4947
  store i32 %call7, i32* %tmp, align 4, !dbg !4948
  %9 = load i32, i32* %tmp, align 4, !dbg !4949
  %conv8 = zext i32 %9 to i64, !dbg !4949
  %and9 = and i64 %conv8, 134217728, !dbg !4951
  %tobool10 = icmp ne i64 %and9, 0, !dbg !4951
  br i1 %tobool10, label %if.else, label %land.lhs.true, !dbg !4952

land.lhs.true:                                    ; preds = %if.then3
  %10 = load i32, i32* %tmp, align 4, !dbg !4953
  %conv11 = zext i32 %10 to i64, !dbg !4953
  %and12 = and i64 %conv11, 67108864, !dbg !4954
  %tobool13 = icmp ne i64 %and12, 0, !dbg !4954
  br i1 %tobool13, label %if.else, label %land.lhs.true14, !dbg !4955

land.lhs.true14:                                  ; preds = %land.lhs.true
  %11 = load i32, i32* %tmp, align 4, !dbg !4956
  %conv15 = zext i32 %11 to i64, !dbg !4956
  %and16 = and i64 %conv15, 33554432, !dbg !4957
  %tobool17 = icmp ne i64 %and16, 0, !dbg !4957
  br i1 %tobool17, label %if.then18, label %if.else, !dbg !4958

if.then18:                                        ; preds = %land.lhs.true14
  %12 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4959
  %class_dev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 4, !dbg !4959
  %13 = load %struct.device*, %struct.device** %class_dev, align 8, !dbg !4959
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0)) #7, !dbg !4959
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4961
  %async = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %14, i32 0, i32 7, !dbg !4962
  %15 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4962
  %events = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %15, i32 0, i32 16, !dbg !4963
  %16 = load i32, i32* %events, align 4, !dbg !4964
  %or = or i32 %16, 16, !dbg !4964
  store i32 %or, i32* %events, align 4, !dbg !4964
  store i32 2048, i32* %c, align 4, !dbg !4965
  br label %if.end37, !dbg !4966

if.else:                                          ; preds = %land.lhs.true14, %land.lhs.true, %if.then3
  %17 = load i32, i32* %tmp, align 4, !dbg !4967
  %conv19 = zext i32 %17 to i64, !dbg !4967
  %and20 = and i64 %conv19, 134217728, !dbg !4969
  %tobool21 = icmp ne i64 %and20, 0, !dbg !4969
  br i1 %tobool21, label %land.lhs.true22, label %if.else31, !dbg !4970

land.lhs.true22:                                  ; preds = %if.else
  %18 = load i32, i32* %tmp, align 4, !dbg !4971
  %conv23 = zext i32 %18 to i64, !dbg !4971
  %and24 = and i64 %conv23, 67108864, !dbg !4972
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4972
  br i1 %tobool25, label %if.else31, label %land.lhs.true26, !dbg !4973

land.lhs.true26:                                  ; preds = %land.lhs.true22
  %19 = load i32, i32* %tmp, align 4, !dbg !4974
  %conv27 = zext i32 %19 to i64, !dbg !4974
  %and28 = and i64 %conv27, 33554432, !dbg !4975
  %tobool29 = icmp ne i64 %and28, 0, !dbg !4975
  br i1 %tobool29, label %if.then30, label %if.else31, !dbg !4976

if.then30:                                        ; preds = %land.lhs.true26
  store i32 1024, i32* %c, align 4, !dbg !4977
  br label %if.end36, !dbg !4979

if.else31:                                        ; preds = %land.lhs.true26, %land.lhs.true22, %if.else
  %20 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4980
  %class_dev32 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 4, !dbg !4980
  %21 = load %struct.device*, %struct.device** %class_dev32, align 8, !dbg !4980
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0)) #7, !dbg !4980
  %22 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4982
  %async33 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %22, i32 0, i32 7, !dbg !4983
  %23 = load %struct.comedi_async*, %struct.comedi_async** %async33, align 8, !dbg !4983
  %events34 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %23, i32 0, i32 16, !dbg !4984
  %24 = load i32, i32* %events34, align 4, !dbg !4985
  %or35 = or i32 %24, 16, !dbg !4985
  store i32 %or35, i32* %events34, align 4, !dbg !4985
  store i32 0, i32* %c, align 4, !dbg !4986
  br label %if.end36

if.end36:                                         ; preds = %if.else31, %if.then30
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then18
  store i32 0, i32* %i, align 4, !dbg !4987
  br label %for.cond, !dbg !4989

for.cond:                                         ; preds = %for.inc, %if.end37
  %25 = load i32, i32* %i, align 4, !dbg !4990
  %26 = load i32, i32* %c, align 4, !dbg !4992
  %cmp = icmp slt i32 %25, %26, !dbg !4993
  br i1 %cmp, label %for.body, label %for.end, !dbg !4994

for.body:                                         ; preds = %for.cond
  %27 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4995
  %28 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4997
  %call39 = call i32 @me4000_ai_get_sample(%struct.comedi_device* %27, %struct.comedi_subdevice* %28) #5, !dbg !4998
  store i32 %call39, i32* %lval, align 4, !dbg !4999
  %29 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !5000
  %30 = bitcast i32* %lval to i8*, !dbg !5002
  %call40 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %29, i8* %30, i32 1) #5, !dbg !5003
  %tobool41 = icmp ne i32 %call40, 0, !dbg !5003
  br i1 %tobool41, label %if.end43, label %if.then42, !dbg !5004

if.then42:                                        ; preds = %for.body
  br label %for.end, !dbg !5005

if.end43:                                         ; preds = %for.body
  br label %for.inc, !dbg !5006

for.inc:                                          ; preds = %if.end43
  %31 = load i32, i32* %i, align 4, !dbg !5007
  %inc = add i32 %31, 1, !dbg !5007
  store i32 %inc, i32* %i, align 4, !dbg !5007
  br label %for.cond, !dbg !5008, !llvm.loop !5009

for.end:                                          ; preds = %if.then42, %for.cond
  %32 = load i32, i32* %tmp, align 4, !dbg !5011
  %conv44 = zext i32 %32 to i64, !dbg !5011
  %or45 = or i64 %conv44, 262144, !dbg !5011
  %conv46 = trunc i64 %or45 to i32, !dbg !5011
  store i32 %conv46, i32* %tmp, align 4, !dbg !5011
  %33 = load i32, i32* %tmp, align 4, !dbg !5012
  %34 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5013
  %iobase47 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %34, i32 0, i32 18, !dbg !5014
  %35 = load i64, i64* %iobase47, align 8, !dbg !5014
  %add48 = add i64 %35, 116, !dbg !5015
  %conv49 = trunc i64 %add48 to i32, !dbg !5013
  call void @outl(i32 %33, i32 %conv49) #5, !dbg !5016
  %36 = load i32, i32* %tmp, align 4, !dbg !5017
  %conv50 = zext i32 %36 to i64, !dbg !5017
  %and51 = and i64 %conv50, -262145, !dbg !5017
  %conv52 = trunc i64 %and51 to i32, !dbg !5017
  store i32 %conv52, i32* %tmp, align 4, !dbg !5017
  %37 = load i32, i32* %tmp, align 4, !dbg !5018
  %38 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5019
  %iobase53 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %38, i32 0, i32 18, !dbg !5020
  %39 = load i64, i64* %iobase53, align 8, !dbg !5020
  %add54 = add i64 %39, 116, !dbg !5021
  %conv55 = trunc i64 %add54 to i32, !dbg !5019
  call void @outl(i32 %37, i32 %conv55) #5, !dbg !5022
  br label %if.end56, !dbg !5023

if.end56:                                         ; preds = %for.end, %if.end
  %40 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5024
  %iobase57 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %40, i32 0, i32 18, !dbg !5026
  %41 = load i64, i64* %iobase57, align 8, !dbg !5026
  %add58 = add i64 %41, 156, !dbg !5027
  %conv59 = trunc i64 %add58 to i32, !dbg !5024
  %call60 = call i32 @inl(i32 %conv59) #5, !dbg !5028
  %conv61 = zext i32 %call60 to i64, !dbg !5028
  %and62 = and i64 %conv61, 128, !dbg !5029
  %tobool63 = icmp ne i64 %and62, 0, !dbg !5029
  br i1 %tobool63, label %if.then64, label %if.end96, !dbg !5030

if.then64:                                        ; preds = %if.end56
  %42 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !5031
  %async65 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %42, i32 0, i32 7, !dbg !5033
  %43 = load %struct.comedi_async*, %struct.comedi_async** %async65, align 8, !dbg !5033
  %events66 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %43, i32 0, i32 16, !dbg !5034
  %44 = load i32, i32* %events66, align 4, !dbg !5035
  %or67 = or i32 %44, 2, !dbg !5035
  store i32 %or67, i32* %events66, align 4, !dbg !5035
  br label %while.cond, !dbg !5036

while.cond:                                       ; preds = %if.end79, %if.then64
  %45 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5037
  %iobase68 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %45, i32 0, i32 18, !dbg !5038
  %46 = load i64, i64* %iobase68, align 8, !dbg !5038
  %add69 = add i64 %46, 116, !dbg !5039
  %conv70 = trunc i64 %add69 to i32, !dbg !5037
  %call71 = call i32 @inl(i32 %conv70) #5, !dbg !5040
  %conv72 = zext i32 %call71 to i64, !dbg !5040
  %and73 = and i64 %conv72, 33554432, !dbg !5041
  %tobool74 = icmp ne i64 %and73, 0, !dbg !5036
  br i1 %tobool74, label %while.body, label %while.end, !dbg !5036

while.body:                                       ; preds = %while.cond
  %47 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5042
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !5044
  %call75 = call i32 @me4000_ai_get_sample(%struct.comedi_device* %47, %struct.comedi_subdevice* %48) #5, !dbg !5045
  store i32 %call75, i32* %lval, align 4, !dbg !5046
  %49 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !5047
  %50 = bitcast i32* %lval to i8*, !dbg !5049
  %call76 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %49, i8* %50, i32 1) #5, !dbg !5050
  %tobool77 = icmp ne i32 %call76, 0, !dbg !5050
  br i1 %tobool77, label %if.end79, label %if.then78, !dbg !5051

if.then78:                                        ; preds = %while.body
  br label %while.end, !dbg !5052

if.end79:                                         ; preds = %while.body
  br label %while.cond, !dbg !5036, !llvm.loop !5053

while.end:                                        ; preds = %if.then78, %while.cond
  %51 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5055
  %iobase80 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %51, i32 0, i32 18, !dbg !5056
  %52 = load i64, i64* %iobase80, align 8, !dbg !5056
  %add81 = add i64 %52, 116, !dbg !5057
  %conv82 = trunc i64 %add81 to i32, !dbg !5055
  %call83 = call i32 @inl(i32 %conv82) #5, !dbg !5058
  store i32 %call83, i32* %tmp, align 4, !dbg !5059
  %53 = load i32, i32* %tmp, align 4, !dbg !5060
  %conv84 = zext i32 %53 to i64, !dbg !5060
  %or85 = or i64 %conv84, 1048576, !dbg !5060
  %conv86 = trunc i64 %or85 to i32, !dbg !5060
  store i32 %conv86, i32* %tmp, align 4, !dbg !5060
  %54 = load i32, i32* %tmp, align 4, !dbg !5061
  %55 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5062
  %iobase87 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %55, i32 0, i32 18, !dbg !5063
  %56 = load i64, i64* %iobase87, align 8, !dbg !5063
  %add88 = add i64 %56, 116, !dbg !5064
  %conv89 = trunc i64 %add88 to i32, !dbg !5062
  call void @outl(i32 %54, i32 %conv89) #5, !dbg !5065
  %57 = load i32, i32* %tmp, align 4, !dbg !5066
  %conv90 = zext i32 %57 to i64, !dbg !5066
  %and91 = and i64 %conv90, -1048577, !dbg !5066
  %conv92 = trunc i64 %and91 to i32, !dbg !5066
  store i32 %conv92, i32* %tmp, align 4, !dbg !5066
  %58 = load i32, i32* %tmp, align 4, !dbg !5067
  %59 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5068
  %iobase93 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %59, i32 0, i32 18, !dbg !5069
  %60 = load i64, i64* %iobase93, align 8, !dbg !5069
  %add94 = add i64 %60, 116, !dbg !5070
  %conv95 = trunc i64 %add94 to i32, !dbg !5068
  call void @outl(i32 %58, i32 %conv95) #5, !dbg !5071
  br label %if.end96, !dbg !5072

if.end96:                                         ; preds = %while.end, %if.end56
  %61 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !5073
  %62 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !5074
  %call97 = call i32 @comedi_handle_events(%struct.comedi_device* %61, %struct.comedi_subdevice* %62) #5, !dbg !5075
  store i32 1, i32* %retval, align 4, !dbg !5076
  br label %return, !dbg !5076

return:                                           ; preds = %if.end96, %if.then
  %63 = load i32, i32* %retval, align 4, !dbg !5077
  ret i32 %63, !dbg !5077
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @me4000_ai_insn_read(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5078 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %chan = alloca i32, align 4
  %range = alloca i32, align 4
  %aref = alloca i32, align 4
  %entry6 = alloca i32, align 4
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %val = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5079, metadata !DIExpression()), !dbg !5080
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5081, metadata !DIExpression()), !dbg !5082
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5083, metadata !DIExpression()), !dbg !5084
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5085, metadata !DIExpression()), !dbg !5086
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !5087, metadata !DIExpression()), !dbg !5088
  %0 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5089
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %0, i32 0, i32 4, !dbg !5089
  %1 = load i32, i32* %chanspec, align 4, !dbg !5089
  %and = and i32 %1, 65535, !dbg !5089
  store i32 %and, i32* %chan, align 4, !dbg !5088
  call void @llvm.dbg.declare(metadata i32* %range, metadata !5090, metadata !DIExpression()), !dbg !5091
  %2 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5092
  %chanspec1 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %2, i32 0, i32 4, !dbg !5092
  %3 = load i32, i32* %chanspec1, align 4, !dbg !5092
  %shr = lshr i32 %3, 16, !dbg !5092
  %and2 = and i32 %shr, 255, !dbg !5092
  store i32 %and2, i32* %range, align 4, !dbg !5091
  call void @llvm.dbg.declare(metadata i32* %aref, metadata !5093, metadata !DIExpression()), !dbg !5094
  %4 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5095
  %chanspec3 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %4, i32 0, i32 4, !dbg !5095
  %5 = load i32, i32* %chanspec3, align 4, !dbg !5095
  %shr4 = lshr i32 %5, 24, !dbg !5095
  %and5 = and i32 %shr4, 3, !dbg !5095
  store i32 %and5, i32* %aref, align 4, !dbg !5094
  call void @llvm.dbg.declare(metadata i32* %entry6, metadata !5096, metadata !DIExpression()), !dbg !5097
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5098, metadata !DIExpression()), !dbg !5099
  store i32 0, i32* %ret, align 4, !dbg !5099
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5100, metadata !DIExpression()), !dbg !5101
  %6 = load i32, i32* %chan, align 4, !dbg !5102
  %7 = load i32, i32* %range, align 4, !dbg !5103
  %and7 = and i32 %7, 3, !dbg !5103
  %sub = sub i32 3, %and7, !dbg !5103
  %shl = shl i32 %sub, 6, !dbg !5103
  %or = or i32 %6, %shl, !dbg !5104
  store i32 %or, i32* %entry6, align 4, !dbg !5105
  %8 = load i32, i32* %aref, align 4, !dbg !5106
  %cmp = icmp eq i32 %8, 2, !dbg !5108
  br i1 %cmp, label %if.then, label %if.end19, !dbg !5109

if.then:                                          ; preds = %entry
  %9 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5110
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %9, i32 0, i32 4, !dbg !5113
  %10 = load i32, i32* %subdev_flags, align 4, !dbg !5113
  %and8 = and i32 %10, 4194304, !dbg !5114
  %tobool = icmp ne i32 %and8, 0, !dbg !5114
  br i1 %tobool, label %if.end, label %if.then9, !dbg !5115

if.then9:                                         ; preds = %if.then
  %11 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5116
  %class_dev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 4, !dbg !5116
  %12 = load %struct.device*, %struct.device** %class_dev, align 8, !dbg !5116
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %12, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i64 0, i64 0)) #7, !dbg !5116
  store i32 -22, i32* %retval, align 4, !dbg !5118
  br label %return, !dbg !5118

if.end:                                           ; preds = %if.then
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5119
  %14 = load i32, i32* %range, align 4, !dbg !5121
  %call = call zeroext i1 @comedi_range_is_bipolar(%struct.comedi_subdevice* %13, i32 %14) #5, !dbg !5122
  br i1 %call, label %if.end12, label %if.then10, !dbg !5123

if.then10:                                        ; preds = %if.end
  %15 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5124
  %class_dev11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 4, !dbg !5124
  %16 = load %struct.device*, %struct.device** %class_dev11, align 8, !dbg !5124
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %16, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0)) #7, !dbg !5124
  store i32 -22, i32* %retval, align 4, !dbg !5126
  br label %return, !dbg !5126

if.end12:                                         ; preds = %if.end
  %17 = load i32, i32* %chan, align 4, !dbg !5127
  %18 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5129
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %18, i32 0, i32 3, !dbg !5130
  %19 = load i32, i32* %n_chan, align 8, !dbg !5130
  %div = sdiv i32 %19, 2, !dbg !5131
  %cmp13 = icmp uge i32 %17, %div, !dbg !5132
  br i1 %cmp13, label %if.then14, label %if.end16, !dbg !5133

if.then14:                                        ; preds = %if.end12
  %20 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5134
  %class_dev15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 4, !dbg !5134
  %21 = load %struct.device*, %struct.device** %class_dev15, align 8, !dbg !5134
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i64 0, i64 0)) #7, !dbg !5134
  store i32 -22, i32* %retval, align 4, !dbg !5136
  br label %return, !dbg !5136

if.end16:                                         ; preds = %if.end12
  %22 = load i32, i32* %entry6, align 4, !dbg !5137
  %conv = zext i32 %22 to i64, !dbg !5137
  %or17 = or i64 %conv, 32, !dbg !5137
  %conv18 = trunc i64 %or17 to i32, !dbg !5137
  store i32 %conv18, i32* %entry6, align 4, !dbg !5137
  br label %if.end19, !dbg !5138

if.end19:                                         ; preds = %if.end16, %entry
  %23 = load i32, i32* %entry6, align 4, !dbg !5139
  %conv20 = zext i32 %23 to i64, !dbg !5139
  %or21 = or i64 %conv20, 256, !dbg !5139
  %conv22 = trunc i64 %or21 to i32, !dbg !5139
  store i32 %conv22, i32* %entry6, align 4, !dbg !5139
  %24 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5140
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %24, i32 0, i32 18, !dbg !5141
  %25 = load i64, i64* %iobase, align 8, !dbg !5141
  %add = add i64 %25, 116, !dbg !5142
  %conv23 = trunc i64 %add to i32, !dbg !5140
  call void @outl(i32 192, i32 %conv23) #5, !dbg !5143
  %26 = load i32, i32* %entry6, align 4, !dbg !5144
  %27 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5145
  %iobase24 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %27, i32 0, i32 18, !dbg !5146
  %28 = load i64, i64* %iobase24, align 8, !dbg !5146
  %add25 = add i64 %28, 120, !dbg !5147
  %conv26 = trunc i64 %add25 to i32, !dbg !5145
  call void @outl(i32 %26, i32 %conv26) #5, !dbg !5148
  %29 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5149
  %iobase27 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %29, i32 0, i32 18, !dbg !5150
  %30 = load i64, i64* %iobase27, align 8, !dbg !5150
  %add28 = add i64 %30, 128, !dbg !5151
  %conv29 = trunc i64 %add28 to i32, !dbg !5149
  call void @outl(i32 66, i32 %conv29) #5, !dbg !5152
  %31 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5153
  %iobase30 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %31, i32 0, i32 18, !dbg !5154
  %32 = load i64, i64* %iobase30, align 8, !dbg !5154
  %add31 = add i64 %32, 132, !dbg !5155
  %conv32 = trunc i64 %add31 to i32, !dbg !5153
  call void @outl(i32 66, i32 %conv32) #5, !dbg !5156
  store i32 0, i32* %i, align 4, !dbg !5157
  br label %for.cond, !dbg !5159

for.cond:                                         ; preds = %for.inc, %if.end19
  %33 = load i32, i32* %i, align 4, !dbg !5160
  %34 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5162
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %34, i32 0, i32 1, !dbg !5163
  %35 = load i32, i32* %n, align 4, !dbg !5163
  %cmp33 = icmp ult i32 %33, %35, !dbg !5164
  br i1 %cmp33, label %for.body, label %for.end, !dbg !5165

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %val, metadata !5166, metadata !DIExpression()), !dbg !5168
  %36 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5169
  %iobase35 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %36, i32 0, i32 18, !dbg !5170
  %37 = load i64, i64* %iobase35, align 8, !dbg !5170
  %add36 = add i64 %37, 152, !dbg !5171
  %conv37 = trunc i64 %add36 to i32, !dbg !5169
  %call38 = call i32 @inl(i32 %conv37) #5, !dbg !5172
  %38 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5173
  %39 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5174
  %40 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5175
  %call39 = call i32 @comedi_timeout(%struct.comedi_device* %38, %struct.comedi_subdevice* %39, %struct.comedi_insn* %40, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i64)* @me4000_ai_eoc, i64 0) #5, !dbg !5176
  store i32 %call39, i32* %ret, align 4, !dbg !5177
  %41 = load i32, i32* %ret, align 4, !dbg !5178
  %tobool40 = icmp ne i32 %41, 0, !dbg !5178
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !5180

if.then41:                                        ; preds = %for.body
  br label %for.end, !dbg !5181

if.end42:                                         ; preds = %for.body
  %42 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5182
  %43 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5183
  %call43 = call i32 @me4000_ai_get_sample(%struct.comedi_device* %42, %struct.comedi_subdevice* %43) #5, !dbg !5184
  store i32 %call43, i32* %val, align 4, !dbg !5185
  %44 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5186
  %45 = load i32, i32* %val, align 4, !dbg !5187
  %call44 = call i32 @comedi_offset_munge(%struct.comedi_subdevice* %44, i32 %45) #5, !dbg !5188
  %46 = load i32*, i32** %data.addr, align 8, !dbg !5189
  %47 = load i32, i32* %i, align 4, !dbg !5190
  %idxprom = sext i32 %47 to i64, !dbg !5189
  %arrayidx = getelementptr i32, i32* %46, i64 %idxprom, !dbg !5189
  store i32 %call44, i32* %arrayidx, align 4, !dbg !5191
  br label %for.inc, !dbg !5192

for.inc:                                          ; preds = %if.end42
  %48 = load i32, i32* %i, align 4, !dbg !5193
  %inc = add i32 %48, 1, !dbg !5193
  store i32 %inc, i32* %i, align 4, !dbg !5193
  br label %for.cond, !dbg !5194, !llvm.loop !5195

for.end:                                          ; preds = %if.then41, %for.cond
  %49 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5197
  call void @me4000_ai_reset(%struct.comedi_device* %49) #5, !dbg !5198
  %50 = load i32, i32* %ret, align 4, !dbg !5199
  %tobool45 = icmp ne i32 %50, 0, !dbg !5199
  br i1 %tobool45, label %cond.true, label %cond.false, !dbg !5199

cond.true:                                        ; preds = %for.end
  %51 = load i32, i32* %ret, align 4, !dbg !5200
  br label %cond.end, !dbg !5199

cond.false:                                       ; preds = %for.end
  %52 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5201
  %n46 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %52, i32 0, i32 1, !dbg !5202
  %53 = load i32, i32* %n46, align 4, !dbg !5202
  br label %cond.end, !dbg !5199

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %51, %cond.true ], [ %53, %cond.false ], !dbg !5199
  store i32 %cond, i32* %retval, align 4, !dbg !5203
  br label %return, !dbg !5203

return:                                           ; preds = %cond.end, %if.then14, %if.then10, %if.then9
  %54 = load i32, i32* %retval, align 4, !dbg !5204
  ret i32 %54, !dbg !5204
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @me4000_ai_cancel(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #2 !dbg !5205 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5206, metadata !DIExpression()), !dbg !5207
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5208, metadata !DIExpression()), !dbg !5209
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5210
  call void @me4000_ai_reset(%struct.comedi_device* %0) #5, !dbg !5211
  ret i32 0, !dbg !5212
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @me4000_ai_do_cmd_test(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_cmd* %cmd) #2 !dbg !5213 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %cmd.addr = alloca %struct.comedi_cmd*, align 8
  %devpriv = alloca %struct.me4000_private*, align 8
  %err = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5214, metadata !DIExpression()), !dbg !5215
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5216, metadata !DIExpression()), !dbg !5217
  store %struct.comedi_cmd* %cmd, %struct.comedi_cmd** %cmd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd.addr, metadata !5218, metadata !DIExpression()), !dbg !5219
  call void @llvm.dbg.declare(metadata %struct.me4000_private** %devpriv, metadata !5220, metadata !DIExpression()), !dbg !5221
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5222
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5223
  %1 = load i8*, i8** %private, align 8, !dbg !5223
  %2 = bitcast i8* %1 to %struct.me4000_private*, !dbg !5222
  store %struct.me4000_private* %2, %struct.me4000_private** %devpriv, align 8, !dbg !5221
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5224, metadata !DIExpression()), !dbg !5225
  store i32 0, i32* %err, align 4, !dbg !5225
  %3 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5226
  %start_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %3, i32 0, i32 2, !dbg !5227
  %call = call i32 @comedi_check_trigger_src(i32* %start_src, i32 66) #5, !dbg !5228
  %4 = load i32, i32* %err, align 4, !dbg !5229
  %or = or i32 %4, %call, !dbg !5229
  store i32 %or, i32* %err, align 4, !dbg !5229
  %5 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5230
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %5, i32 0, i32 4, !dbg !5231
  %call1 = call i32 @comedi_check_trigger_src(i32* %scan_begin_src, i32 84) #5, !dbg !5232
  %6 = load i32, i32* %err, align 4, !dbg !5233
  %or2 = or i32 %6, %call1, !dbg !5233
  store i32 %or2, i32* %err, align 4, !dbg !5233
  %7 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5234
  %convert_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %7, i32 0, i32 6, !dbg !5235
  %call3 = call i32 @comedi_check_trigger_src(i32* %convert_src, i32 80) #5, !dbg !5236
  %8 = load i32, i32* %err, align 4, !dbg !5237
  %or4 = or i32 %8, %call3, !dbg !5237
  store i32 %or4, i32* %err, align 4, !dbg !5237
  %9 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5238
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %9, i32 0, i32 8, !dbg !5239
  %call5 = call i32 @comedi_check_trigger_src(i32* %scan_end_src, i32 33) #5, !dbg !5240
  %10 = load i32, i32* %err, align 4, !dbg !5241
  %or6 = or i32 %10, %call5, !dbg !5241
  store i32 %or6, i32* %err, align 4, !dbg !5241
  %11 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5242
  %stop_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %11, i32 0, i32 10, !dbg !5243
  %call7 = call i32 @comedi_check_trigger_src(i32* %stop_src, i32 33) #5, !dbg !5244
  %12 = load i32, i32* %err, align 4, !dbg !5245
  %or8 = or i32 %12, %call7, !dbg !5245
  store i32 %or8, i32* %err, align 4, !dbg !5245
  %13 = load i32, i32* %err, align 4, !dbg !5246
  %tobool = icmp ne i32 %13, 0, !dbg !5246
  br i1 %tobool, label %if.then, label %if.end, !dbg !5248

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !5249
  br label %return, !dbg !5249

if.end:                                           ; preds = %entry
  %14 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5250
  %start_src9 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %14, i32 0, i32 2, !dbg !5251
  %15 = load i32, i32* %start_src9, align 8, !dbg !5251
  %call10 = call i32 @comedi_check_trigger_is_unique(i32 %15) #5, !dbg !5252
  %16 = load i32, i32* %err, align 4, !dbg !5253
  %or11 = or i32 %16, %call10, !dbg !5253
  store i32 %or11, i32* %err, align 4, !dbg !5253
  %17 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5254
  %scan_begin_src12 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %17, i32 0, i32 4, !dbg !5255
  %18 = load i32, i32* %scan_begin_src12, align 8, !dbg !5255
  %call13 = call i32 @comedi_check_trigger_is_unique(i32 %18) #5, !dbg !5256
  %19 = load i32, i32* %err, align 4, !dbg !5257
  %or14 = or i32 %19, %call13, !dbg !5257
  store i32 %or14, i32* %err, align 4, !dbg !5257
  %20 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5258
  %convert_src15 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %20, i32 0, i32 6, !dbg !5259
  %21 = load i32, i32* %convert_src15, align 8, !dbg !5259
  %call16 = call i32 @comedi_check_trigger_is_unique(i32 %21) #5, !dbg !5260
  %22 = load i32, i32* %err, align 4, !dbg !5261
  %or17 = or i32 %22, %call16, !dbg !5261
  store i32 %or17, i32* %err, align 4, !dbg !5261
  %23 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5262
  %scan_end_src18 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %23, i32 0, i32 8, !dbg !5263
  %24 = load i32, i32* %scan_end_src18, align 8, !dbg !5263
  %call19 = call i32 @comedi_check_trigger_is_unique(i32 %24) #5, !dbg !5264
  %25 = load i32, i32* %err, align 4, !dbg !5265
  %or20 = or i32 %25, %call19, !dbg !5265
  store i32 %or20, i32* %err, align 4, !dbg !5265
  %26 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5266
  %stop_src21 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %26, i32 0, i32 10, !dbg !5267
  %27 = load i32, i32* %stop_src21, align 8, !dbg !5267
  %call22 = call i32 @comedi_check_trigger_is_unique(i32 %27) #5, !dbg !5268
  %28 = load i32, i32* %err, align 4, !dbg !5269
  %or23 = or i32 %28, %call22, !dbg !5269
  store i32 %or23, i32* %err, align 4, !dbg !5269
  %29 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5270
  %start_src24 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %29, i32 0, i32 2, !dbg !5272
  %30 = load i32, i32* %start_src24, align 8, !dbg !5272
  %cmp = icmp eq i32 %30, 2, !dbg !5273
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !5274

land.lhs.true:                                    ; preds = %if.end
  %31 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5275
  %scan_begin_src25 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %31, i32 0, i32 4, !dbg !5276
  %32 = load i32, i32* %scan_begin_src25, align 8, !dbg !5276
  %cmp26 = icmp eq i32 %32, 16, !dbg !5277
  br i1 %cmp26, label %land.lhs.true27, label %if.else, !dbg !5278

land.lhs.true27:                                  ; preds = %land.lhs.true
  %33 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5279
  %convert_src28 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %33, i32 0, i32 6, !dbg !5280
  %34 = load i32, i32* %convert_src28, align 8, !dbg !5280
  %cmp29 = icmp eq i32 %34, 16, !dbg !5281
  br i1 %cmp29, label %if.then30, label %if.else, !dbg !5282

if.then30:                                        ; preds = %land.lhs.true27
  %35 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !5283
  %ai_ctrl_mode = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %35, i32 0, i32 1, !dbg !5285
  store i32 1, i32* %ai_ctrl_mode, align 8, !dbg !5286
  br label %if.end92, !dbg !5287

if.else:                                          ; preds = %land.lhs.true27, %land.lhs.true, %if.end
  %36 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5288
  %start_src31 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %36, i32 0, i32 2, !dbg !5290
  %37 = load i32, i32* %start_src31, align 8, !dbg !5290
  %cmp32 = icmp eq i32 %37, 2, !dbg !5291
  br i1 %cmp32, label %land.lhs.true33, label %if.else41, !dbg !5292

land.lhs.true33:                                  ; preds = %if.else
  %38 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5293
  %scan_begin_src34 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %38, i32 0, i32 4, !dbg !5294
  %39 = load i32, i32* %scan_begin_src34, align 8, !dbg !5294
  %cmp35 = icmp eq i32 %39, 4, !dbg !5295
  br i1 %cmp35, label %land.lhs.true36, label %if.else41, !dbg !5296

land.lhs.true36:                                  ; preds = %land.lhs.true33
  %40 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5297
  %convert_src37 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %40, i32 0, i32 6, !dbg !5298
  %41 = load i32, i32* %convert_src37, align 8, !dbg !5298
  %cmp38 = icmp eq i32 %41, 16, !dbg !5299
  br i1 %cmp38, label %if.then39, label %if.else41, !dbg !5300

if.then39:                                        ; preds = %land.lhs.true36
  %42 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !5301
  %ai_ctrl_mode40 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %42, i32 0, i32 1, !dbg !5303
  store i32 1, i32* %ai_ctrl_mode40, align 8, !dbg !5304
  br label %if.end91, !dbg !5305

if.else41:                                        ; preds = %land.lhs.true36, %land.lhs.true33, %if.else
  %43 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5306
  %start_src42 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %43, i32 0, i32 2, !dbg !5308
  %44 = load i32, i32* %start_src42, align 8, !dbg !5308
  %cmp43 = icmp eq i32 %44, 64, !dbg !5309
  br i1 %cmp43, label %land.lhs.true44, label %if.else52, !dbg !5310

land.lhs.true44:                                  ; preds = %if.else41
  %45 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5311
  %scan_begin_src45 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %45, i32 0, i32 4, !dbg !5312
  %46 = load i32, i32* %scan_begin_src45, align 8, !dbg !5312
  %cmp46 = icmp eq i32 %46, 16, !dbg !5313
  br i1 %cmp46, label %land.lhs.true47, label %if.else52, !dbg !5314

land.lhs.true47:                                  ; preds = %land.lhs.true44
  %47 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5315
  %convert_src48 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %47, i32 0, i32 6, !dbg !5316
  %48 = load i32, i32* %convert_src48, align 8, !dbg !5316
  %cmp49 = icmp eq i32 %48, 16, !dbg !5317
  br i1 %cmp49, label %if.then50, label %if.else52, !dbg !5318

if.then50:                                        ; preds = %land.lhs.true47
  %49 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !5319
  %ai_ctrl_mode51 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %49, i32 0, i32 1, !dbg !5321
  store i32 2, i32* %ai_ctrl_mode51, align 8, !dbg !5322
  br label %if.end90, !dbg !5323

if.else52:                                        ; preds = %land.lhs.true47, %land.lhs.true44, %if.else41
  %50 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5324
  %start_src53 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %50, i32 0, i32 2, !dbg !5326
  %51 = load i32, i32* %start_src53, align 8, !dbg !5326
  %cmp54 = icmp eq i32 %51, 64, !dbg !5327
  br i1 %cmp54, label %land.lhs.true55, label %if.else63, !dbg !5328

land.lhs.true55:                                  ; preds = %if.else52
  %52 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5329
  %scan_begin_src56 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %52, i32 0, i32 4, !dbg !5330
  %53 = load i32, i32* %scan_begin_src56, align 8, !dbg !5330
  %cmp57 = icmp eq i32 %53, 4, !dbg !5331
  br i1 %cmp57, label %land.lhs.true58, label %if.else63, !dbg !5332

land.lhs.true58:                                  ; preds = %land.lhs.true55
  %54 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5333
  %convert_src59 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %54, i32 0, i32 6, !dbg !5334
  %55 = load i32, i32* %convert_src59, align 8, !dbg !5334
  %cmp60 = icmp eq i32 %55, 16, !dbg !5335
  br i1 %cmp60, label %if.then61, label %if.else63, !dbg !5336

if.then61:                                        ; preds = %land.lhs.true58
  %56 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !5337
  %ai_ctrl_mode62 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %56, i32 0, i32 1, !dbg !5339
  store i32 2, i32* %ai_ctrl_mode62, align 8, !dbg !5340
  br label %if.end89, !dbg !5341

if.else63:                                        ; preds = %land.lhs.true58, %land.lhs.true55, %if.else52
  %57 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5342
  %start_src64 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %57, i32 0, i32 2, !dbg !5344
  %58 = load i32, i32* %start_src64, align 8, !dbg !5344
  %cmp65 = icmp eq i32 %58, 64, !dbg !5345
  br i1 %cmp65, label %land.lhs.true66, label %if.else74, !dbg !5346

land.lhs.true66:                                  ; preds = %if.else63
  %59 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5347
  %scan_begin_src67 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %59, i32 0, i32 4, !dbg !5348
  %60 = load i32, i32* %scan_begin_src67, align 8, !dbg !5348
  %cmp68 = icmp eq i32 %60, 64, !dbg !5349
  br i1 %cmp68, label %land.lhs.true69, label %if.else74, !dbg !5350

land.lhs.true69:                                  ; preds = %land.lhs.true66
  %61 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5351
  %convert_src70 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %61, i32 0, i32 6, !dbg !5352
  %62 = load i32, i32* %convert_src70, align 8, !dbg !5352
  %cmp71 = icmp eq i32 %62, 16, !dbg !5353
  br i1 %cmp71, label %if.then72, label %if.else74, !dbg !5354

if.then72:                                        ; preds = %land.lhs.true69
  %63 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !5355
  %ai_ctrl_mode73 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %63, i32 0, i32 1, !dbg !5357
  store i32 4, i32* %ai_ctrl_mode73, align 8, !dbg !5358
  br label %if.end88, !dbg !5359

if.else74:                                        ; preds = %land.lhs.true69, %land.lhs.true66, %if.else63
  %64 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5360
  %start_src75 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %64, i32 0, i32 2, !dbg !5362
  %65 = load i32, i32* %start_src75, align 8, !dbg !5362
  %cmp76 = icmp eq i32 %65, 64, !dbg !5363
  br i1 %cmp76, label %land.lhs.true77, label %if.else85, !dbg !5364

land.lhs.true77:                                  ; preds = %if.else74
  %66 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5365
  %scan_begin_src78 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %66, i32 0, i32 4, !dbg !5366
  %67 = load i32, i32* %scan_begin_src78, align 8, !dbg !5366
  %cmp79 = icmp eq i32 %67, 64, !dbg !5367
  br i1 %cmp79, label %land.lhs.true80, label %if.else85, !dbg !5368

land.lhs.true80:                                  ; preds = %land.lhs.true77
  %68 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5369
  %convert_src81 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %68, i32 0, i32 6, !dbg !5370
  %69 = load i32, i32* %convert_src81, align 8, !dbg !5370
  %cmp82 = icmp eq i32 %69, 64, !dbg !5371
  br i1 %cmp82, label %if.then83, label %if.else85, !dbg !5372

if.then83:                                        ; preds = %land.lhs.true80
  %70 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !5373
  %ai_ctrl_mode84 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %70, i32 0, i32 1, !dbg !5375
  store i32 3, i32* %ai_ctrl_mode84, align 8, !dbg !5376
  br label %if.end87, !dbg !5377

if.else85:                                        ; preds = %land.lhs.true80, %land.lhs.true77, %if.else74
  %71 = load i32, i32* %err, align 4, !dbg !5378
  %or86 = or i32 %71, -22, !dbg !5378
  store i32 %or86, i32* %err, align 4, !dbg !5378
  br label %if.end87

if.end87:                                         ; preds = %if.else85, %if.then83
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.then72
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %if.then61
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %if.then50
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.then39
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %if.then30
  %72 = load i32, i32* %err, align 4, !dbg !5380
  %tobool93 = icmp ne i32 %72, 0, !dbg !5380
  br i1 %tobool93, label %if.then94, label %if.end95, !dbg !5382

if.then94:                                        ; preds = %if.end92
  store i32 2, i32* %retval, align 4, !dbg !5383
  br label %return, !dbg !5383

if.end95:                                         ; preds = %if.end92
  %73 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5384
  %start_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %73, i32 0, i32 3, !dbg !5385
  %call96 = call i32 @comedi_check_trigger_arg_is(i32* %start_arg, i32 0) #5, !dbg !5386
  %74 = load i32, i32* %err, align 4, !dbg !5387
  %or97 = or i32 %74, %call96, !dbg !5387
  store i32 %or97, i32* %err, align 4, !dbg !5387
  %75 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5388
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %75, i32 0, i32 13, !dbg !5390
  %76 = load i32, i32* %chanlist_len, align 8, !dbg !5390
  %cmp98 = icmp ult i32 %76, 1, !dbg !5391
  br i1 %cmp98, label %if.then99, label %if.end102, !dbg !5392

if.then99:                                        ; preds = %if.end95
  %77 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5393
  %chanlist_len100 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %77, i32 0, i32 13, !dbg !5395
  store i32 1, i32* %chanlist_len100, align 8, !dbg !5396
  %78 = load i32, i32* %err, align 4, !dbg !5397
  %or101 = or i32 %78, -22, !dbg !5397
  store i32 %or101, i32* %err, align 4, !dbg !5397
  br label %if.end102, !dbg !5398

if.end102:                                        ; preds = %if.then99, %if.end95
  %79 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5399
  %80 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5400
  %81 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5401
  call void @me4000_ai_round_cmd_args(%struct.comedi_device* %79, %struct.comedi_subdevice* %80, %struct.comedi_cmd* %81) #5, !dbg !5402
  %82 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !5403
  %ai_init_ticks = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %82, i32 0, i32 2, !dbg !5405
  %83 = load i32, i32* %ai_init_ticks, align 4, !dbg !5405
  %cmp103 = icmp ult i32 %83, 66, !dbg !5406
  br i1 %cmp103, label %if.then104, label %if.end107, !dbg !5407

if.then104:                                       ; preds = %if.end102
  %84 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5408
  %start_arg105 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %84, i32 0, i32 3, !dbg !5410
  store i32 2000, i32* %start_arg105, align 4, !dbg !5411
  %85 = load i32, i32* %err, align 4, !dbg !5412
  %or106 = or i32 %85, -22, !dbg !5412
  store i32 %or106, i32* %err, align 4, !dbg !5412
  br label %if.end107, !dbg !5413

if.end107:                                        ; preds = %if.then104, %if.end102
  %86 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !5414
  %ai_scan_ticks = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %86, i32 0, i32 3, !dbg !5416
  %87 = load i32, i32* %ai_scan_ticks, align 8, !dbg !5416
  %tobool108 = icmp ne i32 %87, 0, !dbg !5414
  br i1 %tobool108, label %land.lhs.true109, label %if.end114, !dbg !5417

land.lhs.true109:                                 ; preds = %if.end107
  %88 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !5418
  %ai_scan_ticks110 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %88, i32 0, i32 3, !dbg !5419
  %89 = load i32, i32* %ai_scan_ticks110, align 8, !dbg !5419
  %cmp111 = icmp ult i32 %89, 67, !dbg !5420
  br i1 %cmp111, label %if.then112, label %if.end114, !dbg !5421

if.then112:                                       ; preds = %land.lhs.true109
  %90 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5422
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %90, i32 0, i32 5, !dbg !5424
  store i32 2031, i32* %scan_begin_arg, align 4, !dbg !5425
  %91 = load i32, i32* %err, align 4, !dbg !5426
  %or113 = or i32 %91, -22, !dbg !5426
  store i32 %or113, i32* %err, align 4, !dbg !5426
  br label %if.end114, !dbg !5427

if.end114:                                        ; preds = %if.then112, %land.lhs.true109, %if.end107
  %92 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !5428
  %ai_chan_ticks = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %92, i32 0, i32 4, !dbg !5430
  %93 = load i32, i32* %ai_chan_ticks, align 4, !dbg !5430
  %cmp115 = icmp ult i32 %93, 66, !dbg !5431
  br i1 %cmp115, label %if.then116, label %if.end118, !dbg !5432

if.then116:                                       ; preds = %if.end114
  %94 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5433
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %94, i32 0, i32 7, !dbg !5435
  store i32 2000, i32* %convert_arg, align 4, !dbg !5436
  %95 = load i32, i32* %err, align 4, !dbg !5437
  %or117 = or i32 %95, -22, !dbg !5437
  store i32 %or117, i32* %err, align 4, !dbg !5437
  br label %if.end118, !dbg !5438

if.end118:                                        ; preds = %if.then116, %if.end114
  %96 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5439
  %stop_src119 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %96, i32 0, i32 10, !dbg !5441
  %97 = load i32, i32* %stop_src119, align 8, !dbg !5441
  %cmp120 = icmp eq i32 %97, 32, !dbg !5442
  br i1 %cmp120, label %if.then121, label %if.else124, !dbg !5443

if.then121:                                       ; preds = %if.end118
  %98 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5444
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %98, i32 0, i32 11, !dbg !5445
  %call122 = call i32 @comedi_check_trigger_arg_min(i32* %stop_arg, i32 1) #5, !dbg !5446
  %99 = load i32, i32* %err, align 4, !dbg !5447
  %or123 = or i32 %99, %call122, !dbg !5447
  store i32 %or123, i32* %err, align 4, !dbg !5447
  br label %if.end128, !dbg !5448

if.else124:                                       ; preds = %if.end118
  %100 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5449
  %stop_arg125 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %100, i32 0, i32 11, !dbg !5450
  %call126 = call i32 @comedi_check_trigger_arg_is(i32* %stop_arg125, i32 0) #5, !dbg !5451
  %101 = load i32, i32* %err, align 4, !dbg !5452
  %or127 = or i32 %101, %call126, !dbg !5452
  store i32 %or127, i32* %err, align 4, !dbg !5452
  br label %if.end128

if.end128:                                        ; preds = %if.else124, %if.then121
  %102 = load i32, i32* %err, align 4, !dbg !5453
  %tobool129 = icmp ne i32 %102, 0, !dbg !5453
  br i1 %tobool129, label %if.then130, label %if.end131, !dbg !5455

if.then130:                                       ; preds = %if.end128
  store i32 3, i32* %retval, align 4, !dbg !5456
  br label %return, !dbg !5456

if.end131:                                        ; preds = %if.end128
  %103 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5457
  %start_src132 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %103, i32 0, i32 2, !dbg !5459
  %104 = load i32, i32* %start_src132, align 8, !dbg !5459
  %cmp133 = icmp eq i32 %104, 2, !dbg !5460
  br i1 %cmp133, label %land.lhs.true134, label %if.else163, !dbg !5461

land.lhs.true134:                                 ; preds = %if.end131
  %105 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5462
  %scan_begin_src135 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %105, i32 0, i32 4, !dbg !5463
  %106 = load i32, i32* %scan_begin_src135, align 8, !dbg !5463
  %cmp136 = icmp eq i32 %106, 16, !dbg !5464
  br i1 %cmp136, label %land.lhs.true137, label %if.else163, !dbg !5465

land.lhs.true137:                                 ; preds = %land.lhs.true134
  %107 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5466
  %convert_src138 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %107, i32 0, i32 6, !dbg !5467
  %108 = load i32, i32* %convert_src138, align 8, !dbg !5467
  %cmp139 = icmp eq i32 %108, 16, !dbg !5468
  br i1 %cmp139, label %if.then140, label %if.else163, !dbg !5469

if.then140:                                       ; preds = %land.lhs.true137
  %109 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !5470
  %ai_init_ticks141 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %109, i32 0, i32 2, !dbg !5473
  %110 = load i32, i32* %ai_init_ticks141, align 4, !dbg !5473
  %cmp142 = icmp ult i32 %110, 66, !dbg !5474
  br i1 %cmp142, label %if.then143, label %if.end145, !dbg !5475

if.then143:                                       ; preds = %if.then140
  %111 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5476
  %class_dev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %111, i32 0, i32 4, !dbg !5476
  %112 = load %struct.device*, %struct.device** %class_dev, align 8, !dbg !5476
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %112, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0)) #7, !dbg !5476
  %113 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5478
  %start_arg144 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %113, i32 0, i32 3, !dbg !5479
  store i32 2000, i32* %start_arg144, align 4, !dbg !5480
  %114 = load i32, i32* %err, align 4, !dbg !5481
  %inc = add i32 %114, 1, !dbg !5481
  store i32 %inc, i32* %err, align 4, !dbg !5481
  br label %if.end145, !dbg !5482

if.end145:                                        ; preds = %if.then143, %if.then140
  %115 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !5483
  %ai_chan_ticks146 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %115, i32 0, i32 4, !dbg !5485
  %116 = load i32, i32* %ai_chan_ticks146, align 4, !dbg !5485
  %cmp147 = icmp ult i32 %116, 66, !dbg !5486
  br i1 %cmp147, label %if.then148, label %if.end152, !dbg !5487

if.then148:                                       ; preds = %if.end145
  %117 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5488
  %class_dev149 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %117, i32 0, i32 4, !dbg !5488
  %118 = load %struct.device*, %struct.device** %class_dev149, align 8, !dbg !5488
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %118, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0)) #7, !dbg !5488
  %119 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5490
  %convert_arg150 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %119, i32 0, i32 7, !dbg !5491
  store i32 2000, i32* %convert_arg150, align 4, !dbg !5492
  %120 = load i32, i32* %err, align 4, !dbg !5493
  %inc151 = add i32 %120, 1, !dbg !5493
  store i32 %inc151, i32* %err, align 4, !dbg !5493
  br label %if.end152, !dbg !5494

if.end152:                                        ; preds = %if.then148, %if.end145
  %121 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !5495
  %ai_scan_ticks153 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %121, i32 0, i32 3, !dbg !5497
  %122 = load i32, i32* %ai_scan_ticks153, align 8, !dbg !5497
  %123 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5498
  %chanlist_len154 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %123, i32 0, i32 13, !dbg !5499
  %124 = load i32, i32* %chanlist_len154, align 8, !dbg !5499
  %125 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !5500
  %ai_chan_ticks155 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %125, i32 0, i32 4, !dbg !5501
  %126 = load i32, i32* %ai_chan_ticks155, align 4, !dbg !5501
  %mul = mul i32 %124, %126, !dbg !5502
  %cmp156 = icmp ule i32 %122, %mul, !dbg !5503
  br i1 %cmp156, label %if.then157, label %if.end162, !dbg !5504

if.then157:                                       ; preds = %if.end152
  %127 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5505
  %class_dev158 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %127, i32 0, i32 4, !dbg !5505
  %128 = load %struct.device*, %struct.device** %class_dev158, align 8, !dbg !5505
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %128, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0)) #7, !dbg !5505
  %129 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5507
  %chanlist_len159 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %129, i32 0, i32 13, !dbg !5508
  %130 = load i32, i32* %chanlist_len159, align 8, !dbg !5508
  %mul160 = mul i32 2000, %130, !dbg !5509
  %add = add i32 %mul160, 31, !dbg !5510
  %131 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5511
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %131, i32 0, i32 9, !dbg !5512
  store i32 %add, i32* %scan_end_arg, align 4, !dbg !5513
  %132 = load i32, i32* %err, align 4, !dbg !5514
  %inc161 = add i32 %132, 1, !dbg !5514
  store i32 %inc161, i32* %err, align 4, !dbg !5514
  br label %if.end162, !dbg !5515

if.end162:                                        ; preds = %if.then157, %if.end152
  br label %if.end294, !dbg !5516

if.else163:                                       ; preds = %land.lhs.true137, %land.lhs.true134, %if.end131
  %133 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5517
  %start_src164 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %133, i32 0, i32 2, !dbg !5519
  %134 = load i32, i32* %start_src164, align 8, !dbg !5519
  %cmp165 = icmp eq i32 %134, 2, !dbg !5520
  br i1 %cmp165, label %land.lhs.true166, label %if.else187, !dbg !5521

land.lhs.true166:                                 ; preds = %if.else163
  %135 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5522
  %scan_begin_src167 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %135, i32 0, i32 4, !dbg !5523
  %136 = load i32, i32* %scan_begin_src167, align 8, !dbg !5523
  %cmp168 = icmp eq i32 %136, 4, !dbg !5524
  br i1 %cmp168, label %land.lhs.true169, label %if.else187, !dbg !5525

land.lhs.true169:                                 ; preds = %land.lhs.true166
  %137 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5526
  %convert_src170 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %137, i32 0, i32 6, !dbg !5527
  %138 = load i32, i32* %convert_src170, align 8, !dbg !5527
  %cmp171 = icmp eq i32 %138, 16, !dbg !5528
  br i1 %cmp171, label %if.then172, label %if.else187, !dbg !5529

if.then172:                                       ; preds = %land.lhs.true169
  %139 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !5530
  %ai_init_ticks173 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %139, i32 0, i32 2, !dbg !5533
  %140 = load i32, i32* %ai_init_ticks173, align 4, !dbg !5533
  %cmp174 = icmp ult i32 %140, 66, !dbg !5534
  br i1 %cmp174, label %if.then175, label %if.end179, !dbg !5535

if.then175:                                       ; preds = %if.then172
  %141 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5536
  %class_dev176 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %141, i32 0, i32 4, !dbg !5536
  %142 = load %struct.device*, %struct.device** %class_dev176, align 8, !dbg !5536
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %142, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0)) #7, !dbg !5536
  %143 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5538
  %start_arg177 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %143, i32 0, i32 3, !dbg !5539
  store i32 2000, i32* %start_arg177, align 4, !dbg !5540
  %144 = load i32, i32* %err, align 4, !dbg !5541
  %inc178 = add i32 %144, 1, !dbg !5541
  store i32 %inc178, i32* %err, align 4, !dbg !5541
  br label %if.end179, !dbg !5542

if.end179:                                        ; preds = %if.then175, %if.then172
  %145 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !5543
  %ai_chan_ticks180 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %145, i32 0, i32 4, !dbg !5545
  %146 = load i32, i32* %ai_chan_ticks180, align 4, !dbg !5545
  %cmp181 = icmp ult i32 %146, 66, !dbg !5546
  br i1 %cmp181, label %if.then182, label %if.end186, !dbg !5547

if.then182:                                       ; preds = %if.end179
  %147 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5548
  %class_dev183 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %147, i32 0, i32 4, !dbg !5548
  %148 = load %struct.device*, %struct.device** %class_dev183, align 8, !dbg !5548
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %148, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0)) #7, !dbg !5548
  %149 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5550
  %convert_arg184 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %149, i32 0, i32 7, !dbg !5551
  store i32 2000, i32* %convert_arg184, align 4, !dbg !5552
  %150 = load i32, i32* %err, align 4, !dbg !5553
  %inc185 = add i32 %150, 1, !dbg !5553
  store i32 %inc185, i32* %err, align 4, !dbg !5553
  br label %if.end186, !dbg !5554

if.end186:                                        ; preds = %if.then182, %if.end179
  br label %if.end293, !dbg !5555

if.else187:                                       ; preds = %land.lhs.true169, %land.lhs.true166, %if.else163
  %151 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5556
  %start_src188 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %151, i32 0, i32 2, !dbg !5558
  %152 = load i32, i32* %start_src188, align 8, !dbg !5558
  %cmp189 = icmp eq i32 %152, 64, !dbg !5559
  br i1 %cmp189, label %land.lhs.true190, label %if.else224, !dbg !5560

land.lhs.true190:                                 ; preds = %if.else187
  %153 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5561
  %scan_begin_src191 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %153, i32 0, i32 4, !dbg !5562
  %154 = load i32, i32* %scan_begin_src191, align 8, !dbg !5562
  %cmp192 = icmp eq i32 %154, 16, !dbg !5563
  br i1 %cmp192, label %land.lhs.true193, label %if.else224, !dbg !5564

land.lhs.true193:                                 ; preds = %land.lhs.true190
  %155 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5565
  %convert_src194 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %155, i32 0, i32 6, !dbg !5566
  %156 = load i32, i32* %convert_src194, align 8, !dbg !5566
  %cmp195 = icmp eq i32 %156, 16, !dbg !5567
  br i1 %cmp195, label %if.then196, label %if.else224, !dbg !5568

if.then196:                                       ; preds = %land.lhs.true193
  %157 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !5569
  %ai_init_ticks197 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %157, i32 0, i32 2, !dbg !5572
  %158 = load i32, i32* %ai_init_ticks197, align 4, !dbg !5572
  %cmp198 = icmp ult i32 %158, 66, !dbg !5573
  br i1 %cmp198, label %if.then199, label %if.end203, !dbg !5574

if.then199:                                       ; preds = %if.then196
  %159 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5575
  %class_dev200 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %159, i32 0, i32 4, !dbg !5575
  %160 = load %struct.device*, %struct.device** %class_dev200, align 8, !dbg !5575
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %160, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0)) #7, !dbg !5575
  %161 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5577
  %start_arg201 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %161, i32 0, i32 3, !dbg !5578
  store i32 2000, i32* %start_arg201, align 4, !dbg !5579
  %162 = load i32, i32* %err, align 4, !dbg !5580
  %inc202 = add i32 %162, 1, !dbg !5580
  store i32 %inc202, i32* %err, align 4, !dbg !5580
  br label %if.end203, !dbg !5581

if.end203:                                        ; preds = %if.then199, %if.then196
  %163 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !5582
  %ai_chan_ticks204 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %163, i32 0, i32 4, !dbg !5584
  %164 = load i32, i32* %ai_chan_ticks204, align 4, !dbg !5584
  %cmp205 = icmp ult i32 %164, 66, !dbg !5585
  br i1 %cmp205, label %if.then206, label %if.end210, !dbg !5586

if.then206:                                       ; preds = %if.end203
  %165 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5587
  %class_dev207 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %165, i32 0, i32 4, !dbg !5587
  %166 = load %struct.device*, %struct.device** %class_dev207, align 8, !dbg !5587
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %166, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0)) #7, !dbg !5587
  %167 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5589
  %convert_arg208 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %167, i32 0, i32 7, !dbg !5590
  store i32 2000, i32* %convert_arg208, align 4, !dbg !5591
  %168 = load i32, i32* %err, align 4, !dbg !5592
  %inc209 = add i32 %168, 1, !dbg !5592
  store i32 %inc209, i32* %err, align 4, !dbg !5592
  br label %if.end210, !dbg !5593

if.end210:                                        ; preds = %if.then206, %if.end203
  %169 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !5594
  %ai_scan_ticks211 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %169, i32 0, i32 3, !dbg !5596
  %170 = load i32, i32* %ai_scan_ticks211, align 8, !dbg !5596
  %171 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5597
  %chanlist_len212 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %171, i32 0, i32 13, !dbg !5598
  %172 = load i32, i32* %chanlist_len212, align 8, !dbg !5598
  %173 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !5599
  %ai_chan_ticks213 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %173, i32 0, i32 4, !dbg !5600
  %174 = load i32, i32* %ai_chan_ticks213, align 4, !dbg !5600
  %mul214 = mul i32 %172, %174, !dbg !5601
  %cmp215 = icmp ule i32 %170, %mul214, !dbg !5602
  br i1 %cmp215, label %if.then216, label %if.end223, !dbg !5603

if.then216:                                       ; preds = %if.end210
  %175 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5604
  %class_dev217 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %175, i32 0, i32 4, !dbg !5604
  %176 = load %struct.device*, %struct.device** %class_dev217, align 8, !dbg !5604
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %176, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0)) #7, !dbg !5604
  %177 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5606
  %chanlist_len218 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %177, i32 0, i32 13, !dbg !5607
  %178 = load i32, i32* %chanlist_len218, align 8, !dbg !5607
  %mul219 = mul i32 2000, %178, !dbg !5608
  %add220 = add i32 %mul219, 31, !dbg !5609
  %179 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5610
  %scan_end_arg221 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %179, i32 0, i32 9, !dbg !5611
  store i32 %add220, i32* %scan_end_arg221, align 4, !dbg !5612
  %180 = load i32, i32* %err, align 4, !dbg !5613
  %inc222 = add i32 %180, 1, !dbg !5613
  store i32 %inc222, i32* %err, align 4, !dbg !5613
  br label %if.end223, !dbg !5614

if.end223:                                        ; preds = %if.then216, %if.end210
  br label %if.end292, !dbg !5615

if.else224:                                       ; preds = %land.lhs.true193, %land.lhs.true190, %if.else187
  %181 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5616
  %start_src225 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %181, i32 0, i32 2, !dbg !5618
  %182 = load i32, i32* %start_src225, align 8, !dbg !5618
  %cmp226 = icmp eq i32 %182, 64, !dbg !5619
  br i1 %cmp226, label %land.lhs.true227, label %if.else248, !dbg !5620

land.lhs.true227:                                 ; preds = %if.else224
  %183 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5621
  %scan_begin_src228 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %183, i32 0, i32 4, !dbg !5622
  %184 = load i32, i32* %scan_begin_src228, align 8, !dbg !5622
  %cmp229 = icmp eq i32 %184, 4, !dbg !5623
  br i1 %cmp229, label %land.lhs.true230, label %if.else248, !dbg !5624

land.lhs.true230:                                 ; preds = %land.lhs.true227
  %185 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5625
  %convert_src231 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %185, i32 0, i32 6, !dbg !5626
  %186 = load i32, i32* %convert_src231, align 8, !dbg !5626
  %cmp232 = icmp eq i32 %186, 16, !dbg !5627
  br i1 %cmp232, label %if.then233, label %if.else248, !dbg !5628

if.then233:                                       ; preds = %land.lhs.true230
  %187 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !5629
  %ai_init_ticks234 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %187, i32 0, i32 2, !dbg !5632
  %188 = load i32, i32* %ai_init_ticks234, align 4, !dbg !5632
  %cmp235 = icmp ult i32 %188, 66, !dbg !5633
  br i1 %cmp235, label %if.then236, label %if.end240, !dbg !5634

if.then236:                                       ; preds = %if.then233
  %189 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5635
  %class_dev237 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %189, i32 0, i32 4, !dbg !5635
  %190 = load %struct.device*, %struct.device** %class_dev237, align 8, !dbg !5635
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %190, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0)) #7, !dbg !5635
  %191 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5637
  %start_arg238 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %191, i32 0, i32 3, !dbg !5638
  store i32 2000, i32* %start_arg238, align 4, !dbg !5639
  %192 = load i32, i32* %err, align 4, !dbg !5640
  %inc239 = add i32 %192, 1, !dbg !5640
  store i32 %inc239, i32* %err, align 4, !dbg !5640
  br label %if.end240, !dbg !5641

if.end240:                                        ; preds = %if.then236, %if.then233
  %193 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !5642
  %ai_chan_ticks241 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %193, i32 0, i32 4, !dbg !5644
  %194 = load i32, i32* %ai_chan_ticks241, align 4, !dbg !5644
  %cmp242 = icmp ult i32 %194, 66, !dbg !5645
  br i1 %cmp242, label %if.then243, label %if.end247, !dbg !5646

if.then243:                                       ; preds = %if.end240
  %195 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5647
  %class_dev244 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %195, i32 0, i32 4, !dbg !5647
  %196 = load %struct.device*, %struct.device** %class_dev244, align 8, !dbg !5647
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %196, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0)) #7, !dbg !5647
  %197 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5649
  %convert_arg245 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %197, i32 0, i32 7, !dbg !5650
  store i32 2000, i32* %convert_arg245, align 4, !dbg !5651
  %198 = load i32, i32* %err, align 4, !dbg !5652
  %inc246 = add i32 %198, 1, !dbg !5652
  store i32 %inc246, i32* %err, align 4, !dbg !5652
  br label %if.end247, !dbg !5653

if.end247:                                        ; preds = %if.then243, %if.end240
  br label %if.end291, !dbg !5654

if.else248:                                       ; preds = %land.lhs.true230, %land.lhs.true227, %if.else224
  %199 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5655
  %start_src249 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %199, i32 0, i32 2, !dbg !5657
  %200 = load i32, i32* %start_src249, align 8, !dbg !5657
  %cmp250 = icmp eq i32 %200, 64, !dbg !5658
  br i1 %cmp250, label %land.lhs.true251, label %if.else272, !dbg !5659

land.lhs.true251:                                 ; preds = %if.else248
  %201 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5660
  %scan_begin_src252 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %201, i32 0, i32 4, !dbg !5661
  %202 = load i32, i32* %scan_begin_src252, align 8, !dbg !5661
  %cmp253 = icmp eq i32 %202, 64, !dbg !5662
  br i1 %cmp253, label %land.lhs.true254, label %if.else272, !dbg !5663

land.lhs.true254:                                 ; preds = %land.lhs.true251
  %203 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5664
  %convert_src255 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %203, i32 0, i32 6, !dbg !5665
  %204 = load i32, i32* %convert_src255, align 8, !dbg !5665
  %cmp256 = icmp eq i32 %204, 16, !dbg !5666
  br i1 %cmp256, label %if.then257, label %if.else272, !dbg !5667

if.then257:                                       ; preds = %land.lhs.true254
  %205 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !5668
  %ai_init_ticks258 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %205, i32 0, i32 2, !dbg !5671
  %206 = load i32, i32* %ai_init_ticks258, align 4, !dbg !5671
  %cmp259 = icmp ult i32 %206, 66, !dbg !5672
  br i1 %cmp259, label %if.then260, label %if.end264, !dbg !5673

if.then260:                                       ; preds = %if.then257
  %207 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5674
  %class_dev261 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %207, i32 0, i32 4, !dbg !5674
  %208 = load %struct.device*, %struct.device** %class_dev261, align 8, !dbg !5674
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %208, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0)) #7, !dbg !5674
  %209 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5676
  %start_arg262 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %209, i32 0, i32 3, !dbg !5677
  store i32 2000, i32* %start_arg262, align 4, !dbg !5678
  %210 = load i32, i32* %err, align 4, !dbg !5679
  %inc263 = add i32 %210, 1, !dbg !5679
  store i32 %inc263, i32* %err, align 4, !dbg !5679
  br label %if.end264, !dbg !5680

if.end264:                                        ; preds = %if.then260, %if.then257
  %211 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !5681
  %ai_chan_ticks265 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %211, i32 0, i32 4, !dbg !5683
  %212 = load i32, i32* %ai_chan_ticks265, align 4, !dbg !5683
  %cmp266 = icmp ult i32 %212, 66, !dbg !5684
  br i1 %cmp266, label %if.then267, label %if.end271, !dbg !5685

if.then267:                                       ; preds = %if.end264
  %213 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5686
  %class_dev268 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %213, i32 0, i32 4, !dbg !5686
  %214 = load %struct.device*, %struct.device** %class_dev268, align 8, !dbg !5686
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %214, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0)) #7, !dbg !5686
  %215 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5688
  %convert_arg269 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %215, i32 0, i32 7, !dbg !5689
  store i32 2000, i32* %convert_arg269, align 4, !dbg !5690
  %216 = load i32, i32* %err, align 4, !dbg !5691
  %inc270 = add i32 %216, 1, !dbg !5691
  store i32 %inc270, i32* %err, align 4, !dbg !5691
  br label %if.end271, !dbg !5692

if.end271:                                        ; preds = %if.then267, %if.end264
  br label %if.end290, !dbg !5693

if.else272:                                       ; preds = %land.lhs.true254, %land.lhs.true251, %if.else248
  %217 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5694
  %start_src273 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %217, i32 0, i32 2, !dbg !5696
  %218 = load i32, i32* %start_src273, align 8, !dbg !5696
  %cmp274 = icmp eq i32 %218, 64, !dbg !5697
  br i1 %cmp274, label %land.lhs.true275, label %if.end289, !dbg !5698

land.lhs.true275:                                 ; preds = %if.else272
  %219 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5699
  %scan_begin_src276 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %219, i32 0, i32 4, !dbg !5700
  %220 = load i32, i32* %scan_begin_src276, align 8, !dbg !5700
  %cmp277 = icmp eq i32 %220, 64, !dbg !5701
  br i1 %cmp277, label %land.lhs.true278, label %if.end289, !dbg !5702

land.lhs.true278:                                 ; preds = %land.lhs.true275
  %221 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5703
  %convert_src279 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %221, i32 0, i32 6, !dbg !5704
  %222 = load i32, i32* %convert_src279, align 8, !dbg !5704
  %cmp280 = icmp eq i32 %222, 64, !dbg !5705
  br i1 %cmp280, label %if.then281, label %if.end289, !dbg !5706

if.then281:                                       ; preds = %land.lhs.true278
  %223 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !5707
  %ai_init_ticks282 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %223, i32 0, i32 2, !dbg !5710
  %224 = load i32, i32* %ai_init_ticks282, align 4, !dbg !5710
  %cmp283 = icmp ult i32 %224, 66, !dbg !5711
  br i1 %cmp283, label %if.then284, label %if.end288, !dbg !5712

if.then284:                                       ; preds = %if.then281
  %225 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5713
  %class_dev285 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %225, i32 0, i32 4, !dbg !5713
  %226 = load %struct.device*, %struct.device** %class_dev285, align 8, !dbg !5713
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %226, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0)) #7, !dbg !5713
  %227 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5715
  %start_arg286 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %227, i32 0, i32 3, !dbg !5716
  store i32 2000, i32* %start_arg286, align 4, !dbg !5717
  %228 = load i32, i32* %err, align 4, !dbg !5718
  %inc287 = add i32 %228, 1, !dbg !5718
  store i32 %inc287, i32* %err, align 4, !dbg !5718
  br label %if.end288, !dbg !5719

if.end288:                                        ; preds = %if.then284, %if.then281
  br label %if.end289, !dbg !5720

if.end289:                                        ; preds = %if.end288, %land.lhs.true278, %land.lhs.true275, %if.else272
  br label %if.end290

if.end290:                                        ; preds = %if.end289, %if.end271
  br label %if.end291

if.end291:                                        ; preds = %if.end290, %if.end247
  br label %if.end292

if.end292:                                        ; preds = %if.end291, %if.end223
  br label %if.end293

if.end293:                                        ; preds = %if.end292, %if.end186
  br label %if.end294

if.end294:                                        ; preds = %if.end293, %if.end162
  %229 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5721
  %scan_end_src295 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %229, i32 0, i32 8, !dbg !5723
  %230 = load i32, i32* %scan_end_src295, align 8, !dbg !5723
  %cmp296 = icmp eq i32 %230, 32, !dbg !5724
  br i1 %cmp296, label %if.then297, label %if.end305, !dbg !5725

if.then297:                                       ; preds = %if.end294
  %231 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5726
  %scan_end_arg298 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %231, i32 0, i32 9, !dbg !5729
  %232 = load i32, i32* %scan_end_arg298, align 4, !dbg !5729
  %cmp299 = icmp eq i32 %232, 0, !dbg !5730
  br i1 %cmp299, label %if.then300, label %if.end304, !dbg !5731

if.then300:                                       ; preds = %if.then297
  %233 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5732
  %class_dev301 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %233, i32 0, i32 4, !dbg !5732
  %234 = load %struct.device*, %struct.device** %class_dev301, align 8, !dbg !5732
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %234, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0)) #7, !dbg !5732
  %235 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5734
  %scan_end_arg302 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %235, i32 0, i32 9, !dbg !5735
  store i32 1, i32* %scan_end_arg302, align 4, !dbg !5736
  %236 = load i32, i32* %err, align 4, !dbg !5737
  %inc303 = add i32 %236, 1, !dbg !5737
  store i32 %inc303, i32* %err, align 4, !dbg !5737
  br label %if.end304, !dbg !5738

if.end304:                                        ; preds = %if.then300, %if.then297
  br label %if.end305, !dbg !5739

if.end305:                                        ; preds = %if.end304, %if.end294
  %237 = load i32, i32* %err, align 4, !dbg !5740
  %tobool306 = icmp ne i32 %237, 0, !dbg !5740
  br i1 %tobool306, label %if.then307, label %if.end308, !dbg !5742

if.then307:                                       ; preds = %if.end305
  store i32 4, i32* %retval, align 4, !dbg !5743
  br label %return, !dbg !5743

if.end308:                                        ; preds = %if.end305
  %238 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5744
  %chanlist = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %238, i32 0, i32 12, !dbg !5746
  %239 = load i32*, i32** %chanlist, align 8, !dbg !5746
  %tobool309 = icmp ne i32* %239, null, !dbg !5744
  br i1 %tobool309, label %land.lhs.true310, label %if.end316, !dbg !5747

land.lhs.true310:                                 ; preds = %if.end308
  %240 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5748
  %chanlist_len311 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %240, i32 0, i32 13, !dbg !5749
  %241 = load i32, i32* %chanlist_len311, align 8, !dbg !5749
  %cmp312 = icmp ugt i32 %241, 0, !dbg !5750
  br i1 %cmp312, label %if.then313, label %if.end316, !dbg !5751

if.then313:                                       ; preds = %land.lhs.true310
  %242 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5752
  %243 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5753
  %244 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5754
  %call314 = call i32 @me4000_ai_check_chanlist(%struct.comedi_device* %242, %struct.comedi_subdevice* %243, %struct.comedi_cmd* %244) #5, !dbg !5755
  %245 = load i32, i32* %err, align 4, !dbg !5756
  %or315 = or i32 %245, %call314, !dbg !5756
  store i32 %or315, i32* %err, align 4, !dbg !5756
  br label %if.end316, !dbg !5757

if.end316:                                        ; preds = %if.then313, %land.lhs.true310, %if.end308
  %246 = load i32, i32* %err, align 4, !dbg !5758
  %tobool317 = icmp ne i32 %246, 0, !dbg !5758
  br i1 %tobool317, label %if.then318, label %if.end319, !dbg !5760

if.then318:                                       ; preds = %if.end316
  store i32 5, i32* %retval, align 4, !dbg !5761
  br label %return, !dbg !5761

if.end319:                                        ; preds = %if.end316
  store i32 0, i32* %retval, align 4, !dbg !5762
  br label %return, !dbg !5762

return:                                           ; preds = %if.end319, %if.then318, %if.then307, %if.then130, %if.then94, %if.then
  %247 = load i32, i32* %retval, align 4, !dbg !5763
  ret i32 %247, !dbg !5763
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @me4000_ai_do_cmd(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #2 !dbg !5764 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %devpriv = alloca %struct.me4000_private*, align 8
  %cmd = alloca %struct.comedi_cmd*, align 8
  %ctrl = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5765, metadata !DIExpression()), !dbg !5766
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5767, metadata !DIExpression()), !dbg !5768
  call void @llvm.dbg.declare(metadata %struct.me4000_private** %devpriv, metadata !5769, metadata !DIExpression()), !dbg !5770
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5771
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5772
  %1 = load i8*, i8** %private, align 8, !dbg !5772
  %2 = bitcast i8* %1 to %struct.me4000_private*, !dbg !5771
  store %struct.me4000_private* %2, %struct.me4000_private** %devpriv, align 8, !dbg !5770
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd, metadata !5773, metadata !DIExpression()), !dbg !5774
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5775
  %async = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %3, i32 0, i32 7, !dbg !5776
  %4 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5776
  %cmd1 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %4, i32 0, i32 17, !dbg !5777
  store %struct.comedi_cmd* %cmd1, %struct.comedi_cmd** %cmd, align 8, !dbg !5774
  call void @llvm.dbg.declare(metadata i32* %ctrl, metadata !5778, metadata !DIExpression()), !dbg !5779
  %5 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !5780
  %ai_init_ticks = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %5, i32 0, i32 2, !dbg !5781
  %6 = load i32, i32* %ai_init_ticks, align 4, !dbg !5781
  %sub = sub i32 %6, 1, !dbg !5782
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5783
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 18, !dbg !5784
  %8 = load i64, i64* %iobase, align 8, !dbg !5784
  %add = add i64 %8, 144, !dbg !5785
  %conv = trunc i64 %add to i32, !dbg !5783
  call void @outl(i32 %sub, i32 %conv) #5, !dbg !5786
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5787
  %iobase2 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 18, !dbg !5788
  %10 = load i64, i64* %iobase2, align 8, !dbg !5788
  %add3 = add i64 %10, 148, !dbg !5789
  %conv4 = trunc i64 %add3 to i32, !dbg !5787
  call void @outl(i32 0, i32 %conv4) #5, !dbg !5790
  %11 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !5791
  %ai_scan_ticks = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %11, i32 0, i32 3, !dbg !5793
  %12 = load i32, i32* %ai_scan_ticks, align 8, !dbg !5793
  %tobool = icmp ne i32 %12, 0, !dbg !5791
  br i1 %tobool, label %if.then, label %if.end, !dbg !5794

if.then:                                          ; preds = %entry
  %13 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !5795
  %ai_scan_ticks5 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %13, i32 0, i32 3, !dbg !5797
  %14 = load i32, i32* %ai_scan_ticks5, align 8, !dbg !5797
  %sub6 = sub i32 %14, 1, !dbg !5798
  %15 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5799
  %iobase7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 18, !dbg !5800
  %16 = load i64, i64* %iobase7, align 8, !dbg !5800
  %add8 = add i64 %16, 136, !dbg !5801
  %conv9 = trunc i64 %add8 to i32, !dbg !5799
  call void @outl(i32 %sub6, i32 %conv9) #5, !dbg !5802
  %17 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5803
  %iobase10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 18, !dbg !5804
  %18 = load i64, i64* %iobase10, align 8, !dbg !5804
  %add11 = add i64 %18, 140, !dbg !5805
  %conv12 = trunc i64 %add11 to i32, !dbg !5803
  call void @outl(i32 0, i32 %conv12) #5, !dbg !5806
  br label %if.end, !dbg !5807

if.end:                                           ; preds = %if.then, %entry
  %19 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !5808
  %ai_chan_ticks = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %19, i32 0, i32 4, !dbg !5809
  %20 = load i32, i32* %ai_chan_ticks, align 4, !dbg !5809
  %sub13 = sub i32 %20, 1, !dbg !5810
  %21 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5811
  %iobase14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %21, i32 0, i32 18, !dbg !5812
  %22 = load i64, i64* %iobase14, align 8, !dbg !5812
  %add15 = add i64 %22, 132, !dbg !5813
  %conv16 = trunc i64 %add15 to i32, !dbg !5811
  call void @outl(i32 %sub13, i32 %conv16) #5, !dbg !5814
  %23 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !5815
  %ai_chan_ticks17 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %23, i32 0, i32 4, !dbg !5816
  %24 = load i32, i32* %ai_chan_ticks17, align 4, !dbg !5816
  %sub18 = sub i32 %24, 1, !dbg !5817
  %25 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5818
  %iobase19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 18, !dbg !5819
  %26 = load i64, i64* %iobase19, align 8, !dbg !5819
  %add20 = add i64 %26, 128, !dbg !5820
  %conv21 = trunc i64 %add20 to i32, !dbg !5818
  call void @outl(i32 %sub18, i32 %conv21) #5, !dbg !5821
  %27 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !5822
  %ai_ctrl_mode = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %27, i32 0, i32 1, !dbg !5823
  %28 = load i32, i32* %ai_ctrl_mode, align 8, !dbg !5823
  %conv22 = zext i32 %28 to i64, !dbg !5822
  %or = or i64 %conv22, 64, !dbg !5824
  %or23 = or i64 %or, 128, !dbg !5825
  %conv24 = trunc i64 %or23 to i32, !dbg !5822
  store i32 %conv24, i32* %ctrl, align 4, !dbg !5826
  %29 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5827
  %stop_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %29, i32 0, i32 10, !dbg !5829
  %30 = load i32, i32* %stop_src, align 8, !dbg !5829
  %cmp = icmp eq i32 %30, 32, !dbg !5830
  br i1 %cmp, label %if.then26, label %if.else, !dbg !5831

if.then26:                                        ; preds = %if.end
  %31 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5832
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %31, i32 0, i32 13, !dbg !5834
  %32 = load i32, i32* %chanlist_len, align 8, !dbg !5834
  %33 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5835
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %33, i32 0, i32 11, !dbg !5836
  %34 = load i32, i32* %stop_arg, align 4, !dbg !5836
  %mul = mul i32 %32, %34, !dbg !5837
  %35 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5838
  %iobase27 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %35, i32 0, i32 18, !dbg !5839
  %36 = load i64, i64* %iobase27, align 8, !dbg !5839
  %add28 = add i64 %36, 192, !dbg !5840
  %conv29 = trunc i64 %add28 to i32, !dbg !5838
  call void @outl(i32 %mul, i32 %conv29) #5, !dbg !5841
  %37 = load i32, i32* %ctrl, align 4, !dbg !5842
  %conv30 = zext i32 %37 to i64, !dbg !5842
  %or31 = or i64 %conv30, 524288, !dbg !5842
  %conv32 = trunc i64 %or31 to i32, !dbg !5842
  store i32 %conv32, i32* %ctrl, align 4, !dbg !5842
  br label %if.end46, !dbg !5843

if.else:                                          ; preds = %if.end
  %38 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5844
  %stop_src33 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %38, i32 0, i32 10, !dbg !5846
  %39 = load i32, i32* %stop_src33, align 8, !dbg !5846
  %cmp34 = icmp eq i32 %39, 1, !dbg !5847
  br i1 %cmp34, label %land.lhs.true, label %if.end45, !dbg !5848

land.lhs.true:                                    ; preds = %if.else
  %40 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5849
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %40, i32 0, i32 8, !dbg !5850
  %41 = load i32, i32* %scan_end_src, align 8, !dbg !5850
  %cmp36 = icmp eq i32 %41, 32, !dbg !5851
  br i1 %cmp36, label %if.then38, label %if.end45, !dbg !5852

if.then38:                                        ; preds = %land.lhs.true
  %42 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5853
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %42, i32 0, i32 9, !dbg !5855
  %43 = load i32, i32* %scan_end_arg, align 4, !dbg !5855
  %44 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5856
  %iobase39 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %44, i32 0, i32 18, !dbg !5857
  %45 = load i64, i64* %iobase39, align 8, !dbg !5857
  %add40 = add i64 %45, 192, !dbg !5858
  %conv41 = trunc i64 %add40 to i32, !dbg !5856
  call void @outl(i32 %43, i32 %conv41) #5, !dbg !5859
  %46 = load i32, i32* %ctrl, align 4, !dbg !5860
  %conv42 = zext i32 %46 to i64, !dbg !5860
  %or43 = or i64 %conv42, 524288, !dbg !5860
  %conv44 = trunc i64 %or43 to i32, !dbg !5860
  store i32 %conv44, i32* %ctrl, align 4, !dbg !5860
  br label %if.end45, !dbg !5861

if.end45:                                         ; preds = %if.then38, %land.lhs.true, %if.else
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then26
  %47 = load i32, i32* %ctrl, align 4, !dbg !5862
  %conv47 = zext i32 %47 to i64, !dbg !5862
  %or48 = or i64 %conv47, 131072, !dbg !5862
  %conv49 = trunc i64 %or48 to i32, !dbg !5862
  store i32 %conv49, i32* %ctrl, align 4, !dbg !5862
  %48 = load i32, i32* %ctrl, align 4, !dbg !5863
  %49 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5864
  %iobase50 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %49, i32 0, i32 18, !dbg !5865
  %50 = load i64, i64* %iobase50, align 8, !dbg !5865
  %add51 = add i64 %50, 116, !dbg !5866
  %conv52 = trunc i64 %add51 to i32, !dbg !5864
  call void @outl(i32 %48, i32 %conv52) #5, !dbg !5867
  %51 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5868
  %52 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5869
  %53 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5870
  call void @me4000_ai_write_chanlist(%struct.comedi_device* %51, %struct.comedi_subdevice* %52, %struct.comedi_cmd* %53) #5, !dbg !5871
  %54 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5872
  %iobase53 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %54, i32 0, i32 18, !dbg !5873
  %55 = load i64, i64* %iobase53, align 8, !dbg !5873
  %add54 = add i64 %55, 152, !dbg !5874
  %conv55 = trunc i64 %add54 to i32, !dbg !5872
  %call = call i32 @inl(i32 %conv55) #5, !dbg !5875
  ret i32 0, !dbg !5876
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @me4000_ao_insn_write(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5877 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %chan = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5878, metadata !DIExpression()), !dbg !5879
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5880, metadata !DIExpression()), !dbg !5881
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5882, metadata !DIExpression()), !dbg !5883
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5884, metadata !DIExpression()), !dbg !5885
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !5886, metadata !DIExpression()), !dbg !5887
  %0 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5888
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %0, i32 0, i32 4, !dbg !5888
  %1 = load i32, i32* %chanspec, align 4, !dbg !5888
  %and = and i32 %1, 65535, !dbg !5888
  store i32 %and, i32* %chan, align 4, !dbg !5887
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !5889, metadata !DIExpression()), !dbg !5890
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5891
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %2, i32 0, i32 18, !dbg !5892
  %3 = load i64, i64* %iobase, align 8, !dbg !5892
  %4 = load i32, i32* %chan, align 4, !dbg !5893
  %mul = mul i32 %4, 24, !dbg !5893
  %add = add i32 0, %mul, !dbg !5893
  %conv = zext i32 %add to i64, !dbg !5893
  %add1 = add i64 %3, %conv, !dbg !5894
  %conv2 = trunc i64 %add1 to i32, !dbg !5891
  %call = call i32 @inl(i32 %conv2) #5, !dbg !5895
  store i32 %call, i32* %tmp, align 4, !dbg !5896
  %5 = load i32, i32* %tmp, align 4, !dbg !5897
  %conv3 = zext i32 %5 to i64, !dbg !5897
  %or = or i64 %conv3, 128, !dbg !5897
  %conv4 = trunc i64 %or to i32, !dbg !5897
  store i32 %conv4, i32* %tmp, align 4, !dbg !5897
  %6 = load i32, i32* %tmp, align 4, !dbg !5898
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5899
  %iobase5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 18, !dbg !5900
  %8 = load i64, i64* %iobase5, align 8, !dbg !5900
  %9 = load i32, i32* %chan, align 4, !dbg !5901
  %mul6 = mul i32 %9, 24, !dbg !5901
  %add7 = add i32 0, %mul6, !dbg !5901
  %conv8 = zext i32 %add7 to i64, !dbg !5901
  %add9 = add i64 %8, %conv8, !dbg !5902
  %conv10 = trunc i64 %add9 to i32, !dbg !5899
  call void @outl(i32 %6, i32 %conv10) #5, !dbg !5903
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5904
  %iobase11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 18, !dbg !5905
  %11 = load i64, i64* %iobase11, align 8, !dbg !5905
  %12 = load i32, i32* %chan, align 4, !dbg !5906
  %mul12 = mul i32 %12, 24, !dbg !5906
  %add13 = add i32 0, %mul12, !dbg !5906
  %conv14 = zext i32 %add13 to i64, !dbg !5906
  %add15 = add i64 %11, %conv14, !dbg !5907
  %conv16 = trunc i64 %add15 to i32, !dbg !5904
  call void @outl(i32 0, i32 %conv16) #5, !dbg !5908
  %13 = load i32*, i32** %data.addr, align 8, !dbg !5909
  %arrayidx = getelementptr i32, i32* %13, i64 0, !dbg !5909
  %14 = load i32, i32* %arrayidx, align 4, !dbg !5909
  %15 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5910
  %iobase17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 18, !dbg !5911
  %16 = load i64, i64* %iobase17, align 8, !dbg !5911
  %17 = load i32, i32* %chan, align 4, !dbg !5912
  %mul18 = mul i32 %17, 24, !dbg !5912
  %add19 = add i32 12, %mul18, !dbg !5912
  %conv20 = zext i32 %add19 to i64, !dbg !5912
  %add21 = add i64 %16, %conv20, !dbg !5913
  %conv22 = trunc i64 %add21 to i32, !dbg !5910
  call void @outl(i32 %14, i32 %conv22) #5, !dbg !5914
  %18 = load i32*, i32** %data.addr, align 8, !dbg !5915
  %arrayidx23 = getelementptr i32, i32* %18, i64 0, !dbg !5915
  %19 = load i32, i32* %arrayidx23, align 4, !dbg !5915
  %20 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5916
  %readback = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %20, i32 0, i32 32, !dbg !5917
  %21 = load i32*, i32** %readback, align 8, !dbg !5917
  %22 = load i32, i32* %chan, align 4, !dbg !5918
  %idxprom = zext i32 %22 to i64, !dbg !5916
  %arrayidx24 = getelementptr i32, i32* %21, i64 %idxprom, !dbg !5916
  store i32 %19, i32* %arrayidx24, align 4, !dbg !5919
  ret i32 1, !dbg !5920
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_alloc_subdev_readback(%struct.comedi_subdevice*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @me4000_dio_insn_bits(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5921 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5922, metadata !DIExpression()), !dbg !5923
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5924, metadata !DIExpression()), !dbg !5925
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5926, metadata !DIExpression()), !dbg !5927
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5928, metadata !DIExpression()), !dbg !5929
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5930
  %1 = load i32*, i32** %data.addr, align 8, !dbg !5932
  %call = call i32 @comedi_dio_update_state(%struct.comedi_subdevice* %0, i32* %1) #5, !dbg !5933
  %tobool = icmp ne i32 %call, 0, !dbg !5933
  br i1 %tobool, label %if.then, label %if.end, !dbg !5934

if.then:                                          ; preds = %entry
  %2 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5935
  %state = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %2, i32 0, i32 29, !dbg !5937
  %3 = load i32, i32* %state, align 4, !dbg !5937
  %shr = lshr i32 %3, 0, !dbg !5938
  %and = and i32 %shr, 255, !dbg !5939
  %4 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5940
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 18, !dbg !5941
  %5 = load i64, i64* %iobase, align 8, !dbg !5941
  %add = add i64 %5, 160, !dbg !5942
  %conv = trunc i64 %add to i32, !dbg !5940
  call void @outl(i32 %and, i32 %conv) #5, !dbg !5943
  %6 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5944
  %state1 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %6, i32 0, i32 29, !dbg !5945
  %7 = load i32, i32* %state1, align 4, !dbg !5945
  %shr2 = lshr i32 %7, 8, !dbg !5946
  %and3 = and i32 %shr2, 255, !dbg !5947
  %8 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5948
  %iobase4 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 18, !dbg !5949
  %9 = load i64, i64* %iobase4, align 8, !dbg !5949
  %add5 = add i64 %9, 164, !dbg !5950
  %conv6 = trunc i64 %add5 to i32, !dbg !5948
  call void @outl(i32 %and3, i32 %conv6) #5, !dbg !5951
  %10 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5952
  %state7 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %10, i32 0, i32 29, !dbg !5953
  %11 = load i32, i32* %state7, align 4, !dbg !5953
  %shr8 = lshr i32 %11, 16, !dbg !5954
  %and9 = and i32 %shr8, 255, !dbg !5955
  %12 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5956
  %iobase10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 18, !dbg !5957
  %13 = load i64, i64* %iobase10, align 8, !dbg !5957
  %add11 = add i64 %13, 168, !dbg !5958
  %conv12 = trunc i64 %add11 to i32, !dbg !5956
  call void @outl(i32 %and9, i32 %conv12) #5, !dbg !5959
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5960
  %state13 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %14, i32 0, i32 29, !dbg !5961
  %15 = load i32, i32* %state13, align 4, !dbg !5961
  %shr14 = lshr i32 %15, 24, !dbg !5962
  %and15 = and i32 %shr14, 255, !dbg !5963
  %16 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5964
  %iobase16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 18, !dbg !5965
  %17 = load i64, i64* %iobase16, align 8, !dbg !5965
  %add17 = add i64 %17, 172, !dbg !5966
  %conv18 = trunc i64 %add17 to i32, !dbg !5964
  call void @outl(i32 %and15, i32 %conv18) #5, !dbg !5967
  br label %if.end, !dbg !5968

if.end:                                           ; preds = %if.then, %entry
  %18 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5969
  %iobase19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 18, !dbg !5970
  %19 = load i64, i64* %iobase19, align 8, !dbg !5970
  %add20 = add i64 %19, 160, !dbg !5971
  %conv21 = trunc i64 %add20 to i32, !dbg !5969
  %call22 = call i32 @inl(i32 %conv21) #5, !dbg !5972
  %and23 = and i32 %call22, 255, !dbg !5973
  %shl = shl i32 %and23, 0, !dbg !5974
  %20 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5975
  %iobase24 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 18, !dbg !5976
  %21 = load i64, i64* %iobase24, align 8, !dbg !5976
  %add25 = add i64 %21, 164, !dbg !5977
  %conv26 = trunc i64 %add25 to i32, !dbg !5975
  %call27 = call i32 @inl(i32 %conv26) #5, !dbg !5978
  %and28 = and i32 %call27, 255, !dbg !5979
  %shl29 = shl i32 %and28, 8, !dbg !5980
  %or = or i32 %shl, %shl29, !dbg !5981
  %22 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5982
  %iobase30 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %22, i32 0, i32 18, !dbg !5983
  %23 = load i64, i64* %iobase30, align 8, !dbg !5983
  %add31 = add i64 %23, 168, !dbg !5984
  %conv32 = trunc i64 %add31 to i32, !dbg !5982
  %call33 = call i32 @inl(i32 %conv32) #5, !dbg !5985
  %and34 = and i32 %call33, 255, !dbg !5986
  %shl35 = shl i32 %and34, 16, !dbg !5987
  %or36 = or i32 %or, %shl35, !dbg !5988
  %24 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5989
  %iobase37 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %24, i32 0, i32 18, !dbg !5990
  %25 = load i64, i64* %iobase37, align 8, !dbg !5990
  %add38 = add i64 %25, 172, !dbg !5991
  %conv39 = trunc i64 %add38 to i32, !dbg !5989
  %call40 = call i32 @inl(i32 %conv39) #5, !dbg !5992
  %and41 = and i32 %call40, 255, !dbg !5993
  %shl42 = shl i32 %and41, 24, !dbg !5994
  %or43 = or i32 %or36, %shl42, !dbg !5995
  %26 = load i32*, i32** %data.addr, align 8, !dbg !5996
  %arrayidx = getelementptr i32, i32* %26, i64 1, !dbg !5996
  store i32 %or43, i32* %arrayidx, align 4, !dbg !5997
  %27 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5998
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %27, i32 0, i32 1, !dbg !5999
  %28 = load i32, i32* %n, align 4, !dbg !5999
  ret i32 %28, !dbg !6000
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @me4000_dio_insn_config(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !6001 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %chan = alloca i32, align 4
  %mask = alloca i32, align 4
  %tmp = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !6002, metadata !DIExpression()), !dbg !6003
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !6004, metadata !DIExpression()), !dbg !6005
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !6006, metadata !DIExpression()), !dbg !6007
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !6008, metadata !DIExpression()), !dbg !6009
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !6010, metadata !DIExpression()), !dbg !6011
  %0 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !6012
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %0, i32 0, i32 4, !dbg !6012
  %1 = load i32, i32* %chanspec, align 4, !dbg !6012
  %and = and i32 %1, 65535, !dbg !6012
  store i32 %and, i32* %chan, align 4, !dbg !6011
  call void @llvm.dbg.declare(metadata i32* %mask, metadata !6013, metadata !DIExpression()), !dbg !6014
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !6015, metadata !DIExpression()), !dbg !6016
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6017, metadata !DIExpression()), !dbg !6018
  %2 = load i32, i32* %chan, align 4, !dbg !6019
  %cmp = icmp ult i32 %2, 8, !dbg !6021
  br i1 %cmp, label %if.then, label %if.else, !dbg !6022

if.then:                                          ; preds = %entry
  store i32 255, i32* %mask, align 4, !dbg !6023
  br label %if.end8, !dbg !6024

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %chan, align 4, !dbg !6025
  %cmp1 = icmp ult i32 %3, 16, !dbg !6027
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !6028

if.then2:                                         ; preds = %if.else
  store i32 65280, i32* %mask, align 4, !dbg !6029
  br label %if.end7, !dbg !6030

if.else3:                                         ; preds = %if.else
  %4 = load i32, i32* %chan, align 4, !dbg !6031
  %cmp4 = icmp ult i32 %4, 24, !dbg !6033
  br i1 %cmp4, label %if.then5, label %if.else6, !dbg !6034

if.then5:                                         ; preds = %if.else3
  store i32 16711680, i32* %mask, align 4, !dbg !6035
  br label %if.end, !dbg !6036

if.else6:                                         ; preds = %if.else3
  store i32 -16777216, i32* %mask, align 4, !dbg !6037
  br label %if.end

if.end:                                           ; preds = %if.else6, %if.then5
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then2
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.then
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6038
  %6 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6039
  %7 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !6040
  %8 = load i32*, i32** %data.addr, align 8, !dbg !6041
  %9 = load i32, i32* %mask, align 4, !dbg !6042
  %call = call i32 @comedi_dio_insn_config(%struct.comedi_device* %5, %struct.comedi_subdevice* %6, %struct.comedi_insn* %7, i32* %8, i32 %9) #5, !dbg !6043
  store i32 %call, i32* %ret, align 4, !dbg !6044
  %10 = load i32, i32* %ret, align 4, !dbg !6045
  %tobool = icmp ne i32 %10, 0, !dbg !6045
  br i1 %tobool, label %if.then9, label %if.end10, !dbg !6047

if.then9:                                         ; preds = %if.end8
  %11 = load i32, i32* %ret, align 4, !dbg !6048
  store i32 %11, i32* %retval, align 4, !dbg !6049
  br label %return, !dbg !6049

if.end10:                                         ; preds = %if.end8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6050
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 18, !dbg !6051
  %13 = load i64, i64* %iobase, align 8, !dbg !6051
  %add = add i64 %13, 184, !dbg !6052
  %conv = trunc i64 %add to i32, !dbg !6050
  %call11 = call i32 @inl(i32 %conv) #5, !dbg !6053
  store i32 %call11, i32* %tmp, align 4, !dbg !6054
  %14 = load i32, i32* %tmp, align 4, !dbg !6055
  %conv12 = zext i32 %14 to i64, !dbg !6055
  %and13 = and i64 %conv12, -256, !dbg !6055
  %conv14 = trunc i64 %and13 to i32, !dbg !6055
  store i32 %conv14, i32* %tmp, align 4, !dbg !6055
  %15 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6056
  %io_bits = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %15, i32 0, i32 12, !dbg !6058
  %16 = load i32, i32* %io_bits, align 4, !dbg !6058
  %and15 = and i32 %16, 255, !dbg !6059
  %tobool16 = icmp ne i32 %and15, 0, !dbg !6059
  br i1 %tobool16, label %if.then17, label %if.end20, !dbg !6060

if.then17:                                        ; preds = %if.end10
  %17 = load i32, i32* %tmp, align 4, !dbg !6061
  %conv18 = zext i32 %17 to i64, !dbg !6061
  %or = or i64 %conv18, 1, !dbg !6061
  %conv19 = trunc i64 %or to i32, !dbg !6061
  store i32 %conv19, i32* %tmp, align 4, !dbg !6061
  br label %if.end20, !dbg !6062

if.end20:                                         ; preds = %if.then17, %if.end10
  %18 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6063
  %io_bits21 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %18, i32 0, i32 12, !dbg !6065
  %19 = load i32, i32* %io_bits21, align 4, !dbg !6065
  %and22 = and i32 %19, 65280, !dbg !6066
  %tobool23 = icmp ne i32 %and22, 0, !dbg !6066
  br i1 %tobool23, label %if.then24, label %if.end28, !dbg !6067

if.then24:                                        ; preds = %if.end20
  %20 = load i32, i32* %tmp, align 4, !dbg !6068
  %conv25 = zext i32 %20 to i64, !dbg !6068
  %or26 = or i64 %conv25, 4, !dbg !6068
  %conv27 = trunc i64 %or26 to i32, !dbg !6068
  store i32 %conv27, i32* %tmp, align 4, !dbg !6068
  br label %if.end28, !dbg !6069

if.end28:                                         ; preds = %if.then24, %if.end20
  %21 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6070
  %io_bits29 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %21, i32 0, i32 12, !dbg !6072
  %22 = load i32, i32* %io_bits29, align 4, !dbg !6072
  %and30 = and i32 %22, 16711680, !dbg !6073
  %tobool31 = icmp ne i32 %and30, 0, !dbg !6073
  br i1 %tobool31, label %if.then32, label %if.end36, !dbg !6074

if.then32:                                        ; preds = %if.end28
  %23 = load i32, i32* %tmp, align 4, !dbg !6075
  %conv33 = zext i32 %23 to i64, !dbg !6075
  %or34 = or i64 %conv33, 16, !dbg !6075
  %conv35 = trunc i64 %or34 to i32, !dbg !6075
  store i32 %conv35, i32* %tmp, align 4, !dbg !6075
  br label %if.end36, !dbg !6076

if.end36:                                         ; preds = %if.then32, %if.end28
  %24 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6077
  %io_bits37 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %24, i32 0, i32 12, !dbg !6079
  %25 = load i32, i32* %io_bits37, align 4, !dbg !6079
  %and38 = and i32 %25, -16777216, !dbg !6080
  %tobool39 = icmp ne i32 %and38, 0, !dbg !6080
  br i1 %tobool39, label %if.then40, label %if.end44, !dbg !6081

if.then40:                                        ; preds = %if.end36
  %26 = load i32, i32* %tmp, align 4, !dbg !6082
  %conv41 = zext i32 %26 to i64, !dbg !6082
  %or42 = or i64 %conv41, 64, !dbg !6082
  %conv43 = trunc i64 %or42 to i32, !dbg !6082
  store i32 %conv43, i32* %tmp, align 4, !dbg !6082
  br label %if.end44, !dbg !6083

if.end44:                                         ; preds = %if.then40, %if.end36
  %27 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6084
  %iobase45 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %27, i32 0, i32 18, !dbg !6086
  %28 = load i64, i64* %iobase45, align 8, !dbg !6086
  %add46 = add i64 %28, 176, !dbg !6087
  %conv47 = trunc i64 %add46 to i32, !dbg !6084
  %call48 = call i32 @inl(i32 %conv47) #5, !dbg !6088
  %tobool49 = icmp ne i32 %call48, 0, !dbg !6088
  br i1 %tobool49, label %if.then50, label %if.end61, !dbg !6089

if.then50:                                        ; preds = %if.end44
  %29 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6090
  %io_bits51 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %29, i32 0, i32 12, !dbg !6092
  %30 = load i32, i32* %io_bits51, align 4, !dbg !6093
  %or52 = or i32 %30, 255, !dbg !6093
  store i32 %or52, i32* %io_bits51, align 4, !dbg !6093
  %31 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6094
  %io_bits53 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %31, i32 0, i32 12, !dbg !6095
  %32 = load i32, i32* %io_bits53, align 4, !dbg !6096
  %and54 = and i32 %32, -65281, !dbg !6096
  store i32 %and54, i32* %io_bits53, align 4, !dbg !6096
  %33 = load i32, i32* %tmp, align 4, !dbg !6097
  %conv55 = zext i32 %33 to i64, !dbg !6097
  %or56 = or i64 %conv55, 1, !dbg !6097
  %conv57 = trunc i64 %or56 to i32, !dbg !6097
  store i32 %conv57, i32* %tmp, align 4, !dbg !6097
  %34 = load i32, i32* %tmp, align 4, !dbg !6098
  %conv58 = zext i32 %34 to i64, !dbg !6098
  %and59 = and i64 %conv58, -13, !dbg !6098
  %conv60 = trunc i64 %and59 to i32, !dbg !6098
  store i32 %conv60, i32* %tmp, align 4, !dbg !6098
  br label %if.end61, !dbg !6099

if.end61:                                         ; preds = %if.then50, %if.end44
  %35 = load i32, i32* %tmp, align 4, !dbg !6100
  %36 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6101
  %iobase62 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %36, i32 0, i32 18, !dbg !6102
  %37 = load i64, i64* %iobase62, align 8, !dbg !6102
  %add63 = add i64 %37, 184, !dbg !6103
  %conv64 = trunc i64 %add63 to i32, !dbg !6101
  call void @outl(i32 %35, i32 %conv64) #5, !dbg !6104
  %38 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !6105
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %38, i32 0, i32 1, !dbg !6106
  %39 = load i32, i32* %n, align 4, !dbg !6106
  store i32 %39, i32* %retval, align 4, !dbg !6107
  br label %return, !dbg !6107

return:                                           ; preds = %if.end61, %if.then9
  %40 = load i32, i32* %retval, align 4, !dbg !6108
  ret i32 %40, !dbg !6108
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @inl(i32 %port) #2 !dbg !6109 {
entry:
  %port.addr = alloca i32, align 4
  %value = alloca i32, align 4
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !6112, metadata !DIExpression()), !dbg !6113
  call void @llvm.dbg.declare(metadata i32* %value, metadata !6114, metadata !DIExpression()), !dbg !6113
  %0 = load i32, i32* %port.addr, align 4, !dbg !6113
  %1 = call i32 asm sideeffect "inl ${1:w}, $0", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #6, !dbg !6113, !srcloc !6115
  store i32 %1, i32* %value, align 4, !dbg !6113
  %2 = load i32, i32* %value, align 4, !dbg !6113
  ret i32 %2, !dbg !6113
}

; Function Attrs: noredzone
declare dso_local %struct.comedi_8254* @comedi_8254_init(i64, i32, i32, i32) #1

; Function Attrs: noredzone
declare dso_local void @comedi_8254_subdevice_init(%struct.comedi_subdevice*, %struct.comedi_8254*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @inb(i32 %port) #2 !dbg !6116 {
entry:
  %port.addr = alloca i32, align 4
  %value = alloca i8, align 1
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !6119, metadata !DIExpression()), !dbg !6120
  call void @llvm.dbg.declare(metadata i8* %value, metadata !6121, metadata !DIExpression()), !dbg !6120
  %0 = load i32, i32* %port.addr, align 4, !dbg !6120
  %1 = call i8 asm sideeffect "inb ${1:w}, ${0:b}", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #6, !dbg !6120, !srcloc !6122
  store i8 %1, i8* %value, align 1, !dbg !6120
  %2 = load i8, i8* %value, align 1, !dbg !6120
  ret i8 %2, !dbg !6120
}

; Function Attrs: noredzone
declare dso_local void @usleep_range(i64, i64) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outb(i8 zeroext %value, i32 %port) #2 !dbg !6123 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i32, align 4
  store i8 %value, i8* %value.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %value.addr, metadata !6126, metadata !DIExpression()), !dbg !6127
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !6128, metadata !DIExpression()), !dbg !6127
  %0 = load i8, i8* %value.addr, align 1, !dbg !6127
  %1 = load i32, i32* %port.addr, align 4, !dbg !6127
  call void asm sideeffect "outb ${0:b}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i8 %0, i32 %1) #6, !dbg !6127, !srcloc !6129
  ret void, !dbg !6127
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @me4000_ai_reset(%struct.comedi_device* %dev) #2 !dbg !6130 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %ctrl = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !6131, metadata !DIExpression()), !dbg !6132
  call void @llvm.dbg.declare(metadata i32* %ctrl, metadata !6133, metadata !DIExpression()), !dbg !6134
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6135
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 18, !dbg !6136
  %1 = load i64, i64* %iobase, align 8, !dbg !6136
  %add = add i64 %1, 116, !dbg !6137
  %conv = trunc i64 %add to i32, !dbg !6135
  %call = call i32 @inl(i32 %conv) #5, !dbg !6138
  store i32 %call, i32* %ctrl, align 4, !dbg !6139
  %2 = load i32, i32* %ctrl, align 4, !dbg !6140
  %conv1 = zext i32 %2 to i64, !dbg !6140
  %or = or i64 %conv1, 48, !dbg !6140
  %conv2 = trunc i64 %or to i32, !dbg !6140
  store i32 %conv2, i32* %ctrl, align 4, !dbg !6140
  %3 = load i32, i32* %ctrl, align 4, !dbg !6141
  %4 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6142
  %iobase3 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 18, !dbg !6143
  %5 = load i64, i64* %iobase3, align 8, !dbg !6143
  %add4 = add i64 %5, 116, !dbg !6144
  %conv5 = trunc i64 %add4 to i32, !dbg !6142
  call void @outl(i32 %3, i32 %conv5) #5, !dbg !6145
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6146
  %iobase6 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 18, !dbg !6147
  %7 = load i64, i64* %iobase6, align 8, !dbg !6147
  %add7 = add i64 %7, 116, !dbg !6148
  %conv8 = trunc i64 %add7 to i32, !dbg !6146
  call void @outl(i32 0, i32 %conv8) #5, !dbg !6149
  ret void, !dbg !6150
}

; Function Attrs: noredzone
declare dso_local i32 @request_threaded_irq(i32, i32 (i32, i8*)*, i32 (i32, i8*)*, i64, i8*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @me4000_ai_get_sample(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #2 !dbg !6151 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %val = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !6154, metadata !DIExpression()), !dbg !6155
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !6156, metadata !DIExpression()), !dbg !6157
  call void @llvm.dbg.declare(metadata i32* %val, metadata !6158, metadata !DIExpression()), !dbg !6159
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6160
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 18, !dbg !6161
  %1 = load i64, i64* %iobase, align 8, !dbg !6161
  %add = add i64 %1, 124, !dbg !6162
  %conv = trunc i64 %add to i32, !dbg !6160
  %call = call i32 @inl(i32 %conv) #5, !dbg !6163
  store i32 %call, i32* %val, align 4, !dbg !6164
  %2 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6165
  %3 = load i32, i32* %val, align 4, !dbg !6166
  %call1 = call i32 @comedi_offset_munge(%struct.comedi_subdevice* %2, i32 %3) #5, !dbg !6167
  ret i32 %call1, !dbg !6168
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i8*, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_offset_munge(%struct.comedi_subdevice* %s, i32 %val) #2 !dbg !6169 {
entry:
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %val.addr = alloca i32, align 4
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !6172, metadata !DIExpression()), !dbg !6173
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !6174, metadata !DIExpression()), !dbg !6175
  %0 = load i32, i32* %val.addr, align 4, !dbg !6176
  %1 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6177
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %1, i32 0, i32 13, !dbg !6178
  %2 = load i32, i32* %maxdata, align 8, !dbg !6178
  %xor = xor i32 %0, %2, !dbg !6179
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6180
  %maxdata1 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %3, i32 0, i32 13, !dbg !6181
  %4 = load i32, i32* %maxdata1, align 8, !dbg !6181
  %shr = lshr i32 %4, 1, !dbg !6182
  %xor2 = xor i32 %xor, %shr, !dbg !6183
  ret i32 %xor2, !dbg !6184
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @comedi_range_is_bipolar(%struct.comedi_subdevice* %s, i32 %range) #2 !dbg !6185 {
entry:
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %range.addr = alloca i32, align 4
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !6188, metadata !DIExpression()), !dbg !6189
  store i32 %range, i32* %range.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %range.addr, metadata !6190, metadata !DIExpression()), !dbg !6191
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6192
  %range_table = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 15, !dbg !6193
  %1 = load %struct.comedi_lrange*, %struct.comedi_lrange** %range_table, align 8, !dbg !6193
  %range1 = getelementptr inbounds %struct.comedi_lrange, %struct.comedi_lrange* %1, i32 0, i32 1, !dbg !6194
  %2 = load i32, i32* %range.addr, align 4, !dbg !6195
  %idxprom = zext i32 %2 to i64, !dbg !6192
  %arrayidx = getelementptr [0 x %struct.comedi_krange], [0 x %struct.comedi_krange]* %range1, i64 0, i64 %idxprom, !dbg !6192
  %min = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %arrayidx, i32 0, i32 0, !dbg !6196
  %3 = load i32, i32* %min, align 4, !dbg !6196
  %cmp = icmp slt i32 %3, 0, !dbg !6197
  ret i1 %cmp, !dbg !6198
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_timeout(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i64)*, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @me4000_ai_eoc(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i64 %context) #2 !dbg !6199 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %context.addr = alloca i64, align 8
  %status = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !6202, metadata !DIExpression()), !dbg !6203
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !6204, metadata !DIExpression()), !dbg !6205
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !6206, metadata !DIExpression()), !dbg !6207
  store i64 %context, i64* %context.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %context.addr, metadata !6208, metadata !DIExpression()), !dbg !6209
  call void @llvm.dbg.declare(metadata i32* %status, metadata !6210, metadata !DIExpression()), !dbg !6211
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6212
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 18, !dbg !6213
  %1 = load i64, i64* %iobase, align 8, !dbg !6213
  %add = add i64 %1, 116, !dbg !6214
  %conv = trunc i64 %add to i32, !dbg !6212
  %call = call i32 @inl(i32 %conv) #5, !dbg !6215
  store i32 %call, i32* %status, align 4, !dbg !6216
  %2 = load i32, i32* %status, align 4, !dbg !6217
  %conv1 = zext i32 %2 to i64, !dbg !6217
  %and = and i64 %conv1, 33554432, !dbg !6219
  %tobool = icmp ne i64 %and, 0, !dbg !6219
  br i1 %tobool, label %if.then, label %if.end, !dbg !6220

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6221
  br label %return, !dbg !6221

if.end:                                           ; preds = %entry
  store i32 -16, i32* %retval, align 4, !dbg !6222
  br label %return, !dbg !6222

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !6223
  ret i32 %3, !dbg !6223
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_src(i32* %src, i32 %flags) #2 !dbg !6224 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i32*, align 8
  %flags.addr = alloca i32, align 4
  %orig_src = alloca i32, align 4
  store i32* %src, i32** %src.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %src.addr, metadata !6227, metadata !DIExpression()), !dbg !6228
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6229, metadata !DIExpression()), !dbg !6230
  call void @llvm.dbg.declare(metadata i32* %orig_src, metadata !6231, metadata !DIExpression()), !dbg !6232
  %0 = load i32*, i32** %src.addr, align 8, !dbg !6233
  %1 = load i32, i32* %0, align 4, !dbg !6234
  store i32 %1, i32* %orig_src, align 4, !dbg !6232
  %2 = load i32, i32* %orig_src, align 4, !dbg !6235
  %3 = load i32, i32* %flags.addr, align 4, !dbg !6236
  %and = and i32 %2, %3, !dbg !6237
  %4 = load i32*, i32** %src.addr, align 8, !dbg !6238
  store i32 %and, i32* %4, align 4, !dbg !6239
  %5 = load i32*, i32** %src.addr, align 8, !dbg !6240
  %6 = load i32, i32* %5, align 4, !dbg !6242
  %cmp = icmp eq i32 %6, 0, !dbg !6243
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !6244

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32*, i32** %src.addr, align 8, !dbg !6245
  %8 = load i32, i32* %7, align 4, !dbg !6246
  %9 = load i32, i32* %orig_src, align 4, !dbg !6247
  %cmp1 = icmp ne i32 %8, %9, !dbg !6248
  br i1 %cmp1, label %if.then, label %if.end, !dbg !6249

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !6250
  br label %return, !dbg !6250

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %retval, align 4, !dbg !6251
  br label %return, !dbg !6251

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !6252
  ret i32 %10, !dbg !6252
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_is_unique(i32 %src) #2 !dbg !6253 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i32, align 4
  store i32 %src, i32* %src.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %src.addr, metadata !6255, metadata !DIExpression()), !dbg !6256
  %0 = load i32, i32* %src.addr, align 4, !dbg !6257
  %1 = load i32, i32* %src.addr, align 4, !dbg !6259
  %sub = sub i32 %1, 1, !dbg !6260
  %and = and i32 %0, %sub, !dbg !6261
  %cmp = icmp ne i32 %and, 0, !dbg !6262
  br i1 %cmp, label %if.then, label %if.end, !dbg !6263

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !6264
  br label %return, !dbg !6264

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6265
  br label %return, !dbg !6265

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !6266
  ret i32 %2, !dbg !6266
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_arg_is(i32* %arg, i32 %val) #2 !dbg !6267 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i32*, align 8
  %val.addr = alloca i32, align 4
  store i32* %arg, i32** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %arg.addr, metadata !6268, metadata !DIExpression()), !dbg !6269
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !6270, metadata !DIExpression()), !dbg !6271
  %0 = load i32*, i32** %arg.addr, align 8, !dbg !6272
  %1 = load i32, i32* %0, align 4, !dbg !6274
  %2 = load i32, i32* %val.addr, align 4, !dbg !6275
  %cmp = icmp ne i32 %1, %2, !dbg !6276
  br i1 %cmp, label %if.then, label %if.end, !dbg !6277

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %val.addr, align 4, !dbg !6278
  %4 = load i32*, i32** %arg.addr, align 8, !dbg !6280
  store i32 %3, i32* %4, align 4, !dbg !6281
  store i32 -22, i32* %retval, align 4, !dbg !6282
  br label %return, !dbg !6282

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6283
  br label %return, !dbg !6283

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !6284
  ret i32 %5, !dbg !6284
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @me4000_ai_round_cmd_args(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_cmd* %cmd) #2 !dbg !6285 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %cmd.addr = alloca %struct.comedi_cmd*, align 8
  %devpriv = alloca %struct.me4000_private*, align 8
  %rest = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !6288, metadata !DIExpression()), !dbg !6289
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !6290, metadata !DIExpression()), !dbg !6291
  store %struct.comedi_cmd* %cmd, %struct.comedi_cmd** %cmd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd.addr, metadata !6292, metadata !DIExpression()), !dbg !6293
  call void @llvm.dbg.declare(metadata %struct.me4000_private** %devpriv, metadata !6294, metadata !DIExpression()), !dbg !6295
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6296
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !6297
  %1 = load i8*, i8** %private, align 8, !dbg !6297
  %2 = bitcast i8* %1 to %struct.me4000_private*, !dbg !6296
  store %struct.me4000_private* %2, %struct.me4000_private** %devpriv, align 8, !dbg !6295
  call void @llvm.dbg.declare(metadata i32* %rest, metadata !6298, metadata !DIExpression()), !dbg !6299
  %3 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !6300
  %ai_init_ticks = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %3, i32 0, i32 2, !dbg !6301
  store i32 0, i32* %ai_init_ticks, align 4, !dbg !6302
  %4 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !6303
  %ai_scan_ticks = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %4, i32 0, i32 3, !dbg !6304
  store i32 0, i32* %ai_scan_ticks, align 8, !dbg !6305
  %5 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !6306
  %ai_chan_ticks = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %5, i32 0, i32 4, !dbg !6307
  store i32 0, i32* %ai_chan_ticks, align 4, !dbg !6308
  %6 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !6309
  %start_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %6, i32 0, i32 3, !dbg !6311
  %7 = load i32, i32* %start_arg, align 4, !dbg !6311
  %tobool = icmp ne i32 %7, 0, !dbg !6309
  br i1 %tobool, label %if.then, label %if.end20, !dbg !6312

if.then:                                          ; preds = %entry
  %8 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !6313
  %start_arg1 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %8, i32 0, i32 3, !dbg !6315
  %9 = load i32, i32* %start_arg1, align 4, !dbg !6315
  %mul = mul i32 %9, 33, !dbg !6316
  %div = udiv i32 %mul, 1000, !dbg !6317
  %10 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !6318
  %ai_init_ticks2 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %10, i32 0, i32 2, !dbg !6319
  store i32 %div, i32* %ai_init_ticks2, align 4, !dbg !6320
  %11 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !6321
  %start_arg3 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %11, i32 0, i32 3, !dbg !6322
  %12 = load i32, i32* %start_arg3, align 4, !dbg !6322
  %mul4 = mul i32 %12, 33, !dbg !6323
  %rem = urem i32 %mul4, 1000, !dbg !6324
  store i32 %rem, i32* %rest, align 4, !dbg !6325
  %13 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !6326
  %flags = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %13, i32 0, i32 1, !dbg !6328
  %14 = load i32, i32* %flags, align 4, !dbg !6328
  %and = and i32 %14, 196608, !dbg !6329
  %cmp = icmp eq i32 %and, 0, !dbg !6330
  br i1 %cmp, label %if.then5, label %if.else, !dbg !6331

if.then5:                                         ; preds = %if.then
  %15 = load i32, i32* %rest, align 4, !dbg !6332
  %cmp6 = icmp sgt i32 %15, 33, !dbg !6335
  br i1 %cmp6, label %if.then7, label %if.end, !dbg !6336

if.then7:                                         ; preds = %if.then5
  %16 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !6337
  %ai_init_ticks8 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %16, i32 0, i32 2, !dbg !6338
  %17 = load i32, i32* %ai_init_ticks8, align 4, !dbg !6339
  %inc = add i32 %17, 1, !dbg !6339
  store i32 %inc, i32* %ai_init_ticks8, align 4, !dbg !6339
  br label %if.end, !dbg !6337

if.end:                                           ; preds = %if.then7, %if.then5
  br label %if.end19, !dbg !6340

if.else:                                          ; preds = %if.then
  %18 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !6341
  %flags9 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %18, i32 0, i32 1, !dbg !6343
  %19 = load i32, i32* %flags9, align 4, !dbg !6343
  %and10 = and i32 %19, 196608, !dbg !6344
  %cmp11 = icmp eq i32 %and10, 131072, !dbg !6345
  br i1 %cmp11, label %if.then12, label %if.end18, !dbg !6346

if.then12:                                        ; preds = %if.else
  %20 = load i32, i32* %rest, align 4, !dbg !6347
  %tobool13 = icmp ne i32 %20, 0, !dbg !6347
  br i1 %tobool13, label %if.then14, label %if.end17, !dbg !6350

if.then14:                                        ; preds = %if.then12
  %21 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !6351
  %ai_init_ticks15 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %21, i32 0, i32 2, !dbg !6352
  %22 = load i32, i32* %ai_init_ticks15, align 4, !dbg !6353
  %inc16 = add i32 %22, 1, !dbg !6353
  store i32 %inc16, i32* %ai_init_ticks15, align 4, !dbg !6353
  br label %if.end17, !dbg !6351

if.end17:                                         ; preds = %if.then14, %if.then12
  br label %if.end18, !dbg !6354

if.end18:                                         ; preds = %if.end17, %if.else
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end
  br label %if.end20, !dbg !6355

if.end20:                                         ; preds = %if.end19, %entry
  %23 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !6356
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %23, i32 0, i32 5, !dbg !6358
  %24 = load i32, i32* %scan_begin_arg, align 4, !dbg !6358
  %tobool21 = icmp ne i32 %24, 0, !dbg !6356
  br i1 %tobool21, label %if.then22, label %if.end51, !dbg !6359

if.then22:                                        ; preds = %if.end20
  %25 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !6360
  %scan_begin_arg23 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %25, i32 0, i32 5, !dbg !6362
  %26 = load i32, i32* %scan_begin_arg23, align 4, !dbg !6362
  %mul24 = mul i32 %26, 33, !dbg !6363
  %div25 = udiv i32 %mul24, 1000, !dbg !6364
  %27 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !6365
  %ai_scan_ticks26 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %27, i32 0, i32 3, !dbg !6366
  store i32 %div25, i32* %ai_scan_ticks26, align 8, !dbg !6367
  %28 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !6368
  %scan_begin_arg27 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %28, i32 0, i32 5, !dbg !6369
  %29 = load i32, i32* %scan_begin_arg27, align 4, !dbg !6369
  %mul28 = mul i32 %29, 33, !dbg !6370
  %rem29 = urem i32 %mul28, 1000, !dbg !6371
  store i32 %rem29, i32* %rest, align 4, !dbg !6372
  %30 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !6373
  %flags30 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %30, i32 0, i32 1, !dbg !6375
  %31 = load i32, i32* %flags30, align 4, !dbg !6375
  %and31 = and i32 %31, 196608, !dbg !6376
  %cmp32 = icmp eq i32 %and31, 0, !dbg !6377
  br i1 %cmp32, label %if.then33, label %if.else39, !dbg !6378

if.then33:                                        ; preds = %if.then22
  %32 = load i32, i32* %rest, align 4, !dbg !6379
  %cmp34 = icmp sgt i32 %32, 33, !dbg !6382
  br i1 %cmp34, label %if.then35, label %if.end38, !dbg !6383

if.then35:                                        ; preds = %if.then33
  %33 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !6384
  %ai_scan_ticks36 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %33, i32 0, i32 3, !dbg !6385
  %34 = load i32, i32* %ai_scan_ticks36, align 8, !dbg !6386
  %inc37 = add i32 %34, 1, !dbg !6386
  store i32 %inc37, i32* %ai_scan_ticks36, align 8, !dbg !6386
  br label %if.end38, !dbg !6384

if.end38:                                         ; preds = %if.then35, %if.then33
  br label %if.end50, !dbg !6387

if.else39:                                        ; preds = %if.then22
  %35 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !6388
  %flags40 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %35, i32 0, i32 1, !dbg !6390
  %36 = load i32, i32* %flags40, align 4, !dbg !6390
  %and41 = and i32 %36, 196608, !dbg !6391
  %cmp42 = icmp eq i32 %and41, 131072, !dbg !6392
  br i1 %cmp42, label %if.then43, label %if.end49, !dbg !6393

if.then43:                                        ; preds = %if.else39
  %37 = load i32, i32* %rest, align 4, !dbg !6394
  %tobool44 = icmp ne i32 %37, 0, !dbg !6394
  br i1 %tobool44, label %if.then45, label %if.end48, !dbg !6397

if.then45:                                        ; preds = %if.then43
  %38 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !6398
  %ai_scan_ticks46 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %38, i32 0, i32 3, !dbg !6399
  %39 = load i32, i32* %ai_scan_ticks46, align 8, !dbg !6400
  %inc47 = add i32 %39, 1, !dbg !6400
  store i32 %inc47, i32* %ai_scan_ticks46, align 8, !dbg !6400
  br label %if.end48, !dbg !6398

if.end48:                                         ; preds = %if.then45, %if.then43
  br label %if.end49, !dbg !6401

if.end49:                                         ; preds = %if.end48, %if.else39
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.end38
  br label %if.end51, !dbg !6402

if.end51:                                         ; preds = %if.end50, %if.end20
  %40 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !6403
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %40, i32 0, i32 7, !dbg !6405
  %41 = load i32, i32* %convert_arg, align 4, !dbg !6405
  %tobool52 = icmp ne i32 %41, 0, !dbg !6403
  br i1 %tobool52, label %if.then53, label %if.end82, !dbg !6406

if.then53:                                        ; preds = %if.end51
  %42 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !6407
  %convert_arg54 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %42, i32 0, i32 7, !dbg !6409
  %43 = load i32, i32* %convert_arg54, align 4, !dbg !6409
  %mul55 = mul i32 %43, 33, !dbg !6410
  %div56 = udiv i32 %mul55, 1000, !dbg !6411
  %44 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !6412
  %ai_chan_ticks57 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %44, i32 0, i32 4, !dbg !6413
  store i32 %div56, i32* %ai_chan_ticks57, align 4, !dbg !6414
  %45 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !6415
  %convert_arg58 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %45, i32 0, i32 7, !dbg !6416
  %46 = load i32, i32* %convert_arg58, align 4, !dbg !6416
  %mul59 = mul i32 %46, 33, !dbg !6417
  %rem60 = urem i32 %mul59, 1000, !dbg !6418
  store i32 %rem60, i32* %rest, align 4, !dbg !6419
  %47 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !6420
  %flags61 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %47, i32 0, i32 1, !dbg !6422
  %48 = load i32, i32* %flags61, align 4, !dbg !6422
  %and62 = and i32 %48, 196608, !dbg !6423
  %cmp63 = icmp eq i32 %and62, 0, !dbg !6424
  br i1 %cmp63, label %if.then64, label %if.else70, !dbg !6425

if.then64:                                        ; preds = %if.then53
  %49 = load i32, i32* %rest, align 4, !dbg !6426
  %cmp65 = icmp sgt i32 %49, 33, !dbg !6429
  br i1 %cmp65, label %if.then66, label %if.end69, !dbg !6430

if.then66:                                        ; preds = %if.then64
  %50 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !6431
  %ai_chan_ticks67 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %50, i32 0, i32 4, !dbg !6432
  %51 = load i32, i32* %ai_chan_ticks67, align 4, !dbg !6433
  %inc68 = add i32 %51, 1, !dbg !6433
  store i32 %inc68, i32* %ai_chan_ticks67, align 4, !dbg !6433
  br label %if.end69, !dbg !6431

if.end69:                                         ; preds = %if.then66, %if.then64
  br label %if.end81, !dbg !6434

if.else70:                                        ; preds = %if.then53
  %52 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !6435
  %flags71 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %52, i32 0, i32 1, !dbg !6437
  %53 = load i32, i32* %flags71, align 4, !dbg !6437
  %and72 = and i32 %53, 196608, !dbg !6438
  %cmp73 = icmp eq i32 %and72, 131072, !dbg !6439
  br i1 %cmp73, label %if.then74, label %if.end80, !dbg !6440

if.then74:                                        ; preds = %if.else70
  %54 = load i32, i32* %rest, align 4, !dbg !6441
  %tobool75 = icmp ne i32 %54, 0, !dbg !6441
  br i1 %tobool75, label %if.then76, label %if.end79, !dbg !6444

if.then76:                                        ; preds = %if.then74
  %55 = load %struct.me4000_private*, %struct.me4000_private** %devpriv, align 8, !dbg !6445
  %ai_chan_ticks77 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %55, i32 0, i32 4, !dbg !6446
  %56 = load i32, i32* %ai_chan_ticks77, align 4, !dbg !6447
  %inc78 = add i32 %56, 1, !dbg !6447
  store i32 %inc78, i32* %ai_chan_ticks77, align 4, !dbg !6447
  br label %if.end79, !dbg !6445

if.end79:                                         ; preds = %if.then76, %if.then74
  br label %if.end80, !dbg !6448

if.end80:                                         ; preds = %if.end79, %if.else70
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.end69
  br label %if.end82, !dbg !6449

if.end82:                                         ; preds = %if.end81, %if.end51
  ret void, !dbg !6450
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_arg_min(i32* %arg, i32 %val) #2 !dbg !6451 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i32*, align 8
  %val.addr = alloca i32, align 4
  store i32* %arg, i32** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %arg.addr, metadata !6452, metadata !DIExpression()), !dbg !6453
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !6454, metadata !DIExpression()), !dbg !6455
  %0 = load i32*, i32** %arg.addr, align 8, !dbg !6456
  %1 = load i32, i32* %0, align 4, !dbg !6458
  %2 = load i32, i32* %val.addr, align 4, !dbg !6459
  %cmp = icmp ult i32 %1, %2, !dbg !6460
  br i1 %cmp, label %if.then, label %if.end, !dbg !6461

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %val.addr, align 4, !dbg !6462
  %4 = load i32*, i32** %arg.addr, align 8, !dbg !6464
  store i32 %3, i32* %4, align 4, !dbg !6465
  store i32 -22, i32* %retval, align 4, !dbg !6466
  br label %return, !dbg !6466

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6467
  br label %return, !dbg !6467

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !6468
  ret i32 %5, !dbg !6468
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @me4000_ai_check_chanlist(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_cmd* %cmd) #2 !dbg !6469 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %cmd.addr = alloca %struct.comedi_cmd*, align 8
  %aref0 = alloca i32, align 4
  %i = alloca i32, align 4
  %chan = alloca i32, align 4
  %range = alloca i32, align 4
  %aref = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !6470, metadata !DIExpression()), !dbg !6471
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !6472, metadata !DIExpression()), !dbg !6473
  store %struct.comedi_cmd* %cmd, %struct.comedi_cmd** %cmd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd.addr, metadata !6474, metadata !DIExpression()), !dbg !6475
  call void @llvm.dbg.declare(metadata i32* %aref0, metadata !6476, metadata !DIExpression()), !dbg !6477
  %0 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !6478
  %chanlist = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %0, i32 0, i32 12, !dbg !6478
  %1 = load i32*, i32** %chanlist, align 8, !dbg !6478
  %arrayidx = getelementptr i32, i32* %1, i64 0, !dbg !6478
  %2 = load i32, i32* %arrayidx, align 4, !dbg !6478
  %shr = lshr i32 %2, 24, !dbg !6478
  %and = and i32 %shr, 3, !dbg !6478
  store i32 %and, i32* %aref0, align 4, !dbg !6477
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6479, metadata !DIExpression()), !dbg !6480
  store i32 0, i32* %i, align 4, !dbg !6481
  br label %for.cond, !dbg !6483

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !dbg !6484
  %4 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !6486
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %4, i32 0, i32 13, !dbg !6487
  %5 = load i32, i32* %chanlist_len, align 8, !dbg !6487
  %cmp = icmp ult i32 %3, %5, !dbg !6488
  br i1 %cmp, label %for.body, label %for.end, !dbg !6489

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !6490, metadata !DIExpression()), !dbg !6492
  %6 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !6493
  %chanlist1 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %6, i32 0, i32 12, !dbg !6493
  %7 = load i32*, i32** %chanlist1, align 8, !dbg !6493
  %8 = load i32, i32* %i, align 4, !dbg !6493
  %idxprom = sext i32 %8 to i64, !dbg !6493
  %arrayidx2 = getelementptr i32, i32* %7, i64 %idxprom, !dbg !6493
  %9 = load i32, i32* %arrayidx2, align 4, !dbg !6493
  %and3 = and i32 %9, 65535, !dbg !6493
  store i32 %and3, i32* %chan, align 4, !dbg !6492
  call void @llvm.dbg.declare(metadata i32* %range, metadata !6494, metadata !DIExpression()), !dbg !6495
  %10 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !6496
  %chanlist4 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %10, i32 0, i32 12, !dbg !6496
  %11 = load i32*, i32** %chanlist4, align 8, !dbg !6496
  %12 = load i32, i32* %i, align 4, !dbg !6496
  %idxprom5 = sext i32 %12 to i64, !dbg !6496
  %arrayidx6 = getelementptr i32, i32* %11, i64 %idxprom5, !dbg !6496
  %13 = load i32, i32* %arrayidx6, align 4, !dbg !6496
  %shr7 = lshr i32 %13, 16, !dbg !6496
  %and8 = and i32 %shr7, 255, !dbg !6496
  store i32 %and8, i32* %range, align 4, !dbg !6495
  call void @llvm.dbg.declare(metadata i32* %aref, metadata !6497, metadata !DIExpression()), !dbg !6498
  %14 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !6499
  %chanlist9 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %14, i32 0, i32 12, !dbg !6499
  %15 = load i32*, i32** %chanlist9, align 8, !dbg !6499
  %16 = load i32, i32* %i, align 4, !dbg !6499
  %idxprom10 = sext i32 %16 to i64, !dbg !6499
  %arrayidx11 = getelementptr i32, i32* %15, i64 %idxprom10, !dbg !6499
  %17 = load i32, i32* %arrayidx11, align 4, !dbg !6499
  %shr12 = lshr i32 %17, 24, !dbg !6499
  %and13 = and i32 %shr12, 3, !dbg !6499
  store i32 %and13, i32* %aref, align 4, !dbg !6498
  %18 = load i32, i32* %aref, align 4, !dbg !6500
  %19 = load i32, i32* %aref0, align 4, !dbg !6502
  %cmp14 = icmp ne i32 %18, %19, !dbg !6503
  br i1 %cmp14, label %if.then, label %if.end, !dbg !6504

if.then:                                          ; preds = %for.body
  store i32 -22, i32* %retval, align 4, !dbg !6505
  br label %return, !dbg !6505

if.end:                                           ; preds = %for.body
  %20 = load i32, i32* %aref, align 4, !dbg !6507
  %cmp15 = icmp eq i32 %20, 2, !dbg !6509
  br i1 %cmp15, label %if.then16, label %if.end25, !dbg !6510

if.then16:                                        ; preds = %if.end
  %21 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6511
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %21, i32 0, i32 4, !dbg !6514
  %22 = load i32, i32* %subdev_flags, align 4, !dbg !6514
  %and17 = and i32 %22, 4194304, !dbg !6515
  %tobool = icmp ne i32 %and17, 0, !dbg !6515
  br i1 %tobool, label %if.end19, label %if.then18, !dbg !6516

if.then18:                                        ; preds = %if.then16
  %23 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6517
  %class_dev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %23, i32 0, i32 4, !dbg !6517
  %24 = load %struct.device*, %struct.device** %class_dev, align 8, !dbg !6517
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %24, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i64 0, i64 0)) #7, !dbg !6517
  store i32 -22, i32* %retval, align 4, !dbg !6519
  br label %return, !dbg !6519

if.end19:                                         ; preds = %if.then16
  %25 = load i32, i32* %chan, align 4, !dbg !6520
  %26 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6522
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %26, i32 0, i32 3, !dbg !6523
  %27 = load i32, i32* %n_chan, align 8, !dbg !6523
  %div = sdiv i32 %27, 2, !dbg !6524
  %cmp20 = icmp uge i32 %25, %div, !dbg !6525
  br i1 %cmp20, label %if.then21, label %if.end22, !dbg !6526

if.then21:                                        ; preds = %if.end19
  store i32 -22, i32* %retval, align 4, !dbg !6527
  br label %return, !dbg !6527

if.end22:                                         ; preds = %if.end19
  %28 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6529
  %29 = load i32, i32* %range, align 4, !dbg !6531
  %call = call zeroext i1 @comedi_range_is_bipolar(%struct.comedi_subdevice* %28, i32 %29) #5, !dbg !6532
  br i1 %call, label %if.end24, label %if.then23, !dbg !6533

if.then23:                                        ; preds = %if.end22
  store i32 -22, i32* %retval, align 4, !dbg !6534
  br label %return, !dbg !6534

if.end24:                                         ; preds = %if.end22
  br label %if.end25, !dbg !6536

if.end25:                                         ; preds = %if.end24, %if.end
  br label %for.inc, !dbg !6537

for.inc:                                          ; preds = %if.end25
  %30 = load i32, i32* %i, align 4, !dbg !6538
  %inc = add i32 %30, 1, !dbg !6538
  store i32 %inc, i32* %i, align 4, !dbg !6538
  br label %for.cond, !dbg !6539, !llvm.loop !6540

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !6542
  br label %return, !dbg !6542

return:                                           ; preds = %for.end, %if.then23, %if.then21, %if.then18, %if.then
  %31 = load i32, i32* %retval, align 4, !dbg !6543
  ret i32 %31, !dbg !6543
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @me4000_ai_write_chanlist(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_cmd* %cmd) #2 !dbg !6544 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %cmd.addr = alloca %struct.comedi_cmd*, align 8
  %i = alloca i32, align 4
  %chan = alloca i32, align 4
  %range = alloca i32, align 4
  %aref = alloca i32, align 4
  %entry10 = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !6545, metadata !DIExpression()), !dbg !6546
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !6547, metadata !DIExpression()), !dbg !6548
  store %struct.comedi_cmd* %cmd, %struct.comedi_cmd** %cmd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd.addr, metadata !6549, metadata !DIExpression()), !dbg !6550
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6551, metadata !DIExpression()), !dbg !6552
  store i32 0, i32* %i, align 4, !dbg !6553
  br label %for.cond, !dbg !6555

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !6556
  %1 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !6558
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %1, i32 0, i32 13, !dbg !6559
  %2 = load i32, i32* %chanlist_len, align 8, !dbg !6559
  %cmp = icmp ult i32 %0, %2, !dbg !6560
  br i1 %cmp, label %for.body, label %for.end, !dbg !6561

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !6562, metadata !DIExpression()), !dbg !6564
  %3 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !6565
  %chanlist = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %3, i32 0, i32 12, !dbg !6565
  %4 = load i32*, i32** %chanlist, align 8, !dbg !6565
  %5 = load i32, i32* %i, align 4, !dbg !6565
  %idxprom = sext i32 %5 to i64, !dbg !6565
  %arrayidx = getelementptr i32, i32* %4, i64 %idxprom, !dbg !6565
  %6 = load i32, i32* %arrayidx, align 4, !dbg !6565
  %and = and i32 %6, 65535, !dbg !6565
  store i32 %and, i32* %chan, align 4, !dbg !6564
  call void @llvm.dbg.declare(metadata i32* %range, metadata !6566, metadata !DIExpression()), !dbg !6567
  %7 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !6568
  %chanlist1 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %7, i32 0, i32 12, !dbg !6568
  %8 = load i32*, i32** %chanlist1, align 8, !dbg !6568
  %9 = load i32, i32* %i, align 4, !dbg !6568
  %idxprom2 = sext i32 %9 to i64, !dbg !6568
  %arrayidx3 = getelementptr i32, i32* %8, i64 %idxprom2, !dbg !6568
  %10 = load i32, i32* %arrayidx3, align 4, !dbg !6568
  %shr = lshr i32 %10, 16, !dbg !6568
  %and4 = and i32 %shr, 255, !dbg !6568
  store i32 %and4, i32* %range, align 4, !dbg !6567
  call void @llvm.dbg.declare(metadata i32* %aref, metadata !6569, metadata !DIExpression()), !dbg !6570
  %11 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !6571
  %chanlist5 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %11, i32 0, i32 12, !dbg !6571
  %12 = load i32*, i32** %chanlist5, align 8, !dbg !6571
  %13 = load i32, i32* %i, align 4, !dbg !6571
  %idxprom6 = sext i32 %13 to i64, !dbg !6571
  %arrayidx7 = getelementptr i32, i32* %12, i64 %idxprom6, !dbg !6571
  %14 = load i32, i32* %arrayidx7, align 4, !dbg !6571
  %shr8 = lshr i32 %14, 24, !dbg !6571
  %and9 = and i32 %shr8, 3, !dbg !6571
  store i32 %and9, i32* %aref, align 4, !dbg !6570
  call void @llvm.dbg.declare(metadata i32* %entry10, metadata !6572, metadata !DIExpression()), !dbg !6573
  %15 = load i32, i32* %chan, align 4, !dbg !6574
  %16 = load i32, i32* %range, align 4, !dbg !6575
  %and11 = and i32 %16, 3, !dbg !6575
  %sub = sub i32 3, %and11, !dbg !6575
  %shl = shl i32 %sub, 6, !dbg !6575
  %or = or i32 %15, %shl, !dbg !6576
  store i32 %or, i32* %entry10, align 4, !dbg !6577
  %17 = load i32, i32* %aref, align 4, !dbg !6578
  %cmp12 = icmp eq i32 %17, 2, !dbg !6580
  br i1 %cmp12, label %if.then, label %if.end, !dbg !6581

if.then:                                          ; preds = %for.body
  %18 = load i32, i32* %entry10, align 4, !dbg !6582
  %conv = zext i32 %18 to i64, !dbg !6582
  %or13 = or i64 %conv, 32, !dbg !6582
  %conv14 = trunc i64 %or13 to i32, !dbg !6582
  store i32 %conv14, i32* %entry10, align 4, !dbg !6582
  br label %if.end, !dbg !6583

if.end:                                           ; preds = %if.then, %for.body
  %19 = load i32, i32* %i, align 4, !dbg !6584
  %20 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !6586
  %chanlist_len15 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %20, i32 0, i32 13, !dbg !6587
  %21 = load i32, i32* %chanlist_len15, align 8, !dbg !6587
  %sub16 = sub i32 %21, 1, !dbg !6588
  %cmp17 = icmp eq i32 %19, %sub16, !dbg !6589
  br i1 %cmp17, label %if.then19, label %if.end23, !dbg !6590

if.then19:                                        ; preds = %if.end
  %22 = load i32, i32* %entry10, align 4, !dbg !6591
  %conv20 = zext i32 %22 to i64, !dbg !6591
  %or21 = or i64 %conv20, 256, !dbg !6591
  %conv22 = trunc i64 %or21 to i32, !dbg !6591
  store i32 %conv22, i32* %entry10, align 4, !dbg !6591
  br label %if.end23, !dbg !6592

if.end23:                                         ; preds = %if.then19, %if.end
  %23 = load i32, i32* %entry10, align 4, !dbg !6593
  %24 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6594
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %24, i32 0, i32 18, !dbg !6595
  %25 = load i64, i64* %iobase, align 8, !dbg !6595
  %add = add i64 %25, 120, !dbg !6596
  %conv24 = trunc i64 %add to i32, !dbg !6594
  call void @outl(i32 %23, i32 %conv24) #5, !dbg !6597
  br label %for.inc, !dbg !6598

for.inc:                                          ; preds = %if.end23
  %26 = load i32, i32* %i, align 4, !dbg !6599
  %inc = add i32 %26, 1, !dbg !6599
  store i32 %inc, i32* %i, align 4, !dbg !6599
  br label %for.cond, !dbg !6600, !llvm.loop !6601

for.end:                                          ; preds = %for.cond
  ret void, !dbg !6603
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_dio_update_state(%struct.comedi_subdevice*, i32*) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_dio_insn_config(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @me4000_pci_probe(%struct.pci_dev* %dev, %struct.pci_device_id* %id) #2 !dbg !6604 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %id.addr = alloca %struct.pci_device_id*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !6605, metadata !DIExpression()), !dbg !6606
  store %struct.pci_device_id* %id, %struct.pci_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_device_id** %id.addr, metadata !6607, metadata !DIExpression()), !dbg !6608
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !6609
  %1 = load %struct.pci_device_id*, %struct.pci_device_id** %id.addr, align 8, !dbg !6610
  %driver_data = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %1, i32 0, i32 6, !dbg !6611
  %2 = load i64, i64* %driver_data, align 8, !dbg !6611
  %call = call i32 @comedi_pci_auto_config(%struct.pci_dev* %0, %struct.comedi_driver* @me4000_driver, i64 %2) #5, !dbg !6612
  ret i32 %call, !dbg !6613
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
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_me4000_driver_init234", scope: !2, file: !3, line: 1273, type: !199, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !133, globals: !135, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/staging/comedi/drivers/me4000.c", directory: "/home/lizy2001/genbc/linux")
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
!133 = !{!134, !7}
!134 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!135 = !{!0, !136, !143, !150, !155, !160, !165, !170, !4008, !4024, !4026, !4307}
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(name: "__exitcall_me4000_driver_exit", scope: !2, file: !3, line: 1273, type: !138, isLocal: true, isDefinition: true)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !139, line: 117, baseType: !140)
!139 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{null}
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author235", scope: !2, file: !3, line: 1275, type: !145, isLocal: true, isDefinition: true, align: 8)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 352, elements: !148)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!147 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!148 = !{!149}
!149 = !DISubrange(count: 44)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description236", scope: !2, file: !3, line: 1276, type: !152, isLocal: true, isDefinition: true, align: 8)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 544, elements: !153)
!153 = !{!154}
!154 = !DISubrange(count: 68)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file237", scope: !2, file: !3, line: 1277, type: !157, isLocal: true, isDefinition: true, align: 8)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 400, elements: !158)
!158 = !{!159}
!159 = !DISubrange(count: 50)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license238", scope: !2, file: !3, line: 1277, type: !162, isLocal: true, isDefinition: true, align: 8)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 152, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 19)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_firmware239", scope: !2, file: !3, line: 1278, type: !167, isLocal: true, isDefinition: true, align: 8)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 288, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 36)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "me4000_driver", scope: !2, file: !3, line: 1236, type: !172, isLocal: true, isDefinition: true)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_driver", file: !123, line: 437, size: 576, elements: !173)
!173 = !{!174, !176, !178, !182, !3998, !3999, !4003, !4004, !4007}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !172, file: !123, line: 439, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !172, file: !123, line: 441, baseType: !177, size: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !172, file: !123, line: 442, baseType: !179, size: 64, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !181, line: 76, flags: DIFlagFwdDecl)
!181 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!182 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !172, file: !123, line: 443, baseType: !183, size: 64, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!134, !186, !3991}
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_device", file: !123, line: 541, size: 1920, elements: !188)
!188 = !{!189, !190, !191, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3979, !3983, !3987}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !187, file: !123, line: 542, baseType: !134, size: 32)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !187, file: !123, line: 543, baseType: !175, size: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "pacer", scope: !187, file: !123, line: 544, baseType: !192, size: 64, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_8254", file: !194, line: 78, size: 704, elements: !195)
!194 = !DIFile(filename: "drivers/staging/comedi/drivers/comedi_8254.h", directory: "/home/lizy2001/genbc/linux")
!195 = !{!196, !198, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !213, !214, !219}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "iobase", scope: !193, file: !194, line: 79, baseType: !197, size: 64)
!197 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "mmio", scope: !193, file: !194, line: 80, baseType: !199, size: 64, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "iosize", scope: !193, file: !194, line: 81, baseType: !7, size: 32, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "regshift", scope: !193, file: !194, line: 82, baseType: !7, size: 32, offset: 160)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "osc_base", scope: !193, file: !194, line: 83, baseType: !7, size: 32, offset: 192)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "divisor", scope: !193, file: !194, line: 84, baseType: !7, size: 32, offset: 224)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "divisor1", scope: !193, file: !194, line: 85, baseType: !7, size: 32, offset: 256)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "divisor2", scope: !193, file: !194, line: 86, baseType: !7, size: 32, offset: 288)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "next_div", scope: !193, file: !194, line: 87, baseType: !7, size: 32, offset: 320)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "next_div1", scope: !193, file: !194, line: 88, baseType: !7, size: 32, offset: 352)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "next_div2", scope: !193, file: !194, line: 89, baseType: !7, size: 32, offset: 384)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "clock_src", scope: !193, file: !194, line: 90, baseType: !210, size: 96, offset: 416)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 96, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 3)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "gate_src", scope: !193, file: !194, line: 91, baseType: !210, size: 96, offset: 512)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !193, file: !194, line: 92, baseType: !215, size: 24, offset: 608)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 24, elements: !211)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !217, line: 30, baseType: !218)
!217 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!218 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "insn_config", scope: !193, file: !194, line: 94, baseType: !220, size: 64, offset: 640)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!134, !186, !223, !3944, !2710}
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_subdevice", file: !123, line: 153, size: 1792, elements: !225)
!225 = !{!226, !227, !228, !229, !230, !231, !232, !233, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3902, !3915, !3918, !3919, !3920, !3921, !3922, !3923, !3927, !3932, !3933, !3934, !3935, !3939, !3940, !3941, !3942, !3943}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !224, file: !123, line: 154, baseType: !186, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !224, file: !123, line: 155, baseType: !134, size: 32, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !224, file: !123, line: 156, baseType: !134, size: 32, offset: 96)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "n_chan", scope: !224, file: !123, line: 157, baseType: !134, size: 32, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "subdev_flags", scope: !224, file: !123, line: 158, baseType: !134, size: 32, offset: 160)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "len_chanlist", scope: !224, file: !123, line: 159, baseType: !134, size: 32, offset: 192)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !224, file: !123, line: 161, baseType: !199, size: 64, offset: 256)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "async", scope: !224, file: !123, line: 163, baseType: !234, size: 64, offset: 320)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_async", file: !123, line: 347, size: 1536, elements: !236)
!236 = !{!237, !238, !239, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3888, !3889, !3890}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !235, file: !123, line: 348, baseType: !199, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_bufsz", scope: !235, file: !123, line: 349, baseType: !7, size: 32, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "buf_map", scope: !235, file: !123, line: 350, baseType: !240, size: 64, offset: 128)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_map", file: !123, line: 249, size: 256, elements: !242)
!242 = !{!243, !3845, !3851, !3852, !3853}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "dma_hw_dev", scope: !241, file: !123, line: 250, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !246)
!246 = !{!247, !3399, !3400, !3403, !3404, !3455, !3546, !3547, !3548, !3549, !3550, !3559, !3664, !3677, !3680, !3681, !3685, !3687, !3688, !3689, !3693, !3699, !3700, !3703, !3707, !3797, !3798, !3799, !3800, !3801, !3833, !3834, !3835, !3838, !3841, !3842, !3843, !3844}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !245, file: !73, line: 462, baseType: !248, size: 512)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !249, line: 64, size: 512, elements: !250)
!249 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!250 = !{!251, !252, !258, !260, !318, !3250, !3389, !3394, !3395, !3396, !3397, !3398}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !248, file: !249, line: 65, baseType: !177, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !248, file: !249, line: 66, baseType: !253, size: 128, offset: 64)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !217, line: 178, size: 128, elements: !254)
!254 = !{!255, !257}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !253, file: !217, line: 179, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !253, file: !217, line: 179, baseType: !256, size: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !248, file: !249, line: 67, baseType: !259, size: 64, offset: 192)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !248, file: !249, line: 68, baseType: !261, size: 64, offset: 256)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !249, line: 192, size: 704, elements: !263)
!263 = !{!264, !265, !281, !282}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !262, file: !249, line: 193, baseType: !253, size: 128)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !262, file: !249, line: 194, baseType: !266, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !267, line: 83, baseType: !268)
!267 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !267, line: 71, elements: !269)
!269 = !{!270}
!270 = !DIDerivedType(tag: DW_TAG_member, scope: !268, file: !267, line: 72, baseType: !271)
!271 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !268, file: !267, line: 72, elements: !272)
!272 = !{!273}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !271, file: !267, line: 73, baseType: !274)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !267, line: 20, elements: !275)
!275 = !{!276}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !274, file: !267, line: 21, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !278, line: 25, baseType: !279)
!278 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !278, line: 25, elements: !280)
!280 = !{}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !262, file: !249, line: 195, baseType: !248, size: 512, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !262, file: !249, line: 196, baseType: !283, size: 64, offset: 640)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !249, line: 156, size: 192, elements: !286)
!286 = !{!287, !292, !297}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !285, file: !249, line: 157, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{!134, !261, !259}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !285, file: !249, line: 158, baseType: !293, size: 64, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!177, !261, !259}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !285, file: !249, line: 159, baseType: !298, size: 64, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{!134, !261, !259, !302}
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !249, line: 148, size: 20736, elements: !304)
!304 = !{!305, !308, !312, !313, !317}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !303, file: !249, line: 149, baseType: !306, size: 192)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 192, elements: !211)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !303, file: !249, line: 150, baseType: !309, size: 4096, offset: 192)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 4096, elements: !310)
!310 = !{!311}
!311 = !DISubrange(count: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !303, file: !249, line: 151, baseType: !134, size: 32, offset: 4288)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !303, file: !249, line: 152, baseType: !314, size: 16384, offset: 4320)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 16384, elements: !315)
!315 = !{!316}
!316 = !DISubrange(count: 2048)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !303, file: !249, line: 153, baseType: !134, size: 32, offset: 20704)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !248, file: !249, line: 69, baseType: !319, size: 64, offset: 320)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !249, line: 138, size: 448, elements: !321)
!321 = !{!322, !326, !355, !357, !3212, !3240, !3244}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !320, file: !249, line: 139, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{null, !259}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !320, file: !249, line: 140, baseType: !327, size: 64, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !329)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !330, line: 230, size: 128, elements: !331)
!330 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!331 = !{!332, !348}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !329, file: !330, line: 231, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{!336, !259, !341, !307}
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !217, line: 60, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !338, line: 73, baseType: !339)
!338 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !338, line: 15, baseType: !340)
!340 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !330, line: 30, size: 128, elements: !343)
!343 = !{!344, !345}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !342, file: !330, line: 31, baseType: !177, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !342, file: !330, line: 32, baseType: !346, size: 16, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !217, line: 19, baseType: !347)
!347 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !329, file: !330, line: 232, baseType: !349, size: 64, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{!336, !259, !341, !177, !352}
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !217, line: 55, baseType: !353)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !338, line: 72, baseType: !354)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !338, line: 16, baseType: !197)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !320, file: !249, line: 141, baseType: !356, size: 64, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !320, file: !249, line: 142, baseType: !358, size: 64, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !330, line: 84, size: 320, elements: !362)
!362 = !{!363, !364, !368, !3209, !3210}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !361, file: !330, line: 85, baseType: !177, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !361, file: !330, line: 86, baseType: !365, size: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{!346, !259, !341, !134}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !361, file: !330, line: 88, baseType: !369, size: 64, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{!346, !259, !372, !134}
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !330, line: 168, size: 448, elements: !374)
!374 = !{!375, !376, !377, !378, !3204, !3205}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !373, file: !330, line: 169, baseType: !342, size: 128)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !373, file: !330, line: 170, baseType: !352, size: 64, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !373, file: !330, line: 171, baseType: !199, size: 64, offset: 192)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !373, file: !330, line: 172, baseType: !379, size: 64, offset: 256)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DISubroutineType(types: !381)
!381 = !{!336, !382, !259, !372, !307, !559, !352}
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !384)
!384 = !{!385, !403, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3187, !3188, !3197, !3198, !3199, !3200, !3201, !3202, !3203}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !383, file: !44, line: 920, baseType: !386, size: 128)
!386 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !383, file: !44, line: 917, size: 128, elements: !387)
!387 = !{!388, !394}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !386, file: !44, line: 918, baseType: !389, size: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !390, line: 58, size: 64, elements: !391)
!390 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!391 = !{!392}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !389, file: !390, line: 59, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !386, file: !44, line: 919, baseType: !395, size: 128, align: 64)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !217, line: 216, size: 128, align: 64, elements: !396)
!396 = !{!397, !399}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !395, file: !217, line: 217, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !395, file: !217, line: 218, baseType: !400, size: 64, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !398}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !383, file: !44, line: 921, baseType: !404, size: 128, offset: 128)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !405, line: 8, size: 128, elements: !406)
!405 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!406 = !{!407, !411}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !404, file: !405, line: 9, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !410, line: 18, flags: DIFlagFwdDecl)
!410 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!411 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !404, file: !405, line: 10, baseType: !412, size: 64, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !410, line: 89, size: 1536, elements: !414)
!414 = !{!415, !416, !426, !434, !435, !458, !3137, !3139, !3151, !3152, !3153, !3154, !3155, !3161, !3162, !3163}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !413, file: !410, line: 91, baseType: !7, size: 32)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !413, file: !410, line: 92, baseType: !417, size: 32, offset: 32)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !418, line: 277, baseType: !419)
!418 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !418, line: 277, size: 32, elements: !420)
!420 = !{!421}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !419, file: !418, line: 277, baseType: !422, size: 32)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !418, line: 70, baseType: !423)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !418, line: 65, size: 32, elements: !424)
!424 = !{!425}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !423, file: !418, line: 66, baseType: !7, size: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !413, file: !410, line: 93, baseType: !427, size: 128, offset: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !428, line: 38, size: 128, elements: !429)
!428 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!429 = !{!430, !432}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !427, file: !428, line: 39, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !427, file: !428, line: 39, baseType: !433, size: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !413, file: !410, line: 94, baseType: !412, size: 64, offset: 192)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !413, file: !410, line: 95, baseType: !436, size: 128, offset: 256)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !410, line: 47, size: 128, elements: !437)
!437 = !{!438, !454}
!438 = !DIDerivedType(tag: DW_TAG_member, scope: !436, file: !410, line: 48, baseType: !439, size: 64)
!439 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !436, file: !410, line: 48, size: 64, elements: !440)
!440 = !{!441, !450}
!441 = !DIDerivedType(tag: DW_TAG_member, scope: !439, file: !410, line: 49, baseType: !442, size: 64)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !439, file: !410, line: 49, size: 64, elements: !443)
!443 = !{!444, !449}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !442, file: !410, line: 50, baseType: !445, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !446, line: 21, baseType: !447)
!446 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !448, line: 27, baseType: !7)
!448 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!449 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !442, file: !410, line: 50, baseType: !445, size: 32, offset: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !439, file: !410, line: 52, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !446, line: 23, baseType: !452)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !448, line: 31, baseType: !453)
!453 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !436, file: !410, line: 54, baseType: !455, size: 64, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !457)
!457 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !413, file: !410, line: 96, baseType: !459, size: 64, offset: 384)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !461)
!461 = !{!462, !463, !464, !472, !479, !480, !626, !2848, !2849, !2850, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !3113, !3121, !3122, !3123, !3133, !3134, !3135, !3136}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !460, file: !44, line: 611, baseType: !346, size: 16)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !460, file: !44, line: 612, baseType: !347, size: 16, offset: 16)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !460, file: !44, line: 613, baseType: !465, size: 32, offset: 32)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !466, line: 23, baseType: !467)
!466 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !466, line: 21, size: 32, elements: !468)
!468 = !{!469}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !467, file: !466, line: 22, baseType: !470, size: 32)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !217, line: 32, baseType: !471)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !338, line: 49, baseType: !7)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !460, file: !44, line: 614, baseType: !473, size: 32, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !466, line: 28, baseType: !474)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !466, line: 26, size: 32, elements: !475)
!475 = !{!476}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !474, file: !466, line: 27, baseType: !477, size: 32)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !217, line: 33, baseType: !478)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !338, line: 50, baseType: !7)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !460, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !460, file: !44, line: 622, baseType: !481, size: 64, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !483)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !484)
!484 = !{!485, !489, !502, !506, !512, !516, !520, !524, !528, !532, !536, !537, !543, !547, !573, !602, !606, !612, !617, !621, !622}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !483, file: !44, line: 1865, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!412, !459, !412, !7}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !483, file: !44, line: 1866, baseType: !490, size: 64, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DISubroutineType(types: !492)
!492 = !{!177, !412, !459, !493}
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !495, line: 10, size: 128, elements: !496)
!495 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!496 = !{!497, !501}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !494, file: !495, line: 11, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{null, !199}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !494, file: !495, line: 12, baseType: !199, size: 64, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !483, file: !44, line: 1867, baseType: !503, size: 64, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!134, !459, !134}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !483, file: !44, line: 1868, baseType: !507, size: 64, offset: 192)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{!510, !459, !134}
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !483, file: !44, line: 1870, baseType: !513, size: 64, offset: 256)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{!134, !412, !307, !134}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !483, file: !44, line: 1872, baseType: !517, size: 64, offset: 320)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!134, !459, !412, !346, !216}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !483, file: !44, line: 1873, baseType: !521, size: 64, offset: 384)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{!134, !412, !459, !412}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !483, file: !44, line: 1874, baseType: !525, size: 64, offset: 448)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!134, !459, !412}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !483, file: !44, line: 1875, baseType: !529, size: 64, offset: 512)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!134, !459, !412, !177}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !483, file: !44, line: 1876, baseType: !533, size: 64, offset: 576)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!134, !459, !412, !346}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !483, file: !44, line: 1877, baseType: !525, size: 64, offset: 640)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !483, file: !44, line: 1878, baseType: !538, size: 64, offset: 704)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!134, !459, !412, !346, !541}
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !217, line: 16, baseType: !542)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !217, line: 13, baseType: !445)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !483, file: !44, line: 1879, baseType: !544, size: 64, offset: 768)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!134, !459, !412, !459, !412, !7}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !483, file: !44, line: 1881, baseType: !548, size: 64, offset: 832)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{!134, !412, !551}
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !553)
!553 = !{!554, !555, !556, !557, !558, !562, !570, !571, !572}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !552, file: !44, line: 220, baseType: !7, size: 32)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !552, file: !44, line: 221, baseType: !346, size: 16, offset: 32)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !552, file: !44, line: 222, baseType: !465, size: 32, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !552, file: !44, line: 223, baseType: !473, size: 32, offset: 96)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !552, file: !44, line: 224, baseType: !559, size: 64, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !217, line: 46, baseType: !560)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !338, line: 88, baseType: !561)
!561 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !552, file: !44, line: 225, baseType: !563, size: 128, offset: 192)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !564, line: 13, size: 128, elements: !565)
!564 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!565 = !{!566, !569}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !563, file: !564, line: 14, baseType: !567, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !564, line: 8, baseType: !568)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !448, line: 30, baseType: !561)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !563, file: !564, line: 15, baseType: !340, size: 64, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !552, file: !44, line: 226, baseType: !563, size: 128, offset: 320)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !552, file: !44, line: 227, baseType: !563, size: 128, offset: 448)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !552, file: !44, line: 234, baseType: !382, size: 64, offset: 576)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !483, file: !44, line: 1882, baseType: !574, size: 64, offset: 896)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{!134, !577, !579, !445, !7}
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !404)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !581, line: 22, size: 1152, elements: !582)
!581 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!582 = !{!583, !584, !585, !586, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !580, file: !581, line: 23, baseType: !445, size: 32)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !580, file: !581, line: 24, baseType: !346, size: 16, offset: 32)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !580, file: !581, line: 25, baseType: !7, size: 32, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !580, file: !581, line: 26, baseType: !587, size: 32, offset: 96)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !217, line: 104, baseType: !445)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !580, file: !581, line: 27, baseType: !451, size: 64, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !580, file: !581, line: 28, baseType: !451, size: 64, offset: 192)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !580, file: !581, line: 37, baseType: !451, size: 64, offset: 256)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !580, file: !581, line: 38, baseType: !541, size: 32, offset: 320)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !580, file: !581, line: 39, baseType: !541, size: 32, offset: 352)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !580, file: !581, line: 40, baseType: !465, size: 32, offset: 384)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !580, file: !581, line: 41, baseType: !473, size: 32, offset: 416)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !580, file: !581, line: 42, baseType: !559, size: 64, offset: 448)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !580, file: !581, line: 43, baseType: !563, size: 128, offset: 512)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !580, file: !581, line: 44, baseType: !563, size: 128, offset: 640)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !580, file: !581, line: 45, baseType: !563, size: 128, offset: 768)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !580, file: !581, line: 46, baseType: !563, size: 128, offset: 896)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !580, file: !581, line: 47, baseType: !451, size: 64, offset: 1024)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !580, file: !581, line: 48, baseType: !451, size: 64, offset: 1088)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !483, file: !44, line: 1883, baseType: !603, size: 64, offset: 960)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{!336, !412, !307, !352}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !483, file: !44, line: 1884, baseType: !607, size: 64, offset: 1024)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DISubroutineType(types: !609)
!609 = !{!134, !459, !610, !451, !451}
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !483, file: !44, line: 1886, baseType: !613, size: 64, offset: 1088)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{!134, !459, !616, !134}
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !483, file: !44, line: 1887, baseType: !618, size: 64, offset: 1152)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!134, !459, !412, !382, !7, !346}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !483, file: !44, line: 1890, baseType: !533, size: 64, offset: 1216)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !483, file: !44, line: 1891, baseType: !623, size: 64, offset: 1280)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{!134, !459, !510, !134}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !460, file: !44, line: 623, baseType: !627, size: 64, offset: 192)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !629)
!629 = !{!630, !631, !632, !633, !634, !635, !682, !2455, !2537, !2620, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2636, !2640, !2641, !2644, !2645, !2648, !2649, !2650, !2691, !2718, !2719, !2720, !2721, !2722, !2723, !2726, !2728, !2735, !2736, !2738, !2739, !2740, !2799, !2800, !2815, !2816, !2817, !2818, !2819, !2822, !2823, !2824, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !628, file: !44, line: 1417, baseType: !253, size: 128)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !628, file: !44, line: 1418, baseType: !541, size: 32, offset: 128)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !628, file: !44, line: 1419, baseType: !457, size: 8, offset: 160)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !628, file: !44, line: 1420, baseType: !197, size: 64, offset: 192)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !628, file: !44, line: 1421, baseType: !559, size: 64, offset: 256)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !628, file: !44, line: 1422, baseType: !636, size: 64, offset: 320)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !638)
!638 = !{!639, !640, !641, !648, !652, !656, !660, !661, !662, !672, !675, !676, !677, !679, !680, !681}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !637, file: !44, line: 2229, baseType: !177, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !637, file: !44, line: 2230, baseType: !134, size: 32, offset: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !637, file: !44, line: 2238, baseType: !642, size: 64, offset: 128)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!134, !645}
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !647, line: 28, flags: DIFlagFwdDecl)
!647 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!648 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !637, file: !44, line: 2239, baseType: !649, size: 64, offset: 192)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !651)
!651 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !637, file: !44, line: 2240, baseType: !653, size: 64, offset: 256)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{!412, !636, !134, !177, !199}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !637, file: !44, line: 2242, baseType: !657, size: 64, offset: 320)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{null, !627}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !637, file: !44, line: 2243, baseType: !179, size: 64, offset: 384)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !637, file: !44, line: 2244, baseType: !636, size: 64, offset: 448)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !637, file: !44, line: 2245, baseType: !663, size: 64, offset: 512)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !217, line: 182, size: 64, elements: !664)
!664 = !{!665}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !663, file: !217, line: 183, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !217, line: 186, size: 128, elements: !668)
!668 = !{!669, !670}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !667, file: !217, line: 187, baseType: !666, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !667, file: !217, line: 187, baseType: !671, size: 64, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !637, file: !44, line: 2247, baseType: !673, offset: 576)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !674, line: 187, elements: !280)
!674 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!675 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !637, file: !44, line: 2248, baseType: !673, offset: 576)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !637, file: !44, line: 2249, baseType: !673, offset: 576)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !637, file: !44, line: 2250, baseType: !678, offset: 576)
!678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !673, elements: !211)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !637, file: !44, line: 2252, baseType: !673, offset: 576)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !637, file: !44, line: 2253, baseType: !673, offset: 576)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !637, file: !44, line: 2254, baseType: !673, offset: 576)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !628, file: !44, line: 1423, baseType: !683, size: 64, offset: 384)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !685)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !686)
!686 = !{!687, !691, !695, !696, !700, !706, !710, !711, !712, !716, !720, !721, !722, !723, !729, !734, !735, !742, !743, !744, !745, !2439, !2454}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !685, file: !44, line: 1936, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DISubroutineType(types: !690)
!690 = !{!459, !627}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !685, file: !44, line: 1937, baseType: !692, size: 64, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DISubroutineType(types: !694)
!694 = !{null, !459}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !685, file: !44, line: 1938, baseType: !692, size: 64, offset: 128)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !685, file: !44, line: 1940, baseType: !697, size: 64, offset: 192)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DISubroutineType(types: !699)
!699 = !{null, !459, !134}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !685, file: !44, line: 1941, baseType: !701, size: 64, offset: 256)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DISubroutineType(types: !703)
!703 = !{!134, !459, !704}
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !685, file: !44, line: 1942, baseType: !707, size: 64, offset: 320)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DISubroutineType(types: !709)
!709 = !{!134, !459}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !685, file: !44, line: 1943, baseType: !692, size: 64, offset: 384)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !685, file: !44, line: 1944, baseType: !657, size: 64, offset: 448)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !685, file: !44, line: 1945, baseType: !713, size: 64, offset: 512)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{!134, !627, !134}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !685, file: !44, line: 1946, baseType: !717, size: 64, offset: 576)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DISubroutineType(types: !719)
!719 = !{!134, !627}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !685, file: !44, line: 1947, baseType: !717, size: 64, offset: 640)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !685, file: !44, line: 1948, baseType: !717, size: 64, offset: 704)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !685, file: !44, line: 1949, baseType: !717, size: 64, offset: 768)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !685, file: !44, line: 1950, baseType: !724, size: 64, offset: 832)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{!134, !412, !727}
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !685, file: !44, line: 1951, baseType: !730, size: 64, offset: 896)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{!134, !627, !733, !307}
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !685, file: !44, line: 1952, baseType: !657, size: 64, offset: 960)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !685, file: !44, line: 1954, baseType: !736, size: 64, offset: 1024)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{!134, !739, !412}
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !741, line: 539, flags: DIFlagFwdDecl)
!741 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!742 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !685, file: !44, line: 1955, baseType: !736, size: 64, offset: 1088)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !685, file: !44, line: 1956, baseType: !736, size: 64, offset: 1152)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !685, file: !44, line: 1957, baseType: !736, size: 64, offset: 1216)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !685, file: !44, line: 1963, baseType: !746, size: 64, offset: 1280)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{!134, !627, !749, !772}
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !751, line: 68, size: 512, align: 128, elements: !752)
!751 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!752 = !{!753, !754, !2431, !2438}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !750, file: !751, line: 69, baseType: !197, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, scope: !750, file: !751, line: 77, baseType: !755, size: 320, offset: 64)
!755 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !750, file: !751, line: 77, size: 320, elements: !756)
!756 = !{!757, !945, !950, !978, !986, !992, !2362, !2430}
!757 = !DIDerivedType(tag: DW_TAG_member, scope: !755, file: !751, line: 78, baseType: !758, size: 320)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !755, file: !751, line: 78, size: 320, elements: !759)
!759 = !{!760, !761, !943, !944}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !758, file: !751, line: 84, baseType: !253, size: 128)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !758, file: !751, line: 86, baseType: !762, size: 64, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !764)
!764 = !{!765, !766, !774, !775, !780, !795, !811, !812, !813, !814, !936, !937, !940, !941, !942}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !763, file: !44, line: 452, baseType: !459, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !763, file: !44, line: 453, baseType: !767, size: 128, offset: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !768, line: 292, size: 128, elements: !769)
!768 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!769 = !{!770, !771, !773}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !767, file: !768, line: 293, baseType: !266)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !767, file: !768, line: 295, baseType: !772, size: 32)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !217, line: 148, baseType: !7)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !767, file: !768, line: 296, baseType: !199, size: 64, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !763, file: !44, line: 454, baseType: !772, size: 32, offset: 192)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !763, file: !44, line: 455, baseType: !776, size: 32, offset: 224)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !217, line: 168, baseType: !777)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 166, size: 32, elements: !778)
!778 = !{!779}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !777, file: !217, line: 167, baseType: !134, size: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !763, file: !44, line: 460, baseType: !781, size: 128, offset: 256)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !782, line: 125, size: 128, elements: !783)
!782 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!783 = !{!784, !794}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !781, file: !782, line: 126, baseType: !785, size: 64)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !782, line: 31, size: 64, elements: !786)
!786 = !{!787}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !785, file: !782, line: 32, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !782, line: 24, size: 192, align: 64, elements: !790)
!790 = !{!791, !792, !793}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !789, file: !782, line: 25, baseType: !197, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !789, file: !782, line: 26, baseType: !788, size: 64, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !789, file: !782, line: 27, baseType: !788, size: 64, offset: 128)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !781, file: !782, line: 127, baseType: !788, size: 64, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !763, file: !44, line: 461, baseType: !796, size: 256, offset: 384)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !797, line: 35, size: 256, elements: !798)
!797 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!798 = !{!799, !807, !808, !810}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !796, file: !797, line: 36, baseType: !800, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !801, line: 13, baseType: !802)
!801 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !217, line: 175, baseType: !803)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 173, size: 64, elements: !804)
!804 = !{!805}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !803, file: !217, line: 174, baseType: !806, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !446, line: 22, baseType: !568)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !796, file: !797, line: 42, baseType: !800, size: 64, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !796, file: !797, line: 46, baseType: !809, offset: 128)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !267, line: 29, baseType: !274)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !796, file: !797, line: 47, baseType: !253, size: 128, offset: 128)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !763, file: !44, line: 462, baseType: !197, size: 64, offset: 640)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !763, file: !44, line: 463, baseType: !197, size: 64, offset: 704)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !763, file: !44, line: 464, baseType: !197, size: 64, offset: 768)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !763, file: !44, line: 465, baseType: !815, size: 64, offset: 832)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !817)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !818)
!818 = !{!819, !823, !827, !831, !835, !839, !845, !851, !855, !860, !864, !868, !872, !900, !904, !910, !911, !912, !916, !921, !925, !932}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !817, file: !44, line: 368, baseType: !820, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{!134, !749, !704}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !817, file: !44, line: 369, baseType: !824, size: 64, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{!134, !382, !749}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !817, file: !44, line: 372, baseType: !828, size: 64, offset: 128)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{!134, !762, !704}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !817, file: !44, line: 375, baseType: !832, size: 64, offset: 192)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{!134, !749}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !817, file: !44, line: 381, baseType: !836, size: 64, offset: 256)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{!134, !382, !762, !256, !7}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !817, file: !44, line: 383, baseType: !840, size: 64, offset: 320)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{null, !843}
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !817, file: !44, line: 385, baseType: !846, size: 64, offset: 384)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{!134, !382, !762, !559, !7, !7, !849, !850}
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !817, file: !44, line: 388, baseType: !852, size: 64, offset: 448)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{!134, !382, !762, !559, !7, !7, !749, !199}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !817, file: !44, line: 393, baseType: !856, size: 64, offset: 512)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DISubroutineType(types: !858)
!858 = !{!859, !762, !859}
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !217, line: 125, baseType: !451)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !817, file: !44, line: 394, baseType: !861, size: 64, offset: 576)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{null, !749, !7, !7}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !817, file: !44, line: 395, baseType: !865, size: 64, offset: 640)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{!134, !749, !772}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !817, file: !44, line: 396, baseType: !869, size: 64, offset: 704)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{null, !749}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !817, file: !44, line: 397, baseType: !873, size: 64, offset: 768)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{!336, !876, !898}
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !878)
!878 = !{!879, !880, !881, !885, !886, !887, !890, !891}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !877, file: !44, line: 321, baseType: !382, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !877, file: !44, line: 326, baseType: !559, size: 64, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !877, file: !44, line: 327, baseType: !882, size: 64, offset: 128)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DISubroutineType(types: !884)
!884 = !{null, !876, !340, !340}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !877, file: !44, line: 328, baseType: !199, size: 64, offset: 192)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !877, file: !44, line: 329, baseType: !134, size: 32, offset: 256)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !877, file: !44, line: 330, baseType: !888, size: 16, offset: 288)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !446, line: 19, baseType: !889)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !448, line: 24, baseType: !347)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !877, file: !44, line: 331, baseType: !888, size: 16, offset: 304)
!891 = !DIDerivedType(tag: DW_TAG_member, scope: !877, file: !44, line: 332, baseType: !892, size: 64, offset: 320)
!892 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !877, file: !44, line: 332, size: 64, elements: !893)
!893 = !{!894, !895}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !892, file: !44, line: 333, baseType: !7, size: 32)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !892, file: !44, line: 334, baseType: !896, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !817, file: !44, line: 402, baseType: !901, size: 64, offset: 832)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DISubroutineType(types: !903)
!903 = !{!134, !762, !749, !749, !5}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !817, file: !44, line: 404, baseType: !905, size: 64, offset: 896)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DISubroutineType(types: !907)
!907 = !{!216, !749, !908}
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !909, line: 305, baseType: !7)
!909 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!910 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !817, file: !44, line: 405, baseType: !869, size: 64, offset: 960)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !817, file: !44, line: 406, baseType: !832, size: 64, offset: 1024)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !817, file: !44, line: 407, baseType: !913, size: 64, offset: 1088)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DISubroutineType(types: !915)
!915 = !{!134, !749, !197, !197}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !817, file: !44, line: 409, baseType: !917, size: 64, offset: 1152)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DISubroutineType(types: !919)
!919 = !{null, !749, !920, !920}
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !817, file: !44, line: 410, baseType: !922, size: 64, offset: 1216)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DISubroutineType(types: !924)
!924 = !{!134, !762, !749}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !817, file: !44, line: 413, baseType: !926, size: 64, offset: 1280)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DISubroutineType(types: !928)
!928 = !{!134, !929, !382, !931}
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !817, file: !44, line: 415, baseType: !933, size: 64, offset: 1344)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DISubroutineType(types: !935)
!935 = !{null, !382}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !763, file: !44, line: 466, baseType: !197, size: 64, offset: 896)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !763, file: !44, line: 467, baseType: !938, size: 32, offset: 960)
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !939, line: 8, baseType: !445)
!939 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!940 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !763, file: !44, line: 468, baseType: !266, offset: 992)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !763, file: !44, line: 469, baseType: !253, size: 128, offset: 1024)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !763, file: !44, line: 470, baseType: !199, size: 64, offset: 1152)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !758, file: !751, line: 87, baseType: !197, size: 64, offset: 192)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !758, file: !751, line: 94, baseType: !197, size: 64, offset: 256)
!945 = !DIDerivedType(tag: DW_TAG_member, scope: !755, file: !751, line: 96, baseType: !946, size: 64)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !755, file: !751, line: 96, size: 64, elements: !947)
!947 = !{!948}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !946, file: !751, line: 101, baseType: !949, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !217, line: 143, baseType: !451)
!950 = !DIDerivedType(tag: DW_TAG_member, scope: !755, file: !751, line: 103, baseType: !951, size: 320)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !755, file: !751, line: 103, size: 320, elements: !952)
!952 = !{!953, !963, !966, !967}
!953 = !DIDerivedType(tag: DW_TAG_member, scope: !951, file: !751, line: 104, baseType: !954, size: 128)
!954 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !951, file: !751, line: 104, size: 128, elements: !955)
!955 = !{!956, !957}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !954, file: !751, line: 105, baseType: !253, size: 128)
!957 = !DIDerivedType(tag: DW_TAG_member, scope: !954, file: !751, line: 106, baseType: !958, size: 128)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !954, file: !751, line: 106, size: 128, elements: !959)
!959 = !{!960, !961, !962}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !958, file: !751, line: 107, baseType: !749, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !958, file: !751, line: 109, baseType: !134, size: 32, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !958, file: !751, line: 110, baseType: !134, size: 32, offset: 96)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !951, file: !751, line: 117, baseType: !964, size: 64, offset: 128)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !751, line: 117, flags: DIFlagFwdDecl)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !951, file: !751, line: 119, baseType: !199, size: 64, offset: 192)
!967 = !DIDerivedType(tag: DW_TAG_member, scope: !951, file: !751, line: 120, baseType: !968, size: 64, offset: 256)
!968 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !951, file: !751, line: 120, size: 64, elements: !969)
!969 = !{!970, !971, !972}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !968, file: !751, line: 121, baseType: !199, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !968, file: !751, line: 122, baseType: !197, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, scope: !968, file: !751, line: 123, baseType: !973, size: 32)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !968, file: !751, line: 123, size: 32, elements: !974)
!974 = !{!975, !976, !977}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !973, file: !751, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !973, file: !751, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !973, file: !751, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!978 = !DIDerivedType(tag: DW_TAG_member, scope: !755, file: !751, line: 130, baseType: !979, size: 192)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !755, file: !751, line: 130, size: 192, elements: !980)
!980 = !{!981, !982, !983, !984, !985}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !979, file: !751, line: 131, baseType: !197, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !979, file: !751, line: 134, baseType: !457, size: 8, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !979, file: !751, line: 135, baseType: !457, size: 8, offset: 72)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !979, file: !751, line: 136, baseType: !776, size: 32, offset: 96)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !979, file: !751, line: 137, baseType: !7, size: 32, offset: 128)
!986 = !DIDerivedType(tag: DW_TAG_member, scope: !755, file: !751, line: 139, baseType: !987, size: 256)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !755, file: !751, line: 139, size: 256, elements: !988)
!988 = !{!989, !990, !991}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !987, file: !751, line: 140, baseType: !197, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !987, file: !751, line: 141, baseType: !776, size: 32, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !987, file: !751, line: 143, baseType: !253, size: 128, offset: 128)
!992 = !DIDerivedType(tag: DW_TAG_member, scope: !755, file: !751, line: 145, baseType: !993, size: 256)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !755, file: !751, line: 145, size: 256, elements: !994)
!994 = !{!995, !996, !998, !999, !2361}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !993, file: !751, line: 146, baseType: !197, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !993, file: !751, line: 147, baseType: !997, size: 64, offset: 64)
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !741, line: 509, baseType: !749)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !993, file: !751, line: 148, baseType: !197, size: 64, offset: 128)
!999 = !DIDerivedType(tag: DW_TAG_member, scope: !993, file: !751, line: 149, baseType: !1000, size: 64, offset: 192)
!1000 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !993, file: !751, line: 149, size: 64, elements: !1001)
!1001 = !{!1002, !2360}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1000, file: !751, line: 150, baseType: !1003, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !751, line: 388, size: 7296, elements: !1005)
!1005 = !{!1006, !2356}
!1006 = !DIDerivedType(tag: DW_TAG_member, scope: !1004, file: !751, line: 389, baseType: !1007, size: 7296)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1004, file: !751, line: 389, size: 7296, elements: !1008)
!1008 = !{!1009, !1127, !1128, !1129, !1133, !1134, !1135, !1136, !1137, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1176, !1184, !1187, !1233, !1234, !2340, !2341, !2344, !2345, !2346, !2349, !2350, !2351, !2354, !2355}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1007, file: !751, line: 390, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !751, line: 305, size: 1472, elements: !1012)
!1012 = !{!1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1027, !1028, !1033, !1034, !1037, !1121, !1122, !1123, !1124, !1125}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1011, file: !751, line: 308, baseType: !197, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1011, file: !751, line: 309, baseType: !197, size: 64, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1011, file: !751, line: 313, baseType: !1010, size: 64, offset: 128)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1011, file: !751, line: 313, baseType: !1010, size: 64, offset: 192)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1011, file: !751, line: 315, baseType: !789, size: 192, align: 64, offset: 256)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1011, file: !751, line: 323, baseType: !197, size: 64, offset: 448)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1011, file: !751, line: 327, baseType: !1003, size: 64, offset: 512)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1011, file: !751, line: 333, baseType: !1021, size: 64, offset: 576)
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !741, line: 284, baseType: !1022)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !741, line: 284, size: 64, elements: !1023)
!1023 = !{!1024}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1022, file: !741, line: 284, baseType: !1025, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1026, line: 19, baseType: !197)
!1026 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1011, file: !751, line: 334, baseType: !197, size: 64, offset: 640)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1011, file: !751, line: 343, baseType: !1029, size: 256, offset: 704)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1011, file: !751, line: 340, size: 256, elements: !1030)
!1030 = !{!1031, !1032}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1029, file: !751, line: 341, baseType: !789, size: 192, align: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1029, file: !751, line: 342, baseType: !197, size: 64, offset: 192)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1011, file: !751, line: 351, baseType: !253, size: 128, offset: 960)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1011, file: !751, line: 353, baseType: !1035, size: 64, offset: 1088)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !751, line: 353, flags: DIFlagFwdDecl)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1011, file: !751, line: 356, baseType: !1038, size: 64, offset: 1152)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1040)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1041)
!1041 = !{!1042, !1046, !1047, !1051, !1055, !1095, !1099, !1103, !1107, !1108, !1109, !1113, !1117}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1040, file: !14, line: 558, baseType: !1043, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{null, !1010}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1040, file: !14, line: 559, baseType: !1043, size: 64, offset: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1040, file: !14, line: 560, baseType: !1048, size: 64, offset: 128)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!134, !1010, !197}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1040, file: !14, line: 561, baseType: !1052, size: 64, offset: 192)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!134, !1010}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1040, file: !14, line: 562, baseType: !1056, size: 64, offset: 256)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!1059, !1060}
!1059 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !751, line: 682, baseType: !7)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1062)
!1062 = !{!1063, !1064, !1065, !1066, !1067, !1068, !1075, !1082, !1088, !1089, !1090, !1092, !1094}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1061, file: !14, line: 509, baseType: !1010, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1061, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1061, file: !14, line: 511, baseType: !772, size: 32, offset: 96)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1061, file: !14, line: 512, baseType: !197, size: 64, offset: 128)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1061, file: !14, line: 513, baseType: !197, size: 64, offset: 192)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1061, file: !14, line: 514, baseType: !1069, size: 64, offset: 256)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !741, line: 385, baseType: !1071)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !741, line: 385, size: 64, elements: !1072)
!1072 = !{!1073}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1071, file: !741, line: 385, baseType: !1074, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1026, line: 15, baseType: !197)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1061, file: !14, line: 516, baseType: !1076, size: 64, offset: 320)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !741, line: 359, baseType: !1078)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !741, line: 359, size: 64, elements: !1079)
!1079 = !{!1080}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1078, file: !741, line: 359, baseType: !1081, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1026, line: 16, baseType: !197)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1061, file: !14, line: 519, baseType: !1083, size: 64, offset: 384)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1026, line: 21, baseType: !1084)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1026, line: 21, size: 64, elements: !1085)
!1085 = !{!1086}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1084, file: !1026, line: 21, baseType: !1087, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1026, line: 14, baseType: !197)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1061, file: !14, line: 521, baseType: !749, size: 64, offset: 448)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1061, file: !14, line: 522, baseType: !749, size: 64, offset: 512)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1061, file: !14, line: 528, baseType: !1091, size: 64, offset: 576)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1061, file: !14, line: 532, baseType: !1093, size: 64, offset: 640)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1061, file: !14, line: 536, baseType: !997, size: 64, offset: 704)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1040, file: !14, line: 563, baseType: !1096, size: 64, offset: 320)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!1059, !1060, !13}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1040, file: !14, line: 565, baseType: !1100, size: 64, offset: 384)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{null, !1060, !197, !197}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1040, file: !14, line: 567, baseType: !1104, size: 64, offset: 448)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!197, !1010}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1040, file: !14, line: 571, baseType: !1056, size: 64, offset: 512)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1040, file: !14, line: 574, baseType: !1056, size: 64, offset: 576)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1040, file: !14, line: 579, baseType: !1110, size: 64, offset: 640)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!134, !1010, !197, !199, !134, !134}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1040, file: !14, line: 585, baseType: !1114, size: 64, offset: 704)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!177, !1010}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1040, file: !14, line: 615, baseType: !1118, size: 64, offset: 768)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!749, !1010, !197}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1011, file: !751, line: 359, baseType: !197, size: 64, offset: 1216)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1011, file: !751, line: 361, baseType: !382, size: 64, offset: 1280)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1011, file: !751, line: 362, baseType: !199, size: 64, offset: 1344)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1011, file: !751, line: 365, baseType: !800, size: 64, offset: 1408)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1011, file: !751, line: 373, baseType: !1126, offset: 1472)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !751, line: 296, elements: !280)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1007, file: !751, line: 391, baseType: !785, size: 64, offset: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1007, file: !751, line: 392, baseType: !451, size: 64, offset: 128)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1007, file: !751, line: 394, baseType: !1130, size: 64, offset: 192)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!197, !382, !197, !197, !197, !197}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1007, file: !751, line: 398, baseType: !197, size: 64, offset: 256)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1007, file: !751, line: 399, baseType: !197, size: 64, offset: 320)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1007, file: !751, line: 405, baseType: !197, size: 64, offset: 384)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1007, file: !751, line: 406, baseType: !197, size: 64, offset: 448)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1007, file: !751, line: 407, baseType: !1138, size: 64, offset: 512)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !741, line: 286, baseType: !1140)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !741, line: 286, size: 64, elements: !1141)
!1141 = !{!1142}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1140, file: !741, line: 286, baseType: !1143, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1026, line: 18, baseType: !197)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1007, file: !751, line: 416, baseType: !776, size: 32, offset: 576)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1007, file: !751, line: 428, baseType: !776, size: 32, offset: 608)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1007, file: !751, line: 437, baseType: !776, size: 32, offset: 640)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1007, file: !751, line: 447, baseType: !776, size: 32, offset: 672)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1007, file: !751, line: 450, baseType: !800, size: 64, offset: 704)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1007, file: !751, line: 452, baseType: !134, size: 32, offset: 768)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1007, file: !751, line: 454, baseType: !266, offset: 800)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1007, file: !751, line: 457, baseType: !796, size: 256, offset: 832)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1007, file: !751, line: 459, baseType: !253, size: 128, offset: 1088)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1007, file: !751, line: 466, baseType: !197, size: 64, offset: 1216)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1007, file: !751, line: 467, baseType: !197, size: 64, offset: 1280)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1007, file: !751, line: 469, baseType: !197, size: 64, offset: 1344)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1007, file: !751, line: 470, baseType: !197, size: 64, offset: 1408)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1007, file: !751, line: 471, baseType: !802, size: 64, offset: 1472)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1007, file: !751, line: 472, baseType: !197, size: 64, offset: 1536)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1007, file: !751, line: 473, baseType: !197, size: 64, offset: 1600)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1007, file: !751, line: 474, baseType: !197, size: 64, offset: 1664)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1007, file: !751, line: 475, baseType: !197, size: 64, offset: 1728)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1007, file: !751, line: 477, baseType: !266, offset: 1792)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1007, file: !751, line: 478, baseType: !197, size: 64, offset: 1792)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1007, file: !751, line: 478, baseType: !197, size: 64, offset: 1856)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1007, file: !751, line: 478, baseType: !197, size: 64, offset: 1920)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1007, file: !751, line: 478, baseType: !197, size: 64, offset: 1984)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1007, file: !751, line: 479, baseType: !197, size: 64, offset: 2048)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1007, file: !751, line: 479, baseType: !197, size: 64, offset: 2112)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1007, file: !751, line: 479, baseType: !197, size: 64, offset: 2176)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1007, file: !751, line: 480, baseType: !197, size: 64, offset: 2240)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1007, file: !751, line: 480, baseType: !197, size: 64, offset: 2304)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1007, file: !751, line: 480, baseType: !197, size: 64, offset: 2368)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1007, file: !751, line: 480, baseType: !197, size: 64, offset: 2432)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1007, file: !751, line: 482, baseType: !1175, size: 2816, offset: 2496)
!1175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 2816, elements: !148)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1007, file: !751, line: 488, baseType: !1177, size: 256, offset: 5312)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1178, line: 60, size: 256, elements: !1179)
!1178 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1179 = !{!1180}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1177, file: !1178, line: 61, baseType: !1181, size: 256)
!1181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !800, size: 256, elements: !1182)
!1182 = !{!1183}
!1183 = !DISubrange(count: 4)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1007, file: !751, line: 490, baseType: !1185, size: 64, offset: 5568)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !751, line: 490, flags: DIFlagFwdDecl)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1007, file: !751, line: 493, baseType: !1188, size: 896, offset: 5632)
!1188 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1189, line: 53, baseType: !1190)
!1189 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1189, line: 13, size: 896, elements: !1191)
!1191 = !{!1192, !1193, !1194, !1195, !1198, !1199, !1206, !1207, !1227, !1228, !1229}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1190, file: !1189, line: 18, baseType: !451, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1190, file: !1189, line: 28, baseType: !802, size: 64, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1190, file: !1189, line: 31, baseType: !796, size: 256, offset: 128)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1190, file: !1189, line: 32, baseType: !1196, size: 64, offset: 384)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1189, line: 32, flags: DIFlagFwdDecl)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1190, file: !1189, line: 37, baseType: !347, size: 16, offset: 448)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1190, file: !1189, line: 40, baseType: !1200, size: 192, offset: 512)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1201, line: 53, size: 192, elements: !1202)
!1201 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1202 = !{!1203, !1204, !1205}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1200, file: !1201, line: 54, baseType: !800, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1200, file: !1201, line: 55, baseType: !266, offset: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1200, file: !1201, line: 59, baseType: !253, size: 128, offset: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1190, file: !1189, line: 41, baseType: !199, size: 64, offset: 704)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1190, file: !1189, line: 42, baseType: !1208, size: 64, offset: 768)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1210)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1211, line: 13, size: 896, elements: !1212)
!1211 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1212 = !{!1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1210, file: !1211, line: 14, baseType: !199, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1210, file: !1211, line: 15, baseType: !197, size: 64, offset: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1210, file: !1211, line: 17, baseType: !197, size: 64, offset: 128)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1210, file: !1211, line: 17, baseType: !197, size: 64, offset: 192)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1210, file: !1211, line: 19, baseType: !340, size: 64, offset: 256)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1210, file: !1211, line: 21, baseType: !340, size: 64, offset: 320)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1210, file: !1211, line: 22, baseType: !340, size: 64, offset: 384)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1210, file: !1211, line: 23, baseType: !340, size: 64, offset: 448)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1210, file: !1211, line: 24, baseType: !340, size: 64, offset: 512)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1210, file: !1211, line: 25, baseType: !340, size: 64, offset: 576)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1210, file: !1211, line: 26, baseType: !340, size: 64, offset: 640)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1210, file: !1211, line: 27, baseType: !340, size: 64, offset: 704)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1210, file: !1211, line: 28, baseType: !340, size: 64, offset: 768)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1210, file: !1211, line: 29, baseType: !340, size: 64, offset: 832)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1190, file: !1189, line: 44, baseType: !776, size: 32, offset: 832)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1190, file: !1189, line: 50, baseType: !888, size: 16, offset: 864)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1190, file: !1189, line: 51, baseType: !1230, size: 16, offset: 880)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !446, line: 18, baseType: !1231)
!1231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !448, line: 23, baseType: !1232)
!1232 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1007, file: !751, line: 495, baseType: !197, size: 64, offset: 6528)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1007, file: !751, line: 497, baseType: !1235, size: 64, offset: 6592)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !751, line: 381, size: 384, elements: !1237)
!1237 = !{!1238, !1239, !2339}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1236, file: !751, line: 382, baseType: !776, size: 32)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1236, file: !751, line: 383, baseType: !1240, size: 128, offset: 64)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !751, line: 376, size: 128, elements: !1241)
!1241 = !{!1242, !2337}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1240, file: !751, line: 377, baseType: !1243, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1245, line: 640, size: 48640, elements: !1246)
!1245 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1246 = !{!1247, !1253, !1255, !1256, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1273, !1291, !1302, !1387, !1388, !1389, !1400, !1401, !1403, !1404, !1405, !1406, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1485, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1523, !1525, !1526, !1527, !1539, !1540, !1541, !1542, !1543, !1544, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1568, !1573, !1757, !1758, !1759, !1760, !1764, !1767, !1770, !1773, !1776, !1780, !1881, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1925, !1926, !1927, !1928, !1929, !1934, !1935, !1936, !1939, !1940, !1943, !1946, !1949, !1952, !1995, !1998, !1999, !2078, !2079, !2082, !2083, !2086, !2087, !2088, !2092, !2093, !2094, !2107, !2108, !2109, !2119, !2124, !2127, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1244, file: !1245, line: 646, baseType: !1248, size: 128)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1249, line: 56, size: 128, elements: !1250)
!1249 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1250 = !{!1251, !1252}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1248, file: !1249, line: 57, baseType: !197, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1248, file: !1249, line: 58, baseType: !445, size: 32, offset: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1244, file: !1245, line: 649, baseType: !1254, size: 64, offset: 128)
!1254 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !340)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1244, file: !1245, line: 657, baseType: !199, size: 64, offset: 192)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1244, file: !1245, line: 658, baseType: !1257, size: 32, offset: 256)
!1257 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1258, line: 113, baseType: !1259)
!1258 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1258, line: 111, size: 32, elements: !1260)
!1260 = !{!1261}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1259, file: !1258, line: 112, baseType: !776, size: 32)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1244, file: !1245, line: 660, baseType: !7, size: 32, offset: 288)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1244, file: !1245, line: 661, baseType: !7, size: 32, offset: 320)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1244, file: !1245, line: 684, baseType: !134, size: 32, offset: 352)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1244, file: !1245, line: 686, baseType: !134, size: 32, offset: 384)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1244, file: !1245, line: 687, baseType: !134, size: 32, offset: 416)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1244, file: !1245, line: 688, baseType: !134, size: 32, offset: 448)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1244, file: !1245, line: 689, baseType: !7, size: 32, offset: 480)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1244, file: !1245, line: 691, baseType: !1270, size: 64, offset: 512)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1272)
!1272 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1245, line: 691, flags: DIFlagFwdDecl)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1244, file: !1245, line: 692, baseType: !1274, size: 832, offset: 576)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1245, line: 451, size: 832, elements: !1275)
!1275 = !{!1276, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1274, file: !1245, line: 453, baseType: !1277, size: 128)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1245, line: 325, size: 128, elements: !1278)
!1278 = !{!1279, !1280}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1277, file: !1245, line: 326, baseType: !197, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1277, file: !1245, line: 327, baseType: !445, size: 32, offset: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1274, file: !1245, line: 454, baseType: !789, size: 192, align: 64, offset: 128)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1274, file: !1245, line: 455, baseType: !253, size: 128, offset: 320)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1274, file: !1245, line: 456, baseType: !7, size: 32, offset: 448)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1274, file: !1245, line: 458, baseType: !451, size: 64, offset: 512)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1274, file: !1245, line: 459, baseType: !451, size: 64, offset: 576)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1274, file: !1245, line: 460, baseType: !451, size: 64, offset: 640)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1274, file: !1245, line: 461, baseType: !451, size: 64, offset: 704)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1274, file: !1245, line: 463, baseType: !451, size: 64, offset: 768)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1274, file: !1245, line: 465, baseType: !1290, offset: 832)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1245, line: 415, elements: !280)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1244, file: !1245, line: 693, baseType: !1292, size: 384, offset: 1408)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1245, line: 489, size: 384, elements: !1293)
!1293 = !{!1294, !1295, !1296, !1297, !1298, !1299, !1300}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1292, file: !1245, line: 490, baseType: !253, size: 128)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1292, file: !1245, line: 491, baseType: !197, size: 64, offset: 128)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1292, file: !1245, line: 492, baseType: !197, size: 64, offset: 192)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1292, file: !1245, line: 493, baseType: !7, size: 32, offset: 256)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1292, file: !1245, line: 494, baseType: !347, size: 16, offset: 288)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1292, file: !1245, line: 495, baseType: !347, size: 16, offset: 304)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1292, file: !1245, line: 497, baseType: !1301, size: 64, offset: 320)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1244, file: !1245, line: 697, baseType: !1303, size: 1792, offset: 1792)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1245, line: 507, size: 1792, elements: !1304)
!1304 = !{!1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1384, !1385}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1303, file: !1245, line: 508, baseType: !789, size: 192, align: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1303, file: !1245, line: 515, baseType: !451, size: 64, offset: 192)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1303, file: !1245, line: 516, baseType: !451, size: 64, offset: 256)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1303, file: !1245, line: 517, baseType: !451, size: 64, offset: 320)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1303, file: !1245, line: 518, baseType: !451, size: 64, offset: 384)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1303, file: !1245, line: 519, baseType: !451, size: 64, offset: 448)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1303, file: !1245, line: 526, baseType: !806, size: 64, offset: 512)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1303, file: !1245, line: 527, baseType: !451, size: 64, offset: 576)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1303, file: !1245, line: 528, baseType: !7, size: 32, offset: 640)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1303, file: !1245, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1303, file: !1245, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1303, file: !1245, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1303, file: !1245, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1303, file: !1245, line: 563, baseType: !1319, size: 512, offset: 704)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1320)
!1320 = !{!1321, !1329, !1330, !1335, !1378, !1381, !1382, !1383}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1319, file: !20, line: 119, baseType: !1322, size: 256)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1323, line: 9, size: 256, elements: !1324)
!1323 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1324 = !{!1325, !1326}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1322, file: !1323, line: 10, baseType: !789, size: 192, align: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1322, file: !1323, line: 11, baseType: !1327, size: 64, offset: 192)
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1328, line: 29, baseType: !806)
!1328 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1319, file: !20, line: 120, baseType: !1327, size: 64, offset: 256)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1319, file: !20, line: 121, baseType: !1331, size: 64, offset: 320)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!19, !1334}
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1319, file: !20, line: 122, baseType: !1336, size: 64, offset: 384)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1338)
!1338 = !{!1339, !1359, !1360, !1363, !1368, !1369, !1373, !1377}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1337, file: !20, line: 160, baseType: !1340, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1342)
!1342 = !{!1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1341, file: !20, line: 215, baseType: !809)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1341, file: !20, line: 216, baseType: !7, size: 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1341, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1341, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1341, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1341, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1341, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1341, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1341, file: !20, line: 233, baseType: !1327, size: 64, offset: 128)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1341, file: !20, line: 234, baseType: !1334, size: 64, offset: 192)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1341, file: !20, line: 235, baseType: !1327, size: 64, offset: 256)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1341, file: !20, line: 236, baseType: !1334, size: 64, offset: 320)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1341, file: !20, line: 237, baseType: !1356, size: 4096, offset: 512)
!1356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1337, size: 4096, elements: !1357)
!1357 = !{!1358}
!1358 = !DISubrange(count: 8)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1337, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1337, file: !20, line: 162, baseType: !1361, size: 32, offset: 96)
!1361 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !217, line: 27, baseType: !1362)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !338, line: 96, baseType: !134)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1337, file: !20, line: 163, baseType: !1364, size: 32, offset: 128)
!1364 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !418, line: 276, baseType: !1365)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !418, line: 276, size: 32, elements: !1366)
!1366 = !{!1367}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1365, file: !418, line: 276, baseType: !422, size: 32)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1337, file: !20, line: 164, baseType: !1334, size: 64, offset: 192)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1337, file: !20, line: 165, baseType: !1370, size: 128, offset: 256)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1323, line: 14, size: 128, elements: !1371)
!1371 = !{!1372}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1370, file: !1323, line: 15, baseType: !781, size: 128)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1337, file: !20, line: 166, baseType: !1374, size: 64, offset: 384)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!1327}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1337, file: !20, line: 167, baseType: !1327, size: 64, offset: 448)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1319, file: !20, line: 123, baseType: !1379, size: 8, offset: 448)
!1379 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !446, line: 17, baseType: !1380)
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !448, line: 21, baseType: !457)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1319, file: !20, line: 124, baseType: !1379, size: 8, offset: 456)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1319, file: !20, line: 125, baseType: !1379, size: 8, offset: 464)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1319, file: !20, line: 126, baseType: !1379, size: 8, offset: 472)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1303, file: !1245, line: 572, baseType: !1319, size: 512, offset: 1216)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1303, file: !1245, line: 580, baseType: !1386, size: 64, offset: 1728)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1244, file: !1245, line: 721, baseType: !7, size: 32, offset: 3584)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1244, file: !1245, line: 722, baseType: !134, size: 32, offset: 3616)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1244, file: !1245, line: 723, baseType: !1390, size: 64, offset: 3648)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1392)
!1392 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1393, line: 17, baseType: !1394)
!1393 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1393, line: 17, size: 64, elements: !1395)
!1395 = !{!1396}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1394, file: !1393, line: 17, baseType: !1397, size: 64)
!1397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 64, elements: !1398)
!1398 = !{!1399}
!1399 = !DISubrange(count: 1)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1244, file: !1245, line: 724, baseType: !1392, size: 64, offset: 3712)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1244, file: !1245, line: 749, baseType: !1402, offset: 3776)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1245, line: 290, elements: !280)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1244, file: !1245, line: 751, baseType: !253, size: 128, offset: 3776)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1244, file: !1245, line: 757, baseType: !1003, size: 64, offset: 3904)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1244, file: !1245, line: 758, baseType: !1003, size: 64, offset: 3968)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1244, file: !1245, line: 761, baseType: !1407, size: 320, offset: 4032)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1178, line: 34, size: 320, elements: !1408)
!1408 = !{!1409, !1410}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1407, file: !1178, line: 35, baseType: !451, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1407, file: !1178, line: 36, baseType: !1411, size: 256, offset: 64)
!1411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1010, size: 256, elements: !1182)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1244, file: !1245, line: 766, baseType: !134, size: 32, offset: 4352)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1244, file: !1245, line: 767, baseType: !134, size: 32, offset: 4384)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1244, file: !1245, line: 768, baseType: !134, size: 32, offset: 4416)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1244, file: !1245, line: 770, baseType: !134, size: 32, offset: 4448)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1244, file: !1245, line: 772, baseType: !197, size: 64, offset: 4480)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1244, file: !1245, line: 775, baseType: !7, size: 32, offset: 4544)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1244, file: !1245, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1244, file: !1245, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1244, file: !1245, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1244, file: !1245, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1244, file: !1245, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1244, file: !1245, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1244, file: !1245, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1244, file: !1245, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1244, file: !1245, line: 831, baseType: !197, size: 64, offset: 4672)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1244, file: !1245, line: 833, baseType: !1428, size: 384, offset: 4736)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1429)
!1429 = !{!1430, !1435}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1428, file: !25, line: 26, baseType: !1431, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!340, !1434}
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, scope: !1428, file: !25, line: 27, baseType: !1436, size: 320, offset: 64)
!1436 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1428, file: !25, line: 27, size: 320, elements: !1437)
!1437 = !{!1438, !1448, !1475}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1436, file: !25, line: 36, baseType: !1439, size: 320)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1436, file: !25, line: 29, size: 320, elements: !1440)
!1440 = !{!1441, !1443, !1444, !1445, !1446, !1447}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1439, file: !25, line: 30, baseType: !1442, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1439, file: !25, line: 31, baseType: !445, size: 32, offset: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1439, file: !25, line: 32, baseType: !445, size: 32, offset: 96)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1439, file: !25, line: 33, baseType: !445, size: 32, offset: 128)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1439, file: !25, line: 34, baseType: !451, size: 64, offset: 192)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1439, file: !25, line: 35, baseType: !1442, size: 64, offset: 256)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1436, file: !25, line: 46, baseType: !1449, size: 192)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1436, file: !25, line: 38, size: 192, elements: !1450)
!1450 = !{!1451, !1452, !1453, !1474}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1449, file: !25, line: 39, baseType: !1361, size: 32)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1449, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1453 = !DIDerivedType(tag: DW_TAG_member, scope: !1449, file: !25, line: 41, baseType: !1454, size: 64, offset: 64)
!1454 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1449, file: !25, line: 41, size: 64, elements: !1455)
!1455 = !{!1456, !1464}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1454, file: !25, line: 42, baseType: !1457, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1459, line: 7, size: 128, elements: !1460)
!1459 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1460 = !{!1461, !1463}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1458, file: !1459, line: 8, baseType: !1462, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !338, line: 93, baseType: !561)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1458, file: !1459, line: 9, baseType: !561, size: 64, offset: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1454, file: !25, line: 43, baseType: !1465, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1467, line: 7, size: 64, elements: !1468)
!1467 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1468 = !{!1469, !1473}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1466, file: !1467, line: 8, baseType: !1470, size: 32)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1467, line: 5, baseType: !1471)
!1471 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !446, line: 20, baseType: !1472)
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !448, line: 26, baseType: !134)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1466, file: !1467, line: 9, baseType: !1471, size: 32, offset: 32)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1449, file: !25, line: 45, baseType: !451, size: 64, offset: 128)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1436, file: !25, line: 54, baseType: !1476, size: 256)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1436, file: !25, line: 48, size: 256, elements: !1477)
!1477 = !{!1478, !1481, !1482, !1483, !1484}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1476, file: !25, line: 49, baseType: !1479, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1476, file: !25, line: 50, baseType: !134, size: 32, offset: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1476, file: !25, line: 51, baseType: !134, size: 32, offset: 96)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1476, file: !25, line: 52, baseType: !197, size: 64, offset: 128)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1476, file: !25, line: 53, baseType: !197, size: 64, offset: 192)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1244, file: !1245, line: 835, baseType: !1486, size: 32, offset: 5120)
!1486 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !217, line: 22, baseType: !1487)
!1487 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !338, line: 28, baseType: !134)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1244, file: !1245, line: 836, baseType: !1486, size: 32, offset: 5152)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1244, file: !1245, line: 840, baseType: !197, size: 64, offset: 5184)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1244, file: !1245, line: 849, baseType: !1243, size: 64, offset: 5248)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1244, file: !1245, line: 852, baseType: !1243, size: 64, offset: 5312)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1244, file: !1245, line: 857, baseType: !253, size: 128, offset: 5376)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1244, file: !1245, line: 858, baseType: !253, size: 128, offset: 5504)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1244, file: !1245, line: 859, baseType: !1243, size: 64, offset: 5632)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1244, file: !1245, line: 867, baseType: !253, size: 128, offset: 5696)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1244, file: !1245, line: 868, baseType: !253, size: 128, offset: 5824)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1244, file: !1245, line: 871, baseType: !1498, size: 64, offset: 5952)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1500)
!1500 = !{!1501, !1502, !1503, !1504, !1506, !1507, !1514, !1515}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1499, file: !53, line: 61, baseType: !1257, size: 32)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1499, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1499, file: !53, line: 63, baseType: !266, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1499, file: !53, line: 65, baseType: !1505, size: 256, offset: 64)
!1505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !663, size: 256, elements: !1182)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1499, file: !53, line: 66, baseType: !663, size: 64, offset: 320)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1499, file: !53, line: 68, baseType: !1508, size: 128, offset: 384)
!1508 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1509, line: 40, baseType: !1510)
!1509 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1509, line: 36, size: 128, elements: !1511)
!1511 = !{!1512, !1513}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1510, file: !1509, line: 37, baseType: !266)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1510, file: !1509, line: 38, baseType: !253, size: 128)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1499, file: !53, line: 69, baseType: !395, size: 128, align: 64, offset: 512)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1499, file: !53, line: 70, baseType: !1516, size: 128, offset: 640)
!1516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1517, size: 128, elements: !1398)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1518)
!1518 = !{!1519, !1520}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1517, file: !53, line: 55, baseType: !134, size: 32)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1517, file: !53, line: 56, baseType: !1521, size: 64, offset: 64)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1244, file: !1245, line: 872, baseType: !1524, size: 512, offset: 6016)
!1524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !667, size: 512, elements: !1182)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1244, file: !1245, line: 873, baseType: !253, size: 128, offset: 6528)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1244, file: !1245, line: 874, baseType: !253, size: 128, offset: 6656)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1244, file: !1245, line: 876, baseType: !1528, size: 64, offset: 6784)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1530, line: 26, size: 192, elements: !1531)
!1530 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1531 = !{!1532, !1533}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1529, file: !1530, line: 27, baseType: !7, size: 32)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1529, file: !1530, line: 28, baseType: !1534, size: 128, offset: 64)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1535, line: 43, size: 128, elements: !1536)
!1535 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1536 = !{!1537, !1538}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1534, file: !1535, line: 44, baseType: !809)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1534, file: !1535, line: 45, baseType: !253, size: 128)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1244, file: !1245, line: 879, baseType: !733, size: 64, offset: 6848)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1244, file: !1245, line: 882, baseType: !733, size: 64, offset: 6912)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1244, file: !1245, line: 884, baseType: !451, size: 64, offset: 6976)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1244, file: !1245, line: 885, baseType: !451, size: 64, offset: 7040)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1244, file: !1245, line: 890, baseType: !451, size: 64, offset: 7104)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1244, file: !1245, line: 891, baseType: !1545, size: 128, offset: 7168)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1245, line: 242, size: 128, elements: !1546)
!1546 = !{!1547, !1548, !1549}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1545, file: !1245, line: 244, baseType: !451, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1545, file: !1245, line: 245, baseType: !451, size: 64, offset: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1545, file: !1245, line: 246, baseType: !809, offset: 128)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1244, file: !1245, line: 900, baseType: !197, size: 64, offset: 7296)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1244, file: !1245, line: 901, baseType: !197, size: 64, offset: 7360)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1244, file: !1245, line: 904, baseType: !451, size: 64, offset: 7424)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1244, file: !1245, line: 907, baseType: !451, size: 64, offset: 7488)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1244, file: !1245, line: 910, baseType: !197, size: 64, offset: 7552)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1244, file: !1245, line: 911, baseType: !197, size: 64, offset: 7616)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1244, file: !1245, line: 914, baseType: !1557, size: 640, offset: 7680)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1558, line: 123, size: 640, elements: !1559)
!1558 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1559 = !{!1560, !1566, !1567}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1557, file: !1558, line: 124, baseType: !1561, size: 576)
!1561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1562, size: 576, elements: !211)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1558, line: 108, size: 192, elements: !1563)
!1563 = !{!1564, !1565}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1562, file: !1558, line: 109, baseType: !451, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1562, file: !1558, line: 110, baseType: !1370, size: 128, offset: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1557, file: !1558, line: 125, baseType: !7, size: 32, offset: 576)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1557, file: !1558, line: 126, baseType: !7, size: 32, offset: 608)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1244, file: !1245, line: 917, baseType: !1569, size: 192, offset: 8320)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1558, line: 134, size: 192, elements: !1570)
!1570 = !{!1571, !1572}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1569, file: !1558, line: 135, baseType: !395, size: 128, align: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1569, file: !1558, line: 136, baseType: !7, size: 32, offset: 128)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1244, file: !1245, line: 923, baseType: !1574, size: 64, offset: 8512)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1576)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1577, line: 111, size: 1280, elements: !1578)
!1577 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1578 = !{!1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1598, !1599, !1600, !1601, !1602, !1603, !1710, !1711, !1712, !1713, !1739, !1742, !1752}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1576, file: !1577, line: 112, baseType: !776, size: 32)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1576, file: !1577, line: 120, baseType: !465, size: 32, offset: 32)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1576, file: !1577, line: 121, baseType: !473, size: 32, offset: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1576, file: !1577, line: 122, baseType: !465, size: 32, offset: 96)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1576, file: !1577, line: 123, baseType: !473, size: 32, offset: 128)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1576, file: !1577, line: 124, baseType: !465, size: 32, offset: 160)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1576, file: !1577, line: 125, baseType: !473, size: 32, offset: 192)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1576, file: !1577, line: 126, baseType: !465, size: 32, offset: 224)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1576, file: !1577, line: 127, baseType: !473, size: 32, offset: 256)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1576, file: !1577, line: 128, baseType: !7, size: 32, offset: 288)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1576, file: !1577, line: 129, baseType: !1590, size: 64, offset: 320)
!1590 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1591, line: 26, baseType: !1592)
!1591 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1591, line: 24, size: 64, elements: !1593)
!1593 = !{!1594}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1592, file: !1591, line: 25, baseType: !1595, size: 64)
!1595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !447, size: 64, elements: !1596)
!1596 = !{!1597}
!1597 = !DISubrange(count: 2)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1576, file: !1577, line: 130, baseType: !1590, size: 64, offset: 384)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1576, file: !1577, line: 131, baseType: !1590, size: 64, offset: 448)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1576, file: !1577, line: 132, baseType: !1590, size: 64, offset: 512)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1576, file: !1577, line: 133, baseType: !1590, size: 64, offset: 576)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1576, file: !1577, line: 135, baseType: !457, size: 8, offset: 640)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1576, file: !1577, line: 137, baseType: !1604, size: 64, offset: 704)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1606, line: 189, size: 1664, elements: !1607)
!1606 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1607 = !{!1608, !1609, !1612, !1617, !1618, !1621, !1622, !1627, !1628, !1629, !1630, !1632, !1633, !1634, !1635, !1636, !1674, !1695}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1605, file: !1606, line: 190, baseType: !1257, size: 32)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1605, file: !1606, line: 191, baseType: !1610, size: 32, offset: 32)
!1610 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1606, line: 28, baseType: !1611)
!1611 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !217, line: 98, baseType: !1471)
!1612 = !DIDerivedType(tag: DW_TAG_member, scope: !1605, file: !1606, line: 192, baseType: !1613, size: 192, offset: 64)
!1613 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1605, file: !1606, line: 192, size: 192, elements: !1614)
!1614 = !{!1615, !1616}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1613, file: !1606, line: 193, baseType: !253, size: 128)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1613, file: !1606, line: 194, baseType: !789, size: 192, align: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1605, file: !1606, line: 199, baseType: !796, size: 256, offset: 256)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1605, file: !1606, line: 200, baseType: !1619, size: 64, offset: 512)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1606, line: 200, flags: DIFlagFwdDecl)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1605, file: !1606, line: 201, baseType: !199, size: 64, offset: 576)
!1622 = !DIDerivedType(tag: DW_TAG_member, scope: !1605, file: !1606, line: 202, baseType: !1623, size: 64, offset: 640)
!1623 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1605, file: !1606, line: 202, size: 64, elements: !1624)
!1624 = !{!1625, !1626}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1623, file: !1606, line: 203, baseType: !567, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1623, file: !1606, line: 204, baseType: !567, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1605, file: !1606, line: 206, baseType: !567, size: 64, offset: 704)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1605, file: !1606, line: 207, baseType: !465, size: 32, offset: 768)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1605, file: !1606, line: 208, baseType: !473, size: 32, offset: 800)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1605, file: !1606, line: 209, baseType: !1631, size: 32, offset: 832)
!1631 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1606, line: 31, baseType: !587)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1605, file: !1606, line: 210, baseType: !347, size: 16, offset: 864)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1605, file: !1606, line: 211, baseType: !347, size: 16, offset: 880)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1605, file: !1606, line: 215, baseType: !1232, size: 16, offset: 896)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1605, file: !1606, line: 222, baseType: !197, size: 64, offset: 960)
!1636 = !DIDerivedType(tag: DW_TAG_member, scope: !1605, file: !1606, line: 239, baseType: !1637, size: 320, offset: 1024)
!1637 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1605, file: !1606, line: 239, size: 320, elements: !1638)
!1638 = !{!1639, !1666}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1637, file: !1606, line: 240, baseType: !1640, size: 320)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1606, line: 108, size: 320, elements: !1641)
!1641 = !{!1642, !1643, !1655, !1658, !1665}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1640, file: !1606, line: 110, baseType: !197, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, scope: !1640, file: !1606, line: 111, baseType: !1644, size: 64, offset: 64)
!1644 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1640, file: !1606, line: 111, size: 64, elements: !1645)
!1645 = !{!1646, !1654}
!1646 = !DIDerivedType(tag: DW_TAG_member, scope: !1644, file: !1606, line: 112, baseType: !1647, size: 64)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1644, file: !1606, line: 112, size: 64, elements: !1648)
!1648 = !{!1649, !1650}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1647, file: !1606, line: 114, baseType: !888, size: 16)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1647, file: !1606, line: 115, baseType: !1651, size: 48, offset: 16)
!1651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 48, elements: !1652)
!1652 = !{!1653}
!1653 = !DISubrange(count: 6)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1644, file: !1606, line: 121, baseType: !197, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1640, file: !1606, line: 123, baseType: !1656, size: 64, offset: 128)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1606, line: 96, flags: DIFlagFwdDecl)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1640, file: !1606, line: 124, baseType: !1659, size: 64, offset: 192)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1606, line: 102, size: 192, elements: !1661)
!1661 = !{!1662, !1663, !1664}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1660, file: !1606, line: 103, baseType: !395, size: 128, align: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1660, file: !1606, line: 104, baseType: !1257, size: 32, offset: 128)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1660, file: !1606, line: 105, baseType: !216, size: 8, offset: 160)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1640, file: !1606, line: 125, baseType: !177, size: 64, offset: 256)
!1666 = !DIDerivedType(tag: DW_TAG_member, scope: !1637, file: !1606, line: 241, baseType: !1667, size: 320)
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1637, file: !1606, line: 241, size: 320, elements: !1668)
!1668 = !{!1669, !1670, !1671, !1672, !1673}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1667, file: !1606, line: 242, baseType: !197, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1667, file: !1606, line: 243, baseType: !197, size: 64, offset: 64)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1667, file: !1606, line: 244, baseType: !1656, size: 64, offset: 128)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1667, file: !1606, line: 245, baseType: !1659, size: 64, offset: 192)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1667, file: !1606, line: 246, baseType: !307, size: 64, offset: 256)
!1674 = !DIDerivedType(tag: DW_TAG_member, scope: !1605, file: !1606, line: 254, baseType: !1675, size: 256, offset: 1344)
!1675 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1605, file: !1606, line: 254, size: 256, elements: !1676)
!1676 = !{!1677, !1683}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1675, file: !1606, line: 255, baseType: !1678, size: 256)
!1678 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1606, line: 128, size: 256, elements: !1679)
!1679 = !{!1680, !1681}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1678, file: !1606, line: 129, baseType: !199, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1678, file: !1606, line: 130, baseType: !1682, size: 256)
!1682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 256, elements: !1182)
!1683 = !DIDerivedType(tag: DW_TAG_member, scope: !1675, file: !1606, line: 256, baseType: !1684, size: 256)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1675, file: !1606, line: 256, size: 256, elements: !1685)
!1685 = !{!1686, !1687}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1684, file: !1606, line: 258, baseType: !253, size: 128)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1684, file: !1606, line: 259, baseType: !1688, size: 128, offset: 128)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1689, line: 22, size: 128, elements: !1690)
!1689 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1690 = !{!1691, !1694}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1688, file: !1689, line: 23, baseType: !1692, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1689, line: 23, flags: DIFlagFwdDecl)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1688, file: !1689, line: 24, baseType: !197, size: 64, offset: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1605, file: !1606, line: 274, baseType: !1696, size: 64, offset: 1600)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1606, line: 170, size: 192, elements: !1698)
!1698 = !{!1699, !1708, !1709}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1697, file: !1606, line: 171, baseType: !1700, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1606, line: 165, baseType: !1701)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!134, !1604, !1704, !1706, !1604}
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1657)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1678)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1697, file: !1606, line: 172, baseType: !1604, size: 64, offset: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1697, file: !1606, line: 173, baseType: !1656, size: 64, offset: 128)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1576, file: !1577, line: 138, baseType: !1604, size: 64, offset: 768)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1576, file: !1577, line: 139, baseType: !1604, size: 64, offset: 832)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1576, file: !1577, line: 140, baseType: !1604, size: 64, offset: 896)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1576, file: !1577, line: 145, baseType: !1714, size: 64, offset: 960)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1716, line: 13, size: 896, elements: !1717)
!1716 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1717 = !{!1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1715, file: !1716, line: 14, baseType: !1257, size: 32)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1715, file: !1716, line: 15, baseType: !776, size: 32, offset: 32)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1715, file: !1716, line: 16, baseType: !776, size: 32, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1715, file: !1716, line: 21, baseType: !800, size: 64, offset: 128)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1715, file: !1716, line: 27, baseType: !197, size: 64, offset: 192)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1715, file: !1716, line: 28, baseType: !197, size: 64, offset: 256)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1715, file: !1716, line: 29, baseType: !800, size: 64, offset: 320)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1715, file: !1716, line: 32, baseType: !667, size: 128, offset: 384)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1715, file: !1716, line: 33, baseType: !465, size: 32, offset: 512)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1715, file: !1716, line: 37, baseType: !800, size: 64, offset: 576)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1715, file: !1716, line: 44, baseType: !1729, size: 256, offset: 640)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1730, line: 15, size: 256, elements: !1731)
!1730 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1731 = !{!1732, !1733, !1734, !1735, !1736, !1737, !1738}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1729, file: !1730, line: 16, baseType: !809)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1729, file: !1730, line: 18, baseType: !134, size: 32)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1729, file: !1730, line: 19, baseType: !134, size: 32, offset: 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1729, file: !1730, line: 20, baseType: !134, size: 32, offset: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1729, file: !1730, line: 21, baseType: !134, size: 32, offset: 96)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1729, file: !1730, line: 22, baseType: !197, size: 64, offset: 128)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1729, file: !1730, line: 23, baseType: !197, size: 64, offset: 192)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1576, file: !1577, line: 146, baseType: !1740, size: 64, offset: 1024)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !466, line: 18, flags: DIFlagFwdDecl)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1576, file: !1577, line: 147, baseType: !1743, size: 64, offset: 1088)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1577, line: 25, size: 64, elements: !1745)
!1745 = !{!1746, !1747, !1748}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1744, file: !1577, line: 26, baseType: !776, size: 32)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1744, file: !1577, line: 27, baseType: !134, size: 32, offset: 32)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1744, file: !1577, line: 28, baseType: !1749, offset: 64)
!1749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !473, elements: !1750)
!1750 = !{!1751}
!1751 = !DISubrange(count: 0)
!1752 = !DIDerivedType(tag: DW_TAG_member, scope: !1576, file: !1577, line: 149, baseType: !1753, size: 128, offset: 1152)
!1753 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1576, file: !1577, line: 149, size: 128, elements: !1754)
!1754 = !{!1755, !1756}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1753, file: !1577, line: 150, baseType: !134, size: 32)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1753, file: !1577, line: 151, baseType: !395, size: 128, align: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1244, file: !1245, line: 926, baseType: !1574, size: 64, offset: 8576)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1244, file: !1245, line: 929, baseType: !1574, size: 64, offset: 8640)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1244, file: !1245, line: 933, baseType: !1604, size: 64, offset: 8704)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1244, file: !1245, line: 943, baseType: !1761, size: 128, offset: 8768)
!1761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 128, elements: !1762)
!1762 = !{!1763}
!1763 = !DISubrange(count: 16)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1244, file: !1245, line: 945, baseType: !1765, size: 64, offset: 8896)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1245, line: 49, flags: DIFlagFwdDecl)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1244, file: !1245, line: 956, baseType: !1768, size: 64, offset: 8960)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1245, line: 45, flags: DIFlagFwdDecl)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1244, file: !1245, line: 959, baseType: !1771, size: 64, offset: 9024)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1245, line: 959, flags: DIFlagFwdDecl)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1244, file: !1245, line: 962, baseType: !1774, size: 64, offset: 9088)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1245, line: 66, flags: DIFlagFwdDecl)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1244, file: !1245, line: 966, baseType: !1777, size: 64, offset: 9152)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1779, line: 35, flags: DIFlagFwdDecl)
!1779 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1244, file: !1245, line: 969, baseType: !1781, size: 64, offset: 9216)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1783, line: 82, size: 7296, elements: !1784)
!1783 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1784 = !{!1785, !1786, !1787, !1788, !1789, !1790, !1791, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1820, !1829, !1830, !1832, !1833, !1834, !1837, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1867, !1868, !1875, !1876, !1877, !1878, !1879, !1880}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1782, file: !1783, line: 83, baseType: !1257, size: 32)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1782, file: !1783, line: 84, baseType: !776, size: 32, offset: 32)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1782, file: !1783, line: 85, baseType: !134, size: 32, offset: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1782, file: !1783, line: 86, baseType: !253, size: 128, offset: 128)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1782, file: !1783, line: 88, baseType: !1508, size: 128, offset: 256)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1782, file: !1783, line: 91, baseType: !1243, size: 64, offset: 384)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1782, file: !1783, line: 94, baseType: !1792, size: 192, offset: 448)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1793, line: 30, size: 192, elements: !1794)
!1793 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1794 = !{!1795, !1796}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1792, file: !1793, line: 31, baseType: !253, size: 128)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1792, file: !1793, line: 32, baseType: !1797, size: 64, offset: 128)
!1797 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1798, line: 25, baseType: !1799)
!1798 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1798, line: 23, size: 64, elements: !1800)
!1800 = !{!1801}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1799, file: !1798, line: 24, baseType: !1397, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1782, file: !1783, line: 97, baseType: !663, size: 64, offset: 640)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1782, file: !1783, line: 100, baseType: !134, size: 32, offset: 704)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1782, file: !1783, line: 106, baseType: !134, size: 32, offset: 736)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1782, file: !1783, line: 107, baseType: !1243, size: 64, offset: 768)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1782, file: !1783, line: 110, baseType: !134, size: 32, offset: 832)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1782, file: !1783, line: 111, baseType: !7, size: 32, offset: 864)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1782, file: !1783, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1782, file: !1783, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1782, file: !1783, line: 128, baseType: !134, size: 32, offset: 928)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1782, file: !1783, line: 129, baseType: !253, size: 128, offset: 960)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1782, file: !1783, line: 132, baseType: !1319, size: 512, offset: 1088)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1782, file: !1783, line: 133, baseType: !1327, size: 64, offset: 1600)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1782, file: !1783, line: 140, baseType: !1815, size: 256, offset: 1664)
!1815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1816, size: 256, elements: !1596)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1783, line: 38, size: 128, elements: !1817)
!1817 = !{!1818, !1819}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1816, file: !1783, line: 39, baseType: !451, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1816, file: !1783, line: 40, baseType: !451, size: 64, offset: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1782, file: !1783, line: 146, baseType: !1821, size: 192, offset: 1920)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1783, line: 66, size: 192, elements: !1822)
!1822 = !{!1823}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1821, file: !1783, line: 67, baseType: !1824, size: 192)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1783, line: 47, size: 192, elements: !1825)
!1825 = !{!1826, !1827, !1828}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1824, file: !1783, line: 48, baseType: !802, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1824, file: !1783, line: 49, baseType: !802, size: 64, offset: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1824, file: !1783, line: 50, baseType: !802, size: 64, offset: 128)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1782, file: !1783, line: 150, baseType: !1557, size: 640, offset: 2112)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1782, file: !1783, line: 153, baseType: !1831, size: 256, offset: 2752)
!1831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1498, size: 256, elements: !1182)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1782, file: !1783, line: 159, baseType: !1498, size: 64, offset: 3008)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1782, file: !1783, line: 162, baseType: !134, size: 32, offset: 3072)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1782, file: !1783, line: 164, baseType: !1835, size: 64, offset: 3136)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1783, line: 164, flags: DIFlagFwdDecl)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1782, file: !1783, line: 175, baseType: !1838, size: 32, offset: 3200)
!1838 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !418, line: 805, baseType: !1839)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !418, line: 798, size: 32, elements: !1840)
!1840 = !{!1841, !1842}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1839, file: !418, line: 803, baseType: !417, size: 32)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1839, file: !418, line: 804, baseType: !266, offset: 32)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1782, file: !1783, line: 176, baseType: !451, size: 64, offset: 3264)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1782, file: !1783, line: 176, baseType: !451, size: 64, offset: 3328)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1782, file: !1783, line: 176, baseType: !451, size: 64, offset: 3392)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1782, file: !1783, line: 176, baseType: !451, size: 64, offset: 3456)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1782, file: !1783, line: 177, baseType: !451, size: 64, offset: 3520)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1782, file: !1783, line: 178, baseType: !451, size: 64, offset: 3584)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1782, file: !1783, line: 179, baseType: !1545, size: 128, offset: 3648)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1782, file: !1783, line: 180, baseType: !197, size: 64, offset: 3776)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1782, file: !1783, line: 180, baseType: !197, size: 64, offset: 3840)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1782, file: !1783, line: 180, baseType: !197, size: 64, offset: 3904)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1782, file: !1783, line: 180, baseType: !197, size: 64, offset: 3968)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1782, file: !1783, line: 181, baseType: !197, size: 64, offset: 4032)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1782, file: !1783, line: 181, baseType: !197, size: 64, offset: 4096)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1782, file: !1783, line: 181, baseType: !197, size: 64, offset: 4160)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1782, file: !1783, line: 181, baseType: !197, size: 64, offset: 4224)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1782, file: !1783, line: 182, baseType: !197, size: 64, offset: 4288)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1782, file: !1783, line: 182, baseType: !197, size: 64, offset: 4352)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1782, file: !1783, line: 182, baseType: !197, size: 64, offset: 4416)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1782, file: !1783, line: 182, baseType: !197, size: 64, offset: 4480)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1782, file: !1783, line: 183, baseType: !197, size: 64, offset: 4544)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1782, file: !1783, line: 183, baseType: !197, size: 64, offset: 4608)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1782, file: !1783, line: 184, baseType: !1865, offset: 4672)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1866, line: 12, elements: !280)
!1866 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1782, file: !1783, line: 192, baseType: !453, size: 64, offset: 4672)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1782, file: !1783, line: 203, baseType: !1869, size: 2048, offset: 4736)
!1869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1870, size: 2048, elements: !1762)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1871, line: 43, size: 128, elements: !1872)
!1871 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1872 = !{!1873, !1874}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1870, file: !1871, line: 44, baseType: !354, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1870, file: !1871, line: 45, baseType: !354, size: 64, offset: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1782, file: !1783, line: 220, baseType: !216, size: 8, offset: 6784)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1782, file: !1783, line: 221, baseType: !1232, size: 16, offset: 6800)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1782, file: !1783, line: 222, baseType: !1232, size: 16, offset: 6816)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1782, file: !1783, line: 224, baseType: !1003, size: 64, offset: 6848)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1782, file: !1783, line: 227, baseType: !1200, size: 192, offset: 6912)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1782, file: !1783, line: 233, baseType: !1200, size: 192, offset: 7104)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1244, file: !1245, line: 970, baseType: !1882, size: 64, offset: 9280)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1783, line: 20, size: 16576, elements: !1884)
!1884 = !{!1885, !1886, !1887, !1888}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1883, file: !1783, line: 21, baseType: !266)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1883, file: !1783, line: 22, baseType: !1257, size: 32)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1883, file: !1783, line: 23, baseType: !1508, size: 128, offset: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1883, file: !1783, line: 24, baseType: !1889, size: 16384, offset: 192)
!1889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1890, size: 16384, elements: !310)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1793, line: 49, size: 256, elements: !1891)
!1891 = !{!1892}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1890, file: !1793, line: 50, baseType: !1893, size: 256)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1793, line: 35, size: 256, elements: !1894)
!1894 = !{!1895, !1902, !1903, !1907}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1893, file: !1793, line: 37, baseType: !1896, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1897, line: 19, baseType: !1898)
!1897 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1897, line: 18, baseType: !1900)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{null, !134}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1893, file: !1793, line: 38, baseType: !197, size: 64, offset: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1893, file: !1793, line: 44, baseType: !1904, size: 64, offset: 128)
!1904 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1897, line: 22, baseType: !1905)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1897, line: 21, baseType: !141)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1893, file: !1793, line: 46, baseType: !1797, size: 64, offset: 192)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1244, file: !1245, line: 971, baseType: !1797, size: 64, offset: 9344)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1244, file: !1245, line: 972, baseType: !1797, size: 64, offset: 9408)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1244, file: !1245, line: 974, baseType: !1797, size: 64, offset: 9472)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1244, file: !1245, line: 975, baseType: !1792, size: 192, offset: 9536)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1244, file: !1245, line: 976, baseType: !197, size: 64, offset: 9728)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1244, file: !1245, line: 977, baseType: !352, size: 64, offset: 9792)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1244, file: !1245, line: 978, baseType: !7, size: 32, offset: 9856)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1244, file: !1245, line: 980, baseType: !398, size: 64, offset: 9920)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1244, file: !1245, line: 989, baseType: !1917, size: 128, offset: 9984)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1918, line: 35, size: 128, elements: !1919)
!1918 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1919 = !{!1920, !1921, !1922}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1917, file: !1918, line: 36, baseType: !134, size: 32)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1917, file: !1918, line: 37, baseType: !776, size: 32, offset: 32)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1917, file: !1918, line: 38, baseType: !1923, size: 64, offset: 64)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1918, line: 23, flags: DIFlagFwdDecl)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1244, file: !1245, line: 992, baseType: !451, size: 64, offset: 10112)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1244, file: !1245, line: 993, baseType: !451, size: 64, offset: 10176)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1244, file: !1245, line: 996, baseType: !266, offset: 10240)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1244, file: !1245, line: 999, baseType: !809, offset: 10240)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1244, file: !1245, line: 1001, baseType: !1930, size: 64, offset: 10240)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1245, line: 636, size: 64, elements: !1931)
!1931 = !{!1932}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1930, file: !1245, line: 637, baseType: !1933, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1244, file: !1245, line: 1005, baseType: !781, size: 128, offset: 10304)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1244, file: !1245, line: 1007, baseType: !1243, size: 64, offset: 10432)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1244, file: !1245, line: 1009, baseType: !1937, size: 64, offset: 10496)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1245, line: 1009, flags: DIFlagFwdDecl)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1244, file: !1245, line: 1043, baseType: !199, size: 64, offset: 10560)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1244, file: !1245, line: 1046, baseType: !1941, size: 64, offset: 10624)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1245, line: 41, flags: DIFlagFwdDecl)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1244, file: !1245, line: 1050, baseType: !1944, size: 64, offset: 10688)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1245, line: 42, flags: DIFlagFwdDecl)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1244, file: !1245, line: 1054, baseType: !1947, size: 64, offset: 10752)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1245, line: 55, flags: DIFlagFwdDecl)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1244, file: !1245, line: 1056, baseType: !1950, size: 64, offset: 10816)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1245, line: 40, flags: DIFlagFwdDecl)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1244, file: !1245, line: 1058, baseType: !1953, size: 64, offset: 10880)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1955, line: 99, size: 704, elements: !1956)
!1955 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1956 = !{!1957, !1958, !1959, !1960, !1961, !1962, !1963, !1982, !1983}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1954, file: !1955, line: 100, baseType: !800, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1954, file: !1955, line: 101, baseType: !776, size: 32, offset: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1954, file: !1955, line: 102, baseType: !776, size: 32, offset: 96)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1954, file: !1955, line: 105, baseType: !266, offset: 128)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1954, file: !1955, line: 107, baseType: !347, size: 16, offset: 128)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1954, file: !1955, line: 109, baseType: !767, size: 128, offset: 192)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1954, file: !1955, line: 110, baseType: !1964, size: 64, offset: 320)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1955, line: 73, size: 448, elements: !1966)
!1966 = !{!1967, !1970, !1971, !1976, !1981}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1965, file: !1955, line: 74, baseType: !1968, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1955, line: 74, flags: DIFlagFwdDecl)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1965, file: !1955, line: 75, baseType: !1953, size: 64, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, scope: !1965, file: !1955, line: 83, baseType: !1972, size: 128, offset: 128)
!1972 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1965, file: !1955, line: 83, size: 128, elements: !1973)
!1973 = !{!1974, !1975}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1972, file: !1955, line: 84, baseType: !253, size: 128)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1972, file: !1955, line: 85, baseType: !964, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, scope: !1965, file: !1955, line: 87, baseType: !1977, size: 128, offset: 256)
!1977 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1965, file: !1955, line: 87, size: 128, elements: !1978)
!1978 = !{!1979, !1980}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1977, file: !1955, line: 88, baseType: !667, size: 128)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1977, file: !1955, line: 89, baseType: !395, size: 128, align: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1965, file: !1955, line: 92, baseType: !7, size: 32, offset: 384)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1954, file: !1955, line: 111, baseType: !663, size: 64, offset: 384)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1954, file: !1955, line: 113, baseType: !1984, size: 256, offset: 448)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1985, line: 102, size: 256, elements: !1986)
!1985 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1986 = !{!1987, !1988, !1989}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1984, file: !1985, line: 103, baseType: !800, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1984, file: !1985, line: 104, baseType: !253, size: 128, offset: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1984, file: !1985, line: 105, baseType: !1990, size: 64, offset: 192)
!1990 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1985, line: 21, baseType: !1991)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{null, !1994}
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1244, file: !1245, line: 1061, baseType: !1996, size: 64, offset: 10944)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1245, line: 43, flags: DIFlagFwdDecl)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1244, file: !1245, line: 1064, baseType: !197, size: 64, offset: 11008)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1244, file: !1245, line: 1065, baseType: !2000, size: 64, offset: 11072)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1793, line: 14, baseType: !2002)
!2002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1793, line: 12, size: 384, elements: !2003)
!2003 = !{!2004}
!2004 = !DIDerivedType(tag: DW_TAG_member, scope: !2002, file: !1793, line: 13, baseType: !2005, size: 384)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2002, file: !1793, line: 13, size: 384, elements: !2006)
!2006 = !{!2007, !2008, !2009, !2010}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2005, file: !1793, line: 13, baseType: !134, size: 32)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2005, file: !1793, line: 13, baseType: !134, size: 32, offset: 32)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2005, file: !1793, line: 13, baseType: !134, size: 32, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2005, file: !1793, line: 13, baseType: !2011, size: 256, offset: 128)
!2011 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2012, line: 32, size: 256, elements: !2013)
!2012 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2013 = !{!2014, !2019, !2032, !2038, !2047, !2067, !2072}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2011, file: !2012, line: 37, baseType: !2015, size: 64)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2011, file: !2012, line: 34, size: 64, elements: !2016)
!2016 = !{!2017, !2018}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2015, file: !2012, line: 35, baseType: !1487, size: 32)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2015, file: !2012, line: 36, baseType: !471, size: 32, offset: 32)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2011, file: !2012, line: 45, baseType: !2020, size: 192)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2011, file: !2012, line: 40, size: 192, elements: !2021)
!2021 = !{!2022, !2024, !2025, !2031}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2020, file: !2012, line: 41, baseType: !2023, size: 32)
!2023 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !338, line: 95, baseType: !134)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2020, file: !2012, line: 42, baseType: !134, size: 32, offset: 32)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2020, file: !2012, line: 43, baseType: !2026, size: 64, offset: 64)
!2026 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2012, line: 11, baseType: !2027)
!2027 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2012, line: 8, size: 64, elements: !2028)
!2028 = !{!2029, !2030}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2027, file: !2012, line: 9, baseType: !134, size: 32)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2027, file: !2012, line: 10, baseType: !199, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2020, file: !2012, line: 44, baseType: !134, size: 32, offset: 128)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2011, file: !2012, line: 52, baseType: !2033, size: 128)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2011, file: !2012, line: 48, size: 128, elements: !2034)
!2034 = !{!2035, !2036, !2037}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2033, file: !2012, line: 49, baseType: !1487, size: 32)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2033, file: !2012, line: 50, baseType: !471, size: 32, offset: 32)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2033, file: !2012, line: 51, baseType: !2026, size: 64, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2011, file: !2012, line: 61, baseType: !2039, size: 256)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2011, file: !2012, line: 55, size: 256, elements: !2040)
!2040 = !{!2041, !2042, !2043, !2044, !2046}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2039, file: !2012, line: 56, baseType: !1487, size: 32)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2039, file: !2012, line: 57, baseType: !471, size: 32, offset: 32)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2039, file: !2012, line: 58, baseType: !134, size: 32, offset: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2039, file: !2012, line: 59, baseType: !2045, size: 64, offset: 128)
!2045 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !338, line: 94, baseType: !339)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2039, file: !2012, line: 60, baseType: !2045, size: 64, offset: 192)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2011, file: !2012, line: 95, baseType: !2048, size: 256)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2011, file: !2012, line: 64, size: 256, elements: !2049)
!2049 = !{!2050, !2051}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2048, file: !2012, line: 65, baseType: !199, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, scope: !2048, file: !2012, line: 77, baseType: !2052, size: 192, offset: 64)
!2052 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2048, file: !2012, line: 77, size: 192, elements: !2053)
!2053 = !{!2054, !2055, !2062}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2052, file: !2012, line: 82, baseType: !1232, size: 16)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2052, file: !2012, line: 88, baseType: !2056, size: 192)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2052, file: !2012, line: 84, size: 192, elements: !2057)
!2057 = !{!2058, !2060, !2061}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2056, file: !2012, line: 85, baseType: !2059, size: 64)
!2059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 64, elements: !1357)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2056, file: !2012, line: 86, baseType: !199, size: 64, offset: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2056, file: !2012, line: 87, baseType: !199, size: 64, offset: 128)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2052, file: !2012, line: 93, baseType: !2063, size: 96)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2052, file: !2012, line: 90, size: 96, elements: !2064)
!2064 = !{!2065, !2066}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2063, file: !2012, line: 91, baseType: !2059, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2063, file: !2012, line: 92, baseType: !447, size: 32, offset: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2011, file: !2012, line: 101, baseType: !2068, size: 128)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2011, file: !2012, line: 98, size: 128, elements: !2069)
!2069 = !{!2070, !2071}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2068, file: !2012, line: 99, baseType: !340, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2068, file: !2012, line: 100, baseType: !134, size: 32, offset: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2011, file: !2012, line: 108, baseType: !2073, size: 128)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2011, file: !2012, line: 104, size: 128, elements: !2074)
!2074 = !{!2075, !2076, !2077}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2073, file: !2012, line: 105, baseType: !199, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2073, file: !2012, line: 106, baseType: !134, size: 32, offset: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2073, file: !2012, line: 107, baseType: !7, size: 32, offset: 96)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1244, file: !1245, line: 1067, baseType: !1865, offset: 11136)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1244, file: !1245, line: 1099, baseType: !2080, size: 64, offset: 11136)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1245, line: 56, flags: DIFlagFwdDecl)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1244, file: !1245, line: 1103, baseType: !253, size: 128, offset: 11200)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1244, file: !1245, line: 1104, baseType: !2084, size: 64, offset: 11328)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1245, line: 46, flags: DIFlagFwdDecl)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1244, file: !1245, line: 1105, baseType: !1200, size: 192, offset: 11392)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1244, file: !1245, line: 1106, baseType: !7, size: 32, offset: 11584)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1244, file: !1245, line: 1109, baseType: !2089, size: 128, offset: 11648)
!2089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2090, size: 128, elements: !1596)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1245, line: 51, flags: DIFlagFwdDecl)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1244, file: !1245, line: 1110, baseType: !1200, size: 192, offset: 11776)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1244, file: !1245, line: 1111, baseType: !253, size: 128, offset: 11968)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1244, file: !1245, line: 1173, baseType: !2095, size: 64, offset: 12096)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2097, line: 62, size: 256, align: 256, elements: !2098)
!2097 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2098 = !{!2099, !2100, !2101, !2106}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2096, file: !2097, line: 75, baseType: !447, size: 32)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2096, file: !2097, line: 90, baseType: !447, size: 32, offset: 32)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2096, file: !2097, line: 124, baseType: !2102, size: 64, offset: 64)
!2102 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2096, file: !2097, line: 109, size: 64, elements: !2103)
!2103 = !{!2104, !2105}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2102, file: !2097, line: 110, baseType: !452, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2102, file: !2097, line: 112, baseType: !452, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2096, file: !2097, line: 144, baseType: !447, size: 32, offset: 128)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1244, file: !1245, line: 1174, baseType: !445, size: 32, offset: 12160)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1244, file: !1245, line: 1179, baseType: !197, size: 64, offset: 12224)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1244, file: !1245, line: 1182, baseType: !2110, size: 128, offset: 12288)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1178, line: 76, size: 128, elements: !2111)
!2111 = !{!2112, !2117, !2118}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2110, file: !1178, line: 85, baseType: !2113, size: 64)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2114, line: 7, size: 64, elements: !2115)
!2114 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2115 = !{!2116}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2113, file: !2114, line: 12, baseType: !1394, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2110, file: !1178, line: 88, baseType: !216, size: 8, offset: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2110, file: !1178, line: 95, baseType: !216, size: 8, offset: 72)
!2119 = !DIDerivedType(tag: DW_TAG_member, scope: !1244, file: !1245, line: 1184, baseType: !2120, size: 128, offset: 12416)
!2120 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1244, file: !1245, line: 1184, size: 128, elements: !2121)
!2121 = !{!2122, !2123}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2120, file: !1245, line: 1185, baseType: !1257, size: 32)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2120, file: !1245, line: 1186, baseType: !395, size: 128, align: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1244, file: !1245, line: 1190, baseType: !2125, size: 64, offset: 12544)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1245, line: 53, flags: DIFlagFwdDecl)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1244, file: !1245, line: 1192, baseType: !2128, size: 128, offset: 12608)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1178, line: 64, size: 128, elements: !2129)
!2129 = !{!2130, !2131, !2132}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2128, file: !1178, line: 65, baseType: !749, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2128, file: !1178, line: 67, baseType: !447, size: 32, offset: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2128, file: !1178, line: 68, baseType: !447, size: 32, offset: 96)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1244, file: !1245, line: 1206, baseType: !134, size: 32, offset: 12736)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1244, file: !1245, line: 1207, baseType: !134, size: 32, offset: 12768)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1244, file: !1245, line: 1209, baseType: !197, size: 64, offset: 12800)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1244, file: !1245, line: 1219, baseType: !451, size: 64, offset: 12864)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1244, file: !1245, line: 1220, baseType: !451, size: 64, offset: 12928)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1244, file: !1245, line: 1317, baseType: !134, size: 32, offset: 12992)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1244, file: !1245, line: 1319, baseType: !1243, size: 64, offset: 13056)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1244, file: !1245, line: 1322, baseType: !2141, size: 64, offset: 13120)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2143, line: 56, size: 512, elements: !2144)
!2143 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2144 = !{!2145, !2146, !2147, !2148, !2149, !2150, !2151, !2153}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2142, file: !2143, line: 57, baseType: !2141, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2142, file: !2143, line: 58, baseType: !199, size: 64, offset: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2142, file: !2143, line: 59, baseType: !197, size: 64, offset: 128)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2142, file: !2143, line: 60, baseType: !197, size: 64, offset: 192)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2142, file: !2143, line: 61, baseType: !849, size: 64, offset: 256)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2142, file: !2143, line: 62, baseType: !7, size: 32, offset: 320)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2142, file: !2143, line: 63, baseType: !2152, size: 64, offset: 384)
!2152 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !217, line: 153, baseType: !451)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2142, file: !2143, line: 64, baseType: !2154, size: 64, offset: 448)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1244, file: !1245, line: 1326, baseType: !1257, size: 32, offset: 13184)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1244, file: !1245, line: 1342, baseType: !199, size: 64, offset: 13248)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1244, file: !1245, line: 1343, baseType: !452, size: 64, offset: 13312)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1244, file: !1245, line: 1344, baseType: !451, size: 64, offset: 13376)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1244, file: !1245, line: 1345, baseType: !452, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1244, file: !1245, line: 1346, baseType: !452, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1244, file: !1245, line: 1347, baseType: !452, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1244, file: !1245, line: 1348, baseType: !395, size: 128, align: 64, offset: 13504)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1244, file: !1245, line: 1358, baseType: !2165, size: 34816, offset: 13824)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2166, line: 485, size: 34816, elements: !2167)
!2166 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2167 = !{!2168, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2197, !2198, !2199, !2200, !2201, !2202, !2205, !2206, !2207}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2165, file: !2166, line: 487, baseType: !2169, size: 192)
!2169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2170, size: 192, elements: !211)
!2170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2171, line: 16, size: 64, elements: !2172)
!2171 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2172 = !{!2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2170, file: !2171, line: 17, baseType: !888, size: 16)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2170, file: !2171, line: 18, baseType: !888, size: 16, offset: 16)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2170, file: !2171, line: 19, baseType: !888, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2170, file: !2171, line: 19, baseType: !888, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2170, file: !2171, line: 19, baseType: !888, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2170, file: !2171, line: 19, baseType: !888, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2170, file: !2171, line: 19, baseType: !888, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2170, file: !2171, line: 20, baseType: !888, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2170, file: !2171, line: 20, baseType: !888, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2170, file: !2171, line: 20, baseType: !888, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2170, file: !2171, line: 20, baseType: !888, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2170, file: !2171, line: 20, baseType: !888, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2170, file: !2171, line: 20, baseType: !888, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2165, file: !2166, line: 491, baseType: !197, size: 64, offset: 192)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2165, file: !2166, line: 495, baseType: !347, size: 16, offset: 256)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2165, file: !2166, line: 496, baseType: !347, size: 16, offset: 272)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2165, file: !2166, line: 497, baseType: !347, size: 16, offset: 288)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2165, file: !2166, line: 498, baseType: !347, size: 16, offset: 304)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2165, file: !2166, line: 502, baseType: !197, size: 64, offset: 320)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2165, file: !2166, line: 503, baseType: !197, size: 64, offset: 384)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2165, file: !2166, line: 514, baseType: !2194, size: 256, offset: 448)
!2194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2195, size: 256, elements: !1182)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2166, line: 483, flags: DIFlagFwdDecl)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2165, file: !2166, line: 516, baseType: !197, size: 64, offset: 704)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2165, file: !2166, line: 518, baseType: !197, size: 64, offset: 768)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2165, file: !2166, line: 520, baseType: !197, size: 64, offset: 832)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2165, file: !2166, line: 521, baseType: !197, size: 64, offset: 896)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2165, file: !2166, line: 522, baseType: !197, size: 64, offset: 960)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2165, file: !2166, line: 528, baseType: !2203, size: 64, offset: 1024)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2166, line: 10, flags: DIFlagFwdDecl)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2165, file: !2166, line: 535, baseType: !197, size: 64, offset: 1088)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2165, file: !2166, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2165, file: !2166, line: 540, baseType: !2208, size: 33280, offset: 1536)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2209, line: 317, size: 33280, elements: !2210)
!2209 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2210 = !{!2211, !2212, !2213}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2208, file: !2209, line: 330, baseType: !7, size: 32)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2208, file: !2209, line: 337, baseType: !197, size: 64, offset: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2208, file: !2209, line: 348, baseType: !2214, size: 32768, offset: 512)
!2214 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2209, line: 304, size: 32768, elements: !2215)
!2215 = !{!2216, !2231, !2270, !2320, !2333}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2214, file: !2209, line: 305, baseType: !2217, size: 896)
!2217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2209, line: 12, size: 896, elements: !2218)
!2218 = !{!2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2230}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2217, file: !2209, line: 13, baseType: !445, size: 32)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2217, file: !2209, line: 14, baseType: !445, size: 32, offset: 32)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2217, file: !2209, line: 15, baseType: !445, size: 32, offset: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2217, file: !2209, line: 16, baseType: !445, size: 32, offset: 96)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2217, file: !2209, line: 17, baseType: !445, size: 32, offset: 128)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2217, file: !2209, line: 18, baseType: !445, size: 32, offset: 160)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2217, file: !2209, line: 19, baseType: !445, size: 32, offset: 192)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2217, file: !2209, line: 22, baseType: !2227, size: 640, offset: 224)
!2227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 640, elements: !2228)
!2228 = !{!2229}
!2229 = !DISubrange(count: 20)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2217, file: !2209, line: 25, baseType: !445, size: 32, offset: 864)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2214, file: !2209, line: 306, baseType: !2232, size: 4096, align: 128)
!2232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2209, line: 34, size: 4096, align: 128, elements: !2233)
!2233 = !{!2234, !2235, !2236, !2237, !2238, !2253, !2254, !2255, !2259, !2261, !2265}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2232, file: !2209, line: 35, baseType: !888, size: 16)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2232, file: !2209, line: 36, baseType: !888, size: 16, offset: 16)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2232, file: !2209, line: 37, baseType: !888, size: 16, offset: 32)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2232, file: !2209, line: 38, baseType: !888, size: 16, offset: 48)
!2238 = !DIDerivedType(tag: DW_TAG_member, scope: !2232, file: !2209, line: 39, baseType: !2239, size: 128, offset: 64)
!2239 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2232, file: !2209, line: 39, size: 128, elements: !2240)
!2240 = !{!2241, !2246}
!2241 = !DIDerivedType(tag: DW_TAG_member, scope: !2239, file: !2209, line: 40, baseType: !2242, size: 128)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2239, file: !2209, line: 40, size: 128, elements: !2243)
!2243 = !{!2244, !2245}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2242, file: !2209, line: 41, baseType: !451, size: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2242, file: !2209, line: 42, baseType: !451, size: 64, offset: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, scope: !2239, file: !2209, line: 44, baseType: !2247, size: 128)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2239, file: !2209, line: 44, size: 128, elements: !2248)
!2248 = !{!2249, !2250, !2251, !2252}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2247, file: !2209, line: 45, baseType: !445, size: 32)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2247, file: !2209, line: 46, baseType: !445, size: 32, offset: 32)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2247, file: !2209, line: 47, baseType: !445, size: 32, offset: 64)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2247, file: !2209, line: 48, baseType: !445, size: 32, offset: 96)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2232, file: !2209, line: 51, baseType: !445, size: 32, offset: 192)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2232, file: !2209, line: 52, baseType: !445, size: 32, offset: 224)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2232, file: !2209, line: 55, baseType: !2256, size: 1024, offset: 256)
!2256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 1024, elements: !2257)
!2257 = !{!2258}
!2258 = !DISubrange(count: 32)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2232, file: !2209, line: 58, baseType: !2260, size: 2048, offset: 1280)
!2260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 2048, elements: !310)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2232, file: !2209, line: 60, baseType: !2262, size: 384, offset: 3328)
!2262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 384, elements: !2263)
!2263 = !{!2264}
!2264 = !DISubrange(count: 12)
!2265 = !DIDerivedType(tag: DW_TAG_member, scope: !2232, file: !2209, line: 62, baseType: !2266, size: 384, offset: 3712)
!2266 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2232, file: !2209, line: 62, size: 384, elements: !2267)
!2267 = !{!2268, !2269}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2266, file: !2209, line: 63, baseType: !2262, size: 384)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2266, file: !2209, line: 64, baseType: !2262, size: 384)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2214, file: !2209, line: 307, baseType: !2271, size: 1088)
!2271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2209, line: 79, size: 1088, elements: !2272)
!2272 = !{!2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2319}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2271, file: !2209, line: 80, baseType: !445, size: 32)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2271, file: !2209, line: 81, baseType: !445, size: 32, offset: 32)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2271, file: !2209, line: 82, baseType: !445, size: 32, offset: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2271, file: !2209, line: 83, baseType: !445, size: 32, offset: 96)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2271, file: !2209, line: 84, baseType: !445, size: 32, offset: 128)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2271, file: !2209, line: 85, baseType: !445, size: 32, offset: 160)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2271, file: !2209, line: 86, baseType: !445, size: 32, offset: 192)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2271, file: !2209, line: 88, baseType: !2227, size: 640, offset: 224)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2271, file: !2209, line: 89, baseType: !1379, size: 8, offset: 864)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2271, file: !2209, line: 90, baseType: !1379, size: 8, offset: 872)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2271, file: !2209, line: 91, baseType: !1379, size: 8, offset: 880)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2271, file: !2209, line: 92, baseType: !1379, size: 8, offset: 888)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2271, file: !2209, line: 93, baseType: !1379, size: 8, offset: 896)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2271, file: !2209, line: 94, baseType: !1379, size: 8, offset: 904)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2271, file: !2209, line: 95, baseType: !2288, size: 64, offset: 960)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2290, line: 11, size: 128, elements: !2291)
!2290 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2291 = !{!2292, !2293}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2289, file: !2290, line: 12, baseType: !340, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2289, file: !2290, line: 13, baseType: !2294, size: 64, offset: 64)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2296, line: 56, size: 1344, elements: !2297)
!2296 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2297 = !{!2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2295, file: !2296, line: 61, baseType: !197, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2295, file: !2296, line: 62, baseType: !197, size: 64, offset: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2295, file: !2296, line: 63, baseType: !197, size: 64, offset: 128)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2295, file: !2296, line: 64, baseType: !197, size: 64, offset: 192)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2295, file: !2296, line: 65, baseType: !197, size: 64, offset: 256)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2295, file: !2296, line: 66, baseType: !197, size: 64, offset: 320)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2295, file: !2296, line: 68, baseType: !197, size: 64, offset: 384)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2295, file: !2296, line: 69, baseType: !197, size: 64, offset: 448)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2295, file: !2296, line: 70, baseType: !197, size: 64, offset: 512)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2295, file: !2296, line: 71, baseType: !197, size: 64, offset: 576)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2295, file: !2296, line: 72, baseType: !197, size: 64, offset: 640)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2295, file: !2296, line: 73, baseType: !197, size: 64, offset: 704)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2295, file: !2296, line: 74, baseType: !197, size: 64, offset: 768)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2295, file: !2296, line: 75, baseType: !197, size: 64, offset: 832)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2295, file: !2296, line: 76, baseType: !197, size: 64, offset: 896)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2295, file: !2296, line: 81, baseType: !197, size: 64, offset: 960)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2295, file: !2296, line: 83, baseType: !197, size: 64, offset: 1024)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2295, file: !2296, line: 84, baseType: !197, size: 64, offset: 1088)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2295, file: !2296, line: 85, baseType: !197, size: 64, offset: 1152)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2295, file: !2296, line: 86, baseType: !197, size: 64, offset: 1216)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2295, file: !2296, line: 87, baseType: !197, size: 64, offset: 1280)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2271, file: !2209, line: 96, baseType: !445, size: 32, offset: 1024)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2214, file: !2209, line: 308, baseType: !2321, size: 4608, align: 512)
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2209, line: 289, size: 4608, align: 512, elements: !2322)
!2322 = !{!2323, !2324, !2331}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2321, file: !2209, line: 290, baseType: !2232, size: 4096, align: 128)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2321, file: !2209, line: 291, baseType: !2325, size: 512, offset: 4096)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2209, line: 268, size: 512, elements: !2326)
!2326 = !{!2327, !2328, !2329}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2325, file: !2209, line: 269, baseType: !451, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2325, file: !2209, line: 270, baseType: !451, size: 64, offset: 64)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2325, file: !2209, line: 271, baseType: !2330, size: 384, offset: 128)
!2330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, size: 384, elements: !1652)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2321, file: !2209, line: 292, baseType: !2332, offset: 4608)
!2332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1379, elements: !1750)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2214, file: !2209, line: 309, baseType: !2334, size: 32768)
!2334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1379, size: 32768, elements: !2335)
!2335 = !{!2336}
!2336 = !DISubrange(count: 4096)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1240, file: !751, line: 378, baseType: !2338, size: 64, offset: 64)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1236, file: !751, line: 384, baseType: !1529, size: 192, offset: 192)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1007, file: !751, line: 500, baseType: !266, offset: 6656)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1007, file: !751, line: 501, baseType: !2342, size: 64, offset: 6656)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !751, line: 387, flags: DIFlagFwdDecl)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1007, file: !751, line: 516, baseType: !1740, size: 64, offset: 6720)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1007, file: !751, line: 519, baseType: !382, size: 64, offset: 6784)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1007, file: !751, line: 521, baseType: !2347, size: 64, offset: 6848)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !751, line: 521, flags: DIFlagFwdDecl)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1007, file: !751, line: 545, baseType: !776, size: 32, offset: 6912)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1007, file: !751, line: 548, baseType: !216, size: 8, offset: 6944)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1007, file: !751, line: 550, baseType: !2352, offset: 6952)
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2353, line: 142, elements: !280)
!2353 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1007, file: !751, line: 554, baseType: !1984, size: 256, offset: 6976)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1007, file: !751, line: 557, baseType: !445, size: 32, offset: 7232)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1004, file: !751, line: 565, baseType: !2357, offset: 7296)
!2357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, elements: !2358)
!2358 = !{!2359}
!2359 = !DISubrange(count: -1)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1000, file: !751, line: 151, baseType: !776, size: 32)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !993, file: !751, line: 156, baseType: !266, offset: 256)
!2362 = !DIDerivedType(tag: DW_TAG_member, scope: !755, file: !751, line: 159, baseType: !2363, size: 128)
!2363 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !755, file: !751, line: 159, size: 128, elements: !2364)
!2364 = !{!2365, !2429}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2363, file: !751, line: 161, baseType: !2366, size: 64)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2368)
!2368 = !{!2369, !2379, !2400, !2401, !2402, !2403, !2404, !2416, !2417, !2418}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2367, file: !31, line: 111, baseType: !2370, size: 384)
!2370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2371)
!2371 = !{!2372, !2374, !2375, !2376, !2377, !2378}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2370, file: !31, line: 20, baseType: !2373, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2370, file: !31, line: 21, baseType: !2373, size: 64, offset: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2370, file: !31, line: 22, baseType: !2373, size: 64, offset: 128)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2370, file: !31, line: 23, baseType: !197, size: 64, offset: 192)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2370, file: !31, line: 24, baseType: !197, size: 64, offset: 256)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2370, file: !31, line: 25, baseType: !197, size: 64, offset: 320)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2367, file: !31, line: 112, baseType: !2380, size: 64, offset: 384)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2382, line: 105, size: 128, elements: !2383)
!2382 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2383 = !{!2384, !2385}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2381, file: !2382, line: 110, baseType: !197, size: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2381, file: !2382, line: 118, baseType: !2386, size: 64, offset: 64)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2382, line: 95, size: 448, elements: !2388)
!2388 = !{!2389, !2390, !2395, !2396, !2397, !2398, !2399}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2387, file: !2382, line: 96, baseType: !800, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2387, file: !2382, line: 97, baseType: !2391, size: 64, offset: 64)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2382, line: 60, baseType: !2393)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{null, !2380}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2387, file: !2382, line: 98, baseType: !2391, size: 64, offset: 128)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2387, file: !2382, line: 99, baseType: !216, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2387, file: !2382, line: 100, baseType: !216, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2387, file: !2382, line: 101, baseType: !395, size: 128, align: 64, offset: 256)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2387, file: !2382, line: 102, baseType: !2380, size: 64, offset: 384)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2367, file: !31, line: 113, baseType: !2381, size: 128, offset: 448)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2367, file: !31, line: 114, baseType: !1529, size: 192, offset: 576)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2367, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2367, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2367, file: !31, line: 117, baseType: !2405, size: 64, offset: 832)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2407)
!2407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2408)
!2408 = !{!2409, !2410, !2414, !2415}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2407, file: !31, line: 73, baseType: !869, size: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2407, file: !31, line: 78, baseType: !2411, size: 64, offset: 64)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{null, !2366}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2407, file: !31, line: 83, baseType: !2411, size: 64, offset: 128)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2407, file: !31, line: 89, baseType: !1056, size: 64, offset: 192)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2367, file: !31, line: 118, baseType: !199, size: 64, offset: 896)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2367, file: !31, line: 119, baseType: !134, size: 32, offset: 960)
!2418 = !DIDerivedType(tag: DW_TAG_member, scope: !2367, file: !31, line: 120, baseType: !2419, size: 128, offset: 1024)
!2419 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2367, file: !31, line: 120, size: 128, elements: !2420)
!2420 = !{!2421, !2427}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2419, file: !31, line: 121, baseType: !2422, size: 128)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2423, line: 6, size: 128, elements: !2424)
!2423 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2424 = !{!2425, !2426}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2422, file: !2423, line: 7, baseType: !451, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2422, file: !2423, line: 8, baseType: !451, size: 64, offset: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2419, file: !31, line: 122, baseType: !2428)
!2428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2422, elements: !1750)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2363, file: !751, line: 162, baseType: !199, size: 64, offset: 64)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !755, file: !751, line: 176, baseType: !395, size: 128, align: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, scope: !750, file: !751, line: 179, baseType: !2432, size: 32, offset: 384)
!2432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !750, file: !751, line: 179, size: 32, elements: !2433)
!2433 = !{!2434, !2435, !2436, !2437}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2432, file: !751, line: 184, baseType: !776, size: 32)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2432, file: !751, line: 192, baseType: !7, size: 32)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2432, file: !751, line: 194, baseType: !7, size: 32)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2432, file: !751, line: 195, baseType: !134, size: 32)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !750, file: !751, line: 199, baseType: !776, size: 32, offset: 416)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !685, file: !44, line: 1964, baseType: !2440, size: 64, offset: 1344)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!340, !627, !2443}
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2445, line: 12, size: 256, elements: !2446)
!2445 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2446 = !{!2447, !2448, !2449, !2450, !2451}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2444, file: !2445, line: 13, baseType: !772, size: 32)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2444, file: !2445, line: 16, baseType: !134, size: 32, offset: 32)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2444, file: !2445, line: 23, baseType: !197, size: 64, offset: 64)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2444, file: !2445, line: 30, baseType: !197, size: 64, offset: 128)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2444, file: !2445, line: 33, baseType: !2452, size: 64, offset: 192)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !751, line: 27, flags: DIFlagFwdDecl)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !685, file: !44, line: 1966, baseType: !2440, size: 64, offset: 1408)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !628, file: !44, line: 1424, baseType: !2456, size: 64, offset: 448)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2458)
!2458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2459)
!2459 = !{!2460, !2506, !2510, !2514, !2515, !2516, !2517, !2518, !2523, !2528, !2532}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2458, file: !38, line: 323, baseType: !2461, size: 64)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{!134, !2464}
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2466)
!2466 = !{!2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2491, !2492, !2493}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2465, file: !38, line: 295, baseType: !667, size: 128)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2465, file: !38, line: 296, baseType: !253, size: 128, offset: 128)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2465, file: !38, line: 297, baseType: !253, size: 128, offset: 256)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2465, file: !38, line: 298, baseType: !253, size: 128, offset: 384)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2465, file: !38, line: 299, baseType: !1200, size: 192, offset: 512)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2465, file: !38, line: 300, baseType: !266, offset: 704)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2465, file: !38, line: 301, baseType: !776, size: 32, offset: 704)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2465, file: !38, line: 302, baseType: !627, size: 64, offset: 768)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2465, file: !38, line: 303, baseType: !2476, size: 64, offset: 832)
!2476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2477)
!2477 = !{!2478, !2490}
!2478 = !DIDerivedType(tag: DW_TAG_member, scope: !2476, file: !38, line: 69, baseType: !2479, size: 32)
!2479 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2476, file: !38, line: 69, size: 32, elements: !2480)
!2480 = !{!2481, !2482, !2483}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2479, file: !38, line: 70, baseType: !465, size: 32)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2479, file: !38, line: 71, baseType: !473, size: 32)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2479, file: !38, line: 72, baseType: !2484, size: 32)
!2484 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2485, line: 24, baseType: !2486)
!2485 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2485, line: 22, size: 32, elements: !2487)
!2487 = !{!2488}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2486, file: !2485, line: 23, baseType: !2489, size: 32)
!2489 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2485, line: 20, baseType: !471)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2476, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2465, file: !38, line: 304, baseType: !559, size: 64, offset: 896)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2465, file: !38, line: 305, baseType: !197, size: 64, offset: 960)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2465, file: !38, line: 306, baseType: !2494, size: 576, offset: 1024)
!2494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2495)
!2495 = !{!2496, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2494, file: !38, line: 206, baseType: !2497, size: 64)
!2497 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !561)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2494, file: !38, line: 207, baseType: !2497, size: 64, offset: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2494, file: !38, line: 208, baseType: !2497, size: 64, offset: 128)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2494, file: !38, line: 209, baseType: !2497, size: 64, offset: 192)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2494, file: !38, line: 210, baseType: !2497, size: 64, offset: 256)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2494, file: !38, line: 211, baseType: !2497, size: 64, offset: 320)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2494, file: !38, line: 212, baseType: !2497, size: 64, offset: 384)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2494, file: !38, line: 213, baseType: !567, size: 64, offset: 448)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2494, file: !38, line: 214, baseType: !567, size: 64, offset: 512)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2458, file: !38, line: 324, baseType: !2507, size: 64, offset: 64)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{!2464, !627, !134}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2458, file: !38, line: 325, baseType: !2511, size: 64, offset: 128)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{null, !2464}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2458, file: !38, line: 326, baseType: !2461, size: 64, offset: 192)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2458, file: !38, line: 327, baseType: !2461, size: 64, offset: 256)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2458, file: !38, line: 328, baseType: !2461, size: 64, offset: 320)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2458, file: !38, line: 329, baseType: !713, size: 64, offset: 384)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2458, file: !38, line: 332, baseType: !2519, size: 64, offset: 448)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = !DISubroutineType(types: !2521)
!2521 = !{!2522, !459}
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2458, file: !38, line: 333, baseType: !2524, size: 64, offset: 512)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!134, !459, !2527}
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2458, file: !38, line: 335, baseType: !2529, size: 64, offset: 576)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!134, !459, !2522}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2458, file: !38, line: 337, baseType: !2533, size: 64, offset: 640)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!134, !627, !2536}
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !628, file: !44, line: 1425, baseType: !2538, size: 64, offset: 512)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2540)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2541)
!2541 = !{!2542, !2546, !2547, !2551, !2552, !2553, !2568, !2591, !2595, !2596, !2619}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2540, file: !38, line: 429, baseType: !2543, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{!134, !627, !134, !134, !577}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2540, file: !38, line: 430, baseType: !713, size: 64, offset: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2540, file: !38, line: 431, baseType: !2548, size: 64, offset: 128)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!134, !627, !7}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2540, file: !38, line: 432, baseType: !2548, size: 64, offset: 192)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2540, file: !38, line: 433, baseType: !713, size: 64, offset: 256)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2540, file: !38, line: 434, baseType: !2554, size: 64, offset: 320)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{!134, !627, !134, !2557}
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2559)
!2559 = !{!2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2558, file: !38, line: 416, baseType: !134, size: 32)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2558, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2558, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2558, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2558, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2558, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2558, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2558, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2540, file: !38, line: 435, baseType: !2569, size: 64, offset: 384)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = !DISubroutineType(types: !2571)
!2571 = !{!134, !627, !2476, !2572}
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2574)
!2574 = !{!2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2573, file: !38, line: 344, baseType: !134, size: 32)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2573, file: !38, line: 345, baseType: !451, size: 64, offset: 64)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2573, file: !38, line: 346, baseType: !451, size: 64, offset: 128)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2573, file: !38, line: 347, baseType: !451, size: 64, offset: 192)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2573, file: !38, line: 348, baseType: !451, size: 64, offset: 256)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2573, file: !38, line: 349, baseType: !451, size: 64, offset: 320)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2573, file: !38, line: 350, baseType: !451, size: 64, offset: 384)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2573, file: !38, line: 351, baseType: !806, size: 64, offset: 448)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2573, file: !38, line: 353, baseType: !806, size: 64, offset: 512)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2573, file: !38, line: 354, baseType: !134, size: 32, offset: 576)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2573, file: !38, line: 355, baseType: !134, size: 32, offset: 608)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2573, file: !38, line: 356, baseType: !451, size: 64, offset: 640)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2573, file: !38, line: 357, baseType: !451, size: 64, offset: 704)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2573, file: !38, line: 358, baseType: !451, size: 64, offset: 768)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2573, file: !38, line: 359, baseType: !806, size: 64, offset: 832)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2573, file: !38, line: 360, baseType: !134, size: 32, offset: 896)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2540, file: !38, line: 436, baseType: !2592, size: 64, offset: 448)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{!134, !627, !2536, !2572}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2540, file: !38, line: 438, baseType: !2569, size: 64, offset: 512)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2540, file: !38, line: 439, baseType: !2597, size: 64, offset: 576)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{!134, !627, !2600}
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2602)
!2602 = !{!2603, !2604}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2601, file: !38, line: 410, baseType: !7, size: 32)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2601, file: !38, line: 411, baseType: !2605, size: 1344, offset: 64)
!2605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2606, size: 1344, elements: !211)
!2606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2607)
!2607 = !{!2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2618}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2606, file: !38, line: 396, baseType: !7, size: 32)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2606, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2606, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2606, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2606, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2606, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2606, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2606, file: !38, line: 404, baseType: !453, size: 64, offset: 256)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2606, file: !38, line: 405, baseType: !2617, size: 64, offset: 320)
!2617 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !217, line: 126, baseType: !451)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2606, file: !38, line: 406, baseType: !2617, size: 64, offset: 384)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2540, file: !38, line: 440, baseType: !2548, size: 64, offset: 640)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !628, file: !44, line: 1426, baseType: !2621, size: 64, offset: 576)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2623)
!2623 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !628, file: !44, line: 1427, baseType: !197, size: 64, offset: 640)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !628, file: !44, line: 1428, baseType: !197, size: 64, offset: 704)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !628, file: !44, line: 1429, baseType: !197, size: 64, offset: 768)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !628, file: !44, line: 1430, baseType: !412, size: 64, offset: 832)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !628, file: !44, line: 1431, baseType: !796, size: 256, offset: 896)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !628, file: !44, line: 1432, baseType: !134, size: 32, offset: 1152)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !628, file: !44, line: 1433, baseType: !776, size: 32, offset: 1184)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !628, file: !44, line: 1437, baseType: !2632, size: 64, offset: 1216)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2635)
!2635 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !628, file: !44, line: 1449, baseType: !2637, size: 64, offset: 1280)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !428, line: 34, size: 64, elements: !2638)
!2638 = !{!2639}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2637, file: !428, line: 35, baseType: !431, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !628, file: !44, line: 1450, baseType: !253, size: 128, offset: 1344)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !628, file: !44, line: 1451, baseType: !2642, size: 64, offset: 1472)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !628, file: !44, line: 1452, baseType: !1950, size: 64, offset: 1536)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !628, file: !44, line: 1453, baseType: !2646, size: 64, offset: 1600)
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2647 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !628, file: !44, line: 1454, baseType: !667, size: 128, offset: 1664)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !628, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !628, file: !44, line: 1456, baseType: !2651, size: 2432, offset: 1856)
!2651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2652)
!2652 = !{!2653, !2654, !2655, !2657, !2689}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2651, file: !38, line: 519, baseType: !7, size: 32)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2651, file: !38, line: 520, baseType: !796, size: 256, offset: 64)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2651, file: !38, line: 521, baseType: !2656, size: 192, offset: 320)
!2656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !459, size: 192, elements: !211)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2651, file: !38, line: 522, baseType: !2658, size: 1728, offset: 512)
!2658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2659, size: 1728, elements: !211)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2660)
!2660 = !{!2661, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2659, file: !38, line: 223, baseType: !2662, size: 64)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2664)
!2664 = !{!2665, !2666, !2679, !2680}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2663, file: !38, line: 444, baseType: !134, size: 32)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2663, file: !38, line: 445, baseType: !2667, size: 64, offset: 64)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2669)
!2669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2670)
!2670 = !{!2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2669, file: !38, line: 311, baseType: !713, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2669, file: !38, line: 312, baseType: !713, size: 64, offset: 64)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2669, file: !38, line: 313, baseType: !713, size: 64, offset: 128)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2669, file: !38, line: 314, baseType: !713, size: 64, offset: 192)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2669, file: !38, line: 315, baseType: !2461, size: 64, offset: 256)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2669, file: !38, line: 316, baseType: !2461, size: 64, offset: 320)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2669, file: !38, line: 317, baseType: !2461, size: 64, offset: 384)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2669, file: !38, line: 318, baseType: !2533, size: 64, offset: 448)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2663, file: !38, line: 446, baseType: !179, size: 64, offset: 128)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2663, file: !38, line: 447, baseType: !2662, size: 64, offset: 192)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2659, file: !38, line: 224, baseType: !134, size: 32, offset: 64)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2659, file: !38, line: 226, baseType: !253, size: 128, offset: 128)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2659, file: !38, line: 227, baseType: !197, size: 64, offset: 256)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2659, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2659, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2659, file: !38, line: 230, baseType: !2497, size: 64, offset: 384)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2659, file: !38, line: 231, baseType: !2497, size: 64, offset: 448)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2659, file: !38, line: 232, baseType: !199, size: 64, offset: 512)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2651, file: !38, line: 523, baseType: !2690, size: 192, offset: 2240)
!2690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2667, size: 192, elements: !211)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !628, file: !44, line: 1458, baseType: !2692, size: 2112, offset: 4288)
!2692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2693)
!2693 = !{!2694, !2695, !2696}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2692, file: !44, line: 1411, baseType: !134, size: 32)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2692, file: !44, line: 1412, baseType: !1508, size: 128, offset: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2692, file: !44, line: 1413, baseType: !2697, size: 1920, offset: 192)
!2697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2698, size: 1920, elements: !211)
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2699, line: 12, size: 640, elements: !2700)
!2699 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2700 = !{!2701, !2709, !2711, !2716, !2717}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2698, file: !2699, line: 13, baseType: !2702, size: 320)
!2702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2703, line: 17, size: 320, elements: !2704)
!2703 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2704 = !{!2705, !2706, !2707, !2708}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2702, file: !2703, line: 18, baseType: !134, size: 32)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2702, file: !2703, line: 19, baseType: !134, size: 32, offset: 32)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2702, file: !2703, line: 20, baseType: !1508, size: 128, offset: 64)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2702, file: !2703, line: 22, baseType: !395, size: 128, align: 64, offset: 192)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2698, file: !2699, line: 14, baseType: !2710, size: 64, offset: 320)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2698, file: !2699, line: 15, baseType: !2712, size: 64, offset: 384)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2713, line: 16, size: 64, elements: !2714)
!2713 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2714 = !{!2715}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2712, file: !2713, line: 17, baseType: !1243, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2698, file: !2699, line: 16, baseType: !1508, size: 128, offset: 448)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2698, file: !2699, line: 17, baseType: !776, size: 32, offset: 576)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !628, file: !44, line: 1465, baseType: !199, size: 64, offset: 6400)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !628, file: !44, line: 1468, baseType: !445, size: 32, offset: 6464)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !628, file: !44, line: 1470, baseType: !567, size: 64, offset: 6528)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !628, file: !44, line: 1471, baseType: !567, size: 64, offset: 6592)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !628, file: !44, line: 1473, baseType: !447, size: 32, offset: 6656)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !628, file: !44, line: 1474, baseType: !2724, size: 64, offset: 6720)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !628, file: !44, line: 1477, baseType: !2727, size: 256, offset: 6784)
!2727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 256, elements: !2257)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !628, file: !44, line: 1478, baseType: !2729, size: 128, offset: 7040)
!2729 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2730, line: 18, baseType: !2731)
!2730 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2731 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2730, line: 16, size: 128, elements: !2732)
!2732 = !{!2733}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2731, file: !2730, line: 17, baseType: !2734, size: 128)
!2734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1380, size: 128, elements: !1762)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !628, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !628, file: !44, line: 1481, baseType: !2737, size: 32, offset: 7200)
!2737 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !217, line: 150, baseType: !7)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !628, file: !44, line: 1487, baseType: !1200, size: 192, offset: 7232)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !628, file: !44, line: 1493, baseType: !177, size: 64, offset: 7424)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !628, file: !44, line: 1495, baseType: !2741, size: 64, offset: 7488)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2743)
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !410, line: 135, size: 1024, align: 512, elements: !2744)
!2744 = !{!2745, !2749, !2750, !2757, !2763, !2767, !2771, !2775, !2776, !2780, !2784, !2789, !2793}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2743, file: !410, line: 136, baseType: !2746, size: 64)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!134, !412, !7}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2743, file: !410, line: 137, baseType: !2746, size: 64, offset: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2743, file: !410, line: 138, baseType: !2751, size: 64, offset: 128)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{!134, !2754, !2756}
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !413)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2743, file: !410, line: 139, baseType: !2758, size: 64, offset: 192)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!134, !2754, !7, !177, !2761}
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !436)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2743, file: !410, line: 141, baseType: !2764, size: 64, offset: 256)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2765 = !DISubroutineType(types: !2766)
!2766 = !{!134, !2754}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2743, file: !410, line: 142, baseType: !2768, size: 64, offset: 320)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{!134, !412}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2743, file: !410, line: 143, baseType: !2772, size: 64, offset: 384)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{null, !412}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2743, file: !410, line: 144, baseType: !2772, size: 64, offset: 448)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2743, file: !410, line: 145, baseType: !2777, size: 64, offset: 512)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{null, !412, !459}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2743, file: !410, line: 146, baseType: !2781, size: 64, offset: 576)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!307, !412, !307, !134}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2743, file: !410, line: 147, baseType: !2785, size: 64, offset: 640)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{!408, !2788}
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2743, file: !410, line: 148, baseType: !2790, size: 64, offset: 704)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{!134, !577, !216}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2743, file: !410, line: 149, baseType: !2794, size: 64, offset: 768)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!412, !412, !2797}
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !460)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !628, file: !44, line: 1500, baseType: !134, size: 32, offset: 7552)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !628, file: !44, line: 1502, baseType: !2801, size: 448, offset: 7616)
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2445, line: 60, size: 448, elements: !2802)
!2802 = !{!2803, !2808, !2809, !2810, !2811, !2812, !2813}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2801, file: !2445, line: 61, baseType: !2804, size: 64)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{!197, !2807, !2443}
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2801, file: !2445, line: 63, baseType: !2804, size: 64, offset: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2801, file: !2445, line: 66, baseType: !340, size: 64, offset: 128)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2801, file: !2445, line: 67, baseType: !134, size: 32, offset: 192)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2801, file: !2445, line: 68, baseType: !7, size: 32, offset: 224)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2801, file: !2445, line: 71, baseType: !253, size: 128, offset: 256)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2801, file: !2445, line: 77, baseType: !2814, size: 64, offset: 384)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !628, file: !44, line: 1505, baseType: !800, size: 64, offset: 8064)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !628, file: !44, line: 1508, baseType: !800, size: 64, offset: 8128)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !628, file: !44, line: 1511, baseType: !134, size: 32, offset: 8192)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !628, file: !44, line: 1514, baseType: !938, size: 32, offset: 8224)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !628, file: !44, line: 1517, baseType: !2820, size: 64, offset: 8256)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1985, line: 18, flags: DIFlagFwdDecl)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !628, file: !44, line: 1518, baseType: !663, size: 64, offset: 8320)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !628, file: !44, line: 1525, baseType: !1740, size: 64, offset: 8384)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !628, file: !44, line: 1532, baseType: !2825, size: 64, offset: 8448)
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2826, line: 52, size: 64, elements: !2827)
!2826 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2827 = !{!2828}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2825, file: !2826, line: 53, baseType: !2829, size: 64)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2826, line: 40, size: 256, elements: !2831)
!2831 = !{!2832, !2833, !2838}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2830, file: !2826, line: 42, baseType: !266)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2830, file: !2826, line: 44, baseType: !2834, size: 192)
!2834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2826, line: 28, size: 192, elements: !2835)
!2835 = !{!2836, !2837}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2834, file: !2826, line: 29, baseType: !253, size: 128)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2834, file: !2826, line: 31, baseType: !340, size: 64, offset: 128)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2830, file: !2826, line: 49, baseType: !340, size: 64, offset: 192)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !628, file: !44, line: 1533, baseType: !2825, size: 64, offset: 8512)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !628, file: !44, line: 1534, baseType: !395, size: 128, align: 64, offset: 8576)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !628, file: !44, line: 1535, baseType: !1984, size: 256, offset: 8704)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !628, file: !44, line: 1537, baseType: !1200, size: 192, offset: 8960)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !628, file: !44, line: 1542, baseType: !134, size: 32, offset: 9152)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !628, file: !44, line: 1545, baseType: !266, offset: 9184)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !628, file: !44, line: 1546, baseType: !253, size: 128, offset: 9216)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !628, file: !44, line: 1548, baseType: !266, offset: 9344)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !628, file: !44, line: 1549, baseType: !253, size: 128, offset: 9344)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !460, file: !44, line: 624, baseType: !762, size: 64, offset: 256)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !460, file: !44, line: 631, baseType: !197, size: 64, offset: 320)
!2850 = !DIDerivedType(tag: DW_TAG_member, scope: !460, file: !44, line: 639, baseType: !2851, size: 32, offset: 384)
!2851 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !460, file: !44, line: 639, size: 32, elements: !2852)
!2852 = !{!2853, !2855}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2851, file: !44, line: 640, baseType: !2854, size: 32)
!2854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2851, file: !44, line: 641, baseType: !7, size: 32)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !460, file: !44, line: 643, baseType: !541, size: 32, offset: 416)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !460, file: !44, line: 644, baseType: !559, size: 64, offset: 448)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !460, file: !44, line: 645, baseType: !563, size: 128, offset: 512)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !460, file: !44, line: 646, baseType: !563, size: 128, offset: 640)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !460, file: !44, line: 647, baseType: !563, size: 128, offset: 768)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !460, file: !44, line: 648, baseType: !266, offset: 896)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !460, file: !44, line: 649, baseType: !347, size: 16, offset: 896)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !460, file: !44, line: 650, baseType: !1379, size: 8, offset: 912)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !460, file: !44, line: 651, baseType: !1379, size: 8, offset: 920)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !460, file: !44, line: 652, baseType: !2617, size: 64, offset: 960)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !460, file: !44, line: 659, baseType: !197, size: 64, offset: 1024)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !460, file: !44, line: 660, baseType: !796, size: 256, offset: 1088)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !460, file: !44, line: 662, baseType: !197, size: 64, offset: 1344)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !460, file: !44, line: 663, baseType: !197, size: 64, offset: 1408)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !460, file: !44, line: 665, baseType: !667, size: 128, offset: 1472)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !460, file: !44, line: 666, baseType: !253, size: 128, offset: 1600)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !460, file: !44, line: 675, baseType: !253, size: 128, offset: 1728)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !460, file: !44, line: 676, baseType: !253, size: 128, offset: 1856)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !460, file: !44, line: 677, baseType: !253, size: 128, offset: 1984)
!2875 = !DIDerivedType(tag: DW_TAG_member, scope: !460, file: !44, line: 678, baseType: !2876, size: 128, offset: 2112)
!2876 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !460, file: !44, line: 678, size: 128, elements: !2877)
!2877 = !{!2878, !2879}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2876, file: !44, line: 679, baseType: !663, size: 64)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2876, file: !44, line: 680, baseType: !395, size: 128, align: 64)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !460, file: !44, line: 682, baseType: !802, size: 64, offset: 2240)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !460, file: !44, line: 683, baseType: !802, size: 64, offset: 2304)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !460, file: !44, line: 684, baseType: !776, size: 32, offset: 2368)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !460, file: !44, line: 685, baseType: !776, size: 32, offset: 2400)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !460, file: !44, line: 686, baseType: !776, size: 32, offset: 2432)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !460, file: !44, line: 688, baseType: !776, size: 32, offset: 2464)
!2886 = !DIDerivedType(tag: DW_TAG_member, scope: !460, file: !44, line: 690, baseType: !2887, size: 64, offset: 2496)
!2887 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !460, file: !44, line: 690, size: 64, elements: !2888)
!2888 = !{!2889, !3112}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2887, file: !44, line: 691, baseType: !2890, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2892)
!2892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2893)
!2893 = !{!2894, !2895, !2899, !2904, !2908, !2909, !2910, !2914, !2927, !2928, !2936, !2940, !2941, !2945, !2946, !2950, !2955, !2956, !2960, !2964, !3072, !3076, !3077, !3081, !3082, !3086, !3090, !3095, !3099, !3103, !3107, !3111}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2892, file: !44, line: 1823, baseType: !179, size: 64)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2892, file: !44, line: 1824, baseType: !2896, size: 64, offset: 64)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{!559, !382, !559, !134}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2892, file: !44, line: 1825, baseType: !2900, size: 64, offset: 128)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!336, !382, !307, !352, !2903}
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2892, file: !44, line: 1826, baseType: !2905, size: 64, offset: 192)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{!336, !382, !177, !352, !2903}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2892, file: !44, line: 1827, baseType: !873, size: 64, offset: 256)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2892, file: !44, line: 1828, baseType: !873, size: 64, offset: 320)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2892, file: !44, line: 1829, baseType: !2911, size: 64, offset: 384)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{!134, !876, !216}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2892, file: !44, line: 1830, baseType: !2915, size: 64, offset: 448)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{!134, !382, !2918}
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2920)
!2920 = !{!2921, !2926}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2919, file: !44, line: 1777, baseType: !2922, size: 64)
!2922 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2923)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = !DISubroutineType(types: !2925)
!2925 = !{!134, !2918, !177, !134, !559, !451, !7}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2919, file: !44, line: 1778, baseType: !559, size: 64, offset: 64)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2892, file: !44, line: 1831, baseType: !2915, size: 64, offset: 512)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2892, file: !44, line: 1832, baseType: !2929, size: 64, offset: 576)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!2932, !382, !2934}
!2932 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2933, line: 52, baseType: !7)
!2933 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !647, line: 27, flags: DIFlagFwdDecl)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2892, file: !44, line: 1833, baseType: !2937, size: 64, offset: 640)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!340, !382, !7, !197}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2892, file: !44, line: 1834, baseType: !2937, size: 64, offset: 704)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2892, file: !44, line: 1835, baseType: !2942, size: 64, offset: 768)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{!134, !382, !1010}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2892, file: !44, line: 1836, baseType: !197, size: 64, offset: 832)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2892, file: !44, line: 1837, baseType: !2947, size: 64, offset: 896)
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{!134, !459, !382}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2892, file: !44, line: 1838, baseType: !2951, size: 64, offset: 960)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{!134, !382, !2954}
!2954 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !199)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2892, file: !44, line: 1839, baseType: !2947, size: 64, offset: 1024)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2892, file: !44, line: 1840, baseType: !2957, size: 64, offset: 1088)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{!134, !382, !559, !559, !134}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2892, file: !44, line: 1841, baseType: !2961, size: 64, offset: 1152)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{!134, !134, !382, !134}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2892, file: !44, line: 1842, baseType: !2965, size: 64, offset: 1216)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!134, !382, !134, !2968}
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2970)
!2970 = !{!2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !3002, !3003, !3004, !3017, !3048}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2969, file: !44, line: 1063, baseType: !2968, size: 64)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2969, file: !44, line: 1064, baseType: !253, size: 128, offset: 64)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2969, file: !44, line: 1065, baseType: !667, size: 128, offset: 192)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2969, file: !44, line: 1066, baseType: !253, size: 128, offset: 320)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2969, file: !44, line: 1069, baseType: !253, size: 128, offset: 448)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2969, file: !44, line: 1072, baseType: !2954, size: 64, offset: 576)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2969, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2969, file: !44, line: 1074, baseType: !457, size: 8, offset: 672)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2969, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2969, file: !44, line: 1076, baseType: !134, size: 32, offset: 736)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2969, file: !44, line: 1077, baseType: !1508, size: 128, offset: 768)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2969, file: !44, line: 1078, baseType: !382, size: 64, offset: 896)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2969, file: !44, line: 1079, baseType: !559, size: 64, offset: 960)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2969, file: !44, line: 1080, baseType: !559, size: 64, offset: 1024)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2969, file: !44, line: 1082, baseType: !2986, size: 64, offset: 1088)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2988)
!2988 = !{!2989, !2997, !2998, !2999, !3000, !3001}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2987, file: !44, line: 1315, baseType: !2990)
!2990 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2991, line: 20, baseType: !2992)
!2991 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2992 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2991, line: 11, elements: !2993)
!2993 = !{!2994}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2992, file: !2991, line: 12, baseType: !2995)
!2995 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !278, line: 33, baseType: !2996)
!2996 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !278, line: 31, elements: !280)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2987, file: !44, line: 1316, baseType: !134, size: 32)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2987, file: !44, line: 1317, baseType: !134, size: 32, offset: 32)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2987, file: !44, line: 1318, baseType: !2986, size: 64, offset: 64)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2987, file: !44, line: 1319, baseType: !382, size: 64, offset: 128)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2987, file: !44, line: 1320, baseType: !395, size: 128, align: 64, offset: 192)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2969, file: !44, line: 1084, baseType: !197, size: 64, offset: 1152)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2969, file: !44, line: 1085, baseType: !197, size: 64, offset: 1216)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2969, file: !44, line: 1087, baseType: !3005, size: 64, offset: 1280)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3007)
!3007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !3008)
!3008 = !{!3009, !3013}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3007, file: !44, line: 1012, baseType: !3010, size: 64)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{null, !2968, !2968}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3007, file: !44, line: 1013, baseType: !3014, size: 64, offset: 64)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{null, !2968}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2969, file: !44, line: 1088, baseType: !3018, size: 64, offset: 1344)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3020)
!3020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !3021)
!3021 = !{!3022, !3026, !3030, !3031, !3035, !3039, !3043, !3047}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3020, file: !44, line: 1017, baseType: !3023, size: 64)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!2954, !2954}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3020, file: !44, line: 1018, baseType: !3027, size: 64, offset: 64)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{null, !2954}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3020, file: !44, line: 1019, baseType: !3014, size: 64, offset: 128)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3020, file: !44, line: 1020, baseType: !3032, size: 64, offset: 192)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!134, !2968, !134}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3020, file: !44, line: 1021, baseType: !3036, size: 64, offset: 256)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!216, !2968}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3020, file: !44, line: 1022, baseType: !3040, size: 64, offset: 320)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{!134, !2968, !134, !256}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3020, file: !44, line: 1023, baseType: !3044, size: 64, offset: 384)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{null, !2968, !850}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3020, file: !44, line: 1024, baseType: !3036, size: 64, offset: 448)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2969, file: !44, line: 1097, baseType: !3049, size: 256, offset: 1408)
!3049 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2969, file: !44, line: 1089, size: 256, elements: !3050)
!3050 = !{!3051, !3060, !3066}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3049, file: !44, line: 1090, baseType: !3052, size: 256)
!3052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3053, line: 10, size: 256, elements: !3054)
!3053 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3054 = !{!3055, !3056, !3059}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3052, file: !3053, line: 11, baseType: !445, size: 32)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3052, file: !3053, line: 12, baseType: !3057, size: 64, offset: 64)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3053, line: 5, flags: DIFlagFwdDecl)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3052, file: !3053, line: 13, baseType: !253, size: 128, offset: 128)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3049, file: !44, line: 1091, baseType: !3061, size: 64)
!3061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3053, line: 17, size: 64, elements: !3062)
!3062 = !{!3063}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3061, file: !3053, line: 18, baseType: !3064, size: 64)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3053, line: 16, flags: DIFlagFwdDecl)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3049, file: !44, line: 1096, baseType: !3067, size: 192)
!3067 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3049, file: !44, line: 1092, size: 192, elements: !3068)
!3068 = !{!3069, !3070, !3071}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3067, file: !44, line: 1093, baseType: !253, size: 128)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3067, file: !44, line: 1094, baseType: !134, size: 32, offset: 128)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3067, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2892, file: !44, line: 1843, baseType: !3073, size: 64, offset: 1280)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{!336, !382, !749, !134, !352, !2903, !134}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2892, file: !44, line: 1844, baseType: !1130, size: 64, offset: 1344)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2892, file: !44, line: 1845, baseType: !3078, size: 64, offset: 1408)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!134, !134}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2892, file: !44, line: 1846, baseType: !2965, size: 64, offset: 1472)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2892, file: !44, line: 1847, baseType: !3083, size: 64, offset: 1536)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{!336, !2125, !382, !2903, !352, !7}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2892, file: !44, line: 1848, baseType: !3087, size: 64, offset: 1600)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!336, !382, !2903, !2125, !352, !7}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2892, file: !44, line: 1849, baseType: !3091, size: 64, offset: 1664)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3092, size: 64)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{!134, !382, !340, !3094, !850}
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2892, file: !44, line: 1850, baseType: !3096, size: 64, offset: 1728)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3097 = !DISubroutineType(types: !3098)
!3098 = !{!340, !382, !134, !559, !559}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2892, file: !44, line: 1852, baseType: !3100, size: 64, offset: 1792)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{null, !739, !382}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2892, file: !44, line: 1856, baseType: !3104, size: 64, offset: 1856)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!336, !382, !559, !382, !559, !352, !7}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2892, file: !44, line: 1858, baseType: !3108, size: 64, offset: 1920)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{!559, !382, !559, !382, !559, !559, !7}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2892, file: !44, line: 1861, baseType: !2957, size: 64, offset: 1984)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2887, file: !44, line: 692, baseType: !692, size: 64)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !460, file: !44, line: 694, baseType: !3114, size: 64, offset: 2560)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3116)
!3116 = !{!3117, !3118, !3119, !3120}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3115, file: !44, line: 1101, baseType: !266)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3115, file: !44, line: 1102, baseType: !253, size: 128)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3115, file: !44, line: 1103, baseType: !253, size: 128, offset: 128)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3115, file: !44, line: 1104, baseType: !253, size: 128, offset: 256)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !460, file: !44, line: 695, baseType: !763, size: 1216, align: 64, offset: 2624)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !460, file: !44, line: 696, baseType: !253, size: 128, offset: 3840)
!3123 = !DIDerivedType(tag: DW_TAG_member, scope: !460, file: !44, line: 697, baseType: !3124, size: 64, offset: 3968)
!3124 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !460, file: !44, line: 697, size: 64, elements: !3125)
!3125 = !{!3126, !3127, !3128, !3131, !3132}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3124, file: !44, line: 698, baseType: !2125, size: 64)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3124, file: !44, line: 699, baseType: !2642, size: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3124, file: !44, line: 700, baseType: !3129, size: 64)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3124, file: !44, line: 701, baseType: !307, size: 64)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3124, file: !44, line: 702, baseType: !7, size: 32)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !460, file: !44, line: 705, baseType: !447, size: 32, offset: 4032)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !460, file: !44, line: 708, baseType: !447, size: 32, offset: 4064)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !460, file: !44, line: 709, baseType: !2724, size: 64, offset: 4096)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !460, file: !44, line: 720, baseType: !199, size: 64, offset: 4160)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !413, file: !410, line: 98, baseType: !3138, size: 256, offset: 448)
!3138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !457, size: 256, elements: !2257)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !413, file: !410, line: 101, baseType: !3140, size: 32, offset: 704)
!3140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3141, line: 25, size: 32, elements: !3142)
!3141 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3142 = !{!3143}
!3143 = !DIDerivedType(tag: DW_TAG_member, scope: !3140, file: !3141, line: 26, baseType: !3144, size: 32)
!3144 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3140, file: !3141, line: 26, size: 32, elements: !3145)
!3145 = !{!3146}
!3146 = !DIDerivedType(tag: DW_TAG_member, scope: !3144, file: !3141, line: 30, baseType: !3147, size: 32)
!3147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3144, file: !3141, line: 30, size: 32, elements: !3148)
!3148 = !{!3149, !3150}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3147, file: !3141, line: 31, baseType: !266)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3147, file: !3141, line: 32, baseType: !134, size: 32)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !413, file: !410, line: 102, baseType: !2741, size: 64, offset: 768)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !413, file: !410, line: 103, baseType: !627, size: 64, offset: 832)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !413, file: !410, line: 104, baseType: !197, size: 64, offset: 896)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !413, file: !410, line: 105, baseType: !199, size: 64, offset: 960)
!3155 = !DIDerivedType(tag: DW_TAG_member, scope: !413, file: !410, line: 107, baseType: !3156, size: 128, offset: 1024)
!3156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !413, file: !410, line: 107, size: 128, elements: !3157)
!3157 = !{!3158, !3159}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3156, file: !410, line: 108, baseType: !253, size: 128)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3156, file: !410, line: 109, baseType: !3160, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !413, file: !410, line: 111, baseType: !253, size: 128, offset: 1152)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !413, file: !410, line: 112, baseType: !253, size: 128, offset: 1280)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !413, file: !410, line: 120, baseType: !3164, size: 128, offset: 1408)
!3164 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !413, file: !410, line: 116, size: 128, elements: !3165)
!3165 = !{!3166, !3167, !3168}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3164, file: !410, line: 117, baseType: !667, size: 128)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3164, file: !410, line: 118, baseType: !427, size: 128)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3164, file: !410, line: 119, baseType: !395, size: 128, align: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !383, file: !44, line: 922, baseType: !459, size: 64, offset: 256)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !383, file: !44, line: 923, baseType: !2890, size: 64, offset: 320)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !383, file: !44, line: 929, baseType: !266, offset: 384)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !383, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !383, file: !44, line: 931, baseType: !800, size: 64, offset: 448)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !383, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !383, file: !44, line: 933, baseType: !2737, size: 32, offset: 544)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !383, file: !44, line: 934, baseType: !1200, size: 192, offset: 576)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !383, file: !44, line: 935, baseType: !559, size: 64, offset: 768)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !383, file: !44, line: 936, baseType: !3179, size: 192, offset: 832)
!3179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3180)
!3180 = !{!3181, !3182, !3183, !3184, !3185, !3186}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3179, file: !44, line: 886, baseType: !2990)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3179, file: !44, line: 887, baseType: !1498, size: 64)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3179, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3179, file: !44, line: 889, baseType: !465, size: 32, offset: 96)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3179, file: !44, line: 889, baseType: !465, size: 32, offset: 128)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3179, file: !44, line: 890, baseType: !134, size: 32, offset: 160)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !383, file: !44, line: 937, baseType: !1574, size: 64, offset: 1024)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !383, file: !44, line: 938, baseType: !3189, size: 256, offset: 1088)
!3189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3190)
!3190 = !{!3191, !3192, !3193, !3194, !3195, !3196}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3189, file: !44, line: 897, baseType: !197, size: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3189, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3189, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3189, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3189, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3189, file: !44, line: 904, baseType: !559, size: 64, offset: 192)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !383, file: !44, line: 940, baseType: !451, size: 64, offset: 1344)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !383, file: !44, line: 945, baseType: !199, size: 64, offset: 1408)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !383, file: !44, line: 949, baseType: !253, size: 128, offset: 1472)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !383, file: !44, line: 950, baseType: !253, size: 128, offset: 1600)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !383, file: !44, line: 952, baseType: !762, size: 64, offset: 1728)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !383, file: !44, line: 953, baseType: !938, size: 32, offset: 1792)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !383, file: !44, line: 954, baseType: !938, size: 32, offset: 1824)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !373, file: !330, line: 174, baseType: !379, size: 64, offset: 320)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !373, file: !330, line: 176, baseType: !3206, size: 64, offset: 384)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{!134, !382, !259, !372, !1010}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !361, file: !330, line: 90, baseType: !356, size: 64, offset: 192)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !361, file: !330, line: 91, baseType: !3211, size: 64, offset: 256)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !320, file: !249, line: 143, baseType: !3213, size: 64, offset: 256)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!3216, !259}
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3218)
!3218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3219)
!3219 = !{!3220, !3221, !3225, !3229, !3235, !3239}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3218, file: !61, line: 40, baseType: !60, size: 32)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3218, file: !61, line: 41, baseType: !3222, size: 64, offset: 64)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!216}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3218, file: !61, line: 42, baseType: !3226, size: 64, offset: 128)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!199}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3218, file: !61, line: 43, baseType: !3230, size: 64, offset: 192)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!2154, !3233}
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3218, file: !61, line: 44, baseType: !3236, size: 64, offset: 256)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DISubroutineType(types: !3238)
!3238 = !{!2154}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3218, file: !61, line: 45, baseType: !498, size: 64, offset: 320)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !320, file: !249, line: 144, baseType: !3241, size: 64, offset: 320)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!2154, !259}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !320, file: !249, line: 145, baseType: !3245, size: 64, offset: 384)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{null, !259, !3248, !3249}
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !248, file: !249, line: 70, baseType: !3251, size: 64, offset: 384)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !647, line: 123, size: 1024, elements: !3253)
!3253 = !{!3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3382, !3383, !3384, !3385, !3386}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3252, file: !647, line: 124, baseType: !776, size: 32)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3252, file: !647, line: 125, baseType: !776, size: 32, offset: 32)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3252, file: !647, line: 135, baseType: !3251, size: 64, offset: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3252, file: !647, line: 136, baseType: !177, size: 64, offset: 128)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3252, file: !647, line: 138, baseType: !789, size: 192, align: 64, offset: 192)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3252, file: !647, line: 140, baseType: !2154, size: 64, offset: 384)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3252, file: !647, line: 141, baseType: !7, size: 32, offset: 448)
!3261 = !DIDerivedType(tag: DW_TAG_member, scope: !3252, file: !647, line: 142, baseType: !3262, size: 256, offset: 512)
!3262 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3252, file: !647, line: 142, size: 256, elements: !3263)
!3263 = !{!3264, !3310, !3314}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3262, file: !647, line: 143, baseType: !3265, size: 192)
!3265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !647, line: 91, size: 192, elements: !3266)
!3266 = !{!3267, !3268, !3269}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3265, file: !647, line: 92, baseType: !197, size: 64)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3265, file: !647, line: 94, baseType: !785, size: 64, offset: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3265, file: !647, line: 100, baseType: !3270, size: 64, offset: 128)
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !647, line: 180, size: 704, elements: !3272)
!3272 = !{!3273, !3274, !3275, !3282, !3283, !3284, !3308, !3309}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3271, file: !647, line: 182, baseType: !3251, size: 64)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3271, file: !647, line: 183, baseType: !7, size: 32, offset: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3271, file: !647, line: 186, baseType: !3276, size: 192, offset: 128)
!3276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3277, line: 19, size: 192, elements: !3278)
!3277 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3278 = !{!3279, !3280, !3281}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3276, file: !3277, line: 20, baseType: !767, size: 128)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3276, file: !3277, line: 21, baseType: !7, size: 32, offset: 128)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3276, file: !3277, line: 22, baseType: !7, size: 32, offset: 160)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3271, file: !647, line: 187, baseType: !445, size: 32, offset: 320)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3271, file: !647, line: 188, baseType: !445, size: 32, offset: 352)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3271, file: !647, line: 189, baseType: !3285, size: 64, offset: 384)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !647, line: 168, size: 320, elements: !3287)
!3287 = !{!3288, !3292, !3296, !3300, !3304}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3286, file: !647, line: 169, baseType: !3289, size: 64)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{!134, !739, !3270}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3286, file: !647, line: 171, baseType: !3293, size: 64, offset: 64)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!134, !3251, !177, !346}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3286, file: !647, line: 173, baseType: !3297, size: 64, offset: 128)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{!134, !3251}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3286, file: !647, line: 174, baseType: !3301, size: 64, offset: 192)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!134, !3251, !3251, !177}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3286, file: !647, line: 176, baseType: !3305, size: 64, offset: 256)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!134, !739, !3251, !3270}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3271, file: !647, line: 192, baseType: !253, size: 128, offset: 448)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3271, file: !647, line: 194, baseType: !1508, size: 128, offset: 576)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3262, file: !647, line: 144, baseType: !3311, size: 64)
!3311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !647, line: 103, size: 64, elements: !3312)
!3312 = !{!3313}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3311, file: !647, line: 104, baseType: !3251, size: 64)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3262, file: !647, line: 145, baseType: !3315, size: 256)
!3315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !647, line: 107, size: 256, elements: !3316)
!3316 = !{!3317, !3377, !3380, !3381}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3315, file: !647, line: 108, baseType: !3318, size: 64)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3320)
!3320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !647, line: 217, size: 768, elements: !3321)
!3321 = !{!3322, !3342, !3346, !3350, !3354, !3358, !3362, !3366, !3367, !3368, !3369, !3373}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3320, file: !647, line: 222, baseType: !3323, size: 64)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{!134, !3326}
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !647, line: 197, size: 1088, elements: !3328)
!3328 = !{!3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3327, file: !647, line: 199, baseType: !3251, size: 64)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3327, file: !647, line: 200, baseType: !382, size: 64, offset: 64)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3327, file: !647, line: 201, baseType: !739, size: 64, offset: 128)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3327, file: !647, line: 202, baseType: !199, size: 64, offset: 192)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3327, file: !647, line: 205, baseType: !1200, size: 192, offset: 256)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3327, file: !647, line: 206, baseType: !1200, size: 192, offset: 448)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3327, file: !647, line: 207, baseType: !134, size: 32, offset: 640)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3327, file: !647, line: 208, baseType: !253, size: 128, offset: 704)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3327, file: !647, line: 209, baseType: !307, size: 64, offset: 832)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3327, file: !647, line: 211, baseType: !352, size: 64, offset: 896)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3327, file: !647, line: 212, baseType: !216, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3327, file: !647, line: 213, baseType: !216, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3327, file: !647, line: 214, baseType: !1038, size: 64, offset: 1024)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3320, file: !647, line: 223, baseType: !3343, size: 64, offset: 64)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{null, !3326}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3320, file: !647, line: 236, baseType: !3347, size: 64, offset: 128)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{!134, !739, !199}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3320, file: !647, line: 238, baseType: !3351, size: 64, offset: 192)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{!199, !739, !2903}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3320, file: !647, line: 239, baseType: !3355, size: 64, offset: 256)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{!199, !739, !199, !2903}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3320, file: !647, line: 240, baseType: !3359, size: 64, offset: 320)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{null, !739, !199}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3320, file: !647, line: 242, baseType: !3363, size: 64, offset: 384)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!336, !3326, !307, !352, !559}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3320, file: !647, line: 252, baseType: !352, size: 64, offset: 448)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3320, file: !647, line: 259, baseType: !216, size: 8, offset: 512)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3320, file: !647, line: 260, baseType: !3363, size: 64, offset: 576)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3320, file: !647, line: 263, baseType: !3370, size: 64, offset: 640)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{!2932, !3326, !2934}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3320, file: !647, line: 266, baseType: !3374, size: 64, offset: 704)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{!134, !3326, !1010}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3315, file: !647, line: 109, baseType: !3378, size: 64, offset: 64)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !647, line: 31, flags: DIFlagFwdDecl)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3315, file: !647, line: 110, baseType: !559, size: 64, offset: 128)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3315, file: !647, line: 111, baseType: !3251, size: 64, offset: 192)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3252, file: !647, line: 148, baseType: !199, size: 64, offset: 768)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3252, file: !647, line: 154, baseType: !451, size: 64, offset: 832)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3252, file: !647, line: 156, baseType: !347, size: 16, offset: 896)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3252, file: !647, line: 157, baseType: !346, size: 16, offset: 912)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3252, file: !647, line: 158, baseType: !3387, size: 64, offset: 960)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !647, line: 32, flags: DIFlagFwdDecl)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !248, file: !249, line: 71, baseType: !3390, size: 32, offset: 448)
!3390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3391, line: 19, size: 32, elements: !3392)
!3391 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3392 = !{!3393}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3390, file: !3391, line: 20, baseType: !1257, size: 32)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !248, file: !249, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !248, file: !249, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !248, file: !249, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !248, file: !249, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !248, file: !249, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !245, file: !73, line: 463, baseType: !244, size: 64, offset: 512)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !245, file: !73, line: 465, baseType: !3401, size: 64, offset: 576)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !245, file: !73, line: 467, baseType: !177, size: 64, offset: 640)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !245, file: !73, line: 468, baseType: !3405, size: 64, offset: 704)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3407)
!3407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3408)
!3408 = !{!3409, !3410, !3411, !3415, !3420, !3424}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3407, file: !73, line: 88, baseType: !177, size: 64)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3407, file: !73, line: 89, baseType: !358, size: 64, offset: 64)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3407, file: !73, line: 90, baseType: !3412, size: 64, offset: 128)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = !DISubroutineType(types: !3414)
!3414 = !{!134, !244, !302}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3407, file: !73, line: 91, baseType: !3416, size: 64, offset: 192)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{!307, !244, !3419, !3248, !3249}
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3407, file: !73, line: 93, baseType: !3421, size: 64, offset: 256)
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3422 = !DISubroutineType(types: !3423)
!3423 = !{null, !244}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3407, file: !73, line: 95, baseType: !3425, size: 64, offset: 320)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3427)
!3427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3428)
!3428 = !{!3429, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3427, file: !80, line: 279, baseType: !3430, size: 64)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{!134, !244}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3427, file: !80, line: 280, baseType: !3421, size: 64, offset: 64)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3427, file: !80, line: 281, baseType: !3430, size: 64, offset: 128)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3427, file: !80, line: 282, baseType: !3430, size: 64, offset: 192)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3427, file: !80, line: 283, baseType: !3430, size: 64, offset: 256)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3427, file: !80, line: 284, baseType: !3430, size: 64, offset: 320)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3427, file: !80, line: 285, baseType: !3430, size: 64, offset: 384)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3427, file: !80, line: 286, baseType: !3430, size: 64, offset: 448)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3427, file: !80, line: 287, baseType: !3430, size: 64, offset: 512)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3427, file: !80, line: 288, baseType: !3430, size: 64, offset: 576)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3427, file: !80, line: 289, baseType: !3430, size: 64, offset: 640)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3427, file: !80, line: 290, baseType: !3430, size: 64, offset: 704)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3427, file: !80, line: 291, baseType: !3430, size: 64, offset: 768)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3427, file: !80, line: 292, baseType: !3430, size: 64, offset: 832)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3427, file: !80, line: 293, baseType: !3430, size: 64, offset: 896)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3427, file: !80, line: 294, baseType: !3430, size: 64, offset: 960)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3427, file: !80, line: 295, baseType: !3430, size: 64, offset: 1024)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3427, file: !80, line: 296, baseType: !3430, size: 64, offset: 1088)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3427, file: !80, line: 297, baseType: !3430, size: 64, offset: 1152)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3427, file: !80, line: 298, baseType: !3430, size: 64, offset: 1216)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3427, file: !80, line: 299, baseType: !3430, size: 64, offset: 1280)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3427, file: !80, line: 300, baseType: !3430, size: 64, offset: 1344)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3427, file: !80, line: 301, baseType: !3430, size: 64, offset: 1408)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !245, file: !73, line: 470, baseType: !3456, size: 64, offset: 768)
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3457, size: 64)
!3457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3458, line: 82, size: 1408, elements: !3459)
!3458 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3459 = !{!3460, !3461, !3462, !3463, !3464, !3465, !3466, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3541, !3544, !3545}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3457, file: !3458, line: 83, baseType: !177, size: 64)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3457, file: !3458, line: 84, baseType: !177, size: 64, offset: 64)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3457, file: !3458, line: 85, baseType: !244, size: 64, offset: 128)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3457, file: !3458, line: 86, baseType: !358, size: 64, offset: 192)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3457, file: !3458, line: 87, baseType: !358, size: 64, offset: 256)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3457, file: !3458, line: 88, baseType: !358, size: 64, offset: 320)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3457, file: !3458, line: 90, baseType: !3467, size: 64, offset: 384)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = !DISubroutineType(types: !3469)
!3469 = !{!134, !244, !3470}
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3471, size: 64)
!3471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3472)
!3472 = !{!3473, !3474, !3475, !3476, !3477, !3478, !3479, !3492, !3505, !3506, !3507, !3508, !3509, !3517, !3518, !3519, !3520, !3521, !3522}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3471, file: !67, line: 96, baseType: !177, size: 64)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3471, file: !67, line: 97, baseType: !3456, size: 64, offset: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3471, file: !67, line: 99, baseType: !179, size: 64, offset: 128)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3471, file: !67, line: 100, baseType: !177, size: 64, offset: 192)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3471, file: !67, line: 102, baseType: !216, size: 8, offset: 256)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3471, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3471, file: !67, line: 105, baseType: !3480, size: 64, offset: 320)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3482)
!3482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3483, line: 262, size: 1600, elements: !3484)
!3483 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3484 = !{!3485, !3486, !3487, !3491}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3482, file: !3483, line: 263, baseType: !2727, size: 256)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3482, file: !3483, line: 264, baseType: !2727, size: 256, offset: 256)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3482, file: !3483, line: 265, baseType: !3488, size: 1024, offset: 512)
!3488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 1024, elements: !3489)
!3489 = !{!3490}
!3490 = !DISubrange(count: 128)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3482, file: !3483, line: 266, baseType: !2154, size: 64, offset: 1536)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3471, file: !67, line: 106, baseType: !3493, size: 64, offset: 384)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3495)
!3495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3483, line: 210, size: 256, elements: !3496)
!3496 = !{!3497, !3501, !3503, !3504}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3495, file: !3483, line: 211, baseType: !3498, size: 72)
!3498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1380, size: 72, elements: !3499)
!3499 = !{!3500}
!3500 = !DISubrange(count: 9)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3495, file: !3483, line: 212, baseType: !3502, size: 64, offset: 128)
!3502 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3483, line: 14, baseType: !197)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3495, file: !3483, line: 213, baseType: !447, size: 32, offset: 192)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3495, file: !3483, line: 214, baseType: !447, size: 32, offset: 224)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3471, file: !67, line: 108, baseType: !3430, size: 64, offset: 448)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3471, file: !67, line: 109, baseType: !3421, size: 64, offset: 512)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3471, file: !67, line: 110, baseType: !3430, size: 64, offset: 576)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3471, file: !67, line: 111, baseType: !3421, size: 64, offset: 640)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3471, file: !67, line: 112, baseType: !3510, size: 64, offset: 704)
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3511 = !DISubroutineType(types: !3512)
!3512 = !{!134, !244, !3513}
!3513 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3514)
!3514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3515)
!3515 = !{!3516}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3514, file: !80, line: 51, baseType: !134, size: 32)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3471, file: !67, line: 113, baseType: !3430, size: 64, offset: 768)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3471, file: !67, line: 114, baseType: !358, size: 64, offset: 832)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3471, file: !67, line: 115, baseType: !358, size: 64, offset: 896)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3471, file: !67, line: 117, baseType: !3425, size: 64, offset: 960)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3471, file: !67, line: 118, baseType: !3421, size: 64, offset: 1024)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3471, file: !67, line: 120, baseType: !3523, size: 64, offset: 1088)
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3524 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3457, file: !3458, line: 91, baseType: !3412, size: 64, offset: 448)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3457, file: !3458, line: 92, baseType: !3430, size: 64, offset: 512)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3457, file: !3458, line: 93, baseType: !3421, size: 64, offset: 576)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3457, file: !3458, line: 94, baseType: !3430, size: 64, offset: 640)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3457, file: !3458, line: 95, baseType: !3421, size: 64, offset: 704)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3457, file: !3458, line: 97, baseType: !3430, size: 64, offset: 768)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3457, file: !3458, line: 98, baseType: !3430, size: 64, offset: 832)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3457, file: !3458, line: 100, baseType: !3510, size: 64, offset: 896)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3457, file: !3458, line: 101, baseType: !3430, size: 64, offset: 960)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3457, file: !3458, line: 103, baseType: !3430, size: 64, offset: 1024)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3457, file: !3458, line: 105, baseType: !3430, size: 64, offset: 1088)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3457, file: !3458, line: 107, baseType: !3425, size: 64, offset: 1152)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3457, file: !3458, line: 109, baseType: !3538, size: 64, offset: 1216)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3540)
!3540 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3458, line: 109, flags: DIFlagFwdDecl)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3457, file: !3458, line: 111, baseType: !3542, size: 64, offset: 1280)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3458, line: 111, flags: DIFlagFwdDecl)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3457, file: !3458, line: 112, baseType: !673, offset: 1344)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3457, file: !3458, line: 114, baseType: !216, size: 8, offset: 1344)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !245, file: !73, line: 471, baseType: !3470, size: 64, offset: 832)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !245, file: !73, line: 473, baseType: !199, size: 64, offset: 896)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !245, file: !73, line: 475, baseType: !199, size: 64, offset: 960)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !245, file: !73, line: 480, baseType: !1200, size: 192, offset: 1024)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !245, file: !73, line: 484, baseType: !3551, size: 576, offset: 1216)
!3551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3552)
!3552 = !{!3553, !3554, !3555, !3556, !3557, !3558}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3551, file: !73, line: 362, baseType: !253, size: 128)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3551, file: !73, line: 363, baseType: !253, size: 128, offset: 128)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3551, file: !73, line: 364, baseType: !253, size: 128, offset: 256)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3551, file: !73, line: 365, baseType: !253, size: 128, offset: 384)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3551, file: !73, line: 366, baseType: !216, size: 8, offset: 512)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3551, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !245, file: !73, line: 485, baseType: !3560, size: 2304, offset: 1792)
!3560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3561)
!3561 = !{!3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3657, !3661}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3560, file: !80, line: 566, baseType: !3513, size: 32)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3560, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3560, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3560, file: !80, line: 569, baseType: !216, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3560, file: !80, line: 570, baseType: !216, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3560, file: !80, line: 571, baseType: !216, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3560, file: !80, line: 572, baseType: !216, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3560, file: !80, line: 573, baseType: !216, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3560, file: !80, line: 574, baseType: !216, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3560, file: !80, line: 575, baseType: !216, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3560, file: !80, line: 576, baseType: !216, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3560, file: !80, line: 577, baseType: !445, size: 32, offset: 64)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3560, file: !80, line: 578, baseType: !266, offset: 96)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3560, file: !80, line: 580, baseType: !253, size: 128, offset: 128)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3560, file: !80, line: 581, baseType: !1529, size: 192, offset: 256)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3560, file: !80, line: 582, baseType: !3578, size: 64, offset: 448)
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3580, line: 43, size: 1472, elements: !3581)
!3580 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3581 = !{!3582, !3583, !3584, !3585, !3586, !3589, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3579, file: !3580, line: 44, baseType: !177, size: 64)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3579, file: !3580, line: 45, baseType: !134, size: 32, offset: 64)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3579, file: !3580, line: 46, baseType: !253, size: 128, offset: 128)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3579, file: !3580, line: 47, baseType: !266, offset: 256)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3579, file: !3580, line: 48, baseType: !3587, size: 64, offset: 256)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3579, file: !3580, line: 49, baseType: !3590, size: 320, offset: 320)
!3590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3591, line: 11, size: 320, elements: !3592)
!3591 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3592 = !{!3593, !3594, !3595, !3600}
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3590, file: !3591, line: 16, baseType: !667, size: 128)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3590, file: !3591, line: 17, baseType: !197, size: 64, offset: 128)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3590, file: !3591, line: 18, baseType: !3596, size: 64, offset: 192)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = !DISubroutineType(types: !3598)
!3598 = !{null, !3599}
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3590, file: !3591, line: 19, baseType: !445, size: 32, offset: 256)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3579, file: !3580, line: 50, baseType: !197, size: 64, offset: 640)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3579, file: !3580, line: 51, baseType: !1327, size: 64, offset: 704)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3579, file: !3580, line: 52, baseType: !1327, size: 64, offset: 768)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3579, file: !3580, line: 53, baseType: !1327, size: 64, offset: 832)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3579, file: !3580, line: 54, baseType: !1327, size: 64, offset: 896)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3579, file: !3580, line: 55, baseType: !1327, size: 64, offset: 960)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3579, file: !3580, line: 56, baseType: !197, size: 64, offset: 1024)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3579, file: !3580, line: 57, baseType: !197, size: 64, offset: 1088)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3579, file: !3580, line: 58, baseType: !197, size: 64, offset: 1152)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3579, file: !3580, line: 59, baseType: !197, size: 64, offset: 1216)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3579, file: !3580, line: 60, baseType: !197, size: 64, offset: 1280)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3579, file: !3580, line: 61, baseType: !244, size: 64, offset: 1344)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3579, file: !3580, line: 62, baseType: !216, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3579, file: !3580, line: 63, baseType: !216, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3560, file: !80, line: 583, baseType: !216, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3560, file: !80, line: 584, baseType: !216, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3560, file: !80, line: 585, baseType: !216, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3560, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3560, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3560, file: !80, line: 592, baseType: !1319, size: 512, offset: 576)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3560, file: !80, line: 593, baseType: !451, size: 64, offset: 1088)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3560, file: !80, line: 594, baseType: !1984, size: 256, offset: 1152)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3560, file: !80, line: 595, baseType: !1508, size: 128, offset: 1408)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3560, file: !80, line: 596, baseType: !3587, size: 64, offset: 1536)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3560, file: !80, line: 597, baseType: !776, size: 32, offset: 1600)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3560, file: !80, line: 598, baseType: !776, size: 32, offset: 1632)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3560, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3560, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3560, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3560, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3560, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3560, file: !80, line: 604, baseType: !216, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3560, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3560, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3560, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3560, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3560, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3560, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3560, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3560, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3560, file: !80, line: 613, baseType: !134, size: 32, offset: 1792)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3560, file: !80, line: 614, baseType: !134, size: 32, offset: 1824)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3560, file: !80, line: 615, baseType: !451, size: 64, offset: 1856)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3560, file: !80, line: 616, baseType: !451, size: 64, offset: 1920)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3560, file: !80, line: 617, baseType: !451, size: 64, offset: 1984)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3560, file: !80, line: 618, baseType: !451, size: 64, offset: 2048)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3560, file: !80, line: 620, baseType: !3648, size: 64, offset: 2112)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3650)
!3650 = !{!3651, !3652, !3653, !3654}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3649, file: !80, line: 537, baseType: !266)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3649, file: !80, line: 538, baseType: !7, size: 32)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3649, file: !80, line: 540, baseType: !253, size: 128, offset: 64)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3649, file: !80, line: 543, baseType: !3655, size: 64, offset: 192)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3560, file: !80, line: 621, baseType: !3658, size: 64, offset: 2176)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DISubroutineType(types: !3660)
!3660 = !{null, !244, !1471}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3560, file: !80, line: 622, baseType: !3662, size: 64, offset: 2240)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !245, file: !73, line: 486, baseType: !3665, size: 64, offset: 4096)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3667)
!3667 = !{!3668, !3669, !3670, !3674, !3675, !3676}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3666, file: !80, line: 643, baseType: !3427, size: 1472)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3666, file: !80, line: 644, baseType: !3430, size: 64, offset: 1472)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3666, file: !80, line: 645, baseType: !3671, size: 64, offset: 1536)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = !DISubroutineType(types: !3673)
!3673 = !{null, !244, !216}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3666, file: !80, line: 646, baseType: !3430, size: 64, offset: 1600)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3666, file: !80, line: 647, baseType: !3421, size: 64, offset: 1664)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3666, file: !80, line: 648, baseType: !3421, size: 64, offset: 1728)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !245, file: !73, line: 493, baseType: !3678, size: 64, offset: 4160)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !73, line: 493, flags: DIFlagFwdDecl)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !245, file: !73, line: 499, baseType: !253, size: 128, offset: 4224)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !245, file: !73, line: 502, baseType: !3682, size: 64, offset: 4352)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3684)
!3684 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !245, file: !73, line: 504, baseType: !3686, size: 64, offset: 4416)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !245, file: !73, line: 505, baseType: !451, size: 64, offset: 4480)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !245, file: !73, line: 510, baseType: !451, size: 64, offset: 4544)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !245, file: !73, line: 511, baseType: !3690, size: 64, offset: 4608)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3692)
!3692 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !245, file: !73, line: 513, baseType: !3694, size: 64, offset: 4672)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3696)
!3696 = !{!3697, !3698}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3695, file: !73, line: 293, baseType: !7, size: 32)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3695, file: !73, line: 294, baseType: !197, size: 64, offset: 64)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !245, file: !73, line: 515, baseType: !253, size: 128, offset: 4736)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !245, file: !73, line: 526, baseType: !3701, offset: 4864)
!3701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3702, line: 5, elements: !280)
!3702 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !245, file: !73, line: 528, baseType: !3704, size: 64, offset: 4864)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3706, line: 14, flags: DIFlagFwdDecl)
!3706 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !245, file: !73, line: 529, baseType: !3708, size: 64, offset: 4928)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3710, line: 17, size: 192, elements: !3711)
!3710 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3711 = !{!3712, !3713, !3796}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3709, file: !3710, line: 18, baseType: !3708, size: 64)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3709, file: !3710, line: 19, baseType: !3714, size: 64, offset: 64)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3716)
!3716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3710, line: 110, size: 1152, elements: !3717)
!3717 = !{!3718, !3722, !3726, !3732, !3738, !3742, !3746, !3751, !3755, !3756, !3760, !3764, !3768, !3779, !3780, !3781, !3782, !3792}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3716, file: !3710, line: 111, baseType: !3719, size: 64)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!3708, !3708}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3716, file: !3710, line: 112, baseType: !3723, size: 64, offset: 64)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{null, !3708}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3716, file: !3710, line: 113, baseType: !3727, size: 64, offset: 128)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!216, !3730}
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3709)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3716, file: !3710, line: 114, baseType: !3733, size: 64, offset: 192)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!2154, !3730, !3736}
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3716, file: !3710, line: 116, baseType: !3739, size: 64, offset: 256)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!216, !3730, !177}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3716, file: !3710, line: 118, baseType: !3743, size: 64, offset: 320)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{!134, !3730, !177, !7, !199, !352}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3716, file: !3710, line: 123, baseType: !3747, size: 64, offset: 384)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{!134, !3730, !177, !3750, !352}
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3716, file: !3710, line: 126, baseType: !3752, size: 64, offset: 448)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{!177, !3730}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3716, file: !3710, line: 127, baseType: !3752, size: 64, offset: 512)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3716, file: !3710, line: 128, baseType: !3757, size: 64, offset: 576)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!3708, !3730}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3716, file: !3710, line: 130, baseType: !3761, size: 64, offset: 640)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = !DISubroutineType(types: !3763)
!3763 = !{!3708, !3730, !3708}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3716, file: !3710, line: 133, baseType: !3765, size: 64, offset: 704)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DISubroutineType(types: !3767)
!3767 = !{!3708, !3730, !177}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3716, file: !3710, line: 135, baseType: !3769, size: 64, offset: 768)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!134, !3730, !177, !177, !7, !7, !3772}
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3710, line: 43, size: 640, elements: !3774)
!3774 = !{!3775, !3776, !3777}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3773, file: !3710, line: 44, baseType: !3708, size: 64)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3773, file: !3710, line: 45, baseType: !7, size: 32, offset: 64)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3773, file: !3710, line: 46, baseType: !3778, size: 512, offset: 128)
!3778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, size: 512, elements: !1357)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3716, file: !3710, line: 140, baseType: !3761, size: 64, offset: 832)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3716, file: !3710, line: 143, baseType: !3757, size: 64, offset: 896)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3716, file: !3710, line: 145, baseType: !3719, size: 64, offset: 960)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3716, file: !3710, line: 146, baseType: !3783, size: 64, offset: 1024)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{!134, !3730, !3786}
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3710, line: 29, size: 128, elements: !3788)
!3788 = !{!3789, !3790, !3791}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3787, file: !3710, line: 30, baseType: !7, size: 32)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3787, file: !3710, line: 31, baseType: !7, size: 32, offset: 32)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3787, file: !3710, line: 32, baseType: !3730, size: 64, offset: 64)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3716, file: !3710, line: 148, baseType: !3793, size: 64, offset: 1088)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{!134, !3730, !244}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3709, file: !3710, line: 20, baseType: !244, size: 64, offset: 128)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !245, file: !73, line: 534, baseType: !541, size: 32, offset: 4992)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !245, file: !73, line: 535, baseType: !445, size: 32, offset: 5024)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !245, file: !73, line: 537, baseType: !266, offset: 5056)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !245, file: !73, line: 538, baseType: !253, size: 128, offset: 5056)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !245, file: !73, line: 540, baseType: !3802, size: 64, offset: 5184)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3804, line: 54, size: 960, elements: !3805)
!3804 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3805 = !{!3806, !3807, !3808, !3809, !3810, !3811, !3812, !3816, !3820, !3821, !3822, !3823, !3827, !3831, !3832}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3803, file: !3804, line: 55, baseType: !177, size: 64)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3803, file: !3804, line: 56, baseType: !179, size: 64, offset: 64)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3803, file: !3804, line: 58, baseType: !358, size: 64, offset: 128)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3803, file: !3804, line: 59, baseType: !358, size: 64, offset: 192)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3803, file: !3804, line: 60, baseType: !259, size: 64, offset: 256)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3803, file: !3804, line: 62, baseType: !3412, size: 64, offset: 320)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3803, file: !3804, line: 63, baseType: !3813, size: 64, offset: 384)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{!307, !244, !3419}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3803, file: !3804, line: 65, baseType: !3817, size: 64, offset: 448)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{null, !3802}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3803, file: !3804, line: 66, baseType: !3421, size: 64, offset: 512)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3803, file: !3804, line: 68, baseType: !3430, size: 64, offset: 576)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3803, file: !3804, line: 70, baseType: !3216, size: 64, offset: 640)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3803, file: !3804, line: 71, baseType: !3824, size: 64, offset: 704)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!2154, !244}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3803, file: !3804, line: 73, baseType: !3828, size: 64, offset: 768)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{null, !244, !3248, !3249}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3803, file: !3804, line: 75, baseType: !3425, size: 64, offset: 832)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3803, file: !3804, line: 77, baseType: !3542, size: 64, offset: 896)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !245, file: !73, line: 541, baseType: !358, size: 64, offset: 5248)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !245, file: !73, line: 543, baseType: !3421, size: 64, offset: 5312)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !245, file: !73, line: 544, baseType: !3836, size: 64, offset: 5376)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !245, file: !73, line: 545, baseType: !3839, size: 64, offset: 5440)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !245, file: !73, line: 547, baseType: !216, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !245, file: !73, line: 548, baseType: !216, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !245, file: !73, line: 549, baseType: !216, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !245, file: !73, line: 550, baseType: !216, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "page_list", scope: !241, file: !123, line: 251, baseType: !3846, size: 64, offset: 64)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_page", file: !123, line: 220, size: 128, elements: !3848)
!3848 = !{!3849, !3850}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "virt_addr", scope: !3847, file: !123, line: 221, baseType: !199, size: 64)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3847, file: !123, line: 222, baseType: !949, size: 64, offset: 64)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "n_pages", scope: !241, file: !123, line: 252, baseType: !7, size: 32, offset: 128)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "dma_dir", scope: !241, file: !123, line: 253, baseType: !93, size: 32, offset: 160)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !241, file: !123, line: 254, baseType: !3390, size: 32, offset: 192)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "max_bufsize", scope: !235, file: !123, line: 351, baseType: !7, size: 32, offset: 192)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_count", scope: !235, file: !123, line: 352, baseType: !7, size: 32, offset: 224)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_alloc_count", scope: !235, file: !123, line: 353, baseType: !7, size: 32, offset: 256)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_count", scope: !235, file: !123, line: 354, baseType: !7, size: 32, offset: 288)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_alloc_count", scope: !235, file: !123, line: 355, baseType: !7, size: 32, offset: 320)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_ptr", scope: !235, file: !123, line: 356, baseType: !7, size: 32, offset: 352)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_ptr", scope: !235, file: !123, line: 357, baseType: !7, size: 32, offset: 384)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "cur_chan", scope: !235, file: !123, line: 358, baseType: !7, size: 32, offset: 416)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "scans_done", scope: !235, file: !123, line: 359, baseType: !7, size: 32, offset: 448)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "scan_progress", scope: !235, file: !123, line: 360, baseType: !7, size: 32, offset: 480)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "munge_chan", scope: !235, file: !123, line: 361, baseType: !7, size: 32, offset: 512)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "munge_count", scope: !235, file: !123, line: 362, baseType: !7, size: 32, offset: 544)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "munge_ptr", scope: !235, file: !123, line: 363, baseType: !7, size: 32, offset: 576)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !235, file: !123, line: 364, baseType: !7, size: 32, offset: 608)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !235, file: !123, line: 365, baseType: !3869, size: 640, offset: 640)
!3869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_cmd", file: !101, line: 589, size: 640, elements: !3870)
!3870 = !{!3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3887}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "subdev", scope: !3869, file: !101, line: 590, baseType: !7, size: 32)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3869, file: !101, line: 591, baseType: !7, size: 32, offset: 32)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "start_src", scope: !3869, file: !101, line: 593, baseType: !7, size: 32, offset: 64)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "start_arg", scope: !3869, file: !101, line: 594, baseType: !7, size: 32, offset: 96)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "scan_begin_src", scope: !3869, file: !101, line: 596, baseType: !7, size: 32, offset: 128)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "scan_begin_arg", scope: !3869, file: !101, line: 597, baseType: !7, size: 32, offset: 160)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "convert_src", scope: !3869, file: !101, line: 599, baseType: !7, size: 32, offset: 192)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "convert_arg", scope: !3869, file: !101, line: 600, baseType: !7, size: 32, offset: 224)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "scan_end_src", scope: !3869, file: !101, line: 602, baseType: !7, size: 32, offset: 256)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "scan_end_arg", scope: !3869, file: !101, line: 603, baseType: !7, size: 32, offset: 288)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "stop_src", scope: !3869, file: !101, line: 605, baseType: !7, size: 32, offset: 320)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "stop_arg", scope: !3869, file: !101, line: 606, baseType: !7, size: 32, offset: 352)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist", scope: !3869, file: !101, line: 608, baseType: !2710, size: 64, offset: 384)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist_len", scope: !3869, file: !101, line: 609, baseType: !7, size: 32, offset: 448)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3869, file: !101, line: 611, baseType: !3886, size: 64, offset: 512)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !3869, file: !101, line: 612, baseType: !7, size: 32, offset: 576)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "wait_head", scope: !235, file: !123, line: 366, baseType: !1508, size: 128, offset: 1280)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "cb_mask", scope: !235, file: !123, line: 367, baseType: !7, size: 32, offset: 1408)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "inttrig", scope: !235, file: !123, line: 368, baseType: !3891, size: 64, offset: 1472)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{!134, !186, !223, !7}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !224, file: !123, line: 165, baseType: !199, size: 64, offset: 384)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !224, file: !123, line: 166, baseType: !199, size: 64, offset: 448)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "runflags", scope: !224, file: !123, line: 167, baseType: !7, size: 32, offset: 512)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "spin_lock", scope: !224, file: !123, line: 168, baseType: !266, offset: 544)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "io_bits", scope: !224, file: !123, line: 170, baseType: !7, size: 32, offset: 544)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata", scope: !224, file: !123, line: 172, baseType: !7, size: 32, offset: 576)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata_list", scope: !224, file: !123, line: 173, baseType: !3901, size: 64, offset: 640)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "range_table", scope: !224, file: !123, line: 175, baseType: !3903, size: 64, offset: 704)
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3905)
!3905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_lrange", file: !123, line: 635, size: 32, elements: !3906)
!3906 = !{!3907, !3908}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3905, file: !123, line: 636, baseType: !134, size: 32)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3905, file: !123, line: 637, baseType: !3909, offset: 32)
!3909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3910, elements: !2358)
!3910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_krange", file: !101, line: 685, size: 96, elements: !3911)
!3911 = !{!3912, !3913, !3914}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !3910, file: !101, line: 686, baseType: !134, size: 32)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3910, file: !101, line: 687, baseType: !134, size: 32, offset: 32)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3910, file: !101, line: 688, baseType: !7, size: 32, offset: 64)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "range_table_list", scope: !224, file: !123, line: 176, baseType: !3916, size: 64, offset: 768)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3903)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist", scope: !224, file: !123, line: 178, baseType: !2710, size: 64, offset: 832)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "insn_read", scope: !224, file: !123, line: 180, baseType: !220, size: 64, offset: 896)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "insn_write", scope: !224, file: !123, line: 182, baseType: !220, size: 64, offset: 960)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "insn_bits", scope: !224, file: !123, line: 184, baseType: !220, size: 64, offset: 1024)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "insn_config", scope: !224, file: !123, line: 186, baseType: !220, size: 64, offset: 1088)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmd", scope: !224, file: !123, line: 191, baseType: !3924, size: 64, offset: 1152)
!3924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3925, size: 64)
!3925 = !DISubroutineType(types: !3926)
!3926 = !{!134, !186, !223}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmdtest", scope: !224, file: !123, line: 192, baseType: !3928, size: 64, offset: 1216)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = !DISubroutineType(types: !3930)
!3930 = !{!134, !186, !223, !3931}
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !224, file: !123, line: 195, baseType: !3924, size: 64, offset: 1280)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "cancel", scope: !224, file: !123, line: 196, baseType: !3924, size: 64, offset: 1344)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "buf_change", scope: !224, file: !123, line: 199, baseType: !3924, size: 64, offset: 1408)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "munge", scope: !224, file: !123, line: 202, baseType: !3936, size: 64, offset: 1472)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{null, !186, !223, !199, !7, !7}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "async_dma_dir", scope: !224, file: !123, line: 205, baseType: !93, size: 32, offset: 1536)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !224, file: !123, line: 207, baseType: !7, size: 32, offset: 1568)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !224, file: !123, line: 209, baseType: !244, size: 64, offset: 1600)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !224, file: !123, line: 210, baseType: !134, size: 32, offset: 1664)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "readback", scope: !224, file: !123, line: 212, baseType: !2710, size: 64, offset: 1728)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_insn", file: !101, line: 491, size: 320, elements: !3946)
!3946 = !{!3947, !3948, !3949, !3950, !3951, !3952}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3945, file: !101, line: 492, baseType: !7, size: 32)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !3945, file: !101, line: 493, baseType: !7, size: 32, offset: 32)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3945, file: !101, line: 494, baseType: !2710, size: 64, offset: 64)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "subdev", scope: !3945, file: !101, line: 495, baseType: !7, size: 32, offset: 128)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "chanspec", scope: !3945, file: !101, line: 496, baseType: !7, size: 32, offset: 160)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !3945, file: !101, line: 497, baseType: !210, size: 96, offset: 192)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !187, file: !123, line: 545, baseType: !199, size: 64, offset: 192)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !187, file: !123, line: 547, baseType: !244, size: 64, offset: 256)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !187, file: !123, line: 548, baseType: !134, size: 32, offset: 320)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "detach_count", scope: !187, file: !123, line: 549, baseType: !7, size: 32, offset: 352)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "hw_dev", scope: !187, file: !123, line: 550, baseType: !244, size: 64, offset: 384)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !187, file: !123, line: 552, baseType: !177, size: 64, offset: 448)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "board_ptr", scope: !187, file: !123, line: 553, baseType: !2154, size: 64, offset: 512)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "attached", scope: !187, file: !123, line: 554, baseType: !7, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "ioenabled", scope: !187, file: !123, line: 555, baseType: !7, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "spinlock", scope: !187, file: !123, line: 556, baseType: !266, offset: 584)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !187, file: !123, line: 557, baseType: !1200, size: 192, offset: 640)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "attach_lock", scope: !187, file: !123, line: 558, baseType: !796, size: 256, offset: 832)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !187, file: !123, line: 559, baseType: !3390, size: 32, offset: 1088)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "n_subdevices", scope: !187, file: !123, line: 561, baseType: !134, size: 32, offset: 1120)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "subdevices", scope: !187, file: !123, line: 562, baseType: !223, size: 64, offset: 1152)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "mmio", scope: !187, file: !123, line: 565, baseType: !199, size: 64, offset: 1216)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "iobase", scope: !187, file: !123, line: 566, baseType: !197, size: 64, offset: 1280)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "iolen", scope: !187, file: !123, line: 567, baseType: !197, size: 64, offset: 1344)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !187, file: !123, line: 568, baseType: !7, size: 32, offset: 1408)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "read_subdev", scope: !187, file: !123, line: 570, baseType: !223, size: 64, offset: 1472)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "write_subdev", scope: !187, file: !123, line: 571, baseType: !223, size: 64, offset: 1536)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "async_queue", scope: !187, file: !123, line: 573, baseType: !2986, size: 64, offset: 1600)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !187, file: !123, line: 575, baseType: !3976, size: 64, offset: 1664)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{!134, !186}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !187, file: !123, line: 576, baseType: !3980, size: 64, offset: 1728)
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = !DISubroutineType(types: !3982)
!3982 = !{null, !186}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "insn_device_config", scope: !187, file: !123, line: 577, baseType: !3984, size: 64, offset: 1792)
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3985, size: 64)
!3985 = !DISubroutineType(types: !3986)
!3986 = !{!134, !186, !3944, !2710}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "get_valid_routes", scope: !187, file: !123, line: 579, baseType: !3988, size: 64, offset: 1856)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{!7, !186, !7, !2710}
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3992, size: 64)
!3992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_devconfig", file: !101, line: 834, size: 1184, elements: !3993)
!3993 = !{!3994, !3996}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !3992, file: !101, line: 835, baseType: !3995, size: 160)
!3995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 160, elements: !2228)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !3992, file: !101, line: 836, baseType: !3997, size: 1024, offset: 160)
!3997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 1024, elements: !2257)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !172, file: !123, line: 444, baseType: !3980, size: 64, offset: 256)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "auto_attach", scope: !172, file: !123, line: 445, baseType: !4000, size: 64, offset: 320)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = !DISubroutineType(types: !4002)
!4002 = !{!134, !186, !197}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "num_names", scope: !172, file: !123, line: 446, baseType: !7, size: 32, offset: 384)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !172, file: !123, line: 447, baseType: !4005, size: 64, offset: 448)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !172, file: !123, line: 448, baseType: !134, size: 32, offset: 512)
!4008 = !DIGlobalVariableExpression(var: !4009, expr: !DIExpression())
!4009 = distinct !DIGlobalVariable(name: "me4000_boards", scope: !2, file: !3, line: 188, type: !4010, isLocal: true, isDefinition: true)
!4010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4011, size: 1664, elements: !4022)
!4011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4012)
!4012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "me4000_board", file: !3, line: 177, size: 128, elements: !4013)
!4013 = !{!4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021}
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4012, file: !3, line: 178, baseType: !177, size: 64)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "ai_nchan", scope: !4012, file: !3, line: 179, baseType: !134, size: 32, offset: 64)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "can_do_diff_ai", scope: !4012, file: !3, line: 180, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "can_do_sh_ai", scope: !4012, file: !3, line: 181, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "ex_trig_analog", scope: !4012, file: !3, line: 182, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "has_ao", scope: !4012, file: !3, line: 183, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "has_ao_fifo", scope: !4012, file: !3, line: 184, baseType: !7, size: 1, offset: 100, flags: DIFlagBitField, extraData: i64 96)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "has_counter", scope: !4012, file: !3, line: 185, baseType: !7, size: 1, offset: 101, flags: DIFlagBitField, extraData: i64 96)
!4022 = !{!4023}
!4023 = !DISubrange(count: 13)
!4024 = !DIGlobalVariableExpression(var: !4025, expr: !DIExpression())
!4025 = distinct !DIGlobalVariable(name: "me4000_ai_range", scope: !2, file: !3, line: 299, type: !3904, isLocal: true, isDefinition: true)
!4026 = !DIGlobalVariableExpression(var: !4027, expr: !DIExpression())
!4027 = distinct !DIGlobalVariable(name: "me4000_pci_driver", scope: !2, file: !3, line: 1267, type: !4028, isLocal: true, isDefinition: true)
!4028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !4029, line: 858, size: 2048, elements: !4030)
!4029 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!4030 = !{!4031, !4032, !4033, !4045, !4265, !4269, !4273, !4277, !4278, !4282, !4300, !4301, !4302}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4028, file: !4029, line: 859, baseType: !253, size: 128)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4028, file: !4029, line: 860, baseType: !177, size: 64, offset: 128)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4028, file: !4029, line: 861, baseType: !4034, size: 64, offset: 192)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4036)
!4036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3483, line: 38, size: 256, elements: !4037)
!4037 = !{!4038, !4039, !4040, !4041, !4042, !4043, !4044}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4036, file: !3483, line: 39, baseType: !447, size: 32)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4036, file: !3483, line: 39, baseType: !447, size: 32, offset: 32)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4036, file: !3483, line: 40, baseType: !447, size: 32, offset: 64)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4036, file: !3483, line: 40, baseType: !447, size: 32, offset: 96)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4036, file: !3483, line: 41, baseType: !447, size: 32, offset: 128)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4036, file: !3483, line: 41, baseType: !447, size: 32, offset: 160)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4036, file: !3483, line: 42, baseType: !3502, size: 64, offset: 192)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4028, file: !4029, line: 862, baseType: !4046, size: 64, offset: 256)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = !DISubroutineType(types: !4048)
!4048 = !{!134, !4049, !4034}
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !4029, line: 309, size: 19264, elements: !4051)
!4051 = !{!4052, !4053, !4128, !4129, !4130, !4131, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4159, !4161, !4162, !4163, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4187, !4188, !4189, !4190, !4192, !4193, !4194, !4195, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4238, !4239, !4241, !4242, !4243, !4244, !4246, !4247, !4248, !4251, !4258, !4259, !4260, !4261, !4262, !4263, !4264}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !4050, file: !4029, line: 310, baseType: !253, size: 128)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4050, file: !4029, line: 311, baseType: !4054, size: 64, offset: 128)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !4029, line: 605, size: 8064, elements: !4056)
!4056 = !{!4057, !4058, !4059, !4060, !4061, !4062, !4063, !4078, !4079, !4080, !4104, !4107, !4108, !4112, !4113, !4114, !4115, !4116, !4120, !4121, !4123, !4124, !4125, !4126, !4127}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4055, file: !4029, line: 606, baseType: !253, size: 128)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4055, file: !4029, line: 607, baseType: !4054, size: 64, offset: 128)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4055, file: !4029, line: 608, baseType: !253, size: 128, offset: 192)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4055, file: !4029, line: 609, baseType: !253, size: 128, offset: 320)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4055, file: !4029, line: 610, baseType: !4049, size: 64, offset: 448)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4055, file: !4029, line: 611, baseType: !253, size: 128, offset: 512)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4055, file: !4029, line: 613, baseType: !4064, size: 256, offset: 640)
!4064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4065, size: 256, elements: !1182)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4067, line: 20, size: 512, elements: !4068)
!4067 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!4068 = !{!4069, !4071, !4072, !4073, !4074, !4075, !4076, !4077}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4066, file: !4067, line: 21, baseType: !4070, size: 64)
!4070 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !217, line: 158, baseType: !2152)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4066, file: !4067, line: 22, baseType: !4070, size: 64, offset: 64)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4066, file: !4067, line: 23, baseType: !177, size: 64, offset: 128)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4066, file: !4067, line: 24, baseType: !197, size: 64, offset: 192)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4066, file: !4067, line: 25, baseType: !197, size: 64, offset: 256)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4066, file: !4067, line: 26, baseType: !4065, size: 64, offset: 320)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4066, file: !4067, line: 26, baseType: !4065, size: 64, offset: 384)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4066, file: !4067, line: 26, baseType: !4065, size: 64, offset: 448)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4055, file: !4029, line: 614, baseType: !253, size: 128, offset: 896)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !4055, file: !4029, line: 615, baseType: !4066, size: 512, offset: 1024)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4055, file: !4029, line: 617, baseType: !4081, size: 64, offset: 1536)
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !4029, line: 731, size: 320, elements: !4083)
!4083 = !{!4084, !4088, !4092, !4096, !4100}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4082, file: !4029, line: 732, baseType: !4085, size: 64)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = !DISubroutineType(types: !4087)
!4087 = !{!134, !4054}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4082, file: !4029, line: 733, baseType: !4089, size: 64, offset: 64)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = !DISubroutineType(types: !4091)
!4091 = !{null, !4054}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4082, file: !4029, line: 734, baseType: !4093, size: 64, offset: 128)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DISubroutineType(types: !4095)
!4095 = !{!199, !4054, !7, !134}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4082, file: !4029, line: 735, baseType: !4097, size: 64, offset: 192)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = !DISubroutineType(types: !4099)
!4099 = !{!134, !4054, !7, !134, !134, !1442}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4082, file: !4029, line: 736, baseType: !4101, size: 64, offset: 256)
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 64)
!4102 = !DISubroutineType(types: !4103)
!4103 = !{!134, !4054, !7, !134, !134, !445}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4055, file: !4029, line: 618, baseType: !4105, size: 64, offset: 1600)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !4029, line: 537, flags: DIFlagFwdDecl)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4055, file: !4029, line: 619, baseType: !199, size: 64, offset: 1664)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !4055, file: !4029, line: 620, baseType: !4109, size: 64, offset: 1728)
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4111, line: 123, flags: DIFlagFwdDecl)
!4111 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4055, file: !4029, line: 622, baseType: !457, size: 8, offset: 1792)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4055, file: !4029, line: 623, baseType: !457, size: 8, offset: 1800)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !4055, file: !4029, line: 624, baseType: !457, size: 8, offset: 1808)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !4055, file: !4029, line: 625, baseType: !457, size: 8, offset: 1816)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4055, file: !4029, line: 630, baseType: !4117, size: 384, offset: 1824)
!4117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 384, elements: !4118)
!4118 = !{!4119}
!4119 = !DISubrange(count: 48)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !4055, file: !4029, line: 632, baseType: !347, size: 16, offset: 2208)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !4055, file: !4029, line: 633, baseType: !4122, size: 16, offset: 2224)
!4122 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !4029, line: 237, baseType: !347)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !4055, file: !4029, line: 634, baseType: !244, size: 64, offset: 2240)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4055, file: !4029, line: 635, baseType: !245, size: 5568, offset: 2304)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !4055, file: !4029, line: 636, baseType: !372, size: 64, offset: 7872)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !4055, file: !4029, line: 637, baseType: !372, size: 64, offset: 7936)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !4055, file: !4029, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !4050, file: !4029, line: 312, baseType: !4054, size: 64, offset: 192)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4050, file: !4029, line: 314, baseType: !199, size: 64, offset: 256)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !4050, file: !4029, line: 315, baseType: !4109, size: 64, offset: 320)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4050, file: !4029, line: 316, baseType: !4132, size: 64, offset: 384)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !4029, line: 69, size: 832, elements: !4134)
!4134 = !{!4135, !4136, !4137, !4140, !4141}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4133, file: !4029, line: 70, baseType: !4054, size: 64)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4133, file: !4029, line: 71, baseType: !253, size: 128, offset: 64)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4133, file: !4029, line: 72, baseType: !4138, size: 64, offset: 192)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !4029, line: 72, flags: DIFlagFwdDecl)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4133, file: !4029, line: 73, baseType: !457, size: 8, offset: 256)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4133, file: !4029, line: 74, baseType: !248, size: 512, offset: 320)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !4050, file: !4029, line: 318, baseType: !7, size: 32, offset: 448)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4050, file: !4029, line: 319, baseType: !347, size: 16, offset: 480)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4050, file: !4029, line: 320, baseType: !347, size: 16, offset: 496)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4050, file: !4029, line: 321, baseType: !347, size: 16, offset: 512)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4050, file: !4029, line: 322, baseType: !347, size: 16, offset: 528)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4050, file: !4029, line: 323, baseType: !7, size: 32, offset: 544)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4050, file: !4029, line: 324, baseType: !1379, size: 8, offset: 576)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4050, file: !4029, line: 325, baseType: !1379, size: 8, offset: 584)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !4050, file: !4029, line: 330, baseType: !1379, size: 8, offset: 592)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !4050, file: !4029, line: 331, baseType: !1379, size: 8, offset: 600)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !4050, file: !4029, line: 332, baseType: !1379, size: 8, offset: 608)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !4050, file: !4029, line: 333, baseType: !1379, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !4050, file: !4029, line: 334, baseType: !1379, size: 8, offset: 624)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4050, file: !4029, line: 335, baseType: !1379, size: 8, offset: 632)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !4050, file: !4029, line: 336, baseType: !888, size: 16, offset: 640)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !4050, file: !4029, line: 337, baseType: !4158, size: 64, offset: 704)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4050, file: !4029, line: 339, baseType: !4160, size: 64, offset: 768)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4050, file: !4029, line: 340, baseType: !451, size: 64, offset: 832)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4050, file: !4029, line: 346, baseType: !3695, size: 128, offset: 896)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !4050, file: !4029, line: 348, baseType: !4164, size: 32, offset: 1024)
!4164 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !4029, line: 155, baseType: !134)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !4050, file: !4029, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !4050, file: !4029, line: 352, baseType: !1379, size: 8, offset: 1064)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !4050, file: !4029, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !4050, file: !4029, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !4050, file: !4029, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !4050, file: !4029, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !4050, file: !4029, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !4050, file: !4029, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !4050, file: !4029, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !4050, file: !4029, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !4050, file: !4029, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !4050, file: !4029, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !4050, file: !4029, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !4050, file: !4029, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !4050, file: !4029, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !4050, file: !4029, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !4050, file: !4029, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !4050, file: !4029, line: 376, baseType: !7, size: 32, offset: 1120)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !4050, file: !4029, line: 377, baseType: !7, size: 32, offset: 1152)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !4050, file: !4029, line: 380, baseType: !4185, size: 64, offset: 1216)
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4186, size: 64)
!4186 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !4029, line: 303, flags: DIFlagFwdDecl)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !4050, file: !4029, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !4050, file: !4029, line: 383, baseType: !134, size: 32, offset: 1312)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !4050, file: !4029, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !4050, file: !4029, line: 387, baseType: !4191, size: 32, offset: 1376)
!4191 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !4029, line: 180, baseType: !7)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4050, file: !4029, line: 388, baseType: !245, size: 5568, offset: 1408)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !4050, file: !4029, line: 390, baseType: !134, size: 32, offset: 6976)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4050, file: !4029, line: 396, baseType: !7, size: 32, offset: 7008)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4050, file: !4029, line: 397, baseType: !4196, size: 8704, offset: 7040)
!4196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4066, size: 8704, elements: !4197)
!4197 = !{!4198}
!4198 = !DISubrange(count: 17)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4050, file: !4029, line: 399, baseType: !216, size: 8, offset: 15744)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !4050, file: !4029, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !4050, file: !4029, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !4050, file: !4029, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !4050, file: !4029, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !4050, file: !4029, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !4050, file: !4029, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !4050, file: !4029, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !4050, file: !4029, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !4050, file: !4029, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !4050, file: !4029, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !4050, file: !4029, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !4050, file: !4029, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !4050, file: !4029, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !4050, file: !4029, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !4050, file: !4029, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !4050, file: !4029, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !4050, file: !4029, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !4050, file: !4029, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !4050, file: !4029, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !4050, file: !4029, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !4050, file: !4029, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !4050, file: !4029, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !4050, file: !4029, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !4050, file: !4029, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !4050, file: !4029, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !4050, file: !4029, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !4050, file: !4029, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !4050, file: !4029, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !4050, file: !4029, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !4050, file: !4029, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !4050, file: !4029, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !4050, file: !4029, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !4050, file: !4029, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !4050, file: !4029, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !4050, file: !4029, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !4050, file: !4029, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !4050, file: !4029, line: 450, baseType: !4237, size: 16, offset: 15792)
!4237 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !4029, line: 206, baseType: !347)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !4050, file: !4029, line: 451, baseType: !776, size: 32, offset: 15808)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !4050, file: !4029, line: 453, baseType: !4240, size: 512, offset: 15840)
!4240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 512, elements: !1762)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !4050, file: !4029, line: 454, baseType: !663, size: 64, offset: 16384)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !4050, file: !4029, line: 455, baseType: !372, size: 64, offset: 16448)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !4050, file: !4029, line: 456, baseType: !134, size: 32, offset: 16512)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !4050, file: !4029, line: 457, baseType: !4245, size: 1088, offset: 16576)
!4245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 1088, elements: !4197)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !4050, file: !4029, line: 458, baseType: !4245, size: 1088, offset: 17664)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !4050, file: !4029, line: 469, baseType: !358, size: 64, offset: 18752)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !4050, file: !4029, line: 471, baseType: !4249, size: 64, offset: 18816)
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4250, size: 64)
!4250 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !4029, line: 304, flags: DIFlagFwdDecl)
!4251 = !DIDerivedType(tag: DW_TAG_member, scope: !4050, file: !4029, line: 478, baseType: !4252, size: 64, offset: 18880)
!4252 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4050, file: !4029, line: 478, size: 64, elements: !4253)
!4253 = !{!4254, !4257}
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4252, file: !4029, line: 479, baseType: !4255, size: 64)
!4255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4256, size: 64)
!4256 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !4029, line: 305, flags: DIFlagFwdDecl)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4252, file: !4029, line: 480, baseType: !4049, size: 64)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !4050, file: !4029, line: 482, baseType: !888, size: 16, offset: 18944)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !4050, file: !4029, line: 483, baseType: !1379, size: 8, offset: 18960)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !4050, file: !4029, line: 497, baseType: !888, size: 16, offset: 18976)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !4050, file: !4029, line: 498, baseType: !2152, size: 64, offset: 19008)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !4050, file: !4029, line: 499, baseType: !352, size: 64, offset: 19072)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !4050, file: !4029, line: 500, baseType: !307, size: 64, offset: 19136)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !4050, file: !4029, line: 502, baseType: !197, size: 64, offset: 19200)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4028, file: !4029, line: 863, baseType: !4266, size: 64, offset: 320)
!4266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4267, size: 64)
!4267 = !DISubroutineType(types: !4268)
!4268 = !{null, !4049}
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4028, file: !4029, line: 864, baseType: !4270, size: 64, offset: 384)
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = !DISubroutineType(types: !4272)
!4272 = !{!134, !4049, !3513}
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4028, file: !4029, line: 865, baseType: !4274, size: 64, offset: 448)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4275 = !DISubroutineType(types: !4276)
!4276 = !{!134, !4049}
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4028, file: !4029, line: 866, baseType: !4266, size: 64, offset: 512)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4028, file: !4029, line: 867, baseType: !4279, size: 64, offset: 576)
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4280 = !DISubroutineType(types: !4281)
!4281 = !{!134, !4049, !134}
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4028, file: !4029, line: 868, baseType: !4283, size: 64, offset: 640)
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4284, size: 64)
!4284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4285)
!4285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !4029, line: 795, size: 384, elements: !4286)
!4286 = !{!4287, !4292, !4296, !4297, !4298, !4299}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4285, file: !4029, line: 797, baseType: !4288, size: 64)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = !DISubroutineType(types: !4290)
!4290 = !{!4291, !4049, !4191}
!4291 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !4029, line: 772, baseType: !7)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4285, file: !4029, line: 801, baseType: !4293, size: 64, offset: 64)
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4294, size: 64)
!4294 = !DISubroutineType(types: !4295)
!4295 = !{!4291, !4049}
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4285, file: !4029, line: 804, baseType: !4293, size: 64, offset: 128)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4285, file: !4029, line: 807, baseType: !4266, size: 64, offset: 192)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4285, file: !4029, line: 808, baseType: !4266, size: 64, offset: 256)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4285, file: !4029, line: 811, baseType: !4266, size: 64, offset: 320)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4028, file: !4029, line: 869, baseType: !358, size: 64, offset: 704)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4028, file: !4029, line: 870, baseType: !3471, size: 1152, offset: 768)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4028, file: !4029, line: 871, baseType: !4303, size: 128, offset: 1920)
!4303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !4029, line: 759, size: 128, elements: !4304)
!4304 = !{!4305, !4306}
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4303, file: !4029, line: 760, baseType: !266)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4303, file: !4029, line: 761, baseType: !253, size: 128)
!4307 = !DIGlobalVariableExpression(var: !4308, expr: !DIExpression())
!4308 = distinct !DIGlobalVariable(name: "me4000_pci_table", scope: !2, file: !3, line: 1249, type: !4309, isLocal: true, isDefinition: true)
!4309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4035, size: 3584, elements: !4310)
!4310 = !{!4311}
!4311 = !DISubrange(count: 14)
!4312 = !{i32 7, !"Dwarf Version", i32 4}
!4313 = !{i32 2, !"Debug Info Version", i32 3}
!4314 = !{i32 1, !"wchar_size", i32 2}
!4315 = !{i32 1, !"Code Model", i32 2}
!4316 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4317 = distinct !DISubprogram(name: "me4000_driver_init", scope: !3, file: !3, line: 1273, type: !4318, scopeLine: 1273, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!4318 = !DISubroutineType(types: !4319)
!4319 = !{!134}
!4320 = !DILocation(line: 1273, column: 1, scope: !4317)
!4321 = distinct !DISubprogram(name: "me4000_driver_exit", scope: !3, file: !3, line: 1273, type: !141, scopeLine: 1273, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!4322 = !DILocation(line: 1273, column: 1, scope: !4321)
!4323 = distinct !DISubprogram(name: "me4000_detach", scope: !3, file: !3, line: 1225, type: !3981, scopeLine: 1226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!4324 = !DILocalVariable(name: "dev", arg: 1, scope: !4323, file: !3, line: 1225, type: !186)
!4325 = !DILocation(line: 1225, column: 49, scope: !4323)
!4326 = !DILocation(line: 1227, column: 6, scope: !4327)
!4327 = distinct !DILexicalBlock(scope: !4323, file: !3, line: 1227, column: 6)
!4328 = !DILocation(line: 1227, column: 11, scope: !4327)
!4329 = !DILocation(line: 1227, column: 6, scope: !4323)
!4330 = !DILocalVariable(name: "devpriv", scope: !4331, file: !3, line: 1228, type: !4332)
!4331 = distinct !DILexicalBlock(scope: !4327, file: !3, line: 1227, column: 16)
!4332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4333, size: 64)
!4333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "me4000_private", file: !3, line: 153, size: 192, elements: !4334)
!4334 = !{!4335, !4336, !4337, !4338, !4339}
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "plx_regbase", scope: !4333, file: !3, line: 154, baseType: !197, size: 64)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "ai_ctrl_mode", scope: !4333, file: !3, line: 155, baseType: !7, size: 32, offset: 64)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "ai_init_ticks", scope: !4333, file: !3, line: 156, baseType: !7, size: 32, offset: 96)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "ai_scan_ticks", scope: !4333, file: !3, line: 157, baseType: !7, size: 32, offset: 128)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "ai_chan_ticks", scope: !4333, file: !3, line: 158, baseType: !7, size: 32, offset: 160)
!4340 = !DILocation(line: 1228, column: 26, scope: !4331)
!4341 = !DILocation(line: 1228, column: 36, scope: !4331)
!4342 = !DILocation(line: 1228, column: 41, scope: !4331)
!4343 = !DILocation(line: 1231, column: 11, scope: !4331)
!4344 = !DILocation(line: 1231, column: 20, scope: !4331)
!4345 = !DILocation(line: 1231, column: 32, scope: !4331)
!4346 = !DILocation(line: 1231, column: 3, scope: !4331)
!4347 = !DILocation(line: 1232, column: 2, scope: !4331)
!4348 = !DILocation(line: 1233, column: 20, scope: !4323)
!4349 = !DILocation(line: 1233, column: 2, scope: !4323)
!4350 = !DILocation(line: 1234, column: 1, scope: !4323)
!4351 = distinct !DISubprogram(name: "me4000_auto_attach", scope: !3, file: !3, line: 1095, type: !4001, scopeLine: 1097, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!4352 = !DILocalVariable(name: "dev", arg: 1, scope: !4351, file: !3, line: 1095, type: !186)
!4353 = !DILocation(line: 1095, column: 53, scope: !4351)
!4354 = !DILocalVariable(name: "context", arg: 2, scope: !4351, file: !3, line: 1096, type: !197)
!4355 = !DILocation(line: 1096, column: 24, scope: !4351)
!4356 = !DILocalVariable(name: "pcidev", scope: !4351, file: !3, line: 1098, type: !4049)
!4357 = !DILocation(line: 1098, column: 18, scope: !4351)
!4358 = !DILocation(line: 1098, column: 45, scope: !4351)
!4359 = !DILocation(line: 1098, column: 27, scope: !4351)
!4360 = !DILocalVariable(name: "board", scope: !4351, file: !3, line: 1099, type: !4361)
!4361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4362 = !DILocation(line: 1099, column: 29, scope: !4351)
!4363 = !DILocalVariable(name: "devpriv", scope: !4351, file: !3, line: 1100, type: !4332)
!4364 = !DILocation(line: 1100, column: 25, scope: !4351)
!4365 = !DILocalVariable(name: "s", scope: !4351, file: !3, line: 1101, type: !223)
!4366 = !DILocation(line: 1101, column: 27, scope: !4351)
!4367 = !DILocalVariable(name: "result", scope: !4351, file: !3, line: 1102, type: !134)
!4368 = !DILocation(line: 1102, column: 6, scope: !4351)
!4369 = !DILocation(line: 1104, column: 6, scope: !4370)
!4370 = distinct !DILexicalBlock(scope: !4351, file: !3, line: 1104, column: 6)
!4371 = !DILocation(line: 1104, column: 14, scope: !4370)
!4372 = !DILocation(line: 1104, column: 6, scope: !4351)
!4373 = !DILocation(line: 1105, column: 26, scope: !4370)
!4374 = !DILocation(line: 1105, column: 12, scope: !4370)
!4375 = !DILocation(line: 1105, column: 9, scope: !4370)
!4376 = !DILocation(line: 1105, column: 3, scope: !4370)
!4377 = !DILocation(line: 1106, column: 7, scope: !4378)
!4378 = distinct !DILexicalBlock(scope: !4351, file: !3, line: 1106, column: 6)
!4379 = !DILocation(line: 1106, column: 6, scope: !4351)
!4380 = !DILocation(line: 1107, column: 3, scope: !4378)
!4381 = !DILocation(line: 1108, column: 19, scope: !4351)
!4382 = !DILocation(line: 1108, column: 2, scope: !4351)
!4383 = !DILocation(line: 1108, column: 7, scope: !4351)
!4384 = !DILocation(line: 1108, column: 17, scope: !4351)
!4385 = !DILocation(line: 1109, column: 20, scope: !4351)
!4386 = !DILocation(line: 1109, column: 27, scope: !4351)
!4387 = !DILocation(line: 1109, column: 2, scope: !4351)
!4388 = !DILocation(line: 1109, column: 7, scope: !4351)
!4389 = !DILocation(line: 1109, column: 18, scope: !4351)
!4390 = !DILocation(line: 1111, column: 33, scope: !4351)
!4391 = !DILocation(line: 1111, column: 12, scope: !4351)
!4392 = !DILocation(line: 1111, column: 10, scope: !4351)
!4393 = !DILocation(line: 1112, column: 7, scope: !4394)
!4394 = distinct !DILexicalBlock(scope: !4351, file: !3, line: 1112, column: 6)
!4395 = !DILocation(line: 1112, column: 6, scope: !4351)
!4396 = !DILocation(line: 1113, column: 3, scope: !4394)
!4397 = !DILocation(line: 1115, column: 29, scope: !4351)
!4398 = !DILocation(line: 1115, column: 11, scope: !4351)
!4399 = !DILocation(line: 1115, column: 9, scope: !4351)
!4400 = !DILocation(line: 1116, column: 6, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4351, file: !3, line: 1116, column: 6)
!4402 = !DILocation(line: 1116, column: 6, scope: !4351)
!4403 = !DILocation(line: 1117, column: 10, scope: !4401)
!4404 = !DILocation(line: 1117, column: 3, scope: !4401)
!4405 = !DILocation(line: 1119, column: 25, scope: !4351)
!4406 = !DILocation(line: 1119, column: 2, scope: !4351)
!4407 = !DILocation(line: 1119, column: 11, scope: !4351)
!4408 = !DILocation(line: 1119, column: 23, scope: !4351)
!4409 = !DILocation(line: 1120, column: 16, scope: !4351)
!4410 = !DILocation(line: 1120, column: 2, scope: !4351)
!4411 = !DILocation(line: 1120, column: 7, scope: !4351)
!4412 = !DILocation(line: 1120, column: 14, scope: !4351)
!4413 = !DILocation(line: 1121, column: 7, scope: !4414)
!4414 = distinct !DILexicalBlock(scope: !4351, file: !3, line: 1121, column: 6)
!4415 = !DILocation(line: 1121, column: 16, scope: !4414)
!4416 = !DILocation(line: 1121, column: 28, scope: !4414)
!4417 = !DILocation(line: 1121, column: 32, scope: !4414)
!4418 = !DILocation(line: 1121, column: 37, scope: !4414)
!4419 = !DILocation(line: 1121, column: 6, scope: !4351)
!4420 = !DILocation(line: 1122, column: 3, scope: !4414)
!4421 = !DILocation(line: 1124, column: 32, scope: !4351)
!4422 = !DILocation(line: 1124, column: 38, scope: !4351)
!4423 = !DILocation(line: 1124, column: 46, scope: !4351)
!4424 = !DILocation(line: 1124, column: 11, scope: !4351)
!4425 = !DILocation(line: 1124, column: 9, scope: !4351)
!4426 = !DILocation(line: 1126, column: 6, scope: !4427)
!4427 = distinct !DILexicalBlock(scope: !4351, file: !3, line: 1126, column: 6)
!4428 = !DILocation(line: 1126, column: 13, scope: !4427)
!4429 = !DILocation(line: 1126, column: 6, scope: !4351)
!4430 = !DILocation(line: 1127, column: 10, scope: !4427)
!4431 = !DILocation(line: 1127, column: 3, scope: !4427)
!4432 = !DILocation(line: 1129, column: 15, scope: !4351)
!4433 = !DILocation(line: 1129, column: 2, scope: !4351)
!4434 = !DILocation(line: 1131, column: 6, scope: !4435)
!4435 = distinct !DILexicalBlock(scope: !4351, file: !3, line: 1131, column: 6)
!4436 = !DILocation(line: 1131, column: 14, scope: !4435)
!4437 = !DILocation(line: 1131, column: 18, scope: !4435)
!4438 = !DILocation(line: 1131, column: 6, scope: !4351)
!4439 = !DILocation(line: 1132, column: 24, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4435, file: !3, line: 1131, column: 23)
!4441 = !DILocation(line: 1132, column: 32, scope: !4440)
!4442 = !DILocation(line: 1133, column: 10, scope: !4440)
!4443 = !DILocation(line: 1133, column: 15, scope: !4440)
!4444 = !DILocation(line: 1133, column: 27, scope: !4440)
!4445 = !DILocation(line: 1132, column: 12, scope: !4440)
!4446 = !DILocation(line: 1132, column: 10, scope: !4440)
!4447 = !DILocation(line: 1134, column: 7, scope: !4448)
!4448 = distinct !DILexicalBlock(scope: !4440, file: !3, line: 1134, column: 7)
!4449 = !DILocation(line: 1134, column: 14, scope: !4448)
!4450 = !DILocation(line: 1134, column: 7, scope: !4440)
!4451 = !DILocation(line: 1135, column: 15, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4448, file: !3, line: 1134, column: 20)
!4453 = !DILocation(line: 1135, column: 23, scope: !4452)
!4454 = !DILocation(line: 1135, column: 4, scope: !4452)
!4455 = !DILocation(line: 1135, column: 9, scope: !4452)
!4456 = !DILocation(line: 1135, column: 13, scope: !4452)
!4457 = !DILocation(line: 1140, column: 9, scope: !4452)
!4458 = !DILocation(line: 1140, column: 18, scope: !4452)
!4459 = !DILocation(line: 1140, column: 30, scope: !4452)
!4460 = !DILocation(line: 1138, column: 4, scope: !4452)
!4461 = !DILocation(line: 1141, column: 3, scope: !4452)
!4462 = !DILocation(line: 1142, column: 2, scope: !4440)
!4463 = !DILocation(line: 1144, column: 35, scope: !4351)
!4464 = !DILocation(line: 1144, column: 11, scope: !4351)
!4465 = !DILocation(line: 1144, column: 9, scope: !4351)
!4466 = !DILocation(line: 1145, column: 6, scope: !4467)
!4467 = distinct !DILexicalBlock(scope: !4351, file: !3, line: 1145, column: 6)
!4468 = !DILocation(line: 1145, column: 6, scope: !4351)
!4469 = !DILocation(line: 1146, column: 10, scope: !4467)
!4470 = !DILocation(line: 1146, column: 3, scope: !4467)
!4471 = !DILocation(line: 1149, column: 7, scope: !4351)
!4472 = !DILocation(line: 1149, column: 12, scope: !4351)
!4473 = !DILocation(line: 1149, column: 4, scope: !4351)
!4474 = !DILocation(line: 1150, column: 2, scope: !4351)
!4475 = !DILocation(line: 1150, column: 5, scope: !4351)
!4476 = !DILocation(line: 1150, column: 11, scope: !4351)
!4477 = !DILocation(line: 1151, column: 2, scope: !4351)
!4478 = !DILocation(line: 1151, column: 5, scope: !4351)
!4479 = !DILocation(line: 1151, column: 18, scope: !4351)
!4480 = !DILocation(line: 1152, column: 6, scope: !4481)
!4481 = distinct !DILexicalBlock(scope: !4351, file: !3, line: 1152, column: 6)
!4482 = !DILocation(line: 1152, column: 13, scope: !4481)
!4483 = !DILocation(line: 1152, column: 6, scope: !4351)
!4484 = !DILocation(line: 1153, column: 3, scope: !4481)
!4485 = !DILocation(line: 1153, column: 6, scope: !4481)
!4486 = !DILocation(line: 1153, column: 19, scope: !4481)
!4487 = !DILocation(line: 1154, column: 14, scope: !4351)
!4488 = !DILocation(line: 1154, column: 21, scope: !4351)
!4489 = !DILocation(line: 1154, column: 2, scope: !4351)
!4490 = !DILocation(line: 1154, column: 5, scope: !4351)
!4491 = !DILocation(line: 1154, column: 12, scope: !4351)
!4492 = !DILocation(line: 1155, column: 2, scope: !4351)
!4493 = !DILocation(line: 1155, column: 5, scope: !4351)
!4494 = !DILocation(line: 1155, column: 13, scope: !4351)
!4495 = !DILocation(line: 1156, column: 2, scope: !4351)
!4496 = !DILocation(line: 1156, column: 5, scope: !4351)
!4497 = !DILocation(line: 1156, column: 18, scope: !4351)
!4498 = !DILocation(line: 1157, column: 2, scope: !4351)
!4499 = !DILocation(line: 1157, column: 5, scope: !4351)
!4500 = !DILocation(line: 1157, column: 17, scope: !4351)
!4501 = !DILocation(line: 1158, column: 2, scope: !4351)
!4502 = !DILocation(line: 1158, column: 5, scope: !4351)
!4503 = !DILocation(line: 1158, column: 15, scope: !4351)
!4504 = !DILocation(line: 1160, column: 6, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4351, file: !3, line: 1160, column: 6)
!4506 = !DILocation(line: 1160, column: 11, scope: !4505)
!4507 = !DILocation(line: 1160, column: 6, scope: !4351)
!4508 = !DILocation(line: 1161, column: 22, scope: !4509)
!4509 = distinct !DILexicalBlock(scope: !4505, file: !3, line: 1160, column: 16)
!4510 = !DILocation(line: 1161, column: 3, scope: !4509)
!4511 = !DILocation(line: 1161, column: 8, scope: !4509)
!4512 = !DILocation(line: 1161, column: 20, scope: !4509)
!4513 = !DILocation(line: 1162, column: 3, scope: !4509)
!4514 = !DILocation(line: 1162, column: 6, scope: !4509)
!4515 = !DILocation(line: 1162, column: 19, scope: !4509)
!4516 = !DILocation(line: 1163, column: 3, scope: !4509)
!4517 = !DILocation(line: 1163, column: 6, scope: !4509)
!4518 = !DILocation(line: 1163, column: 13, scope: !4509)
!4519 = !DILocation(line: 1164, column: 3, scope: !4509)
!4520 = !DILocation(line: 1164, column: 6, scope: !4509)
!4521 = !DILocation(line: 1164, column: 17, scope: !4509)
!4522 = !DILocation(line: 1165, column: 3, scope: !4509)
!4523 = !DILocation(line: 1165, column: 6, scope: !4509)
!4524 = !DILocation(line: 1165, column: 13, scope: !4509)
!4525 = !DILocation(line: 1166, column: 2, scope: !4509)
!4526 = !DILocation(line: 1169, column: 7, scope: !4351)
!4527 = !DILocation(line: 1169, column: 12, scope: !4351)
!4528 = !DILocation(line: 1169, column: 4, scope: !4351)
!4529 = !DILocation(line: 1170, column: 6, scope: !4530)
!4530 = distinct !DILexicalBlock(scope: !4351, file: !3, line: 1170, column: 6)
!4531 = !DILocation(line: 1170, column: 13, scope: !4530)
!4532 = !DILocation(line: 1170, column: 6, scope: !4351)
!4533 = !DILocation(line: 1171, column: 3, scope: !4534)
!4534 = distinct !DILexicalBlock(scope: !4530, file: !3, line: 1170, column: 21)
!4535 = !DILocation(line: 1171, column: 6, scope: !4534)
!4536 = !DILocation(line: 1171, column: 12, scope: !4534)
!4537 = !DILocation(line: 1172, column: 3, scope: !4534)
!4538 = !DILocation(line: 1172, column: 6, scope: !4534)
!4539 = !DILocation(line: 1172, column: 19, scope: !4534)
!4540 = !DILocation(line: 1173, column: 3, scope: !4534)
!4541 = !DILocation(line: 1173, column: 6, scope: !4534)
!4542 = !DILocation(line: 1173, column: 13, scope: !4534)
!4543 = !DILocation(line: 1174, column: 3, scope: !4534)
!4544 = !DILocation(line: 1174, column: 6, scope: !4534)
!4545 = !DILocation(line: 1174, column: 14, scope: !4534)
!4546 = !DILocation(line: 1175, column: 3, scope: !4534)
!4547 = !DILocation(line: 1175, column: 6, scope: !4534)
!4548 = !DILocation(line: 1175, column: 18, scope: !4534)
!4549 = !DILocation(line: 1176, column: 3, scope: !4534)
!4550 = !DILocation(line: 1176, column: 6, scope: !4534)
!4551 = !DILocation(line: 1176, column: 17, scope: !4534)
!4552 = !DILocation(line: 1178, column: 41, scope: !4534)
!4553 = !DILocation(line: 1178, column: 12, scope: !4534)
!4554 = !DILocation(line: 1178, column: 10, scope: !4534)
!4555 = !DILocation(line: 1179, column: 7, scope: !4556)
!4556 = distinct !DILexicalBlock(scope: !4534, file: !3, line: 1179, column: 7)
!4557 = !DILocation(line: 1179, column: 7, scope: !4534)
!4558 = !DILocation(line: 1180, column: 11, scope: !4556)
!4559 = !DILocation(line: 1180, column: 4, scope: !4556)
!4560 = !DILocation(line: 1181, column: 2, scope: !4534)
!4561 = !DILocation(line: 1182, column: 3, scope: !4562)
!4562 = distinct !DILexicalBlock(scope: !4530, file: !3, line: 1181, column: 9)
!4563 = !DILocation(line: 1182, column: 6, scope: !4562)
!4564 = !DILocation(line: 1182, column: 12, scope: !4562)
!4565 = !DILocation(line: 1186, column: 7, scope: !4351)
!4566 = !DILocation(line: 1186, column: 12, scope: !4351)
!4567 = !DILocation(line: 1186, column: 4, scope: !4351)
!4568 = !DILocation(line: 1187, column: 2, scope: !4351)
!4569 = !DILocation(line: 1187, column: 5, scope: !4351)
!4570 = !DILocation(line: 1187, column: 11, scope: !4351)
!4571 = !DILocation(line: 1188, column: 2, scope: !4351)
!4572 = !DILocation(line: 1188, column: 5, scope: !4351)
!4573 = !DILocation(line: 1188, column: 18, scope: !4351)
!4574 = !DILocation(line: 1189, column: 2, scope: !4351)
!4575 = !DILocation(line: 1189, column: 5, scope: !4351)
!4576 = !DILocation(line: 1189, column: 12, scope: !4351)
!4577 = !DILocation(line: 1190, column: 2, scope: !4351)
!4578 = !DILocation(line: 1190, column: 5, scope: !4351)
!4579 = !DILocation(line: 1190, column: 13, scope: !4351)
!4580 = !DILocation(line: 1191, column: 2, scope: !4351)
!4581 = !DILocation(line: 1191, column: 5, scope: !4351)
!4582 = !DILocation(line: 1191, column: 17, scope: !4351)
!4583 = !DILocation(line: 1192, column: 2, scope: !4351)
!4584 = !DILocation(line: 1192, column: 5, scope: !4351)
!4585 = !DILocation(line: 1192, column: 15, scope: !4351)
!4586 = !DILocation(line: 1193, column: 2, scope: !4351)
!4587 = !DILocation(line: 1193, column: 5, scope: !4351)
!4588 = !DILocation(line: 1193, column: 17, scope: !4351)
!4589 = !DILocation(line: 1199, column: 11, scope: !4590)
!4590 = distinct !DILexicalBlock(scope: !4351, file: !3, line: 1199, column: 6)
!4591 = !DILocation(line: 1199, column: 16, scope: !4590)
!4592 = !DILocation(line: 1199, column: 23, scope: !4590)
!4593 = !DILocation(line: 1199, column: 7, scope: !4590)
!4594 = !DILocation(line: 1199, column: 6, scope: !4351)
!4595 = !DILocation(line: 1200, column: 3, scope: !4596)
!4596 = distinct !DILexicalBlock(scope: !4590, file: !3, line: 1199, column: 46)
!4597 = !DILocation(line: 1200, column: 6, scope: !4596)
!4598 = !DILocation(line: 1200, column: 14, scope: !4596)
!4599 = !DILocation(line: 1202, column: 8, scope: !4596)
!4600 = !DILocation(line: 1202, column: 13, scope: !4596)
!4601 = !DILocation(line: 1202, column: 20, scope: !4596)
!4602 = !DILocation(line: 1201, column: 3, scope: !4596)
!4603 = !DILocation(line: 1203, column: 2, scope: !4596)
!4604 = !DILocation(line: 1206, column: 7, scope: !4351)
!4605 = !DILocation(line: 1206, column: 12, scope: !4351)
!4606 = !DILocation(line: 1206, column: 4, scope: !4351)
!4607 = !DILocation(line: 1207, column: 6, scope: !4608)
!4608 = distinct !DILexicalBlock(scope: !4351, file: !3, line: 1207, column: 6)
!4609 = !DILocation(line: 1207, column: 13, scope: !4608)
!4610 = !DILocation(line: 1207, column: 6, scope: !4351)
!4611 = !DILocalVariable(name: "timer_base", scope: !4612, file: !3, line: 1208, type: !197)
!4612 = distinct !DILexicalBlock(scope: !4608, file: !3, line: 1207, column: 26)
!4613 = !DILocation(line: 1208, column: 17, scope: !4612)
!4614 = !DILocation(line: 1208, column: 30, scope: !4612)
!4615 = !DILocation(line: 1210, column: 8, scope: !4616)
!4616 = distinct !DILexicalBlock(scope: !4612, file: !3, line: 1210, column: 7)
!4617 = !DILocation(line: 1210, column: 7, scope: !4612)
!4618 = !DILocation(line: 1211, column: 4, scope: !4616)
!4619 = !DILocation(line: 1213, column: 33, scope: !4612)
!4620 = !DILocation(line: 1213, column: 16, scope: !4612)
!4621 = !DILocation(line: 1213, column: 3, scope: !4612)
!4622 = !DILocation(line: 1213, column: 8, scope: !4612)
!4623 = !DILocation(line: 1213, column: 14, scope: !4612)
!4624 = !DILocation(line: 1214, column: 8, scope: !4625)
!4625 = distinct !DILexicalBlock(scope: !4612, file: !3, line: 1214, column: 7)
!4626 = !DILocation(line: 1214, column: 13, scope: !4625)
!4627 = !DILocation(line: 1214, column: 7, scope: !4612)
!4628 = !DILocation(line: 1215, column: 4, scope: !4625)
!4629 = !DILocation(line: 1217, column: 30, scope: !4612)
!4630 = !DILocation(line: 1217, column: 33, scope: !4612)
!4631 = !DILocation(line: 1217, column: 38, scope: !4612)
!4632 = !DILocation(line: 1217, column: 3, scope: !4612)
!4633 = !DILocation(line: 1218, column: 2, scope: !4612)
!4634 = !DILocation(line: 1219, column: 3, scope: !4635)
!4635 = distinct !DILexicalBlock(scope: !4608, file: !3, line: 1218, column: 9)
!4636 = !DILocation(line: 1219, column: 6, scope: !4635)
!4637 = !DILocation(line: 1219, column: 11, scope: !4635)
!4638 = !DILocation(line: 1222, column: 2, scope: !4351)
!4639 = !DILocation(line: 1223, column: 1, scope: !4351)
!4640 = distinct !DISubprogram(name: "outl", scope: !4641, file: !4641, line: 336, type: !4642, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!4641 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!4642 = !DISubroutineType(types: !4643)
!4643 = !{null, !7, !134}
!4644 = !DILocalVariable(name: "value", arg: 1, scope: !4640, file: !4641, line: 336, type: !7)
!4645 = !DILocation(line: 336, column: 1, scope: !4640)
!4646 = !DILocalVariable(name: "port", arg: 2, scope: !4640, file: !4641, line: 336, type: !134)
!4647 = !{i32 -2143377142}
!4648 = distinct !DISubprogram(name: "me4000_xilinx_download", scope: !3, file: !3, line: 308, type: !4649, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!4649 = !DISubroutineType(types: !4650)
!4650 = !{!134, !186, !4651, !352, !197}
!4651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4652, size: 64)
!4652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1379)
!4653 = !DILocalVariable(name: "dev", arg: 1, scope: !4648, file: !3, line: 308, type: !186)
!4654 = !DILocation(line: 308, column: 57, scope: !4648)
!4655 = !DILocalVariable(name: "data", arg: 2, scope: !4648, file: !3, line: 309, type: !4651)
!4656 = !DILocation(line: 309, column: 17, scope: !4648)
!4657 = !DILocalVariable(name: "size", arg: 3, scope: !4648, file: !3, line: 309, type: !352)
!4658 = !DILocation(line: 309, column: 30, scope: !4648)
!4659 = !DILocalVariable(name: "context", arg: 4, scope: !4648, file: !3, line: 310, type: !197)
!4660 = !DILocation(line: 310, column: 21, scope: !4648)
!4661 = !DILocalVariable(name: "pcidev", scope: !4648, file: !3, line: 312, type: !4049)
!4662 = !DILocation(line: 312, column: 18, scope: !4648)
!4663 = !DILocation(line: 312, column: 45, scope: !4648)
!4664 = !DILocation(line: 312, column: 27, scope: !4648)
!4665 = !DILocalVariable(name: "devpriv", scope: !4648, file: !3, line: 313, type: !4332)
!4666 = !DILocation(line: 313, column: 25, scope: !4648)
!4667 = !DILocation(line: 313, column: 35, scope: !4648)
!4668 = !DILocation(line: 313, column: 40, scope: !4648)
!4669 = !DILocalVariable(name: "xilinx_iobase", scope: !4648, file: !3, line: 314, type: !197)
!4670 = !DILocation(line: 314, column: 16, scope: !4648)
!4671 = !DILocation(line: 314, column: 32, scope: !4648)
!4672 = !DILocalVariable(name: "file_length", scope: !4648, file: !3, line: 315, type: !7)
!4673 = !DILocation(line: 315, column: 15, scope: !4648)
!4674 = !DILocalVariable(name: "val", scope: !4648, file: !3, line: 316, type: !7)
!4675 = !DILocation(line: 316, column: 15, scope: !4648)
!4676 = !DILocalVariable(name: "i", scope: !4648, file: !3, line: 317, type: !7)
!4677 = !DILocation(line: 317, column: 15, scope: !4648)
!4678 = !DILocation(line: 319, column: 7, scope: !4679)
!4679 = distinct !DILexicalBlock(scope: !4648, file: !3, line: 319, column: 6)
!4680 = !DILocation(line: 319, column: 6, scope: !4648)
!4681 = !DILocation(line: 320, column: 3, scope: !4679)
!4682 = !DILocation(line: 326, column: 30, scope: !4648)
!4683 = !DILocation(line: 326, column: 39, scope: !4648)
!4684 = !DILocation(line: 326, column: 51, scope: !4648)
!4685 = !DILocation(line: 326, column: 2, scope: !4648)
!4686 = !DILocation(line: 329, column: 12, scope: !4648)
!4687 = !DILocation(line: 329, column: 21, scope: !4648)
!4688 = !DILocation(line: 329, column: 33, scope: !4648)
!4689 = !DILocation(line: 329, column: 8, scope: !4648)
!4690 = !DILocation(line: 329, column: 6, scope: !4648)
!4691 = !DILocation(line: 330, column: 6, scope: !4648)
!4692 = !DILocation(line: 331, column: 7, scope: !4648)
!4693 = !DILocation(line: 331, column: 12, scope: !4648)
!4694 = !DILocation(line: 331, column: 21, scope: !4648)
!4695 = !DILocation(line: 331, column: 33, scope: !4648)
!4696 = !DILocation(line: 331, column: 2, scope: !4648)
!4697 = !DILocation(line: 334, column: 6, scope: !4648)
!4698 = !DILocation(line: 334, column: 20, scope: !4648)
!4699 = !DILocation(line: 334, column: 2, scope: !4648)
!4700 = !DILocation(line: 337, column: 2, scope: !4648)
!4701 = !DILocation(line: 338, column: 12, scope: !4648)
!4702 = !DILocation(line: 338, column: 21, scope: !4648)
!4703 = !DILocation(line: 338, column: 33, scope: !4648)
!4704 = !DILocation(line: 338, column: 8, scope: !4648)
!4705 = !DILocation(line: 338, column: 6, scope: !4648)
!4706 = !DILocation(line: 339, column: 8, scope: !4707)
!4707 = distinct !DILexicalBlock(scope: !4648, file: !3, line: 339, column: 6)
!4708 = !DILocation(line: 339, column: 12, scope: !4707)
!4709 = !DILocation(line: 339, column: 6, scope: !4648)
!4710 = !DILocation(line: 340, column: 3, scope: !4711)
!4711 = distinct !DILexicalBlock(scope: !4707, file: !3, line: 339, column: 39)
!4712 = !DILocation(line: 341, column: 3, scope: !4711)
!4713 = !DILocation(line: 345, column: 12, scope: !4648)
!4714 = !DILocation(line: 345, column: 21, scope: !4648)
!4715 = !DILocation(line: 345, column: 33, scope: !4648)
!4716 = !DILocation(line: 345, column: 8, scope: !4648)
!4717 = !DILocation(line: 345, column: 6, scope: !4648)
!4718 = !DILocation(line: 346, column: 6, scope: !4648)
!4719 = !DILocation(line: 347, column: 7, scope: !4648)
!4720 = !DILocation(line: 347, column: 12, scope: !4648)
!4721 = !DILocation(line: 347, column: 21, scope: !4648)
!4722 = !DILocation(line: 347, column: 33, scope: !4648)
!4723 = !DILocation(line: 347, column: 2, scope: !4648)
!4724 = !DILocation(line: 350, column: 32, scope: !4648)
!4725 = !DILocation(line: 350, column: 18, scope: !4648)
!4726 = !DILocation(line: 350, column: 40, scope: !4648)
!4727 = !DILocation(line: 350, column: 48, scope: !4648)
!4728 = !DILocation(line: 351, column: 25, scope: !4648)
!4729 = !DILocation(line: 351, column: 11, scope: !4648)
!4730 = !DILocation(line: 351, column: 33, scope: !4648)
!4731 = !DILocation(line: 351, column: 41, scope: !4648)
!4732 = !DILocation(line: 350, column: 55, scope: !4648)
!4733 = !DILocation(line: 352, column: 25, scope: !4648)
!4734 = !DILocation(line: 352, column: 11, scope: !4648)
!4735 = !DILocation(line: 352, column: 33, scope: !4648)
!4736 = !DILocation(line: 352, column: 41, scope: !4648)
!4737 = !DILocation(line: 351, column: 48, scope: !4648)
!4738 = !DILocation(line: 353, column: 24, scope: !4648)
!4739 = !DILocation(line: 353, column: 10, scope: !4648)
!4740 = !DILocation(line: 353, column: 32, scope: !4648)
!4741 = !DILocation(line: 352, column: 47, scope: !4648)
!4742 = !DILocation(line: 350, column: 14, scope: !4648)
!4743 = !DILocation(line: 354, column: 2, scope: !4648)
!4744 = !DILocation(line: 356, column: 9, scope: !4745)
!4745 = distinct !DILexicalBlock(scope: !4648, file: !3, line: 356, column: 2)
!4746 = !DILocation(line: 356, column: 7, scope: !4745)
!4747 = !DILocation(line: 356, column: 14, scope: !4748)
!4748 = distinct !DILexicalBlock(scope: !4745, file: !3, line: 356, column: 2)
!4749 = !DILocation(line: 356, column: 18, scope: !4748)
!4750 = !DILocation(line: 356, column: 16, scope: !4748)
!4751 = !DILocation(line: 356, column: 2, scope: !4745)
!4752 = !DILocation(line: 357, column: 8, scope: !4753)
!4753 = distinct !DILexicalBlock(scope: !4748, file: !3, line: 356, column: 36)
!4754 = !DILocation(line: 357, column: 18, scope: !4753)
!4755 = !DILocation(line: 357, column: 16, scope: !4753)
!4756 = !DILocation(line: 357, column: 22, scope: !4753)
!4757 = !DILocation(line: 357, column: 3, scope: !4753)
!4758 = !DILocation(line: 358, column: 3, scope: !4753)
!4759 = !DILocation(line: 361, column: 13, scope: !4753)
!4760 = !DILocation(line: 361, column: 22, scope: !4753)
!4761 = !DILocation(line: 361, column: 34, scope: !4753)
!4762 = !DILocation(line: 361, column: 9, scope: !4753)
!4763 = !DILocation(line: 361, column: 7, scope: !4753)
!4764 = !DILocation(line: 362, column: 7, scope: !4765)
!4765 = distinct !DILexicalBlock(scope: !4753, file: !3, line: 362, column: 7)
!4766 = !DILocation(line: 362, column: 11, scope: !4765)
!4767 = !DILocation(line: 362, column: 7, scope: !4753)
!4768 = !DILocation(line: 363, column: 4, scope: !4769)
!4769 = distinct !DILexicalBlock(scope: !4765, file: !3, line: 362, column: 38)
!4770 = !DILocation(line: 365, column: 4, scope: !4769)
!4771 = !DILocation(line: 367, column: 2, scope: !4753)
!4772 = !DILocation(line: 356, column: 32, scope: !4748)
!4773 = !DILocation(line: 356, column: 2, scope: !4748)
!4774 = distinct !{!4774, !4751, !4775}
!4775 = !DILocation(line: 367, column: 2, scope: !4745)
!4776 = !DILocation(line: 370, column: 12, scope: !4648)
!4777 = !DILocation(line: 370, column: 21, scope: !4648)
!4778 = !DILocation(line: 370, column: 33, scope: !4648)
!4779 = !DILocation(line: 370, column: 8, scope: !4648)
!4780 = !DILocation(line: 370, column: 6, scope: !4648)
!4781 = !DILocation(line: 371, column: 8, scope: !4782)
!4782 = distinct !DILexicalBlock(scope: !4648, file: !3, line: 371, column: 6)
!4783 = !DILocation(line: 371, column: 12, scope: !4782)
!4784 = !DILocation(line: 371, column: 6, scope: !4648)
!4785 = !DILocation(line: 372, column: 3, scope: !4786)
!4786 = distinct !DILexicalBlock(scope: !4782, file: !3, line: 371, column: 40)
!4787 = !DILocation(line: 373, column: 3, scope: !4786)
!4788 = !DILocation(line: 374, column: 3, scope: !4786)
!4789 = !DILocation(line: 378, column: 12, scope: !4648)
!4790 = !DILocation(line: 378, column: 21, scope: !4648)
!4791 = !DILocation(line: 378, column: 33, scope: !4648)
!4792 = !DILocation(line: 378, column: 8, scope: !4648)
!4793 = !DILocation(line: 378, column: 6, scope: !4648)
!4794 = !DILocation(line: 379, column: 6, scope: !4648)
!4795 = !DILocation(line: 380, column: 7, scope: !4648)
!4796 = !DILocation(line: 380, column: 12, scope: !4648)
!4797 = !DILocation(line: 380, column: 21, scope: !4648)
!4798 = !DILocation(line: 380, column: 33, scope: !4648)
!4799 = !DILocation(line: 380, column: 2, scope: !4648)
!4800 = !DILocation(line: 382, column: 2, scope: !4648)
!4801 = !DILocation(line: 383, column: 1, scope: !4648)
!4802 = distinct !DISubprogram(name: "me4000_reset", scope: !3, file: !3, line: 398, type: !3981, scopeLine: 399, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!4803 = !DILocalVariable(name: "dev", arg: 1, scope: !4802, file: !3, line: 398, type: !186)
!4804 = !DILocation(line: 398, column: 48, scope: !4802)
!4805 = !DILocalVariable(name: "devpriv", scope: !4802, file: !3, line: 400, type: !4332)
!4806 = !DILocation(line: 400, column: 25, scope: !4802)
!4807 = !DILocation(line: 400, column: 35, scope: !4802)
!4808 = !DILocation(line: 400, column: 40, scope: !4802)
!4809 = !DILocalVariable(name: "val", scope: !4802, file: !3, line: 401, type: !7)
!4810 = !DILocation(line: 401, column: 15, scope: !4802)
!4811 = !DILocalVariable(name: "chan", scope: !4802, file: !3, line: 402, type: !134)
!4812 = !DILocation(line: 402, column: 6, scope: !4802)
!4813 = !DILocation(line: 405, column: 10, scope: !4802)
!4814 = !DILocation(line: 405, column: 19, scope: !4802)
!4815 = !DILocation(line: 405, column: 31, scope: !4802)
!4816 = !DILocation(line: 405, column: 2, scope: !4802)
!4817 = !DILocation(line: 408, column: 12, scope: !4802)
!4818 = !DILocation(line: 408, column: 21, scope: !4802)
!4819 = !DILocation(line: 408, column: 33, scope: !4802)
!4820 = !DILocation(line: 408, column: 8, scope: !4802)
!4821 = !DILocation(line: 408, column: 6, scope: !4802)
!4822 = !DILocation(line: 409, column: 6, scope: !4802)
!4823 = !DILocation(line: 410, column: 7, scope: !4802)
!4824 = !DILocation(line: 410, column: 12, scope: !4802)
!4825 = !DILocation(line: 410, column: 21, scope: !4802)
!4826 = !DILocation(line: 410, column: 33, scope: !4802)
!4827 = !DILocation(line: 410, column: 2, scope: !4802)
!4828 = !DILocation(line: 411, column: 6, scope: !4802)
!4829 = !DILocation(line: 412, column: 7, scope: !4802)
!4830 = !DILocation(line: 412, column: 12, scope: !4802)
!4831 = !DILocation(line: 412, column: 21, scope: !4802)
!4832 = !DILocation(line: 412, column: 33, scope: !4802)
!4833 = !DILocation(line: 412, column: 2, scope: !4802)
!4834 = !DILocation(line: 415, column: 12, scope: !4835)
!4835 = distinct !DILexicalBlock(scope: !4802, file: !3, line: 415, column: 2)
!4836 = !DILocation(line: 415, column: 7, scope: !4835)
!4837 = !DILocation(line: 415, column: 17, scope: !4838)
!4838 = distinct !DILexicalBlock(scope: !4835, file: !3, line: 415, column: 2)
!4839 = !DILocation(line: 415, column: 22, scope: !4838)
!4840 = !DILocation(line: 415, column: 2, scope: !4835)
!4841 = !DILocation(line: 416, column: 16, scope: !4838)
!4842 = !DILocation(line: 416, column: 21, scope: !4838)
!4843 = !DILocation(line: 416, column: 30, scope: !4838)
!4844 = !DILocation(line: 416, column: 28, scope: !4838)
!4845 = !DILocation(line: 416, column: 3, scope: !4838)
!4846 = !DILocation(line: 415, column: 31, scope: !4838)
!4847 = !DILocation(line: 415, column: 2, scope: !4838)
!4848 = distinct !{!4848, !4840, !4849}
!4849 = !DILocation(line: 416, column: 56, scope: !4835)
!4850 = !DILocation(line: 418, column: 18, scope: !4802)
!4851 = !DILocation(line: 418, column: 2, scope: !4802)
!4852 = !DILocation(line: 421, column: 6, scope: !4802)
!4853 = !DILocation(line: 422, column: 12, scope: !4854)
!4854 = distinct !DILexicalBlock(scope: !4802, file: !3, line: 422, column: 2)
!4855 = !DILocation(line: 422, column: 7, scope: !4854)
!4856 = !DILocation(line: 422, column: 17, scope: !4857)
!4857 = distinct !DILexicalBlock(scope: !4854, file: !3, line: 422, column: 2)
!4858 = !DILocation(line: 422, column: 22, scope: !4857)
!4859 = !DILocation(line: 422, column: 2, scope: !4854)
!4860 = !DILocation(line: 423, column: 8, scope: !4857)
!4861 = !DILocation(line: 423, column: 13, scope: !4857)
!4862 = !DILocation(line: 423, column: 18, scope: !4857)
!4863 = !DILocation(line: 423, column: 27, scope: !4857)
!4864 = !DILocation(line: 423, column: 25, scope: !4857)
!4865 = !DILocation(line: 423, column: 3, scope: !4857)
!4866 = !DILocation(line: 422, column: 31, scope: !4857)
!4867 = !DILocation(line: 422, column: 2, scope: !4857)
!4868 = distinct !{!4868, !4859, !4869}
!4869 = !DILocation(line: 423, column: 51, scope: !4854)
!4870 = !DILocation(line: 427, column: 7, scope: !4802)
!4871 = !DILocation(line: 427, column: 12, scope: !4802)
!4872 = !DILocation(line: 427, column: 19, scope: !4802)
!4873 = !DILocation(line: 426, column: 2, scope: !4802)
!4874 = !DILocation(line: 433, column: 12, scope: !4875)
!4875 = distinct !DILexicalBlock(scope: !4802, file: !3, line: 433, column: 6)
!4876 = !DILocation(line: 433, column: 17, scope: !4875)
!4877 = !DILocation(line: 433, column: 24, scope: !4875)
!4878 = !DILocation(line: 433, column: 8, scope: !4875)
!4879 = !DILocation(line: 433, column: 46, scope: !4875)
!4880 = !DILocation(line: 433, column: 6, scope: !4802)
!4881 = !DILocation(line: 434, column: 13, scope: !4875)
!4882 = !DILocation(line: 434, column: 18, scope: !4875)
!4883 = !DILocation(line: 434, column: 25, scope: !4875)
!4884 = !DILocation(line: 434, column: 3, scope: !4875)
!4885 = !DILocation(line: 435, column: 1, scope: !4802)
!4886 = distinct !DISubprogram(name: "request_irq", scope: !4111, file: !4111, line: 157, type: !4887, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!4887 = !DISubroutineType(types: !4888)
!4888 = !{!134, !7, !4889, !197, !177, !199}
!4889 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !4111, line: 92, baseType: !4890)
!4890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4891, size: 64)
!4891 = !DISubroutineType(types: !4892)
!4892 = !{!4893, !134, !199}
!4893 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !117, line: 17, baseType: !116)
!4894 = !DILocalVariable(name: "irq", arg: 1, scope: !4886, file: !4111, line: 157, type: !7)
!4895 = !DILocation(line: 157, column: 26, scope: !4886)
!4896 = !DILocalVariable(name: "handler", arg: 2, scope: !4886, file: !4111, line: 157, type: !4889)
!4897 = !DILocation(line: 157, column: 45, scope: !4886)
!4898 = !DILocalVariable(name: "flags", arg: 3, scope: !4886, file: !4111, line: 157, type: !197)
!4899 = !DILocation(line: 157, column: 68, scope: !4886)
!4900 = !DILocalVariable(name: "name", arg: 4, scope: !4886, file: !4111, line: 158, type: !177)
!4901 = !DILocation(line: 158, column: 18, scope: !4886)
!4902 = !DILocalVariable(name: "dev", arg: 5, scope: !4886, file: !4111, line: 158, type: !199)
!4903 = !DILocation(line: 158, column: 30, scope: !4886)
!4904 = !DILocation(line: 160, column: 30, scope: !4886)
!4905 = !DILocation(line: 160, column: 35, scope: !4886)
!4906 = !DILocation(line: 160, column: 50, scope: !4886)
!4907 = !DILocation(line: 160, column: 57, scope: !4886)
!4908 = !DILocation(line: 160, column: 63, scope: !4886)
!4909 = !DILocation(line: 160, column: 9, scope: !4886)
!4910 = !DILocation(line: 160, column: 2, scope: !4886)
!4911 = distinct !DISubprogram(name: "me4000_ai_isr", scope: !3, file: !3, line: 920, type: !4891, scopeLine: 921, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!4912 = !DILocalVariable(name: "irq", arg: 1, scope: !4911, file: !3, line: 920, type: !134)
!4913 = !DILocation(line: 920, column: 38, scope: !4911)
!4914 = !DILocalVariable(name: "dev_id", arg: 2, scope: !4911, file: !3, line: 920, type: !199)
!4915 = !DILocation(line: 920, column: 49, scope: !4911)
!4916 = !DILocalVariable(name: "tmp", scope: !4911, file: !3, line: 922, type: !7)
!4917 = !DILocation(line: 922, column: 15, scope: !4911)
!4918 = !DILocalVariable(name: "dev", scope: !4911, file: !3, line: 923, type: !186)
!4919 = !DILocation(line: 923, column: 24, scope: !4911)
!4920 = !DILocation(line: 923, column: 30, scope: !4911)
!4921 = !DILocalVariable(name: "s", scope: !4911, file: !3, line: 924, type: !223)
!4922 = !DILocation(line: 924, column: 27, scope: !4911)
!4923 = !DILocation(line: 924, column: 31, scope: !4911)
!4924 = !DILocation(line: 924, column: 36, scope: !4911)
!4925 = !DILocalVariable(name: "i", scope: !4911, file: !3, line: 925, type: !134)
!4926 = !DILocation(line: 925, column: 6, scope: !4911)
!4927 = !DILocalVariable(name: "c", scope: !4911, file: !3, line: 926, type: !134)
!4928 = !DILocation(line: 926, column: 6, scope: !4911)
!4929 = !DILocalVariable(name: "lval", scope: !4911, file: !3, line: 927, type: !7)
!4930 = !DILocation(line: 927, column: 15, scope: !4911)
!4931 = !DILocation(line: 929, column: 7, scope: !4932)
!4932 = distinct !DILexicalBlock(scope: !4911, file: !3, line: 929, column: 6)
!4933 = !DILocation(line: 929, column: 12, scope: !4932)
!4934 = !DILocation(line: 929, column: 6, scope: !4911)
!4935 = !DILocation(line: 930, column: 3, scope: !4932)
!4936 = !DILocation(line: 932, column: 10, scope: !4937)
!4937 = distinct !DILexicalBlock(scope: !4911, file: !3, line: 932, column: 6)
!4938 = !DILocation(line: 932, column: 15, scope: !4937)
!4939 = !DILocation(line: 932, column: 22, scope: !4937)
!4940 = !DILocation(line: 932, column: 6, scope: !4937)
!4941 = !DILocation(line: 932, column: 47, scope: !4937)
!4942 = !DILocation(line: 932, column: 6, scope: !4911)
!4943 = !DILocation(line: 935, column: 13, scope: !4944)
!4944 = distinct !DILexicalBlock(scope: !4937, file: !3, line: 933, column: 31)
!4945 = !DILocation(line: 935, column: 18, scope: !4944)
!4946 = !DILocation(line: 935, column: 25, scope: !4944)
!4947 = !DILocation(line: 935, column: 9, scope: !4944)
!4948 = !DILocation(line: 935, column: 7, scope: !4944)
!4949 = !DILocation(line: 937, column: 9, scope: !4950)
!4950 = distinct !DILexicalBlock(scope: !4944, file: !3, line: 937, column: 7)
!4951 = !DILocation(line: 937, column: 13, scope: !4950)
!4952 = !DILocation(line: 937, column: 41, scope: !4950)
!4953 = !DILocation(line: 938, column: 9, scope: !4950)
!4954 = !DILocation(line: 938, column: 13, scope: !4950)
!4955 = !DILocation(line: 938, column: 41, scope: !4950)
!4956 = !DILocation(line: 939, column: 8, scope: !4950)
!4957 = !DILocation(line: 939, column: 12, scope: !4950)
!4958 = !DILocation(line: 937, column: 7, scope: !4944)
!4959 = !DILocation(line: 940, column: 4, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4950, file: !3, line: 939, column: 41)
!4961 = !DILocation(line: 941, column: 4, scope: !4960)
!4962 = !DILocation(line: 941, column: 7, scope: !4960)
!4963 = !DILocation(line: 941, column: 14, scope: !4960)
!4964 = !DILocation(line: 941, column: 21, scope: !4960)
!4965 = !DILocation(line: 942, column: 6, scope: !4960)
!4966 = !DILocation(line: 943, column: 3, scope: !4960)
!4967 = !DILocation(line: 943, column: 15, scope: !4968)
!4968 = distinct !DILexicalBlock(scope: !4950, file: !3, line: 943, column: 14)
!4969 = !DILocation(line: 943, column: 19, scope: !4968)
!4970 = !DILocation(line: 943, column: 47, scope: !4968)
!4971 = !DILocation(line: 944, column: 9, scope: !4968)
!4972 = !DILocation(line: 944, column: 13, scope: !4968)
!4973 = !DILocation(line: 944, column: 41, scope: !4968)
!4974 = !DILocation(line: 945, column: 8, scope: !4968)
!4975 = !DILocation(line: 945, column: 12, scope: !4968)
!4976 = !DILocation(line: 943, column: 14, scope: !4950)
!4977 = !DILocation(line: 946, column: 6, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4968, file: !3, line: 945, column: 41)
!4979 = !DILocation(line: 947, column: 3, scope: !4978)
!4980 = !DILocation(line: 948, column: 4, scope: !4981)
!4981 = distinct !DILexicalBlock(scope: !4968, file: !3, line: 947, column: 10)
!4982 = !DILocation(line: 949, column: 4, scope: !4981)
!4983 = !DILocation(line: 949, column: 7, scope: !4981)
!4984 = !DILocation(line: 949, column: 14, scope: !4981)
!4985 = !DILocation(line: 949, column: 21, scope: !4981)
!4986 = !DILocation(line: 950, column: 6, scope: !4981)
!4987 = !DILocation(line: 953, column: 10, scope: !4988)
!4988 = distinct !DILexicalBlock(scope: !4944, file: !3, line: 953, column: 3)
!4989 = !DILocation(line: 953, column: 8, scope: !4988)
!4990 = !DILocation(line: 953, column: 15, scope: !4991)
!4991 = distinct !DILexicalBlock(scope: !4988, file: !3, line: 953, column: 3)
!4992 = !DILocation(line: 953, column: 19, scope: !4991)
!4993 = !DILocation(line: 953, column: 17, scope: !4991)
!4994 = !DILocation(line: 953, column: 3, scope: !4988)
!4995 = !DILocation(line: 954, column: 32, scope: !4996)
!4996 = distinct !DILexicalBlock(scope: !4991, file: !3, line: 953, column: 27)
!4997 = !DILocation(line: 954, column: 37, scope: !4996)
!4998 = !DILocation(line: 954, column: 11, scope: !4996)
!4999 = !DILocation(line: 954, column: 9, scope: !4996)
!5000 = !DILocation(line: 955, column: 34, scope: !5001)
!5001 = distinct !DILexicalBlock(scope: !4996, file: !3, line: 955, column: 8)
!5002 = !DILocation(line: 955, column: 37, scope: !5001)
!5003 = !DILocation(line: 955, column: 9, scope: !5001)
!5004 = !DILocation(line: 955, column: 8, scope: !4996)
!5005 = !DILocation(line: 956, column: 5, scope: !5001)
!5006 = !DILocation(line: 957, column: 3, scope: !4996)
!5007 = !DILocation(line: 953, column: 23, scope: !4991)
!5008 = !DILocation(line: 953, column: 3, scope: !4991)
!5009 = distinct !{!5009, !4994, !5010}
!5010 = !DILocation(line: 957, column: 3, scope: !4988)
!5011 = !DILocation(line: 960, column: 7, scope: !4944)
!5012 = !DILocation(line: 961, column: 8, scope: !4944)
!5013 = !DILocation(line: 961, column: 13, scope: !4944)
!5014 = !DILocation(line: 961, column: 18, scope: !4944)
!5015 = !DILocation(line: 961, column: 25, scope: !4944)
!5016 = !DILocation(line: 961, column: 3, scope: !4944)
!5017 = !DILocation(line: 962, column: 7, scope: !4944)
!5018 = !DILocation(line: 963, column: 8, scope: !4944)
!5019 = !DILocation(line: 963, column: 13, scope: !4944)
!5020 = !DILocation(line: 963, column: 18, scope: !4944)
!5021 = !DILocation(line: 963, column: 25, scope: !4944)
!5022 = !DILocation(line: 963, column: 3, scope: !4944)
!5023 = !DILocation(line: 964, column: 2, scope: !4944)
!5024 = !DILocation(line: 966, column: 10, scope: !5025)
!5025 = distinct !DILexicalBlock(scope: !4911, file: !3, line: 966, column: 6)
!5026 = !DILocation(line: 966, column: 15, scope: !5025)
!5027 = !DILocation(line: 966, column: 22, scope: !5025)
!5028 = !DILocation(line: 966, column: 6, scope: !5025)
!5029 = !DILocation(line: 966, column: 47, scope: !5025)
!5030 = !DILocation(line: 966, column: 6, scope: !4911)
!5031 = !DILocation(line: 969, column: 3, scope: !5032)
!5032 = distinct !DILexicalBlock(scope: !5025, file: !3, line: 967, column: 28)
!5033 = !DILocation(line: 969, column: 6, scope: !5032)
!5034 = !DILocation(line: 969, column: 13, scope: !5032)
!5035 = !DILocation(line: 969, column: 20, scope: !5032)
!5036 = !DILocation(line: 972, column: 3, scope: !5032)
!5037 = !DILocation(line: 972, column: 14, scope: !5032)
!5038 = !DILocation(line: 972, column: 19, scope: !5032)
!5039 = !DILocation(line: 972, column: 26, scope: !5032)
!5040 = !DILocation(line: 972, column: 10, scope: !5032)
!5041 = !DILocation(line: 972, column: 50, scope: !5032)
!5042 = !DILocation(line: 974, column: 32, scope: !5043)
!5043 = distinct !DILexicalBlock(scope: !5032, file: !3, line: 973, column: 36)
!5044 = !DILocation(line: 974, column: 37, scope: !5043)
!5045 = !DILocation(line: 974, column: 11, scope: !5043)
!5046 = !DILocation(line: 974, column: 9, scope: !5043)
!5047 = !DILocation(line: 975, column: 34, scope: !5048)
!5048 = distinct !DILexicalBlock(scope: !5043, file: !3, line: 975, column: 8)
!5049 = !DILocation(line: 975, column: 37, scope: !5048)
!5050 = !DILocation(line: 975, column: 9, scope: !5048)
!5051 = !DILocation(line: 975, column: 8, scope: !5043)
!5052 = !DILocation(line: 976, column: 5, scope: !5048)
!5053 = distinct !{!5053, !5036, !5054}
!5054 = !DILocation(line: 977, column: 3, scope: !5032)
!5055 = !DILocation(line: 980, column: 13, scope: !5032)
!5056 = !DILocation(line: 980, column: 18, scope: !5032)
!5057 = !DILocation(line: 980, column: 25, scope: !5032)
!5058 = !DILocation(line: 980, column: 9, scope: !5032)
!5059 = !DILocation(line: 980, column: 7, scope: !5032)
!5060 = !DILocation(line: 981, column: 7, scope: !5032)
!5061 = !DILocation(line: 982, column: 8, scope: !5032)
!5062 = !DILocation(line: 982, column: 13, scope: !5032)
!5063 = !DILocation(line: 982, column: 18, scope: !5032)
!5064 = !DILocation(line: 982, column: 25, scope: !5032)
!5065 = !DILocation(line: 982, column: 3, scope: !5032)
!5066 = !DILocation(line: 983, column: 7, scope: !5032)
!5067 = !DILocation(line: 984, column: 8, scope: !5032)
!5068 = !DILocation(line: 984, column: 13, scope: !5032)
!5069 = !DILocation(line: 984, column: 18, scope: !5032)
!5070 = !DILocation(line: 984, column: 25, scope: !5032)
!5071 = !DILocation(line: 984, column: 3, scope: !5032)
!5072 = !DILocation(line: 985, column: 2, scope: !5032)
!5073 = !DILocation(line: 987, column: 23, scope: !4911)
!5074 = !DILocation(line: 987, column: 28, scope: !4911)
!5075 = !DILocation(line: 987, column: 2, scope: !4911)
!5076 = !DILocation(line: 989, column: 2, scope: !4911)
!5077 = !DILocation(line: 990, column: 1, scope: !4911)
!5078 = distinct !DISubprogram(name: "me4000_ai_insn_read", scope: !3, file: !3, line: 460, type: !221, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!5079 = !DILocalVariable(name: "dev", arg: 1, scope: !5078, file: !3, line: 460, type: !186)
!5080 = !DILocation(line: 460, column: 54, scope: !5078)
!5081 = !DILocalVariable(name: "s", arg: 2, scope: !5078, file: !3, line: 461, type: !223)
!5082 = !DILocation(line: 461, column: 36, scope: !5078)
!5083 = !DILocalVariable(name: "insn", arg: 3, scope: !5078, file: !3, line: 462, type: !3944)
!5084 = !DILocation(line: 462, column: 31, scope: !5078)
!5085 = !DILocalVariable(name: "data", arg: 4, scope: !5078, file: !3, line: 463, type: !2710)
!5086 = !DILocation(line: 463, column: 25, scope: !5078)
!5087 = !DILocalVariable(name: "chan", scope: !5078, file: !3, line: 465, type: !7)
!5088 = !DILocation(line: 465, column: 15, scope: !5078)
!5089 = !DILocation(line: 465, column: 22, scope: !5078)
!5090 = !DILocalVariable(name: "range", scope: !5078, file: !3, line: 466, type: !7)
!5091 = !DILocation(line: 466, column: 15, scope: !5078)
!5092 = !DILocation(line: 466, column: 23, scope: !5078)
!5093 = !DILocalVariable(name: "aref", scope: !5078, file: !3, line: 467, type: !7)
!5094 = !DILocation(line: 467, column: 15, scope: !5078)
!5095 = !DILocation(line: 467, column: 22, scope: !5078)
!5096 = !DILocalVariable(name: "entry", scope: !5078, file: !3, line: 468, type: !7)
!5097 = !DILocation(line: 468, column: 15, scope: !5078)
!5098 = !DILocalVariable(name: "ret", scope: !5078, file: !3, line: 469, type: !134)
!5099 = !DILocation(line: 469, column: 6, scope: !5078)
!5100 = !DILocalVariable(name: "i", scope: !5078, file: !3, line: 470, type: !134)
!5101 = !DILocation(line: 470, column: 6, scope: !5078)
!5102 = !DILocation(line: 472, column: 10, scope: !5078)
!5103 = !DILocation(line: 472, column: 17, scope: !5078)
!5104 = !DILocation(line: 472, column: 15, scope: !5078)
!5105 = !DILocation(line: 472, column: 8, scope: !5078)
!5106 = !DILocation(line: 473, column: 6, scope: !5107)
!5107 = distinct !DILexicalBlock(scope: !5078, file: !3, line: 473, column: 6)
!5108 = !DILocation(line: 473, column: 11, scope: !5107)
!5109 = !DILocation(line: 473, column: 6, scope: !5078)
!5110 = !DILocation(line: 474, column: 9, scope: !5111)
!5111 = distinct !DILexicalBlock(scope: !5112, file: !3, line: 474, column: 7)
!5112 = distinct !DILexicalBlock(scope: !5107, file: !3, line: 473, column: 25)
!5113 = !DILocation(line: 474, column: 12, scope: !5111)
!5114 = !DILocation(line: 474, column: 25, scope: !5111)
!5115 = !DILocation(line: 474, column: 7, scope: !5112)
!5116 = !DILocation(line: 475, column: 4, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !5111, file: !3, line: 474, column: 38)
!5118 = !DILocation(line: 477, column: 4, scope: !5117)
!5119 = !DILocation(line: 480, column: 32, scope: !5120)
!5120 = distinct !DILexicalBlock(scope: !5112, file: !3, line: 480, column: 7)
!5121 = !DILocation(line: 480, column: 35, scope: !5120)
!5122 = !DILocation(line: 480, column: 8, scope: !5120)
!5123 = !DILocation(line: 480, column: 7, scope: !5112)
!5124 = !DILocation(line: 481, column: 4, scope: !5125)
!5125 = distinct !DILexicalBlock(scope: !5120, file: !3, line: 480, column: 43)
!5126 = !DILocation(line: 483, column: 4, scope: !5125)
!5127 = !DILocation(line: 486, column: 7, scope: !5128)
!5128 = distinct !DILexicalBlock(scope: !5112, file: !3, line: 486, column: 7)
!5129 = !DILocation(line: 486, column: 16, scope: !5128)
!5130 = !DILocation(line: 486, column: 19, scope: !5128)
!5131 = !DILocation(line: 486, column: 26, scope: !5128)
!5132 = !DILocation(line: 486, column: 12, scope: !5128)
!5133 = !DILocation(line: 486, column: 7, scope: !5112)
!5134 = !DILocation(line: 487, column: 4, scope: !5135)
!5135 = distinct !DILexicalBlock(scope: !5128, file: !3, line: 486, column: 32)
!5136 = !DILocation(line: 489, column: 4, scope: !5135)
!5137 = !DILocation(line: 491, column: 9, scope: !5112)
!5138 = !DILocation(line: 492, column: 2, scope: !5112)
!5139 = !DILocation(line: 494, column: 8, scope: !5078)
!5140 = !DILocation(line: 498, column: 7, scope: !5078)
!5141 = !DILocation(line: 498, column: 12, scope: !5078)
!5142 = !DILocation(line: 498, column: 19, scope: !5078)
!5143 = !DILocation(line: 497, column: 2, scope: !5078)
!5144 = !DILocation(line: 501, column: 7, scope: !5078)
!5145 = !DILocation(line: 501, column: 14, scope: !5078)
!5146 = !DILocation(line: 501, column: 19, scope: !5078)
!5147 = !DILocation(line: 501, column: 26, scope: !5078)
!5148 = !DILocation(line: 501, column: 2, scope: !5078)
!5149 = !DILocation(line: 504, column: 28, scope: !5078)
!5150 = !DILocation(line: 504, column: 33, scope: !5078)
!5151 = !DILocation(line: 504, column: 40, scope: !5078)
!5152 = !DILocation(line: 504, column: 2, scope: !5078)
!5153 = !DILocation(line: 505, column: 28, scope: !5078)
!5154 = !DILocation(line: 505, column: 33, scope: !5078)
!5155 = !DILocation(line: 505, column: 40, scope: !5078)
!5156 = !DILocation(line: 505, column: 2, scope: !5078)
!5157 = !DILocation(line: 507, column: 9, scope: !5158)
!5158 = distinct !DILexicalBlock(scope: !5078, file: !3, line: 507, column: 2)
!5159 = !DILocation(line: 507, column: 7, scope: !5158)
!5160 = !DILocation(line: 507, column: 14, scope: !5161)
!5161 = distinct !DILexicalBlock(scope: !5158, file: !3, line: 507, column: 2)
!5162 = !DILocation(line: 507, column: 18, scope: !5161)
!5163 = !DILocation(line: 507, column: 24, scope: !5161)
!5164 = !DILocation(line: 507, column: 16, scope: !5161)
!5165 = !DILocation(line: 507, column: 2, scope: !5158)
!5166 = !DILocalVariable(name: "val", scope: !5167, file: !3, line: 508, type: !7)
!5167 = distinct !DILexicalBlock(scope: !5161, file: !3, line: 507, column: 32)
!5168 = !DILocation(line: 508, column: 16, scope: !5167)
!5169 = !DILocation(line: 511, column: 7, scope: !5167)
!5170 = !DILocation(line: 511, column: 12, scope: !5167)
!5171 = !DILocation(line: 511, column: 19, scope: !5167)
!5172 = !DILocation(line: 511, column: 3, scope: !5167)
!5173 = !DILocation(line: 513, column: 24, scope: !5167)
!5174 = !DILocation(line: 513, column: 29, scope: !5167)
!5175 = !DILocation(line: 513, column: 32, scope: !5167)
!5176 = !DILocation(line: 513, column: 9, scope: !5167)
!5177 = !DILocation(line: 513, column: 7, scope: !5167)
!5178 = !DILocation(line: 514, column: 7, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !5167, file: !3, line: 514, column: 7)
!5180 = !DILocation(line: 514, column: 7, scope: !5167)
!5181 = !DILocation(line: 515, column: 4, scope: !5179)
!5182 = !DILocation(line: 517, column: 30, scope: !5167)
!5183 = !DILocation(line: 517, column: 35, scope: !5167)
!5184 = !DILocation(line: 517, column: 9, scope: !5167)
!5185 = !DILocation(line: 517, column: 7, scope: !5167)
!5186 = !DILocation(line: 518, column: 33, scope: !5167)
!5187 = !DILocation(line: 518, column: 36, scope: !5167)
!5188 = !DILocation(line: 518, column: 13, scope: !5167)
!5189 = !DILocation(line: 518, column: 3, scope: !5167)
!5190 = !DILocation(line: 518, column: 8, scope: !5167)
!5191 = !DILocation(line: 518, column: 11, scope: !5167)
!5192 = !DILocation(line: 519, column: 2, scope: !5167)
!5193 = !DILocation(line: 507, column: 28, scope: !5161)
!5194 = !DILocation(line: 507, column: 2, scope: !5161)
!5195 = distinct !{!5195, !5165, !5196}
!5196 = !DILocation(line: 519, column: 2, scope: !5158)
!5197 = !DILocation(line: 521, column: 18, scope: !5078)
!5198 = !DILocation(line: 521, column: 2, scope: !5078)
!5199 = !DILocation(line: 523, column: 9, scope: !5078)
!5200 = !DILocation(line: 523, column: 15, scope: !5078)
!5201 = !DILocation(line: 523, column: 21, scope: !5078)
!5202 = !DILocation(line: 523, column: 27, scope: !5078)
!5203 = !DILocation(line: 523, column: 2, scope: !5078)
!5204 = !DILocation(line: 524, column: 1, scope: !5078)
!5205 = distinct !DISubprogram(name: "me4000_ai_cancel", scope: !3, file: !3, line: 526, type: !3925, scopeLine: 528, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!5206 = !DILocalVariable(name: "dev", arg: 1, scope: !5205, file: !3, line: 526, type: !186)
!5207 = !DILocation(line: 526, column: 51, scope: !5205)
!5208 = !DILocalVariable(name: "s", arg: 2, scope: !5205, file: !3, line: 527, type: !223)
!5209 = !DILocation(line: 527, column: 33, scope: !5205)
!5210 = !DILocation(line: 529, column: 18, scope: !5205)
!5211 = !DILocation(line: 529, column: 2, scope: !5205)
!5212 = !DILocation(line: 531, column: 2, scope: !5205)
!5213 = distinct !DISubprogram(name: "me4000_ai_do_cmd_test", scope: !3, file: !3, line: 704, type: !3929, scopeLine: 707, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!5214 = !DILocalVariable(name: "dev", arg: 1, scope: !5213, file: !3, line: 704, type: !186)
!5215 = !DILocation(line: 704, column: 56, scope: !5213)
!5216 = !DILocalVariable(name: "s", arg: 2, scope: !5213, file: !3, line: 705, type: !223)
!5217 = !DILocation(line: 705, column: 31, scope: !5213)
!5218 = !DILocalVariable(name: "cmd", arg: 3, scope: !5213, file: !3, line: 706, type: !3931)
!5219 = !DILocation(line: 706, column: 25, scope: !5213)
!5220 = !DILocalVariable(name: "devpriv", scope: !5213, file: !3, line: 708, type: !4332)
!5221 = !DILocation(line: 708, column: 25, scope: !5213)
!5222 = !DILocation(line: 708, column: 35, scope: !5213)
!5223 = !DILocation(line: 708, column: 40, scope: !5213)
!5224 = !DILocalVariable(name: "err", scope: !5213, file: !3, line: 709, type: !134)
!5225 = !DILocation(line: 709, column: 6, scope: !5213)
!5226 = !DILocation(line: 713, column: 35, scope: !5213)
!5227 = !DILocation(line: 713, column: 40, scope: !5213)
!5228 = !DILocation(line: 713, column: 9, scope: !5213)
!5229 = !DILocation(line: 713, column: 6, scope: !5213)
!5230 = !DILocation(line: 714, column: 35, scope: !5213)
!5231 = !DILocation(line: 714, column: 40, scope: !5213)
!5232 = !DILocation(line: 714, column: 9, scope: !5213)
!5233 = !DILocation(line: 714, column: 6, scope: !5213)
!5234 = !DILocation(line: 716, column: 35, scope: !5213)
!5235 = !DILocation(line: 716, column: 40, scope: !5213)
!5236 = !DILocation(line: 716, column: 9, scope: !5213)
!5237 = !DILocation(line: 716, column: 6, scope: !5213)
!5238 = !DILocation(line: 718, column: 35, scope: !5213)
!5239 = !DILocation(line: 718, column: 40, scope: !5213)
!5240 = !DILocation(line: 718, column: 9, scope: !5213)
!5241 = !DILocation(line: 718, column: 6, scope: !5213)
!5242 = !DILocation(line: 720, column: 35, scope: !5213)
!5243 = !DILocation(line: 720, column: 40, scope: !5213)
!5244 = !DILocation(line: 720, column: 9, scope: !5213)
!5245 = !DILocation(line: 720, column: 6, scope: !5213)
!5246 = !DILocation(line: 722, column: 6, scope: !5247)
!5247 = distinct !DILexicalBlock(scope: !5213, file: !3, line: 722, column: 6)
!5248 = !DILocation(line: 722, column: 6, scope: !5213)
!5249 = !DILocation(line: 723, column: 3, scope: !5247)
!5250 = !DILocation(line: 727, column: 40, scope: !5213)
!5251 = !DILocation(line: 727, column: 45, scope: !5213)
!5252 = !DILocation(line: 727, column: 9, scope: !5213)
!5253 = !DILocation(line: 727, column: 6, scope: !5213)
!5254 = !DILocation(line: 728, column: 40, scope: !5213)
!5255 = !DILocation(line: 728, column: 45, scope: !5213)
!5256 = !DILocation(line: 728, column: 9, scope: !5213)
!5257 = !DILocation(line: 728, column: 6, scope: !5213)
!5258 = !DILocation(line: 729, column: 40, scope: !5213)
!5259 = !DILocation(line: 729, column: 45, scope: !5213)
!5260 = !DILocation(line: 729, column: 9, scope: !5213)
!5261 = !DILocation(line: 729, column: 6, scope: !5213)
!5262 = !DILocation(line: 730, column: 40, scope: !5213)
!5263 = !DILocation(line: 730, column: 45, scope: !5213)
!5264 = !DILocation(line: 730, column: 9, scope: !5213)
!5265 = !DILocation(line: 730, column: 6, scope: !5213)
!5266 = !DILocation(line: 731, column: 40, scope: !5213)
!5267 = !DILocation(line: 731, column: 45, scope: !5213)
!5268 = !DILocation(line: 731, column: 9, scope: !5213)
!5269 = !DILocation(line: 731, column: 6, scope: !5213)
!5270 = !DILocation(line: 735, column: 6, scope: !5271)
!5271 = distinct !DILexicalBlock(scope: !5213, file: !3, line: 735, column: 6)
!5272 = !DILocation(line: 735, column: 11, scope: !5271)
!5273 = !DILocation(line: 735, column: 21, scope: !5271)
!5274 = !DILocation(line: 735, column: 33, scope: !5271)
!5275 = !DILocation(line: 736, column: 6, scope: !5271)
!5276 = !DILocation(line: 736, column: 11, scope: !5271)
!5277 = !DILocation(line: 736, column: 26, scope: !5271)
!5278 = !DILocation(line: 736, column: 40, scope: !5271)
!5279 = !DILocation(line: 737, column: 6, scope: !5271)
!5280 = !DILocation(line: 737, column: 11, scope: !5271)
!5281 = !DILocation(line: 737, column: 23, scope: !5271)
!5282 = !DILocation(line: 735, column: 6, scope: !5213)
!5283 = !DILocation(line: 738, column: 3, scope: !5284)
!5284 = distinct !DILexicalBlock(scope: !5271, file: !3, line: 737, column: 38)
!5285 = !DILocation(line: 738, column: 12, scope: !5284)
!5286 = !DILocation(line: 738, column: 25, scope: !5284)
!5287 = !DILocation(line: 739, column: 2, scope: !5284)
!5288 = !DILocation(line: 739, column: 13, scope: !5289)
!5289 = distinct !DILexicalBlock(scope: !5271, file: !3, line: 739, column: 13)
!5290 = !DILocation(line: 739, column: 18, scope: !5289)
!5291 = !DILocation(line: 739, column: 28, scope: !5289)
!5292 = !DILocation(line: 739, column: 40, scope: !5289)
!5293 = !DILocation(line: 740, column: 6, scope: !5289)
!5294 = !DILocation(line: 740, column: 11, scope: !5289)
!5295 = !DILocation(line: 740, column: 26, scope: !5289)
!5296 = !DILocation(line: 740, column: 41, scope: !5289)
!5297 = !DILocation(line: 741, column: 6, scope: !5289)
!5298 = !DILocation(line: 741, column: 11, scope: !5289)
!5299 = !DILocation(line: 741, column: 23, scope: !5289)
!5300 = !DILocation(line: 739, column: 13, scope: !5271)
!5301 = !DILocation(line: 742, column: 3, scope: !5302)
!5302 = distinct !DILexicalBlock(scope: !5289, file: !3, line: 741, column: 38)
!5303 = !DILocation(line: 742, column: 12, scope: !5302)
!5304 = !DILocation(line: 742, column: 25, scope: !5302)
!5305 = !DILocation(line: 743, column: 2, scope: !5302)
!5306 = !DILocation(line: 743, column: 13, scope: !5307)
!5307 = distinct !DILexicalBlock(scope: !5289, file: !3, line: 743, column: 13)
!5308 = !DILocation(line: 743, column: 18, scope: !5307)
!5309 = !DILocation(line: 743, column: 28, scope: !5307)
!5310 = !DILocation(line: 743, column: 40, scope: !5307)
!5311 = !DILocation(line: 744, column: 6, scope: !5307)
!5312 = !DILocation(line: 744, column: 11, scope: !5307)
!5313 = !DILocation(line: 744, column: 26, scope: !5307)
!5314 = !DILocation(line: 744, column: 40, scope: !5307)
!5315 = !DILocation(line: 745, column: 6, scope: !5307)
!5316 = !DILocation(line: 745, column: 11, scope: !5307)
!5317 = !DILocation(line: 745, column: 23, scope: !5307)
!5318 = !DILocation(line: 743, column: 13, scope: !5289)
!5319 = !DILocation(line: 746, column: 3, scope: !5320)
!5320 = distinct !DILexicalBlock(scope: !5307, file: !3, line: 745, column: 38)
!5321 = !DILocation(line: 746, column: 12, scope: !5320)
!5322 = !DILocation(line: 746, column: 25, scope: !5320)
!5323 = !DILocation(line: 747, column: 2, scope: !5320)
!5324 = !DILocation(line: 747, column: 13, scope: !5325)
!5325 = distinct !DILexicalBlock(scope: !5307, file: !3, line: 747, column: 13)
!5326 = !DILocation(line: 747, column: 18, scope: !5325)
!5327 = !DILocation(line: 747, column: 28, scope: !5325)
!5328 = !DILocation(line: 747, column: 40, scope: !5325)
!5329 = !DILocation(line: 748, column: 6, scope: !5325)
!5330 = !DILocation(line: 748, column: 11, scope: !5325)
!5331 = !DILocation(line: 748, column: 26, scope: !5325)
!5332 = !DILocation(line: 748, column: 41, scope: !5325)
!5333 = !DILocation(line: 749, column: 6, scope: !5325)
!5334 = !DILocation(line: 749, column: 11, scope: !5325)
!5335 = !DILocation(line: 749, column: 23, scope: !5325)
!5336 = !DILocation(line: 747, column: 13, scope: !5307)
!5337 = !DILocation(line: 750, column: 3, scope: !5338)
!5338 = distinct !DILexicalBlock(scope: !5325, file: !3, line: 749, column: 38)
!5339 = !DILocation(line: 750, column: 12, scope: !5338)
!5340 = !DILocation(line: 750, column: 25, scope: !5338)
!5341 = !DILocation(line: 751, column: 2, scope: !5338)
!5342 = !DILocation(line: 751, column: 13, scope: !5343)
!5343 = distinct !DILexicalBlock(scope: !5325, file: !3, line: 751, column: 13)
!5344 = !DILocation(line: 751, column: 18, scope: !5343)
!5345 = !DILocation(line: 751, column: 28, scope: !5343)
!5346 = !DILocation(line: 751, column: 40, scope: !5343)
!5347 = !DILocation(line: 752, column: 6, scope: !5343)
!5348 = !DILocation(line: 752, column: 11, scope: !5343)
!5349 = !DILocation(line: 752, column: 26, scope: !5343)
!5350 = !DILocation(line: 752, column: 38, scope: !5343)
!5351 = !DILocation(line: 753, column: 6, scope: !5343)
!5352 = !DILocation(line: 753, column: 11, scope: !5343)
!5353 = !DILocation(line: 753, column: 23, scope: !5343)
!5354 = !DILocation(line: 751, column: 13, scope: !5325)
!5355 = !DILocation(line: 754, column: 3, scope: !5356)
!5356 = distinct !DILexicalBlock(scope: !5343, file: !3, line: 753, column: 38)
!5357 = !DILocation(line: 754, column: 12, scope: !5356)
!5358 = !DILocation(line: 754, column: 25, scope: !5356)
!5359 = !DILocation(line: 755, column: 2, scope: !5356)
!5360 = !DILocation(line: 755, column: 13, scope: !5361)
!5361 = distinct !DILexicalBlock(scope: !5343, file: !3, line: 755, column: 13)
!5362 = !DILocation(line: 755, column: 18, scope: !5361)
!5363 = !DILocation(line: 755, column: 28, scope: !5361)
!5364 = !DILocation(line: 755, column: 40, scope: !5361)
!5365 = !DILocation(line: 756, column: 6, scope: !5361)
!5366 = !DILocation(line: 756, column: 11, scope: !5361)
!5367 = !DILocation(line: 756, column: 26, scope: !5361)
!5368 = !DILocation(line: 756, column: 38, scope: !5361)
!5369 = !DILocation(line: 757, column: 6, scope: !5361)
!5370 = !DILocation(line: 757, column: 11, scope: !5361)
!5371 = !DILocation(line: 757, column: 23, scope: !5361)
!5372 = !DILocation(line: 755, column: 13, scope: !5343)
!5373 = !DILocation(line: 758, column: 3, scope: !5374)
!5374 = distinct !DILexicalBlock(scope: !5361, file: !3, line: 757, column: 36)
!5375 = !DILocation(line: 758, column: 12, scope: !5374)
!5376 = !DILocation(line: 758, column: 25, scope: !5374)
!5377 = !DILocation(line: 760, column: 2, scope: !5374)
!5378 = !DILocation(line: 761, column: 7, scope: !5379)
!5379 = distinct !DILexicalBlock(scope: !5361, file: !3, line: 760, column: 9)
!5380 = !DILocation(line: 764, column: 6, scope: !5381)
!5381 = distinct !DILexicalBlock(scope: !5213, file: !3, line: 764, column: 6)
!5382 = !DILocation(line: 764, column: 6, scope: !5213)
!5383 = !DILocation(line: 765, column: 3, scope: !5381)
!5384 = !DILocation(line: 769, column: 38, scope: !5213)
!5385 = !DILocation(line: 769, column: 43, scope: !5213)
!5386 = !DILocation(line: 769, column: 9, scope: !5213)
!5387 = !DILocation(line: 769, column: 6, scope: !5213)
!5388 = !DILocation(line: 771, column: 6, scope: !5389)
!5389 = distinct !DILexicalBlock(scope: !5213, file: !3, line: 771, column: 6)
!5390 = !DILocation(line: 771, column: 11, scope: !5389)
!5391 = !DILocation(line: 771, column: 24, scope: !5389)
!5392 = !DILocation(line: 771, column: 6, scope: !5213)
!5393 = !DILocation(line: 772, column: 3, scope: !5394)
!5394 = distinct !DILexicalBlock(scope: !5389, file: !3, line: 771, column: 29)
!5395 = !DILocation(line: 772, column: 8, scope: !5394)
!5396 = !DILocation(line: 772, column: 21, scope: !5394)
!5397 = !DILocation(line: 773, column: 7, scope: !5394)
!5398 = !DILocation(line: 774, column: 2, scope: !5394)
!5399 = !DILocation(line: 777, column: 27, scope: !5213)
!5400 = !DILocation(line: 777, column: 32, scope: !5213)
!5401 = !DILocation(line: 777, column: 35, scope: !5213)
!5402 = !DILocation(line: 777, column: 2, scope: !5213)
!5403 = !DILocation(line: 779, column: 6, scope: !5404)
!5404 = distinct !DILexicalBlock(scope: !5213, file: !3, line: 779, column: 6)
!5405 = !DILocation(line: 779, column: 15, scope: !5404)
!5406 = !DILocation(line: 779, column: 29, scope: !5404)
!5407 = !DILocation(line: 779, column: 6, scope: !5213)
!5408 = !DILocation(line: 780, column: 3, scope: !5409)
!5409 = distinct !DILexicalBlock(scope: !5404, file: !3, line: 779, column: 35)
!5410 = !DILocation(line: 780, column: 8, scope: !5409)
!5411 = !DILocation(line: 780, column: 18, scope: !5409)
!5412 = !DILocation(line: 781, column: 7, scope: !5409)
!5413 = !DILocation(line: 782, column: 2, scope: !5409)
!5414 = !DILocation(line: 783, column: 6, scope: !5415)
!5415 = distinct !DILexicalBlock(scope: !5213, file: !3, line: 783, column: 6)
!5416 = !DILocation(line: 783, column: 15, scope: !5415)
!5417 = !DILocation(line: 783, column: 29, scope: !5415)
!5418 = !DILocation(line: 783, column: 32, scope: !5415)
!5419 = !DILocation(line: 783, column: 41, scope: !5415)
!5420 = !DILocation(line: 783, column: 55, scope: !5415)
!5421 = !DILocation(line: 783, column: 6, scope: !5213)
!5422 = !DILocation(line: 784, column: 3, scope: !5423)
!5423 = distinct !DILexicalBlock(scope: !5415, file: !3, line: 783, column: 61)
!5424 = !DILocation(line: 784, column: 8, scope: !5423)
!5425 = !DILocation(line: 784, column: 23, scope: !5423)
!5426 = !DILocation(line: 785, column: 7, scope: !5423)
!5427 = !DILocation(line: 786, column: 2, scope: !5423)
!5428 = !DILocation(line: 787, column: 6, scope: !5429)
!5429 = distinct !DILexicalBlock(scope: !5213, file: !3, line: 787, column: 6)
!5430 = !DILocation(line: 787, column: 15, scope: !5429)
!5431 = !DILocation(line: 787, column: 29, scope: !5429)
!5432 = !DILocation(line: 787, column: 6, scope: !5213)
!5433 = !DILocation(line: 788, column: 3, scope: !5434)
!5434 = distinct !DILexicalBlock(scope: !5429, file: !3, line: 787, column: 35)
!5435 = !DILocation(line: 788, column: 8, scope: !5434)
!5436 = !DILocation(line: 788, column: 20, scope: !5434)
!5437 = !DILocation(line: 789, column: 7, scope: !5434)
!5438 = !DILocation(line: 790, column: 2, scope: !5434)
!5439 = !DILocation(line: 792, column: 6, scope: !5440)
!5440 = distinct !DILexicalBlock(scope: !5213, file: !3, line: 792, column: 6)
!5441 = !DILocation(line: 792, column: 11, scope: !5440)
!5442 = !DILocation(line: 792, column: 20, scope: !5440)
!5443 = !DILocation(line: 792, column: 6, scope: !5213)
!5444 = !DILocation(line: 793, column: 40, scope: !5440)
!5445 = !DILocation(line: 793, column: 45, scope: !5440)
!5446 = !DILocation(line: 793, column: 10, scope: !5440)
!5447 = !DILocation(line: 793, column: 7, scope: !5440)
!5448 = !DILocation(line: 793, column: 3, scope: !5440)
!5449 = !DILocation(line: 795, column: 39, scope: !5440)
!5450 = !DILocation(line: 795, column: 44, scope: !5440)
!5451 = !DILocation(line: 795, column: 10, scope: !5440)
!5452 = !DILocation(line: 795, column: 7, scope: !5440)
!5453 = !DILocation(line: 797, column: 6, scope: !5454)
!5454 = distinct !DILexicalBlock(scope: !5213, file: !3, line: 797, column: 6)
!5455 = !DILocation(line: 797, column: 6, scope: !5213)
!5456 = !DILocation(line: 798, column: 3, scope: !5454)
!5457 = !DILocation(line: 803, column: 6, scope: !5458)
!5458 = distinct !DILexicalBlock(scope: !5213, file: !3, line: 803, column: 6)
!5459 = !DILocation(line: 803, column: 11, scope: !5458)
!5460 = !DILocation(line: 803, column: 21, scope: !5458)
!5461 = !DILocation(line: 803, column: 33, scope: !5458)
!5462 = !DILocation(line: 804, column: 6, scope: !5458)
!5463 = !DILocation(line: 804, column: 11, scope: !5458)
!5464 = !DILocation(line: 804, column: 26, scope: !5458)
!5465 = !DILocation(line: 804, column: 40, scope: !5458)
!5466 = !DILocation(line: 805, column: 6, scope: !5458)
!5467 = !DILocation(line: 805, column: 11, scope: !5458)
!5468 = !DILocation(line: 805, column: 23, scope: !5458)
!5469 = !DILocation(line: 803, column: 6, scope: !5213)
!5470 = !DILocation(line: 807, column: 7, scope: !5471)
!5471 = distinct !DILexicalBlock(scope: !5472, file: !3, line: 807, column: 7)
!5472 = distinct !DILexicalBlock(scope: !5458, file: !3, line: 805, column: 38)
!5473 = !DILocation(line: 807, column: 16, scope: !5471)
!5474 = !DILocation(line: 807, column: 30, scope: !5471)
!5475 = !DILocation(line: 807, column: 7, scope: !5472)
!5476 = !DILocation(line: 808, column: 4, scope: !5477)
!5477 = distinct !DILexicalBlock(scope: !5471, file: !3, line: 807, column: 53)
!5478 = !DILocation(line: 809, column: 4, scope: !5477)
!5479 = !DILocation(line: 809, column: 9, scope: !5477)
!5480 = !DILocation(line: 809, column: 19, scope: !5477)
!5481 = !DILocation(line: 810, column: 7, scope: !5477)
!5482 = !DILocation(line: 811, column: 3, scope: !5477)
!5483 = !DILocation(line: 812, column: 7, scope: !5484)
!5484 = distinct !DILexicalBlock(scope: !5472, file: !3, line: 812, column: 7)
!5485 = !DILocation(line: 812, column: 16, scope: !5484)
!5486 = !DILocation(line: 812, column: 30, scope: !5484)
!5487 = !DILocation(line: 812, column: 7, scope: !5472)
!5488 = !DILocation(line: 813, column: 4, scope: !5489)
!5489 = distinct !DILexicalBlock(scope: !5484, file: !3, line: 812, column: 53)
!5490 = !DILocation(line: 814, column: 4, scope: !5489)
!5491 = !DILocation(line: 814, column: 9, scope: !5489)
!5492 = !DILocation(line: 814, column: 21, scope: !5489)
!5493 = !DILocation(line: 815, column: 7, scope: !5489)
!5494 = !DILocation(line: 816, column: 3, scope: !5489)
!5495 = !DILocation(line: 817, column: 7, scope: !5496)
!5496 = distinct !DILexicalBlock(scope: !5472, file: !3, line: 817, column: 7)
!5497 = !DILocation(line: 817, column: 16, scope: !5496)
!5498 = !DILocation(line: 818, column: 7, scope: !5496)
!5499 = !DILocation(line: 818, column: 12, scope: !5496)
!5500 = !DILocation(line: 818, column: 27, scope: !5496)
!5501 = !DILocation(line: 818, column: 36, scope: !5496)
!5502 = !DILocation(line: 818, column: 25, scope: !5496)
!5503 = !DILocation(line: 817, column: 30, scope: !5496)
!5504 = !DILocation(line: 817, column: 7, scope: !5472)
!5505 = !DILocation(line: 819, column: 4, scope: !5506)
!5506 = distinct !DILexicalBlock(scope: !5496, file: !3, line: 818, column: 51)
!5507 = !DILocation(line: 822, column: 31, scope: !5506)
!5508 = !DILocation(line: 822, column: 36, scope: !5506)
!5509 = !DILocation(line: 822, column: 29, scope: !5506)
!5510 = !DILocation(line: 822, column: 49, scope: !5506)
!5511 = !DILocation(line: 822, column: 4, scope: !5506)
!5512 = !DILocation(line: 822, column: 9, scope: !5506)
!5513 = !DILocation(line: 822, column: 22, scope: !5506)
!5514 = !DILocation(line: 823, column: 7, scope: !5506)
!5515 = !DILocation(line: 824, column: 3, scope: !5506)
!5516 = !DILocation(line: 825, column: 2, scope: !5472)
!5517 = !DILocation(line: 825, column: 13, scope: !5518)
!5518 = distinct !DILexicalBlock(scope: !5458, file: !3, line: 825, column: 13)
!5519 = !DILocation(line: 825, column: 18, scope: !5518)
!5520 = !DILocation(line: 825, column: 28, scope: !5518)
!5521 = !DILocation(line: 825, column: 40, scope: !5518)
!5522 = !DILocation(line: 826, column: 6, scope: !5518)
!5523 = !DILocation(line: 826, column: 11, scope: !5518)
!5524 = !DILocation(line: 826, column: 26, scope: !5518)
!5525 = !DILocation(line: 826, column: 41, scope: !5518)
!5526 = !DILocation(line: 827, column: 6, scope: !5518)
!5527 = !DILocation(line: 827, column: 11, scope: !5518)
!5528 = !DILocation(line: 827, column: 23, scope: !5518)
!5529 = !DILocation(line: 825, column: 13, scope: !5458)
!5530 = !DILocation(line: 829, column: 7, scope: !5531)
!5531 = distinct !DILexicalBlock(scope: !5532, file: !3, line: 829, column: 7)
!5532 = distinct !DILexicalBlock(scope: !5518, file: !3, line: 827, column: 38)
!5533 = !DILocation(line: 829, column: 16, scope: !5531)
!5534 = !DILocation(line: 829, column: 30, scope: !5531)
!5535 = !DILocation(line: 829, column: 7, scope: !5532)
!5536 = !DILocation(line: 830, column: 4, scope: !5537)
!5537 = distinct !DILexicalBlock(scope: !5531, file: !3, line: 829, column: 53)
!5538 = !DILocation(line: 831, column: 4, scope: !5537)
!5539 = !DILocation(line: 831, column: 9, scope: !5537)
!5540 = !DILocation(line: 831, column: 19, scope: !5537)
!5541 = !DILocation(line: 832, column: 7, scope: !5537)
!5542 = !DILocation(line: 833, column: 3, scope: !5537)
!5543 = !DILocation(line: 834, column: 7, scope: !5544)
!5544 = distinct !DILexicalBlock(scope: !5532, file: !3, line: 834, column: 7)
!5545 = !DILocation(line: 834, column: 16, scope: !5544)
!5546 = !DILocation(line: 834, column: 30, scope: !5544)
!5547 = !DILocation(line: 834, column: 7, scope: !5532)
!5548 = !DILocation(line: 835, column: 4, scope: !5549)
!5549 = distinct !DILexicalBlock(scope: !5544, file: !3, line: 834, column: 53)
!5550 = !DILocation(line: 836, column: 4, scope: !5549)
!5551 = !DILocation(line: 836, column: 9, scope: !5549)
!5552 = !DILocation(line: 836, column: 21, scope: !5549)
!5553 = !DILocation(line: 837, column: 7, scope: !5549)
!5554 = !DILocation(line: 838, column: 3, scope: !5549)
!5555 = !DILocation(line: 839, column: 2, scope: !5532)
!5556 = !DILocation(line: 839, column: 13, scope: !5557)
!5557 = distinct !DILexicalBlock(scope: !5518, file: !3, line: 839, column: 13)
!5558 = !DILocation(line: 839, column: 18, scope: !5557)
!5559 = !DILocation(line: 839, column: 28, scope: !5557)
!5560 = !DILocation(line: 839, column: 40, scope: !5557)
!5561 = !DILocation(line: 840, column: 6, scope: !5557)
!5562 = !DILocation(line: 840, column: 11, scope: !5557)
!5563 = !DILocation(line: 840, column: 26, scope: !5557)
!5564 = !DILocation(line: 840, column: 40, scope: !5557)
!5565 = !DILocation(line: 841, column: 6, scope: !5557)
!5566 = !DILocation(line: 841, column: 11, scope: !5557)
!5567 = !DILocation(line: 841, column: 23, scope: !5557)
!5568 = !DILocation(line: 839, column: 13, scope: !5518)
!5569 = !DILocation(line: 843, column: 7, scope: !5570)
!5570 = distinct !DILexicalBlock(scope: !5571, file: !3, line: 843, column: 7)
!5571 = distinct !DILexicalBlock(scope: !5557, file: !3, line: 841, column: 38)
!5572 = !DILocation(line: 843, column: 16, scope: !5570)
!5573 = !DILocation(line: 843, column: 30, scope: !5570)
!5574 = !DILocation(line: 843, column: 7, scope: !5571)
!5575 = !DILocation(line: 844, column: 4, scope: !5576)
!5576 = distinct !DILexicalBlock(scope: !5570, file: !3, line: 843, column: 53)
!5577 = !DILocation(line: 845, column: 4, scope: !5576)
!5578 = !DILocation(line: 845, column: 9, scope: !5576)
!5579 = !DILocation(line: 845, column: 19, scope: !5576)
!5580 = !DILocation(line: 846, column: 7, scope: !5576)
!5581 = !DILocation(line: 847, column: 3, scope: !5576)
!5582 = !DILocation(line: 848, column: 7, scope: !5583)
!5583 = distinct !DILexicalBlock(scope: !5571, file: !3, line: 848, column: 7)
!5584 = !DILocation(line: 848, column: 16, scope: !5583)
!5585 = !DILocation(line: 848, column: 30, scope: !5583)
!5586 = !DILocation(line: 848, column: 7, scope: !5571)
!5587 = !DILocation(line: 849, column: 4, scope: !5588)
!5588 = distinct !DILexicalBlock(scope: !5583, file: !3, line: 848, column: 53)
!5589 = !DILocation(line: 850, column: 4, scope: !5588)
!5590 = !DILocation(line: 850, column: 9, scope: !5588)
!5591 = !DILocation(line: 850, column: 21, scope: !5588)
!5592 = !DILocation(line: 851, column: 7, scope: !5588)
!5593 = !DILocation(line: 852, column: 3, scope: !5588)
!5594 = !DILocation(line: 853, column: 7, scope: !5595)
!5595 = distinct !DILexicalBlock(scope: !5571, file: !3, line: 853, column: 7)
!5596 = !DILocation(line: 853, column: 16, scope: !5595)
!5597 = !DILocation(line: 854, column: 7, scope: !5595)
!5598 = !DILocation(line: 854, column: 12, scope: !5595)
!5599 = !DILocation(line: 854, column: 27, scope: !5595)
!5600 = !DILocation(line: 854, column: 36, scope: !5595)
!5601 = !DILocation(line: 854, column: 25, scope: !5595)
!5602 = !DILocation(line: 853, column: 30, scope: !5595)
!5603 = !DILocation(line: 853, column: 7, scope: !5571)
!5604 = !DILocation(line: 855, column: 4, scope: !5605)
!5605 = distinct !DILexicalBlock(scope: !5595, file: !3, line: 854, column: 51)
!5606 = !DILocation(line: 858, column: 31, scope: !5605)
!5607 = !DILocation(line: 858, column: 36, scope: !5605)
!5608 = !DILocation(line: 858, column: 29, scope: !5605)
!5609 = !DILocation(line: 858, column: 49, scope: !5605)
!5610 = !DILocation(line: 858, column: 4, scope: !5605)
!5611 = !DILocation(line: 858, column: 9, scope: !5605)
!5612 = !DILocation(line: 858, column: 22, scope: !5605)
!5613 = !DILocation(line: 859, column: 7, scope: !5605)
!5614 = !DILocation(line: 860, column: 3, scope: !5605)
!5615 = !DILocation(line: 861, column: 2, scope: !5571)
!5616 = !DILocation(line: 861, column: 13, scope: !5617)
!5617 = distinct !DILexicalBlock(scope: !5557, file: !3, line: 861, column: 13)
!5618 = !DILocation(line: 861, column: 18, scope: !5617)
!5619 = !DILocation(line: 861, column: 28, scope: !5617)
!5620 = !DILocation(line: 861, column: 40, scope: !5617)
!5621 = !DILocation(line: 862, column: 6, scope: !5617)
!5622 = !DILocation(line: 862, column: 11, scope: !5617)
!5623 = !DILocation(line: 862, column: 26, scope: !5617)
!5624 = !DILocation(line: 862, column: 41, scope: !5617)
!5625 = !DILocation(line: 863, column: 6, scope: !5617)
!5626 = !DILocation(line: 863, column: 11, scope: !5617)
!5627 = !DILocation(line: 863, column: 23, scope: !5617)
!5628 = !DILocation(line: 861, column: 13, scope: !5557)
!5629 = !DILocation(line: 865, column: 7, scope: !5630)
!5630 = distinct !DILexicalBlock(scope: !5631, file: !3, line: 865, column: 7)
!5631 = distinct !DILexicalBlock(scope: !5617, file: !3, line: 863, column: 38)
!5632 = !DILocation(line: 865, column: 16, scope: !5630)
!5633 = !DILocation(line: 865, column: 30, scope: !5630)
!5634 = !DILocation(line: 865, column: 7, scope: !5631)
!5635 = !DILocation(line: 866, column: 4, scope: !5636)
!5636 = distinct !DILexicalBlock(scope: !5630, file: !3, line: 865, column: 53)
!5637 = !DILocation(line: 867, column: 4, scope: !5636)
!5638 = !DILocation(line: 867, column: 9, scope: !5636)
!5639 = !DILocation(line: 867, column: 19, scope: !5636)
!5640 = !DILocation(line: 868, column: 7, scope: !5636)
!5641 = !DILocation(line: 869, column: 3, scope: !5636)
!5642 = !DILocation(line: 870, column: 7, scope: !5643)
!5643 = distinct !DILexicalBlock(scope: !5631, file: !3, line: 870, column: 7)
!5644 = !DILocation(line: 870, column: 16, scope: !5643)
!5645 = !DILocation(line: 870, column: 30, scope: !5643)
!5646 = !DILocation(line: 870, column: 7, scope: !5631)
!5647 = !DILocation(line: 871, column: 4, scope: !5648)
!5648 = distinct !DILexicalBlock(scope: !5643, file: !3, line: 870, column: 53)
!5649 = !DILocation(line: 872, column: 4, scope: !5648)
!5650 = !DILocation(line: 872, column: 9, scope: !5648)
!5651 = !DILocation(line: 872, column: 21, scope: !5648)
!5652 = !DILocation(line: 873, column: 7, scope: !5648)
!5653 = !DILocation(line: 874, column: 3, scope: !5648)
!5654 = !DILocation(line: 875, column: 2, scope: !5631)
!5655 = !DILocation(line: 875, column: 13, scope: !5656)
!5656 = distinct !DILexicalBlock(scope: !5617, file: !3, line: 875, column: 13)
!5657 = !DILocation(line: 875, column: 18, scope: !5656)
!5658 = !DILocation(line: 875, column: 28, scope: !5656)
!5659 = !DILocation(line: 875, column: 40, scope: !5656)
!5660 = !DILocation(line: 876, column: 6, scope: !5656)
!5661 = !DILocation(line: 876, column: 11, scope: !5656)
!5662 = !DILocation(line: 876, column: 26, scope: !5656)
!5663 = !DILocation(line: 876, column: 38, scope: !5656)
!5664 = !DILocation(line: 877, column: 6, scope: !5656)
!5665 = !DILocation(line: 877, column: 11, scope: !5656)
!5666 = !DILocation(line: 877, column: 23, scope: !5656)
!5667 = !DILocation(line: 875, column: 13, scope: !5617)
!5668 = !DILocation(line: 879, column: 7, scope: !5669)
!5669 = distinct !DILexicalBlock(scope: !5670, file: !3, line: 879, column: 7)
!5670 = distinct !DILexicalBlock(scope: !5656, file: !3, line: 877, column: 38)
!5671 = !DILocation(line: 879, column: 16, scope: !5669)
!5672 = !DILocation(line: 879, column: 30, scope: !5669)
!5673 = !DILocation(line: 879, column: 7, scope: !5670)
!5674 = !DILocation(line: 880, column: 4, scope: !5675)
!5675 = distinct !DILexicalBlock(scope: !5669, file: !3, line: 879, column: 53)
!5676 = !DILocation(line: 881, column: 4, scope: !5675)
!5677 = !DILocation(line: 881, column: 9, scope: !5675)
!5678 = !DILocation(line: 881, column: 19, scope: !5675)
!5679 = !DILocation(line: 882, column: 7, scope: !5675)
!5680 = !DILocation(line: 883, column: 3, scope: !5675)
!5681 = !DILocation(line: 884, column: 7, scope: !5682)
!5682 = distinct !DILexicalBlock(scope: !5670, file: !3, line: 884, column: 7)
!5683 = !DILocation(line: 884, column: 16, scope: !5682)
!5684 = !DILocation(line: 884, column: 30, scope: !5682)
!5685 = !DILocation(line: 884, column: 7, scope: !5670)
!5686 = !DILocation(line: 885, column: 4, scope: !5687)
!5687 = distinct !DILexicalBlock(scope: !5682, file: !3, line: 884, column: 53)
!5688 = !DILocation(line: 886, column: 4, scope: !5687)
!5689 = !DILocation(line: 886, column: 9, scope: !5687)
!5690 = !DILocation(line: 886, column: 21, scope: !5687)
!5691 = !DILocation(line: 887, column: 7, scope: !5687)
!5692 = !DILocation(line: 888, column: 3, scope: !5687)
!5693 = !DILocation(line: 889, column: 2, scope: !5670)
!5694 = !DILocation(line: 889, column: 13, scope: !5695)
!5695 = distinct !DILexicalBlock(scope: !5656, file: !3, line: 889, column: 13)
!5696 = !DILocation(line: 889, column: 18, scope: !5695)
!5697 = !DILocation(line: 889, column: 28, scope: !5695)
!5698 = !DILocation(line: 889, column: 40, scope: !5695)
!5699 = !DILocation(line: 890, column: 6, scope: !5695)
!5700 = !DILocation(line: 890, column: 11, scope: !5695)
!5701 = !DILocation(line: 890, column: 26, scope: !5695)
!5702 = !DILocation(line: 890, column: 38, scope: !5695)
!5703 = !DILocation(line: 891, column: 6, scope: !5695)
!5704 = !DILocation(line: 891, column: 11, scope: !5695)
!5705 = !DILocation(line: 891, column: 23, scope: !5695)
!5706 = !DILocation(line: 889, column: 13, scope: !5656)
!5707 = !DILocation(line: 893, column: 7, scope: !5708)
!5708 = distinct !DILexicalBlock(scope: !5709, file: !3, line: 893, column: 7)
!5709 = distinct !DILexicalBlock(scope: !5695, file: !3, line: 891, column: 36)
!5710 = !DILocation(line: 893, column: 16, scope: !5708)
!5711 = !DILocation(line: 893, column: 30, scope: !5708)
!5712 = !DILocation(line: 893, column: 7, scope: !5709)
!5713 = !DILocation(line: 894, column: 4, scope: !5714)
!5714 = distinct !DILexicalBlock(scope: !5708, file: !3, line: 893, column: 53)
!5715 = !DILocation(line: 895, column: 4, scope: !5714)
!5716 = !DILocation(line: 895, column: 9, scope: !5714)
!5717 = !DILocation(line: 895, column: 19, scope: !5714)
!5718 = !DILocation(line: 896, column: 7, scope: !5714)
!5719 = !DILocation(line: 897, column: 3, scope: !5714)
!5720 = !DILocation(line: 898, column: 2, scope: !5709)
!5721 = !DILocation(line: 899, column: 6, scope: !5722)
!5722 = distinct !DILexicalBlock(scope: !5213, file: !3, line: 899, column: 6)
!5723 = !DILocation(line: 899, column: 11, scope: !5722)
!5724 = !DILocation(line: 899, column: 24, scope: !5722)
!5725 = !DILocation(line: 899, column: 6, scope: !5213)
!5726 = !DILocation(line: 900, column: 7, scope: !5727)
!5727 = distinct !DILexicalBlock(scope: !5728, file: !3, line: 900, column: 7)
!5728 = distinct !DILexicalBlock(scope: !5722, file: !3, line: 899, column: 39)
!5729 = !DILocation(line: 900, column: 12, scope: !5727)
!5730 = !DILocation(line: 900, column: 25, scope: !5727)
!5731 = !DILocation(line: 900, column: 7, scope: !5728)
!5732 = !DILocation(line: 901, column: 4, scope: !5733)
!5733 = distinct !DILexicalBlock(scope: !5727, file: !3, line: 900, column: 31)
!5734 = !DILocation(line: 902, column: 4, scope: !5733)
!5735 = !DILocation(line: 902, column: 9, scope: !5733)
!5736 = !DILocation(line: 902, column: 22, scope: !5733)
!5737 = !DILocation(line: 903, column: 7, scope: !5733)
!5738 = !DILocation(line: 904, column: 3, scope: !5733)
!5739 = !DILocation(line: 905, column: 2, scope: !5728)
!5740 = !DILocation(line: 907, column: 6, scope: !5741)
!5741 = distinct !DILexicalBlock(scope: !5213, file: !3, line: 907, column: 6)
!5742 = !DILocation(line: 907, column: 6, scope: !5213)
!5743 = !DILocation(line: 908, column: 3, scope: !5741)
!5744 = !DILocation(line: 911, column: 6, scope: !5745)
!5745 = distinct !DILexicalBlock(scope: !5213, file: !3, line: 911, column: 6)
!5746 = !DILocation(line: 911, column: 11, scope: !5745)
!5747 = !DILocation(line: 911, column: 20, scope: !5745)
!5748 = !DILocation(line: 911, column: 23, scope: !5745)
!5749 = !DILocation(line: 911, column: 28, scope: !5745)
!5750 = !DILocation(line: 911, column: 41, scope: !5745)
!5751 = !DILocation(line: 911, column: 6, scope: !5213)
!5752 = !DILocation(line: 912, column: 35, scope: !5745)
!5753 = !DILocation(line: 912, column: 40, scope: !5745)
!5754 = !DILocation(line: 912, column: 43, scope: !5745)
!5755 = !DILocation(line: 912, column: 10, scope: !5745)
!5756 = !DILocation(line: 912, column: 7, scope: !5745)
!5757 = !DILocation(line: 912, column: 3, scope: !5745)
!5758 = !DILocation(line: 914, column: 6, scope: !5759)
!5759 = distinct !DILexicalBlock(scope: !5213, file: !3, line: 914, column: 6)
!5760 = !DILocation(line: 914, column: 6, scope: !5213)
!5761 = !DILocation(line: 915, column: 3, scope: !5759)
!5762 = !DILocation(line: 917, column: 2, scope: !5213)
!5763 = !DILocation(line: 918, column: 1, scope: !5213)
!5764 = distinct !DISubprogram(name: "me4000_ai_do_cmd", scope: !3, file: !3, line: 651, type: !3925, scopeLine: 653, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!5765 = !DILocalVariable(name: "dev", arg: 1, scope: !5764, file: !3, line: 651, type: !186)
!5766 = !DILocation(line: 651, column: 51, scope: !5764)
!5767 = !DILocalVariable(name: "s", arg: 2, scope: !5764, file: !3, line: 652, type: !223)
!5768 = !DILocation(line: 652, column: 33, scope: !5764)
!5769 = !DILocalVariable(name: "devpriv", scope: !5764, file: !3, line: 654, type: !4332)
!5770 = !DILocation(line: 654, column: 25, scope: !5764)
!5771 = !DILocation(line: 654, column: 35, scope: !5764)
!5772 = !DILocation(line: 654, column: 40, scope: !5764)
!5773 = !DILocalVariable(name: "cmd", scope: !5764, file: !3, line: 655, type: !3931)
!5774 = !DILocation(line: 655, column: 21, scope: !5764)
!5775 = !DILocation(line: 655, column: 28, scope: !5764)
!5776 = !DILocation(line: 655, column: 31, scope: !5764)
!5777 = !DILocation(line: 655, column: 38, scope: !5764)
!5778 = !DILocalVariable(name: "ctrl", scope: !5764, file: !3, line: 656, type: !7)
!5779 = !DILocation(line: 656, column: 15, scope: !5764)
!5780 = !DILocation(line: 659, column: 7, scope: !5764)
!5781 = !DILocation(line: 659, column: 16, scope: !5764)
!5782 = !DILocation(line: 659, column: 30, scope: !5764)
!5783 = !DILocation(line: 660, column: 7, scope: !5764)
!5784 = !DILocation(line: 660, column: 12, scope: !5764)
!5785 = !DILocation(line: 660, column: 19, scope: !5764)
!5786 = !DILocation(line: 659, column: 2, scope: !5764)
!5787 = !DILocation(line: 661, column: 12, scope: !5764)
!5788 = !DILocation(line: 661, column: 17, scope: !5764)
!5789 = !DILocation(line: 661, column: 24, scope: !5764)
!5790 = !DILocation(line: 661, column: 2, scope: !5764)
!5791 = !DILocation(line: 663, column: 6, scope: !5792)
!5792 = distinct !DILexicalBlock(scope: !5764, file: !3, line: 663, column: 6)
!5793 = !DILocation(line: 663, column: 15, scope: !5792)
!5794 = !DILocation(line: 663, column: 6, scope: !5764)
!5795 = !DILocation(line: 664, column: 8, scope: !5796)
!5796 = distinct !DILexicalBlock(scope: !5792, file: !3, line: 663, column: 30)
!5797 = !DILocation(line: 664, column: 17, scope: !5796)
!5798 = !DILocation(line: 664, column: 31, scope: !5796)
!5799 = !DILocation(line: 665, column: 8, scope: !5796)
!5800 = !DILocation(line: 665, column: 13, scope: !5796)
!5801 = !DILocation(line: 665, column: 20, scope: !5796)
!5802 = !DILocation(line: 664, column: 3, scope: !5796)
!5803 = !DILocation(line: 666, column: 13, scope: !5796)
!5804 = !DILocation(line: 666, column: 18, scope: !5796)
!5805 = !DILocation(line: 666, column: 25, scope: !5796)
!5806 = !DILocation(line: 666, column: 3, scope: !5796)
!5807 = !DILocation(line: 667, column: 2, scope: !5796)
!5808 = !DILocation(line: 669, column: 7, scope: !5764)
!5809 = !DILocation(line: 669, column: 16, scope: !5764)
!5810 = !DILocation(line: 669, column: 30, scope: !5764)
!5811 = !DILocation(line: 670, column: 7, scope: !5764)
!5812 = !DILocation(line: 670, column: 12, scope: !5764)
!5813 = !DILocation(line: 670, column: 19, scope: !5764)
!5814 = !DILocation(line: 669, column: 2, scope: !5764)
!5815 = !DILocation(line: 671, column: 7, scope: !5764)
!5816 = !DILocation(line: 671, column: 16, scope: !5764)
!5817 = !DILocation(line: 671, column: 30, scope: !5764)
!5818 = !DILocation(line: 672, column: 7, scope: !5764)
!5819 = !DILocation(line: 672, column: 12, scope: !5764)
!5820 = !DILocation(line: 672, column: 19, scope: !5764)
!5821 = !DILocation(line: 671, column: 2, scope: !5764)
!5822 = !DILocation(line: 675, column: 9, scope: !5764)
!5823 = !DILocation(line: 675, column: 18, scope: !5764)
!5824 = !DILocation(line: 675, column: 31, scope: !5764)
!5825 = !DILocation(line: 676, column: 37, scope: !5764)
!5826 = !DILocation(line: 675, column: 7, scope: !5764)
!5827 = !DILocation(line: 680, column: 6, scope: !5828)
!5828 = distinct !DILexicalBlock(scope: !5764, file: !3, line: 680, column: 6)
!5829 = !DILocation(line: 680, column: 11, scope: !5828)
!5830 = !DILocation(line: 680, column: 20, scope: !5828)
!5831 = !DILocation(line: 680, column: 6, scope: !5764)
!5832 = !DILocation(line: 681, column: 8, scope: !5833)
!5833 = distinct !DILexicalBlock(scope: !5828, file: !3, line: 680, column: 35)
!5834 = !DILocation(line: 681, column: 13, scope: !5833)
!5835 = !DILocation(line: 681, column: 28, scope: !5833)
!5836 = !DILocation(line: 681, column: 33, scope: !5833)
!5837 = !DILocation(line: 681, column: 26, scope: !5833)
!5838 = !DILocation(line: 682, column: 8, scope: !5833)
!5839 = !DILocation(line: 682, column: 13, scope: !5833)
!5840 = !DILocation(line: 682, column: 20, scope: !5833)
!5841 = !DILocation(line: 681, column: 3, scope: !5833)
!5842 = !DILocation(line: 683, column: 8, scope: !5833)
!5843 = !DILocation(line: 684, column: 2, scope: !5833)
!5844 = !DILocation(line: 684, column: 13, scope: !5845)
!5845 = distinct !DILexicalBlock(scope: !5828, file: !3, line: 684, column: 13)
!5846 = !DILocation(line: 684, column: 18, scope: !5845)
!5847 = !DILocation(line: 684, column: 27, scope: !5845)
!5848 = !DILocation(line: 684, column: 40, scope: !5845)
!5849 = !DILocation(line: 685, column: 6, scope: !5845)
!5850 = !DILocation(line: 685, column: 11, scope: !5845)
!5851 = !DILocation(line: 685, column: 24, scope: !5845)
!5852 = !DILocation(line: 684, column: 13, scope: !5828)
!5853 = !DILocation(line: 686, column: 8, scope: !5854)
!5854 = distinct !DILexicalBlock(scope: !5845, file: !3, line: 685, column: 39)
!5855 = !DILocation(line: 686, column: 13, scope: !5854)
!5856 = !DILocation(line: 687, column: 8, scope: !5854)
!5857 = !DILocation(line: 687, column: 13, scope: !5854)
!5858 = !DILocation(line: 687, column: 20, scope: !5854)
!5859 = !DILocation(line: 686, column: 3, scope: !5854)
!5860 = !DILocation(line: 688, column: 8, scope: !5854)
!5861 = !DILocation(line: 689, column: 2, scope: !5854)
!5862 = !DILocation(line: 690, column: 7, scope: !5764)
!5863 = !DILocation(line: 693, column: 7, scope: !5764)
!5864 = !DILocation(line: 693, column: 13, scope: !5764)
!5865 = !DILocation(line: 693, column: 18, scope: !5764)
!5866 = !DILocation(line: 693, column: 25, scope: !5764)
!5867 = !DILocation(line: 693, column: 2, scope: !5764)
!5868 = !DILocation(line: 696, column: 27, scope: !5764)
!5869 = !DILocation(line: 696, column: 32, scope: !5764)
!5870 = !DILocation(line: 696, column: 35, scope: !5764)
!5871 = !DILocation(line: 696, column: 2, scope: !5764)
!5872 = !DILocation(line: 699, column: 6, scope: !5764)
!5873 = !DILocation(line: 699, column: 11, scope: !5764)
!5874 = !DILocation(line: 699, column: 18, scope: !5764)
!5875 = !DILocation(line: 699, column: 2, scope: !5764)
!5876 = !DILocation(line: 701, column: 2, scope: !5764)
!5877 = distinct !DISubprogram(name: "me4000_ao_insn_write", scope: !3, file: !3, line: 992, type: !221, scopeLine: 996, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!5878 = !DILocalVariable(name: "dev", arg: 1, scope: !5877, file: !3, line: 992, type: !186)
!5879 = !DILocation(line: 992, column: 55, scope: !5877)
!5880 = !DILocalVariable(name: "s", arg: 2, scope: !5877, file: !3, line: 993, type: !223)
!5881 = !DILocation(line: 993, column: 30, scope: !5877)
!5882 = !DILocalVariable(name: "insn", arg: 3, scope: !5877, file: !3, line: 994, type: !3944)
!5883 = !DILocation(line: 994, column: 25, scope: !5877)
!5884 = !DILocalVariable(name: "data", arg: 4, scope: !5877, file: !3, line: 995, type: !2710)
!5885 = !DILocation(line: 995, column: 19, scope: !5877)
!5886 = !DILocalVariable(name: "chan", scope: !5877, file: !3, line: 997, type: !7)
!5887 = !DILocation(line: 997, column: 15, scope: !5877)
!5888 = !DILocation(line: 997, column: 22, scope: !5877)
!5889 = !DILocalVariable(name: "tmp", scope: !5877, file: !3, line: 998, type: !7)
!5890 = !DILocation(line: 998, column: 15, scope: !5877)
!5891 = !DILocation(line: 1001, column: 12, scope: !5877)
!5892 = !DILocation(line: 1001, column: 17, scope: !5877)
!5893 = !DILocation(line: 1001, column: 26, scope: !5877)
!5894 = !DILocation(line: 1001, column: 24, scope: !5877)
!5895 = !DILocation(line: 1001, column: 8, scope: !5877)
!5896 = !DILocation(line: 1001, column: 6, scope: !5877)
!5897 = !DILocation(line: 1002, column: 6, scope: !5877)
!5898 = !DILocation(line: 1003, column: 7, scope: !5877)
!5899 = !DILocation(line: 1003, column: 12, scope: !5877)
!5900 = !DILocation(line: 1003, column: 17, scope: !5877)
!5901 = !DILocation(line: 1003, column: 26, scope: !5877)
!5902 = !DILocation(line: 1003, column: 24, scope: !5877)
!5903 = !DILocation(line: 1003, column: 2, scope: !5877)
!5904 = !DILocation(line: 1006, column: 12, scope: !5877)
!5905 = !DILocation(line: 1006, column: 17, scope: !5877)
!5906 = !DILocation(line: 1006, column: 26, scope: !5877)
!5907 = !DILocation(line: 1006, column: 24, scope: !5877)
!5908 = !DILocation(line: 1006, column: 2, scope: !5877)
!5909 = !DILocation(line: 1009, column: 7, scope: !5877)
!5910 = !DILocation(line: 1009, column: 16, scope: !5877)
!5911 = !DILocation(line: 1009, column: 21, scope: !5877)
!5912 = !DILocation(line: 1009, column: 30, scope: !5877)
!5913 = !DILocation(line: 1009, column: 28, scope: !5877)
!5914 = !DILocation(line: 1009, column: 2, scope: !5877)
!5915 = !DILocation(line: 1012, column: 22, scope: !5877)
!5916 = !DILocation(line: 1012, column: 2, scope: !5877)
!5917 = !DILocation(line: 1012, column: 5, scope: !5877)
!5918 = !DILocation(line: 1012, column: 14, scope: !5877)
!5919 = !DILocation(line: 1012, column: 20, scope: !5877)
!5920 = !DILocation(line: 1014, column: 2, scope: !5877)
!5921 = distinct !DISubprogram(name: "me4000_dio_insn_bits", scope: !3, file: !3, line: 1017, type: !221, scopeLine: 1021, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!5922 = !DILocalVariable(name: "dev", arg: 1, scope: !5921, file: !3, line: 1017, type: !186)
!5923 = !DILocation(line: 1017, column: 55, scope: !5921)
!5924 = !DILocalVariable(name: "s", arg: 2, scope: !5921, file: !3, line: 1018, type: !223)
!5925 = !DILocation(line: 1018, column: 30, scope: !5921)
!5926 = !DILocalVariable(name: "insn", arg: 3, scope: !5921, file: !3, line: 1019, type: !3944)
!5927 = !DILocation(line: 1019, column: 25, scope: !5921)
!5928 = !DILocalVariable(name: "data", arg: 4, scope: !5921, file: !3, line: 1020, type: !2710)
!5929 = !DILocation(line: 1020, column: 19, scope: !5921)
!5930 = !DILocation(line: 1022, column: 30, scope: !5931)
!5931 = distinct !DILexicalBlock(scope: !5921, file: !3, line: 1022, column: 6)
!5932 = !DILocation(line: 1022, column: 33, scope: !5931)
!5933 = !DILocation(line: 1022, column: 6, scope: !5931)
!5934 = !DILocation(line: 1022, column: 6, scope: !5921)
!5935 = !DILocation(line: 1023, column: 9, scope: !5936)
!5936 = distinct !DILexicalBlock(scope: !5931, file: !3, line: 1022, column: 40)
!5937 = !DILocation(line: 1023, column: 12, scope: !5936)
!5938 = !DILocation(line: 1023, column: 18, scope: !5936)
!5939 = !DILocation(line: 1023, column: 24, scope: !5936)
!5940 = !DILocation(line: 1024, column: 8, scope: !5936)
!5941 = !DILocation(line: 1024, column: 13, scope: !5936)
!5942 = !DILocation(line: 1024, column: 20, scope: !5936)
!5943 = !DILocation(line: 1023, column: 3, scope: !5936)
!5944 = !DILocation(line: 1025, column: 9, scope: !5936)
!5945 = !DILocation(line: 1025, column: 12, scope: !5936)
!5946 = !DILocation(line: 1025, column: 18, scope: !5936)
!5947 = !DILocation(line: 1025, column: 24, scope: !5936)
!5948 = !DILocation(line: 1026, column: 8, scope: !5936)
!5949 = !DILocation(line: 1026, column: 13, scope: !5936)
!5950 = !DILocation(line: 1026, column: 20, scope: !5936)
!5951 = !DILocation(line: 1025, column: 3, scope: !5936)
!5952 = !DILocation(line: 1027, column: 9, scope: !5936)
!5953 = !DILocation(line: 1027, column: 12, scope: !5936)
!5954 = !DILocation(line: 1027, column: 18, scope: !5936)
!5955 = !DILocation(line: 1027, column: 25, scope: !5936)
!5956 = !DILocation(line: 1028, column: 8, scope: !5936)
!5957 = !DILocation(line: 1028, column: 13, scope: !5936)
!5958 = !DILocation(line: 1028, column: 20, scope: !5936)
!5959 = !DILocation(line: 1027, column: 3, scope: !5936)
!5960 = !DILocation(line: 1029, column: 9, scope: !5936)
!5961 = !DILocation(line: 1029, column: 12, scope: !5936)
!5962 = !DILocation(line: 1029, column: 18, scope: !5936)
!5963 = !DILocation(line: 1029, column: 25, scope: !5936)
!5964 = !DILocation(line: 1030, column: 8, scope: !5936)
!5965 = !DILocation(line: 1030, column: 13, scope: !5936)
!5966 = !DILocation(line: 1030, column: 20, scope: !5936)
!5967 = !DILocation(line: 1029, column: 3, scope: !5936)
!5968 = !DILocation(line: 1031, column: 2, scope: !5936)
!5969 = !DILocation(line: 1033, column: 18, scope: !5921)
!5970 = !DILocation(line: 1033, column: 23, scope: !5921)
!5971 = !DILocation(line: 1033, column: 30, scope: !5921)
!5972 = !DILocation(line: 1033, column: 14, scope: !5921)
!5973 = !DILocation(line: 1033, column: 55, scope: !5921)
!5974 = !DILocation(line: 1033, column: 63, scope: !5921)
!5975 = !DILocation(line: 1034, column: 11, scope: !5921)
!5976 = !DILocation(line: 1034, column: 16, scope: !5921)
!5977 = !DILocation(line: 1034, column: 23, scope: !5921)
!5978 = !DILocation(line: 1034, column: 7, scope: !5921)
!5979 = !DILocation(line: 1034, column: 48, scope: !5921)
!5980 = !DILocation(line: 1034, column: 56, scope: !5921)
!5981 = !DILocation(line: 1033, column: 69, scope: !5921)
!5982 = !DILocation(line: 1035, column: 11, scope: !5921)
!5983 = !DILocation(line: 1035, column: 16, scope: !5921)
!5984 = !DILocation(line: 1035, column: 23, scope: !5921)
!5985 = !DILocation(line: 1035, column: 7, scope: !5921)
!5986 = !DILocation(line: 1035, column: 48, scope: !5921)
!5987 = !DILocation(line: 1035, column: 56, scope: !5921)
!5988 = !DILocation(line: 1034, column: 62, scope: !5921)
!5989 = !DILocation(line: 1036, column: 11, scope: !5921)
!5990 = !DILocation(line: 1036, column: 16, scope: !5921)
!5991 = !DILocation(line: 1036, column: 23, scope: !5921)
!5992 = !DILocation(line: 1036, column: 7, scope: !5921)
!5993 = !DILocation(line: 1036, column: 48, scope: !5921)
!5994 = !DILocation(line: 1036, column: 56, scope: !5921)
!5995 = !DILocation(line: 1035, column: 63, scope: !5921)
!5996 = !DILocation(line: 1033, column: 2, scope: !5921)
!5997 = !DILocation(line: 1033, column: 10, scope: !5921)
!5998 = !DILocation(line: 1038, column: 9, scope: !5921)
!5999 = !DILocation(line: 1038, column: 15, scope: !5921)
!6000 = !DILocation(line: 1038, column: 2, scope: !5921)
!6001 = distinct !DISubprogram(name: "me4000_dio_insn_config", scope: !3, file: !3, line: 1041, type: !221, scopeLine: 1045, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!6002 = !DILocalVariable(name: "dev", arg: 1, scope: !6001, file: !3, line: 1041, type: !186)
!6003 = !DILocation(line: 1041, column: 57, scope: !6001)
!6004 = !DILocalVariable(name: "s", arg: 2, scope: !6001, file: !3, line: 1042, type: !223)
!6005 = !DILocation(line: 1042, column: 32, scope: !6001)
!6006 = !DILocalVariable(name: "insn", arg: 3, scope: !6001, file: !3, line: 1043, type: !3944)
!6007 = !DILocation(line: 1043, column: 27, scope: !6001)
!6008 = !DILocalVariable(name: "data", arg: 4, scope: !6001, file: !3, line: 1044, type: !2710)
!6009 = !DILocation(line: 1044, column: 21, scope: !6001)
!6010 = !DILocalVariable(name: "chan", scope: !6001, file: !3, line: 1046, type: !7)
!6011 = !DILocation(line: 1046, column: 15, scope: !6001)
!6012 = !DILocation(line: 1046, column: 22, scope: !6001)
!6013 = !DILocalVariable(name: "mask", scope: !6001, file: !3, line: 1047, type: !7)
!6014 = !DILocation(line: 1047, column: 15, scope: !6001)
!6015 = !DILocalVariable(name: "tmp", scope: !6001, file: !3, line: 1048, type: !7)
!6016 = !DILocation(line: 1048, column: 15, scope: !6001)
!6017 = !DILocalVariable(name: "ret", scope: !6001, file: !3, line: 1049, type: !134)
!6018 = !DILocation(line: 1049, column: 6, scope: !6001)
!6019 = !DILocation(line: 1051, column: 6, scope: !6020)
!6020 = distinct !DILexicalBlock(scope: !6001, file: !3, line: 1051, column: 6)
!6021 = !DILocation(line: 1051, column: 11, scope: !6020)
!6022 = !DILocation(line: 1051, column: 6, scope: !6001)
!6023 = !DILocation(line: 1052, column: 8, scope: !6020)
!6024 = !DILocation(line: 1052, column: 3, scope: !6020)
!6025 = !DILocation(line: 1053, column: 11, scope: !6026)
!6026 = distinct !DILexicalBlock(scope: !6020, file: !3, line: 1053, column: 11)
!6027 = !DILocation(line: 1053, column: 16, scope: !6026)
!6028 = !DILocation(line: 1053, column: 11, scope: !6020)
!6029 = !DILocation(line: 1054, column: 8, scope: !6026)
!6030 = !DILocation(line: 1054, column: 3, scope: !6026)
!6031 = !DILocation(line: 1055, column: 11, scope: !6032)
!6032 = distinct !DILexicalBlock(scope: !6026, file: !3, line: 1055, column: 11)
!6033 = !DILocation(line: 1055, column: 16, scope: !6032)
!6034 = !DILocation(line: 1055, column: 11, scope: !6026)
!6035 = !DILocation(line: 1056, column: 8, scope: !6032)
!6036 = !DILocation(line: 1056, column: 3, scope: !6032)
!6037 = !DILocation(line: 1058, column: 8, scope: !6032)
!6038 = !DILocation(line: 1060, column: 31, scope: !6001)
!6039 = !DILocation(line: 1060, column: 36, scope: !6001)
!6040 = !DILocation(line: 1060, column: 39, scope: !6001)
!6041 = !DILocation(line: 1060, column: 45, scope: !6001)
!6042 = !DILocation(line: 1060, column: 51, scope: !6001)
!6043 = !DILocation(line: 1060, column: 8, scope: !6001)
!6044 = !DILocation(line: 1060, column: 6, scope: !6001)
!6045 = !DILocation(line: 1061, column: 6, scope: !6046)
!6046 = distinct !DILexicalBlock(scope: !6001, file: !3, line: 1061, column: 6)
!6047 = !DILocation(line: 1061, column: 6, scope: !6001)
!6048 = !DILocation(line: 1062, column: 10, scope: !6046)
!6049 = !DILocation(line: 1062, column: 3, scope: !6046)
!6050 = !DILocation(line: 1064, column: 12, scope: !6001)
!6051 = !DILocation(line: 1064, column: 17, scope: !6001)
!6052 = !DILocation(line: 1064, column: 24, scope: !6001)
!6053 = !DILocation(line: 1064, column: 8, scope: !6001)
!6054 = !DILocation(line: 1064, column: 6, scope: !6001)
!6055 = !DILocation(line: 1065, column: 6, scope: !6001)
!6056 = !DILocation(line: 1069, column: 6, scope: !6057)
!6057 = distinct !DILexicalBlock(scope: !6001, file: !3, line: 1069, column: 6)
!6058 = !DILocation(line: 1069, column: 9, scope: !6057)
!6059 = !DILocation(line: 1069, column: 17, scope: !6057)
!6060 = !DILocation(line: 1069, column: 6, scope: !6001)
!6061 = !DILocation(line: 1070, column: 7, scope: !6057)
!6062 = !DILocation(line: 1070, column: 3, scope: !6057)
!6063 = !DILocation(line: 1071, column: 6, scope: !6064)
!6064 = distinct !DILexicalBlock(scope: !6001, file: !3, line: 1071, column: 6)
!6065 = !DILocation(line: 1071, column: 9, scope: !6064)
!6066 = !DILocation(line: 1071, column: 17, scope: !6064)
!6067 = !DILocation(line: 1071, column: 6, scope: !6001)
!6068 = !DILocation(line: 1072, column: 7, scope: !6064)
!6069 = !DILocation(line: 1072, column: 3, scope: !6064)
!6070 = !DILocation(line: 1073, column: 6, scope: !6071)
!6071 = distinct !DILexicalBlock(scope: !6001, file: !3, line: 1073, column: 6)
!6072 = !DILocation(line: 1073, column: 9, scope: !6071)
!6073 = !DILocation(line: 1073, column: 17, scope: !6071)
!6074 = !DILocation(line: 1073, column: 6, scope: !6001)
!6075 = !DILocation(line: 1074, column: 7, scope: !6071)
!6076 = !DILocation(line: 1074, column: 3, scope: !6071)
!6077 = !DILocation(line: 1075, column: 6, scope: !6078)
!6078 = distinct !DILexicalBlock(scope: !6001, file: !3, line: 1075, column: 6)
!6079 = !DILocation(line: 1075, column: 9, scope: !6078)
!6080 = !DILocation(line: 1075, column: 17, scope: !6078)
!6081 = !DILocation(line: 1075, column: 6, scope: !6001)
!6082 = !DILocation(line: 1076, column: 7, scope: !6078)
!6083 = !DILocation(line: 1076, column: 3, scope: !6078)
!6084 = !DILocation(line: 1083, column: 10, scope: !6085)
!6085 = distinct !DILexicalBlock(scope: !6001, file: !3, line: 1083, column: 6)
!6086 = !DILocation(line: 1083, column: 15, scope: !6085)
!6087 = !DILocation(line: 1083, column: 22, scope: !6085)
!6088 = !DILocation(line: 1083, column: 6, scope: !6085)
!6089 = !DILocation(line: 1083, column: 6, scope: !6001)
!6090 = !DILocation(line: 1084, column: 3, scope: !6091)
!6091 = distinct !DILexicalBlock(scope: !6085, file: !3, line: 1083, column: 45)
!6092 = !DILocation(line: 1084, column: 6, scope: !6091)
!6093 = !DILocation(line: 1084, column: 14, scope: !6091)
!6094 = !DILocation(line: 1085, column: 3, scope: !6091)
!6095 = !DILocation(line: 1085, column: 6, scope: !6091)
!6096 = !DILocation(line: 1085, column: 14, scope: !6091)
!6097 = !DILocation(line: 1086, column: 7, scope: !6091)
!6098 = !DILocation(line: 1087, column: 7, scope: !6091)
!6099 = !DILocation(line: 1088, column: 2, scope: !6091)
!6100 = !DILocation(line: 1090, column: 7, scope: !6001)
!6101 = !DILocation(line: 1090, column: 12, scope: !6001)
!6102 = !DILocation(line: 1090, column: 17, scope: !6001)
!6103 = !DILocation(line: 1090, column: 24, scope: !6001)
!6104 = !DILocation(line: 1090, column: 2, scope: !6001)
!6105 = !DILocation(line: 1092, column: 9, scope: !6001)
!6106 = !DILocation(line: 1092, column: 15, scope: !6001)
!6107 = !DILocation(line: 1092, column: 2, scope: !6001)
!6108 = !DILocation(line: 1093, column: 1, scope: !6001)
!6109 = distinct !DISubprogram(name: "inl", scope: !4641, file: !4641, line: 336, type: !6110, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!6110 = !DISubroutineType(types: !6111)
!6111 = !{!7, !134}
!6112 = !DILocalVariable(name: "port", arg: 1, scope: !6109, file: !4641, line: 336, type: !134)
!6113 = !DILocation(line: 336, column: 1, scope: !6109)
!6114 = !DILocalVariable(name: "value", scope: !6109, file: !4641, line: 336, type: !7)
!6115 = !{i32 -2143376940}
!6116 = distinct !DISubprogram(name: "inb", scope: !4641, file: !4641, line: 334, type: !6117, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!6117 = !DISubroutineType(types: !6118)
!6118 = !{!457, !134}
!6119 = !DILocalVariable(name: "port", arg: 1, scope: !6116, file: !4641, line: 334, type: !134)
!6120 = !DILocation(line: 334, column: 1, scope: !6116)
!6121 = !DILocalVariable(name: "value", scope: !6116, file: !4641, line: 334, type: !457)
!6122 = !{i32 -2143382436}
!6123 = distinct !DISubprogram(name: "outb", scope: !4641, file: !4641, line: 334, type: !6124, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!6124 = !DISubroutineType(types: !6125)
!6125 = !{null, !457, !134}
!6126 = !DILocalVariable(name: "value", arg: 1, scope: !6123, file: !4641, line: 334, type: !457)
!6127 = !DILocation(line: 334, column: 1, scope: !6123)
!6128 = !DILocalVariable(name: "port", arg: 2, scope: !6123, file: !4641, line: 334, type: !134)
!6129 = !{i32 -2143382638}
!6130 = distinct !DISubprogram(name: "me4000_ai_reset", scope: !3, file: !3, line: 385, type: !3981, scopeLine: 386, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!6131 = !DILocalVariable(name: "dev", arg: 1, scope: !6130, file: !3, line: 385, type: !186)
!6132 = !DILocation(line: 385, column: 51, scope: !6130)
!6133 = !DILocalVariable(name: "ctrl", scope: !6130, file: !3, line: 387, type: !7)
!6134 = !DILocation(line: 387, column: 15, scope: !6130)
!6135 = !DILocation(line: 390, column: 13, scope: !6130)
!6136 = !DILocation(line: 390, column: 18, scope: !6130)
!6137 = !DILocation(line: 390, column: 25, scope: !6130)
!6138 = !DILocation(line: 390, column: 9, scope: !6130)
!6139 = !DILocation(line: 390, column: 7, scope: !6130)
!6140 = !DILocation(line: 391, column: 7, scope: !6130)
!6141 = !DILocation(line: 392, column: 7, scope: !6130)
!6142 = !DILocation(line: 392, column: 13, scope: !6130)
!6143 = !DILocation(line: 392, column: 18, scope: !6130)
!6144 = !DILocation(line: 392, column: 25, scope: !6130)
!6145 = !DILocation(line: 392, column: 2, scope: !6130)
!6146 = !DILocation(line: 395, column: 12, scope: !6130)
!6147 = !DILocation(line: 395, column: 17, scope: !6130)
!6148 = !DILocation(line: 395, column: 24, scope: !6130)
!6149 = !DILocation(line: 395, column: 2, scope: !6130)
!6150 = !DILocation(line: 396, column: 1, scope: !6130)
!6151 = distinct !DISubprogram(name: "me4000_ai_get_sample", scope: !3, file: !3, line: 437, type: !6152, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!6152 = !DISubroutineType(types: !6153)
!6153 = !{!7, !186, !223}
!6154 = !DILocalVariable(name: "dev", arg: 1, scope: !6151, file: !3, line: 437, type: !186)
!6155 = !DILocation(line: 437, column: 64, scope: !6151)
!6156 = !DILocalVariable(name: "s", arg: 2, scope: !6151, file: !3, line: 438, type: !223)
!6157 = !DILocation(line: 438, column: 32, scope: !6151)
!6158 = !DILocalVariable(name: "val", scope: !6151, file: !3, line: 440, type: !7)
!6159 = !DILocation(line: 440, column: 15, scope: !6151)
!6160 = !DILocation(line: 443, column: 12, scope: !6151)
!6161 = !DILocation(line: 443, column: 17, scope: !6151)
!6162 = !DILocation(line: 443, column: 24, scope: !6151)
!6163 = !DILocation(line: 443, column: 8, scope: !6151)
!6164 = !DILocation(line: 443, column: 6, scope: !6151)
!6165 = !DILocation(line: 444, column: 29, scope: !6151)
!6166 = !DILocation(line: 444, column: 32, scope: !6151)
!6167 = !DILocation(line: 444, column: 9, scope: !6151)
!6168 = !DILocation(line: 444, column: 2, scope: !6151)
!6169 = distinct !DISubprogram(name: "comedi_offset_munge", scope: !123, file: !123, line: 782, type: !6170, scopeLine: 784, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!6170 = !DISubroutineType(types: !6171)
!6171 = !{!7, !223, !7}
!6172 = !DILocalVariable(name: "s", arg: 1, scope: !6169, file: !123, line: 782, type: !223)
!6173 = !DILocation(line: 782, column: 73, scope: !6169)
!6174 = !DILocalVariable(name: "val", arg: 2, scope: !6169, file: !123, line: 783, type: !7)
!6175 = !DILocation(line: 783, column: 26, scope: !6169)
!6176 = !DILocation(line: 785, column: 9, scope: !6169)
!6177 = !DILocation(line: 785, column: 15, scope: !6169)
!6178 = !DILocation(line: 785, column: 18, scope: !6169)
!6179 = !DILocation(line: 785, column: 13, scope: !6169)
!6180 = !DILocation(line: 785, column: 29, scope: !6169)
!6181 = !DILocation(line: 785, column: 32, scope: !6169)
!6182 = !DILocation(line: 785, column: 40, scope: !6169)
!6183 = !DILocation(line: 785, column: 26, scope: !6169)
!6184 = !DILocation(line: 785, column: 2, scope: !6169)
!6185 = distinct !DISubprogram(name: "comedi_range_is_bipolar", scope: !123, file: !123, line: 655, type: !6186, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!6186 = !DISubroutineType(types: !6187)
!6187 = !{!216, !223, !7}
!6188 = !DILocalVariable(name: "s", arg: 1, scope: !6185, file: !123, line: 655, type: !223)
!6189 = !DILocation(line: 655, column: 69, scope: !6185)
!6190 = !DILocalVariable(name: "range", arg: 2, scope: !6185, file: !123, line: 656, type: !7)
!6191 = !DILocation(line: 656, column: 22, scope: !6185)
!6192 = !DILocation(line: 658, column: 9, scope: !6185)
!6193 = !DILocation(line: 658, column: 12, scope: !6185)
!6194 = !DILocation(line: 658, column: 25, scope: !6185)
!6195 = !DILocation(line: 658, column: 31, scope: !6185)
!6196 = !DILocation(line: 658, column: 38, scope: !6185)
!6197 = !DILocation(line: 658, column: 42, scope: !6185)
!6198 = !DILocation(line: 658, column: 2, scope: !6185)
!6199 = distinct !DISubprogram(name: "me4000_ai_eoc", scope: !3, file: !3, line: 447, type: !6200, scopeLine: 451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!6200 = !DISubroutineType(types: !6201)
!6201 = !{!134, !186, !223, !3944, !197}
!6202 = !DILocalVariable(name: "dev", arg: 1, scope: !6199, file: !3, line: 447, type: !186)
!6203 = !DILocation(line: 447, column: 48, scope: !6199)
!6204 = !DILocalVariable(name: "s", arg: 2, scope: !6199, file: !3, line: 448, type: !223)
!6205 = !DILocation(line: 448, column: 30, scope: !6199)
!6206 = !DILocalVariable(name: "insn", arg: 3, scope: !6199, file: !3, line: 449, type: !3944)
!6207 = !DILocation(line: 449, column: 25, scope: !6199)
!6208 = !DILocalVariable(name: "context", arg: 4, scope: !6199, file: !3, line: 450, type: !197)
!6209 = !DILocation(line: 450, column: 19, scope: !6199)
!6210 = !DILocalVariable(name: "status", scope: !6199, file: !3, line: 452, type: !7)
!6211 = !DILocation(line: 452, column: 15, scope: !6199)
!6212 = !DILocation(line: 454, column: 15, scope: !6199)
!6213 = !DILocation(line: 454, column: 20, scope: !6199)
!6214 = !DILocation(line: 454, column: 27, scope: !6199)
!6215 = !DILocation(line: 454, column: 11, scope: !6199)
!6216 = !DILocation(line: 454, column: 9, scope: !6199)
!6217 = !DILocation(line: 455, column: 6, scope: !6218)
!6218 = distinct !DILexicalBlock(scope: !6199, file: !3, line: 455, column: 6)
!6219 = !DILocation(line: 455, column: 13, scope: !6218)
!6220 = !DILocation(line: 455, column: 6, scope: !6199)
!6221 = !DILocation(line: 456, column: 3, scope: !6218)
!6222 = !DILocation(line: 457, column: 2, scope: !6199)
!6223 = !DILocation(line: 458, column: 1, scope: !6199)
!6224 = distinct !DISubprogram(name: "comedi_check_trigger_src", scope: !123, file: !123, line: 859, type: !6225, scopeLine: 861, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!6225 = !DISubroutineType(types: !6226)
!6226 = !{!134, !2710, !7}
!6227 = !DILocalVariable(name: "src", arg: 1, scope: !6224, file: !123, line: 859, type: !2710)
!6228 = !DILocation(line: 859, column: 58, scope: !6224)
!6229 = !DILocalVariable(name: "flags", arg: 2, scope: !6224, file: !123, line: 860, type: !7)
!6230 = !DILocation(line: 860, column: 22, scope: !6224)
!6231 = !DILocalVariable(name: "orig_src", scope: !6224, file: !123, line: 862, type: !7)
!6232 = !DILocation(line: 862, column: 15, scope: !6224)
!6233 = !DILocation(line: 862, column: 27, scope: !6224)
!6234 = !DILocation(line: 862, column: 26, scope: !6224)
!6235 = !DILocation(line: 864, column: 9, scope: !6224)
!6236 = !DILocation(line: 864, column: 20, scope: !6224)
!6237 = !DILocation(line: 864, column: 18, scope: !6224)
!6238 = !DILocation(line: 864, column: 3, scope: !6224)
!6239 = !DILocation(line: 864, column: 7, scope: !6224)
!6240 = !DILocation(line: 865, column: 7, scope: !6241)
!6241 = distinct !DILexicalBlock(scope: !6224, file: !123, line: 865, column: 6)
!6242 = !DILocation(line: 865, column: 6, scope: !6241)
!6243 = !DILocation(line: 865, column: 11, scope: !6241)
!6244 = !DILocation(line: 865, column: 27, scope: !6241)
!6245 = !DILocation(line: 865, column: 31, scope: !6241)
!6246 = !DILocation(line: 865, column: 30, scope: !6241)
!6247 = !DILocation(line: 865, column: 38, scope: !6241)
!6248 = !DILocation(line: 865, column: 35, scope: !6241)
!6249 = !DILocation(line: 865, column: 6, scope: !6224)
!6250 = !DILocation(line: 866, column: 3, scope: !6241)
!6251 = !DILocation(line: 867, column: 2, scope: !6224)
!6252 = !DILocation(line: 868, column: 1, scope: !6224)
!6253 = distinct !DISubprogram(name: "comedi_check_trigger_is_unique", scope: !123, file: !123, line: 878, type: !6254, scopeLine: 879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!6254 = !DISubroutineType(types: !133)
!6255 = !DILocalVariable(name: "src", arg: 1, scope: !6253, file: !123, line: 878, type: !7)
!6256 = !DILocation(line: 878, column: 63, scope: !6253)
!6257 = !DILocation(line: 881, column: 7, scope: !6258)
!6258 = distinct !DILexicalBlock(scope: !6253, file: !123, line: 881, column: 6)
!6259 = !DILocation(line: 881, column: 14, scope: !6258)
!6260 = !DILocation(line: 881, column: 18, scope: !6258)
!6261 = !DILocation(line: 881, column: 11, scope: !6258)
!6262 = !DILocation(line: 881, column: 24, scope: !6258)
!6263 = !DILocation(line: 881, column: 6, scope: !6253)
!6264 = !DILocation(line: 882, column: 3, scope: !6258)
!6265 = !DILocation(line: 883, column: 2, scope: !6253)
!6266 = !DILocation(line: 884, column: 1, scope: !6253)
!6267 = distinct !DISubprogram(name: "comedi_check_trigger_arg_is", scope: !123, file: !123, line: 897, type: !6225, scopeLine: 899, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!6268 = !DILocalVariable(name: "arg", arg: 1, scope: !6267, file: !123, line: 897, type: !2710)
!6269 = !DILocation(line: 897, column: 61, scope: !6267)
!6270 = !DILocalVariable(name: "val", arg: 2, scope: !6267, file: !123, line: 898, type: !7)
!6271 = !DILocation(line: 898, column: 25, scope: !6267)
!6272 = !DILocation(line: 900, column: 7, scope: !6273)
!6273 = distinct !DILexicalBlock(scope: !6267, file: !123, line: 900, column: 6)
!6274 = !DILocation(line: 900, column: 6, scope: !6273)
!6275 = !DILocation(line: 900, column: 14, scope: !6273)
!6276 = !DILocation(line: 900, column: 11, scope: !6273)
!6277 = !DILocation(line: 900, column: 6, scope: !6267)
!6278 = !DILocation(line: 901, column: 10, scope: !6279)
!6279 = distinct !DILexicalBlock(scope: !6273, file: !123, line: 900, column: 19)
!6280 = !DILocation(line: 901, column: 4, scope: !6279)
!6281 = !DILocation(line: 901, column: 8, scope: !6279)
!6282 = !DILocation(line: 902, column: 3, scope: !6279)
!6283 = !DILocation(line: 904, column: 2, scope: !6267)
!6284 = !DILocation(line: 905, column: 1, scope: !6267)
!6285 = distinct !DISubprogram(name: "me4000_ai_round_cmd_args", scope: !3, file: !3, line: 576, type: !6286, scopeLine: 579, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!6286 = !DISubroutineType(types: !6287)
!6287 = !{null, !186, !223, !3931}
!6288 = !DILocalVariable(name: "dev", arg: 1, scope: !6285, file: !3, line: 576, type: !186)
!6289 = !DILocation(line: 576, column: 60, scope: !6285)
!6290 = !DILocalVariable(name: "s", arg: 2, scope: !6285, file: !3, line: 577, type: !223)
!6291 = !DILocation(line: 577, column: 35, scope: !6285)
!6292 = !DILocalVariable(name: "cmd", arg: 3, scope: !6285, file: !3, line: 578, type: !3931)
!6293 = !DILocation(line: 578, column: 29, scope: !6285)
!6294 = !DILocalVariable(name: "devpriv", scope: !6285, file: !3, line: 580, type: !4332)
!6295 = !DILocation(line: 580, column: 25, scope: !6285)
!6296 = !DILocation(line: 580, column: 35, scope: !6285)
!6297 = !DILocation(line: 580, column: 40, scope: !6285)
!6298 = !DILocalVariable(name: "rest", scope: !6285, file: !3, line: 581, type: !134)
!6299 = !DILocation(line: 581, column: 6, scope: !6285)
!6300 = !DILocation(line: 583, column: 2, scope: !6285)
!6301 = !DILocation(line: 583, column: 11, scope: !6285)
!6302 = !DILocation(line: 583, column: 25, scope: !6285)
!6303 = !DILocation(line: 584, column: 2, scope: !6285)
!6304 = !DILocation(line: 584, column: 11, scope: !6285)
!6305 = !DILocation(line: 584, column: 25, scope: !6285)
!6306 = !DILocation(line: 585, column: 2, scope: !6285)
!6307 = !DILocation(line: 585, column: 11, scope: !6285)
!6308 = !DILocation(line: 585, column: 25, scope: !6285)
!6309 = !DILocation(line: 587, column: 6, scope: !6310)
!6310 = distinct !DILexicalBlock(scope: !6285, file: !3, line: 587, column: 6)
!6311 = !DILocation(line: 587, column: 11, scope: !6310)
!6312 = !DILocation(line: 587, column: 6, scope: !6285)
!6313 = !DILocation(line: 588, column: 29, scope: !6314)
!6314 = distinct !DILexicalBlock(scope: !6310, file: !3, line: 587, column: 22)
!6315 = !DILocation(line: 588, column: 34, scope: !6314)
!6316 = !DILocation(line: 588, column: 44, scope: !6314)
!6317 = !DILocation(line: 588, column: 50, scope: !6314)
!6318 = !DILocation(line: 588, column: 3, scope: !6314)
!6319 = !DILocation(line: 588, column: 12, scope: !6314)
!6320 = !DILocation(line: 588, column: 26, scope: !6314)
!6321 = !DILocation(line: 589, column: 11, scope: !6314)
!6322 = !DILocation(line: 589, column: 16, scope: !6314)
!6323 = !DILocation(line: 589, column: 26, scope: !6314)
!6324 = !DILocation(line: 589, column: 32, scope: !6314)
!6325 = !DILocation(line: 589, column: 8, scope: !6314)
!6326 = !DILocation(line: 591, column: 8, scope: !6327)
!6327 = distinct !DILexicalBlock(scope: !6314, file: !3, line: 591, column: 7)
!6328 = !DILocation(line: 591, column: 13, scope: !6327)
!6329 = !DILocation(line: 591, column: 19, scope: !6327)
!6330 = !DILocation(line: 591, column: 38, scope: !6327)
!6331 = !DILocation(line: 591, column: 7, scope: !6314)
!6332 = !DILocation(line: 592, column: 8, scope: !6333)
!6333 = distinct !DILexicalBlock(scope: !6334, file: !3, line: 592, column: 8)
!6334 = distinct !DILexicalBlock(scope: !6327, file: !3, line: 591, column: 61)
!6335 = !DILocation(line: 592, column: 13, scope: !6333)
!6336 = !DILocation(line: 592, column: 8, scope: !6334)
!6337 = !DILocation(line: 593, column: 5, scope: !6333)
!6338 = !DILocation(line: 593, column: 14, scope: !6333)
!6339 = !DILocation(line: 593, column: 27, scope: !6333)
!6340 = !DILocation(line: 594, column: 3, scope: !6334)
!6341 = !DILocation(line: 594, column: 15, scope: !6342)
!6342 = distinct !DILexicalBlock(scope: !6327, file: !3, line: 594, column: 14)
!6343 = !DILocation(line: 594, column: 20, scope: !6342)
!6344 = !DILocation(line: 594, column: 26, scope: !6342)
!6345 = !DILocation(line: 594, column: 45, scope: !6342)
!6346 = !DILocation(line: 594, column: 14, scope: !6327)
!6347 = !DILocation(line: 595, column: 8, scope: !6348)
!6348 = distinct !DILexicalBlock(scope: !6349, file: !3, line: 595, column: 8)
!6349 = distinct !DILexicalBlock(scope: !6342, file: !3, line: 594, column: 63)
!6350 = !DILocation(line: 595, column: 8, scope: !6349)
!6351 = !DILocation(line: 596, column: 5, scope: !6348)
!6352 = !DILocation(line: 596, column: 14, scope: !6348)
!6353 = !DILocation(line: 596, column: 27, scope: !6348)
!6354 = !DILocation(line: 597, column: 3, scope: !6349)
!6355 = !DILocation(line: 598, column: 2, scope: !6314)
!6356 = !DILocation(line: 600, column: 6, scope: !6357)
!6357 = distinct !DILexicalBlock(scope: !6285, file: !3, line: 600, column: 6)
!6358 = !DILocation(line: 600, column: 11, scope: !6357)
!6359 = !DILocation(line: 600, column: 6, scope: !6285)
!6360 = !DILocation(line: 601, column: 29, scope: !6361)
!6361 = distinct !DILexicalBlock(scope: !6357, file: !3, line: 600, column: 27)
!6362 = !DILocation(line: 601, column: 34, scope: !6361)
!6363 = !DILocation(line: 601, column: 49, scope: !6361)
!6364 = !DILocation(line: 601, column: 55, scope: !6361)
!6365 = !DILocation(line: 601, column: 3, scope: !6361)
!6366 = !DILocation(line: 601, column: 12, scope: !6361)
!6367 = !DILocation(line: 601, column: 26, scope: !6361)
!6368 = !DILocation(line: 602, column: 11, scope: !6361)
!6369 = !DILocation(line: 602, column: 16, scope: !6361)
!6370 = !DILocation(line: 602, column: 31, scope: !6361)
!6371 = !DILocation(line: 602, column: 37, scope: !6361)
!6372 = !DILocation(line: 602, column: 8, scope: !6361)
!6373 = !DILocation(line: 604, column: 8, scope: !6374)
!6374 = distinct !DILexicalBlock(scope: !6361, file: !3, line: 604, column: 7)
!6375 = !DILocation(line: 604, column: 13, scope: !6374)
!6376 = !DILocation(line: 604, column: 19, scope: !6374)
!6377 = !DILocation(line: 604, column: 38, scope: !6374)
!6378 = !DILocation(line: 604, column: 7, scope: !6361)
!6379 = !DILocation(line: 605, column: 8, scope: !6380)
!6380 = distinct !DILexicalBlock(scope: !6381, file: !3, line: 605, column: 8)
!6381 = distinct !DILexicalBlock(scope: !6374, file: !3, line: 604, column: 61)
!6382 = !DILocation(line: 605, column: 13, scope: !6380)
!6383 = !DILocation(line: 605, column: 8, scope: !6381)
!6384 = !DILocation(line: 606, column: 5, scope: !6380)
!6385 = !DILocation(line: 606, column: 14, scope: !6380)
!6386 = !DILocation(line: 606, column: 27, scope: !6380)
!6387 = !DILocation(line: 607, column: 3, scope: !6381)
!6388 = !DILocation(line: 607, column: 15, scope: !6389)
!6389 = distinct !DILexicalBlock(scope: !6374, file: !3, line: 607, column: 14)
!6390 = !DILocation(line: 607, column: 20, scope: !6389)
!6391 = !DILocation(line: 607, column: 26, scope: !6389)
!6392 = !DILocation(line: 607, column: 45, scope: !6389)
!6393 = !DILocation(line: 607, column: 14, scope: !6374)
!6394 = !DILocation(line: 608, column: 8, scope: !6395)
!6395 = distinct !DILexicalBlock(scope: !6396, file: !3, line: 608, column: 8)
!6396 = distinct !DILexicalBlock(scope: !6389, file: !3, line: 607, column: 63)
!6397 = !DILocation(line: 608, column: 8, scope: !6396)
!6398 = !DILocation(line: 609, column: 5, scope: !6395)
!6399 = !DILocation(line: 609, column: 14, scope: !6395)
!6400 = !DILocation(line: 609, column: 27, scope: !6395)
!6401 = !DILocation(line: 610, column: 3, scope: !6396)
!6402 = !DILocation(line: 611, column: 2, scope: !6361)
!6403 = !DILocation(line: 613, column: 6, scope: !6404)
!6404 = distinct !DILexicalBlock(scope: !6285, file: !3, line: 613, column: 6)
!6405 = !DILocation(line: 613, column: 11, scope: !6404)
!6406 = !DILocation(line: 613, column: 6, scope: !6285)
!6407 = !DILocation(line: 614, column: 29, scope: !6408)
!6408 = distinct !DILexicalBlock(scope: !6404, file: !3, line: 613, column: 24)
!6409 = !DILocation(line: 614, column: 34, scope: !6408)
!6410 = !DILocation(line: 614, column: 46, scope: !6408)
!6411 = !DILocation(line: 614, column: 52, scope: !6408)
!6412 = !DILocation(line: 614, column: 3, scope: !6408)
!6413 = !DILocation(line: 614, column: 12, scope: !6408)
!6414 = !DILocation(line: 614, column: 26, scope: !6408)
!6415 = !DILocation(line: 615, column: 11, scope: !6408)
!6416 = !DILocation(line: 615, column: 16, scope: !6408)
!6417 = !DILocation(line: 615, column: 28, scope: !6408)
!6418 = !DILocation(line: 615, column: 34, scope: !6408)
!6419 = !DILocation(line: 615, column: 8, scope: !6408)
!6420 = !DILocation(line: 617, column: 8, scope: !6421)
!6421 = distinct !DILexicalBlock(scope: !6408, file: !3, line: 617, column: 7)
!6422 = !DILocation(line: 617, column: 13, scope: !6421)
!6423 = !DILocation(line: 617, column: 19, scope: !6421)
!6424 = !DILocation(line: 617, column: 38, scope: !6421)
!6425 = !DILocation(line: 617, column: 7, scope: !6408)
!6426 = !DILocation(line: 618, column: 8, scope: !6427)
!6427 = distinct !DILexicalBlock(scope: !6428, file: !3, line: 618, column: 8)
!6428 = distinct !DILexicalBlock(scope: !6421, file: !3, line: 617, column: 61)
!6429 = !DILocation(line: 618, column: 13, scope: !6427)
!6430 = !DILocation(line: 618, column: 8, scope: !6428)
!6431 = !DILocation(line: 619, column: 5, scope: !6427)
!6432 = !DILocation(line: 619, column: 14, scope: !6427)
!6433 = !DILocation(line: 619, column: 27, scope: !6427)
!6434 = !DILocation(line: 620, column: 3, scope: !6428)
!6435 = !DILocation(line: 620, column: 15, scope: !6436)
!6436 = distinct !DILexicalBlock(scope: !6421, file: !3, line: 620, column: 14)
!6437 = !DILocation(line: 620, column: 20, scope: !6436)
!6438 = !DILocation(line: 620, column: 26, scope: !6436)
!6439 = !DILocation(line: 620, column: 45, scope: !6436)
!6440 = !DILocation(line: 620, column: 14, scope: !6421)
!6441 = !DILocation(line: 621, column: 8, scope: !6442)
!6442 = distinct !DILexicalBlock(scope: !6443, file: !3, line: 621, column: 8)
!6443 = distinct !DILexicalBlock(scope: !6436, file: !3, line: 620, column: 63)
!6444 = !DILocation(line: 621, column: 8, scope: !6443)
!6445 = !DILocation(line: 622, column: 5, scope: !6442)
!6446 = !DILocation(line: 622, column: 14, scope: !6442)
!6447 = !DILocation(line: 622, column: 27, scope: !6442)
!6448 = !DILocation(line: 623, column: 3, scope: !6443)
!6449 = !DILocation(line: 624, column: 2, scope: !6408)
!6450 = !DILocation(line: 625, column: 1, scope: !6285)
!6451 = distinct !DISubprogram(name: "comedi_check_trigger_arg_min", scope: !123, file: !123, line: 918, type: !6225, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!6452 = !DILocalVariable(name: "arg", arg: 1, scope: !6451, file: !123, line: 918, type: !2710)
!6453 = !DILocation(line: 918, column: 62, scope: !6451)
!6454 = !DILocalVariable(name: "val", arg: 2, scope: !6451, file: !123, line: 919, type: !7)
!6455 = !DILocation(line: 919, column: 26, scope: !6451)
!6456 = !DILocation(line: 921, column: 7, scope: !6457)
!6457 = distinct !DILexicalBlock(scope: !6451, file: !123, line: 921, column: 6)
!6458 = !DILocation(line: 921, column: 6, scope: !6457)
!6459 = !DILocation(line: 921, column: 13, scope: !6457)
!6460 = !DILocation(line: 921, column: 11, scope: !6457)
!6461 = !DILocation(line: 921, column: 6, scope: !6451)
!6462 = !DILocation(line: 922, column: 10, scope: !6463)
!6463 = distinct !DILexicalBlock(scope: !6457, file: !123, line: 921, column: 18)
!6464 = !DILocation(line: 922, column: 4, scope: !6463)
!6465 = !DILocation(line: 922, column: 8, scope: !6463)
!6466 = !DILocation(line: 923, column: 3, scope: !6463)
!6467 = !DILocation(line: 925, column: 2, scope: !6451)
!6468 = !DILocation(line: 926, column: 1, scope: !6451)
!6469 = distinct !DISubprogram(name: "me4000_ai_check_chanlist", scope: !3, file: !3, line: 534, type: !3929, scopeLine: 537, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!6470 = !DILocalVariable(name: "dev", arg: 1, scope: !6469, file: !3, line: 534, type: !186)
!6471 = !DILocation(line: 534, column: 59, scope: !6469)
!6472 = !DILocalVariable(name: "s", arg: 2, scope: !6469, file: !3, line: 535, type: !223)
!6473 = !DILocation(line: 535, column: 34, scope: !6469)
!6474 = !DILocalVariable(name: "cmd", arg: 3, scope: !6469, file: !3, line: 536, type: !3931)
!6475 = !DILocation(line: 536, column: 28, scope: !6469)
!6476 = !DILocalVariable(name: "aref0", scope: !6469, file: !3, line: 538, type: !7)
!6477 = !DILocation(line: 538, column: 15, scope: !6469)
!6478 = !DILocation(line: 538, column: 23, scope: !6469)
!6479 = !DILocalVariable(name: "i", scope: !6469, file: !3, line: 539, type: !134)
!6480 = !DILocation(line: 539, column: 6, scope: !6469)
!6481 = !DILocation(line: 541, column: 9, scope: !6482)
!6482 = distinct !DILexicalBlock(scope: !6469, file: !3, line: 541, column: 2)
!6483 = !DILocation(line: 541, column: 7, scope: !6482)
!6484 = !DILocation(line: 541, column: 14, scope: !6485)
!6485 = distinct !DILexicalBlock(scope: !6482, file: !3, line: 541, column: 2)
!6486 = !DILocation(line: 541, column: 18, scope: !6485)
!6487 = !DILocation(line: 541, column: 23, scope: !6485)
!6488 = !DILocation(line: 541, column: 16, scope: !6485)
!6489 = !DILocation(line: 541, column: 2, scope: !6482)
!6490 = !DILocalVariable(name: "chan", scope: !6491, file: !3, line: 542, type: !7)
!6491 = distinct !DILexicalBlock(scope: !6485, file: !3, line: 541, column: 42)
!6492 = !DILocation(line: 542, column: 16, scope: !6491)
!6493 = !DILocation(line: 542, column: 23, scope: !6491)
!6494 = !DILocalVariable(name: "range", scope: !6491, file: !3, line: 543, type: !7)
!6495 = !DILocation(line: 543, column: 16, scope: !6491)
!6496 = !DILocation(line: 543, column: 24, scope: !6491)
!6497 = !DILocalVariable(name: "aref", scope: !6491, file: !3, line: 544, type: !7)
!6498 = !DILocation(line: 544, column: 16, scope: !6491)
!6499 = !DILocation(line: 544, column: 23, scope: !6491)
!6500 = !DILocation(line: 546, column: 7, scope: !6501)
!6501 = distinct !DILexicalBlock(scope: !6491, file: !3, line: 546, column: 7)
!6502 = !DILocation(line: 546, column: 15, scope: !6501)
!6503 = !DILocation(line: 546, column: 12, scope: !6501)
!6504 = !DILocation(line: 546, column: 7, scope: !6491)
!6505 = !DILocation(line: 549, column: 4, scope: !6506)
!6506 = distinct !DILexicalBlock(scope: !6501, file: !3, line: 546, column: 22)
!6507 = !DILocation(line: 552, column: 7, scope: !6508)
!6508 = distinct !DILexicalBlock(scope: !6491, file: !3, line: 552, column: 7)
!6509 = !DILocation(line: 552, column: 12, scope: !6508)
!6510 = !DILocation(line: 552, column: 7, scope: !6491)
!6511 = !DILocation(line: 553, column: 10, scope: !6512)
!6512 = distinct !DILexicalBlock(scope: !6513, file: !3, line: 553, column: 8)
!6513 = distinct !DILexicalBlock(scope: !6508, file: !3, line: 552, column: 26)
!6514 = !DILocation(line: 553, column: 13, scope: !6512)
!6515 = !DILocation(line: 553, column: 26, scope: !6512)
!6516 = !DILocation(line: 553, column: 8, scope: !6513)
!6517 = !DILocation(line: 554, column: 5, scope: !6518)
!6518 = distinct !DILexicalBlock(scope: !6512, file: !3, line: 553, column: 39)
!6519 = !DILocation(line: 556, column: 5, scope: !6518)
!6520 = !DILocation(line: 559, column: 8, scope: !6521)
!6521 = distinct !DILexicalBlock(scope: !6513, file: !3, line: 559, column: 8)
!6522 = !DILocation(line: 559, column: 17, scope: !6521)
!6523 = !DILocation(line: 559, column: 20, scope: !6521)
!6524 = !DILocation(line: 559, column: 27, scope: !6521)
!6525 = !DILocation(line: 559, column: 13, scope: !6521)
!6526 = !DILocation(line: 559, column: 8, scope: !6513)
!6527 = !DILocation(line: 562, column: 5, scope: !6528)
!6528 = distinct !DILexicalBlock(scope: !6521, file: !3, line: 559, column: 33)
!6529 = !DILocation(line: 565, column: 33, scope: !6530)
!6530 = distinct !DILexicalBlock(scope: !6513, file: !3, line: 565, column: 8)
!6531 = !DILocation(line: 565, column: 36, scope: !6530)
!6532 = !DILocation(line: 565, column: 9, scope: !6530)
!6533 = !DILocation(line: 565, column: 8, scope: !6513)
!6534 = !DILocation(line: 568, column: 5, scope: !6535)
!6535 = distinct !DILexicalBlock(scope: !6530, file: !3, line: 565, column: 44)
!6536 = !DILocation(line: 570, column: 3, scope: !6513)
!6537 = !DILocation(line: 571, column: 2, scope: !6491)
!6538 = !DILocation(line: 541, column: 38, scope: !6485)
!6539 = !DILocation(line: 541, column: 2, scope: !6485)
!6540 = distinct !{!6540, !6489, !6541}
!6541 = !DILocation(line: 571, column: 2, scope: !6482)
!6542 = !DILocation(line: 573, column: 2, scope: !6469)
!6543 = !DILocation(line: 574, column: 1, scope: !6469)
!6544 = distinct !DISubprogram(name: "me4000_ai_write_chanlist", scope: !3, file: !3, line: 627, type: !6286, scopeLine: 630, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!6545 = !DILocalVariable(name: "dev", arg: 1, scope: !6544, file: !3, line: 627, type: !186)
!6546 = !DILocation(line: 627, column: 60, scope: !6544)
!6547 = !DILocalVariable(name: "s", arg: 2, scope: !6544, file: !3, line: 628, type: !223)
!6548 = !DILocation(line: 628, column: 35, scope: !6544)
!6549 = !DILocalVariable(name: "cmd", arg: 3, scope: !6544, file: !3, line: 629, type: !3931)
!6550 = !DILocation(line: 629, column: 29, scope: !6544)
!6551 = !DILocalVariable(name: "i", scope: !6544, file: !3, line: 631, type: !134)
!6552 = !DILocation(line: 631, column: 6, scope: !6544)
!6553 = !DILocation(line: 633, column: 9, scope: !6554)
!6554 = distinct !DILexicalBlock(scope: !6544, file: !3, line: 633, column: 2)
!6555 = !DILocation(line: 633, column: 7, scope: !6554)
!6556 = !DILocation(line: 633, column: 14, scope: !6557)
!6557 = distinct !DILexicalBlock(scope: !6554, file: !3, line: 633, column: 2)
!6558 = !DILocation(line: 633, column: 18, scope: !6557)
!6559 = !DILocation(line: 633, column: 23, scope: !6557)
!6560 = !DILocation(line: 633, column: 16, scope: !6557)
!6561 = !DILocation(line: 633, column: 2, scope: !6554)
!6562 = !DILocalVariable(name: "chan", scope: !6563, file: !3, line: 634, type: !7)
!6563 = distinct !DILexicalBlock(scope: !6557, file: !3, line: 633, column: 42)
!6564 = !DILocation(line: 634, column: 16, scope: !6563)
!6565 = !DILocation(line: 634, column: 23, scope: !6563)
!6566 = !DILocalVariable(name: "range", scope: !6563, file: !3, line: 635, type: !7)
!6567 = !DILocation(line: 635, column: 16, scope: !6563)
!6568 = !DILocation(line: 635, column: 24, scope: !6563)
!6569 = !DILocalVariable(name: "aref", scope: !6563, file: !3, line: 636, type: !7)
!6570 = !DILocation(line: 636, column: 16, scope: !6563)
!6571 = !DILocation(line: 636, column: 23, scope: !6563)
!6572 = !DILocalVariable(name: "entry", scope: !6563, file: !3, line: 637, type: !7)
!6573 = !DILocation(line: 637, column: 16, scope: !6563)
!6574 = !DILocation(line: 639, column: 11, scope: !6563)
!6575 = !DILocation(line: 639, column: 18, scope: !6563)
!6576 = !DILocation(line: 639, column: 16, scope: !6563)
!6577 = !DILocation(line: 639, column: 9, scope: !6563)
!6578 = !DILocation(line: 641, column: 7, scope: !6579)
!6579 = distinct !DILexicalBlock(scope: !6563, file: !3, line: 641, column: 7)
!6580 = !DILocation(line: 641, column: 12, scope: !6579)
!6581 = !DILocation(line: 641, column: 7, scope: !6563)
!6582 = !DILocation(line: 642, column: 10, scope: !6579)
!6583 = !DILocation(line: 642, column: 4, scope: !6579)
!6584 = !DILocation(line: 644, column: 7, scope: !6585)
!6585 = distinct !DILexicalBlock(scope: !6563, file: !3, line: 644, column: 7)
!6586 = !DILocation(line: 644, column: 13, scope: !6585)
!6587 = !DILocation(line: 644, column: 18, scope: !6585)
!6588 = !DILocation(line: 644, column: 31, scope: !6585)
!6589 = !DILocation(line: 644, column: 9, scope: !6585)
!6590 = !DILocation(line: 644, column: 7, scope: !6563)
!6591 = !DILocation(line: 645, column: 10, scope: !6585)
!6592 = !DILocation(line: 645, column: 4, scope: !6585)
!6593 = !DILocation(line: 647, column: 8, scope: !6563)
!6594 = !DILocation(line: 647, column: 15, scope: !6563)
!6595 = !DILocation(line: 647, column: 20, scope: !6563)
!6596 = !DILocation(line: 647, column: 27, scope: !6563)
!6597 = !DILocation(line: 647, column: 3, scope: !6563)
!6598 = !DILocation(line: 648, column: 2, scope: !6563)
!6599 = !DILocation(line: 633, column: 38, scope: !6557)
!6600 = !DILocation(line: 633, column: 2, scope: !6557)
!6601 = distinct !{!6601, !6561, !6602}
!6602 = !DILocation(line: 648, column: 2, scope: !6554)
!6603 = !DILocation(line: 649, column: 1, scope: !6544)
!6604 = distinct !DISubprogram(name: "me4000_pci_probe", scope: !3, file: !3, line: 1243, type: !4047, scopeLine: 1245, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !280)
!6605 = !DILocalVariable(name: "dev", arg: 1, scope: !6604, file: !3, line: 1243, type: !4049)
!6606 = !DILocation(line: 1243, column: 45, scope: !6604)
!6607 = !DILocalVariable(name: "id", arg: 2, scope: !6604, file: !3, line: 1244, type: !4034)
!6608 = !DILocation(line: 1244, column: 36, scope: !6604)
!6609 = !DILocation(line: 1246, column: 32, scope: !6604)
!6610 = !DILocation(line: 1246, column: 53, scope: !6604)
!6611 = !DILocation(line: 1246, column: 57, scope: !6604)
!6612 = !DILocation(line: 1246, column: 9, scope: !6604)
!6613 = !DILocation(line: 1246, column: 2, scope: !6604)
