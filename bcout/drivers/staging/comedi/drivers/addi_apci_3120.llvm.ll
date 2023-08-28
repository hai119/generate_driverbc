; ModuleID = '../bcout/drivers/staging/comedi/drivers/addi_apci_3120.llvm.bc'
source_filename = "drivers/staging/comedi/drivers/addi_apci_3120.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_apci3120_driver_init6:\09\09\09"
module asm ".long\09apci3120_driver_init - .\09\09\09"
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
%struct.apci3120_board = type { i8*, i8 }
%struct.apci3120_private = type { i64, i64, i32, i8, [2 x %struct.apci3120_dmabuf], i8, i8, i8, i16 }
%struct.apci3120_dmabuf = type { i16*, i64, i32, i32 }

@__UNIQUE_ID___addressable_apci3120_driver_init234 = internal global i8* bitcast (i32 ()* @apci3120_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@apci3120_driver = internal global %struct.comedi_driver { %struct.comedi_driver* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), %struct.module* null, i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* null, void (%struct.comedi_device*)* @apci3120_detach, i32 (%struct.comedi_device*, i64)* @apci3120_auto_attach, i32 0, i8** null, i32 0 }, align 8, !dbg !181
@apci3120_pci_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), %struct.pci_device_id* getelementptr inbounds ([3 x %struct.pci_device_id], [3 x %struct.pci_device_id]* @apci3120_pci_table, i32 0, i32 0), i32 (%struct.pci_dev*, %struct.pci_device_id*)* @apci3120_pci_probe, void (%struct.pci_dev*)* @comedi_pci_auto_unconfig, i32 (%struct.pci_dev*, i32)* null, i32 (%struct.pci_dev*)* null, void (%struct.pci_dev*)* null, i32 (%struct.pci_dev*, i32)* null, %struct.pci_error_handlers* null, %struct.attribute_group** null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, align 8, !dbg !4012
@__exitcall_apci3120_driver_exit = internal global void ()* @apci3120_driver_exit, section ".exitcall.exit", align 8, !dbg !152
@__UNIQUE_ID_author235 = internal constant [52 x i8] c"addi_apci_3120.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1, !dbg !159
@__UNIQUE_ID_description236 = internal constant [67 x i8] c"addi_apci_3120.description=ADDI-DATA APCI-3120, Analog input board\00", section ".modinfo", align 1, !dbg !166
@__UNIQUE_ID_file237 = internal constant [66 x i8] c"addi_apci_3120.file=drivers/staging/comedi/drivers/addi_apci_3120\00", section ".modinfo", align 1, !dbg !171
@__UNIQUE_ID_license238 = internal constant [27 x i8] c"addi_apci_3120.license=GPL\00", section ".modinfo", align 1, !dbg !176
@.str = private unnamed_addr constant [15 x i8] c"addi_apci_3120\00", align 1
@apci3120_boardtypes = internal constant [2 x %struct.apci3120_board] [%struct.apci3120_board { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8 3 }, %struct.apci3120_board { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8 0 }], align 16, !dbg !4001
@range_bipolar10 = external dso_local constant %struct.comedi_lrange, align 4
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"apci3120\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"apci3001\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"IRQ from unknown source\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"AMCC IRQ - MASTER DMA ABORT!\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"AMCC IRQ - TARGET DMA ABORT!\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Interrupted DMA transfer!\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Odd count of bytes in DMA ring!\0A\00", align 1
@apci3120_ai_range = internal constant { i32, [8 x %struct.comedi_krange] } { i32 8, [8 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2000000, i32 2000000, i32 0 }, %struct.comedi_krange { i32 -1000000, i32 1000000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 2000000, i32 0 }, %struct.comedi_krange { i32 0, i32 1000000, i32 0 }] }, align 4, !dbg !4010
@apci3120_pci_table = internal constant [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4328, i32 33165, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 4328, i32 33421, i32 -1, i32 -1, i32 0, i32 0, i64 1 }, %struct.pci_device_id zeroinitializer], align 16, !dbg !4293
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_apci3120_driver_init234 to i8*), i8* bitcast (void ()* @apci3120_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_apci3120_driver_exit to i8*), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__UNIQUE_ID_author235, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @__UNIQUE_ID_description236, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @__UNIQUE_ID_file237, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__UNIQUE_ID_license238, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @apci3120_driver_init() #0 section ".init.text" !dbg !4301 {
entry:
  %call = call i32 @comedi_pci_driver_register(%struct.comedi_driver* @apci3120_driver, %struct.pci_driver* @apci3120_pci_driver) #5, !dbg !4304
  ret i32 %call, !dbg !4304
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @apci3120_driver_exit() #0 section ".exit.text" !dbg !4305 {
entry:
  call void @comedi_pci_driver_unregister(%struct.comedi_driver* @apci3120_driver, %struct.pci_driver* @apci3120_pci_driver) #5, !dbg !4306
  ret void, !dbg !4306
}

; Function Attrs: noredzone
declare dso_local void @comedi_pci_driver_unregister(%struct.comedi_driver*, %struct.pci_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_pci_driver_register(%struct.comedi_driver*, %struct.pci_driver*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @apci3120_detach(%struct.comedi_device* %dev) #2 !dbg !4307 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4308, metadata !DIExpression()), !dbg !4309
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4310
  call void @comedi_pci_detach(%struct.comedi_device* %0) #5, !dbg !4311
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4312
  call void @apci3120_dma_free(%struct.comedi_device* %1) #5, !dbg !4313
  ret void, !dbg !4314
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci3120_auto_attach(%struct.comedi_device* %dev, i64 %context) #2 !dbg !4315 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %context.addr = alloca i64, align 8
  %pcidev = alloca %struct.pci_dev*, align 8
  %board = alloca %struct.apci3120_board*, align 8
  %devpriv = alloca %struct.apci3120_private*, align 8
  %s = alloca %struct.comedi_subdevice*, align 8
  %status = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4316, metadata !DIExpression()), !dbg !4317
  store i64 %context, i64* %context.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %context.addr, metadata !4318, metadata !DIExpression()), !dbg !4319
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pcidev, metadata !4320, metadata !DIExpression()), !dbg !4321
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4322
  %call = call %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device* %0) #5, !dbg !4323
  store %struct.pci_dev* %call, %struct.pci_dev** %pcidev, align 8, !dbg !4321
  call void @llvm.dbg.declare(metadata %struct.apci3120_board** %board, metadata !4324, metadata !DIExpression()), !dbg !4326
  store %struct.apci3120_board* null, %struct.apci3120_board** %board, align 8, !dbg !4326
  call void @llvm.dbg.declare(metadata %struct.apci3120_private** %devpriv, metadata !4327, metadata !DIExpression()), !dbg !4350
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s, metadata !4351, metadata !DIExpression()), !dbg !4352
  call void @llvm.dbg.declare(metadata i32* %status, metadata !4353, metadata !DIExpression()), !dbg !4354
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4355, metadata !DIExpression()), !dbg !4356
  %1 = load i64, i64* %context.addr, align 8, !dbg !4357
  %cmp = icmp ult i64 %1, 2, !dbg !4359
  br i1 %cmp, label %if.then, label %if.end, !dbg !4360

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %context.addr, align 8, !dbg !4361
  %arrayidx = getelementptr [2 x %struct.apci3120_board], [2 x %struct.apci3120_board]* @apci3120_boardtypes, i64 0, i64 %2, !dbg !4362
  store %struct.apci3120_board* %arrayidx, %struct.apci3120_board** %board, align 8, !dbg !4363
  br label %if.end, !dbg !4364

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.apci3120_board*, %struct.apci3120_board** %board, align 8, !dbg !4365
  %tobool = icmp ne %struct.apci3120_board* %3, null, !dbg !4365
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !4367

if.then1:                                         ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !4368
  br label %return, !dbg !4368

if.end2:                                          ; preds = %if.end
  %4 = load %struct.apci3120_board*, %struct.apci3120_board** %board, align 8, !dbg !4369
  %5 = bitcast %struct.apci3120_board* %4 to i8*, !dbg !4369
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4370
  %board_ptr = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 9, !dbg !4371
  store i8* %5, i8** %board_ptr, align 8, !dbg !4372
  %7 = load %struct.apci3120_board*, %struct.apci3120_board** %board, align 8, !dbg !4373
  %name = getelementptr inbounds %struct.apci3120_board, %struct.apci3120_board* %7, i32 0, i32 0, !dbg !4374
  %8 = load i8*, i8** %name, align 8, !dbg !4374
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4375
  %board_name = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 8, !dbg !4376
  store i8* %8, i8** %board_name, align 8, !dbg !4377
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4378
  %call3 = call i8* @comedi_alloc_devpriv(%struct.comedi_device* %10, i64 80) #5, !dbg !4379
  %11 = bitcast i8* %call3 to %struct.apci3120_private*, !dbg !4379
  store %struct.apci3120_private* %11, %struct.apci3120_private** %devpriv, align 8, !dbg !4380
  %12 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !4381
  %tobool4 = icmp ne %struct.apci3120_private* %12, null, !dbg !4381
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !4383

if.then5:                                         ; preds = %if.end2
  store i32 -12, i32* %retval, align 4, !dbg !4384
  br label %return, !dbg !4384

if.end6:                                          ; preds = %if.end2
  %13 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4385
  %call7 = call i32 @comedi_pci_enable(%struct.comedi_device* %13) #5, !dbg !4386
  store i32 %call7, i32* %ret, align 4, !dbg !4387
  %14 = load i32, i32* %ret, align 4, !dbg !4388
  %tobool8 = icmp ne i32 %14, 0, !dbg !4388
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !4390

if.then9:                                         ; preds = %if.end6
  %15 = load i32, i32* %ret, align 4, !dbg !4391
  store i32 %15, i32* %retval, align 4, !dbg !4392
  br label %return, !dbg !4392

if.end10:                                         ; preds = %if.end6
  %16 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4393
  call void @pci_set_master(%struct.pci_dev* %16) #5, !dbg !4394
  %17 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4395
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 44, !dbg !4395
  %arrayidx11 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 1, !dbg !4395
  %start = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx11, i32 0, i32 0, !dbg !4395
  %18 = load i64, i64* %start, align 8, !dbg !4395
  %19 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4396
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 18, !dbg !4397
  store i64 %18, i64* %iobase, align 8, !dbg !4398
  %20 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4399
  %resource12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 44, !dbg !4399
  %arrayidx13 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource12, i64 0, i64 0, !dbg !4399
  %start14 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx13, i32 0, i32 0, !dbg !4399
  %21 = load i64, i64* %start14, align 8, !dbg !4399
  %22 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !4400
  %amcc = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %22, i32 0, i32 0, !dbg !4401
  store i64 %21, i64* %amcc, align 8, !dbg !4402
  %23 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4403
  %resource15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 44, !dbg !4403
  %arrayidx16 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource15, i64 0, i64 2, !dbg !4403
  %start17 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx16, i32 0, i32 0, !dbg !4403
  %24 = load i64, i64* %start17, align 8, !dbg !4403
  %25 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !4404
  %addon = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %25, i32 0, i32 1, !dbg !4405
  store i64 %24, i64* %addon, align 8, !dbg !4406
  %26 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4407
  call void @apci3120_reset(%struct.comedi_device* %26) #5, !dbg !4408
  %27 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4409
  %irq = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 43, !dbg !4411
  %28 = load i32, i32* %irq, align 4, !dbg !4411
  %cmp18 = icmp ugt i32 %28, 0, !dbg !4412
  br i1 %cmp18, label %if.then19, label %if.end28, !dbg !4413

if.then19:                                        ; preds = %if.end10
  %29 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4414
  %irq20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 43, !dbg !4416
  %30 = load i32, i32* %irq20, align 4, !dbg !4416
  %31 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4417
  %board_name21 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %31, i32 0, i32 8, !dbg !4418
  %32 = load i8*, i8** %board_name21, align 8, !dbg !4418
  %33 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4419
  %34 = bitcast %struct.comedi_device* %33 to i8*, !dbg !4419
  %call22 = call i32 @request_irq(i32 %30, i32 (i32, i8*)* @apci3120_interrupt, i64 128, i8* %32, i8* %34) #5, !dbg !4420
  store i32 %call22, i32* %ret, align 4, !dbg !4421
  %35 = load i32, i32* %ret, align 4, !dbg !4422
  %cmp23 = icmp eq i32 %35, 0, !dbg !4424
  br i1 %cmp23, label %if.then24, label %if.end27, !dbg !4425

if.then24:                                        ; preds = %if.then19
  %36 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4426
  %irq25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 43, !dbg !4428
  %37 = load i32, i32* %irq25, align 4, !dbg !4428
  %38 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4429
  %irq26 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %38, i32 0, i32 20, !dbg !4430
  store i32 %37, i32* %irq26, align 8, !dbg !4431
  %39 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4432
  call void @apci3120_dma_alloc(%struct.comedi_device* %39) #5, !dbg !4433
  br label %if.end27, !dbg !4434

if.end27:                                         ; preds = %if.then24, %if.then19
  br label %if.end28, !dbg !4435

if.end28:                                         ; preds = %if.end27, %if.end10
  %40 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4436
  %iobase29 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %40, i32 0, i32 18, !dbg !4437
  %41 = load i64, i64* %iobase29, align 8, !dbg !4437
  %add = add i64 %41, 2, !dbg !4438
  %conv = trunc i64 %add to i32, !dbg !4436
  %call30 = call zeroext i16 @inw(i32 %conv) #5, !dbg !4439
  %conv31 = zext i16 %call30 to i32, !dbg !4439
  store i32 %conv31, i32* %status, align 4, !dbg !4440
  %42 = load i32, i32* %status, align 4, !dbg !4441
  %shr = lshr i32 %42, 4, !dbg !4441
  %and = and i32 %shr, 15, !dbg !4441
  %cmp32 = icmp eq i32 %and, 11, !dbg !4443
  br i1 %cmp32, label %if.then36, label %lor.lhs.false, !dbg !4444

lor.lhs.false:                                    ; preds = %if.end28
  %43 = load i64, i64* %context.addr, align 8, !dbg !4445
  %cmp34 = icmp eq i64 %43, 1, !dbg !4446
  br i1 %cmp34, label %if.then36, label %if.else, !dbg !4447

if.then36:                                        ; preds = %lor.lhs.false, %if.end28
  %44 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !4448
  %osc_base = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %44, i32 0, i32 2, !dbg !4449
  store i32 50, i32* %osc_base, align 8, !dbg !4450
  br label %if.end38, !dbg !4448

if.else:                                          ; preds = %lor.lhs.false
  %45 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !4451
  %osc_base37 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %45, i32 0, i32 2, !dbg !4452
  store i32 70, i32* %osc_base37, align 8, !dbg !4453
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then36
  %46 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4454
  %call39 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %46, i32 5) #5, !dbg !4455
  store i32 %call39, i32* %ret, align 4, !dbg !4456
  %47 = load i32, i32* %ret, align 4, !dbg !4457
  %tobool40 = icmp ne i32 %47, 0, !dbg !4457
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !4459

if.then41:                                        ; preds = %if.end38
  %48 = load i32, i32* %ret, align 4, !dbg !4460
  store i32 %48, i32* %retval, align 4, !dbg !4461
  br label %return, !dbg !4461

if.end42:                                         ; preds = %if.end38
  %49 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4462
  %subdevices = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %49, i32 0, i32 16, !dbg !4463
  %50 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices, align 8, !dbg !4463
  %arrayidx43 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %50, i64 0, !dbg !4462
  store %struct.comedi_subdevice* %arrayidx43, %struct.comedi_subdevice** %s, align 8, !dbg !4464
  %51 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4465
  %type = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %51, i32 0, i32 2, !dbg !4466
  store i32 1, i32* %type, align 4, !dbg !4467
  %52 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4468
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %52, i32 0, i32 4, !dbg !4469
  store i32 7405568, i32* %subdev_flags, align 4, !dbg !4470
  %53 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4471
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %53, i32 0, i32 3, !dbg !4472
  store i32 16, i32* %n_chan, align 8, !dbg !4473
  %54 = load %struct.apci3120_board*, %struct.apci3120_board** %board, align 8, !dbg !4474
  %ai_is_16bit = getelementptr inbounds %struct.apci3120_board, %struct.apci3120_board* %54, i32 0, i32 1, !dbg !4475
  %bf.load = load i8, i8* %ai_is_16bit, align 8, !dbg !4475
  %bf.clear = and i8 %bf.load, 1, !dbg !4475
  %bf.cast = zext i8 %bf.clear to i32, !dbg !4475
  %tobool44 = icmp ne i32 %bf.cast, 0, !dbg !4474
  %55 = zext i1 %tobool44 to i64, !dbg !4474
  %cond = select i1 %tobool44, i32 65535, i32 4095, !dbg !4474
  %56 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4476
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %56, i32 0, i32 13, !dbg !4477
  store i32 %cond, i32* %maxdata, align 8, !dbg !4478
  %57 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4479
  %range_table = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %57, i32 0, i32 15, !dbg !4480
  store %struct.comedi_lrange* bitcast ({ i32, [8 x %struct.comedi_krange] }* @apci3120_ai_range to %struct.comedi_lrange*), %struct.comedi_lrange** %range_table, align 8, !dbg !4481
  %58 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4482
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %58, i32 0, i32 18, !dbg !4483
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @apci3120_ai_insn_read, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_read, align 8, !dbg !4484
  %59 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4485
  %irq45 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %59, i32 0, i32 20, !dbg !4487
  %60 = load i32, i32* %irq45, align 8, !dbg !4487
  %tobool46 = icmp ne i32 %60, 0, !dbg !4485
  br i1 %tobool46, label %if.then47, label %if.end50, !dbg !4488

if.then47:                                        ; preds = %if.end42
  %61 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4489
  %62 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4491
  %read_subdev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %62, i32 0, i32 21, !dbg !4492
  store %struct.comedi_subdevice* %61, %struct.comedi_subdevice** %read_subdev, align 8, !dbg !4493
  %63 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4494
  %subdev_flags48 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %63, i32 0, i32 4, !dbg !4495
  %64 = load i32, i32* %subdev_flags48, align 4, !dbg !4496
  %or = or i32 %64, 32768, !dbg !4496
  store i32 %or, i32* %subdev_flags48, align 4, !dbg !4496
  %65 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4497
  %n_chan49 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %65, i32 0, i32 3, !dbg !4498
  %66 = load i32, i32* %n_chan49, align 8, !dbg !4498
  %67 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4499
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %67, i32 0, i32 5, !dbg !4500
  store i32 %66, i32* %len_chanlist, align 8, !dbg !4501
  %68 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4502
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %68, i32 0, i32 23, !dbg !4503
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @apci3120_ai_cmdtest, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)** %do_cmdtest, align 8, !dbg !4504
  %69 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4505
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %69, i32 0, i32 22, !dbg !4506
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @apci3120_ai_cmd, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)** %do_cmd, align 8, !dbg !4507
  %70 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4508
  %cancel = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %70, i32 0, i32 25, !dbg !4509
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @apci3120_cancel, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)** %cancel, align 8, !dbg !4510
  br label %if.end50, !dbg !4511

if.end50:                                         ; preds = %if.then47, %if.end42
  %71 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4512
  %subdevices51 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %71, i32 0, i32 16, !dbg !4513
  %72 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices51, align 8, !dbg !4513
  %arrayidx52 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %72, i64 1, !dbg !4512
  store %struct.comedi_subdevice* %arrayidx52, %struct.comedi_subdevice** %s, align 8, !dbg !4514
  %73 = load %struct.apci3120_board*, %struct.apci3120_board** %board, align 8, !dbg !4515
  %has_ao = getelementptr inbounds %struct.apci3120_board, %struct.apci3120_board* %73, i32 0, i32 1, !dbg !4517
  %bf.load53 = load i8, i8* %has_ao, align 8, !dbg !4517
  %bf.lshr = lshr i8 %bf.load53, 1, !dbg !4517
  %bf.clear54 = and i8 %bf.lshr, 1, !dbg !4517
  %bf.cast55 = zext i8 %bf.clear54 to i32, !dbg !4517
  %tobool56 = icmp ne i32 %bf.cast55, 0, !dbg !4515
  br i1 %tobool56, label %if.then57, label %if.else67, !dbg !4518

if.then57:                                        ; preds = %if.end50
  %74 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4519
  %type58 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %74, i32 0, i32 2, !dbg !4521
  store i32 2, i32* %type58, align 4, !dbg !4522
  %75 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4523
  %subdev_flags59 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %75, i32 0, i32 4, !dbg !4524
  store i32 3276800, i32* %subdev_flags59, align 4, !dbg !4525
  %76 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4526
  %n_chan60 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %76, i32 0, i32 3, !dbg !4527
  store i32 8, i32* %n_chan60, align 8, !dbg !4528
  %77 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4529
  %maxdata61 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %77, i32 0, i32 13, !dbg !4530
  store i32 16383, i32* %maxdata61, align 8, !dbg !4531
  %78 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4532
  %range_table62 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %78, i32 0, i32 15, !dbg !4533
  store %struct.comedi_lrange* @range_bipolar10, %struct.comedi_lrange** %range_table62, align 8, !dbg !4534
  %79 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4535
  %insn_write = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %79, i32 0, i32 19, !dbg !4536
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @apci3120_ao_insn_write, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_write, align 8, !dbg !4537
  %80 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4538
  %call63 = call i32 @comedi_alloc_subdev_readback(%struct.comedi_subdevice* %80) #5, !dbg !4539
  store i32 %call63, i32* %ret, align 4, !dbg !4540
  %81 = load i32, i32* %ret, align 4, !dbg !4541
  %tobool64 = icmp ne i32 %81, 0, !dbg !4541
  br i1 %tobool64, label %if.then65, label %if.end66, !dbg !4543

if.then65:                                        ; preds = %if.then57
  %82 = load i32, i32* %ret, align 4, !dbg !4544
  store i32 %82, i32* %retval, align 4, !dbg !4545
  br label %return, !dbg !4545

if.end66:                                         ; preds = %if.then57
  br label %if.end69, !dbg !4546

if.else67:                                        ; preds = %if.end50
  %83 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4547
  %type68 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %83, i32 0, i32 2, !dbg !4549
  store i32 0, i32* %type68, align 4, !dbg !4550
  br label %if.end69

if.end69:                                         ; preds = %if.else67, %if.end66
  %84 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4551
  %subdevices70 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %84, i32 0, i32 16, !dbg !4552
  %85 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices70, align 8, !dbg !4552
  %arrayidx71 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %85, i64 2, !dbg !4551
  store %struct.comedi_subdevice* %arrayidx71, %struct.comedi_subdevice** %s, align 8, !dbg !4553
  %86 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4554
  %type72 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %86, i32 0, i32 2, !dbg !4555
  store i32 3, i32* %type72, align 4, !dbg !4556
  %87 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4557
  %subdev_flags73 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %87, i32 0, i32 4, !dbg !4558
  store i32 65536, i32* %subdev_flags73, align 4, !dbg !4559
  %88 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4560
  %n_chan74 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %88, i32 0, i32 3, !dbg !4561
  store i32 4, i32* %n_chan74, align 8, !dbg !4562
  %89 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4563
  %maxdata75 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %89, i32 0, i32 13, !dbg !4564
  store i32 1, i32* %maxdata75, align 8, !dbg !4565
  %90 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4566
  %range_table76 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %90, i32 0, i32 15, !dbg !4567
  store %struct.comedi_lrange* @range_unipolar5, %struct.comedi_lrange** %range_table76, align 8, !dbg !4568
  %91 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4569
  %insn_bits = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %91, i32 0, i32 20, !dbg !4570
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @apci3120_di_insn_bits, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_bits, align 8, !dbg !4571
  %92 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4572
  %subdevices77 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %92, i32 0, i32 16, !dbg !4573
  %93 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices77, align 8, !dbg !4573
  %arrayidx78 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %93, i64 3, !dbg !4572
  store %struct.comedi_subdevice* %arrayidx78, %struct.comedi_subdevice** %s, align 8, !dbg !4574
  %94 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4575
  %type79 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %94, i32 0, i32 2, !dbg !4576
  store i32 4, i32* %type79, align 4, !dbg !4577
  %95 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4578
  %subdev_flags80 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %95, i32 0, i32 4, !dbg !4579
  store i32 131072, i32* %subdev_flags80, align 4, !dbg !4580
  %96 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4581
  %n_chan81 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %96, i32 0, i32 3, !dbg !4582
  store i32 4, i32* %n_chan81, align 8, !dbg !4583
  %97 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4584
  %maxdata82 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %97, i32 0, i32 13, !dbg !4585
  store i32 1, i32* %maxdata82, align 8, !dbg !4586
  %98 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4587
  %range_table83 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %98, i32 0, i32 15, !dbg !4588
  store %struct.comedi_lrange* @range_unipolar5, %struct.comedi_lrange** %range_table83, align 8, !dbg !4589
  %99 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4590
  %insn_bits84 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %99, i32 0, i32 20, !dbg !4591
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @apci3120_do_insn_bits, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_bits84, align 8, !dbg !4592
  %100 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4593
  %subdevices85 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %100, i32 0, i32 16, !dbg !4594
  %101 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices85, align 8, !dbg !4594
  %arrayidx86 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %101, i64 4, !dbg !4593
  store %struct.comedi_subdevice* %arrayidx86, %struct.comedi_subdevice** %s, align 8, !dbg !4595
  %102 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4596
  %type87 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %102, i32 0, i32 2, !dbg !4597
  store i32 7, i32* %type87, align 4, !dbg !4598
  %103 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4599
  %subdev_flags88 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %103, i32 0, i32 4, !dbg !4600
  store i32 65536, i32* %subdev_flags88, align 4, !dbg !4601
  %104 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4602
  %n_chan89 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %104, i32 0, i32 3, !dbg !4603
  store i32 1, i32* %n_chan89, align 8, !dbg !4604
  %105 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4605
  %maxdata90 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %105, i32 0, i32 13, !dbg !4606
  store i32 16777215, i32* %maxdata90, align 8, !dbg !4607
  %106 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4608
  %insn_config = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %106, i32 0, i32 21, !dbg !4609
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @apci3120_timer_insn_config, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_config, align 8, !dbg !4610
  %107 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4611
  %insn_read91 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %107, i32 0, i32 18, !dbg !4612
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @apci3120_timer_insn_read, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_read91, align 8, !dbg !4613
  store i32 0, i32* %retval, align 4, !dbg !4614
  br label %return, !dbg !4614

return:                                           ; preds = %if.end69, %if.then65, %if.then41, %if.then9, %if.then5, %if.then1
  %108 = load i32, i32* %retval, align 4, !dbg !4615
  ret i32 %108, !dbg !4615
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noredzone
declare dso_local void @comedi_pci_detach(%struct.comedi_device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @apci3120_dma_free(%struct.comedi_device* %dev) #2 !dbg !4616 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %devpriv = alloca %struct.apci3120_private*, align 8
  %dmabuf = alloca %struct.apci3120_dmabuf*, align 8
  %i = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4617, metadata !DIExpression()), !dbg !4618
  call void @llvm.dbg.declare(metadata %struct.apci3120_private** %devpriv, metadata !4619, metadata !DIExpression()), !dbg !4620
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4621
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !4622
  %1 = load i8*, i8** %private, align 8, !dbg !4622
  %2 = bitcast i8* %1 to %struct.apci3120_private*, !dbg !4621
  store %struct.apci3120_private* %2, %struct.apci3120_private** %devpriv, align 8, !dbg !4620
  call void @llvm.dbg.declare(metadata %struct.apci3120_dmabuf** %dmabuf, metadata !4623, metadata !DIExpression()), !dbg !4625
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4626, metadata !DIExpression()), !dbg !4627
  %3 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !4628
  %tobool = icmp ne %struct.apci3120_private* %3, null, !dbg !4628
  br i1 %tobool, label %if.end, label %if.then, !dbg !4630

if.then:                                          ; preds = %entry
  br label %for.end, !dbg !4631

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !4632
  br label %for.cond, !dbg !4634

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4, !dbg !4635
  %cmp = icmp slt i32 %4, 2, !dbg !4637
  br i1 %cmp, label %for.body, label %for.end, !dbg !4638

for.body:                                         ; preds = %for.cond
  %5 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !4639
  %dmabuf1 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %5, i32 0, i32 4, !dbg !4641
  %6 = load i32, i32* %i, align 4, !dbg !4642
  %idxprom = sext i32 %6 to i64, !dbg !4639
  %arrayidx = getelementptr [2 x %struct.apci3120_dmabuf], [2 x %struct.apci3120_dmabuf]* %dmabuf1, i64 0, i64 %idxprom, !dbg !4639
  store %struct.apci3120_dmabuf* %arrayidx, %struct.apci3120_dmabuf** %dmabuf, align 8, !dbg !4643
  %7 = load %struct.apci3120_dmabuf*, %struct.apci3120_dmabuf** %dmabuf, align 8, !dbg !4644
  %virt = getelementptr inbounds %struct.apci3120_dmabuf, %struct.apci3120_dmabuf* %7, i32 0, i32 0, !dbg !4646
  %8 = load i16*, i16** %virt, align 8, !dbg !4646
  %tobool2 = icmp ne i16* %8, null, !dbg !4644
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !4647

if.then3:                                         ; preds = %for.body
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4648
  %hw_dev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 7, !dbg !4650
  %10 = load %struct.device*, %struct.device** %hw_dev, align 8, !dbg !4650
  %11 = load %struct.apci3120_dmabuf*, %struct.apci3120_dmabuf** %dmabuf, align 8, !dbg !4651
  %size = getelementptr inbounds %struct.apci3120_dmabuf, %struct.apci3120_dmabuf* %11, i32 0, i32 2, !dbg !4652
  %12 = load i32, i32* %size, align 8, !dbg !4652
  %conv = zext i32 %12 to i64, !dbg !4651
  %13 = load %struct.apci3120_dmabuf*, %struct.apci3120_dmabuf** %dmabuf, align 8, !dbg !4653
  %virt4 = getelementptr inbounds %struct.apci3120_dmabuf, %struct.apci3120_dmabuf* %13, i32 0, i32 0, !dbg !4654
  %14 = load i16*, i16** %virt4, align 8, !dbg !4654
  %15 = bitcast i16* %14 to i8*, !dbg !4653
  %16 = load %struct.apci3120_dmabuf*, %struct.apci3120_dmabuf** %dmabuf, align 8, !dbg !4655
  %hw = getelementptr inbounds %struct.apci3120_dmabuf, %struct.apci3120_dmabuf* %16, i32 0, i32 1, !dbg !4656
  %17 = load i64, i64* %hw, align 8, !dbg !4656
  call void @dma_free_coherent(%struct.device* %10, i64 %conv, i8* %15, i64 %17) #5, !dbg !4657
  br label %if.end5, !dbg !4658

if.end5:                                          ; preds = %if.then3, %for.body
  br label %for.inc, !dbg !4659

for.inc:                                          ; preds = %if.end5
  %18 = load i32, i32* %i, align 4, !dbg !4660
  %inc = add i32 %18, 1, !dbg !4660
  store i32 %inc, i32* %i, align 4, !dbg !4660
  br label %for.cond, !dbg !4661, !llvm.loop !4662

for.end:                                          ; preds = %if.then, %for.cond
  ret void, !dbg !4664
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dma_free_coherent(%struct.device* %dev, i64 %size, i8* %cpu_addr, i64 %dma_handle) #2 !dbg !4665 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %cpu_addr.addr = alloca i8*, align 8
  %dma_handle.addr = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4669, metadata !DIExpression()), !dbg !4670
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4671, metadata !DIExpression()), !dbg !4672
  store i8* %cpu_addr, i8** %cpu_addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %cpu_addr.addr, metadata !4673, metadata !DIExpression()), !dbg !4674
  store i64 %dma_handle, i64* %dma_handle.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dma_handle.addr, metadata !4675, metadata !DIExpression()), !dbg !4676
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4677
  %1 = load i64, i64* %size.addr, align 8, !dbg !4678
  %2 = load i8*, i8** %cpu_addr.addr, align 8, !dbg !4679
  %3 = load i64, i64* %dma_handle.addr, align 8, !dbg !4680
  call void @dma_free_attrs(%struct.device* %0, i64 %1, i8* %2, i64 %3, i64 0) #5, !dbg !4681
  ret void, !dbg !4682
}

; Function Attrs: noredzone
declare dso_local void @dma_free_attrs(%struct.device*, i64, i8*, i64, i64) #1

; Function Attrs: noredzone
declare dso_local %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device*) #1

; Function Attrs: noredzone
declare dso_local i8* @comedi_alloc_devpriv(%struct.comedi_device*, i64) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_pci_enable(%struct.comedi_device*) #1

; Function Attrs: noredzone
declare dso_local void @pci_set_master(%struct.pci_dev*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @apci3120_reset(%struct.comedi_device* %dev) #2 !dbg !4683 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4684, metadata !DIExpression()), !dbg !4685
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4686
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 18, !dbg !4687
  %1 = load i64, i64* %iobase, align 8, !dbg !4687
  %add = add i64 %1, 14, !dbg !4688
  %conv = trunc i64 %add to i32, !dbg !4686
  call void @outb(i8 zeroext 0, i32 %conv) #5, !dbg !4689
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4690
  %iobase1 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %2, i32 0, i32 18, !dbg !4691
  %3 = load i64, i64* %iobase1, align 8, !dbg !4691
  %add2 = add i64 %3, 0, !dbg !4692
  %conv3 = trunc i64 %add2 to i32, !dbg !4690
  call void @outw(i16 zeroext 0, i32 %conv3) #5, !dbg !4693
  %4 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4694
  %iobase4 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 18, !dbg !4695
  %5 = load i64, i64* %iobase4, align 8, !dbg !4695
  %add5 = add i64 %5, 2, !dbg !4696
  %conv6 = trunc i64 %add5 to i32, !dbg !4694
  %call = call zeroext i16 @inw(i32 %conv6) #5, !dbg !4697
  ret void, !dbg !4698
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @request_irq(i32 %irq, i32 (i32, i8*)* %handler, i64 %flags, i8* %name, i8* %dev) #2 !dbg !4699 {
entry:
  %irq.addr = alloca i32, align 4
  %handler.addr = alloca i32 (i32, i8*)*, align 8
  %flags.addr = alloca i64, align 8
  %name.addr = alloca i8*, align 8
  %dev.addr = alloca i8*, align 8
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !4707, metadata !DIExpression()), !dbg !4708
  store i32 (i32, i8*)* %handler, i32 (i32, i8*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i32, i8*)** %handler.addr, metadata !4709, metadata !DIExpression()), !dbg !4710
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !4711, metadata !DIExpression()), !dbg !4712
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !4713, metadata !DIExpression()), !dbg !4714
  store i8* %dev, i8** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev.addr, metadata !4715, metadata !DIExpression()), !dbg !4716
  %0 = load i32, i32* %irq.addr, align 4, !dbg !4717
  %1 = load i32 (i32, i8*)*, i32 (i32, i8*)** %handler.addr, align 8, !dbg !4718
  %2 = load i64, i64* %flags.addr, align 8, !dbg !4719
  %3 = load i8*, i8** %name.addr, align 8, !dbg !4720
  %4 = load i8*, i8** %dev.addr, align 8, !dbg !4721
  %call = call i32 @request_threaded_irq(i32 %0, i32 (i32, i8*)* %1, i32 (i32, i8*)* null, i64 %2, i8* %3, i8* %4) #5, !dbg !4722
  ret i32 %call, !dbg !4723
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci3120_interrupt(i32 %irq, i8* %d) #2 !dbg !4724 {
entry:
  %retval = alloca i32, align 4
  %irq.addr = alloca i32, align 4
  %d.addr = alloca i8*, align 8
  %dev = alloca %struct.comedi_device*, align 8
  %devpriv = alloca %struct.apci3120_private*, align 8
  %s = alloca %struct.comedi_subdevice*, align 8
  %async = alloca %struct.comedi_async*, align 8
  %cmd = alloca %struct.comedi_cmd*, align 8
  %status = alloca i32, align 4
  %int_amcc = alloca i32, align 4
  %val = alloca i16, align 2
  %i = alloca i32, align 4
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !4725, metadata !DIExpression()), !dbg !4726
  store i8* %d, i8** %d.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %d.addr, metadata !4727, metadata !DIExpression()), !dbg !4728
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev, metadata !4729, metadata !DIExpression()), !dbg !4730
  %0 = load i8*, i8** %d.addr, align 8, !dbg !4731
  %1 = bitcast i8* %0 to %struct.comedi_device*, !dbg !4731
  store %struct.comedi_device* %1, %struct.comedi_device** %dev, align 8, !dbg !4730
  call void @llvm.dbg.declare(metadata %struct.apci3120_private** %devpriv, metadata !4732, metadata !DIExpression()), !dbg !4733
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4734
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %2, i32 0, i32 3, !dbg !4735
  %3 = load i8*, i8** %private, align 8, !dbg !4735
  %4 = bitcast i8* %3 to %struct.apci3120_private*, !dbg !4734
  store %struct.apci3120_private* %4, %struct.apci3120_private** %devpriv, align 8, !dbg !4733
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s, metadata !4736, metadata !DIExpression()), !dbg !4737
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4738
  %read_subdev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 21, !dbg !4739
  %6 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %read_subdev, align 8, !dbg !4739
  store %struct.comedi_subdevice* %6, %struct.comedi_subdevice** %s, align 8, !dbg !4737
  call void @llvm.dbg.declare(metadata %struct.comedi_async** %async, metadata !4740, metadata !DIExpression()), !dbg !4741
  %7 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4742
  %async1 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %7, i32 0, i32 7, !dbg !4743
  %8 = load %struct.comedi_async*, %struct.comedi_async** %async1, align 8, !dbg !4743
  store %struct.comedi_async* %8, %struct.comedi_async** %async, align 8, !dbg !4741
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd, metadata !4744, metadata !DIExpression()), !dbg !4745
  %9 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4746
  %cmd2 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %9, i32 0, i32 17, !dbg !4747
  store %struct.comedi_cmd* %cmd2, %struct.comedi_cmd** %cmd, align 8, !dbg !4745
  call void @llvm.dbg.declare(metadata i32* %status, metadata !4748, metadata !DIExpression()), !dbg !4749
  call void @llvm.dbg.declare(metadata i32* %int_amcc, metadata !4750, metadata !DIExpression()), !dbg !4751
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4752
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 18, !dbg !4753
  %11 = load i64, i64* %iobase, align 8, !dbg !4753
  %add = add i64 %11, 2, !dbg !4754
  %conv = trunc i64 %add to i32, !dbg !4752
  %call = call zeroext i16 @inw(i32 %conv) #5, !dbg !4755
  %conv3 = zext i16 %call to i32, !dbg !4755
  store i32 %conv3, i32* %status, align 4, !dbg !4756
  %12 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !4757
  %amcc = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %12, i32 0, i32 0, !dbg !4758
  %13 = load i64, i64* %amcc, align 8, !dbg !4758
  %add4 = add i64 %13, 56, !dbg !4759
  %conv5 = trunc i64 %add4 to i32, !dbg !4757
  %call6 = call i32 @inl(i32 %conv5) #5, !dbg !4760
  store i32 %call6, i32* %int_amcc, align 4, !dbg !4761
  %14 = load i32, i32* %status, align 4, !dbg !4762
  %and = and i32 %14, 61440, !dbg !4764
  %tobool = icmp ne i32 %and, 0, !dbg !4764
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !4765

land.lhs.true:                                    ; preds = %entry
  %15 = load i32, i32* %int_amcc, align 4, !dbg !4766
  %conv7 = zext i32 %15 to i64, !dbg !4766
  %and8 = and i64 %conv7, 8388608, !dbg !4767
  %tobool9 = icmp ne i64 %and8, 0, !dbg !4767
  br i1 %tobool9, label %if.end, label %if.then, !dbg !4768

if.then:                                          ; preds = %land.lhs.true
  %16 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4769
  %class_dev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 4, !dbg !4769
  %17 = load %struct.device*, %struct.device** %class_dev, align 8, !dbg !4769
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !4769
  store i32 0, i32* %retval, align 4, !dbg !4771
  br label %return, !dbg !4771

if.end:                                           ; preds = %land.lhs.true, %entry
  %18 = load i32, i32* %int_amcc, align 4, !dbg !4772
  %or = or i32 %18, 16711680, !dbg !4773
  %19 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !4774
  %amcc10 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %19, i32 0, i32 0, !dbg !4775
  %20 = load i64, i64* %amcc10, align 8, !dbg !4775
  %add11 = add i64 %20, 56, !dbg !4776
  %conv12 = trunc i64 %add11 to i32, !dbg !4774
  call void @outl(i32 %or, i32 %conv12) #5, !dbg !4777
  %21 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !4778
  %ctrl = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %21, i32 0, i32 8, !dbg !4780
  %22 = load i16, i16* %ctrl, align 4, !dbg !4780
  %conv13 = zext i16 %22 to i64, !dbg !4778
  %and14 = and i64 %conv13, 32768, !dbg !4781
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4781
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !4782

if.then16:                                        ; preds = %if.end
  %23 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4783
  call void @apci3120_exttrig_enable(%struct.comedi_device* %23, i1 zeroext false) #5, !dbg !4784
  br label %if.end17, !dbg !4784

if.end17:                                         ; preds = %if.then16, %if.end
  %24 = load i32, i32* %int_amcc, align 4, !dbg !4785
  %conv18 = zext i32 %24 to i64, !dbg !4785
  %and19 = and i64 %conv18, 1048576, !dbg !4787
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4787
  br i1 %tobool20, label %if.then21, label %if.end23, !dbg !4788

if.then21:                                        ; preds = %if.end17
  %25 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4789
  %class_dev22 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 4, !dbg !4789
  %26 = load %struct.device*, %struct.device** %class_dev22, align 8, !dbg !4789
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !4789
  br label %if.end23, !dbg !4789

if.end23:                                         ; preds = %if.then21, %if.end17
  %27 = load i32, i32* %int_amcc, align 4, !dbg !4790
  %conv24 = zext i32 %27 to i64, !dbg !4790
  %and25 = and i64 %conv24, 2097152, !dbg !4792
  %tobool26 = icmp ne i64 %and25, 0, !dbg !4792
  br i1 %tobool26, label %if.then27, label %if.end29, !dbg !4793

if.then27:                                        ; preds = %if.end23
  %28 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4794
  %class_dev28 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %28, i32 0, i32 4, !dbg !4794
  %29 = load %struct.device*, %struct.device** %class_dev28, align 8, !dbg !4794
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !4794
  br label %if.end29, !dbg !4794

if.end29:                                         ; preds = %if.then27, %if.end23
  %30 = load i32, i32* %status, align 4, !dbg !4795
  %conv30 = zext i32 %30 to i64, !dbg !4795
  %and31 = and i64 %conv30, 8192, !dbg !4797
  %tobool32 = icmp ne i64 %and31, 0, !dbg !4797
  br i1 %tobool32, label %land.lhs.true33, label %if.end52, !dbg !4798

land.lhs.true33:                                  ; preds = %if.end29
  %31 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !4799
  %mode = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %31, i32 0, i32 7, !dbg !4800
  %32 = load i8, i8* %mode, align 2, !dbg !4800
  %conv34 = zext i8 %32 to i64, !dbg !4799
  %and35 = and i64 %conv34, 2, !dbg !4801
  %tobool36 = icmp ne i64 %and35, 0, !dbg !4801
  br i1 %tobool36, label %if.then37, label %if.end52, !dbg !4802

if.then37:                                        ; preds = %land.lhs.true33
  call void @llvm.dbg.declare(metadata i16* %val, metadata !4803, metadata !DIExpression()), !dbg !4805
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4806, metadata !DIExpression()), !dbg !4807
  store i32 0, i32* %i, align 4, !dbg !4808
  br label %for.cond, !dbg !4810

for.cond:                                         ; preds = %for.inc, %if.then37
  %33 = load i32, i32* %i, align 4, !dbg !4811
  %34 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !4813
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %34, i32 0, i32 13, !dbg !4814
  %35 = load i32, i32* %chanlist_len, align 8, !dbg !4814
  %cmp = icmp ult i32 %33, %35, !dbg !4815
  br i1 %cmp, label %for.body, label %for.end, !dbg !4816

for.body:                                         ; preds = %for.cond
  %36 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4817
  %iobase39 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %36, i32 0, i32 18, !dbg !4819
  %37 = load i64, i64* %iobase39, align 8, !dbg !4819
  %add40 = add i64 %37, 0, !dbg !4820
  %conv41 = trunc i64 %add40 to i32, !dbg !4817
  %call42 = call zeroext i16 @inw(i32 %conv41) #5, !dbg !4821
  store i16 %call42, i16* %val, align 2, !dbg !4822
  %38 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4823
  %39 = bitcast i16* %val to i8*, !dbg !4824
  %call43 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %38, i8* %39, i32 1) #5, !dbg !4825
  br label %for.inc, !dbg !4826

for.inc:                                          ; preds = %for.body
  %40 = load i32, i32* %i, align 4, !dbg !4827
  %inc = add i32 %40, 1, !dbg !4827
  store i32 %inc, i32* %i, align 4, !dbg !4827
  br label %for.cond, !dbg !4828, !llvm.loop !4829

for.end:                                          ; preds = %for.cond
  %41 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !4831
  %mode44 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %41, i32 0, i32 7, !dbg !4832
  %42 = load i8, i8* %mode44, align 2, !dbg !4833
  %conv45 = zext i8 %42 to i64, !dbg !4833
  %or46 = or i64 %conv45, 2, !dbg !4833
  %conv47 = trunc i64 %or46 to i8, !dbg !4833
  store i8 %conv47, i8* %mode44, align 2, !dbg !4833
  %43 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !4834
  %mode48 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %43, i32 0, i32 7, !dbg !4835
  %44 = load i8, i8* %mode48, align 2, !dbg !4835
  %45 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4836
  %iobase49 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %45, i32 0, i32 18, !dbg !4837
  %46 = load i64, i64* %iobase49, align 8, !dbg !4837
  %add50 = add i64 %46, 14, !dbg !4838
  %conv51 = trunc i64 %add50 to i32, !dbg !4836
  call void @outb(i8 zeroext %44, i32 %conv51) #5, !dbg !4839
  br label %if.end52, !dbg !4840

if.end52:                                         ; preds = %for.end, %land.lhs.true33, %if.end29
  %47 = load i32, i32* %status, align 4, !dbg !4841
  %conv53 = zext i32 %47 to i64, !dbg !4841
  %and54 = and i64 %conv53, 4096, !dbg !4843
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4843
  br i1 %tobool55, label %if.then56, label %if.end57, !dbg !4844

if.then56:                                        ; preds = %if.end52
  %48 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4845
  call void @apci3120_clr_timer2_interrupt(%struct.comedi_device* %48) #5, !dbg !4847
  br label %if.end57, !dbg !4848

if.end57:                                         ; preds = %if.then56, %if.end52
  %49 = load i32, i32* %status, align 4, !dbg !4849
  %conv58 = zext i32 %49 to i64, !dbg !4849
  %and59 = and i64 %conv58, 16384, !dbg !4851
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4851
  br i1 %tobool60, label %if.then61, label %if.end65, !dbg !4852

if.then61:                                        ; preds = %if.end57
  %50 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !4853
  %amcc62 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %50, i32 0, i32 0, !dbg !4855
  %51 = load i64, i64* %amcc62, align 8, !dbg !4855
  %add63 = add i64 %51, 56, !dbg !4856
  %conv64 = trunc i64 %add63 to i32, !dbg !4853
  call void @outl(i32 262144, i32 %conv64) #5, !dbg !4857
  %52 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4858
  %53 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4859
  call void @apci3120_interrupt_dma(%struct.comedi_device* %52, %struct.comedi_subdevice* %53) #5, !dbg !4860
  br label %if.end65, !dbg !4861

if.end65:                                         ; preds = %if.then61, %if.end57
  %54 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !4862
  %stop_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %54, i32 0, i32 10, !dbg !4864
  %55 = load i32, i32* %stop_src, align 8, !dbg !4864
  %cmp66 = icmp eq i32 %55, 32, !dbg !4865
  br i1 %cmp66, label %land.lhs.true68, label %if.end73, !dbg !4866

land.lhs.true68:                                  ; preds = %if.end65
  %56 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4867
  %scans_done = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %56, i32 0, i32 11, !dbg !4868
  %57 = load i32, i32* %scans_done, align 8, !dbg !4868
  %58 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !4869
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %58, i32 0, i32 11, !dbg !4870
  %59 = load i32, i32* %stop_arg, align 4, !dbg !4870
  %cmp69 = icmp uge i32 %57, %59, !dbg !4871
  br i1 %cmp69, label %if.then71, label %if.end73, !dbg !4872

if.then71:                                        ; preds = %land.lhs.true68
  %60 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4873
  %events = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %60, i32 0, i32 16, !dbg !4874
  %61 = load i32, i32* %events, align 4, !dbg !4875
  %or72 = or i32 %61, 2, !dbg !4875
  store i32 %or72, i32* %events, align 4, !dbg !4875
  br label %if.end73, !dbg !4873

if.end73:                                         ; preds = %if.then71, %land.lhs.true68, %if.end65
  %62 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4876
  %63 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4877
  %call74 = call i32 @comedi_handle_events(%struct.comedi_device* %62, %struct.comedi_subdevice* %63) #5, !dbg !4878
  store i32 1, i32* %retval, align 4, !dbg !4879
  br label %return, !dbg !4879

return:                                           ; preds = %if.end73, %if.then
  %64 = load i32, i32* %retval, align 4, !dbg !4880
  ret i32 %64, !dbg !4880
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @apci3120_dma_alloc(%struct.comedi_device* %dev) #2 !dbg !4881 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %devpriv = alloca %struct.apci3120_private*, align 8
  %dmabuf = alloca %struct.apci3120_dmabuf*, align 8
  %order = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4882, metadata !DIExpression()), !dbg !4883
  call void @llvm.dbg.declare(metadata %struct.apci3120_private** %devpriv, metadata !4884, metadata !DIExpression()), !dbg !4885
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4886
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !4887
  %1 = load i8*, i8** %private, align 8, !dbg !4887
  %2 = bitcast i8* %1 to %struct.apci3120_private*, !dbg !4886
  store %struct.apci3120_private* %2, %struct.apci3120_private** %devpriv, align 8, !dbg !4885
  call void @llvm.dbg.declare(metadata %struct.apci3120_dmabuf** %dmabuf, metadata !4888, metadata !DIExpression()), !dbg !4889
  call void @llvm.dbg.declare(metadata i32* %order, metadata !4890, metadata !DIExpression()), !dbg !4891
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4892, metadata !DIExpression()), !dbg !4893
  store i32 0, i32* %i, align 4, !dbg !4894
  br label %for.cond, !dbg !4896

for.cond:                                         ; preds = %for.inc23, %entry
  %3 = load i32, i32* %i, align 4, !dbg !4897
  %cmp = icmp slt i32 %3, 2, !dbg !4899
  br i1 %cmp, label %for.body, label %for.end24, !dbg !4900

for.body:                                         ; preds = %for.cond
  %4 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !4901
  %dmabuf1 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %4, i32 0, i32 4, !dbg !4903
  %5 = load i32, i32* %i, align 4, !dbg !4904
  %idxprom = sext i32 %5 to i64, !dbg !4901
  %arrayidx = getelementptr [2 x %struct.apci3120_dmabuf], [2 x %struct.apci3120_dmabuf]* %dmabuf1, i64 0, i64 %idxprom, !dbg !4901
  store %struct.apci3120_dmabuf* %arrayidx, %struct.apci3120_dmabuf** %dmabuf, align 8, !dbg !4905
  store i32 2, i32* %order, align 4, !dbg !4906
  br label %for.cond2, !dbg !4908

for.cond2:                                        ; preds = %for.inc, %for.body
  %6 = load i32, i32* %order, align 4, !dbg !4909
  %cmp3 = icmp sge i32 %6, 0, !dbg !4911
  br i1 %cmp3, label %for.body4, label %for.end, !dbg !4912

for.body4:                                        ; preds = %for.cond2
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4913
  %hw_dev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 7, !dbg !4915
  %8 = load %struct.device*, %struct.device** %hw_dev, align 8, !dbg !4915
  %9 = load i32, i32* %order, align 4, !dbg !4916
  %sh_prom = zext i32 %9 to i64, !dbg !4917
  %shl = shl i64 4096, %sh_prom, !dbg !4917
  %10 = load %struct.apci3120_dmabuf*, %struct.apci3120_dmabuf** %dmabuf, align 8, !dbg !4918
  %hw = getelementptr inbounds %struct.apci3120_dmabuf, %struct.apci3120_dmabuf* %10, i32 0, i32 1, !dbg !4919
  %call = call i8* @dma_alloc_coherent(%struct.device* %8, i64 %shl, i64* %hw, i32 3264) #5, !dbg !4920
  %11 = bitcast i8* %call to i16*, !dbg !4920
  %12 = load %struct.apci3120_dmabuf*, %struct.apci3120_dmabuf** %dmabuf, align 8, !dbg !4921
  %virt = getelementptr inbounds %struct.apci3120_dmabuf, %struct.apci3120_dmabuf* %12, i32 0, i32 0, !dbg !4922
  store i16* %11, i16** %virt, align 8, !dbg !4923
  %13 = load %struct.apci3120_dmabuf*, %struct.apci3120_dmabuf** %dmabuf, align 8, !dbg !4924
  %virt5 = getelementptr inbounds %struct.apci3120_dmabuf, %struct.apci3120_dmabuf* %13, i32 0, i32 0, !dbg !4926
  %14 = load i16*, i16** %virt5, align 8, !dbg !4926
  %tobool = icmp ne i16* %14, null, !dbg !4924
  br i1 %tobool, label %if.then, label %if.end, !dbg !4927

if.then:                                          ; preds = %for.body4
  br label %for.end, !dbg !4928

if.end:                                           ; preds = %for.body4
  br label %for.inc, !dbg !4929

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %order, align 4, !dbg !4930
  %dec = add i32 %15, -1, !dbg !4930
  store i32 %dec, i32* %order, align 4, !dbg !4930
  br label %for.cond2, !dbg !4931, !llvm.loop !4932

for.end:                                          ; preds = %if.then, %for.cond2
  %16 = load %struct.apci3120_dmabuf*, %struct.apci3120_dmabuf** %dmabuf, align 8, !dbg !4934
  %virt6 = getelementptr inbounds %struct.apci3120_dmabuf, %struct.apci3120_dmabuf* %16, i32 0, i32 0, !dbg !4936
  %17 = load i16*, i16** %virt6, align 8, !dbg !4936
  %tobool7 = icmp ne i16* %17, null, !dbg !4934
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !4937

if.then8:                                         ; preds = %for.end
  br label %for.end24, !dbg !4938

if.end9:                                          ; preds = %for.end
  %18 = load i32, i32* %order, align 4, !dbg !4939
  %sh_prom10 = zext i32 %18 to i64, !dbg !4940
  %shl11 = shl i64 4096, %sh_prom10, !dbg !4940
  %conv = trunc i64 %shl11 to i32, !dbg !4941
  %19 = load %struct.apci3120_dmabuf*, %struct.apci3120_dmabuf** %dmabuf, align 8, !dbg !4942
  %size = getelementptr inbounds %struct.apci3120_dmabuf, %struct.apci3120_dmabuf* %19, i32 0, i32 2, !dbg !4943
  store i32 %conv, i32* %size, align 8, !dbg !4944
  %20 = load i32, i32* %i, align 4, !dbg !4945
  %cmp12 = icmp eq i32 %20, 0, !dbg !4947
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !4948

if.then14:                                        ; preds = %if.end9
  %21 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !4949
  %use_dma = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %21, i32 0, i32 3, !dbg !4950
  %bf.load = load i8, i8* %use_dma, align 4, !dbg !4951
  %bf.clear = and i8 %bf.load, -2, !dbg !4951
  %bf.set = or i8 %bf.clear, 1, !dbg !4951
  store i8 %bf.set, i8* %use_dma, align 4, !dbg !4951
  br label %if.end15, !dbg !4949

if.end15:                                         ; preds = %if.then14, %if.end9
  %22 = load i32, i32* %i, align 4, !dbg !4952
  %cmp16 = icmp eq i32 %22, 1, !dbg !4954
  br i1 %cmp16, label %if.then18, label %if.end22, !dbg !4955

if.then18:                                        ; preds = %if.end15
  %23 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !4956
  %use_double_buffer = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %23, i32 0, i32 3, !dbg !4957
  %bf.load19 = load i8, i8* %use_double_buffer, align 4, !dbg !4958
  %bf.clear20 = and i8 %bf.load19, -3, !dbg !4958
  %bf.set21 = or i8 %bf.clear20, 2, !dbg !4958
  store i8 %bf.set21, i8* %use_double_buffer, align 4, !dbg !4958
  br label %if.end22, !dbg !4956

if.end22:                                         ; preds = %if.then18, %if.end15
  br label %for.inc23, !dbg !4959

for.inc23:                                        ; preds = %if.end22
  %24 = load i32, i32* %i, align 4, !dbg !4960
  %inc = add i32 %24, 1, !dbg !4960
  store i32 %inc, i32* %i, align 4, !dbg !4960
  br label %for.cond, !dbg !4961, !llvm.loop !4962

for.end24:                                        ; preds = %if.then8, %for.cond
  ret void, !dbg !4964
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @inw(i32 %port) #2 !dbg !4965 {
entry:
  %port.addr = alloca i32, align 4
  %value = alloca i16, align 2
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !4969, metadata !DIExpression()), !dbg !4970
  call void @llvm.dbg.declare(metadata i16* %value, metadata !4971, metadata !DIExpression()), !dbg !4970
  %0 = load i32, i32* %port.addr, align 4, !dbg !4970
  %1 = call i16 asm sideeffect "inw ${1:w}, ${0:w}", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #7, !dbg !4970, !srcloc !4972
  store i16 %1, i16* %value, align 2, !dbg !4970
  %2 = load i16, i16* %value, align 2, !dbg !4970
  ret i16 %2, !dbg !4970
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci3120_ai_insn_read(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !4973 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %devpriv = alloca %struct.apci3120_private*, align 8
  %divisor = alloca i32, align 4
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4974, metadata !DIExpression()), !dbg !4975
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4976, metadata !DIExpression()), !dbg !4977
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !4978, metadata !DIExpression()), !dbg !4979
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !4980, metadata !DIExpression()), !dbg !4981
  call void @llvm.dbg.declare(metadata %struct.apci3120_private** %devpriv, metadata !4982, metadata !DIExpression()), !dbg !4983
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4984
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !4985
  %1 = load i8*, i8** %private, align 8, !dbg !4985
  %2 = bitcast i8* %1 to %struct.apci3120_private*, !dbg !4984
  store %struct.apci3120_private* %2, %struct.apci3120_private** %devpriv, align 8, !dbg !4983
  call void @llvm.dbg.declare(metadata i32* %divisor, metadata !4986, metadata !DIExpression()), !dbg !4987
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4988, metadata !DIExpression()), !dbg !4989
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4990, metadata !DIExpression()), !dbg !4991
  %3 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !4992
  %mode = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %3, i32 0, i32 7, !dbg !4993
  store i8 0, i8* %mode, align 2, !dbg !4994
  %4 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !4995
  %mode1 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %4, i32 0, i32 7, !dbg !4996
  %5 = load i8, i8* %mode1, align 2, !dbg !4996
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4997
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 18, !dbg !4998
  %7 = load i64, i64* %iobase, align 8, !dbg !4998
  %add = add i64 %7, 14, !dbg !4999
  %conv = trunc i64 %add to i32, !dbg !4997
  call void @outb(i8 zeroext %5, i32 %conv) #5, !dbg !5000
  %8 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5001
  %9 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5002
  %10 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5003
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %10, i32 0, i32 4, !dbg !5004
  call void @apci3120_set_chanlist(%struct.comedi_device* %8, %struct.comedi_subdevice* %9, i32 1, i32* %chanspec) #5, !dbg !5005
  %11 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5006
  call void @apci3120_timer_set_mode(%struct.comedi_device* %11, i32 0, i32 2) #5, !dbg !5007
  %12 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5008
  call void @apci3120_timer_enable(%struct.comedi_device* %12, i32 0, i1 zeroext true) #5, !dbg !5009
  %13 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5010
  %call = call i32 @apci3120_ns_to_timer(%struct.comedi_device* %13, i32 0, i32 10000, i32 0) #5, !dbg !5011
  store i32 %call, i32* %divisor, align 4, !dbg !5012
  store i32 0, i32* %i, align 4, !dbg !5013
  br label %for.cond, !dbg !5015

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i32, i32* %i, align 4, !dbg !5016
  %15 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5018
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %15, i32 0, i32 1, !dbg !5019
  %16 = load i32, i32* %n, align 4, !dbg !5019
  %cmp = icmp ult i32 %14, %16, !dbg !5020
  br i1 %cmp, label %for.body, label %for.end, !dbg !5021

for.body:                                         ; preds = %for.cond
  %17 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5022
  %18 = load i32, i32* %divisor, align 4, !dbg !5024
  call void @apci3120_timer_write(%struct.comedi_device* %17, i32 0, i32 %18) #5, !dbg !5025
  %19 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5026
  %20 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5027
  %21 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5028
  %call3 = call i32 @comedi_timeout(%struct.comedi_device* %19, %struct.comedi_subdevice* %20, %struct.comedi_insn* %21, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i64)* @apci3120_ai_eoc, i64 0) #5, !dbg !5029
  store i32 %call3, i32* %ret, align 4, !dbg !5030
  %22 = load i32, i32* %ret, align 4, !dbg !5031
  %tobool = icmp ne i32 %22, 0, !dbg !5031
  br i1 %tobool, label %if.then, label %if.end, !dbg !5033

if.then:                                          ; preds = %for.body
  %23 = load i32, i32* %ret, align 4, !dbg !5034
  store i32 %23, i32* %retval, align 4, !dbg !5035
  br label %return, !dbg !5035

if.end:                                           ; preds = %for.body
  %24 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5036
  %iobase4 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %24, i32 0, i32 18, !dbg !5037
  %25 = load i64, i64* %iobase4, align 8, !dbg !5037
  %add5 = add i64 %25, 0, !dbg !5038
  %conv6 = trunc i64 %add5 to i32, !dbg !5036
  %call7 = call zeroext i16 @inw(i32 %conv6) #5, !dbg !5039
  %conv8 = zext i16 %call7 to i32, !dbg !5039
  %26 = load i32*, i32** %data.addr, align 8, !dbg !5040
  %27 = load i32, i32* %i, align 4, !dbg !5041
  %idxprom = sext i32 %27 to i64, !dbg !5040
  %arrayidx = getelementptr i32, i32* %26, i64 %idxprom, !dbg !5040
  store i32 %conv8, i32* %arrayidx, align 4, !dbg !5042
  br label %for.inc, !dbg !5043

for.inc:                                          ; preds = %if.end
  %28 = load i32, i32* %i, align 4, !dbg !5044
  %inc = add i32 %28, 1, !dbg !5044
  store i32 %inc, i32* %i, align 4, !dbg !5044
  br label %for.cond, !dbg !5045, !llvm.loop !5046

for.end:                                          ; preds = %for.cond
  %29 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5048
  %n9 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %29, i32 0, i32 1, !dbg !5049
  %30 = load i32, i32* %n9, align 4, !dbg !5049
  store i32 %30, i32* %retval, align 4, !dbg !5050
  br label %return, !dbg !5050

return:                                           ; preds = %for.end, %if.then
  %31 = load i32, i32* %retval, align 4, !dbg !5051
  ret i32 %31, !dbg !5051
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci3120_ai_cmdtest(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_cmd* %cmd) #2 !dbg !5052 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %cmd.addr = alloca %struct.comedi_cmd*, align 8
  %arg = alloca i32, align 4
  %err = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5053, metadata !DIExpression()), !dbg !5054
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5055, metadata !DIExpression()), !dbg !5056
  store %struct.comedi_cmd* %cmd, %struct.comedi_cmd** %cmd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd.addr, metadata !5057, metadata !DIExpression()), !dbg !5058
  call void @llvm.dbg.declare(metadata i32* %arg, metadata !5059, metadata !DIExpression()), !dbg !5060
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5061, metadata !DIExpression()), !dbg !5062
  store i32 0, i32* %err, align 4, !dbg !5062
  %0 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5063
  %start_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %0, i32 0, i32 2, !dbg !5064
  %call = call i32 @comedi_check_trigger_src(i32* %start_src, i32 66) #5, !dbg !5065
  %1 = load i32, i32* %err, align 4, !dbg !5066
  %or = or i32 %1, %call, !dbg !5066
  store i32 %or, i32* %err, align 4, !dbg !5066
  %2 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5067
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %2, i32 0, i32 4, !dbg !5068
  %call1 = call i32 @comedi_check_trigger_src(i32* %scan_begin_src, i32 20) #5, !dbg !5069
  %3 = load i32, i32* %err, align 4, !dbg !5070
  %or2 = or i32 %3, %call1, !dbg !5070
  store i32 %or2, i32* %err, align 4, !dbg !5070
  %4 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5071
  %convert_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %4, i32 0, i32 6, !dbg !5072
  %call3 = call i32 @comedi_check_trigger_src(i32* %convert_src, i32 16) #5, !dbg !5073
  %5 = load i32, i32* %err, align 4, !dbg !5074
  %or4 = or i32 %5, %call3, !dbg !5074
  store i32 %or4, i32* %err, align 4, !dbg !5074
  %6 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5075
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %6, i32 0, i32 8, !dbg !5076
  %call5 = call i32 @comedi_check_trigger_src(i32* %scan_end_src, i32 32) #5, !dbg !5077
  %7 = load i32, i32* %err, align 4, !dbg !5078
  %or6 = or i32 %7, %call5, !dbg !5078
  store i32 %or6, i32* %err, align 4, !dbg !5078
  %8 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5079
  %stop_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %8, i32 0, i32 10, !dbg !5080
  %call7 = call i32 @comedi_check_trigger_src(i32* %stop_src, i32 33) #5, !dbg !5081
  %9 = load i32, i32* %err, align 4, !dbg !5082
  %or8 = or i32 %9, %call7, !dbg !5082
  store i32 %or8, i32* %err, align 4, !dbg !5082
  %10 = load i32, i32* %err, align 4, !dbg !5083
  %tobool = icmp ne i32 %10, 0, !dbg !5083
  br i1 %tobool, label %if.then, label %if.end, !dbg !5085

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !5086
  br label %return, !dbg !5086

if.end:                                           ; preds = %entry
  %11 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5087
  %start_src9 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %11, i32 0, i32 2, !dbg !5088
  %12 = load i32, i32* %start_src9, align 8, !dbg !5088
  %call10 = call i32 @comedi_check_trigger_is_unique(i32 %12) #5, !dbg !5089
  %13 = load i32, i32* %err, align 4, !dbg !5090
  %or11 = or i32 %13, %call10, !dbg !5090
  store i32 %or11, i32* %err, align 4, !dbg !5090
  %14 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5091
  %scan_begin_src12 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %14, i32 0, i32 4, !dbg !5092
  %15 = load i32, i32* %scan_begin_src12, align 8, !dbg !5092
  %call13 = call i32 @comedi_check_trigger_is_unique(i32 %15) #5, !dbg !5093
  %16 = load i32, i32* %err, align 4, !dbg !5094
  %or14 = or i32 %16, %call13, !dbg !5094
  store i32 %or14, i32* %err, align 4, !dbg !5094
  %17 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5095
  %stop_src15 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %17, i32 0, i32 10, !dbg !5096
  %18 = load i32, i32* %stop_src15, align 8, !dbg !5096
  %call16 = call i32 @comedi_check_trigger_is_unique(i32 %18) #5, !dbg !5097
  %19 = load i32, i32* %err, align 4, !dbg !5098
  %or17 = or i32 %19, %call16, !dbg !5098
  store i32 %or17, i32* %err, align 4, !dbg !5098
  %20 = load i32, i32* %err, align 4, !dbg !5099
  %tobool18 = icmp ne i32 %20, 0, !dbg !5099
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !5101

if.then19:                                        ; preds = %if.end
  store i32 2, i32* %retval, align 4, !dbg !5102
  br label %return, !dbg !5102

if.end20:                                         ; preds = %if.end
  %21 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5103
  %start_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %21, i32 0, i32 3, !dbg !5104
  %call21 = call i32 @comedi_check_trigger_arg_is(i32* %start_arg, i32 0) #5, !dbg !5105
  %22 = load i32, i32* %err, align 4, !dbg !5106
  %or22 = or i32 %22, %call21, !dbg !5106
  store i32 %or22, i32* %err, align 4, !dbg !5106
  %23 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5107
  %scan_begin_src23 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %23, i32 0, i32 4, !dbg !5109
  %24 = load i32, i32* %scan_begin_src23, align 8, !dbg !5109
  %cmp = icmp eq i32 %24, 16, !dbg !5110
  br i1 %cmp, label %if.then24, label %if.end27, !dbg !5111

if.then24:                                        ; preds = %if.end20
  %25 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5112
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %25, i32 0, i32 5, !dbg !5114
  %call25 = call i32 @comedi_check_trigger_arg_min(i32* %scan_begin_arg, i32 100000) #5, !dbg !5115
  %26 = load i32, i32* %err, align 4, !dbg !5116
  %or26 = or i32 %26, %call25, !dbg !5116
  store i32 %or26, i32* %err, align 4, !dbg !5116
  br label %if.end27, !dbg !5117

if.end27:                                         ; preds = %if.then24, %if.end20
  %27 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5118
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %27, i32 0, i32 7, !dbg !5119
  %call28 = call i32 @comedi_check_trigger_arg_min(i32* %convert_arg, i32 10000) #5, !dbg !5120
  %28 = load i32, i32* %err, align 4, !dbg !5121
  %or29 = or i32 %28, %call28, !dbg !5121
  store i32 %or29, i32* %err, align 4, !dbg !5121
  %29 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5122
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %29, i32 0, i32 13, !dbg !5123
  %call30 = call i32 @comedi_check_trigger_arg_min(i32* %chanlist_len, i32 1) #5, !dbg !5124
  %30 = load i32, i32* %err, align 4, !dbg !5125
  %or31 = or i32 %30, %call30, !dbg !5125
  store i32 %or31, i32* %err, align 4, !dbg !5125
  %31 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5126
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %31, i32 0, i32 9, !dbg !5127
  %32 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5128
  %chanlist_len32 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %32, i32 0, i32 13, !dbg !5129
  %33 = load i32, i32* %chanlist_len32, align 8, !dbg !5129
  %call33 = call i32 @comedi_check_trigger_arg_is(i32* %scan_end_arg, i32 %33) #5, !dbg !5130
  %34 = load i32, i32* %err, align 4, !dbg !5131
  %or34 = or i32 %34, %call33, !dbg !5131
  store i32 %or34, i32* %err, align 4, !dbg !5131
  %35 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5132
  %stop_src35 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %35, i32 0, i32 10, !dbg !5134
  %36 = load i32, i32* %stop_src35, align 8, !dbg !5134
  %cmp36 = icmp eq i32 %36, 32, !dbg !5135
  br i1 %cmp36, label %if.then37, label %if.else, !dbg !5136

if.then37:                                        ; preds = %if.end27
  %37 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5137
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %37, i32 0, i32 11, !dbg !5138
  %call38 = call i32 @comedi_check_trigger_arg_min(i32* %stop_arg, i32 1) #5, !dbg !5139
  %38 = load i32, i32* %err, align 4, !dbg !5140
  %or39 = or i32 %38, %call38, !dbg !5140
  store i32 %or39, i32* %err, align 4, !dbg !5140
  br label %if.end43, !dbg !5141

if.else:                                          ; preds = %if.end27
  %39 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5142
  %stop_arg40 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %39, i32 0, i32 11, !dbg !5143
  %call41 = call i32 @comedi_check_trigger_arg_is(i32* %stop_arg40, i32 0) #5, !dbg !5144
  %40 = load i32, i32* %err, align 4, !dbg !5145
  %or42 = or i32 %40, %call41, !dbg !5145
  store i32 %or42, i32* %err, align 4, !dbg !5145
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then37
  %41 = load i32, i32* %err, align 4, !dbg !5146
  %tobool44 = icmp ne i32 %41, 0, !dbg !5146
  br i1 %tobool44, label %if.then45, label %if.end46, !dbg !5148

if.then45:                                        ; preds = %if.end43
  store i32 3, i32* %retval, align 4, !dbg !5149
  br label %return, !dbg !5149

if.end46:                                         ; preds = %if.end43
  %42 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5150
  %scan_begin_src47 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %42, i32 0, i32 4, !dbg !5152
  %43 = load i32, i32* %scan_begin_src47, align 8, !dbg !5152
  %cmp48 = icmp eq i32 %43, 16, !dbg !5153
  br i1 %cmp48, label %if.then49, label %if.end55, !dbg !5154

if.then49:                                        ; preds = %if.end46
  %44 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5155
  %convert_arg50 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %44, i32 0, i32 7, !dbg !5157
  %45 = load i32, i32* %convert_arg50, align 4, !dbg !5157
  %46 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5158
  %scan_end_arg51 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %46, i32 0, i32 9, !dbg !5159
  %47 = load i32, i32* %scan_end_arg51, align 4, !dbg !5159
  %mul = mul i32 %45, %47, !dbg !5160
  store i32 %mul, i32* %arg, align 4, !dbg !5161
  %48 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5162
  %scan_begin_arg52 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %48, i32 0, i32 5, !dbg !5163
  %49 = load i32, i32* %arg, align 4, !dbg !5164
  %call53 = call i32 @comedi_check_trigger_arg_min(i32* %scan_begin_arg52, i32 %49) #5, !dbg !5165
  %50 = load i32, i32* %err, align 4, !dbg !5166
  %or54 = or i32 %50, %call53, !dbg !5166
  store i32 %or54, i32* %err, align 4, !dbg !5166
  br label %if.end55, !dbg !5167

if.end55:                                         ; preds = %if.then49, %if.end46
  %51 = load i32, i32* %err, align 4, !dbg !5168
  %tobool56 = icmp ne i32 %51, 0, !dbg !5168
  br i1 %tobool56, label %if.then57, label %if.end58, !dbg !5170

if.then57:                                        ; preds = %if.end55
  store i32 4, i32* %retval, align 4, !dbg !5171
  br label %return, !dbg !5171

if.end58:                                         ; preds = %if.end55
  store i32 0, i32* %retval, align 4, !dbg !5172
  br label %return, !dbg !5172

return:                                           ; preds = %if.end58, %if.then57, %if.then45, %if.then19, %if.then
  %52 = load i32, i32* %retval, align 4, !dbg !5173
  ret i32 %52, !dbg !5173
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci3120_ai_cmd(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #2 !dbg !5174 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %devpriv = alloca %struct.apci3120_private*, align 8
  %cmd = alloca %struct.comedi_cmd*, align 8
  %divisor = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5175, metadata !DIExpression()), !dbg !5176
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5177, metadata !DIExpression()), !dbg !5178
  call void @llvm.dbg.declare(metadata %struct.apci3120_private** %devpriv, metadata !5179, metadata !DIExpression()), !dbg !5180
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5181
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5182
  %1 = load i8*, i8** %private, align 8, !dbg !5182
  %2 = bitcast i8* %1 to %struct.apci3120_private*, !dbg !5181
  store %struct.apci3120_private* %2, %struct.apci3120_private** %devpriv, align 8, !dbg !5180
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd, metadata !5183, metadata !DIExpression()), !dbg !5184
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5185
  %async = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %3, i32 0, i32 7, !dbg !5186
  %4 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5186
  %cmd1 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %4, i32 0, i32 17, !dbg !5187
  store %struct.comedi_cmd* %cmd1, %struct.comedi_cmd** %cmd, align 8, !dbg !5184
  call void @llvm.dbg.declare(metadata i32* %divisor, metadata !5188, metadata !DIExpression()), !dbg !5189
  %5 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !5190
  %mode = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %5, i32 0, i32 7, !dbg !5191
  store i8 0, i8* %mode, align 2, !dbg !5192
  %6 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !5193
  %amcc = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %6, i32 0, i32 0, !dbg !5194
  %7 = load i64, i64* %amcc, align 8, !dbg !5194
  %add = add i64 %7, 56, !dbg !5195
  %conv = trunc i64 %add to i32, !dbg !5193
  call void @outl(i32 262144, i32 %conv) #5, !dbg !5196
  %8 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !5197
  %cur_dmabuf = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %8, i32 0, i32 3, !dbg !5198
  %bf.load = load i8, i8* %cur_dmabuf, align 4, !dbg !5199
  %bf.clear = and i8 %bf.load, -5, !dbg !5199
  store i8 %bf.clear, i8* %cur_dmabuf, align 4, !dbg !5199
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5200
  %10 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5201
  %11 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5202
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %11, i32 0, i32 13, !dbg !5203
  %12 = load i32, i32* %chanlist_len, align 8, !dbg !5203
  %13 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5204
  %chanlist = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %13, i32 0, i32 12, !dbg !5205
  %14 = load i32*, i32** %chanlist, align 8, !dbg !5205
  call void @apci3120_set_chanlist(%struct.comedi_device* %9, %struct.comedi_subdevice* %10, i32 %12, i32* %14) #5, !dbg !5206
  %15 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5207
  %start_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %15, i32 0, i32 2, !dbg !5209
  %16 = load i32, i32* %start_src, align 8, !dbg !5209
  %cmp = icmp eq i32 %16, 64, !dbg !5210
  br i1 %cmp, label %if.then, label %if.end, !dbg !5211

if.then:                                          ; preds = %entry
  %17 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5212
  call void @apci3120_exttrig_enable(%struct.comedi_device* %17, i1 zeroext true) #5, !dbg !5213
  br label %if.end, !dbg !5213

if.end:                                           ; preds = %if.then, %entry
  %18 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5214
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %18, i32 0, i32 4, !dbg !5216
  %19 = load i32, i32* %scan_begin_src, align 8, !dbg !5216
  %cmp3 = icmp eq i32 %19, 16, !dbg !5217
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !5218

if.then5:                                         ; preds = %if.end
  %20 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5219
  %21 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5221
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %21, i32 0, i32 5, !dbg !5222
  %22 = load i32, i32* %scan_begin_arg, align 4, !dbg !5222
  %23 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5223
  %flags = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %23, i32 0, i32 1, !dbg !5224
  %24 = load i32, i32* %flags, align 4, !dbg !5224
  %call = call i32 @apci3120_ns_to_timer(%struct.comedi_device* %20, i32 1, i32 %22, i32 %24) #5, !dbg !5225
  store i32 %call, i32* %divisor, align 4, !dbg !5226
  %25 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5227
  call void @apci3120_timer_set_mode(%struct.comedi_device* %25, i32 1, i32 1) #5, !dbg !5228
  %26 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5229
  %27 = load i32, i32* %divisor, align 4, !dbg !5230
  call void @apci3120_timer_write(%struct.comedi_device* %26, i32 1, i32 %27) #5, !dbg !5231
  br label %if.end6, !dbg !5232

if.end6:                                          ; preds = %if.then5, %if.end
  %28 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5233
  %29 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5234
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %29, i32 0, i32 7, !dbg !5235
  %30 = load i32, i32* %convert_arg, align 4, !dbg !5235
  %31 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5236
  %flags7 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %31, i32 0, i32 1, !dbg !5237
  %32 = load i32, i32* %flags7, align 4, !dbg !5237
  %call8 = call i32 @apci3120_ns_to_timer(%struct.comedi_device* %28, i32 0, i32 %30, i32 %32) #5, !dbg !5238
  store i32 %call8, i32* %divisor, align 4, !dbg !5239
  %33 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5240
  call void @apci3120_timer_set_mode(%struct.comedi_device* %33, i32 0, i32 1) #5, !dbg !5241
  %34 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5242
  %35 = load i32, i32* %divisor, align 4, !dbg !5243
  call void @apci3120_timer_write(%struct.comedi_device* %34, i32 0, i32 %35) #5, !dbg !5244
  %36 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !5245
  %use_dma = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %36, i32 0, i32 3, !dbg !5247
  %bf.load9 = load i8, i8* %use_dma, align 4, !dbg !5247
  %bf.clear10 = and i8 %bf.load9, 1, !dbg !5247
  %bf.cast = zext i8 %bf.clear10 to i32, !dbg !5247
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5245
  br i1 %tobool, label %if.then11, label %if.else, !dbg !5248

if.then11:                                        ; preds = %if.end6
  %37 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5249
  %38 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5250
  call void @apci3120_setup_dma(%struct.comedi_device* %37, %struct.comedi_subdevice* %38) #5, !dbg !5251
  br label %if.end15, !dbg !5251

if.else:                                          ; preds = %if.end6
  %39 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !5252
  %mode12 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %39, i32 0, i32 7, !dbg !5253
  %40 = load i8, i8* %mode12, align 2, !dbg !5254
  %conv13 = zext i8 %40 to i64, !dbg !5254
  %or = or i64 %conv13, 2, !dbg !5254
  %conv14 = trunc i64 %or to i8, !dbg !5254
  store i8 %conv14, i8* %mode12, align 2, !dbg !5254
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then11
  %41 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !5255
  %mode16 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %41, i32 0, i32 7, !dbg !5256
  %42 = load i8, i8* %mode16, align 2, !dbg !5256
  %43 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5257
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %43, i32 0, i32 18, !dbg !5258
  %44 = load i64, i64* %iobase, align 8, !dbg !5258
  %add17 = add i64 %44, 14, !dbg !5259
  %conv18 = trunc i64 %add17 to i32, !dbg !5257
  call void @outb(i8 zeroext %42, i32 %conv18) #5, !dbg !5260
  %45 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5261
  %scan_begin_src19 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %45, i32 0, i32 4, !dbg !5263
  %46 = load i32, i32* %scan_begin_src19, align 8, !dbg !5263
  %cmp20 = icmp eq i32 %46, 16, !dbg !5264
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !5265

if.then22:                                        ; preds = %if.end15
  %47 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5266
  call void @apci3120_timer_enable(%struct.comedi_device* %47, i32 1, i1 zeroext true) #5, !dbg !5267
  br label %if.end23, !dbg !5267

if.end23:                                         ; preds = %if.then22, %if.end15
  %48 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5268
  call void @apci3120_timer_enable(%struct.comedi_device* %48, i32 0, i1 zeroext true) #5, !dbg !5269
  ret i32 0, !dbg !5270
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci3120_cancel(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #2 !dbg !5271 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %devpriv = alloca %struct.apci3120_private*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5272, metadata !DIExpression()), !dbg !5273
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5274, metadata !DIExpression()), !dbg !5275
  call void @llvm.dbg.declare(metadata %struct.apci3120_private** %devpriv, metadata !5276, metadata !DIExpression()), !dbg !5277
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5278
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5279
  %1 = load i8*, i8** %private, align 8, !dbg !5279
  %2 = bitcast i8* %1 to %struct.apci3120_private*, !dbg !5278
  store %struct.apci3120_private* %2, %struct.apci3120_private** %devpriv, align 8, !dbg !5277
  %3 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !5280
  %addon = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %3, i32 0, i32 1, !dbg !5281
  %4 = load i64, i64* %addon, align 8, !dbg !5281
  %add = add i64 %4, 4, !dbg !5282
  %conv = trunc i64 %add to i32, !dbg !5280
  call void @outw(i16 zeroext 0, i32 %conv) #5, !dbg !5283
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5284
  call void @apci3120_addon_write(%struct.comedi_device* %5, i32 0, i32 60) #5, !dbg !5285
  %6 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !5286
  %amcc = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %6, i32 0, i32 0, !dbg !5287
  %7 = load i64, i64* %amcc, align 8, !dbg !5287
  %add1 = add i64 %7, 60, !dbg !5288
  %conv2 = trunc i64 %add1 to i32, !dbg !5286
  call void @outl(i32 0, i32 %conv2) #5, !dbg !5289
  %8 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !5290
  %ctrl = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %8, i32 0, i32 8, !dbg !5291
  store i16 0, i16* %ctrl, align 4, !dbg !5292
  %9 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !5293
  %ctrl3 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %9, i32 0, i32 8, !dbg !5294
  %10 = load i16, i16* %ctrl3, align 4, !dbg !5294
  %11 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5295
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 18, !dbg !5296
  %12 = load i64, i64* %iobase, align 8, !dbg !5296
  %add4 = add i64 %12, 0, !dbg !5297
  %conv5 = trunc i64 %add4 to i32, !dbg !5295
  call void @outw(i16 zeroext %10, i32 %conv5) #5, !dbg !5298
  %13 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !5299
  %mode = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %13, i32 0, i32 7, !dbg !5300
  store i8 0, i8* %mode, align 2, !dbg !5301
  %14 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !5302
  %mode6 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %14, i32 0, i32 7, !dbg !5303
  %15 = load i8, i8* %mode6, align 2, !dbg !5303
  %16 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5304
  %iobase7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 18, !dbg !5305
  %17 = load i64, i64* %iobase7, align 8, !dbg !5305
  %add8 = add i64 %17, 14, !dbg !5306
  %conv9 = trunc i64 %add8 to i32, !dbg !5304
  call void @outb(i8 zeroext %15, i32 %conv9) #5, !dbg !5307
  %18 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5308
  %iobase10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 18, !dbg !5309
  %19 = load i64, i64* %iobase10, align 8, !dbg !5309
  %add11 = add i64 %19, 2, !dbg !5310
  %conv12 = trunc i64 %add11 to i32, !dbg !5308
  %call = call zeroext i16 @inw(i32 %conv12) #5, !dbg !5311
  %20 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !5312
  %cur_dmabuf = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %20, i32 0, i32 3, !dbg !5313
  %bf.load = load i8, i8* %cur_dmabuf, align 4, !dbg !5314
  %bf.clear = and i8 %bf.load, -5, !dbg !5314
  store i8 %bf.clear, i8* %cur_dmabuf, align 4, !dbg !5314
  ret i32 0, !dbg !5315
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci3120_ao_insn_write(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5316 {
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
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5317, metadata !DIExpression()), !dbg !5318
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5319, metadata !DIExpression()), !dbg !5320
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5321, metadata !DIExpression()), !dbg !5322
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5323, metadata !DIExpression()), !dbg !5324
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !5325, metadata !DIExpression()), !dbg !5326
  %0 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5327
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %0, i32 0, i32 4, !dbg !5327
  %1 = load i32, i32* %chanspec, align 4, !dbg !5327
  %and = and i32 %1, 65535, !dbg !5327
  store i32 %and, i32* %chan, align 4, !dbg !5326
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5328, metadata !DIExpression()), !dbg !5329
  store i32 0, i32* %i, align 4, !dbg !5330
  br label %for.cond, !dbg !5332

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !5333
  %3 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5335
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %3, i32 0, i32 1, !dbg !5336
  %4 = load i32, i32* %n, align 4, !dbg !5336
  %cmp = icmp ult i32 %2, %4, !dbg !5337
  br i1 %cmp, label %for.body, label %for.end, !dbg !5338

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %val, metadata !5339, metadata !DIExpression()), !dbg !5341
  %5 = load i32*, i32** %data.addr, align 8, !dbg !5342
  %6 = load i32, i32* %i, align 4, !dbg !5343
  %idxprom = sext i32 %6 to i64, !dbg !5342
  %arrayidx = getelementptr i32, i32* %5, i64 %idxprom, !dbg !5342
  %7 = load i32, i32* %arrayidx, align 4, !dbg !5342
  store i32 %7, i32* %val, align 4, !dbg !5341
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5344, metadata !DIExpression()), !dbg !5345
  %8 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5346
  %9 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5347
  %10 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5348
  %call = call i32 @comedi_timeout(%struct.comedi_device* %8, %struct.comedi_subdevice* %9, %struct.comedi_insn* %10, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i64)* @apci3120_ao_ready, i64 0) #5, !dbg !5349
  store i32 %call, i32* %ret, align 4, !dbg !5350
  %11 = load i32, i32* %ret, align 4, !dbg !5351
  %tobool = icmp ne i32 %11, 0, !dbg !5351
  br i1 %tobool, label %if.then, label %if.end, !dbg !5353

if.then:                                          ; preds = %for.body
  %12 = load i32, i32* %ret, align 4, !dbg !5354
  store i32 %12, i32* %retval, align 4, !dbg !5355
  br label %return, !dbg !5355

if.end:                                           ; preds = %for.body
  %13 = load i32, i32* %chan, align 4, !dbg !5356
  %and1 = and i32 %13, 3, !dbg !5356
  %shl = shl i32 %and1, 14, !dbg !5356
  %14 = load i32, i32* %val, align 4, !dbg !5357
  %shl2 = shl i32 %14, 0, !dbg !5357
  %or = or i32 %shl, %shl2, !dbg !5358
  %conv = trunc i32 %or to i16, !dbg !5356
  %15 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5359
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 18, !dbg !5360
  %16 = load i64, i64* %iobase, align 8, !dbg !5360
  %17 = load i32, i32* %chan, align 4, !dbg !5361
  %div = udiv i32 %17, 4, !dbg !5361
  %mul = mul i32 %div, 2, !dbg !5361
  %add = add i32 8, %mul, !dbg !5361
  %conv3 = zext i32 %add to i64, !dbg !5361
  %add4 = add i64 %16, %conv3, !dbg !5362
  %conv5 = trunc i64 %add4 to i32, !dbg !5359
  call void @outw(i16 zeroext %conv, i32 %conv5) #5, !dbg !5363
  %18 = load i32, i32* %val, align 4, !dbg !5364
  %19 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5365
  %readback = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %19, i32 0, i32 32, !dbg !5366
  %20 = load i32*, i32** %readback, align 8, !dbg !5366
  %21 = load i32, i32* %chan, align 4, !dbg !5367
  %idxprom6 = zext i32 %21 to i64, !dbg !5365
  %arrayidx7 = getelementptr i32, i32* %20, i64 %idxprom6, !dbg !5365
  store i32 %18, i32* %arrayidx7, align 4, !dbg !5368
  br label %for.inc, !dbg !5369

for.inc:                                          ; preds = %if.end
  %22 = load i32, i32* %i, align 4, !dbg !5370
  %inc = add i32 %22, 1, !dbg !5370
  store i32 %inc, i32* %i, align 4, !dbg !5370
  br label %for.cond, !dbg !5371, !llvm.loop !5372

for.end:                                          ; preds = %for.cond
  %23 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5374
  %n8 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %23, i32 0, i32 1, !dbg !5375
  %24 = load i32, i32* %n8, align 4, !dbg !5375
  store i32 %24, i32* %retval, align 4, !dbg !5376
  br label %return, !dbg !5376

return:                                           ; preds = %for.end, %if.then
  %25 = load i32, i32* %retval, align 4, !dbg !5377
  ret i32 %25, !dbg !5377
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_alloc_subdev_readback(%struct.comedi_subdevice*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci3120_di_insn_bits(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5378 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %status = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5379, metadata !DIExpression()), !dbg !5380
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5381, metadata !DIExpression()), !dbg !5382
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5383, metadata !DIExpression()), !dbg !5384
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5385, metadata !DIExpression()), !dbg !5386
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5387, metadata !DIExpression()), !dbg !5388
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5389
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 18, !dbg !5390
  %1 = load i64, i64* %iobase, align 8, !dbg !5390
  %add = add i64 %1, 2, !dbg !5391
  %conv = trunc i64 %add to i32, !dbg !5389
  %call = call zeroext i16 @inw(i32 %conv) #5, !dbg !5392
  %conv1 = zext i16 %call to i32, !dbg !5392
  store i32 %conv1, i32* %status, align 4, !dbg !5393
  %2 = load i32, i32* %status, align 4, !dbg !5394
  %shr = lshr i32 %2, 8, !dbg !5394
  %and = and i32 %shr, 15, !dbg !5394
  %3 = load i32*, i32** %data.addr, align 8, !dbg !5395
  %arrayidx = getelementptr i32, i32* %3, i64 1, !dbg !5395
  store i32 %and, i32* %arrayidx, align 4, !dbg !5396
  %4 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5397
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %4, i32 0, i32 1, !dbg !5398
  %5 = load i32, i32* %n, align 4, !dbg !5398
  ret i32 %5, !dbg !5399
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci3120_do_insn_bits(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5400 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %devpriv = alloca %struct.apci3120_private*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5401, metadata !DIExpression()), !dbg !5402
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5403, metadata !DIExpression()), !dbg !5404
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5405, metadata !DIExpression()), !dbg !5406
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5407, metadata !DIExpression()), !dbg !5408
  call void @llvm.dbg.declare(metadata %struct.apci3120_private** %devpriv, metadata !5409, metadata !DIExpression()), !dbg !5410
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5411
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5412
  %1 = load i8*, i8** %private, align 8, !dbg !5412
  %2 = bitcast i8* %1 to %struct.apci3120_private*, !dbg !5411
  store %struct.apci3120_private* %2, %struct.apci3120_private** %devpriv, align 8, !dbg !5410
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5413
  %4 = load i32*, i32** %data.addr, align 8, !dbg !5415
  %call = call i32 @comedi_dio_update_state(%struct.comedi_subdevice* %3, i32* %4) #5, !dbg !5416
  %tobool = icmp ne i32 %call, 0, !dbg !5416
  br i1 %tobool, label %if.then, label %if.end, !dbg !5417

if.then:                                          ; preds = %entry
  %5 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5418
  %state = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %5, i32 0, i32 29, !dbg !5420
  %6 = load i32, i32* %state, align 4, !dbg !5420
  %conv = trunc i32 %6 to i8, !dbg !5418
  %7 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !5421
  %do_bits = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %7, i32 0, i32 5, !dbg !5422
  store i8 %conv, i8* %do_bits, align 8, !dbg !5423
  %8 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !5424
  %do_bits1 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %8, i32 0, i32 5, !dbg !5424
  %9 = load i8, i8* %do_bits1, align 8, !dbg !5424
  %conv2 = zext i8 %9 to i32, !dbg !5424
  %shl = shl i32 %conv2, 4, !dbg !5424
  %conv3 = trunc i32 %shl to i8, !dbg !5424
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5425
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 18, !dbg !5426
  %11 = load i64, i64* %iobase, align 8, !dbg !5426
  %add = add i64 %11, 13, !dbg !5427
  %conv4 = trunc i64 %add to i32, !dbg !5425
  call void @outb(i8 zeroext %conv3, i32 %conv4) #5, !dbg !5428
  br label %if.end, !dbg !5429

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5430
  %state5 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %12, i32 0, i32 29, !dbg !5431
  %13 = load i32, i32* %state5, align 4, !dbg !5431
  %14 = load i32*, i32** %data.addr, align 8, !dbg !5432
  %arrayidx = getelementptr i32, i32* %14, i64 1, !dbg !5432
  store i32 %13, i32* %arrayidx, align 4, !dbg !5433
  %15 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5434
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %15, i32 0, i32 1, !dbg !5435
  %16 = load i32, i32* %n, align 4, !dbg !5435
  ret i32 %16, !dbg !5436
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci3120_timer_insn_config(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5437 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %devpriv = alloca %struct.apci3120_private*, align 8
  %divisor = alloca i32, align 4
  %status = alloca i32, align 4
  %mode = alloca i32, align 4
  %timer_mode = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5438, metadata !DIExpression()), !dbg !5439
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5440, metadata !DIExpression()), !dbg !5441
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5442, metadata !DIExpression()), !dbg !5443
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5444, metadata !DIExpression()), !dbg !5445
  call void @llvm.dbg.declare(metadata %struct.apci3120_private** %devpriv, metadata !5446, metadata !DIExpression()), !dbg !5447
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5448
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5449
  %1 = load i8*, i8** %private, align 8, !dbg !5449
  %2 = bitcast i8* %1 to %struct.apci3120_private*, !dbg !5448
  store %struct.apci3120_private* %2, %struct.apci3120_private** %devpriv, align 8, !dbg !5447
  call void @llvm.dbg.declare(metadata i32* %divisor, metadata !5450, metadata !DIExpression()), !dbg !5451
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5452, metadata !DIExpression()), !dbg !5453
  call void @llvm.dbg.declare(metadata i32* %mode, metadata !5454, metadata !DIExpression()), !dbg !5455
  call void @llvm.dbg.declare(metadata i32* %timer_mode, metadata !5456, metadata !DIExpression()), !dbg !5457
  %3 = load i32*, i32** %data.addr, align 8, !dbg !5458
  %arrayidx = getelementptr i32, i32* %3, i64 0, !dbg !5458
  %4 = load i32, i32* %arrayidx, align 4, !dbg !5458
  switch i32 %4, label %sw.default39 [
    i32 31, label %sw.bb
    i32 32, label %sw.bb2
    i32 33, label %sw.bb3
    i32 4097, label %sw.bb21
  ], !dbg !5459

sw.bb:                                            ; preds = %entry
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5460
  call void @apci3120_clr_timer2_interrupt(%struct.comedi_device* %5) #5, !dbg !5462
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5463
  %7 = load i32*, i32** %data.addr, align 8, !dbg !5464
  %arrayidx1 = getelementptr i32, i32* %7, i64 1, !dbg !5464
  %8 = load i32, i32* %arrayidx1, align 4, !dbg !5464
  %call = call i32 @apci3120_ns_to_timer(%struct.comedi_device* %6, i32 2, i32 %8, i32 65536) #5, !dbg !5465
  store i32 %call, i32* %divisor, align 4, !dbg !5466
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5467
  %10 = load i32, i32* %divisor, align 4, !dbg !5468
  call void @apci3120_timer_write(%struct.comedi_device* %9, i32 2, i32 %10) #5, !dbg !5469
  %11 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5470
  call void @apci3120_timer_enable(%struct.comedi_device* %11, i32 2, i1 zeroext true) #5, !dbg !5471
  br label %sw.epilog40, !dbg !5472

sw.bb2:                                           ; preds = %entry
  %12 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5473
  call void @apci3120_timer_enable(%struct.comedi_device* %12, i32 2, i1 zeroext false) #5, !dbg !5474
  %13 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5475
  call void @apci3120_clr_timer2_interrupt(%struct.comedi_device* %13) #5, !dbg !5476
  br label %sw.epilog40, !dbg !5477

sw.bb3:                                           ; preds = %entry
  %14 = load i32*, i32** %data.addr, align 8, !dbg !5478
  %arrayidx4 = getelementptr i32, i32* %14, i64 1, !dbg !5478
  store i32 0, i32* %arrayidx4, align 4, !dbg !5479
  %15 = load i32*, i32** %data.addr, align 8, !dbg !5480
  %arrayidx5 = getelementptr i32, i32* %15, i64 2, !dbg !5480
  store i32 7, i32* %arrayidx5, align 4, !dbg !5481
  %16 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !5482
  %ctrl = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %16, i32 0, i32 8, !dbg !5484
  %17 = load i16, i16* %ctrl, align 4, !dbg !5484
  %conv = zext i16 %17 to i64, !dbg !5482
  %and = and i64 %conv, 16384, !dbg !5485
  %tobool = icmp ne i64 %and, 0, !dbg !5485
  br i1 %tobool, label %if.then, label %if.end, !dbg !5486

if.then:                                          ; preds = %sw.bb3
  %18 = load i32*, i32** %data.addr, align 8, !dbg !5487
  %arrayidx6 = getelementptr i32, i32* %18, i64 1, !dbg !5487
  %19 = load i32, i32* %arrayidx6, align 4, !dbg !5489
  %or = or i32 %19, 1, !dbg !5489
  store i32 %or, i32* %arrayidx6, align 4, !dbg !5489
  %20 = load i32*, i32** %data.addr, align 8, !dbg !5490
  %arrayidx7 = getelementptr i32, i32* %20, i64 1, !dbg !5490
  %21 = load i32, i32* %arrayidx7, align 4, !dbg !5491
  %or8 = or i32 %21, 2, !dbg !5491
  store i32 %or8, i32* %arrayidx7, align 4, !dbg !5491
  br label %if.end, !dbg !5492

if.end:                                           ; preds = %if.then, %sw.bb3
  %22 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5493
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %22, i32 0, i32 18, !dbg !5494
  %23 = load i64, i64* %iobase, align 8, !dbg !5494
  %add = add i64 %23, 2, !dbg !5495
  %conv9 = trunc i64 %add to i32, !dbg !5493
  %call10 = call zeroext i16 @inw(i32 %conv9) #5, !dbg !5496
  %conv11 = zext i16 %call10 to i32, !dbg !5496
  store i32 %conv11, i32* %status, align 4, !dbg !5497
  %24 = load i32, i32* %status, align 4, !dbg !5498
  %conv12 = zext i32 %24 to i64, !dbg !5498
  %and13 = and i64 %conv12, 4096, !dbg !5500
  %tobool14 = icmp ne i64 %and13, 0, !dbg !5500
  br i1 %tobool14, label %if.then15, label %if.end20, !dbg !5501

if.then15:                                        ; preds = %if.end
  %25 = load i32*, i32** %data.addr, align 8, !dbg !5502
  %arrayidx16 = getelementptr i32, i32* %25, i64 1, !dbg !5502
  %26 = load i32, i32* %arrayidx16, align 4, !dbg !5504
  %and17 = and i32 %26, -3, !dbg !5504
  store i32 %and17, i32* %arrayidx16, align 4, !dbg !5504
  %27 = load i32*, i32** %data.addr, align 8, !dbg !5505
  %arrayidx18 = getelementptr i32, i32* %27, i64 1, !dbg !5505
  %28 = load i32, i32* %arrayidx18, align 4, !dbg !5506
  %or19 = or i32 %28, 4, !dbg !5506
  store i32 %or19, i32* %arrayidx18, align 4, !dbg !5506
  br label %if.end20, !dbg !5507

if.end20:                                         ; preds = %if.then15, %if.end
  br label %sw.epilog40, !dbg !5508

sw.bb21:                                          ; preds = %entry
  %29 = load i32*, i32** %data.addr, align 8, !dbg !5509
  %arrayidx22 = getelementptr i32, i32* %29, i64 1, !dbg !5509
  %30 = load i32, i32* %arrayidx22, align 4, !dbg !5509
  switch i32 %30, label %sw.default [
    i32 0, label %sw.bb23
    i32 4, label %sw.bb24
    i32 8, label %sw.bb25
    i32 10, label %sw.bb26
  ], !dbg !5510

sw.bb23:                                          ; preds = %sw.bb21
  store i32 16, i32* %mode, align 4, !dbg !5511
  store i32 0, i32* %timer_mode, align 4, !dbg !5513
  br label %sw.epilog, !dbg !5514

sw.bb24:                                          ; preds = %sw.bb21
  store i32 0, i32* %mode, align 4, !dbg !5515
  store i32 1, i32* %timer_mode, align 4, !dbg !5516
  br label %sw.epilog, !dbg !5517

sw.bb25:                                          ; preds = %sw.bb21
  store i32 0, i32* %mode, align 4, !dbg !5518
  store i32 2, i32* %timer_mode, align 4, !dbg !5519
  br label %sw.epilog, !dbg !5520

sw.bb26:                                          ; preds = %sw.bb21
  store i32 32, i32* %mode, align 4, !dbg !5521
  store i32 3, i32* %timer_mode, align 4, !dbg !5522
  br label %sw.epilog, !dbg !5523

sw.default:                                       ; preds = %sw.bb21
  store i32 -22, i32* %retval, align 4, !dbg !5524
  br label %return, !dbg !5524

sw.epilog:                                        ; preds = %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb23
  %31 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5525
  call void @apci3120_timer_enable(%struct.comedi_device* %31, i32 2, i1 zeroext false) #5, !dbg !5526
  %32 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5527
  call void @apci3120_clr_timer2_interrupt(%struct.comedi_device* %32) #5, !dbg !5528
  %33 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5529
  %34 = load i32, i32* %timer_mode, align 4, !dbg !5530
  call void @apci3120_timer_set_mode(%struct.comedi_device* %33, i32 2, i32 %34) #5, !dbg !5531
  %35 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !5532
  %mode27 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %35, i32 0, i32 7, !dbg !5533
  %36 = load i8, i8* %mode27, align 2, !dbg !5534
  %conv28 = zext i8 %36 to i32, !dbg !5534
  %and29 = and i32 %conv28, -49, !dbg !5534
  %conv30 = trunc i32 %and29 to i8, !dbg !5534
  store i8 %conv30, i8* %mode27, align 2, !dbg !5534
  %37 = load i32, i32* %mode, align 4, !dbg !5535
  %38 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !5536
  %mode31 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %38, i32 0, i32 7, !dbg !5537
  %39 = load i8, i8* %mode31, align 2, !dbg !5538
  %conv32 = zext i8 %39 to i32, !dbg !5538
  %or33 = or i32 %conv32, %37, !dbg !5538
  %conv34 = trunc i32 %or33 to i8, !dbg !5538
  store i8 %conv34, i8* %mode31, align 2, !dbg !5538
  %40 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !5539
  %mode35 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %40, i32 0, i32 7, !dbg !5540
  %41 = load i8, i8* %mode35, align 2, !dbg !5540
  %42 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5541
  %iobase36 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %42, i32 0, i32 18, !dbg !5542
  %43 = load i64, i64* %iobase36, align 8, !dbg !5542
  %add37 = add i64 %43, 14, !dbg !5543
  %conv38 = trunc i64 %add37 to i32, !dbg !5541
  call void @outb(i8 zeroext %41, i32 %conv38) #5, !dbg !5544
  br label %sw.epilog40, !dbg !5545

sw.default39:                                     ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5546
  br label %return, !dbg !5546

sw.epilog40:                                      ; preds = %sw.epilog, %if.end20, %sw.bb2, %sw.bb
  %44 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5547
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %44, i32 0, i32 1, !dbg !5548
  %45 = load i32, i32* %n, align 4, !dbg !5548
  store i32 %45, i32* %retval, align 4, !dbg !5549
  br label %return, !dbg !5549

return:                                           ; preds = %sw.epilog40, %sw.default39, %sw.default
  %46 = load i32, i32* %retval, align 4, !dbg !5550
  ret i32 %46, !dbg !5550
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci3120_timer_insn_read(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5551 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5552, metadata !DIExpression()), !dbg !5553
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5554, metadata !DIExpression()), !dbg !5555
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5556, metadata !DIExpression()), !dbg !5557
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5558, metadata !DIExpression()), !dbg !5559
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5560, metadata !DIExpression()), !dbg !5561
  store i32 0, i32* %i, align 4, !dbg !5562
  br label %for.cond, !dbg !5564

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !5565
  %1 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5567
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %1, i32 0, i32 1, !dbg !5568
  %2 = load i32, i32* %n, align 4, !dbg !5568
  %cmp = icmp ult i32 %0, %2, !dbg !5569
  br i1 %cmp, label %for.body, label %for.end, !dbg !5570

for.body:                                         ; preds = %for.cond
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5571
  %call = call i32 @apci3120_timer_read(%struct.comedi_device* %3, i32 2) #5, !dbg !5572
  %4 = load i32*, i32** %data.addr, align 8, !dbg !5573
  %5 = load i32, i32* %i, align 4, !dbg !5574
  %idxprom = sext i32 %5 to i64, !dbg !5573
  %arrayidx = getelementptr i32, i32* %4, i64 %idxprom, !dbg !5573
  store i32 %call, i32* %arrayidx, align 4, !dbg !5575
  br label %for.inc, !dbg !5573

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !5576
  %inc = add i32 %6, 1, !dbg !5576
  store i32 %inc, i32* %i, align 4, !dbg !5576
  br label %for.cond, !dbg !5577, !llvm.loop !5578

for.end:                                          ; preds = %for.cond
  %7 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5580
  %n1 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %7, i32 0, i32 1, !dbg !5581
  %8 = load i32, i32* %n1, align 4, !dbg !5581
  ret i32 %8, !dbg !5582
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outb(i8 zeroext %value, i32 %port) #2 !dbg !5583 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i32, align 4
  store i8 %value, i8* %value.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %value.addr, metadata !5586, metadata !DIExpression()), !dbg !5587
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5588, metadata !DIExpression()), !dbg !5587
  %0 = load i8, i8* %value.addr, align 1, !dbg !5587
  %1 = load i32, i32* %port.addr, align 4, !dbg !5587
  call void asm sideeffect "outb ${0:b}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i8 %0, i32 %1) #7, !dbg !5587, !srcloc !5589
  ret void, !dbg !5587
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outw(i16 zeroext %value, i32 %port) #2 !dbg !5590 {
entry:
  %value.addr = alloca i16, align 2
  %port.addr = alloca i32, align 4
  store i16 %value, i16* %value.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %value.addr, metadata !5593, metadata !DIExpression()), !dbg !5594
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5595, metadata !DIExpression()), !dbg !5594
  %0 = load i16, i16* %value.addr, align 2, !dbg !5594
  %1 = load i32, i32* %port.addr, align 4, !dbg !5594
  call void asm sideeffect "outw ${0:w}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %1) #7, !dbg !5594, !srcloc !5596
  ret void, !dbg !5594
}

; Function Attrs: noredzone
declare dso_local i32 @request_threaded_irq(i32, i32 (i32, i8*)*, i32 (i32, i8*)*, i64, i8*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @inl(i32 %port) #2 !dbg !5597 {
entry:
  %port.addr = alloca i32, align 4
  %value = alloca i32, align 4
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5600, metadata !DIExpression()), !dbg !5601
  call void @llvm.dbg.declare(metadata i32* %value, metadata !5602, metadata !DIExpression()), !dbg !5601
  %0 = load i32, i32* %port.addr, align 4, !dbg !5601
  %1 = call i32 asm sideeffect "inl ${1:w}, $0", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #7, !dbg !5601, !srcloc !5603
  store i32 %1, i32* %value, align 4, !dbg !5601
  %2 = load i32, i32* %value, align 4, !dbg !5601
  ret i32 %2, !dbg !5601
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outl(i32 %value, i32 %port) #2 !dbg !5604 {
entry:
  %value.addr = alloca i32, align 4
  %port.addr = alloca i32, align 4
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !5607, metadata !DIExpression()), !dbg !5608
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5609, metadata !DIExpression()), !dbg !5608
  %0 = load i32, i32* %value.addr, align 4, !dbg !5608
  %1 = load i32, i32* %port.addr, align 4, !dbg !5608
  call void asm sideeffect "outl $0, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 %1) #7, !dbg !5608, !srcloc !5610
  ret void, !dbg !5608
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @apci3120_exttrig_enable(%struct.comedi_device* %dev, i1 zeroext %enable) #2 !dbg !5611 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %enable.addr = alloca i8, align 1
  %devpriv = alloca %struct.apci3120_private*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5614, metadata !DIExpression()), !dbg !5615
  %frombool = zext i1 %enable to i8
  store i8 %frombool, i8* %enable.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %enable.addr, metadata !5616, metadata !DIExpression()), !dbg !5617
  call void @llvm.dbg.declare(metadata %struct.apci3120_private** %devpriv, metadata !5618, metadata !DIExpression()), !dbg !5619
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5620
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5621
  %1 = load i8*, i8** %private, align 8, !dbg !5621
  %2 = bitcast i8* %1 to %struct.apci3120_private*, !dbg !5620
  store %struct.apci3120_private* %2, %struct.apci3120_private** %devpriv, align 8, !dbg !5619
  %3 = load i8, i8* %enable.addr, align 1, !dbg !5622
  %tobool = trunc i8 %3 to i1, !dbg !5622
  br i1 %tobool, label %if.then, label %if.else, !dbg !5624

if.then:                                          ; preds = %entry
  %4 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !5625
  %ctrl = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %4, i32 0, i32 8, !dbg !5626
  %5 = load i16, i16* %ctrl, align 4, !dbg !5627
  %conv = zext i16 %5 to i64, !dbg !5627
  %or = or i64 %conv, 32768, !dbg !5627
  %conv1 = trunc i64 %or to i16, !dbg !5627
  store i16 %conv1, i16* %ctrl, align 4, !dbg !5627
  br label %if.end, !dbg !5625

if.else:                                          ; preds = %entry
  %6 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !5628
  %ctrl2 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %6, i32 0, i32 8, !dbg !5629
  %7 = load i16, i16* %ctrl2, align 4, !dbg !5630
  %conv3 = zext i16 %7 to i64, !dbg !5630
  %and = and i64 %conv3, -32769, !dbg !5630
  %conv4 = trunc i64 %and to i16, !dbg !5630
  store i16 %conv4, i16* %ctrl2, align 4, !dbg !5630
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !5631
  %ctrl5 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %8, i32 0, i32 8, !dbg !5632
  %9 = load i16, i16* %ctrl5, align 4, !dbg !5632
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5633
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 18, !dbg !5634
  %11 = load i64, i64* %iobase, align 8, !dbg !5634
  %add = add i64 %11, 0, !dbg !5635
  %conv6 = trunc i64 %add to i32, !dbg !5633
  call void @outw(i16 zeroext %9, i32 %conv6) #5, !dbg !5636
  ret void, !dbg !5637
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i8*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @apci3120_clr_timer2_interrupt(%struct.comedi_device* %dev) #2 !dbg !5638 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5639, metadata !DIExpression()), !dbg !5640
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5641
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 18, !dbg !5642
  %1 = load i64, i64* %iobase, align 8, !dbg !5642
  %add = add i64 %1, 13, !dbg !5643
  %conv = trunc i64 %add to i32, !dbg !5641
  %call = call zeroext i8 @inb(i32 %conv) #5, !dbg !5644
  ret void, !dbg !5645
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @apci3120_interrupt_dma(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #2 !dbg !5646 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %devpriv = alloca %struct.apci3120_private*, align 8
  %async = alloca %struct.comedi_async*, align 8
  %cmd = alloca %struct.comedi_cmd*, align 8
  %dmabuf = alloca %struct.apci3120_dmabuf*, align 8
  %nbytes = alloca i32, align 4
  %nsamples = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5649, metadata !DIExpression()), !dbg !5650
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5651, metadata !DIExpression()), !dbg !5652
  call void @llvm.dbg.declare(metadata %struct.apci3120_private** %devpriv, metadata !5653, metadata !DIExpression()), !dbg !5654
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5655
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5656
  %1 = load i8*, i8** %private, align 8, !dbg !5656
  %2 = bitcast i8* %1 to %struct.apci3120_private*, !dbg !5655
  store %struct.apci3120_private* %2, %struct.apci3120_private** %devpriv, align 8, !dbg !5654
  call void @llvm.dbg.declare(metadata %struct.comedi_async** %async, metadata !5657, metadata !DIExpression()), !dbg !5658
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5659
  %async1 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %3, i32 0, i32 7, !dbg !5660
  %4 = load %struct.comedi_async*, %struct.comedi_async** %async1, align 8, !dbg !5660
  store %struct.comedi_async* %4, %struct.comedi_async** %async, align 8, !dbg !5658
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd, metadata !5661, metadata !DIExpression()), !dbg !5662
  %5 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5663
  %cmd2 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %5, i32 0, i32 17, !dbg !5664
  store %struct.comedi_cmd* %cmd2, %struct.comedi_cmd** %cmd, align 8, !dbg !5662
  call void @llvm.dbg.declare(metadata %struct.apci3120_dmabuf** %dmabuf, metadata !5665, metadata !DIExpression()), !dbg !5666
  call void @llvm.dbg.declare(metadata i32* %nbytes, metadata !5667, metadata !DIExpression()), !dbg !5668
  call void @llvm.dbg.declare(metadata i32* %nsamples, metadata !5669, metadata !DIExpression()), !dbg !5670
  %6 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !5671
  %dmabuf3 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %6, i32 0, i32 4, !dbg !5672
  %7 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !5673
  %cur_dmabuf = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %7, i32 0, i32 3, !dbg !5674
  %bf.load = load i8, i8* %cur_dmabuf, align 4, !dbg !5674
  %bf.lshr = lshr i8 %bf.load, 2, !dbg !5674
  %bf.clear = and i8 %bf.lshr, 1, !dbg !5674
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5674
  %idxprom = zext i32 %bf.cast to i64, !dbg !5671
  %arrayidx = getelementptr [2 x %struct.apci3120_dmabuf], [2 x %struct.apci3120_dmabuf]* %dmabuf3, i64 0, i64 %idxprom, !dbg !5671
  store %struct.apci3120_dmabuf* %arrayidx, %struct.apci3120_dmabuf** %dmabuf, align 8, !dbg !5675
  %8 = load %struct.apci3120_dmabuf*, %struct.apci3120_dmabuf** %dmabuf, align 8, !dbg !5676
  %use_size = getelementptr inbounds %struct.apci3120_dmabuf, %struct.apci3120_dmabuf* %8, i32 0, i32 3, !dbg !5677
  %9 = load i32, i32* %use_size, align 4, !dbg !5677
  %10 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !5678
  %amcc = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %10, i32 0, i32 0, !dbg !5679
  %11 = load i64, i64* %amcc, align 8, !dbg !5679
  %add = add i64 %11, 40, !dbg !5680
  %conv = trunc i64 %add to i32, !dbg !5678
  %call = call i32 @inl(i32 %conv) #5, !dbg !5681
  %sub = sub i32 %9, %call, !dbg !5682
  store i32 %sub, i32* %nbytes, align 4, !dbg !5683
  %12 = load i32, i32* %nbytes, align 4, !dbg !5684
  %13 = load %struct.apci3120_dmabuf*, %struct.apci3120_dmabuf** %dmabuf, align 8, !dbg !5686
  %use_size4 = getelementptr inbounds %struct.apci3120_dmabuf, %struct.apci3120_dmabuf* %13, i32 0, i32 3, !dbg !5687
  %14 = load i32, i32* %use_size4, align 4, !dbg !5687
  %cmp = icmp ult i32 %12, %14, !dbg !5688
  br i1 %cmp, label %if.then, label %if.end, !dbg !5689

if.then:                                          ; preds = %entry
  %15 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5690
  %class_dev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 4, !dbg !5690
  %16 = load %struct.device*, %struct.device** %class_dev, align 8, !dbg !5690
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !5690
  br label %if.end, !dbg !5690

if.end:                                           ; preds = %if.then, %entry
  %17 = load i32, i32* %nbytes, align 4, !dbg !5691
  %and = and i32 %17, 1, !dbg !5693
  %tobool = icmp ne i32 %and, 0, !dbg !5693
  br i1 %tobool, label %if.then6, label %if.end8, !dbg !5694

if.then6:                                         ; preds = %if.end
  %18 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5695
  %class_dev7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 4, !dbg !5695
  %19 = load %struct.device*, %struct.device** %class_dev7, align 8, !dbg !5695
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !5695
  %20 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5697
  %events = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %20, i32 0, i32 16, !dbg !5698
  %21 = load i32, i32* %events, align 4, !dbg !5699
  %or = or i32 %21, 16, !dbg !5699
  store i32 %or, i32* %events, align 4, !dbg !5699
  br label %if.end52, !dbg !5700

if.end8:                                          ; preds = %if.end
  %22 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5701
  %23 = load i32, i32* %nbytes, align 4, !dbg !5702
  %call9 = call i32 @comedi_bytes_to_samples(%struct.comedi_subdevice* %22, i32 %23) #5, !dbg !5703
  store i32 %call9, i32* %nsamples, align 4, !dbg !5704
  %24 = load i32, i32* %nsamples, align 4, !dbg !5705
  %tobool10 = icmp ne i32 %24, 0, !dbg !5705
  br i1 %tobool10, label %if.then11, label %if.end19, !dbg !5707

if.then11:                                        ; preds = %if.end8
  %25 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5708
  %26 = load %struct.apci3120_dmabuf*, %struct.apci3120_dmabuf** %dmabuf, align 8, !dbg !5710
  %virt = getelementptr inbounds %struct.apci3120_dmabuf, %struct.apci3120_dmabuf* %26, i32 0, i32 0, !dbg !5711
  %27 = load i16*, i16** %virt, align 8, !dbg !5711
  %28 = bitcast i16* %27 to i8*, !dbg !5710
  %29 = load i32, i32* %nsamples, align 4, !dbg !5712
  %call12 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %25, i8* %28, i32 %29) #5, !dbg !5713
  %30 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5714
  %flags = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %30, i32 0, i32 1, !dbg !5716
  %31 = load i32, i32* %flags, align 4, !dbg !5716
  %and13 = and i32 %31, 32, !dbg !5717
  %tobool14 = icmp ne i32 %and13, 0, !dbg !5717
  br i1 %tobool14, label %if.end18, label %if.then15, !dbg !5718

if.then15:                                        ; preds = %if.then11
  %32 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5719
  %events16 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %32, i32 0, i32 16, !dbg !5720
  %33 = load i32, i32* %events16, align 4, !dbg !5721
  %or17 = or i32 %33, 1, !dbg !5721
  store i32 %or17, i32* %events16, align 4, !dbg !5721
  br label %if.end18, !dbg !5719

if.end18:                                         ; preds = %if.then15, %if.then11
  br label %if.end19, !dbg !5722

if.end19:                                         ; preds = %if.end18, %if.end8
  %34 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5723
  %events20 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %34, i32 0, i32 16, !dbg !5725
  %35 = load i32, i32* %events20, align 4, !dbg !5725
  %and21 = and i32 %35, 50, !dbg !5726
  %tobool22 = icmp ne i32 %and21, 0, !dbg !5726
  br i1 %tobool22, label %if.then27, label %lor.lhs.false, !dbg !5727

lor.lhs.false:                                    ; preds = %if.end19
  %36 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5728
  %stop_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %36, i32 0, i32 10, !dbg !5729
  %37 = load i32, i32* %stop_src, align 8, !dbg !5729
  %cmp23 = icmp eq i32 %37, 32, !dbg !5730
  br i1 %cmp23, label %land.lhs.true, label %if.end28, !dbg !5731

land.lhs.true:                                    ; preds = %lor.lhs.false
  %38 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5732
  %scans_done = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %38, i32 0, i32 11, !dbg !5733
  %39 = load i32, i32* %scans_done, align 8, !dbg !5733
  %40 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5734
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %40, i32 0, i32 11, !dbg !5735
  %41 = load i32, i32* %stop_arg, align 4, !dbg !5735
  %cmp25 = icmp uge i32 %39, %41, !dbg !5736
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !5737

if.then27:                                        ; preds = %land.lhs.true, %if.end19
  br label %if.end52, !dbg !5738

if.end28:                                         ; preds = %land.lhs.true, %lor.lhs.false
  %42 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !5739
  %use_double_buffer = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %42, i32 0, i32 3, !dbg !5741
  %bf.load29 = load i8, i8* %use_double_buffer, align 4, !dbg !5741
  %bf.lshr30 = lshr i8 %bf.load29, 1, !dbg !5741
  %bf.clear31 = and i8 %bf.lshr30, 1, !dbg !5741
  %bf.cast32 = zext i8 %bf.clear31 to i32, !dbg !5741
  %tobool33 = icmp ne i32 %bf.cast32, 0, !dbg !5739
  br i1 %tobool33, label %if.then34, label %if.else, !dbg !5742

if.then34:                                        ; preds = %if.end28
  %43 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !5743
  %cur_dmabuf35 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %43, i32 0, i32 3, !dbg !5745
  %bf.load36 = load i8, i8* %cur_dmabuf35, align 4, !dbg !5745
  %bf.lshr37 = lshr i8 %bf.load36, 2, !dbg !5745
  %bf.clear38 = and i8 %bf.lshr37, 1, !dbg !5745
  %bf.cast39 = zext i8 %bf.clear38 to i32, !dbg !5745
  %tobool40 = icmp ne i32 %bf.cast39, 0, !dbg !5746
  %lnot = xor i1 %tobool40, true, !dbg !5746
  %lnot.ext = zext i1 %lnot to i32, !dbg !5746
  %44 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !5747
  %cur_dmabuf41 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %44, i32 0, i32 3, !dbg !5748
  %45 = trunc i32 %lnot.ext to i8, !dbg !5749
  %bf.load42 = load i8, i8* %cur_dmabuf41, align 4, !dbg !5749
  %bf.value = and i8 %45, 1, !dbg !5749
  %bf.shl = shl i8 %bf.value, 2, !dbg !5749
  %bf.clear43 = and i8 %bf.load42, -5, !dbg !5749
  %bf.set = or i8 %bf.clear43, %bf.shl, !dbg !5749
  store i8 %bf.set, i8* %cur_dmabuf41, align 4, !dbg !5749
  %bf.result.cast = zext i8 %bf.value to i32, !dbg !5749
  %46 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !5750
  %dmabuf44 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %46, i32 0, i32 4, !dbg !5751
  %47 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !5752
  %cur_dmabuf45 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %47, i32 0, i32 3, !dbg !5753
  %bf.load46 = load i8, i8* %cur_dmabuf45, align 4, !dbg !5753
  %bf.lshr47 = lshr i8 %bf.load46, 2, !dbg !5753
  %bf.clear48 = and i8 %bf.lshr47, 1, !dbg !5753
  %bf.cast49 = zext i8 %bf.clear48 to i32, !dbg !5753
  %idxprom50 = zext i32 %bf.cast49 to i64, !dbg !5750
  %arrayidx51 = getelementptr [2 x %struct.apci3120_dmabuf], [2 x %struct.apci3120_dmabuf]* %dmabuf44, i64 0, i64 %idxprom50, !dbg !5750
  store %struct.apci3120_dmabuf* %arrayidx51, %struct.apci3120_dmabuf** %dmabuf, align 8, !dbg !5754
  %48 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5755
  %49 = load %struct.apci3120_dmabuf*, %struct.apci3120_dmabuf** %dmabuf, align 8, !dbg !5756
  call void @apci3120_init_dma(%struct.comedi_device* %48, %struct.apci3120_dmabuf* %49) #5, !dbg !5757
  br label %if.end52, !dbg !5758

if.else:                                          ; preds = %if.end28
  %50 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5759
  %51 = load %struct.apci3120_dmabuf*, %struct.apci3120_dmabuf** %dmabuf, align 8, !dbg !5761
  call void @apci3120_init_dma(%struct.comedi_device* %50, %struct.apci3120_dmabuf* %51) #5, !dbg !5762
  br label %if.end52

if.end52:                                         ; preds = %if.then6, %if.then27, %if.else, %if.then34
  ret void, !dbg !5763
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @inb(i32 %port) #2 !dbg !5764 {
entry:
  %port.addr = alloca i32, align 4
  %value = alloca i8, align 1
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5767, metadata !DIExpression()), !dbg !5768
  call void @llvm.dbg.declare(metadata i8* %value, metadata !5769, metadata !DIExpression()), !dbg !5768
  %0 = load i32, i32* %port.addr, align 4, !dbg !5768
  %1 = call i8 asm sideeffect "inb ${1:w}, ${0:b}", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #7, !dbg !5768, !srcloc !5770
  store i8 %1, i8* %value, align 1, !dbg !5768
  %2 = load i8, i8* %value, align 1, !dbg !5768
  ret i8 %2, !dbg !5768
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_bytes_to_samples(%struct.comedi_subdevice* %s, i32 %nbytes) #2 !dbg !5771 {
entry:
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %nbytes.addr = alloca i32, align 4
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5774, metadata !DIExpression()), !dbg !5775
  store i32 %nbytes, i32* %nbytes.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nbytes.addr, metadata !5776, metadata !DIExpression()), !dbg !5777
  %0 = load i32, i32* %nbytes.addr, align 4, !dbg !5778
  %1 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5779
  %call = call i32 @comedi_sample_shift(%struct.comedi_subdevice* %1) #5, !dbg !5780
  %shr = lshr i32 %0, %call, !dbg !5781
  ret i32 %shr, !dbg !5782
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @apci3120_init_dma(%struct.comedi_device* %dev, %struct.apci3120_dmabuf* %dmabuf) #2 !dbg !5783 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %dmabuf.addr = alloca %struct.apci3120_dmabuf*, align 8
  %devpriv = alloca %struct.apci3120_private*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5786, metadata !DIExpression()), !dbg !5787
  store %struct.apci3120_dmabuf* %dmabuf, %struct.apci3120_dmabuf** %dmabuf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.apci3120_dmabuf** %dmabuf.addr, metadata !5788, metadata !DIExpression()), !dbg !5789
  call void @llvm.dbg.declare(metadata %struct.apci3120_private** %devpriv, metadata !5790, metadata !DIExpression()), !dbg !5791
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5792
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5793
  %1 = load i8*, i8** %private, align 8, !dbg !5793
  %2 = bitcast i8* %1 to %struct.apci3120_private*, !dbg !5792
  store %struct.apci3120_private* %2, %struct.apci3120_private** %devpriv, align 8, !dbg !5791
  %3 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !5794
  %amcc = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %3, i32 0, i32 0, !dbg !5795
  %4 = load i64, i64* %amcc, align 8, !dbg !5795
  %add = add i64 %4, 60, !dbg !5796
  %conv = trunc i64 %add to i32, !dbg !5794
  call void @outl(i32 301989888, i32 %conv) #5, !dbg !5797
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5798
  call void @apci3120_addon_write(%struct.comedi_device* %5, i32 301989888, i32 60) #5, !dbg !5799
  %6 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !5800
  %amcc1 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %6, i32 0, i32 0, !dbg !5801
  %7 = load i64, i64* %amcc1, align 8, !dbg !5801
  %add2 = add i64 %7, 60, !dbg !5802
  %conv3 = trunc i64 %add2 to i32, !dbg !5800
  call void @outl(i32 67109888, i32 %conv3) #5, !dbg !5803
  %8 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5804
  %9 = load %struct.apci3120_dmabuf*, %struct.apci3120_dmabuf** %dmabuf.addr, align 8, !dbg !5805
  %hw = getelementptr inbounds %struct.apci3120_dmabuf, %struct.apci3120_dmabuf* %9, i32 0, i32 1, !dbg !5806
  %10 = load i64, i64* %hw, align 8, !dbg !5806
  %conv4 = trunc i64 %10 to i32, !dbg !5805
  call void @apci3120_addon_write(%struct.comedi_device* %8, i32 %conv4, i32 36) #5, !dbg !5807
  %11 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5808
  %12 = load %struct.apci3120_dmabuf*, %struct.apci3120_dmabuf** %dmabuf.addr, align 8, !dbg !5809
  %use_size = getelementptr inbounds %struct.apci3120_dmabuf, %struct.apci3120_dmabuf* %12, i32 0, i32 3, !dbg !5810
  %13 = load i32, i32* %use_size, align 4, !dbg !5810
  call void @apci3120_addon_write(%struct.comedi_device* %11, i32 %13, i32 88) #5, !dbg !5811
  %14 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !5812
  %amcc5 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %14, i32 0, i32 0, !dbg !5813
  %15 = load i64, i64* %amcc5, align 8, !dbg !5813
  %add6 = add i64 %15, 56, !dbg !5814
  %conv7 = trunc i64 %add6 to i32, !dbg !5812
  call void @outl(i32 536887296, i32 %conv7) #5, !dbg !5815
  %16 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !5816
  %addon = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %16, i32 0, i32 1, !dbg !5817
  %17 = load i64, i64* %addon, align 8, !dbg !5817
  %add8 = add i64 %17, 4, !dbg !5818
  %conv9 = trunc i64 %add8 to i32, !dbg !5816
  call void @outw(i16 zeroext 3, i32 %conv9) #5, !dbg !5819
  ret void, !dbg !5820
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_sample_shift(%struct.comedi_subdevice* %s) #2 !dbg !5821 {
entry:
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5824, metadata !DIExpression()), !dbg !5825
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5826
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 4, !dbg !5827
  %1 = load i32, i32* %subdev_flags, align 4, !dbg !5827
  %and = and i32 %1, 268435456, !dbg !5828
  %tobool = icmp ne i32 %and, 0, !dbg !5826
  %2 = zext i1 %tobool to i64, !dbg !5826
  %cond = select i1 %tobool, i32 2, i32 1, !dbg !5826
  ret i32 %cond, !dbg !5829
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @apci3120_addon_write(%struct.comedi_device* %dev, i32 %val, i32 %reg) #2 !dbg !5830 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %val.addr = alloca i32, align 4
  %reg.addr = alloca i32, align 4
  %devpriv = alloca %struct.apci3120_private*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5833, metadata !DIExpression()), !dbg !5834
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5835, metadata !DIExpression()), !dbg !5836
  store i32 %reg, i32* %reg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reg.addr, metadata !5837, metadata !DIExpression()), !dbg !5838
  call void @llvm.dbg.declare(metadata %struct.apci3120_private** %devpriv, metadata !5839, metadata !DIExpression()), !dbg !5840
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5841
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5842
  %1 = load i8*, i8** %private, align 8, !dbg !5842
  %2 = bitcast i8* %1 to %struct.apci3120_private*, !dbg !5841
  store %struct.apci3120_private* %2, %struct.apci3120_private** %devpriv, align 8, !dbg !5840
  %3 = load i32, i32* %reg.addr, align 4, !dbg !5843
  %conv = trunc i32 %3 to i16, !dbg !5843
  %4 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !5844
  %addon = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %4, i32 0, i32 1, !dbg !5845
  %5 = load i64, i64* %addon, align 8, !dbg !5845
  %add = add i64 %5, 0, !dbg !5846
  %conv1 = trunc i64 %add to i32, !dbg !5844
  call void @outw(i16 zeroext %conv, i32 %conv1) #5, !dbg !5847
  %6 = load i32, i32* %val.addr, align 4, !dbg !5848
  %and = and i32 %6, 65535, !dbg !5849
  %conv2 = trunc i32 %and to i16, !dbg !5848
  %7 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !5850
  %addon3 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %7, i32 0, i32 1, !dbg !5851
  %8 = load i64, i64* %addon3, align 8, !dbg !5851
  %add4 = add i64 %8, 2, !dbg !5852
  %conv5 = trunc i64 %add4 to i32, !dbg !5850
  call void @outw(i16 zeroext %conv2, i32 %conv5) #5, !dbg !5853
  %9 = load i32, i32* %reg.addr, align 4, !dbg !5854
  %add6 = add i32 %9, 2, !dbg !5855
  %conv7 = trunc i32 %add6 to i16, !dbg !5854
  %10 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !5856
  %addon8 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %10, i32 0, i32 1, !dbg !5857
  %11 = load i64, i64* %addon8, align 8, !dbg !5857
  %add9 = add i64 %11, 0, !dbg !5858
  %conv10 = trunc i64 %add9 to i32, !dbg !5856
  call void @outw(i16 zeroext %conv7, i32 %conv10) #5, !dbg !5859
  %12 = load i32, i32* %val.addr, align 4, !dbg !5860
  %shr = lshr i32 %12, 16, !dbg !5861
  %and11 = and i32 %shr, 65535, !dbg !5862
  %conv12 = trunc i32 %and11 to i16, !dbg !5863
  %13 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !5864
  %addon13 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %13, i32 0, i32 1, !dbg !5865
  %14 = load i64, i64* %addon13, align 8, !dbg !5865
  %add14 = add i64 %14, 2, !dbg !5866
  %conv15 = trunc i64 %add14 to i32, !dbg !5864
  call void @outw(i16 zeroext %conv12, i32 %conv15) #5, !dbg !5867
  ret void, !dbg !5868
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dma_alloc_coherent(%struct.device* %dev, i64 %size, i64* %dma_handle, i32 %gfp) #2 !dbg !5869 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %dma_handle.addr = alloca i64*, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5873, metadata !DIExpression()), !dbg !5874
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5875, metadata !DIExpression()), !dbg !5876
  store i64* %dma_handle, i64** %dma_handle.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %dma_handle.addr, metadata !5877, metadata !DIExpression()), !dbg !5878
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !5879, metadata !DIExpression()), !dbg !5880
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5881
  %1 = load i64, i64* %size.addr, align 8, !dbg !5882
  %2 = load i64*, i64** %dma_handle.addr, align 8, !dbg !5883
  %3 = load i32, i32* %gfp.addr, align 4, !dbg !5884
  %4 = load i32, i32* %gfp.addr, align 4, !dbg !5885
  %and = and i32 %4, 8192, !dbg !5886
  %tobool = icmp ne i32 %and, 0, !dbg !5887
  %5 = zext i1 %tobool to i64, !dbg !5887
  %cond = select i1 %tobool, i64 256, i64 0, !dbg !5887
  %call = call i8* @dma_alloc_attrs(%struct.device* %0, i64 %1, i64* %2, i32 %3, i64 %cond) #5, !dbg !5888
  ret i8* %call, !dbg !5889
}

; Function Attrs: noredzone
declare dso_local i8* @dma_alloc_attrs(%struct.device*, i64, i64*, i32, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @apci3120_set_chanlist(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, i32 %n_chan, i32* %chanlist) #2 !dbg !5890 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %n_chan.addr = alloca i32, align 4
  %chanlist.addr = alloca i32*, align 8
  %devpriv = alloca %struct.apci3120_private*, align 8
  %i = alloca i32, align 4
  %chan = alloca i32, align 4
  %range = alloca i32, align 4
  %val = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5893, metadata !DIExpression()), !dbg !5894
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5895, metadata !DIExpression()), !dbg !5896
  store i32 %n_chan, i32* %n_chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n_chan.addr, metadata !5897, metadata !DIExpression()), !dbg !5898
  store i32* %chanlist, i32** %chanlist.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %chanlist.addr, metadata !5899, metadata !DIExpression()), !dbg !5900
  call void @llvm.dbg.declare(metadata %struct.apci3120_private** %devpriv, metadata !5901, metadata !DIExpression()), !dbg !5902
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5903
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5904
  %1 = load i8*, i8** %private, align 8, !dbg !5904
  %2 = bitcast i8* %1 to %struct.apci3120_private*, !dbg !5903
  store %struct.apci3120_private* %2, %struct.apci3120_private** %devpriv, align 8, !dbg !5902
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5905, metadata !DIExpression()), !dbg !5906
  store i32 0, i32* %i, align 4, !dbg !5907
  br label %for.cond, !dbg !5909

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !dbg !5910
  %4 = load i32, i32* %n_chan.addr, align 4, !dbg !5912
  %cmp = icmp slt i32 %3, %4, !dbg !5913
  br i1 %cmp, label %for.body, label %for.end, !dbg !5914

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !5915, metadata !DIExpression()), !dbg !5917
  %5 = load i32*, i32** %chanlist.addr, align 8, !dbg !5918
  %6 = load i32, i32* %i, align 4, !dbg !5918
  %idxprom = sext i32 %6 to i64, !dbg !5918
  %arrayidx = getelementptr i32, i32* %5, i64 %idxprom, !dbg !5918
  %7 = load i32, i32* %arrayidx, align 4, !dbg !5918
  %and = and i32 %7, 65535, !dbg !5918
  store i32 %and, i32* %chan, align 4, !dbg !5917
  call void @llvm.dbg.declare(metadata i32* %range, metadata !5919, metadata !DIExpression()), !dbg !5920
  %8 = load i32*, i32** %chanlist.addr, align 8, !dbg !5921
  %9 = load i32, i32* %i, align 4, !dbg !5921
  %idxprom1 = sext i32 %9 to i64, !dbg !5921
  %arrayidx2 = getelementptr i32, i32* %8, i64 %idxprom1, !dbg !5921
  %10 = load i32, i32* %arrayidx2, align 4, !dbg !5921
  %shr = lshr i32 %10, 16, !dbg !5921
  %and3 = and i32 %shr, 255, !dbg !5921
  store i32 %and3, i32* %range, align 4, !dbg !5920
  call void @llvm.dbg.declare(metadata i32* %val, metadata !5922, metadata !DIExpression()), !dbg !5923
  %11 = load i32, i32* %chan, align 4, !dbg !5924
  %and4 = and i32 %11, 15, !dbg !5924
  %shl = shl i32 %and4, 0, !dbg !5924
  %12 = load i32, i32* %range, align 4, !dbg !5925
  %and5 = and i32 %12, 3, !dbg !5925
  %shl6 = shl i32 %and5, 4, !dbg !5925
  %or = or i32 %shl, %shl6, !dbg !5926
  %13 = load i32, i32* %i, align 4, !dbg !5927
  %and7 = and i32 %13, 15, !dbg !5927
  %shl8 = shl i32 %and7, 8, !dbg !5927
  %or9 = or i32 %or, %shl8, !dbg !5928
  store i32 %or9, i32* %val, align 4, !dbg !5929
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5930
  %15 = load i32, i32* %range, align 4, !dbg !5932
  %call = call zeroext i1 @comedi_range_is_unipolar(%struct.comedi_subdevice* %14, i32 %15) #5, !dbg !5933
  br i1 %call, label %if.then, label %if.end, !dbg !5934

if.then:                                          ; preds = %for.body
  %16 = load i32, i32* %val, align 4, !dbg !5935
  %conv = zext i32 %16 to i64, !dbg !5935
  %or10 = or i64 %conv, 128, !dbg !5935
  %conv11 = trunc i64 %or10 to i32, !dbg !5935
  store i32 %conv11, i32* %val, align 4, !dbg !5935
  br label %if.end, !dbg !5936

if.end:                                           ; preds = %if.then, %for.body
  %17 = load i32, i32* %val, align 4, !dbg !5937
  %conv12 = trunc i32 %17 to i16, !dbg !5937
  %18 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5938
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 18, !dbg !5939
  %19 = load i64, i64* %iobase, align 8, !dbg !5939
  %add = add i64 %19, 6, !dbg !5940
  %conv13 = trunc i64 %add to i32, !dbg !5938
  call void @outw(i16 zeroext %conv12, i32 %conv13) #5, !dbg !5941
  br label %for.inc, !dbg !5942

for.inc:                                          ; preds = %if.end
  %20 = load i32, i32* %i, align 4, !dbg !5943
  %inc = add i32 %20, 1, !dbg !5943
  store i32 %inc, i32* %i, align 4, !dbg !5943
  br label %for.cond, !dbg !5944, !llvm.loop !5945

for.end:                                          ; preds = %for.cond
  %21 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5947
  %iobase14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %21, i32 0, i32 18, !dbg !5948
  %22 = load i64, i64* %iobase14, align 8, !dbg !5948
  %add15 = add i64 %22, 12, !dbg !5949
  %conv16 = trunc i64 %add15 to i32, !dbg !5947
  %call17 = call zeroext i16 @inw(i32 %conv16) #5, !dbg !5950
  %23 = load i32, i32* %n_chan.addr, align 4, !dbg !5951
  %sub = sub i32 %23, 1, !dbg !5951
  %and18 = and i32 %sub, 15, !dbg !5951
  %shl19 = shl i32 %and18, 8, !dbg !5951
  %conv20 = trunc i32 %shl19 to i16, !dbg !5951
  %24 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !5952
  %ctrl = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %24, i32 0, i32 8, !dbg !5953
  store i16 %conv20, i16* %ctrl, align 4, !dbg !5954
  %25 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !5955
  %ctrl21 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %25, i32 0, i32 8, !dbg !5956
  %26 = load i16, i16* %ctrl21, align 4, !dbg !5956
  %27 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5957
  %iobase22 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %27, i32 0, i32 18, !dbg !5958
  %28 = load i64, i64* %iobase22, align 8, !dbg !5958
  %add23 = add i64 %28, 0, !dbg !5959
  %conv24 = trunc i64 %add23 to i32, !dbg !5957
  call void @outw(i16 zeroext %26, i32 %conv24) #5, !dbg !5960
  %29 = load i32, i32* %n_chan.addr, align 4, !dbg !5961
  %cmp25 = icmp sgt i32 %29, 1, !dbg !5963
  br i1 %cmp25, label %if.then27, label %if.end31, !dbg !5964

if.then27:                                        ; preds = %for.end
  %30 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !5965
  %mode = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %30, i32 0, i32 7, !dbg !5966
  %31 = load i8, i8* %mode, align 2, !dbg !5967
  %conv28 = zext i8 %31 to i64, !dbg !5967
  %or29 = or i64 %conv28, 8, !dbg !5967
  %conv30 = trunc i64 %or29 to i8, !dbg !5967
  store i8 %conv30, i8* %mode, align 2, !dbg !5967
  br label %if.end31, !dbg !5965

if.end31:                                         ; preds = %if.then27, %for.end
  ret void, !dbg !5968
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @apci3120_timer_set_mode(%struct.comedi_device* %dev, i32 %timer, i32 %mode) #2 !dbg !5969 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %timer.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %devpriv = alloca %struct.apci3120_private*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5970, metadata !DIExpression()), !dbg !5971
  store i32 %timer, i32* %timer.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %timer.addr, metadata !5972, metadata !DIExpression()), !dbg !5973
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !5974, metadata !DIExpression()), !dbg !5975
  call void @llvm.dbg.declare(metadata %struct.apci3120_private** %devpriv, metadata !5976, metadata !DIExpression()), !dbg !5977
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5978
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5979
  %1 = load i8*, i8** %private, align 8, !dbg !5979
  %2 = bitcast i8* %1 to %struct.apci3120_private*, !dbg !5978
  store %struct.apci3120_private* %2, %struct.apci3120_private** %devpriv, align 8, !dbg !5977
  %3 = load i32, i32* %timer.addr, align 4, !dbg !5980
  %mul = mul i32 %3, 2, !dbg !5980
  %shl = shl i32 3, %mul, !dbg !5980
  %neg = xor i32 %shl, -1, !dbg !5981
  %4 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !5982
  %timer_mode = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %4, i32 0, i32 6, !dbg !5983
  %5 = load i8, i8* %timer_mode, align 1, !dbg !5984
  %conv = zext i8 %5 to i32, !dbg !5984
  %and = and i32 %conv, %neg, !dbg !5984
  %conv1 = trunc i32 %and to i8, !dbg !5984
  store i8 %conv1, i8* %timer_mode, align 1, !dbg !5984
  %6 = load i32, i32* %mode.addr, align 4, !dbg !5985
  %7 = load i32, i32* %timer.addr, align 4, !dbg !5985
  %mul2 = mul i32 %7, 2, !dbg !5985
  %shl3 = shl i32 %6, %mul2, !dbg !5985
  %8 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !5986
  %timer_mode4 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %8, i32 0, i32 6, !dbg !5987
  %9 = load i8, i8* %timer_mode4, align 1, !dbg !5988
  %conv5 = zext i8 %9 to i32, !dbg !5988
  %or = or i32 %conv5, %shl3, !dbg !5988
  %conv6 = trunc i32 %or to i8, !dbg !5988
  store i8 %conv6, i8* %timer_mode4, align 1, !dbg !5988
  %10 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !5989
  %timer_mode7 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %10, i32 0, i32 6, !dbg !5990
  %11 = load i8, i8* %timer_mode7, align 1, !dbg !5990
  %12 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5991
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 18, !dbg !5992
  %13 = load i64, i64* %iobase, align 8, !dbg !5992
  %add = add i64 %13, 12, !dbg !5993
  %conv8 = trunc i64 %add to i32, !dbg !5991
  call void @outb(i8 zeroext %11, i32 %conv8) #5, !dbg !5994
  ret void, !dbg !5995
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @apci3120_timer_enable(%struct.comedi_device* %dev, i32 %timer, i1 zeroext %enable) #2 !dbg !5996 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %timer.addr = alloca i32, align 4
  %enable.addr = alloca i8, align 1
  %devpriv = alloca %struct.apci3120_private*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5999, metadata !DIExpression()), !dbg !6000
  store i32 %timer, i32* %timer.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %timer.addr, metadata !6001, metadata !DIExpression()), !dbg !6002
  %frombool = zext i1 %enable to i8
  store i8 %frombool, i8* %enable.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %enable.addr, metadata !6003, metadata !DIExpression()), !dbg !6004
  call void @llvm.dbg.declare(metadata %struct.apci3120_private** %devpriv, metadata !6005, metadata !DIExpression()), !dbg !6006
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6007
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !6008
  %1 = load i8*, i8** %private, align 8, !dbg !6008
  %2 = bitcast i8* %1 to %struct.apci3120_private*, !dbg !6007
  store %struct.apci3120_private* %2, %struct.apci3120_private** %devpriv, align 8, !dbg !6006
  %3 = load i8, i8* %enable.addr, align 1, !dbg !6009
  %tobool = trunc i8 %3 to i1, !dbg !6009
  br i1 %tobool, label %if.then, label %if.else, !dbg !6011

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %timer.addr, align 4, !dbg !6012
  %add = add i32 12, %4, !dbg !6012
  %sh_prom = zext i32 %add to i64, !dbg !6012
  %shl = shl i64 1, %sh_prom, !dbg !6012
  %5 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !6013
  %ctrl = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %5, i32 0, i32 8, !dbg !6014
  %6 = load i16, i16* %ctrl, align 4, !dbg !6015
  %conv = zext i16 %6 to i64, !dbg !6015
  %or = or i64 %conv, %shl, !dbg !6015
  %conv1 = trunc i64 %or to i16, !dbg !6015
  store i16 %conv1, i16* %ctrl, align 4, !dbg !6015
  br label %if.end, !dbg !6013

if.else:                                          ; preds = %entry
  %7 = load i32, i32* %timer.addr, align 4, !dbg !6016
  %add2 = add i32 12, %7, !dbg !6016
  %sh_prom3 = zext i32 %add2 to i64, !dbg !6016
  %shl4 = shl i64 1, %sh_prom3, !dbg !6016
  %neg = xor i64 %shl4, -1, !dbg !6017
  %8 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !6018
  %ctrl5 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %8, i32 0, i32 8, !dbg !6019
  %9 = load i16, i16* %ctrl5, align 4, !dbg !6020
  %conv6 = zext i16 %9 to i64, !dbg !6020
  %and = and i64 %conv6, %neg, !dbg !6020
  %conv7 = trunc i64 %and to i16, !dbg !6020
  store i16 %conv7, i16* %ctrl5, align 4, !dbg !6020
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !6021
  %ctrl8 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %10, i32 0, i32 8, !dbg !6022
  %11 = load i16, i16* %ctrl8, align 4, !dbg !6022
  %12 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6023
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 18, !dbg !6024
  %13 = load i64, i64* %iobase, align 8, !dbg !6024
  %add9 = add i64 %13, 0, !dbg !6025
  %conv10 = trunc i64 %add9 to i32, !dbg !6023
  call void @outw(i16 zeroext %11, i32 %conv10) #5, !dbg !6026
  ret void, !dbg !6027
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci3120_ns_to_timer(%struct.comedi_device* %dev, i32 %timer, i32 %ns, i32 %flags) #2 !dbg !6028 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %timer.addr = alloca i32, align 4
  %ns.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %devpriv = alloca %struct.apci3120_private*, align 8
  %prescale = alloca i32, align 4
  %timer_base = alloca i32, align 4
  %divisor = alloca i32, align 4
  %__x = alloca i32, align 4
  %__d = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !6031, metadata !DIExpression()), !dbg !6032
  store i32 %timer, i32* %timer.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %timer.addr, metadata !6033, metadata !DIExpression()), !dbg !6034
  store i32 %ns, i32* %ns.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ns.addr, metadata !6035, metadata !DIExpression()), !dbg !6036
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6037, metadata !DIExpression()), !dbg !6038
  call void @llvm.dbg.declare(metadata %struct.apci3120_private** %devpriv, metadata !6039, metadata !DIExpression()), !dbg !6040
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6041
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !6042
  %1 = load i8*, i8** %private, align 8, !dbg !6042
  %2 = bitcast i8* %1 to %struct.apci3120_private*, !dbg !6041
  store %struct.apci3120_private* %2, %struct.apci3120_private** %devpriv, align 8, !dbg !6040
  call void @llvm.dbg.declare(metadata i32* %prescale, metadata !6043, metadata !DIExpression()), !dbg !6044
  %3 = load i32, i32* %timer.addr, align 4, !dbg !6045
  %cmp = icmp eq i32 %3, 0, !dbg !6046
  %4 = zext i1 %cmp to i64, !dbg !6047
  %cond = select i1 %cmp, i32 10, i32 1000, !dbg !6047
  store i32 %cond, i32* %prescale, align 4, !dbg !6044
  call void @llvm.dbg.declare(metadata i32* %timer_base, metadata !6048, metadata !DIExpression()), !dbg !6049
  %5 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !6050
  %osc_base = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %5, i32 0, i32 2, !dbg !6051
  %6 = load i32, i32* %osc_base, align 8, !dbg !6051
  %7 = load i32, i32* %prescale, align 4, !dbg !6052
  %mul = mul i32 %6, %7, !dbg !6053
  store i32 %mul, i32* %timer_base, align 4, !dbg !6049
  call void @llvm.dbg.declare(metadata i32* %divisor, metadata !6054, metadata !DIExpression()), !dbg !6055
  %8 = load i32, i32* %flags.addr, align 4, !dbg !6056
  %and = and i32 %8, 196608, !dbg !6057
  switch i32 %and, label %sw.default [
    i32 131072, label %sw.bb
    i32 65536, label %sw.bb1
    i32 0, label %sw.bb3
  ], !dbg !6058

sw.bb:                                            ; preds = %entry
  %9 = load i32, i32* %ns.addr, align 4, !dbg !6059
  %10 = load i32, i32* %timer_base, align 4, !dbg !6059
  %add = add i32 %9, %10, !dbg !6059
  %sub = sub i32 %add, 1, !dbg !6059
  %11 = load i32, i32* %timer_base, align 4, !dbg !6059
  %div = udiv i32 %sub, %11, !dbg !6059
  store i32 %div, i32* %divisor, align 4, !dbg !6061
  br label %sw.epilog, !dbg !6062

sw.bb1:                                           ; preds = %entry
  %12 = load i32, i32* %ns.addr, align 4, !dbg !6063
  %13 = load i32, i32* %timer_base, align 4, !dbg !6064
  %div2 = udiv i32 %12, %13, !dbg !6065
  store i32 %div2, i32* %divisor, align 4, !dbg !6066
  br label %sw.epilog, !dbg !6067

sw.bb3:                                           ; preds = %entry
  br label %sw.default, !dbg !6067

sw.default:                                       ; preds = %entry, %sw.bb3
  call void @llvm.dbg.declare(metadata i32* %__x, metadata !6068, metadata !DIExpression()), !dbg !6070
  %14 = load i32, i32* %ns.addr, align 4, !dbg !6070
  store i32 %14, i32* %__x, align 4, !dbg !6070
  call void @llvm.dbg.declare(metadata i32* %__d, metadata !6071, metadata !DIExpression()), !dbg !6070
  %15 = load i32, i32* %timer_base, align 4, !dbg !6070
  store i32 %15, i32* %__d, align 4, !dbg !6070
  %16 = load i32, i32* %__x, align 4, !dbg !6070
  %17 = load i32, i32* %__d, align 4, !dbg !6070
  %div4 = udiv i32 %17, 2, !dbg !6070
  %add5 = add i32 %16, %div4, !dbg !6070
  %18 = load i32, i32* %__d, align 4, !dbg !6070
  %div6 = udiv i32 %add5, %18, !dbg !6070
  store i32 %div6, i32* %tmp, align 4, !dbg !6070
  %19 = load i32, i32* %tmp, align 4, !dbg !6070
  store i32 %19, i32* %divisor, align 4, !dbg !6072
  br label %sw.epilog, !dbg !6073

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %sw.bb
  %20 = load i32, i32* %timer.addr, align 4, !dbg !6074
  %cmp7 = icmp eq i32 %20, 2, !dbg !6076
  br i1 %cmp7, label %if.then, label %if.else, !dbg !6077

if.then:                                          ; preds = %sw.epilog
  %21 = load i32, i32* %divisor, align 4, !dbg !6078
  %cmp8 = icmp ugt i32 %21, 16777215, !dbg !6081
  br i1 %cmp8, label %if.then9, label %if.end, !dbg !6082

if.then9:                                         ; preds = %if.then
  store i32 16777215, i32* %divisor, align 4, !dbg !6083
  br label %if.end, !dbg !6084

if.end:                                           ; preds = %if.then9, %if.then
  br label %if.end13, !dbg !6085

if.else:                                          ; preds = %sw.epilog
  %22 = load i32, i32* %divisor, align 4, !dbg !6086
  %cmp10 = icmp ugt i32 %22, 65535, !dbg !6089
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !6090

if.then11:                                        ; preds = %if.else
  store i32 65535, i32* %divisor, align 4, !dbg !6091
  br label %if.end12, !dbg !6092

if.end12:                                         ; preds = %if.then11, %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end
  %23 = load i32, i32* %divisor, align 4, !dbg !6093
  %cmp14 = icmp ult i32 %23, 2, !dbg !6095
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !6096

if.then15:                                        ; preds = %if.end13
  store i32 2, i32* %divisor, align 4, !dbg !6097
  br label %if.end16, !dbg !6098

if.end16:                                         ; preds = %if.then15, %if.end13
  %24 = load i32, i32* %divisor, align 4, !dbg !6099
  ret i32 %24, !dbg !6100
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @apci3120_timer_write(%struct.comedi_device* %dev, i32 %timer, i32 %val) #2 !dbg !6101 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %timer.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %devpriv = alloca %struct.apci3120_private*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !6102, metadata !DIExpression()), !dbg !6103
  store i32 %timer, i32* %timer.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %timer.addr, metadata !6104, metadata !DIExpression()), !dbg !6105
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !6106, metadata !DIExpression()), !dbg !6107
  call void @llvm.dbg.declare(metadata %struct.apci3120_private** %devpriv, metadata !6108, metadata !DIExpression()), !dbg !6109
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6110
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !6111
  %1 = load i8*, i8** %private, align 8, !dbg !6111
  %2 = bitcast i8* %1 to %struct.apci3120_private*, !dbg !6110
  store %struct.apci3120_private* %2, %struct.apci3120_private** %devpriv, align 8, !dbg !6109
  %3 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !6112
  %do_bits = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %3, i32 0, i32 5, !dbg !6112
  %4 = load i8, i8* %do_bits, align 8, !dbg !6112
  %conv = zext i8 %4 to i32, !dbg !6112
  %shl = shl i32 %conv, 4, !dbg !6112
  %5 = load i32, i32* %timer.addr, align 4, !dbg !6113
  %shl1 = shl i32 %5, 0, !dbg !6113
  %or = or i32 %shl, %shl1, !dbg !6114
  %conv2 = trunc i32 %or to i8, !dbg !6112
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6115
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 18, !dbg !6116
  %7 = load i64, i64* %iobase, align 8, !dbg !6116
  %add = add i64 %7, 13, !dbg !6117
  %conv3 = trunc i64 %add to i32, !dbg !6115
  call void @outb(i8 zeroext %conv2, i32 %conv3) #5, !dbg !6118
  %8 = load i32, i32* %val.addr, align 4, !dbg !6119
  %and = and i32 %8, 65535, !dbg !6120
  %conv4 = trunc i32 %and to i16, !dbg !6119
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6121
  %iobase5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 18, !dbg !6122
  %10 = load i64, i64* %iobase5, align 8, !dbg !6122
  %add6 = add i64 %10, 4, !dbg !6123
  %conv7 = trunc i64 %add6 to i32, !dbg !6121
  call void @outw(i16 zeroext %conv4, i32 %conv7) #5, !dbg !6124
  %11 = load i32, i32* %timer.addr, align 4, !dbg !6125
  %cmp = icmp eq i32 %11, 2, !dbg !6127
  br i1 %cmp, label %if.then, label %if.end, !dbg !6128

if.then:                                          ; preds = %entry
  %12 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !6129
  %do_bits9 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %12, i32 0, i32 5, !dbg !6129
  %13 = load i8, i8* %do_bits9, align 8, !dbg !6129
  %conv10 = zext i8 %13 to i32, !dbg !6129
  %shl11 = shl i32 %conv10, 4, !dbg !6129
  %14 = load i32, i32* %timer.addr, align 4, !dbg !6131
  %add12 = add i32 %14, 1, !dbg !6131
  %shl13 = shl i32 %add12, 0, !dbg !6131
  %or14 = or i32 %shl11, %shl13, !dbg !6132
  %conv15 = trunc i32 %or14 to i8, !dbg !6129
  %15 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6133
  %iobase16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 18, !dbg !6134
  %16 = load i64, i64* %iobase16, align 8, !dbg !6134
  %add17 = add i64 %16, 13, !dbg !6135
  %conv18 = trunc i64 %add17 to i32, !dbg !6133
  call void @outb(i8 zeroext %conv15, i32 %conv18) #5, !dbg !6136
  %17 = load i32, i32* %val.addr, align 4, !dbg !6137
  %shr = lshr i32 %17, 16, !dbg !6138
  %and19 = and i32 %shr, 65535, !dbg !6139
  %conv20 = trunc i32 %and19 to i16, !dbg !6140
  %18 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6141
  %iobase21 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 18, !dbg !6142
  %19 = load i64, i64* %iobase21, align 8, !dbg !6142
  %add22 = add i64 %19, 4, !dbg !6143
  %conv23 = trunc i64 %add22 to i32, !dbg !6141
  call void @outw(i16 zeroext %conv20, i32 %conv23) #5, !dbg !6144
  br label %if.end, !dbg !6145

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6146
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_timeout(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i64)*, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci3120_ai_eoc(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i64 %context) #2 !dbg !6147 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %context.addr = alloca i64, align 8
  %status = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !6150, metadata !DIExpression()), !dbg !6151
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !6152, metadata !DIExpression()), !dbg !6153
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !6154, metadata !DIExpression()), !dbg !6155
  store i64 %context, i64* %context.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %context.addr, metadata !6156, metadata !DIExpression()), !dbg !6157
  call void @llvm.dbg.declare(metadata i32* %status, metadata !6158, metadata !DIExpression()), !dbg !6159
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6160
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 18, !dbg !6161
  %1 = load i64, i64* %iobase, align 8, !dbg !6161
  %add = add i64 %1, 2, !dbg !6162
  %conv = trunc i64 %add to i32, !dbg !6160
  %call = call zeroext i16 @inw(i32 %conv) #5, !dbg !6163
  %conv1 = zext i16 %call to i32, !dbg !6163
  store i32 %conv1, i32* %status, align 4, !dbg !6164
  %2 = load i32, i32* %status, align 4, !dbg !6165
  %conv2 = zext i32 %2 to i64, !dbg !6165
  %and = and i64 %conv2, 32768, !dbg !6167
  %cmp = icmp eq i64 %and, 0, !dbg !6168
  br i1 %cmp, label %if.then, label %if.end, !dbg !6169

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6170
  br label %return, !dbg !6170

if.end:                                           ; preds = %entry
  store i32 -16, i32* %retval, align 4, !dbg !6171
  br label %return, !dbg !6171

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !6172
  ret i32 %3, !dbg !6172
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @comedi_range_is_unipolar(%struct.comedi_subdevice* %s, i32 %range) #2 !dbg !6173 {
entry:
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %range.addr = alloca i32, align 4
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !6176, metadata !DIExpression()), !dbg !6177
  store i32 %range, i32* %range.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %range.addr, metadata !6178, metadata !DIExpression()), !dbg !6179
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6180
  %range_table = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 15, !dbg !6181
  %1 = load %struct.comedi_lrange*, %struct.comedi_lrange** %range_table, align 8, !dbg !6181
  %range1 = getelementptr inbounds %struct.comedi_lrange, %struct.comedi_lrange* %1, i32 0, i32 1, !dbg !6182
  %2 = load i32, i32* %range.addr, align 4, !dbg !6183
  %idxprom = zext i32 %2 to i64, !dbg !6180
  %arrayidx = getelementptr [0 x %struct.comedi_krange], [0 x %struct.comedi_krange]* %range1, i64 0, i64 %idxprom, !dbg !6180
  %min = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %arrayidx, i32 0, i32 0, !dbg !6184
  %3 = load i32, i32* %min, align 4, !dbg !6184
  %cmp = icmp sge i32 %3, 0, !dbg !6185
  ret i1 %cmp, !dbg !6186
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_src(i32* %src, i32 %flags) #2 !dbg !6187 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i32*, align 8
  %flags.addr = alloca i32, align 4
  %orig_src = alloca i32, align 4
  store i32* %src, i32** %src.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %src.addr, metadata !6190, metadata !DIExpression()), !dbg !6191
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6192, metadata !DIExpression()), !dbg !6193
  call void @llvm.dbg.declare(metadata i32* %orig_src, metadata !6194, metadata !DIExpression()), !dbg !6195
  %0 = load i32*, i32** %src.addr, align 8, !dbg !6196
  %1 = load i32, i32* %0, align 4, !dbg !6197
  store i32 %1, i32* %orig_src, align 4, !dbg !6195
  %2 = load i32, i32* %orig_src, align 4, !dbg !6198
  %3 = load i32, i32* %flags.addr, align 4, !dbg !6199
  %and = and i32 %2, %3, !dbg !6200
  %4 = load i32*, i32** %src.addr, align 8, !dbg !6201
  store i32 %and, i32* %4, align 4, !dbg !6202
  %5 = load i32*, i32** %src.addr, align 8, !dbg !6203
  %6 = load i32, i32* %5, align 4, !dbg !6205
  %cmp = icmp eq i32 %6, 0, !dbg !6206
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !6207

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32*, i32** %src.addr, align 8, !dbg !6208
  %8 = load i32, i32* %7, align 4, !dbg !6209
  %9 = load i32, i32* %orig_src, align 4, !dbg !6210
  %cmp1 = icmp ne i32 %8, %9, !dbg !6211
  br i1 %cmp1, label %if.then, label %if.end, !dbg !6212

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !6213
  br label %return, !dbg !6213

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %retval, align 4, !dbg !6214
  br label %return, !dbg !6214

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !6215
  ret i32 %10, !dbg !6215
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_is_unique(i32 %src) #2 !dbg !6216 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i32, align 4
  store i32 %src, i32* %src.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %src.addr, metadata !6219, metadata !DIExpression()), !dbg !6220
  %0 = load i32, i32* %src.addr, align 4, !dbg !6221
  %1 = load i32, i32* %src.addr, align 4, !dbg !6223
  %sub = sub i32 %1, 1, !dbg !6224
  %and = and i32 %0, %sub, !dbg !6225
  %cmp = icmp ne i32 %and, 0, !dbg !6226
  br i1 %cmp, label %if.then, label %if.end, !dbg !6227

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !6228
  br label %return, !dbg !6228

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6229
  br label %return, !dbg !6229

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !6230
  ret i32 %2, !dbg !6230
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_arg_is(i32* %arg, i32 %val) #2 !dbg !6231 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i32*, align 8
  %val.addr = alloca i32, align 4
  store i32* %arg, i32** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %arg.addr, metadata !6232, metadata !DIExpression()), !dbg !6233
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !6234, metadata !DIExpression()), !dbg !6235
  %0 = load i32*, i32** %arg.addr, align 8, !dbg !6236
  %1 = load i32, i32* %0, align 4, !dbg !6238
  %2 = load i32, i32* %val.addr, align 4, !dbg !6239
  %cmp = icmp ne i32 %1, %2, !dbg !6240
  br i1 %cmp, label %if.then, label %if.end, !dbg !6241

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %val.addr, align 4, !dbg !6242
  %4 = load i32*, i32** %arg.addr, align 8, !dbg !6244
  store i32 %3, i32* %4, align 4, !dbg !6245
  store i32 -22, i32* %retval, align 4, !dbg !6246
  br label %return, !dbg !6246

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6247
  br label %return, !dbg !6247

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !6248
  ret i32 %5, !dbg !6248
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_arg_min(i32* %arg, i32 %val) #2 !dbg !6249 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i32*, align 8
  %val.addr = alloca i32, align 4
  store i32* %arg, i32** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %arg.addr, metadata !6250, metadata !DIExpression()), !dbg !6251
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !6252, metadata !DIExpression()), !dbg !6253
  %0 = load i32*, i32** %arg.addr, align 8, !dbg !6254
  %1 = load i32, i32* %0, align 4, !dbg !6256
  %2 = load i32, i32* %val.addr, align 4, !dbg !6257
  %cmp = icmp ult i32 %1, %2, !dbg !6258
  br i1 %cmp, label %if.then, label %if.end, !dbg !6259

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %val.addr, align 4, !dbg !6260
  %4 = load i32*, i32** %arg.addr, align 8, !dbg !6262
  store i32 %3, i32* %4, align 4, !dbg !6263
  store i32 -22, i32* %retval, align 4, !dbg !6264
  br label %return, !dbg !6264

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6265
  br label %return, !dbg !6265

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !6266
  ret i32 %5, !dbg !6266
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @apci3120_setup_dma(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #2 !dbg !6267 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %devpriv = alloca %struct.apci3120_private*, align 8
  %cmd = alloca %struct.comedi_cmd*, align 8
  %dmabuf0 = alloca %struct.apci3120_dmabuf*, align 8
  %dmabuf1 = alloca %struct.apci3120_dmabuf*, align 8
  %dmalen0 = alloca i32, align 4
  %dmalen1 = alloca i32, align 4
  %scan_bytes = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !6268, metadata !DIExpression()), !dbg !6269
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !6270, metadata !DIExpression()), !dbg !6271
  call void @llvm.dbg.declare(metadata %struct.apci3120_private** %devpriv, metadata !6272, metadata !DIExpression()), !dbg !6273
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6274
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !6275
  %1 = load i8*, i8** %private, align 8, !dbg !6275
  %2 = bitcast i8* %1 to %struct.apci3120_private*, !dbg !6274
  store %struct.apci3120_private* %2, %struct.apci3120_private** %devpriv, align 8, !dbg !6273
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd, metadata !6276, metadata !DIExpression()), !dbg !6277
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6278
  %async = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %3, i32 0, i32 7, !dbg !6279
  %4 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !6279
  %cmd1 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %4, i32 0, i32 17, !dbg !6280
  store %struct.comedi_cmd* %cmd1, %struct.comedi_cmd** %cmd, align 8, !dbg !6277
  call void @llvm.dbg.declare(metadata %struct.apci3120_dmabuf** %dmabuf0, metadata !6281, metadata !DIExpression()), !dbg !6282
  %5 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !6283
  %dmabuf = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %5, i32 0, i32 4, !dbg !6284
  %arrayidx = getelementptr [2 x %struct.apci3120_dmabuf], [2 x %struct.apci3120_dmabuf]* %dmabuf, i64 0, i64 0, !dbg !6283
  store %struct.apci3120_dmabuf* %arrayidx, %struct.apci3120_dmabuf** %dmabuf0, align 8, !dbg !6282
  call void @llvm.dbg.declare(metadata %struct.apci3120_dmabuf** %dmabuf1, metadata !6285, metadata !DIExpression()), !dbg !6286
  %6 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !6287
  %dmabuf2 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %6, i32 0, i32 4, !dbg !6288
  %arrayidx3 = getelementptr [2 x %struct.apci3120_dmabuf], [2 x %struct.apci3120_dmabuf]* %dmabuf2, i64 0, i64 1, !dbg !6287
  store %struct.apci3120_dmabuf* %arrayidx3, %struct.apci3120_dmabuf** %dmabuf1, align 8, !dbg !6286
  call void @llvm.dbg.declare(metadata i32* %dmalen0, metadata !6289, metadata !DIExpression()), !dbg !6290
  %7 = load %struct.apci3120_dmabuf*, %struct.apci3120_dmabuf** %dmabuf0, align 8, !dbg !6291
  %size = getelementptr inbounds %struct.apci3120_dmabuf, %struct.apci3120_dmabuf* %7, i32 0, i32 2, !dbg !6292
  %8 = load i32, i32* %size, align 8, !dbg !6292
  store i32 %8, i32* %dmalen0, align 4, !dbg !6290
  call void @llvm.dbg.declare(metadata i32* %dmalen1, metadata !6293, metadata !DIExpression()), !dbg !6294
  %9 = load %struct.apci3120_dmabuf*, %struct.apci3120_dmabuf** %dmabuf1, align 8, !dbg !6295
  %size4 = getelementptr inbounds %struct.apci3120_dmabuf, %struct.apci3120_dmabuf* %9, i32 0, i32 2, !dbg !6296
  %10 = load i32, i32* %size4, align 8, !dbg !6296
  store i32 %10, i32* %dmalen1, align 4, !dbg !6294
  call void @llvm.dbg.declare(metadata i32* %scan_bytes, metadata !6297, metadata !DIExpression()), !dbg !6298
  %11 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6299
  %12 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !6300
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %12, i32 0, i32 9, !dbg !6301
  %13 = load i32, i32* %scan_end_arg, align 4, !dbg !6301
  %call = call i32 @comedi_samples_to_bytes(%struct.comedi_subdevice* %11, i32 %13) #5, !dbg !6302
  store i32 %call, i32* %scan_bytes, align 4, !dbg !6303
  %14 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !6304
  %stop_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %14, i32 0, i32 10, !dbg !6306
  %15 = load i32, i32* %stop_src, align 8, !dbg !6306
  %cmp = icmp eq i32 %15, 32, !dbg !6307
  br i1 %cmp, label %if.then, label %if.end17, !dbg !6308

if.then:                                          ; preds = %entry
  %16 = load i32, i32* %dmalen0, align 4, !dbg !6309
  %17 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !6312
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %17, i32 0, i32 11, !dbg !6313
  %18 = load i32, i32* %stop_arg, align 4, !dbg !6313
  %19 = load i32, i32* %scan_bytes, align 4, !dbg !6314
  %mul = mul i32 %18, %19, !dbg !6315
  %cmp5 = icmp ugt i32 %16, %mul, !dbg !6316
  br i1 %cmp5, label %if.then6, label %if.else, !dbg !6317

if.then6:                                         ; preds = %if.then
  %20 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !6318
  %stop_arg7 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %20, i32 0, i32 11, !dbg !6319
  %21 = load i32, i32* %stop_arg7, align 4, !dbg !6319
  %22 = load i32, i32* %scan_bytes, align 4, !dbg !6320
  %mul8 = mul i32 %21, %22, !dbg !6321
  store i32 %mul8, i32* %dmalen0, align 4, !dbg !6322
  br label %if.end16, !dbg !6323

if.else:                                          ; preds = %if.then
  %23 = load i32, i32* %dmalen1, align 4, !dbg !6324
  %24 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !6326
  %stop_arg9 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %24, i32 0, i32 11, !dbg !6327
  %25 = load i32, i32* %stop_arg9, align 4, !dbg !6327
  %26 = load i32, i32* %scan_bytes, align 4, !dbg !6328
  %mul10 = mul i32 %25, %26, !dbg !6329
  %27 = load i32, i32* %dmalen0, align 4, !dbg !6330
  %sub = sub i32 %mul10, %27, !dbg !6331
  %cmp11 = icmp ugt i32 %23, %sub, !dbg !6332
  br i1 %cmp11, label %if.then12, label %if.end, !dbg !6333

if.then12:                                        ; preds = %if.else
  %28 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !6334
  %stop_arg13 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %28, i32 0, i32 11, !dbg !6335
  %29 = load i32, i32* %stop_arg13, align 4, !dbg !6335
  %30 = load i32, i32* %scan_bytes, align 4, !dbg !6336
  %mul14 = mul i32 %29, %30, !dbg !6337
  %31 = load i32, i32* %dmalen0, align 4, !dbg !6338
  %sub15 = sub i32 %mul14, %31, !dbg !6339
  store i32 %sub15, i32* %dmalen1, align 4, !dbg !6340
  br label %if.end, !dbg !6341

if.end:                                           ; preds = %if.then12, %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then6
  br label %if.end17, !dbg !6342

if.end17:                                         ; preds = %if.end16, %entry
  %32 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !6343
  %flags = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %32, i32 0, i32 1, !dbg !6345
  %33 = load i32, i32* %flags, align 4, !dbg !6345
  %and = and i32 %33, 32, !dbg !6346
  %tobool = icmp ne i32 %and, 0, !dbg !6346
  br i1 %tobool, label %if.then18, label %if.else39, !dbg !6347

if.then18:                                        ; preds = %if.end17
  %34 = load i32, i32* %dmalen0, align 4, !dbg !6348
  %35 = load i32, i32* %scan_bytes, align 4, !dbg !6351
  %cmp19 = icmp ugt i32 %34, %35, !dbg !6352
  br i1 %cmp19, label %if.then20, label %if.end26, !dbg !6353

if.then20:                                        ; preds = %if.then18
  %36 = load i32, i32* %scan_bytes, align 4, !dbg !6354
  store i32 %36, i32* %dmalen0, align 4, !dbg !6356
  %37 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !6357
  %scan_end_arg21 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %37, i32 0, i32 9, !dbg !6359
  %38 = load i32, i32* %scan_end_arg21, align 4, !dbg !6359
  %and22 = and i32 %38, 1, !dbg !6360
  %tobool23 = icmp ne i32 %and22, 0, !dbg !6360
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !6361

if.then24:                                        ; preds = %if.then20
  %39 = load i32, i32* %dmalen0, align 4, !dbg !6362
  %add = add i32 %39, 2, !dbg !6362
  store i32 %add, i32* %dmalen0, align 4, !dbg !6362
  br label %if.end25, !dbg !6363

if.end25:                                         ; preds = %if.then24, %if.then20
  br label %if.end26, !dbg !6364

if.end26:                                         ; preds = %if.end25, %if.then18
  %40 = load i32, i32* %dmalen1, align 4, !dbg !6365
  %41 = load i32, i32* %scan_bytes, align 4, !dbg !6367
  %cmp27 = icmp ugt i32 %40, %41, !dbg !6368
  br i1 %cmp27, label %if.then28, label %if.end38, !dbg !6369

if.then28:                                        ; preds = %if.end26
  %42 = load i32, i32* %scan_bytes, align 4, !dbg !6370
  store i32 %42, i32* %dmalen1, align 4, !dbg !6372
  %43 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !6373
  %scan_end_arg29 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %43, i32 0, i32 9, !dbg !6375
  %44 = load i32, i32* %scan_end_arg29, align 4, !dbg !6375
  %and30 = and i32 %44, 1, !dbg !6376
  %tobool31 = icmp ne i32 %and30, 0, !dbg !6376
  br i1 %tobool31, label %if.then32, label %if.end34, !dbg !6377

if.then32:                                        ; preds = %if.then28
  %45 = load i32, i32* %dmalen1, align 4, !dbg !6378
  %sub33 = sub i32 %45, 2, !dbg !6378
  store i32 %sub33, i32* %dmalen1, align 4, !dbg !6378
  br label %if.end34, !dbg !6379

if.end34:                                         ; preds = %if.then32, %if.then28
  %46 = load i32, i32* %dmalen1, align 4, !dbg !6380
  %cmp35 = icmp ult i32 %46, 4, !dbg !6382
  br i1 %cmp35, label %if.then36, label %if.end37, !dbg !6383

if.then36:                                        ; preds = %if.end34
  store i32 4, i32* %dmalen1, align 4, !dbg !6384
  br label %if.end37, !dbg !6385

if.end37:                                         ; preds = %if.then36, %if.end34
  br label %if.end38, !dbg !6386

if.end38:                                         ; preds = %if.end37, %if.end26
  br label %if.end53, !dbg !6387

if.else39:                                        ; preds = %if.end17
  %47 = load i32, i32* %dmalen0, align 4, !dbg !6388
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6391
  %async40 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %48, i32 0, i32 7, !dbg !6392
  %49 = load %struct.comedi_async*, %struct.comedi_async** %async40, align 8, !dbg !6392
  %prealloc_bufsz = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %49, i32 0, i32 1, !dbg !6393
  %50 = load i32, i32* %prealloc_bufsz, align 8, !dbg !6393
  %cmp41 = icmp ugt i32 %47, %50, !dbg !6394
  br i1 %cmp41, label %if.then42, label %if.end45, !dbg !6395

if.then42:                                        ; preds = %if.else39
  %51 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6396
  %async43 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %51, i32 0, i32 7, !dbg !6397
  %52 = load %struct.comedi_async*, %struct.comedi_async** %async43, align 8, !dbg !6397
  %prealloc_bufsz44 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %52, i32 0, i32 1, !dbg !6398
  %53 = load i32, i32* %prealloc_bufsz44, align 8, !dbg !6398
  store i32 %53, i32* %dmalen0, align 4, !dbg !6399
  br label %if.end45, !dbg !6400

if.end45:                                         ; preds = %if.then42, %if.else39
  %54 = load i32, i32* %dmalen1, align 4, !dbg !6401
  %55 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6403
  %async46 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %55, i32 0, i32 7, !dbg !6404
  %56 = load %struct.comedi_async*, %struct.comedi_async** %async46, align 8, !dbg !6404
  %prealloc_bufsz47 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %56, i32 0, i32 1, !dbg !6405
  %57 = load i32, i32* %prealloc_bufsz47, align 8, !dbg !6405
  %cmp48 = icmp ugt i32 %54, %57, !dbg !6406
  br i1 %cmp48, label %if.then49, label %if.end52, !dbg !6407

if.then49:                                        ; preds = %if.end45
  %58 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6408
  %async50 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %58, i32 0, i32 7, !dbg !6409
  %59 = load %struct.comedi_async*, %struct.comedi_async** %async50, align 8, !dbg !6409
  %prealloc_bufsz51 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %59, i32 0, i32 1, !dbg !6410
  %60 = load i32, i32* %prealloc_bufsz51, align 8, !dbg !6410
  store i32 %60, i32* %dmalen1, align 4, !dbg !6411
  br label %if.end52, !dbg !6412

if.end52:                                         ; preds = %if.then49, %if.end45
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.end38
  %61 = load i32, i32* %dmalen0, align 4, !dbg !6413
  %62 = load %struct.apci3120_dmabuf*, %struct.apci3120_dmabuf** %dmabuf0, align 8, !dbg !6414
  %use_size = getelementptr inbounds %struct.apci3120_dmabuf, %struct.apci3120_dmabuf* %62, i32 0, i32 3, !dbg !6415
  store i32 %61, i32* %use_size, align 4, !dbg !6416
  %63 = load i32, i32* %dmalen1, align 4, !dbg !6417
  %64 = load %struct.apci3120_dmabuf*, %struct.apci3120_dmabuf** %dmabuf1, align 8, !dbg !6418
  %use_size54 = getelementptr inbounds %struct.apci3120_dmabuf, %struct.apci3120_dmabuf* %64, i32 0, i32 3, !dbg !6419
  store i32 %63, i32* %use_size54, align 4, !dbg !6420
  %65 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6421
  %66 = load %struct.apci3120_dmabuf*, %struct.apci3120_dmabuf** %dmabuf0, align 8, !dbg !6422
  call void @apci3120_init_dma(%struct.comedi_device* %65, %struct.apci3120_dmabuf* %66) #5, !dbg !6423
  ret void, !dbg !6424
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_samples_to_bytes(%struct.comedi_subdevice* %s, i32 %nsamples) #2 !dbg !6425 {
entry:
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %nsamples.addr = alloca i32, align 4
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !6426, metadata !DIExpression()), !dbg !6427
  store i32 %nsamples, i32* %nsamples.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nsamples.addr, metadata !6428, metadata !DIExpression()), !dbg !6429
  %0 = load i32, i32* %nsamples.addr, align 4, !dbg !6430
  %1 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !6431
  %call = call i32 @comedi_sample_shift(%struct.comedi_subdevice* %1) #5, !dbg !6432
  %shl = shl i32 %0, %call, !dbg !6433
  ret i32 %shl, !dbg !6434
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci3120_ao_ready(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i64 %context) #2 !dbg !6435 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %context.addr = alloca i64, align 8
  %status = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !6436, metadata !DIExpression()), !dbg !6437
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !6438, metadata !DIExpression()), !dbg !6439
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !6440, metadata !DIExpression()), !dbg !6441
  store i64 %context, i64* %context.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %context.addr, metadata !6442, metadata !DIExpression()), !dbg !6443
  call void @llvm.dbg.declare(metadata i32* %status, metadata !6444, metadata !DIExpression()), !dbg !6445
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6446
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 18, !dbg !6447
  %1 = load i64, i64* %iobase, align 8, !dbg !6447
  %add = add i64 %1, 2, !dbg !6448
  %conv = trunc i64 %add to i32, !dbg !6446
  %call = call zeroext i16 @inw(i32 %conv) #5, !dbg !6449
  %conv1 = zext i16 %call to i32, !dbg !6449
  store i32 %conv1, i32* %status, align 4, !dbg !6450
  %2 = load i32, i32* %status, align 4, !dbg !6451
  %conv2 = zext i32 %2 to i64, !dbg !6451
  %and = and i64 %conv2, 1, !dbg !6453
  %tobool = icmp ne i64 %and, 0, !dbg !6453
  br i1 %tobool, label %if.then, label %if.end, !dbg !6454

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6455
  br label %return, !dbg !6455

if.end:                                           ; preds = %entry
  store i32 -16, i32* %retval, align 4, !dbg !6456
  br label %return, !dbg !6456

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !6457
  ret i32 %3, !dbg !6457
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_dio_update_state(%struct.comedi_subdevice*, i32*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci3120_timer_read(%struct.comedi_device* %dev, i32 %timer) #2 !dbg !6458 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %timer.addr = alloca i32, align 4
  %devpriv = alloca %struct.apci3120_private*, align 8
  %val = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !6461, metadata !DIExpression()), !dbg !6462
  store i32 %timer, i32* %timer.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %timer.addr, metadata !6463, metadata !DIExpression()), !dbg !6464
  call void @llvm.dbg.declare(metadata %struct.apci3120_private** %devpriv, metadata !6465, metadata !DIExpression()), !dbg !6466
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6467
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !6468
  %1 = load i8*, i8** %private, align 8, !dbg !6468
  %2 = bitcast i8* %1 to %struct.apci3120_private*, !dbg !6467
  store %struct.apci3120_private* %2, %struct.apci3120_private** %devpriv, align 8, !dbg !6466
  call void @llvm.dbg.declare(metadata i32* %val, metadata !6469, metadata !DIExpression()), !dbg !6470
  %3 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !6471
  %do_bits = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %3, i32 0, i32 5, !dbg !6471
  %4 = load i8, i8* %do_bits, align 8, !dbg !6471
  %conv = zext i8 %4 to i32, !dbg !6471
  %shl = shl i32 %conv, 4, !dbg !6471
  %5 = load i32, i32* %timer.addr, align 4, !dbg !6472
  %shl1 = shl i32 %5, 0, !dbg !6472
  %or = or i32 %shl, %shl1, !dbg !6473
  %conv2 = trunc i32 %or to i8, !dbg !6471
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6474
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 18, !dbg !6475
  %7 = load i64, i64* %iobase, align 8, !dbg !6475
  %add = add i64 %7, 13, !dbg !6476
  %conv3 = trunc i64 %add to i32, !dbg !6474
  call void @outb(i8 zeroext %conv2, i32 %conv3) #5, !dbg !6477
  %8 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6478
  %iobase4 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 18, !dbg !6479
  %9 = load i64, i64* %iobase4, align 8, !dbg !6479
  %add5 = add i64 %9, 4, !dbg !6480
  %conv6 = trunc i64 %add5 to i32, !dbg !6478
  %call = call zeroext i16 @inw(i32 %conv6) #5, !dbg !6481
  %conv7 = zext i16 %call to i32, !dbg !6481
  store i32 %conv7, i32* %val, align 4, !dbg !6482
  %10 = load i32, i32* %timer.addr, align 4, !dbg !6483
  %cmp = icmp eq i32 %10, 2, !dbg !6485
  br i1 %cmp, label %if.then, label %if.end, !dbg !6486

if.then:                                          ; preds = %entry
  %11 = load %struct.apci3120_private*, %struct.apci3120_private** %devpriv, align 8, !dbg !6487
  %do_bits9 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %11, i32 0, i32 5, !dbg !6487
  %12 = load i8, i8* %do_bits9, align 8, !dbg !6487
  %conv10 = zext i8 %12 to i32, !dbg !6487
  %shl11 = shl i32 %conv10, 4, !dbg !6487
  %13 = load i32, i32* %timer.addr, align 4, !dbg !6489
  %add12 = add i32 %13, 1, !dbg !6489
  %shl13 = shl i32 %add12, 0, !dbg !6489
  %or14 = or i32 %shl11, %shl13, !dbg !6490
  %conv15 = trunc i32 %or14 to i8, !dbg !6487
  %14 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6491
  %iobase16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 18, !dbg !6492
  %15 = load i64, i64* %iobase16, align 8, !dbg !6492
  %add17 = add i64 %15, 13, !dbg !6493
  %conv18 = trunc i64 %add17 to i32, !dbg !6491
  call void @outb(i8 zeroext %conv15, i32 %conv18) #5, !dbg !6494
  %16 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !6495
  %iobase19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 18, !dbg !6496
  %17 = load i64, i64* %iobase19, align 8, !dbg !6496
  %add20 = add i64 %17, 4, !dbg !6497
  %conv21 = trunc i64 %add20 to i32, !dbg !6495
  %call22 = call zeroext i16 @inw(i32 %conv21) #5, !dbg !6498
  %conv23 = zext i16 %call22 to i32, !dbg !6498
  %shl24 = shl i32 %conv23, 16, !dbg !6499
  %18 = load i32, i32* %val, align 4, !dbg !6500
  %or25 = or i32 %18, %shl24, !dbg !6500
  store i32 %or25, i32* %val, align 4, !dbg !6500
  br label %if.end, !dbg !6501

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %val, align 4, !dbg !6502
  ret i32 %19, !dbg !6503
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci3120_pci_probe(%struct.pci_dev* %dev, %struct.pci_device_id* %id) #2 !dbg !6504 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %id.addr = alloca %struct.pci_device_id*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !6505, metadata !DIExpression()), !dbg !6506
  store %struct.pci_device_id* %id, %struct.pci_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_device_id** %id.addr, metadata !6507, metadata !DIExpression()), !dbg !6508
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !6509
  %1 = load %struct.pci_device_id*, %struct.pci_device_id** %id.addr, align 8, !dbg !6510
  %driver_data = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %1, i32 0, i32 6, !dbg !6511
  %2 = load i64, i64* %driver_data, align 8, !dbg !6511
  %call = call i32 @comedi_pci_auto_config(%struct.pci_dev* %0, %struct.comedi_driver* @apci3120_driver, i64 %2) #5, !dbg !6512
  ret i32 %call, !dbg !6513
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
!llvm.module.flags = !{!4296, !4297, !4298, !4299}
!llvm.ident = !{!4300}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_apci3120_driver_init234", scope: !2, file: !3, line: 1113, type: !206, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !147, globals: !151, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/staging/comedi/drivers/addi_apci_3120.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !100, !104, !120, !126, !131, !142}
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
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "apci3120_boardid", file: !3, line: 114, baseType: !7, size: 32, elements: !101)
!101 = !{!102, !103}
!102 = !DIEnumerator(name: "BOARD_APCI3120", value: 0, isUnsigned: true)
!103 = !DIEnumerator(name: "BOARD_APCI3001", value: 1, isUnsigned: true)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "comedi_subdevice_type", file: !105, line: 221, baseType: !7, size: 32, elements: !106)
!105 = !DIFile(filename: "drivers/staging/comedi/drivers/../comedi.h", directory: "/home/lizy2001/genbc/linux")
!106 = !{!107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119}
!107 = !DIEnumerator(name: "COMEDI_SUBD_UNUSED", value: 0, isUnsigned: true)
!108 = !DIEnumerator(name: "COMEDI_SUBD_AI", value: 1, isUnsigned: true)
!109 = !DIEnumerator(name: "COMEDI_SUBD_AO", value: 2, isUnsigned: true)
!110 = !DIEnumerator(name: "COMEDI_SUBD_DI", value: 3, isUnsigned: true)
!111 = !DIEnumerator(name: "COMEDI_SUBD_DO", value: 4, isUnsigned: true)
!112 = !DIEnumerator(name: "COMEDI_SUBD_DIO", value: 5, isUnsigned: true)
!113 = !DIEnumerator(name: "COMEDI_SUBD_COUNTER", value: 6, isUnsigned: true)
!114 = !DIEnumerator(name: "COMEDI_SUBD_TIMER", value: 7, isUnsigned: true)
!115 = !DIEnumerator(name: "COMEDI_SUBD_MEMORY", value: 8, isUnsigned: true)
!116 = !DIEnumerator(name: "COMEDI_SUBD_CALIB", value: 9, isUnsigned: true)
!117 = !DIEnumerator(name: "COMEDI_SUBD_PROC", value: 10, isUnsigned: true)
!118 = !DIEnumerator(name: "COMEDI_SUBD_SERIAL", value: 11, isUnsigned: true)
!119 = !DIEnumerator(name: "COMEDI_SUBD_PWM", value: 12, isUnsigned: true)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !121, line: 11, baseType: !7, size: 32, elements: !122)
!121 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!122 = !{!123, !124, !125}
!123 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!124 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!125 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !127, line: 10, baseType: !7, size: 32, elements: !128)
!127 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!128 = !{!129, !130}
!129 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!130 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!131 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "comedi_cb", file: !132, line: 383, baseType: !7, size: 32, elements: !133)
!132 = !DIFile(filename: "drivers/staging/comedi/drivers/../comedidev.h", directory: "/home/lizy2001/genbc/linux")
!133 = !{!134, !135, !136, !137, !138, !139, !140, !141}
!134 = !DIEnumerator(name: "COMEDI_CB_EOS", value: 1, isUnsigned: true)
!135 = !DIEnumerator(name: "COMEDI_CB_EOA", value: 2, isUnsigned: true)
!136 = !DIEnumerator(name: "COMEDI_CB_BLOCK", value: 4, isUnsigned: true)
!137 = !DIEnumerator(name: "COMEDI_CB_EOBUF", value: 8, isUnsigned: true)
!138 = !DIEnumerator(name: "COMEDI_CB_ERROR", value: 16, isUnsigned: true)
!139 = !DIEnumerator(name: "COMEDI_CB_OVERFLOW", value: 32, isUnsigned: true)
!140 = !DIEnumerator(name: "COMEDI_CB_ERROR_MASK", value: 48, isUnsigned: true)
!141 = !DIEnumerator(name: "COMEDI_CB_CANCEL_MASK", value: 50, isUnsigned: true)
!142 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "comedi_counter_status_flags", file: !105, line: 448, baseType: !7, size: 32, elements: !143)
!143 = !{!144, !145, !146}
!144 = !DIEnumerator(name: "COMEDI_COUNTER_ARMED", value: 1, isUnsigned: true)
!145 = !DIEnumerator(name: "COMEDI_COUNTER_COUNTING", value: 2, isUnsigned: true)
!146 = !DIEnumerator(name: "COMEDI_COUNTER_TERMINAL_COUNT", value: 4, isUnsigned: true)
!147 = !{!148, !149}
!148 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !150, line: 148, baseType: !7)
!150 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!151 = !{!0, !152, !159, !166, !171, !176, !181, !4001, !4010, !4012, !4293}
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(name: "__exitcall_apci3120_driver_exit", scope: !2, file: !3, line: 1113, type: !154, isLocal: true, isDefinition: true)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !155, line: 117, baseType: !156)
!155 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{null}
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author235", scope: !2, file: !3, line: 1115, type: !161, isLocal: true, isDefinition: true, align: 8)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 416, elements: !164)
!162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!163 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!164 = !{!165}
!165 = !DISubrange(count: 52)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description236", scope: !2, file: !3, line: 1116, type: !168, isLocal: true, isDefinition: true, align: 8)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 536, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 67)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file237", scope: !2, file: !3, line: 1117, type: !173, isLocal: true, isDefinition: true, align: 8)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 528, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 66)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license238", scope: !2, file: !3, line: 1117, type: !178, isLocal: true, isDefinition: true, align: 8)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 216, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 27)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(name: "apci3120_driver", scope: !2, file: !3, line: 1087, type: !183, isLocal: true, isDefinition: true)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_driver", file: !132, line: 437, size: 576, elements: !184)
!184 = !{!185, !187, !189, !193, !3991, !3992, !3996, !3997, !4000}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !183, file: !132, line: 439, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !183, file: !132, line: 441, baseType: !188, size: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !183, file: !132, line: 442, baseType: !190, size: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !192, line: 76, flags: DIFlagFwdDecl)
!192 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!193 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !183, file: !132, line: 443, baseType: !194, size: 64, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!148, !197, !3984}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_device", file: !132, line: 541, size: 1920, elements: !199)
!199 = !{!200, !201, !202, !205, !207, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3972, !3976, !3980}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !198, file: !132, line: 542, baseType: !148, size: 32)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !198, file: !132, line: 543, baseType: !186, size: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "pacer", scope: !198, file: !132, line: 544, baseType: !203, size: 64, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_8254", file: !132, line: 544, flags: DIFlagFwdDecl)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !198, file: !132, line: 545, baseType: !206, size: 64, offset: 192)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !198, file: !132, line: 547, baseType: !208, size: 64, offset: 256)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !210)
!210 = !{!211, !3369, !3370, !3373, !3374, !3425, !3516, !3517, !3518, !3519, !3520, !3529, !3634, !3647, !3650, !3651, !3655, !3657, !3658, !3659, !3663, !3669, !3670, !3673, !3677, !3767, !3768, !3769, !3770, !3771, !3803, !3804, !3805, !3808, !3811, !3812, !3813, !3814}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !209, file: !73, line: 462, baseType: !212, size: 512)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !213, line: 64, size: 512, elements: !214)
!213 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!214 = !{!215, !216, !222, !224, !284, !3220, !3359, !3364, !3365, !3366, !3367, !3368}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !212, file: !213, line: 65, baseType: !188, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !212, file: !213, line: 66, baseType: !217, size: 128, offset: 64)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !150, line: 178, size: 128, elements: !218)
!218 = !{!219, !221}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !217, file: !150, line: 179, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !217, file: !150, line: 179, baseType: !220, size: 64, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !212, file: !213, line: 67, baseType: !223, size: 64, offset: 192)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !212, file: !213, line: 68, baseType: !225, size: 64, offset: 256)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !213, line: 192, size: 704, elements: !227)
!227 = !{!228, !229, !245, !246}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !226, file: !213, line: 193, baseType: !217, size: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !226, file: !213, line: 194, baseType: !230, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !231, line: 83, baseType: !232)
!231 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !231, line: 71, elements: !233)
!233 = !{!234}
!234 = !DIDerivedType(tag: DW_TAG_member, scope: !232, file: !231, line: 72, baseType: !235)
!235 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !232, file: !231, line: 72, elements: !236)
!236 = !{!237}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !235, file: !231, line: 73, baseType: !238)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !231, line: 20, elements: !239)
!239 = !{!240}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !238, file: !231, line: 21, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !242, line: 25, baseType: !243)
!242 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !242, line: 25, elements: !244)
!244 = !{}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !226, file: !213, line: 195, baseType: !212, size: 512, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !226, file: !213, line: 196, baseType: !247, size: 64, offset: 640)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !249)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !213, line: 156, size: 192, elements: !250)
!250 = !{!251, !256, !261}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !249, file: !213, line: 157, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{!148, !225, !223}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !249, file: !213, line: 158, baseType: !257, size: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !258)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!188, !225, !223}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !249, file: !213, line: 159, baseType: !262, size: 64, offset: 128)
!262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !263)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{!148, !225, !223, !266}
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !213, line: 148, size: 20736, elements: !268)
!268 = !{!269, !274, !278, !279, !283}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !267, file: !213, line: 149, baseType: !270, size: 192)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 192, elements: !272)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!272 = !{!273}
!273 = !DISubrange(count: 3)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !267, file: !213, line: 150, baseType: !275, size: 4096, offset: 192)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 4096, elements: !276)
!276 = !{!277}
!277 = !DISubrange(count: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !267, file: !213, line: 151, baseType: !148, size: 32, offset: 4288)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !267, file: !213, line: 152, baseType: !280, size: 16384, offset: 4320)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 16384, elements: !281)
!281 = !{!282}
!282 = !DISubrange(count: 2048)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !267, file: !213, line: 153, baseType: !148, size: 32, offset: 20704)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !212, file: !213, line: 69, baseType: !285, size: 64, offset: 320)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !213, line: 138, size: 448, elements: !287)
!287 = !{!288, !292, !322, !324, !3182, !3210, !3214}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !286, file: !213, line: 139, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{null, !223}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !286, file: !213, line: 140, baseType: !293, size: 64, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !295)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !296, line: 230, size: 128, elements: !297)
!296 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!297 = !{!298, !314}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !295, file: !296, line: 231, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{!302, !223, !307, !271}
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !150, line: 60, baseType: !303)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !304, line: 73, baseType: !305)
!304 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !304, line: 15, baseType: !306)
!306 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !296, line: 30, size: 128, elements: !309)
!309 = !{!310, !311}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !308, file: !296, line: 31, baseType: !188, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !308, file: !296, line: 32, baseType: !312, size: 16, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !150, line: 19, baseType: !313)
!313 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !295, file: !296, line: 232, baseType: !315, size: 64, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{!302, !223, !307, !188, !318}
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !150, line: 55, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !304, line: 72, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !304, line: 16, baseType: !321)
!321 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !286, file: !213, line: 141, baseType: !323, size: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !286, file: !213, line: 142, baseType: !325, size: 64, offset: 192)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !328)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !296, line: 84, size: 320, elements: !329)
!329 = !{!330, !331, !335, !3179, !3180}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !328, file: !296, line: 85, baseType: !188, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !328, file: !296, line: 86, baseType: !332, size: 64, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!312, !223, !307, !148}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !328, file: !296, line: 88, baseType: !336, size: 64, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!312, !223, !339, !148}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !296, line: 168, size: 448, elements: !341)
!341 = !{!342, !343, !344, !345, !3174, !3175}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !340, file: !296, line: 169, baseType: !308, size: 128)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !340, file: !296, line: 170, baseType: !318, size: 64, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !340, file: !296, line: 171, baseType: !206, size: 64, offset: 192)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !340, file: !296, line: 172, baseType: !346, size: 64, offset: 256)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DISubroutineType(types: !348)
!348 = !{!302, !349, !223, !339, !271, !528, !318}
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !351)
!351 = !{!352, !370, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3157, !3158, !3167, !3168, !3169, !3170, !3171, !3172, !3173}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !350, file: !44, line: 920, baseType: !353, size: 128)
!353 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !350, file: !44, line: 917, size: 128, elements: !354)
!354 = !{!355, !361}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !353, file: !44, line: 918, baseType: !356, size: 64)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !357, line: 58, size: 64, elements: !358)
!357 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!358 = !{!359}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !356, file: !357, line: 59, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !353, file: !44, line: 919, baseType: !362, size: 128, align: 64)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !150, line: 216, size: 128, align: 64, elements: !363)
!363 = !{!364, !366}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !362, file: !150, line: 217, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !362, file: !150, line: 218, baseType: !367, size: 64, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DISubroutineType(types: !369)
!369 = !{null, !365}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !350, file: !44, line: 921, baseType: !371, size: 128, offset: 128)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !372, line: 8, size: 128, elements: !373)
!372 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!373 = !{!374, !378}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !371, file: !372, line: 9, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !377, line: 18, flags: DIFlagFwdDecl)
!377 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!378 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !371, file: !372, line: 10, baseType: !379, size: 64, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !377, line: 89, size: 1536, elements: !381)
!381 = !{!382, !383, !393, !401, !402, !425, !3107, !3109, !3121, !3122, !3123, !3124, !3125, !3131, !3132, !3133}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !380, file: !377, line: 91, baseType: !7, size: 32)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !380, file: !377, line: 92, baseType: !384, size: 32, offset: 32)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !385, line: 277, baseType: !386)
!385 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !385, line: 277, size: 32, elements: !387)
!387 = !{!388}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !386, file: !385, line: 277, baseType: !389, size: 32)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !385, line: 70, baseType: !390)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !385, line: 65, size: 32, elements: !391)
!391 = !{!392}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !390, file: !385, line: 66, baseType: !7, size: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !380, file: !377, line: 93, baseType: !394, size: 128, offset: 64)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !395, line: 38, size: 128, elements: !396)
!395 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!396 = !{!397, !399}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !394, file: !395, line: 39, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !394, file: !395, line: 39, baseType: !400, size: 64, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !380, file: !377, line: 94, baseType: !379, size: 64, offset: 192)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !380, file: !377, line: 95, baseType: !403, size: 128, offset: 256)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !377, line: 47, size: 128, elements: !404)
!404 = !{!405, !421}
!405 = !DIDerivedType(tag: DW_TAG_member, scope: !403, file: !377, line: 48, baseType: !406, size: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !403, file: !377, line: 48, size: 64, elements: !407)
!407 = !{!408, !417}
!408 = !DIDerivedType(tag: DW_TAG_member, scope: !406, file: !377, line: 49, baseType: !409, size: 64)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !406, file: !377, line: 49, size: 64, elements: !410)
!410 = !{!411, !416}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !409, file: !377, line: 50, baseType: !412, size: 32)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !413, line: 21, baseType: !414)
!413 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !415, line: 27, baseType: !7)
!415 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!416 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !409, file: !377, line: 50, baseType: !412, size: 32, offset: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !406, file: !377, line: 52, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !413, line: 23, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !415, line: 31, baseType: !420)
!420 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !403, file: !377, line: 54, baseType: !422, size: 64, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !424)
!424 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !380, file: !377, line: 96, baseType: !426, size: 64, offset: 384)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !428)
!428 = !{!429, !430, !431, !439, !446, !447, !595, !2818, !2819, !2820, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !3083, !3091, !3092, !3093, !3103, !3104, !3105, !3106}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !427, file: !44, line: 611, baseType: !312, size: 16)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !427, file: !44, line: 612, baseType: !313, size: 16, offset: 16)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !427, file: !44, line: 613, baseType: !432, size: 32, offset: 32)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !433, line: 23, baseType: !434)
!433 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !433, line: 21, size: 32, elements: !435)
!435 = !{!436}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !434, file: !433, line: 22, baseType: !437, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !150, line: 32, baseType: !438)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !304, line: 49, baseType: !7)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !427, file: !44, line: 614, baseType: !440, size: 32, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !433, line: 28, baseType: !441)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !433, line: 26, size: 32, elements: !442)
!442 = !{!443}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !441, file: !433, line: 27, baseType: !444, size: 32)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !150, line: 33, baseType: !445)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !304, line: 50, baseType: !7)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !427, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !427, file: !44, line: 622, baseType: !448, size: 64, offset: 128)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !450)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !451)
!451 = !{!452, !456, !469, !473, !479, !483, !489, !493, !497, !501, !505, !506, !512, !516, !542, !571, !575, !581, !586, !590, !591}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !450, file: !44, line: 1865, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DISubroutineType(types: !455)
!455 = !{!379, !426, !379, !7}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !450, file: !44, line: 1866, baseType: !457, size: 64, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{!188, !379, !426, !460}
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !462, line: 10, size: 128, elements: !463)
!462 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!463 = !{!464, !468}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !461, file: !462, line: 11, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{null, !206}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !461, file: !462, line: 12, baseType: !206, size: 64, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !450, file: !44, line: 1867, baseType: !470, size: 64, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!148, !426, !148}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !450, file: !44, line: 1868, baseType: !474, size: 64, offset: 192)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{!477, !426, !148}
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !450, file: !44, line: 1870, baseType: !480, size: 64, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!148, !379, !271, !148}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !450, file: !44, line: 1872, baseType: !484, size: 64, offset: 320)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{!148, !426, !379, !312, !487}
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !150, line: 30, baseType: !488)
!488 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !450, file: !44, line: 1873, baseType: !490, size: 64, offset: 384)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DISubroutineType(types: !492)
!492 = !{!148, !379, !426, !379}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !450, file: !44, line: 1874, baseType: !494, size: 64, offset: 448)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{!148, !426, !379}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !450, file: !44, line: 1875, baseType: !498, size: 64, offset: 512)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!148, !426, !379, !188}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !450, file: !44, line: 1876, baseType: !502, size: 64, offset: 576)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{!148, !426, !379, !312}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !450, file: !44, line: 1877, baseType: !494, size: 64, offset: 640)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !450, file: !44, line: 1878, baseType: !507, size: 64, offset: 704)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{!148, !426, !379, !312, !510}
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !150, line: 16, baseType: !511)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !150, line: 13, baseType: !412)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !450, file: !44, line: 1879, baseType: !513, size: 64, offset: 768)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{!148, !426, !379, !426, !379, !7}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !450, file: !44, line: 1881, baseType: !517, size: 64, offset: 832)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!148, !379, !520}
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !522)
!522 = !{!523, !524, !525, !526, !527, !531, !539, !540, !541}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !521, file: !44, line: 220, baseType: !7, size: 32)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !521, file: !44, line: 221, baseType: !312, size: 16, offset: 32)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !521, file: !44, line: 222, baseType: !432, size: 32, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !521, file: !44, line: 223, baseType: !440, size: 32, offset: 96)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !521, file: !44, line: 224, baseType: !528, size: 64, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !150, line: 46, baseType: !529)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !304, line: 88, baseType: !530)
!530 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !521, file: !44, line: 225, baseType: !532, size: 128, offset: 192)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !533, line: 13, size: 128, elements: !534)
!533 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!534 = !{!535, !538}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !532, file: !533, line: 14, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !533, line: 8, baseType: !537)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !415, line: 30, baseType: !530)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !532, file: !533, line: 15, baseType: !306, size: 64, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !521, file: !44, line: 226, baseType: !532, size: 128, offset: 320)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !521, file: !44, line: 227, baseType: !532, size: 128, offset: 448)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !521, file: !44, line: 234, baseType: !349, size: 64, offset: 576)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !450, file: !44, line: 1882, baseType: !543, size: 64, offset: 896)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{!148, !546, !548, !412, !7}
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !371)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !550, line: 22, size: 1152, elements: !551)
!550 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!551 = !{!552, !553, !554, !555, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !549, file: !550, line: 23, baseType: !412, size: 32)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !549, file: !550, line: 24, baseType: !312, size: 16, offset: 32)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !549, file: !550, line: 25, baseType: !7, size: 32, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !549, file: !550, line: 26, baseType: !556, size: 32, offset: 96)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !150, line: 104, baseType: !412)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !549, file: !550, line: 27, baseType: !418, size: 64, offset: 128)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !549, file: !550, line: 28, baseType: !418, size: 64, offset: 192)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !549, file: !550, line: 37, baseType: !418, size: 64, offset: 256)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !549, file: !550, line: 38, baseType: !510, size: 32, offset: 320)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !549, file: !550, line: 39, baseType: !510, size: 32, offset: 352)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !549, file: !550, line: 40, baseType: !432, size: 32, offset: 384)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !549, file: !550, line: 41, baseType: !440, size: 32, offset: 416)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !549, file: !550, line: 42, baseType: !528, size: 64, offset: 448)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !549, file: !550, line: 43, baseType: !532, size: 128, offset: 512)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !549, file: !550, line: 44, baseType: !532, size: 128, offset: 640)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !549, file: !550, line: 45, baseType: !532, size: 128, offset: 768)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !549, file: !550, line: 46, baseType: !532, size: 128, offset: 896)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !549, file: !550, line: 47, baseType: !418, size: 64, offset: 1024)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !549, file: !550, line: 48, baseType: !418, size: 64, offset: 1088)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !450, file: !44, line: 1883, baseType: !572, size: 64, offset: 960)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!302, !379, !271, !318}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !450, file: !44, line: 1884, baseType: !576, size: 64, offset: 1024)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{!148, !426, !579, !418, !418}
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !450, file: !44, line: 1886, baseType: !582, size: 64, offset: 1088)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{!148, !426, !585, !148}
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !450, file: !44, line: 1887, baseType: !587, size: 64, offset: 1152)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{!148, !426, !379, !349, !7, !312}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !450, file: !44, line: 1890, baseType: !502, size: 64, offset: 1216)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !450, file: !44, line: 1891, baseType: !592, size: 64, offset: 1280)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{!148, !426, !477, !148}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !427, file: !44, line: 623, baseType: !596, size: 64, offset: 192)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !598)
!598 = !{!599, !600, !601, !602, !603, !604, !651, !2425, !2507, !2590, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2606, !2610, !2611, !2614, !2615, !2618, !2619, !2620, !2661, !2688, !2689, !2690, !2691, !2692, !2693, !2696, !2698, !2705, !2706, !2708, !2709, !2710, !2769, !2770, !2785, !2786, !2787, !2788, !2789, !2792, !2793, !2794, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !597, file: !44, line: 1417, baseType: !217, size: 128)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !597, file: !44, line: 1418, baseType: !510, size: 32, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !597, file: !44, line: 1419, baseType: !424, size: 8, offset: 160)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !597, file: !44, line: 1420, baseType: !321, size: 64, offset: 192)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !597, file: !44, line: 1421, baseType: !528, size: 64, offset: 256)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !597, file: !44, line: 1422, baseType: !605, size: 64, offset: 320)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !607)
!607 = !{!608, !609, !610, !617, !621, !625, !629, !630, !631, !641, !644, !645, !646, !648, !649, !650}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !606, file: !44, line: 2229, baseType: !188, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !606, file: !44, line: 2230, baseType: !148, size: 32, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !606, file: !44, line: 2238, baseType: !611, size: 64, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{!148, !614}
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !616, line: 28, flags: DIFlagFwdDecl)
!616 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!617 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !606, file: !44, line: 2239, baseType: !618, size: 64, offset: 192)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !620)
!620 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !606, file: !44, line: 2240, baseType: !622, size: 64, offset: 256)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{!379, !605, !148, !188, !206}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !606, file: !44, line: 2242, baseType: !626, size: 64, offset: 320)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{null, !596}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !606, file: !44, line: 2243, baseType: !190, size: 64, offset: 384)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !606, file: !44, line: 2244, baseType: !605, size: 64, offset: 448)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !606, file: !44, line: 2245, baseType: !632, size: 64, offset: 512)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !150, line: 182, size: 64, elements: !633)
!633 = !{!634}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !632, file: !150, line: 183, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !150, line: 186, size: 128, elements: !637)
!637 = !{!638, !639}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !636, file: !150, line: 187, baseType: !635, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !636, file: !150, line: 187, baseType: !640, size: 64, offset: 64)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !606, file: !44, line: 2247, baseType: !642, offset: 576)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !643, line: 187, elements: !244)
!643 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!644 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !606, file: !44, line: 2248, baseType: !642, offset: 576)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !606, file: !44, line: 2249, baseType: !642, offset: 576)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !606, file: !44, line: 2250, baseType: !647, offset: 576)
!647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !642, elements: !272)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !606, file: !44, line: 2252, baseType: !642, offset: 576)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !606, file: !44, line: 2253, baseType: !642, offset: 576)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !606, file: !44, line: 2254, baseType: !642, offset: 576)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !597, file: !44, line: 1423, baseType: !652, size: 64, offset: 384)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !654)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !655)
!655 = !{!656, !660, !664, !665, !669, !675, !679, !680, !681, !685, !689, !690, !691, !692, !698, !703, !704, !711, !712, !713, !714, !2409, !2424}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !654, file: !44, line: 1936, baseType: !657, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{!426, !596}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !654, file: !44, line: 1937, baseType: !661, size: 64, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{null, !426}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !654, file: !44, line: 1938, baseType: !661, size: 64, offset: 128)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !654, file: !44, line: 1940, baseType: !666, size: 64, offset: 192)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{null, !426, !148}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !654, file: !44, line: 1941, baseType: !670, size: 64, offset: 256)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{!148, !426, !673}
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !654, file: !44, line: 1942, baseType: !676, size: 64, offset: 320)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{!148, !426}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !654, file: !44, line: 1943, baseType: !661, size: 64, offset: 384)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !654, file: !44, line: 1944, baseType: !626, size: 64, offset: 448)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !654, file: !44, line: 1945, baseType: !682, size: 64, offset: 512)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!148, !596, !148}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !654, file: !44, line: 1946, baseType: !686, size: 64, offset: 576)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DISubroutineType(types: !688)
!688 = !{!148, !596}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !654, file: !44, line: 1947, baseType: !686, size: 64, offset: 640)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !654, file: !44, line: 1948, baseType: !686, size: 64, offset: 704)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !654, file: !44, line: 1949, baseType: !686, size: 64, offset: 768)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !654, file: !44, line: 1950, baseType: !693, size: 64, offset: 832)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DISubroutineType(types: !695)
!695 = !{!148, !379, !696}
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !654, file: !44, line: 1951, baseType: !699, size: 64, offset: 896)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{!148, !596, !702, !271}
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !654, file: !44, line: 1952, baseType: !626, size: 64, offset: 960)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !654, file: !44, line: 1954, baseType: !705, size: 64, offset: 1024)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DISubroutineType(types: !707)
!707 = !{!148, !708, !379}
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !710, line: 539, flags: DIFlagFwdDecl)
!710 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!711 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !654, file: !44, line: 1955, baseType: !705, size: 64, offset: 1088)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !654, file: !44, line: 1956, baseType: !705, size: 64, offset: 1152)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !654, file: !44, line: 1957, baseType: !705, size: 64, offset: 1216)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !654, file: !44, line: 1963, baseType: !715, size: 64, offset: 1280)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DISubroutineType(types: !717)
!717 = !{!148, !596, !718, !149}
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !720, line: 68, size: 512, align: 128, elements: !721)
!720 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!721 = !{!722, !723, !2401, !2408}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !719, file: !720, line: 69, baseType: !321, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, scope: !719, file: !720, line: 77, baseType: !724, size: 320, offset: 64)
!724 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !719, file: !720, line: 77, size: 320, elements: !725)
!725 = !{!726, !913, !918, !946, !954, !960, !2332, !2400}
!726 = !DIDerivedType(tag: DW_TAG_member, scope: !724, file: !720, line: 78, baseType: !727, size: 320)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !724, file: !720, line: 78, size: 320, elements: !728)
!728 = !{!729, !730, !911, !912}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !727, file: !720, line: 84, baseType: !217, size: 128)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !727, file: !720, line: 86, baseType: !731, size: 64, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !733)
!733 = !{!734, !735, !742, !743, !748, !763, !779, !780, !781, !782, !904, !905, !908, !909, !910}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !732, file: !44, line: 452, baseType: !426, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !732, file: !44, line: 453, baseType: !736, size: 128, offset: 64)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !737, line: 292, size: 128, elements: !738)
!737 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!738 = !{!739, !740, !741}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !736, file: !737, line: 293, baseType: !230)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !736, file: !737, line: 295, baseType: !149, size: 32)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !736, file: !737, line: 296, baseType: !206, size: 64, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !732, file: !44, line: 454, baseType: !149, size: 32, offset: 192)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !732, file: !44, line: 455, baseType: !744, size: 32, offset: 224)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !150, line: 168, baseType: !745)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !150, line: 166, size: 32, elements: !746)
!746 = !{!747}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !745, file: !150, line: 167, baseType: !148, size: 32)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !732, file: !44, line: 460, baseType: !749, size: 128, offset: 256)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !750, line: 125, size: 128, elements: !751)
!750 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!751 = !{!752, !762}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !749, file: !750, line: 126, baseType: !753, size: 64)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !750, line: 31, size: 64, elements: !754)
!754 = !{!755}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !753, file: !750, line: 32, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !750, line: 24, size: 192, align: 64, elements: !758)
!758 = !{!759, !760, !761}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !757, file: !750, line: 25, baseType: !321, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !757, file: !750, line: 26, baseType: !756, size: 64, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !757, file: !750, line: 27, baseType: !756, size: 64, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !749, file: !750, line: 127, baseType: !756, size: 64, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !732, file: !44, line: 461, baseType: !764, size: 256, offset: 384)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !765, line: 35, size: 256, elements: !766)
!765 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!766 = !{!767, !775, !776, !778}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !764, file: !765, line: 36, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !769, line: 13, baseType: !770)
!769 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !150, line: 175, baseType: !771)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !150, line: 173, size: 64, elements: !772)
!772 = !{!773}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !771, file: !150, line: 174, baseType: !774, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !413, line: 22, baseType: !537)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !764, file: !765, line: 42, baseType: !768, size: 64, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !764, file: !765, line: 46, baseType: !777, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !231, line: 29, baseType: !238)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !764, file: !765, line: 47, baseType: !217, size: 128, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !732, file: !44, line: 462, baseType: !321, size: 64, offset: 640)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !732, file: !44, line: 463, baseType: !321, size: 64, offset: 704)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !732, file: !44, line: 464, baseType: !321, size: 64, offset: 768)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !732, file: !44, line: 465, baseType: !783, size: 64, offset: 832)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !785)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !786)
!786 = !{!787, !791, !795, !799, !803, !807, !813, !819, !823, !828, !832, !836, !840, !868, !872, !878, !879, !880, !884, !889, !893, !900}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !785, file: !44, line: 368, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DISubroutineType(types: !790)
!790 = !{!148, !718, !673}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !785, file: !44, line: 369, baseType: !792, size: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{!148, !349, !718}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !785, file: !44, line: 372, baseType: !796, size: 64, offset: 128)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{!148, !731, !673}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !785, file: !44, line: 375, baseType: !800, size: 64, offset: 192)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{!148, !718}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !785, file: !44, line: 381, baseType: !804, size: 64, offset: 256)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DISubroutineType(types: !806)
!806 = !{!148, !349, !731, !220, !7}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !785, file: !44, line: 383, baseType: !808, size: 64, offset: 320)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{null, !811}
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !785, file: !44, line: 385, baseType: !814, size: 64, offset: 384)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{!148, !349, !731, !528, !7, !7, !817, !818}
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !785, file: !44, line: 388, baseType: !820, size: 64, offset: 448)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{!148, !349, !731, !528, !7, !7, !718, !206}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !785, file: !44, line: 393, baseType: !824, size: 64, offset: 512)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{!827, !731, !827}
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !150, line: 125, baseType: !418)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !785, file: !44, line: 394, baseType: !829, size: 64, offset: 576)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{null, !718, !7, !7}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !785, file: !44, line: 395, baseType: !833, size: 64, offset: 640)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{!148, !718, !149}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !785, file: !44, line: 396, baseType: !837, size: 64, offset: 704)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{null, !718}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !785, file: !44, line: 397, baseType: !841, size: 64, offset: 768)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{!302, !844, !866}
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !846)
!846 = !{!847, !848, !849, !853, !854, !855, !858, !859}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !845, file: !44, line: 321, baseType: !349, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !845, file: !44, line: 326, baseType: !528, size: 64, offset: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !845, file: !44, line: 327, baseType: !850, size: 64, offset: 128)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{null, !844, !306, !306}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !845, file: !44, line: 328, baseType: !206, size: 64, offset: 192)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !845, file: !44, line: 329, baseType: !148, size: 32, offset: 256)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !845, file: !44, line: 330, baseType: !856, size: 16, offset: 288)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !413, line: 19, baseType: !857)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !415, line: 24, baseType: !313)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !845, file: !44, line: 331, baseType: !856, size: 16, offset: 304)
!859 = !DIDerivedType(tag: DW_TAG_member, scope: !845, file: !44, line: 332, baseType: !860, size: 64, offset: 320)
!860 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !845, file: !44, line: 332, size: 64, elements: !861)
!861 = !{!862, !863}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !860, file: !44, line: 333, baseType: !7, size: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !860, file: !44, line: 334, baseType: !864, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !785, file: !44, line: 402, baseType: !869, size: 64, offset: 832)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{!148, !731, !718, !718, !5}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !785, file: !44, line: 404, baseType: !873, size: 64, offset: 896)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{!487, !718, !876}
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !877, line: 305, baseType: !7)
!877 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!878 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !785, file: !44, line: 405, baseType: !837, size: 64, offset: 960)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !785, file: !44, line: 406, baseType: !800, size: 64, offset: 1024)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !785, file: !44, line: 407, baseType: !881, size: 64, offset: 1088)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DISubroutineType(types: !883)
!883 = !{!148, !718, !321, !321}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !785, file: !44, line: 409, baseType: !885, size: 64, offset: 1152)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DISubroutineType(types: !887)
!887 = !{null, !718, !888, !888}
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !785, file: !44, line: 410, baseType: !890, size: 64, offset: 1216)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DISubroutineType(types: !892)
!892 = !{!148, !731, !718}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !785, file: !44, line: 413, baseType: !894, size: 64, offset: 1280)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DISubroutineType(types: !896)
!896 = !{!148, !897, !349, !899}
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !785, file: !44, line: 415, baseType: !901, size: 64, offset: 1344)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DISubroutineType(types: !903)
!903 = !{null, !349}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !732, file: !44, line: 466, baseType: !321, size: 64, offset: 896)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !732, file: !44, line: 467, baseType: !906, size: 32, offset: 960)
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !907, line: 8, baseType: !412)
!907 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!908 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !732, file: !44, line: 468, baseType: !230, offset: 992)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !732, file: !44, line: 469, baseType: !217, size: 128, offset: 1024)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !732, file: !44, line: 470, baseType: !206, size: 64, offset: 1152)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !727, file: !720, line: 87, baseType: !321, size: 64, offset: 192)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !727, file: !720, line: 94, baseType: !321, size: 64, offset: 256)
!913 = !DIDerivedType(tag: DW_TAG_member, scope: !724, file: !720, line: 96, baseType: !914, size: 64)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !724, file: !720, line: 96, size: 64, elements: !915)
!915 = !{!916}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !914, file: !720, line: 101, baseType: !917, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !150, line: 143, baseType: !418)
!918 = !DIDerivedType(tag: DW_TAG_member, scope: !724, file: !720, line: 103, baseType: !919, size: 320)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !724, file: !720, line: 103, size: 320, elements: !920)
!920 = !{!921, !931, !934, !935}
!921 = !DIDerivedType(tag: DW_TAG_member, scope: !919, file: !720, line: 104, baseType: !922, size: 128)
!922 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !919, file: !720, line: 104, size: 128, elements: !923)
!923 = !{!924, !925}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !922, file: !720, line: 105, baseType: !217, size: 128)
!925 = !DIDerivedType(tag: DW_TAG_member, scope: !922, file: !720, line: 106, baseType: !926, size: 128)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !922, file: !720, line: 106, size: 128, elements: !927)
!927 = !{!928, !929, !930}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !926, file: !720, line: 107, baseType: !718, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !926, file: !720, line: 109, baseType: !148, size: 32, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !926, file: !720, line: 110, baseType: !148, size: 32, offset: 96)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !919, file: !720, line: 117, baseType: !932, size: 64, offset: 128)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !720, line: 117, flags: DIFlagFwdDecl)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !919, file: !720, line: 119, baseType: !206, size: 64, offset: 192)
!935 = !DIDerivedType(tag: DW_TAG_member, scope: !919, file: !720, line: 120, baseType: !936, size: 64, offset: 256)
!936 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !919, file: !720, line: 120, size: 64, elements: !937)
!937 = !{!938, !939, !940}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !936, file: !720, line: 121, baseType: !206, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !936, file: !720, line: 122, baseType: !321, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, scope: !936, file: !720, line: 123, baseType: !941, size: 32)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !936, file: !720, line: 123, size: 32, elements: !942)
!942 = !{!943, !944, !945}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !941, file: !720, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !941, file: !720, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !941, file: !720, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!946 = !DIDerivedType(tag: DW_TAG_member, scope: !724, file: !720, line: 130, baseType: !947, size: 192)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !724, file: !720, line: 130, size: 192, elements: !948)
!948 = !{!949, !950, !951, !952, !953}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !947, file: !720, line: 131, baseType: !321, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !947, file: !720, line: 134, baseType: !424, size: 8, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !947, file: !720, line: 135, baseType: !424, size: 8, offset: 72)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !947, file: !720, line: 136, baseType: !744, size: 32, offset: 96)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !947, file: !720, line: 137, baseType: !7, size: 32, offset: 128)
!954 = !DIDerivedType(tag: DW_TAG_member, scope: !724, file: !720, line: 139, baseType: !955, size: 256)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !724, file: !720, line: 139, size: 256, elements: !956)
!956 = !{!957, !958, !959}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !955, file: !720, line: 140, baseType: !321, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !955, file: !720, line: 141, baseType: !744, size: 32, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !955, file: !720, line: 143, baseType: !217, size: 128, offset: 128)
!960 = !DIDerivedType(tag: DW_TAG_member, scope: !724, file: !720, line: 145, baseType: !961, size: 256)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !724, file: !720, line: 145, size: 256, elements: !962)
!962 = !{!963, !964, !966, !967, !2331}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !961, file: !720, line: 146, baseType: !321, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !961, file: !720, line: 147, baseType: !965, size: 64, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !710, line: 509, baseType: !718)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !961, file: !720, line: 148, baseType: !321, size: 64, offset: 128)
!967 = !DIDerivedType(tag: DW_TAG_member, scope: !961, file: !720, line: 149, baseType: !968, size: 64, offset: 192)
!968 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !961, file: !720, line: 149, size: 64, elements: !969)
!969 = !{!970, !2330}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !968, file: !720, line: 150, baseType: !971, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !720, line: 388, size: 7296, elements: !973)
!973 = !{!974, !2326}
!974 = !DIDerivedType(tag: DW_TAG_member, scope: !972, file: !720, line: 389, baseType: !975, size: 7296)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !972, file: !720, line: 389, size: 7296, elements: !976)
!976 = !{!977, !1095, !1096, !1097, !1101, !1102, !1103, !1104, !1105, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1146, !1154, !1157, !1203, !1204, !2310, !2311, !2314, !2315, !2316, !2319, !2320, !2321, !2324, !2325}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !975, file: !720, line: 390, baseType: !978, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !720, line: 305, size: 1472, elements: !980)
!980 = !{!981, !982, !983, !984, !985, !986, !987, !988, !995, !996, !1001, !1002, !1005, !1089, !1090, !1091, !1092, !1093}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !979, file: !720, line: 308, baseType: !321, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !979, file: !720, line: 309, baseType: !321, size: 64, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !979, file: !720, line: 313, baseType: !978, size: 64, offset: 128)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !979, file: !720, line: 313, baseType: !978, size: 64, offset: 192)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !979, file: !720, line: 315, baseType: !757, size: 192, align: 64, offset: 256)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !979, file: !720, line: 323, baseType: !321, size: 64, offset: 448)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !979, file: !720, line: 327, baseType: !971, size: 64, offset: 512)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !979, file: !720, line: 333, baseType: !989, size: 64, offset: 576)
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !710, line: 284, baseType: !990)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !710, line: 284, size: 64, elements: !991)
!991 = !{!992}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !990, file: !710, line: 284, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !994, line: 19, baseType: !321)
!994 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!995 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !979, file: !720, line: 334, baseType: !321, size: 64, offset: 640)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !979, file: !720, line: 343, baseType: !997, size: 256, offset: 704)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !979, file: !720, line: 340, size: 256, elements: !998)
!998 = !{!999, !1000}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !997, file: !720, line: 341, baseType: !757, size: 192, align: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !997, file: !720, line: 342, baseType: !321, size: 64, offset: 192)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !979, file: !720, line: 351, baseType: !217, size: 128, offset: 960)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !979, file: !720, line: 353, baseType: !1003, size: 64, offset: 1088)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !720, line: 353, flags: DIFlagFwdDecl)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !979, file: !720, line: 356, baseType: !1006, size: 64, offset: 1152)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1008)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1009)
!1009 = !{!1010, !1014, !1015, !1019, !1023, !1063, !1067, !1071, !1075, !1076, !1077, !1081, !1085}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1008, file: !14, line: 558, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{null, !978}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1008, file: !14, line: 559, baseType: !1011, size: 64, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1008, file: !14, line: 560, baseType: !1016, size: 64, offset: 128)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!148, !978, !321}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1008, file: !14, line: 561, baseType: !1020, size: 64, offset: 192)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!148, !978}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1008, file: !14, line: 562, baseType: !1024, size: 64, offset: 256)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!1027, !1028}
!1027 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !720, line: 682, baseType: !7)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1030)
!1030 = !{!1031, !1032, !1033, !1034, !1035, !1036, !1043, !1050, !1056, !1057, !1058, !1060, !1062}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1029, file: !14, line: 509, baseType: !978, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1029, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1029, file: !14, line: 511, baseType: !149, size: 32, offset: 96)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1029, file: !14, line: 512, baseType: !321, size: 64, offset: 128)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1029, file: !14, line: 513, baseType: !321, size: 64, offset: 192)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1029, file: !14, line: 514, baseType: !1037, size: 64, offset: 256)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !710, line: 385, baseType: !1039)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !710, line: 385, size: 64, elements: !1040)
!1040 = !{!1041}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1039, file: !710, line: 385, baseType: !1042, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !994, line: 15, baseType: !321)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1029, file: !14, line: 516, baseType: !1044, size: 64, offset: 320)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !710, line: 359, baseType: !1046)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !710, line: 359, size: 64, elements: !1047)
!1047 = !{!1048}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1046, file: !710, line: 359, baseType: !1049, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !994, line: 16, baseType: !321)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1029, file: !14, line: 519, baseType: !1051, size: 64, offset: 384)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !994, line: 21, baseType: !1052)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !994, line: 21, size: 64, elements: !1053)
!1053 = !{!1054}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1052, file: !994, line: 21, baseType: !1055, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !994, line: 14, baseType: !321)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1029, file: !14, line: 521, baseType: !718, size: 64, offset: 448)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1029, file: !14, line: 522, baseType: !718, size: 64, offset: 512)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1029, file: !14, line: 528, baseType: !1059, size: 64, offset: 576)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1029, file: !14, line: 532, baseType: !1061, size: 64, offset: 640)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1029, file: !14, line: 536, baseType: !965, size: 64, offset: 704)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1008, file: !14, line: 563, baseType: !1064, size: 64, offset: 320)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!1027, !1028, !13}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1008, file: !14, line: 565, baseType: !1068, size: 64, offset: 384)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{null, !1028, !321, !321}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1008, file: !14, line: 567, baseType: !1072, size: 64, offset: 448)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!321, !978}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1008, file: !14, line: 571, baseType: !1024, size: 64, offset: 512)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1008, file: !14, line: 574, baseType: !1024, size: 64, offset: 576)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1008, file: !14, line: 579, baseType: !1078, size: 64, offset: 640)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!148, !978, !321, !206, !148, !148}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1008, file: !14, line: 585, baseType: !1082, size: 64, offset: 704)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!188, !978}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1008, file: !14, line: 615, baseType: !1086, size: 64, offset: 768)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!718, !978, !321}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !979, file: !720, line: 359, baseType: !321, size: 64, offset: 1216)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !979, file: !720, line: 361, baseType: !349, size: 64, offset: 1280)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !979, file: !720, line: 362, baseType: !206, size: 64, offset: 1344)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !979, file: !720, line: 365, baseType: !768, size: 64, offset: 1408)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !979, file: !720, line: 373, baseType: !1094, offset: 1472)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !720, line: 296, elements: !244)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !975, file: !720, line: 391, baseType: !753, size: 64, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !975, file: !720, line: 392, baseType: !418, size: 64, offset: 128)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !975, file: !720, line: 394, baseType: !1098, size: 64, offset: 192)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!321, !349, !321, !321, !321, !321}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !975, file: !720, line: 398, baseType: !321, size: 64, offset: 256)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !975, file: !720, line: 399, baseType: !321, size: 64, offset: 320)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !975, file: !720, line: 405, baseType: !321, size: 64, offset: 384)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !975, file: !720, line: 406, baseType: !321, size: 64, offset: 448)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !975, file: !720, line: 407, baseType: !1106, size: 64, offset: 512)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !710, line: 286, baseType: !1108)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !710, line: 286, size: 64, elements: !1109)
!1109 = !{!1110}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1108, file: !710, line: 286, baseType: !1111, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !994, line: 18, baseType: !321)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !975, file: !720, line: 416, baseType: !744, size: 32, offset: 576)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !975, file: !720, line: 428, baseType: !744, size: 32, offset: 608)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !975, file: !720, line: 437, baseType: !744, size: 32, offset: 640)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !975, file: !720, line: 447, baseType: !744, size: 32, offset: 672)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !975, file: !720, line: 450, baseType: !768, size: 64, offset: 704)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !975, file: !720, line: 452, baseType: !148, size: 32, offset: 768)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !975, file: !720, line: 454, baseType: !230, offset: 800)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !975, file: !720, line: 457, baseType: !764, size: 256, offset: 832)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !975, file: !720, line: 459, baseType: !217, size: 128, offset: 1088)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !975, file: !720, line: 466, baseType: !321, size: 64, offset: 1216)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !975, file: !720, line: 467, baseType: !321, size: 64, offset: 1280)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !975, file: !720, line: 469, baseType: !321, size: 64, offset: 1344)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !975, file: !720, line: 470, baseType: !321, size: 64, offset: 1408)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !975, file: !720, line: 471, baseType: !770, size: 64, offset: 1472)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !975, file: !720, line: 472, baseType: !321, size: 64, offset: 1536)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !975, file: !720, line: 473, baseType: !321, size: 64, offset: 1600)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !975, file: !720, line: 474, baseType: !321, size: 64, offset: 1664)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !975, file: !720, line: 475, baseType: !321, size: 64, offset: 1728)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !975, file: !720, line: 477, baseType: !230, offset: 1792)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !975, file: !720, line: 478, baseType: !321, size: 64, offset: 1792)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !975, file: !720, line: 478, baseType: !321, size: 64, offset: 1856)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !975, file: !720, line: 478, baseType: !321, size: 64, offset: 1920)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !975, file: !720, line: 478, baseType: !321, size: 64, offset: 1984)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !975, file: !720, line: 479, baseType: !321, size: 64, offset: 2048)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !975, file: !720, line: 479, baseType: !321, size: 64, offset: 2112)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !975, file: !720, line: 479, baseType: !321, size: 64, offset: 2176)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !975, file: !720, line: 480, baseType: !321, size: 64, offset: 2240)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !975, file: !720, line: 480, baseType: !321, size: 64, offset: 2304)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !975, file: !720, line: 480, baseType: !321, size: 64, offset: 2368)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !975, file: !720, line: 480, baseType: !321, size: 64, offset: 2432)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !975, file: !720, line: 482, baseType: !1143, size: 2816, offset: 2496)
!1143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 2816, elements: !1144)
!1144 = !{!1145}
!1145 = !DISubrange(count: 44)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !975, file: !720, line: 488, baseType: !1147, size: 256, offset: 5312)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1148, line: 60, size: 256, elements: !1149)
!1148 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1149 = !{!1150}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1147, file: !1148, line: 61, baseType: !1151, size: 256)
!1151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !768, size: 256, elements: !1152)
!1152 = !{!1153}
!1153 = !DISubrange(count: 4)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !975, file: !720, line: 490, baseType: !1155, size: 64, offset: 5568)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !720, line: 490, flags: DIFlagFwdDecl)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !975, file: !720, line: 493, baseType: !1158, size: 896, offset: 5632)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1159, line: 53, baseType: !1160)
!1159 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1159, line: 13, size: 896, elements: !1161)
!1161 = !{!1162, !1163, !1164, !1165, !1168, !1169, !1176, !1177, !1197, !1198, !1199}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1160, file: !1159, line: 18, baseType: !418, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1160, file: !1159, line: 28, baseType: !770, size: 64, offset: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1160, file: !1159, line: 31, baseType: !764, size: 256, offset: 128)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1160, file: !1159, line: 32, baseType: !1166, size: 64, offset: 384)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1159, line: 32, flags: DIFlagFwdDecl)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1160, file: !1159, line: 37, baseType: !313, size: 16, offset: 448)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1160, file: !1159, line: 40, baseType: !1170, size: 192, offset: 512)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1171, line: 53, size: 192, elements: !1172)
!1171 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1172 = !{!1173, !1174, !1175}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1170, file: !1171, line: 54, baseType: !768, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1170, file: !1171, line: 55, baseType: !230, offset: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1170, file: !1171, line: 59, baseType: !217, size: 128, offset: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1160, file: !1159, line: 41, baseType: !206, size: 64, offset: 704)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1160, file: !1159, line: 42, baseType: !1178, size: 64, offset: 768)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1180)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1181, line: 13, size: 896, elements: !1182)
!1181 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1182 = !{!1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1180, file: !1181, line: 14, baseType: !206, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1180, file: !1181, line: 15, baseType: !321, size: 64, offset: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1180, file: !1181, line: 17, baseType: !321, size: 64, offset: 128)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1180, file: !1181, line: 17, baseType: !321, size: 64, offset: 192)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1180, file: !1181, line: 19, baseType: !306, size: 64, offset: 256)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1180, file: !1181, line: 21, baseType: !306, size: 64, offset: 320)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1180, file: !1181, line: 22, baseType: !306, size: 64, offset: 384)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1180, file: !1181, line: 23, baseType: !306, size: 64, offset: 448)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1180, file: !1181, line: 24, baseType: !306, size: 64, offset: 512)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1180, file: !1181, line: 25, baseType: !306, size: 64, offset: 576)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1180, file: !1181, line: 26, baseType: !306, size: 64, offset: 640)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1180, file: !1181, line: 27, baseType: !306, size: 64, offset: 704)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1180, file: !1181, line: 28, baseType: !306, size: 64, offset: 768)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1180, file: !1181, line: 29, baseType: !306, size: 64, offset: 832)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1160, file: !1159, line: 44, baseType: !744, size: 32, offset: 832)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1160, file: !1159, line: 50, baseType: !856, size: 16, offset: 864)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1160, file: !1159, line: 51, baseType: !1200, size: 16, offset: 880)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !413, line: 18, baseType: !1201)
!1201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !415, line: 23, baseType: !1202)
!1202 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !975, file: !720, line: 495, baseType: !321, size: 64, offset: 6528)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !975, file: !720, line: 497, baseType: !1205, size: 64, offset: 6592)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !720, line: 381, size: 384, elements: !1207)
!1207 = !{!1208, !1209, !2309}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1206, file: !720, line: 382, baseType: !744, size: 32)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1206, file: !720, line: 383, baseType: !1210, size: 128, offset: 64)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !720, line: 376, size: 128, elements: !1211)
!1211 = !{!1212, !2307}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1210, file: !720, line: 377, baseType: !1213, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1215, line: 640, size: 48640, elements: !1216)
!1215 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1216 = !{!1217, !1223, !1225, !1226, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1243, !1261, !1272, !1357, !1358, !1359, !1370, !1371, !1373, !1374, !1375, !1376, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1455, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1493, !1495, !1496, !1497, !1509, !1510, !1511, !1512, !1513, !1514, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1538, !1543, !1727, !1728, !1729, !1730, !1734, !1737, !1740, !1743, !1746, !1750, !1851, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1895, !1896, !1897, !1898, !1899, !1904, !1905, !1906, !1909, !1910, !1913, !1916, !1919, !1922, !1965, !1968, !1969, !2048, !2049, !2052, !2053, !2056, !2057, !2058, !2062, !2063, !2064, !2077, !2078, !2079, !2089, !2094, !2097, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1214, file: !1215, line: 646, baseType: !1218, size: 128)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1219, line: 56, size: 128, elements: !1220)
!1219 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1220 = !{!1221, !1222}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1218, file: !1219, line: 57, baseType: !321, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1218, file: !1219, line: 58, baseType: !412, size: 32, offset: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1214, file: !1215, line: 649, baseType: !1224, size: 64, offset: 128)
!1224 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !306)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1214, file: !1215, line: 657, baseType: !206, size: 64, offset: 192)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1214, file: !1215, line: 658, baseType: !1227, size: 32, offset: 256)
!1227 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1228, line: 113, baseType: !1229)
!1228 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1228, line: 111, size: 32, elements: !1230)
!1230 = !{!1231}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1229, file: !1228, line: 112, baseType: !744, size: 32)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1214, file: !1215, line: 660, baseType: !7, size: 32, offset: 288)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1214, file: !1215, line: 661, baseType: !7, size: 32, offset: 320)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1214, file: !1215, line: 684, baseType: !148, size: 32, offset: 352)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1214, file: !1215, line: 686, baseType: !148, size: 32, offset: 384)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1214, file: !1215, line: 687, baseType: !148, size: 32, offset: 416)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1214, file: !1215, line: 688, baseType: !148, size: 32, offset: 448)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1214, file: !1215, line: 689, baseType: !7, size: 32, offset: 480)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1214, file: !1215, line: 691, baseType: !1240, size: 64, offset: 512)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1242)
!1242 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1215, line: 691, flags: DIFlagFwdDecl)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1214, file: !1215, line: 692, baseType: !1244, size: 832, offset: 576)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1215, line: 451, size: 832, elements: !1245)
!1245 = !{!1246, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1244, file: !1215, line: 453, baseType: !1247, size: 128)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1215, line: 325, size: 128, elements: !1248)
!1248 = !{!1249, !1250}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1247, file: !1215, line: 326, baseType: !321, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1247, file: !1215, line: 327, baseType: !412, size: 32, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1244, file: !1215, line: 454, baseType: !757, size: 192, align: 64, offset: 128)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1244, file: !1215, line: 455, baseType: !217, size: 128, offset: 320)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1244, file: !1215, line: 456, baseType: !7, size: 32, offset: 448)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1244, file: !1215, line: 458, baseType: !418, size: 64, offset: 512)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1244, file: !1215, line: 459, baseType: !418, size: 64, offset: 576)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1244, file: !1215, line: 460, baseType: !418, size: 64, offset: 640)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1244, file: !1215, line: 461, baseType: !418, size: 64, offset: 704)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1244, file: !1215, line: 463, baseType: !418, size: 64, offset: 768)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1244, file: !1215, line: 465, baseType: !1260, offset: 832)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1215, line: 415, elements: !244)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1214, file: !1215, line: 693, baseType: !1262, size: 384, offset: 1408)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1215, line: 489, size: 384, elements: !1263)
!1263 = !{!1264, !1265, !1266, !1267, !1268, !1269, !1270}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1262, file: !1215, line: 490, baseType: !217, size: 128)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1262, file: !1215, line: 491, baseType: !321, size: 64, offset: 128)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1262, file: !1215, line: 492, baseType: !321, size: 64, offset: 192)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1262, file: !1215, line: 493, baseType: !7, size: 32, offset: 256)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1262, file: !1215, line: 494, baseType: !313, size: 16, offset: 288)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1262, file: !1215, line: 495, baseType: !313, size: 16, offset: 304)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1262, file: !1215, line: 497, baseType: !1271, size: 64, offset: 320)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1214, file: !1215, line: 697, baseType: !1273, size: 1792, offset: 1792)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1215, line: 507, size: 1792, elements: !1274)
!1274 = !{!1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1354, !1355}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1273, file: !1215, line: 508, baseType: !757, size: 192, align: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1273, file: !1215, line: 515, baseType: !418, size: 64, offset: 192)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1273, file: !1215, line: 516, baseType: !418, size: 64, offset: 256)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1273, file: !1215, line: 517, baseType: !418, size: 64, offset: 320)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1273, file: !1215, line: 518, baseType: !418, size: 64, offset: 384)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1273, file: !1215, line: 519, baseType: !418, size: 64, offset: 448)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1273, file: !1215, line: 526, baseType: !774, size: 64, offset: 512)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1273, file: !1215, line: 527, baseType: !418, size: 64, offset: 576)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1273, file: !1215, line: 528, baseType: !7, size: 32, offset: 640)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1273, file: !1215, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1273, file: !1215, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1273, file: !1215, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1273, file: !1215, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1273, file: !1215, line: 563, baseType: !1289, size: 512, offset: 704)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1290)
!1290 = !{!1291, !1299, !1300, !1305, !1348, !1351, !1352, !1353}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1289, file: !20, line: 119, baseType: !1292, size: 256)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1293, line: 9, size: 256, elements: !1294)
!1293 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1294 = !{!1295, !1296}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1292, file: !1293, line: 10, baseType: !757, size: 192, align: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1292, file: !1293, line: 11, baseType: !1297, size: 64, offset: 192)
!1297 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1298, line: 29, baseType: !774)
!1298 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1289, file: !20, line: 120, baseType: !1297, size: 64, offset: 256)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1289, file: !20, line: 121, baseType: !1301, size: 64, offset: 320)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{!19, !1304}
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1289, file: !20, line: 122, baseType: !1306, size: 64, offset: 384)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1308)
!1308 = !{!1309, !1329, !1330, !1333, !1338, !1339, !1343, !1347}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1307, file: !20, line: 160, baseType: !1310, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1312)
!1312 = !{!1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1311, file: !20, line: 215, baseType: !777)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1311, file: !20, line: 216, baseType: !7, size: 32)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1311, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1311, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1311, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1311, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1311, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1311, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1311, file: !20, line: 233, baseType: !1297, size: 64, offset: 128)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1311, file: !20, line: 234, baseType: !1304, size: 64, offset: 192)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1311, file: !20, line: 235, baseType: !1297, size: 64, offset: 256)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1311, file: !20, line: 236, baseType: !1304, size: 64, offset: 320)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1311, file: !20, line: 237, baseType: !1326, size: 4096, offset: 512)
!1326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1307, size: 4096, elements: !1327)
!1327 = !{!1328}
!1328 = !DISubrange(count: 8)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1307, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1307, file: !20, line: 162, baseType: !1331, size: 32, offset: 96)
!1331 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !150, line: 27, baseType: !1332)
!1332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !304, line: 96, baseType: !148)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1307, file: !20, line: 163, baseType: !1334, size: 32, offset: 128)
!1334 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !385, line: 276, baseType: !1335)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !385, line: 276, size: 32, elements: !1336)
!1336 = !{!1337}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1335, file: !385, line: 276, baseType: !389, size: 32)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1307, file: !20, line: 164, baseType: !1304, size: 64, offset: 192)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1307, file: !20, line: 165, baseType: !1340, size: 128, offset: 256)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1293, line: 14, size: 128, elements: !1341)
!1341 = !{!1342}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1340, file: !1293, line: 15, baseType: !749, size: 128)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1307, file: !20, line: 166, baseType: !1344, size: 64, offset: 384)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!1297}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1307, file: !20, line: 167, baseType: !1297, size: 64, offset: 448)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1289, file: !20, line: 123, baseType: !1349, size: 8, offset: 448)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !413, line: 17, baseType: !1350)
!1350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !415, line: 21, baseType: !424)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1289, file: !20, line: 124, baseType: !1349, size: 8, offset: 456)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1289, file: !20, line: 125, baseType: !1349, size: 8, offset: 464)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1289, file: !20, line: 126, baseType: !1349, size: 8, offset: 472)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1273, file: !1215, line: 572, baseType: !1289, size: 512, offset: 1216)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1273, file: !1215, line: 580, baseType: !1356, size: 64, offset: 1728)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1214, file: !1215, line: 721, baseType: !7, size: 32, offset: 3584)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1214, file: !1215, line: 722, baseType: !148, size: 32, offset: 3616)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1214, file: !1215, line: 723, baseType: !1360, size: 64, offset: 3648)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1362)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1363, line: 17, baseType: !1364)
!1363 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1363, line: 17, size: 64, elements: !1365)
!1365 = !{!1366}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1364, file: !1363, line: 17, baseType: !1367, size: 64)
!1367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 64, elements: !1368)
!1368 = !{!1369}
!1369 = !DISubrange(count: 1)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1214, file: !1215, line: 724, baseType: !1362, size: 64, offset: 3712)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1214, file: !1215, line: 749, baseType: !1372, offset: 3776)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1215, line: 290, elements: !244)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1214, file: !1215, line: 751, baseType: !217, size: 128, offset: 3776)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1214, file: !1215, line: 757, baseType: !971, size: 64, offset: 3904)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1214, file: !1215, line: 758, baseType: !971, size: 64, offset: 3968)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1214, file: !1215, line: 761, baseType: !1377, size: 320, offset: 4032)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1148, line: 34, size: 320, elements: !1378)
!1378 = !{!1379, !1380}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1377, file: !1148, line: 35, baseType: !418, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1377, file: !1148, line: 36, baseType: !1381, size: 256, offset: 64)
!1381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !978, size: 256, elements: !1152)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1214, file: !1215, line: 766, baseType: !148, size: 32, offset: 4352)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1214, file: !1215, line: 767, baseType: !148, size: 32, offset: 4384)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1214, file: !1215, line: 768, baseType: !148, size: 32, offset: 4416)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1214, file: !1215, line: 770, baseType: !148, size: 32, offset: 4448)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1214, file: !1215, line: 772, baseType: !321, size: 64, offset: 4480)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1214, file: !1215, line: 775, baseType: !7, size: 32, offset: 4544)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1214, file: !1215, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1214, file: !1215, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1214, file: !1215, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1214, file: !1215, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1214, file: !1215, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1214, file: !1215, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1214, file: !1215, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1214, file: !1215, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1214, file: !1215, line: 831, baseType: !321, size: 64, offset: 4672)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1214, file: !1215, line: 833, baseType: !1398, size: 384, offset: 4736)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1399)
!1399 = !{!1400, !1405}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1398, file: !25, line: 26, baseType: !1401, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!306, !1404}
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, scope: !1398, file: !25, line: 27, baseType: !1406, size: 320, offset: 64)
!1406 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1398, file: !25, line: 27, size: 320, elements: !1407)
!1407 = !{!1408, !1418, !1445}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1406, file: !25, line: 36, baseType: !1409, size: 320)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1406, file: !25, line: 29, size: 320, elements: !1410)
!1410 = !{!1411, !1413, !1414, !1415, !1416, !1417}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1409, file: !25, line: 30, baseType: !1412, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1409, file: !25, line: 31, baseType: !412, size: 32, offset: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1409, file: !25, line: 32, baseType: !412, size: 32, offset: 96)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1409, file: !25, line: 33, baseType: !412, size: 32, offset: 128)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1409, file: !25, line: 34, baseType: !418, size: 64, offset: 192)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1409, file: !25, line: 35, baseType: !1412, size: 64, offset: 256)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1406, file: !25, line: 46, baseType: !1419, size: 192)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1406, file: !25, line: 38, size: 192, elements: !1420)
!1420 = !{!1421, !1422, !1423, !1444}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1419, file: !25, line: 39, baseType: !1331, size: 32)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1419, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1423 = !DIDerivedType(tag: DW_TAG_member, scope: !1419, file: !25, line: 41, baseType: !1424, size: 64, offset: 64)
!1424 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1419, file: !25, line: 41, size: 64, elements: !1425)
!1425 = !{!1426, !1434}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1424, file: !25, line: 42, baseType: !1427, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1429, line: 7, size: 128, elements: !1430)
!1429 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1430 = !{!1431, !1433}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1428, file: !1429, line: 8, baseType: !1432, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !304, line: 93, baseType: !530)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1428, file: !1429, line: 9, baseType: !530, size: 64, offset: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1424, file: !25, line: 43, baseType: !1435, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1437, line: 7, size: 64, elements: !1438)
!1437 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1438 = !{!1439, !1443}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1436, file: !1437, line: 8, baseType: !1440, size: 32)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1437, line: 5, baseType: !1441)
!1441 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !413, line: 20, baseType: !1442)
!1442 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !415, line: 26, baseType: !148)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1436, file: !1437, line: 9, baseType: !1441, size: 32, offset: 32)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1419, file: !25, line: 45, baseType: !418, size: 64, offset: 128)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1406, file: !25, line: 54, baseType: !1446, size: 256)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1406, file: !25, line: 48, size: 256, elements: !1447)
!1447 = !{!1448, !1451, !1452, !1453, !1454}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1446, file: !25, line: 49, baseType: !1449, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1446, file: !25, line: 50, baseType: !148, size: 32, offset: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1446, file: !25, line: 51, baseType: !148, size: 32, offset: 96)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1446, file: !25, line: 52, baseType: !321, size: 64, offset: 128)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1446, file: !25, line: 53, baseType: !321, size: 64, offset: 192)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1214, file: !1215, line: 835, baseType: !1456, size: 32, offset: 5120)
!1456 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !150, line: 22, baseType: !1457)
!1457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !304, line: 28, baseType: !148)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1214, file: !1215, line: 836, baseType: !1456, size: 32, offset: 5152)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1214, file: !1215, line: 840, baseType: !321, size: 64, offset: 5184)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1214, file: !1215, line: 849, baseType: !1213, size: 64, offset: 5248)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1214, file: !1215, line: 852, baseType: !1213, size: 64, offset: 5312)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1214, file: !1215, line: 857, baseType: !217, size: 128, offset: 5376)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1214, file: !1215, line: 858, baseType: !217, size: 128, offset: 5504)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1214, file: !1215, line: 859, baseType: !1213, size: 64, offset: 5632)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1214, file: !1215, line: 867, baseType: !217, size: 128, offset: 5696)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1214, file: !1215, line: 868, baseType: !217, size: 128, offset: 5824)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1214, file: !1215, line: 871, baseType: !1468, size: 64, offset: 5952)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1470)
!1470 = !{!1471, !1472, !1473, !1474, !1476, !1477, !1484, !1485}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1469, file: !53, line: 61, baseType: !1227, size: 32)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1469, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1469, file: !53, line: 63, baseType: !230, offset: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1469, file: !53, line: 65, baseType: !1475, size: 256, offset: 64)
!1475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !632, size: 256, elements: !1152)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1469, file: !53, line: 66, baseType: !632, size: 64, offset: 320)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1469, file: !53, line: 68, baseType: !1478, size: 128, offset: 384)
!1478 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1479, line: 40, baseType: !1480)
!1479 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1479, line: 36, size: 128, elements: !1481)
!1481 = !{!1482, !1483}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1480, file: !1479, line: 37, baseType: !230)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1480, file: !1479, line: 38, baseType: !217, size: 128)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1469, file: !53, line: 69, baseType: !362, size: 128, align: 64, offset: 512)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1469, file: !53, line: 70, baseType: !1486, size: 128, offset: 640)
!1486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1487, size: 128, elements: !1368)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1488)
!1488 = !{!1489, !1490}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1487, file: !53, line: 55, baseType: !148, size: 32)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1487, file: !53, line: 56, baseType: !1491, size: 64, offset: 64)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1214, file: !1215, line: 872, baseType: !1494, size: 512, offset: 6016)
!1494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !636, size: 512, elements: !1152)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1214, file: !1215, line: 873, baseType: !217, size: 128, offset: 6528)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1214, file: !1215, line: 874, baseType: !217, size: 128, offset: 6656)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1214, file: !1215, line: 876, baseType: !1498, size: 64, offset: 6784)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1500, line: 26, size: 192, elements: !1501)
!1500 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1501 = !{!1502, !1503}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1499, file: !1500, line: 27, baseType: !7, size: 32)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1499, file: !1500, line: 28, baseType: !1504, size: 128, offset: 64)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1505, line: 43, size: 128, elements: !1506)
!1505 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1506 = !{!1507, !1508}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1504, file: !1505, line: 44, baseType: !777)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1504, file: !1505, line: 45, baseType: !217, size: 128)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1214, file: !1215, line: 879, baseType: !702, size: 64, offset: 6848)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1214, file: !1215, line: 882, baseType: !702, size: 64, offset: 6912)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1214, file: !1215, line: 884, baseType: !418, size: 64, offset: 6976)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1214, file: !1215, line: 885, baseType: !418, size: 64, offset: 7040)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1214, file: !1215, line: 890, baseType: !418, size: 64, offset: 7104)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1214, file: !1215, line: 891, baseType: !1515, size: 128, offset: 7168)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1215, line: 242, size: 128, elements: !1516)
!1516 = !{!1517, !1518, !1519}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1515, file: !1215, line: 244, baseType: !418, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1515, file: !1215, line: 245, baseType: !418, size: 64, offset: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1515, file: !1215, line: 246, baseType: !777, offset: 128)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1214, file: !1215, line: 900, baseType: !321, size: 64, offset: 7296)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1214, file: !1215, line: 901, baseType: !321, size: 64, offset: 7360)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1214, file: !1215, line: 904, baseType: !418, size: 64, offset: 7424)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1214, file: !1215, line: 907, baseType: !418, size: 64, offset: 7488)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1214, file: !1215, line: 910, baseType: !321, size: 64, offset: 7552)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1214, file: !1215, line: 911, baseType: !321, size: 64, offset: 7616)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1214, file: !1215, line: 914, baseType: !1527, size: 640, offset: 7680)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1528, line: 123, size: 640, elements: !1529)
!1528 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1529 = !{!1530, !1536, !1537}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1527, file: !1528, line: 124, baseType: !1531, size: 576)
!1531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1532, size: 576, elements: !272)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1528, line: 108, size: 192, elements: !1533)
!1533 = !{!1534, !1535}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1532, file: !1528, line: 109, baseType: !418, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1532, file: !1528, line: 110, baseType: !1340, size: 128, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1527, file: !1528, line: 125, baseType: !7, size: 32, offset: 576)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1527, file: !1528, line: 126, baseType: !7, size: 32, offset: 608)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1214, file: !1215, line: 917, baseType: !1539, size: 192, offset: 8320)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1528, line: 134, size: 192, elements: !1540)
!1540 = !{!1541, !1542}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1539, file: !1528, line: 135, baseType: !362, size: 128, align: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1539, file: !1528, line: 136, baseType: !7, size: 32, offset: 128)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1214, file: !1215, line: 923, baseType: !1544, size: 64, offset: 8512)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1546)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1547, line: 111, size: 1280, elements: !1548)
!1547 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1548 = !{!1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1568, !1569, !1570, !1571, !1572, !1573, !1680, !1681, !1682, !1683, !1709, !1712, !1722}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1546, file: !1547, line: 112, baseType: !744, size: 32)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1546, file: !1547, line: 120, baseType: !432, size: 32, offset: 32)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1546, file: !1547, line: 121, baseType: !440, size: 32, offset: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1546, file: !1547, line: 122, baseType: !432, size: 32, offset: 96)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1546, file: !1547, line: 123, baseType: !440, size: 32, offset: 128)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1546, file: !1547, line: 124, baseType: !432, size: 32, offset: 160)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1546, file: !1547, line: 125, baseType: !440, size: 32, offset: 192)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1546, file: !1547, line: 126, baseType: !432, size: 32, offset: 224)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1546, file: !1547, line: 127, baseType: !440, size: 32, offset: 256)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1546, file: !1547, line: 128, baseType: !7, size: 32, offset: 288)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1546, file: !1547, line: 129, baseType: !1560, size: 64, offset: 320)
!1560 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1561, line: 26, baseType: !1562)
!1561 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1561, line: 24, size: 64, elements: !1563)
!1563 = !{!1564}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1562, file: !1561, line: 25, baseType: !1565, size: 64)
!1565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 64, elements: !1566)
!1566 = !{!1567}
!1567 = !DISubrange(count: 2)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1546, file: !1547, line: 130, baseType: !1560, size: 64, offset: 384)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1546, file: !1547, line: 131, baseType: !1560, size: 64, offset: 448)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1546, file: !1547, line: 132, baseType: !1560, size: 64, offset: 512)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1546, file: !1547, line: 133, baseType: !1560, size: 64, offset: 576)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1546, file: !1547, line: 135, baseType: !424, size: 8, offset: 640)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1546, file: !1547, line: 137, baseType: !1574, size: 64, offset: 704)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1576, line: 189, size: 1664, elements: !1577)
!1576 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1577 = !{!1578, !1579, !1582, !1587, !1588, !1591, !1592, !1597, !1598, !1599, !1600, !1602, !1603, !1604, !1605, !1606, !1644, !1665}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1575, file: !1576, line: 190, baseType: !1227, size: 32)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1575, file: !1576, line: 191, baseType: !1580, size: 32, offset: 32)
!1580 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1576, line: 28, baseType: !1581)
!1581 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !150, line: 98, baseType: !1441)
!1582 = !DIDerivedType(tag: DW_TAG_member, scope: !1575, file: !1576, line: 192, baseType: !1583, size: 192, offset: 64)
!1583 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1575, file: !1576, line: 192, size: 192, elements: !1584)
!1584 = !{!1585, !1586}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1583, file: !1576, line: 193, baseType: !217, size: 128)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1583, file: !1576, line: 194, baseType: !757, size: 192, align: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1575, file: !1576, line: 199, baseType: !764, size: 256, offset: 256)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1575, file: !1576, line: 200, baseType: !1589, size: 64, offset: 512)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1576, line: 200, flags: DIFlagFwdDecl)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1575, file: !1576, line: 201, baseType: !206, size: 64, offset: 576)
!1592 = !DIDerivedType(tag: DW_TAG_member, scope: !1575, file: !1576, line: 202, baseType: !1593, size: 64, offset: 640)
!1593 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1575, file: !1576, line: 202, size: 64, elements: !1594)
!1594 = !{!1595, !1596}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1593, file: !1576, line: 203, baseType: !536, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1593, file: !1576, line: 204, baseType: !536, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1575, file: !1576, line: 206, baseType: !536, size: 64, offset: 704)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1575, file: !1576, line: 207, baseType: !432, size: 32, offset: 768)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1575, file: !1576, line: 208, baseType: !440, size: 32, offset: 800)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1575, file: !1576, line: 209, baseType: !1601, size: 32, offset: 832)
!1601 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1576, line: 31, baseType: !556)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1575, file: !1576, line: 210, baseType: !313, size: 16, offset: 864)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1575, file: !1576, line: 211, baseType: !313, size: 16, offset: 880)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1575, file: !1576, line: 215, baseType: !1202, size: 16, offset: 896)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1575, file: !1576, line: 222, baseType: !321, size: 64, offset: 960)
!1606 = !DIDerivedType(tag: DW_TAG_member, scope: !1575, file: !1576, line: 239, baseType: !1607, size: 320, offset: 1024)
!1607 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1575, file: !1576, line: 239, size: 320, elements: !1608)
!1608 = !{!1609, !1636}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1607, file: !1576, line: 240, baseType: !1610, size: 320)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1576, line: 108, size: 320, elements: !1611)
!1611 = !{!1612, !1613, !1625, !1628, !1635}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1610, file: !1576, line: 110, baseType: !321, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, scope: !1610, file: !1576, line: 111, baseType: !1614, size: 64, offset: 64)
!1614 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1610, file: !1576, line: 111, size: 64, elements: !1615)
!1615 = !{!1616, !1624}
!1616 = !DIDerivedType(tag: DW_TAG_member, scope: !1614, file: !1576, line: 112, baseType: !1617, size: 64)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1614, file: !1576, line: 112, size: 64, elements: !1618)
!1618 = !{!1619, !1620}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1617, file: !1576, line: 114, baseType: !856, size: 16)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1617, file: !1576, line: 115, baseType: !1621, size: 48, offset: 16)
!1621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 48, elements: !1622)
!1622 = !{!1623}
!1623 = !DISubrange(count: 6)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1614, file: !1576, line: 121, baseType: !321, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1610, file: !1576, line: 123, baseType: !1626, size: 64, offset: 128)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1576, line: 96, flags: DIFlagFwdDecl)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1610, file: !1576, line: 124, baseType: !1629, size: 64, offset: 192)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1576, line: 102, size: 192, elements: !1631)
!1631 = !{!1632, !1633, !1634}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1630, file: !1576, line: 103, baseType: !362, size: 128, align: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1630, file: !1576, line: 104, baseType: !1227, size: 32, offset: 128)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1630, file: !1576, line: 105, baseType: !487, size: 8, offset: 160)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1610, file: !1576, line: 125, baseType: !188, size: 64, offset: 256)
!1636 = !DIDerivedType(tag: DW_TAG_member, scope: !1607, file: !1576, line: 241, baseType: !1637, size: 320)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1607, file: !1576, line: 241, size: 320, elements: !1638)
!1638 = !{!1639, !1640, !1641, !1642, !1643}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1637, file: !1576, line: 242, baseType: !321, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1637, file: !1576, line: 243, baseType: !321, size: 64, offset: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1637, file: !1576, line: 244, baseType: !1626, size: 64, offset: 128)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1637, file: !1576, line: 245, baseType: !1629, size: 64, offset: 192)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1637, file: !1576, line: 246, baseType: !271, size: 64, offset: 256)
!1644 = !DIDerivedType(tag: DW_TAG_member, scope: !1575, file: !1576, line: 254, baseType: !1645, size: 256, offset: 1344)
!1645 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1575, file: !1576, line: 254, size: 256, elements: !1646)
!1646 = !{!1647, !1653}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1645, file: !1576, line: 255, baseType: !1648, size: 256)
!1648 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1576, line: 128, size: 256, elements: !1649)
!1649 = !{!1650, !1651}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1648, file: !1576, line: 129, baseType: !206, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1648, file: !1576, line: 130, baseType: !1652, size: 256)
!1652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 256, elements: !1152)
!1653 = !DIDerivedType(tag: DW_TAG_member, scope: !1645, file: !1576, line: 256, baseType: !1654, size: 256)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1645, file: !1576, line: 256, size: 256, elements: !1655)
!1655 = !{!1656, !1657}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1654, file: !1576, line: 258, baseType: !217, size: 128)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1654, file: !1576, line: 259, baseType: !1658, size: 128, offset: 128)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1659, line: 22, size: 128, elements: !1660)
!1659 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1660 = !{!1661, !1664}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1658, file: !1659, line: 23, baseType: !1662, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1659, line: 23, flags: DIFlagFwdDecl)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1658, file: !1659, line: 24, baseType: !321, size: 64, offset: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1575, file: !1576, line: 274, baseType: !1666, size: 64, offset: 1600)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1576, line: 170, size: 192, elements: !1668)
!1668 = !{!1669, !1678, !1679}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1667, file: !1576, line: 171, baseType: !1670, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1576, line: 165, baseType: !1671)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{!148, !1574, !1674, !1676, !1574}
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1627)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1648)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1667, file: !1576, line: 172, baseType: !1574, size: 64, offset: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1667, file: !1576, line: 173, baseType: !1626, size: 64, offset: 128)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1546, file: !1547, line: 138, baseType: !1574, size: 64, offset: 768)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1546, file: !1547, line: 139, baseType: !1574, size: 64, offset: 832)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1546, file: !1547, line: 140, baseType: !1574, size: 64, offset: 896)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1546, file: !1547, line: 145, baseType: !1684, size: 64, offset: 960)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1686, line: 13, size: 896, elements: !1687)
!1686 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1687 = !{!1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1685, file: !1686, line: 14, baseType: !1227, size: 32)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1685, file: !1686, line: 15, baseType: !744, size: 32, offset: 32)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1685, file: !1686, line: 16, baseType: !744, size: 32, offset: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1685, file: !1686, line: 21, baseType: !768, size: 64, offset: 128)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1685, file: !1686, line: 27, baseType: !321, size: 64, offset: 192)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1685, file: !1686, line: 28, baseType: !321, size: 64, offset: 256)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1685, file: !1686, line: 29, baseType: !768, size: 64, offset: 320)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1685, file: !1686, line: 32, baseType: !636, size: 128, offset: 384)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1685, file: !1686, line: 33, baseType: !432, size: 32, offset: 512)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1685, file: !1686, line: 37, baseType: !768, size: 64, offset: 576)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1685, file: !1686, line: 44, baseType: !1699, size: 256, offset: 640)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1700, line: 15, size: 256, elements: !1701)
!1700 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1701 = !{!1702, !1703, !1704, !1705, !1706, !1707, !1708}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1699, file: !1700, line: 16, baseType: !777)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1699, file: !1700, line: 18, baseType: !148, size: 32)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1699, file: !1700, line: 19, baseType: !148, size: 32, offset: 32)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1699, file: !1700, line: 20, baseType: !148, size: 32, offset: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1699, file: !1700, line: 21, baseType: !148, size: 32, offset: 96)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1699, file: !1700, line: 22, baseType: !321, size: 64, offset: 128)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1699, file: !1700, line: 23, baseType: !321, size: 64, offset: 192)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1546, file: !1547, line: 146, baseType: !1710, size: 64, offset: 1024)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !433, line: 18, flags: DIFlagFwdDecl)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1546, file: !1547, line: 147, baseType: !1713, size: 64, offset: 1088)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1547, line: 25, size: 64, elements: !1715)
!1715 = !{!1716, !1717, !1718}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1714, file: !1547, line: 26, baseType: !744, size: 32)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1714, file: !1547, line: 27, baseType: !148, size: 32, offset: 32)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1714, file: !1547, line: 28, baseType: !1719, offset: 64)
!1719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, elements: !1720)
!1720 = !{!1721}
!1721 = !DISubrange(count: 0)
!1722 = !DIDerivedType(tag: DW_TAG_member, scope: !1546, file: !1547, line: 149, baseType: !1723, size: 128, offset: 1152)
!1723 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1546, file: !1547, line: 149, size: 128, elements: !1724)
!1724 = !{!1725, !1726}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1723, file: !1547, line: 150, baseType: !148, size: 32)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1723, file: !1547, line: 151, baseType: !362, size: 128, align: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1214, file: !1215, line: 926, baseType: !1544, size: 64, offset: 8576)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1214, file: !1215, line: 929, baseType: !1544, size: 64, offset: 8640)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1214, file: !1215, line: 933, baseType: !1574, size: 64, offset: 8704)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1214, file: !1215, line: 943, baseType: !1731, size: 128, offset: 8768)
!1731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 128, elements: !1732)
!1732 = !{!1733}
!1733 = !DISubrange(count: 16)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1214, file: !1215, line: 945, baseType: !1735, size: 64, offset: 8896)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1215, line: 49, flags: DIFlagFwdDecl)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1214, file: !1215, line: 956, baseType: !1738, size: 64, offset: 8960)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1215, line: 45, flags: DIFlagFwdDecl)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1214, file: !1215, line: 959, baseType: !1741, size: 64, offset: 9024)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1215, line: 959, flags: DIFlagFwdDecl)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1214, file: !1215, line: 962, baseType: !1744, size: 64, offset: 9088)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1215, line: 66, flags: DIFlagFwdDecl)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1214, file: !1215, line: 966, baseType: !1747, size: 64, offset: 9152)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1749, line: 35, flags: DIFlagFwdDecl)
!1749 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1214, file: !1215, line: 969, baseType: !1751, size: 64, offset: 9216)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1753, line: 82, size: 7296, elements: !1754)
!1753 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1754 = !{!1755, !1756, !1757, !1758, !1759, !1760, !1761, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1790, !1799, !1800, !1802, !1803, !1804, !1807, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1837, !1838, !1845, !1846, !1847, !1848, !1849, !1850}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1752, file: !1753, line: 83, baseType: !1227, size: 32)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1752, file: !1753, line: 84, baseType: !744, size: 32, offset: 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1752, file: !1753, line: 85, baseType: !148, size: 32, offset: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1752, file: !1753, line: 86, baseType: !217, size: 128, offset: 128)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1752, file: !1753, line: 88, baseType: !1478, size: 128, offset: 256)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1752, file: !1753, line: 91, baseType: !1213, size: 64, offset: 384)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1752, file: !1753, line: 94, baseType: !1762, size: 192, offset: 448)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1763, line: 30, size: 192, elements: !1764)
!1763 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1764 = !{!1765, !1766}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1762, file: !1763, line: 31, baseType: !217, size: 128)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1762, file: !1763, line: 32, baseType: !1767, size: 64, offset: 128)
!1767 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1768, line: 25, baseType: !1769)
!1768 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1768, line: 23, size: 64, elements: !1770)
!1770 = !{!1771}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1769, file: !1768, line: 24, baseType: !1367, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1752, file: !1753, line: 97, baseType: !632, size: 64, offset: 640)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1752, file: !1753, line: 100, baseType: !148, size: 32, offset: 704)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1752, file: !1753, line: 106, baseType: !148, size: 32, offset: 736)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1752, file: !1753, line: 107, baseType: !1213, size: 64, offset: 768)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1752, file: !1753, line: 110, baseType: !148, size: 32, offset: 832)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1752, file: !1753, line: 111, baseType: !7, size: 32, offset: 864)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1752, file: !1753, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1752, file: !1753, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1752, file: !1753, line: 128, baseType: !148, size: 32, offset: 928)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1752, file: !1753, line: 129, baseType: !217, size: 128, offset: 960)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1752, file: !1753, line: 132, baseType: !1289, size: 512, offset: 1088)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1752, file: !1753, line: 133, baseType: !1297, size: 64, offset: 1600)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1752, file: !1753, line: 140, baseType: !1785, size: 256, offset: 1664)
!1785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1786, size: 256, elements: !1566)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1753, line: 38, size: 128, elements: !1787)
!1787 = !{!1788, !1789}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1786, file: !1753, line: 39, baseType: !418, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1786, file: !1753, line: 40, baseType: !418, size: 64, offset: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1752, file: !1753, line: 146, baseType: !1791, size: 192, offset: 1920)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1753, line: 66, size: 192, elements: !1792)
!1792 = !{!1793}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1791, file: !1753, line: 67, baseType: !1794, size: 192)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1753, line: 47, size: 192, elements: !1795)
!1795 = !{!1796, !1797, !1798}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1794, file: !1753, line: 48, baseType: !770, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1794, file: !1753, line: 49, baseType: !770, size: 64, offset: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1794, file: !1753, line: 50, baseType: !770, size: 64, offset: 128)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1752, file: !1753, line: 150, baseType: !1527, size: 640, offset: 2112)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1752, file: !1753, line: 153, baseType: !1801, size: 256, offset: 2752)
!1801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1468, size: 256, elements: !1152)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1752, file: !1753, line: 159, baseType: !1468, size: 64, offset: 3008)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1752, file: !1753, line: 162, baseType: !148, size: 32, offset: 3072)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1752, file: !1753, line: 164, baseType: !1805, size: 64, offset: 3136)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1753, line: 164, flags: DIFlagFwdDecl)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1752, file: !1753, line: 175, baseType: !1808, size: 32, offset: 3200)
!1808 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !385, line: 805, baseType: !1809)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !385, line: 798, size: 32, elements: !1810)
!1810 = !{!1811, !1812}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1809, file: !385, line: 803, baseType: !384, size: 32)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1809, file: !385, line: 804, baseType: !230, offset: 32)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1752, file: !1753, line: 176, baseType: !418, size: 64, offset: 3264)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1752, file: !1753, line: 176, baseType: !418, size: 64, offset: 3328)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1752, file: !1753, line: 176, baseType: !418, size: 64, offset: 3392)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1752, file: !1753, line: 176, baseType: !418, size: 64, offset: 3456)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1752, file: !1753, line: 177, baseType: !418, size: 64, offset: 3520)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1752, file: !1753, line: 178, baseType: !418, size: 64, offset: 3584)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1752, file: !1753, line: 179, baseType: !1515, size: 128, offset: 3648)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1752, file: !1753, line: 180, baseType: !321, size: 64, offset: 3776)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1752, file: !1753, line: 180, baseType: !321, size: 64, offset: 3840)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1752, file: !1753, line: 180, baseType: !321, size: 64, offset: 3904)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1752, file: !1753, line: 180, baseType: !321, size: 64, offset: 3968)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1752, file: !1753, line: 181, baseType: !321, size: 64, offset: 4032)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1752, file: !1753, line: 181, baseType: !321, size: 64, offset: 4096)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1752, file: !1753, line: 181, baseType: !321, size: 64, offset: 4160)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1752, file: !1753, line: 181, baseType: !321, size: 64, offset: 4224)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1752, file: !1753, line: 182, baseType: !321, size: 64, offset: 4288)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1752, file: !1753, line: 182, baseType: !321, size: 64, offset: 4352)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1752, file: !1753, line: 182, baseType: !321, size: 64, offset: 4416)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1752, file: !1753, line: 182, baseType: !321, size: 64, offset: 4480)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1752, file: !1753, line: 183, baseType: !321, size: 64, offset: 4544)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1752, file: !1753, line: 183, baseType: !321, size: 64, offset: 4608)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1752, file: !1753, line: 184, baseType: !1835, offset: 4672)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1836, line: 12, elements: !244)
!1836 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1752, file: !1753, line: 192, baseType: !420, size: 64, offset: 4672)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1752, file: !1753, line: 203, baseType: !1839, size: 2048, offset: 4736)
!1839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1840, size: 2048, elements: !1732)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1841, line: 43, size: 128, elements: !1842)
!1841 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1842 = !{!1843, !1844}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1840, file: !1841, line: 44, baseType: !320, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1840, file: !1841, line: 45, baseType: !320, size: 64, offset: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1752, file: !1753, line: 220, baseType: !487, size: 8, offset: 6784)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1752, file: !1753, line: 221, baseType: !1202, size: 16, offset: 6800)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1752, file: !1753, line: 222, baseType: !1202, size: 16, offset: 6816)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1752, file: !1753, line: 224, baseType: !971, size: 64, offset: 6848)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1752, file: !1753, line: 227, baseType: !1170, size: 192, offset: 6912)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1752, file: !1753, line: 233, baseType: !1170, size: 192, offset: 7104)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1214, file: !1215, line: 970, baseType: !1852, size: 64, offset: 9280)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1753, line: 20, size: 16576, elements: !1854)
!1854 = !{!1855, !1856, !1857, !1858}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1853, file: !1753, line: 21, baseType: !230)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1853, file: !1753, line: 22, baseType: !1227, size: 32)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1853, file: !1753, line: 23, baseType: !1478, size: 128, offset: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1853, file: !1753, line: 24, baseType: !1859, size: 16384, offset: 192)
!1859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1860, size: 16384, elements: !276)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1763, line: 49, size: 256, elements: !1861)
!1861 = !{!1862}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1860, file: !1763, line: 50, baseType: !1863, size: 256)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1763, line: 35, size: 256, elements: !1864)
!1864 = !{!1865, !1872, !1873, !1877}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1863, file: !1763, line: 37, baseType: !1866, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1867, line: 19, baseType: !1868)
!1867 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1867, line: 18, baseType: !1870)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{null, !148}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1863, file: !1763, line: 38, baseType: !321, size: 64, offset: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1863, file: !1763, line: 44, baseType: !1874, size: 64, offset: 128)
!1874 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1867, line: 22, baseType: !1875)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1867, line: 21, baseType: !157)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1863, file: !1763, line: 46, baseType: !1767, size: 64, offset: 192)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1214, file: !1215, line: 971, baseType: !1767, size: 64, offset: 9344)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1214, file: !1215, line: 972, baseType: !1767, size: 64, offset: 9408)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1214, file: !1215, line: 974, baseType: !1767, size: 64, offset: 9472)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1214, file: !1215, line: 975, baseType: !1762, size: 192, offset: 9536)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1214, file: !1215, line: 976, baseType: !321, size: 64, offset: 9728)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1214, file: !1215, line: 977, baseType: !318, size: 64, offset: 9792)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1214, file: !1215, line: 978, baseType: !7, size: 32, offset: 9856)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1214, file: !1215, line: 980, baseType: !365, size: 64, offset: 9920)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1214, file: !1215, line: 989, baseType: !1887, size: 128, offset: 9984)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1888, line: 35, size: 128, elements: !1889)
!1888 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1889 = !{!1890, !1891, !1892}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1887, file: !1888, line: 36, baseType: !148, size: 32)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1887, file: !1888, line: 37, baseType: !744, size: 32, offset: 32)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1887, file: !1888, line: 38, baseType: !1893, size: 64, offset: 64)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1888, line: 23, flags: DIFlagFwdDecl)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1214, file: !1215, line: 992, baseType: !418, size: 64, offset: 10112)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1214, file: !1215, line: 993, baseType: !418, size: 64, offset: 10176)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1214, file: !1215, line: 996, baseType: !230, offset: 10240)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1214, file: !1215, line: 999, baseType: !777, offset: 10240)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1214, file: !1215, line: 1001, baseType: !1900, size: 64, offset: 10240)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1215, line: 636, size: 64, elements: !1901)
!1901 = !{!1902}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1900, file: !1215, line: 637, baseType: !1903, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1214, file: !1215, line: 1005, baseType: !749, size: 128, offset: 10304)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1214, file: !1215, line: 1007, baseType: !1213, size: 64, offset: 10432)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1214, file: !1215, line: 1009, baseType: !1907, size: 64, offset: 10496)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1215, line: 1009, flags: DIFlagFwdDecl)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1214, file: !1215, line: 1043, baseType: !206, size: 64, offset: 10560)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1214, file: !1215, line: 1046, baseType: !1911, size: 64, offset: 10624)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1215, line: 41, flags: DIFlagFwdDecl)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1214, file: !1215, line: 1050, baseType: !1914, size: 64, offset: 10688)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1215, line: 42, flags: DIFlagFwdDecl)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1214, file: !1215, line: 1054, baseType: !1917, size: 64, offset: 10752)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1215, line: 55, flags: DIFlagFwdDecl)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1214, file: !1215, line: 1056, baseType: !1920, size: 64, offset: 10816)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1215, line: 40, flags: DIFlagFwdDecl)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1214, file: !1215, line: 1058, baseType: !1923, size: 64, offset: 10880)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1925, line: 99, size: 704, elements: !1926)
!1925 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1926 = !{!1927, !1928, !1929, !1930, !1931, !1932, !1933, !1952, !1953}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1924, file: !1925, line: 100, baseType: !768, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1924, file: !1925, line: 101, baseType: !744, size: 32, offset: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1924, file: !1925, line: 102, baseType: !744, size: 32, offset: 96)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1924, file: !1925, line: 105, baseType: !230, offset: 128)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1924, file: !1925, line: 107, baseType: !313, size: 16, offset: 128)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1924, file: !1925, line: 109, baseType: !736, size: 128, offset: 192)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1924, file: !1925, line: 110, baseType: !1934, size: 64, offset: 320)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1925, line: 73, size: 448, elements: !1936)
!1936 = !{!1937, !1940, !1941, !1946, !1951}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1935, file: !1925, line: 74, baseType: !1938, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1925, line: 74, flags: DIFlagFwdDecl)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1935, file: !1925, line: 75, baseType: !1923, size: 64, offset: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, scope: !1935, file: !1925, line: 83, baseType: !1942, size: 128, offset: 128)
!1942 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1935, file: !1925, line: 83, size: 128, elements: !1943)
!1943 = !{!1944, !1945}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1942, file: !1925, line: 84, baseType: !217, size: 128)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1942, file: !1925, line: 85, baseType: !932, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, scope: !1935, file: !1925, line: 87, baseType: !1947, size: 128, offset: 256)
!1947 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1935, file: !1925, line: 87, size: 128, elements: !1948)
!1948 = !{!1949, !1950}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1947, file: !1925, line: 88, baseType: !636, size: 128)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1947, file: !1925, line: 89, baseType: !362, size: 128, align: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1935, file: !1925, line: 92, baseType: !7, size: 32, offset: 384)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1924, file: !1925, line: 111, baseType: !632, size: 64, offset: 384)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1924, file: !1925, line: 113, baseType: !1954, size: 256, offset: 448)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1955, line: 102, size: 256, elements: !1956)
!1955 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1956 = !{!1957, !1958, !1959}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1954, file: !1955, line: 103, baseType: !768, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1954, file: !1955, line: 104, baseType: !217, size: 128, offset: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1954, file: !1955, line: 105, baseType: !1960, size: 64, offset: 192)
!1960 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1955, line: 21, baseType: !1961)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{null, !1964}
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1214, file: !1215, line: 1061, baseType: !1966, size: 64, offset: 10944)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1215, line: 43, flags: DIFlagFwdDecl)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1214, file: !1215, line: 1064, baseType: !321, size: 64, offset: 11008)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1214, file: !1215, line: 1065, baseType: !1970, size: 64, offset: 11072)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1763, line: 14, baseType: !1972)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1763, line: 12, size: 384, elements: !1973)
!1973 = !{!1974}
!1974 = !DIDerivedType(tag: DW_TAG_member, scope: !1972, file: !1763, line: 13, baseType: !1975, size: 384)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1972, file: !1763, line: 13, size: 384, elements: !1976)
!1976 = !{!1977, !1978, !1979, !1980}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1975, file: !1763, line: 13, baseType: !148, size: 32)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1975, file: !1763, line: 13, baseType: !148, size: 32, offset: 32)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1975, file: !1763, line: 13, baseType: !148, size: 32, offset: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1975, file: !1763, line: 13, baseType: !1981, size: 256, offset: 128)
!1981 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1982, line: 32, size: 256, elements: !1983)
!1982 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1983 = !{!1984, !1989, !2002, !2008, !2017, !2037, !2042}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1981, file: !1982, line: 37, baseType: !1985, size: 64)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1981, file: !1982, line: 34, size: 64, elements: !1986)
!1986 = !{!1987, !1988}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1985, file: !1982, line: 35, baseType: !1457, size: 32)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1985, file: !1982, line: 36, baseType: !438, size: 32, offset: 32)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1981, file: !1982, line: 45, baseType: !1990, size: 192)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1981, file: !1982, line: 40, size: 192, elements: !1991)
!1991 = !{!1992, !1994, !1995, !2001}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1990, file: !1982, line: 41, baseType: !1993, size: 32)
!1993 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !304, line: 95, baseType: !148)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1990, file: !1982, line: 42, baseType: !148, size: 32, offset: 32)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1990, file: !1982, line: 43, baseType: !1996, size: 64, offset: 64)
!1996 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1982, line: 11, baseType: !1997)
!1997 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1982, line: 8, size: 64, elements: !1998)
!1998 = !{!1999, !2000}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1997, file: !1982, line: 9, baseType: !148, size: 32)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1997, file: !1982, line: 10, baseType: !206, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1990, file: !1982, line: 44, baseType: !148, size: 32, offset: 128)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1981, file: !1982, line: 52, baseType: !2003, size: 128)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1981, file: !1982, line: 48, size: 128, elements: !2004)
!2004 = !{!2005, !2006, !2007}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2003, file: !1982, line: 49, baseType: !1457, size: 32)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2003, file: !1982, line: 50, baseType: !438, size: 32, offset: 32)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2003, file: !1982, line: 51, baseType: !1996, size: 64, offset: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1981, file: !1982, line: 61, baseType: !2009, size: 256)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1981, file: !1982, line: 55, size: 256, elements: !2010)
!2010 = !{!2011, !2012, !2013, !2014, !2016}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2009, file: !1982, line: 56, baseType: !1457, size: 32)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2009, file: !1982, line: 57, baseType: !438, size: 32, offset: 32)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2009, file: !1982, line: 58, baseType: !148, size: 32, offset: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2009, file: !1982, line: 59, baseType: !2015, size: 64, offset: 128)
!2015 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !304, line: 94, baseType: !305)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2009, file: !1982, line: 60, baseType: !2015, size: 64, offset: 192)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1981, file: !1982, line: 95, baseType: !2018, size: 256)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1981, file: !1982, line: 64, size: 256, elements: !2019)
!2019 = !{!2020, !2021}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2018, file: !1982, line: 65, baseType: !206, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, scope: !2018, file: !1982, line: 77, baseType: !2022, size: 192, offset: 64)
!2022 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2018, file: !1982, line: 77, size: 192, elements: !2023)
!2023 = !{!2024, !2025, !2032}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2022, file: !1982, line: 82, baseType: !1202, size: 16)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2022, file: !1982, line: 88, baseType: !2026, size: 192)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2022, file: !1982, line: 84, size: 192, elements: !2027)
!2027 = !{!2028, !2030, !2031}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2026, file: !1982, line: 85, baseType: !2029, size: 64)
!2029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 64, elements: !1327)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2026, file: !1982, line: 86, baseType: !206, size: 64, offset: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2026, file: !1982, line: 87, baseType: !206, size: 64, offset: 128)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2022, file: !1982, line: 93, baseType: !2033, size: 96)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2022, file: !1982, line: 90, size: 96, elements: !2034)
!2034 = !{!2035, !2036}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2033, file: !1982, line: 91, baseType: !2029, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2033, file: !1982, line: 92, baseType: !414, size: 32, offset: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1981, file: !1982, line: 101, baseType: !2038, size: 128)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1981, file: !1982, line: 98, size: 128, elements: !2039)
!2039 = !{!2040, !2041}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2038, file: !1982, line: 99, baseType: !306, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2038, file: !1982, line: 100, baseType: !148, size: 32, offset: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1981, file: !1982, line: 108, baseType: !2043, size: 128)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1981, file: !1982, line: 104, size: 128, elements: !2044)
!2044 = !{!2045, !2046, !2047}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2043, file: !1982, line: 105, baseType: !206, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2043, file: !1982, line: 106, baseType: !148, size: 32, offset: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2043, file: !1982, line: 107, baseType: !7, size: 32, offset: 96)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1214, file: !1215, line: 1067, baseType: !1835, offset: 11136)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1214, file: !1215, line: 1099, baseType: !2050, size: 64, offset: 11136)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1215, line: 56, flags: DIFlagFwdDecl)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1214, file: !1215, line: 1103, baseType: !217, size: 128, offset: 11200)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1214, file: !1215, line: 1104, baseType: !2054, size: 64, offset: 11328)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1215, line: 46, flags: DIFlagFwdDecl)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1214, file: !1215, line: 1105, baseType: !1170, size: 192, offset: 11392)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1214, file: !1215, line: 1106, baseType: !7, size: 32, offset: 11584)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1214, file: !1215, line: 1109, baseType: !2059, size: 128, offset: 11648)
!2059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2060, size: 128, elements: !1566)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1215, line: 51, flags: DIFlagFwdDecl)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1214, file: !1215, line: 1110, baseType: !1170, size: 192, offset: 11776)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1214, file: !1215, line: 1111, baseType: !217, size: 128, offset: 11968)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1214, file: !1215, line: 1173, baseType: !2065, size: 64, offset: 12096)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2067, line: 62, size: 256, align: 256, elements: !2068)
!2067 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2068 = !{!2069, !2070, !2071, !2076}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2066, file: !2067, line: 75, baseType: !414, size: 32)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2066, file: !2067, line: 90, baseType: !414, size: 32, offset: 32)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2066, file: !2067, line: 124, baseType: !2072, size: 64, offset: 64)
!2072 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2066, file: !2067, line: 109, size: 64, elements: !2073)
!2073 = !{!2074, !2075}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2072, file: !2067, line: 110, baseType: !419, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2072, file: !2067, line: 112, baseType: !419, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2066, file: !2067, line: 144, baseType: !414, size: 32, offset: 128)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1214, file: !1215, line: 1174, baseType: !412, size: 32, offset: 12160)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1214, file: !1215, line: 1179, baseType: !321, size: 64, offset: 12224)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1214, file: !1215, line: 1182, baseType: !2080, size: 128, offset: 12288)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1148, line: 76, size: 128, elements: !2081)
!2081 = !{!2082, !2087, !2088}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2080, file: !1148, line: 85, baseType: !2083, size: 64)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2084, line: 7, size: 64, elements: !2085)
!2084 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2085 = !{!2086}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2083, file: !2084, line: 12, baseType: !1364, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2080, file: !1148, line: 88, baseType: !487, size: 8, offset: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2080, file: !1148, line: 95, baseType: !487, size: 8, offset: 72)
!2089 = !DIDerivedType(tag: DW_TAG_member, scope: !1214, file: !1215, line: 1184, baseType: !2090, size: 128, offset: 12416)
!2090 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1214, file: !1215, line: 1184, size: 128, elements: !2091)
!2091 = !{!2092, !2093}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2090, file: !1215, line: 1185, baseType: !1227, size: 32)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2090, file: !1215, line: 1186, baseType: !362, size: 128, align: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1214, file: !1215, line: 1190, baseType: !2095, size: 64, offset: 12544)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1215, line: 53, flags: DIFlagFwdDecl)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1214, file: !1215, line: 1192, baseType: !2098, size: 128, offset: 12608)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1148, line: 64, size: 128, elements: !2099)
!2099 = !{!2100, !2101, !2102}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2098, file: !1148, line: 65, baseType: !718, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2098, file: !1148, line: 67, baseType: !414, size: 32, offset: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2098, file: !1148, line: 68, baseType: !414, size: 32, offset: 96)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1214, file: !1215, line: 1206, baseType: !148, size: 32, offset: 12736)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1214, file: !1215, line: 1207, baseType: !148, size: 32, offset: 12768)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1214, file: !1215, line: 1209, baseType: !321, size: 64, offset: 12800)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1214, file: !1215, line: 1219, baseType: !418, size: 64, offset: 12864)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1214, file: !1215, line: 1220, baseType: !418, size: 64, offset: 12928)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1214, file: !1215, line: 1317, baseType: !148, size: 32, offset: 12992)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1214, file: !1215, line: 1319, baseType: !1213, size: 64, offset: 13056)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1214, file: !1215, line: 1322, baseType: !2111, size: 64, offset: 13120)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2113, line: 56, size: 512, elements: !2114)
!2113 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2114 = !{!2115, !2116, !2117, !2118, !2119, !2120, !2121, !2123}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2112, file: !2113, line: 57, baseType: !2111, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2112, file: !2113, line: 58, baseType: !206, size: 64, offset: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2112, file: !2113, line: 59, baseType: !321, size: 64, offset: 128)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2112, file: !2113, line: 60, baseType: !321, size: 64, offset: 192)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2112, file: !2113, line: 61, baseType: !817, size: 64, offset: 256)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2112, file: !2113, line: 62, baseType: !7, size: 32, offset: 320)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2112, file: !2113, line: 63, baseType: !2122, size: 64, offset: 384)
!2122 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !150, line: 153, baseType: !418)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2112, file: !2113, line: 64, baseType: !2124, size: 64, offset: 448)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1214, file: !1215, line: 1326, baseType: !1227, size: 32, offset: 13184)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1214, file: !1215, line: 1342, baseType: !206, size: 64, offset: 13248)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1214, file: !1215, line: 1343, baseType: !419, size: 64, offset: 13312)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1214, file: !1215, line: 1344, baseType: !418, size: 64, offset: 13376)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1214, file: !1215, line: 1345, baseType: !419, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1214, file: !1215, line: 1346, baseType: !419, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1214, file: !1215, line: 1347, baseType: !419, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1214, file: !1215, line: 1348, baseType: !362, size: 128, align: 64, offset: 13504)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1214, file: !1215, line: 1358, baseType: !2135, size: 34816, offset: 13824)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2136, line: 485, size: 34816, elements: !2137)
!2136 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2137 = !{!2138, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2167, !2168, !2169, !2170, !2171, !2172, !2175, !2176, !2177}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2135, file: !2136, line: 487, baseType: !2139, size: 192)
!2139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2140, size: 192, elements: !272)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2141, line: 16, size: 64, elements: !2142)
!2141 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2142 = !{!2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2140, file: !2141, line: 17, baseType: !856, size: 16)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2140, file: !2141, line: 18, baseType: !856, size: 16, offset: 16)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2140, file: !2141, line: 19, baseType: !856, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2140, file: !2141, line: 19, baseType: !856, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2140, file: !2141, line: 19, baseType: !856, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2140, file: !2141, line: 19, baseType: !856, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2140, file: !2141, line: 19, baseType: !856, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2140, file: !2141, line: 20, baseType: !856, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2140, file: !2141, line: 20, baseType: !856, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2140, file: !2141, line: 20, baseType: !856, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2140, file: !2141, line: 20, baseType: !856, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2140, file: !2141, line: 20, baseType: !856, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2140, file: !2141, line: 20, baseType: !856, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2135, file: !2136, line: 491, baseType: !321, size: 64, offset: 192)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2135, file: !2136, line: 495, baseType: !313, size: 16, offset: 256)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2135, file: !2136, line: 496, baseType: !313, size: 16, offset: 272)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2135, file: !2136, line: 497, baseType: !313, size: 16, offset: 288)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2135, file: !2136, line: 498, baseType: !313, size: 16, offset: 304)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2135, file: !2136, line: 502, baseType: !321, size: 64, offset: 320)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2135, file: !2136, line: 503, baseType: !321, size: 64, offset: 384)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2135, file: !2136, line: 514, baseType: !2164, size: 256, offset: 448)
!2164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2165, size: 256, elements: !1152)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2136, line: 483, flags: DIFlagFwdDecl)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2135, file: !2136, line: 516, baseType: !321, size: 64, offset: 704)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2135, file: !2136, line: 518, baseType: !321, size: 64, offset: 768)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2135, file: !2136, line: 520, baseType: !321, size: 64, offset: 832)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2135, file: !2136, line: 521, baseType: !321, size: 64, offset: 896)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2135, file: !2136, line: 522, baseType: !321, size: 64, offset: 960)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2135, file: !2136, line: 528, baseType: !2173, size: 64, offset: 1024)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2136, line: 10, flags: DIFlagFwdDecl)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2135, file: !2136, line: 535, baseType: !321, size: 64, offset: 1088)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2135, file: !2136, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2135, file: !2136, line: 540, baseType: !2178, size: 33280, offset: 1536)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2179, line: 317, size: 33280, elements: !2180)
!2179 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2180 = !{!2181, !2182, !2183}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2178, file: !2179, line: 330, baseType: !7, size: 32)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2178, file: !2179, line: 337, baseType: !321, size: 64, offset: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2178, file: !2179, line: 348, baseType: !2184, size: 32768, offset: 512)
!2184 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2179, line: 304, size: 32768, elements: !2185)
!2185 = !{!2186, !2201, !2240, !2290, !2303}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2184, file: !2179, line: 305, baseType: !2187, size: 896)
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2179, line: 12, size: 896, elements: !2188)
!2188 = !{!2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2200}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2187, file: !2179, line: 13, baseType: !412, size: 32)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2187, file: !2179, line: 14, baseType: !412, size: 32, offset: 32)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2187, file: !2179, line: 15, baseType: !412, size: 32, offset: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2187, file: !2179, line: 16, baseType: !412, size: 32, offset: 96)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2187, file: !2179, line: 17, baseType: !412, size: 32, offset: 128)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2187, file: !2179, line: 18, baseType: !412, size: 32, offset: 160)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2187, file: !2179, line: 19, baseType: !412, size: 32, offset: 192)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2187, file: !2179, line: 22, baseType: !2197, size: 640, offset: 224)
!2197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 640, elements: !2198)
!2198 = !{!2199}
!2199 = !DISubrange(count: 20)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2187, file: !2179, line: 25, baseType: !412, size: 32, offset: 864)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2184, file: !2179, line: 306, baseType: !2202, size: 4096, align: 128)
!2202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2179, line: 34, size: 4096, align: 128, elements: !2203)
!2203 = !{!2204, !2205, !2206, !2207, !2208, !2223, !2224, !2225, !2229, !2231, !2235}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2202, file: !2179, line: 35, baseType: !856, size: 16)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2202, file: !2179, line: 36, baseType: !856, size: 16, offset: 16)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2202, file: !2179, line: 37, baseType: !856, size: 16, offset: 32)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2202, file: !2179, line: 38, baseType: !856, size: 16, offset: 48)
!2208 = !DIDerivedType(tag: DW_TAG_member, scope: !2202, file: !2179, line: 39, baseType: !2209, size: 128, offset: 64)
!2209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2202, file: !2179, line: 39, size: 128, elements: !2210)
!2210 = !{!2211, !2216}
!2211 = !DIDerivedType(tag: DW_TAG_member, scope: !2209, file: !2179, line: 40, baseType: !2212, size: 128)
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2209, file: !2179, line: 40, size: 128, elements: !2213)
!2213 = !{!2214, !2215}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2212, file: !2179, line: 41, baseType: !418, size: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2212, file: !2179, line: 42, baseType: !418, size: 64, offset: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, scope: !2209, file: !2179, line: 44, baseType: !2217, size: 128)
!2217 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2209, file: !2179, line: 44, size: 128, elements: !2218)
!2218 = !{!2219, !2220, !2221, !2222}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2217, file: !2179, line: 45, baseType: !412, size: 32)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2217, file: !2179, line: 46, baseType: !412, size: 32, offset: 32)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2217, file: !2179, line: 47, baseType: !412, size: 32, offset: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2217, file: !2179, line: 48, baseType: !412, size: 32, offset: 96)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2202, file: !2179, line: 51, baseType: !412, size: 32, offset: 192)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2202, file: !2179, line: 52, baseType: !412, size: 32, offset: 224)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2202, file: !2179, line: 55, baseType: !2226, size: 1024, offset: 256)
!2226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 1024, elements: !2227)
!2227 = !{!2228}
!2228 = !DISubrange(count: 32)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2202, file: !2179, line: 58, baseType: !2230, size: 2048, offset: 1280)
!2230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 2048, elements: !276)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2202, file: !2179, line: 60, baseType: !2232, size: 384, offset: 3328)
!2232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 384, elements: !2233)
!2233 = !{!2234}
!2234 = !DISubrange(count: 12)
!2235 = !DIDerivedType(tag: DW_TAG_member, scope: !2202, file: !2179, line: 62, baseType: !2236, size: 384, offset: 3712)
!2236 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2202, file: !2179, line: 62, size: 384, elements: !2237)
!2237 = !{!2238, !2239}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2236, file: !2179, line: 63, baseType: !2232, size: 384)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2236, file: !2179, line: 64, baseType: !2232, size: 384)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2184, file: !2179, line: 307, baseType: !2241, size: 1088)
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2179, line: 79, size: 1088, elements: !2242)
!2242 = !{!2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2289}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2241, file: !2179, line: 80, baseType: !412, size: 32)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2241, file: !2179, line: 81, baseType: !412, size: 32, offset: 32)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2241, file: !2179, line: 82, baseType: !412, size: 32, offset: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2241, file: !2179, line: 83, baseType: !412, size: 32, offset: 96)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2241, file: !2179, line: 84, baseType: !412, size: 32, offset: 128)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2241, file: !2179, line: 85, baseType: !412, size: 32, offset: 160)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2241, file: !2179, line: 86, baseType: !412, size: 32, offset: 192)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2241, file: !2179, line: 88, baseType: !2197, size: 640, offset: 224)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2241, file: !2179, line: 89, baseType: !1349, size: 8, offset: 864)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2241, file: !2179, line: 90, baseType: !1349, size: 8, offset: 872)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2241, file: !2179, line: 91, baseType: !1349, size: 8, offset: 880)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2241, file: !2179, line: 92, baseType: !1349, size: 8, offset: 888)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2241, file: !2179, line: 93, baseType: !1349, size: 8, offset: 896)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2241, file: !2179, line: 94, baseType: !1349, size: 8, offset: 904)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2241, file: !2179, line: 95, baseType: !2258, size: 64, offset: 960)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2260, line: 11, size: 128, elements: !2261)
!2260 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2261 = !{!2262, !2263}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2259, file: !2260, line: 12, baseType: !306, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2259, file: !2260, line: 13, baseType: !2264, size: 64, offset: 64)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2266, line: 56, size: 1344, elements: !2267)
!2266 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2267 = !{!2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2265, file: !2266, line: 61, baseType: !321, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2265, file: !2266, line: 62, baseType: !321, size: 64, offset: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2265, file: !2266, line: 63, baseType: !321, size: 64, offset: 128)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2265, file: !2266, line: 64, baseType: !321, size: 64, offset: 192)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2265, file: !2266, line: 65, baseType: !321, size: 64, offset: 256)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2265, file: !2266, line: 66, baseType: !321, size: 64, offset: 320)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2265, file: !2266, line: 68, baseType: !321, size: 64, offset: 384)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2265, file: !2266, line: 69, baseType: !321, size: 64, offset: 448)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2265, file: !2266, line: 70, baseType: !321, size: 64, offset: 512)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2265, file: !2266, line: 71, baseType: !321, size: 64, offset: 576)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2265, file: !2266, line: 72, baseType: !321, size: 64, offset: 640)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2265, file: !2266, line: 73, baseType: !321, size: 64, offset: 704)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2265, file: !2266, line: 74, baseType: !321, size: 64, offset: 768)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2265, file: !2266, line: 75, baseType: !321, size: 64, offset: 832)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2265, file: !2266, line: 76, baseType: !321, size: 64, offset: 896)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2265, file: !2266, line: 81, baseType: !321, size: 64, offset: 960)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2265, file: !2266, line: 83, baseType: !321, size: 64, offset: 1024)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2265, file: !2266, line: 84, baseType: !321, size: 64, offset: 1088)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2265, file: !2266, line: 85, baseType: !321, size: 64, offset: 1152)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2265, file: !2266, line: 86, baseType: !321, size: 64, offset: 1216)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2265, file: !2266, line: 87, baseType: !321, size: 64, offset: 1280)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2241, file: !2179, line: 96, baseType: !412, size: 32, offset: 1024)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2184, file: !2179, line: 308, baseType: !2291, size: 4608, align: 512)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2179, line: 289, size: 4608, align: 512, elements: !2292)
!2292 = !{!2293, !2294, !2301}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2291, file: !2179, line: 290, baseType: !2202, size: 4096, align: 128)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2291, file: !2179, line: 291, baseType: !2295, size: 512, offset: 4096)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2179, line: 268, size: 512, elements: !2296)
!2296 = !{!2297, !2298, !2299}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2295, file: !2179, line: 269, baseType: !418, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2295, file: !2179, line: 270, baseType: !418, size: 64, offset: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2295, file: !2179, line: 271, baseType: !2300, size: 384, offset: 128)
!2300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 384, elements: !1622)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2291, file: !2179, line: 292, baseType: !2302, offset: 4608)
!2302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1349, elements: !1720)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2184, file: !2179, line: 309, baseType: !2304, size: 32768)
!2304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1349, size: 32768, elements: !2305)
!2305 = !{!2306}
!2306 = !DISubrange(count: 4096)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1210, file: !720, line: 378, baseType: !2308, size: 64, offset: 64)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1206, file: !720, line: 384, baseType: !1499, size: 192, offset: 192)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !975, file: !720, line: 500, baseType: !230, offset: 6656)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !975, file: !720, line: 501, baseType: !2312, size: 64, offset: 6656)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !720, line: 387, flags: DIFlagFwdDecl)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !975, file: !720, line: 516, baseType: !1710, size: 64, offset: 6720)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !975, file: !720, line: 519, baseType: !349, size: 64, offset: 6784)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !975, file: !720, line: 521, baseType: !2317, size: 64, offset: 6848)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !720, line: 521, flags: DIFlagFwdDecl)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !975, file: !720, line: 545, baseType: !744, size: 32, offset: 6912)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !975, file: !720, line: 548, baseType: !487, size: 8, offset: 6944)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !975, file: !720, line: 550, baseType: !2322, offset: 6952)
!2322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2323, line: 142, elements: !244)
!2323 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !975, file: !720, line: 554, baseType: !1954, size: 256, offset: 6976)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !975, file: !720, line: 557, baseType: !412, size: 32, offset: 7232)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !972, file: !720, line: 565, baseType: !2327, offset: 7296)
!2327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, elements: !2328)
!2328 = !{!2329}
!2329 = !DISubrange(count: -1)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !968, file: !720, line: 151, baseType: !744, size: 32)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !961, file: !720, line: 156, baseType: !230, offset: 256)
!2332 = !DIDerivedType(tag: DW_TAG_member, scope: !724, file: !720, line: 159, baseType: !2333, size: 128)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !724, file: !720, line: 159, size: 128, elements: !2334)
!2334 = !{!2335, !2399}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2333, file: !720, line: 161, baseType: !2336, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2338)
!2338 = !{!2339, !2349, !2370, !2371, !2372, !2373, !2374, !2386, !2387, !2388}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2337, file: !31, line: 111, baseType: !2340, size: 384)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2341)
!2341 = !{!2342, !2344, !2345, !2346, !2347, !2348}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2340, file: !31, line: 20, baseType: !2343, size: 64)
!2343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !321)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2340, file: !31, line: 21, baseType: !2343, size: 64, offset: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2340, file: !31, line: 22, baseType: !2343, size: 64, offset: 128)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2340, file: !31, line: 23, baseType: !321, size: 64, offset: 192)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2340, file: !31, line: 24, baseType: !321, size: 64, offset: 256)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2340, file: !31, line: 25, baseType: !321, size: 64, offset: 320)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2337, file: !31, line: 112, baseType: !2350, size: 64, offset: 384)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2352, line: 105, size: 128, elements: !2353)
!2352 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2353 = !{!2354, !2355}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2351, file: !2352, line: 110, baseType: !321, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2351, file: !2352, line: 118, baseType: !2356, size: 64, offset: 64)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2352, line: 95, size: 448, elements: !2358)
!2358 = !{!2359, !2360, !2365, !2366, !2367, !2368, !2369}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2357, file: !2352, line: 96, baseType: !768, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2357, file: !2352, line: 97, baseType: !2361, size: 64, offset: 64)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2352, line: 60, baseType: !2363)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{null, !2350}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2357, file: !2352, line: 98, baseType: !2361, size: 64, offset: 128)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2357, file: !2352, line: 99, baseType: !487, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2357, file: !2352, line: 100, baseType: !487, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2357, file: !2352, line: 101, baseType: !362, size: 128, align: 64, offset: 256)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2357, file: !2352, line: 102, baseType: !2350, size: 64, offset: 384)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2337, file: !31, line: 113, baseType: !2351, size: 128, offset: 448)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2337, file: !31, line: 114, baseType: !1499, size: 192, offset: 576)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2337, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2337, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2337, file: !31, line: 117, baseType: !2375, size: 64, offset: 832)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2377)
!2377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2378)
!2378 = !{!2379, !2380, !2384, !2385}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2377, file: !31, line: 73, baseType: !837, size: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2377, file: !31, line: 78, baseType: !2381, size: 64, offset: 64)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{null, !2336}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2377, file: !31, line: 83, baseType: !2381, size: 64, offset: 128)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2377, file: !31, line: 89, baseType: !1024, size: 64, offset: 192)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2337, file: !31, line: 118, baseType: !206, size: 64, offset: 896)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2337, file: !31, line: 119, baseType: !148, size: 32, offset: 960)
!2388 = !DIDerivedType(tag: DW_TAG_member, scope: !2337, file: !31, line: 120, baseType: !2389, size: 128, offset: 1024)
!2389 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2337, file: !31, line: 120, size: 128, elements: !2390)
!2390 = !{!2391, !2397}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2389, file: !31, line: 121, baseType: !2392, size: 128)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2393, line: 6, size: 128, elements: !2394)
!2393 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2394 = !{!2395, !2396}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2392, file: !2393, line: 7, baseType: !418, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2392, file: !2393, line: 8, baseType: !418, size: 64, offset: 64)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2389, file: !31, line: 122, baseType: !2398)
!2398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2392, elements: !1720)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2333, file: !720, line: 162, baseType: !206, size: 64, offset: 64)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !724, file: !720, line: 176, baseType: !362, size: 128, align: 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, scope: !719, file: !720, line: 179, baseType: !2402, size: 32, offset: 384)
!2402 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !719, file: !720, line: 179, size: 32, elements: !2403)
!2403 = !{!2404, !2405, !2406, !2407}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2402, file: !720, line: 184, baseType: !744, size: 32)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2402, file: !720, line: 192, baseType: !7, size: 32)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2402, file: !720, line: 194, baseType: !7, size: 32)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2402, file: !720, line: 195, baseType: !148, size: 32)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !719, file: !720, line: 199, baseType: !744, size: 32, offset: 416)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !654, file: !44, line: 1964, baseType: !2410, size: 64, offset: 1344)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!306, !596, !2413}
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2415, line: 12, size: 256, elements: !2416)
!2415 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2416 = !{!2417, !2418, !2419, !2420, !2421}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2414, file: !2415, line: 13, baseType: !149, size: 32)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2414, file: !2415, line: 16, baseType: !148, size: 32, offset: 32)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2414, file: !2415, line: 23, baseType: !321, size: 64, offset: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2414, file: !2415, line: 30, baseType: !321, size: 64, offset: 128)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2414, file: !2415, line: 33, baseType: !2422, size: 64, offset: 192)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !720, line: 27, flags: DIFlagFwdDecl)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !654, file: !44, line: 1966, baseType: !2410, size: 64, offset: 1408)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !597, file: !44, line: 1424, baseType: !2426, size: 64, offset: 448)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2428)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2429)
!2429 = !{!2430, !2476, !2480, !2484, !2485, !2486, !2487, !2488, !2493, !2498, !2502}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2428, file: !38, line: 323, baseType: !2431, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!148, !2434}
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2436)
!2436 = !{!2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2461, !2462, !2463}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2435, file: !38, line: 295, baseType: !636, size: 128)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2435, file: !38, line: 296, baseType: !217, size: 128, offset: 128)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2435, file: !38, line: 297, baseType: !217, size: 128, offset: 256)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2435, file: !38, line: 298, baseType: !217, size: 128, offset: 384)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2435, file: !38, line: 299, baseType: !1170, size: 192, offset: 512)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2435, file: !38, line: 300, baseType: !230, offset: 704)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2435, file: !38, line: 301, baseType: !744, size: 32, offset: 704)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2435, file: !38, line: 302, baseType: !596, size: 64, offset: 768)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2435, file: !38, line: 303, baseType: !2446, size: 64, offset: 832)
!2446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2447)
!2447 = !{!2448, !2460}
!2448 = !DIDerivedType(tag: DW_TAG_member, scope: !2446, file: !38, line: 69, baseType: !2449, size: 32)
!2449 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2446, file: !38, line: 69, size: 32, elements: !2450)
!2450 = !{!2451, !2452, !2453}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2449, file: !38, line: 70, baseType: !432, size: 32)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2449, file: !38, line: 71, baseType: !440, size: 32)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2449, file: !38, line: 72, baseType: !2454, size: 32)
!2454 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2455, line: 24, baseType: !2456)
!2455 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2455, line: 22, size: 32, elements: !2457)
!2457 = !{!2458}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2456, file: !2455, line: 23, baseType: !2459, size: 32)
!2459 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2455, line: 20, baseType: !438)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2446, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2435, file: !38, line: 304, baseType: !528, size: 64, offset: 896)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2435, file: !38, line: 305, baseType: !321, size: 64, offset: 960)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2435, file: !38, line: 306, baseType: !2464, size: 576, offset: 1024)
!2464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2465)
!2465 = !{!2466, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2464, file: !38, line: 206, baseType: !2467, size: 64)
!2467 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !530)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2464, file: !38, line: 207, baseType: !2467, size: 64, offset: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2464, file: !38, line: 208, baseType: !2467, size: 64, offset: 128)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2464, file: !38, line: 209, baseType: !2467, size: 64, offset: 192)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2464, file: !38, line: 210, baseType: !2467, size: 64, offset: 256)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2464, file: !38, line: 211, baseType: !2467, size: 64, offset: 320)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2464, file: !38, line: 212, baseType: !2467, size: 64, offset: 384)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2464, file: !38, line: 213, baseType: !536, size: 64, offset: 448)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2464, file: !38, line: 214, baseType: !536, size: 64, offset: 512)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2428, file: !38, line: 324, baseType: !2477, size: 64, offset: 64)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!2434, !596, !148}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2428, file: !38, line: 325, baseType: !2481, size: 64, offset: 128)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DISubroutineType(types: !2483)
!2483 = !{null, !2434}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2428, file: !38, line: 326, baseType: !2431, size: 64, offset: 192)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2428, file: !38, line: 327, baseType: !2431, size: 64, offset: 256)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2428, file: !38, line: 328, baseType: !2431, size: 64, offset: 320)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2428, file: !38, line: 329, baseType: !682, size: 64, offset: 384)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2428, file: !38, line: 332, baseType: !2489, size: 64, offset: 448)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{!2492, !426}
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2428, file: !38, line: 333, baseType: !2494, size: 64, offset: 512)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DISubroutineType(types: !2496)
!2496 = !{!148, !426, !2497}
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2428, file: !38, line: 335, baseType: !2499, size: 64, offset: 576)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!148, !426, !2492}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2428, file: !38, line: 337, baseType: !2503, size: 64, offset: 640)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!148, !596, !2506}
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !597, file: !44, line: 1425, baseType: !2508, size: 64, offset: 512)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2510)
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2511)
!2511 = !{!2512, !2516, !2517, !2521, !2522, !2523, !2538, !2561, !2565, !2566, !2589}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2510, file: !38, line: 429, baseType: !2513, size: 64)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!148, !596, !148, !148, !546}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2510, file: !38, line: 430, baseType: !682, size: 64, offset: 64)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2510, file: !38, line: 431, baseType: !2518, size: 64, offset: 128)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!148, !596, !7}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2510, file: !38, line: 432, baseType: !2518, size: 64, offset: 192)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2510, file: !38, line: 433, baseType: !682, size: 64, offset: 256)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2510, file: !38, line: 434, baseType: !2524, size: 64, offset: 320)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!148, !596, !148, !2527}
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2529)
!2529 = !{!2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2528, file: !38, line: 416, baseType: !148, size: 32)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2528, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2528, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2528, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2528, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2528, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2528, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2528, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2510, file: !38, line: 435, baseType: !2539, size: 64, offset: 384)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{!148, !596, !2446, !2542}
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2544)
!2544 = !{!2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2543, file: !38, line: 344, baseType: !148, size: 32)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2543, file: !38, line: 345, baseType: !418, size: 64, offset: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2543, file: !38, line: 346, baseType: !418, size: 64, offset: 128)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2543, file: !38, line: 347, baseType: !418, size: 64, offset: 192)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2543, file: !38, line: 348, baseType: !418, size: 64, offset: 256)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2543, file: !38, line: 349, baseType: !418, size: 64, offset: 320)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2543, file: !38, line: 350, baseType: !418, size: 64, offset: 384)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2543, file: !38, line: 351, baseType: !774, size: 64, offset: 448)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2543, file: !38, line: 353, baseType: !774, size: 64, offset: 512)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2543, file: !38, line: 354, baseType: !148, size: 32, offset: 576)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2543, file: !38, line: 355, baseType: !148, size: 32, offset: 608)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2543, file: !38, line: 356, baseType: !418, size: 64, offset: 640)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2543, file: !38, line: 357, baseType: !418, size: 64, offset: 704)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2543, file: !38, line: 358, baseType: !418, size: 64, offset: 768)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2543, file: !38, line: 359, baseType: !774, size: 64, offset: 832)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2543, file: !38, line: 360, baseType: !148, size: 32, offset: 896)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2510, file: !38, line: 436, baseType: !2562, size: 64, offset: 448)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!148, !596, !2506, !2542}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2510, file: !38, line: 438, baseType: !2539, size: 64, offset: 512)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2510, file: !38, line: 439, baseType: !2567, size: 64, offset: 576)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{!148, !596, !2570}
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2572)
!2572 = !{!2573, !2574}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2571, file: !38, line: 410, baseType: !7, size: 32)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2571, file: !38, line: 411, baseType: !2575, size: 1344, offset: 64)
!2575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2576, size: 1344, elements: !272)
!2576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2577)
!2577 = !{!2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2588}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2576, file: !38, line: 396, baseType: !7, size: 32)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2576, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2576, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2576, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2576, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2576, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2576, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2576, file: !38, line: 404, baseType: !420, size: 64, offset: 256)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2576, file: !38, line: 405, baseType: !2587, size: 64, offset: 320)
!2587 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !150, line: 126, baseType: !418)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2576, file: !38, line: 406, baseType: !2587, size: 64, offset: 384)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2510, file: !38, line: 440, baseType: !2518, size: 64, offset: 640)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !597, file: !44, line: 1426, baseType: !2591, size: 64, offset: 576)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2593)
!2593 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !597, file: !44, line: 1427, baseType: !321, size: 64, offset: 640)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !597, file: !44, line: 1428, baseType: !321, size: 64, offset: 704)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !597, file: !44, line: 1429, baseType: !321, size: 64, offset: 768)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !597, file: !44, line: 1430, baseType: !379, size: 64, offset: 832)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !597, file: !44, line: 1431, baseType: !764, size: 256, offset: 896)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !597, file: !44, line: 1432, baseType: !148, size: 32, offset: 1152)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !597, file: !44, line: 1433, baseType: !744, size: 32, offset: 1184)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !597, file: !44, line: 1437, baseType: !2602, size: 64, offset: 1216)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2605)
!2605 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !597, file: !44, line: 1449, baseType: !2607, size: 64, offset: 1280)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !395, line: 34, size: 64, elements: !2608)
!2608 = !{!2609}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2607, file: !395, line: 35, baseType: !398, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !597, file: !44, line: 1450, baseType: !217, size: 128, offset: 1344)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !597, file: !44, line: 1451, baseType: !2612, size: 64, offset: 1472)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !597, file: !44, line: 1452, baseType: !1920, size: 64, offset: 1536)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !597, file: !44, line: 1453, baseType: !2616, size: 64, offset: 1600)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !597, file: !44, line: 1454, baseType: !636, size: 128, offset: 1664)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !597, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !597, file: !44, line: 1456, baseType: !2621, size: 2432, offset: 1856)
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2622)
!2622 = !{!2623, !2624, !2625, !2627, !2659}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2621, file: !38, line: 519, baseType: !7, size: 32)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2621, file: !38, line: 520, baseType: !764, size: 256, offset: 64)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2621, file: !38, line: 521, baseType: !2626, size: 192, offset: 320)
!2626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 192, elements: !272)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2621, file: !38, line: 522, baseType: !2628, size: 1728, offset: 512)
!2628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2629, size: 1728, elements: !272)
!2629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2630)
!2630 = !{!2631, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658}
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2629, file: !38, line: 223, baseType: !2632, size: 64)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2634)
!2634 = !{!2635, !2636, !2649, !2650}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2633, file: !38, line: 444, baseType: !148, size: 32)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2633, file: !38, line: 445, baseType: !2637, size: 64, offset: 64)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2639)
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2640)
!2640 = !{!2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2639, file: !38, line: 311, baseType: !682, size: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2639, file: !38, line: 312, baseType: !682, size: 64, offset: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2639, file: !38, line: 313, baseType: !682, size: 64, offset: 128)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2639, file: !38, line: 314, baseType: !682, size: 64, offset: 192)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2639, file: !38, line: 315, baseType: !2431, size: 64, offset: 256)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2639, file: !38, line: 316, baseType: !2431, size: 64, offset: 320)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2639, file: !38, line: 317, baseType: !2431, size: 64, offset: 384)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2639, file: !38, line: 318, baseType: !2503, size: 64, offset: 448)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2633, file: !38, line: 446, baseType: !190, size: 64, offset: 128)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2633, file: !38, line: 447, baseType: !2632, size: 64, offset: 192)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2629, file: !38, line: 224, baseType: !148, size: 32, offset: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2629, file: !38, line: 226, baseType: !217, size: 128, offset: 128)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2629, file: !38, line: 227, baseType: !321, size: 64, offset: 256)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2629, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2629, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2629, file: !38, line: 230, baseType: !2467, size: 64, offset: 384)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2629, file: !38, line: 231, baseType: !2467, size: 64, offset: 448)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2629, file: !38, line: 232, baseType: !206, size: 64, offset: 512)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2621, file: !38, line: 523, baseType: !2660, size: 192, offset: 2240)
!2660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2637, size: 192, elements: !272)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !597, file: !44, line: 1458, baseType: !2662, size: 2112, offset: 4288)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2663)
!2663 = !{!2664, !2665, !2666}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2662, file: !44, line: 1411, baseType: !148, size: 32)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2662, file: !44, line: 1412, baseType: !1478, size: 128, offset: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2662, file: !44, line: 1413, baseType: !2667, size: 1920, offset: 192)
!2667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2668, size: 1920, elements: !272)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2669, line: 12, size: 640, elements: !2670)
!2669 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2670 = !{!2671, !2679, !2681, !2686, !2687}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2668, file: !2669, line: 13, baseType: !2672, size: 320)
!2672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2673, line: 17, size: 320, elements: !2674)
!2673 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2674 = !{!2675, !2676, !2677, !2678}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2672, file: !2673, line: 18, baseType: !148, size: 32)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2672, file: !2673, line: 19, baseType: !148, size: 32, offset: 32)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2672, file: !2673, line: 20, baseType: !1478, size: 128, offset: 64)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2672, file: !2673, line: 22, baseType: !362, size: 128, align: 64, offset: 192)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2668, file: !2669, line: 14, baseType: !2680, size: 64, offset: 320)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2668, file: !2669, line: 15, baseType: !2682, size: 64, offset: 384)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2683, line: 16, size: 64, elements: !2684)
!2683 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2684 = !{!2685}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2682, file: !2683, line: 17, baseType: !1213, size: 64)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2668, file: !2669, line: 16, baseType: !1478, size: 128, offset: 448)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2668, file: !2669, line: 17, baseType: !744, size: 32, offset: 576)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !597, file: !44, line: 1465, baseType: !206, size: 64, offset: 6400)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !597, file: !44, line: 1468, baseType: !412, size: 32, offset: 6464)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !597, file: !44, line: 1470, baseType: !536, size: 64, offset: 6528)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !597, file: !44, line: 1471, baseType: !536, size: 64, offset: 6592)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !597, file: !44, line: 1473, baseType: !414, size: 32, offset: 6656)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !597, file: !44, line: 1474, baseType: !2694, size: 64, offset: 6720)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !597, file: !44, line: 1477, baseType: !2697, size: 256, offset: 6784)
!2697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 256, elements: !2227)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !597, file: !44, line: 1478, baseType: !2699, size: 128, offset: 7040)
!2699 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2700, line: 18, baseType: !2701)
!2700 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2701 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2700, line: 16, size: 128, elements: !2702)
!2702 = !{!2703}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2701, file: !2700, line: 17, baseType: !2704, size: 128)
!2704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1350, size: 128, elements: !1732)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !597, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !597, file: !44, line: 1481, baseType: !2707, size: 32, offset: 7200)
!2707 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !150, line: 150, baseType: !7)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !597, file: !44, line: 1487, baseType: !1170, size: 192, offset: 7232)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !597, file: !44, line: 1493, baseType: !188, size: 64, offset: 7424)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !597, file: !44, line: 1495, baseType: !2711, size: 64, offset: 7488)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2713)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !377, line: 135, size: 1024, align: 512, elements: !2714)
!2714 = !{!2715, !2719, !2720, !2727, !2733, !2737, !2741, !2745, !2746, !2750, !2754, !2759, !2763}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2713, file: !377, line: 136, baseType: !2716, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{!148, !379, !7}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2713, file: !377, line: 137, baseType: !2716, size: 64, offset: 64)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2713, file: !377, line: 138, baseType: !2721, size: 64, offset: 128)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{!148, !2724, !2726}
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !380)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2713, file: !377, line: 139, baseType: !2728, size: 64, offset: 192)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DISubroutineType(types: !2730)
!2730 = !{!148, !2724, !7, !188, !2731}
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !403)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2713, file: !377, line: 141, baseType: !2734, size: 64, offset: 256)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!148, !2724}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2713, file: !377, line: 142, baseType: !2738, size: 64, offset: 320)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!148, !379}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2713, file: !377, line: 143, baseType: !2742, size: 64, offset: 384)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{null, !379}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2713, file: !377, line: 144, baseType: !2742, size: 64, offset: 448)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2713, file: !377, line: 145, baseType: !2747, size: 64, offset: 512)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{null, !379, !426}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2713, file: !377, line: 146, baseType: !2751, size: 64, offset: 576)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{!271, !379, !271, !148}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2713, file: !377, line: 147, baseType: !2755, size: 64, offset: 640)
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = !DISubroutineType(types: !2757)
!2757 = !{!375, !2758}
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2713, file: !377, line: 148, baseType: !2760, size: 64, offset: 704)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!148, !546, !487}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2713, file: !377, line: 149, baseType: !2764, size: 64, offset: 768)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2765 = !DISubroutineType(types: !2766)
!2766 = !{!379, !379, !2767}
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !427)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !597, file: !44, line: 1500, baseType: !148, size: 32, offset: 7552)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !597, file: !44, line: 1502, baseType: !2771, size: 448, offset: 7616)
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2415, line: 60, size: 448, elements: !2772)
!2772 = !{!2773, !2778, !2779, !2780, !2781, !2782, !2783}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2771, file: !2415, line: 61, baseType: !2774, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{!321, !2777, !2413}
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2771, file: !2415, line: 63, baseType: !2774, size: 64, offset: 64)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2771, file: !2415, line: 66, baseType: !306, size: 64, offset: 128)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2771, file: !2415, line: 67, baseType: !148, size: 32, offset: 192)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2771, file: !2415, line: 68, baseType: !7, size: 32, offset: 224)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2771, file: !2415, line: 71, baseType: !217, size: 128, offset: 256)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2771, file: !2415, line: 77, baseType: !2784, size: 64, offset: 384)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !597, file: !44, line: 1505, baseType: !768, size: 64, offset: 8064)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !597, file: !44, line: 1508, baseType: !768, size: 64, offset: 8128)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !597, file: !44, line: 1511, baseType: !148, size: 32, offset: 8192)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !597, file: !44, line: 1514, baseType: !906, size: 32, offset: 8224)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !597, file: !44, line: 1517, baseType: !2790, size: 64, offset: 8256)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1955, line: 18, flags: DIFlagFwdDecl)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !597, file: !44, line: 1518, baseType: !632, size: 64, offset: 8320)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !597, file: !44, line: 1525, baseType: !1710, size: 64, offset: 8384)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !597, file: !44, line: 1532, baseType: !2795, size: 64, offset: 8448)
!2795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2796, line: 52, size: 64, elements: !2797)
!2796 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2797 = !{!2798}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2795, file: !2796, line: 53, baseType: !2799, size: 64)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2796, line: 40, size: 256, elements: !2801)
!2801 = !{!2802, !2803, !2808}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2800, file: !2796, line: 42, baseType: !230)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2800, file: !2796, line: 44, baseType: !2804, size: 192)
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2796, line: 28, size: 192, elements: !2805)
!2805 = !{!2806, !2807}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2804, file: !2796, line: 29, baseType: !217, size: 128)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2804, file: !2796, line: 31, baseType: !306, size: 64, offset: 128)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2800, file: !2796, line: 49, baseType: !306, size: 64, offset: 192)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !597, file: !44, line: 1533, baseType: !2795, size: 64, offset: 8512)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !597, file: !44, line: 1534, baseType: !362, size: 128, align: 64, offset: 8576)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !597, file: !44, line: 1535, baseType: !1954, size: 256, offset: 8704)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !597, file: !44, line: 1537, baseType: !1170, size: 192, offset: 8960)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !597, file: !44, line: 1542, baseType: !148, size: 32, offset: 9152)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !597, file: !44, line: 1545, baseType: !230, offset: 9184)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !597, file: !44, line: 1546, baseType: !217, size: 128, offset: 9216)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !597, file: !44, line: 1548, baseType: !230, offset: 9344)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !597, file: !44, line: 1549, baseType: !217, size: 128, offset: 9344)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !427, file: !44, line: 624, baseType: !731, size: 64, offset: 256)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !427, file: !44, line: 631, baseType: !321, size: 64, offset: 320)
!2820 = !DIDerivedType(tag: DW_TAG_member, scope: !427, file: !44, line: 639, baseType: !2821, size: 32, offset: 384)
!2821 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !427, file: !44, line: 639, size: 32, elements: !2822)
!2822 = !{!2823, !2825}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2821, file: !44, line: 640, baseType: !2824, size: 32)
!2824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2821, file: !44, line: 641, baseType: !7, size: 32)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !427, file: !44, line: 643, baseType: !510, size: 32, offset: 416)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !427, file: !44, line: 644, baseType: !528, size: 64, offset: 448)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !427, file: !44, line: 645, baseType: !532, size: 128, offset: 512)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !427, file: !44, line: 646, baseType: !532, size: 128, offset: 640)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !427, file: !44, line: 647, baseType: !532, size: 128, offset: 768)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !427, file: !44, line: 648, baseType: !230, offset: 896)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !427, file: !44, line: 649, baseType: !313, size: 16, offset: 896)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !427, file: !44, line: 650, baseType: !1349, size: 8, offset: 912)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !427, file: !44, line: 651, baseType: !1349, size: 8, offset: 920)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !427, file: !44, line: 652, baseType: !2587, size: 64, offset: 960)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !427, file: !44, line: 659, baseType: !321, size: 64, offset: 1024)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !427, file: !44, line: 660, baseType: !764, size: 256, offset: 1088)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !427, file: !44, line: 662, baseType: !321, size: 64, offset: 1344)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !427, file: !44, line: 663, baseType: !321, size: 64, offset: 1408)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !427, file: !44, line: 665, baseType: !636, size: 128, offset: 1472)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !427, file: !44, line: 666, baseType: !217, size: 128, offset: 1600)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !427, file: !44, line: 675, baseType: !217, size: 128, offset: 1728)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !427, file: !44, line: 676, baseType: !217, size: 128, offset: 1856)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !427, file: !44, line: 677, baseType: !217, size: 128, offset: 1984)
!2845 = !DIDerivedType(tag: DW_TAG_member, scope: !427, file: !44, line: 678, baseType: !2846, size: 128, offset: 2112)
!2846 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !427, file: !44, line: 678, size: 128, elements: !2847)
!2847 = !{!2848, !2849}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2846, file: !44, line: 679, baseType: !632, size: 64)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2846, file: !44, line: 680, baseType: !362, size: 128, align: 64)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !427, file: !44, line: 682, baseType: !770, size: 64, offset: 2240)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !427, file: !44, line: 683, baseType: !770, size: 64, offset: 2304)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !427, file: !44, line: 684, baseType: !744, size: 32, offset: 2368)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !427, file: !44, line: 685, baseType: !744, size: 32, offset: 2400)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !427, file: !44, line: 686, baseType: !744, size: 32, offset: 2432)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !427, file: !44, line: 688, baseType: !744, size: 32, offset: 2464)
!2856 = !DIDerivedType(tag: DW_TAG_member, scope: !427, file: !44, line: 690, baseType: !2857, size: 64, offset: 2496)
!2857 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !427, file: !44, line: 690, size: 64, elements: !2858)
!2858 = !{!2859, !3082}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2857, file: !44, line: 691, baseType: !2860, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2862)
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2863)
!2863 = !{!2864, !2865, !2869, !2874, !2878, !2879, !2880, !2884, !2897, !2898, !2906, !2910, !2911, !2915, !2916, !2920, !2925, !2926, !2930, !2934, !3042, !3046, !3047, !3051, !3052, !3056, !3060, !3065, !3069, !3073, !3077, !3081}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2862, file: !44, line: 1823, baseType: !190, size: 64)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2862, file: !44, line: 1824, baseType: !2866, size: 64, offset: 64)
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2867 = !DISubroutineType(types: !2868)
!2868 = !{!528, !349, !528, !148}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2862, file: !44, line: 1825, baseType: !2870, size: 64, offset: 128)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{!302, !349, !271, !318, !2873}
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2862, file: !44, line: 1826, baseType: !2875, size: 64, offset: 192)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!302, !349, !188, !318, !2873}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2862, file: !44, line: 1827, baseType: !841, size: 64, offset: 256)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2862, file: !44, line: 1828, baseType: !841, size: 64, offset: 320)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2862, file: !44, line: 1829, baseType: !2881, size: 64, offset: 384)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!148, !844, !487}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2862, file: !44, line: 1830, baseType: !2885, size: 64, offset: 448)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!148, !349, !2888}
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2890)
!2890 = !{!2891, !2896}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2889, file: !44, line: 1777, baseType: !2892, size: 64)
!2892 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2893)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{!148, !2888, !188, !148, !528, !418, !7}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2889, file: !44, line: 1778, baseType: !528, size: 64, offset: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2862, file: !44, line: 1831, baseType: !2885, size: 64, offset: 512)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2862, file: !44, line: 1832, baseType: !2899, size: 64, offset: 576)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{!2902, !349, !2904}
!2902 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2903, line: 52, baseType: !7)
!2903 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !616, line: 27, flags: DIFlagFwdDecl)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2862, file: !44, line: 1833, baseType: !2907, size: 64, offset: 640)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!306, !349, !7, !321}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2862, file: !44, line: 1834, baseType: !2907, size: 64, offset: 704)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2862, file: !44, line: 1835, baseType: !2912, size: 64, offset: 768)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!148, !349, !978}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2862, file: !44, line: 1836, baseType: !321, size: 64, offset: 832)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2862, file: !44, line: 1837, baseType: !2917, size: 64, offset: 896)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!148, !426, !349}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2862, file: !44, line: 1838, baseType: !2921, size: 64, offset: 960)
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = !DISubroutineType(types: !2923)
!2923 = !{!148, !349, !2924}
!2924 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !206)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2862, file: !44, line: 1839, baseType: !2917, size: 64, offset: 1024)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2862, file: !44, line: 1840, baseType: !2927, size: 64, offset: 1088)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{!148, !349, !528, !528, !148}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2862, file: !44, line: 1841, baseType: !2931, size: 64, offset: 1152)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!148, !148, !349, !148}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2862, file: !44, line: 1842, baseType: !2935, size: 64, offset: 1216)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DISubroutineType(types: !2937)
!2937 = !{!148, !349, !148, !2938}
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2940)
!2940 = !{!2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2972, !2973, !2974, !2987, !3018}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2939, file: !44, line: 1063, baseType: !2938, size: 64)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2939, file: !44, line: 1064, baseType: !217, size: 128, offset: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2939, file: !44, line: 1065, baseType: !636, size: 128, offset: 192)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2939, file: !44, line: 1066, baseType: !217, size: 128, offset: 320)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2939, file: !44, line: 1069, baseType: !217, size: 128, offset: 448)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2939, file: !44, line: 1072, baseType: !2924, size: 64, offset: 576)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2939, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2939, file: !44, line: 1074, baseType: !424, size: 8, offset: 672)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2939, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2939, file: !44, line: 1076, baseType: !148, size: 32, offset: 736)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2939, file: !44, line: 1077, baseType: !1478, size: 128, offset: 768)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2939, file: !44, line: 1078, baseType: !349, size: 64, offset: 896)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2939, file: !44, line: 1079, baseType: !528, size: 64, offset: 960)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2939, file: !44, line: 1080, baseType: !528, size: 64, offset: 1024)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2939, file: !44, line: 1082, baseType: !2956, size: 64, offset: 1088)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2958)
!2958 = !{!2959, !2967, !2968, !2969, !2970, !2971}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2957, file: !44, line: 1315, baseType: !2960)
!2960 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2961, line: 20, baseType: !2962)
!2961 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2961, line: 11, elements: !2963)
!2963 = !{!2964}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2962, file: !2961, line: 12, baseType: !2965)
!2965 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !242, line: 33, baseType: !2966)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !242, line: 31, elements: !244)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2957, file: !44, line: 1316, baseType: !148, size: 32)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2957, file: !44, line: 1317, baseType: !148, size: 32, offset: 32)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2957, file: !44, line: 1318, baseType: !2956, size: 64, offset: 64)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2957, file: !44, line: 1319, baseType: !349, size: 64, offset: 128)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2957, file: !44, line: 1320, baseType: !362, size: 128, align: 64, offset: 192)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2939, file: !44, line: 1084, baseType: !321, size: 64, offset: 1152)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2939, file: !44, line: 1085, baseType: !321, size: 64, offset: 1216)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2939, file: !44, line: 1087, baseType: !2975, size: 64, offset: 1280)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2977)
!2977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !2978)
!2978 = !{!2979, !2983}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2977, file: !44, line: 1012, baseType: !2980, size: 64)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{null, !2938, !2938}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2977, file: !44, line: 1013, baseType: !2984, size: 64, offset: 64)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{null, !2938}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2939, file: !44, line: 1088, baseType: !2988, size: 64, offset: 1344)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2990)
!2990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !2991)
!2991 = !{!2992, !2996, !3000, !3001, !3005, !3009, !3013, !3017}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2990, file: !44, line: 1017, baseType: !2993, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!2924, !2924}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2990, file: !44, line: 1018, baseType: !2997, size: 64, offset: 64)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{null, !2924}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2990, file: !44, line: 1019, baseType: !2984, size: 64, offset: 128)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2990, file: !44, line: 1020, baseType: !3002, size: 64, offset: 192)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{!148, !2938, !148}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2990, file: !44, line: 1021, baseType: !3006, size: 64, offset: 256)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{!487, !2938}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2990, file: !44, line: 1022, baseType: !3010, size: 64, offset: 320)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{!148, !2938, !148, !220}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2990, file: !44, line: 1023, baseType: !3014, size: 64, offset: 384)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{null, !2938, !818}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2990, file: !44, line: 1024, baseType: !3006, size: 64, offset: 448)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2939, file: !44, line: 1097, baseType: !3019, size: 256, offset: 1408)
!3019 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2939, file: !44, line: 1089, size: 256, elements: !3020)
!3020 = !{!3021, !3030, !3036}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3019, file: !44, line: 1090, baseType: !3022, size: 256)
!3022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3023, line: 10, size: 256, elements: !3024)
!3023 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3024 = !{!3025, !3026, !3029}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3022, file: !3023, line: 11, baseType: !412, size: 32)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3022, file: !3023, line: 12, baseType: !3027, size: 64, offset: 64)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3023, line: 5, flags: DIFlagFwdDecl)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3022, file: !3023, line: 13, baseType: !217, size: 128, offset: 128)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3019, file: !44, line: 1091, baseType: !3031, size: 64)
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3023, line: 17, size: 64, elements: !3032)
!3032 = !{!3033}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3031, file: !3023, line: 18, baseType: !3034, size: 64)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3023, line: 16, flags: DIFlagFwdDecl)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3019, file: !44, line: 1096, baseType: !3037, size: 192)
!3037 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3019, file: !44, line: 1092, size: 192, elements: !3038)
!3038 = !{!3039, !3040, !3041}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3037, file: !44, line: 1093, baseType: !217, size: 128)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3037, file: !44, line: 1094, baseType: !148, size: 32, offset: 128)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3037, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2862, file: !44, line: 1843, baseType: !3043, size: 64, offset: 1280)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{!302, !349, !718, !148, !318, !2873, !148}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2862, file: !44, line: 1844, baseType: !1098, size: 64, offset: 1344)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2862, file: !44, line: 1845, baseType: !3048, size: 64, offset: 1408)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{!148, !148}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2862, file: !44, line: 1846, baseType: !2935, size: 64, offset: 1472)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2862, file: !44, line: 1847, baseType: !3053, size: 64, offset: 1536)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{!302, !2095, !349, !2873, !318, !7}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2862, file: !44, line: 1848, baseType: !3057, size: 64, offset: 1600)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{!302, !349, !2873, !2095, !318, !7}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2862, file: !44, line: 1849, baseType: !3061, size: 64, offset: 1664)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{!148, !349, !306, !3064, !818}
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2862, file: !44, line: 1850, baseType: !3066, size: 64, offset: 1728)
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{!306, !349, !148, !528, !528}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2862, file: !44, line: 1852, baseType: !3070, size: 64, offset: 1792)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{null, !708, !349}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2862, file: !44, line: 1856, baseType: !3074, size: 64, offset: 1856)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{!302, !349, !528, !349, !528, !318, !7}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2862, file: !44, line: 1858, baseType: !3078, size: 64, offset: 1920)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!528, !349, !528, !349, !528, !528, !7}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2862, file: !44, line: 1861, baseType: !2927, size: 64, offset: 1984)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2857, file: !44, line: 692, baseType: !661, size: 64)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !427, file: !44, line: 694, baseType: !3084, size: 64, offset: 2560)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3086)
!3086 = !{!3087, !3088, !3089, !3090}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3085, file: !44, line: 1101, baseType: !230)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3085, file: !44, line: 1102, baseType: !217, size: 128)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3085, file: !44, line: 1103, baseType: !217, size: 128, offset: 128)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3085, file: !44, line: 1104, baseType: !217, size: 128, offset: 256)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !427, file: !44, line: 695, baseType: !732, size: 1216, align: 64, offset: 2624)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !427, file: !44, line: 696, baseType: !217, size: 128, offset: 3840)
!3093 = !DIDerivedType(tag: DW_TAG_member, scope: !427, file: !44, line: 697, baseType: !3094, size: 64, offset: 3968)
!3094 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !427, file: !44, line: 697, size: 64, elements: !3095)
!3095 = !{!3096, !3097, !3098, !3101, !3102}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3094, file: !44, line: 698, baseType: !2095, size: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3094, file: !44, line: 699, baseType: !2612, size: 64)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3094, file: !44, line: 700, baseType: !3099, size: 64)
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3100, size: 64)
!3100 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3094, file: !44, line: 701, baseType: !271, size: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3094, file: !44, line: 702, baseType: !7, size: 32)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !427, file: !44, line: 705, baseType: !414, size: 32, offset: 4032)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !427, file: !44, line: 708, baseType: !414, size: 32, offset: 4064)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !427, file: !44, line: 709, baseType: !2694, size: 64, offset: 4096)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !427, file: !44, line: 720, baseType: !206, size: 64, offset: 4160)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !380, file: !377, line: 98, baseType: !3108, size: 256, offset: 448)
!3108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 256, elements: !2227)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !380, file: !377, line: 101, baseType: !3110, size: 32, offset: 704)
!3110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3111, line: 25, size: 32, elements: !3112)
!3111 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3112 = !{!3113}
!3113 = !DIDerivedType(tag: DW_TAG_member, scope: !3110, file: !3111, line: 26, baseType: !3114, size: 32)
!3114 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3110, file: !3111, line: 26, size: 32, elements: !3115)
!3115 = !{!3116}
!3116 = !DIDerivedType(tag: DW_TAG_member, scope: !3114, file: !3111, line: 30, baseType: !3117, size: 32)
!3117 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3114, file: !3111, line: 30, size: 32, elements: !3118)
!3118 = !{!3119, !3120}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3117, file: !3111, line: 31, baseType: !230)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3117, file: !3111, line: 32, baseType: !148, size: 32)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !380, file: !377, line: 102, baseType: !2711, size: 64, offset: 768)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !380, file: !377, line: 103, baseType: !596, size: 64, offset: 832)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !380, file: !377, line: 104, baseType: !321, size: 64, offset: 896)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !380, file: !377, line: 105, baseType: !206, size: 64, offset: 960)
!3125 = !DIDerivedType(tag: DW_TAG_member, scope: !380, file: !377, line: 107, baseType: !3126, size: 128, offset: 1024)
!3126 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !380, file: !377, line: 107, size: 128, elements: !3127)
!3127 = !{!3128, !3129}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3126, file: !377, line: 108, baseType: !217, size: 128)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3126, file: !377, line: 109, baseType: !3130, size: 64)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !380, file: !377, line: 111, baseType: !217, size: 128, offset: 1152)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !380, file: !377, line: 112, baseType: !217, size: 128, offset: 1280)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !380, file: !377, line: 120, baseType: !3134, size: 128, offset: 1408)
!3134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !380, file: !377, line: 116, size: 128, elements: !3135)
!3135 = !{!3136, !3137, !3138}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3134, file: !377, line: 117, baseType: !636, size: 128)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3134, file: !377, line: 118, baseType: !394, size: 128)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3134, file: !377, line: 119, baseType: !362, size: 128, align: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !350, file: !44, line: 922, baseType: !426, size: 64, offset: 256)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !350, file: !44, line: 923, baseType: !2860, size: 64, offset: 320)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !350, file: !44, line: 929, baseType: !230, offset: 384)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !350, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !350, file: !44, line: 931, baseType: !768, size: 64, offset: 448)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !350, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !350, file: !44, line: 933, baseType: !2707, size: 32, offset: 544)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !350, file: !44, line: 934, baseType: !1170, size: 192, offset: 576)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !350, file: !44, line: 935, baseType: !528, size: 64, offset: 768)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !350, file: !44, line: 936, baseType: !3149, size: 192, offset: 832)
!3149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3150)
!3150 = !{!3151, !3152, !3153, !3154, !3155, !3156}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3149, file: !44, line: 886, baseType: !2960)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3149, file: !44, line: 887, baseType: !1468, size: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3149, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3149, file: !44, line: 889, baseType: !432, size: 32, offset: 96)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3149, file: !44, line: 889, baseType: !432, size: 32, offset: 128)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3149, file: !44, line: 890, baseType: !148, size: 32, offset: 160)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !350, file: !44, line: 937, baseType: !1544, size: 64, offset: 1024)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !350, file: !44, line: 938, baseType: !3159, size: 256, offset: 1088)
!3159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3160)
!3160 = !{!3161, !3162, !3163, !3164, !3165, !3166}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3159, file: !44, line: 897, baseType: !321, size: 64)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3159, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3159, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3159, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3159, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3159, file: !44, line: 904, baseType: !528, size: 64, offset: 192)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !350, file: !44, line: 940, baseType: !418, size: 64, offset: 1344)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !350, file: !44, line: 945, baseType: !206, size: 64, offset: 1408)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !350, file: !44, line: 949, baseType: !217, size: 128, offset: 1472)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !350, file: !44, line: 950, baseType: !217, size: 128, offset: 1600)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !350, file: !44, line: 952, baseType: !731, size: 64, offset: 1728)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !350, file: !44, line: 953, baseType: !906, size: 32, offset: 1792)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !350, file: !44, line: 954, baseType: !906, size: 32, offset: 1824)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !340, file: !296, line: 174, baseType: !346, size: 64, offset: 320)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !340, file: !296, line: 176, baseType: !3176, size: 64, offset: 384)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DISubroutineType(types: !3178)
!3178 = !{!148, !349, !223, !339, !978}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !328, file: !296, line: 90, baseType: !323, size: 64, offset: 192)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !328, file: !296, line: 91, baseType: !3181, size: 64, offset: 256)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !286, file: !213, line: 143, baseType: !3183, size: 64, offset: 256)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!3186, !223}
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3188)
!3188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3189)
!3189 = !{!3190, !3191, !3195, !3199, !3205, !3209}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3188, file: !61, line: 40, baseType: !60, size: 32)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3188, file: !61, line: 41, baseType: !3192, size: 64, offset: 64)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!487}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3188, file: !61, line: 42, baseType: !3196, size: 64, offset: 128)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{!206}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3188, file: !61, line: 43, baseType: !3200, size: 64, offset: 192)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{!2124, !3203}
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3188, file: !61, line: 44, baseType: !3206, size: 64, offset: 256)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{!2124}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3188, file: !61, line: 45, baseType: !465, size: 64, offset: 320)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !286, file: !213, line: 144, baseType: !3211, size: 64, offset: 320)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = !DISubroutineType(types: !3213)
!3213 = !{!2124, !223}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !286, file: !213, line: 145, baseType: !3215, size: 64, offset: 384)
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{null, !223, !3218, !3219}
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !212, file: !213, line: 70, baseType: !3221, size: 64, offset: 384)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !616, line: 123, size: 1024, elements: !3223)
!3223 = !{!3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3352, !3353, !3354, !3355, !3356}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3222, file: !616, line: 124, baseType: !744, size: 32)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3222, file: !616, line: 125, baseType: !744, size: 32, offset: 32)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3222, file: !616, line: 135, baseType: !3221, size: 64, offset: 64)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3222, file: !616, line: 136, baseType: !188, size: 64, offset: 128)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3222, file: !616, line: 138, baseType: !757, size: 192, align: 64, offset: 192)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3222, file: !616, line: 140, baseType: !2124, size: 64, offset: 384)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3222, file: !616, line: 141, baseType: !7, size: 32, offset: 448)
!3231 = !DIDerivedType(tag: DW_TAG_member, scope: !3222, file: !616, line: 142, baseType: !3232, size: 256, offset: 512)
!3232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3222, file: !616, line: 142, size: 256, elements: !3233)
!3233 = !{!3234, !3280, !3284}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3232, file: !616, line: 143, baseType: !3235, size: 192)
!3235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !616, line: 91, size: 192, elements: !3236)
!3236 = !{!3237, !3238, !3239}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3235, file: !616, line: 92, baseType: !321, size: 64)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3235, file: !616, line: 94, baseType: !753, size: 64, offset: 64)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3235, file: !616, line: 100, baseType: !3240, size: 64, offset: 128)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !616, line: 180, size: 704, elements: !3242)
!3242 = !{!3243, !3244, !3245, !3252, !3253, !3254, !3278, !3279}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3241, file: !616, line: 182, baseType: !3221, size: 64)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3241, file: !616, line: 183, baseType: !7, size: 32, offset: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3241, file: !616, line: 186, baseType: !3246, size: 192, offset: 128)
!3246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3247, line: 19, size: 192, elements: !3248)
!3247 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3248 = !{!3249, !3250, !3251}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3246, file: !3247, line: 20, baseType: !736, size: 128)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3246, file: !3247, line: 21, baseType: !7, size: 32, offset: 128)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3246, file: !3247, line: 22, baseType: !7, size: 32, offset: 160)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3241, file: !616, line: 187, baseType: !412, size: 32, offset: 320)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3241, file: !616, line: 188, baseType: !412, size: 32, offset: 352)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3241, file: !616, line: 189, baseType: !3255, size: 64, offset: 384)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !616, line: 168, size: 320, elements: !3257)
!3257 = !{!3258, !3262, !3266, !3270, !3274}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3256, file: !616, line: 169, baseType: !3259, size: 64)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{!148, !708, !3240}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3256, file: !616, line: 171, baseType: !3263, size: 64, offset: 64)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DISubroutineType(types: !3265)
!3265 = !{!148, !3221, !188, !312}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3256, file: !616, line: 173, baseType: !3267, size: 64, offset: 128)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!148, !3221}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3256, file: !616, line: 174, baseType: !3271, size: 64, offset: 192)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DISubroutineType(types: !3273)
!3273 = !{!148, !3221, !3221, !188}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3256, file: !616, line: 176, baseType: !3275, size: 64, offset: 256)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{!148, !708, !3221, !3240}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3241, file: !616, line: 192, baseType: !217, size: 128, offset: 448)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3241, file: !616, line: 194, baseType: !1478, size: 128, offset: 576)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3232, file: !616, line: 144, baseType: !3281, size: 64)
!3281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !616, line: 103, size: 64, elements: !3282)
!3282 = !{!3283}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3281, file: !616, line: 104, baseType: !3221, size: 64)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3232, file: !616, line: 145, baseType: !3285, size: 256)
!3285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !616, line: 107, size: 256, elements: !3286)
!3286 = !{!3287, !3347, !3350, !3351}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3285, file: !616, line: 108, baseType: !3288, size: 64)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3290)
!3290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !616, line: 217, size: 768, elements: !3291)
!3291 = !{!3292, !3312, !3316, !3320, !3324, !3328, !3332, !3336, !3337, !3338, !3339, !3343}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3290, file: !616, line: 222, baseType: !3293, size: 64)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!148, !3296}
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !616, line: 197, size: 1088, elements: !3298)
!3298 = !{!3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3297, file: !616, line: 199, baseType: !3221, size: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3297, file: !616, line: 200, baseType: !349, size: 64, offset: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3297, file: !616, line: 201, baseType: !708, size: 64, offset: 128)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3297, file: !616, line: 202, baseType: !206, size: 64, offset: 192)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3297, file: !616, line: 205, baseType: !1170, size: 192, offset: 256)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3297, file: !616, line: 206, baseType: !1170, size: 192, offset: 448)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3297, file: !616, line: 207, baseType: !148, size: 32, offset: 640)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3297, file: !616, line: 208, baseType: !217, size: 128, offset: 704)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3297, file: !616, line: 209, baseType: !271, size: 64, offset: 832)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3297, file: !616, line: 211, baseType: !318, size: 64, offset: 896)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3297, file: !616, line: 212, baseType: !487, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3297, file: !616, line: 213, baseType: !487, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3297, file: !616, line: 214, baseType: !1006, size: 64, offset: 1024)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3290, file: !616, line: 223, baseType: !3313, size: 64, offset: 64)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{null, !3296}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3290, file: !616, line: 236, baseType: !3317, size: 64, offset: 128)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = !DISubroutineType(types: !3319)
!3319 = !{!148, !708, !206}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3290, file: !616, line: 238, baseType: !3321, size: 64, offset: 192)
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{!206, !708, !2873}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3290, file: !616, line: 239, baseType: !3325, size: 64, offset: 256)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{!206, !708, !206, !2873}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3290, file: !616, line: 240, baseType: !3329, size: 64, offset: 320)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = !DISubroutineType(types: !3331)
!3331 = !{null, !708, !206}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3290, file: !616, line: 242, baseType: !3333, size: 64, offset: 384)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = !DISubroutineType(types: !3335)
!3335 = !{!302, !3296, !271, !318, !528}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3290, file: !616, line: 252, baseType: !318, size: 64, offset: 448)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3290, file: !616, line: 259, baseType: !487, size: 8, offset: 512)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3290, file: !616, line: 260, baseType: !3333, size: 64, offset: 576)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3290, file: !616, line: 263, baseType: !3340, size: 64, offset: 640)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = !DISubroutineType(types: !3342)
!3342 = !{!2902, !3296, !2904}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3290, file: !616, line: 266, baseType: !3344, size: 64, offset: 704)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = !DISubroutineType(types: !3346)
!3346 = !{!148, !3296, !978}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3285, file: !616, line: 109, baseType: !3348, size: 64, offset: 64)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !616, line: 31, flags: DIFlagFwdDecl)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3285, file: !616, line: 110, baseType: !528, size: 64, offset: 128)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3285, file: !616, line: 111, baseType: !3221, size: 64, offset: 192)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3222, file: !616, line: 148, baseType: !206, size: 64, offset: 768)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3222, file: !616, line: 154, baseType: !418, size: 64, offset: 832)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3222, file: !616, line: 156, baseType: !313, size: 16, offset: 896)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3222, file: !616, line: 157, baseType: !312, size: 16, offset: 912)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3222, file: !616, line: 158, baseType: !3357, size: 64, offset: 960)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !616, line: 32, flags: DIFlagFwdDecl)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !212, file: !213, line: 71, baseType: !3360, size: 32, offset: 448)
!3360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3361, line: 19, size: 32, elements: !3362)
!3361 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3362 = !{!3363}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3360, file: !3361, line: 20, baseType: !1227, size: 32)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !212, file: !213, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !212, file: !213, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !212, file: !213, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !212, file: !213, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !212, file: !213, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !209, file: !73, line: 463, baseType: !208, size: 64, offset: 512)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !209, file: !73, line: 465, baseType: !3371, size: 64, offset: 576)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !209, file: !73, line: 467, baseType: !188, size: 64, offset: 640)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !209, file: !73, line: 468, baseType: !3375, size: 64, offset: 704)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3377)
!3377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3378)
!3378 = !{!3379, !3380, !3381, !3385, !3390, !3394}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3377, file: !73, line: 88, baseType: !188, size: 64)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3377, file: !73, line: 89, baseType: !325, size: 64, offset: 64)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3377, file: !73, line: 90, baseType: !3382, size: 64, offset: 128)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!148, !208, !266}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3377, file: !73, line: 91, baseType: !3386, size: 64, offset: 192)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!271, !208, !3389, !3218, !3219}
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3377, file: !73, line: 93, baseType: !3391, size: 64, offset: 256)
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{null, !208}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3377, file: !73, line: 95, baseType: !3395, size: 64, offset: 320)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3397)
!3397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3398)
!3398 = !{!3399, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3397, file: !80, line: 279, baseType: !3400, size: 64)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = !DISubroutineType(types: !3402)
!3402 = !{!148, !208}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3397, file: !80, line: 280, baseType: !3391, size: 64, offset: 64)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3397, file: !80, line: 281, baseType: !3400, size: 64, offset: 128)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3397, file: !80, line: 282, baseType: !3400, size: 64, offset: 192)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3397, file: !80, line: 283, baseType: !3400, size: 64, offset: 256)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3397, file: !80, line: 284, baseType: !3400, size: 64, offset: 320)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3397, file: !80, line: 285, baseType: !3400, size: 64, offset: 384)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3397, file: !80, line: 286, baseType: !3400, size: 64, offset: 448)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3397, file: !80, line: 287, baseType: !3400, size: 64, offset: 512)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3397, file: !80, line: 288, baseType: !3400, size: 64, offset: 576)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3397, file: !80, line: 289, baseType: !3400, size: 64, offset: 640)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3397, file: !80, line: 290, baseType: !3400, size: 64, offset: 704)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3397, file: !80, line: 291, baseType: !3400, size: 64, offset: 768)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3397, file: !80, line: 292, baseType: !3400, size: 64, offset: 832)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3397, file: !80, line: 293, baseType: !3400, size: 64, offset: 896)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3397, file: !80, line: 294, baseType: !3400, size: 64, offset: 960)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3397, file: !80, line: 295, baseType: !3400, size: 64, offset: 1024)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3397, file: !80, line: 296, baseType: !3400, size: 64, offset: 1088)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3397, file: !80, line: 297, baseType: !3400, size: 64, offset: 1152)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3397, file: !80, line: 298, baseType: !3400, size: 64, offset: 1216)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3397, file: !80, line: 299, baseType: !3400, size: 64, offset: 1280)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3397, file: !80, line: 300, baseType: !3400, size: 64, offset: 1344)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3397, file: !80, line: 301, baseType: !3400, size: 64, offset: 1408)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !209, file: !73, line: 470, baseType: !3426, size: 64, offset: 768)
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3428, line: 82, size: 1408, elements: !3429)
!3428 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3429 = !{!3430, !3431, !3432, !3433, !3434, !3435, !3436, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3511, !3514, !3515}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3427, file: !3428, line: 83, baseType: !188, size: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3427, file: !3428, line: 84, baseType: !188, size: 64, offset: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3427, file: !3428, line: 85, baseType: !208, size: 64, offset: 128)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3427, file: !3428, line: 86, baseType: !325, size: 64, offset: 192)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3427, file: !3428, line: 87, baseType: !325, size: 64, offset: 256)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3427, file: !3428, line: 88, baseType: !325, size: 64, offset: 320)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3427, file: !3428, line: 90, baseType: !3437, size: 64, offset: 384)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{!148, !208, !3440}
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3442)
!3442 = !{!3443, !3444, !3445, !3446, !3447, !3448, !3449, !3462, !3475, !3476, !3477, !3478, !3479, !3487, !3488, !3489, !3490, !3491, !3492}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3441, file: !67, line: 96, baseType: !188, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3441, file: !67, line: 97, baseType: !3426, size: 64, offset: 64)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3441, file: !67, line: 99, baseType: !190, size: 64, offset: 128)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3441, file: !67, line: 100, baseType: !188, size: 64, offset: 192)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3441, file: !67, line: 102, baseType: !487, size: 8, offset: 256)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3441, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3441, file: !67, line: 105, baseType: !3450, size: 64, offset: 320)
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3452)
!3452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3453, line: 262, size: 1600, elements: !3454)
!3453 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3454 = !{!3455, !3456, !3457, !3461}
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3452, file: !3453, line: 263, baseType: !2697, size: 256)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3452, file: !3453, line: 264, baseType: !2697, size: 256, offset: 256)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3452, file: !3453, line: 265, baseType: !3458, size: 1024, offset: 512)
!3458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 1024, elements: !3459)
!3459 = !{!3460}
!3460 = !DISubrange(count: 128)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3452, file: !3453, line: 266, baseType: !2124, size: 64, offset: 1536)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3441, file: !67, line: 106, baseType: !3463, size: 64, offset: 384)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3465)
!3465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3453, line: 210, size: 256, elements: !3466)
!3466 = !{!3467, !3471, !3473, !3474}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3465, file: !3453, line: 211, baseType: !3468, size: 72)
!3468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1350, size: 72, elements: !3469)
!3469 = !{!3470}
!3470 = !DISubrange(count: 9)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3465, file: !3453, line: 212, baseType: !3472, size: 64, offset: 128)
!3472 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3453, line: 14, baseType: !321)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3465, file: !3453, line: 213, baseType: !414, size: 32, offset: 192)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3465, file: !3453, line: 214, baseType: !414, size: 32, offset: 224)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3441, file: !67, line: 108, baseType: !3400, size: 64, offset: 448)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3441, file: !67, line: 109, baseType: !3391, size: 64, offset: 512)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3441, file: !67, line: 110, baseType: !3400, size: 64, offset: 576)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3441, file: !67, line: 111, baseType: !3391, size: 64, offset: 640)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3441, file: !67, line: 112, baseType: !3480, size: 64, offset: 704)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DISubroutineType(types: !3482)
!3482 = !{!148, !208, !3483}
!3483 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3484)
!3484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3485)
!3485 = !{!3486}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3484, file: !80, line: 51, baseType: !148, size: 32)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3441, file: !67, line: 113, baseType: !3400, size: 64, offset: 768)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3441, file: !67, line: 114, baseType: !325, size: 64, offset: 832)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3441, file: !67, line: 115, baseType: !325, size: 64, offset: 896)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3441, file: !67, line: 117, baseType: !3395, size: 64, offset: 960)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3441, file: !67, line: 118, baseType: !3391, size: 64, offset: 1024)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3441, file: !67, line: 120, baseType: !3493, size: 64, offset: 1088)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3427, file: !3428, line: 91, baseType: !3382, size: 64, offset: 448)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3427, file: !3428, line: 92, baseType: !3400, size: 64, offset: 512)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3427, file: !3428, line: 93, baseType: !3391, size: 64, offset: 576)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3427, file: !3428, line: 94, baseType: !3400, size: 64, offset: 640)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3427, file: !3428, line: 95, baseType: !3391, size: 64, offset: 704)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3427, file: !3428, line: 97, baseType: !3400, size: 64, offset: 768)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3427, file: !3428, line: 98, baseType: !3400, size: 64, offset: 832)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3427, file: !3428, line: 100, baseType: !3480, size: 64, offset: 896)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3427, file: !3428, line: 101, baseType: !3400, size: 64, offset: 960)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3427, file: !3428, line: 103, baseType: !3400, size: 64, offset: 1024)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3427, file: !3428, line: 105, baseType: !3400, size: 64, offset: 1088)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3427, file: !3428, line: 107, baseType: !3395, size: 64, offset: 1152)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3427, file: !3428, line: 109, baseType: !3508, size: 64, offset: 1216)
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3510)
!3510 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3428, line: 109, flags: DIFlagFwdDecl)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3427, file: !3428, line: 111, baseType: !3512, size: 64, offset: 1280)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3428, line: 111, flags: DIFlagFwdDecl)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3427, file: !3428, line: 112, baseType: !642, offset: 1344)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3427, file: !3428, line: 114, baseType: !487, size: 8, offset: 1344)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !209, file: !73, line: 471, baseType: !3440, size: 64, offset: 832)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !209, file: !73, line: 473, baseType: !206, size: 64, offset: 896)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !209, file: !73, line: 475, baseType: !206, size: 64, offset: 960)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !209, file: !73, line: 480, baseType: !1170, size: 192, offset: 1024)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !209, file: !73, line: 484, baseType: !3521, size: 576, offset: 1216)
!3521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3522)
!3522 = !{!3523, !3524, !3525, !3526, !3527, !3528}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3521, file: !73, line: 362, baseType: !217, size: 128)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3521, file: !73, line: 363, baseType: !217, size: 128, offset: 128)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3521, file: !73, line: 364, baseType: !217, size: 128, offset: 256)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3521, file: !73, line: 365, baseType: !217, size: 128, offset: 384)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3521, file: !73, line: 366, baseType: !487, size: 8, offset: 512)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3521, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !209, file: !73, line: 485, baseType: !3530, size: 2304, offset: 1792)
!3530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3531)
!3531 = !{!3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3627, !3631}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3530, file: !80, line: 566, baseType: !3483, size: 32)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3530, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3530, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3530, file: !80, line: 569, baseType: !487, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3530, file: !80, line: 570, baseType: !487, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3530, file: !80, line: 571, baseType: !487, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3530, file: !80, line: 572, baseType: !487, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3530, file: !80, line: 573, baseType: !487, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3530, file: !80, line: 574, baseType: !487, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3530, file: !80, line: 575, baseType: !487, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3530, file: !80, line: 576, baseType: !487, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3530, file: !80, line: 577, baseType: !412, size: 32, offset: 64)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3530, file: !80, line: 578, baseType: !230, offset: 96)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3530, file: !80, line: 580, baseType: !217, size: 128, offset: 128)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3530, file: !80, line: 581, baseType: !1499, size: 192, offset: 256)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3530, file: !80, line: 582, baseType: !3548, size: 64, offset: 448)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3550, line: 43, size: 1472, elements: !3551)
!3550 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3551 = !{!3552, !3553, !3554, !3555, !3556, !3559, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584}
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3549, file: !3550, line: 44, baseType: !188, size: 64)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3549, file: !3550, line: 45, baseType: !148, size: 32, offset: 64)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3549, file: !3550, line: 46, baseType: !217, size: 128, offset: 128)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3549, file: !3550, line: 47, baseType: !230, offset: 256)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3549, file: !3550, line: 48, baseType: !3557, size: 64, offset: 256)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3549, file: !3550, line: 49, baseType: !3560, size: 320, offset: 320)
!3560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3561, line: 11, size: 320, elements: !3562)
!3561 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3562 = !{!3563, !3564, !3565, !3570}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3560, file: !3561, line: 16, baseType: !636, size: 128)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3560, file: !3561, line: 17, baseType: !321, size: 64, offset: 128)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3560, file: !3561, line: 18, baseType: !3566, size: 64, offset: 192)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DISubroutineType(types: !3568)
!3568 = !{null, !3569}
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3560, file: !3561, line: 19, baseType: !412, size: 32, offset: 256)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3549, file: !3550, line: 50, baseType: !321, size: 64, offset: 640)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3549, file: !3550, line: 51, baseType: !1297, size: 64, offset: 704)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3549, file: !3550, line: 52, baseType: !1297, size: 64, offset: 768)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3549, file: !3550, line: 53, baseType: !1297, size: 64, offset: 832)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3549, file: !3550, line: 54, baseType: !1297, size: 64, offset: 896)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3549, file: !3550, line: 55, baseType: !1297, size: 64, offset: 960)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3549, file: !3550, line: 56, baseType: !321, size: 64, offset: 1024)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3549, file: !3550, line: 57, baseType: !321, size: 64, offset: 1088)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3549, file: !3550, line: 58, baseType: !321, size: 64, offset: 1152)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3549, file: !3550, line: 59, baseType: !321, size: 64, offset: 1216)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3549, file: !3550, line: 60, baseType: !321, size: 64, offset: 1280)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3549, file: !3550, line: 61, baseType: !208, size: 64, offset: 1344)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3549, file: !3550, line: 62, baseType: !487, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3549, file: !3550, line: 63, baseType: !487, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3530, file: !80, line: 583, baseType: !487, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3530, file: !80, line: 584, baseType: !487, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3530, file: !80, line: 585, baseType: !487, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3530, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3530, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3530, file: !80, line: 592, baseType: !1289, size: 512, offset: 576)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3530, file: !80, line: 593, baseType: !418, size: 64, offset: 1088)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3530, file: !80, line: 594, baseType: !1954, size: 256, offset: 1152)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3530, file: !80, line: 595, baseType: !1478, size: 128, offset: 1408)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3530, file: !80, line: 596, baseType: !3557, size: 64, offset: 1536)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3530, file: !80, line: 597, baseType: !744, size: 32, offset: 1600)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3530, file: !80, line: 598, baseType: !744, size: 32, offset: 1632)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3530, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3530, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3530, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3530, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3530, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3530, file: !80, line: 604, baseType: !487, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3530, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3530, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3530, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3530, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3530, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3530, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3530, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3530, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3530, file: !80, line: 613, baseType: !148, size: 32, offset: 1792)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3530, file: !80, line: 614, baseType: !148, size: 32, offset: 1824)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3530, file: !80, line: 615, baseType: !418, size: 64, offset: 1856)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3530, file: !80, line: 616, baseType: !418, size: 64, offset: 1920)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3530, file: !80, line: 617, baseType: !418, size: 64, offset: 1984)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3530, file: !80, line: 618, baseType: !418, size: 64, offset: 2048)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3530, file: !80, line: 620, baseType: !3618, size: 64, offset: 2112)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3620)
!3620 = !{!3621, !3622, !3623, !3624}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3619, file: !80, line: 537, baseType: !230)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3619, file: !80, line: 538, baseType: !7, size: 32)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3619, file: !80, line: 540, baseType: !217, size: 128, offset: 64)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3619, file: !80, line: 543, baseType: !3625, size: 64, offset: 192)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3530, file: !80, line: 621, baseType: !3628, size: 64, offset: 2176)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = !DISubroutineType(types: !3630)
!3630 = !{null, !208, !1441}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3530, file: !80, line: 622, baseType: !3632, size: 64, offset: 2240)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !209, file: !73, line: 486, baseType: !3635, size: 64, offset: 4096)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3637)
!3637 = !{!3638, !3639, !3640, !3644, !3645, !3646}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3636, file: !80, line: 643, baseType: !3397, size: 1472)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3636, file: !80, line: 644, baseType: !3400, size: 64, offset: 1472)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3636, file: !80, line: 645, baseType: !3641, size: 64, offset: 1536)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DISubroutineType(types: !3643)
!3643 = !{null, !208, !487}
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3636, file: !80, line: 646, baseType: !3400, size: 64, offset: 1600)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3636, file: !80, line: 647, baseType: !3391, size: 64, offset: 1664)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3636, file: !80, line: 648, baseType: !3391, size: 64, offset: 1728)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !209, file: !73, line: 493, baseType: !3648, size: 64, offset: 4160)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !73, line: 493, flags: DIFlagFwdDecl)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !209, file: !73, line: 499, baseType: !217, size: 128, offset: 4224)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !209, file: !73, line: 502, baseType: !3652, size: 64, offset: 4352)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3654)
!3654 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !209, file: !73, line: 504, baseType: !3656, size: 64, offset: 4416)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !209, file: !73, line: 505, baseType: !418, size: 64, offset: 4480)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !209, file: !73, line: 510, baseType: !418, size: 64, offset: 4544)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !209, file: !73, line: 511, baseType: !3660, size: 64, offset: 4608)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3662)
!3662 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !209, file: !73, line: 513, baseType: !3664, size: 64, offset: 4672)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3666)
!3666 = !{!3667, !3668}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3665, file: !73, line: 293, baseType: !7, size: 32)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3665, file: !73, line: 294, baseType: !321, size: 64, offset: 64)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !209, file: !73, line: 515, baseType: !217, size: 128, offset: 4736)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !209, file: !73, line: 526, baseType: !3671, offset: 4864)
!3671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3672, line: 5, elements: !244)
!3672 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !209, file: !73, line: 528, baseType: !3674, size: 64, offset: 4864)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3676, line: 14, flags: DIFlagFwdDecl)
!3676 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !209, file: !73, line: 529, baseType: !3678, size: 64, offset: 4928)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3680, line: 17, size: 192, elements: !3681)
!3680 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3681 = !{!3682, !3683, !3766}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3679, file: !3680, line: 18, baseType: !3678, size: 64)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3679, file: !3680, line: 19, baseType: !3684, size: 64, offset: 64)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3686)
!3686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3680, line: 110, size: 1152, elements: !3687)
!3687 = !{!3688, !3692, !3696, !3702, !3708, !3712, !3716, !3721, !3725, !3726, !3730, !3734, !3738, !3749, !3750, !3751, !3752, !3762}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3686, file: !3680, line: 111, baseType: !3689, size: 64)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{!3678, !3678}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3686, file: !3680, line: 112, baseType: !3693, size: 64, offset: 64)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DISubroutineType(types: !3695)
!3695 = !{null, !3678}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3686, file: !3680, line: 113, baseType: !3697, size: 64, offset: 128)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!487, !3700}
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3679)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3686, file: !3680, line: 114, baseType: !3703, size: 64, offset: 192)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!2124, !3700, !3706}
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3686, file: !3680, line: 116, baseType: !3709, size: 64, offset: 256)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{!487, !3700, !188}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3686, file: !3680, line: 118, baseType: !3713, size: 64, offset: 320)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{!148, !3700, !188, !7, !206, !318}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3686, file: !3680, line: 123, baseType: !3717, size: 64, offset: 384)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{!148, !3700, !188, !3720, !318}
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3686, file: !3680, line: 126, baseType: !3722, size: 64, offset: 448)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{!188, !3700}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3686, file: !3680, line: 127, baseType: !3722, size: 64, offset: 512)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3686, file: !3680, line: 128, baseType: !3727, size: 64, offset: 576)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!3678, !3700}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3686, file: !3680, line: 130, baseType: !3731, size: 64, offset: 640)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!3678, !3700, !3678}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3686, file: !3680, line: 133, baseType: !3735, size: 64, offset: 704)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!3678, !3700, !188}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3686, file: !3680, line: 135, baseType: !3739, size: 64, offset: 768)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!148, !3700, !188, !188, !7, !7, !3742}
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3680, line: 43, size: 640, elements: !3744)
!3744 = !{!3745, !3746, !3747}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3743, file: !3680, line: 44, baseType: !3678, size: 64)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3743, file: !3680, line: 45, baseType: !7, size: 32, offset: 64)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3743, file: !3680, line: 46, baseType: !3748, size: 512, offset: 128)
!3748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 512, elements: !1327)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3686, file: !3680, line: 140, baseType: !3731, size: 64, offset: 832)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3686, file: !3680, line: 143, baseType: !3727, size: 64, offset: 896)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3686, file: !3680, line: 145, baseType: !3689, size: 64, offset: 960)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3686, file: !3680, line: 146, baseType: !3753, size: 64, offset: 1024)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{!148, !3700, !3756}
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3680, line: 29, size: 128, elements: !3758)
!3758 = !{!3759, !3760, !3761}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3757, file: !3680, line: 30, baseType: !7, size: 32)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3757, file: !3680, line: 31, baseType: !7, size: 32, offset: 32)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3757, file: !3680, line: 32, baseType: !3700, size: 64, offset: 64)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3686, file: !3680, line: 148, baseType: !3763, size: 64, offset: 1088)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!148, !3700, !208}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3679, file: !3680, line: 20, baseType: !208, size: 64, offset: 128)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !209, file: !73, line: 534, baseType: !510, size: 32, offset: 4992)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !209, file: !73, line: 535, baseType: !412, size: 32, offset: 5024)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !209, file: !73, line: 537, baseType: !230, offset: 5056)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !209, file: !73, line: 538, baseType: !217, size: 128, offset: 5056)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !209, file: !73, line: 540, baseType: !3772, size: 64, offset: 5184)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3774, line: 54, size: 960, elements: !3775)
!3774 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3775 = !{!3776, !3777, !3778, !3779, !3780, !3781, !3782, !3786, !3790, !3791, !3792, !3793, !3797, !3801, !3802}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3773, file: !3774, line: 55, baseType: !188, size: 64)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3773, file: !3774, line: 56, baseType: !190, size: 64, offset: 64)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3773, file: !3774, line: 58, baseType: !325, size: 64, offset: 128)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3773, file: !3774, line: 59, baseType: !325, size: 64, offset: 192)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3773, file: !3774, line: 60, baseType: !223, size: 64, offset: 256)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3773, file: !3774, line: 62, baseType: !3382, size: 64, offset: 320)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3773, file: !3774, line: 63, baseType: !3783, size: 64, offset: 384)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{!271, !208, !3389}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3773, file: !3774, line: 65, baseType: !3787, size: 64, offset: 448)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{null, !3772}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3773, file: !3774, line: 66, baseType: !3391, size: 64, offset: 512)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3773, file: !3774, line: 68, baseType: !3400, size: 64, offset: 576)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3773, file: !3774, line: 70, baseType: !3186, size: 64, offset: 640)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3773, file: !3774, line: 71, baseType: !3794, size: 64, offset: 704)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!2124, !208}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3773, file: !3774, line: 73, baseType: !3798, size: 64, offset: 768)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{null, !208, !3218, !3219}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3773, file: !3774, line: 75, baseType: !3395, size: 64, offset: 832)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3773, file: !3774, line: 77, baseType: !3512, size: 64, offset: 896)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !209, file: !73, line: 541, baseType: !325, size: 64, offset: 5248)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !209, file: !73, line: 543, baseType: !3391, size: 64, offset: 5312)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !209, file: !73, line: 544, baseType: !3806, size: 64, offset: 5376)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !209, file: !73, line: 545, baseType: !3809, size: 64, offset: 5440)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !209, file: !73, line: 547, baseType: !487, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !209, file: !73, line: 548, baseType: !487, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !209, file: !73, line: 549, baseType: !487, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !209, file: !73, line: 550, baseType: !487, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !198, file: !132, line: 548, baseType: !148, size: 32, offset: 320)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "detach_count", scope: !198, file: !132, line: 549, baseType: !7, size: 32, offset: 352)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "hw_dev", scope: !198, file: !132, line: 550, baseType: !208, size: 64, offset: 384)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !198, file: !132, line: 552, baseType: !188, size: 64, offset: 448)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "board_ptr", scope: !198, file: !132, line: 553, baseType: !2124, size: 64, offset: 512)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "attached", scope: !198, file: !132, line: 554, baseType: !7, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "ioenabled", scope: !198, file: !132, line: 555, baseType: !7, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "spinlock", scope: !198, file: !132, line: 556, baseType: !230, offset: 584)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !198, file: !132, line: 557, baseType: !1170, size: 192, offset: 640)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "attach_lock", scope: !198, file: !132, line: 558, baseType: !764, size: 256, offset: 832)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !198, file: !132, line: 559, baseType: !3360, size: 32, offset: 1088)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "n_subdevices", scope: !198, file: !132, line: 561, baseType: !148, size: 32, offset: 1120)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "subdevices", scope: !198, file: !132, line: 562, baseType: !3828, size: 64, offset: 1152)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_subdevice", file: !132, line: 153, size: 1792, elements: !3830)
!3830 = !{!3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3906, !3919, !3922, !3923, !3937, !3938, !3939, !3940, !3944, !3949, !3950, !3951, !3952, !3956, !3957, !3958, !3959, !3960}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3829, file: !132, line: 154, baseType: !197, size: 64)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3829, file: !132, line: 155, baseType: !148, size: 32, offset: 64)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3829, file: !132, line: 156, baseType: !148, size: 32, offset: 96)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "n_chan", scope: !3829, file: !132, line: 157, baseType: !148, size: 32, offset: 128)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "subdev_flags", scope: !3829, file: !132, line: 158, baseType: !148, size: 32, offset: 160)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "len_chanlist", scope: !3829, file: !132, line: 159, baseType: !148, size: 32, offset: 192)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3829, file: !132, line: 161, baseType: !206, size: 64, offset: 256)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "async", scope: !3829, file: !132, line: 163, baseType: !3839, size: 64, offset: 320)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_async", file: !132, line: 347, size: 1536, elements: !3841)
!3841 = !{!3842, !3843, !3844, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3892, !3893, !3894}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3840, file: !132, line: 348, baseType: !206, size: 64)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_bufsz", scope: !3840, file: !132, line: 349, baseType: !7, size: 32, offset: 64)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "buf_map", scope: !3840, file: !132, line: 350, baseType: !3845, size: 64, offset: 128)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_map", file: !132, line: 249, size: 256, elements: !3847)
!3847 = !{!3848, !3849, !3855, !3856, !3857}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "dma_hw_dev", scope: !3846, file: !132, line: 250, baseType: !208, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "page_list", scope: !3846, file: !132, line: 251, baseType: !3850, size: 64, offset: 64)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_page", file: !132, line: 220, size: 128, elements: !3852)
!3852 = !{!3853, !3854}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "virt_addr", scope: !3851, file: !132, line: 221, baseType: !206, size: 64)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3851, file: !132, line: 222, baseType: !917, size: 64, offset: 64)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "n_pages", scope: !3846, file: !132, line: 252, baseType: !7, size: 32, offset: 128)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "dma_dir", scope: !3846, file: !132, line: 253, baseType: !93, size: 32, offset: 160)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3846, file: !132, line: 254, baseType: !3360, size: 32, offset: 192)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "max_bufsize", scope: !3840, file: !132, line: 351, baseType: !7, size: 32, offset: 192)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_count", scope: !3840, file: !132, line: 352, baseType: !7, size: 32, offset: 224)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_alloc_count", scope: !3840, file: !132, line: 353, baseType: !7, size: 32, offset: 256)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_count", scope: !3840, file: !132, line: 354, baseType: !7, size: 32, offset: 288)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_alloc_count", scope: !3840, file: !132, line: 355, baseType: !7, size: 32, offset: 320)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_ptr", scope: !3840, file: !132, line: 356, baseType: !7, size: 32, offset: 352)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_ptr", scope: !3840, file: !132, line: 357, baseType: !7, size: 32, offset: 384)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "cur_chan", scope: !3840, file: !132, line: 358, baseType: !7, size: 32, offset: 416)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "scans_done", scope: !3840, file: !132, line: 359, baseType: !7, size: 32, offset: 448)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "scan_progress", scope: !3840, file: !132, line: 360, baseType: !7, size: 32, offset: 480)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "munge_chan", scope: !3840, file: !132, line: 361, baseType: !7, size: 32, offset: 512)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "munge_count", scope: !3840, file: !132, line: 362, baseType: !7, size: 32, offset: 544)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "munge_ptr", scope: !3840, file: !132, line: 363, baseType: !7, size: 32, offset: 576)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3840, file: !132, line: 364, baseType: !7, size: 32, offset: 608)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !3840, file: !132, line: 365, baseType: !3873, size: 640, offset: 640)
!3873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_cmd", file: !105, line: 589, size: 640, elements: !3874)
!3874 = !{!3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3891}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "subdev", scope: !3873, file: !105, line: 590, baseType: !7, size: 32)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3873, file: !105, line: 591, baseType: !7, size: 32, offset: 32)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "start_src", scope: !3873, file: !105, line: 593, baseType: !7, size: 32, offset: 64)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "start_arg", scope: !3873, file: !105, line: 594, baseType: !7, size: 32, offset: 96)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "scan_begin_src", scope: !3873, file: !105, line: 596, baseType: !7, size: 32, offset: 128)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "scan_begin_arg", scope: !3873, file: !105, line: 597, baseType: !7, size: 32, offset: 160)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "convert_src", scope: !3873, file: !105, line: 599, baseType: !7, size: 32, offset: 192)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "convert_arg", scope: !3873, file: !105, line: 600, baseType: !7, size: 32, offset: 224)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "scan_end_src", scope: !3873, file: !105, line: 602, baseType: !7, size: 32, offset: 256)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "scan_end_arg", scope: !3873, file: !105, line: 603, baseType: !7, size: 32, offset: 288)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "stop_src", scope: !3873, file: !105, line: 605, baseType: !7, size: 32, offset: 320)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "stop_arg", scope: !3873, file: !105, line: 606, baseType: !7, size: 32, offset: 352)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist", scope: !3873, file: !105, line: 608, baseType: !2680, size: 64, offset: 384)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist_len", scope: !3873, file: !105, line: 609, baseType: !7, size: 32, offset: 448)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3873, file: !105, line: 611, baseType: !3890, size: 64, offset: 512)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !3873, file: !105, line: 612, baseType: !7, size: 32, offset: 576)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "wait_head", scope: !3840, file: !132, line: 366, baseType: !1478, size: 128, offset: 1280)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "cb_mask", scope: !3840, file: !132, line: 367, baseType: !7, size: 32, offset: 1408)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "inttrig", scope: !3840, file: !132, line: 368, baseType: !3895, size: 64, offset: 1472)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{!148, !197, !3828, !7}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3829, file: !132, line: 165, baseType: !206, size: 64, offset: 384)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !3829, file: !132, line: 166, baseType: !206, size: 64, offset: 448)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "runflags", scope: !3829, file: !132, line: 167, baseType: !7, size: 32, offset: 512)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "spin_lock", scope: !3829, file: !132, line: 168, baseType: !230, offset: 544)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "io_bits", scope: !3829, file: !132, line: 170, baseType: !7, size: 32, offset: 544)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata", scope: !3829, file: !132, line: 172, baseType: !7, size: 32, offset: 576)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata_list", scope: !3829, file: !132, line: 173, baseType: !3905, size: 64, offset: 640)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "range_table", scope: !3829, file: !132, line: 175, baseType: !3907, size: 64, offset: 704)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3909)
!3909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_lrange", file: !132, line: 635, size: 32, elements: !3910)
!3910 = !{!3911, !3912}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3909, file: !132, line: 636, baseType: !148, size: 32)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3909, file: !132, line: 637, baseType: !3913, offset: 32)
!3913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3914, elements: !2328)
!3914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_krange", file: !105, line: 685, size: 96, elements: !3915)
!3915 = !{!3916, !3917, !3918}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !3914, file: !105, line: 686, baseType: !148, size: 32)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3914, file: !105, line: 687, baseType: !148, size: 32, offset: 32)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3914, file: !105, line: 688, baseType: !7, size: 32, offset: 64)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "range_table_list", scope: !3829, file: !132, line: 176, baseType: !3920, size: 64, offset: 768)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3907)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist", scope: !3829, file: !132, line: 178, baseType: !2680, size: 64, offset: 832)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "insn_read", scope: !3829, file: !132, line: 180, baseType: !3924, size: 64, offset: 896)
!3924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3925, size: 64)
!3925 = !DISubroutineType(types: !3926)
!3926 = !{!148, !197, !3828, !3927, !2680}
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_insn", file: !105, line: 491, size: 320, elements: !3929)
!3929 = !{!3930, !3931, !3932, !3933, !3934, !3935}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3928, file: !105, line: 492, baseType: !7, size: 32)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !3928, file: !105, line: 493, baseType: !7, size: 32, offset: 32)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3928, file: !105, line: 494, baseType: !2680, size: 64, offset: 64)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "subdev", scope: !3928, file: !105, line: 495, baseType: !7, size: 32, offset: 128)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "chanspec", scope: !3928, file: !105, line: 496, baseType: !7, size: 32, offset: 160)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !3928, file: !105, line: 497, baseType: !3936, size: 96, offset: 192)
!3936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 96, elements: !272)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "insn_write", scope: !3829, file: !132, line: 182, baseType: !3924, size: 64, offset: 960)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "insn_bits", scope: !3829, file: !132, line: 184, baseType: !3924, size: 64, offset: 1024)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "insn_config", scope: !3829, file: !132, line: 186, baseType: !3924, size: 64, offset: 1088)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmd", scope: !3829, file: !132, line: 191, baseType: !3941, size: 64, offset: 1152)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = !DISubroutineType(types: !3943)
!3943 = !{!148, !197, !3828}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmdtest", scope: !3829, file: !132, line: 192, baseType: !3945, size: 64, offset: 1216)
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3946 = !DISubroutineType(types: !3947)
!3947 = !{!148, !197, !3828, !3948}
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3829, file: !132, line: 195, baseType: !3941, size: 64, offset: 1280)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "cancel", scope: !3829, file: !132, line: 196, baseType: !3941, size: 64, offset: 1344)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "buf_change", scope: !3829, file: !132, line: 199, baseType: !3941, size: 64, offset: 1408)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "munge", scope: !3829, file: !132, line: 202, baseType: !3953, size: 64, offset: 1472)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DISubroutineType(types: !3955)
!3955 = !{null, !197, !3828, !206, !7, !7}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "async_dma_dir", scope: !3829, file: !132, line: 205, baseType: !93, size: 32, offset: 1536)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3829, file: !132, line: 207, baseType: !7, size: 32, offset: 1568)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !3829, file: !132, line: 209, baseType: !208, size: 64, offset: 1600)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3829, file: !132, line: 210, baseType: !148, size: 32, offset: 1664)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "readback", scope: !3829, file: !132, line: 212, baseType: !2680, size: 64, offset: 1728)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "mmio", scope: !198, file: !132, line: 565, baseType: !206, size: 64, offset: 1216)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "iobase", scope: !198, file: !132, line: 566, baseType: !321, size: 64, offset: 1280)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "iolen", scope: !198, file: !132, line: 567, baseType: !321, size: 64, offset: 1344)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !198, file: !132, line: 568, baseType: !7, size: 32, offset: 1408)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "read_subdev", scope: !198, file: !132, line: 570, baseType: !3828, size: 64, offset: 1472)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "write_subdev", scope: !198, file: !132, line: 571, baseType: !3828, size: 64, offset: 1536)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "async_queue", scope: !198, file: !132, line: 573, baseType: !2956, size: 64, offset: 1600)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !198, file: !132, line: 575, baseType: !3969, size: 64, offset: 1664)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = !DISubroutineType(types: !3971)
!3971 = !{!148, !197}
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !198, file: !132, line: 576, baseType: !3973, size: 64, offset: 1728)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = !DISubroutineType(types: !3975)
!3975 = !{null, !197}
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "insn_device_config", scope: !198, file: !132, line: 577, baseType: !3977, size: 64, offset: 1792)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = !DISubroutineType(types: !3979)
!3979 = !{!148, !197, !3927, !2680}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "get_valid_routes", scope: !198, file: !132, line: 579, baseType: !3981, size: 64, offset: 1856)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = !DISubroutineType(types: !3983)
!3983 = !{!7, !197, !7, !2680}
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3985, size: 64)
!3985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_devconfig", file: !105, line: 834, size: 1184, elements: !3986)
!3986 = !{!3987, !3989}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !3985, file: !105, line: 835, baseType: !3988, size: 160)
!3988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 160, elements: !2198)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !3985, file: !105, line: 836, baseType: !3990, size: 1024, offset: 160)
!3990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 1024, elements: !2227)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !183, file: !132, line: 444, baseType: !3973, size: 64, offset: 256)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "auto_attach", scope: !183, file: !132, line: 445, baseType: !3993, size: 64, offset: 320)
!3993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3994, size: 64)
!3994 = !DISubroutineType(types: !3995)
!3995 = !{!148, !197, !321}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "num_names", scope: !183, file: !132, line: 446, baseType: !7, size: 32, offset: 384)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !183, file: !132, line: 447, baseType: !3998, size: 64, offset: 448)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !183, file: !132, line: 448, baseType: !148, size: 32, offset: 512)
!4001 = !DIGlobalVariableExpression(var: !4002, expr: !DIExpression())
!4002 = distinct !DIGlobalVariable(name: "apci3120_boardtypes", scope: !2, file: !3, line: 125, type: !4003, isLocal: true, isDefinition: true)
!4003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4004, size: 256, elements: !1566)
!4004 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4005)
!4005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apci3120_board", file: !3, line: 119, size: 128, elements: !4006)
!4006 = !{!4007, !4008, !4009}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4005, file: !3, line: 120, baseType: !188, size: 64)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "ai_is_16bit", scope: !4005, file: !3, line: 121, baseType: !7, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "has_ao", scope: !4005, file: !3, line: 122, baseType: !7, size: 1, offset: 65, flags: DIFlagBitField, extraData: i64 64)
!4010 = !DIGlobalVariableExpression(var: !4011, expr: !DIExpression())
!4011 = distinct !DIGlobalVariable(name: "apci3120_ai_range", scope: !2, file: !3, line: 101, type: !3908, isLocal: true, isDefinition: true)
!4012 = !DIGlobalVariableExpression(var: !4013, expr: !DIExpression())
!4013 = distinct !DIGlobalVariable(name: "apci3120_pci_driver", scope: !2, file: !3, line: 1107, type: !4014, isLocal: true, isDefinition: true)
!4014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !4015, line: 858, size: 2048, elements: !4016)
!4015 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!4016 = !{!4017, !4018, !4019, !4031, !4251, !4255, !4259, !4263, !4264, !4268, !4286, !4287, !4288}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4014, file: !4015, line: 859, baseType: !217, size: 128)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4014, file: !4015, line: 860, baseType: !188, size: 64, offset: 128)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4014, file: !4015, line: 861, baseType: !4020, size: 64, offset: 192)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4022)
!4022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3453, line: 38, size: 256, elements: !4023)
!4023 = !{!4024, !4025, !4026, !4027, !4028, !4029, !4030}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4022, file: !3453, line: 39, baseType: !414, size: 32)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4022, file: !3453, line: 39, baseType: !414, size: 32, offset: 32)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4022, file: !3453, line: 40, baseType: !414, size: 32, offset: 64)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4022, file: !3453, line: 40, baseType: !414, size: 32, offset: 96)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4022, file: !3453, line: 41, baseType: !414, size: 32, offset: 128)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4022, file: !3453, line: 41, baseType: !414, size: 32, offset: 160)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4022, file: !3453, line: 42, baseType: !3472, size: 64, offset: 192)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4014, file: !4015, line: 862, baseType: !4032, size: 64, offset: 256)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = !DISubroutineType(types: !4034)
!4034 = !{!148, !4035, !4020}
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !4015, line: 309, size: 19264, elements: !4037)
!4037 = !{!4038, !4039, !4114, !4115, !4116, !4117, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4145, !4147, !4148, !4149, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4173, !4174, !4175, !4176, !4178, !4179, !4180, !4181, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4224, !4225, !4227, !4228, !4229, !4230, !4232, !4233, !4234, !4237, !4244, !4245, !4246, !4247, !4248, !4249, !4250}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !4036, file: !4015, line: 310, baseType: !217, size: 128)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4036, file: !4015, line: 311, baseType: !4040, size: 64, offset: 128)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !4015, line: 605, size: 8064, elements: !4042)
!4042 = !{!4043, !4044, !4045, !4046, !4047, !4048, !4049, !4064, !4065, !4066, !4090, !4093, !4094, !4098, !4099, !4100, !4101, !4102, !4106, !4107, !4109, !4110, !4111, !4112, !4113}
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4041, file: !4015, line: 606, baseType: !217, size: 128)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4041, file: !4015, line: 607, baseType: !4040, size: 64, offset: 128)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4041, file: !4015, line: 608, baseType: !217, size: 128, offset: 192)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4041, file: !4015, line: 609, baseType: !217, size: 128, offset: 320)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4041, file: !4015, line: 610, baseType: !4035, size: 64, offset: 448)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4041, file: !4015, line: 611, baseType: !217, size: 128, offset: 512)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4041, file: !4015, line: 613, baseType: !4050, size: 256, offset: 640)
!4050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4051, size: 256, elements: !1152)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4053, line: 20, size: 512, elements: !4054)
!4053 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!4054 = !{!4055, !4057, !4058, !4059, !4060, !4061, !4062, !4063}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4052, file: !4053, line: 21, baseType: !4056, size: 64)
!4056 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !150, line: 158, baseType: !2122)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4052, file: !4053, line: 22, baseType: !4056, size: 64, offset: 64)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4052, file: !4053, line: 23, baseType: !188, size: 64, offset: 128)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4052, file: !4053, line: 24, baseType: !321, size: 64, offset: 192)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4052, file: !4053, line: 25, baseType: !321, size: 64, offset: 256)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4052, file: !4053, line: 26, baseType: !4051, size: 64, offset: 320)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4052, file: !4053, line: 26, baseType: !4051, size: 64, offset: 384)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4052, file: !4053, line: 26, baseType: !4051, size: 64, offset: 448)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4041, file: !4015, line: 614, baseType: !217, size: 128, offset: 896)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !4041, file: !4015, line: 615, baseType: !4052, size: 512, offset: 1024)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4041, file: !4015, line: 617, baseType: !4067, size: 64, offset: 1536)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !4015, line: 731, size: 320, elements: !4069)
!4069 = !{!4070, !4074, !4078, !4082, !4086}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4068, file: !4015, line: 732, baseType: !4071, size: 64)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = !DISubroutineType(types: !4073)
!4073 = !{!148, !4040}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4068, file: !4015, line: 733, baseType: !4075, size: 64, offset: 64)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = !DISubroutineType(types: !4077)
!4077 = !{null, !4040}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4068, file: !4015, line: 734, baseType: !4079, size: 64, offset: 128)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = !DISubroutineType(types: !4081)
!4081 = !{!206, !4040, !7, !148}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4068, file: !4015, line: 735, baseType: !4083, size: 64, offset: 192)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = !DISubroutineType(types: !4085)
!4085 = !{!148, !4040, !7, !148, !148, !1412}
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4068, file: !4015, line: 736, baseType: !4087, size: 64, offset: 256)
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4088 = !DISubroutineType(types: !4089)
!4089 = !{!148, !4040, !7, !148, !148, !412}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4041, file: !4015, line: 618, baseType: !4091, size: 64, offset: 1600)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !4015, line: 537, flags: DIFlagFwdDecl)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4041, file: !4015, line: 619, baseType: !206, size: 64, offset: 1664)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !4041, file: !4015, line: 620, baseType: !4095, size: 64, offset: 1728)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4097, line: 123, flags: DIFlagFwdDecl)
!4097 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4041, file: !4015, line: 622, baseType: !424, size: 8, offset: 1792)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4041, file: !4015, line: 623, baseType: !424, size: 8, offset: 1800)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !4041, file: !4015, line: 624, baseType: !424, size: 8, offset: 1808)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !4041, file: !4015, line: 625, baseType: !424, size: 8, offset: 1816)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4041, file: !4015, line: 630, baseType: !4103, size: 384, offset: 1824)
!4103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 384, elements: !4104)
!4104 = !{!4105}
!4105 = !DISubrange(count: 48)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !4041, file: !4015, line: 632, baseType: !313, size: 16, offset: 2208)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !4041, file: !4015, line: 633, baseType: !4108, size: 16, offset: 2224)
!4108 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !4015, line: 237, baseType: !313)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !4041, file: !4015, line: 634, baseType: !208, size: 64, offset: 2240)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4041, file: !4015, line: 635, baseType: !209, size: 5568, offset: 2304)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !4041, file: !4015, line: 636, baseType: !339, size: 64, offset: 7872)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !4041, file: !4015, line: 637, baseType: !339, size: 64, offset: 7936)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !4041, file: !4015, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !4036, file: !4015, line: 312, baseType: !4040, size: 64, offset: 192)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4036, file: !4015, line: 314, baseType: !206, size: 64, offset: 256)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !4036, file: !4015, line: 315, baseType: !4095, size: 64, offset: 320)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4036, file: !4015, line: 316, baseType: !4118, size: 64, offset: 384)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !4015, line: 69, size: 832, elements: !4120)
!4120 = !{!4121, !4122, !4123, !4126, !4127}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4119, file: !4015, line: 70, baseType: !4040, size: 64)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4119, file: !4015, line: 71, baseType: !217, size: 128, offset: 64)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4119, file: !4015, line: 72, baseType: !4124, size: 64, offset: 192)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4125 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !4015, line: 72, flags: DIFlagFwdDecl)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4119, file: !4015, line: 73, baseType: !424, size: 8, offset: 256)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4119, file: !4015, line: 74, baseType: !212, size: 512, offset: 320)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !4036, file: !4015, line: 318, baseType: !7, size: 32, offset: 448)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4036, file: !4015, line: 319, baseType: !313, size: 16, offset: 480)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4036, file: !4015, line: 320, baseType: !313, size: 16, offset: 496)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4036, file: !4015, line: 321, baseType: !313, size: 16, offset: 512)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4036, file: !4015, line: 322, baseType: !313, size: 16, offset: 528)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4036, file: !4015, line: 323, baseType: !7, size: 32, offset: 544)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4036, file: !4015, line: 324, baseType: !1349, size: 8, offset: 576)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4036, file: !4015, line: 325, baseType: !1349, size: 8, offset: 584)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !4036, file: !4015, line: 330, baseType: !1349, size: 8, offset: 592)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !4036, file: !4015, line: 331, baseType: !1349, size: 8, offset: 600)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !4036, file: !4015, line: 332, baseType: !1349, size: 8, offset: 608)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !4036, file: !4015, line: 333, baseType: !1349, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !4036, file: !4015, line: 334, baseType: !1349, size: 8, offset: 624)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4036, file: !4015, line: 335, baseType: !1349, size: 8, offset: 632)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !4036, file: !4015, line: 336, baseType: !856, size: 16, offset: 640)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !4036, file: !4015, line: 337, baseType: !4144, size: 64, offset: 704)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4036, file: !4015, line: 339, baseType: !4146, size: 64, offset: 768)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4036, file: !4015, line: 340, baseType: !418, size: 64, offset: 832)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4036, file: !4015, line: 346, baseType: !3665, size: 128, offset: 896)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !4036, file: !4015, line: 348, baseType: !4150, size: 32, offset: 1024)
!4150 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !4015, line: 155, baseType: !148)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !4036, file: !4015, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !4036, file: !4015, line: 352, baseType: !1349, size: 8, offset: 1064)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !4036, file: !4015, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !4036, file: !4015, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !4036, file: !4015, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !4036, file: !4015, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !4036, file: !4015, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !4036, file: !4015, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !4036, file: !4015, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !4036, file: !4015, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !4036, file: !4015, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !4036, file: !4015, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !4036, file: !4015, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !4036, file: !4015, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !4036, file: !4015, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !4036, file: !4015, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !4036, file: !4015, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !4036, file: !4015, line: 376, baseType: !7, size: 32, offset: 1120)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !4036, file: !4015, line: 377, baseType: !7, size: 32, offset: 1152)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !4036, file: !4015, line: 380, baseType: !4171, size: 64, offset: 1216)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !4015, line: 303, flags: DIFlagFwdDecl)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !4036, file: !4015, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !4036, file: !4015, line: 383, baseType: !148, size: 32, offset: 1312)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !4036, file: !4015, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !4036, file: !4015, line: 387, baseType: !4177, size: 32, offset: 1376)
!4177 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !4015, line: 180, baseType: !7)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4036, file: !4015, line: 388, baseType: !209, size: 5568, offset: 1408)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !4036, file: !4015, line: 390, baseType: !148, size: 32, offset: 6976)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4036, file: !4015, line: 396, baseType: !7, size: 32, offset: 7008)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4036, file: !4015, line: 397, baseType: !4182, size: 8704, offset: 7040)
!4182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4052, size: 8704, elements: !4183)
!4183 = !{!4184}
!4184 = !DISubrange(count: 17)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4036, file: !4015, line: 399, baseType: !487, size: 8, offset: 15744)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !4036, file: !4015, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !4036, file: !4015, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !4036, file: !4015, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !4036, file: !4015, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !4036, file: !4015, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !4036, file: !4015, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !4036, file: !4015, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !4036, file: !4015, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !4036, file: !4015, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !4036, file: !4015, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !4036, file: !4015, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !4036, file: !4015, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !4036, file: !4015, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !4036, file: !4015, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !4036, file: !4015, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !4036, file: !4015, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !4036, file: !4015, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !4036, file: !4015, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !4036, file: !4015, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !4036, file: !4015, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !4036, file: !4015, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !4036, file: !4015, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !4036, file: !4015, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !4036, file: !4015, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !4036, file: !4015, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !4036, file: !4015, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !4036, file: !4015, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !4036, file: !4015, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !4036, file: !4015, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !4036, file: !4015, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !4036, file: !4015, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !4036, file: !4015, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !4036, file: !4015, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !4036, file: !4015, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !4036, file: !4015, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !4036, file: !4015, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !4036, file: !4015, line: 450, baseType: !4223, size: 16, offset: 15792)
!4223 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !4015, line: 206, baseType: !313)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !4036, file: !4015, line: 451, baseType: !744, size: 32, offset: 15808)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !4036, file: !4015, line: 453, baseType: !4226, size: 512, offset: 15840)
!4226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 512, elements: !1732)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !4036, file: !4015, line: 454, baseType: !632, size: 64, offset: 16384)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !4036, file: !4015, line: 455, baseType: !339, size: 64, offset: 16448)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !4036, file: !4015, line: 456, baseType: !148, size: 32, offset: 16512)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !4036, file: !4015, line: 457, baseType: !4231, size: 1088, offset: 16576)
!4231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 1088, elements: !4183)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !4036, file: !4015, line: 458, baseType: !4231, size: 1088, offset: 17664)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !4036, file: !4015, line: 469, baseType: !325, size: 64, offset: 18752)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !4036, file: !4015, line: 471, baseType: !4235, size: 64, offset: 18816)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !4015, line: 304, flags: DIFlagFwdDecl)
!4237 = !DIDerivedType(tag: DW_TAG_member, scope: !4036, file: !4015, line: 478, baseType: !4238, size: 64, offset: 18880)
!4238 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4036, file: !4015, line: 478, size: 64, elements: !4239)
!4239 = !{!4240, !4243}
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4238, file: !4015, line: 479, baseType: !4241, size: 64)
!4241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4242, size: 64)
!4242 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !4015, line: 305, flags: DIFlagFwdDecl)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4238, file: !4015, line: 480, baseType: !4035, size: 64)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !4036, file: !4015, line: 482, baseType: !856, size: 16, offset: 18944)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !4036, file: !4015, line: 483, baseType: !1349, size: 8, offset: 18960)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !4036, file: !4015, line: 497, baseType: !856, size: 16, offset: 18976)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !4036, file: !4015, line: 498, baseType: !2122, size: 64, offset: 19008)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !4036, file: !4015, line: 499, baseType: !318, size: 64, offset: 19072)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !4036, file: !4015, line: 500, baseType: !271, size: 64, offset: 19136)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !4036, file: !4015, line: 502, baseType: !321, size: 64, offset: 19200)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4014, file: !4015, line: 863, baseType: !4252, size: 64, offset: 320)
!4252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4253, size: 64)
!4253 = !DISubroutineType(types: !4254)
!4254 = !{null, !4035}
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4014, file: !4015, line: 864, baseType: !4256, size: 64, offset: 384)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{!148, !4035, !3483}
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4014, file: !4015, line: 865, baseType: !4260, size: 64, offset: 448)
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = !DISubroutineType(types: !4262)
!4262 = !{!148, !4035}
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4014, file: !4015, line: 866, baseType: !4252, size: 64, offset: 512)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4014, file: !4015, line: 867, baseType: !4265, size: 64, offset: 576)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = !DISubroutineType(types: !4267)
!4267 = !{!148, !4035, !148}
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4014, file: !4015, line: 868, baseType: !4269, size: 64, offset: 640)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4271)
!4271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !4015, line: 795, size: 384, elements: !4272)
!4272 = !{!4273, !4278, !4282, !4283, !4284, !4285}
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4271, file: !4015, line: 797, baseType: !4274, size: 64)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4275 = !DISubroutineType(types: !4276)
!4276 = !{!4277, !4035, !4177}
!4277 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !4015, line: 772, baseType: !7)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4271, file: !4015, line: 801, baseType: !4279, size: 64, offset: 64)
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4280 = !DISubroutineType(types: !4281)
!4281 = !{!4277, !4035}
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4271, file: !4015, line: 804, baseType: !4279, size: 64, offset: 128)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4271, file: !4015, line: 807, baseType: !4252, size: 64, offset: 192)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4271, file: !4015, line: 808, baseType: !4252, size: 64, offset: 256)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4271, file: !4015, line: 811, baseType: !4252, size: 64, offset: 320)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4014, file: !4015, line: 869, baseType: !325, size: 64, offset: 704)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4014, file: !4015, line: 870, baseType: !3441, size: 1152, offset: 768)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4014, file: !4015, line: 871, baseType: !4289, size: 128, offset: 1920)
!4289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !4015, line: 759, size: 128, elements: !4290)
!4290 = !{!4291, !4292}
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4289, file: !4015, line: 760, baseType: !230)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4289, file: !4015, line: 761, baseType: !217, size: 128)
!4293 = !DIGlobalVariableExpression(var: !4294, expr: !DIExpression())
!4294 = distinct !DIGlobalVariable(name: "apci3120_pci_table", scope: !2, file: !3, line: 1100, type: !4295, isLocal: true, isDefinition: true)
!4295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4021, size: 768, elements: !272)
!4296 = !{i32 7, !"Dwarf Version", i32 4}
!4297 = !{i32 2, !"Debug Info Version", i32 3}
!4298 = !{i32 1, !"wchar_size", i32 2}
!4299 = !{i32 1, !"Code Model", i32 2}
!4300 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4301 = distinct !DISubprogram(name: "apci3120_driver_init", scope: !3, file: !3, line: 1113, type: !4302, scopeLine: 1113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!4302 = !DISubroutineType(types: !4303)
!4303 = !{!148}
!4304 = !DILocation(line: 1113, column: 1, scope: !4301)
!4305 = distinct !DISubprogram(name: "apci3120_driver_exit", scope: !3, file: !3, line: 1113, type: !157, scopeLine: 1113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!4306 = !DILocation(line: 1113, column: 1, scope: !4305)
!4307 = distinct !DISubprogram(name: "apci3120_detach", scope: !3, file: !3, line: 1081, type: !3974, scopeLine: 1082, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!4308 = !DILocalVariable(name: "dev", arg: 1, scope: !4307, file: !3, line: 1081, type: !197)
!4309 = !DILocation(line: 1081, column: 51, scope: !4307)
!4310 = !DILocation(line: 1083, column: 20, scope: !4307)
!4311 = !DILocation(line: 1083, column: 2, scope: !4307)
!4312 = !DILocation(line: 1084, column: 20, scope: !4307)
!4313 = !DILocation(line: 1084, column: 2, scope: !4307)
!4314 = !DILocation(line: 1085, column: 1, scope: !4307)
!4315 = distinct !DISubprogram(name: "apci3120_auto_attach", scope: !3, file: !3, line: 964, type: !3994, scopeLine: 966, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!4316 = !DILocalVariable(name: "dev", arg: 1, scope: !4315, file: !3, line: 964, type: !197)
!4317 = !DILocation(line: 964, column: 55, scope: !4315)
!4318 = !DILocalVariable(name: "context", arg: 2, scope: !4315, file: !3, line: 965, type: !321)
!4319 = !DILocation(line: 965, column: 19, scope: !4315)
!4320 = !DILocalVariable(name: "pcidev", scope: !4315, file: !3, line: 967, type: !4035)
!4321 = !DILocation(line: 967, column: 18, scope: !4315)
!4322 = !DILocation(line: 967, column: 45, scope: !4315)
!4323 = !DILocation(line: 967, column: 27, scope: !4315)
!4324 = !DILocalVariable(name: "board", scope: !4315, file: !3, line: 968, type: !4325)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4326 = !DILocation(line: 968, column: 31, scope: !4315)
!4327 = !DILocalVariable(name: "devpriv", scope: !4315, file: !3, line: 969, type: !4328)
!4328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64)
!4329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apci3120_private", file: !3, line: 143, size: 640, elements: !4330)
!4330 = !{!4331, !4332, !4333, !4334, !4335, !4336, !4337, !4346, !4347, !4348, !4349}
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "amcc", scope: !4329, file: !3, line: 144, baseType: !321, size: 64)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "addon", scope: !4329, file: !3, line: 145, baseType: !321, size: 64, offset: 64)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "osc_base", scope: !4329, file: !3, line: 146, baseType: !7, size: 32, offset: 128)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "use_dma", scope: !4329, file: !3, line: 147, baseType: !7, size: 1, offset: 160, flags: DIFlagBitField, extraData: i64 160)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "use_double_buffer", scope: !4329, file: !3, line: 148, baseType: !7, size: 1, offset: 161, flags: DIFlagBitField, extraData: i64 160)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "cur_dmabuf", scope: !4329, file: !3, line: 149, baseType: !7, size: 1, offset: 162, flags: DIFlagBitField, extraData: i64 160)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "dmabuf", scope: !4329, file: !3, line: 150, baseType: !4338, size: 384, offset: 192)
!4338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4339, size: 384, elements: !1566)
!4339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apci3120_dmabuf", file: !3, line: 136, size: 192, elements: !4340)
!4340 = !{!4341, !4343, !4344, !4345}
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "virt", scope: !4339, file: !3, line: 137, baseType: !4342, size: 64)
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !4339, file: !3, line: 138, baseType: !917, size: 64, offset: 64)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4339, file: !3, line: 139, baseType: !7, size: 32, offset: 128)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "use_size", scope: !4339, file: !3, line: 140, baseType: !7, size: 32, offset: 160)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "do_bits", scope: !4329, file: !3, line: 151, baseType: !424, size: 8, offset: 576)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "timer_mode", scope: !4329, file: !3, line: 152, baseType: !424, size: 8, offset: 584)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4329, file: !3, line: 153, baseType: !424, size: 8, offset: 592)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !4329, file: !3, line: 154, baseType: !313, size: 16, offset: 608)
!4350 = !DILocation(line: 969, column: 27, scope: !4315)
!4351 = !DILocalVariable(name: "s", scope: !4315, file: !3, line: 970, type: !3828)
!4352 = !DILocation(line: 970, column: 27, scope: !4315)
!4353 = !DILocalVariable(name: "status", scope: !4315, file: !3, line: 971, type: !7)
!4354 = !DILocation(line: 971, column: 15, scope: !4315)
!4355 = !DILocalVariable(name: "ret", scope: !4315, file: !3, line: 972, type: !148)
!4356 = !DILocation(line: 972, column: 6, scope: !4315)
!4357 = !DILocation(line: 974, column: 6, scope: !4358)
!4358 = distinct !DILexicalBlock(scope: !4315, file: !3, line: 974, column: 6)
!4359 = !DILocation(line: 974, column: 14, scope: !4358)
!4360 = !DILocation(line: 974, column: 6, scope: !4315)
!4361 = !DILocation(line: 975, column: 32, scope: !4358)
!4362 = !DILocation(line: 975, column: 12, scope: !4358)
!4363 = !DILocation(line: 975, column: 9, scope: !4358)
!4364 = !DILocation(line: 975, column: 3, scope: !4358)
!4365 = !DILocation(line: 976, column: 7, scope: !4366)
!4366 = distinct !DILexicalBlock(scope: !4315, file: !3, line: 976, column: 6)
!4367 = !DILocation(line: 976, column: 6, scope: !4315)
!4368 = !DILocation(line: 977, column: 3, scope: !4366)
!4369 = !DILocation(line: 978, column: 19, scope: !4315)
!4370 = !DILocation(line: 978, column: 2, scope: !4315)
!4371 = !DILocation(line: 978, column: 7, scope: !4315)
!4372 = !DILocation(line: 978, column: 17, scope: !4315)
!4373 = !DILocation(line: 979, column: 20, scope: !4315)
!4374 = !DILocation(line: 979, column: 27, scope: !4315)
!4375 = !DILocation(line: 979, column: 2, scope: !4315)
!4376 = !DILocation(line: 979, column: 7, scope: !4315)
!4377 = !DILocation(line: 979, column: 18, scope: !4315)
!4378 = !DILocation(line: 981, column: 33, scope: !4315)
!4379 = !DILocation(line: 981, column: 12, scope: !4315)
!4380 = !DILocation(line: 981, column: 10, scope: !4315)
!4381 = !DILocation(line: 982, column: 7, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4315, file: !3, line: 982, column: 6)
!4383 = !DILocation(line: 982, column: 6, scope: !4315)
!4384 = !DILocation(line: 983, column: 3, scope: !4382)
!4385 = !DILocation(line: 985, column: 26, scope: !4315)
!4386 = !DILocation(line: 985, column: 8, scope: !4315)
!4387 = !DILocation(line: 985, column: 6, scope: !4315)
!4388 = !DILocation(line: 986, column: 6, scope: !4389)
!4389 = distinct !DILexicalBlock(scope: !4315, file: !3, line: 986, column: 6)
!4390 = !DILocation(line: 986, column: 6, scope: !4315)
!4391 = !DILocation(line: 987, column: 10, scope: !4389)
!4392 = !DILocation(line: 987, column: 3, scope: !4389)
!4393 = !DILocation(line: 988, column: 17, scope: !4315)
!4394 = !DILocation(line: 988, column: 2, scope: !4315)
!4395 = !DILocation(line: 990, column: 16, scope: !4315)
!4396 = !DILocation(line: 990, column: 2, scope: !4315)
!4397 = !DILocation(line: 990, column: 7, scope: !4315)
!4398 = !DILocation(line: 990, column: 14, scope: !4315)
!4399 = !DILocation(line: 991, column: 18, scope: !4315)
!4400 = !DILocation(line: 991, column: 2, scope: !4315)
!4401 = !DILocation(line: 991, column: 11, scope: !4315)
!4402 = !DILocation(line: 991, column: 16, scope: !4315)
!4403 = !DILocation(line: 992, column: 19, scope: !4315)
!4404 = !DILocation(line: 992, column: 2, scope: !4315)
!4405 = !DILocation(line: 992, column: 11, scope: !4315)
!4406 = !DILocation(line: 992, column: 17, scope: !4315)
!4407 = !DILocation(line: 994, column: 17, scope: !4315)
!4408 = !DILocation(line: 994, column: 2, scope: !4315)
!4409 = !DILocation(line: 996, column: 6, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !4315, file: !3, line: 996, column: 6)
!4411 = !DILocation(line: 996, column: 14, scope: !4410)
!4412 = !DILocation(line: 996, column: 18, scope: !4410)
!4413 = !DILocation(line: 996, column: 6, scope: !4315)
!4414 = !DILocation(line: 997, column: 21, scope: !4415)
!4415 = distinct !DILexicalBlock(scope: !4410, file: !3, line: 996, column: 23)
!4416 = !DILocation(line: 997, column: 29, scope: !4415)
!4417 = !DILocation(line: 998, column: 7, scope: !4415)
!4418 = !DILocation(line: 998, column: 12, scope: !4415)
!4419 = !DILocation(line: 998, column: 24, scope: !4415)
!4420 = !DILocation(line: 997, column: 9, scope: !4415)
!4421 = !DILocation(line: 997, column: 7, scope: !4415)
!4422 = !DILocation(line: 999, column: 7, scope: !4423)
!4423 = distinct !DILexicalBlock(scope: !4415, file: !3, line: 999, column: 7)
!4424 = !DILocation(line: 999, column: 11, scope: !4423)
!4425 = !DILocation(line: 999, column: 7, scope: !4415)
!4426 = !DILocation(line: 1000, column: 15, scope: !4427)
!4427 = distinct !DILexicalBlock(scope: !4423, file: !3, line: 999, column: 17)
!4428 = !DILocation(line: 1000, column: 23, scope: !4427)
!4429 = !DILocation(line: 1000, column: 4, scope: !4427)
!4430 = !DILocation(line: 1000, column: 9, scope: !4427)
!4431 = !DILocation(line: 1000, column: 13, scope: !4427)
!4432 = !DILocation(line: 1002, column: 23, scope: !4427)
!4433 = !DILocation(line: 1002, column: 4, scope: !4427)
!4434 = !DILocation(line: 1003, column: 3, scope: !4427)
!4435 = !DILocation(line: 1004, column: 2, scope: !4415)
!4436 = !DILocation(line: 1006, column: 15, scope: !4315)
!4437 = !DILocation(line: 1006, column: 20, scope: !4315)
!4438 = !DILocation(line: 1006, column: 27, scope: !4315)
!4439 = !DILocation(line: 1006, column: 11, scope: !4315)
!4440 = !DILocation(line: 1006, column: 9, scope: !4315)
!4441 = !DILocation(line: 1007, column: 6, scope: !4442)
!4442 = distinct !DILexicalBlock(scope: !4315, file: !3, line: 1007, column: 6)
!4443 = !DILocation(line: 1007, column: 41, scope: !4442)
!4444 = !DILocation(line: 1007, column: 58, scope: !4442)
!4445 = !DILocation(line: 1008, column: 6, scope: !4442)
!4446 = !DILocation(line: 1008, column: 14, scope: !4442)
!4447 = !DILocation(line: 1007, column: 6, scope: !4315)
!4448 = !DILocation(line: 1009, column: 3, scope: !4442)
!4449 = !DILocation(line: 1009, column: 12, scope: !4442)
!4450 = !DILocation(line: 1009, column: 21, scope: !4442)
!4451 = !DILocation(line: 1011, column: 3, scope: !4442)
!4452 = !DILocation(line: 1011, column: 12, scope: !4442)
!4453 = !DILocation(line: 1011, column: 21, scope: !4442)
!4454 = !DILocation(line: 1013, column: 32, scope: !4315)
!4455 = !DILocation(line: 1013, column: 8, scope: !4315)
!4456 = !DILocation(line: 1013, column: 6, scope: !4315)
!4457 = !DILocation(line: 1014, column: 6, scope: !4458)
!4458 = distinct !DILexicalBlock(scope: !4315, file: !3, line: 1014, column: 6)
!4459 = !DILocation(line: 1014, column: 6, scope: !4315)
!4460 = !DILocation(line: 1015, column: 10, scope: !4458)
!4461 = !DILocation(line: 1015, column: 3, scope: !4458)
!4462 = !DILocation(line: 1018, column: 7, scope: !4315)
!4463 = !DILocation(line: 1018, column: 12, scope: !4315)
!4464 = !DILocation(line: 1018, column: 4, scope: !4315)
!4465 = !DILocation(line: 1019, column: 2, scope: !4315)
!4466 = !DILocation(line: 1019, column: 5, scope: !4315)
!4467 = !DILocation(line: 1019, column: 11, scope: !4315)
!4468 = !DILocation(line: 1020, column: 2, scope: !4315)
!4469 = !DILocation(line: 1020, column: 5, scope: !4315)
!4470 = !DILocation(line: 1020, column: 18, scope: !4315)
!4471 = !DILocation(line: 1021, column: 2, scope: !4315)
!4472 = !DILocation(line: 1021, column: 5, scope: !4315)
!4473 = !DILocation(line: 1021, column: 12, scope: !4315)
!4474 = !DILocation(line: 1022, column: 15, scope: !4315)
!4475 = !DILocation(line: 1022, column: 22, scope: !4315)
!4476 = !DILocation(line: 1022, column: 2, scope: !4315)
!4477 = !DILocation(line: 1022, column: 5, scope: !4315)
!4478 = !DILocation(line: 1022, column: 13, scope: !4315)
!4479 = !DILocation(line: 1023, column: 2, scope: !4315)
!4480 = !DILocation(line: 1023, column: 5, scope: !4315)
!4481 = !DILocation(line: 1023, column: 17, scope: !4315)
!4482 = !DILocation(line: 1024, column: 2, scope: !4315)
!4483 = !DILocation(line: 1024, column: 5, scope: !4315)
!4484 = !DILocation(line: 1024, column: 15, scope: !4315)
!4485 = !DILocation(line: 1025, column: 6, scope: !4486)
!4486 = distinct !DILexicalBlock(scope: !4315, file: !3, line: 1025, column: 6)
!4487 = !DILocation(line: 1025, column: 11, scope: !4486)
!4488 = !DILocation(line: 1025, column: 6, scope: !4315)
!4489 = !DILocation(line: 1026, column: 22, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !4486, file: !3, line: 1025, column: 16)
!4491 = !DILocation(line: 1026, column: 3, scope: !4490)
!4492 = !DILocation(line: 1026, column: 8, scope: !4490)
!4493 = !DILocation(line: 1026, column: 20, scope: !4490)
!4494 = !DILocation(line: 1027, column: 3, scope: !4490)
!4495 = !DILocation(line: 1027, column: 6, scope: !4490)
!4496 = !DILocation(line: 1027, column: 19, scope: !4490)
!4497 = !DILocation(line: 1028, column: 21, scope: !4490)
!4498 = !DILocation(line: 1028, column: 24, scope: !4490)
!4499 = !DILocation(line: 1028, column: 3, scope: !4490)
!4500 = !DILocation(line: 1028, column: 6, scope: !4490)
!4501 = !DILocation(line: 1028, column: 19, scope: !4490)
!4502 = !DILocation(line: 1029, column: 3, scope: !4490)
!4503 = !DILocation(line: 1029, column: 6, scope: !4490)
!4504 = !DILocation(line: 1029, column: 17, scope: !4490)
!4505 = !DILocation(line: 1030, column: 3, scope: !4490)
!4506 = !DILocation(line: 1030, column: 6, scope: !4490)
!4507 = !DILocation(line: 1030, column: 13, scope: !4490)
!4508 = !DILocation(line: 1031, column: 3, scope: !4490)
!4509 = !DILocation(line: 1031, column: 6, scope: !4490)
!4510 = !DILocation(line: 1031, column: 13, scope: !4490)
!4511 = !DILocation(line: 1032, column: 2, scope: !4490)
!4512 = !DILocation(line: 1035, column: 7, scope: !4315)
!4513 = !DILocation(line: 1035, column: 12, scope: !4315)
!4514 = !DILocation(line: 1035, column: 4, scope: !4315)
!4515 = !DILocation(line: 1036, column: 6, scope: !4516)
!4516 = distinct !DILexicalBlock(scope: !4315, file: !3, line: 1036, column: 6)
!4517 = !DILocation(line: 1036, column: 13, scope: !4516)
!4518 = !DILocation(line: 1036, column: 6, scope: !4315)
!4519 = !DILocation(line: 1037, column: 3, scope: !4520)
!4520 = distinct !DILexicalBlock(scope: !4516, file: !3, line: 1036, column: 21)
!4521 = !DILocation(line: 1037, column: 6, scope: !4520)
!4522 = !DILocation(line: 1037, column: 12, scope: !4520)
!4523 = !DILocation(line: 1038, column: 3, scope: !4520)
!4524 = !DILocation(line: 1038, column: 6, scope: !4520)
!4525 = !DILocation(line: 1038, column: 19, scope: !4520)
!4526 = !DILocation(line: 1039, column: 3, scope: !4520)
!4527 = !DILocation(line: 1039, column: 6, scope: !4520)
!4528 = !DILocation(line: 1039, column: 13, scope: !4520)
!4529 = !DILocation(line: 1040, column: 3, scope: !4520)
!4530 = !DILocation(line: 1040, column: 6, scope: !4520)
!4531 = !DILocation(line: 1040, column: 14, scope: !4520)
!4532 = !DILocation(line: 1041, column: 3, scope: !4520)
!4533 = !DILocation(line: 1041, column: 6, scope: !4520)
!4534 = !DILocation(line: 1041, column: 18, scope: !4520)
!4535 = !DILocation(line: 1042, column: 3, scope: !4520)
!4536 = !DILocation(line: 1042, column: 6, scope: !4520)
!4537 = !DILocation(line: 1042, column: 17, scope: !4520)
!4538 = !DILocation(line: 1044, column: 38, scope: !4520)
!4539 = !DILocation(line: 1044, column: 9, scope: !4520)
!4540 = !DILocation(line: 1044, column: 7, scope: !4520)
!4541 = !DILocation(line: 1045, column: 7, scope: !4542)
!4542 = distinct !DILexicalBlock(scope: !4520, file: !3, line: 1045, column: 7)
!4543 = !DILocation(line: 1045, column: 7, scope: !4520)
!4544 = !DILocation(line: 1046, column: 11, scope: !4542)
!4545 = !DILocation(line: 1046, column: 4, scope: !4542)
!4546 = !DILocation(line: 1047, column: 2, scope: !4520)
!4547 = !DILocation(line: 1048, column: 3, scope: !4548)
!4548 = distinct !DILexicalBlock(scope: !4516, file: !3, line: 1047, column: 9)
!4549 = !DILocation(line: 1048, column: 6, scope: !4548)
!4550 = !DILocation(line: 1048, column: 12, scope: !4548)
!4551 = !DILocation(line: 1052, column: 7, scope: !4315)
!4552 = !DILocation(line: 1052, column: 12, scope: !4315)
!4553 = !DILocation(line: 1052, column: 4, scope: !4315)
!4554 = !DILocation(line: 1053, column: 2, scope: !4315)
!4555 = !DILocation(line: 1053, column: 5, scope: !4315)
!4556 = !DILocation(line: 1053, column: 11, scope: !4315)
!4557 = !DILocation(line: 1054, column: 2, scope: !4315)
!4558 = !DILocation(line: 1054, column: 5, scope: !4315)
!4559 = !DILocation(line: 1054, column: 18, scope: !4315)
!4560 = !DILocation(line: 1055, column: 2, scope: !4315)
!4561 = !DILocation(line: 1055, column: 5, scope: !4315)
!4562 = !DILocation(line: 1055, column: 12, scope: !4315)
!4563 = !DILocation(line: 1056, column: 2, scope: !4315)
!4564 = !DILocation(line: 1056, column: 5, scope: !4315)
!4565 = !DILocation(line: 1056, column: 13, scope: !4315)
!4566 = !DILocation(line: 1057, column: 2, scope: !4315)
!4567 = !DILocation(line: 1057, column: 5, scope: !4315)
!4568 = !DILocation(line: 1057, column: 17, scope: !4315)
!4569 = !DILocation(line: 1058, column: 2, scope: !4315)
!4570 = !DILocation(line: 1058, column: 5, scope: !4315)
!4571 = !DILocation(line: 1058, column: 15, scope: !4315)
!4572 = !DILocation(line: 1061, column: 7, scope: !4315)
!4573 = !DILocation(line: 1061, column: 12, scope: !4315)
!4574 = !DILocation(line: 1061, column: 4, scope: !4315)
!4575 = !DILocation(line: 1062, column: 2, scope: !4315)
!4576 = !DILocation(line: 1062, column: 5, scope: !4315)
!4577 = !DILocation(line: 1062, column: 11, scope: !4315)
!4578 = !DILocation(line: 1063, column: 2, scope: !4315)
!4579 = !DILocation(line: 1063, column: 5, scope: !4315)
!4580 = !DILocation(line: 1063, column: 18, scope: !4315)
!4581 = !DILocation(line: 1064, column: 2, scope: !4315)
!4582 = !DILocation(line: 1064, column: 5, scope: !4315)
!4583 = !DILocation(line: 1064, column: 12, scope: !4315)
!4584 = !DILocation(line: 1065, column: 2, scope: !4315)
!4585 = !DILocation(line: 1065, column: 5, scope: !4315)
!4586 = !DILocation(line: 1065, column: 13, scope: !4315)
!4587 = !DILocation(line: 1066, column: 2, scope: !4315)
!4588 = !DILocation(line: 1066, column: 5, scope: !4315)
!4589 = !DILocation(line: 1066, column: 17, scope: !4315)
!4590 = !DILocation(line: 1067, column: 2, scope: !4315)
!4591 = !DILocation(line: 1067, column: 5, scope: !4315)
!4592 = !DILocation(line: 1067, column: 15, scope: !4315)
!4593 = !DILocation(line: 1070, column: 7, scope: !4315)
!4594 = !DILocation(line: 1070, column: 12, scope: !4315)
!4595 = !DILocation(line: 1070, column: 4, scope: !4315)
!4596 = !DILocation(line: 1071, column: 2, scope: !4315)
!4597 = !DILocation(line: 1071, column: 5, scope: !4315)
!4598 = !DILocation(line: 1071, column: 11, scope: !4315)
!4599 = !DILocation(line: 1072, column: 2, scope: !4315)
!4600 = !DILocation(line: 1072, column: 5, scope: !4315)
!4601 = !DILocation(line: 1072, column: 18, scope: !4315)
!4602 = !DILocation(line: 1073, column: 2, scope: !4315)
!4603 = !DILocation(line: 1073, column: 5, scope: !4315)
!4604 = !DILocation(line: 1073, column: 12, scope: !4315)
!4605 = !DILocation(line: 1074, column: 2, scope: !4315)
!4606 = !DILocation(line: 1074, column: 5, scope: !4315)
!4607 = !DILocation(line: 1074, column: 13, scope: !4315)
!4608 = !DILocation(line: 1075, column: 2, scope: !4315)
!4609 = !DILocation(line: 1075, column: 5, scope: !4315)
!4610 = !DILocation(line: 1075, column: 17, scope: !4315)
!4611 = !DILocation(line: 1076, column: 2, scope: !4315)
!4612 = !DILocation(line: 1076, column: 5, scope: !4315)
!4613 = !DILocation(line: 1076, column: 15, scope: !4315)
!4614 = !DILocation(line: 1078, column: 2, scope: !4315)
!4615 = !DILocation(line: 1079, column: 1, scope: !4315)
!4616 = distinct !DISubprogram(name: "apci3120_dma_free", scope: !3, file: !3, line: 934, type: !3974, scopeLine: 935, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!4617 = !DILocalVariable(name: "dev", arg: 1, scope: !4616, file: !3, line: 934, type: !197)
!4618 = !DILocation(line: 934, column: 53, scope: !4616)
!4619 = !DILocalVariable(name: "devpriv", scope: !4616, file: !3, line: 936, type: !4328)
!4620 = !DILocation(line: 936, column: 27, scope: !4616)
!4621 = !DILocation(line: 936, column: 37, scope: !4616)
!4622 = !DILocation(line: 936, column: 42, scope: !4616)
!4623 = !DILocalVariable(name: "dmabuf", scope: !4616, file: !3, line: 937, type: !4624)
!4624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4339, size: 64)
!4625 = !DILocation(line: 937, column: 26, scope: !4616)
!4626 = !DILocalVariable(name: "i", scope: !4616, file: !3, line: 938, type: !148)
!4627 = !DILocation(line: 938, column: 6, scope: !4616)
!4628 = !DILocation(line: 940, column: 7, scope: !4629)
!4629 = distinct !DILexicalBlock(scope: !4616, file: !3, line: 940, column: 6)
!4630 = !DILocation(line: 940, column: 6, scope: !4616)
!4631 = !DILocation(line: 941, column: 3, scope: !4629)
!4632 = !DILocation(line: 943, column: 9, scope: !4633)
!4633 = distinct !DILexicalBlock(scope: !4616, file: !3, line: 943, column: 2)
!4634 = !DILocation(line: 943, column: 7, scope: !4633)
!4635 = !DILocation(line: 943, column: 14, scope: !4636)
!4636 = distinct !DILexicalBlock(scope: !4633, file: !3, line: 943, column: 2)
!4637 = !DILocation(line: 943, column: 16, scope: !4636)
!4638 = !DILocation(line: 943, column: 2, scope: !4633)
!4639 = !DILocation(line: 944, column: 13, scope: !4640)
!4640 = distinct !DILexicalBlock(scope: !4636, file: !3, line: 943, column: 26)
!4641 = !DILocation(line: 944, column: 22, scope: !4640)
!4642 = !DILocation(line: 944, column: 29, scope: !4640)
!4643 = !DILocation(line: 944, column: 10, scope: !4640)
!4644 = !DILocation(line: 945, column: 7, scope: !4645)
!4645 = distinct !DILexicalBlock(scope: !4640, file: !3, line: 945, column: 7)
!4646 = !DILocation(line: 945, column: 15, scope: !4645)
!4647 = !DILocation(line: 945, column: 7, scope: !4640)
!4648 = !DILocation(line: 946, column: 22, scope: !4649)
!4649 = distinct !DILexicalBlock(scope: !4645, file: !3, line: 945, column: 21)
!4650 = !DILocation(line: 946, column: 27, scope: !4649)
!4651 = !DILocation(line: 946, column: 35, scope: !4649)
!4652 = !DILocation(line: 946, column: 43, scope: !4649)
!4653 = !DILocation(line: 947, column: 8, scope: !4649)
!4654 = !DILocation(line: 947, column: 16, scope: !4649)
!4655 = !DILocation(line: 947, column: 22, scope: !4649)
!4656 = !DILocation(line: 947, column: 30, scope: !4649)
!4657 = !DILocation(line: 946, column: 4, scope: !4649)
!4658 = !DILocation(line: 948, column: 3, scope: !4649)
!4659 = !DILocation(line: 949, column: 2, scope: !4640)
!4660 = !DILocation(line: 943, column: 22, scope: !4636)
!4661 = !DILocation(line: 943, column: 2, scope: !4636)
!4662 = distinct !{!4662, !4638, !4663}
!4663 = !DILocation(line: 949, column: 2, scope: !4633)
!4664 = !DILocation(line: 950, column: 1, scope: !4616)
!4665 = distinct !DISubprogram(name: "dma_free_coherent", scope: !4666, file: !4666, line: 400, type: !4667, scopeLine: 402, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!4666 = !DIFile(filename: "./include/linux/dma-mapping.h", directory: "/home/lizy2001/genbc/linux")
!4667 = !DISubroutineType(types: !4668)
!4668 = !{null, !208, !318, !206, !917}
!4669 = !DILocalVariable(name: "dev", arg: 1, scope: !4665, file: !4666, line: 400, type: !208)
!4670 = !DILocation(line: 400, column: 53, scope: !4665)
!4671 = !DILocalVariable(name: "size", arg: 2, scope: !4665, file: !4666, line: 400, type: !318)
!4672 = !DILocation(line: 400, column: 65, scope: !4665)
!4673 = !DILocalVariable(name: "cpu_addr", arg: 3, scope: !4665, file: !4666, line: 401, type: !206)
!4674 = !DILocation(line: 401, column: 9, scope: !4665)
!4675 = !DILocalVariable(name: "dma_handle", arg: 4, scope: !4665, file: !4666, line: 401, type: !917)
!4676 = !DILocation(line: 401, column: 30, scope: !4665)
!4677 = !DILocation(line: 403, column: 24, scope: !4665)
!4678 = !DILocation(line: 403, column: 29, scope: !4665)
!4679 = !DILocation(line: 403, column: 35, scope: !4665)
!4680 = !DILocation(line: 403, column: 45, scope: !4665)
!4681 = !DILocation(line: 403, column: 9, scope: !4665)
!4682 = !DILocation(line: 403, column: 2, scope: !4665)
!4683 = distinct !DISubprogram(name: "apci3120_reset", scope: !3, file: !3, line: 952, type: !3974, scopeLine: 953, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!4684 = !DILocalVariable(name: "dev", arg: 1, scope: !4683, file: !3, line: 952, type: !197)
!4685 = !DILocation(line: 952, column: 50, scope: !4683)
!4686 = !DILocation(line: 955, column: 10, scope: !4683)
!4687 = !DILocation(line: 955, column: 15, scope: !4683)
!4688 = !DILocation(line: 955, column: 22, scope: !4683)
!4689 = !DILocation(line: 955, column: 2, scope: !4683)
!4690 = !DILocation(line: 958, column: 10, scope: !4683)
!4691 = !DILocation(line: 958, column: 15, scope: !4683)
!4692 = !DILocation(line: 958, column: 22, scope: !4683)
!4693 = !DILocation(line: 958, column: 2, scope: !4683)
!4694 = !DILocation(line: 961, column: 6, scope: !4683)
!4695 = !DILocation(line: 961, column: 11, scope: !4683)
!4696 = !DILocation(line: 961, column: 18, scope: !4683)
!4697 = !DILocation(line: 961, column: 2, scope: !4683)
!4698 = !DILocation(line: 962, column: 1, scope: !4683)
!4699 = distinct !DISubprogram(name: "request_irq", scope: !4097, file: !4097, line: 157, type: !4700, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!4700 = !DISubroutineType(types: !4701)
!4701 = !{!148, !7, !4702, !321, !188, !206}
!4702 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !4097, line: 92, baseType: !4703)
!4703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4704, size: 64)
!4704 = !DISubroutineType(types: !4705)
!4705 = !{!4706, !148, !206}
!4706 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !121, line: 17, baseType: !120)
!4707 = !DILocalVariable(name: "irq", arg: 1, scope: !4699, file: !4097, line: 157, type: !7)
!4708 = !DILocation(line: 157, column: 26, scope: !4699)
!4709 = !DILocalVariable(name: "handler", arg: 2, scope: !4699, file: !4097, line: 157, type: !4702)
!4710 = !DILocation(line: 157, column: 45, scope: !4699)
!4711 = !DILocalVariable(name: "flags", arg: 3, scope: !4699, file: !4097, line: 157, type: !321)
!4712 = !DILocation(line: 157, column: 68, scope: !4699)
!4713 = !DILocalVariable(name: "name", arg: 4, scope: !4699, file: !4097, line: 158, type: !188)
!4714 = !DILocation(line: 158, column: 18, scope: !4699)
!4715 = !DILocalVariable(name: "dev", arg: 5, scope: !4699, file: !4097, line: 158, type: !206)
!4716 = !DILocation(line: 158, column: 30, scope: !4699)
!4717 = !DILocation(line: 160, column: 30, scope: !4699)
!4718 = !DILocation(line: 160, column: 35, scope: !4699)
!4719 = !DILocation(line: 160, column: 50, scope: !4699)
!4720 = !DILocation(line: 160, column: 57, scope: !4699)
!4721 = !DILocation(line: 160, column: 63, scope: !4699)
!4722 = !DILocation(line: 160, column: 9, scope: !4699)
!4723 = !DILocation(line: 160, column: 2, scope: !4699)
!4724 = distinct !DISubprogram(name: "apci3120_interrupt", scope: !3, file: !3, line: 469, type: !4704, scopeLine: 470, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!4725 = !DILocalVariable(name: "irq", arg: 1, scope: !4724, file: !3, line: 469, type: !148)
!4726 = !DILocation(line: 469, column: 43, scope: !4724)
!4727 = !DILocalVariable(name: "d", arg: 2, scope: !4724, file: !3, line: 469, type: !206)
!4728 = !DILocation(line: 469, column: 54, scope: !4724)
!4729 = !DILocalVariable(name: "dev", scope: !4724, file: !3, line: 471, type: !197)
!4730 = !DILocation(line: 471, column: 24, scope: !4724)
!4731 = !DILocation(line: 471, column: 30, scope: !4724)
!4732 = !DILocalVariable(name: "devpriv", scope: !4724, file: !3, line: 472, type: !4328)
!4733 = !DILocation(line: 472, column: 27, scope: !4724)
!4734 = !DILocation(line: 472, column: 37, scope: !4724)
!4735 = !DILocation(line: 472, column: 42, scope: !4724)
!4736 = !DILocalVariable(name: "s", scope: !4724, file: !3, line: 473, type: !3828)
!4737 = !DILocation(line: 473, column: 27, scope: !4724)
!4738 = !DILocation(line: 473, column: 31, scope: !4724)
!4739 = !DILocation(line: 473, column: 36, scope: !4724)
!4740 = !DILocalVariable(name: "async", scope: !4724, file: !3, line: 474, type: !3839)
!4741 = !DILocation(line: 474, column: 23, scope: !4724)
!4742 = !DILocation(line: 474, column: 31, scope: !4724)
!4743 = !DILocation(line: 474, column: 34, scope: !4724)
!4744 = !DILocalVariable(name: "cmd", scope: !4724, file: !3, line: 475, type: !3948)
!4745 = !DILocation(line: 475, column: 21, scope: !4724)
!4746 = !DILocation(line: 475, column: 28, scope: !4724)
!4747 = !DILocation(line: 475, column: 35, scope: !4724)
!4748 = !DILocalVariable(name: "status", scope: !4724, file: !3, line: 476, type: !7)
!4749 = !DILocation(line: 476, column: 15, scope: !4724)
!4750 = !DILocalVariable(name: "int_amcc", scope: !4724, file: !3, line: 477, type: !7)
!4751 = !DILocation(line: 477, column: 15, scope: !4724)
!4752 = !DILocation(line: 479, column: 15, scope: !4724)
!4753 = !DILocation(line: 479, column: 20, scope: !4724)
!4754 = !DILocation(line: 479, column: 27, scope: !4724)
!4755 = !DILocation(line: 479, column: 11, scope: !4724)
!4756 = !DILocation(line: 479, column: 9, scope: !4724)
!4757 = !DILocation(line: 480, column: 17, scope: !4724)
!4758 = !DILocation(line: 480, column: 26, scope: !4724)
!4759 = !DILocation(line: 480, column: 31, scope: !4724)
!4760 = !DILocation(line: 480, column: 13, scope: !4724)
!4761 = !DILocation(line: 480, column: 11, scope: !4724)
!4762 = !DILocation(line: 482, column: 8, scope: !4763)
!4763 = distinct !DILexicalBlock(scope: !4724, file: !3, line: 482, column: 6)
!4764 = !DILocation(line: 482, column: 15, scope: !4763)
!4765 = !DILocation(line: 482, column: 43, scope: !4763)
!4766 = !DILocation(line: 483, column: 8, scope: !4763)
!4767 = !DILocation(line: 483, column: 17, scope: !4763)
!4768 = !DILocation(line: 482, column: 6, scope: !4724)
!4769 = !DILocation(line: 484, column: 3, scope: !4770)
!4770 = distinct !DILexicalBlock(scope: !4763, file: !3, line: 483, column: 35)
!4771 = !DILocation(line: 485, column: 3, scope: !4770)
!4772 = !DILocation(line: 488, column: 7, scope: !4724)
!4773 = !DILocation(line: 488, column: 16, scope: !4724)
!4774 = !DILocation(line: 488, column: 33, scope: !4724)
!4775 = !DILocation(line: 488, column: 42, scope: !4724)
!4776 = !DILocation(line: 488, column: 47, scope: !4724)
!4777 = !DILocation(line: 488, column: 2, scope: !4724)
!4778 = !DILocation(line: 490, column: 6, scope: !4779)
!4779 = distinct !DILexicalBlock(scope: !4724, file: !3, line: 490, column: 6)
!4780 = !DILocation(line: 490, column: 15, scope: !4779)
!4781 = !DILocation(line: 490, column: 20, scope: !4779)
!4782 = !DILocation(line: 490, column: 6, scope: !4724)
!4783 = !DILocation(line: 491, column: 27, scope: !4779)
!4784 = !DILocation(line: 491, column: 3, scope: !4779)
!4785 = !DILocation(line: 493, column: 6, scope: !4786)
!4786 = distinct !DILexicalBlock(scope: !4724, file: !3, line: 493, column: 6)
!4787 = !DILocation(line: 493, column: 15, scope: !4786)
!4788 = !DILocation(line: 493, column: 6, scope: !4724)
!4789 = !DILocation(line: 494, column: 3, scope: !4786)
!4790 = !DILocation(line: 495, column: 6, scope: !4791)
!4791 = distinct !DILexicalBlock(scope: !4724, file: !3, line: 495, column: 6)
!4792 = !DILocation(line: 495, column: 15, scope: !4791)
!4793 = !DILocation(line: 495, column: 6, scope: !4724)
!4794 = !DILocation(line: 496, column: 3, scope: !4791)
!4795 = !DILocation(line: 498, column: 7, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4724, file: !3, line: 498, column: 6)
!4797 = !DILocation(line: 498, column: 14, scope: !4796)
!4798 = !DILocation(line: 498, column: 41, scope: !4796)
!4799 = !DILocation(line: 499, column: 7, scope: !4796)
!4800 = !DILocation(line: 499, column: 16, scope: !4796)
!4801 = !DILocation(line: 499, column: 21, scope: !4796)
!4802 = !DILocation(line: 498, column: 6, scope: !4724)
!4803 = !DILocalVariable(name: "val", scope: !4804, file: !3, line: 500, type: !313)
!4804 = distinct !DILexicalBlock(scope: !4796, file: !3, line: 499, column: 51)
!4805 = !DILocation(line: 500, column: 18, scope: !4804)
!4806 = !DILocalVariable(name: "i", scope: !4804, file: !3, line: 501, type: !148)
!4807 = !DILocation(line: 501, column: 7, scope: !4804)
!4808 = !DILocation(line: 503, column: 10, scope: !4809)
!4809 = distinct !DILexicalBlock(scope: !4804, file: !3, line: 503, column: 3)
!4810 = !DILocation(line: 503, column: 8, scope: !4809)
!4811 = !DILocation(line: 503, column: 15, scope: !4812)
!4812 = distinct !DILexicalBlock(scope: !4809, file: !3, line: 503, column: 3)
!4813 = !DILocation(line: 503, column: 19, scope: !4812)
!4814 = !DILocation(line: 503, column: 24, scope: !4812)
!4815 = !DILocation(line: 503, column: 17, scope: !4812)
!4816 = !DILocation(line: 503, column: 3, scope: !4809)
!4817 = !DILocation(line: 504, column: 14, scope: !4818)
!4818 = distinct !DILexicalBlock(scope: !4812, file: !3, line: 503, column: 43)
!4819 = !DILocation(line: 504, column: 19, scope: !4818)
!4820 = !DILocation(line: 504, column: 26, scope: !4818)
!4821 = !DILocation(line: 504, column: 10, scope: !4818)
!4822 = !DILocation(line: 504, column: 8, scope: !4818)
!4823 = !DILocation(line: 505, column: 29, scope: !4818)
!4824 = !DILocation(line: 505, column: 32, scope: !4818)
!4825 = !DILocation(line: 505, column: 4, scope: !4818)
!4826 = !DILocation(line: 506, column: 3, scope: !4818)
!4827 = !DILocation(line: 503, column: 39, scope: !4812)
!4828 = !DILocation(line: 503, column: 3, scope: !4812)
!4829 = distinct !{!4829, !4816, !4830}
!4830 = !DILocation(line: 506, column: 3, scope: !4809)
!4831 = !DILocation(line: 508, column: 3, scope: !4804)
!4832 = !DILocation(line: 508, column: 12, scope: !4804)
!4833 = !DILocation(line: 508, column: 17, scope: !4804)
!4834 = !DILocation(line: 509, column: 8, scope: !4804)
!4835 = !DILocation(line: 509, column: 17, scope: !4804)
!4836 = !DILocation(line: 509, column: 23, scope: !4804)
!4837 = !DILocation(line: 509, column: 28, scope: !4804)
!4838 = !DILocation(line: 509, column: 35, scope: !4804)
!4839 = !DILocation(line: 509, column: 3, scope: !4804)
!4840 = !DILocation(line: 510, column: 2, scope: !4804)
!4841 = !DILocation(line: 512, column: 6, scope: !4842)
!4842 = distinct !DILexicalBlock(scope: !4724, file: !3, line: 512, column: 6)
!4843 = !DILocation(line: 512, column: 13, scope: !4842)
!4844 = !DILocation(line: 512, column: 6, scope: !4724)
!4845 = !DILocation(line: 517, column: 33, scope: !4846)
!4846 = distinct !DILexicalBlock(scope: !4842, file: !3, line: 512, column: 43)
!4847 = !DILocation(line: 517, column: 3, scope: !4846)
!4848 = !DILocation(line: 518, column: 2, scope: !4846)
!4849 = !DILocation(line: 520, column: 6, scope: !4850)
!4850 = distinct !DILexicalBlock(scope: !4724, file: !3, line: 520, column: 6)
!4851 = !DILocation(line: 520, column: 13, scope: !4850)
!4852 = !DILocation(line: 520, column: 6, scope: !4724)
!4853 = !DILocation(line: 522, column: 26, scope: !4854)
!4854 = distinct !DILexicalBlock(scope: !4850, file: !3, line: 520, column: 41)
!4855 = !DILocation(line: 522, column: 35, scope: !4854)
!4856 = !DILocation(line: 522, column: 40, scope: !4854)
!4857 = !DILocation(line: 522, column: 3, scope: !4854)
!4858 = !DILocation(line: 525, column: 26, scope: !4854)
!4859 = !DILocation(line: 525, column: 31, scope: !4854)
!4860 = !DILocation(line: 525, column: 3, scope: !4854)
!4861 = !DILocation(line: 526, column: 2, scope: !4854)
!4862 = !DILocation(line: 528, column: 6, scope: !4863)
!4863 = distinct !DILexicalBlock(scope: !4724, file: !3, line: 528, column: 6)
!4864 = !DILocation(line: 528, column: 11, scope: !4863)
!4865 = !DILocation(line: 528, column: 20, scope: !4863)
!4866 = !DILocation(line: 528, column: 34, scope: !4863)
!4867 = !DILocation(line: 528, column: 37, scope: !4863)
!4868 = !DILocation(line: 528, column: 44, scope: !4863)
!4869 = !DILocation(line: 528, column: 58, scope: !4863)
!4870 = !DILocation(line: 528, column: 63, scope: !4863)
!4871 = !DILocation(line: 528, column: 55, scope: !4863)
!4872 = !DILocation(line: 528, column: 6, scope: !4724)
!4873 = !DILocation(line: 529, column: 3, scope: !4863)
!4874 = !DILocation(line: 529, column: 10, scope: !4863)
!4875 = !DILocation(line: 529, column: 17, scope: !4863)
!4876 = !DILocation(line: 531, column: 23, scope: !4724)
!4877 = !DILocation(line: 531, column: 28, scope: !4724)
!4878 = !DILocation(line: 531, column: 2, scope: !4724)
!4879 = !DILocation(line: 533, column: 2, scope: !4724)
!4880 = !DILocation(line: 534, column: 1, scope: !4724)
!4881 = distinct !DISubprogram(name: "apci3120_dma_alloc", scope: !3, file: !3, line: 906, type: !3974, scopeLine: 907, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!4882 = !DILocalVariable(name: "dev", arg: 1, scope: !4881, file: !3, line: 906, type: !197)
!4883 = !DILocation(line: 906, column: 54, scope: !4881)
!4884 = !DILocalVariable(name: "devpriv", scope: !4881, file: !3, line: 908, type: !4328)
!4885 = !DILocation(line: 908, column: 27, scope: !4881)
!4886 = !DILocation(line: 908, column: 37, scope: !4881)
!4887 = !DILocation(line: 908, column: 42, scope: !4881)
!4888 = !DILocalVariable(name: "dmabuf", scope: !4881, file: !3, line: 909, type: !4624)
!4889 = !DILocation(line: 909, column: 26, scope: !4881)
!4890 = !DILocalVariable(name: "order", scope: !4881, file: !3, line: 910, type: !148)
!4891 = !DILocation(line: 910, column: 6, scope: !4881)
!4892 = !DILocalVariable(name: "i", scope: !4881, file: !3, line: 911, type: !148)
!4893 = !DILocation(line: 911, column: 6, scope: !4881)
!4894 = !DILocation(line: 913, column: 9, scope: !4895)
!4895 = distinct !DILexicalBlock(scope: !4881, file: !3, line: 913, column: 2)
!4896 = !DILocation(line: 913, column: 7, scope: !4895)
!4897 = !DILocation(line: 913, column: 14, scope: !4898)
!4898 = distinct !DILexicalBlock(scope: !4895, file: !3, line: 913, column: 2)
!4899 = !DILocation(line: 913, column: 16, scope: !4898)
!4900 = !DILocation(line: 913, column: 2, scope: !4895)
!4901 = !DILocation(line: 914, column: 13, scope: !4902)
!4902 = distinct !DILexicalBlock(scope: !4898, file: !3, line: 913, column: 26)
!4903 = !DILocation(line: 914, column: 22, scope: !4902)
!4904 = !DILocation(line: 914, column: 29, scope: !4902)
!4905 = !DILocation(line: 914, column: 10, scope: !4902)
!4906 = !DILocation(line: 915, column: 14, scope: !4907)
!4907 = distinct !DILexicalBlock(scope: !4902, file: !3, line: 915, column: 3)
!4908 = !DILocation(line: 915, column: 8, scope: !4907)
!4909 = !DILocation(line: 915, column: 19, scope: !4910)
!4910 = distinct !DILexicalBlock(scope: !4907, file: !3, line: 915, column: 3)
!4911 = !DILocation(line: 915, column: 25, scope: !4910)
!4912 = !DILocation(line: 915, column: 3, scope: !4907)
!4913 = !DILocation(line: 916, column: 38, scope: !4914)
!4914 = distinct !DILexicalBlock(scope: !4910, file: !3, line: 915, column: 40)
!4915 = !DILocation(line: 916, column: 43, scope: !4914)
!4916 = !DILocation(line: 917, column: 23, scope: !4914)
!4917 = !DILocation(line: 917, column: 20, scope: !4914)
!4918 = !DILocation(line: 918, column: 11, scope: !4914)
!4919 = !DILocation(line: 918, column: 19, scope: !4914)
!4920 = !DILocation(line: 916, column: 19, scope: !4914)
!4921 = !DILocation(line: 916, column: 4, scope: !4914)
!4922 = !DILocation(line: 916, column: 12, scope: !4914)
!4923 = !DILocation(line: 916, column: 17, scope: !4914)
!4924 = !DILocation(line: 920, column: 8, scope: !4925)
!4925 = distinct !DILexicalBlock(scope: !4914, file: !3, line: 920, column: 8)
!4926 = !DILocation(line: 920, column: 16, scope: !4925)
!4927 = !DILocation(line: 920, column: 8, scope: !4914)
!4928 = !DILocation(line: 921, column: 5, scope: !4925)
!4929 = !DILocation(line: 922, column: 3, scope: !4914)
!4930 = !DILocation(line: 915, column: 36, scope: !4910)
!4931 = !DILocation(line: 915, column: 3, scope: !4910)
!4932 = distinct !{!4932, !4912, !4933}
!4933 = !DILocation(line: 922, column: 3, scope: !4907)
!4934 = !DILocation(line: 923, column: 8, scope: !4935)
!4935 = distinct !DILexicalBlock(scope: !4902, file: !3, line: 923, column: 7)
!4936 = !DILocation(line: 923, column: 16, scope: !4935)
!4937 = !DILocation(line: 923, column: 7, scope: !4902)
!4938 = !DILocation(line: 924, column: 4, scope: !4935)
!4939 = !DILocation(line: 925, column: 31, scope: !4902)
!4940 = !DILocation(line: 925, column: 28, scope: !4902)
!4941 = !DILocation(line: 925, column: 18, scope: !4902)
!4942 = !DILocation(line: 925, column: 3, scope: !4902)
!4943 = !DILocation(line: 925, column: 11, scope: !4902)
!4944 = !DILocation(line: 925, column: 16, scope: !4902)
!4945 = !DILocation(line: 927, column: 7, scope: !4946)
!4946 = distinct !DILexicalBlock(scope: !4902, file: !3, line: 927, column: 7)
!4947 = !DILocation(line: 927, column: 9, scope: !4946)
!4948 = !DILocation(line: 927, column: 7, scope: !4902)
!4949 = !DILocation(line: 928, column: 4, scope: !4946)
!4950 = !DILocation(line: 928, column: 13, scope: !4946)
!4951 = !DILocation(line: 928, column: 21, scope: !4946)
!4952 = !DILocation(line: 929, column: 7, scope: !4953)
!4953 = distinct !DILexicalBlock(scope: !4902, file: !3, line: 929, column: 7)
!4954 = !DILocation(line: 929, column: 9, scope: !4953)
!4955 = !DILocation(line: 929, column: 7, scope: !4902)
!4956 = !DILocation(line: 930, column: 4, scope: !4953)
!4957 = !DILocation(line: 930, column: 13, scope: !4953)
!4958 = !DILocation(line: 930, column: 31, scope: !4953)
!4959 = !DILocation(line: 931, column: 2, scope: !4902)
!4960 = !DILocation(line: 913, column: 22, scope: !4898)
!4961 = !DILocation(line: 913, column: 2, scope: !4898)
!4962 = distinct !{!4962, !4900, !4963}
!4963 = !DILocation(line: 931, column: 2, scope: !4895)
!4964 = !DILocation(line: 932, column: 1, scope: !4881)
!4965 = distinct !DISubprogram(name: "inw", scope: !4966, file: !4966, line: 335, type: !4967, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!4966 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!4967 = !DISubroutineType(types: !4968)
!4968 = !{!313, !148}
!4969 = !DILocalVariable(name: "port", arg: 1, scope: !4965, file: !4966, line: 335, type: !148)
!4970 = !DILocation(line: 335, column: 1, scope: !4965)
!4971 = !DILocalVariable(name: "value", scope: !4965, file: !4966, line: 335, type: !313)
!4972 = !{i32 -2143389061}
!4973 = distinct !DISubprogram(name: "apci3120_ai_insn_read", scope: !3, file: !3, line: 703, type: !3925, scopeLine: 707, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!4974 = !DILocalVariable(name: "dev", arg: 1, scope: !4973, file: !3, line: 703, type: !197)
!4975 = !DILocation(line: 703, column: 56, scope: !4973)
!4976 = !DILocalVariable(name: "s", arg: 2, scope: !4973, file: !3, line: 704, type: !3828)
!4977 = !DILocation(line: 704, column: 31, scope: !4973)
!4978 = !DILocalVariable(name: "insn", arg: 3, scope: !4973, file: !3, line: 705, type: !3927)
!4979 = !DILocation(line: 705, column: 26, scope: !4973)
!4980 = !DILocalVariable(name: "data", arg: 4, scope: !4973, file: !3, line: 706, type: !2680)
!4981 = !DILocation(line: 706, column: 20, scope: !4973)
!4982 = !DILocalVariable(name: "devpriv", scope: !4973, file: !3, line: 708, type: !4328)
!4983 = !DILocation(line: 708, column: 27, scope: !4973)
!4984 = !DILocation(line: 708, column: 37, scope: !4973)
!4985 = !DILocation(line: 708, column: 42, scope: !4973)
!4986 = !DILocalVariable(name: "divisor", scope: !4973, file: !3, line: 709, type: !7)
!4987 = !DILocation(line: 709, column: 15, scope: !4973)
!4988 = !DILocalVariable(name: "ret", scope: !4973, file: !3, line: 710, type: !148)
!4989 = !DILocation(line: 710, column: 6, scope: !4973)
!4990 = !DILocalVariable(name: "i", scope: !4973, file: !3, line: 711, type: !148)
!4991 = !DILocation(line: 711, column: 6, scope: !4973)
!4992 = !DILocation(line: 714, column: 2, scope: !4973)
!4993 = !DILocation(line: 714, column: 11, scope: !4973)
!4994 = !DILocation(line: 714, column: 16, scope: !4973)
!4995 = !DILocation(line: 716, column: 7, scope: !4973)
!4996 = !DILocation(line: 716, column: 16, scope: !4973)
!4997 = !DILocation(line: 716, column: 22, scope: !4973)
!4998 = !DILocation(line: 716, column: 27, scope: !4973)
!4999 = !DILocation(line: 716, column: 34, scope: !4973)
!5000 = !DILocation(line: 716, column: 2, scope: !4973)
!5001 = !DILocation(line: 719, column: 24, scope: !4973)
!5002 = !DILocation(line: 719, column: 29, scope: !4973)
!5003 = !DILocation(line: 719, column: 36, scope: !4973)
!5004 = !DILocation(line: 719, column: 42, scope: !4973)
!5005 = !DILocation(line: 719, column: 2, scope: !4973)
!5006 = !DILocation(line: 727, column: 26, scope: !4973)
!5007 = !DILocation(line: 727, column: 2, scope: !4973)
!5008 = !DILocation(line: 728, column: 24, scope: !4973)
!5009 = !DILocation(line: 728, column: 2, scope: !4973)
!5010 = !DILocation(line: 731, column: 33, scope: !4973)
!5011 = !DILocation(line: 731, column: 12, scope: !4973)
!5012 = !DILocation(line: 731, column: 10, scope: !4973)
!5013 = !DILocation(line: 733, column: 9, scope: !5014)
!5014 = distinct !DILexicalBlock(scope: !4973, file: !3, line: 733, column: 2)
!5015 = !DILocation(line: 733, column: 7, scope: !5014)
!5016 = !DILocation(line: 733, column: 14, scope: !5017)
!5017 = distinct !DILexicalBlock(scope: !5014, file: !3, line: 733, column: 2)
!5018 = !DILocation(line: 733, column: 18, scope: !5017)
!5019 = !DILocation(line: 733, column: 24, scope: !5017)
!5020 = !DILocation(line: 733, column: 16, scope: !5017)
!5021 = !DILocation(line: 733, column: 2, scope: !5014)
!5022 = !DILocation(line: 735, column: 24, scope: !5023)
!5023 = distinct !DILexicalBlock(scope: !5017, file: !3, line: 733, column: 32)
!5024 = !DILocation(line: 735, column: 32, scope: !5023)
!5025 = !DILocation(line: 735, column: 3, scope: !5023)
!5026 = !DILocation(line: 737, column: 24, scope: !5023)
!5027 = !DILocation(line: 737, column: 29, scope: !5023)
!5028 = !DILocation(line: 737, column: 32, scope: !5023)
!5029 = !DILocation(line: 737, column: 9, scope: !5023)
!5030 = !DILocation(line: 737, column: 7, scope: !5023)
!5031 = !DILocation(line: 738, column: 7, scope: !5032)
!5032 = distinct !DILexicalBlock(scope: !5023, file: !3, line: 738, column: 7)
!5033 = !DILocation(line: 738, column: 7, scope: !5023)
!5034 = !DILocation(line: 739, column: 11, scope: !5032)
!5035 = !DILocation(line: 739, column: 4, scope: !5032)
!5036 = !DILocation(line: 741, column: 17, scope: !5023)
!5037 = !DILocation(line: 741, column: 22, scope: !5023)
!5038 = !DILocation(line: 741, column: 29, scope: !5023)
!5039 = !DILocation(line: 741, column: 13, scope: !5023)
!5040 = !DILocation(line: 741, column: 3, scope: !5023)
!5041 = !DILocation(line: 741, column: 8, scope: !5023)
!5042 = !DILocation(line: 741, column: 11, scope: !5023)
!5043 = !DILocation(line: 742, column: 2, scope: !5023)
!5044 = !DILocation(line: 733, column: 28, scope: !5017)
!5045 = !DILocation(line: 733, column: 2, scope: !5017)
!5046 = distinct !{!5046, !5021, !5047}
!5047 = !DILocation(line: 742, column: 2, scope: !5014)
!5048 = !DILocation(line: 744, column: 9, scope: !4973)
!5049 = !DILocation(line: 744, column: 15, scope: !4973)
!5050 = !DILocation(line: 744, column: 2, scope: !4973)
!5051 = !DILocation(line: 745, column: 1, scope: !4973)
!5052 = distinct !DISubprogram(name: "apci3120_ai_cmdtest", scope: !3, file: !3, line: 592, type: !3946, scopeLine: 595, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!5053 = !DILocalVariable(name: "dev", arg: 1, scope: !5052, file: !3, line: 592, type: !197)
!5054 = !DILocation(line: 592, column: 54, scope: !5052)
!5055 = !DILocalVariable(name: "s", arg: 2, scope: !5052, file: !3, line: 593, type: !3828)
!5056 = !DILocation(line: 593, column: 36, scope: !5052)
!5057 = !DILocalVariable(name: "cmd", arg: 3, scope: !5052, file: !3, line: 594, type: !3948)
!5058 = !DILocation(line: 594, column: 30, scope: !5052)
!5059 = !DILocalVariable(name: "arg", scope: !5052, file: !3, line: 596, type: !7)
!5060 = !DILocation(line: 596, column: 15, scope: !5052)
!5061 = !DILocalVariable(name: "err", scope: !5052, file: !3, line: 597, type: !148)
!5062 = !DILocation(line: 597, column: 6, scope: !5052)
!5063 = !DILocation(line: 601, column: 35, scope: !5052)
!5064 = !DILocation(line: 601, column: 40, scope: !5052)
!5065 = !DILocation(line: 601, column: 9, scope: !5052)
!5066 = !DILocation(line: 601, column: 6, scope: !5052)
!5067 = !DILocation(line: 602, column: 35, scope: !5052)
!5068 = !DILocation(line: 602, column: 40, scope: !5052)
!5069 = !DILocation(line: 602, column: 9, scope: !5052)
!5070 = !DILocation(line: 602, column: 6, scope: !5052)
!5071 = !DILocation(line: 604, column: 35, scope: !5052)
!5072 = !DILocation(line: 604, column: 40, scope: !5052)
!5073 = !DILocation(line: 604, column: 9, scope: !5052)
!5074 = !DILocation(line: 604, column: 6, scope: !5052)
!5075 = !DILocation(line: 605, column: 35, scope: !5052)
!5076 = !DILocation(line: 605, column: 40, scope: !5052)
!5077 = !DILocation(line: 605, column: 9, scope: !5052)
!5078 = !DILocation(line: 605, column: 6, scope: !5052)
!5079 = !DILocation(line: 606, column: 35, scope: !5052)
!5080 = !DILocation(line: 606, column: 40, scope: !5052)
!5081 = !DILocation(line: 606, column: 9, scope: !5052)
!5082 = !DILocation(line: 606, column: 6, scope: !5052)
!5083 = !DILocation(line: 608, column: 6, scope: !5084)
!5084 = distinct !DILexicalBlock(scope: !5052, file: !3, line: 608, column: 6)
!5085 = !DILocation(line: 608, column: 6, scope: !5052)
!5086 = !DILocation(line: 609, column: 3, scope: !5084)
!5087 = !DILocation(line: 613, column: 40, scope: !5052)
!5088 = !DILocation(line: 613, column: 45, scope: !5052)
!5089 = !DILocation(line: 613, column: 9, scope: !5052)
!5090 = !DILocation(line: 613, column: 6, scope: !5052)
!5091 = !DILocation(line: 614, column: 40, scope: !5052)
!5092 = !DILocation(line: 614, column: 45, scope: !5052)
!5093 = !DILocation(line: 614, column: 9, scope: !5052)
!5094 = !DILocation(line: 614, column: 6, scope: !5052)
!5095 = !DILocation(line: 615, column: 40, scope: !5052)
!5096 = !DILocation(line: 615, column: 45, scope: !5052)
!5097 = !DILocation(line: 615, column: 9, scope: !5052)
!5098 = !DILocation(line: 615, column: 6, scope: !5052)
!5099 = !DILocation(line: 619, column: 6, scope: !5100)
!5100 = distinct !DILexicalBlock(scope: !5052, file: !3, line: 619, column: 6)
!5101 = !DILocation(line: 619, column: 6, scope: !5052)
!5102 = !DILocation(line: 620, column: 3, scope: !5100)
!5103 = !DILocation(line: 624, column: 38, scope: !5052)
!5104 = !DILocation(line: 624, column: 43, scope: !5052)
!5105 = !DILocation(line: 624, column: 9, scope: !5052)
!5106 = !DILocation(line: 624, column: 6, scope: !5052)
!5107 = !DILocation(line: 626, column: 6, scope: !5108)
!5108 = distinct !DILexicalBlock(scope: !5052, file: !3, line: 626, column: 6)
!5109 = !DILocation(line: 626, column: 11, scope: !5108)
!5110 = !DILocation(line: 626, column: 26, scope: !5108)
!5111 = !DILocation(line: 626, column: 6, scope: !5052)
!5112 = !DILocation(line: 627, column: 40, scope: !5113)
!5113 = distinct !DILexicalBlock(scope: !5108, file: !3, line: 626, column: 41)
!5114 = !DILocation(line: 627, column: 45, scope: !5113)
!5115 = !DILocation(line: 627, column: 10, scope: !5113)
!5116 = !DILocation(line: 627, column: 7, scope: !5113)
!5117 = !DILocation(line: 629, column: 2, scope: !5113)
!5118 = !DILocation(line: 632, column: 39, scope: !5052)
!5119 = !DILocation(line: 632, column: 44, scope: !5052)
!5120 = !DILocation(line: 632, column: 9, scope: !5052)
!5121 = !DILocation(line: 632, column: 6, scope: !5052)
!5122 = !DILocation(line: 634, column: 39, scope: !5052)
!5123 = !DILocation(line: 634, column: 44, scope: !5052)
!5124 = !DILocation(line: 634, column: 9, scope: !5052)
!5125 = !DILocation(line: 634, column: 6, scope: !5052)
!5126 = !DILocation(line: 635, column: 38, scope: !5052)
!5127 = !DILocation(line: 635, column: 43, scope: !5052)
!5128 = !DILocation(line: 636, column: 9, scope: !5052)
!5129 = !DILocation(line: 636, column: 14, scope: !5052)
!5130 = !DILocation(line: 635, column: 9, scope: !5052)
!5131 = !DILocation(line: 635, column: 6, scope: !5052)
!5132 = !DILocation(line: 638, column: 6, scope: !5133)
!5133 = distinct !DILexicalBlock(scope: !5052, file: !3, line: 638, column: 6)
!5134 = !DILocation(line: 638, column: 11, scope: !5133)
!5135 = !DILocation(line: 638, column: 20, scope: !5133)
!5136 = !DILocation(line: 638, column: 6, scope: !5052)
!5137 = !DILocation(line: 639, column: 40, scope: !5133)
!5138 = !DILocation(line: 639, column: 45, scope: !5133)
!5139 = !DILocation(line: 639, column: 10, scope: !5133)
!5140 = !DILocation(line: 639, column: 7, scope: !5133)
!5141 = !DILocation(line: 639, column: 3, scope: !5133)
!5142 = !DILocation(line: 641, column: 39, scope: !5133)
!5143 = !DILocation(line: 641, column: 44, scope: !5133)
!5144 = !DILocation(line: 641, column: 10, scope: !5133)
!5145 = !DILocation(line: 641, column: 7, scope: !5133)
!5146 = !DILocation(line: 643, column: 6, scope: !5147)
!5147 = distinct !DILexicalBlock(scope: !5052, file: !3, line: 643, column: 6)
!5148 = !DILocation(line: 643, column: 6, scope: !5052)
!5149 = !DILocation(line: 644, column: 3, scope: !5147)
!5150 = !DILocation(line: 648, column: 6, scope: !5151)
!5151 = distinct !DILexicalBlock(scope: !5052, file: !3, line: 648, column: 6)
!5152 = !DILocation(line: 648, column: 11, scope: !5151)
!5153 = !DILocation(line: 648, column: 26, scope: !5151)
!5154 = !DILocation(line: 648, column: 6, scope: !5052)
!5155 = !DILocation(line: 650, column: 9, scope: !5156)
!5156 = distinct !DILexicalBlock(scope: !5151, file: !3, line: 648, column: 41)
!5157 = !DILocation(line: 650, column: 14, scope: !5156)
!5158 = !DILocation(line: 650, column: 28, scope: !5156)
!5159 = !DILocation(line: 650, column: 33, scope: !5156)
!5160 = !DILocation(line: 650, column: 26, scope: !5156)
!5161 = !DILocation(line: 650, column: 7, scope: !5156)
!5162 = !DILocation(line: 651, column: 40, scope: !5156)
!5163 = !DILocation(line: 651, column: 45, scope: !5156)
!5164 = !DILocation(line: 651, column: 61, scope: !5156)
!5165 = !DILocation(line: 651, column: 10, scope: !5156)
!5166 = !DILocation(line: 651, column: 7, scope: !5156)
!5167 = !DILocation(line: 652, column: 2, scope: !5156)
!5168 = !DILocation(line: 654, column: 6, scope: !5169)
!5169 = distinct !DILexicalBlock(scope: !5052, file: !3, line: 654, column: 6)
!5170 = !DILocation(line: 654, column: 6, scope: !5052)
!5171 = !DILocation(line: 655, column: 3, scope: !5169)
!5172 = !DILocation(line: 659, column: 2, scope: !5052)
!5173 = !DILocation(line: 660, column: 1, scope: !5052)
!5174 = distinct !DISubprogram(name: "apci3120_ai_cmd", scope: !3, file: !3, line: 536, type: !3942, scopeLine: 538, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!5175 = !DILocalVariable(name: "dev", arg: 1, scope: !5174, file: !3, line: 536, type: !197)
!5176 = !DILocation(line: 536, column: 50, scope: !5174)
!5177 = !DILocalVariable(name: "s", arg: 2, scope: !5174, file: !3, line: 537, type: !3828)
!5178 = !DILocation(line: 537, column: 32, scope: !5174)
!5179 = !DILocalVariable(name: "devpriv", scope: !5174, file: !3, line: 539, type: !4328)
!5180 = !DILocation(line: 539, column: 27, scope: !5174)
!5181 = !DILocation(line: 539, column: 37, scope: !5174)
!5182 = !DILocation(line: 539, column: 42, scope: !5174)
!5183 = !DILocalVariable(name: "cmd", scope: !5174, file: !3, line: 540, type: !3948)
!5184 = !DILocation(line: 540, column: 21, scope: !5174)
!5185 = !DILocation(line: 540, column: 28, scope: !5174)
!5186 = !DILocation(line: 540, column: 31, scope: !5174)
!5187 = !DILocation(line: 540, column: 38, scope: !5174)
!5188 = !DILocalVariable(name: "divisor", scope: !5174, file: !3, line: 541, type: !7)
!5189 = !DILocation(line: 541, column: 15, scope: !5174)
!5190 = !DILocation(line: 544, column: 2, scope: !5174)
!5191 = !DILocation(line: 544, column: 11, scope: !5174)
!5192 = !DILocation(line: 544, column: 16, scope: !5174)
!5193 = !DILocation(line: 548, column: 25, scope: !5174)
!5194 = !DILocation(line: 548, column: 34, scope: !5174)
!5195 = !DILocation(line: 548, column: 39, scope: !5174)
!5196 = !DILocation(line: 548, column: 2, scope: !5174)
!5197 = !DILocation(line: 550, column: 2, scope: !5174)
!5198 = !DILocation(line: 550, column: 11, scope: !5174)
!5199 = !DILocation(line: 550, column: 22, scope: !5174)
!5200 = !DILocation(line: 553, column: 24, scope: !5174)
!5201 = !DILocation(line: 553, column: 29, scope: !5174)
!5202 = !DILocation(line: 553, column: 32, scope: !5174)
!5203 = !DILocation(line: 553, column: 37, scope: !5174)
!5204 = !DILocation(line: 553, column: 51, scope: !5174)
!5205 = !DILocation(line: 553, column: 56, scope: !5174)
!5206 = !DILocation(line: 553, column: 2, scope: !5174)
!5207 = !DILocation(line: 555, column: 6, scope: !5208)
!5208 = distinct !DILexicalBlock(scope: !5174, file: !3, line: 555, column: 6)
!5209 = !DILocation(line: 555, column: 11, scope: !5208)
!5210 = !DILocation(line: 555, column: 21, scope: !5208)
!5211 = !DILocation(line: 555, column: 6, scope: !5174)
!5212 = !DILocation(line: 556, column: 27, scope: !5208)
!5213 = !DILocation(line: 556, column: 3, scope: !5208)
!5214 = !DILocation(line: 558, column: 6, scope: !5215)
!5215 = distinct !DILexicalBlock(scope: !5174, file: !3, line: 558, column: 6)
!5216 = !DILocation(line: 558, column: 11, scope: !5215)
!5217 = !DILocation(line: 558, column: 26, scope: !5215)
!5218 = !DILocation(line: 558, column: 6, scope: !5174)
!5219 = !DILocation(line: 563, column: 34, scope: !5220)
!5220 = distinct !DILexicalBlock(scope: !5215, file: !3, line: 558, column: 41)
!5221 = !DILocation(line: 563, column: 42, scope: !5220)
!5222 = !DILocation(line: 563, column: 47, scope: !5220)
!5223 = !DILocation(line: 564, column: 13, scope: !5220)
!5224 = !DILocation(line: 564, column: 18, scope: !5220)
!5225 = !DILocation(line: 563, column: 13, scope: !5220)
!5226 = !DILocation(line: 563, column: 11, scope: !5220)
!5227 = !DILocation(line: 565, column: 27, scope: !5220)
!5228 = !DILocation(line: 565, column: 3, scope: !5220)
!5229 = !DILocation(line: 566, column: 24, scope: !5220)
!5230 = !DILocation(line: 566, column: 32, scope: !5220)
!5231 = !DILocation(line: 566, column: 3, scope: !5220)
!5232 = !DILocation(line: 567, column: 2, scope: !5220)
!5233 = !DILocation(line: 573, column: 33, scope: !5174)
!5234 = !DILocation(line: 573, column: 41, scope: !5174)
!5235 = !DILocation(line: 573, column: 46, scope: !5174)
!5236 = !DILocation(line: 573, column: 59, scope: !5174)
!5237 = !DILocation(line: 573, column: 64, scope: !5174)
!5238 = !DILocation(line: 573, column: 12, scope: !5174)
!5239 = !DILocation(line: 573, column: 10, scope: !5174)
!5240 = !DILocation(line: 574, column: 26, scope: !5174)
!5241 = !DILocation(line: 574, column: 2, scope: !5174)
!5242 = !DILocation(line: 575, column: 23, scope: !5174)
!5243 = !DILocation(line: 575, column: 31, scope: !5174)
!5244 = !DILocation(line: 575, column: 2, scope: !5174)
!5245 = !DILocation(line: 577, column: 6, scope: !5246)
!5246 = distinct !DILexicalBlock(scope: !5174, file: !3, line: 577, column: 6)
!5247 = !DILocation(line: 577, column: 15, scope: !5246)
!5248 = !DILocation(line: 577, column: 6, scope: !5174)
!5249 = !DILocation(line: 578, column: 22, scope: !5246)
!5250 = !DILocation(line: 578, column: 27, scope: !5246)
!5251 = !DILocation(line: 578, column: 3, scope: !5246)
!5252 = !DILocation(line: 580, column: 3, scope: !5246)
!5253 = !DILocation(line: 580, column: 12, scope: !5246)
!5254 = !DILocation(line: 580, column: 17, scope: !5246)
!5255 = !DILocation(line: 583, column: 7, scope: !5174)
!5256 = !DILocation(line: 583, column: 16, scope: !5174)
!5257 = !DILocation(line: 583, column: 22, scope: !5174)
!5258 = !DILocation(line: 583, column: 27, scope: !5174)
!5259 = !DILocation(line: 583, column: 34, scope: !5174)
!5260 = !DILocation(line: 583, column: 2, scope: !5174)
!5261 = !DILocation(line: 585, column: 6, scope: !5262)
!5262 = distinct !DILexicalBlock(scope: !5174, file: !3, line: 585, column: 6)
!5263 = !DILocation(line: 585, column: 11, scope: !5262)
!5264 = !DILocation(line: 585, column: 26, scope: !5262)
!5265 = !DILocation(line: 585, column: 6, scope: !5174)
!5266 = !DILocation(line: 586, column: 25, scope: !5262)
!5267 = !DILocation(line: 586, column: 3, scope: !5262)
!5268 = !DILocation(line: 587, column: 24, scope: !5174)
!5269 = !DILocation(line: 587, column: 2, scope: !5174)
!5270 = !DILocation(line: 589, column: 2, scope: !5174)
!5271 = distinct !DISubprogram(name: "apci3120_cancel", scope: !3, file: !3, line: 662, type: !3942, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!5272 = !DILocalVariable(name: "dev", arg: 1, scope: !5271, file: !3, line: 662, type: !197)
!5273 = !DILocation(line: 662, column: 50, scope: !5271)
!5274 = !DILocalVariable(name: "s", arg: 2, scope: !5271, file: !3, line: 663, type: !3828)
!5275 = !DILocation(line: 663, column: 32, scope: !5271)
!5276 = !DILocalVariable(name: "devpriv", scope: !5271, file: !3, line: 665, type: !4328)
!5277 = !DILocation(line: 665, column: 27, scope: !5271)
!5278 = !DILocation(line: 665, column: 37, scope: !5271)
!5279 = !DILocation(line: 665, column: 42, scope: !5271)
!5280 = !DILocation(line: 668, column: 10, scope: !5271)
!5281 = !DILocation(line: 668, column: 19, scope: !5271)
!5282 = !DILocation(line: 668, column: 25, scope: !5271)
!5283 = !DILocation(line: 668, column: 2, scope: !5271)
!5284 = !DILocation(line: 671, column: 23, scope: !5271)
!5285 = !DILocation(line: 671, column: 2, scope: !5271)
!5286 = !DILocation(line: 674, column: 10, scope: !5271)
!5287 = !DILocation(line: 674, column: 19, scope: !5271)
!5288 = !DILocation(line: 674, column: 24, scope: !5271)
!5289 = !DILocation(line: 674, column: 2, scope: !5271)
!5290 = !DILocation(line: 677, column: 2, scope: !5271)
!5291 = !DILocation(line: 677, column: 11, scope: !5271)
!5292 = !DILocation(line: 677, column: 16, scope: !5271)
!5293 = !DILocation(line: 678, column: 7, scope: !5271)
!5294 = !DILocation(line: 678, column: 16, scope: !5271)
!5295 = !DILocation(line: 678, column: 22, scope: !5271)
!5296 = !DILocation(line: 678, column: 27, scope: !5271)
!5297 = !DILocation(line: 678, column: 34, scope: !5271)
!5298 = !DILocation(line: 678, column: 2, scope: !5271)
!5299 = !DILocation(line: 681, column: 2, scope: !5271)
!5300 = !DILocation(line: 681, column: 11, scope: !5271)
!5301 = !DILocation(line: 681, column: 16, scope: !5271)
!5302 = !DILocation(line: 682, column: 7, scope: !5271)
!5303 = !DILocation(line: 682, column: 16, scope: !5271)
!5304 = !DILocation(line: 682, column: 22, scope: !5271)
!5305 = !DILocation(line: 682, column: 27, scope: !5271)
!5306 = !DILocation(line: 682, column: 34, scope: !5271)
!5307 = !DILocation(line: 682, column: 2, scope: !5271)
!5308 = !DILocation(line: 684, column: 6, scope: !5271)
!5309 = !DILocation(line: 684, column: 11, scope: !5271)
!5310 = !DILocation(line: 684, column: 18, scope: !5271)
!5311 = !DILocation(line: 684, column: 2, scope: !5271)
!5312 = !DILocation(line: 685, column: 2, scope: !5271)
!5313 = !DILocation(line: 685, column: 11, scope: !5271)
!5314 = !DILocation(line: 685, column: 22, scope: !5271)
!5315 = !DILocation(line: 687, column: 2, scope: !5271)
!5316 = distinct !DISubprogram(name: "apci3120_ao_insn_write", scope: !3, file: !3, line: 760, type: !3925, scopeLine: 764, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!5317 = !DILocalVariable(name: "dev", arg: 1, scope: !5316, file: !3, line: 760, type: !197)
!5318 = !DILocation(line: 760, column: 57, scope: !5316)
!5319 = !DILocalVariable(name: "s", arg: 2, scope: !5316, file: !3, line: 761, type: !3828)
!5320 = !DILocation(line: 761, column: 32, scope: !5316)
!5321 = !DILocalVariable(name: "insn", arg: 3, scope: !5316, file: !3, line: 762, type: !3927)
!5322 = !DILocation(line: 762, column: 27, scope: !5316)
!5323 = !DILocalVariable(name: "data", arg: 4, scope: !5316, file: !3, line: 763, type: !2680)
!5324 = !DILocation(line: 763, column: 21, scope: !5316)
!5325 = !DILocalVariable(name: "chan", scope: !5316, file: !3, line: 765, type: !7)
!5326 = !DILocation(line: 765, column: 15, scope: !5316)
!5327 = !DILocation(line: 765, column: 22, scope: !5316)
!5328 = !DILocalVariable(name: "i", scope: !5316, file: !3, line: 766, type: !148)
!5329 = !DILocation(line: 766, column: 6, scope: !5316)
!5330 = !DILocation(line: 768, column: 9, scope: !5331)
!5331 = distinct !DILexicalBlock(scope: !5316, file: !3, line: 768, column: 2)
!5332 = !DILocation(line: 768, column: 7, scope: !5331)
!5333 = !DILocation(line: 768, column: 14, scope: !5334)
!5334 = distinct !DILexicalBlock(scope: !5331, file: !3, line: 768, column: 2)
!5335 = !DILocation(line: 768, column: 18, scope: !5334)
!5336 = !DILocation(line: 768, column: 24, scope: !5334)
!5337 = !DILocation(line: 768, column: 16, scope: !5334)
!5338 = !DILocation(line: 768, column: 2, scope: !5331)
!5339 = !DILocalVariable(name: "val", scope: !5340, file: !3, line: 769, type: !7)
!5340 = distinct !DILexicalBlock(scope: !5334, file: !3, line: 768, column: 32)
!5341 = !DILocation(line: 769, column: 16, scope: !5340)
!5342 = !DILocation(line: 769, column: 22, scope: !5340)
!5343 = !DILocation(line: 769, column: 27, scope: !5340)
!5344 = !DILocalVariable(name: "ret", scope: !5340, file: !3, line: 770, type: !148)
!5345 = !DILocation(line: 770, column: 7, scope: !5340)
!5346 = !DILocation(line: 772, column: 24, scope: !5340)
!5347 = !DILocation(line: 772, column: 29, scope: !5340)
!5348 = !DILocation(line: 772, column: 32, scope: !5340)
!5349 = !DILocation(line: 772, column: 9, scope: !5340)
!5350 = !DILocation(line: 772, column: 7, scope: !5340)
!5351 = !DILocation(line: 773, column: 7, scope: !5352)
!5352 = distinct !DILexicalBlock(scope: !5340, file: !3, line: 773, column: 7)
!5353 = !DILocation(line: 773, column: 7, scope: !5340)
!5354 = !DILocation(line: 774, column: 11, scope: !5352)
!5355 = !DILocation(line: 774, column: 4, scope: !5352)
!5356 = !DILocation(line: 776, column: 8, scope: !5340)
!5357 = !DILocation(line: 776, column: 32, scope: !5340)
!5358 = !DILocation(line: 776, column: 30, scope: !5340)
!5359 = !DILocation(line: 777, column: 8, scope: !5340)
!5360 = !DILocation(line: 777, column: 13, scope: !5340)
!5361 = !DILocation(line: 777, column: 22, scope: !5340)
!5362 = !DILocation(line: 777, column: 20, scope: !5340)
!5363 = !DILocation(line: 776, column: 3, scope: !5340)
!5364 = !DILocation(line: 779, column: 23, scope: !5340)
!5365 = !DILocation(line: 779, column: 3, scope: !5340)
!5366 = !DILocation(line: 779, column: 6, scope: !5340)
!5367 = !DILocation(line: 779, column: 15, scope: !5340)
!5368 = !DILocation(line: 779, column: 21, scope: !5340)
!5369 = !DILocation(line: 780, column: 2, scope: !5340)
!5370 = !DILocation(line: 768, column: 28, scope: !5334)
!5371 = !DILocation(line: 768, column: 2, scope: !5334)
!5372 = distinct !{!5372, !5338, !5373}
!5373 = !DILocation(line: 780, column: 2, scope: !5331)
!5374 = !DILocation(line: 782, column: 9, scope: !5316)
!5375 = !DILocation(line: 782, column: 15, scope: !5316)
!5376 = !DILocation(line: 782, column: 2, scope: !5316)
!5377 = !DILocation(line: 783, column: 1, scope: !5316)
!5378 = distinct !DISubprogram(name: "apci3120_di_insn_bits", scope: !3, file: !3, line: 785, type: !3925, scopeLine: 789, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!5379 = !DILocalVariable(name: "dev", arg: 1, scope: !5378, file: !3, line: 785, type: !197)
!5380 = !DILocation(line: 785, column: 56, scope: !5378)
!5381 = !DILocalVariable(name: "s", arg: 2, scope: !5378, file: !3, line: 786, type: !3828)
!5382 = !DILocation(line: 786, column: 31, scope: !5378)
!5383 = !DILocalVariable(name: "insn", arg: 3, scope: !5378, file: !3, line: 787, type: !3927)
!5384 = !DILocation(line: 787, column: 26, scope: !5378)
!5385 = !DILocalVariable(name: "data", arg: 4, scope: !5378, file: !3, line: 788, type: !2680)
!5386 = !DILocation(line: 788, column: 20, scope: !5378)
!5387 = !DILocalVariable(name: "status", scope: !5378, file: !3, line: 790, type: !7)
!5388 = !DILocation(line: 790, column: 15, scope: !5378)
!5389 = !DILocation(line: 792, column: 15, scope: !5378)
!5390 = !DILocation(line: 792, column: 20, scope: !5378)
!5391 = !DILocation(line: 792, column: 27, scope: !5378)
!5392 = !DILocation(line: 792, column: 11, scope: !5378)
!5393 = !DILocation(line: 792, column: 9, scope: !5378)
!5394 = !DILocation(line: 793, column: 12, scope: !5378)
!5395 = !DILocation(line: 793, column: 2, scope: !5378)
!5396 = !DILocation(line: 793, column: 10, scope: !5378)
!5397 = !DILocation(line: 795, column: 9, scope: !5378)
!5398 = !DILocation(line: 795, column: 15, scope: !5378)
!5399 = !DILocation(line: 795, column: 2, scope: !5378)
!5400 = distinct !DISubprogram(name: "apci3120_do_insn_bits", scope: !3, file: !3, line: 798, type: !3925, scopeLine: 802, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!5401 = !DILocalVariable(name: "dev", arg: 1, scope: !5400, file: !3, line: 798, type: !197)
!5402 = !DILocation(line: 798, column: 56, scope: !5400)
!5403 = !DILocalVariable(name: "s", arg: 2, scope: !5400, file: !3, line: 799, type: !3828)
!5404 = !DILocation(line: 799, column: 31, scope: !5400)
!5405 = !DILocalVariable(name: "insn", arg: 3, scope: !5400, file: !3, line: 800, type: !3927)
!5406 = !DILocation(line: 800, column: 26, scope: !5400)
!5407 = !DILocalVariable(name: "data", arg: 4, scope: !5400, file: !3, line: 801, type: !2680)
!5408 = !DILocation(line: 801, column: 20, scope: !5400)
!5409 = !DILocalVariable(name: "devpriv", scope: !5400, file: !3, line: 803, type: !4328)
!5410 = !DILocation(line: 803, column: 27, scope: !5400)
!5411 = !DILocation(line: 803, column: 37, scope: !5400)
!5412 = !DILocation(line: 803, column: 42, scope: !5400)
!5413 = !DILocation(line: 805, column: 30, scope: !5414)
!5414 = distinct !DILexicalBlock(scope: !5400, file: !3, line: 805, column: 6)
!5415 = !DILocation(line: 805, column: 33, scope: !5414)
!5416 = !DILocation(line: 805, column: 6, scope: !5414)
!5417 = !DILocation(line: 805, column: 6, scope: !5400)
!5418 = !DILocation(line: 806, column: 22, scope: !5419)
!5419 = distinct !DILexicalBlock(scope: !5414, file: !3, line: 805, column: 40)
!5420 = !DILocation(line: 806, column: 25, scope: !5419)
!5421 = !DILocation(line: 806, column: 3, scope: !5419)
!5422 = !DILocation(line: 806, column: 12, scope: !5419)
!5423 = !DILocation(line: 806, column: 20, scope: !5419)
!5424 = !DILocation(line: 807, column: 8, scope: !5419)
!5425 = !DILocation(line: 808, column: 8, scope: !5419)
!5426 = !DILocation(line: 808, column: 13, scope: !5419)
!5427 = !DILocation(line: 808, column: 20, scope: !5419)
!5428 = !DILocation(line: 807, column: 3, scope: !5419)
!5429 = !DILocation(line: 809, column: 2, scope: !5419)
!5430 = !DILocation(line: 811, column: 12, scope: !5400)
!5431 = !DILocation(line: 811, column: 15, scope: !5400)
!5432 = !DILocation(line: 811, column: 2, scope: !5400)
!5433 = !DILocation(line: 811, column: 10, scope: !5400)
!5434 = !DILocation(line: 813, column: 9, scope: !5400)
!5435 = !DILocation(line: 813, column: 15, scope: !5400)
!5436 = !DILocation(line: 813, column: 2, scope: !5400)
!5437 = distinct !DISubprogram(name: "apci3120_timer_insn_config", scope: !3, file: !3, line: 816, type: !3925, scopeLine: 820, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!5438 = !DILocalVariable(name: "dev", arg: 1, scope: !5437, file: !3, line: 816, type: !197)
!5439 = !DILocation(line: 816, column: 61, scope: !5437)
!5440 = !DILocalVariable(name: "s", arg: 2, scope: !5437, file: !3, line: 817, type: !3828)
!5441 = !DILocation(line: 817, column: 36, scope: !5437)
!5442 = !DILocalVariable(name: "insn", arg: 3, scope: !5437, file: !3, line: 818, type: !3927)
!5443 = !DILocation(line: 818, column: 31, scope: !5437)
!5444 = !DILocalVariable(name: "data", arg: 4, scope: !5437, file: !3, line: 819, type: !2680)
!5445 = !DILocation(line: 819, column: 25, scope: !5437)
!5446 = !DILocalVariable(name: "devpriv", scope: !5437, file: !3, line: 821, type: !4328)
!5447 = !DILocation(line: 821, column: 27, scope: !5437)
!5448 = !DILocation(line: 821, column: 37, scope: !5437)
!5449 = !DILocation(line: 821, column: 42, scope: !5437)
!5450 = !DILocalVariable(name: "divisor", scope: !5437, file: !3, line: 822, type: !7)
!5451 = !DILocation(line: 822, column: 15, scope: !5437)
!5452 = !DILocalVariable(name: "status", scope: !5437, file: !3, line: 823, type: !7)
!5453 = !DILocation(line: 823, column: 15, scope: !5437)
!5454 = !DILocalVariable(name: "mode", scope: !5437, file: !3, line: 824, type: !7)
!5455 = !DILocation(line: 824, column: 15, scope: !5437)
!5456 = !DILocalVariable(name: "timer_mode", scope: !5437, file: !3, line: 825, type: !7)
!5457 = !DILocation(line: 825, column: 15, scope: !5437)
!5458 = !DILocation(line: 827, column: 10, scope: !5437)
!5459 = !DILocation(line: 827, column: 2, scope: !5437)
!5460 = !DILocation(line: 829, column: 33, scope: !5461)
!5461 = distinct !DILexicalBlock(scope: !5437, file: !3, line: 827, column: 19)
!5462 = !DILocation(line: 829, column: 3, scope: !5461)
!5463 = !DILocation(line: 830, column: 34, scope: !5461)
!5464 = !DILocation(line: 830, column: 42, scope: !5461)
!5465 = !DILocation(line: 830, column: 13, scope: !5461)
!5466 = !DILocation(line: 830, column: 11, scope: !5461)
!5467 = !DILocation(line: 832, column: 24, scope: !5461)
!5468 = !DILocation(line: 832, column: 32, scope: !5461)
!5469 = !DILocation(line: 832, column: 3, scope: !5461)
!5470 = !DILocation(line: 833, column: 25, scope: !5461)
!5471 = !DILocation(line: 833, column: 3, scope: !5461)
!5472 = !DILocation(line: 834, column: 3, scope: !5461)
!5473 = !DILocation(line: 837, column: 25, scope: !5461)
!5474 = !DILocation(line: 837, column: 3, scope: !5461)
!5475 = !DILocation(line: 838, column: 33, scope: !5461)
!5476 = !DILocation(line: 838, column: 3, scope: !5461)
!5477 = !DILocation(line: 839, column: 3, scope: !5461)
!5478 = !DILocation(line: 842, column: 3, scope: !5461)
!5479 = !DILocation(line: 842, column: 11, scope: !5461)
!5480 = !DILocation(line: 843, column: 3, scope: !5461)
!5481 = !DILocation(line: 843, column: 11, scope: !5461)
!5482 = !DILocation(line: 846, column: 7, scope: !5483)
!5483 = distinct !DILexicalBlock(scope: !5461, file: !3, line: 846, column: 7)
!5484 = !DILocation(line: 846, column: 16, scope: !5483)
!5485 = !DILocation(line: 846, column: 21, scope: !5483)
!5486 = !DILocation(line: 846, column: 7, scope: !5461)
!5487 = !DILocation(line: 847, column: 4, scope: !5488)
!5488 = distinct !DILexicalBlock(scope: !5483, file: !3, line: 846, column: 46)
!5489 = !DILocation(line: 847, column: 12, scope: !5488)
!5490 = !DILocation(line: 848, column: 4, scope: !5488)
!5491 = !DILocation(line: 848, column: 12, scope: !5488)
!5492 = !DILocation(line: 849, column: 3, scope: !5488)
!5493 = !DILocation(line: 850, column: 16, scope: !5461)
!5494 = !DILocation(line: 850, column: 21, scope: !5461)
!5495 = !DILocation(line: 850, column: 28, scope: !5461)
!5496 = !DILocation(line: 850, column: 12, scope: !5461)
!5497 = !DILocation(line: 850, column: 10, scope: !5461)
!5498 = !DILocation(line: 851, column: 7, scope: !5499)
!5499 = distinct !DILexicalBlock(scope: !5461, file: !3, line: 851, column: 7)
!5500 = !DILocation(line: 851, column: 14, scope: !5499)
!5501 = !DILocation(line: 851, column: 7, scope: !5461)
!5502 = !DILocation(line: 852, column: 4, scope: !5503)
!5503 = distinct !DILexicalBlock(scope: !5499, file: !3, line: 851, column: 44)
!5504 = !DILocation(line: 852, column: 12, scope: !5503)
!5505 = !DILocation(line: 853, column: 4, scope: !5503)
!5506 = !DILocation(line: 853, column: 12, scope: !5503)
!5507 = !DILocation(line: 854, column: 3, scope: !5503)
!5508 = !DILocation(line: 855, column: 3, scope: !5461)
!5509 = !DILocation(line: 858, column: 11, scope: !5461)
!5510 = !DILocation(line: 858, column: 3, scope: !5461)
!5511 = !DILocation(line: 860, column: 9, scope: !5512)
!5512 = distinct !DILexicalBlock(scope: !5461, file: !3, line: 858, column: 20)
!5513 = !DILocation(line: 861, column: 15, scope: !5512)
!5514 = !DILocation(line: 862, column: 4, scope: !5512)
!5515 = !DILocation(line: 864, column: 9, scope: !5512)
!5516 = !DILocation(line: 865, column: 15, scope: !5512)
!5517 = !DILocation(line: 866, column: 4, scope: !5512)
!5518 = !DILocation(line: 868, column: 9, scope: !5512)
!5519 = !DILocation(line: 869, column: 15, scope: !5512)
!5520 = !DILocation(line: 870, column: 4, scope: !5512)
!5521 = !DILocation(line: 872, column: 9, scope: !5512)
!5522 = !DILocation(line: 873, column: 15, scope: !5512)
!5523 = !DILocation(line: 874, column: 4, scope: !5512)
!5524 = !DILocation(line: 876, column: 4, scope: !5512)
!5525 = !DILocation(line: 878, column: 25, scope: !5461)
!5526 = !DILocation(line: 878, column: 3, scope: !5461)
!5527 = !DILocation(line: 879, column: 33, scope: !5461)
!5528 = !DILocation(line: 879, column: 3, scope: !5461)
!5529 = !DILocation(line: 880, column: 27, scope: !5461)
!5530 = !DILocation(line: 880, column: 35, scope: !5461)
!5531 = !DILocation(line: 880, column: 3, scope: !5461)
!5532 = !DILocation(line: 881, column: 3, scope: !5461)
!5533 = !DILocation(line: 881, column: 12, scope: !5461)
!5534 = !DILocation(line: 881, column: 17, scope: !5461)
!5535 = !DILocation(line: 882, column: 20, scope: !5461)
!5536 = !DILocation(line: 882, column: 3, scope: !5461)
!5537 = !DILocation(line: 882, column: 12, scope: !5461)
!5538 = !DILocation(line: 882, column: 17, scope: !5461)
!5539 = !DILocation(line: 883, column: 8, scope: !5461)
!5540 = !DILocation(line: 883, column: 17, scope: !5461)
!5541 = !DILocation(line: 883, column: 23, scope: !5461)
!5542 = !DILocation(line: 883, column: 28, scope: !5461)
!5543 = !DILocation(line: 883, column: 35, scope: !5461)
!5544 = !DILocation(line: 883, column: 3, scope: !5461)
!5545 = !DILocation(line: 884, column: 3, scope: !5461)
!5546 = !DILocation(line: 887, column: 3, scope: !5461)
!5547 = !DILocation(line: 890, column: 9, scope: !5437)
!5548 = !DILocation(line: 890, column: 15, scope: !5437)
!5549 = !DILocation(line: 890, column: 2, scope: !5437)
!5550 = !DILocation(line: 891, column: 1, scope: !5437)
!5551 = distinct !DISubprogram(name: "apci3120_timer_insn_read", scope: !3, file: !3, line: 893, type: !3925, scopeLine: 897, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!5552 = !DILocalVariable(name: "dev", arg: 1, scope: !5551, file: !3, line: 893, type: !197)
!5553 = !DILocation(line: 893, column: 59, scope: !5551)
!5554 = !DILocalVariable(name: "s", arg: 2, scope: !5551, file: !3, line: 894, type: !3828)
!5555 = !DILocation(line: 894, column: 34, scope: !5551)
!5556 = !DILocalVariable(name: "insn", arg: 3, scope: !5551, file: !3, line: 895, type: !3927)
!5557 = !DILocation(line: 895, column: 29, scope: !5551)
!5558 = !DILocalVariable(name: "data", arg: 4, scope: !5551, file: !3, line: 896, type: !2680)
!5559 = !DILocation(line: 896, column: 23, scope: !5551)
!5560 = !DILocalVariable(name: "i", scope: !5551, file: !3, line: 898, type: !148)
!5561 = !DILocation(line: 898, column: 6, scope: !5551)
!5562 = !DILocation(line: 900, column: 9, scope: !5563)
!5563 = distinct !DILexicalBlock(scope: !5551, file: !3, line: 900, column: 2)
!5564 = !DILocation(line: 900, column: 7, scope: !5563)
!5565 = !DILocation(line: 900, column: 14, scope: !5566)
!5566 = distinct !DILexicalBlock(scope: !5563, file: !3, line: 900, column: 2)
!5567 = !DILocation(line: 900, column: 18, scope: !5566)
!5568 = !DILocation(line: 900, column: 24, scope: !5566)
!5569 = !DILocation(line: 900, column: 16, scope: !5566)
!5570 = !DILocation(line: 900, column: 2, scope: !5563)
!5571 = !DILocation(line: 901, column: 33, scope: !5566)
!5572 = !DILocation(line: 901, column: 13, scope: !5566)
!5573 = !DILocation(line: 901, column: 3, scope: !5566)
!5574 = !DILocation(line: 901, column: 8, scope: !5566)
!5575 = !DILocation(line: 901, column: 11, scope: !5566)
!5576 = !DILocation(line: 900, column: 28, scope: !5566)
!5577 = !DILocation(line: 900, column: 2, scope: !5566)
!5578 = distinct !{!5578, !5570, !5579}
!5579 = !DILocation(line: 901, column: 39, scope: !5563)
!5580 = !DILocation(line: 903, column: 9, scope: !5551)
!5581 = !DILocation(line: 903, column: 15, scope: !5551)
!5582 = !DILocation(line: 903, column: 2, scope: !5551)
!5583 = distinct !DISubprogram(name: "outb", scope: !4966, file: !4966, line: 334, type: !5584, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!5584 = !DISubroutineType(types: !5585)
!5585 = !{null, !424, !148}
!5586 = !DILocalVariable(name: "value", arg: 1, scope: !5583, file: !4966, line: 334, type: !424)
!5587 = !DILocation(line: 334, column: 1, scope: !5583)
!5588 = !DILocalVariable(name: "port", arg: 2, scope: !5583, file: !4966, line: 334, type: !148)
!5589 = !{i32 -2143392006}
!5590 = distinct !DISubprogram(name: "outw", scope: !4966, file: !4966, line: 335, type: !5591, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!5591 = !DISubroutineType(types: !5592)
!5592 = !{null, !313, !148}
!5593 = !DILocalVariable(name: "value", arg: 1, scope: !5590, file: !4966, line: 335, type: !313)
!5594 = !DILocation(line: 335, column: 1, scope: !5590)
!5595 = !DILocalVariable(name: "port", arg: 2, scope: !5590, file: !4966, line: 335, type: !148)
!5596 = !{i32 -2143389263}
!5597 = distinct !DISubprogram(name: "inl", scope: !4966, file: !4966, line: 336, type: !5598, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!5598 = !DISubroutineType(types: !5599)
!5599 = !{!7, !148}
!5600 = !DILocalVariable(name: "port", arg: 1, scope: !5597, file: !4966, line: 336, type: !148)
!5601 = !DILocation(line: 336, column: 1, scope: !5597)
!5602 = !DILocalVariable(name: "value", scope: !5597, file: !4966, line: 336, type: !7)
!5603 = !{i32 -2143386308}
!5604 = distinct !DISubprogram(name: "outl", scope: !4966, file: !4966, line: 336, type: !5605, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!5605 = !DISubroutineType(types: !5606)
!5606 = !{null, !7, !148}
!5607 = !DILocalVariable(name: "value", arg: 1, scope: !5604, file: !4966, line: 336, type: !7)
!5608 = !DILocation(line: 336, column: 1, scope: !5604)
!5609 = !DILocalVariable(name: "port", arg: 2, scope: !5604, file: !4966, line: 336, type: !148)
!5610 = !{i32 -2143386510}
!5611 = distinct !DISubprogram(name: "apci3120_exttrig_enable", scope: !3, file: !3, line: 378, type: !5612, scopeLine: 379, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!5612 = !DISubroutineType(types: !5613)
!5613 = !{null, !197, !487}
!5614 = !DILocalVariable(name: "dev", arg: 1, scope: !5611, file: !3, line: 378, type: !197)
!5615 = !DILocation(line: 378, column: 59, scope: !5611)
!5616 = !DILocalVariable(name: "enable", arg: 2, scope: !5611, file: !3, line: 378, type: !487)
!5617 = !DILocation(line: 378, column: 69, scope: !5611)
!5618 = !DILocalVariable(name: "devpriv", scope: !5611, file: !3, line: 380, type: !4328)
!5619 = !DILocation(line: 380, column: 27, scope: !5611)
!5620 = !DILocation(line: 380, column: 37, scope: !5611)
!5621 = !DILocation(line: 380, column: 42, scope: !5611)
!5622 = !DILocation(line: 382, column: 6, scope: !5623)
!5623 = distinct !DILexicalBlock(scope: !5611, file: !3, line: 382, column: 6)
!5624 = !DILocation(line: 382, column: 6, scope: !5611)
!5625 = !DILocation(line: 383, column: 3, scope: !5623)
!5626 = !DILocation(line: 383, column: 12, scope: !5623)
!5627 = !DILocation(line: 383, column: 17, scope: !5623)
!5628 = !DILocation(line: 385, column: 3, scope: !5623)
!5629 = !DILocation(line: 385, column: 12, scope: !5623)
!5630 = !DILocation(line: 385, column: 17, scope: !5623)
!5631 = !DILocation(line: 386, column: 7, scope: !5611)
!5632 = !DILocation(line: 386, column: 16, scope: !5611)
!5633 = !DILocation(line: 386, column: 22, scope: !5611)
!5634 = !DILocation(line: 386, column: 27, scope: !5611)
!5635 = !DILocation(line: 386, column: 34, scope: !5611)
!5636 = !DILocation(line: 386, column: 2, scope: !5611)
!5637 = !DILocation(line: 387, column: 1, scope: !5611)
!5638 = distinct !DISubprogram(name: "apci3120_clr_timer2_interrupt", scope: !3, file: !3, line: 307, type: !3974, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!5639 = !DILocalVariable(name: "dev", arg: 1, scope: !5638, file: !3, line: 307, type: !197)
!5640 = !DILocation(line: 307, column: 65, scope: !5638)
!5641 = !DILocation(line: 310, column: 6, scope: !5638)
!5642 = !DILocation(line: 310, column: 11, scope: !5638)
!5643 = !DILocation(line: 310, column: 18, scope: !5638)
!5644 = !DILocation(line: 310, column: 2, scope: !5638)
!5645 = !DILocation(line: 311, column: 1, scope: !5638)
!5646 = distinct !DISubprogram(name: "apci3120_interrupt_dma", scope: !3, file: !3, line: 424, type: !5647, scopeLine: 426, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!5647 = !DISubroutineType(types: !5648)
!5648 = !{null, !197, !3828}
!5649 = !DILocalVariable(name: "dev", arg: 1, scope: !5646, file: !3, line: 424, type: !197)
!5650 = !DILocation(line: 424, column: 58, scope: !5646)
!5651 = !DILocalVariable(name: "s", arg: 2, scope: !5646, file: !3, line: 425, type: !3828)
!5652 = !DILocation(line: 425, column: 33, scope: !5646)
!5653 = !DILocalVariable(name: "devpriv", scope: !5646, file: !3, line: 427, type: !4328)
!5654 = !DILocation(line: 427, column: 27, scope: !5646)
!5655 = !DILocation(line: 427, column: 37, scope: !5646)
!5656 = !DILocation(line: 427, column: 42, scope: !5646)
!5657 = !DILocalVariable(name: "async", scope: !5646, file: !3, line: 428, type: !3839)
!5658 = !DILocation(line: 428, column: 23, scope: !5646)
!5659 = !DILocation(line: 428, column: 31, scope: !5646)
!5660 = !DILocation(line: 428, column: 34, scope: !5646)
!5661 = !DILocalVariable(name: "cmd", scope: !5646, file: !3, line: 429, type: !3948)
!5662 = !DILocation(line: 429, column: 21, scope: !5646)
!5663 = !DILocation(line: 429, column: 28, scope: !5646)
!5664 = !DILocation(line: 429, column: 35, scope: !5646)
!5665 = !DILocalVariable(name: "dmabuf", scope: !5646, file: !3, line: 430, type: !4624)
!5666 = !DILocation(line: 430, column: 26, scope: !5646)
!5667 = !DILocalVariable(name: "nbytes", scope: !5646, file: !3, line: 431, type: !7)
!5668 = !DILocation(line: 431, column: 15, scope: !5646)
!5669 = !DILocalVariable(name: "nsamples", scope: !5646, file: !3, line: 432, type: !7)
!5670 = !DILocation(line: 432, column: 15, scope: !5646)
!5671 = !DILocation(line: 434, column: 12, scope: !5646)
!5672 = !DILocation(line: 434, column: 21, scope: !5646)
!5673 = !DILocation(line: 434, column: 28, scope: !5646)
!5674 = !DILocation(line: 434, column: 37, scope: !5646)
!5675 = !DILocation(line: 434, column: 9, scope: !5646)
!5676 = !DILocation(line: 436, column: 11, scope: !5646)
!5677 = !DILocation(line: 436, column: 19, scope: !5646)
!5678 = !DILocation(line: 436, column: 34, scope: !5646)
!5679 = !DILocation(line: 436, column: 43, scope: !5646)
!5680 = !DILocation(line: 436, column: 48, scope: !5646)
!5681 = !DILocation(line: 436, column: 30, scope: !5646)
!5682 = !DILocation(line: 436, column: 28, scope: !5646)
!5683 = !DILocation(line: 436, column: 9, scope: !5646)
!5684 = !DILocation(line: 438, column: 6, scope: !5685)
!5685 = distinct !DILexicalBlock(scope: !5646, file: !3, line: 438, column: 6)
!5686 = !DILocation(line: 438, column: 15, scope: !5685)
!5687 = !DILocation(line: 438, column: 23, scope: !5685)
!5688 = !DILocation(line: 438, column: 13, scope: !5685)
!5689 = !DILocation(line: 438, column: 6, scope: !5646)
!5690 = !DILocation(line: 439, column: 3, scope: !5685)
!5691 = !DILocation(line: 440, column: 6, scope: !5692)
!5692 = distinct !DILexicalBlock(scope: !5646, file: !3, line: 440, column: 6)
!5693 = !DILocation(line: 440, column: 13, scope: !5692)
!5694 = !DILocation(line: 440, column: 6, scope: !5646)
!5695 = !DILocation(line: 441, column: 3, scope: !5696)
!5696 = distinct !DILexicalBlock(scope: !5692, file: !3, line: 440, column: 18)
!5697 = !DILocation(line: 442, column: 3, scope: !5696)
!5698 = !DILocation(line: 442, column: 10, scope: !5696)
!5699 = !DILocation(line: 442, column: 17, scope: !5696)
!5700 = !DILocation(line: 443, column: 3, scope: !5696)
!5701 = !DILocation(line: 446, column: 37, scope: !5646)
!5702 = !DILocation(line: 446, column: 40, scope: !5646)
!5703 = !DILocation(line: 446, column: 13, scope: !5646)
!5704 = !DILocation(line: 446, column: 11, scope: !5646)
!5705 = !DILocation(line: 447, column: 6, scope: !5706)
!5706 = distinct !DILexicalBlock(scope: !5646, file: !3, line: 447, column: 6)
!5707 = !DILocation(line: 447, column: 6, scope: !5646)
!5708 = !DILocation(line: 448, column: 28, scope: !5709)
!5709 = distinct !DILexicalBlock(scope: !5706, file: !3, line: 447, column: 16)
!5710 = !DILocation(line: 448, column: 31, scope: !5709)
!5711 = !DILocation(line: 448, column: 39, scope: !5709)
!5712 = !DILocation(line: 448, column: 45, scope: !5709)
!5713 = !DILocation(line: 448, column: 3, scope: !5709)
!5714 = !DILocation(line: 450, column: 9, scope: !5715)
!5715 = distinct !DILexicalBlock(scope: !5709, file: !3, line: 450, column: 7)
!5716 = !DILocation(line: 450, column: 14, scope: !5715)
!5717 = !DILocation(line: 450, column: 20, scope: !5715)
!5718 = !DILocation(line: 450, column: 7, scope: !5709)
!5719 = !DILocation(line: 451, column: 4, scope: !5715)
!5720 = !DILocation(line: 451, column: 11, scope: !5715)
!5721 = !DILocation(line: 451, column: 18, scope: !5715)
!5722 = !DILocation(line: 452, column: 2, scope: !5709)
!5723 = !DILocation(line: 454, column: 7, scope: !5724)
!5724 = distinct !DILexicalBlock(scope: !5646, file: !3, line: 454, column: 6)
!5725 = !DILocation(line: 454, column: 14, scope: !5724)
!5726 = !DILocation(line: 454, column: 21, scope: !5724)
!5727 = !DILocation(line: 454, column: 46, scope: !5724)
!5728 = !DILocation(line: 455, column: 7, scope: !5724)
!5729 = !DILocation(line: 455, column: 12, scope: !5724)
!5730 = !DILocation(line: 455, column: 21, scope: !5724)
!5731 = !DILocation(line: 455, column: 35, scope: !5724)
!5732 = !DILocation(line: 455, column: 38, scope: !5724)
!5733 = !DILocation(line: 455, column: 45, scope: !5724)
!5734 = !DILocation(line: 455, column: 59, scope: !5724)
!5735 = !DILocation(line: 455, column: 64, scope: !5724)
!5736 = !DILocation(line: 455, column: 56, scope: !5724)
!5737 = !DILocation(line: 454, column: 6, scope: !5646)
!5738 = !DILocation(line: 456, column: 3, scope: !5724)
!5739 = !DILocation(line: 458, column: 6, scope: !5740)
!5740 = distinct !DILexicalBlock(scope: !5646, file: !3, line: 458, column: 6)
!5741 = !DILocation(line: 458, column: 15, scope: !5740)
!5742 = !DILocation(line: 458, column: 6, scope: !5646)
!5743 = !DILocation(line: 460, column: 26, scope: !5744)
!5744 = distinct !DILexicalBlock(scope: !5740, file: !3, line: 458, column: 34)
!5745 = !DILocation(line: 460, column: 35, scope: !5744)
!5746 = !DILocation(line: 460, column: 25, scope: !5744)
!5747 = !DILocation(line: 460, column: 3, scope: !5744)
!5748 = !DILocation(line: 460, column: 12, scope: !5744)
!5749 = !DILocation(line: 460, column: 23, scope: !5744)
!5750 = !DILocation(line: 461, column: 13, scope: !5744)
!5751 = !DILocation(line: 461, column: 22, scope: !5744)
!5752 = !DILocation(line: 461, column: 29, scope: !5744)
!5753 = !DILocation(line: 461, column: 38, scope: !5744)
!5754 = !DILocation(line: 461, column: 10, scope: !5744)
!5755 = !DILocation(line: 462, column: 21, scope: !5744)
!5756 = !DILocation(line: 462, column: 26, scope: !5744)
!5757 = !DILocation(line: 462, column: 3, scope: !5744)
!5758 = !DILocation(line: 463, column: 2, scope: !5744)
!5759 = !DILocation(line: 465, column: 21, scope: !5760)
!5760 = distinct !DILexicalBlock(scope: !5740, file: !3, line: 463, column: 9)
!5761 = !DILocation(line: 465, column: 26, scope: !5760)
!5762 = !DILocation(line: 465, column: 3, scope: !5760)
!5763 = !DILocation(line: 467, column: 1, scope: !5646)
!5764 = distinct !DISubprogram(name: "inb", scope: !4966, file: !4966, line: 334, type: !5765, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!5765 = !DISubroutineType(types: !5766)
!5766 = !{!424, !148}
!5767 = !DILocalVariable(name: "port", arg: 1, scope: !5764, file: !4966, line: 334, type: !148)
!5768 = !DILocation(line: 334, column: 1, scope: !5764)
!5769 = !DILocalVariable(name: "value", scope: !5764, file: !4966, line: 334, type: !424)
!5770 = !{i32 -2143391804}
!5771 = distinct !DISubprogram(name: "comedi_bytes_to_samples", scope: !132, file: !132, line: 825, type: !5772, scopeLine: 827, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!5772 = !DISubroutineType(types: !5773)
!5773 = !{!7, !3828, !7}
!5774 = !DILocalVariable(name: "s", arg: 1, scope: !5771, file: !132, line: 825, type: !3828)
!5775 = !DILocation(line: 825, column: 77, scope: !5771)
!5776 = !DILocalVariable(name: "nbytes", arg: 2, scope: !5771, file: !132, line: 826, type: !7)
!5777 = !DILocation(line: 826, column: 23, scope: !5771)
!5778 = !DILocation(line: 828, column: 9, scope: !5771)
!5779 = !DILocation(line: 828, column: 39, scope: !5771)
!5780 = !DILocation(line: 828, column: 19, scope: !5771)
!5781 = !DILocation(line: 828, column: 16, scope: !5771)
!5782 = !DILocation(line: 828, column: 2, scope: !5771)
!5783 = distinct !DISubprogram(name: "apci3120_init_dma", scope: !3, file: !3, line: 171, type: !5784, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!5784 = !DISubroutineType(types: !5785)
!5785 = !{null, !197, !4624}
!5786 = !DILocalVariable(name: "dev", arg: 1, scope: !5783, file: !3, line: 171, type: !197)
!5787 = !DILocation(line: 171, column: 53, scope: !5783)
!5788 = !DILocalVariable(name: "dmabuf", arg: 2, scope: !5783, file: !3, line: 172, type: !4624)
!5789 = !DILocation(line: 172, column: 34, scope: !5783)
!5790 = !DILocalVariable(name: "devpriv", scope: !5783, file: !3, line: 174, type: !4328)
!5791 = !DILocation(line: 174, column: 27, scope: !5783)
!5792 = !DILocation(line: 174, column: 37, scope: !5783)
!5793 = !DILocation(line: 174, column: 42, scope: !5783)
!5794 = !DILocation(line: 178, column: 7, scope: !5783)
!5795 = !DILocation(line: 178, column: 16, scope: !5783)
!5796 = !DILocation(line: 178, column: 21, scope: !5783)
!5797 = !DILocation(line: 177, column: 2, scope: !5783)
!5798 = !DILocation(line: 181, column: 23, scope: !5783)
!5799 = !DILocation(line: 181, column: 2, scope: !5783)
!5800 = !DILocation(line: 186, column: 7, scope: !5783)
!5801 = !DILocation(line: 186, column: 16, scope: !5783)
!5802 = !DILocation(line: 186, column: 21, scope: !5783)
!5803 = !DILocation(line: 185, column: 2, scope: !5783)
!5804 = !DILocation(line: 189, column: 23, scope: !5783)
!5805 = !DILocation(line: 189, column: 28, scope: !5783)
!5806 = !DILocation(line: 189, column: 36, scope: !5783)
!5807 = !DILocation(line: 189, column: 2, scope: !5783)
!5808 = !DILocation(line: 192, column: 23, scope: !5783)
!5809 = !DILocation(line: 192, column: 28, scope: !5783)
!5810 = !DILocation(line: 192, column: 36, scope: !5783)
!5811 = !DILocation(line: 192, column: 2, scope: !5783)
!5812 = !DILocation(line: 196, column: 7, scope: !5783)
!5813 = !DILocation(line: 196, column: 16, scope: !5783)
!5814 = !DILocation(line: 196, column: 21, scope: !5783)
!5815 = !DILocation(line: 195, column: 2, scope: !5783)
!5816 = !DILocation(line: 200, column: 7, scope: !5783)
!5817 = !DILocation(line: 200, column: 16, scope: !5783)
!5818 = !DILocation(line: 200, column: 22, scope: !5783)
!5819 = !DILocation(line: 199, column: 2, scope: !5783)
!5820 = !DILocation(line: 201, column: 1, scope: !5783)
!5821 = distinct !DISubprogram(name: "comedi_sample_shift", scope: !132, file: !132, line: 813, type: !5822, scopeLine: 814, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!5822 = !DISubroutineType(types: !5823)
!5823 = !{!7, !3828}
!5824 = !DILocalVariable(name: "s", arg: 1, scope: !5821, file: !132, line: 813, type: !3828)
!5825 = !DILocation(line: 813, column: 73, scope: !5821)
!5826 = !DILocation(line: 815, column: 9, scope: !5821)
!5827 = !DILocation(line: 815, column: 12, scope: !5821)
!5828 = !DILocation(line: 815, column: 25, scope: !5821)
!5829 = !DILocation(line: 815, column: 2, scope: !5821)
!5830 = distinct !DISubprogram(name: "apci3120_addon_write", scope: !3, file: !3, line: 157, type: !5831, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!5831 = !DISubroutineType(types: !5832)
!5832 = !{null, !197, !7, !7}
!5833 = !DILocalVariable(name: "dev", arg: 1, scope: !5830, file: !3, line: 157, type: !197)
!5834 = !DILocation(line: 157, column: 56, scope: !5830)
!5835 = !DILocalVariable(name: "val", arg: 2, scope: !5830, file: !3, line: 158, type: !7)
!5836 = !DILocation(line: 158, column: 19, scope: !5830)
!5837 = !DILocalVariable(name: "reg", arg: 3, scope: !5830, file: !3, line: 158, type: !7)
!5838 = !DILocation(line: 158, column: 37, scope: !5830)
!5839 = !DILocalVariable(name: "devpriv", scope: !5830, file: !3, line: 160, type: !4328)
!5840 = !DILocation(line: 160, column: 27, scope: !5830)
!5841 = !DILocation(line: 160, column: 37, scope: !5830)
!5842 = !DILocation(line: 160, column: 42, scope: !5830)
!5843 = !DILocation(line: 164, column: 7, scope: !5830)
!5844 = !DILocation(line: 164, column: 12, scope: !5830)
!5845 = !DILocation(line: 164, column: 21, scope: !5830)
!5846 = !DILocation(line: 164, column: 27, scope: !5830)
!5847 = !DILocation(line: 164, column: 2, scope: !5830)
!5848 = !DILocation(line: 165, column: 7, scope: !5830)
!5849 = !DILocation(line: 165, column: 11, scope: !5830)
!5850 = !DILocation(line: 165, column: 21, scope: !5830)
!5851 = !DILocation(line: 165, column: 30, scope: !5830)
!5852 = !DILocation(line: 165, column: 36, scope: !5830)
!5853 = !DILocation(line: 165, column: 2, scope: !5830)
!5854 = !DILocation(line: 167, column: 7, scope: !5830)
!5855 = !DILocation(line: 167, column: 11, scope: !5830)
!5856 = !DILocation(line: 167, column: 16, scope: !5830)
!5857 = !DILocation(line: 167, column: 25, scope: !5830)
!5858 = !DILocation(line: 167, column: 31, scope: !5830)
!5859 = !DILocation(line: 167, column: 2, scope: !5830)
!5860 = !DILocation(line: 168, column: 8, scope: !5830)
!5861 = !DILocation(line: 168, column: 12, scope: !5830)
!5862 = !DILocation(line: 168, column: 19, scope: !5830)
!5863 = !DILocation(line: 168, column: 7, scope: !5830)
!5864 = !DILocation(line: 168, column: 29, scope: !5830)
!5865 = !DILocation(line: 168, column: 38, scope: !5830)
!5866 = !DILocation(line: 168, column: 44, scope: !5830)
!5867 = !DILocation(line: 168, column: 2, scope: !5830)
!5868 = !DILocation(line: 169, column: 1, scope: !5830)
!5869 = distinct !DISubprogram(name: "dma_alloc_coherent", scope: !4666, file: !4666, line: 392, type: !5870, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!5870 = !DISubroutineType(types: !5871)
!5871 = !{!206, !208, !318, !5872, !149}
!5872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!5873 = !DILocalVariable(name: "dev", arg: 1, scope: !5869, file: !4666, line: 392, type: !208)
!5874 = !DILocation(line: 392, column: 55, scope: !5869)
!5875 = !DILocalVariable(name: "size", arg: 2, scope: !5869, file: !4666, line: 392, type: !318)
!5876 = !DILocation(line: 392, column: 67, scope: !5869)
!5877 = !DILocalVariable(name: "dma_handle", arg: 3, scope: !5869, file: !4666, line: 393, type: !5872)
!5878 = !DILocation(line: 393, column: 15, scope: !5869)
!5879 = !DILocalVariable(name: "gfp", arg: 4, scope: !5869, file: !4666, line: 393, type: !149)
!5880 = !DILocation(line: 393, column: 33, scope: !5869)
!5881 = !DILocation(line: 396, column: 25, scope: !5869)
!5882 = !DILocation(line: 396, column: 30, scope: !5869)
!5883 = !DILocation(line: 396, column: 36, scope: !5869)
!5884 = !DILocation(line: 396, column: 48, scope: !5869)
!5885 = !DILocation(line: 397, column: 5, scope: !5869)
!5886 = !DILocation(line: 397, column: 9, scope: !5869)
!5887 = !DILocation(line: 397, column: 4, scope: !5869)
!5888 = !DILocation(line: 396, column: 9, scope: !5869)
!5889 = !DILocation(line: 396, column: 2, scope: !5869)
!5890 = distinct !DISubprogram(name: "apci3120_set_chanlist", scope: !3, file: !3, line: 389, type: !5891, scopeLine: 392, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!5891 = !DISubroutineType(types: !5892)
!5892 = !{null, !197, !3828, !148, !2680}
!5893 = !DILocalVariable(name: "dev", arg: 1, scope: !5890, file: !3, line: 389, type: !197)
!5894 = !DILocation(line: 389, column: 57, scope: !5890)
!5895 = !DILocalVariable(name: "s", arg: 2, scope: !5890, file: !3, line: 390, type: !3828)
!5896 = !DILocation(line: 390, column: 32, scope: !5890)
!5897 = !DILocalVariable(name: "n_chan", arg: 3, scope: !5890, file: !3, line: 391, type: !148)
!5898 = !DILocation(line: 391, column: 11, scope: !5890)
!5899 = !DILocalVariable(name: "chanlist", arg: 4, scope: !5890, file: !3, line: 391, type: !2680)
!5900 = !DILocation(line: 391, column: 33, scope: !5890)
!5901 = !DILocalVariable(name: "devpriv", scope: !5890, file: !3, line: 393, type: !4328)
!5902 = !DILocation(line: 393, column: 27, scope: !5890)
!5903 = !DILocation(line: 393, column: 37, scope: !5890)
!5904 = !DILocation(line: 393, column: 42, scope: !5890)
!5905 = !DILocalVariable(name: "i", scope: !5890, file: !3, line: 394, type: !148)
!5906 = !DILocation(line: 394, column: 6, scope: !5890)
!5907 = !DILocation(line: 397, column: 9, scope: !5908)
!5908 = distinct !DILexicalBlock(scope: !5890, file: !3, line: 397, column: 2)
!5909 = !DILocation(line: 397, column: 7, scope: !5908)
!5910 = !DILocation(line: 397, column: 14, scope: !5911)
!5911 = distinct !DILexicalBlock(scope: !5908, file: !3, line: 397, column: 2)
!5912 = !DILocation(line: 397, column: 18, scope: !5911)
!5913 = !DILocation(line: 397, column: 16, scope: !5911)
!5914 = !DILocation(line: 397, column: 2, scope: !5908)
!5915 = !DILocalVariable(name: "chan", scope: !5916, file: !3, line: 398, type: !7)
!5916 = distinct !DILexicalBlock(scope: !5911, file: !3, line: 397, column: 31)
!5917 = !DILocation(line: 398, column: 16, scope: !5916)
!5918 = !DILocation(line: 398, column: 23, scope: !5916)
!5919 = !DILocalVariable(name: "range", scope: !5916, file: !3, line: 399, type: !7)
!5920 = !DILocation(line: 399, column: 16, scope: !5916)
!5921 = !DILocation(line: 399, column: 24, scope: !5916)
!5922 = !DILocalVariable(name: "val", scope: !5916, file: !3, line: 400, type: !7)
!5923 = !DILocation(line: 400, column: 16, scope: !5916)
!5924 = !DILocation(line: 402, column: 9, scope: !5916)
!5925 = !DILocation(line: 403, column: 9, scope: !5916)
!5926 = !DILocation(line: 402, column: 37, scope: !5916)
!5927 = !DILocation(line: 404, column: 9, scope: !5916)
!5928 = !DILocation(line: 403, column: 39, scope: !5916)
!5929 = !DILocation(line: 402, column: 7, scope: !5916)
!5930 = !DILocation(line: 406, column: 32, scope: !5931)
!5931 = distinct !DILexicalBlock(scope: !5916, file: !3, line: 406, column: 7)
!5932 = !DILocation(line: 406, column: 35, scope: !5931)
!5933 = !DILocation(line: 406, column: 7, scope: !5931)
!5934 = !DILocation(line: 406, column: 7, scope: !5916)
!5935 = !DILocation(line: 407, column: 8, scope: !5931)
!5936 = !DILocation(line: 407, column: 4, scope: !5931)
!5937 = !DILocation(line: 409, column: 8, scope: !5916)
!5938 = !DILocation(line: 409, column: 13, scope: !5916)
!5939 = !DILocation(line: 409, column: 18, scope: !5916)
!5940 = !DILocation(line: 409, column: 25, scope: !5916)
!5941 = !DILocation(line: 409, column: 3, scope: !5916)
!5942 = !DILocation(line: 410, column: 2, scope: !5916)
!5943 = !DILocation(line: 397, column: 27, scope: !5911)
!5944 = !DILocation(line: 397, column: 2, scope: !5911)
!5945 = distinct !{!5945, !5914, !5946}
!5946 = !DILocation(line: 410, column: 2, scope: !5908)
!5947 = !DILocation(line: 413, column: 6, scope: !5890)
!5948 = !DILocation(line: 413, column: 11, scope: !5890)
!5949 = !DILocation(line: 413, column: 18, scope: !5890)
!5950 = !DILocation(line: 413, column: 2, scope: !5890)
!5951 = !DILocation(line: 416, column: 18, scope: !5890)
!5952 = !DILocation(line: 416, column: 2, scope: !5890)
!5953 = !DILocation(line: 416, column: 11, scope: !5890)
!5954 = !DILocation(line: 416, column: 16, scope: !5890)
!5955 = !DILocation(line: 417, column: 7, scope: !5890)
!5956 = !DILocation(line: 417, column: 16, scope: !5890)
!5957 = !DILocation(line: 417, column: 22, scope: !5890)
!5958 = !DILocation(line: 417, column: 27, scope: !5890)
!5959 = !DILocation(line: 417, column: 34, scope: !5890)
!5960 = !DILocation(line: 417, column: 2, scope: !5890)
!5961 = !DILocation(line: 420, column: 6, scope: !5962)
!5962 = distinct !DILexicalBlock(scope: !5890, file: !3, line: 420, column: 6)
!5963 = !DILocation(line: 420, column: 13, scope: !5962)
!5964 = !DILocation(line: 420, column: 6, scope: !5890)
!5965 = !DILocation(line: 421, column: 3, scope: !5962)
!5966 = !DILocation(line: 421, column: 12, scope: !5962)
!5967 = !DILocation(line: 421, column: 17, scope: !5962)
!5968 = !DILocation(line: 422, column: 1, scope: !5890)
!5969 = distinct !DISubprogram(name: "apci3120_timer_set_mode", scope: !3, file: !3, line: 356, type: !5831, scopeLine: 358, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!5970 = !DILocalVariable(name: "dev", arg: 1, scope: !5969, file: !3, line: 356, type: !197)
!5971 = !DILocation(line: 356, column: 59, scope: !5969)
!5972 = !DILocalVariable(name: "timer", arg: 2, scope: !5969, file: !3, line: 357, type: !7)
!5973 = !DILocation(line: 357, column: 22, scope: !5969)
!5974 = !DILocalVariable(name: "mode", arg: 3, scope: !5969, file: !3, line: 357, type: !7)
!5975 = !DILocation(line: 357, column: 42, scope: !5969)
!5976 = !DILocalVariable(name: "devpriv", scope: !5969, file: !3, line: 359, type: !4328)
!5977 = !DILocation(line: 359, column: 27, scope: !5969)
!5978 = !DILocation(line: 359, column: 37, scope: !5969)
!5979 = !DILocation(line: 359, column: 42, scope: !5969)
!5980 = !DILocation(line: 361, column: 26, scope: !5969)
!5981 = !DILocation(line: 361, column: 25, scope: !5969)
!5982 = !DILocation(line: 361, column: 2, scope: !5969)
!5983 = !DILocation(line: 361, column: 11, scope: !5969)
!5984 = !DILocation(line: 361, column: 22, scope: !5969)
!5985 = !DILocation(line: 362, column: 25, scope: !5969)
!5986 = !DILocation(line: 362, column: 2, scope: !5969)
!5987 = !DILocation(line: 362, column: 11, scope: !5969)
!5988 = !DILocation(line: 362, column: 22, scope: !5969)
!5989 = !DILocation(line: 363, column: 7, scope: !5969)
!5990 = !DILocation(line: 363, column: 16, scope: !5969)
!5991 = !DILocation(line: 363, column: 28, scope: !5969)
!5992 = !DILocation(line: 363, column: 33, scope: !5969)
!5993 = !DILocation(line: 363, column: 40, scope: !5969)
!5994 = !DILocation(line: 363, column: 2, scope: !5969)
!5995 = !DILocation(line: 364, column: 1, scope: !5969)
!5996 = distinct !DISubprogram(name: "apci3120_timer_enable", scope: !3, file: !3, line: 366, type: !5997, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!5997 = !DISubroutineType(types: !5998)
!5998 = !{null, !197, !7, !487}
!5999 = !DILocalVariable(name: "dev", arg: 1, scope: !5996, file: !3, line: 366, type: !197)
!6000 = !DILocation(line: 366, column: 57, scope: !5996)
!6001 = !DILocalVariable(name: "timer", arg: 2, scope: !5996, file: !3, line: 367, type: !7)
!6002 = !DILocation(line: 367, column: 20, scope: !5996)
!6003 = !DILocalVariable(name: "enable", arg: 3, scope: !5996, file: !3, line: 367, type: !487)
!6004 = !DILocation(line: 367, column: 32, scope: !5996)
!6005 = !DILocalVariable(name: "devpriv", scope: !5996, file: !3, line: 369, type: !4328)
!6006 = !DILocation(line: 369, column: 27, scope: !5996)
!6007 = !DILocation(line: 369, column: 37, scope: !5996)
!6008 = !DILocation(line: 369, column: 42, scope: !5996)
!6009 = !DILocation(line: 371, column: 6, scope: !6010)
!6010 = distinct !DILexicalBlock(scope: !5996, file: !3, line: 371, column: 6)
!6011 = !DILocation(line: 371, column: 6, scope: !5996)
!6012 = !DILocation(line: 372, column: 20, scope: !6010)
!6013 = !DILocation(line: 372, column: 3, scope: !6010)
!6014 = !DILocation(line: 372, column: 12, scope: !6010)
!6015 = !DILocation(line: 372, column: 17, scope: !6010)
!6016 = !DILocation(line: 374, column: 21, scope: !6010)
!6017 = !DILocation(line: 374, column: 20, scope: !6010)
!6018 = !DILocation(line: 374, column: 3, scope: !6010)
!6019 = !DILocation(line: 374, column: 12, scope: !6010)
!6020 = !DILocation(line: 374, column: 17, scope: !6010)
!6021 = !DILocation(line: 375, column: 7, scope: !5996)
!6022 = !DILocation(line: 375, column: 16, scope: !5996)
!6023 = !DILocation(line: 375, column: 22, scope: !5996)
!6024 = !DILocation(line: 375, column: 27, scope: !5996)
!6025 = !DILocation(line: 375, column: 34, scope: !5996)
!6026 = !DILocation(line: 375, column: 2, scope: !5996)
!6027 = !DILocation(line: 376, column: 1, scope: !5996)
!6028 = distinct !DISubprogram(name: "apci3120_ns_to_timer", scope: !3, file: !3, line: 268, type: !6029, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!6029 = !DISubroutineType(types: !6030)
!6030 = !{!7, !197, !7, !7, !7}
!6031 = !DILocalVariable(name: "dev", arg: 1, scope: !6028, file: !3, line: 268, type: !197)
!6032 = !DILocation(line: 268, column: 64, scope: !6028)
!6033 = !DILocalVariable(name: "timer", arg: 2, scope: !6028, file: !3, line: 269, type: !7)
!6034 = !DILocation(line: 269, column: 20, scope: !6028)
!6035 = !DILocalVariable(name: "ns", arg: 3, scope: !6028, file: !3, line: 270, type: !7)
!6036 = !DILocation(line: 270, column: 20, scope: !6028)
!6037 = !DILocalVariable(name: "flags", arg: 4, scope: !6028, file: !3, line: 271, type: !7)
!6038 = !DILocation(line: 271, column: 20, scope: !6028)
!6039 = !DILocalVariable(name: "devpriv", scope: !6028, file: !3, line: 273, type: !4328)
!6040 = !DILocation(line: 273, column: 27, scope: !6028)
!6041 = !DILocation(line: 273, column: 37, scope: !6028)
!6042 = !DILocation(line: 273, column: 42, scope: !6028)
!6043 = !DILocalVariable(name: "prescale", scope: !6028, file: !3, line: 274, type: !7)
!6044 = !DILocation(line: 274, column: 15, scope: !6028)
!6045 = !DILocation(line: 274, column: 27, scope: !6028)
!6046 = !DILocation(line: 274, column: 33, scope: !6028)
!6047 = !DILocation(line: 274, column: 26, scope: !6028)
!6048 = !DILocalVariable(name: "timer_base", scope: !6028, file: !3, line: 275, type: !7)
!6049 = !DILocation(line: 275, column: 15, scope: !6028)
!6050 = !DILocation(line: 275, column: 28, scope: !6028)
!6051 = !DILocation(line: 275, column: 37, scope: !6028)
!6052 = !DILocation(line: 275, column: 48, scope: !6028)
!6053 = !DILocation(line: 275, column: 46, scope: !6028)
!6054 = !DILocalVariable(name: "divisor", scope: !6028, file: !3, line: 276, type: !7)
!6055 = !DILocation(line: 276, column: 15, scope: !6028)
!6056 = !DILocation(line: 278, column: 10, scope: !6028)
!6057 = !DILocation(line: 278, column: 16, scope: !6028)
!6058 = !DILocation(line: 278, column: 2, scope: !6028)
!6059 = !DILocation(line: 280, column: 13, scope: !6060)
!6060 = distinct !DILexicalBlock(scope: !6028, file: !3, line: 278, column: 35)
!6061 = !DILocation(line: 280, column: 11, scope: !6060)
!6062 = !DILocation(line: 281, column: 3, scope: !6060)
!6063 = !DILocation(line: 283, column: 13, scope: !6060)
!6064 = !DILocation(line: 283, column: 18, scope: !6060)
!6065 = !DILocation(line: 283, column: 16, scope: !6060)
!6066 = !DILocation(line: 283, column: 11, scope: !6060)
!6067 = !DILocation(line: 284, column: 3, scope: !6060)
!6068 = !DILocalVariable(name: "__x", scope: !6069, file: !3, line: 287, type: !7)
!6069 = distinct !DILexicalBlock(scope: !6060, file: !3, line: 287, column: 13)
!6070 = !DILocation(line: 287, column: 13, scope: !6069)
!6071 = !DILocalVariable(name: "__d", scope: !6069, file: !3, line: 287, type: !7)
!6072 = !DILocation(line: 287, column: 11, scope: !6060)
!6073 = !DILocation(line: 288, column: 3, scope: !6060)
!6074 = !DILocation(line: 291, column: 6, scope: !6075)
!6075 = distinct !DILexicalBlock(scope: !6028, file: !3, line: 291, column: 6)
!6076 = !DILocation(line: 291, column: 12, scope: !6075)
!6077 = !DILocation(line: 291, column: 6, scope: !6028)
!6078 = !DILocation(line: 293, column: 7, scope: !6079)
!6079 = distinct !DILexicalBlock(scope: !6080, file: !3, line: 293, column: 7)
!6080 = distinct !DILexicalBlock(scope: !6075, file: !3, line: 291, column: 18)
!6081 = !DILocation(line: 293, column: 15, scope: !6079)
!6082 = !DILocation(line: 293, column: 7, scope: !6080)
!6083 = !DILocation(line: 294, column: 12, scope: !6079)
!6084 = !DILocation(line: 294, column: 4, scope: !6079)
!6085 = !DILocation(line: 295, column: 2, scope: !6080)
!6086 = !DILocation(line: 297, column: 7, scope: !6087)
!6087 = distinct !DILexicalBlock(scope: !6088, file: !3, line: 297, column: 7)
!6088 = distinct !DILexicalBlock(scope: !6075, file: !3, line: 295, column: 9)
!6089 = !DILocation(line: 297, column: 15, scope: !6087)
!6090 = !DILocation(line: 297, column: 7, scope: !6088)
!6091 = !DILocation(line: 298, column: 12, scope: !6087)
!6092 = !DILocation(line: 298, column: 4, scope: !6087)
!6093 = !DILocation(line: 301, column: 6, scope: !6094)
!6094 = distinct !DILexicalBlock(scope: !6028, file: !3, line: 301, column: 6)
!6095 = !DILocation(line: 301, column: 14, scope: !6094)
!6096 = !DILocation(line: 301, column: 6, scope: !6028)
!6097 = !DILocation(line: 302, column: 11, scope: !6094)
!6098 = !DILocation(line: 302, column: 3, scope: !6094)
!6099 = !DILocation(line: 304, column: 9, scope: !6028)
!6100 = !DILocation(line: 304, column: 2, scope: !6028)
!6101 = distinct !DISubprogram(name: "apci3120_timer_write", scope: !3, file: !3, line: 313, type: !5831, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!6102 = !DILocalVariable(name: "dev", arg: 1, scope: !6101, file: !3, line: 313, type: !197)
!6103 = !DILocation(line: 313, column: 56, scope: !6101)
!6104 = !DILocalVariable(name: "timer", arg: 2, scope: !6101, file: !3, line: 314, type: !7)
!6105 = !DILocation(line: 314, column: 19, scope: !6101)
!6106 = !DILocalVariable(name: "val", arg: 3, scope: !6101, file: !3, line: 314, type: !7)
!6107 = !DILocation(line: 314, column: 39, scope: !6101)
!6108 = !DILocalVariable(name: "devpriv", scope: !6101, file: !3, line: 316, type: !4328)
!6109 = !DILocation(line: 316, column: 27, scope: !6101)
!6110 = !DILocation(line: 316, column: 37, scope: !6101)
!6111 = !DILocation(line: 316, column: 42, scope: !6101)
!6112 = !DILocation(line: 319, column: 7, scope: !6101)
!6113 = !DILocation(line: 320, column: 7, scope: !6101)
!6114 = !DILocation(line: 319, column: 47, scope: !6101)
!6115 = !DILocation(line: 321, column: 7, scope: !6101)
!6116 = !DILocation(line: 321, column: 12, scope: !6101)
!6117 = !DILocation(line: 321, column: 19, scope: !6101)
!6118 = !DILocation(line: 319, column: 2, scope: !6101)
!6119 = !DILocation(line: 322, column: 7, scope: !6101)
!6120 = !DILocation(line: 322, column: 11, scope: !6101)
!6121 = !DILocation(line: 322, column: 21, scope: !6101)
!6122 = !DILocation(line: 322, column: 26, scope: !6101)
!6123 = !DILocation(line: 322, column: 33, scope: !6101)
!6124 = !DILocation(line: 322, column: 2, scope: !6101)
!6125 = !DILocation(line: 324, column: 6, scope: !6126)
!6126 = distinct !DILexicalBlock(scope: !6101, file: !3, line: 324, column: 6)
!6127 = !DILocation(line: 324, column: 12, scope: !6126)
!6128 = !DILocation(line: 324, column: 6, scope: !6101)
!6129 = !DILocation(line: 326, column: 8, scope: !6130)
!6130 = distinct !DILexicalBlock(scope: !6126, file: !3, line: 324, column: 18)
!6131 = !DILocation(line: 327, column: 8, scope: !6130)
!6132 = !DILocation(line: 326, column: 48, scope: !6130)
!6133 = !DILocation(line: 328, column: 8, scope: !6130)
!6134 = !DILocation(line: 328, column: 13, scope: !6130)
!6135 = !DILocation(line: 328, column: 20, scope: !6130)
!6136 = !DILocation(line: 326, column: 3, scope: !6130)
!6137 = !DILocation(line: 329, column: 9, scope: !6130)
!6138 = !DILocation(line: 329, column: 13, scope: !6130)
!6139 = !DILocation(line: 329, column: 20, scope: !6130)
!6140 = !DILocation(line: 329, column: 8, scope: !6130)
!6141 = !DILocation(line: 329, column: 30, scope: !6130)
!6142 = !DILocation(line: 329, column: 35, scope: !6130)
!6143 = !DILocation(line: 329, column: 42, scope: !6130)
!6144 = !DILocation(line: 329, column: 3, scope: !6130)
!6145 = !DILocation(line: 330, column: 2, scope: !6130)
!6146 = !DILocation(line: 331, column: 1, scope: !6101)
!6147 = distinct !DISubprogram(name: "apci3120_ai_eoc", scope: !3, file: !3, line: 690, type: !6148, scopeLine: 694, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!6148 = !DISubroutineType(types: !6149)
!6149 = !{!148, !197, !3828, !3927, !321}
!6150 = !DILocalVariable(name: "dev", arg: 1, scope: !6147, file: !3, line: 690, type: !197)
!6151 = !DILocation(line: 690, column: 50, scope: !6147)
!6152 = !DILocalVariable(name: "s", arg: 2, scope: !6147, file: !3, line: 691, type: !3828)
!6153 = !DILocation(line: 691, column: 32, scope: !6147)
!6154 = !DILocalVariable(name: "insn", arg: 3, scope: !6147, file: !3, line: 692, type: !3927)
!6155 = !DILocation(line: 692, column: 27, scope: !6147)
!6156 = !DILocalVariable(name: "context", arg: 4, scope: !6147, file: !3, line: 693, type: !321)
!6157 = !DILocation(line: 693, column: 21, scope: !6147)
!6158 = !DILocalVariable(name: "status", scope: !6147, file: !3, line: 695, type: !7)
!6159 = !DILocation(line: 695, column: 15, scope: !6147)
!6160 = !DILocation(line: 697, column: 15, scope: !6147)
!6161 = !DILocation(line: 697, column: 20, scope: !6147)
!6162 = !DILocation(line: 697, column: 27, scope: !6147)
!6163 = !DILocation(line: 697, column: 11, scope: !6147)
!6164 = !DILocation(line: 697, column: 9, scope: !6147)
!6165 = !DILocation(line: 698, column: 7, scope: !6166)
!6166 = distinct !DILexicalBlock(scope: !6147, file: !3, line: 698, column: 6)
!6167 = !DILocation(line: 698, column: 14, scope: !6166)
!6168 = !DILocation(line: 698, column: 41, scope: !6166)
!6169 = !DILocation(line: 698, column: 6, scope: !6147)
!6170 = !DILocation(line: 699, column: 3, scope: !6166)
!6171 = !DILocation(line: 700, column: 2, scope: !6147)
!6172 = !DILocation(line: 701, column: 1, scope: !6147)
!6173 = distinct !DISubprogram(name: "comedi_range_is_unipolar", scope: !132, file: !132, line: 676, type: !6174, scopeLine: 678, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!6174 = !DISubroutineType(types: !6175)
!6175 = !{!487, !3828, !7}
!6176 = !DILocalVariable(name: "s", arg: 1, scope: !6173, file: !132, line: 676, type: !3828)
!6177 = !DILocation(line: 676, column: 70, scope: !6173)
!6178 = !DILocalVariable(name: "range", arg: 2, scope: !6173, file: !132, line: 677, type: !7)
!6179 = !DILocation(line: 677, column: 23, scope: !6173)
!6180 = !DILocation(line: 679, column: 9, scope: !6173)
!6181 = !DILocation(line: 679, column: 12, scope: !6173)
!6182 = !DILocation(line: 679, column: 25, scope: !6173)
!6183 = !DILocation(line: 679, column: 31, scope: !6173)
!6184 = !DILocation(line: 679, column: 38, scope: !6173)
!6185 = !DILocation(line: 679, column: 42, scope: !6173)
!6186 = !DILocation(line: 679, column: 2, scope: !6173)
!6187 = distinct !DISubprogram(name: "comedi_check_trigger_src", scope: !132, file: !132, line: 859, type: !6188, scopeLine: 861, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!6188 = !DISubroutineType(types: !6189)
!6189 = !{!148, !2680, !7}
!6190 = !DILocalVariable(name: "src", arg: 1, scope: !6187, file: !132, line: 859, type: !2680)
!6191 = !DILocation(line: 859, column: 58, scope: !6187)
!6192 = !DILocalVariable(name: "flags", arg: 2, scope: !6187, file: !132, line: 860, type: !7)
!6193 = !DILocation(line: 860, column: 22, scope: !6187)
!6194 = !DILocalVariable(name: "orig_src", scope: !6187, file: !132, line: 862, type: !7)
!6195 = !DILocation(line: 862, column: 15, scope: !6187)
!6196 = !DILocation(line: 862, column: 27, scope: !6187)
!6197 = !DILocation(line: 862, column: 26, scope: !6187)
!6198 = !DILocation(line: 864, column: 9, scope: !6187)
!6199 = !DILocation(line: 864, column: 20, scope: !6187)
!6200 = !DILocation(line: 864, column: 18, scope: !6187)
!6201 = !DILocation(line: 864, column: 3, scope: !6187)
!6202 = !DILocation(line: 864, column: 7, scope: !6187)
!6203 = !DILocation(line: 865, column: 7, scope: !6204)
!6204 = distinct !DILexicalBlock(scope: !6187, file: !132, line: 865, column: 6)
!6205 = !DILocation(line: 865, column: 6, scope: !6204)
!6206 = !DILocation(line: 865, column: 11, scope: !6204)
!6207 = !DILocation(line: 865, column: 27, scope: !6204)
!6208 = !DILocation(line: 865, column: 31, scope: !6204)
!6209 = !DILocation(line: 865, column: 30, scope: !6204)
!6210 = !DILocation(line: 865, column: 38, scope: !6204)
!6211 = !DILocation(line: 865, column: 35, scope: !6204)
!6212 = !DILocation(line: 865, column: 6, scope: !6187)
!6213 = !DILocation(line: 866, column: 3, scope: !6204)
!6214 = !DILocation(line: 867, column: 2, scope: !6187)
!6215 = !DILocation(line: 868, column: 1, scope: !6187)
!6216 = distinct !DISubprogram(name: "comedi_check_trigger_is_unique", scope: !132, file: !132, line: 878, type: !6217, scopeLine: 879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!6217 = !DISubroutineType(types: !6218)
!6218 = !{!148, !7}
!6219 = !DILocalVariable(name: "src", arg: 1, scope: !6216, file: !132, line: 878, type: !7)
!6220 = !DILocation(line: 878, column: 63, scope: !6216)
!6221 = !DILocation(line: 881, column: 7, scope: !6222)
!6222 = distinct !DILexicalBlock(scope: !6216, file: !132, line: 881, column: 6)
!6223 = !DILocation(line: 881, column: 14, scope: !6222)
!6224 = !DILocation(line: 881, column: 18, scope: !6222)
!6225 = !DILocation(line: 881, column: 11, scope: !6222)
!6226 = !DILocation(line: 881, column: 24, scope: !6222)
!6227 = !DILocation(line: 881, column: 6, scope: !6216)
!6228 = !DILocation(line: 882, column: 3, scope: !6222)
!6229 = !DILocation(line: 883, column: 2, scope: !6216)
!6230 = !DILocation(line: 884, column: 1, scope: !6216)
!6231 = distinct !DISubprogram(name: "comedi_check_trigger_arg_is", scope: !132, file: !132, line: 897, type: !6188, scopeLine: 899, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!6232 = !DILocalVariable(name: "arg", arg: 1, scope: !6231, file: !132, line: 897, type: !2680)
!6233 = !DILocation(line: 897, column: 61, scope: !6231)
!6234 = !DILocalVariable(name: "val", arg: 2, scope: !6231, file: !132, line: 898, type: !7)
!6235 = !DILocation(line: 898, column: 25, scope: !6231)
!6236 = !DILocation(line: 900, column: 7, scope: !6237)
!6237 = distinct !DILexicalBlock(scope: !6231, file: !132, line: 900, column: 6)
!6238 = !DILocation(line: 900, column: 6, scope: !6237)
!6239 = !DILocation(line: 900, column: 14, scope: !6237)
!6240 = !DILocation(line: 900, column: 11, scope: !6237)
!6241 = !DILocation(line: 900, column: 6, scope: !6231)
!6242 = !DILocation(line: 901, column: 10, scope: !6243)
!6243 = distinct !DILexicalBlock(scope: !6237, file: !132, line: 900, column: 19)
!6244 = !DILocation(line: 901, column: 4, scope: !6243)
!6245 = !DILocation(line: 901, column: 8, scope: !6243)
!6246 = !DILocation(line: 902, column: 3, scope: !6243)
!6247 = !DILocation(line: 904, column: 2, scope: !6231)
!6248 = !DILocation(line: 905, column: 1, scope: !6231)
!6249 = distinct !DISubprogram(name: "comedi_check_trigger_arg_min", scope: !132, file: !132, line: 918, type: !6188, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!6250 = !DILocalVariable(name: "arg", arg: 1, scope: !6249, file: !132, line: 918, type: !2680)
!6251 = !DILocation(line: 918, column: 62, scope: !6249)
!6252 = !DILocalVariable(name: "val", arg: 2, scope: !6249, file: !132, line: 919, type: !7)
!6253 = !DILocation(line: 919, column: 26, scope: !6249)
!6254 = !DILocation(line: 921, column: 7, scope: !6255)
!6255 = distinct !DILexicalBlock(scope: !6249, file: !132, line: 921, column: 6)
!6256 = !DILocation(line: 921, column: 6, scope: !6255)
!6257 = !DILocation(line: 921, column: 13, scope: !6255)
!6258 = !DILocation(line: 921, column: 11, scope: !6255)
!6259 = !DILocation(line: 921, column: 6, scope: !6249)
!6260 = !DILocation(line: 922, column: 10, scope: !6261)
!6261 = distinct !DILexicalBlock(scope: !6255, file: !132, line: 921, column: 18)
!6262 = !DILocation(line: 922, column: 4, scope: !6261)
!6263 = !DILocation(line: 922, column: 8, scope: !6261)
!6264 = !DILocation(line: 923, column: 3, scope: !6261)
!6265 = !DILocation(line: 925, column: 2, scope: !6249)
!6266 = !DILocation(line: 926, column: 1, scope: !6249)
!6267 = distinct !DISubprogram(name: "apci3120_setup_dma", scope: !3, file: !3, line: 203, type: !5647, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!6268 = !DILocalVariable(name: "dev", arg: 1, scope: !6267, file: !3, line: 203, type: !197)
!6269 = !DILocation(line: 203, column: 54, scope: !6267)
!6270 = !DILocalVariable(name: "s", arg: 2, scope: !6267, file: !3, line: 204, type: !3828)
!6271 = !DILocation(line: 204, column: 36, scope: !6267)
!6272 = !DILocalVariable(name: "devpriv", scope: !6267, file: !3, line: 206, type: !4328)
!6273 = !DILocation(line: 206, column: 27, scope: !6267)
!6274 = !DILocation(line: 206, column: 37, scope: !6267)
!6275 = !DILocation(line: 206, column: 42, scope: !6267)
!6276 = !DILocalVariable(name: "cmd", scope: !6267, file: !3, line: 207, type: !3948)
!6277 = !DILocation(line: 207, column: 21, scope: !6267)
!6278 = !DILocation(line: 207, column: 28, scope: !6267)
!6279 = !DILocation(line: 207, column: 31, scope: !6267)
!6280 = !DILocation(line: 207, column: 38, scope: !6267)
!6281 = !DILocalVariable(name: "dmabuf0", scope: !6267, file: !3, line: 208, type: !4624)
!6282 = !DILocation(line: 208, column: 26, scope: !6267)
!6283 = !DILocation(line: 208, column: 37, scope: !6267)
!6284 = !DILocation(line: 208, column: 46, scope: !6267)
!6285 = !DILocalVariable(name: "dmabuf1", scope: !6267, file: !3, line: 209, type: !4624)
!6286 = !DILocation(line: 209, column: 26, scope: !6267)
!6287 = !DILocation(line: 209, column: 37, scope: !6267)
!6288 = !DILocation(line: 209, column: 46, scope: !6267)
!6289 = !DILocalVariable(name: "dmalen0", scope: !6267, file: !3, line: 210, type: !7)
!6290 = !DILocation(line: 210, column: 15, scope: !6267)
!6291 = !DILocation(line: 210, column: 25, scope: !6267)
!6292 = !DILocation(line: 210, column: 34, scope: !6267)
!6293 = !DILocalVariable(name: "dmalen1", scope: !6267, file: !3, line: 211, type: !7)
!6294 = !DILocation(line: 211, column: 15, scope: !6267)
!6295 = !DILocation(line: 211, column: 25, scope: !6267)
!6296 = !DILocation(line: 211, column: 34, scope: !6267)
!6297 = !DILocalVariable(name: "scan_bytes", scope: !6267, file: !3, line: 212, type: !7)
!6298 = !DILocation(line: 212, column: 15, scope: !6267)
!6299 = !DILocation(line: 214, column: 39, scope: !6267)
!6300 = !DILocation(line: 214, column: 42, scope: !6267)
!6301 = !DILocation(line: 214, column: 47, scope: !6267)
!6302 = !DILocation(line: 214, column: 15, scope: !6267)
!6303 = !DILocation(line: 214, column: 13, scope: !6267)
!6304 = !DILocation(line: 216, column: 6, scope: !6305)
!6305 = distinct !DILexicalBlock(scope: !6267, file: !3, line: 216, column: 6)
!6306 = !DILocation(line: 216, column: 11, scope: !6305)
!6307 = !DILocation(line: 216, column: 20, scope: !6305)
!6308 = !DILocation(line: 216, column: 6, scope: !6267)
!6309 = !DILocation(line: 221, column: 7, scope: !6310)
!6310 = distinct !DILexicalBlock(scope: !6311, file: !3, line: 221, column: 7)
!6311 = distinct !DILexicalBlock(scope: !6305, file: !3, line: 216, column: 35)
!6312 = !DILocation(line: 221, column: 18, scope: !6310)
!6313 = !DILocation(line: 221, column: 23, scope: !6310)
!6314 = !DILocation(line: 221, column: 34, scope: !6310)
!6315 = !DILocation(line: 221, column: 32, scope: !6310)
!6316 = !DILocation(line: 221, column: 15, scope: !6310)
!6317 = !DILocation(line: 221, column: 7, scope: !6311)
!6318 = !DILocation(line: 222, column: 14, scope: !6310)
!6319 = !DILocation(line: 222, column: 19, scope: !6310)
!6320 = !DILocation(line: 222, column: 30, scope: !6310)
!6321 = !DILocation(line: 222, column: 28, scope: !6310)
!6322 = !DILocation(line: 222, column: 12, scope: !6310)
!6323 = !DILocation(line: 222, column: 4, scope: !6310)
!6324 = !DILocation(line: 223, column: 12, scope: !6325)
!6325 = distinct !DILexicalBlock(scope: !6310, file: !3, line: 223, column: 12)
!6326 = !DILocation(line: 223, column: 23, scope: !6325)
!6327 = !DILocation(line: 223, column: 28, scope: !6325)
!6328 = !DILocation(line: 223, column: 39, scope: !6325)
!6329 = !DILocation(line: 223, column: 37, scope: !6325)
!6330 = !DILocation(line: 223, column: 52, scope: !6325)
!6331 = !DILocation(line: 223, column: 50, scope: !6325)
!6332 = !DILocation(line: 223, column: 20, scope: !6325)
!6333 = !DILocation(line: 223, column: 12, scope: !6310)
!6334 = !DILocation(line: 224, column: 14, scope: !6325)
!6335 = !DILocation(line: 224, column: 19, scope: !6325)
!6336 = !DILocation(line: 224, column: 30, scope: !6325)
!6337 = !DILocation(line: 224, column: 28, scope: !6325)
!6338 = !DILocation(line: 224, column: 43, scope: !6325)
!6339 = !DILocation(line: 224, column: 41, scope: !6325)
!6340 = !DILocation(line: 224, column: 12, scope: !6325)
!6341 = !DILocation(line: 224, column: 4, scope: !6325)
!6342 = !DILocation(line: 225, column: 2, scope: !6311)
!6343 = !DILocation(line: 227, column: 6, scope: !6344)
!6344 = distinct !DILexicalBlock(scope: !6267, file: !3, line: 227, column: 6)
!6345 = !DILocation(line: 227, column: 11, scope: !6344)
!6346 = !DILocation(line: 227, column: 17, scope: !6344)
!6347 = !DILocation(line: 227, column: 6, scope: !6267)
!6348 = !DILocation(line: 229, column: 7, scope: !6349)
!6349 = distinct !DILexicalBlock(scope: !6350, file: !3, line: 229, column: 7)
!6350 = distinct !DILexicalBlock(scope: !6344, file: !3, line: 227, column: 34)
!6351 = !DILocation(line: 229, column: 17, scope: !6349)
!6352 = !DILocation(line: 229, column: 15, scope: !6349)
!6353 = !DILocation(line: 229, column: 7, scope: !6350)
!6354 = !DILocation(line: 230, column: 14, scope: !6355)
!6355 = distinct !DILexicalBlock(scope: !6349, file: !3, line: 229, column: 29)
!6356 = !DILocation(line: 230, column: 12, scope: !6355)
!6357 = !DILocation(line: 231, column: 8, scope: !6358)
!6358 = distinct !DILexicalBlock(scope: !6355, file: !3, line: 231, column: 8)
!6359 = !DILocation(line: 231, column: 13, scope: !6358)
!6360 = !DILocation(line: 231, column: 26, scope: !6358)
!6361 = !DILocation(line: 231, column: 8, scope: !6355)
!6362 = !DILocation(line: 232, column: 13, scope: !6358)
!6363 = !DILocation(line: 232, column: 5, scope: !6358)
!6364 = !DILocation(line: 233, column: 3, scope: !6355)
!6365 = !DILocation(line: 234, column: 7, scope: !6366)
!6366 = distinct !DILexicalBlock(scope: !6350, file: !3, line: 234, column: 7)
!6367 = !DILocation(line: 234, column: 17, scope: !6366)
!6368 = !DILocation(line: 234, column: 15, scope: !6366)
!6369 = !DILocation(line: 234, column: 7, scope: !6350)
!6370 = !DILocation(line: 235, column: 14, scope: !6371)
!6371 = distinct !DILexicalBlock(scope: !6366, file: !3, line: 234, column: 29)
!6372 = !DILocation(line: 235, column: 12, scope: !6371)
!6373 = !DILocation(line: 236, column: 8, scope: !6374)
!6374 = distinct !DILexicalBlock(scope: !6371, file: !3, line: 236, column: 8)
!6375 = !DILocation(line: 236, column: 13, scope: !6374)
!6376 = !DILocation(line: 236, column: 26, scope: !6374)
!6377 = !DILocation(line: 236, column: 8, scope: !6371)
!6378 = !DILocation(line: 237, column: 13, scope: !6374)
!6379 = !DILocation(line: 237, column: 5, scope: !6374)
!6380 = !DILocation(line: 238, column: 8, scope: !6381)
!6381 = distinct !DILexicalBlock(scope: !6371, file: !3, line: 238, column: 8)
!6382 = !DILocation(line: 238, column: 16, scope: !6381)
!6383 = !DILocation(line: 238, column: 8, scope: !6371)
!6384 = !DILocation(line: 239, column: 13, scope: !6381)
!6385 = !DILocation(line: 239, column: 5, scope: !6381)
!6386 = !DILocation(line: 240, column: 3, scope: !6371)
!6387 = !DILocation(line: 241, column: 2, scope: !6350)
!6388 = !DILocation(line: 243, column: 7, scope: !6389)
!6389 = distinct !DILexicalBlock(scope: !6390, file: !3, line: 243, column: 7)
!6390 = distinct !DILexicalBlock(scope: !6344, file: !3, line: 241, column: 9)
!6391 = !DILocation(line: 243, column: 17, scope: !6389)
!6392 = !DILocation(line: 243, column: 20, scope: !6389)
!6393 = !DILocation(line: 243, column: 27, scope: !6389)
!6394 = !DILocation(line: 243, column: 15, scope: !6389)
!6395 = !DILocation(line: 243, column: 7, scope: !6390)
!6396 = !DILocation(line: 244, column: 14, scope: !6389)
!6397 = !DILocation(line: 244, column: 17, scope: !6389)
!6398 = !DILocation(line: 244, column: 24, scope: !6389)
!6399 = !DILocation(line: 244, column: 12, scope: !6389)
!6400 = !DILocation(line: 244, column: 4, scope: !6389)
!6401 = !DILocation(line: 245, column: 7, scope: !6402)
!6402 = distinct !DILexicalBlock(scope: !6390, file: !3, line: 245, column: 7)
!6403 = !DILocation(line: 245, column: 17, scope: !6402)
!6404 = !DILocation(line: 245, column: 20, scope: !6402)
!6405 = !DILocation(line: 245, column: 27, scope: !6402)
!6406 = !DILocation(line: 245, column: 15, scope: !6402)
!6407 = !DILocation(line: 245, column: 7, scope: !6390)
!6408 = !DILocation(line: 246, column: 14, scope: !6402)
!6409 = !DILocation(line: 246, column: 17, scope: !6402)
!6410 = !DILocation(line: 246, column: 24, scope: !6402)
!6411 = !DILocation(line: 246, column: 12, scope: !6402)
!6412 = !DILocation(line: 246, column: 4, scope: !6402)
!6413 = !DILocation(line: 248, column: 22, scope: !6267)
!6414 = !DILocation(line: 248, column: 2, scope: !6267)
!6415 = !DILocation(line: 248, column: 11, scope: !6267)
!6416 = !DILocation(line: 248, column: 20, scope: !6267)
!6417 = !DILocation(line: 249, column: 22, scope: !6267)
!6418 = !DILocation(line: 249, column: 2, scope: !6267)
!6419 = !DILocation(line: 249, column: 11, scope: !6267)
!6420 = !DILocation(line: 249, column: 20, scope: !6267)
!6421 = !DILocation(line: 251, column: 20, scope: !6267)
!6422 = !DILocation(line: 251, column: 25, scope: !6267)
!6423 = !DILocation(line: 251, column: 2, scope: !6267)
!6424 = !DILocation(line: 252, column: 1, scope: !6267)
!6425 = distinct !DISubprogram(name: "comedi_samples_to_bytes", scope: !132, file: !132, line: 839, type: !5772, scopeLine: 841, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!6426 = !DILocalVariable(name: "s", arg: 1, scope: !6425, file: !132, line: 839, type: !3828)
!6427 = !DILocation(line: 839, column: 77, scope: !6425)
!6428 = !DILocalVariable(name: "nsamples", arg: 2, scope: !6425, file: !132, line: 840, type: !7)
!6429 = !DILocation(line: 840, column: 23, scope: !6425)
!6430 = !DILocation(line: 842, column: 9, scope: !6425)
!6431 = !DILocation(line: 842, column: 41, scope: !6425)
!6432 = !DILocation(line: 842, column: 21, scope: !6425)
!6433 = !DILocation(line: 842, column: 18, scope: !6425)
!6434 = !DILocation(line: 842, column: 2, scope: !6425)
!6435 = distinct !DISubprogram(name: "apci3120_ao_ready", scope: !3, file: !3, line: 747, type: !6148, scopeLine: 751, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!6436 = !DILocalVariable(name: "dev", arg: 1, scope: !6435, file: !3, line: 747, type: !197)
!6437 = !DILocation(line: 747, column: 52, scope: !6435)
!6438 = !DILocalVariable(name: "s", arg: 2, scope: !6435, file: !3, line: 748, type: !3828)
!6439 = !DILocation(line: 748, column: 34, scope: !6435)
!6440 = !DILocalVariable(name: "insn", arg: 3, scope: !6435, file: !3, line: 749, type: !3927)
!6441 = !DILocation(line: 749, column: 29, scope: !6435)
!6442 = !DILocalVariable(name: "context", arg: 4, scope: !6435, file: !3, line: 750, type: !321)
!6443 = !DILocation(line: 750, column: 23, scope: !6435)
!6444 = !DILocalVariable(name: "status", scope: !6435, file: !3, line: 752, type: !7)
!6445 = !DILocation(line: 752, column: 15, scope: !6435)
!6446 = !DILocation(line: 754, column: 15, scope: !6435)
!6447 = !DILocation(line: 754, column: 20, scope: !6435)
!6448 = !DILocation(line: 754, column: 27, scope: !6435)
!6449 = !DILocation(line: 754, column: 11, scope: !6435)
!6450 = !DILocation(line: 754, column: 9, scope: !6435)
!6451 = !DILocation(line: 755, column: 6, scope: !6452)
!6452 = distinct !DILexicalBlock(scope: !6435, file: !3, line: 755, column: 6)
!6453 = !DILocation(line: 755, column: 13, scope: !6452)
!6454 = !DILocation(line: 755, column: 6, scope: !6435)
!6455 = !DILocation(line: 756, column: 3, scope: !6452)
!6456 = !DILocation(line: 757, column: 2, scope: !6435)
!6457 = !DILocation(line: 758, column: 1, scope: !6435)
!6458 = distinct !DISubprogram(name: "apci3120_timer_read", scope: !3, file: !3, line: 333, type: !6459, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!6459 = !DISubroutineType(types: !6460)
!6460 = !{!7, !197, !7}
!6461 = !DILocalVariable(name: "dev", arg: 1, scope: !6458, file: !3, line: 333, type: !197)
!6462 = !DILocation(line: 333, column: 63, scope: !6458)
!6463 = !DILocalVariable(name: "timer", arg: 2, scope: !6458, file: !3, line: 334, type: !7)
!6464 = !DILocation(line: 334, column: 19, scope: !6458)
!6465 = !DILocalVariable(name: "devpriv", scope: !6458, file: !3, line: 336, type: !4328)
!6466 = !DILocation(line: 336, column: 27, scope: !6458)
!6467 = !DILocation(line: 336, column: 37, scope: !6458)
!6468 = !DILocation(line: 336, column: 42, scope: !6458)
!6469 = !DILocalVariable(name: "val", scope: !6458, file: !3, line: 337, type: !7)
!6470 = !DILocation(line: 337, column: 15, scope: !6458)
!6471 = !DILocation(line: 340, column: 7, scope: !6458)
!6472 = !DILocation(line: 341, column: 7, scope: !6458)
!6473 = !DILocation(line: 340, column: 47, scope: !6458)
!6474 = !DILocation(line: 342, column: 7, scope: !6458)
!6475 = !DILocation(line: 342, column: 12, scope: !6458)
!6476 = !DILocation(line: 342, column: 19, scope: !6458)
!6477 = !DILocation(line: 340, column: 2, scope: !6458)
!6478 = !DILocation(line: 343, column: 12, scope: !6458)
!6479 = !DILocation(line: 343, column: 17, scope: !6458)
!6480 = !DILocation(line: 343, column: 24, scope: !6458)
!6481 = !DILocation(line: 343, column: 8, scope: !6458)
!6482 = !DILocation(line: 343, column: 6, scope: !6458)
!6483 = !DILocation(line: 345, column: 6, scope: !6484)
!6484 = distinct !DILexicalBlock(scope: !6458, file: !3, line: 345, column: 6)
!6485 = !DILocation(line: 345, column: 12, scope: !6484)
!6486 = !DILocation(line: 345, column: 6, scope: !6458)
!6487 = !DILocation(line: 347, column: 8, scope: !6488)
!6488 = distinct !DILexicalBlock(scope: !6484, file: !3, line: 345, column: 18)
!6489 = !DILocation(line: 348, column: 8, scope: !6488)
!6490 = !DILocation(line: 347, column: 48, scope: !6488)
!6491 = !DILocation(line: 349, column: 8, scope: !6488)
!6492 = !DILocation(line: 349, column: 13, scope: !6488)
!6493 = !DILocation(line: 349, column: 20, scope: !6488)
!6494 = !DILocation(line: 347, column: 3, scope: !6488)
!6495 = !DILocation(line: 350, column: 15, scope: !6488)
!6496 = !DILocation(line: 350, column: 20, scope: !6488)
!6497 = !DILocation(line: 350, column: 27, scope: !6488)
!6498 = !DILocation(line: 350, column: 11, scope: !6488)
!6499 = !DILocation(line: 350, column: 49, scope: !6488)
!6500 = !DILocation(line: 350, column: 7, scope: !6488)
!6501 = !DILocation(line: 351, column: 2, scope: !6488)
!6502 = !DILocation(line: 353, column: 9, scope: !6458)
!6503 = !DILocation(line: 353, column: 2, scope: !6458)
!6504 = distinct !DISubprogram(name: "apci3120_pci_probe", scope: !3, file: !3, line: 1094, type: !4033, scopeLine: 1096, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !244)
!6505 = !DILocalVariable(name: "dev", arg: 1, scope: !6504, file: !3, line: 1094, type: !4035)
!6506 = !DILocation(line: 1094, column: 47, scope: !6504)
!6507 = !DILocalVariable(name: "id", arg: 2, scope: !6504, file: !3, line: 1095, type: !4020)
!6508 = !DILocation(line: 1095, column: 38, scope: !6504)
!6509 = !DILocation(line: 1097, column: 32, scope: !6504)
!6510 = !DILocation(line: 1097, column: 55, scope: !6504)
!6511 = !DILocation(line: 1097, column: 59, scope: !6504)
!6512 = !DILocation(line: 1097, column: 9, scope: !6504)
!6513 = !DILocation(line: 1097, column: 2, scope: !6504)
