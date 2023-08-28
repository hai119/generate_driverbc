; ModuleID = '../bcout/drivers/staging/comedi/drivers/addi_apci_1500.llvm.bc'
source_filename = "drivers/staging/comedi/drivers/addi_apci_1500.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_apci1500_driver_init6:\09\09\09"
module asm ".long\09apci1500_driver_init - .\09\09\09"
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
%struct.apci1500_private = type { i64, i64, i32, [2 x i32], [2 x i32], [2 x i32] }

@__UNIQUE_ID___addressable_apci1500_driver_init234 = internal global i8* bitcast (i32 ()* @apci1500_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@apci1500_driver = internal global %struct.comedi_driver { %struct.comedi_driver* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), %struct.module* null, i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* null, void (%struct.comedi_device*)* @apci1500_detach, i32 (%struct.comedi_device*, i64)* @apci1500_auto_attach, i32 0, i8** null, i32 0 }, align 8, !dbg !164
@apci1500_pci_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), %struct.pci_device_id* getelementptr inbounds ([2 x %struct.pci_device_id], [2 x %struct.pci_device_id]* @apci1500_pci_table, i32 0, i32 0), i32 (%struct.pci_dev*, %struct.pci_device_id*)* @apci1500_pci_probe, void (%struct.pci_dev*)* @comedi_pci_auto_unconfig, i32 (%struct.pci_dev*, i32)* null, i32 (%struct.pci_dev*)* null, void (%struct.pci_dev*)* null, i32 (%struct.pci_dev*, i32)* null, %struct.pci_error_handlers* null, %struct.attribute_group** null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, align 8, !dbg !3987
@__exitcall_apci1500_driver_exit = internal global void ()* @apci1500_driver_exit, section ".exitcall.exit", align 8, !dbg !135
@__UNIQUE_ID_author235 = internal constant [52 x i8] c"addi_apci_1500.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1, !dbg !142
@__UNIQUE_ID_description236 = internal constant [85 x i8] c"addi_apci_1500.description=ADDI-DATA APCI-1500, 16 channel DI / 16 channel DO boards\00", section ".modinfo", align 1, !dbg !149
@__UNIQUE_ID_file237 = internal constant [66 x i8] c"addi_apci_1500.file=drivers/staging/comedi/drivers/addi_apci_1500\00", section ".modinfo", align 1, !dbg !154
@__UNIQUE_ID_license238 = internal constant [27 x i8] c"addi_apci_1500.license=GPL\00", section ".modinfo", align 1, !dbg !159
@.str = private unnamed_addr constant [15 x i8] c"addi_apci_1500\00", align 1
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@range_unknown = external dso_local constant %struct.comedi_lrange, align 4
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@apci1500_pci_table = internal constant [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4328, i32 33020, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id zeroinitializer], align 16, !dbg !4268
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_apci1500_driver_init234 to i8*), i8* bitcast (void ()* @apci1500_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_apci1500_driver_exit to i8*), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__UNIQUE_ID_author235, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @__UNIQUE_ID_description236, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @__UNIQUE_ID_file237, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__UNIQUE_ID_license238, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @apci1500_driver_init() #0 section ".init.text" !dbg !4277 {
entry:
  %call = call i32 @comedi_pci_driver_register(%struct.comedi_driver* @apci1500_driver, %struct.pci_driver* @apci1500_pci_driver) #6, !dbg !4280
  ret i32 %call, !dbg !4280
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @apci1500_driver_exit() #0 section ".exit.text" !dbg !4281 {
entry:
  call void @comedi_pci_driver_unregister(%struct.comedi_driver* @apci1500_driver, %struct.pci_driver* @apci1500_pci_driver) #6, !dbg !4282
  ret void, !dbg !4282
}

; Function Attrs: noredzone
declare dso_local void @comedi_pci_driver_unregister(%struct.comedi_driver*, %struct.pci_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_pci_driver_register(%struct.comedi_driver*, %struct.pci_driver*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @apci1500_detach(%struct.comedi_device* %dev) #2 !dbg !4283 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %devpriv = alloca %struct.apci1500_private*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4284, metadata !DIExpression()), !dbg !4285
  call void @llvm.dbg.declare(metadata %struct.apci1500_private** %devpriv, metadata !4286, metadata !DIExpression()), !dbg !4297
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4298
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !4299
  %1 = load i8*, i8** %private, align 8, !dbg !4299
  %2 = bitcast i8* %1 to %struct.apci1500_private*, !dbg !4298
  store %struct.apci1500_private* %2, %struct.apci1500_private** %devpriv, align 8, !dbg !4297
  %3 = load %struct.apci1500_private*, %struct.apci1500_private** %devpriv, align 8, !dbg !4300
  %amcc = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %3, i32 0, i32 0, !dbg !4302
  %4 = load i64, i64* %amcc, align 8, !dbg !4302
  %tobool = icmp ne i64 %4, 0, !dbg !4300
  br i1 %tobool, label %if.then, label %if.end, !dbg !4303

if.then:                                          ; preds = %entry
  %5 = load %struct.apci1500_private*, %struct.apci1500_private** %devpriv, align 8, !dbg !4304
  %amcc1 = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %5, i32 0, i32 0, !dbg !4305
  %6 = load i64, i64* %amcc1, align 8, !dbg !4305
  %add = add i64 %6, 56, !dbg !4306
  %conv = trunc i64 %add to i32, !dbg !4304
  call void @outl(i32 0, i32 %conv) #6, !dbg !4307
  br label %if.end, !dbg !4307

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4308
  call void @comedi_pci_detach(%struct.comedi_device* %7) #6, !dbg !4309
  ret void, !dbg !4310
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci1500_auto_attach(%struct.comedi_device* %dev, i64 %context) #2 !dbg !4311 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %context.addr = alloca i64, align 8
  %pcidev = alloca %struct.pci_dev*, align 8
  %devpriv = alloca %struct.apci1500_private*, align 8
  %s = alloca %struct.comedi_subdevice*, align 8
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4312, metadata !DIExpression()), !dbg !4313
  store i64 %context, i64* %context.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %context.addr, metadata !4314, metadata !DIExpression()), !dbg !4315
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pcidev, metadata !4316, metadata !DIExpression()), !dbg !4317
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4318
  %call = call %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device* %0) #6, !dbg !4319
  store %struct.pci_dev* %call, %struct.pci_dev** %pcidev, align 8, !dbg !4317
  call void @llvm.dbg.declare(metadata %struct.apci1500_private** %devpriv, metadata !4320, metadata !DIExpression()), !dbg !4321
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s, metadata !4322, metadata !DIExpression()), !dbg !4323
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4324, metadata !DIExpression()), !dbg !4325
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4326
  %call1 = call i8* @comedi_alloc_devpriv(%struct.comedi_device* %1, i64 48) #6, !dbg !4327
  %2 = bitcast i8* %call1 to %struct.apci1500_private*, !dbg !4327
  store %struct.apci1500_private* %2, %struct.apci1500_private** %devpriv, align 8, !dbg !4328
  %3 = load %struct.apci1500_private*, %struct.apci1500_private** %devpriv, align 8, !dbg !4329
  %tobool = icmp ne %struct.apci1500_private* %3, null, !dbg !4329
  br i1 %tobool, label %if.end, label %if.then, !dbg !4331

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !4332
  br label %return, !dbg !4332

if.end:                                           ; preds = %entry
  %4 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4333
  %call2 = call i32 @comedi_pci_enable(%struct.comedi_device* %4) #6, !dbg !4334
  store i32 %call2, i32* %ret, align 4, !dbg !4335
  %5 = load i32, i32* %ret, align 4, !dbg !4336
  %tobool3 = icmp ne i32 %5, 0, !dbg !4336
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4338

if.then4:                                         ; preds = %if.end
  %6 = load i32, i32* %ret, align 4, !dbg !4339
  store i32 %6, i32* %retval, align 4, !dbg !4340
  br label %return, !dbg !4340

if.end5:                                          ; preds = %if.end
  %7 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4341
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 44, !dbg !4341
  %arrayidx = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 1, !dbg !4341
  %start = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx, i32 0, i32 0, !dbg !4341
  %8 = load i64, i64* %start, align 8, !dbg !4341
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4342
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 18, !dbg !4343
  store i64 %8, i64* %iobase, align 8, !dbg !4344
  %10 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4345
  %resource6 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 44, !dbg !4345
  %arrayidx7 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource6, i64 0, i64 0, !dbg !4345
  %start8 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx7, i32 0, i32 0, !dbg !4345
  %11 = load i64, i64* %start8, align 8, !dbg !4345
  %12 = load %struct.apci1500_private*, %struct.apci1500_private** %devpriv, align 8, !dbg !4346
  %amcc = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %12, i32 0, i32 0, !dbg !4347
  store i64 %11, i64* %amcc, align 8, !dbg !4348
  %13 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4349
  %resource9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 44, !dbg !4349
  %arrayidx10 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource9, i64 0, i64 2, !dbg !4349
  %start11 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx10, i32 0, i32 0, !dbg !4349
  %14 = load i64, i64* %start11, align 8, !dbg !4349
  %15 = load %struct.apci1500_private*, %struct.apci1500_private** %devpriv, align 8, !dbg !4350
  %addon = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %15, i32 0, i32 1, !dbg !4351
  store i64 %14, i64* %addon, align 8, !dbg !4352
  %16 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4353
  call void @z8536_reset(%struct.comedi_device* %16) #6, !dbg !4354
  %17 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4355
  %irq = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 43, !dbg !4357
  %18 = load i32, i32* %irq, align 4, !dbg !4357
  %cmp = icmp ugt i32 %18, 0, !dbg !4358
  br i1 %cmp, label %if.then12, label %if.end20, !dbg !4359

if.then12:                                        ; preds = %if.end5
  %19 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4360
  %irq13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 43, !dbg !4362
  %20 = load i32, i32* %irq13, align 4, !dbg !4362
  %21 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4363
  %board_name = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %21, i32 0, i32 8, !dbg !4364
  %22 = load i8*, i8** %board_name, align 8, !dbg !4364
  %23 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4365
  %24 = bitcast %struct.comedi_device* %23 to i8*, !dbg !4365
  %call14 = call i32 @request_irq(i32 %20, i32 (i32, i8*)* @apci1500_interrupt, i64 128, i8* %22, i8* %24) #6, !dbg !4366
  store i32 %call14, i32* %ret, align 4, !dbg !4367
  %25 = load i32, i32* %ret, align 4, !dbg !4368
  %cmp15 = icmp eq i32 %25, 0, !dbg !4370
  br i1 %cmp15, label %if.then16, label %if.end19, !dbg !4371

if.then16:                                        ; preds = %if.then12
  %26 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4372
  %irq17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 43, !dbg !4373
  %27 = load i32, i32* %irq17, align 4, !dbg !4373
  %28 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4374
  %irq18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %28, i32 0, i32 20, !dbg !4375
  store i32 %27, i32* %irq18, align 8, !dbg !4376
  br label %if.end19, !dbg !4374

if.end19:                                         ; preds = %if.then16, %if.then12
  br label %if.end20, !dbg !4377

if.end20:                                         ; preds = %if.end19, %if.end5
  %29 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4378
  %call21 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %29, i32 3) #6, !dbg !4379
  store i32 %call21, i32* %ret, align 4, !dbg !4380
  %30 = load i32, i32* %ret, align 4, !dbg !4381
  %tobool22 = icmp ne i32 %30, 0, !dbg !4381
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !4383

if.then23:                                        ; preds = %if.end20
  %31 = load i32, i32* %ret, align 4, !dbg !4384
  store i32 %31, i32* %retval, align 4, !dbg !4385
  br label %return, !dbg !4385

if.end24:                                         ; preds = %if.end20
  %32 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4386
  %subdevices = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %32, i32 0, i32 16, !dbg !4387
  %33 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices, align 8, !dbg !4387
  %arrayidx25 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %33, i64 0, !dbg !4386
  store %struct.comedi_subdevice* %arrayidx25, %struct.comedi_subdevice** %s, align 8, !dbg !4388
  %34 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4389
  %type = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %34, i32 0, i32 2, !dbg !4390
  store i32 3, i32* %type, align 4, !dbg !4391
  %35 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4392
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %35, i32 0, i32 4, !dbg !4393
  store i32 65536, i32* %subdev_flags, align 4, !dbg !4394
  %36 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4395
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %36, i32 0, i32 3, !dbg !4396
  store i32 16, i32* %n_chan, align 8, !dbg !4397
  %37 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4398
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %37, i32 0, i32 13, !dbg !4399
  store i32 1, i32* %maxdata, align 8, !dbg !4400
  %38 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4401
  %range_table = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %38, i32 0, i32 15, !dbg !4402
  store %struct.comedi_lrange* @range_unipolar5, %struct.comedi_lrange** %range_table, align 8, !dbg !4403
  %39 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4404
  %insn_bits = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %39, i32 0, i32 20, !dbg !4405
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @apci1500_di_insn_bits, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_bits, align 8, !dbg !4406
  %40 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4407
  %irq26 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %40, i32 0, i32 20, !dbg !4409
  %41 = load i32, i32* %irq26, align 8, !dbg !4409
  %tobool27 = icmp ne i32 %41, 0, !dbg !4407
  br i1 %tobool27, label %if.then28, label %if.end30, !dbg !4410

if.then28:                                        ; preds = %if.end24
  %42 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4411
  %43 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4413
  %read_subdev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %43, i32 0, i32 21, !dbg !4414
  store %struct.comedi_subdevice* %42, %struct.comedi_subdevice** %read_subdev, align 8, !dbg !4415
  %44 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4416
  %subdev_flags29 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %44, i32 0, i32 4, !dbg !4417
  %45 = load i32, i32* %subdev_flags29, align 4, !dbg !4418
  %or = or i32 %45, 32768, !dbg !4418
  store i32 %or, i32* %subdev_flags29, align 4, !dbg !4418
  %46 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4419
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %46, i32 0, i32 5, !dbg !4420
  store i32 1, i32* %len_chanlist, align 8, !dbg !4421
  %47 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4422
  %insn_config = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %47, i32 0, i32 21, !dbg !4423
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @apci1500_di_insn_config, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_config, align 8, !dbg !4424
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4425
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %48, i32 0, i32 23, !dbg !4426
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @apci1500_di_cmdtest, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)** %do_cmdtest, align 8, !dbg !4427
  %49 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4428
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %49, i32 0, i32 22, !dbg !4429
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @apci1500_di_cmd, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)** %do_cmd, align 8, !dbg !4430
  %50 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4431
  %cancel = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %50, i32 0, i32 25, !dbg !4432
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @apci1500_di_cancel, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)** %cancel, align 8, !dbg !4433
  br label %if.end30, !dbg !4434

if.end30:                                         ; preds = %if.then28, %if.end24
  %51 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4435
  %subdevices31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %51, i32 0, i32 16, !dbg !4436
  %52 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices31, align 8, !dbg !4436
  %arrayidx32 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %52, i64 1, !dbg !4435
  store %struct.comedi_subdevice* %arrayidx32, %struct.comedi_subdevice** %s, align 8, !dbg !4437
  %53 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4438
  %type33 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %53, i32 0, i32 2, !dbg !4439
  store i32 4, i32* %type33, align 4, !dbg !4440
  %54 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4441
  %subdev_flags34 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %54, i32 0, i32 4, !dbg !4442
  store i32 131072, i32* %subdev_flags34, align 4, !dbg !4443
  %55 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4444
  %n_chan35 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %55, i32 0, i32 3, !dbg !4445
  store i32 16, i32* %n_chan35, align 8, !dbg !4446
  %56 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4447
  %maxdata36 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %56, i32 0, i32 13, !dbg !4448
  store i32 1, i32* %maxdata36, align 8, !dbg !4449
  %57 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4450
  %range_table37 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %57, i32 0, i32 15, !dbg !4451
  store %struct.comedi_lrange* @range_unipolar5, %struct.comedi_lrange** %range_table37, align 8, !dbg !4452
  %58 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4453
  %insn_bits38 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %58, i32 0, i32 20, !dbg !4454
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @apci1500_do_insn_bits, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_bits38, align 8, !dbg !4455
  %59 = load %struct.apci1500_private*, %struct.apci1500_private** %devpriv, align 8, !dbg !4456
  %addon39 = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %59, i32 0, i32 1, !dbg !4457
  %60 = load i64, i64* %addon39, align 8, !dbg !4457
  %add = add i64 %60, 2, !dbg !4458
  %conv = trunc i64 %add to i32, !dbg !4456
  call void @outw(i16 zeroext 0, i32 %conv) #6, !dbg !4459
  %61 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4460
  %subdevices40 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %61, i32 0, i32 16, !dbg !4461
  %62 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices40, align 8, !dbg !4461
  %arrayidx41 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %62, i64 2, !dbg !4460
  store %struct.comedi_subdevice* %arrayidx41, %struct.comedi_subdevice** %s, align 8, !dbg !4462
  %63 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4463
  %type42 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %63, i32 0, i32 2, !dbg !4464
  store i32 7, i32* %type42, align 4, !dbg !4465
  %64 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4466
  %subdev_flags43 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %64, i32 0, i32 4, !dbg !4467
  store i32 196608, i32* %subdev_flags43, align 4, !dbg !4468
  %65 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4469
  %n_chan44 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %65, i32 0, i32 3, !dbg !4470
  store i32 3, i32* %n_chan44, align 8, !dbg !4471
  %66 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4472
  %maxdata45 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %66, i32 0, i32 13, !dbg !4473
  store i32 65535, i32* %maxdata45, align 8, !dbg !4474
  %67 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4475
  %range_table46 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %67, i32 0, i32 15, !dbg !4476
  store %struct.comedi_lrange* @range_unknown, %struct.comedi_lrange** %range_table46, align 8, !dbg !4477
  %68 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4478
  %insn_config47 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %68, i32 0, i32 21, !dbg !4479
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @apci1500_timer_insn_config, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_config47, align 8, !dbg !4480
  %69 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4481
  %insn_write = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %69, i32 0, i32 19, !dbg !4482
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @apci1500_timer_insn_write, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_write, align 8, !dbg !4483
  %70 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4484
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %70, i32 0, i32 18, !dbg !4485
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @apci1500_timer_insn_read, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_read, align 8, !dbg !4486
  %71 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4487
  %irq48 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %71, i32 0, i32 20, !dbg !4489
  %72 = load i32, i32* %irq48, align 8, !dbg !4489
  %tobool49 = icmp ne i32 %72, 0, !dbg !4487
  br i1 %tobool49, label %if.then50, label %if.end65, !dbg !4490

if.then50:                                        ; preds = %if.end30
  %73 = load %struct.apci1500_private*, %struct.apci1500_private** %devpriv, align 8, !dbg !4491
  %amcc51 = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %73, i32 0, i32 0, !dbg !4493
  %74 = load i64, i64* %amcc51, align 8, !dbg !4493
  %add52 = add i64 %74, 56, !dbg !4494
  %conv53 = trunc i64 %add52 to i32, !dbg !4491
  call void @outl(i32 12288, i32 %conv53) #6, !dbg !4495
  %75 = load %struct.apci1500_private*, %struct.apci1500_private** %devpriv, align 8, !dbg !4496
  %amcc54 = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %75, i32 0, i32 0, !dbg !4497
  %76 = load i64, i64* %amcc54, align 8, !dbg !4497
  %add55 = add i64 %76, 16, !dbg !4498
  %conv56 = trunc i64 %add55 to i32, !dbg !4496
  %call57 = call i32 @inl(i32 %conv56) #6, !dbg !4499
  %77 = load %struct.apci1500_private*, %struct.apci1500_private** %devpriv, align 8, !dbg !4500
  %amcc58 = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %77, i32 0, i32 0, !dbg !4501
  %78 = load i64, i64* %amcc58, align 8, !dbg !4501
  %add59 = add i64 %78, 56, !dbg !4502
  %conv60 = trunc i64 %add59 to i32, !dbg !4500
  %call61 = call i32 @inl(i32 %conv60) #6, !dbg !4503
  %79 = load %struct.apci1500_private*, %struct.apci1500_private** %devpriv, align 8, !dbg !4504
  %amcc62 = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %79, i32 0, i32 0, !dbg !4505
  %80 = load i64, i64* %amcc62, align 8, !dbg !4505
  %add63 = add i64 %80, 56, !dbg !4506
  %conv64 = trunc i64 %add63 to i32, !dbg !4504
  call void @outl(i32 143360, i32 %conv64) #6, !dbg !4507
  br label %if.end65, !dbg !4508

if.end65:                                         ; preds = %if.then50, %if.end30
  store i32 0, i32* %retval, align 4, !dbg !4509
  br label %return, !dbg !4509

return:                                           ; preds = %if.end65, %if.then23, %if.then4, %if.then
  %81 = load i32, i32* %retval, align 4, !dbg !4510
  ret i32 %81, !dbg !4510
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outl(i32 %value, i32 %port) #2 !dbg !4511 {
entry:
  %value.addr = alloca i32, align 4
  %port.addr = alloca i32, align 4
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !4515, metadata !DIExpression()), !dbg !4516
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !4517, metadata !DIExpression()), !dbg !4516
  %0 = load i32, i32* %value.addr, align 4, !dbg !4516
  %1 = load i32, i32* %port.addr, align 4, !dbg !4516
  call void asm sideeffect "outl $0, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 %1) #5, !dbg !4516, !srcloc !4518
  ret void, !dbg !4516
}

; Function Attrs: noredzone
declare dso_local void @comedi_pci_detach(%struct.comedi_device*) #1

; Function Attrs: noredzone
declare dso_local %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device*) #1

; Function Attrs: noredzone
declare dso_local i8* @comedi_alloc_devpriv(%struct.comedi_device*, i64) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_pci_enable(%struct.comedi_device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @z8536_reset(%struct.comedi_device* %dev) #2 !dbg !4519 {
entry:
  %lock.addr.i38 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i38, metadata !4520, metadata !DIExpression()), !dbg !4525
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4527, metadata !DIExpression()), !dbg !4528
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4529, metadata !DIExpression()), !dbg !4534
  %dev.addr = alloca %struct.comedi_device*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4541, metadata !DIExpression()), !dbg !4542
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4543, metadata !DIExpression()), !dbg !4544
  br label %do.body, !dbg !4545

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4546

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4547, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4550, metadata !DIExpression()), !dbg !4549
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !4549
  %conv = zext i1 %cmp to i32, !dbg !4549
  store i32 1, i32* %tmp, align 4, !dbg !4549
  %0 = load i32, i32* %tmp, align 4, !dbg !4549
  br label %do.body2, !dbg !4551

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !4552

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !4553

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !4555, metadata !DIExpression()), !dbg !4558
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !4559, metadata !DIExpression()), !dbg !4558
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !4558
  %conv8 = zext i1 %cmp7 to i32, !dbg !4558
  store i32 1, i32* %tmp9, align 4, !dbg !4558
  %1 = load i32, i32* %tmp9, align 4, !dbg !4558
  %call = call i64 @arch_local_irq_save() #6, !dbg !4560
  store i64 %call, i64* %flags, align 8, !dbg !4560
  br label %do.end, !dbg !4560

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !4553

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !4552

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4561, !srcloc !4562
  br label %do.body12, !dbg !4561

do.body12:                                        ; preds = %do.body11
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4563
  %spinlock = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %2, i32 0, i32 11, !dbg !4563
  store %struct.spinlock* %spinlock, %struct.spinlock** %lock.addr.i, align 8
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4564
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !4565
  %rlock.i = bitcast %union.anon.3* %4 to %struct.raw_spinlock*, !dbg !4565
  br label %do.end14, !dbg !4563

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !4561

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !4552

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !4551

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !4546

do.end18:                                         ; preds = %do.end17
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4566
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 18, !dbg !4567
  %6 = load i64, i64* %iobase, align 8, !dbg !4567
  %add = add i64 %6, 3, !dbg !4568
  %conv19 = trunc i64 %add to i32, !dbg !4566
  %call20 = call zeroext i8 @inb(i32 %conv19) #6, !dbg !4569
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4570
  %iobase21 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 18, !dbg !4571
  %8 = load i64, i64* %iobase21, align 8, !dbg !4571
  %add22 = add i64 %8, 3, !dbg !4572
  %conv23 = trunc i64 %add22 to i32, !dbg !4570
  call void @outb(i8 zeroext 0, i32 %conv23) #6, !dbg !4573
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4574
  %iobase24 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 18, !dbg !4575
  %10 = load i64, i64* %iobase24, align 8, !dbg !4575
  %add25 = add i64 %10, 3, !dbg !4576
  %conv26 = trunc i64 %add25 to i32, !dbg !4574
  %call27 = call zeroext i8 @inb(i32 %conv26) #6, !dbg !4577
  %11 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4578
  %iobase28 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 18, !dbg !4579
  %12 = load i64, i64* %iobase28, align 8, !dbg !4579
  %add29 = add i64 %12, 3, !dbg !4580
  %conv30 = trunc i64 %add29 to i32, !dbg !4578
  call void @outb(i8 zeroext 0, i32 %conv30) #6, !dbg !4581
  %13 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4582
  %iobase31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 18, !dbg !4583
  %14 = load i64, i64* %iobase31, align 8, !dbg !4583
  %add32 = add i64 %14, 3, !dbg !4584
  %conv33 = trunc i64 %add32 to i32, !dbg !4582
  call void @outb(i8 zeroext 1, i32 %conv33) #6, !dbg !4585
  %15 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4586
  %iobase34 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 18, !dbg !4587
  %16 = load i64, i64* %iobase34, align 8, !dbg !4587
  %add35 = add i64 %16, 3, !dbg !4588
  %conv36 = trunc i64 %add35 to i32, !dbg !4586
  call void @outb(i8 zeroext 0, i32 %conv36) #6, !dbg !4589
  %17 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4590
  %spinlock37 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 11, !dbg !4591
  %18 = load i64, i64* %flags, align 8, !dbg !4592
  store %struct.spinlock* %spinlock37, %struct.spinlock** %lock.addr.i38, align 8
  store i64 %18, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !230, metadata !4593, metadata !DIExpression()) #5, !dbg !4596
  call void @llvm.dbg.declare(metadata !230, metadata !4597, metadata !DIExpression()) #5, !dbg !4596
  store i32 1, i32* %tmp.i, align 4, !dbg !4596
  %19 = load i32, i32* %tmp.i, align 4, !dbg !4596
  call void @llvm.dbg.declare(metadata !230, metadata !4598, metadata !DIExpression()) #5, !dbg !4603
  call void @llvm.dbg.declare(metadata !230, metadata !4604, metadata !DIExpression()) #5, !dbg !4603
  store i32 1, i32* %tmp8.i, align 4, !dbg !4603
  %20 = load i32, i32* %tmp8.i, align 4, !dbg !4603
  %21 = load i64, i64* %flags.addr.i, align 8, !dbg !4605
  call void @arch_local_irq_restore(i64 %21) #7, !dbg !4605
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4606, !srcloc !4608
  %22 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i38, align 8, !dbg !4609
  %23 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %22, i32 0, i32 0, !dbg !4609
  %rlock.i39 = bitcast %union.anon.3* %23 to %struct.raw_spinlock*, !dbg !4609
  %24 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4611
  call void @z8536_write(%struct.comedi_device* %24, i32 0, i32 1) #6, !dbg !4612
  %25 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4613
  call void @z8536_write(%struct.comedi_device* %25, i32 16, i32 32) #6, !dbg !4614
  %26 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4615
  call void @z8536_write(%struct.comedi_device* %26, i32 255, i32 42) #6, !dbg !4616
  %27 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4617
  call void @z8536_write(%struct.comedi_device* %27, i32 255, i32 35) #6, !dbg !4618
  %28 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4619
  call void @z8536_write(%struct.comedi_device* %28, i32 16, i32 40) #6, !dbg !4620
  %29 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4621
  call void @z8536_write(%struct.comedi_device* %29, i32 127, i32 42) #6, !dbg !4622
  %30 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4623
  call void @z8536_write(%struct.comedi_device* %30, i32 255, i32 43) #6, !dbg !4624
  %31 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4625
  call void @z8536_write(%struct.comedi_device* %31, i32 9, i32 5) #6, !dbg !4626
  %32 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4627
  call void @z8536_write(%struct.comedi_device* %32, i32 14, i32 6) #6, !dbg !4628
  %33 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4629
  call void @z8536_write(%struct.comedi_device* %33, i32 32, i32 8) #6, !dbg !4630
  %34 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4631
  call void @z8536_write(%struct.comedi_device* %34, i32 224, i32 8) #6, !dbg !4632
  %35 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4633
  call void @z8536_write(%struct.comedi_device* %35, i32 32, i32 9) #6, !dbg !4634
  %36 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4635
  call void @z8536_write(%struct.comedi_device* %36, i32 224, i32 9) #6, !dbg !4636
  %37 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4637
  call void @z8536_write(%struct.comedi_device* %37, i32 32, i32 10) #6, !dbg !4638
  %38 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4639
  call void @z8536_write(%struct.comedi_device* %38, i32 224, i32 10) #6, !dbg !4640
  %39 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4641
  call void @z8536_write(%struct.comedi_device* %39, i32 32, i32 11) #6, !dbg !4642
  %40 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4643
  call void @z8536_write(%struct.comedi_device* %40, i32 224, i32 11) #6, !dbg !4644
  %41 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4645
  call void @z8536_write(%struct.comedi_device* %41, i32 32, i32 12) #6, !dbg !4646
  %42 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4647
  call void @z8536_write(%struct.comedi_device* %42, i32 224, i32 12) #6, !dbg !4648
  %43 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4649
  call void @z8536_write(%struct.comedi_device* %43, i32 0, i32 0) #6, !dbg !4650
  ret void, !dbg !4651
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @request_irq(i32 %irq, i32 (i32, i8*)* %handler, i64 %flags, i8* %name, i8* %dev) #2 !dbg !4652 {
entry:
  %irq.addr = alloca i32, align 4
  %handler.addr = alloca i32 (i32, i8*)*, align 8
  %flags.addr = alloca i64, align 8
  %name.addr = alloca i8*, align 8
  %dev.addr = alloca i8*, align 8
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !4660, metadata !DIExpression()), !dbg !4661
  store i32 (i32, i8*)* %handler, i32 (i32, i8*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i32, i8*)** %handler.addr, metadata !4662, metadata !DIExpression()), !dbg !4663
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !4664, metadata !DIExpression()), !dbg !4665
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !4666, metadata !DIExpression()), !dbg !4667
  store i8* %dev, i8** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev.addr, metadata !4668, metadata !DIExpression()), !dbg !4669
  %0 = load i32, i32* %irq.addr, align 4, !dbg !4670
  %1 = load i32 (i32, i8*)*, i32 (i32, i8*)** %handler.addr, align 8, !dbg !4671
  %2 = load i64, i64* %flags.addr, align 8, !dbg !4672
  %3 = load i8*, i8** %name.addr, align 8, !dbg !4673
  %4 = load i8*, i8** %dev.addr, align 8, !dbg !4674
  %call = call i32 @request_threaded_irq(i32 %0, i32 (i32, i8*)* %1, i32 (i32, i8*)* null, i64 %2, i8* %3, i8* %4) #6, !dbg !4675
  ret i32 %call, !dbg !4676
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci1500_interrupt(i32 %irq, i8* %d) #2 !dbg !4677 {
entry:
  %retval = alloca i32, align 4
  %irq.addr = alloca i32, align 4
  %d.addr = alloca i8*, align 8
  %dev = alloca %struct.comedi_device*, align 8
  %devpriv = alloca %struct.apci1500_private*, align 8
  %s = alloca %struct.comedi_subdevice*, align 8
  %status = alloca i32, align 4
  %val = alloca i32, align 4
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !4678, metadata !DIExpression()), !dbg !4679
  store i8* %d, i8** %d.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %d.addr, metadata !4680, metadata !DIExpression()), !dbg !4681
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev, metadata !4682, metadata !DIExpression()), !dbg !4683
  %0 = load i8*, i8** %d.addr, align 8, !dbg !4684
  %1 = bitcast i8* %0 to %struct.comedi_device*, !dbg !4684
  store %struct.comedi_device* %1, %struct.comedi_device** %dev, align 8, !dbg !4683
  call void @llvm.dbg.declare(metadata %struct.apci1500_private** %devpriv, metadata !4685, metadata !DIExpression()), !dbg !4686
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4687
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %2, i32 0, i32 3, !dbg !4688
  %3 = load i8*, i8** %private, align 8, !dbg !4688
  %4 = bitcast i8* %3 to %struct.apci1500_private*, !dbg !4687
  store %struct.apci1500_private* %4, %struct.apci1500_private** %devpriv, align 8, !dbg !4686
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s, metadata !4689, metadata !DIExpression()), !dbg !4690
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4691
  %read_subdev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 21, !dbg !4692
  %6 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %read_subdev, align 8, !dbg !4692
  store %struct.comedi_subdevice* %6, %struct.comedi_subdevice** %s, align 8, !dbg !4690
  call void @llvm.dbg.declare(metadata i32* %status, metadata !4693, metadata !DIExpression()), !dbg !4694
  store i32 0, i32* %status, align 4, !dbg !4694
  call void @llvm.dbg.declare(metadata i32* %val, metadata !4695, metadata !DIExpression()), !dbg !4696
  %7 = load %struct.apci1500_private*, %struct.apci1500_private** %devpriv, align 8, !dbg !4697
  %amcc = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %7, i32 0, i32 0, !dbg !4698
  %8 = load i64, i64* %amcc, align 8, !dbg !4698
  %add = add i64 %8, 56, !dbg !4699
  %conv = trunc i64 %add to i32, !dbg !4697
  %call = call i32 @inl(i32 %conv) #6, !dbg !4700
  store i32 %call, i32* %val, align 4, !dbg !4701
  %9 = load i32, i32* %val, align 4, !dbg !4702
  %and = and i32 %9, 8388608, !dbg !4704
  %tobool = icmp ne i32 %and, 0, !dbg !4704
  br i1 %tobool, label %if.end, label %if.then, !dbg !4705

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4706
  br label %return, !dbg !4706

if.end:                                           ; preds = %entry
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4707
  %call1 = call zeroext i1 @apci1500_ack_irq(%struct.comedi_device* %10, i32 8) #6, !dbg !4709
  br i1 %call1, label %if.then2, label %if.end3, !dbg !4710

if.then2:                                         ; preds = %if.end
  %11 = load i32, i32* %status, align 4, !dbg !4711
  %or = or i32 %11, 1, !dbg !4711
  store i32 %or, i32* %status, align 4, !dbg !4711
  br label %if.end3, !dbg !4712

if.end3:                                          ; preds = %if.then2, %if.end
  %12 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4713
  %call4 = call zeroext i1 @apci1500_ack_irq(%struct.comedi_device* %12, i32 9) #6, !dbg !4715
  br i1 %call4, label %if.then5, label %if.end25, !dbg !4716

if.then5:                                         ; preds = %if.end3
  %13 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4717
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 18, !dbg !4719
  %14 = load i64, i64* %iobase, align 8, !dbg !4719
  %add6 = add i64 %14, 1, !dbg !4720
  %conv7 = trunc i64 %add6 to i32, !dbg !4717
  %call8 = call zeroext i8 @inb(i32 %conv7) #6, !dbg !4721
  %conv9 = zext i8 %call8 to i32, !dbg !4721
  store i32 %conv9, i32* %val, align 4, !dbg !4722
  %15 = load i32, i32* %val, align 4, !dbg !4723
  %and10 = and i32 %15, 192, !dbg !4723
  store i32 %and10, i32* %val, align 4, !dbg !4723
  %16 = load i32, i32* %val, align 4, !dbg !4724
  %tobool11 = icmp ne i32 %16, 0, !dbg !4724
  br i1 %tobool11, label %if.then12, label %if.else, !dbg !4726

if.then12:                                        ; preds = %if.then5
  %17 = load i32, i32* %val, align 4, !dbg !4727
  %and13 = and i32 %17, 128, !dbg !4730
  %tobool14 = icmp ne i32 %and13, 0, !dbg !4730
  br i1 %tobool14, label %if.then15, label %if.end17, !dbg !4731

if.then15:                                        ; preds = %if.then12
  %18 = load i32, i32* %status, align 4, !dbg !4732
  %or16 = or i32 %18, 64, !dbg !4732
  store i32 %or16, i32* %status, align 4, !dbg !4732
  br label %if.end17, !dbg !4733

if.end17:                                         ; preds = %if.then15, %if.then12
  %19 = load i32, i32* %val, align 4, !dbg !4734
  %and18 = and i32 %19, 64, !dbg !4736
  %tobool19 = icmp ne i32 %and18, 0, !dbg !4736
  br i1 %tobool19, label %if.then20, label %if.end22, !dbg !4737

if.then20:                                        ; preds = %if.end17
  %20 = load i32, i32* %status, align 4, !dbg !4738
  %or21 = or i32 %20, 128, !dbg !4738
  store i32 %or21, i32* %status, align 4, !dbg !4738
  br label %if.end22, !dbg !4739

if.end22:                                         ; preds = %if.then20, %if.end17
  br label %if.end24, !dbg !4740

if.else:                                          ; preds = %if.then5
  %21 = load i32, i32* %status, align 4, !dbg !4741
  %or23 = or i32 %21, 2, !dbg !4741
  store i32 %or23, i32* %status, align 4, !dbg !4741
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.end22
  br label %if.end25, !dbg !4743

if.end25:                                         ; preds = %if.end24, %if.end3
  %22 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4744
  %23 = bitcast i32* %status to i8*, !dbg !4745
  %call26 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %22, i8* %23, i32 1) #6, !dbg !4746
  %24 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4747
  %25 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4748
  %call27 = call i32 @comedi_handle_events(%struct.comedi_device* %24, %struct.comedi_subdevice* %25) #6, !dbg !4749
  store i32 1, i32* %retval, align 4, !dbg !4750
  br label %return, !dbg !4750

return:                                           ; preds = %if.end25, %if.then
  %26 = load i32, i32* %retval, align 4, !dbg !4751
  ret i32 %26, !dbg !4751
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci1500_di_insn_bits(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !4752 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %devpriv = alloca %struct.apci1500_private*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4753, metadata !DIExpression()), !dbg !4754
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4755, metadata !DIExpression()), !dbg !4756
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !4757, metadata !DIExpression()), !dbg !4758
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !4759, metadata !DIExpression()), !dbg !4760
  call void @llvm.dbg.declare(metadata %struct.apci1500_private** %devpriv, metadata !4761, metadata !DIExpression()), !dbg !4762
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4763
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !4764
  %1 = load i8*, i8** %private, align 8, !dbg !4764
  %2 = bitcast i8* %1 to %struct.apci1500_private*, !dbg !4763
  store %struct.apci1500_private* %2, %struct.apci1500_private** %devpriv, align 8, !dbg !4762
  %3 = load %struct.apci1500_private*, %struct.apci1500_private** %devpriv, align 8, !dbg !4765
  %addon = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %3, i32 0, i32 1, !dbg !4766
  %4 = load i64, i64* %addon, align 8, !dbg !4766
  %add = add i64 %4, 0, !dbg !4767
  %conv = trunc i64 %add to i32, !dbg !4765
  %call = call zeroext i16 @inw(i32 %conv) #6, !dbg !4768
  %conv1 = zext i16 %call to i32, !dbg !4768
  %5 = load i32*, i32** %data.addr, align 8, !dbg !4769
  %arrayidx = getelementptr i32, i32* %5, i64 1, !dbg !4769
  store i32 %conv1, i32* %arrayidx, align 4, !dbg !4770
  %6 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4771
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %6, i32 0, i32 1, !dbg !4772
  %7 = load i32, i32* %n, align 4, !dbg !4772
  ret i32 %7, !dbg !4773
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci1500_di_insn_config(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !4774 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4775, metadata !DIExpression()), !dbg !4776
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4777, metadata !DIExpression()), !dbg !4778
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !4779, metadata !DIExpression()), !dbg !4780
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !4781, metadata !DIExpression()), !dbg !4782
  %0 = load i32*, i32** %data.addr, align 8, !dbg !4783
  %arrayidx = getelementptr i32, i32* %0, i64 0, !dbg !4783
  %1 = load i32, i32* %arrayidx, align 4, !dbg !4783
  switch i32 %1, label %sw.default [
    i32 21, label %sw.bb
  ], !dbg !4784

sw.bb:                                            ; preds = %entry
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4785
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4787
  %4 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4788
  %5 = load i32*, i32** %data.addr, align 8, !dbg !4789
  %call = call i32 @apci1500_di_cfg_trig(%struct.comedi_device* %2, %struct.comedi_subdevice* %3, %struct.comedi_insn* %4, i32* %5) #6, !dbg !4790
  store i32 %call, i32* %retval, align 4, !dbg !4791
  br label %return, !dbg !4791

sw.default:                                       ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4792
  br label %return, !dbg !4792

return:                                           ; preds = %sw.default, %sw.bb
  %6 = load i32, i32* %retval, align 4, !dbg !4793
  ret i32 %6, !dbg !4793
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci1500_di_cmdtest(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_cmd* %cmd) #2 !dbg !4794 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %cmd.addr = alloca %struct.comedi_cmd*, align 8
  %err = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4795, metadata !DIExpression()), !dbg !4796
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4797, metadata !DIExpression()), !dbg !4798
  store %struct.comedi_cmd* %cmd, %struct.comedi_cmd** %cmd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd.addr, metadata !4799, metadata !DIExpression()), !dbg !4800
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4801, metadata !DIExpression()), !dbg !4802
  store i32 0, i32* %err, align 4, !dbg !4802
  %0 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4803
  %start_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %0, i32 0, i32 2, !dbg !4804
  %call = call i32 @comedi_check_trigger_src(i32* %start_src, i32 128) #6, !dbg !4805
  %1 = load i32, i32* %err, align 4, !dbg !4806
  %or = or i32 %1, %call, !dbg !4806
  store i32 %or, i32* %err, align 4, !dbg !4806
  %2 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4807
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %2, i32 0, i32 4, !dbg !4808
  %call1 = call i32 @comedi_check_trigger_src(i32* %scan_begin_src, i32 64) #6, !dbg !4809
  %3 = load i32, i32* %err, align 4, !dbg !4810
  %or2 = or i32 %3, %call1, !dbg !4810
  store i32 %or2, i32* %err, align 4, !dbg !4810
  %4 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4811
  %convert_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %4, i32 0, i32 6, !dbg !4812
  %call3 = call i32 @comedi_check_trigger_src(i32* %convert_src, i32 4) #6, !dbg !4813
  %5 = load i32, i32* %err, align 4, !dbg !4814
  %or4 = or i32 %5, %call3, !dbg !4814
  store i32 %or4, i32* %err, align 4, !dbg !4814
  %6 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4815
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %6, i32 0, i32 8, !dbg !4816
  %call5 = call i32 @comedi_check_trigger_src(i32* %scan_end_src, i32 32) #6, !dbg !4817
  %7 = load i32, i32* %err, align 4, !dbg !4818
  %or6 = or i32 %7, %call5, !dbg !4818
  store i32 %or6, i32* %err, align 4, !dbg !4818
  %8 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4819
  %stop_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %8, i32 0, i32 10, !dbg !4820
  %call7 = call i32 @comedi_check_trigger_src(i32* %stop_src, i32 1) #6, !dbg !4821
  %9 = load i32, i32* %err, align 4, !dbg !4822
  %or8 = or i32 %9, %call7, !dbg !4822
  store i32 %or8, i32* %err, align 4, !dbg !4822
  %10 = load i32, i32* %err, align 4, !dbg !4823
  %tobool = icmp ne i32 %10, 0, !dbg !4823
  br i1 %tobool, label %if.then, label %if.end, !dbg !4825

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !4826
  br label %return, !dbg !4826

if.end:                                           ; preds = %entry
  %11 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4827
  %start_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %11, i32 0, i32 3, !dbg !4828
  %call9 = call i32 @comedi_check_trigger_arg_max(i32* %start_arg, i32 3) #6, !dbg !4829
  %12 = load i32, i32* %err, align 4, !dbg !4830
  %or10 = or i32 %12, %call9, !dbg !4830
  store i32 %or10, i32* %err, align 4, !dbg !4830
  %13 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4831
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %13, i32 0, i32 5, !dbg !4832
  %call11 = call i32 @comedi_check_trigger_arg_is(i32* %scan_begin_arg, i32 0) #6, !dbg !4833
  %14 = load i32, i32* %err, align 4, !dbg !4834
  %or12 = or i32 %14, %call11, !dbg !4834
  store i32 %or12, i32* %err, align 4, !dbg !4834
  %15 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4835
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %15, i32 0, i32 7, !dbg !4836
  %call13 = call i32 @comedi_check_trigger_arg_is(i32* %convert_arg, i32 0) #6, !dbg !4837
  %16 = load i32, i32* %err, align 4, !dbg !4838
  %or14 = or i32 %16, %call13, !dbg !4838
  store i32 %or14, i32* %err, align 4, !dbg !4838
  %17 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4839
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %17, i32 0, i32 9, !dbg !4840
  %18 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4841
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %18, i32 0, i32 13, !dbg !4842
  %19 = load i32, i32* %chanlist_len, align 8, !dbg !4842
  %call15 = call i32 @comedi_check_trigger_arg_is(i32* %scan_end_arg, i32 %19) #6, !dbg !4843
  %20 = load i32, i32* %err, align 4, !dbg !4844
  %or16 = or i32 %20, %call15, !dbg !4844
  store i32 %or16, i32* %err, align 4, !dbg !4844
  %21 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4845
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %21, i32 0, i32 11, !dbg !4846
  %call17 = call i32 @comedi_check_trigger_arg_is(i32* %stop_arg, i32 0) #6, !dbg !4847
  %22 = load i32, i32* %err, align 4, !dbg !4848
  %or18 = or i32 %22, %call17, !dbg !4848
  store i32 %or18, i32* %err, align 4, !dbg !4848
  %23 = load i32, i32* %err, align 4, !dbg !4849
  %tobool19 = icmp ne i32 %23, 0, !dbg !4849
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !4851

if.then20:                                        ; preds = %if.end
  store i32 3, i32* %retval, align 4, !dbg !4852
  br label %return, !dbg !4852

if.end21:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4853
  br label %return, !dbg !4853

return:                                           ; preds = %if.end21, %if.then20, %if.then
  %24 = load i32, i32* %retval, align 4, !dbg !4854
  ret i32 %24, !dbg !4854
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci1500_di_cmd(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #2 !dbg !4855 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4856, metadata !DIExpression()), !dbg !4857
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4858, metadata !DIExpression()), !dbg !4859
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4860
  %async = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 7, !dbg !4861
  %1 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4861
  %inttrig = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %1, i32 0, i32 20, !dbg !4862
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* @apci1500_di_inttrig_start, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)** %inttrig, align 8, !dbg !4863
  ret i32 0, !dbg !4864
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci1500_di_cancel(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #2 !dbg !4865 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4866, metadata !DIExpression()), !dbg !4867
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4868, metadata !DIExpression()), !dbg !4869
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4870
  call void @z8536_write(%struct.comedi_device* %0, i32 0, i32 0) #6, !dbg !4871
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4872
  call void @apci1500_port_enable(%struct.comedi_device* %1, i1 zeroext false) #6, !dbg !4873
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4874
  %call = call zeroext i1 @apci1500_ack_irq(%struct.comedi_device* %2, i32 8) #6, !dbg !4875
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4876
  %call1 = call zeroext i1 @apci1500_ack_irq(%struct.comedi_device* %3, i32 9) #6, !dbg !4877
  %4 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4878
  call void @z8536_write(%struct.comedi_device* %4, i32 224, i32 8) #6, !dbg !4879
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4880
  call void @z8536_write(%struct.comedi_device* %5, i32 224, i32 9) #6, !dbg !4881
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4882
  call void @apci1500_port_enable(%struct.comedi_device* %6, i1 zeroext true) #6, !dbg !4883
  ret i32 0, !dbg !4884
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci1500_do_insn_bits(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !4885 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %devpriv = alloca %struct.apci1500_private*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4886, metadata !DIExpression()), !dbg !4887
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4888, metadata !DIExpression()), !dbg !4889
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !4890, metadata !DIExpression()), !dbg !4891
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !4892, metadata !DIExpression()), !dbg !4893
  call void @llvm.dbg.declare(metadata %struct.apci1500_private** %devpriv, metadata !4894, metadata !DIExpression()), !dbg !4895
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4896
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !4897
  %1 = load i8*, i8** %private, align 8, !dbg !4897
  %2 = bitcast i8* %1 to %struct.apci1500_private*, !dbg !4896
  store %struct.apci1500_private* %2, %struct.apci1500_private** %devpriv, align 8, !dbg !4895
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4898
  %4 = load i32*, i32** %data.addr, align 8, !dbg !4900
  %call = call i32 @comedi_dio_update_state(%struct.comedi_subdevice* %3, i32* %4) #6, !dbg !4901
  %tobool = icmp ne i32 %call, 0, !dbg !4901
  br i1 %tobool, label %if.then, label %if.end, !dbg !4902

if.then:                                          ; preds = %entry
  %5 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4903
  %state = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %5, i32 0, i32 29, !dbg !4904
  %6 = load i32, i32* %state, align 4, !dbg !4904
  %conv = trunc i32 %6 to i16, !dbg !4903
  %7 = load %struct.apci1500_private*, %struct.apci1500_private** %devpriv, align 8, !dbg !4905
  %addon = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %7, i32 0, i32 1, !dbg !4906
  %8 = load i64, i64* %addon, align 8, !dbg !4906
  %add = add i64 %8, 2, !dbg !4907
  %conv1 = trunc i64 %add to i32, !dbg !4905
  call void @outw(i16 zeroext %conv, i32 %conv1) #6, !dbg !4908
  br label %if.end, !dbg !4908

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4909
  %state2 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %9, i32 0, i32 29, !dbg !4910
  %10 = load i32, i32* %state2, align 4, !dbg !4910
  %11 = load i32*, i32** %data.addr, align 8, !dbg !4911
  %arrayidx = getelementptr i32, i32* %11, i64 1, !dbg !4911
  store i32 %10, i32* %arrayidx, align 4, !dbg !4912
  %12 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4913
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %12, i32 0, i32 1, !dbg !4914
  %13 = load i32, i32* %n, align 4, !dbg !4914
  ret i32 %13, !dbg !4915
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outw(i16 zeroext %value, i32 %port) #2 !dbg !4916 {
entry:
  %value.addr = alloca i16, align 2
  %port.addr = alloca i32, align 4
  store i16 %value, i16* %value.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %value.addr, metadata !4919, metadata !DIExpression()), !dbg !4920
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !4921, metadata !DIExpression()), !dbg !4920
  %0 = load i16, i16* %value.addr, align 2, !dbg !4920
  %1 = load i32, i32* %port.addr, align 4, !dbg !4920
  call void asm sideeffect "outw ${0:w}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %1) #5, !dbg !4920, !srcloc !4922
  ret void, !dbg !4920
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci1500_timer_insn_config(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !4923 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %devpriv = alloca %struct.apci1500_private*, align 8
  %chan = alloca i32, align 4
  %val = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4924, metadata !DIExpression()), !dbg !4925
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4926, metadata !DIExpression()), !dbg !4927
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !4928, metadata !DIExpression()), !dbg !4929
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !4930, metadata !DIExpression()), !dbg !4931
  call void @llvm.dbg.declare(metadata %struct.apci1500_private** %devpriv, metadata !4932, metadata !DIExpression()), !dbg !4933
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4934
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !4935
  %1 = load i8*, i8** %private, align 8, !dbg !4935
  %2 = bitcast i8* %1 to %struct.apci1500_private*, !dbg !4934
  store %struct.apci1500_private* %2, %struct.apci1500_private** %devpriv, align 8, !dbg !4933
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !4936, metadata !DIExpression()), !dbg !4937
  %3 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4938
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %3, i32 0, i32 4, !dbg !4938
  %4 = load i32, i32* %chanspec, align 4, !dbg !4938
  %and = and i32 %4, 65535, !dbg !4938
  store i32 %and, i32* %chan, align 4, !dbg !4937
  call void @llvm.dbg.declare(metadata i32* %val, metadata !4939, metadata !DIExpression()), !dbg !4940
  %5 = load i32*, i32** %data.addr, align 8, !dbg !4941
  %arrayidx = getelementptr i32, i32* %5, i64 0, !dbg !4941
  %6 = load i32, i32* %arrayidx, align 4, !dbg !4941
  switch i32 %6, label %sw.default98 [
    i32 31, label %sw.bb
    i32 32, label %sw.bb8
    i32 33, label %sw.bb9
    i32 4097, label %sw.bb31
    i32 2003, label %sw.bb40
    i32 2004, label %sw.bb56
    i32 2001, label %sw.bb69
    i32 2002, label %sw.bb93
  ], !dbg !4942

sw.bb:                                            ; preds = %entry
  %7 = load i32*, i32** %data.addr, align 8, !dbg !4943
  %arrayidx1 = getelementptr i32, i32* %7, i64 1, !dbg !4943
  %8 = load i32, i32* %arrayidx1, align 4, !dbg !4943
  %9 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4945
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %9, i32 0, i32 13, !dbg !4946
  %10 = load i32, i32* %maxdata, align 8, !dbg !4946
  %and2 = and i32 %8, %10, !dbg !4947
  store i32 %and2, i32* %val, align 4, !dbg !4948
  %11 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4949
  %12 = load i32, i32* %val, align 4, !dbg !4950
  %and3 = and i32 %12, 255, !dbg !4951
  %13 = load i32, i32* %chan, align 4, !dbg !4952
  %mul = mul i32 %13, 2, !dbg !4952
  %add = add i32 23, %mul, !dbg !4952
  call void @z8536_write(%struct.comedi_device* %11, i32 %and3, i32 %add) #6, !dbg !4953
  %14 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4954
  %15 = load i32, i32* %val, align 4, !dbg !4955
  %shr = lshr i32 %15, 8, !dbg !4956
  %and4 = and i32 %shr, 255, !dbg !4957
  %16 = load i32, i32* %chan, align 4, !dbg !4958
  %mul5 = mul i32 %16, 2, !dbg !4958
  %add6 = add i32 22, %mul5, !dbg !4958
  call void @z8536_write(%struct.comedi_device* %14, i32 %and4, i32 %add6) #6, !dbg !4959
  %17 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4960
  %18 = load i32, i32* %chan, align 4, !dbg !4961
  call void @apci1500_timer_enable(%struct.comedi_device* %17, i32 %18, i1 zeroext true) #6, !dbg !4962
  %19 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4963
  %20 = load i32, i32* %chan, align 4, !dbg !4964
  %add7 = add i32 10, %20, !dbg !4964
  call void @z8536_write(%struct.comedi_device* %19, i32 4, i32 %add7) #6, !dbg !4965
  br label %sw.epilog99, !dbg !4966

sw.bb8:                                           ; preds = %entry
  %21 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4967
  %22 = load i32, i32* %chan, align 4, !dbg !4968
  call void @apci1500_timer_enable(%struct.comedi_device* %21, i32 %22, i1 zeroext false) #6, !dbg !4969
  br label %sw.epilog99, !dbg !4970

sw.bb9:                                           ; preds = %entry
  %23 = load i32*, i32** %data.addr, align 8, !dbg !4971
  %arrayidx10 = getelementptr i32, i32* %23, i64 1, !dbg !4971
  store i32 0, i32* %arrayidx10, align 4, !dbg !4972
  %24 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4973
  %25 = load i32, i32* %chan, align 4, !dbg !4974
  %add11 = add i32 10, %25, !dbg !4974
  %call = call i32 @z8536_read(%struct.comedi_device* %24, i32 %add11) #6, !dbg !4975
  store i32 %call, i32* %val, align 4, !dbg !4976
  %26 = load i32, i32* %val, align 4, !dbg !4977
  %conv = zext i32 %26 to i64, !dbg !4977
  %and12 = and i64 %conv, 1, !dbg !4979
  %tobool = icmp ne i64 %and12, 0, !dbg !4979
  br i1 %tobool, label %if.then, label %if.end, !dbg !4980

if.then:                                          ; preds = %sw.bb9
  %27 = load i32*, i32** %data.addr, align 8, !dbg !4981
  %arrayidx13 = getelementptr i32, i32* %27, i64 1, !dbg !4981
  %28 = load i32, i32* %arrayidx13, align 4, !dbg !4982
  %or = or i32 %28, 2, !dbg !4982
  store i32 %or, i32* %arrayidx13, align 4, !dbg !4982
  br label %if.end, !dbg !4981

if.end:                                           ; preds = %if.then, %sw.bb9
  %29 = load i32, i32* %val, align 4, !dbg !4983
  %conv14 = zext i32 %29 to i64, !dbg !4983
  %and15 = and i64 %conv14, 4, !dbg !4985
  %tobool16 = icmp ne i64 %and15, 0, !dbg !4985
  br i1 %tobool16, label %if.then17, label %if.end20, !dbg !4986

if.then17:                                        ; preds = %if.end
  %30 = load i32*, i32** %data.addr, align 8, !dbg !4987
  %arrayidx18 = getelementptr i32, i32* %30, i64 1, !dbg !4987
  %31 = load i32, i32* %arrayidx18, align 4, !dbg !4988
  %or19 = or i32 %31, 1, !dbg !4988
  store i32 %or19, i32* %arrayidx18, align 4, !dbg !4988
  br label %if.end20, !dbg !4987

if.end20:                                         ; preds = %if.then17, %if.end
  %32 = load i32, i32* %val, align 4, !dbg !4989
  %conv21 = zext i32 %32 to i64, !dbg !4989
  %and22 = and i64 %conv21, 32, !dbg !4991
  %tobool23 = icmp ne i64 %and22, 0, !dbg !4991
  br i1 %tobool23, label %if.then24, label %if.end29, !dbg !4992

if.then24:                                        ; preds = %if.end20
  %33 = load i32*, i32** %data.addr, align 8, !dbg !4993
  %arrayidx25 = getelementptr i32, i32* %33, i64 1, !dbg !4993
  %34 = load i32, i32* %arrayidx25, align 4, !dbg !4995
  %or26 = or i32 %34, 4, !dbg !4995
  store i32 %or26, i32* %arrayidx25, align 4, !dbg !4995
  %35 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4996
  %36 = load i32, i32* %chan, align 4, !dbg !4997
  %add27 = add i32 10, %36, !dbg !4997
  %call28 = call zeroext i1 @apci1500_ack_irq(%struct.comedi_device* %35, i32 %add27) #6, !dbg !4998
  br label %if.end29, !dbg !4999

if.end29:                                         ; preds = %if.then24, %if.end20
  %37 = load i32*, i32** %data.addr, align 8, !dbg !5000
  %arrayidx30 = getelementptr i32, i32* %37, i64 2, !dbg !5000
  store i32 7, i32* %arrayidx30, align 4, !dbg !5001
  br label %sw.epilog99, !dbg !5002

sw.bb31:                                          ; preds = %entry
  %38 = load i32*, i32** %data.addr, align 8, !dbg !5003
  %arrayidx32 = getelementptr i32, i32* %38, i64 1, !dbg !5003
  %39 = load i32, i32* %arrayidx32, align 4, !dbg !5003
  switch i32 %39, label %sw.default [
    i32 0, label %sw.bb33
    i32 2, label %sw.bb34
    i32 4, label %sw.bb35
    i32 6, label %sw.bb36
    i32 8, label %sw.bb37
    i32 10, label %sw.bb38
  ], !dbg !5004

sw.bb33:                                          ; preds = %sw.bb31
  store i32 33, i32* %val, align 4, !dbg !5005
  br label %sw.epilog, !dbg !5007

sw.bb34:                                          ; preds = %sw.bb31
  store i32 17, i32* %val, align 4, !dbg !5008
  br label %sw.epilog, !dbg !5009

sw.bb35:                                          ; preds = %sw.bb31
  store i32 128, i32* %val, align 4, !dbg !5010
  br label %sw.epilog, !dbg !5011

sw.bb36:                                          ; preds = %sw.bb31
  store i32 130, i32* %val, align 4, !dbg !5012
  br label %sw.epilog, !dbg !5013

sw.bb37:                                          ; preds = %sw.bb31
  store i32 4, i32* %val, align 4, !dbg !5014
  br label %sw.epilog, !dbg !5015

sw.bb38:                                          ; preds = %sw.bb31
  store i32 84, i32* %val, align 4, !dbg !5016
  br label %sw.epilog, !dbg !5017

sw.default:                                       ; preds = %sw.bb31
  store i32 -22, i32* %retval, align 4, !dbg !5018
  br label %return, !dbg !5018

sw.epilog:                                        ; preds = %sw.bb38, %sw.bb37, %sw.bb36, %sw.bb35, %sw.bb34, %sw.bb33
  %40 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5019
  %41 = load i32, i32* %chan, align 4, !dbg !5020
  call void @apci1500_timer_enable(%struct.comedi_device* %40, i32 %41, i1 zeroext false) #6, !dbg !5021
  %42 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5022
  %43 = load i32, i32* %val, align 4, !dbg !5023
  %44 = load i32, i32* %chan, align 4, !dbg !5024
  %add39 = add i32 28, %44, !dbg !5024
  call void @z8536_write(%struct.comedi_device* %42, i32 %43, i32 %add39) #6, !dbg !5025
  br label %sw.epilog99, !dbg !5026

sw.bb40:                                          ; preds = %entry
  %45 = load i32*, i32** %data.addr, align 8, !dbg !5027
  %arrayidx41 = getelementptr i32, i32* %45, i64 1, !dbg !5027
  %46 = load i32, i32* %arrayidx41, align 4, !dbg !5027
  %cmp = icmp ugt i32 %46, 2, !dbg !5029
  br i1 %cmp, label %if.then43, label %if.end44, !dbg !5030

if.then43:                                        ; preds = %sw.bb40
  store i32 -22, i32* %retval, align 4, !dbg !5031
  br label %return, !dbg !5031

if.end44:                                         ; preds = %sw.bb40
  %47 = load i32*, i32** %data.addr, align 8, !dbg !5032
  %arrayidx45 = getelementptr i32, i32* %47, i64 1, !dbg !5032
  %48 = load i32, i32* %arrayidx45, align 4, !dbg !5032
  %49 = load %struct.apci1500_private*, %struct.apci1500_private** %devpriv, align 8, !dbg !5033
  %clk_src = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %49, i32 0, i32 2, !dbg !5034
  store i32 %48, i32* %clk_src, align 8, !dbg !5035
  %50 = load %struct.apci1500_private*, %struct.apci1500_private** %devpriv, align 8, !dbg !5036
  %clk_src46 = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %50, i32 0, i32 2, !dbg !5038
  %51 = load i32, i32* %clk_src46, align 8, !dbg !5038
  %cmp47 = icmp eq i32 %51, 2, !dbg !5039
  br i1 %cmp47, label %if.then49, label %if.end51, !dbg !5040

if.then49:                                        ; preds = %if.end44
  %52 = load %struct.apci1500_private*, %struct.apci1500_private** %devpriv, align 8, !dbg !5041
  %clk_src50 = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %52, i32 0, i32 2, !dbg !5042
  store i32 3, i32* %clk_src50, align 8, !dbg !5043
  br label %if.end51, !dbg !5041

if.end51:                                         ; preds = %if.then49, %if.end44
  %53 = load %struct.apci1500_private*, %struct.apci1500_private** %devpriv, align 8, !dbg !5044
  %clk_src52 = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %53, i32 0, i32 2, !dbg !5045
  %54 = load i32, i32* %clk_src52, align 8, !dbg !5045
  %conv53 = trunc i32 %54 to i16, !dbg !5044
  %55 = load %struct.apci1500_private*, %struct.apci1500_private** %devpriv, align 8, !dbg !5046
  %addon = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %55, i32 0, i32 1, !dbg !5047
  %56 = load i64, i64* %addon, align 8, !dbg !5047
  %add54 = add i64 %56, 0, !dbg !5048
  %conv55 = trunc i64 %add54 to i32, !dbg !5046
  call void @outw(i16 zeroext %conv53, i32 %conv55) #6, !dbg !5049
  br label %sw.epilog99, !dbg !5050

sw.bb56:                                          ; preds = %entry
  %57 = load %struct.apci1500_private*, %struct.apci1500_private** %devpriv, align 8, !dbg !5051
  %clk_src57 = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %57, i32 0, i32 2, !dbg !5052
  %58 = load i32, i32* %clk_src57, align 8, !dbg !5052
  switch i32 %58, label %sw.default67 [
    i32 0, label %sw.bb58
    i32 1, label %sw.bb61
    i32 3, label %sw.bb64
  ], !dbg !5053

sw.bb58:                                          ; preds = %sw.bb56
  %59 = load i32*, i32** %data.addr, align 8, !dbg !5054
  %arrayidx59 = getelementptr i32, i32* %59, i64 1, !dbg !5054
  store i32 0, i32* %arrayidx59, align 4, !dbg !5056
  %60 = load i32*, i32** %data.addr, align 8, !dbg !5057
  %arrayidx60 = getelementptr i32, i32* %60, i64 2, !dbg !5057
  store i32 17879, i32* %arrayidx60, align 4, !dbg !5058
  br label %sw.epilog68, !dbg !5059

sw.bb61:                                          ; preds = %sw.bb56
  %61 = load i32*, i32** %data.addr, align 8, !dbg !5060
  %arrayidx62 = getelementptr i32, i32* %61, i64 1, !dbg !5060
  store i32 1, i32* %arrayidx62, align 4, !dbg !5061
  %62 = load i32*, i32** %data.addr, align 8, !dbg !5062
  %arrayidx63 = getelementptr i32, i32* %62, i64 2, !dbg !5062
  store i32 573066, i32* %arrayidx63, align 4, !dbg !5063
  br label %sw.epilog68, !dbg !5064

sw.bb64:                                          ; preds = %sw.bb56
  %63 = load i32*, i32** %data.addr, align 8, !dbg !5065
  %arrayidx65 = getelementptr i32, i32* %63, i64 1, !dbg !5065
  store i32 2, i32* %arrayidx65, align 4, !dbg !5066
  %64 = load i32*, i32** %data.addr, align 8, !dbg !5067
  %arrayidx66 = getelementptr i32, i32* %64, i64 2, !dbg !5067
  store i32 1164822, i32* %arrayidx66, align 4, !dbg !5068
  br label %sw.epilog68, !dbg !5069

sw.default67:                                     ; preds = %sw.bb56
  store i32 -22, i32* %retval, align 4, !dbg !5070
  br label %return, !dbg !5070

sw.epilog68:                                      ; preds = %sw.bb64, %sw.bb61, %sw.bb58
  br label %sw.epilog99, !dbg !5071

sw.bb69:                                          ; preds = %entry
  %65 = load i32, i32* %chan, align 4, !dbg !5072
  %cmp70 = icmp eq i32 %65, 0, !dbg !5074
  br i1 %cmp70, label %if.then72, label %if.end73, !dbg !5075

if.then72:                                        ; preds = %sw.bb69
  store i32 -22, i32* %retval, align 4, !dbg !5076
  br label %return, !dbg !5076

if.end73:                                         ; preds = %sw.bb69
  %66 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5077
  %67 = load i32, i32* %chan, align 4, !dbg !5078
  %add74 = add i32 28, %67, !dbg !5078
  %call75 = call i32 @z8536_read(%struct.comedi_device* %66, i32 %add74) #6, !dbg !5079
  store i32 %call75, i32* %val, align 4, !dbg !5080
  %68 = load i32, i32* %val, align 4, !dbg !5081
  %conv76 = zext i32 %68 to i64, !dbg !5081
  %and77 = and i64 %conv76, 8, !dbg !5081
  %conv78 = trunc i64 %and77 to i32, !dbg !5081
  store i32 %conv78, i32* %val, align 4, !dbg !5081
  %69 = load i32*, i32** %data.addr, align 8, !dbg !5082
  %arrayidx79 = getelementptr i32, i32* %69, i64 1, !dbg !5082
  %70 = load i32, i32* %arrayidx79, align 4, !dbg !5082
  %cmp80 = icmp eq i32 %70, 1, !dbg !5084
  br i1 %cmp80, label %if.then82, label %if.else, !dbg !5085

if.then82:                                        ; preds = %if.end73
  %71 = load i32, i32* %val, align 4, !dbg !5086
  %conv83 = zext i32 %71 to i64, !dbg !5086
  %or84 = or i64 %conv83, 8, !dbg !5086
  %conv85 = trunc i64 %or84 to i32, !dbg !5086
  store i32 %conv85, i32* %val, align 4, !dbg !5086
  br label %if.end91, !dbg !5087

if.else:                                          ; preds = %if.end73
  %72 = load i32*, i32** %data.addr, align 8, !dbg !5088
  %arrayidx86 = getelementptr i32, i32* %72, i64 1, !dbg !5088
  %73 = load i32, i32* %arrayidx86, align 4, !dbg !5088
  %cmp87 = icmp ugt i32 %73, 1, !dbg !5090
  br i1 %cmp87, label %if.then89, label %if.end90, !dbg !5091

if.then89:                                        ; preds = %if.else
  store i32 -22, i32* %retval, align 4, !dbg !5092
  br label %return, !dbg !5092

if.end90:                                         ; preds = %if.else
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.then82
  %74 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5093
  %75 = load i32, i32* %val, align 4, !dbg !5094
  %76 = load i32, i32* %chan, align 4, !dbg !5095
  %add92 = add i32 28, %76, !dbg !5095
  call void @z8536_write(%struct.comedi_device* %74, i32 %75, i32 %add92) #6, !dbg !5096
  br label %sw.epilog99, !dbg !5097

sw.bb93:                                          ; preds = %entry
  %77 = load i32, i32* %chan, align 4, !dbg !5098
  %cmp94 = icmp eq i32 %77, 0, !dbg !5100
  br i1 %cmp94, label %if.then96, label %if.end97, !dbg !5101

if.then96:                                        ; preds = %sw.bb93
  store i32 -22, i32* %retval, align 4, !dbg !5102
  br label %return, !dbg !5102

if.end97:                                         ; preds = %sw.bb93
  br label %sw.epilog99, !dbg !5103

sw.default98:                                     ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5104
  br label %return, !dbg !5104

sw.epilog99:                                      ; preds = %if.end97, %if.end91, %sw.epilog68, %if.end51, %sw.epilog, %if.end29, %sw.bb8, %sw.bb
  %78 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5105
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %78, i32 0, i32 1, !dbg !5106
  %79 = load i32, i32* %n, align 4, !dbg !5106
  store i32 %79, i32* %retval, align 4, !dbg !5107
  br label %return, !dbg !5107

return:                                           ; preds = %sw.epilog99, %sw.default98, %if.then96, %if.then89, %if.then72, %sw.default67, %if.then43, %sw.default
  %80 = load i32, i32* %retval, align 4, !dbg !5108
  ret i32 %80, !dbg !5108
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci1500_timer_insn_write(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5109 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %chan = alloca i32, align 4
  %cmd = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5110, metadata !DIExpression()), !dbg !5111
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5112, metadata !DIExpression()), !dbg !5113
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5114, metadata !DIExpression()), !dbg !5115
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5116, metadata !DIExpression()), !dbg !5117
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !5118, metadata !DIExpression()), !dbg !5119
  %0 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5120
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %0, i32 0, i32 4, !dbg !5120
  %1 = load i32, i32* %chanspec, align 4, !dbg !5120
  %and = and i32 %1, 65535, !dbg !5120
  store i32 %and, i32* %chan, align 4, !dbg !5119
  call void @llvm.dbg.declare(metadata i32* %cmd, metadata !5121, metadata !DIExpression()), !dbg !5122
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5123
  %3 = load i32, i32* %chan, align 4, !dbg !5124
  %add = add i32 10, %3, !dbg !5124
  %call = call i32 @z8536_read(%struct.comedi_device* %2, i32 %add) #6, !dbg !5125
  store i32 %call, i32* %cmd, align 4, !dbg !5126
  %4 = load i32, i32* %cmd, align 4, !dbg !5127
  %conv = zext i32 %4 to i64, !dbg !5127
  %and1 = and i64 %conv, 4, !dbg !5127
  %conv2 = trunc i64 %and1 to i32, !dbg !5127
  store i32 %conv2, i32* %cmd, align 4, !dbg !5127
  %5 = load i32, i32* %cmd, align 4, !dbg !5128
  %conv3 = zext i32 %5 to i64, !dbg !5128
  %or = or i64 %conv3, 2, !dbg !5128
  %conv4 = trunc i64 %or to i32, !dbg !5128
  store i32 %conv4, i32* %cmd, align 4, !dbg !5128
  %6 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5129
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %6, i32 0, i32 1, !dbg !5131
  %7 = load i32, i32* %n, align 4, !dbg !5131
  %tobool = icmp ne i32 %7, 0, !dbg !5129
  br i1 %tobool, label %if.then, label %if.end, !dbg !5132

if.then:                                          ; preds = %entry
  %8 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5133
  %9 = load i32, i32* %cmd, align 4, !dbg !5134
  %10 = load i32, i32* %chan, align 4, !dbg !5135
  %add5 = add i32 10, %10, !dbg !5135
  call void @z8536_write(%struct.comedi_device* %8, i32 %9, i32 %add5) #6, !dbg !5136
  br label %if.end, !dbg !5136

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5137
  %n6 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %11, i32 0, i32 1, !dbg !5138
  %12 = load i32, i32* %n6, align 4, !dbg !5138
  ret i32 %12, !dbg !5139
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci1500_timer_insn_read(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5140 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %chan = alloca i32, align 4
  %cmd = alloca i32, align 4
  %val = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5141, metadata !DIExpression()), !dbg !5142
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5143, metadata !DIExpression()), !dbg !5144
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5145, metadata !DIExpression()), !dbg !5146
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5147, metadata !DIExpression()), !dbg !5148
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !5149, metadata !DIExpression()), !dbg !5150
  %0 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5151
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %0, i32 0, i32 4, !dbg !5151
  %1 = load i32, i32* %chanspec, align 4, !dbg !5151
  %and = and i32 %1, 65535, !dbg !5151
  store i32 %and, i32* %chan, align 4, !dbg !5150
  call void @llvm.dbg.declare(metadata i32* %cmd, metadata !5152, metadata !DIExpression()), !dbg !5153
  call void @llvm.dbg.declare(metadata i32* %val, metadata !5154, metadata !DIExpression()), !dbg !5155
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5156, metadata !DIExpression()), !dbg !5157
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5158
  %3 = load i32, i32* %chan, align 4, !dbg !5159
  %add = add i32 10, %3, !dbg !5159
  %call = call i32 @z8536_read(%struct.comedi_device* %2, i32 %add) #6, !dbg !5160
  store i32 %call, i32* %cmd, align 4, !dbg !5161
  %4 = load i32, i32* %cmd, align 4, !dbg !5162
  %conv = zext i32 %4 to i64, !dbg !5162
  %and1 = and i64 %conv, 4, !dbg !5162
  %conv2 = trunc i64 %and1 to i32, !dbg !5162
  store i32 %conv2, i32* %cmd, align 4, !dbg !5162
  %5 = load i32, i32* %cmd, align 4, !dbg !5163
  %conv3 = zext i32 %5 to i64, !dbg !5163
  %or = or i64 %conv3, 8, !dbg !5163
  %conv4 = trunc i64 %or to i32, !dbg !5163
  store i32 %conv4, i32* %cmd, align 4, !dbg !5163
  store i32 0, i32* %i, align 4, !dbg !5164
  br label %for.cond, !dbg !5166

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4, !dbg !5167
  %7 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5169
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %7, i32 0, i32 1, !dbg !5170
  %8 = load i32, i32* %n, align 4, !dbg !5170
  %cmp = icmp ult i32 %6, %8, !dbg !5171
  br i1 %cmp, label %for.body, label %for.end, !dbg !5172

for.body:                                         ; preds = %for.cond
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5173
  %10 = load i32, i32* %cmd, align 4, !dbg !5175
  %11 = load i32, i32* %chan, align 4, !dbg !5176
  %add6 = add i32 10, %11, !dbg !5176
  call void @z8536_write(%struct.comedi_device* %9, i32 %10, i32 %add6) #6, !dbg !5177
  %12 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5178
  %13 = load i32, i32* %chan, align 4, !dbg !5179
  %mul = mul i32 %13, 2, !dbg !5179
  %add7 = add i32 16, %mul, !dbg !5179
  %call8 = call i32 @z8536_read(%struct.comedi_device* %12, i32 %add7) #6, !dbg !5180
  %shl = shl i32 %call8, 8, !dbg !5181
  store i32 %shl, i32* %val, align 4, !dbg !5182
  %14 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5183
  %15 = load i32, i32* %chan, align 4, !dbg !5184
  %mul9 = mul i32 %15, 2, !dbg !5184
  %add10 = add i32 17, %mul9, !dbg !5184
  %call11 = call i32 @z8536_read(%struct.comedi_device* %14, i32 %add10) #6, !dbg !5185
  %16 = load i32, i32* %val, align 4, !dbg !5186
  %or12 = or i32 %16, %call11, !dbg !5186
  store i32 %or12, i32* %val, align 4, !dbg !5186
  %17 = load i32, i32* %val, align 4, !dbg !5187
  %18 = load i32*, i32** %data.addr, align 8, !dbg !5188
  %19 = load i32, i32* %i, align 4, !dbg !5189
  %idxprom = sext i32 %19 to i64, !dbg !5188
  %arrayidx = getelementptr i32, i32* %18, i64 %idxprom, !dbg !5188
  store i32 %17, i32* %arrayidx, align 4, !dbg !5190
  br label %for.inc, !dbg !5191

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4, !dbg !5192
  %inc = add i32 %20, 1, !dbg !5192
  store i32 %inc, i32* %i, align 4, !dbg !5192
  br label %for.cond, !dbg !5193, !llvm.loop !5194

for.end:                                          ; preds = %for.cond
  %21 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5196
  %n13 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %21, i32 0, i32 1, !dbg !5197
  %22 = load i32, i32* %n13, align 4, !dbg !5197
  ret i32 %22, !dbg !5198
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @inl(i32 %port) #2 !dbg !5199 {
entry:
  %port.addr = alloca i32, align 4
  %value = alloca i32, align 4
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5202, metadata !DIExpression()), !dbg !5203
  call void @llvm.dbg.declare(metadata i32* %value, metadata !5204, metadata !DIExpression()), !dbg !5203
  %0 = load i32, i32* %port.addr, align 4, !dbg !5203
  %1 = call i32 asm sideeffect "inl ${1:w}, $0", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #5, !dbg !5203, !srcloc !5205
  store i32 %1, i32* %value, align 4, !dbg !5203
  %2 = load i32, i32* %value, align 4, !dbg !5203
  ret i32 %2, !dbg !5203
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #2 !dbg !5206 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !5209, metadata !DIExpression()), !dbg !5210
  %call = call i64 @arch_local_save_flags() #6, !dbg !5211
  store i64 %call, i64* %f, align 8, !dbg !5212
  call void @arch_local_irq_disable() #6, !dbg !5213
  %0 = load i64, i64* %f, align 8, !dbg !5214
  ret i64 %0, !dbg !5215
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @inb(i32 %port) #2 !dbg !5216 {
entry:
  %port.addr = alloca i32, align 4
  %value = alloca i8, align 1
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5219, metadata !DIExpression()), !dbg !5220
  call void @llvm.dbg.declare(metadata i8* %value, metadata !5221, metadata !DIExpression()), !dbg !5220
  %0 = load i32, i32* %port.addr, align 4, !dbg !5220
  %1 = call i8 asm sideeffect "inb ${1:w}, ${0:b}", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #5, !dbg !5220, !srcloc !5222
  store i8 %1, i8* %value, align 1, !dbg !5220
  %2 = load i8, i8* %value, align 1, !dbg !5220
  ret i8 %2, !dbg !5220
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outb(i8 zeroext %value, i32 %port) #2 !dbg !5223 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i32, align 4
  store i8 %value, i8* %value.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %value.addr, metadata !5226, metadata !DIExpression()), !dbg !5227
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5228, metadata !DIExpression()), !dbg !5227
  %0 = load i8, i8* %value.addr, align 1, !dbg !5227
  %1 = load i32, i32* %port.addr, align 4, !dbg !5227
  call void asm sideeffect "outb ${0:b}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i8 %0, i32 %1) #5, !dbg !5227, !srcloc !5229
  ret void, !dbg !5227
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @z8536_write(%struct.comedi_device* %dev, i32 %val, i32 %reg) #2 !dbg !5230 {
entry:
  %lock.addr.i26 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i26, metadata !4520, metadata !DIExpression()), !dbg !5233
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4527, metadata !DIExpression()), !dbg !5235
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4529, metadata !DIExpression()), !dbg !5236
  %dev.addr = alloca %struct.comedi_device*, align 8
  %val.addr = alloca i32, align 4
  %reg.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5243, metadata !DIExpression()), !dbg !5244
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5245, metadata !DIExpression()), !dbg !5246
  store i32 %reg, i32* %reg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reg.addr, metadata !5247, metadata !DIExpression()), !dbg !5248
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5249, metadata !DIExpression()), !dbg !5250
  br label %do.body, !dbg !5251

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5252

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5253, metadata !DIExpression()), !dbg !5255
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5256, metadata !DIExpression()), !dbg !5255
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !5255
  %conv = zext i1 %cmp to i32, !dbg !5255
  store i32 1, i32* %tmp, align 4, !dbg !5255
  %0 = load i32, i32* %tmp, align 4, !dbg !5255
  br label %do.body2, !dbg !5257

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !5258

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !5259

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !5261, metadata !DIExpression()), !dbg !5264
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !5265, metadata !DIExpression()), !dbg !5264
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !5264
  %conv8 = zext i1 %cmp7 to i32, !dbg !5264
  store i32 1, i32* %tmp9, align 4, !dbg !5264
  %1 = load i32, i32* %tmp9, align 4, !dbg !5264
  %call = call i64 @arch_local_irq_save() #6, !dbg !5266
  store i64 %call, i64* %flags, align 8, !dbg !5266
  br label %do.end, !dbg !5266

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !5259

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !5258

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5267, !srcloc !5268
  br label %do.body12, !dbg !5267

do.body12:                                        ; preds = %do.body11
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5269
  %spinlock = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %2, i32 0, i32 11, !dbg !5269
  store %struct.spinlock* %spinlock, %struct.spinlock** %lock.addr.i, align 8
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5270
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !5271
  %rlock.i = bitcast %union.anon.3* %4 to %struct.raw_spinlock*, !dbg !5271
  br label %do.end14, !dbg !5269

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !5267

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !5258

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !5257

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !5252

do.end18:                                         ; preds = %do.end17
  %5 = load i32, i32* %reg.addr, align 4, !dbg !5272
  %conv19 = trunc i32 %5 to i8, !dbg !5272
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5273
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 18, !dbg !5274
  %7 = load i64, i64* %iobase, align 8, !dbg !5274
  %add = add i64 %7, 3, !dbg !5275
  %conv20 = trunc i64 %add to i32, !dbg !5273
  call void @outb(i8 zeroext %conv19, i32 %conv20) #6, !dbg !5276
  %8 = load i32, i32* %val.addr, align 4, !dbg !5277
  %conv21 = trunc i32 %8 to i8, !dbg !5277
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5278
  %iobase22 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 18, !dbg !5279
  %10 = load i64, i64* %iobase22, align 8, !dbg !5279
  %add23 = add i64 %10, 3, !dbg !5280
  %conv24 = trunc i64 %add23 to i32, !dbg !5278
  call void @outb(i8 zeroext %conv21, i32 %conv24) #6, !dbg !5281
  %11 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5282
  %spinlock25 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 11, !dbg !5283
  %12 = load i64, i64* %flags, align 8, !dbg !5284
  store %struct.spinlock* %spinlock25, %struct.spinlock** %lock.addr.i26, align 8
  store i64 %12, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !230, metadata !4593, metadata !DIExpression()) #5, !dbg !5285
  call void @llvm.dbg.declare(metadata !230, metadata !4597, metadata !DIExpression()) #5, !dbg !5285
  store i32 1, i32* %tmp.i, align 4, !dbg !5285
  %13 = load i32, i32* %tmp.i, align 4, !dbg !5285
  call void @llvm.dbg.declare(metadata !230, metadata !4598, metadata !DIExpression()) #5, !dbg !5286
  call void @llvm.dbg.declare(metadata !230, metadata !4604, metadata !DIExpression()) #5, !dbg !5286
  store i32 1, i32* %tmp8.i, align 4, !dbg !5286
  %14 = load i32, i32* %tmp8.i, align 4, !dbg !5286
  %15 = load i64, i64* %flags.addr.i, align 8, !dbg !5287
  call void @arch_local_irq_restore(i64 %15) #7, !dbg !5287
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5288, !srcloc !4608
  %16 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i26, align 8, !dbg !5289
  %17 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %16, i32 0, i32 0, !dbg !5289
  %rlock.i27 = bitcast %union.anon.3* %17 to %struct.raw_spinlock*, !dbg !5289
  ret void, !dbg !5290
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #2 !dbg !5291 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !5292, metadata !DIExpression()), !dbg !5294
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5295, metadata !DIExpression()), !dbg !5294
  %0 = load i64, i64* %__edi, align 8, !dbg !5294
  store i64 %0, i64* %__edi, align 8, !dbg !5294
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5296, metadata !DIExpression()), !dbg !5294
  %1 = load i64, i64* %__esi, align 8, !dbg !5294
  store i64 %1, i64* %__esi, align 8, !dbg !5294
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5297, metadata !DIExpression()), !dbg !5294
  %2 = load i64, i64* %__edx, align 8, !dbg !5294
  store i64 %2, i64* %__edx, align 8, !dbg !5294
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5298, metadata !DIExpression()), !dbg !5294
  %3 = load i64, i64* %__ecx, align 8, !dbg !5294
  store i64 %3, i64* %__ecx, align 8, !dbg !5294
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5299, metadata !DIExpression()), !dbg !5294
  %4 = load i64, i64* %__eax, align 8, !dbg !5294
  store i64 %4, i64* %__eax, align 8, !dbg !5294
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !5294
  %6 = call i64 @llvm.read_register.i64(metadata !4271), !dbg !5300
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #5, !dbg !5300, !srcloc !5303
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5300
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5300
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5300
  call void @llvm.write_register.i64(metadata !4271, i64 %asmresult1), !dbg !5300
  %8 = load i64, i64* %__eax, align 8, !dbg !5300
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !5304, metadata !DIExpression()), !dbg !5306
  store i64 -1, i64* %__mask, align 8, !dbg !5306
  %9 = load i64, i64* %__mask, align 8, !dbg !5306
  store i64 %9, i64* %tmp, align 8, !dbg !5306
  %10 = load i64, i64* %tmp, align 8, !dbg !5306
  %and = and i64 %8, %10, !dbg !5300
  store i64 %and, i64* %__ret, align 8, !dbg !5300
  %11 = load i64, i64* %__ret, align 8, !dbg !5294
  store i64 %11, i64* %tmp2, align 8, !dbg !5307
  %12 = load i64, i64* %tmp2, align 8, !dbg !5294
  ret i64 %12, !dbg !5308
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #2 !dbg !5309 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5310, metadata !DIExpression()), !dbg !5312
  %0 = load i64, i64* %__edi, align 8, !dbg !5312
  store i64 %0, i64* %__edi, align 8, !dbg !5312
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5313, metadata !DIExpression()), !dbg !5312
  %1 = load i64, i64* %__esi, align 8, !dbg !5312
  store i64 %1, i64* %__esi, align 8, !dbg !5312
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5314, metadata !DIExpression()), !dbg !5312
  %2 = load i64, i64* %__edx, align 8, !dbg !5312
  store i64 %2, i64* %__edx, align 8, !dbg !5312
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5315, metadata !DIExpression()), !dbg !5312
  %3 = load i64, i64* %__ecx, align 8, !dbg !5312
  store i64 %3, i64* %__ecx, align 8, !dbg !5312
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5316, metadata !DIExpression()), !dbg !5312
  %4 = load i64, i64* %__eax, align 8, !dbg !5312
  store i64 %4, i64* %__eax, align 8, !dbg !5312
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !5312
  %6 = call i64 @llvm.read_register.i64(metadata !4271), !dbg !5312
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #5, !dbg !5312, !srcloc !5317
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5312
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5312
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5312
  call void @llvm.write_register.i64(metadata !4271, i64 %asmresult1), !dbg !5312
  ret void, !dbg !5318
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #4

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #2 !dbg !5319 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !5322, metadata !DIExpression()), !dbg !5323
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5324, metadata !DIExpression()), !dbg !5326
  %0 = load i64, i64* %__edi, align 8, !dbg !5326
  store i64 %0, i64* %__edi, align 8, !dbg !5326
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5327, metadata !DIExpression()), !dbg !5326
  %1 = load i64, i64* %__esi, align 8, !dbg !5326
  store i64 %1, i64* %__esi, align 8, !dbg !5326
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5328, metadata !DIExpression()), !dbg !5326
  %2 = load i64, i64* %__edx, align 8, !dbg !5326
  store i64 %2, i64* %__edx, align 8, !dbg !5326
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5329, metadata !DIExpression()), !dbg !5326
  %3 = load i64, i64* %__ecx, align 8, !dbg !5326
  store i64 %3, i64* %__ecx, align 8, !dbg !5326
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5330, metadata !DIExpression()), !dbg !5326
  %4 = load i64, i64* %__eax, align 8, !dbg !5326
  store i64 %4, i64* %__eax, align 8, !dbg !5326
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !5326
  %6 = call i64 @llvm.read_register.i64(metadata !4271), !dbg !5326
  %7 = load i64, i64* %f.addr, align 8, !dbg !5326
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #5, !dbg !5326, !srcloc !5331
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !5326
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !5326
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5326
  call void @llvm.write_register.i64(metadata !4271, i64 %asmresult1), !dbg !5326
  ret void, !dbg !5332
}

; Function Attrs: noredzone
declare dso_local i32 @request_threaded_irq(i32, i32 (i32, i8*)*, i32 (i32, i8*)*, i64, i8*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @apci1500_ack_irq(%struct.comedi_device* %dev, i32 %reg) #2 !dbg !5333 {
entry:
  %retval = alloca i1, align 1
  %dev.addr = alloca %struct.comedi_device*, align 8
  %reg.addr = alloca i32, align 4
  %val = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5336, metadata !DIExpression()), !dbg !5337
  store i32 %reg, i32* %reg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reg.addr, metadata !5338, metadata !DIExpression()), !dbg !5339
  call void @llvm.dbg.declare(metadata i32* %val, metadata !5340, metadata !DIExpression()), !dbg !5341
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5342
  %1 = load i32, i32* %reg.addr, align 4, !dbg !5343
  %call = call i32 @z8536_read(%struct.comedi_device* %0, i32 %1) #6, !dbg !5344
  store i32 %call, i32* %val, align 4, !dbg !5345
  %2 = load i32, i32* %val, align 4, !dbg !5346
  %conv = zext i32 %2 to i64, !dbg !5346
  %and = and i64 %conv, 96, !dbg !5348
  %cmp = icmp eq i64 %and, 96, !dbg !5349
  br i1 %cmp, label %if.then, label %if.end, !dbg !5350

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %val, align 4, !dbg !5351
  %and2 = and i32 %3, 15, !dbg !5351
  store i32 %and2, i32* %val, align 4, !dbg !5351
  %4 = load i32, i32* %val, align 4, !dbg !5353
  %or = or i32 %4, 32, !dbg !5353
  store i32 %or, i32* %val, align 4, !dbg !5353
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5354
  %6 = load i32, i32* %val, align 4, !dbg !5355
  %7 = load i32, i32* %reg.addr, align 4, !dbg !5356
  call void @z8536_write(%struct.comedi_device* %5, i32 %6, i32 %7) #6, !dbg !5357
  store i1 true, i1* %retval, align 1, !dbg !5358
  br label %return, !dbg !5358

if.end:                                           ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !5359
  br label %return, !dbg !5359

return:                                           ; preds = %if.end, %if.then
  %8 = load i1, i1* %retval, align 1, !dbg !5360
  ret i1 %8, !dbg !5360
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i8*, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @z8536_read(%struct.comedi_device* %dev, i32 %reg) #2 !dbg !5361 {
entry:
  %lock.addr.i27 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i27, metadata !4520, metadata !DIExpression()), !dbg !5364
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4527, metadata !DIExpression()), !dbg !5366
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4529, metadata !DIExpression()), !dbg !5367
  %dev.addr = alloca %struct.comedi_device*, align 8
  %reg.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %val = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5374, metadata !DIExpression()), !dbg !5375
  store i32 %reg, i32* %reg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reg.addr, metadata !5376, metadata !DIExpression()), !dbg !5377
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5378, metadata !DIExpression()), !dbg !5379
  call void @llvm.dbg.declare(metadata i32* %val, metadata !5380, metadata !DIExpression()), !dbg !5381
  br label %do.body, !dbg !5382

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5383

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5384, metadata !DIExpression()), !dbg !5386
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5387, metadata !DIExpression()), !dbg !5386
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !5386
  %conv = zext i1 %cmp to i32, !dbg !5386
  store i32 1, i32* %tmp, align 4, !dbg !5386
  %0 = load i32, i32* %tmp, align 4, !dbg !5386
  br label %do.body2, !dbg !5388

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !5389

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !5390

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !5392, metadata !DIExpression()), !dbg !5395
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !5396, metadata !DIExpression()), !dbg !5395
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !5395
  %conv8 = zext i1 %cmp7 to i32, !dbg !5395
  store i32 1, i32* %tmp9, align 4, !dbg !5395
  %1 = load i32, i32* %tmp9, align 4, !dbg !5395
  %call = call i64 @arch_local_irq_save() #6, !dbg !5397
  store i64 %call, i64* %flags, align 8, !dbg !5397
  br label %do.end, !dbg !5397

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !5390

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !5389

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5398, !srcloc !5399
  br label %do.body12, !dbg !5398

do.body12:                                        ; preds = %do.body11
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5400
  %spinlock = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %2, i32 0, i32 11, !dbg !5400
  store %struct.spinlock* %spinlock, %struct.spinlock** %lock.addr.i, align 8
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5401
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !5402
  %rlock.i = bitcast %union.anon.3* %4 to %struct.raw_spinlock*, !dbg !5402
  br label %do.end14, !dbg !5400

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !5398

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !5389

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !5388

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !5383

do.end18:                                         ; preds = %do.end17
  %5 = load i32, i32* %reg.addr, align 4, !dbg !5403
  %conv19 = trunc i32 %5 to i8, !dbg !5403
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5404
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 18, !dbg !5405
  %7 = load i64, i64* %iobase, align 8, !dbg !5405
  %add = add i64 %7, 3, !dbg !5406
  %conv20 = trunc i64 %add to i32, !dbg !5404
  call void @outb(i8 zeroext %conv19, i32 %conv20) #6, !dbg !5407
  %8 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5408
  %iobase21 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 18, !dbg !5409
  %9 = load i64, i64* %iobase21, align 8, !dbg !5409
  %add22 = add i64 %9, 3, !dbg !5410
  %conv23 = trunc i64 %add22 to i32, !dbg !5408
  %call24 = call zeroext i8 @inb(i32 %conv23) #6, !dbg !5411
  %conv25 = zext i8 %call24 to i32, !dbg !5411
  store i32 %conv25, i32* %val, align 4, !dbg !5412
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5413
  %spinlock26 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 11, !dbg !5414
  %11 = load i64, i64* %flags, align 8, !dbg !5415
  store %struct.spinlock* %spinlock26, %struct.spinlock** %lock.addr.i27, align 8
  store i64 %11, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !230, metadata !4593, metadata !DIExpression()) #5, !dbg !5416
  call void @llvm.dbg.declare(metadata !230, metadata !4597, metadata !DIExpression()) #5, !dbg !5416
  store i32 1, i32* %tmp.i, align 4, !dbg !5416
  %12 = load i32, i32* %tmp.i, align 4, !dbg !5416
  call void @llvm.dbg.declare(metadata !230, metadata !4598, metadata !DIExpression()) #5, !dbg !5417
  call void @llvm.dbg.declare(metadata !230, metadata !4604, metadata !DIExpression()) #5, !dbg !5417
  store i32 1, i32* %tmp8.i, align 4, !dbg !5417
  %13 = load i32, i32* %tmp8.i, align 4, !dbg !5417
  %14 = load i64, i64* %flags.addr.i, align 8, !dbg !5418
  call void @arch_local_irq_restore(i64 %14) #7, !dbg !5418
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5419, !srcloc !4608
  %15 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i27, align 8, !dbg !5420
  %16 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %15, i32 0, i32 0, !dbg !5420
  %rlock.i28 = bitcast %union.anon.3* %16 to %struct.raw_spinlock*, !dbg !5420
  %17 = load i32, i32* %val, align 4, !dbg !5421
  ret i32 %17, !dbg !5422
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @inw(i32 %port) #2 !dbg !5423 {
entry:
  %port.addr = alloca i32, align 4
  %value = alloca i16, align 2
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5426, metadata !DIExpression()), !dbg !5427
  call void @llvm.dbg.declare(metadata i16* %value, metadata !5428, metadata !DIExpression()), !dbg !5427
  %0 = load i32, i32* %port.addr, align 4, !dbg !5427
  %1 = call i16 asm sideeffect "inw ${1:w}, ${0:w}", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #5, !dbg !5427, !srcloc !5429
  store i16 %1, i16* %value, align 2, !dbg !5427
  %2 = load i16, i16* %value, align 2, !dbg !5427
  ret i16 %2, !dbg !5427
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci1500_di_cfg_trig(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5430 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %devpriv = alloca %struct.apci1500_private*, align 8
  %trig = alloca i32, align 4
  %shift = alloca i32, align 4
  %hi_mask = alloca i32, align 4
  %lo_mask = alloca i32, align 4
  %chan_mask = alloca i32, align 4
  %old_mask = alloca i32, align 4
  %pm = alloca i32, align 4
  %pt = alloca i32, align 4
  %pp = alloca i32, align 4
  %invalid_chan = alloca i32, align 4
  %ret = alloca i32, align 4
  %src = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5431, metadata !DIExpression()), !dbg !5432
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5433, metadata !DIExpression()), !dbg !5434
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5435, metadata !DIExpression()), !dbg !5436
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5437, metadata !DIExpression()), !dbg !5438
  call void @llvm.dbg.declare(metadata %struct.apci1500_private** %devpriv, metadata !5439, metadata !DIExpression()), !dbg !5440
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5441
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5442
  %1 = load i8*, i8** %private, align 8, !dbg !5442
  %2 = bitcast i8* %1 to %struct.apci1500_private*, !dbg !5441
  store %struct.apci1500_private* %2, %struct.apci1500_private** %devpriv, align 8, !dbg !5440
  call void @llvm.dbg.declare(metadata i32* %trig, metadata !5443, metadata !DIExpression()), !dbg !5444
  %3 = load i32*, i32** %data.addr, align 8, !dbg !5445
  %arrayidx = getelementptr i32, i32* %3, i64 1, !dbg !5445
  %4 = load i32, i32* %arrayidx, align 4, !dbg !5445
  store i32 %4, i32* %trig, align 4, !dbg !5444
  call void @llvm.dbg.declare(metadata i32* %shift, metadata !5446, metadata !DIExpression()), !dbg !5447
  %5 = load i32*, i32** %data.addr, align 8, !dbg !5448
  %arrayidx1 = getelementptr i32, i32* %5, i64 3, !dbg !5448
  %6 = load i32, i32* %arrayidx1, align 4, !dbg !5448
  store i32 %6, i32* %shift, align 4, !dbg !5447
  call void @llvm.dbg.declare(metadata i32* %hi_mask, metadata !5449, metadata !DIExpression()), !dbg !5450
  call void @llvm.dbg.declare(metadata i32* %lo_mask, metadata !5451, metadata !DIExpression()), !dbg !5452
  call void @llvm.dbg.declare(metadata i32* %chan_mask, metadata !5453, metadata !DIExpression()), !dbg !5454
  call void @llvm.dbg.declare(metadata i32* %old_mask, metadata !5455, metadata !DIExpression()), !dbg !5456
  call void @llvm.dbg.declare(metadata i32* %pm, metadata !5457, metadata !DIExpression()), !dbg !5458
  call void @llvm.dbg.declare(metadata i32* %pt, metadata !5459, metadata !DIExpression()), !dbg !5460
  call void @llvm.dbg.declare(metadata i32* %pp, metadata !5461, metadata !DIExpression()), !dbg !5462
  call void @llvm.dbg.declare(metadata i32* %invalid_chan, metadata !5463, metadata !DIExpression()), !dbg !5464
  %7 = load i32, i32* %trig, align 4, !dbg !5465
  %cmp = icmp ugt i32 %7, 1, !dbg !5467
  br i1 %cmp, label %if.then, label %if.end, !dbg !5468

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5469
  br label %return, !dbg !5469

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %shift, align 4, !dbg !5471
  %cmp2 = icmp ule i32 %8, 16, !dbg !5473
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !5474

if.then3:                                         ; preds = %if.end
  %9 = load i32*, i32** %data.addr, align 8, !dbg !5475
  %arrayidx4 = getelementptr i32, i32* %9, i64 4, !dbg !5475
  %10 = load i32, i32* %arrayidx4, align 4, !dbg !5475
  %11 = load i32, i32* %shift, align 4, !dbg !5477
  %shl = shl i32 %10, %11, !dbg !5478
  store i32 %shl, i32* %hi_mask, align 4, !dbg !5479
  %12 = load i32*, i32** %data.addr, align 8, !dbg !5480
  %arrayidx5 = getelementptr i32, i32* %12, i64 5, !dbg !5480
  %13 = load i32, i32* %arrayidx5, align 4, !dbg !5480
  %14 = load i32, i32* %shift, align 4, !dbg !5481
  %shl6 = shl i32 %13, %14, !dbg !5482
  store i32 %shl6, i32* %lo_mask, align 4, !dbg !5483
  %15 = load i32, i32* %shift, align 4, !dbg !5484
  %shl7 = shl i32 1, %15, !dbg !5485
  %sub = sub i32 %shl7, 1, !dbg !5486
  store i32 %sub, i32* %old_mask, align 4, !dbg !5487
  %16 = load i32*, i32** %data.addr, align 8, !dbg !5488
  %arrayidx8 = getelementptr i32, i32* %16, i64 4, !dbg !5488
  %17 = load i32, i32* %arrayidx8, align 4, !dbg !5488
  %18 = load i32*, i32** %data.addr, align 8, !dbg !5489
  %arrayidx9 = getelementptr i32, i32* %18, i64 5, !dbg !5489
  %19 = load i32, i32* %arrayidx9, align 4, !dbg !5489
  %or = or i32 %17, %19, !dbg !5490
  %20 = load i32, i32* %shift, align 4, !dbg !5491
  %sub10 = sub i32 16, %20, !dbg !5492
  %shr = lshr i32 %or, %sub10, !dbg !5493
  store i32 %shr, i32* %invalid_chan, align 4, !dbg !5494
  br label %if.end14, !dbg !5495

if.else:                                          ; preds = %if.end
  store i32 0, i32* %hi_mask, align 4, !dbg !5496
  store i32 0, i32* %lo_mask, align 4, !dbg !5498
  store i32 65535, i32* %old_mask, align 4, !dbg !5499
  %21 = load i32*, i32** %data.addr, align 8, !dbg !5500
  %arrayidx11 = getelementptr i32, i32* %21, i64 4, !dbg !5500
  %22 = load i32, i32* %arrayidx11, align 4, !dbg !5500
  %23 = load i32*, i32** %data.addr, align 8, !dbg !5501
  %arrayidx12 = getelementptr i32, i32* %23, i64 5, !dbg !5501
  %24 = load i32, i32* %arrayidx12, align 4, !dbg !5501
  %or13 = or i32 %22, %24, !dbg !5502
  store i32 %or13, i32* %invalid_chan, align 4, !dbg !5503
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then3
  %25 = load i32, i32* %hi_mask, align 4, !dbg !5504
  %26 = load i32, i32* %lo_mask, align 4, !dbg !5505
  %or15 = or i32 %25, %26, !dbg !5506
  store i32 %or15, i32* %chan_mask, align 4, !dbg !5507
  %27 = load i32, i32* %invalid_chan, align 4, !dbg !5508
  %tobool = icmp ne i32 %27, 0, !dbg !5508
  br i1 %tobool, label %if.then16, label %if.end17, !dbg !5510

if.then16:                                        ; preds = %if.end14
  store i32 -22, i32* %retval, align 4, !dbg !5511
  br label %return, !dbg !5511

if.end17:                                         ; preds = %if.end14
  %28 = load %struct.apci1500_private*, %struct.apci1500_private** %devpriv, align 8, !dbg !5513
  %pm18 = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %28, i32 0, i32 3, !dbg !5514
  %29 = load i32, i32* %trig, align 4, !dbg !5515
  %idxprom = zext i32 %29 to i64, !dbg !5513
  %arrayidx19 = getelementptr [2 x i32], [2 x i32]* %pm18, i64 0, i64 %idxprom, !dbg !5513
  %30 = load i32, i32* %arrayidx19, align 4, !dbg !5513
  %31 = load i32, i32* %old_mask, align 4, !dbg !5516
  %and = and i32 %30, %31, !dbg !5517
  store i32 %and, i32* %pm, align 4, !dbg !5518
  %32 = load %struct.apci1500_private*, %struct.apci1500_private** %devpriv, align 8, !dbg !5519
  %pt20 = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %32, i32 0, i32 4, !dbg !5520
  %33 = load i32, i32* %trig, align 4, !dbg !5521
  %idxprom21 = zext i32 %33 to i64, !dbg !5519
  %arrayidx22 = getelementptr [2 x i32], [2 x i32]* %pt20, i64 0, i64 %idxprom21, !dbg !5519
  %34 = load i32, i32* %arrayidx22, align 4, !dbg !5519
  %35 = load i32, i32* %old_mask, align 4, !dbg !5522
  %and23 = and i32 %34, %35, !dbg !5523
  store i32 %and23, i32* %pt, align 4, !dbg !5524
  %36 = load %struct.apci1500_private*, %struct.apci1500_private** %devpriv, align 8, !dbg !5525
  %pp24 = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %36, i32 0, i32 5, !dbg !5526
  %37 = load i32, i32* %trig, align 4, !dbg !5527
  %idxprom25 = zext i32 %37 to i64, !dbg !5525
  %arrayidx26 = getelementptr [2 x i32], [2 x i32]* %pp24, i64 0, i64 %idxprom25, !dbg !5525
  %38 = load i32, i32* %arrayidx26, align 4, !dbg !5525
  %39 = load i32, i32* %old_mask, align 4, !dbg !5528
  %and27 = and i32 %38, %39, !dbg !5529
  store i32 %and27, i32* %pp, align 4, !dbg !5530
  %40 = load i32*, i32** %data.addr, align 8, !dbg !5531
  %arrayidx28 = getelementptr i32, i32* %40, i64 2, !dbg !5531
  %41 = load i32, i32* %arrayidx28, align 4, !dbg !5531
  switch i32 %41, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb29
    i32 2, label %sw.bb34
  ], !dbg !5532

sw.bb:                                            ; preds = %if.end17
  store i32 0, i32* %pm, align 4, !dbg !5533
  store i32 0, i32* %pt, align 4, !dbg !5535
  store i32 0, i32* %pp, align 4, !dbg !5536
  br label %sw.epilog, !dbg !5537

sw.bb29:                                          ; preds = %if.end17
  %42 = load i32, i32* %chan_mask, align 4, !dbg !5538
  %43 = load i32, i32* %pm, align 4, !dbg !5539
  %or30 = or i32 %43, %42, !dbg !5539
  store i32 %or30, i32* %pm, align 4, !dbg !5539
  %44 = load i32, i32* %chan_mask, align 4, !dbg !5540
  %45 = load i32, i32* %pt, align 4, !dbg !5541
  %or31 = or i32 %45, %44, !dbg !5541
  store i32 %or31, i32* %pt, align 4, !dbg !5541
  %46 = load i32, i32* %hi_mask, align 4, !dbg !5542
  %47 = load i32, i32* %pp, align 4, !dbg !5543
  %or32 = or i32 %47, %46, !dbg !5543
  store i32 %or32, i32* %pp, align 4, !dbg !5543
  %48 = load i32, i32* %lo_mask, align 4, !dbg !5544
  %neg = xor i32 %48, -1, !dbg !5545
  %49 = load i32, i32* %pp, align 4, !dbg !5546
  %and33 = and i32 %49, %neg, !dbg !5546
  store i32 %and33, i32* %pp, align 4, !dbg !5546
  br label %sw.epilog, !dbg !5547

sw.bb34:                                          ; preds = %if.end17
  %50 = load i32, i32* %chan_mask, align 4, !dbg !5548
  %51 = load i32, i32* %pm, align 4, !dbg !5549
  %or35 = or i32 %51, %50, !dbg !5549
  store i32 %or35, i32* %pm, align 4, !dbg !5549
  %52 = load i32, i32* %chan_mask, align 4, !dbg !5550
  %neg36 = xor i32 %52, -1, !dbg !5551
  %53 = load i32, i32* %pt, align 4, !dbg !5552
  %and37 = and i32 %53, %neg36, !dbg !5552
  store i32 %and37, i32* %pt, align 4, !dbg !5552
  %54 = load i32, i32* %hi_mask, align 4, !dbg !5553
  %55 = load i32, i32* %pp, align 4, !dbg !5554
  %or38 = or i32 %55, %54, !dbg !5554
  store i32 %or38, i32* %pp, align 4, !dbg !5554
  %56 = load i32, i32* %lo_mask, align 4, !dbg !5555
  %neg39 = xor i32 %56, -1, !dbg !5556
  %57 = load i32, i32* %pp, align 4, !dbg !5557
  %and40 = and i32 %57, %neg39, !dbg !5557
  store i32 %and40, i32* %pp, align 4, !dbg !5557
  br label %sw.epilog, !dbg !5558

sw.default:                                       ; preds = %if.end17
  store i32 -22, i32* %retval, align 4, !dbg !5559
  br label %return, !dbg !5559

sw.epilog:                                        ; preds = %sw.bb34, %sw.bb29, %sw.bb
  %58 = load i32, i32* %trig, align 4, !dbg !5560
  %cmp41 = icmp eq i32 %58, 0, !dbg !5562
  br i1 %cmp41, label %if.then42, label %if.end58, !dbg !5563

if.then42:                                        ; preds = %sw.epilog
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5564, metadata !DIExpression()), !dbg !5566
  store i32 0, i32* %ret, align 4, !dbg !5566
  call void @llvm.dbg.declare(metadata i32* %src, metadata !5567, metadata !DIExpression()), !dbg !5568
  %59 = load i32, i32* %pt, align 4, !dbg !5569
  %and43 = and i32 %59, 255, !dbg !5570
  store i32 %and43, i32* %src, align 4, !dbg !5571
  %60 = load i32, i32* %src, align 4, !dbg !5572
  %tobool44 = icmp ne i32 %60, 0, !dbg !5572
  br i1 %tobool44, label %if.then45, label %if.end47, !dbg !5574

if.then45:                                        ; preds = %if.then42
  %61 = load i32, i32* %src, align 4, !dbg !5575
  %call = call i32 @comedi_check_trigger_is_unique(i32 %61) #6, !dbg !5576
  %62 = load i32, i32* %ret, align 4, !dbg !5577
  %or46 = or i32 %62, %call, !dbg !5577
  store i32 %or46, i32* %ret, align 4, !dbg !5577
  br label %if.end47, !dbg !5578

if.end47:                                         ; preds = %if.then45, %if.then42
  %63 = load i32, i32* %pt, align 4, !dbg !5579
  %shr48 = lshr i32 %63, 8, !dbg !5580
  %and49 = and i32 %shr48, 255, !dbg !5581
  store i32 %and49, i32* %src, align 4, !dbg !5582
  %64 = load i32, i32* %src, align 4, !dbg !5583
  %tobool50 = icmp ne i32 %64, 0, !dbg !5583
  br i1 %tobool50, label %if.then51, label %if.end54, !dbg !5585

if.then51:                                        ; preds = %if.end47
  %65 = load i32, i32* %src, align 4, !dbg !5586
  %call52 = call i32 @comedi_check_trigger_is_unique(i32 %65) #6, !dbg !5587
  %66 = load i32, i32* %ret, align 4, !dbg !5588
  %or53 = or i32 %66, %call52, !dbg !5588
  store i32 %or53, i32* %ret, align 4, !dbg !5588
  br label %if.end54, !dbg !5589

if.end54:                                         ; preds = %if.then51, %if.end47
  %67 = load i32, i32* %ret, align 4, !dbg !5590
  %tobool55 = icmp ne i32 %67, 0, !dbg !5590
  br i1 %tobool55, label %if.then56, label %if.end57, !dbg !5592

if.then56:                                        ; preds = %if.end54
  %68 = load i32, i32* %ret, align 4, !dbg !5593
  store i32 %68, i32* %retval, align 4, !dbg !5595
  br label %return, !dbg !5595

if.end57:                                         ; preds = %if.end54
  br label %if.end58, !dbg !5596

if.end58:                                         ; preds = %if.end57, %sw.epilog
  %69 = load i32, i32* %pm, align 4, !dbg !5597
  %70 = load %struct.apci1500_private*, %struct.apci1500_private** %devpriv, align 8, !dbg !5598
  %pm59 = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %70, i32 0, i32 3, !dbg !5599
  %71 = load i32, i32* %trig, align 4, !dbg !5600
  %idxprom60 = zext i32 %71 to i64, !dbg !5598
  %arrayidx61 = getelementptr [2 x i32], [2 x i32]* %pm59, i64 0, i64 %idxprom60, !dbg !5598
  store i32 %69, i32* %arrayidx61, align 4, !dbg !5601
  %72 = load i32, i32* %pt, align 4, !dbg !5602
  %73 = load %struct.apci1500_private*, %struct.apci1500_private** %devpriv, align 8, !dbg !5603
  %pt62 = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %73, i32 0, i32 4, !dbg !5604
  %74 = load i32, i32* %trig, align 4, !dbg !5605
  %idxprom63 = zext i32 %74 to i64, !dbg !5603
  %arrayidx64 = getelementptr [2 x i32], [2 x i32]* %pt62, i64 0, i64 %idxprom63, !dbg !5603
  store i32 %72, i32* %arrayidx64, align 4, !dbg !5606
  %75 = load i32, i32* %pp, align 4, !dbg !5607
  %76 = load %struct.apci1500_private*, %struct.apci1500_private** %devpriv, align 8, !dbg !5608
  %pp65 = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %76, i32 0, i32 5, !dbg !5609
  %77 = load i32, i32* %trig, align 4, !dbg !5610
  %idxprom66 = zext i32 %77 to i64, !dbg !5608
  %arrayidx67 = getelementptr [2 x i32], [2 x i32]* %pp65, i64 0, i64 %idxprom66, !dbg !5608
  store i32 %75, i32* %arrayidx67, align 4, !dbg !5611
  %78 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5612
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %78, i32 0, i32 1, !dbg !5613
  %79 = load i32, i32* %n, align 4, !dbg !5613
  store i32 %79, i32* %retval, align 4, !dbg !5614
  br label %return, !dbg !5614

return:                                           ; preds = %if.end58, %if.then56, %sw.default, %if.then16, %if.then
  %80 = load i32, i32* %retval, align 4, !dbg !5615
  ret i32 %80, !dbg !5615
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_is_unique(i32 %src) #2 !dbg !5616 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i32, align 4
  store i32 %src, i32* %src.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %src.addr, metadata !5619, metadata !DIExpression()), !dbg !5620
  %0 = load i32, i32* %src.addr, align 4, !dbg !5621
  %1 = load i32, i32* %src.addr, align 4, !dbg !5623
  %sub = sub i32 %1, 1, !dbg !5624
  %and = and i32 %0, %sub, !dbg !5625
  %cmp = icmp ne i32 %and, 0, !dbg !5626
  br i1 %cmp, label %if.then, label %if.end, !dbg !5627

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5628
  br label %return, !dbg !5628

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5629
  br label %return, !dbg !5629

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !5630
  ret i32 %2, !dbg !5630
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_src(i32* %src, i32 %flags) #2 !dbg !5631 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i32*, align 8
  %flags.addr = alloca i32, align 4
  %orig_src = alloca i32, align 4
  store i32* %src, i32** %src.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %src.addr, metadata !5634, metadata !DIExpression()), !dbg !5635
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5636, metadata !DIExpression()), !dbg !5637
  call void @llvm.dbg.declare(metadata i32* %orig_src, metadata !5638, metadata !DIExpression()), !dbg !5639
  %0 = load i32*, i32** %src.addr, align 8, !dbg !5640
  %1 = load i32, i32* %0, align 4, !dbg !5641
  store i32 %1, i32* %orig_src, align 4, !dbg !5639
  %2 = load i32, i32* %orig_src, align 4, !dbg !5642
  %3 = load i32, i32* %flags.addr, align 4, !dbg !5643
  %and = and i32 %2, %3, !dbg !5644
  %4 = load i32*, i32** %src.addr, align 8, !dbg !5645
  store i32 %and, i32* %4, align 4, !dbg !5646
  %5 = load i32*, i32** %src.addr, align 8, !dbg !5647
  %6 = load i32, i32* %5, align 4, !dbg !5649
  %cmp = icmp eq i32 %6, 0, !dbg !5650
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5651

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32*, i32** %src.addr, align 8, !dbg !5652
  %8 = load i32, i32* %7, align 4, !dbg !5653
  %9 = load i32, i32* %orig_src, align 4, !dbg !5654
  %cmp1 = icmp ne i32 %8, %9, !dbg !5655
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5656

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !5657
  br label %return, !dbg !5657

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %retval, align 4, !dbg !5658
  br label %return, !dbg !5658

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !5659
  ret i32 %10, !dbg !5659
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_arg_max(i32* %arg, i32 %val) #2 !dbg !5660 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i32*, align 8
  %val.addr = alloca i32, align 4
  store i32* %arg, i32** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %arg.addr, metadata !5661, metadata !DIExpression()), !dbg !5662
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5663, metadata !DIExpression()), !dbg !5664
  %0 = load i32*, i32** %arg.addr, align 8, !dbg !5665
  %1 = load i32, i32* %0, align 4, !dbg !5667
  %2 = load i32, i32* %val.addr, align 4, !dbg !5668
  %cmp = icmp ugt i32 %1, %2, !dbg !5669
  br i1 %cmp, label %if.then, label %if.end, !dbg !5670

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %val.addr, align 4, !dbg !5671
  %4 = load i32*, i32** %arg.addr, align 8, !dbg !5673
  store i32 %3, i32* %4, align 4, !dbg !5674
  store i32 -22, i32* %retval, align 4, !dbg !5675
  br label %return, !dbg !5675

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5676
  br label %return, !dbg !5676

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !5677
  ret i32 %5, !dbg !5677
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_arg_is(i32* %arg, i32 %val) #2 !dbg !5678 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i32*, align 8
  %val.addr = alloca i32, align 4
  store i32* %arg, i32** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %arg.addr, metadata !5679, metadata !DIExpression()), !dbg !5680
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5681, metadata !DIExpression()), !dbg !5682
  %0 = load i32*, i32** %arg.addr, align 8, !dbg !5683
  %1 = load i32, i32* %0, align 4, !dbg !5685
  %2 = load i32, i32* %val.addr, align 4, !dbg !5686
  %cmp = icmp ne i32 %1, %2, !dbg !5687
  br i1 %cmp, label %if.then, label %if.end, !dbg !5688

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %val.addr, align 4, !dbg !5689
  %4 = load i32*, i32** %arg.addr, align 8, !dbg !5691
  store i32 %3, i32* %4, align 4, !dbg !5692
  store i32 -22, i32* %retval, align 4, !dbg !5693
  br label %return, !dbg !5693

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5694
  br label %return, !dbg !5694

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !5695
  ret i32 %5, !dbg !5695
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci1500_di_inttrig_start(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, i32 %trig_num) #2 !dbg !5696 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %trig_num.addr = alloca i32, align 4
  %devpriv = alloca %struct.apci1500_private*, align 8
  %cmd = alloca %struct.comedi_cmd*, align 8
  %pa_mode = alloca i32, align 4
  %pb_mode = alloca i32, align 4
  %pa_trig = alloca i32, align 4
  %pb_trig = alloca i32, align 4
  %valid_trig = alloca i8, align 1
  %val = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5697, metadata !DIExpression()), !dbg !5698
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5699, metadata !DIExpression()), !dbg !5700
  store i32 %trig_num, i32* %trig_num.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %trig_num.addr, metadata !5701, metadata !DIExpression()), !dbg !5702
  call void @llvm.dbg.declare(metadata %struct.apci1500_private** %devpriv, metadata !5703, metadata !DIExpression()), !dbg !5704
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5705
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5706
  %1 = load i8*, i8** %private, align 8, !dbg !5706
  %2 = bitcast i8* %1 to %struct.apci1500_private*, !dbg !5705
  store %struct.apci1500_private* %2, %struct.apci1500_private** %devpriv, align 8, !dbg !5704
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd, metadata !5707, metadata !DIExpression()), !dbg !5708
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5709
  %async = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %3, i32 0, i32 7, !dbg !5710
  %4 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5710
  %cmd1 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %4, i32 0, i32 17, !dbg !5711
  store %struct.comedi_cmd* %cmd1, %struct.comedi_cmd** %cmd, align 8, !dbg !5708
  call void @llvm.dbg.declare(metadata i32* %pa_mode, metadata !5712, metadata !DIExpression()), !dbg !5713
  store i32 0, i32* %pa_mode, align 4, !dbg !5713
  call void @llvm.dbg.declare(metadata i32* %pb_mode, metadata !5714, metadata !DIExpression()), !dbg !5715
  store i32 0, i32* %pb_mode, align 4, !dbg !5715
  call void @llvm.dbg.declare(metadata i32* %pa_trig, metadata !5716, metadata !DIExpression()), !dbg !5717
  %5 = load i32, i32* %trig_num.addr, align 4, !dbg !5718
  %and = and i32 %5, 1, !dbg !5719
  store i32 %and, i32* %pa_trig, align 4, !dbg !5717
  call void @llvm.dbg.declare(metadata i32* %pb_trig, metadata !5720, metadata !DIExpression()), !dbg !5721
  %6 = load i32, i32* %trig_num.addr, align 4, !dbg !5722
  %shr = lshr i32 %6, 1, !dbg !5723
  %and2 = and i32 %shr, 1, !dbg !5724
  store i32 %and2, i32* %pb_trig, align 4, !dbg !5721
  call void @llvm.dbg.declare(metadata i8* %valid_trig, metadata !5725, metadata !DIExpression()), !dbg !5726
  store i8 0, i8* %valid_trig, align 1, !dbg !5726
  call void @llvm.dbg.declare(metadata i32* %val, metadata !5727, metadata !DIExpression()), !dbg !5728
  %7 = load i32, i32* %trig_num.addr, align 4, !dbg !5729
  %8 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5731
  %start_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %8, i32 0, i32 3, !dbg !5732
  %9 = load i32, i32* %start_arg, align 4, !dbg !5732
  %cmp = icmp ne i32 %7, %9, !dbg !5733
  br i1 %cmp, label %if.then, label %if.end, !dbg !5734

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5735
  br label %return, !dbg !5735

if.end:                                           ; preds = %entry
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5736
  call void @apci1500_port_enable(%struct.comedi_device* %10, i1 zeroext false) #6, !dbg !5737
  %11 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5738
  %12 = load %struct.apci1500_private*, %struct.apci1500_private** %devpriv, align 8, !dbg !5739
  %pm = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %12, i32 0, i32 3, !dbg !5740
  %13 = load i32, i32* %pa_trig, align 4, !dbg !5741
  %idxprom = zext i32 %13 to i64, !dbg !5739
  %arrayidx = getelementptr [2 x i32], [2 x i32]* %pm, i64 0, i64 %idxprom, !dbg !5739
  %14 = load i32, i32* %arrayidx, align 4, !dbg !5739
  %and3 = and i32 %14, 255, !dbg !5742
  call void @z8536_write(%struct.comedi_device* %11, i32 %and3, i32 39) #6, !dbg !5743
  %15 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5744
  %16 = load %struct.apci1500_private*, %struct.apci1500_private** %devpriv, align 8, !dbg !5745
  %pt = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %16, i32 0, i32 4, !dbg !5746
  %17 = load i32, i32* %pa_trig, align 4, !dbg !5747
  %idxprom4 = zext i32 %17 to i64, !dbg !5745
  %arrayidx5 = getelementptr [2 x i32], [2 x i32]* %pt, i64 0, i64 %idxprom4, !dbg !5745
  %18 = load i32, i32* %arrayidx5, align 4, !dbg !5745
  %and6 = and i32 %18, 255, !dbg !5748
  call void @z8536_write(%struct.comedi_device* %15, i32 %and6, i32 38) #6, !dbg !5749
  %19 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5750
  %20 = load %struct.apci1500_private*, %struct.apci1500_private** %devpriv, align 8, !dbg !5751
  %pp = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %20, i32 0, i32 5, !dbg !5752
  %21 = load i32, i32* %pa_trig, align 4, !dbg !5753
  %idxprom7 = zext i32 %21 to i64, !dbg !5751
  %arrayidx8 = getelementptr [2 x i32], [2 x i32]* %pp, i64 0, i64 %idxprom7, !dbg !5751
  %22 = load i32, i32* %arrayidx8, align 4, !dbg !5751
  %and9 = and i32 %22, 255, !dbg !5754
  call void @z8536_write(%struct.comedi_device* %19, i32 %and9, i32 37) #6, !dbg !5755
  %23 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5756
  %24 = load %struct.apci1500_private*, %struct.apci1500_private** %devpriv, align 8, !dbg !5757
  %pm10 = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %24, i32 0, i32 3, !dbg !5758
  %25 = load i32, i32* %pb_trig, align 4, !dbg !5759
  %idxprom11 = zext i32 %25 to i64, !dbg !5757
  %arrayidx12 = getelementptr [2 x i32], [2 x i32]* %pm10, i64 0, i64 %idxprom11, !dbg !5757
  %26 = load i32, i32* %arrayidx12, align 4, !dbg !5757
  %shr13 = lshr i32 %26, 8, !dbg !5760
  %and14 = and i32 %shr13, 255, !dbg !5761
  call void @z8536_write(%struct.comedi_device* %23, i32 %and14, i32 47) #6, !dbg !5762
  %27 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5763
  %28 = load %struct.apci1500_private*, %struct.apci1500_private** %devpriv, align 8, !dbg !5764
  %pt15 = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %28, i32 0, i32 4, !dbg !5765
  %29 = load i32, i32* %pb_trig, align 4, !dbg !5766
  %idxprom16 = zext i32 %29 to i64, !dbg !5764
  %arrayidx17 = getelementptr [2 x i32], [2 x i32]* %pt15, i64 0, i64 %idxprom16, !dbg !5764
  %30 = load i32, i32* %arrayidx17, align 4, !dbg !5764
  %shr18 = lshr i32 %30, 8, !dbg !5767
  %and19 = and i32 %shr18, 255, !dbg !5768
  call void @z8536_write(%struct.comedi_device* %27, i32 %and19, i32 46) #6, !dbg !5769
  %31 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5770
  %32 = load %struct.apci1500_private*, %struct.apci1500_private** %devpriv, align 8, !dbg !5771
  %pp20 = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %32, i32 0, i32 5, !dbg !5772
  %33 = load i32, i32* %pb_trig, align 4, !dbg !5773
  %idxprom21 = zext i32 %33 to i64, !dbg !5771
  %arrayidx22 = getelementptr [2 x i32], [2 x i32]* %pp20, i64 0, i64 %idxprom21, !dbg !5771
  %34 = load i32, i32* %arrayidx22, align 4, !dbg !5771
  %shr23 = lshr i32 %34, 8, !dbg !5774
  %and24 = and i32 %shr23, 255, !dbg !5775
  call void @z8536_write(%struct.comedi_device* %31, i32 %and24, i32 45) #6, !dbg !5776
  %35 = load %struct.apci1500_private*, %struct.apci1500_private** %devpriv, align 8, !dbg !5777
  %pm25 = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %35, i32 0, i32 3, !dbg !5779
  %36 = load i32, i32* %pa_trig, align 4, !dbg !5780
  %idxprom26 = zext i32 %36 to i64, !dbg !5777
  %arrayidx27 = getelementptr [2 x i32], [2 x i32]* %pm25, i64 0, i64 %idxprom26, !dbg !5777
  %37 = load i32, i32* %arrayidx27, align 4, !dbg !5777
  %and28 = and i32 %37, 255, !dbg !5781
  %tobool = icmp ne i32 %and28, 0, !dbg !5781
  br i1 %tobool, label %if.then29, label %if.end35, !dbg !5782

if.then29:                                        ; preds = %if.end
  %38 = load i32, i32* %pa_trig, align 4, !dbg !5783
  %tobool30 = icmp ne i32 %38, 0, !dbg !5783
  %39 = zext i1 %tobool30 to i64, !dbg !5783
  %cond = select i1 %tobool30, i32 2, i32 4, !dbg !5783
  store i32 %cond, i32* %pa_mode, align 4, !dbg !5785
  %40 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5786
  %call = call i32 @z8536_read(%struct.comedi_device* %40, i32 32) #6, !dbg !5787
  store i32 %call, i32* %val, align 4, !dbg !5788
  %41 = load i32, i32* %val, align 4, !dbg !5789
  %and31 = and i32 %41, -7, !dbg !5789
  store i32 %and31, i32* %val, align 4, !dbg !5789
  %42 = load i32, i32* %pa_mode, align 4, !dbg !5790
  %conv = zext i32 %42 to i64, !dbg !5790
  %or = or i64 %conv, 8, !dbg !5791
  %43 = load i32, i32* %val, align 4, !dbg !5792
  %conv32 = zext i32 %43 to i64, !dbg !5792
  %or33 = or i64 %conv32, %or, !dbg !5792
  %conv34 = trunc i64 %or33 to i32, !dbg !5792
  store i32 %conv34, i32* %val, align 4, !dbg !5792
  %44 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5793
  %45 = load i32, i32* %val, align 4, !dbg !5794
  call void @z8536_write(%struct.comedi_device* %44, i32 %45, i32 32) #6, !dbg !5795
  %46 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5796
  call void @z8536_write(%struct.comedi_device* %46, i32 192, i32 8) #6, !dbg !5797
  store i8 1, i8* %valid_trig, align 1, !dbg !5798
  br label %if.end35, !dbg !5799

if.end35:                                         ; preds = %if.then29, %if.end
  %47 = load %struct.apci1500_private*, %struct.apci1500_private** %devpriv, align 8, !dbg !5800
  %pm36 = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %47, i32 0, i32 3, !dbg !5802
  %48 = load i32, i32* %pb_trig, align 4, !dbg !5803
  %idxprom37 = zext i32 %48 to i64, !dbg !5800
  %arrayidx38 = getelementptr [2 x i32], [2 x i32]* %pm36, i64 0, i64 %idxprom37, !dbg !5800
  %49 = load i32, i32* %arrayidx38, align 4, !dbg !5800
  %and39 = and i32 %49, 65280, !dbg !5804
  %tobool40 = icmp ne i32 %and39, 0, !dbg !5804
  br i1 %tobool40, label %if.then41, label %if.end51, !dbg !5805

if.then41:                                        ; preds = %if.end35
  %50 = load i32, i32* %pb_trig, align 4, !dbg !5806
  %tobool42 = icmp ne i32 %50, 0, !dbg !5806
  %51 = zext i1 %tobool42 to i64, !dbg !5806
  %cond43 = select i1 %tobool42, i32 2, i32 4, !dbg !5806
  store i32 %cond43, i32* %pb_mode, align 4, !dbg !5808
  %52 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5809
  %call44 = call i32 @z8536_read(%struct.comedi_device* %52, i32 40) #6, !dbg !5810
  store i32 %call44, i32* %val, align 4, !dbg !5811
  %53 = load i32, i32* %val, align 4, !dbg !5812
  %and45 = and i32 %53, -7, !dbg !5812
  store i32 %and45, i32* %val, align 4, !dbg !5812
  %54 = load i32, i32* %pb_mode, align 4, !dbg !5813
  %conv46 = zext i32 %54 to i64, !dbg !5813
  %or47 = or i64 %conv46, 8, !dbg !5814
  %55 = load i32, i32* %val, align 4, !dbg !5815
  %conv48 = zext i32 %55 to i64, !dbg !5815
  %or49 = or i64 %conv48, %or47, !dbg !5815
  %conv50 = trunc i64 %or49 to i32, !dbg !5815
  store i32 %conv50, i32* %val, align 4, !dbg !5815
  %56 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5816
  %57 = load i32, i32* %val, align 4, !dbg !5817
  call void @z8536_write(%struct.comedi_device* %56, i32 %57, i32 40) #6, !dbg !5818
  %58 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5819
  call void @z8536_write(%struct.comedi_device* %58, i32 192, i32 9) #6, !dbg !5820
  store i8 1, i8* %valid_trig, align 1, !dbg !5821
  br label %if.end51, !dbg !5822

if.end51:                                         ; preds = %if.then41, %if.end35
  %59 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5823
  call void @apci1500_port_enable(%struct.comedi_device* %59, i1 zeroext true) #6, !dbg !5824
  %60 = load i8, i8* %valid_trig, align 1, !dbg !5825
  %tobool52 = trunc i8 %60 to i1, !dbg !5825
  br i1 %tobool52, label %if.end54, label %if.then53, !dbg !5827

if.then53:                                        ; preds = %if.end51
  store i32 -22, i32* %retval, align 4, !dbg !5828
  br label %return, !dbg !5828

if.end54:                                         ; preds = %if.end51
  %61 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5830
  call void @z8536_write(%struct.comedi_device* %61, i32 192, i32 0) #6, !dbg !5831
  store i32 0, i32* %retval, align 4, !dbg !5832
  br label %return, !dbg !5832

return:                                           ; preds = %if.end54, %if.then53, %if.then
  %62 = load i32, i32* %retval, align 4, !dbg !5833
  ret i32 %62, !dbg !5833
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @apci1500_port_enable(%struct.comedi_device* %dev, i1 zeroext %enable) #2 !dbg !5834 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %enable.addr = alloca i8, align 1
  %cfg = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5837, metadata !DIExpression()), !dbg !5838
  %frombool = zext i1 %enable to i8
  store i8 %frombool, i8* %enable.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %enable.addr, metadata !5839, metadata !DIExpression()), !dbg !5840
  call void @llvm.dbg.declare(metadata i32* %cfg, metadata !5841, metadata !DIExpression()), !dbg !5842
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5843
  %call = call i32 @z8536_read(%struct.comedi_device* %0, i32 1) #6, !dbg !5844
  store i32 %call, i32* %cfg, align 4, !dbg !5845
  %1 = load i8, i8* %enable.addr, align 1, !dbg !5846
  %tobool = trunc i8 %1 to i1, !dbg !5846
  br i1 %tobool, label %if.then, label %if.else, !dbg !5848

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %cfg, align 4, !dbg !5849
  %conv = zext i32 %2 to i64, !dbg !5849
  %or = or i64 %conv, 132, !dbg !5849
  %conv1 = trunc i64 %or to i32, !dbg !5849
  store i32 %conv1, i32* %cfg, align 4, !dbg !5849
  br label %if.end, !dbg !5850

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %cfg, align 4, !dbg !5851
  %conv2 = zext i32 %3 to i64, !dbg !5851
  %and = and i64 %conv2, -133, !dbg !5851
  %conv3 = trunc i64 %and to i32, !dbg !5851
  store i32 %conv3, i32* %cfg, align 4, !dbg !5851
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5852
  %5 = load i32, i32* %cfg, align 4, !dbg !5853
  call void @z8536_write(%struct.comedi_device* %4, i32 %5, i32 1) #6, !dbg !5854
  ret void, !dbg !5855
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_dio_update_state(%struct.comedi_subdevice*, i32*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @apci1500_timer_enable(%struct.comedi_device* %dev, i32 %chan, i1 zeroext %enable) #2 !dbg !5856 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %chan.addr = alloca i32, align 4
  %enable.addr = alloca i8, align 1
  %bit = alloca i32, align 4
  %cfg = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5859, metadata !DIExpression()), !dbg !5860
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !5861, metadata !DIExpression()), !dbg !5862
  %frombool = zext i1 %enable to i8
  store i8 %frombool, i8* %enable.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %enable.addr, metadata !5863, metadata !DIExpression()), !dbg !5864
  call void @llvm.dbg.declare(metadata i32* %bit, metadata !5865, metadata !DIExpression()), !dbg !5866
  call void @llvm.dbg.declare(metadata i32* %cfg, metadata !5867, metadata !DIExpression()), !dbg !5868
  %0 = load i32, i32* %chan.addr, align 4, !dbg !5869
  %cmp = icmp eq i32 %0, 0, !dbg !5871
  br i1 %cmp, label %if.then, label %if.else, !dbg !5872

if.then:                                          ; preds = %entry
  store i32 64, i32* %bit, align 4, !dbg !5873
  br label %if.end4, !dbg !5874

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %chan.addr, align 4, !dbg !5875
  %cmp1 = icmp eq i32 %1, 1, !dbg !5877
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !5878

if.then2:                                         ; preds = %if.else
  store i32 32, i32* %bit, align 4, !dbg !5879
  br label %if.end, !dbg !5880

if.else3:                                         ; preds = %if.else
  store i32 16, i32* %bit, align 4, !dbg !5881
  br label %if.end

if.end:                                           ; preds = %if.else3, %if.then2
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5882
  %call = call i32 @z8536_read(%struct.comedi_device* %2, i32 1) #6, !dbg !5883
  store i32 %call, i32* %cfg, align 4, !dbg !5884
  %3 = load i8, i8* %enable.addr, align 1, !dbg !5885
  %tobool = trunc i8 %3 to i1, !dbg !5885
  br i1 %tobool, label %if.then5, label %if.else6, !dbg !5887

if.then5:                                         ; preds = %if.end4
  %4 = load i32, i32* %bit, align 4, !dbg !5888
  %5 = load i32, i32* %cfg, align 4, !dbg !5890
  %or = or i32 %5, %4, !dbg !5890
  store i32 %or, i32* %cfg, align 4, !dbg !5890
  br label %if.end7, !dbg !5891

if.else6:                                         ; preds = %if.end4
  %6 = load i32, i32* %bit, align 4, !dbg !5892
  %neg = xor i32 %6, -1, !dbg !5894
  %7 = load i32, i32* %cfg, align 4, !dbg !5895
  %and = and i32 %7, %neg, !dbg !5895
  store i32 %and, i32* %cfg, align 4, !dbg !5895
  %8 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5896
  %9 = load i32, i32* %chan.addr, align 4, !dbg !5897
  %add = add i32 10, %9, !dbg !5897
  call void @z8536_write(%struct.comedi_device* %8, i32 0, i32 %add) #6, !dbg !5898
  br label %if.end7

if.end7:                                          ; preds = %if.else6, %if.then5
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5899
  %11 = load i32, i32* %cfg, align 4, !dbg !5900
  call void @z8536_write(%struct.comedi_device* %10, i32 %11, i32 1) #6, !dbg !5901
  ret void, !dbg !5902
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci1500_pci_probe(%struct.pci_dev* %dev, %struct.pci_device_id* %id) #2 !dbg !5903 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %id.addr = alloca %struct.pci_device_id*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5904, metadata !DIExpression()), !dbg !5905
  store %struct.pci_device_id* %id, %struct.pci_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_device_id** %id.addr, metadata !5906, metadata !DIExpression()), !dbg !5907
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5908
  %1 = load %struct.pci_device_id*, %struct.pci_device_id** %id.addr, align 8, !dbg !5909
  %driver_data = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %1, i32 0, i32 6, !dbg !5910
  %2 = load i64, i64* %driver_data, align 8, !dbg !5910
  %call = call i32 @comedi_pci_auto_config(%struct.pci_dev* %0, %struct.comedi_driver* @apci1500_driver, i64 %2) #6, !dbg !5911
  ret i32 %call, !dbg !5912
}

; Function Attrs: noredzone
declare dso_local void @comedi_pci_auto_unconfig(%struct.pci_dev*) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_pci_auto_config(%struct.pci_dev*, %struct.comedi_driver*, i64) #1

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { noredzone }
attributes #7 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4271}
!llvm.module.flags = !{!4272, !4273, !4274, !4275}
!llvm.ident = !{!4276}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_apci1500_driver_init234", scope: !2, file: !3, line: 883, type: !191, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !132, globals: !134, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/staging/comedi/drivers/addi_apci_1500.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !100, !116, !122, !127}
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
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !123, line: 10, baseType: !7, size: 32, elements: !124)
!123 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!124 = !{!125, !126}
!125 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!126 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "comedi_counter_status_flags", file: !101, line: 448, baseType: !7, size: 32, elements: !128)
!128 = !{!129, !130, !131}
!129 = !DIEnumerator(name: "COMEDI_COUNTER_ARMED", value: 1, isUnsigned: true)
!130 = !DIEnumerator(name: "COMEDI_COUNTER_COUNTING", value: 2, isUnsigned: true)
!131 = !DIEnumerator(name: "COMEDI_COUNTER_TERMINAL_COUNT", value: 4, isUnsigned: true)
!132 = !{!133}
!133 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!134 = !{!0, !135, !142, !149, !154, !159, !164, !3987, !4268}
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(name: "__exitcall_apci1500_driver_exit", scope: !2, file: !3, line: 883, type: !137, isLocal: true, isDefinition: true)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !138, line: 117, baseType: !139)
!138 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DISubroutineType(types: !141)
!141 = !{null}
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author235", scope: !2, file: !3, line: 885, type: !144, isLocal: true, isDefinition: true, align: 8)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 416, elements: !147)
!145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!146 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!147 = !{!148}
!148 = !DISubrange(count: 52)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description236", scope: !2, file: !3, line: 886, type: !151, isLocal: true, isDefinition: true, align: 8)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 680, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 85)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file237", scope: !2, file: !3, line: 887, type: !156, isLocal: true, isDefinition: true, align: 8)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 528, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 66)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license238", scope: !2, file: !3, line: 887, type: !161, isLocal: true, isDefinition: true, align: 8)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 216, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 27)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(name: "apci1500_driver", scope: !2, file: !3, line: 858, type: !166, isLocal: true, isDefinition: true)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_driver", file: !167, line: 437, size: 576, elements: !168)
!167 = !DIFile(filename: "drivers/staging/comedi/drivers/../comedidev.h", directory: "/home/lizy2001/genbc/linux")
!168 = !{!169, !171, !173, !177, !3977, !3978, !3982, !3983, !3986}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !166, file: !167, line: 439, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !166, file: !167, line: 441, baseType: !172, size: 64, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !166, file: !167, line: 442, baseType: !174, size: 64, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !176, line: 76, flags: DIFlagFwdDecl)
!176 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!177 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !166, file: !167, line: 443, baseType: !178, size: 64, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{!181, !182, !3970}
!181 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_device", file: !167, line: 541, size: 1920, elements: !184)
!184 = !{!185, !186, !187, !190, !192, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3958, !3962, !3966}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !183, file: !167, line: 542, baseType: !181, size: 32)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !183, file: !167, line: 543, baseType: !170, size: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "pacer", scope: !183, file: !167, line: 544, baseType: !188, size: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_8254", file: !167, line: 544, flags: DIFlagFwdDecl)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !183, file: !167, line: 545, baseType: !191, size: 64, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !183, file: !167, line: 547, baseType: !193, size: 64, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !195)
!195 = !{!196, !3355, !3356, !3359, !3360, !3411, !3502, !3503, !3504, !3505, !3506, !3515, !3620, !3633, !3636, !3637, !3641, !3643, !3644, !3645, !3649, !3655, !3656, !3659, !3663, !3753, !3754, !3755, !3756, !3757, !3789, !3790, !3791, !3794, !3797, !3798, !3799, !3800}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !194, file: !73, line: 462, baseType: !197, size: 512)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !198, line: 64, size: 512, elements: !199)
!198 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!199 = !{!200, !201, !208, !210, !270, !3206, !3345, !3350, !3351, !3352, !3353, !3354}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !197, file: !198, line: 65, baseType: !172, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !197, file: !198, line: 66, baseType: !202, size: 128, offset: 64)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !203, line: 178, size: 128, elements: !204)
!203 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!204 = !{!205, !207}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !202, file: !203, line: 179, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !202, file: !203, line: 179, baseType: !206, size: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !197, file: !198, line: 67, baseType: !209, size: 64, offset: 192)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !197, file: !198, line: 68, baseType: !211, size: 64, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !198, line: 192, size: 704, elements: !213)
!213 = !{!214, !215, !231, !232}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !212, file: !198, line: 193, baseType: !202, size: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !212, file: !198, line: 194, baseType: !216, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !217, line: 83, baseType: !218)
!217 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !217, line: 71, elements: !219)
!219 = !{!220}
!220 = !DIDerivedType(tag: DW_TAG_member, scope: !218, file: !217, line: 72, baseType: !221)
!221 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !218, file: !217, line: 72, elements: !222)
!222 = !{!223}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !221, file: !217, line: 73, baseType: !224)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !217, line: 20, elements: !225)
!225 = !{!226}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !224, file: !217, line: 21, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !228, line: 25, baseType: !229)
!228 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !228, line: 25, elements: !230)
!230 = !{}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !212, file: !198, line: 195, baseType: !197, size: 512, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !212, file: !198, line: 196, baseType: !233, size: 64, offset: 640)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !198, line: 156, size: 192, elements: !236)
!236 = !{!237, !242, !247}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !235, file: !198, line: 157, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!181, !211, !209}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !235, file: !198, line: 158, baseType: !243, size: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!172, !211, !209}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !235, file: !198, line: 159, baseType: !248, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{!181, !211, !209, !252}
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !198, line: 148, size: 20736, elements: !254)
!254 = !{!255, !260, !264, !265, !269}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !253, file: !198, line: 149, baseType: !256, size: 192)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 192, elements: !258)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!258 = !{!259}
!259 = !DISubrange(count: 3)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !253, file: !198, line: 150, baseType: !261, size: 4096, offset: 192)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 4096, elements: !262)
!262 = !{!263}
!263 = !DISubrange(count: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !253, file: !198, line: 151, baseType: !181, size: 32, offset: 4288)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !253, file: !198, line: 152, baseType: !266, size: 16384, offset: 4320)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 16384, elements: !267)
!267 = !{!268}
!268 = !DISubrange(count: 2048)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !253, file: !198, line: 153, baseType: !181, size: 32, offset: 20704)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !197, file: !198, line: 69, baseType: !271, size: 64, offset: 320)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !198, line: 138, size: 448, elements: !273)
!273 = !{!274, !278, !307, !309, !3168, !3196, !3200}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !272, file: !198, line: 139, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{null, !209}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !272, file: !198, line: 140, baseType: !279, size: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !282, line: 230, size: 128, elements: !283)
!282 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!283 = !{!284, !300}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !281, file: !282, line: 231, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!288, !209, !293, !257}
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !203, line: 60, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !290, line: 73, baseType: !291)
!290 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !290, line: 15, baseType: !292)
!292 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !282, line: 30, size: 128, elements: !295)
!295 = !{!296, !297}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !294, file: !282, line: 31, baseType: !172, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !294, file: !282, line: 32, baseType: !298, size: 16, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !203, line: 19, baseType: !299)
!299 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !281, file: !282, line: 232, baseType: !301, size: 64, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!288, !209, !293, !172, !304}
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !203, line: 55, baseType: !305)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !290, line: 72, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !290, line: 16, baseType: !133)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !272, file: !198, line: 141, baseType: !308, size: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !272, file: !198, line: 142, baseType: !310, size: 64, offset: 192)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !313)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !282, line: 84, size: 320, elements: !314)
!314 = !{!315, !316, !320, !3165, !3166}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !313, file: !282, line: 85, baseType: !172, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !313, file: !282, line: 86, baseType: !317, size: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!298, !209, !293, !181}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !313, file: !282, line: 88, baseType: !321, size: 64, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{!298, !209, !324, !181}
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !282, line: 168, size: 448, elements: !326)
!326 = !{!327, !328, !329, !330, !3160, !3161}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !325, file: !282, line: 169, baseType: !294, size: 128)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !325, file: !282, line: 170, baseType: !304, size: 64, offset: 128)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !325, file: !282, line: 171, baseType: !191, size: 64, offset: 192)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !325, file: !282, line: 172, baseType: !331, size: 64, offset: 256)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!288, !334, !209, !324, !257, !513, !304}
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !336)
!336 = !{!337, !355, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3143, !3144, !3153, !3154, !3155, !3156, !3157, !3158, !3159}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !335, file: !44, line: 920, baseType: !338, size: 128)
!338 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !335, file: !44, line: 917, size: 128, elements: !339)
!339 = !{!340, !346}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !338, file: !44, line: 918, baseType: !341, size: 64)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !342, line: 58, size: 64, elements: !343)
!342 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!343 = !{!344}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !341, file: !342, line: 59, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !338, file: !44, line: 919, baseType: !347, size: 128, align: 64)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !203, line: 216, size: 128, align: 64, elements: !348)
!348 = !{!349, !351}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !347, file: !203, line: 217, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !347, file: !203, line: 218, baseType: !352, size: 64, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{null, !350}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !335, file: !44, line: 921, baseType: !356, size: 128, offset: 128)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !357, line: 8, size: 128, elements: !358)
!357 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!358 = !{!359, !363}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !356, file: !357, line: 9, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !362, line: 18, flags: DIFlagFwdDecl)
!362 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!363 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !356, file: !357, line: 10, baseType: !364, size: 64, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !362, line: 89, size: 1536, elements: !366)
!366 = !{!367, !368, !378, !386, !387, !410, !3093, !3095, !3107, !3108, !3109, !3110, !3111, !3117, !3118, !3119}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !365, file: !362, line: 91, baseType: !7, size: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !365, file: !362, line: 92, baseType: !369, size: 32, offset: 32)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !370, line: 277, baseType: !371)
!370 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !370, line: 277, size: 32, elements: !372)
!372 = !{!373}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !371, file: !370, line: 277, baseType: !374, size: 32)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !370, line: 70, baseType: !375)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !370, line: 65, size: 32, elements: !376)
!376 = !{!377}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !375, file: !370, line: 66, baseType: !7, size: 32)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !365, file: !362, line: 93, baseType: !379, size: 128, offset: 64)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !380, line: 38, size: 128, elements: !381)
!380 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!381 = !{!382, !384}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !379, file: !380, line: 39, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !379, file: !380, line: 39, baseType: !385, size: 64, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !365, file: !362, line: 94, baseType: !364, size: 64, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !365, file: !362, line: 95, baseType: !388, size: 128, offset: 256)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !362, line: 47, size: 128, elements: !389)
!389 = !{!390, !406}
!390 = !DIDerivedType(tag: DW_TAG_member, scope: !388, file: !362, line: 48, baseType: !391, size: 64)
!391 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !388, file: !362, line: 48, size: 64, elements: !392)
!392 = !{!393, !402}
!393 = !DIDerivedType(tag: DW_TAG_member, scope: !391, file: !362, line: 49, baseType: !394, size: 64)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !391, file: !362, line: 49, size: 64, elements: !395)
!395 = !{!396, !401}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !394, file: !362, line: 50, baseType: !397, size: 32)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !398, line: 21, baseType: !399)
!398 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !400, line: 27, baseType: !7)
!400 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!401 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !394, file: !362, line: 50, baseType: !397, size: 32, offset: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !391, file: !362, line: 52, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !398, line: 23, baseType: !404)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !400, line: 31, baseType: !405)
!405 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !388, file: !362, line: 54, baseType: !407, size: 64, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !409)
!409 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !365, file: !362, line: 96, baseType: !411, size: 64, offset: 384)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !413)
!413 = !{!414, !415, !416, !424, !431, !432, !580, !2804, !2805, !2806, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !3069, !3077, !3078, !3079, !3089, !3090, !3091, !3092}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !412, file: !44, line: 611, baseType: !298, size: 16)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !412, file: !44, line: 612, baseType: !299, size: 16, offset: 16)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !412, file: !44, line: 613, baseType: !417, size: 32, offset: 32)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !418, line: 23, baseType: !419)
!418 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !418, line: 21, size: 32, elements: !420)
!420 = !{!421}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !419, file: !418, line: 22, baseType: !422, size: 32)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !203, line: 32, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !290, line: 49, baseType: !7)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !412, file: !44, line: 614, baseType: !425, size: 32, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !418, line: 28, baseType: !426)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !418, line: 26, size: 32, elements: !427)
!427 = !{!428}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !426, file: !418, line: 27, baseType: !429, size: 32)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !203, line: 33, baseType: !430)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !290, line: 50, baseType: !7)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !412, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !412, file: !44, line: 622, baseType: !433, size: 64, offset: 128)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !435)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !436)
!436 = !{!437, !441, !454, !458, !464, !468, !474, !478, !482, !486, !490, !491, !497, !501, !527, !556, !560, !566, !571, !575, !576}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !435, file: !44, line: 1865, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{!364, !411, !364, !7}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !435, file: !44, line: 1866, baseType: !442, size: 64, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!172, !364, !411, !445}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !447, line: 10, size: 128, elements: !448)
!447 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!448 = !{!449, !453}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !446, file: !447, line: 11, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{null, !191}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !446, file: !447, line: 12, baseType: !191, size: 64, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !435, file: !44, line: 1867, baseType: !455, size: 64, offset: 128)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{!181, !411, !181}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !435, file: !44, line: 1868, baseType: !459, size: 64, offset: 192)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!462, !411, !181}
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !435, file: !44, line: 1870, baseType: !465, size: 64, offset: 256)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{!181, !364, !257, !181}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !435, file: !44, line: 1872, baseType: !469, size: 64, offset: 320)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{!181, !411, !364, !298, !472}
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !203, line: 30, baseType: !473)
!473 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !435, file: !44, line: 1873, baseType: !475, size: 64, offset: 384)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!181, !364, !411, !364}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !435, file: !44, line: 1874, baseType: !479, size: 64, offset: 448)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{!181, !411, !364}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !435, file: !44, line: 1875, baseType: !483, size: 64, offset: 512)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{!181, !411, !364, !172}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !435, file: !44, line: 1876, baseType: !487, size: 64, offset: 576)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!181, !411, !364, !298}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !435, file: !44, line: 1877, baseType: !479, size: 64, offset: 640)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !435, file: !44, line: 1878, baseType: !492, size: 64, offset: 704)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{!181, !411, !364, !298, !495}
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !203, line: 16, baseType: !496)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !203, line: 13, baseType: !397)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !435, file: !44, line: 1879, baseType: !498, size: 64, offset: 768)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!181, !411, !364, !411, !364, !7}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !435, file: !44, line: 1881, baseType: !502, size: 64, offset: 832)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{!181, !364, !505}
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !507)
!507 = !{!508, !509, !510, !511, !512, !516, !524, !525, !526}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !506, file: !44, line: 220, baseType: !7, size: 32)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !506, file: !44, line: 221, baseType: !298, size: 16, offset: 32)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !506, file: !44, line: 222, baseType: !417, size: 32, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !506, file: !44, line: 223, baseType: !425, size: 32, offset: 96)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !506, file: !44, line: 224, baseType: !513, size: 64, offset: 128)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !203, line: 46, baseType: !514)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !290, line: 88, baseType: !515)
!515 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !506, file: !44, line: 225, baseType: !517, size: 128, offset: 192)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !518, line: 13, size: 128, elements: !519)
!518 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!519 = !{!520, !523}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !517, file: !518, line: 14, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !518, line: 8, baseType: !522)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !400, line: 30, baseType: !515)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !517, file: !518, line: 15, baseType: !292, size: 64, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !506, file: !44, line: 226, baseType: !517, size: 128, offset: 320)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !506, file: !44, line: 227, baseType: !517, size: 128, offset: 448)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !506, file: !44, line: 234, baseType: !334, size: 64, offset: 576)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !435, file: !44, line: 1882, baseType: !528, size: 64, offset: 896)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!181, !531, !533, !397, !7}
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !356)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !535, line: 22, size: 1152, elements: !536)
!535 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!536 = !{!537, !538, !539, !540, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !534, file: !535, line: 23, baseType: !397, size: 32)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !534, file: !535, line: 24, baseType: !298, size: 16, offset: 32)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !534, file: !535, line: 25, baseType: !7, size: 32, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !534, file: !535, line: 26, baseType: !541, size: 32, offset: 96)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !203, line: 104, baseType: !397)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !534, file: !535, line: 27, baseType: !403, size: 64, offset: 128)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !534, file: !535, line: 28, baseType: !403, size: 64, offset: 192)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !534, file: !535, line: 37, baseType: !403, size: 64, offset: 256)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !534, file: !535, line: 38, baseType: !495, size: 32, offset: 320)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !534, file: !535, line: 39, baseType: !495, size: 32, offset: 352)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !534, file: !535, line: 40, baseType: !417, size: 32, offset: 384)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !534, file: !535, line: 41, baseType: !425, size: 32, offset: 416)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !534, file: !535, line: 42, baseType: !513, size: 64, offset: 448)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !534, file: !535, line: 43, baseType: !517, size: 128, offset: 512)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !534, file: !535, line: 44, baseType: !517, size: 128, offset: 640)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !534, file: !535, line: 45, baseType: !517, size: 128, offset: 768)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !534, file: !535, line: 46, baseType: !517, size: 128, offset: 896)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !534, file: !535, line: 47, baseType: !403, size: 64, offset: 1024)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !534, file: !535, line: 48, baseType: !403, size: 64, offset: 1088)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !435, file: !44, line: 1883, baseType: !557, size: 64, offset: 960)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!288, !364, !257, !304}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !435, file: !44, line: 1884, baseType: !561, size: 64, offset: 1024)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{!181, !411, !564, !403, !403}
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !435, file: !44, line: 1886, baseType: !567, size: 64, offset: 1088)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{!181, !411, !570, !181}
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !435, file: !44, line: 1887, baseType: !572, size: 64, offset: 1152)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!181, !411, !364, !334, !7, !298}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !435, file: !44, line: 1890, baseType: !487, size: 64, offset: 1216)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !435, file: !44, line: 1891, baseType: !577, size: 64, offset: 1280)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!181, !411, !462, !181}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !412, file: !44, line: 623, baseType: !581, size: 64, offset: 192)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !583)
!583 = !{!584, !585, !586, !587, !588, !589, !636, !2411, !2493, !2576, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2592, !2596, !2597, !2600, !2601, !2604, !2605, !2606, !2647, !2674, !2675, !2676, !2677, !2678, !2679, !2682, !2684, !2691, !2692, !2694, !2695, !2696, !2755, !2756, !2771, !2772, !2773, !2774, !2775, !2778, !2779, !2780, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !582, file: !44, line: 1417, baseType: !202, size: 128)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !582, file: !44, line: 1418, baseType: !495, size: 32, offset: 128)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !582, file: !44, line: 1419, baseType: !409, size: 8, offset: 160)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !582, file: !44, line: 1420, baseType: !133, size: 64, offset: 192)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !582, file: !44, line: 1421, baseType: !513, size: 64, offset: 256)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !582, file: !44, line: 1422, baseType: !590, size: 64, offset: 320)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !592)
!592 = !{!593, !594, !595, !602, !606, !610, !614, !615, !616, !626, !629, !630, !631, !633, !634, !635}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !591, file: !44, line: 2229, baseType: !172, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !591, file: !44, line: 2230, baseType: !181, size: 32, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !591, file: !44, line: 2238, baseType: !596, size: 64, offset: 128)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{!181, !599}
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !601, line: 28, flags: DIFlagFwdDecl)
!601 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!602 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !591, file: !44, line: 2239, baseType: !603, size: 64, offset: 192)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !605)
!605 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !591, file: !44, line: 2240, baseType: !607, size: 64, offset: 256)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DISubroutineType(types: !609)
!609 = !{!364, !590, !181, !172, !191}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !591, file: !44, line: 2242, baseType: !611, size: 64, offset: 320)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{null, !581}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !591, file: !44, line: 2243, baseType: !174, size: 64, offset: 384)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !591, file: !44, line: 2244, baseType: !590, size: 64, offset: 448)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !591, file: !44, line: 2245, baseType: !617, size: 64, offset: 512)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !203, line: 182, size: 64, elements: !618)
!618 = !{!619}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !617, file: !203, line: 183, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !203, line: 186, size: 128, elements: !622)
!622 = !{!623, !624}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !621, file: !203, line: 187, baseType: !620, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !621, file: !203, line: 187, baseType: !625, size: 64, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !591, file: !44, line: 2247, baseType: !627, offset: 576)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !628, line: 187, elements: !230)
!628 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!629 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !591, file: !44, line: 2248, baseType: !627, offset: 576)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !591, file: !44, line: 2249, baseType: !627, offset: 576)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !591, file: !44, line: 2250, baseType: !632, offset: 576)
!632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !627, elements: !258)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !591, file: !44, line: 2252, baseType: !627, offset: 576)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !591, file: !44, line: 2253, baseType: !627, offset: 576)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !591, file: !44, line: 2254, baseType: !627, offset: 576)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !582, file: !44, line: 1423, baseType: !637, size: 64, offset: 384)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !639)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !640)
!640 = !{!641, !645, !649, !650, !654, !660, !664, !665, !666, !670, !674, !675, !676, !677, !683, !688, !689, !696, !697, !698, !699, !2395, !2410}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !639, file: !44, line: 1936, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!411, !581}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !639, file: !44, line: 1937, baseType: !646, size: 64, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{null, !411}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !639, file: !44, line: 1938, baseType: !646, size: 64, offset: 128)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !639, file: !44, line: 1940, baseType: !651, size: 64, offset: 192)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{null, !411, !181}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !639, file: !44, line: 1941, baseType: !655, size: 64, offset: 256)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{!181, !411, !658}
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !639, file: !44, line: 1942, baseType: !661, size: 64, offset: 320)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{!181, !411}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !639, file: !44, line: 1943, baseType: !646, size: 64, offset: 384)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !639, file: !44, line: 1944, baseType: !611, size: 64, offset: 448)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !639, file: !44, line: 1945, baseType: !667, size: 64, offset: 512)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{!181, !581, !181}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !639, file: !44, line: 1946, baseType: !671, size: 64, offset: 576)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{!181, !581}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !639, file: !44, line: 1947, baseType: !671, size: 64, offset: 640)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !639, file: !44, line: 1948, baseType: !671, size: 64, offset: 704)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !639, file: !44, line: 1949, baseType: !671, size: 64, offset: 768)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !639, file: !44, line: 1950, baseType: !678, size: 64, offset: 832)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{!181, !364, !681}
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !639, file: !44, line: 1951, baseType: !684, size: 64, offset: 896)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DISubroutineType(types: !686)
!686 = !{!181, !581, !687, !257}
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !639, file: !44, line: 1952, baseType: !611, size: 64, offset: 960)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !639, file: !44, line: 1954, baseType: !690, size: 64, offset: 1024)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{!181, !693, !364}
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !695, line: 539, flags: DIFlagFwdDecl)
!695 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!696 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !639, file: !44, line: 1955, baseType: !690, size: 64, offset: 1088)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !639, file: !44, line: 1956, baseType: !690, size: 64, offset: 1152)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !639, file: !44, line: 1957, baseType: !690, size: 64, offset: 1216)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !639, file: !44, line: 1963, baseType: !700, size: 64, offset: 1280)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!181, !581, !703, !726}
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !705, line: 68, size: 512, align: 128, elements: !706)
!705 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!706 = !{!707, !708, !2387, !2394}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !704, file: !705, line: 69, baseType: !133, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, scope: !704, file: !705, line: 77, baseType: !709, size: 320, offset: 64)
!709 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !704, file: !705, line: 77, size: 320, elements: !710)
!710 = !{!711, !899, !904, !932, !940, !946, !2318, !2386}
!711 = !DIDerivedType(tag: DW_TAG_member, scope: !709, file: !705, line: 78, baseType: !712, size: 320)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !709, file: !705, line: 78, size: 320, elements: !713)
!713 = !{!714, !715, !897, !898}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !712, file: !705, line: 84, baseType: !202, size: 128)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !712, file: !705, line: 86, baseType: !716, size: 64, offset: 128)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !718)
!718 = !{!719, !720, !728, !729, !734, !749, !765, !766, !767, !768, !890, !891, !894, !895, !896}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !717, file: !44, line: 452, baseType: !411, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !717, file: !44, line: 453, baseType: !721, size: 128, offset: 64)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !722, line: 292, size: 128, elements: !723)
!722 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!723 = !{!724, !725, !727}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !721, file: !722, line: 293, baseType: !216)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !721, file: !722, line: 295, baseType: !726, size: 32)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !203, line: 148, baseType: !7)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !721, file: !722, line: 296, baseType: !191, size: 64, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !717, file: !44, line: 454, baseType: !726, size: 32, offset: 192)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !717, file: !44, line: 455, baseType: !730, size: 32, offset: 224)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !203, line: 168, baseType: !731)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !203, line: 166, size: 32, elements: !732)
!732 = !{!733}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !731, file: !203, line: 167, baseType: !181, size: 32)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !717, file: !44, line: 460, baseType: !735, size: 128, offset: 256)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !736, line: 125, size: 128, elements: !737)
!736 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!737 = !{!738, !748}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !735, file: !736, line: 126, baseType: !739, size: 64)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !736, line: 31, size: 64, elements: !740)
!740 = !{!741}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !739, file: !736, line: 32, baseType: !742, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !736, line: 24, size: 192, align: 64, elements: !744)
!744 = !{!745, !746, !747}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !743, file: !736, line: 25, baseType: !133, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !743, file: !736, line: 26, baseType: !742, size: 64, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !743, file: !736, line: 27, baseType: !742, size: 64, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !735, file: !736, line: 127, baseType: !742, size: 64, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !717, file: !44, line: 461, baseType: !750, size: 256, offset: 384)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !751, line: 35, size: 256, elements: !752)
!751 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!752 = !{!753, !761, !762, !764}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !750, file: !751, line: 36, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !755, line: 13, baseType: !756)
!755 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !203, line: 175, baseType: !757)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !203, line: 173, size: 64, elements: !758)
!758 = !{!759}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !757, file: !203, line: 174, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !398, line: 22, baseType: !522)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !750, file: !751, line: 42, baseType: !754, size: 64, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !750, file: !751, line: 46, baseType: !763, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !217, line: 29, baseType: !224)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !750, file: !751, line: 47, baseType: !202, size: 128, offset: 128)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !717, file: !44, line: 462, baseType: !133, size: 64, offset: 640)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !717, file: !44, line: 463, baseType: !133, size: 64, offset: 704)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !717, file: !44, line: 464, baseType: !133, size: 64, offset: 768)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !717, file: !44, line: 465, baseType: !769, size: 64, offset: 832)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !771)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !772)
!772 = !{!773, !777, !781, !785, !789, !793, !799, !805, !809, !814, !818, !822, !826, !854, !858, !864, !865, !866, !870, !875, !879, !886}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !771, file: !44, line: 368, baseType: !774, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DISubroutineType(types: !776)
!776 = !{!181, !703, !658}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !771, file: !44, line: 369, baseType: !778, size: 64, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{!181, !334, !703}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !771, file: !44, line: 372, baseType: !782, size: 64, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DISubroutineType(types: !784)
!784 = !{!181, !716, !658}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !771, file: !44, line: 375, baseType: !786, size: 64, offset: 192)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!181, !703}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !771, file: !44, line: 381, baseType: !790, size: 64, offset: 256)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{!181, !334, !716, !206, !7}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !771, file: !44, line: 383, baseType: !794, size: 64, offset: 320)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DISubroutineType(types: !796)
!796 = !{null, !797}
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !771, file: !44, line: 385, baseType: !800, size: 64, offset: 384)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{!181, !334, !716, !513, !7, !7, !803, !804}
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !771, file: !44, line: 388, baseType: !806, size: 64, offset: 448)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{!181, !334, !716, !513, !7, !7, !703, !191}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !771, file: !44, line: 393, baseType: !810, size: 64, offset: 512)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DISubroutineType(types: !812)
!812 = !{!813, !716, !813}
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !203, line: 125, baseType: !403)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !771, file: !44, line: 394, baseType: !815, size: 64, offset: 576)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DISubroutineType(types: !817)
!817 = !{null, !703, !7, !7}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !771, file: !44, line: 395, baseType: !819, size: 64, offset: 640)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DISubroutineType(types: !821)
!821 = !{!181, !703, !726}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !771, file: !44, line: 396, baseType: !823, size: 64, offset: 704)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DISubroutineType(types: !825)
!825 = !{null, !703}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !771, file: !44, line: 397, baseType: !827, size: 64, offset: 768)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DISubroutineType(types: !829)
!829 = !{!288, !830, !852}
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !832)
!832 = !{!833, !834, !835, !839, !840, !841, !844, !845}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !831, file: !44, line: 321, baseType: !334, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !831, file: !44, line: 326, baseType: !513, size: 64, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !831, file: !44, line: 327, baseType: !836, size: 64, offset: 128)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{null, !830, !292, !292}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !831, file: !44, line: 328, baseType: !191, size: 64, offset: 192)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !831, file: !44, line: 329, baseType: !181, size: 32, offset: 256)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !831, file: !44, line: 330, baseType: !842, size: 16, offset: 288)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !398, line: 19, baseType: !843)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !400, line: 24, baseType: !299)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !831, file: !44, line: 331, baseType: !842, size: 16, offset: 304)
!845 = !DIDerivedType(tag: DW_TAG_member, scope: !831, file: !44, line: 332, baseType: !846, size: 64, offset: 320)
!846 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !831, file: !44, line: 332, size: 64, elements: !847)
!847 = !{!848, !849}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !846, file: !44, line: 333, baseType: !7, size: 32)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !846, file: !44, line: 334, baseType: !850, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !771, file: !44, line: 402, baseType: !855, size: 64, offset: 832)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{!181, !716, !703, !703, !5}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !771, file: !44, line: 404, baseType: !859, size: 64, offset: 896)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DISubroutineType(types: !861)
!861 = !{!472, !703, !862}
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !863, line: 305, baseType: !7)
!863 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!864 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !771, file: !44, line: 405, baseType: !823, size: 64, offset: 960)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !771, file: !44, line: 406, baseType: !786, size: 64, offset: 1024)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !771, file: !44, line: 407, baseType: !867, size: 64, offset: 1088)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DISubroutineType(types: !869)
!869 = !{!181, !703, !133, !133}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !771, file: !44, line: 409, baseType: !871, size: 64, offset: 1152)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DISubroutineType(types: !873)
!873 = !{null, !703, !874, !874}
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !771, file: !44, line: 410, baseType: !876, size: 64, offset: 1216)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DISubroutineType(types: !878)
!878 = !{!181, !716, !703}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !771, file: !44, line: 413, baseType: !880, size: 64, offset: 1280)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DISubroutineType(types: !882)
!882 = !{!181, !883, !334, !885}
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !771, file: !44, line: 415, baseType: !887, size: 64, offset: 1344)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DISubroutineType(types: !889)
!889 = !{null, !334}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !717, file: !44, line: 466, baseType: !133, size: 64, offset: 896)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !717, file: !44, line: 467, baseType: !892, size: 32, offset: 960)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !893, line: 8, baseType: !397)
!893 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!894 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !717, file: !44, line: 468, baseType: !216, offset: 992)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !717, file: !44, line: 469, baseType: !202, size: 128, offset: 1024)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !717, file: !44, line: 470, baseType: !191, size: 64, offset: 1152)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !712, file: !705, line: 87, baseType: !133, size: 64, offset: 192)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !712, file: !705, line: 94, baseType: !133, size: 64, offset: 256)
!899 = !DIDerivedType(tag: DW_TAG_member, scope: !709, file: !705, line: 96, baseType: !900, size: 64)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !709, file: !705, line: 96, size: 64, elements: !901)
!901 = !{!902}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !900, file: !705, line: 101, baseType: !903, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !203, line: 143, baseType: !403)
!904 = !DIDerivedType(tag: DW_TAG_member, scope: !709, file: !705, line: 103, baseType: !905, size: 320)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !709, file: !705, line: 103, size: 320, elements: !906)
!906 = !{!907, !917, !920, !921}
!907 = !DIDerivedType(tag: DW_TAG_member, scope: !905, file: !705, line: 104, baseType: !908, size: 128)
!908 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !905, file: !705, line: 104, size: 128, elements: !909)
!909 = !{!910, !911}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !908, file: !705, line: 105, baseType: !202, size: 128)
!911 = !DIDerivedType(tag: DW_TAG_member, scope: !908, file: !705, line: 106, baseType: !912, size: 128)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !908, file: !705, line: 106, size: 128, elements: !913)
!913 = !{!914, !915, !916}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !912, file: !705, line: 107, baseType: !703, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !912, file: !705, line: 109, baseType: !181, size: 32, offset: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !912, file: !705, line: 110, baseType: !181, size: 32, offset: 96)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !905, file: !705, line: 117, baseType: !918, size: 64, offset: 128)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !705, line: 117, flags: DIFlagFwdDecl)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !905, file: !705, line: 119, baseType: !191, size: 64, offset: 192)
!921 = !DIDerivedType(tag: DW_TAG_member, scope: !905, file: !705, line: 120, baseType: !922, size: 64, offset: 256)
!922 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !905, file: !705, line: 120, size: 64, elements: !923)
!923 = !{!924, !925, !926}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !922, file: !705, line: 121, baseType: !191, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !922, file: !705, line: 122, baseType: !133, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, scope: !922, file: !705, line: 123, baseType: !927, size: 32)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !922, file: !705, line: 123, size: 32, elements: !928)
!928 = !{!929, !930, !931}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !927, file: !705, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !927, file: !705, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !927, file: !705, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!932 = !DIDerivedType(tag: DW_TAG_member, scope: !709, file: !705, line: 130, baseType: !933, size: 192)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !709, file: !705, line: 130, size: 192, elements: !934)
!934 = !{!935, !936, !937, !938, !939}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !933, file: !705, line: 131, baseType: !133, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !933, file: !705, line: 134, baseType: !409, size: 8, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !933, file: !705, line: 135, baseType: !409, size: 8, offset: 72)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !933, file: !705, line: 136, baseType: !730, size: 32, offset: 96)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !933, file: !705, line: 137, baseType: !7, size: 32, offset: 128)
!940 = !DIDerivedType(tag: DW_TAG_member, scope: !709, file: !705, line: 139, baseType: !941, size: 256)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !709, file: !705, line: 139, size: 256, elements: !942)
!942 = !{!943, !944, !945}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !941, file: !705, line: 140, baseType: !133, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !941, file: !705, line: 141, baseType: !730, size: 32, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !941, file: !705, line: 143, baseType: !202, size: 128, offset: 128)
!946 = !DIDerivedType(tag: DW_TAG_member, scope: !709, file: !705, line: 145, baseType: !947, size: 256)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !709, file: !705, line: 145, size: 256, elements: !948)
!948 = !{!949, !950, !952, !953, !2317}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !947, file: !705, line: 146, baseType: !133, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !947, file: !705, line: 147, baseType: !951, size: 64, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !695, line: 509, baseType: !703)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !947, file: !705, line: 148, baseType: !133, size: 64, offset: 128)
!953 = !DIDerivedType(tag: DW_TAG_member, scope: !947, file: !705, line: 149, baseType: !954, size: 64, offset: 192)
!954 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !947, file: !705, line: 149, size: 64, elements: !955)
!955 = !{!956, !2316}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !954, file: !705, line: 150, baseType: !957, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !705, line: 388, size: 7296, elements: !959)
!959 = !{!960, !2312}
!960 = !DIDerivedType(tag: DW_TAG_member, scope: !958, file: !705, line: 389, baseType: !961, size: 7296)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !958, file: !705, line: 389, size: 7296, elements: !962)
!962 = !{!963, !1081, !1082, !1083, !1087, !1088, !1089, !1090, !1091, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1132, !1140, !1143, !1189, !1190, !2296, !2297, !2300, !2301, !2302, !2305, !2306, !2307, !2310, !2311}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !961, file: !705, line: 390, baseType: !964, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !705, line: 305, size: 1472, elements: !966)
!966 = !{!967, !968, !969, !970, !971, !972, !973, !974, !981, !982, !987, !988, !991, !1075, !1076, !1077, !1078, !1079}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !965, file: !705, line: 308, baseType: !133, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !965, file: !705, line: 309, baseType: !133, size: 64, offset: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !965, file: !705, line: 313, baseType: !964, size: 64, offset: 128)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !965, file: !705, line: 313, baseType: !964, size: 64, offset: 192)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !965, file: !705, line: 315, baseType: !743, size: 192, align: 64, offset: 256)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !965, file: !705, line: 323, baseType: !133, size: 64, offset: 448)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !965, file: !705, line: 327, baseType: !957, size: 64, offset: 512)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !965, file: !705, line: 333, baseType: !975, size: 64, offset: 576)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !695, line: 284, baseType: !976)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !695, line: 284, size: 64, elements: !977)
!977 = !{!978}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !976, file: !695, line: 284, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !980, line: 19, baseType: !133)
!980 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!981 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !965, file: !705, line: 334, baseType: !133, size: 64, offset: 640)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !965, file: !705, line: 343, baseType: !983, size: 256, offset: 704)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !965, file: !705, line: 340, size: 256, elements: !984)
!984 = !{!985, !986}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !983, file: !705, line: 341, baseType: !743, size: 192, align: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !983, file: !705, line: 342, baseType: !133, size: 64, offset: 192)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !965, file: !705, line: 351, baseType: !202, size: 128, offset: 960)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !965, file: !705, line: 353, baseType: !989, size: 64, offset: 1088)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !705, line: 353, flags: DIFlagFwdDecl)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !965, file: !705, line: 356, baseType: !992, size: 64, offset: 1152)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !994)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !995)
!995 = !{!996, !1000, !1001, !1005, !1009, !1049, !1053, !1057, !1061, !1062, !1063, !1067, !1071}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !994, file: !14, line: 558, baseType: !997, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DISubroutineType(types: !999)
!999 = !{null, !964}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !994, file: !14, line: 559, baseType: !997, size: 64, offset: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !994, file: !14, line: 560, baseType: !1002, size: 64, offset: 128)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!181, !964, !133}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !994, file: !14, line: 561, baseType: !1006, size: 64, offset: 192)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!181, !964}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !994, file: !14, line: 562, baseType: !1010, size: 64, offset: 256)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!1013, !1014}
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !705, line: 682, baseType: !7)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1016)
!1016 = !{!1017, !1018, !1019, !1020, !1021, !1022, !1029, !1036, !1042, !1043, !1044, !1046, !1048}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1015, file: !14, line: 509, baseType: !964, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1015, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1015, file: !14, line: 511, baseType: !726, size: 32, offset: 96)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1015, file: !14, line: 512, baseType: !133, size: 64, offset: 128)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1015, file: !14, line: 513, baseType: !133, size: 64, offset: 192)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1015, file: !14, line: 514, baseType: !1023, size: 64, offset: 256)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !695, line: 385, baseType: !1025)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !695, line: 385, size: 64, elements: !1026)
!1026 = !{!1027}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1025, file: !695, line: 385, baseType: !1028, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !980, line: 15, baseType: !133)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1015, file: !14, line: 516, baseType: !1030, size: 64, offset: 320)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !695, line: 359, baseType: !1032)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !695, line: 359, size: 64, elements: !1033)
!1033 = !{!1034}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1032, file: !695, line: 359, baseType: !1035, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !980, line: 16, baseType: !133)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1015, file: !14, line: 519, baseType: !1037, size: 64, offset: 384)
!1037 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !980, line: 21, baseType: !1038)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !980, line: 21, size: 64, elements: !1039)
!1039 = !{!1040}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1038, file: !980, line: 21, baseType: !1041, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !980, line: 14, baseType: !133)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1015, file: !14, line: 521, baseType: !703, size: 64, offset: 448)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1015, file: !14, line: 522, baseType: !703, size: 64, offset: 512)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1015, file: !14, line: 528, baseType: !1045, size: 64, offset: 576)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1015, file: !14, line: 532, baseType: !1047, size: 64, offset: 640)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1015, file: !14, line: 536, baseType: !951, size: 64, offset: 704)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !994, file: !14, line: 563, baseType: !1050, size: 64, offset: 320)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!1013, !1014, !13}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !994, file: !14, line: 565, baseType: !1054, size: 64, offset: 384)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{null, !1014, !133, !133}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !994, file: !14, line: 567, baseType: !1058, size: 64, offset: 448)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!133, !964}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !994, file: !14, line: 571, baseType: !1010, size: 64, offset: 512)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !994, file: !14, line: 574, baseType: !1010, size: 64, offset: 576)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !994, file: !14, line: 579, baseType: !1064, size: 64, offset: 640)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!181, !964, !133, !191, !181, !181}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !994, file: !14, line: 585, baseType: !1068, size: 64, offset: 704)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!172, !964}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !994, file: !14, line: 615, baseType: !1072, size: 64, offset: 768)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!703, !964, !133}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !965, file: !705, line: 359, baseType: !133, size: 64, offset: 1216)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !965, file: !705, line: 361, baseType: !334, size: 64, offset: 1280)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !965, file: !705, line: 362, baseType: !191, size: 64, offset: 1344)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !965, file: !705, line: 365, baseType: !754, size: 64, offset: 1408)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !965, file: !705, line: 373, baseType: !1080, offset: 1472)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !705, line: 296, elements: !230)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !961, file: !705, line: 391, baseType: !739, size: 64, offset: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !961, file: !705, line: 392, baseType: !403, size: 64, offset: 128)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !961, file: !705, line: 394, baseType: !1084, size: 64, offset: 192)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!133, !334, !133, !133, !133, !133}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !961, file: !705, line: 398, baseType: !133, size: 64, offset: 256)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !961, file: !705, line: 399, baseType: !133, size: 64, offset: 320)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !961, file: !705, line: 405, baseType: !133, size: 64, offset: 384)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !961, file: !705, line: 406, baseType: !133, size: 64, offset: 448)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !961, file: !705, line: 407, baseType: !1092, size: 64, offset: 512)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !695, line: 286, baseType: !1094)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !695, line: 286, size: 64, elements: !1095)
!1095 = !{!1096}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1094, file: !695, line: 286, baseType: !1097, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !980, line: 18, baseType: !133)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !961, file: !705, line: 416, baseType: !730, size: 32, offset: 576)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !961, file: !705, line: 428, baseType: !730, size: 32, offset: 608)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !961, file: !705, line: 437, baseType: !730, size: 32, offset: 640)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !961, file: !705, line: 447, baseType: !730, size: 32, offset: 672)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !961, file: !705, line: 450, baseType: !754, size: 64, offset: 704)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !961, file: !705, line: 452, baseType: !181, size: 32, offset: 768)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !961, file: !705, line: 454, baseType: !216, offset: 800)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !961, file: !705, line: 457, baseType: !750, size: 256, offset: 832)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !961, file: !705, line: 459, baseType: !202, size: 128, offset: 1088)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !961, file: !705, line: 466, baseType: !133, size: 64, offset: 1216)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !961, file: !705, line: 467, baseType: !133, size: 64, offset: 1280)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !961, file: !705, line: 469, baseType: !133, size: 64, offset: 1344)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !961, file: !705, line: 470, baseType: !133, size: 64, offset: 1408)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !961, file: !705, line: 471, baseType: !756, size: 64, offset: 1472)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !961, file: !705, line: 472, baseType: !133, size: 64, offset: 1536)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !961, file: !705, line: 473, baseType: !133, size: 64, offset: 1600)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !961, file: !705, line: 474, baseType: !133, size: 64, offset: 1664)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !961, file: !705, line: 475, baseType: !133, size: 64, offset: 1728)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !961, file: !705, line: 477, baseType: !216, offset: 1792)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !961, file: !705, line: 478, baseType: !133, size: 64, offset: 1792)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !961, file: !705, line: 478, baseType: !133, size: 64, offset: 1856)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !961, file: !705, line: 478, baseType: !133, size: 64, offset: 1920)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !961, file: !705, line: 478, baseType: !133, size: 64, offset: 1984)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !961, file: !705, line: 479, baseType: !133, size: 64, offset: 2048)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !961, file: !705, line: 479, baseType: !133, size: 64, offset: 2112)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !961, file: !705, line: 479, baseType: !133, size: 64, offset: 2176)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !961, file: !705, line: 480, baseType: !133, size: 64, offset: 2240)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !961, file: !705, line: 480, baseType: !133, size: 64, offset: 2304)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !961, file: !705, line: 480, baseType: !133, size: 64, offset: 2368)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !961, file: !705, line: 480, baseType: !133, size: 64, offset: 2432)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !961, file: !705, line: 482, baseType: !1129, size: 2816, offset: 2496)
!1129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 2816, elements: !1130)
!1130 = !{!1131}
!1131 = !DISubrange(count: 44)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !961, file: !705, line: 488, baseType: !1133, size: 256, offset: 5312)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1134, line: 60, size: 256, elements: !1135)
!1134 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1135 = !{!1136}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1133, file: !1134, line: 61, baseType: !1137, size: 256)
!1137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !754, size: 256, elements: !1138)
!1138 = !{!1139}
!1139 = !DISubrange(count: 4)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !961, file: !705, line: 490, baseType: !1141, size: 64, offset: 5568)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !705, line: 490, flags: DIFlagFwdDecl)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !961, file: !705, line: 493, baseType: !1144, size: 896, offset: 5632)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1145, line: 53, baseType: !1146)
!1145 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1145, line: 13, size: 896, elements: !1147)
!1147 = !{!1148, !1149, !1150, !1151, !1154, !1155, !1162, !1163, !1183, !1184, !1185}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1146, file: !1145, line: 18, baseType: !403, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1146, file: !1145, line: 28, baseType: !756, size: 64, offset: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1146, file: !1145, line: 31, baseType: !750, size: 256, offset: 128)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1146, file: !1145, line: 32, baseType: !1152, size: 64, offset: 384)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1145, line: 32, flags: DIFlagFwdDecl)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1146, file: !1145, line: 37, baseType: !299, size: 16, offset: 448)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1146, file: !1145, line: 40, baseType: !1156, size: 192, offset: 512)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1157, line: 53, size: 192, elements: !1158)
!1157 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1158 = !{!1159, !1160, !1161}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1156, file: !1157, line: 54, baseType: !754, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1156, file: !1157, line: 55, baseType: !216, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1156, file: !1157, line: 59, baseType: !202, size: 128, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1146, file: !1145, line: 41, baseType: !191, size: 64, offset: 704)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1146, file: !1145, line: 42, baseType: !1164, size: 64, offset: 768)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1166)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1167, line: 13, size: 896, elements: !1168)
!1167 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1168 = !{!1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1166, file: !1167, line: 14, baseType: !191, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1166, file: !1167, line: 15, baseType: !133, size: 64, offset: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1166, file: !1167, line: 17, baseType: !133, size: 64, offset: 128)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1166, file: !1167, line: 17, baseType: !133, size: 64, offset: 192)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1166, file: !1167, line: 19, baseType: !292, size: 64, offset: 256)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1166, file: !1167, line: 21, baseType: !292, size: 64, offset: 320)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1166, file: !1167, line: 22, baseType: !292, size: 64, offset: 384)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1166, file: !1167, line: 23, baseType: !292, size: 64, offset: 448)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1166, file: !1167, line: 24, baseType: !292, size: 64, offset: 512)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1166, file: !1167, line: 25, baseType: !292, size: 64, offset: 576)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1166, file: !1167, line: 26, baseType: !292, size: 64, offset: 640)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1166, file: !1167, line: 27, baseType: !292, size: 64, offset: 704)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1166, file: !1167, line: 28, baseType: !292, size: 64, offset: 768)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1166, file: !1167, line: 29, baseType: !292, size: 64, offset: 832)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1146, file: !1145, line: 44, baseType: !730, size: 32, offset: 832)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1146, file: !1145, line: 50, baseType: !842, size: 16, offset: 864)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1146, file: !1145, line: 51, baseType: !1186, size: 16, offset: 880)
!1186 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !398, line: 18, baseType: !1187)
!1187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !400, line: 23, baseType: !1188)
!1188 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !961, file: !705, line: 495, baseType: !133, size: 64, offset: 6528)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !961, file: !705, line: 497, baseType: !1191, size: 64, offset: 6592)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !705, line: 381, size: 384, elements: !1193)
!1193 = !{!1194, !1195, !2295}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1192, file: !705, line: 382, baseType: !730, size: 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1192, file: !705, line: 383, baseType: !1196, size: 128, offset: 64)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !705, line: 376, size: 128, elements: !1197)
!1197 = !{!1198, !2293}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1196, file: !705, line: 377, baseType: !1199, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1201, line: 640, size: 48640, elements: !1202)
!1201 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1202 = !{!1203, !1209, !1211, !1212, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1229, !1247, !1258, !1343, !1344, !1345, !1356, !1357, !1359, !1360, !1361, !1362, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1441, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1479, !1481, !1482, !1483, !1495, !1496, !1497, !1498, !1499, !1500, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1524, !1529, !1713, !1714, !1715, !1716, !1720, !1723, !1726, !1729, !1732, !1736, !1837, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1881, !1882, !1883, !1884, !1885, !1890, !1891, !1892, !1895, !1896, !1899, !1902, !1905, !1908, !1951, !1954, !1955, !2034, !2035, !2038, !2039, !2042, !2043, !2044, !2048, !2049, !2050, !2063, !2064, !2065, !2075, !2080, !2083, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1200, file: !1201, line: 646, baseType: !1204, size: 128)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1205, line: 56, size: 128, elements: !1206)
!1205 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1206 = !{!1207, !1208}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1204, file: !1205, line: 57, baseType: !133, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1204, file: !1205, line: 58, baseType: !397, size: 32, offset: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1200, file: !1201, line: 649, baseType: !1210, size: 64, offset: 128)
!1210 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !292)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1200, file: !1201, line: 657, baseType: !191, size: 64, offset: 192)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1200, file: !1201, line: 658, baseType: !1213, size: 32, offset: 256)
!1213 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1214, line: 113, baseType: !1215)
!1214 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1214, line: 111, size: 32, elements: !1216)
!1216 = !{!1217}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1215, file: !1214, line: 112, baseType: !730, size: 32)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1200, file: !1201, line: 660, baseType: !7, size: 32, offset: 288)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1200, file: !1201, line: 661, baseType: !7, size: 32, offset: 320)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1200, file: !1201, line: 684, baseType: !181, size: 32, offset: 352)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1200, file: !1201, line: 686, baseType: !181, size: 32, offset: 384)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1200, file: !1201, line: 687, baseType: !181, size: 32, offset: 416)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1200, file: !1201, line: 688, baseType: !181, size: 32, offset: 448)
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
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1233, file: !1201, line: 326, baseType: !133, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1233, file: !1201, line: 327, baseType: !397, size: 32, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1230, file: !1201, line: 454, baseType: !743, size: 192, align: 64, offset: 128)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1230, file: !1201, line: 455, baseType: !202, size: 128, offset: 320)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1230, file: !1201, line: 456, baseType: !7, size: 32, offset: 448)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1230, file: !1201, line: 458, baseType: !403, size: 64, offset: 512)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1230, file: !1201, line: 459, baseType: !403, size: 64, offset: 576)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1230, file: !1201, line: 460, baseType: !403, size: 64, offset: 640)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1230, file: !1201, line: 461, baseType: !403, size: 64, offset: 704)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1230, file: !1201, line: 463, baseType: !403, size: 64, offset: 768)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1230, file: !1201, line: 465, baseType: !1246, offset: 832)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1201, line: 415, elements: !230)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1200, file: !1201, line: 693, baseType: !1248, size: 384, offset: 1408)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1201, line: 489, size: 384, elements: !1249)
!1249 = !{!1250, !1251, !1252, !1253, !1254, !1255, !1256}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1248, file: !1201, line: 490, baseType: !202, size: 128)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1248, file: !1201, line: 491, baseType: !133, size: 64, offset: 128)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1248, file: !1201, line: 492, baseType: !133, size: 64, offset: 192)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1248, file: !1201, line: 493, baseType: !7, size: 32, offset: 256)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1248, file: !1201, line: 494, baseType: !299, size: 16, offset: 288)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1248, file: !1201, line: 495, baseType: !299, size: 16, offset: 304)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1248, file: !1201, line: 497, baseType: !1257, size: 64, offset: 320)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1200, file: !1201, line: 697, baseType: !1259, size: 1792, offset: 1792)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1201, line: 507, size: 1792, elements: !1260)
!1260 = !{!1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1340, !1341}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1259, file: !1201, line: 508, baseType: !743, size: 192, align: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1259, file: !1201, line: 515, baseType: !403, size: 64, offset: 192)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1259, file: !1201, line: 516, baseType: !403, size: 64, offset: 256)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1259, file: !1201, line: 517, baseType: !403, size: 64, offset: 320)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1259, file: !1201, line: 518, baseType: !403, size: 64, offset: 384)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1259, file: !1201, line: 519, baseType: !403, size: 64, offset: 448)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1259, file: !1201, line: 526, baseType: !760, size: 64, offset: 512)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1259, file: !1201, line: 527, baseType: !403, size: 64, offset: 576)
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
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1278, file: !1279, line: 10, baseType: !743, size: 192, align: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1278, file: !1279, line: 11, baseType: !1283, size: 64, offset: 192)
!1283 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1284, line: 29, baseType: !760)
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
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1297, file: !20, line: 215, baseType: !763)
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
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !203, line: 27, baseType: !1318)
!1318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !290, line: 96, baseType: !181)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1293, file: !20, line: 163, baseType: !1320, size: 32, offset: 128)
!1320 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !370, line: 276, baseType: !1321)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !370, line: 276, size: 32, elements: !1322)
!1322 = !{!1323}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1321, file: !370, line: 276, baseType: !374, size: 32)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1293, file: !20, line: 164, baseType: !1290, size: 64, offset: 192)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1293, file: !20, line: 165, baseType: !1326, size: 128, offset: 256)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1279, line: 14, size: 128, elements: !1327)
!1327 = !{!1328}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1326, file: !1279, line: 15, baseType: !735, size: 128)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1293, file: !20, line: 166, baseType: !1330, size: 64, offset: 384)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!1283}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1293, file: !20, line: 167, baseType: !1283, size: 64, offset: 448)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1275, file: !20, line: 123, baseType: !1335, size: 8, offset: 448)
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !398, line: 17, baseType: !1336)
!1336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !400, line: 21, baseType: !409)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1275, file: !20, line: 124, baseType: !1335, size: 8, offset: 456)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1275, file: !20, line: 125, baseType: !1335, size: 8, offset: 464)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1275, file: !20, line: 126, baseType: !1335, size: 8, offset: 472)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1259, file: !1201, line: 572, baseType: !1275, size: 512, offset: 1216)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1259, file: !1201, line: 580, baseType: !1342, size: 64, offset: 1728)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1200, file: !1201, line: 721, baseType: !7, size: 32, offset: 3584)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1200, file: !1201, line: 722, baseType: !181, size: 32, offset: 3616)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1200, file: !1201, line: 723, baseType: !1346, size: 64, offset: 3648)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1348)
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1349, line: 17, baseType: !1350)
!1349 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1349, line: 17, size: 64, elements: !1351)
!1351 = !{!1352}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1350, file: !1349, line: 17, baseType: !1353, size: 64)
!1353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 64, elements: !1354)
!1354 = !{!1355}
!1355 = !DISubrange(count: 1)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1200, file: !1201, line: 724, baseType: !1348, size: 64, offset: 3712)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1200, file: !1201, line: 749, baseType: !1358, offset: 3776)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1201, line: 290, elements: !230)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1200, file: !1201, line: 751, baseType: !202, size: 128, offset: 3776)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1200, file: !1201, line: 757, baseType: !957, size: 64, offset: 3904)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1200, file: !1201, line: 758, baseType: !957, size: 64, offset: 3968)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1200, file: !1201, line: 761, baseType: !1363, size: 320, offset: 4032)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1134, line: 34, size: 320, elements: !1364)
!1364 = !{!1365, !1366}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1363, file: !1134, line: 35, baseType: !403, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1363, file: !1134, line: 36, baseType: !1367, size: 256, offset: 64)
!1367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !964, size: 256, elements: !1138)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1200, file: !1201, line: 766, baseType: !181, size: 32, offset: 4352)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1200, file: !1201, line: 767, baseType: !181, size: 32, offset: 4384)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1200, file: !1201, line: 768, baseType: !181, size: 32, offset: 4416)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1200, file: !1201, line: 770, baseType: !181, size: 32, offset: 4448)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1200, file: !1201, line: 772, baseType: !133, size: 64, offset: 4480)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1200, file: !1201, line: 775, baseType: !7, size: 32, offset: 4544)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1200, file: !1201, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1200, file: !1201, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1200, file: !1201, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1200, file: !1201, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1200, file: !1201, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1200, file: !1201, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1200, file: !1201, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1200, file: !1201, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1200, file: !1201, line: 831, baseType: !133, size: 64, offset: 4672)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1200, file: !1201, line: 833, baseType: !1384, size: 384, offset: 4736)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1385)
!1385 = !{!1386, !1391}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1384, file: !25, line: 26, baseType: !1387, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!292, !1390}
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, scope: !1384, file: !25, line: 27, baseType: !1392, size: 320, offset: 64)
!1392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1384, file: !25, line: 27, size: 320, elements: !1393)
!1393 = !{!1394, !1404, !1431}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1392, file: !25, line: 36, baseType: !1395, size: 320)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1392, file: !25, line: 29, size: 320, elements: !1396)
!1396 = !{!1397, !1399, !1400, !1401, !1402, !1403}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1395, file: !25, line: 30, baseType: !1398, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1395, file: !25, line: 31, baseType: !397, size: 32, offset: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1395, file: !25, line: 32, baseType: !397, size: 32, offset: 96)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1395, file: !25, line: 33, baseType: !397, size: 32, offset: 128)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1395, file: !25, line: 34, baseType: !403, size: 64, offset: 192)
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
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !290, line: 93, baseType: !515)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1414, file: !1415, line: 9, baseType: !515, size: 64, offset: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1410, file: !25, line: 43, baseType: !1421, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1423, line: 7, size: 64, elements: !1424)
!1423 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1424 = !{!1425, !1429}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1422, file: !1423, line: 8, baseType: !1426, size: 32)
!1426 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1423, line: 5, baseType: !1427)
!1427 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !398, line: 20, baseType: !1428)
!1428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !400, line: 26, baseType: !181)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1422, file: !1423, line: 9, baseType: !1427, size: 32, offset: 32)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1405, file: !25, line: 45, baseType: !403, size: 64, offset: 128)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1392, file: !25, line: 54, baseType: !1432, size: 256)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1392, file: !25, line: 48, size: 256, elements: !1433)
!1433 = !{!1434, !1437, !1438, !1439, !1440}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1432, file: !25, line: 49, baseType: !1435, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1432, file: !25, line: 50, baseType: !181, size: 32, offset: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1432, file: !25, line: 51, baseType: !181, size: 32, offset: 96)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1432, file: !25, line: 52, baseType: !133, size: 64, offset: 128)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1432, file: !25, line: 53, baseType: !133, size: 64, offset: 192)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1200, file: !1201, line: 835, baseType: !1442, size: 32, offset: 5120)
!1442 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !203, line: 22, baseType: !1443)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !290, line: 28, baseType: !181)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1200, file: !1201, line: 836, baseType: !1442, size: 32, offset: 5152)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1200, file: !1201, line: 840, baseType: !133, size: 64, offset: 5184)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1200, file: !1201, line: 849, baseType: !1199, size: 64, offset: 5248)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1200, file: !1201, line: 852, baseType: !1199, size: 64, offset: 5312)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1200, file: !1201, line: 857, baseType: !202, size: 128, offset: 5376)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1200, file: !1201, line: 858, baseType: !202, size: 128, offset: 5504)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1200, file: !1201, line: 859, baseType: !1199, size: 64, offset: 5632)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1200, file: !1201, line: 867, baseType: !202, size: 128, offset: 5696)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1200, file: !1201, line: 868, baseType: !202, size: 128, offset: 5824)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1200, file: !1201, line: 871, baseType: !1454, size: 64, offset: 5952)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1456)
!1456 = !{!1457, !1458, !1459, !1460, !1462, !1463, !1470, !1471}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1455, file: !53, line: 61, baseType: !1213, size: 32)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1455, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1455, file: !53, line: 63, baseType: !216, offset: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1455, file: !53, line: 65, baseType: !1461, size: 256, offset: 64)
!1461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !617, size: 256, elements: !1138)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1455, file: !53, line: 66, baseType: !617, size: 64, offset: 320)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1455, file: !53, line: 68, baseType: !1464, size: 128, offset: 384)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1465, line: 40, baseType: !1466)
!1465 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1465, line: 36, size: 128, elements: !1467)
!1467 = !{!1468, !1469}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1466, file: !1465, line: 37, baseType: !216)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1466, file: !1465, line: 38, baseType: !202, size: 128)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1455, file: !53, line: 69, baseType: !347, size: 128, align: 64, offset: 512)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1455, file: !53, line: 70, baseType: !1472, size: 128, offset: 640)
!1472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1473, size: 128, elements: !1354)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1474)
!1474 = !{!1475, !1476}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1473, file: !53, line: 55, baseType: !181, size: 32)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1473, file: !53, line: 56, baseType: !1477, size: 64, offset: 64)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1200, file: !1201, line: 872, baseType: !1480, size: 512, offset: 6016)
!1480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 512, elements: !1138)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1200, file: !1201, line: 873, baseType: !202, size: 128, offset: 6528)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1200, file: !1201, line: 874, baseType: !202, size: 128, offset: 6656)
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
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1490, file: !1491, line: 44, baseType: !763)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1490, file: !1491, line: 45, baseType: !202, size: 128)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1200, file: !1201, line: 879, baseType: !687, size: 64, offset: 6848)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1200, file: !1201, line: 882, baseType: !687, size: 64, offset: 6912)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1200, file: !1201, line: 884, baseType: !403, size: 64, offset: 6976)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1200, file: !1201, line: 885, baseType: !403, size: 64, offset: 7040)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1200, file: !1201, line: 890, baseType: !403, size: 64, offset: 7104)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1200, file: !1201, line: 891, baseType: !1501, size: 128, offset: 7168)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1201, line: 242, size: 128, elements: !1502)
!1502 = !{!1503, !1504, !1505}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1501, file: !1201, line: 244, baseType: !403, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1501, file: !1201, line: 245, baseType: !403, size: 64, offset: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1501, file: !1201, line: 246, baseType: !763, offset: 128)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1200, file: !1201, line: 900, baseType: !133, size: 64, offset: 7296)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1200, file: !1201, line: 901, baseType: !133, size: 64, offset: 7360)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1200, file: !1201, line: 904, baseType: !403, size: 64, offset: 7424)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1200, file: !1201, line: 907, baseType: !403, size: 64, offset: 7488)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1200, file: !1201, line: 910, baseType: !133, size: 64, offset: 7552)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1200, file: !1201, line: 911, baseType: !133, size: 64, offset: 7616)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1200, file: !1201, line: 914, baseType: !1513, size: 640, offset: 7680)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1514, line: 123, size: 640, elements: !1515)
!1514 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1515 = !{!1516, !1522, !1523}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1513, file: !1514, line: 124, baseType: !1517, size: 576)
!1517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1518, size: 576, elements: !258)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1514, line: 108, size: 192, elements: !1519)
!1519 = !{!1520, !1521}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1518, file: !1514, line: 109, baseType: !403, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1518, file: !1514, line: 110, baseType: !1326, size: 128, offset: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1513, file: !1514, line: 125, baseType: !7, size: 32, offset: 576)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1513, file: !1514, line: 126, baseType: !7, size: 32, offset: 608)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1200, file: !1201, line: 917, baseType: !1525, size: 192, offset: 8320)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1514, line: 134, size: 192, elements: !1526)
!1526 = !{!1527, !1528}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1525, file: !1514, line: 135, baseType: !347, size: 128, align: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1525, file: !1514, line: 136, baseType: !7, size: 32, offset: 128)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1200, file: !1201, line: 923, baseType: !1530, size: 64, offset: 8512)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1532)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1533, line: 111, size: 1280, elements: !1534)
!1533 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1534 = !{!1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1554, !1555, !1556, !1557, !1558, !1559, !1666, !1667, !1668, !1669, !1695, !1698, !1708}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1532, file: !1533, line: 112, baseType: !730, size: 32)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1532, file: !1533, line: 120, baseType: !417, size: 32, offset: 32)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1532, file: !1533, line: 121, baseType: !425, size: 32, offset: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1532, file: !1533, line: 122, baseType: !417, size: 32, offset: 96)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1532, file: !1533, line: 123, baseType: !425, size: 32, offset: 128)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1532, file: !1533, line: 124, baseType: !417, size: 32, offset: 160)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1532, file: !1533, line: 125, baseType: !425, size: 32, offset: 192)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1532, file: !1533, line: 126, baseType: !417, size: 32, offset: 224)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1532, file: !1533, line: 127, baseType: !425, size: 32, offset: 256)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1532, file: !1533, line: 128, baseType: !7, size: 32, offset: 288)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1532, file: !1533, line: 129, baseType: !1546, size: 64, offset: 320)
!1546 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1547, line: 26, baseType: !1548)
!1547 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1547, line: 24, size: 64, elements: !1549)
!1549 = !{!1550}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1548, file: !1547, line: 25, baseType: !1551, size: 64)
!1551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 64, elements: !1552)
!1552 = !{!1553}
!1553 = !DISubrange(count: 2)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1532, file: !1533, line: 130, baseType: !1546, size: 64, offset: 384)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1532, file: !1533, line: 131, baseType: !1546, size: 64, offset: 448)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1532, file: !1533, line: 132, baseType: !1546, size: 64, offset: 512)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1532, file: !1533, line: 133, baseType: !1546, size: 64, offset: 576)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1532, file: !1533, line: 135, baseType: !409, size: 8, offset: 640)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1532, file: !1533, line: 137, baseType: !1560, size: 64, offset: 704)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1562, line: 189, size: 1664, elements: !1563)
!1562 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1563 = !{!1564, !1565, !1568, !1573, !1574, !1577, !1578, !1583, !1584, !1585, !1586, !1588, !1589, !1590, !1591, !1592, !1630, !1651}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1561, file: !1562, line: 190, baseType: !1213, size: 32)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1561, file: !1562, line: 191, baseType: !1566, size: 32, offset: 32)
!1566 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1562, line: 28, baseType: !1567)
!1567 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !203, line: 98, baseType: !1427)
!1568 = !DIDerivedType(tag: DW_TAG_member, scope: !1561, file: !1562, line: 192, baseType: !1569, size: 192, offset: 64)
!1569 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1561, file: !1562, line: 192, size: 192, elements: !1570)
!1570 = !{!1571, !1572}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1569, file: !1562, line: 193, baseType: !202, size: 128)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1569, file: !1562, line: 194, baseType: !743, size: 192, align: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1561, file: !1562, line: 199, baseType: !750, size: 256, offset: 256)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1561, file: !1562, line: 200, baseType: !1575, size: 64, offset: 512)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1562, line: 200, flags: DIFlagFwdDecl)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1561, file: !1562, line: 201, baseType: !191, size: 64, offset: 576)
!1578 = !DIDerivedType(tag: DW_TAG_member, scope: !1561, file: !1562, line: 202, baseType: !1579, size: 64, offset: 640)
!1579 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1561, file: !1562, line: 202, size: 64, elements: !1580)
!1580 = !{!1581, !1582}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1579, file: !1562, line: 203, baseType: !521, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1579, file: !1562, line: 204, baseType: !521, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1561, file: !1562, line: 206, baseType: !521, size: 64, offset: 704)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1561, file: !1562, line: 207, baseType: !417, size: 32, offset: 768)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1561, file: !1562, line: 208, baseType: !425, size: 32, offset: 800)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1561, file: !1562, line: 209, baseType: !1587, size: 32, offset: 832)
!1587 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1562, line: 31, baseType: !541)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1561, file: !1562, line: 210, baseType: !299, size: 16, offset: 864)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1561, file: !1562, line: 211, baseType: !299, size: 16, offset: 880)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1561, file: !1562, line: 215, baseType: !1188, size: 16, offset: 896)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1561, file: !1562, line: 222, baseType: !133, size: 64, offset: 960)
!1592 = !DIDerivedType(tag: DW_TAG_member, scope: !1561, file: !1562, line: 239, baseType: !1593, size: 320, offset: 1024)
!1593 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1561, file: !1562, line: 239, size: 320, elements: !1594)
!1594 = !{!1595, !1622}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1593, file: !1562, line: 240, baseType: !1596, size: 320)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1562, line: 108, size: 320, elements: !1597)
!1597 = !{!1598, !1599, !1611, !1614, !1621}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1596, file: !1562, line: 110, baseType: !133, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, scope: !1596, file: !1562, line: 111, baseType: !1600, size: 64, offset: 64)
!1600 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1596, file: !1562, line: 111, size: 64, elements: !1601)
!1601 = !{!1602, !1610}
!1602 = !DIDerivedType(tag: DW_TAG_member, scope: !1600, file: !1562, line: 112, baseType: !1603, size: 64)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1600, file: !1562, line: 112, size: 64, elements: !1604)
!1604 = !{!1605, !1606}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1603, file: !1562, line: 114, baseType: !842, size: 16)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1603, file: !1562, line: 115, baseType: !1607, size: 48, offset: 16)
!1607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 48, elements: !1608)
!1608 = !{!1609}
!1609 = !DISubrange(count: 6)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1600, file: !1562, line: 121, baseType: !133, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1596, file: !1562, line: 123, baseType: !1612, size: 64, offset: 128)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1562, line: 96, flags: DIFlagFwdDecl)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1596, file: !1562, line: 124, baseType: !1615, size: 64, offset: 192)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1562, line: 102, size: 192, elements: !1617)
!1617 = !{!1618, !1619, !1620}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1616, file: !1562, line: 103, baseType: !347, size: 128, align: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1616, file: !1562, line: 104, baseType: !1213, size: 32, offset: 128)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1616, file: !1562, line: 105, baseType: !472, size: 8, offset: 160)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1596, file: !1562, line: 125, baseType: !172, size: 64, offset: 256)
!1622 = !DIDerivedType(tag: DW_TAG_member, scope: !1593, file: !1562, line: 241, baseType: !1623, size: 320)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1593, file: !1562, line: 241, size: 320, elements: !1624)
!1624 = !{!1625, !1626, !1627, !1628, !1629}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1623, file: !1562, line: 242, baseType: !133, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1623, file: !1562, line: 243, baseType: !133, size: 64, offset: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1623, file: !1562, line: 244, baseType: !1612, size: 64, offset: 128)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1623, file: !1562, line: 245, baseType: !1615, size: 64, offset: 192)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1623, file: !1562, line: 246, baseType: !257, size: 64, offset: 256)
!1630 = !DIDerivedType(tag: DW_TAG_member, scope: !1561, file: !1562, line: 254, baseType: !1631, size: 256, offset: 1344)
!1631 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1561, file: !1562, line: 254, size: 256, elements: !1632)
!1632 = !{!1633, !1639}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1631, file: !1562, line: 255, baseType: !1634, size: 256)
!1634 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1562, line: 128, size: 256, elements: !1635)
!1635 = !{!1636, !1637}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1634, file: !1562, line: 129, baseType: !191, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1634, file: !1562, line: 130, baseType: !1638, size: 256)
!1638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 256, elements: !1138)
!1639 = !DIDerivedType(tag: DW_TAG_member, scope: !1631, file: !1562, line: 256, baseType: !1640, size: 256)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1631, file: !1562, line: 256, size: 256, elements: !1641)
!1641 = !{!1642, !1643}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1640, file: !1562, line: 258, baseType: !202, size: 128)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1640, file: !1562, line: 259, baseType: !1644, size: 128, offset: 128)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1645, line: 22, size: 128, elements: !1646)
!1645 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1646 = !{!1647, !1650}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1644, file: !1645, line: 23, baseType: !1648, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1645, line: 23, flags: DIFlagFwdDecl)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1644, file: !1645, line: 24, baseType: !133, size: 64, offset: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1561, file: !1562, line: 274, baseType: !1652, size: 64, offset: 1600)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1562, line: 170, size: 192, elements: !1654)
!1654 = !{!1655, !1664, !1665}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1653, file: !1562, line: 171, baseType: !1656, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1562, line: 165, baseType: !1657)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!181, !1560, !1660, !1662, !1560}
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
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1671, file: !1672, line: 15, baseType: !730, size: 32, offset: 32)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1671, file: !1672, line: 16, baseType: !730, size: 32, offset: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1671, file: !1672, line: 21, baseType: !754, size: 64, offset: 128)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1671, file: !1672, line: 27, baseType: !133, size: 64, offset: 192)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1671, file: !1672, line: 28, baseType: !133, size: 64, offset: 256)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1671, file: !1672, line: 29, baseType: !754, size: 64, offset: 320)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1671, file: !1672, line: 32, baseType: !621, size: 128, offset: 384)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1671, file: !1672, line: 33, baseType: !417, size: 32, offset: 512)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1671, file: !1672, line: 37, baseType: !754, size: 64, offset: 576)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1671, file: !1672, line: 44, baseType: !1685, size: 256, offset: 640)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1686, line: 15, size: 256, elements: !1687)
!1686 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1687 = !{!1688, !1689, !1690, !1691, !1692, !1693, !1694}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1685, file: !1686, line: 16, baseType: !763)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1685, file: !1686, line: 18, baseType: !181, size: 32)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1685, file: !1686, line: 19, baseType: !181, size: 32, offset: 32)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1685, file: !1686, line: 20, baseType: !181, size: 32, offset: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1685, file: !1686, line: 21, baseType: !181, size: 32, offset: 96)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1685, file: !1686, line: 22, baseType: !133, size: 64, offset: 128)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1685, file: !1686, line: 23, baseType: !133, size: 64, offset: 192)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1532, file: !1533, line: 146, baseType: !1696, size: 64, offset: 1024)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !418, line: 18, flags: DIFlagFwdDecl)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1532, file: !1533, line: 147, baseType: !1699, size: 64, offset: 1088)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1533, line: 25, size: 64, elements: !1701)
!1701 = !{!1702, !1703, !1704}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1700, file: !1533, line: 26, baseType: !730, size: 32)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1700, file: !1533, line: 27, baseType: !181, size: 32, offset: 32)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1700, file: !1533, line: 28, baseType: !1705, offset: 64)
!1705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, elements: !1706)
!1706 = !{!1707}
!1707 = !DISubrange(count: 0)
!1708 = !DIDerivedType(tag: DW_TAG_member, scope: !1532, file: !1533, line: 149, baseType: !1709, size: 128, offset: 1152)
!1709 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1532, file: !1533, line: 149, size: 128, elements: !1710)
!1710 = !{!1711, !1712}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1709, file: !1533, line: 150, baseType: !181, size: 32)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1709, file: !1533, line: 151, baseType: !347, size: 128, align: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1200, file: !1201, line: 926, baseType: !1530, size: 64, offset: 8576)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1200, file: !1201, line: 929, baseType: !1530, size: 64, offset: 8640)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1200, file: !1201, line: 933, baseType: !1560, size: 64, offset: 8704)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1200, file: !1201, line: 943, baseType: !1717, size: 128, offset: 8768)
!1717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 128, elements: !1718)
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
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1738, file: !1739, line: 84, baseType: !730, size: 32, offset: 32)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1738, file: !1739, line: 85, baseType: !181, size: 32, offset: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1738, file: !1739, line: 86, baseType: !202, size: 128, offset: 128)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1738, file: !1739, line: 88, baseType: !1464, size: 128, offset: 256)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1738, file: !1739, line: 91, baseType: !1199, size: 64, offset: 384)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1738, file: !1739, line: 94, baseType: !1748, size: 192, offset: 448)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1749, line: 30, size: 192, elements: !1750)
!1749 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1750 = !{!1751, !1752}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1748, file: !1749, line: 31, baseType: !202, size: 128)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1748, file: !1749, line: 32, baseType: !1753, size: 64, offset: 128)
!1753 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1754, line: 25, baseType: !1755)
!1754 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1754, line: 23, size: 64, elements: !1756)
!1756 = !{!1757}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1755, file: !1754, line: 24, baseType: !1353, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1738, file: !1739, line: 97, baseType: !617, size: 64, offset: 640)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1738, file: !1739, line: 100, baseType: !181, size: 32, offset: 704)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1738, file: !1739, line: 106, baseType: !181, size: 32, offset: 736)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1738, file: !1739, line: 107, baseType: !1199, size: 64, offset: 768)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1738, file: !1739, line: 110, baseType: !181, size: 32, offset: 832)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1738, file: !1739, line: 111, baseType: !7, size: 32, offset: 864)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1738, file: !1739, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1738, file: !1739, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1738, file: !1739, line: 128, baseType: !181, size: 32, offset: 928)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1738, file: !1739, line: 129, baseType: !202, size: 128, offset: 960)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1738, file: !1739, line: 132, baseType: !1275, size: 512, offset: 1088)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1738, file: !1739, line: 133, baseType: !1283, size: 64, offset: 1600)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1738, file: !1739, line: 140, baseType: !1771, size: 256, offset: 1664)
!1771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1772, size: 256, elements: !1552)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1739, line: 38, size: 128, elements: !1773)
!1773 = !{!1774, !1775}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1772, file: !1739, line: 39, baseType: !403, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1772, file: !1739, line: 40, baseType: !403, size: 64, offset: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1738, file: !1739, line: 146, baseType: !1777, size: 192, offset: 1920)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1739, line: 66, size: 192, elements: !1778)
!1778 = !{!1779}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1777, file: !1739, line: 67, baseType: !1780, size: 192)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1739, line: 47, size: 192, elements: !1781)
!1781 = !{!1782, !1783, !1784}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1780, file: !1739, line: 48, baseType: !756, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1780, file: !1739, line: 49, baseType: !756, size: 64, offset: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1780, file: !1739, line: 50, baseType: !756, size: 64, offset: 128)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1738, file: !1739, line: 150, baseType: !1513, size: 640, offset: 2112)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1738, file: !1739, line: 153, baseType: !1787, size: 256, offset: 2752)
!1787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1454, size: 256, elements: !1138)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1738, file: !1739, line: 159, baseType: !1454, size: 64, offset: 3008)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1738, file: !1739, line: 162, baseType: !181, size: 32, offset: 3072)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1738, file: !1739, line: 164, baseType: !1791, size: 64, offset: 3136)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1739, line: 164, flags: DIFlagFwdDecl)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1738, file: !1739, line: 175, baseType: !1794, size: 32, offset: 3200)
!1794 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !370, line: 805, baseType: !1795)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !370, line: 798, size: 32, elements: !1796)
!1796 = !{!1797, !1798}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1795, file: !370, line: 803, baseType: !369, size: 32)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1795, file: !370, line: 804, baseType: !216, offset: 32)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1738, file: !1739, line: 176, baseType: !403, size: 64, offset: 3264)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1738, file: !1739, line: 176, baseType: !403, size: 64, offset: 3328)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1738, file: !1739, line: 176, baseType: !403, size: 64, offset: 3392)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1738, file: !1739, line: 176, baseType: !403, size: 64, offset: 3456)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1738, file: !1739, line: 177, baseType: !403, size: 64, offset: 3520)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1738, file: !1739, line: 178, baseType: !403, size: 64, offset: 3584)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1738, file: !1739, line: 179, baseType: !1501, size: 128, offset: 3648)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1738, file: !1739, line: 180, baseType: !133, size: 64, offset: 3776)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1738, file: !1739, line: 180, baseType: !133, size: 64, offset: 3840)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1738, file: !1739, line: 180, baseType: !133, size: 64, offset: 3904)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1738, file: !1739, line: 180, baseType: !133, size: 64, offset: 3968)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1738, file: !1739, line: 181, baseType: !133, size: 64, offset: 4032)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1738, file: !1739, line: 181, baseType: !133, size: 64, offset: 4096)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1738, file: !1739, line: 181, baseType: !133, size: 64, offset: 4160)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1738, file: !1739, line: 181, baseType: !133, size: 64, offset: 4224)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1738, file: !1739, line: 182, baseType: !133, size: 64, offset: 4288)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1738, file: !1739, line: 182, baseType: !133, size: 64, offset: 4352)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1738, file: !1739, line: 182, baseType: !133, size: 64, offset: 4416)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1738, file: !1739, line: 182, baseType: !133, size: 64, offset: 4480)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1738, file: !1739, line: 183, baseType: !133, size: 64, offset: 4544)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1738, file: !1739, line: 183, baseType: !133, size: 64, offset: 4608)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1738, file: !1739, line: 184, baseType: !1821, offset: 4672)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1822, line: 12, elements: !230)
!1822 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1738, file: !1739, line: 192, baseType: !405, size: 64, offset: 4672)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1738, file: !1739, line: 203, baseType: !1825, size: 2048, offset: 4736)
!1825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1826, size: 2048, elements: !1718)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1827, line: 43, size: 128, elements: !1828)
!1827 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1828 = !{!1829, !1830}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1826, file: !1827, line: 44, baseType: !306, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1826, file: !1827, line: 45, baseType: !306, size: 64, offset: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1738, file: !1739, line: 220, baseType: !472, size: 8, offset: 6784)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1738, file: !1739, line: 221, baseType: !1188, size: 16, offset: 6800)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1738, file: !1739, line: 222, baseType: !1188, size: 16, offset: 6816)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1738, file: !1739, line: 224, baseType: !957, size: 64, offset: 6848)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1738, file: !1739, line: 227, baseType: !1156, size: 192, offset: 6912)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1738, file: !1739, line: 233, baseType: !1156, size: 192, offset: 7104)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1200, file: !1201, line: 970, baseType: !1838, size: 64, offset: 9280)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1739, line: 20, size: 16576, elements: !1840)
!1840 = !{!1841, !1842, !1843, !1844}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1839, file: !1739, line: 21, baseType: !216)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1839, file: !1739, line: 22, baseType: !1213, size: 32)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1839, file: !1739, line: 23, baseType: !1464, size: 128, offset: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1839, file: !1739, line: 24, baseType: !1845, size: 16384, offset: 192)
!1845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1846, size: 16384, elements: !262)
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
!1857 = !{null, !181}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1849, file: !1749, line: 38, baseType: !133, size: 64, offset: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1849, file: !1749, line: 44, baseType: !1860, size: 64, offset: 128)
!1860 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1853, line: 22, baseType: !1861)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1853, line: 21, baseType: !140)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1849, file: !1749, line: 46, baseType: !1753, size: 64, offset: 192)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1200, file: !1201, line: 971, baseType: !1753, size: 64, offset: 9344)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1200, file: !1201, line: 972, baseType: !1753, size: 64, offset: 9408)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1200, file: !1201, line: 974, baseType: !1753, size: 64, offset: 9472)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1200, file: !1201, line: 975, baseType: !1748, size: 192, offset: 9536)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1200, file: !1201, line: 976, baseType: !133, size: 64, offset: 9728)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1200, file: !1201, line: 977, baseType: !304, size: 64, offset: 9792)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1200, file: !1201, line: 978, baseType: !7, size: 32, offset: 9856)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1200, file: !1201, line: 980, baseType: !350, size: 64, offset: 9920)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1200, file: !1201, line: 989, baseType: !1873, size: 128, offset: 9984)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1874, line: 35, size: 128, elements: !1875)
!1874 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1875 = !{!1876, !1877, !1878}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1873, file: !1874, line: 36, baseType: !181, size: 32)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1873, file: !1874, line: 37, baseType: !730, size: 32, offset: 32)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1873, file: !1874, line: 38, baseType: !1879, size: 64, offset: 64)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1874, line: 23, flags: DIFlagFwdDecl)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1200, file: !1201, line: 992, baseType: !403, size: 64, offset: 10112)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1200, file: !1201, line: 993, baseType: !403, size: 64, offset: 10176)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1200, file: !1201, line: 996, baseType: !216, offset: 10240)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1200, file: !1201, line: 999, baseType: !763, offset: 10240)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1200, file: !1201, line: 1001, baseType: !1886, size: 64, offset: 10240)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1201, line: 636, size: 64, elements: !1887)
!1887 = !{!1888}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1886, file: !1201, line: 637, baseType: !1889, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1200, file: !1201, line: 1005, baseType: !735, size: 128, offset: 10304)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1200, file: !1201, line: 1007, baseType: !1199, size: 64, offset: 10432)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1200, file: !1201, line: 1009, baseType: !1893, size: 64, offset: 10496)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1201, line: 1009, flags: DIFlagFwdDecl)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1200, file: !1201, line: 1043, baseType: !191, size: 64, offset: 10560)
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
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1910, file: !1911, line: 100, baseType: !754, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1910, file: !1911, line: 101, baseType: !730, size: 32, offset: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1910, file: !1911, line: 102, baseType: !730, size: 32, offset: 96)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1910, file: !1911, line: 105, baseType: !216, offset: 128)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1910, file: !1911, line: 107, baseType: !299, size: 16, offset: 128)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1910, file: !1911, line: 109, baseType: !721, size: 128, offset: 192)
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
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1928, file: !1911, line: 84, baseType: !202, size: 128)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1928, file: !1911, line: 85, baseType: !918, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, scope: !1921, file: !1911, line: 87, baseType: !1933, size: 128, offset: 256)
!1933 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1921, file: !1911, line: 87, size: 128, elements: !1934)
!1934 = !{!1935, !1936}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1933, file: !1911, line: 88, baseType: !621, size: 128)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1933, file: !1911, line: 89, baseType: !347, size: 128, align: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1921, file: !1911, line: 92, baseType: !7, size: 32, offset: 384)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1910, file: !1911, line: 111, baseType: !617, size: 64, offset: 384)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1910, file: !1911, line: 113, baseType: !1940, size: 256, offset: 448)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1941, line: 102, size: 256, elements: !1942)
!1941 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1942 = !{!1943, !1944, !1945}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1940, file: !1941, line: 103, baseType: !754, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1940, file: !1941, line: 104, baseType: !202, size: 128, offset: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1940, file: !1941, line: 105, baseType: !1946, size: 64, offset: 192)
!1946 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1941, line: 21, baseType: !1947)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{null, !1950}
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1200, file: !1201, line: 1061, baseType: !1952, size: 64, offset: 10944)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1201, line: 43, flags: DIFlagFwdDecl)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1200, file: !1201, line: 1064, baseType: !133, size: 64, offset: 11008)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1200, file: !1201, line: 1065, baseType: !1956, size: 64, offset: 11072)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1749, line: 14, baseType: !1958)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1749, line: 12, size: 384, elements: !1959)
!1959 = !{!1960}
!1960 = !DIDerivedType(tag: DW_TAG_member, scope: !1958, file: !1749, line: 13, baseType: !1961, size: 384)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1958, file: !1749, line: 13, size: 384, elements: !1962)
!1962 = !{!1963, !1964, !1965, !1966}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1961, file: !1749, line: 13, baseType: !181, size: 32)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1961, file: !1749, line: 13, baseType: !181, size: 32, offset: 32)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1961, file: !1749, line: 13, baseType: !181, size: 32, offset: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1961, file: !1749, line: 13, baseType: !1967, size: 256, offset: 128)
!1967 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1968, line: 32, size: 256, elements: !1969)
!1968 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1969 = !{!1970, !1975, !1988, !1994, !2003, !2023, !2028}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1967, file: !1968, line: 37, baseType: !1971, size: 64)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1967, file: !1968, line: 34, size: 64, elements: !1972)
!1972 = !{!1973, !1974}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1971, file: !1968, line: 35, baseType: !1443, size: 32)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1971, file: !1968, line: 36, baseType: !423, size: 32, offset: 32)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1967, file: !1968, line: 45, baseType: !1976, size: 192)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1967, file: !1968, line: 40, size: 192, elements: !1977)
!1977 = !{!1978, !1980, !1981, !1987}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1976, file: !1968, line: 41, baseType: !1979, size: 32)
!1979 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !290, line: 95, baseType: !181)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1976, file: !1968, line: 42, baseType: !181, size: 32, offset: 32)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1976, file: !1968, line: 43, baseType: !1982, size: 64, offset: 64)
!1982 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1968, line: 11, baseType: !1983)
!1983 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1968, line: 8, size: 64, elements: !1984)
!1984 = !{!1985, !1986}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1983, file: !1968, line: 9, baseType: !181, size: 32)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1983, file: !1968, line: 10, baseType: !191, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1976, file: !1968, line: 44, baseType: !181, size: 32, offset: 128)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1967, file: !1968, line: 52, baseType: !1989, size: 128)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1967, file: !1968, line: 48, size: 128, elements: !1990)
!1990 = !{!1991, !1992, !1993}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1989, file: !1968, line: 49, baseType: !1443, size: 32)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1989, file: !1968, line: 50, baseType: !423, size: 32, offset: 32)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1989, file: !1968, line: 51, baseType: !1982, size: 64, offset: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1967, file: !1968, line: 61, baseType: !1995, size: 256)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1967, file: !1968, line: 55, size: 256, elements: !1996)
!1996 = !{!1997, !1998, !1999, !2000, !2002}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1995, file: !1968, line: 56, baseType: !1443, size: 32)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1995, file: !1968, line: 57, baseType: !423, size: 32, offset: 32)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1995, file: !1968, line: 58, baseType: !181, size: 32, offset: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1995, file: !1968, line: 59, baseType: !2001, size: 64, offset: 128)
!2001 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !290, line: 94, baseType: !291)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1995, file: !1968, line: 60, baseType: !2001, size: 64, offset: 192)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1967, file: !1968, line: 95, baseType: !2004, size: 256)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1967, file: !1968, line: 64, size: 256, elements: !2005)
!2005 = !{!2006, !2007}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2004, file: !1968, line: 65, baseType: !191, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, scope: !2004, file: !1968, line: 77, baseType: !2008, size: 192, offset: 64)
!2008 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2004, file: !1968, line: 77, size: 192, elements: !2009)
!2009 = !{!2010, !2011, !2018}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2008, file: !1968, line: 82, baseType: !1188, size: 16)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2008, file: !1968, line: 88, baseType: !2012, size: 192)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2008, file: !1968, line: 84, size: 192, elements: !2013)
!2013 = !{!2014, !2016, !2017}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2012, file: !1968, line: 85, baseType: !2015, size: 64)
!2015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 64, elements: !1313)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2012, file: !1968, line: 86, baseType: !191, size: 64, offset: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2012, file: !1968, line: 87, baseType: !191, size: 64, offset: 128)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2008, file: !1968, line: 93, baseType: !2019, size: 96)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2008, file: !1968, line: 90, size: 96, elements: !2020)
!2020 = !{!2021, !2022}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2019, file: !1968, line: 91, baseType: !2015, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2019, file: !1968, line: 92, baseType: !399, size: 32, offset: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1967, file: !1968, line: 101, baseType: !2024, size: 128)
!2024 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1967, file: !1968, line: 98, size: 128, elements: !2025)
!2025 = !{!2026, !2027}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2024, file: !1968, line: 99, baseType: !292, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2024, file: !1968, line: 100, baseType: !181, size: 32, offset: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1967, file: !1968, line: 108, baseType: !2029, size: 128)
!2029 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1967, file: !1968, line: 104, size: 128, elements: !2030)
!2030 = !{!2031, !2032, !2033}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2029, file: !1968, line: 105, baseType: !191, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2029, file: !1968, line: 106, baseType: !181, size: 32, offset: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2029, file: !1968, line: 107, baseType: !7, size: 32, offset: 96)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1200, file: !1201, line: 1067, baseType: !1821, offset: 11136)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1200, file: !1201, line: 1099, baseType: !2036, size: 64, offset: 11136)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1201, line: 56, flags: DIFlagFwdDecl)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1200, file: !1201, line: 1103, baseType: !202, size: 128, offset: 11200)
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
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1200, file: !1201, line: 1111, baseType: !202, size: 128, offset: 11968)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1200, file: !1201, line: 1173, baseType: !2051, size: 64, offset: 12096)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2053, line: 62, size: 256, align: 256, elements: !2054)
!2053 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2054 = !{!2055, !2056, !2057, !2062}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2052, file: !2053, line: 75, baseType: !399, size: 32)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2052, file: !2053, line: 90, baseType: !399, size: 32, offset: 32)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2052, file: !2053, line: 124, baseType: !2058, size: 64, offset: 64)
!2058 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2052, file: !2053, line: 109, size: 64, elements: !2059)
!2059 = !{!2060, !2061}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2058, file: !2053, line: 110, baseType: !404, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2058, file: !2053, line: 112, baseType: !404, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2052, file: !2053, line: 144, baseType: !399, size: 32, offset: 128)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1200, file: !1201, line: 1174, baseType: !397, size: 32, offset: 12160)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1200, file: !1201, line: 1179, baseType: !133, size: 64, offset: 12224)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1200, file: !1201, line: 1182, baseType: !2066, size: 128, offset: 12288)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1134, line: 76, size: 128, elements: !2067)
!2067 = !{!2068, !2073, !2074}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2066, file: !1134, line: 85, baseType: !2069, size: 64)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2070, line: 7, size: 64, elements: !2071)
!2070 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2071 = !{!2072}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2069, file: !2070, line: 12, baseType: !1350, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2066, file: !1134, line: 88, baseType: !472, size: 8, offset: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2066, file: !1134, line: 95, baseType: !472, size: 8, offset: 72)
!2075 = !DIDerivedType(tag: DW_TAG_member, scope: !1200, file: !1201, line: 1184, baseType: !2076, size: 128, offset: 12416)
!2076 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1200, file: !1201, line: 1184, size: 128, elements: !2077)
!2077 = !{!2078, !2079}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2076, file: !1201, line: 1185, baseType: !1213, size: 32)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2076, file: !1201, line: 1186, baseType: !347, size: 128, align: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1200, file: !1201, line: 1190, baseType: !2081, size: 64, offset: 12544)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1201, line: 53, flags: DIFlagFwdDecl)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1200, file: !1201, line: 1192, baseType: !2084, size: 128, offset: 12608)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1134, line: 64, size: 128, elements: !2085)
!2085 = !{!2086, !2087, !2088}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2084, file: !1134, line: 65, baseType: !703, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2084, file: !1134, line: 67, baseType: !399, size: 32, offset: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2084, file: !1134, line: 68, baseType: !399, size: 32, offset: 96)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1200, file: !1201, line: 1206, baseType: !181, size: 32, offset: 12736)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1200, file: !1201, line: 1207, baseType: !181, size: 32, offset: 12768)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1200, file: !1201, line: 1209, baseType: !133, size: 64, offset: 12800)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1200, file: !1201, line: 1219, baseType: !403, size: 64, offset: 12864)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1200, file: !1201, line: 1220, baseType: !403, size: 64, offset: 12928)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1200, file: !1201, line: 1317, baseType: !181, size: 32, offset: 12992)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1200, file: !1201, line: 1319, baseType: !1199, size: 64, offset: 13056)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1200, file: !1201, line: 1322, baseType: !2097, size: 64, offset: 13120)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2099, line: 56, size: 512, elements: !2100)
!2099 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2100 = !{!2101, !2102, !2103, !2104, !2105, !2106, !2107, !2109}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2098, file: !2099, line: 57, baseType: !2097, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2098, file: !2099, line: 58, baseType: !191, size: 64, offset: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2098, file: !2099, line: 59, baseType: !133, size: 64, offset: 128)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2098, file: !2099, line: 60, baseType: !133, size: 64, offset: 192)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2098, file: !2099, line: 61, baseType: !803, size: 64, offset: 256)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2098, file: !2099, line: 62, baseType: !7, size: 32, offset: 320)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2098, file: !2099, line: 63, baseType: !2108, size: 64, offset: 384)
!2108 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !203, line: 153, baseType: !403)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2098, file: !2099, line: 64, baseType: !2110, size: 64, offset: 448)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1200, file: !1201, line: 1326, baseType: !1213, size: 32, offset: 13184)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1200, file: !1201, line: 1342, baseType: !191, size: 64, offset: 13248)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1200, file: !1201, line: 1343, baseType: !404, size: 64, offset: 13312)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1200, file: !1201, line: 1344, baseType: !403, size: 64, offset: 13376)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1200, file: !1201, line: 1345, baseType: !404, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1200, file: !1201, line: 1346, baseType: !404, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1200, file: !1201, line: 1347, baseType: !404, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1200, file: !1201, line: 1348, baseType: !347, size: 128, align: 64, offset: 13504)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1200, file: !1201, line: 1358, baseType: !2121, size: 34816, offset: 13824)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2122, line: 485, size: 34816, elements: !2123)
!2122 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2123 = !{!2124, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2153, !2154, !2155, !2156, !2157, !2158, !2161, !2162, !2163}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2121, file: !2122, line: 487, baseType: !2125, size: 192)
!2125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2126, size: 192, elements: !258)
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2127, line: 16, size: 64, elements: !2128)
!2127 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2128 = !{!2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2126, file: !2127, line: 17, baseType: !842, size: 16)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2126, file: !2127, line: 18, baseType: !842, size: 16, offset: 16)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2126, file: !2127, line: 19, baseType: !842, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2126, file: !2127, line: 19, baseType: !842, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2126, file: !2127, line: 19, baseType: !842, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2126, file: !2127, line: 19, baseType: !842, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2126, file: !2127, line: 19, baseType: !842, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2126, file: !2127, line: 20, baseType: !842, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2126, file: !2127, line: 20, baseType: !842, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2126, file: !2127, line: 20, baseType: !842, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2126, file: !2127, line: 20, baseType: !842, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2126, file: !2127, line: 20, baseType: !842, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2126, file: !2127, line: 20, baseType: !842, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2121, file: !2122, line: 491, baseType: !133, size: 64, offset: 192)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2121, file: !2122, line: 495, baseType: !299, size: 16, offset: 256)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2121, file: !2122, line: 496, baseType: !299, size: 16, offset: 272)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2121, file: !2122, line: 497, baseType: !299, size: 16, offset: 288)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2121, file: !2122, line: 498, baseType: !299, size: 16, offset: 304)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2121, file: !2122, line: 502, baseType: !133, size: 64, offset: 320)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2121, file: !2122, line: 503, baseType: !133, size: 64, offset: 384)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2121, file: !2122, line: 514, baseType: !2150, size: 256, offset: 448)
!2150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2151, size: 256, elements: !1138)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2122, line: 483, flags: DIFlagFwdDecl)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2121, file: !2122, line: 516, baseType: !133, size: 64, offset: 704)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2121, file: !2122, line: 518, baseType: !133, size: 64, offset: 768)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2121, file: !2122, line: 520, baseType: !133, size: 64, offset: 832)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2121, file: !2122, line: 521, baseType: !133, size: 64, offset: 896)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2121, file: !2122, line: 522, baseType: !133, size: 64, offset: 960)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2121, file: !2122, line: 528, baseType: !2159, size: 64, offset: 1024)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2122, line: 10, flags: DIFlagFwdDecl)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2121, file: !2122, line: 535, baseType: !133, size: 64, offset: 1088)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2121, file: !2122, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2121, file: !2122, line: 540, baseType: !2164, size: 33280, offset: 1536)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2165, line: 317, size: 33280, elements: !2166)
!2165 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2166 = !{!2167, !2168, !2169}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2164, file: !2165, line: 330, baseType: !7, size: 32)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2164, file: !2165, line: 337, baseType: !133, size: 64, offset: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2164, file: !2165, line: 348, baseType: !2170, size: 32768, offset: 512)
!2170 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2165, line: 304, size: 32768, elements: !2171)
!2171 = !{!2172, !2187, !2226, !2276, !2289}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2170, file: !2165, line: 305, baseType: !2173, size: 896)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2165, line: 12, size: 896, elements: !2174)
!2174 = !{!2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2186}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2173, file: !2165, line: 13, baseType: !397, size: 32)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2173, file: !2165, line: 14, baseType: !397, size: 32, offset: 32)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2173, file: !2165, line: 15, baseType: !397, size: 32, offset: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2173, file: !2165, line: 16, baseType: !397, size: 32, offset: 96)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2173, file: !2165, line: 17, baseType: !397, size: 32, offset: 128)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2173, file: !2165, line: 18, baseType: !397, size: 32, offset: 160)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2173, file: !2165, line: 19, baseType: !397, size: 32, offset: 192)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2173, file: !2165, line: 22, baseType: !2183, size: 640, offset: 224)
!2183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 640, elements: !2184)
!2184 = !{!2185}
!2185 = !DISubrange(count: 20)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2173, file: !2165, line: 25, baseType: !397, size: 32, offset: 864)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2170, file: !2165, line: 306, baseType: !2188, size: 4096, align: 128)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2165, line: 34, size: 4096, align: 128, elements: !2189)
!2189 = !{!2190, !2191, !2192, !2193, !2194, !2209, !2210, !2211, !2215, !2217, !2221}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2188, file: !2165, line: 35, baseType: !842, size: 16)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2188, file: !2165, line: 36, baseType: !842, size: 16, offset: 16)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2188, file: !2165, line: 37, baseType: !842, size: 16, offset: 32)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2188, file: !2165, line: 38, baseType: !842, size: 16, offset: 48)
!2194 = !DIDerivedType(tag: DW_TAG_member, scope: !2188, file: !2165, line: 39, baseType: !2195, size: 128, offset: 64)
!2195 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2188, file: !2165, line: 39, size: 128, elements: !2196)
!2196 = !{!2197, !2202}
!2197 = !DIDerivedType(tag: DW_TAG_member, scope: !2195, file: !2165, line: 40, baseType: !2198, size: 128)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2195, file: !2165, line: 40, size: 128, elements: !2199)
!2199 = !{!2200, !2201}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2198, file: !2165, line: 41, baseType: !403, size: 64)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2198, file: !2165, line: 42, baseType: !403, size: 64, offset: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, scope: !2195, file: !2165, line: 44, baseType: !2203, size: 128)
!2203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2195, file: !2165, line: 44, size: 128, elements: !2204)
!2204 = !{!2205, !2206, !2207, !2208}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2203, file: !2165, line: 45, baseType: !397, size: 32)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2203, file: !2165, line: 46, baseType: !397, size: 32, offset: 32)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2203, file: !2165, line: 47, baseType: !397, size: 32, offset: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2203, file: !2165, line: 48, baseType: !397, size: 32, offset: 96)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2188, file: !2165, line: 51, baseType: !397, size: 32, offset: 192)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2188, file: !2165, line: 52, baseType: !397, size: 32, offset: 224)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2188, file: !2165, line: 55, baseType: !2212, size: 1024, offset: 256)
!2212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 1024, elements: !2213)
!2213 = !{!2214}
!2214 = !DISubrange(count: 32)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2188, file: !2165, line: 58, baseType: !2216, size: 2048, offset: 1280)
!2216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 2048, elements: !262)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2188, file: !2165, line: 60, baseType: !2218, size: 384, offset: 3328)
!2218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 384, elements: !2219)
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
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2227, file: !2165, line: 80, baseType: !397, size: 32)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2227, file: !2165, line: 81, baseType: !397, size: 32, offset: 32)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2227, file: !2165, line: 82, baseType: !397, size: 32, offset: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2227, file: !2165, line: 83, baseType: !397, size: 32, offset: 96)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2227, file: !2165, line: 84, baseType: !397, size: 32, offset: 128)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2227, file: !2165, line: 85, baseType: !397, size: 32, offset: 160)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2227, file: !2165, line: 86, baseType: !397, size: 32, offset: 192)
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
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2245, file: !2246, line: 12, baseType: !292, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2245, file: !2246, line: 13, baseType: !2250, size: 64, offset: 64)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2252, line: 56, size: 1344, elements: !2253)
!2252 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2253 = !{!2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2251, file: !2252, line: 61, baseType: !133, size: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2251, file: !2252, line: 62, baseType: !133, size: 64, offset: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2251, file: !2252, line: 63, baseType: !133, size: 64, offset: 128)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2251, file: !2252, line: 64, baseType: !133, size: 64, offset: 192)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2251, file: !2252, line: 65, baseType: !133, size: 64, offset: 256)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2251, file: !2252, line: 66, baseType: !133, size: 64, offset: 320)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2251, file: !2252, line: 68, baseType: !133, size: 64, offset: 384)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2251, file: !2252, line: 69, baseType: !133, size: 64, offset: 448)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2251, file: !2252, line: 70, baseType: !133, size: 64, offset: 512)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2251, file: !2252, line: 71, baseType: !133, size: 64, offset: 576)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2251, file: !2252, line: 72, baseType: !133, size: 64, offset: 640)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2251, file: !2252, line: 73, baseType: !133, size: 64, offset: 704)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2251, file: !2252, line: 74, baseType: !133, size: 64, offset: 768)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2251, file: !2252, line: 75, baseType: !133, size: 64, offset: 832)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2251, file: !2252, line: 76, baseType: !133, size: 64, offset: 896)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2251, file: !2252, line: 81, baseType: !133, size: 64, offset: 960)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2251, file: !2252, line: 83, baseType: !133, size: 64, offset: 1024)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2251, file: !2252, line: 84, baseType: !133, size: 64, offset: 1088)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2251, file: !2252, line: 85, baseType: !133, size: 64, offset: 1152)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2251, file: !2252, line: 86, baseType: !133, size: 64, offset: 1216)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2251, file: !2252, line: 87, baseType: !133, size: 64, offset: 1280)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2227, file: !2165, line: 96, baseType: !397, size: 32, offset: 1024)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2170, file: !2165, line: 308, baseType: !2277, size: 4608, align: 512)
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2165, line: 289, size: 4608, align: 512, elements: !2278)
!2278 = !{!2279, !2280, !2287}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2277, file: !2165, line: 290, baseType: !2188, size: 4096, align: 128)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2277, file: !2165, line: 291, baseType: !2281, size: 512, offset: 4096)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2165, line: 268, size: 512, elements: !2282)
!2282 = !{!2283, !2284, !2285}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2281, file: !2165, line: 269, baseType: !403, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2281, file: !2165, line: 270, baseType: !403, size: 64, offset: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2281, file: !2165, line: 271, baseType: !2286, size: 384, offset: 128)
!2286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !403, size: 384, elements: !1608)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2277, file: !2165, line: 292, baseType: !2288, offset: 4608)
!2288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1335, elements: !1706)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2170, file: !2165, line: 309, baseType: !2290, size: 32768)
!2290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1335, size: 32768, elements: !2291)
!2291 = !{!2292}
!2292 = !DISubrange(count: 4096)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1196, file: !705, line: 378, baseType: !2294, size: 64, offset: 64)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1192, file: !705, line: 384, baseType: !1485, size: 192, offset: 192)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !961, file: !705, line: 500, baseType: !216, offset: 6656)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !961, file: !705, line: 501, baseType: !2298, size: 64, offset: 6656)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !705, line: 387, flags: DIFlagFwdDecl)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !961, file: !705, line: 516, baseType: !1696, size: 64, offset: 6720)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !961, file: !705, line: 519, baseType: !334, size: 64, offset: 6784)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !961, file: !705, line: 521, baseType: !2303, size: 64, offset: 6848)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !705, line: 521, flags: DIFlagFwdDecl)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !961, file: !705, line: 545, baseType: !730, size: 32, offset: 6912)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !961, file: !705, line: 548, baseType: !472, size: 8, offset: 6944)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !961, file: !705, line: 550, baseType: !2308, offset: 6952)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2309, line: 142, elements: !230)
!2309 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !961, file: !705, line: 554, baseType: !1940, size: 256, offset: 6976)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !961, file: !705, line: 557, baseType: !397, size: 32, offset: 7232)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !958, file: !705, line: 565, baseType: !2313, offset: 7296)
!2313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, elements: !2314)
!2314 = !{!2315}
!2315 = !DISubrange(count: -1)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !954, file: !705, line: 151, baseType: !730, size: 32)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !947, file: !705, line: 156, baseType: !216, offset: 256)
!2318 = !DIDerivedType(tag: DW_TAG_member, scope: !709, file: !705, line: 159, baseType: !2319, size: 128)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !709, file: !705, line: 159, size: 128, elements: !2320)
!2320 = !{!2321, !2385}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2319, file: !705, line: 161, baseType: !2322, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2324)
!2324 = !{!2325, !2335, !2356, !2357, !2358, !2359, !2360, !2372, !2373, !2374}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2323, file: !31, line: 111, baseType: !2326, size: 384)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2327)
!2327 = !{!2328, !2330, !2331, !2332, !2333, !2334}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2326, file: !31, line: 20, baseType: !2329, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2326, file: !31, line: 21, baseType: !2329, size: 64, offset: 64)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2326, file: !31, line: 22, baseType: !2329, size: 64, offset: 128)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2326, file: !31, line: 23, baseType: !133, size: 64, offset: 192)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2326, file: !31, line: 24, baseType: !133, size: 64, offset: 256)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2326, file: !31, line: 25, baseType: !133, size: 64, offset: 320)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2323, file: !31, line: 112, baseType: !2336, size: 64, offset: 384)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2338, line: 105, size: 128, elements: !2339)
!2338 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2339 = !{!2340, !2341}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2337, file: !2338, line: 110, baseType: !133, size: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2337, file: !2338, line: 118, baseType: !2342, size: 64, offset: 64)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2338, line: 95, size: 448, elements: !2344)
!2344 = !{!2345, !2346, !2351, !2352, !2353, !2354, !2355}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2343, file: !2338, line: 96, baseType: !754, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2343, file: !2338, line: 97, baseType: !2347, size: 64, offset: 64)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2338, line: 60, baseType: !2349)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{null, !2336}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2343, file: !2338, line: 98, baseType: !2347, size: 64, offset: 128)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2343, file: !2338, line: 99, baseType: !472, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2343, file: !2338, line: 100, baseType: !472, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2343, file: !2338, line: 101, baseType: !347, size: 128, align: 64, offset: 256)
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
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2363, file: !31, line: 73, baseType: !823, size: 64)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2363, file: !31, line: 78, baseType: !2367, size: 64, offset: 64)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{null, !2322}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2363, file: !31, line: 83, baseType: !2367, size: 64, offset: 128)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2363, file: !31, line: 89, baseType: !1010, size: 64, offset: 192)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2323, file: !31, line: 118, baseType: !191, size: 64, offset: 896)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2323, file: !31, line: 119, baseType: !181, size: 32, offset: 960)
!2374 = !DIDerivedType(tag: DW_TAG_member, scope: !2323, file: !31, line: 120, baseType: !2375, size: 128, offset: 1024)
!2375 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2323, file: !31, line: 120, size: 128, elements: !2376)
!2376 = !{!2377, !2383}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2375, file: !31, line: 121, baseType: !2378, size: 128)
!2378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2379, line: 6, size: 128, elements: !2380)
!2379 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2380 = !{!2381, !2382}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2378, file: !2379, line: 7, baseType: !403, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2378, file: !2379, line: 8, baseType: !403, size: 64, offset: 64)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2375, file: !31, line: 122, baseType: !2384)
!2384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2378, elements: !1706)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2319, file: !705, line: 162, baseType: !191, size: 64, offset: 64)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !709, file: !705, line: 176, baseType: !347, size: 128, align: 64)
!2387 = !DIDerivedType(tag: DW_TAG_member, scope: !704, file: !705, line: 179, baseType: !2388, size: 32, offset: 384)
!2388 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !704, file: !705, line: 179, size: 32, elements: !2389)
!2389 = !{!2390, !2391, !2392, !2393}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2388, file: !705, line: 184, baseType: !730, size: 32)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2388, file: !705, line: 192, baseType: !7, size: 32)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2388, file: !705, line: 194, baseType: !7, size: 32)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2388, file: !705, line: 195, baseType: !181, size: 32)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !704, file: !705, line: 199, baseType: !730, size: 32, offset: 416)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !639, file: !44, line: 1964, baseType: !2396, size: 64, offset: 1344)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!292, !581, !2399}
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2401, line: 12, size: 256, elements: !2402)
!2401 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2402 = !{!2403, !2404, !2405, !2406, !2407}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2400, file: !2401, line: 13, baseType: !726, size: 32)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2400, file: !2401, line: 16, baseType: !181, size: 32, offset: 32)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2400, file: !2401, line: 23, baseType: !133, size: 64, offset: 64)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2400, file: !2401, line: 30, baseType: !133, size: 64, offset: 128)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2400, file: !2401, line: 33, baseType: !2408, size: 64, offset: 192)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !705, line: 27, flags: DIFlagFwdDecl)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !639, file: !44, line: 1966, baseType: !2396, size: 64, offset: 1408)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !582, file: !44, line: 1424, baseType: !2412, size: 64, offset: 448)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2414)
!2414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2415)
!2415 = !{!2416, !2462, !2466, !2470, !2471, !2472, !2473, !2474, !2479, !2484, !2488}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2414, file: !38, line: 323, baseType: !2417, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!181, !2420}
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2422)
!2422 = !{!2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2447, !2448, !2449}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2421, file: !38, line: 295, baseType: !621, size: 128)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2421, file: !38, line: 296, baseType: !202, size: 128, offset: 128)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2421, file: !38, line: 297, baseType: !202, size: 128, offset: 256)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2421, file: !38, line: 298, baseType: !202, size: 128, offset: 384)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2421, file: !38, line: 299, baseType: !1156, size: 192, offset: 512)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2421, file: !38, line: 300, baseType: !216, offset: 704)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2421, file: !38, line: 301, baseType: !730, size: 32, offset: 704)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2421, file: !38, line: 302, baseType: !581, size: 64, offset: 768)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2421, file: !38, line: 303, baseType: !2432, size: 64, offset: 832)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2433)
!2433 = !{!2434, !2446}
!2434 = !DIDerivedType(tag: DW_TAG_member, scope: !2432, file: !38, line: 69, baseType: !2435, size: 32)
!2435 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2432, file: !38, line: 69, size: 32, elements: !2436)
!2436 = !{!2437, !2438, !2439}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2435, file: !38, line: 70, baseType: !417, size: 32)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2435, file: !38, line: 71, baseType: !425, size: 32)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2435, file: !38, line: 72, baseType: !2440, size: 32)
!2440 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2441, line: 24, baseType: !2442)
!2441 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2441, line: 22, size: 32, elements: !2443)
!2443 = !{!2444}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2442, file: !2441, line: 23, baseType: !2445, size: 32)
!2445 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2441, line: 20, baseType: !423)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2432, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2421, file: !38, line: 304, baseType: !513, size: 64, offset: 896)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2421, file: !38, line: 305, baseType: !133, size: 64, offset: 960)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2421, file: !38, line: 306, baseType: !2450, size: 576, offset: 1024)
!2450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2451)
!2451 = !{!2452, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2450, file: !38, line: 206, baseType: !2453, size: 64)
!2453 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !515)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2450, file: !38, line: 207, baseType: !2453, size: 64, offset: 64)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2450, file: !38, line: 208, baseType: !2453, size: 64, offset: 128)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2450, file: !38, line: 209, baseType: !2453, size: 64, offset: 192)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2450, file: !38, line: 210, baseType: !2453, size: 64, offset: 256)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2450, file: !38, line: 211, baseType: !2453, size: 64, offset: 320)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2450, file: !38, line: 212, baseType: !2453, size: 64, offset: 384)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2450, file: !38, line: 213, baseType: !521, size: 64, offset: 448)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2450, file: !38, line: 214, baseType: !521, size: 64, offset: 512)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2414, file: !38, line: 324, baseType: !2463, size: 64, offset: 64)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!2420, !581, !181}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2414, file: !38, line: 325, baseType: !2467, size: 64, offset: 128)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{null, !2420}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2414, file: !38, line: 326, baseType: !2417, size: 64, offset: 192)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2414, file: !38, line: 327, baseType: !2417, size: 64, offset: 256)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2414, file: !38, line: 328, baseType: !2417, size: 64, offset: 320)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2414, file: !38, line: 329, baseType: !667, size: 64, offset: 384)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2414, file: !38, line: 332, baseType: !2475, size: 64, offset: 448)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!2478, !411}
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2414, file: !38, line: 333, baseType: !2480, size: 64, offset: 512)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!181, !411, !2483}
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2414, file: !38, line: 335, baseType: !2485, size: 64, offset: 576)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!181, !411, !2478}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2414, file: !38, line: 337, baseType: !2489, size: 64, offset: 640)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{!181, !581, !2492}
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !582, file: !44, line: 1425, baseType: !2494, size: 64, offset: 512)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2496)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2497)
!2497 = !{!2498, !2502, !2503, !2507, !2508, !2509, !2524, !2547, !2551, !2552, !2575}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2496, file: !38, line: 429, baseType: !2499, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!181, !581, !181, !181, !531}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2496, file: !38, line: 430, baseType: !667, size: 64, offset: 64)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2496, file: !38, line: 431, baseType: !2504, size: 64, offset: 128)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!181, !581, !7}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2496, file: !38, line: 432, baseType: !2504, size: 64, offset: 192)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2496, file: !38, line: 433, baseType: !667, size: 64, offset: 256)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2496, file: !38, line: 434, baseType: !2510, size: 64, offset: 320)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{!181, !581, !181, !2513}
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2515)
!2515 = !{!2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2514, file: !38, line: 416, baseType: !181, size: 32)
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
!2527 = !{!181, !581, !2432, !2528}
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2530)
!2530 = !{!2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2529, file: !38, line: 344, baseType: !181, size: 32)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2529, file: !38, line: 345, baseType: !403, size: 64, offset: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2529, file: !38, line: 346, baseType: !403, size: 64, offset: 128)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2529, file: !38, line: 347, baseType: !403, size: 64, offset: 192)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2529, file: !38, line: 348, baseType: !403, size: 64, offset: 256)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2529, file: !38, line: 349, baseType: !403, size: 64, offset: 320)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2529, file: !38, line: 350, baseType: !403, size: 64, offset: 384)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2529, file: !38, line: 351, baseType: !760, size: 64, offset: 448)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2529, file: !38, line: 353, baseType: !760, size: 64, offset: 512)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2529, file: !38, line: 354, baseType: !181, size: 32, offset: 576)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2529, file: !38, line: 355, baseType: !181, size: 32, offset: 608)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2529, file: !38, line: 356, baseType: !403, size: 64, offset: 640)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2529, file: !38, line: 357, baseType: !403, size: 64, offset: 704)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2529, file: !38, line: 358, baseType: !403, size: 64, offset: 768)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2529, file: !38, line: 359, baseType: !760, size: 64, offset: 832)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2529, file: !38, line: 360, baseType: !181, size: 32, offset: 896)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2496, file: !38, line: 436, baseType: !2548, size: 64, offset: 448)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!181, !581, !2492, !2528}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2496, file: !38, line: 438, baseType: !2525, size: 64, offset: 512)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2496, file: !38, line: 439, baseType: !2553, size: 64, offset: 576)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{!181, !581, !2556}
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2558)
!2558 = !{!2559, !2560}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2557, file: !38, line: 410, baseType: !7, size: 32)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2557, file: !38, line: 411, baseType: !2561, size: 1344, offset: 64)
!2561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2562, size: 1344, elements: !258)
!2562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2563)
!2563 = !{!2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2574}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2562, file: !38, line: 396, baseType: !7, size: 32)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2562, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2562, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2562, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2562, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2562, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2562, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2562, file: !38, line: 404, baseType: !405, size: 64, offset: 256)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2562, file: !38, line: 405, baseType: !2573, size: 64, offset: 320)
!2573 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !203, line: 126, baseType: !403)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2562, file: !38, line: 406, baseType: !2573, size: 64, offset: 384)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2496, file: !38, line: 440, baseType: !2504, size: 64, offset: 640)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !582, file: !44, line: 1426, baseType: !2577, size: 64, offset: 576)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2579)
!2579 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !582, file: !44, line: 1427, baseType: !133, size: 64, offset: 640)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !582, file: !44, line: 1428, baseType: !133, size: 64, offset: 704)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !582, file: !44, line: 1429, baseType: !133, size: 64, offset: 768)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !582, file: !44, line: 1430, baseType: !364, size: 64, offset: 832)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !582, file: !44, line: 1431, baseType: !750, size: 256, offset: 896)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !582, file: !44, line: 1432, baseType: !181, size: 32, offset: 1152)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !582, file: !44, line: 1433, baseType: !730, size: 32, offset: 1184)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !582, file: !44, line: 1437, baseType: !2588, size: 64, offset: 1216)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2591)
!2591 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !582, file: !44, line: 1449, baseType: !2593, size: 64, offset: 1280)
!2593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !380, line: 34, size: 64, elements: !2594)
!2594 = !{!2595}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2593, file: !380, line: 35, baseType: !383, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !582, file: !44, line: 1450, baseType: !202, size: 128, offset: 1344)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !582, file: !44, line: 1451, baseType: !2598, size: 64, offset: 1472)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !582, file: !44, line: 1452, baseType: !1906, size: 64, offset: 1536)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !582, file: !44, line: 1453, baseType: !2602, size: 64, offset: 1600)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !582, file: !44, line: 1454, baseType: !621, size: 128, offset: 1664)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !582, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !582, file: !44, line: 1456, baseType: !2607, size: 2432, offset: 1856)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2608)
!2608 = !{!2609, !2610, !2611, !2613, !2645}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2607, file: !38, line: 519, baseType: !7, size: 32)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2607, file: !38, line: 520, baseType: !750, size: 256, offset: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2607, file: !38, line: 521, baseType: !2612, size: 192, offset: 320)
!2612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, size: 192, elements: !258)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2607, file: !38, line: 522, baseType: !2614, size: 1728, offset: 512)
!2614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2615, size: 1728, elements: !258)
!2615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2616)
!2616 = !{!2617, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2615, file: !38, line: 223, baseType: !2618, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2620)
!2620 = !{!2621, !2622, !2635, !2636}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2619, file: !38, line: 444, baseType: !181, size: 32)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2619, file: !38, line: 445, baseType: !2623, size: 64, offset: 64)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2625)
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2626)
!2626 = !{!2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2625, file: !38, line: 311, baseType: !667, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2625, file: !38, line: 312, baseType: !667, size: 64, offset: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2625, file: !38, line: 313, baseType: !667, size: 64, offset: 128)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2625, file: !38, line: 314, baseType: !667, size: 64, offset: 192)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2625, file: !38, line: 315, baseType: !2417, size: 64, offset: 256)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2625, file: !38, line: 316, baseType: !2417, size: 64, offset: 320)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2625, file: !38, line: 317, baseType: !2417, size: 64, offset: 384)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2625, file: !38, line: 318, baseType: !2489, size: 64, offset: 448)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2619, file: !38, line: 446, baseType: !174, size: 64, offset: 128)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2619, file: !38, line: 447, baseType: !2618, size: 64, offset: 192)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2615, file: !38, line: 224, baseType: !181, size: 32, offset: 64)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2615, file: !38, line: 226, baseType: !202, size: 128, offset: 128)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2615, file: !38, line: 227, baseType: !133, size: 64, offset: 256)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2615, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2615, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2615, file: !38, line: 230, baseType: !2453, size: 64, offset: 384)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2615, file: !38, line: 231, baseType: !2453, size: 64, offset: 448)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2615, file: !38, line: 232, baseType: !191, size: 64, offset: 512)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2607, file: !38, line: 523, baseType: !2646, size: 192, offset: 2240)
!2646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2623, size: 192, elements: !258)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !582, file: !44, line: 1458, baseType: !2648, size: 2112, offset: 4288)
!2648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2649)
!2649 = !{!2650, !2651, !2652}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2648, file: !44, line: 1411, baseType: !181, size: 32)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2648, file: !44, line: 1412, baseType: !1464, size: 128, offset: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2648, file: !44, line: 1413, baseType: !2653, size: 1920, offset: 192)
!2653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2654, size: 1920, elements: !258)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2655, line: 12, size: 640, elements: !2656)
!2655 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2656 = !{!2657, !2665, !2667, !2672, !2673}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2654, file: !2655, line: 13, baseType: !2658, size: 320)
!2658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2659, line: 17, size: 320, elements: !2660)
!2659 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2660 = !{!2661, !2662, !2663, !2664}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2658, file: !2659, line: 18, baseType: !181, size: 32)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2658, file: !2659, line: 19, baseType: !181, size: 32, offset: 32)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2658, file: !2659, line: 20, baseType: !1464, size: 128, offset: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2658, file: !2659, line: 22, baseType: !347, size: 128, align: 64, offset: 192)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2654, file: !2655, line: 14, baseType: !2666, size: 64, offset: 320)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2654, file: !2655, line: 15, baseType: !2668, size: 64, offset: 384)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2669, line: 16, size: 64, elements: !2670)
!2669 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2670 = !{!2671}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2668, file: !2669, line: 17, baseType: !1199, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2654, file: !2655, line: 16, baseType: !1464, size: 128, offset: 448)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2654, file: !2655, line: 17, baseType: !730, size: 32, offset: 576)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !582, file: !44, line: 1465, baseType: !191, size: 64, offset: 6400)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !582, file: !44, line: 1468, baseType: !397, size: 32, offset: 6464)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !582, file: !44, line: 1470, baseType: !521, size: 64, offset: 6528)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !582, file: !44, line: 1471, baseType: !521, size: 64, offset: 6592)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !582, file: !44, line: 1473, baseType: !399, size: 32, offset: 6656)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !582, file: !44, line: 1474, baseType: !2680, size: 64, offset: 6720)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !582, file: !44, line: 1477, baseType: !2683, size: 256, offset: 6784)
!2683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 256, elements: !2213)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !582, file: !44, line: 1478, baseType: !2685, size: 128, offset: 7040)
!2685 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2686, line: 18, baseType: !2687)
!2686 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2686, line: 16, size: 128, elements: !2688)
!2688 = !{!2689}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2687, file: !2686, line: 17, baseType: !2690, size: 128)
!2690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1336, size: 128, elements: !1718)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !582, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !582, file: !44, line: 1481, baseType: !2693, size: 32, offset: 7200)
!2693 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !203, line: 150, baseType: !7)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !582, file: !44, line: 1487, baseType: !1156, size: 192, offset: 7232)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !582, file: !44, line: 1493, baseType: !172, size: 64, offset: 7424)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !582, file: !44, line: 1495, baseType: !2697, size: 64, offset: 7488)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2699)
!2699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !362, line: 135, size: 1024, align: 512, elements: !2700)
!2700 = !{!2701, !2705, !2706, !2713, !2719, !2723, !2727, !2731, !2732, !2736, !2740, !2745, !2749}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2699, file: !362, line: 136, baseType: !2702, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!181, !364, !7}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2699, file: !362, line: 137, baseType: !2702, size: 64, offset: 64)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2699, file: !362, line: 138, baseType: !2707, size: 64, offset: 128)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!181, !2710, !2712}
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !365)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2699, file: !362, line: 139, baseType: !2714, size: 64, offset: 192)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = !DISubroutineType(types: !2716)
!2716 = !{!181, !2710, !7, !172, !2717}
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !388)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2699, file: !362, line: 141, baseType: !2720, size: 64, offset: 256)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{!181, !2710}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2699, file: !362, line: 142, baseType: !2724, size: 64, offset: 320)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DISubroutineType(types: !2726)
!2726 = !{!181, !364}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2699, file: !362, line: 143, baseType: !2728, size: 64, offset: 384)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DISubroutineType(types: !2730)
!2730 = !{null, !364}
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2699, file: !362, line: 144, baseType: !2728, size: 64, offset: 448)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2699, file: !362, line: 145, baseType: !2733, size: 64, offset: 512)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = !DISubroutineType(types: !2735)
!2735 = !{null, !364, !411}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2699, file: !362, line: 146, baseType: !2737, size: 64, offset: 576)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!257, !364, !257, !181}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2699, file: !362, line: 147, baseType: !2741, size: 64, offset: 640)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{!360, !2744}
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2699, file: !362, line: 148, baseType: !2746, size: 64, offset: 704)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!181, !531, !472}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2699, file: !362, line: 149, baseType: !2750, size: 64, offset: 768)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{!364, !364, !2753}
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !412)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !582, file: !44, line: 1500, baseType: !181, size: 32, offset: 7552)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !582, file: !44, line: 1502, baseType: !2757, size: 448, offset: 7616)
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2401, line: 60, size: 448, elements: !2758)
!2758 = !{!2759, !2764, !2765, !2766, !2767, !2768, !2769}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2757, file: !2401, line: 61, baseType: !2760, size: 64)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!133, !2763, !2399}
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2757, file: !2401, line: 63, baseType: !2760, size: 64, offset: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2757, file: !2401, line: 66, baseType: !292, size: 64, offset: 128)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2757, file: !2401, line: 67, baseType: !181, size: 32, offset: 192)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2757, file: !2401, line: 68, baseType: !7, size: 32, offset: 224)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2757, file: !2401, line: 71, baseType: !202, size: 128, offset: 256)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2757, file: !2401, line: 77, baseType: !2770, size: 64, offset: 384)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !582, file: !44, line: 1505, baseType: !754, size: 64, offset: 8064)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !582, file: !44, line: 1508, baseType: !754, size: 64, offset: 8128)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !582, file: !44, line: 1511, baseType: !181, size: 32, offset: 8192)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !582, file: !44, line: 1514, baseType: !892, size: 32, offset: 8224)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !582, file: !44, line: 1517, baseType: !2776, size: 64, offset: 8256)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1941, line: 18, flags: DIFlagFwdDecl)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !582, file: !44, line: 1518, baseType: !617, size: 64, offset: 8320)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !582, file: !44, line: 1525, baseType: !1696, size: 64, offset: 8384)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !582, file: !44, line: 1532, baseType: !2781, size: 64, offset: 8448)
!2781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2782, line: 52, size: 64, elements: !2783)
!2782 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2783 = !{!2784}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2781, file: !2782, line: 53, baseType: !2785, size: 64)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2782, line: 40, size: 256, elements: !2787)
!2787 = !{!2788, !2789, !2794}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2786, file: !2782, line: 42, baseType: !216)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2786, file: !2782, line: 44, baseType: !2790, size: 192)
!2790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2782, line: 28, size: 192, elements: !2791)
!2791 = !{!2792, !2793}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2790, file: !2782, line: 29, baseType: !202, size: 128)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2790, file: !2782, line: 31, baseType: !292, size: 64, offset: 128)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2786, file: !2782, line: 49, baseType: !292, size: 64, offset: 192)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !582, file: !44, line: 1533, baseType: !2781, size: 64, offset: 8512)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !582, file: !44, line: 1534, baseType: !347, size: 128, align: 64, offset: 8576)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !582, file: !44, line: 1535, baseType: !1940, size: 256, offset: 8704)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !582, file: !44, line: 1537, baseType: !1156, size: 192, offset: 8960)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !582, file: !44, line: 1542, baseType: !181, size: 32, offset: 9152)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !582, file: !44, line: 1545, baseType: !216, offset: 9184)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !582, file: !44, line: 1546, baseType: !202, size: 128, offset: 9216)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !582, file: !44, line: 1548, baseType: !216, offset: 9344)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !582, file: !44, line: 1549, baseType: !202, size: 128, offset: 9344)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !412, file: !44, line: 624, baseType: !716, size: 64, offset: 256)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !412, file: !44, line: 631, baseType: !133, size: 64, offset: 320)
!2806 = !DIDerivedType(tag: DW_TAG_member, scope: !412, file: !44, line: 639, baseType: !2807, size: 32, offset: 384)
!2807 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !412, file: !44, line: 639, size: 32, elements: !2808)
!2808 = !{!2809, !2811}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2807, file: !44, line: 640, baseType: !2810, size: 32)
!2810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2807, file: !44, line: 641, baseType: !7, size: 32)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !412, file: !44, line: 643, baseType: !495, size: 32, offset: 416)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !412, file: !44, line: 644, baseType: !513, size: 64, offset: 448)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !412, file: !44, line: 645, baseType: !517, size: 128, offset: 512)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !412, file: !44, line: 646, baseType: !517, size: 128, offset: 640)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !412, file: !44, line: 647, baseType: !517, size: 128, offset: 768)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !412, file: !44, line: 648, baseType: !216, offset: 896)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !412, file: !44, line: 649, baseType: !299, size: 16, offset: 896)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !412, file: !44, line: 650, baseType: !1335, size: 8, offset: 912)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !412, file: !44, line: 651, baseType: !1335, size: 8, offset: 920)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !412, file: !44, line: 652, baseType: !2573, size: 64, offset: 960)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !412, file: !44, line: 659, baseType: !133, size: 64, offset: 1024)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !412, file: !44, line: 660, baseType: !750, size: 256, offset: 1088)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !412, file: !44, line: 662, baseType: !133, size: 64, offset: 1344)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !412, file: !44, line: 663, baseType: !133, size: 64, offset: 1408)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !412, file: !44, line: 665, baseType: !621, size: 128, offset: 1472)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !412, file: !44, line: 666, baseType: !202, size: 128, offset: 1600)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !412, file: !44, line: 675, baseType: !202, size: 128, offset: 1728)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !412, file: !44, line: 676, baseType: !202, size: 128, offset: 1856)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !412, file: !44, line: 677, baseType: !202, size: 128, offset: 1984)
!2831 = !DIDerivedType(tag: DW_TAG_member, scope: !412, file: !44, line: 678, baseType: !2832, size: 128, offset: 2112)
!2832 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !412, file: !44, line: 678, size: 128, elements: !2833)
!2833 = !{!2834, !2835}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2832, file: !44, line: 679, baseType: !617, size: 64)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2832, file: !44, line: 680, baseType: !347, size: 128, align: 64)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !412, file: !44, line: 682, baseType: !756, size: 64, offset: 2240)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !412, file: !44, line: 683, baseType: !756, size: 64, offset: 2304)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !412, file: !44, line: 684, baseType: !730, size: 32, offset: 2368)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !412, file: !44, line: 685, baseType: !730, size: 32, offset: 2400)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !412, file: !44, line: 686, baseType: !730, size: 32, offset: 2432)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !412, file: !44, line: 688, baseType: !730, size: 32, offset: 2464)
!2842 = !DIDerivedType(tag: DW_TAG_member, scope: !412, file: !44, line: 690, baseType: !2843, size: 64, offset: 2496)
!2843 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !412, file: !44, line: 690, size: 64, elements: !2844)
!2844 = !{!2845, !3068}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2843, file: !44, line: 691, baseType: !2846, size: 64)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2848)
!2848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2849)
!2849 = !{!2850, !2851, !2855, !2860, !2864, !2865, !2866, !2870, !2883, !2884, !2892, !2896, !2897, !2901, !2902, !2906, !2911, !2912, !2916, !2920, !3028, !3032, !3033, !3037, !3038, !3042, !3046, !3051, !3055, !3059, !3063, !3067}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2848, file: !44, line: 1823, baseType: !174, size: 64)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2848, file: !44, line: 1824, baseType: !2852, size: 64, offset: 64)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!513, !334, !513, !181}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2848, file: !44, line: 1825, baseType: !2856, size: 64, offset: 128)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!288, !334, !257, !304, !2859}
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2848, file: !44, line: 1826, baseType: !2861, size: 64, offset: 192)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!288, !334, !172, !304, !2859}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2848, file: !44, line: 1827, baseType: !827, size: 64, offset: 256)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2848, file: !44, line: 1828, baseType: !827, size: 64, offset: 320)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2848, file: !44, line: 1829, baseType: !2867, size: 64, offset: 384)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!181, !830, !472}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2848, file: !44, line: 1830, baseType: !2871, size: 64, offset: 448)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{!181, !334, !2874}
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2876)
!2876 = !{!2877, !2882}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2875, file: !44, line: 1777, baseType: !2878, size: 64)
!2878 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2879)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!181, !2874, !172, !181, !513, !403, !7}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2875, file: !44, line: 1778, baseType: !513, size: 64, offset: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2848, file: !44, line: 1831, baseType: !2871, size: 64, offset: 512)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2848, file: !44, line: 1832, baseType: !2885, size: 64, offset: 576)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!2888, !334, !2890}
!2888 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2889, line: 52, baseType: !7)
!2889 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !601, line: 27, flags: DIFlagFwdDecl)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2848, file: !44, line: 1833, baseType: !2893, size: 64, offset: 640)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{!292, !334, !7, !133}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2848, file: !44, line: 1834, baseType: !2893, size: 64, offset: 704)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2848, file: !44, line: 1835, baseType: !2898, size: 64, offset: 768)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{!181, !334, !964}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2848, file: !44, line: 1836, baseType: !133, size: 64, offset: 832)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2848, file: !44, line: 1837, baseType: !2903, size: 64, offset: 896)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{!181, !411, !334}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2848, file: !44, line: 1838, baseType: !2907, size: 64, offset: 960)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!181, !334, !2910}
!2910 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !191)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2848, file: !44, line: 1839, baseType: !2903, size: 64, offset: 1024)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2848, file: !44, line: 1840, baseType: !2913, size: 64, offset: 1088)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!181, !334, !513, !513, !181}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2848, file: !44, line: 1841, baseType: !2917, size: 64, offset: 1152)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!181, !181, !334, !181}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2848, file: !44, line: 1842, baseType: !2921, size: 64, offset: 1216)
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = !DISubroutineType(types: !2923)
!2923 = !{!181, !334, !181, !2924}
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2926)
!2926 = !{!2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2958, !2959, !2960, !2973, !3004}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2925, file: !44, line: 1063, baseType: !2924, size: 64)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2925, file: !44, line: 1064, baseType: !202, size: 128, offset: 64)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2925, file: !44, line: 1065, baseType: !621, size: 128, offset: 192)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2925, file: !44, line: 1066, baseType: !202, size: 128, offset: 320)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2925, file: !44, line: 1069, baseType: !202, size: 128, offset: 448)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2925, file: !44, line: 1072, baseType: !2910, size: 64, offset: 576)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2925, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2925, file: !44, line: 1074, baseType: !409, size: 8, offset: 672)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2925, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2925, file: !44, line: 1076, baseType: !181, size: 32, offset: 736)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2925, file: !44, line: 1077, baseType: !1464, size: 128, offset: 768)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2925, file: !44, line: 1078, baseType: !334, size: 64, offset: 896)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2925, file: !44, line: 1079, baseType: !513, size: 64, offset: 960)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2925, file: !44, line: 1080, baseType: !513, size: 64, offset: 1024)
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
!2951 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !228, line: 33, baseType: !2952)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !228, line: 31, elements: !230)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2943, file: !44, line: 1316, baseType: !181, size: 32)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2943, file: !44, line: 1317, baseType: !181, size: 32, offset: 32)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2943, file: !44, line: 1318, baseType: !2942, size: 64, offset: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2943, file: !44, line: 1319, baseType: !334, size: 64, offset: 128)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2943, file: !44, line: 1320, baseType: !347, size: 128, align: 64, offset: 192)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2925, file: !44, line: 1084, baseType: !133, size: 64, offset: 1152)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2925, file: !44, line: 1085, baseType: !133, size: 64, offset: 1216)
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
!2990 = !{!181, !2924, !181}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2976, file: !44, line: 1021, baseType: !2992, size: 64, offset: 256)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!472, !2924}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2976, file: !44, line: 1022, baseType: !2996, size: 64, offset: 320)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{!181, !2924, !181, !206}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2976, file: !44, line: 1023, baseType: !3000, size: 64, offset: 384)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{null, !2924, !804}
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2976, file: !44, line: 1024, baseType: !2992, size: 64, offset: 448)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2925, file: !44, line: 1097, baseType: !3005, size: 256, offset: 1408)
!3005 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2925, file: !44, line: 1089, size: 256, elements: !3006)
!3006 = !{!3007, !3016, !3022}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3005, file: !44, line: 1090, baseType: !3008, size: 256)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3009, line: 10, size: 256, elements: !3010)
!3009 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3010 = !{!3011, !3012, !3015}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3008, file: !3009, line: 11, baseType: !397, size: 32)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3008, file: !3009, line: 12, baseType: !3013, size: 64, offset: 64)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3009, line: 5, flags: DIFlagFwdDecl)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3008, file: !3009, line: 13, baseType: !202, size: 128, offset: 128)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3005, file: !44, line: 1091, baseType: !3017, size: 64)
!3017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3009, line: 17, size: 64, elements: !3018)
!3018 = !{!3019}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3017, file: !3009, line: 18, baseType: !3020, size: 64)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3009, line: 16, flags: DIFlagFwdDecl)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3005, file: !44, line: 1096, baseType: !3023, size: 192)
!3023 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3005, file: !44, line: 1092, size: 192, elements: !3024)
!3024 = !{!3025, !3026, !3027}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3023, file: !44, line: 1093, baseType: !202, size: 128)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3023, file: !44, line: 1094, baseType: !181, size: 32, offset: 128)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3023, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2848, file: !44, line: 1843, baseType: !3029, size: 64, offset: 1280)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{!288, !334, !703, !181, !304, !2859, !181}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2848, file: !44, line: 1844, baseType: !1084, size: 64, offset: 1344)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2848, file: !44, line: 1845, baseType: !3034, size: 64, offset: 1408)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!181, !181}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2848, file: !44, line: 1846, baseType: !2921, size: 64, offset: 1472)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2848, file: !44, line: 1847, baseType: !3039, size: 64, offset: 1536)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!288, !2081, !334, !2859, !304, !7}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2848, file: !44, line: 1848, baseType: !3043, size: 64, offset: 1600)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{!288, !334, !2859, !2081, !304, !7}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2848, file: !44, line: 1849, baseType: !3047, size: 64, offset: 1664)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{!181, !334, !292, !3050, !804}
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2848, file: !44, line: 1850, baseType: !3052, size: 64, offset: 1728)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!292, !334, !181, !513, !513}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2848, file: !44, line: 1852, baseType: !3056, size: 64, offset: 1792)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{null, !693, !334}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2848, file: !44, line: 1856, baseType: !3060, size: 64, offset: 1856)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!288, !334, !513, !334, !513, !304, !7}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2848, file: !44, line: 1858, baseType: !3064, size: 64, offset: 1920)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!513, !334, !513, !334, !513, !513, !7}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2848, file: !44, line: 1861, baseType: !2913, size: 64, offset: 1984)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2843, file: !44, line: 692, baseType: !646, size: 64)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !412, file: !44, line: 694, baseType: !3070, size: 64, offset: 2560)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3072)
!3072 = !{!3073, !3074, !3075, !3076}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3071, file: !44, line: 1101, baseType: !216)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3071, file: !44, line: 1102, baseType: !202, size: 128)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3071, file: !44, line: 1103, baseType: !202, size: 128, offset: 128)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3071, file: !44, line: 1104, baseType: !202, size: 128, offset: 256)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !412, file: !44, line: 695, baseType: !717, size: 1216, align: 64, offset: 2624)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !412, file: !44, line: 696, baseType: !202, size: 128, offset: 3840)
!3079 = !DIDerivedType(tag: DW_TAG_member, scope: !412, file: !44, line: 697, baseType: !3080, size: 64, offset: 3968)
!3080 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !412, file: !44, line: 697, size: 64, elements: !3081)
!3081 = !{!3082, !3083, !3084, !3087, !3088}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3080, file: !44, line: 698, baseType: !2081, size: 64)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3080, file: !44, line: 699, baseType: !2598, size: 64)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3080, file: !44, line: 700, baseType: !3085, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3080, file: !44, line: 701, baseType: !257, size: 64)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3080, file: !44, line: 702, baseType: !7, size: 32)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !412, file: !44, line: 705, baseType: !399, size: 32, offset: 4032)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !412, file: !44, line: 708, baseType: !399, size: 32, offset: 4064)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !412, file: !44, line: 709, baseType: !2680, size: 64, offset: 4096)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !412, file: !44, line: 720, baseType: !191, size: 64, offset: 4160)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !365, file: !362, line: 98, baseType: !3094, size: 256, offset: 448)
!3094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 256, elements: !2213)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !365, file: !362, line: 101, baseType: !3096, size: 32, offset: 704)
!3096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3097, line: 25, size: 32, elements: !3098)
!3097 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3098 = !{!3099}
!3099 = !DIDerivedType(tag: DW_TAG_member, scope: !3096, file: !3097, line: 26, baseType: !3100, size: 32)
!3100 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3096, file: !3097, line: 26, size: 32, elements: !3101)
!3101 = !{!3102}
!3102 = !DIDerivedType(tag: DW_TAG_member, scope: !3100, file: !3097, line: 30, baseType: !3103, size: 32)
!3103 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3100, file: !3097, line: 30, size: 32, elements: !3104)
!3104 = !{!3105, !3106}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3103, file: !3097, line: 31, baseType: !216)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3103, file: !3097, line: 32, baseType: !181, size: 32)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !365, file: !362, line: 102, baseType: !2697, size: 64, offset: 768)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !365, file: !362, line: 103, baseType: !581, size: 64, offset: 832)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !365, file: !362, line: 104, baseType: !133, size: 64, offset: 896)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !365, file: !362, line: 105, baseType: !191, size: 64, offset: 960)
!3111 = !DIDerivedType(tag: DW_TAG_member, scope: !365, file: !362, line: 107, baseType: !3112, size: 128, offset: 1024)
!3112 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !365, file: !362, line: 107, size: 128, elements: !3113)
!3113 = !{!3114, !3115}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3112, file: !362, line: 108, baseType: !202, size: 128)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3112, file: !362, line: 109, baseType: !3116, size: 64)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !365, file: !362, line: 111, baseType: !202, size: 128, offset: 1152)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !365, file: !362, line: 112, baseType: !202, size: 128, offset: 1280)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !365, file: !362, line: 120, baseType: !3120, size: 128, offset: 1408)
!3120 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !365, file: !362, line: 116, size: 128, elements: !3121)
!3121 = !{!3122, !3123, !3124}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3120, file: !362, line: 117, baseType: !621, size: 128)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3120, file: !362, line: 118, baseType: !379, size: 128)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3120, file: !362, line: 119, baseType: !347, size: 128, align: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !335, file: !44, line: 922, baseType: !411, size: 64, offset: 256)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !335, file: !44, line: 923, baseType: !2846, size: 64, offset: 320)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !335, file: !44, line: 929, baseType: !216, offset: 384)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !335, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !335, file: !44, line: 931, baseType: !754, size: 64, offset: 448)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !335, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !335, file: !44, line: 933, baseType: !2693, size: 32, offset: 544)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !335, file: !44, line: 934, baseType: !1156, size: 192, offset: 576)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !335, file: !44, line: 935, baseType: !513, size: 64, offset: 768)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !335, file: !44, line: 936, baseType: !3135, size: 192, offset: 832)
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3136)
!3136 = !{!3137, !3138, !3139, !3140, !3141, !3142}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3135, file: !44, line: 886, baseType: !2946)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3135, file: !44, line: 887, baseType: !1454, size: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3135, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3135, file: !44, line: 889, baseType: !417, size: 32, offset: 96)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3135, file: !44, line: 889, baseType: !417, size: 32, offset: 128)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3135, file: !44, line: 890, baseType: !181, size: 32, offset: 160)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !335, file: !44, line: 937, baseType: !1530, size: 64, offset: 1024)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !335, file: !44, line: 938, baseType: !3145, size: 256, offset: 1088)
!3145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3146)
!3146 = !{!3147, !3148, !3149, !3150, !3151, !3152}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3145, file: !44, line: 897, baseType: !133, size: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3145, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3145, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3145, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3145, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3145, file: !44, line: 904, baseType: !513, size: 64, offset: 192)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !335, file: !44, line: 940, baseType: !403, size: 64, offset: 1344)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !335, file: !44, line: 945, baseType: !191, size: 64, offset: 1408)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !335, file: !44, line: 949, baseType: !202, size: 128, offset: 1472)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !335, file: !44, line: 950, baseType: !202, size: 128, offset: 1600)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !335, file: !44, line: 952, baseType: !716, size: 64, offset: 1728)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !335, file: !44, line: 953, baseType: !892, size: 32, offset: 1792)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !335, file: !44, line: 954, baseType: !892, size: 32, offset: 1824)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !325, file: !282, line: 174, baseType: !331, size: 64, offset: 320)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !325, file: !282, line: 176, baseType: !3162, size: 64, offset: 384)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{!181, !334, !209, !324, !964}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !313, file: !282, line: 90, baseType: !308, size: 64, offset: 192)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !313, file: !282, line: 91, baseType: !3167, size: 64, offset: 256)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !272, file: !198, line: 143, baseType: !3169, size: 64, offset: 256)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{!3172, !209}
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3174)
!3174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3175)
!3175 = !{!3176, !3177, !3181, !3185, !3191, !3195}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3174, file: !61, line: 40, baseType: !60, size: 32)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3174, file: !61, line: 41, baseType: !3178, size: 64, offset: 64)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{!472}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3174, file: !61, line: 42, baseType: !3182, size: 64, offset: 128)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!191}
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
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3174, file: !61, line: 45, baseType: !450, size: 64, offset: 320)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !272, file: !198, line: 144, baseType: !3197, size: 64, offset: 320)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{!2110, !209}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !272, file: !198, line: 145, baseType: !3201, size: 64, offset: 384)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{null, !209, !3204, !3205}
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !197, file: !198, line: 70, baseType: !3207, size: 64, offset: 384)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !601, line: 123, size: 1024, elements: !3209)
!3209 = !{!3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3338, !3339, !3340, !3341, !3342}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3208, file: !601, line: 124, baseType: !730, size: 32)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3208, file: !601, line: 125, baseType: !730, size: 32, offset: 32)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3208, file: !601, line: 135, baseType: !3207, size: 64, offset: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3208, file: !601, line: 136, baseType: !172, size: 64, offset: 128)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3208, file: !601, line: 138, baseType: !743, size: 192, align: 64, offset: 192)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3208, file: !601, line: 140, baseType: !2110, size: 64, offset: 384)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3208, file: !601, line: 141, baseType: !7, size: 32, offset: 448)
!3217 = !DIDerivedType(tag: DW_TAG_member, scope: !3208, file: !601, line: 142, baseType: !3218, size: 256, offset: 512)
!3218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3208, file: !601, line: 142, size: 256, elements: !3219)
!3219 = !{!3220, !3266, !3270}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3218, file: !601, line: 143, baseType: !3221, size: 192)
!3221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !601, line: 91, size: 192, elements: !3222)
!3222 = !{!3223, !3224, !3225}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3221, file: !601, line: 92, baseType: !133, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3221, file: !601, line: 94, baseType: !739, size: 64, offset: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3221, file: !601, line: 100, baseType: !3226, size: 64, offset: 128)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !601, line: 180, size: 704, elements: !3228)
!3228 = !{!3229, !3230, !3231, !3238, !3239, !3240, !3264, !3265}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3227, file: !601, line: 182, baseType: !3207, size: 64)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3227, file: !601, line: 183, baseType: !7, size: 32, offset: 64)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3227, file: !601, line: 186, baseType: !3232, size: 192, offset: 128)
!3232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3233, line: 19, size: 192, elements: !3234)
!3233 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3234 = !{!3235, !3236, !3237}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3232, file: !3233, line: 20, baseType: !721, size: 128)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3232, file: !3233, line: 21, baseType: !7, size: 32, offset: 128)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3232, file: !3233, line: 22, baseType: !7, size: 32, offset: 160)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3227, file: !601, line: 187, baseType: !397, size: 32, offset: 320)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3227, file: !601, line: 188, baseType: !397, size: 32, offset: 352)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3227, file: !601, line: 189, baseType: !3241, size: 64, offset: 384)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !601, line: 168, size: 320, elements: !3243)
!3243 = !{!3244, !3248, !3252, !3256, !3260}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3242, file: !601, line: 169, baseType: !3245, size: 64)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!181, !693, !3226}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3242, file: !601, line: 171, baseType: !3249, size: 64, offset: 64)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!181, !3207, !172, !298}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3242, file: !601, line: 173, baseType: !3253, size: 64, offset: 128)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!181, !3207}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3242, file: !601, line: 174, baseType: !3257, size: 64, offset: 192)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!181, !3207, !3207, !172}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3242, file: !601, line: 176, baseType: !3261, size: 64, offset: 256)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!181, !693, !3207, !3226}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3227, file: !601, line: 192, baseType: !202, size: 128, offset: 448)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3227, file: !601, line: 194, baseType: !1464, size: 128, offset: 576)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3218, file: !601, line: 144, baseType: !3267, size: 64)
!3267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !601, line: 103, size: 64, elements: !3268)
!3268 = !{!3269}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3267, file: !601, line: 104, baseType: !3207, size: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3218, file: !601, line: 145, baseType: !3271, size: 256)
!3271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !601, line: 107, size: 256, elements: !3272)
!3272 = !{!3273, !3333, !3336, !3337}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3271, file: !601, line: 108, baseType: !3274, size: 64)
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3276)
!3276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !601, line: 217, size: 768, elements: !3277)
!3277 = !{!3278, !3298, !3302, !3306, !3310, !3314, !3318, !3322, !3323, !3324, !3325, !3329}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3276, file: !601, line: 222, baseType: !3279, size: 64)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DISubroutineType(types: !3281)
!3281 = !{!181, !3282}
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !601, line: 197, size: 1088, elements: !3284)
!3284 = !{!3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3283, file: !601, line: 199, baseType: !3207, size: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3283, file: !601, line: 200, baseType: !334, size: 64, offset: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3283, file: !601, line: 201, baseType: !693, size: 64, offset: 128)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3283, file: !601, line: 202, baseType: !191, size: 64, offset: 192)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3283, file: !601, line: 205, baseType: !1156, size: 192, offset: 256)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3283, file: !601, line: 206, baseType: !1156, size: 192, offset: 448)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3283, file: !601, line: 207, baseType: !181, size: 32, offset: 640)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3283, file: !601, line: 208, baseType: !202, size: 128, offset: 704)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3283, file: !601, line: 209, baseType: !257, size: 64, offset: 832)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3283, file: !601, line: 211, baseType: !304, size: 64, offset: 896)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3283, file: !601, line: 212, baseType: !472, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3283, file: !601, line: 213, baseType: !472, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3283, file: !601, line: 214, baseType: !992, size: 64, offset: 1024)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3276, file: !601, line: 223, baseType: !3299, size: 64, offset: 64)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = !DISubroutineType(types: !3301)
!3301 = !{null, !3282}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3276, file: !601, line: 236, baseType: !3303, size: 64, offset: 128)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{!181, !693, !191}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3276, file: !601, line: 238, baseType: !3307, size: 64, offset: 192)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{!191, !693, !2859}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3276, file: !601, line: 239, baseType: !3311, size: 64, offset: 256)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!191, !693, !191, !2859}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3276, file: !601, line: 240, baseType: !3315, size: 64, offset: 320)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{null, !693, !191}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3276, file: !601, line: 242, baseType: !3319, size: 64, offset: 384)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!288, !3282, !257, !304, !513}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3276, file: !601, line: 252, baseType: !304, size: 64, offset: 448)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3276, file: !601, line: 259, baseType: !472, size: 8, offset: 512)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3276, file: !601, line: 260, baseType: !3319, size: 64, offset: 576)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3276, file: !601, line: 263, baseType: !3326, size: 64, offset: 640)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{!2888, !3282, !2890}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3276, file: !601, line: 266, baseType: !3330, size: 64, offset: 704)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!181, !3282, !964}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3271, file: !601, line: 109, baseType: !3334, size: 64, offset: 64)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !601, line: 31, flags: DIFlagFwdDecl)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3271, file: !601, line: 110, baseType: !513, size: 64, offset: 128)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3271, file: !601, line: 111, baseType: !3207, size: 64, offset: 192)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3208, file: !601, line: 148, baseType: !191, size: 64, offset: 768)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3208, file: !601, line: 154, baseType: !403, size: 64, offset: 832)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3208, file: !601, line: 156, baseType: !299, size: 16, offset: 896)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3208, file: !601, line: 157, baseType: !298, size: 16, offset: 912)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3208, file: !601, line: 158, baseType: !3343, size: 64, offset: 960)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !601, line: 32, flags: DIFlagFwdDecl)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !197, file: !198, line: 71, baseType: !3346, size: 32, offset: 448)
!3346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3347, line: 19, size: 32, elements: !3348)
!3347 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3348 = !{!3349}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3346, file: !3347, line: 20, baseType: !1213, size: 32)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !197, file: !198, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !197, file: !198, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !197, file: !198, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !197, file: !198, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !197, file: !198, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !194, file: !73, line: 463, baseType: !193, size: 64, offset: 512)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !194, file: !73, line: 465, baseType: !3357, size: 64, offset: 576)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !194, file: !73, line: 467, baseType: !172, size: 64, offset: 640)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !194, file: !73, line: 468, baseType: !3361, size: 64, offset: 704)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3363)
!3363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3364)
!3364 = !{!3365, !3366, !3367, !3371, !3376, !3380}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3363, file: !73, line: 88, baseType: !172, size: 64)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3363, file: !73, line: 89, baseType: !310, size: 64, offset: 64)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3363, file: !73, line: 90, baseType: !3368, size: 64, offset: 128)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = !DISubroutineType(types: !3370)
!3370 = !{!181, !193, !252}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3363, file: !73, line: 91, baseType: !3372, size: 64, offset: 192)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!257, !193, !3375, !3204, !3205}
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3363, file: !73, line: 93, baseType: !3377, size: 64, offset: 256)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = !DISubroutineType(types: !3379)
!3379 = !{null, !193}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3363, file: !73, line: 95, baseType: !3381, size: 64, offset: 320)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3383)
!3383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3384)
!3384 = !{!3385, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3383, file: !80, line: 279, baseType: !3386, size: 64)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!181, !193}
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
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !194, file: !73, line: 470, baseType: !3412, size: 64, offset: 768)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3414, line: 82, size: 1408, elements: !3415)
!3414 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3415 = !{!3416, !3417, !3418, !3419, !3420, !3421, !3422, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3497, !3500, !3501}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3413, file: !3414, line: 83, baseType: !172, size: 64)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3413, file: !3414, line: 84, baseType: !172, size: 64, offset: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3413, file: !3414, line: 85, baseType: !193, size: 64, offset: 128)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3413, file: !3414, line: 86, baseType: !310, size: 64, offset: 192)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3413, file: !3414, line: 87, baseType: !310, size: 64, offset: 256)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3413, file: !3414, line: 88, baseType: !310, size: 64, offset: 320)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3413, file: !3414, line: 90, baseType: !3423, size: 64, offset: 384)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{!181, !193, !3426}
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3428)
!3428 = !{!3429, !3430, !3431, !3432, !3433, !3434, !3435, !3448, !3461, !3462, !3463, !3464, !3465, !3473, !3474, !3475, !3476, !3477, !3478}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3427, file: !67, line: 96, baseType: !172, size: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3427, file: !67, line: 97, baseType: !3412, size: 64, offset: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3427, file: !67, line: 99, baseType: !174, size: 64, offset: 128)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3427, file: !67, line: 100, baseType: !172, size: 64, offset: 192)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3427, file: !67, line: 102, baseType: !472, size: 8, offset: 256)
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
!3444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 1024, elements: !3445)
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
!3458 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3439, line: 14, baseType: !133)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3451, file: !3439, line: 213, baseType: !399, size: 32, offset: 192)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3451, file: !3439, line: 214, baseType: !399, size: 32, offset: 224)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3427, file: !67, line: 108, baseType: !3386, size: 64, offset: 448)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3427, file: !67, line: 109, baseType: !3377, size: 64, offset: 512)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3427, file: !67, line: 110, baseType: !3386, size: 64, offset: 576)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3427, file: !67, line: 111, baseType: !3377, size: 64, offset: 640)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3427, file: !67, line: 112, baseType: !3466, size: 64, offset: 704)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{!181, !193, !3469}
!3469 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3470)
!3470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3471)
!3471 = !{!3472}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3470, file: !80, line: 51, baseType: !181, size: 32)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3427, file: !67, line: 113, baseType: !3386, size: 64, offset: 768)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3427, file: !67, line: 114, baseType: !310, size: 64, offset: 832)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3427, file: !67, line: 115, baseType: !310, size: 64, offset: 896)
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
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3413, file: !3414, line: 112, baseType: !627, offset: 1344)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3413, file: !3414, line: 114, baseType: !472, size: 8, offset: 1344)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !194, file: !73, line: 471, baseType: !3426, size: 64, offset: 832)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !194, file: !73, line: 473, baseType: !191, size: 64, offset: 896)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !194, file: !73, line: 475, baseType: !191, size: 64, offset: 960)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !194, file: !73, line: 480, baseType: !1156, size: 192, offset: 1024)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !194, file: !73, line: 484, baseType: !3507, size: 576, offset: 1216)
!3507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3508)
!3508 = !{!3509, !3510, !3511, !3512, !3513, !3514}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3507, file: !73, line: 362, baseType: !202, size: 128)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3507, file: !73, line: 363, baseType: !202, size: 128, offset: 128)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3507, file: !73, line: 364, baseType: !202, size: 128, offset: 256)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3507, file: !73, line: 365, baseType: !202, size: 128, offset: 384)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3507, file: !73, line: 366, baseType: !472, size: 8, offset: 512)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3507, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !194, file: !73, line: 485, baseType: !3516, size: 2304, offset: 1792)
!3516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3517)
!3517 = !{!3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3613, !3617}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3516, file: !80, line: 566, baseType: !3469, size: 32)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3516, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3516, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3516, file: !80, line: 569, baseType: !472, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3516, file: !80, line: 570, baseType: !472, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3516, file: !80, line: 571, baseType: !472, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3516, file: !80, line: 572, baseType: !472, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3516, file: !80, line: 573, baseType: !472, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3516, file: !80, line: 574, baseType: !472, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3516, file: !80, line: 575, baseType: !472, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3516, file: !80, line: 576, baseType: !472, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3516, file: !80, line: 577, baseType: !397, size: 32, offset: 64)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3516, file: !80, line: 578, baseType: !216, offset: 96)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3516, file: !80, line: 580, baseType: !202, size: 128, offset: 128)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3516, file: !80, line: 581, baseType: !1485, size: 192, offset: 256)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3516, file: !80, line: 582, baseType: !3534, size: 64, offset: 448)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3536, line: 43, size: 1472, elements: !3537)
!3536 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3537 = !{!3538, !3539, !3540, !3541, !3542, !3545, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3535, file: !3536, line: 44, baseType: !172, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3535, file: !3536, line: 45, baseType: !181, size: 32, offset: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3535, file: !3536, line: 46, baseType: !202, size: 128, offset: 128)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3535, file: !3536, line: 47, baseType: !216, offset: 256)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3535, file: !3536, line: 48, baseType: !3543, size: 64, offset: 256)
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3535, file: !3536, line: 49, baseType: !3546, size: 320, offset: 320)
!3546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3547, line: 11, size: 320, elements: !3548)
!3547 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3548 = !{!3549, !3550, !3551, !3556}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3546, file: !3547, line: 16, baseType: !621, size: 128)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3546, file: !3547, line: 17, baseType: !133, size: 64, offset: 128)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3546, file: !3547, line: 18, baseType: !3552, size: 64, offset: 192)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{null, !3555}
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3546, file: !3547, line: 19, baseType: !397, size: 32, offset: 256)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3535, file: !3536, line: 50, baseType: !133, size: 64, offset: 640)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3535, file: !3536, line: 51, baseType: !1283, size: 64, offset: 704)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3535, file: !3536, line: 52, baseType: !1283, size: 64, offset: 768)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3535, file: !3536, line: 53, baseType: !1283, size: 64, offset: 832)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3535, file: !3536, line: 54, baseType: !1283, size: 64, offset: 896)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3535, file: !3536, line: 55, baseType: !1283, size: 64, offset: 960)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3535, file: !3536, line: 56, baseType: !133, size: 64, offset: 1024)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3535, file: !3536, line: 57, baseType: !133, size: 64, offset: 1088)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3535, file: !3536, line: 58, baseType: !133, size: 64, offset: 1152)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3535, file: !3536, line: 59, baseType: !133, size: 64, offset: 1216)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3535, file: !3536, line: 60, baseType: !133, size: 64, offset: 1280)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3535, file: !3536, line: 61, baseType: !193, size: 64, offset: 1344)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3535, file: !3536, line: 62, baseType: !472, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3535, file: !3536, line: 63, baseType: !472, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3516, file: !80, line: 583, baseType: !472, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3516, file: !80, line: 584, baseType: !472, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3516, file: !80, line: 585, baseType: !472, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3516, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3516, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3516, file: !80, line: 592, baseType: !1275, size: 512, offset: 576)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3516, file: !80, line: 593, baseType: !403, size: 64, offset: 1088)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3516, file: !80, line: 594, baseType: !1940, size: 256, offset: 1152)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3516, file: !80, line: 595, baseType: !1464, size: 128, offset: 1408)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3516, file: !80, line: 596, baseType: !3543, size: 64, offset: 1536)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3516, file: !80, line: 597, baseType: !730, size: 32, offset: 1600)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3516, file: !80, line: 598, baseType: !730, size: 32, offset: 1632)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3516, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3516, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3516, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3516, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3516, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3516, file: !80, line: 604, baseType: !472, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3516, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3516, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3516, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3516, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3516, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3516, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3516, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3516, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3516, file: !80, line: 613, baseType: !181, size: 32, offset: 1792)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3516, file: !80, line: 614, baseType: !181, size: 32, offset: 1824)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3516, file: !80, line: 615, baseType: !403, size: 64, offset: 1856)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3516, file: !80, line: 616, baseType: !403, size: 64, offset: 1920)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3516, file: !80, line: 617, baseType: !403, size: 64, offset: 1984)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3516, file: !80, line: 618, baseType: !403, size: 64, offset: 2048)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3516, file: !80, line: 620, baseType: !3604, size: 64, offset: 2112)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3606)
!3606 = !{!3607, !3608, !3609, !3610}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3605, file: !80, line: 537, baseType: !216)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3605, file: !80, line: 538, baseType: !7, size: 32)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3605, file: !80, line: 540, baseType: !202, size: 128, offset: 64)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3605, file: !80, line: 543, baseType: !3611, size: 64, offset: 192)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3516, file: !80, line: 621, baseType: !3614, size: 64, offset: 2176)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DISubroutineType(types: !3616)
!3616 = !{null, !193, !1427}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3516, file: !80, line: 622, baseType: !3618, size: 64, offset: 2240)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !194, file: !73, line: 486, baseType: !3621, size: 64, offset: 4096)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3623)
!3623 = !{!3624, !3625, !3626, !3630, !3631, !3632}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3622, file: !80, line: 643, baseType: !3383, size: 1472)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3622, file: !80, line: 644, baseType: !3386, size: 64, offset: 1472)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3622, file: !80, line: 645, baseType: !3627, size: 64, offset: 1536)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DISubroutineType(types: !3629)
!3629 = !{null, !193, !472}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3622, file: !80, line: 646, baseType: !3386, size: 64, offset: 1600)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3622, file: !80, line: 647, baseType: !3377, size: 64, offset: 1664)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3622, file: !80, line: 648, baseType: !3377, size: 64, offset: 1728)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !194, file: !73, line: 493, baseType: !3634, size: 64, offset: 4160)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !73, line: 493, flags: DIFlagFwdDecl)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !194, file: !73, line: 499, baseType: !202, size: 128, offset: 4224)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !194, file: !73, line: 502, baseType: !3638, size: 64, offset: 4352)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3640)
!3640 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !194, file: !73, line: 504, baseType: !3642, size: 64, offset: 4416)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !194, file: !73, line: 505, baseType: !403, size: 64, offset: 4480)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !194, file: !73, line: 510, baseType: !403, size: 64, offset: 4544)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !194, file: !73, line: 511, baseType: !3646, size: 64, offset: 4608)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3648)
!3648 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !194, file: !73, line: 513, baseType: !3650, size: 64, offset: 4672)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3652)
!3652 = !{!3653, !3654}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3651, file: !73, line: 293, baseType: !7, size: 32)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3651, file: !73, line: 294, baseType: !133, size: 64, offset: 64)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !194, file: !73, line: 515, baseType: !202, size: 128, offset: 4736)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !194, file: !73, line: 526, baseType: !3657, offset: 4864)
!3657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3658, line: 5, elements: !230)
!3658 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !194, file: !73, line: 528, baseType: !3660, size: 64, offset: 4864)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3662, line: 14, flags: DIFlagFwdDecl)
!3662 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !194, file: !73, line: 529, baseType: !3664, size: 64, offset: 4928)
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
!3685 = !{!472, !3686}
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3665)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3672, file: !3666, line: 114, baseType: !3689, size: 64, offset: 192)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{!2110, !3686, !3692}
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !194)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3672, file: !3666, line: 116, baseType: !3695, size: 64, offset: 256)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{!472, !3686, !172}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3672, file: !3666, line: 118, baseType: !3699, size: 64, offset: 320)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = !DISubroutineType(types: !3701)
!3701 = !{!181, !3686, !172, !7, !191, !304}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3672, file: !3666, line: 123, baseType: !3703, size: 64, offset: 384)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!181, !3686, !172, !3706, !304}
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3672, file: !3666, line: 126, baseType: !3708, size: 64, offset: 448)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!172, !3686}
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
!3723 = !{!3664, !3686, !172}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3672, file: !3666, line: 135, baseType: !3725, size: 64, offset: 768)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{!181, !3686, !172, !172, !7, !7, !3728}
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3666, line: 43, size: 640, elements: !3730)
!3730 = !{!3731, !3732, !3733}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3729, file: !3666, line: 44, baseType: !3664, size: 64)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3729, file: !3666, line: 45, baseType: !7, size: 32, offset: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3729, file: !3666, line: 46, baseType: !3734, size: 512, offset: 128)
!3734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !403, size: 512, elements: !1313)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3672, file: !3666, line: 140, baseType: !3717, size: 64, offset: 832)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3672, file: !3666, line: 143, baseType: !3713, size: 64, offset: 896)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3672, file: !3666, line: 145, baseType: !3675, size: 64, offset: 960)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3672, file: !3666, line: 146, baseType: !3739, size: 64, offset: 1024)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!181, !3686, !3742}
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3666, line: 29, size: 128, elements: !3744)
!3744 = !{!3745, !3746, !3747}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3743, file: !3666, line: 30, baseType: !7, size: 32)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3743, file: !3666, line: 31, baseType: !7, size: 32, offset: 32)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3743, file: !3666, line: 32, baseType: !3686, size: 64, offset: 64)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3672, file: !3666, line: 148, baseType: !3749, size: 64, offset: 1088)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!181, !3686, !193}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3665, file: !3666, line: 20, baseType: !193, size: 64, offset: 128)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !194, file: !73, line: 534, baseType: !495, size: 32, offset: 4992)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !194, file: !73, line: 535, baseType: !397, size: 32, offset: 5024)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !194, file: !73, line: 537, baseType: !216, offset: 5056)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !194, file: !73, line: 538, baseType: !202, size: 128, offset: 5056)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !194, file: !73, line: 540, baseType: !3758, size: 64, offset: 5184)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3760, line: 54, size: 960, elements: !3761)
!3760 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3761 = !{!3762, !3763, !3764, !3765, !3766, !3767, !3768, !3772, !3776, !3777, !3778, !3779, !3783, !3787, !3788}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3759, file: !3760, line: 55, baseType: !172, size: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3759, file: !3760, line: 56, baseType: !174, size: 64, offset: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3759, file: !3760, line: 58, baseType: !310, size: 64, offset: 128)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3759, file: !3760, line: 59, baseType: !310, size: 64, offset: 192)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3759, file: !3760, line: 60, baseType: !209, size: 64, offset: 256)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3759, file: !3760, line: 62, baseType: !3368, size: 64, offset: 320)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3759, file: !3760, line: 63, baseType: !3769, size: 64, offset: 384)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!257, !193, !3375}
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
!3782 = !{!2110, !193}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3759, file: !3760, line: 73, baseType: !3784, size: 64, offset: 768)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{null, !193, !3204, !3205}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3759, file: !3760, line: 75, baseType: !3381, size: 64, offset: 832)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3759, file: !3760, line: 77, baseType: !3498, size: 64, offset: 896)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !194, file: !73, line: 541, baseType: !310, size: 64, offset: 5248)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !194, file: !73, line: 543, baseType: !3377, size: 64, offset: 5312)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !194, file: !73, line: 544, baseType: !3792, size: 64, offset: 5376)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !194, file: !73, line: 545, baseType: !3795, size: 64, offset: 5440)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !194, file: !73, line: 547, baseType: !472, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !194, file: !73, line: 548, baseType: !472, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !194, file: !73, line: 549, baseType: !472, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !194, file: !73, line: 550, baseType: !472, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !183, file: !167, line: 548, baseType: !181, size: 32, offset: 320)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "detach_count", scope: !183, file: !167, line: 549, baseType: !7, size: 32, offset: 352)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "hw_dev", scope: !183, file: !167, line: 550, baseType: !193, size: 64, offset: 384)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !183, file: !167, line: 552, baseType: !172, size: 64, offset: 448)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "board_ptr", scope: !183, file: !167, line: 553, baseType: !2110, size: 64, offset: 512)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "attached", scope: !183, file: !167, line: 554, baseType: !7, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "ioenabled", scope: !183, file: !167, line: 555, baseType: !7, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "spinlock", scope: !183, file: !167, line: 556, baseType: !216, offset: 584)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !183, file: !167, line: 557, baseType: !1156, size: 192, offset: 640)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "attach_lock", scope: !183, file: !167, line: 558, baseType: !750, size: 256, offset: 832)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !183, file: !167, line: 559, baseType: !3346, size: 32, offset: 1088)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "n_subdevices", scope: !183, file: !167, line: 561, baseType: !181, size: 32, offset: 1120)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "subdevices", scope: !183, file: !167, line: 562, baseType: !3814, size: 64, offset: 1152)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_subdevice", file: !167, line: 153, size: 1792, elements: !3816)
!3816 = !{!3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3892, !3905, !3908, !3909, !3923, !3924, !3925, !3926, !3930, !3935, !3936, !3937, !3938, !3942, !3943, !3944, !3945, !3946}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3815, file: !167, line: 154, baseType: !182, size: 64)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3815, file: !167, line: 155, baseType: !181, size: 32, offset: 64)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3815, file: !167, line: 156, baseType: !181, size: 32, offset: 96)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "n_chan", scope: !3815, file: !167, line: 157, baseType: !181, size: 32, offset: 128)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "subdev_flags", scope: !3815, file: !167, line: 158, baseType: !181, size: 32, offset: 160)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "len_chanlist", scope: !3815, file: !167, line: 159, baseType: !181, size: 32, offset: 192)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3815, file: !167, line: 161, baseType: !191, size: 64, offset: 256)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "async", scope: !3815, file: !167, line: 163, baseType: !3825, size: 64, offset: 320)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_async", file: !167, line: 347, size: 1536, elements: !3827)
!3827 = !{!3828, !3829, !3830, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3878, !3879, !3880}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3826, file: !167, line: 348, baseType: !191, size: 64)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_bufsz", scope: !3826, file: !167, line: 349, baseType: !7, size: 32, offset: 64)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "buf_map", scope: !3826, file: !167, line: 350, baseType: !3831, size: 64, offset: 128)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_map", file: !167, line: 249, size: 256, elements: !3833)
!3833 = !{!3834, !3835, !3841, !3842, !3843}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "dma_hw_dev", scope: !3832, file: !167, line: 250, baseType: !193, size: 64)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "page_list", scope: !3832, file: !167, line: 251, baseType: !3836, size: 64, offset: 64)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_page", file: !167, line: 220, size: 128, elements: !3838)
!3838 = !{!3839, !3840}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "virt_addr", scope: !3837, file: !167, line: 221, baseType: !191, size: 64)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3837, file: !167, line: 222, baseType: !903, size: 64, offset: 64)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "n_pages", scope: !3832, file: !167, line: 252, baseType: !7, size: 32, offset: 128)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "dma_dir", scope: !3832, file: !167, line: 253, baseType: !93, size: 32, offset: 160)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3832, file: !167, line: 254, baseType: !3346, size: 32, offset: 192)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "max_bufsize", scope: !3826, file: !167, line: 351, baseType: !7, size: 32, offset: 192)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_count", scope: !3826, file: !167, line: 352, baseType: !7, size: 32, offset: 224)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_alloc_count", scope: !3826, file: !167, line: 353, baseType: !7, size: 32, offset: 256)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_count", scope: !3826, file: !167, line: 354, baseType: !7, size: 32, offset: 288)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_alloc_count", scope: !3826, file: !167, line: 355, baseType: !7, size: 32, offset: 320)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_ptr", scope: !3826, file: !167, line: 356, baseType: !7, size: 32, offset: 352)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_ptr", scope: !3826, file: !167, line: 357, baseType: !7, size: 32, offset: 384)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "cur_chan", scope: !3826, file: !167, line: 358, baseType: !7, size: 32, offset: 416)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "scans_done", scope: !3826, file: !167, line: 359, baseType: !7, size: 32, offset: 448)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "scan_progress", scope: !3826, file: !167, line: 360, baseType: !7, size: 32, offset: 480)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "munge_chan", scope: !3826, file: !167, line: 361, baseType: !7, size: 32, offset: 512)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "munge_count", scope: !3826, file: !167, line: 362, baseType: !7, size: 32, offset: 544)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "munge_ptr", scope: !3826, file: !167, line: 363, baseType: !7, size: 32, offset: 576)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3826, file: !167, line: 364, baseType: !7, size: 32, offset: 608)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !3826, file: !167, line: 365, baseType: !3859, size: 640, offset: 640)
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
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "wait_head", scope: !3826, file: !167, line: 366, baseType: !1464, size: 128, offset: 1280)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "cb_mask", scope: !3826, file: !167, line: 367, baseType: !7, size: 32, offset: 1408)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "inttrig", scope: !3826, file: !167, line: 368, baseType: !3881, size: 64, offset: 1472)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{!181, !182, !3814, !7}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3815, file: !167, line: 165, baseType: !191, size: 64, offset: 384)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !3815, file: !167, line: 166, baseType: !191, size: 64, offset: 448)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "runflags", scope: !3815, file: !167, line: 167, baseType: !7, size: 32, offset: 512)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "spin_lock", scope: !3815, file: !167, line: 168, baseType: !216, offset: 544)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "io_bits", scope: !3815, file: !167, line: 170, baseType: !7, size: 32, offset: 544)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata", scope: !3815, file: !167, line: 172, baseType: !7, size: 32, offset: 576)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata_list", scope: !3815, file: !167, line: 173, baseType: !3891, size: 64, offset: 640)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "range_table", scope: !3815, file: !167, line: 175, baseType: !3893, size: 64, offset: 704)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3895)
!3895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_lrange", file: !167, line: 635, size: 32, elements: !3896)
!3896 = !{!3897, !3898}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3895, file: !167, line: 636, baseType: !181, size: 32)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3895, file: !167, line: 637, baseType: !3899, offset: 32)
!3899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3900, elements: !2314)
!3900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_krange", file: !101, line: 685, size: 96, elements: !3901)
!3901 = !{!3902, !3903, !3904}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !3900, file: !101, line: 686, baseType: !181, size: 32)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3900, file: !101, line: 687, baseType: !181, size: 32, offset: 32)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3900, file: !101, line: 688, baseType: !7, size: 32, offset: 64)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "range_table_list", scope: !3815, file: !167, line: 176, baseType: !3906, size: 64, offset: 768)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3893)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist", scope: !3815, file: !167, line: 178, baseType: !2666, size: 64, offset: 832)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "insn_read", scope: !3815, file: !167, line: 180, baseType: !3910, size: 64, offset: 896)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{!181, !182, !3814, !3913, !2666}
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_insn", file: !101, line: 491, size: 320, elements: !3915)
!3915 = !{!3916, !3917, !3918, !3919, !3920, !3921}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3914, file: !101, line: 492, baseType: !7, size: 32)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !3914, file: !101, line: 493, baseType: !7, size: 32, offset: 32)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3914, file: !101, line: 494, baseType: !2666, size: 64, offset: 64)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "subdev", scope: !3914, file: !101, line: 495, baseType: !7, size: 32, offset: 128)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "chanspec", scope: !3914, file: !101, line: 496, baseType: !7, size: 32, offset: 160)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !3914, file: !101, line: 497, baseType: !3922, size: 96, offset: 192)
!3922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 96, elements: !258)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "insn_write", scope: !3815, file: !167, line: 182, baseType: !3910, size: 64, offset: 960)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "insn_bits", scope: !3815, file: !167, line: 184, baseType: !3910, size: 64, offset: 1024)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "insn_config", scope: !3815, file: !167, line: 186, baseType: !3910, size: 64, offset: 1088)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmd", scope: !3815, file: !167, line: 191, baseType: !3927, size: 64, offset: 1152)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = !DISubroutineType(types: !3929)
!3929 = !{!181, !182, !3814}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmdtest", scope: !3815, file: !167, line: 192, baseType: !3931, size: 64, offset: 1216)
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3932 = !DISubroutineType(types: !3933)
!3933 = !{!181, !182, !3814, !3934}
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3815, file: !167, line: 195, baseType: !3927, size: 64, offset: 1280)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "cancel", scope: !3815, file: !167, line: 196, baseType: !3927, size: 64, offset: 1344)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "buf_change", scope: !3815, file: !167, line: 199, baseType: !3927, size: 64, offset: 1408)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "munge", scope: !3815, file: !167, line: 202, baseType: !3939, size: 64, offset: 1472)
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = !DISubroutineType(types: !3941)
!3941 = !{null, !182, !3814, !191, !7, !7}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "async_dma_dir", scope: !3815, file: !167, line: 205, baseType: !93, size: 32, offset: 1536)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3815, file: !167, line: 207, baseType: !7, size: 32, offset: 1568)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !3815, file: !167, line: 209, baseType: !193, size: 64, offset: 1600)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3815, file: !167, line: 210, baseType: !181, size: 32, offset: 1664)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "readback", scope: !3815, file: !167, line: 212, baseType: !2666, size: 64, offset: 1728)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "mmio", scope: !183, file: !167, line: 565, baseType: !191, size: 64, offset: 1216)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "iobase", scope: !183, file: !167, line: 566, baseType: !133, size: 64, offset: 1280)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "iolen", scope: !183, file: !167, line: 567, baseType: !133, size: 64, offset: 1344)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !183, file: !167, line: 568, baseType: !7, size: 32, offset: 1408)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "read_subdev", scope: !183, file: !167, line: 570, baseType: !3814, size: 64, offset: 1472)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "write_subdev", scope: !183, file: !167, line: 571, baseType: !3814, size: 64, offset: 1536)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "async_queue", scope: !183, file: !167, line: 573, baseType: !2942, size: 64, offset: 1600)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !183, file: !167, line: 575, baseType: !3955, size: 64, offset: 1664)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DISubroutineType(types: !3957)
!3957 = !{!181, !182}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !183, file: !167, line: 576, baseType: !3959, size: 64, offset: 1728)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = !DISubroutineType(types: !3961)
!3961 = !{null, !182}
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "insn_device_config", scope: !183, file: !167, line: 577, baseType: !3963, size: 64, offset: 1792)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{!181, !182, !3913, !2666}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "get_valid_routes", scope: !183, file: !167, line: 579, baseType: !3967, size: 64, offset: 1856)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = !DISubroutineType(types: !3969)
!3969 = !{!7, !182, !7, !2666}
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_devconfig", file: !101, line: 834, size: 1184, elements: !3972)
!3972 = !{!3973, !3975}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !3971, file: !101, line: 835, baseType: !3974, size: 160)
!3974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 160, elements: !2184)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !3971, file: !101, line: 836, baseType: !3976, size: 1024, offset: 160)
!3976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 1024, elements: !2213)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !166, file: !167, line: 444, baseType: !3959, size: 64, offset: 256)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "auto_attach", scope: !166, file: !167, line: 445, baseType: !3979, size: 64, offset: 320)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = !DISubroutineType(types: !3981)
!3981 = !{!181, !182, !133}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "num_names", scope: !166, file: !167, line: 446, baseType: !7, size: 32, offset: 384)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !166, file: !167, line: 447, baseType: !3984, size: 64, offset: 448)
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3985, size: 64)
!3985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !166, file: !167, line: 448, baseType: !181, size: 32, offset: 512)
!3987 = !DIGlobalVariableExpression(var: !3988, expr: !DIExpression())
!3988 = distinct !DIGlobalVariable(name: "apci1500_pci_driver", scope: !2, file: !3, line: 877, type: !3989, isLocal: true, isDefinition: true)
!3989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !3990, line: 858, size: 2048, elements: !3991)
!3990 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!3991 = !{!3992, !3993, !3994, !4006, !4226, !4230, !4234, !4238, !4239, !4243, !4261, !4262, !4263}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3989, file: !3990, line: 859, baseType: !202, size: 128)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3989, file: !3990, line: 860, baseType: !172, size: 64, offset: 128)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3989, file: !3990, line: 861, baseType: !3995, size: 64, offset: 192)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3997)
!3997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3439, line: 38, size: 256, elements: !3998)
!3998 = !{!3999, !4000, !4001, !4002, !4003, !4004, !4005}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3997, file: !3439, line: 39, baseType: !399, size: 32)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3997, file: !3439, line: 39, baseType: !399, size: 32, offset: 32)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !3997, file: !3439, line: 40, baseType: !399, size: 32, offset: 64)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !3997, file: !3439, line: 40, baseType: !399, size: 32, offset: 96)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3997, file: !3439, line: 41, baseType: !399, size: 32, offset: 128)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !3997, file: !3439, line: 41, baseType: !399, size: 32, offset: 160)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3997, file: !3439, line: 42, baseType: !3458, size: 64, offset: 192)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3989, file: !3990, line: 862, baseType: !4007, size: 64, offset: 256)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = !DISubroutineType(types: !4009)
!4009 = !{!181, !4010, !3995}
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !3990, line: 309, size: 19264, elements: !4012)
!4012 = !{!4013, !4014, !4089, !4090, !4091, !4092, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4120, !4122, !4123, !4124, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4148, !4149, !4150, !4151, !4153, !4154, !4155, !4156, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4199, !4200, !4202, !4203, !4204, !4205, !4207, !4208, !4209, !4212, !4219, !4220, !4221, !4222, !4223, !4224, !4225}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !4011, file: !3990, line: 310, baseType: !202, size: 128)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4011, file: !3990, line: 311, baseType: !4015, size: 64, offset: 128)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !3990, line: 605, size: 8064, elements: !4017)
!4017 = !{!4018, !4019, !4020, !4021, !4022, !4023, !4024, !4039, !4040, !4041, !4065, !4068, !4069, !4073, !4074, !4075, !4076, !4077, !4081, !4082, !4084, !4085, !4086, !4087, !4088}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4016, file: !3990, line: 606, baseType: !202, size: 128)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4016, file: !3990, line: 607, baseType: !4015, size: 64, offset: 128)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4016, file: !3990, line: 608, baseType: !202, size: 128, offset: 192)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4016, file: !3990, line: 609, baseType: !202, size: 128, offset: 320)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4016, file: !3990, line: 610, baseType: !4010, size: 64, offset: 448)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4016, file: !3990, line: 611, baseType: !202, size: 128, offset: 512)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4016, file: !3990, line: 613, baseType: !4025, size: 256, offset: 640)
!4025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4026, size: 256, elements: !1138)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4028, line: 20, size: 512, elements: !4029)
!4028 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!4029 = !{!4030, !4032, !4033, !4034, !4035, !4036, !4037, !4038}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4027, file: !4028, line: 21, baseType: !4031, size: 64)
!4031 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !203, line: 158, baseType: !2108)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4027, file: !4028, line: 22, baseType: !4031, size: 64, offset: 64)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4027, file: !4028, line: 23, baseType: !172, size: 64, offset: 128)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4027, file: !4028, line: 24, baseType: !133, size: 64, offset: 192)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4027, file: !4028, line: 25, baseType: !133, size: 64, offset: 256)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4027, file: !4028, line: 26, baseType: !4026, size: 64, offset: 320)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4027, file: !4028, line: 26, baseType: !4026, size: 64, offset: 384)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4027, file: !4028, line: 26, baseType: !4026, size: 64, offset: 448)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4016, file: !3990, line: 614, baseType: !202, size: 128, offset: 896)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !4016, file: !3990, line: 615, baseType: !4027, size: 512, offset: 1024)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4016, file: !3990, line: 617, baseType: !4042, size: 64, offset: 1536)
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !3990, line: 731, size: 320, elements: !4044)
!4044 = !{!4045, !4049, !4053, !4057, !4061}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4043, file: !3990, line: 732, baseType: !4046, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = !DISubroutineType(types: !4048)
!4048 = !{!181, !4015}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4043, file: !3990, line: 733, baseType: !4050, size: 64, offset: 64)
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{null, !4015}
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4043, file: !3990, line: 734, baseType: !4054, size: 64, offset: 128)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = !DISubroutineType(types: !4056)
!4056 = !{!191, !4015, !7, !181}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4043, file: !3990, line: 735, baseType: !4058, size: 64, offset: 192)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{!181, !4015, !7, !181, !181, !1398}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4043, file: !3990, line: 736, baseType: !4062, size: 64, offset: 256)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{!181, !4015, !7, !181, !181, !397}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4016, file: !3990, line: 618, baseType: !4066, size: 64, offset: 1600)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4067 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !3990, line: 537, flags: DIFlagFwdDecl)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4016, file: !3990, line: 619, baseType: !191, size: 64, offset: 1664)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !4016, file: !3990, line: 620, baseType: !4070, size: 64, offset: 1728)
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4071, size: 64)
!4071 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4072, line: 123, flags: DIFlagFwdDecl)
!4072 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4016, file: !3990, line: 622, baseType: !409, size: 8, offset: 1792)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4016, file: !3990, line: 623, baseType: !409, size: 8, offset: 1800)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !4016, file: !3990, line: 624, baseType: !409, size: 8, offset: 1808)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !4016, file: !3990, line: 625, baseType: !409, size: 8, offset: 1816)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4016, file: !3990, line: 630, baseType: !4078, size: 384, offset: 1824)
!4078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 384, elements: !4079)
!4079 = !{!4080}
!4080 = !DISubrange(count: 48)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !4016, file: !3990, line: 632, baseType: !299, size: 16, offset: 2208)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !4016, file: !3990, line: 633, baseType: !4083, size: 16, offset: 2224)
!4083 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !3990, line: 237, baseType: !299)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !4016, file: !3990, line: 634, baseType: !193, size: 64, offset: 2240)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4016, file: !3990, line: 635, baseType: !194, size: 5568, offset: 2304)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !4016, file: !3990, line: 636, baseType: !324, size: 64, offset: 7872)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !4016, file: !3990, line: 637, baseType: !324, size: 64, offset: 7936)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !4016, file: !3990, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !4011, file: !3990, line: 312, baseType: !4015, size: 64, offset: 192)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4011, file: !3990, line: 314, baseType: !191, size: 64, offset: 256)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !4011, file: !3990, line: 315, baseType: !4070, size: 64, offset: 320)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4011, file: !3990, line: 316, baseType: !4093, size: 64, offset: 384)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !3990, line: 69, size: 832, elements: !4095)
!4095 = !{!4096, !4097, !4098, !4101, !4102}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4094, file: !3990, line: 70, baseType: !4015, size: 64)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4094, file: !3990, line: 71, baseType: !202, size: 128, offset: 64)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4094, file: !3990, line: 72, baseType: !4099, size: 64, offset: 192)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !3990, line: 72, flags: DIFlagFwdDecl)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4094, file: !3990, line: 73, baseType: !409, size: 8, offset: 256)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4094, file: !3990, line: 74, baseType: !197, size: 512, offset: 320)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !4011, file: !3990, line: 318, baseType: !7, size: 32, offset: 448)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4011, file: !3990, line: 319, baseType: !299, size: 16, offset: 480)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4011, file: !3990, line: 320, baseType: !299, size: 16, offset: 496)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4011, file: !3990, line: 321, baseType: !299, size: 16, offset: 512)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4011, file: !3990, line: 322, baseType: !299, size: 16, offset: 528)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4011, file: !3990, line: 323, baseType: !7, size: 32, offset: 544)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4011, file: !3990, line: 324, baseType: !1335, size: 8, offset: 576)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4011, file: !3990, line: 325, baseType: !1335, size: 8, offset: 584)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !4011, file: !3990, line: 330, baseType: !1335, size: 8, offset: 592)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !4011, file: !3990, line: 331, baseType: !1335, size: 8, offset: 600)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !4011, file: !3990, line: 332, baseType: !1335, size: 8, offset: 608)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !4011, file: !3990, line: 333, baseType: !1335, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !4011, file: !3990, line: 334, baseType: !1335, size: 8, offset: 624)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4011, file: !3990, line: 335, baseType: !1335, size: 8, offset: 632)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !4011, file: !3990, line: 336, baseType: !842, size: 16, offset: 640)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !4011, file: !3990, line: 337, baseType: !4119, size: 64, offset: 704)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4011, file: !3990, line: 339, baseType: !4121, size: 64, offset: 768)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4011, file: !3990, line: 340, baseType: !403, size: 64, offset: 832)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4011, file: !3990, line: 346, baseType: !3651, size: 128, offset: 896)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !4011, file: !3990, line: 348, baseType: !4125, size: 32, offset: 1024)
!4125 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !3990, line: 155, baseType: !181)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !4011, file: !3990, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !4011, file: !3990, line: 352, baseType: !1335, size: 8, offset: 1064)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !4011, file: !3990, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !4011, file: !3990, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !4011, file: !3990, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !4011, file: !3990, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !4011, file: !3990, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !4011, file: !3990, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !4011, file: !3990, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !4011, file: !3990, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !4011, file: !3990, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !4011, file: !3990, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !4011, file: !3990, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !4011, file: !3990, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !4011, file: !3990, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !4011, file: !3990, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !4011, file: !3990, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !4011, file: !3990, line: 376, baseType: !7, size: 32, offset: 1120)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !4011, file: !3990, line: 377, baseType: !7, size: 32, offset: 1152)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !4011, file: !3990, line: 380, baseType: !4146, size: 64, offset: 1216)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !3990, line: 303, flags: DIFlagFwdDecl)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !4011, file: !3990, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !4011, file: !3990, line: 383, baseType: !181, size: 32, offset: 1312)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !4011, file: !3990, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !4011, file: !3990, line: 387, baseType: !4152, size: 32, offset: 1376)
!4152 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !3990, line: 180, baseType: !7)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4011, file: !3990, line: 388, baseType: !194, size: 5568, offset: 1408)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !4011, file: !3990, line: 390, baseType: !181, size: 32, offset: 6976)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4011, file: !3990, line: 396, baseType: !7, size: 32, offset: 7008)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4011, file: !3990, line: 397, baseType: !4157, size: 8704, offset: 7040)
!4157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4027, size: 8704, elements: !4158)
!4158 = !{!4159}
!4159 = !DISubrange(count: 17)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4011, file: !3990, line: 399, baseType: !472, size: 8, offset: 15744)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !4011, file: !3990, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !4011, file: !3990, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !4011, file: !3990, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !4011, file: !3990, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !4011, file: !3990, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !4011, file: !3990, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !4011, file: !3990, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !4011, file: !3990, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !4011, file: !3990, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !4011, file: !3990, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !4011, file: !3990, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !4011, file: !3990, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !4011, file: !3990, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !4011, file: !3990, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !4011, file: !3990, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !4011, file: !3990, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !4011, file: !3990, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !4011, file: !3990, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !4011, file: !3990, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !4011, file: !3990, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !4011, file: !3990, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !4011, file: !3990, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !4011, file: !3990, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !4011, file: !3990, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !4011, file: !3990, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !4011, file: !3990, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !4011, file: !3990, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !4011, file: !3990, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !4011, file: !3990, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !4011, file: !3990, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !4011, file: !3990, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !4011, file: !3990, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !4011, file: !3990, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !4011, file: !3990, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !4011, file: !3990, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !4011, file: !3990, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !4011, file: !3990, line: 450, baseType: !4198, size: 16, offset: 15792)
!4198 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !3990, line: 206, baseType: !299)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !4011, file: !3990, line: 451, baseType: !730, size: 32, offset: 15808)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !4011, file: !3990, line: 453, baseType: !4201, size: 512, offset: 15840)
!4201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 512, elements: !1718)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !4011, file: !3990, line: 454, baseType: !617, size: 64, offset: 16384)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !4011, file: !3990, line: 455, baseType: !324, size: 64, offset: 16448)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !4011, file: !3990, line: 456, baseType: !181, size: 32, offset: 16512)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !4011, file: !3990, line: 457, baseType: !4206, size: 1088, offset: 16576)
!4206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 1088, elements: !4158)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !4011, file: !3990, line: 458, baseType: !4206, size: 1088, offset: 17664)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !4011, file: !3990, line: 469, baseType: !310, size: 64, offset: 18752)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !4011, file: !3990, line: 471, baseType: !4210, size: 64, offset: 18816)
!4210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4211, size: 64)
!4211 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !3990, line: 304, flags: DIFlagFwdDecl)
!4212 = !DIDerivedType(tag: DW_TAG_member, scope: !4011, file: !3990, line: 478, baseType: !4213, size: 64, offset: 18880)
!4213 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4011, file: !3990, line: 478, size: 64, elements: !4214)
!4214 = !{!4215, !4218}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4213, file: !3990, line: 479, baseType: !4216, size: 64)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !3990, line: 305, flags: DIFlagFwdDecl)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4213, file: !3990, line: 480, baseType: !4010, size: 64)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !4011, file: !3990, line: 482, baseType: !842, size: 16, offset: 18944)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !4011, file: !3990, line: 483, baseType: !1335, size: 8, offset: 18960)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !4011, file: !3990, line: 497, baseType: !842, size: 16, offset: 18976)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !4011, file: !3990, line: 498, baseType: !2108, size: 64, offset: 19008)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !4011, file: !3990, line: 499, baseType: !304, size: 64, offset: 19072)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !4011, file: !3990, line: 500, baseType: !257, size: 64, offset: 19136)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !4011, file: !3990, line: 502, baseType: !133, size: 64, offset: 19200)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3989, file: !3990, line: 863, baseType: !4227, size: 64, offset: 320)
!4227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4228, size: 64)
!4228 = !DISubroutineType(types: !4229)
!4229 = !{null, !4010}
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3989, file: !3990, line: 864, baseType: !4231, size: 64, offset: 384)
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = !DISubroutineType(types: !4233)
!4233 = !{!181, !4010, !3469}
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3989, file: !3990, line: 865, baseType: !4235, size: 64, offset: 448)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = !DISubroutineType(types: !4237)
!4237 = !{!181, !4010}
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3989, file: !3990, line: 866, baseType: !4227, size: 64, offset: 512)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !3989, file: !3990, line: 867, baseType: !4240, size: 64, offset: 576)
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4241, size: 64)
!4241 = !DISubroutineType(types: !4242)
!4242 = !{!181, !4010, !181}
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !3989, file: !3990, line: 868, baseType: !4244, size: 64, offset: 640)
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4246)
!4246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !3990, line: 795, size: 384, elements: !4247)
!4247 = !{!4248, !4253, !4257, !4258, !4259, !4260}
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4246, file: !3990, line: 797, baseType: !4249, size: 64)
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4250, size: 64)
!4250 = !DISubroutineType(types: !4251)
!4251 = !{!4252, !4010, !4152}
!4252 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !3990, line: 772, baseType: !7)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4246, file: !3990, line: 801, baseType: !4254, size: 64, offset: 64)
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = !DISubroutineType(types: !4256)
!4256 = !{!4252, !4010}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4246, file: !3990, line: 804, baseType: !4254, size: 64, offset: 128)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4246, file: !3990, line: 807, baseType: !4227, size: 64, offset: 192)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4246, file: !3990, line: 808, baseType: !4227, size: 64, offset: 256)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4246, file: !3990, line: 811, baseType: !4227, size: 64, offset: 320)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3989, file: !3990, line: 869, baseType: !310, size: 64, offset: 704)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3989, file: !3990, line: 870, baseType: !3427, size: 1152, offset: 768)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !3989, file: !3990, line: 871, baseType: !4264, size: 128, offset: 1920)
!4264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !3990, line: 759, size: 128, elements: !4265)
!4265 = !{!4266, !4267}
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4264, file: !3990, line: 760, baseType: !216)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4264, file: !3990, line: 761, baseType: !202, size: 128)
!4268 = !DIGlobalVariableExpression(var: !4269, expr: !DIExpression())
!4269 = distinct !DIGlobalVariable(name: "apci1500_pci_table", scope: !2, file: !3, line: 871, type: !4270, isLocal: true, isDefinition: true)
!4270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3996, size: 512, elements: !1552)
!4271 = !{!"rsp"}
!4272 = !{i32 7, !"Dwarf Version", i32 4}
!4273 = !{i32 2, !"Debug Info Version", i32 3}
!4274 = !{i32 1, !"wchar_size", i32 2}
!4275 = !{i32 1, !"Code Model", i32 2}
!4276 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4277 = distinct !DISubprogram(name: "apci1500_driver_init", scope: !3, file: !3, line: 883, type: !4278, scopeLine: 883, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !230)
!4278 = !DISubroutineType(types: !4279)
!4279 = !{!181}
!4280 = !DILocation(line: 883, column: 1, scope: !4277)
!4281 = distinct !DISubprogram(name: "apci1500_driver_exit", scope: !3, file: !3, line: 883, type: !140, scopeLine: 883, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !230)
!4282 = !DILocation(line: 883, column: 1, scope: !4281)
!4283 = distinct !DISubprogram(name: "apci1500_detach", scope: !3, file: !3, line: 849, type: !3960, scopeLine: 850, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !230)
!4284 = !DILocalVariable(name: "dev", arg: 1, scope: !4283, file: !3, line: 849, type: !182)
!4285 = !DILocation(line: 849, column: 51, scope: !4283)
!4286 = !DILocalVariable(name: "devpriv", scope: !4283, file: !3, line: 851, type: !4287)
!4287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4288, size: 64)
!4288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apci1500_private", file: !3, line: 43, size: 384, elements: !4289)
!4289 = !{!4290, !4291, !4292, !4293, !4295, !4296}
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "amcc", scope: !4288, file: !3, line: 44, baseType: !133, size: 64)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "addon", scope: !4288, file: !3, line: 45, baseType: !133, size: 64, offset: 64)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "clk_src", scope: !4288, file: !3, line: 47, baseType: !7, size: 32, offset: 128)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4288, file: !3, line: 50, baseType: !4294, size: 64, offset: 160)
!4294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !1552)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !4288, file: !3, line: 51, baseType: !4294, size: 64, offset: 224)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !4288, file: !3, line: 52, baseType: !4294, size: 64, offset: 288)
!4297 = !DILocation(line: 851, column: 27, scope: !4283)
!4298 = !DILocation(line: 851, column: 37, scope: !4283)
!4299 = !DILocation(line: 851, column: 42, scope: !4283)
!4300 = !DILocation(line: 853, column: 6, scope: !4301)
!4301 = distinct !DILexicalBlock(scope: !4283, file: !3, line: 853, column: 6)
!4302 = !DILocation(line: 853, column: 15, scope: !4301)
!4303 = !DILocation(line: 853, column: 6, scope: !4283)
!4304 = !DILocation(line: 854, column: 13, scope: !4301)
!4305 = !DILocation(line: 854, column: 22, scope: !4301)
!4306 = !DILocation(line: 854, column: 27, scope: !4301)
!4307 = !DILocation(line: 854, column: 3, scope: !4301)
!4308 = !DILocation(line: 855, column: 20, scope: !4283)
!4309 = !DILocation(line: 855, column: 2, scope: !4283)
!4310 = !DILocation(line: 856, column: 1, scope: !4283)
!4311 = distinct !DISubprogram(name: "apci1500_auto_attach", scope: !3, file: !3, line: 762, type: !3980, scopeLine: 764, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !230)
!4312 = !DILocalVariable(name: "dev", arg: 1, scope: !4311, file: !3, line: 762, type: !182)
!4313 = !DILocation(line: 762, column: 55, scope: !4311)
!4314 = !DILocalVariable(name: "context", arg: 2, scope: !4311, file: !3, line: 763, type: !133)
!4315 = !DILocation(line: 763, column: 19, scope: !4311)
!4316 = !DILocalVariable(name: "pcidev", scope: !4311, file: !3, line: 765, type: !4010)
!4317 = !DILocation(line: 765, column: 18, scope: !4311)
!4318 = !DILocation(line: 765, column: 45, scope: !4311)
!4319 = !DILocation(line: 765, column: 27, scope: !4311)
!4320 = !DILocalVariable(name: "devpriv", scope: !4311, file: !3, line: 766, type: !4287)
!4321 = !DILocation(line: 766, column: 27, scope: !4311)
!4322 = !DILocalVariable(name: "s", scope: !4311, file: !3, line: 767, type: !3814)
!4323 = !DILocation(line: 767, column: 27, scope: !4311)
!4324 = !DILocalVariable(name: "ret", scope: !4311, file: !3, line: 768, type: !181)
!4325 = !DILocation(line: 768, column: 6, scope: !4311)
!4326 = !DILocation(line: 770, column: 33, scope: !4311)
!4327 = !DILocation(line: 770, column: 12, scope: !4311)
!4328 = !DILocation(line: 770, column: 10, scope: !4311)
!4329 = !DILocation(line: 771, column: 7, scope: !4330)
!4330 = distinct !DILexicalBlock(scope: !4311, file: !3, line: 771, column: 6)
!4331 = !DILocation(line: 771, column: 6, scope: !4311)
!4332 = !DILocation(line: 772, column: 3, scope: !4330)
!4333 = !DILocation(line: 774, column: 26, scope: !4311)
!4334 = !DILocation(line: 774, column: 8, scope: !4311)
!4335 = !DILocation(line: 774, column: 6, scope: !4311)
!4336 = !DILocation(line: 775, column: 6, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !4311, file: !3, line: 775, column: 6)
!4338 = !DILocation(line: 775, column: 6, scope: !4311)
!4339 = !DILocation(line: 776, column: 10, scope: !4337)
!4340 = !DILocation(line: 776, column: 3, scope: !4337)
!4341 = !DILocation(line: 778, column: 16, scope: !4311)
!4342 = !DILocation(line: 778, column: 2, scope: !4311)
!4343 = !DILocation(line: 778, column: 7, scope: !4311)
!4344 = !DILocation(line: 778, column: 14, scope: !4311)
!4345 = !DILocation(line: 779, column: 18, scope: !4311)
!4346 = !DILocation(line: 779, column: 2, scope: !4311)
!4347 = !DILocation(line: 779, column: 11, scope: !4311)
!4348 = !DILocation(line: 779, column: 16, scope: !4311)
!4349 = !DILocation(line: 780, column: 19, scope: !4311)
!4350 = !DILocation(line: 780, column: 2, scope: !4311)
!4351 = !DILocation(line: 780, column: 11, scope: !4311)
!4352 = !DILocation(line: 780, column: 17, scope: !4311)
!4353 = !DILocation(line: 782, column: 14, scope: !4311)
!4354 = !DILocation(line: 782, column: 2, scope: !4311)
!4355 = !DILocation(line: 784, column: 6, scope: !4356)
!4356 = distinct !DILexicalBlock(scope: !4311, file: !3, line: 784, column: 6)
!4357 = !DILocation(line: 784, column: 14, scope: !4356)
!4358 = !DILocation(line: 784, column: 18, scope: !4356)
!4359 = !DILocation(line: 784, column: 6, scope: !4311)
!4360 = !DILocation(line: 785, column: 21, scope: !4361)
!4361 = distinct !DILexicalBlock(scope: !4356, file: !3, line: 784, column: 23)
!4362 = !DILocation(line: 785, column: 29, scope: !4361)
!4363 = !DILocation(line: 786, column: 7, scope: !4361)
!4364 = !DILocation(line: 786, column: 12, scope: !4361)
!4365 = !DILocation(line: 786, column: 24, scope: !4361)
!4366 = !DILocation(line: 785, column: 9, scope: !4361)
!4367 = !DILocation(line: 785, column: 7, scope: !4361)
!4368 = !DILocation(line: 787, column: 7, scope: !4369)
!4369 = distinct !DILexicalBlock(scope: !4361, file: !3, line: 787, column: 7)
!4370 = !DILocation(line: 787, column: 11, scope: !4369)
!4371 = !DILocation(line: 787, column: 7, scope: !4361)
!4372 = !DILocation(line: 788, column: 15, scope: !4369)
!4373 = !DILocation(line: 788, column: 23, scope: !4369)
!4374 = !DILocation(line: 788, column: 4, scope: !4369)
!4375 = !DILocation(line: 788, column: 9, scope: !4369)
!4376 = !DILocation(line: 788, column: 13, scope: !4369)
!4377 = !DILocation(line: 789, column: 2, scope: !4361)
!4378 = !DILocation(line: 791, column: 32, scope: !4311)
!4379 = !DILocation(line: 791, column: 8, scope: !4311)
!4380 = !DILocation(line: 791, column: 6, scope: !4311)
!4381 = !DILocation(line: 792, column: 6, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4311, file: !3, line: 792, column: 6)
!4383 = !DILocation(line: 792, column: 6, scope: !4311)
!4384 = !DILocation(line: 793, column: 10, scope: !4382)
!4385 = !DILocation(line: 793, column: 3, scope: !4382)
!4386 = !DILocation(line: 796, column: 7, scope: !4311)
!4387 = !DILocation(line: 796, column: 12, scope: !4311)
!4388 = !DILocation(line: 796, column: 4, scope: !4311)
!4389 = !DILocation(line: 797, column: 2, scope: !4311)
!4390 = !DILocation(line: 797, column: 5, scope: !4311)
!4391 = !DILocation(line: 797, column: 11, scope: !4311)
!4392 = !DILocation(line: 798, column: 2, scope: !4311)
!4393 = !DILocation(line: 798, column: 5, scope: !4311)
!4394 = !DILocation(line: 798, column: 18, scope: !4311)
!4395 = !DILocation(line: 799, column: 2, scope: !4311)
!4396 = !DILocation(line: 799, column: 5, scope: !4311)
!4397 = !DILocation(line: 799, column: 12, scope: !4311)
!4398 = !DILocation(line: 800, column: 2, scope: !4311)
!4399 = !DILocation(line: 800, column: 5, scope: !4311)
!4400 = !DILocation(line: 800, column: 13, scope: !4311)
!4401 = !DILocation(line: 801, column: 2, scope: !4311)
!4402 = !DILocation(line: 801, column: 5, scope: !4311)
!4403 = !DILocation(line: 801, column: 17, scope: !4311)
!4404 = !DILocation(line: 802, column: 2, scope: !4311)
!4405 = !DILocation(line: 802, column: 5, scope: !4311)
!4406 = !DILocation(line: 802, column: 15, scope: !4311)
!4407 = !DILocation(line: 803, column: 6, scope: !4408)
!4408 = distinct !DILexicalBlock(scope: !4311, file: !3, line: 803, column: 6)
!4409 = !DILocation(line: 803, column: 11, scope: !4408)
!4410 = !DILocation(line: 803, column: 6, scope: !4311)
!4411 = !DILocation(line: 804, column: 22, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !4408, file: !3, line: 803, column: 16)
!4413 = !DILocation(line: 804, column: 3, scope: !4412)
!4414 = !DILocation(line: 804, column: 8, scope: !4412)
!4415 = !DILocation(line: 804, column: 20, scope: !4412)
!4416 = !DILocation(line: 805, column: 3, scope: !4412)
!4417 = !DILocation(line: 805, column: 6, scope: !4412)
!4418 = !DILocation(line: 805, column: 19, scope: !4412)
!4419 = !DILocation(line: 806, column: 3, scope: !4412)
!4420 = !DILocation(line: 806, column: 6, scope: !4412)
!4421 = !DILocation(line: 806, column: 19, scope: !4412)
!4422 = !DILocation(line: 807, column: 3, scope: !4412)
!4423 = !DILocation(line: 807, column: 6, scope: !4412)
!4424 = !DILocation(line: 807, column: 18, scope: !4412)
!4425 = !DILocation(line: 808, column: 3, scope: !4412)
!4426 = !DILocation(line: 808, column: 6, scope: !4412)
!4427 = !DILocation(line: 808, column: 17, scope: !4412)
!4428 = !DILocation(line: 809, column: 3, scope: !4412)
!4429 = !DILocation(line: 809, column: 6, scope: !4412)
!4430 = !DILocation(line: 809, column: 13, scope: !4412)
!4431 = !DILocation(line: 810, column: 3, scope: !4412)
!4432 = !DILocation(line: 810, column: 6, scope: !4412)
!4433 = !DILocation(line: 810, column: 13, scope: !4412)
!4434 = !DILocation(line: 811, column: 2, scope: !4412)
!4435 = !DILocation(line: 814, column: 7, scope: !4311)
!4436 = !DILocation(line: 814, column: 12, scope: !4311)
!4437 = !DILocation(line: 814, column: 4, scope: !4311)
!4438 = !DILocation(line: 815, column: 2, scope: !4311)
!4439 = !DILocation(line: 815, column: 5, scope: !4311)
!4440 = !DILocation(line: 815, column: 11, scope: !4311)
!4441 = !DILocation(line: 816, column: 2, scope: !4311)
!4442 = !DILocation(line: 816, column: 5, scope: !4311)
!4443 = !DILocation(line: 816, column: 18, scope: !4311)
!4444 = !DILocation(line: 817, column: 2, scope: !4311)
!4445 = !DILocation(line: 817, column: 5, scope: !4311)
!4446 = !DILocation(line: 817, column: 12, scope: !4311)
!4447 = !DILocation(line: 818, column: 2, scope: !4311)
!4448 = !DILocation(line: 818, column: 5, scope: !4311)
!4449 = !DILocation(line: 818, column: 13, scope: !4311)
!4450 = !DILocation(line: 819, column: 2, scope: !4311)
!4451 = !DILocation(line: 819, column: 5, scope: !4311)
!4452 = !DILocation(line: 819, column: 17, scope: !4311)
!4453 = !DILocation(line: 820, column: 2, scope: !4311)
!4454 = !DILocation(line: 820, column: 5, scope: !4311)
!4455 = !DILocation(line: 820, column: 15, scope: !4311)
!4456 = !DILocation(line: 823, column: 12, scope: !4311)
!4457 = !DILocation(line: 823, column: 21, scope: !4311)
!4458 = !DILocation(line: 823, column: 27, scope: !4311)
!4459 = !DILocation(line: 823, column: 2, scope: !4311)
!4460 = !DILocation(line: 826, column: 7, scope: !4311)
!4461 = !DILocation(line: 826, column: 12, scope: !4311)
!4462 = !DILocation(line: 826, column: 4, scope: !4311)
!4463 = !DILocation(line: 827, column: 2, scope: !4311)
!4464 = !DILocation(line: 827, column: 5, scope: !4311)
!4465 = !DILocation(line: 827, column: 11, scope: !4311)
!4466 = !DILocation(line: 828, column: 2, scope: !4311)
!4467 = !DILocation(line: 828, column: 5, scope: !4311)
!4468 = !DILocation(line: 828, column: 18, scope: !4311)
!4469 = !DILocation(line: 829, column: 2, scope: !4311)
!4470 = !DILocation(line: 829, column: 5, scope: !4311)
!4471 = !DILocation(line: 829, column: 12, scope: !4311)
!4472 = !DILocation(line: 830, column: 2, scope: !4311)
!4473 = !DILocation(line: 830, column: 5, scope: !4311)
!4474 = !DILocation(line: 830, column: 13, scope: !4311)
!4475 = !DILocation(line: 831, column: 2, scope: !4311)
!4476 = !DILocation(line: 831, column: 5, scope: !4311)
!4477 = !DILocation(line: 831, column: 17, scope: !4311)
!4478 = !DILocation(line: 832, column: 2, scope: !4311)
!4479 = !DILocation(line: 832, column: 5, scope: !4311)
!4480 = !DILocation(line: 832, column: 17, scope: !4311)
!4481 = !DILocation(line: 833, column: 2, scope: !4311)
!4482 = !DILocation(line: 833, column: 5, scope: !4311)
!4483 = !DILocation(line: 833, column: 16, scope: !4311)
!4484 = !DILocation(line: 834, column: 2, scope: !4311)
!4485 = !DILocation(line: 834, column: 5, scope: !4311)
!4486 = !DILocation(line: 834, column: 15, scope: !4311)
!4487 = !DILocation(line: 837, column: 6, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4311, file: !3, line: 837, column: 6)
!4489 = !DILocation(line: 837, column: 11, scope: !4488)
!4490 = !DILocation(line: 837, column: 6, scope: !4311)
!4491 = !DILocation(line: 839, column: 8, scope: !4492)
!4492 = distinct !DILexicalBlock(scope: !4488, file: !3, line: 837, column: 16)
!4493 = !DILocation(line: 839, column: 17, scope: !4492)
!4494 = !DILocation(line: 839, column: 22, scope: !4492)
!4495 = !DILocation(line: 838, column: 3, scope: !4492)
!4496 = !DILocation(line: 840, column: 7, scope: !4492)
!4497 = !DILocation(line: 840, column: 16, scope: !4492)
!4498 = !DILocation(line: 840, column: 21, scope: !4492)
!4499 = !DILocation(line: 840, column: 3, scope: !4492)
!4500 = !DILocation(line: 841, column: 7, scope: !4492)
!4501 = !DILocation(line: 841, column: 16, scope: !4492)
!4502 = !DILocation(line: 841, column: 21, scope: !4492)
!4503 = !DILocation(line: 841, column: 3, scope: !4492)
!4504 = !DILocation(line: 843, column: 8, scope: !4492)
!4505 = !DILocation(line: 843, column: 17, scope: !4492)
!4506 = !DILocation(line: 843, column: 22, scope: !4492)
!4507 = !DILocation(line: 842, column: 3, scope: !4492)
!4508 = !DILocation(line: 844, column: 2, scope: !4492)
!4509 = !DILocation(line: 846, column: 2, scope: !4311)
!4510 = !DILocation(line: 847, column: 1, scope: !4311)
!4511 = distinct !DISubprogram(name: "outl", scope: !4512, file: !4512, line: 336, type: !4513, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !230)
!4512 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!4513 = !DISubroutineType(types: !4514)
!4514 = !{null, !7, !181}
!4515 = !DILocalVariable(name: "value", arg: 1, scope: !4511, file: !4512, line: 336, type: !7)
!4516 = !DILocation(line: 336, column: 1, scope: !4511)
!4517 = !DILocalVariable(name: "port", arg: 2, scope: !4511, file: !4512, line: 336, type: !181)
!4518 = !{i32 -2143393332}
!4519 = distinct !DISubprogram(name: "z8536_reset", scope: !3, file: !3, line: 79, type: !3960, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !230)
!4520 = !DILocalVariable(name: "lock", arg: 1, scope: !4521, file: !4522, line: 407, type: !1047)
!4521 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !4522, file: !4522, line: 407, type: !4523, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !230)
!4522 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!4523 = !DISubroutineType(types: !4524)
!4524 = !{null, !1047, !133}
!4525 = !DILocation(line: 407, column: 64, scope: !4521, inlinedAt: !4526)
!4526 = distinct !DILocation(line: 94, column: 2, scope: !4519)
!4527 = !DILocalVariable(name: "flags", arg: 2, scope: !4521, file: !4522, line: 407, type: !133)
!4528 = !DILocation(line: 407, column: 84, scope: !4521, inlinedAt: !4526)
!4529 = !DILocalVariable(name: "lock", arg: 1, scope: !4530, file: !4522, line: 327, type: !1047)
!4530 = distinct !DISubprogram(name: "spinlock_check", scope: !4522, file: !4522, line: 327, type: !4531, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !230)
!4531 = !DISubroutineType(types: !4532)
!4532 = !{!4533, !1047}
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!4534 = !DILocation(line: 327, column: 67, scope: !4530, inlinedAt: !4535)
!4535 = distinct !DILocation(line: 87, column: 2, scope: !4536)
!4536 = distinct !DILexicalBlock(scope: !4537, file: !3, line: 87, column: 2)
!4537 = distinct !DILexicalBlock(scope: !4538, file: !3, line: 87, column: 2)
!4538 = distinct !DILexicalBlock(scope: !4539, file: !3, line: 87, column: 2)
!4539 = distinct !DILexicalBlock(scope: !4540, file: !3, line: 87, column: 2)
!4540 = distinct !DILexicalBlock(scope: !4519, file: !3, line: 87, column: 2)
!4541 = !DILocalVariable(name: "dev", arg: 1, scope: !4519, file: !3, line: 79, type: !182)
!4542 = !DILocation(line: 79, column: 47, scope: !4519)
!4543 = !DILocalVariable(name: "flags", scope: !4519, file: !3, line: 81, type: !133)
!4544 = !DILocation(line: 81, column: 16, scope: !4519)
!4545 = !DILocation(line: 87, column: 2, scope: !4519)
!4546 = !DILocation(line: 87, column: 2, scope: !4540)
!4547 = !DILocalVariable(name: "__dummy", scope: !4548, file: !3, line: 87, type: !133)
!4548 = distinct !DILexicalBlock(scope: !4539, file: !3, line: 87, column: 2)
!4549 = !DILocation(line: 87, column: 2, scope: !4548)
!4550 = !DILocalVariable(name: "__dummy2", scope: !4548, file: !3, line: 87, type: !133)
!4551 = !DILocation(line: 87, column: 2, scope: !4539)
!4552 = !DILocation(line: 87, column: 2, scope: !4538)
!4553 = !DILocation(line: 87, column: 2, scope: !4554)
!4554 = distinct !DILexicalBlock(scope: !4538, file: !3, line: 87, column: 2)
!4555 = !DILocalVariable(name: "__dummy", scope: !4556, file: !3, line: 87, type: !133)
!4556 = distinct !DILexicalBlock(scope: !4557, file: !3, line: 87, column: 2)
!4557 = distinct !DILexicalBlock(scope: !4554, file: !3, line: 87, column: 2)
!4558 = !DILocation(line: 87, column: 2, scope: !4556)
!4559 = !DILocalVariable(name: "__dummy2", scope: !4556, file: !3, line: 87, type: !133)
!4560 = !DILocation(line: 87, column: 2, scope: !4557)
!4561 = !DILocation(line: 87, column: 2, scope: !4537)
!4562 = !{i32 -2141608645}
!4563 = !DILocation(line: 87, column: 2, scope: !4536)
!4564 = !DILocation(line: 329, column: 10, scope: !4530, inlinedAt: !4535)
!4565 = !DILocation(line: 329, column: 16, scope: !4530, inlinedAt: !4535)
!4566 = !DILocation(line: 88, column: 6, scope: !4519)
!4567 = !DILocation(line: 88, column: 11, scope: !4519)
!4568 = !DILocation(line: 88, column: 18, scope: !4519)
!4569 = !DILocation(line: 88, column: 2, scope: !4519)
!4570 = !DILocation(line: 89, column: 10, scope: !4519)
!4571 = !DILocation(line: 89, column: 15, scope: !4519)
!4572 = !DILocation(line: 89, column: 22, scope: !4519)
!4573 = !DILocation(line: 89, column: 2, scope: !4519)
!4574 = !DILocation(line: 90, column: 6, scope: !4519)
!4575 = !DILocation(line: 90, column: 11, scope: !4519)
!4576 = !DILocation(line: 90, column: 18, scope: !4519)
!4577 = !DILocation(line: 90, column: 2, scope: !4519)
!4578 = !DILocation(line: 91, column: 10, scope: !4519)
!4579 = !DILocation(line: 91, column: 15, scope: !4519)
!4580 = !DILocation(line: 91, column: 22, scope: !4519)
!4581 = !DILocation(line: 91, column: 2, scope: !4519)
!4582 = !DILocation(line: 92, column: 10, scope: !4519)
!4583 = !DILocation(line: 92, column: 15, scope: !4519)
!4584 = !DILocation(line: 92, column: 22, scope: !4519)
!4585 = !DILocation(line: 92, column: 2, scope: !4519)
!4586 = !DILocation(line: 93, column: 10, scope: !4519)
!4587 = !DILocation(line: 93, column: 15, scope: !4519)
!4588 = !DILocation(line: 93, column: 22, scope: !4519)
!4589 = !DILocation(line: 93, column: 2, scope: !4519)
!4590 = !DILocation(line: 94, column: 26, scope: !4519)
!4591 = !DILocation(line: 94, column: 31, scope: !4519)
!4592 = !DILocation(line: 94, column: 41, scope: !4519)
!4593 = !DILocalVariable(name: "__dummy", scope: !4594, file: !4522, line: 409, type: !133)
!4594 = distinct !DILexicalBlock(scope: !4595, file: !4522, line: 409, column: 2)
!4595 = distinct !DILexicalBlock(scope: !4521, file: !4522, line: 409, column: 2)
!4596 = !DILocation(line: 409, column: 2, scope: !4594, inlinedAt: !4526)
!4597 = !DILocalVariable(name: "__dummy2", scope: !4594, file: !4522, line: 409, type: !133)
!4598 = !DILocalVariable(name: "__dummy", scope: !4599, file: !4522, line: 409, type: !133)
!4599 = distinct !DILexicalBlock(scope: !4600, file: !4522, line: 409, column: 2)
!4600 = distinct !DILexicalBlock(scope: !4601, file: !4522, line: 409, column: 2)
!4601 = distinct !DILexicalBlock(scope: !4602, file: !4522, line: 409, column: 2)
!4602 = distinct !DILexicalBlock(scope: !4595, file: !4522, line: 409, column: 2)
!4603 = !DILocation(line: 409, column: 2, scope: !4599, inlinedAt: !4526)
!4604 = !DILocalVariable(name: "__dummy2", scope: !4599, file: !4522, line: 409, type: !133)
!4605 = !DILocation(line: 409, column: 2, scope: !4600, inlinedAt: !4526)
!4606 = !DILocation(line: 409, column: 2, scope: !4607, inlinedAt: !4526)
!4607 = distinct !DILexicalBlock(scope: !4602, file: !4522, line: 409, column: 2)
!4608 = !{i32 -2145454111}
!4609 = !DILocation(line: 409, column: 2, scope: !4610, inlinedAt: !4526)
!4610 = distinct !DILexicalBlock(scope: !4607, file: !4522, line: 409, column: 2)
!4611 = !DILocation(line: 97, column: 14, scope: !4519)
!4612 = !DILocation(line: 97, column: 2, scope: !4519)
!4613 = !DILocation(line: 103, column: 14, scope: !4519)
!4614 = !DILocation(line: 103, column: 2, scope: !4519)
!4615 = !DILocation(line: 107, column: 14, scope: !4519)
!4616 = !DILocation(line: 107, column: 2, scope: !4519)
!4617 = !DILocation(line: 108, column: 14, scope: !4519)
!4618 = !DILocation(line: 108, column: 2, scope: !4519)
!4619 = !DILocation(line: 117, column: 14, scope: !4519)
!4620 = !DILocation(line: 117, column: 2, scope: !4519)
!4621 = !DILocation(line: 121, column: 14, scope: !4519)
!4622 = !DILocation(line: 121, column: 2, scope: !4519)
!4623 = !DILocation(line: 122, column: 14, scope: !4519)
!4624 = !DILocation(line: 122, column: 2, scope: !4519)
!4625 = !DILocation(line: 127, column: 14, scope: !4519)
!4626 = !DILocation(line: 127, column: 2, scope: !4519)
!4627 = !DILocation(line: 128, column: 14, scope: !4519)
!4628 = !DILocation(line: 128, column: 2, scope: !4519)
!4629 = !DILocation(line: 136, column: 14, scope: !4519)
!4630 = !DILocation(line: 136, column: 2, scope: !4519)
!4631 = !DILocation(line: 137, column: 14, scope: !4519)
!4632 = !DILocation(line: 137, column: 2, scope: !4519)
!4633 = !DILocation(line: 139, column: 14, scope: !4519)
!4634 = !DILocation(line: 139, column: 2, scope: !4519)
!4635 = !DILocation(line: 140, column: 14, scope: !4519)
!4636 = !DILocation(line: 140, column: 2, scope: !4519)
!4637 = !DILocation(line: 142, column: 14, scope: !4519)
!4638 = !DILocation(line: 142, column: 2, scope: !4519)
!4639 = !DILocation(line: 143, column: 14, scope: !4519)
!4640 = !DILocation(line: 143, column: 2, scope: !4519)
!4641 = !DILocation(line: 145, column: 14, scope: !4519)
!4642 = !DILocation(line: 145, column: 2, scope: !4519)
!4643 = !DILocation(line: 146, column: 14, scope: !4519)
!4644 = !DILocation(line: 146, column: 2, scope: !4519)
!4645 = !DILocation(line: 148, column: 14, scope: !4519)
!4646 = !DILocation(line: 148, column: 2, scope: !4519)
!4647 = !DILocation(line: 149, column: 14, scope: !4519)
!4648 = !DILocation(line: 149, column: 2, scope: !4519)
!4649 = !DILocation(line: 152, column: 14, scope: !4519)
!4650 = !DILocation(line: 152, column: 2, scope: !4519)
!4651 = !DILocation(line: 153, column: 1, scope: !4519)
!4652 = distinct !DISubprogram(name: "request_irq", scope: !4072, file: !4072, line: 157, type: !4653, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !230)
!4653 = !DISubroutineType(types: !4654)
!4654 = !{!181, !7, !4655, !133, !172, !191}
!4655 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !4072, line: 92, baseType: !4656)
!4656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4657, size: 64)
!4657 = !DISubroutineType(types: !4658)
!4658 = !{!4659, !181, !191}
!4659 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !117, line: 17, baseType: !116)
!4660 = !DILocalVariable(name: "irq", arg: 1, scope: !4652, file: !4072, line: 157, type: !7)
!4661 = !DILocation(line: 157, column: 26, scope: !4652)
!4662 = !DILocalVariable(name: "handler", arg: 2, scope: !4652, file: !4072, line: 157, type: !4655)
!4663 = !DILocation(line: 157, column: 45, scope: !4652)
!4664 = !DILocalVariable(name: "flags", arg: 3, scope: !4652, file: !4072, line: 157, type: !133)
!4665 = !DILocation(line: 157, column: 68, scope: !4652)
!4666 = !DILocalVariable(name: "name", arg: 4, scope: !4652, file: !4072, line: 158, type: !172)
!4667 = !DILocation(line: 158, column: 18, scope: !4652)
!4668 = !DILocalVariable(name: "dev", arg: 5, scope: !4652, file: !4072, line: 158, type: !191)
!4669 = !DILocation(line: 158, column: 30, scope: !4652)
!4670 = !DILocation(line: 160, column: 30, scope: !4652)
!4671 = !DILocation(line: 160, column: 35, scope: !4652)
!4672 = !DILocation(line: 160, column: 50, scope: !4652)
!4673 = !DILocation(line: 160, column: 57, scope: !4652)
!4674 = !DILocation(line: 160, column: 63, scope: !4652)
!4675 = !DILocation(line: 160, column: 9, scope: !4652)
!4676 = !DILocation(line: 160, column: 2, scope: !4652)
!4677 = distinct !DISubprogram(name: "apci1500_interrupt", scope: !3, file: !3, line: 206, type: !4657, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !230)
!4678 = !DILocalVariable(name: "irq", arg: 1, scope: !4677, file: !3, line: 206, type: !181)
!4679 = !DILocation(line: 206, column: 43, scope: !4677)
!4680 = !DILocalVariable(name: "d", arg: 2, scope: !4677, file: !3, line: 206, type: !191)
!4681 = !DILocation(line: 206, column: 54, scope: !4677)
!4682 = !DILocalVariable(name: "dev", scope: !4677, file: !3, line: 208, type: !182)
!4683 = !DILocation(line: 208, column: 24, scope: !4677)
!4684 = !DILocation(line: 208, column: 30, scope: !4677)
!4685 = !DILocalVariable(name: "devpriv", scope: !4677, file: !3, line: 209, type: !4287)
!4686 = !DILocation(line: 209, column: 27, scope: !4677)
!4687 = !DILocation(line: 209, column: 37, scope: !4677)
!4688 = !DILocation(line: 209, column: 42, scope: !4677)
!4689 = !DILocalVariable(name: "s", scope: !4677, file: !3, line: 210, type: !3814)
!4690 = !DILocation(line: 210, column: 27, scope: !4677)
!4691 = !DILocation(line: 210, column: 31, scope: !4677)
!4692 = !DILocation(line: 210, column: 36, scope: !4677)
!4693 = !DILocalVariable(name: "status", scope: !4677, file: !3, line: 211, type: !7)
!4694 = !DILocation(line: 211, column: 15, scope: !4677)
!4695 = !DILocalVariable(name: "val", scope: !4677, file: !3, line: 212, type: !7)
!4696 = !DILocation(line: 212, column: 15, scope: !4677)
!4697 = !DILocation(line: 214, column: 12, scope: !4677)
!4698 = !DILocation(line: 214, column: 21, scope: !4677)
!4699 = !DILocation(line: 214, column: 26, scope: !4677)
!4700 = !DILocation(line: 214, column: 8, scope: !4677)
!4701 = !DILocation(line: 214, column: 6, scope: !4677)
!4702 = !DILocation(line: 215, column: 8, scope: !4703)
!4703 = distinct !DILexicalBlock(scope: !4677, file: !3, line: 215, column: 6)
!4704 = !DILocation(line: 215, column: 12, scope: !4703)
!4705 = !DILocation(line: 215, column: 6, scope: !4677)
!4706 = !DILocation(line: 216, column: 3, scope: !4703)
!4707 = !DILocation(line: 218, column: 23, scope: !4708)
!4708 = distinct !DILexicalBlock(scope: !4677, file: !3, line: 218, column: 6)
!4709 = !DILocation(line: 218, column: 6, scope: !4708)
!4710 = !DILocation(line: 218, column: 6, scope: !4677)
!4711 = !DILocation(line: 219, column: 10, scope: !4708)
!4712 = !DILocation(line: 219, column: 3, scope: !4708)
!4713 = !DILocation(line: 221, column: 23, scope: !4714)
!4714 = distinct !DILexicalBlock(scope: !4677, file: !3, line: 221, column: 6)
!4715 = !DILocation(line: 221, column: 6, scope: !4714)
!4716 = !DILocation(line: 221, column: 6, scope: !4677)
!4717 = !DILocation(line: 223, column: 13, scope: !4718)
!4718 = distinct !DILexicalBlock(scope: !4714, file: !3, line: 221, column: 51)
!4719 = !DILocation(line: 223, column: 18, scope: !4718)
!4720 = !DILocation(line: 223, column: 25, scope: !4718)
!4721 = !DILocation(line: 223, column: 9, scope: !4718)
!4722 = !DILocation(line: 223, column: 7, scope: !4718)
!4723 = !DILocation(line: 224, column: 7, scope: !4718)
!4724 = !DILocation(line: 225, column: 7, scope: !4725)
!4725 = distinct !DILexicalBlock(scope: !4718, file: !3, line: 225, column: 7)
!4726 = !DILocation(line: 225, column: 7, scope: !4718)
!4727 = !DILocation(line: 226, column: 8, scope: !4728)
!4728 = distinct !DILexicalBlock(scope: !4729, file: !3, line: 226, column: 8)
!4729 = distinct !DILexicalBlock(scope: !4725, file: !3, line: 225, column: 12)
!4730 = !DILocation(line: 226, column: 12, scope: !4728)
!4731 = !DILocation(line: 226, column: 8, scope: !4729)
!4732 = !DILocation(line: 227, column: 12, scope: !4728)
!4733 = !DILocation(line: 227, column: 5, scope: !4728)
!4734 = !DILocation(line: 228, column: 8, scope: !4735)
!4735 = distinct !DILexicalBlock(scope: !4729, file: !3, line: 228, column: 8)
!4736 = !DILocation(line: 228, column: 12, scope: !4735)
!4737 = !DILocation(line: 228, column: 8, scope: !4729)
!4738 = !DILocation(line: 229, column: 12, scope: !4735)
!4739 = !DILocation(line: 229, column: 5, scope: !4735)
!4740 = !DILocation(line: 230, column: 3, scope: !4729)
!4741 = !DILocation(line: 231, column: 11, scope: !4742)
!4742 = distinct !DILexicalBlock(scope: !4725, file: !3, line: 230, column: 10)
!4743 = !DILocation(line: 233, column: 2, scope: !4718)
!4744 = !DILocation(line: 250, column: 27, scope: !4677)
!4745 = !DILocation(line: 250, column: 30, scope: !4677)
!4746 = !DILocation(line: 250, column: 2, scope: !4677)
!4747 = !DILocation(line: 251, column: 23, scope: !4677)
!4748 = !DILocation(line: 251, column: 28, scope: !4677)
!4749 = !DILocation(line: 251, column: 2, scope: !4677)
!4750 = !DILocation(line: 253, column: 2, scope: !4677)
!4751 = !DILocation(line: 254, column: 1, scope: !4677)
!4752 = distinct !DISubprogram(name: "apci1500_di_insn_bits", scope: !3, file: !3, line: 559, type: !3911, scopeLine: 563, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !230)
!4753 = !DILocalVariable(name: "dev", arg: 1, scope: !4752, file: !3, line: 559, type: !182)
!4754 = !DILocation(line: 559, column: 56, scope: !4752)
!4755 = !DILocalVariable(name: "s", arg: 2, scope: !4752, file: !3, line: 560, type: !3814)
!4756 = !DILocation(line: 560, column: 31, scope: !4752)
!4757 = !DILocalVariable(name: "insn", arg: 3, scope: !4752, file: !3, line: 561, type: !3913)
!4758 = !DILocation(line: 561, column: 26, scope: !4752)
!4759 = !DILocalVariable(name: "data", arg: 4, scope: !4752, file: !3, line: 562, type: !2666)
!4760 = !DILocation(line: 562, column: 20, scope: !4752)
!4761 = !DILocalVariable(name: "devpriv", scope: !4752, file: !3, line: 564, type: !4287)
!4762 = !DILocation(line: 564, column: 27, scope: !4752)
!4763 = !DILocation(line: 564, column: 37, scope: !4752)
!4764 = !DILocation(line: 564, column: 42, scope: !4752)
!4765 = !DILocation(line: 566, column: 16, scope: !4752)
!4766 = !DILocation(line: 566, column: 25, scope: !4752)
!4767 = !DILocation(line: 566, column: 31, scope: !4752)
!4768 = !DILocation(line: 566, column: 12, scope: !4752)
!4769 = !DILocation(line: 566, column: 2, scope: !4752)
!4770 = !DILocation(line: 566, column: 10, scope: !4752)
!4771 = !DILocation(line: 568, column: 9, scope: !4752)
!4772 = !DILocation(line: 568, column: 15, scope: !4752)
!4773 = !DILocation(line: 568, column: 2, scope: !4752)
!4774 = distinct !DISubprogram(name: "apci1500_di_insn_config", scope: !3, file: !3, line: 546, type: !3911, scopeLine: 550, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !230)
!4775 = !DILocalVariable(name: "dev", arg: 1, scope: !4774, file: !3, line: 546, type: !182)
!4776 = !DILocation(line: 546, column: 58, scope: !4774)
!4777 = !DILocalVariable(name: "s", arg: 2, scope: !4774, file: !3, line: 547, type: !3814)
!4778 = !DILocation(line: 547, column: 33, scope: !4774)
!4779 = !DILocalVariable(name: "insn", arg: 3, scope: !4774, file: !3, line: 548, type: !3913)
!4780 = !DILocation(line: 548, column: 28, scope: !4774)
!4781 = !DILocalVariable(name: "data", arg: 4, scope: !4774, file: !3, line: 549, type: !2666)
!4782 = !DILocation(line: 549, column: 22, scope: !4774)
!4783 = !DILocation(line: 551, column: 10, scope: !4774)
!4784 = !DILocation(line: 551, column: 2, scope: !4774)
!4785 = !DILocation(line: 553, column: 31, scope: !4786)
!4786 = distinct !DILexicalBlock(scope: !4774, file: !3, line: 551, column: 19)
!4787 = !DILocation(line: 553, column: 36, scope: !4786)
!4788 = !DILocation(line: 553, column: 39, scope: !4786)
!4789 = !DILocation(line: 553, column: 45, scope: !4786)
!4790 = !DILocation(line: 553, column: 10, scope: !4786)
!4791 = !DILocation(line: 553, column: 3, scope: !4786)
!4792 = !DILocation(line: 555, column: 3, scope: !4786)
!4793 = !DILocation(line: 557, column: 1, scope: !4774)
!4794 = distinct !DISubprogram(name: "apci1500_di_cmdtest", scope: !3, file: !3, line: 370, type: !3932, scopeLine: 373, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !230)
!4795 = !DILocalVariable(name: "dev", arg: 1, scope: !4794, file: !3, line: 370, type: !182)
!4796 = !DILocation(line: 370, column: 54, scope: !4794)
!4797 = !DILocalVariable(name: "s", arg: 2, scope: !4794, file: !3, line: 371, type: !3814)
!4798 = !DILocation(line: 371, column: 36, scope: !4794)
!4799 = !DILocalVariable(name: "cmd", arg: 3, scope: !4794, file: !3, line: 372, type: !3934)
!4800 = !DILocation(line: 372, column: 30, scope: !4794)
!4801 = !DILocalVariable(name: "err", scope: !4794, file: !3, line: 374, type: !181)
!4802 = !DILocation(line: 374, column: 6, scope: !4794)
!4803 = !DILocation(line: 378, column: 35, scope: !4794)
!4804 = !DILocation(line: 378, column: 40, scope: !4794)
!4805 = !DILocation(line: 378, column: 9, scope: !4794)
!4806 = !DILocation(line: 378, column: 6, scope: !4794)
!4807 = !DILocation(line: 379, column: 35, scope: !4794)
!4808 = !DILocation(line: 379, column: 40, scope: !4794)
!4809 = !DILocation(line: 379, column: 9, scope: !4794)
!4810 = !DILocation(line: 379, column: 6, scope: !4794)
!4811 = !DILocation(line: 380, column: 35, scope: !4794)
!4812 = !DILocation(line: 380, column: 40, scope: !4794)
!4813 = !DILocation(line: 380, column: 9, scope: !4794)
!4814 = !DILocation(line: 380, column: 6, scope: !4794)
!4815 = !DILocation(line: 381, column: 35, scope: !4794)
!4816 = !DILocation(line: 381, column: 40, scope: !4794)
!4817 = !DILocation(line: 381, column: 9, scope: !4794)
!4818 = !DILocation(line: 381, column: 6, scope: !4794)
!4819 = !DILocation(line: 382, column: 35, scope: !4794)
!4820 = !DILocation(line: 382, column: 40, scope: !4794)
!4821 = !DILocation(line: 382, column: 9, scope: !4794)
!4822 = !DILocation(line: 382, column: 6, scope: !4794)
!4823 = !DILocation(line: 384, column: 6, scope: !4824)
!4824 = distinct !DILexicalBlock(scope: !4794, file: !3, line: 384, column: 6)
!4825 = !DILocation(line: 384, column: 6, scope: !4794)
!4826 = !DILocation(line: 385, column: 3, scope: !4824)
!4827 = !DILocation(line: 407, column: 39, scope: !4794)
!4828 = !DILocation(line: 407, column: 44, scope: !4794)
!4829 = !DILocation(line: 407, column: 9, scope: !4794)
!4830 = !DILocation(line: 407, column: 6, scope: !4794)
!4831 = !DILocation(line: 409, column: 38, scope: !4794)
!4832 = !DILocation(line: 409, column: 43, scope: !4794)
!4833 = !DILocation(line: 409, column: 9, scope: !4794)
!4834 = !DILocation(line: 409, column: 6, scope: !4794)
!4835 = !DILocation(line: 410, column: 38, scope: !4794)
!4836 = !DILocation(line: 410, column: 43, scope: !4794)
!4837 = !DILocation(line: 410, column: 9, scope: !4794)
!4838 = !DILocation(line: 410, column: 6, scope: !4794)
!4839 = !DILocation(line: 411, column: 38, scope: !4794)
!4840 = !DILocation(line: 411, column: 43, scope: !4794)
!4841 = !DILocation(line: 412, column: 9, scope: !4794)
!4842 = !DILocation(line: 412, column: 14, scope: !4794)
!4843 = !DILocation(line: 411, column: 9, scope: !4794)
!4844 = !DILocation(line: 411, column: 6, scope: !4794)
!4845 = !DILocation(line: 413, column: 38, scope: !4794)
!4846 = !DILocation(line: 413, column: 43, scope: !4794)
!4847 = !DILocation(line: 413, column: 9, scope: !4794)
!4848 = !DILocation(line: 413, column: 6, scope: !4794)
!4849 = !DILocation(line: 415, column: 6, scope: !4850)
!4850 = distinct !DILexicalBlock(scope: !4794, file: !3, line: 415, column: 6)
!4851 = !DILocation(line: 415, column: 6, scope: !4794)
!4852 = !DILocation(line: 416, column: 3, scope: !4850)
!4853 = !DILocation(line: 422, column: 2, scope: !4794)
!4854 = !DILocation(line: 423, column: 1, scope: !4794)
!4855 = distinct !DISubprogram(name: "apci1500_di_cmd", scope: !3, file: !3, line: 362, type: !3928, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !230)
!4856 = !DILocalVariable(name: "dev", arg: 1, scope: !4855, file: !3, line: 362, type: !182)
!4857 = !DILocation(line: 362, column: 50, scope: !4855)
!4858 = !DILocalVariable(name: "s", arg: 2, scope: !4855, file: !3, line: 363, type: !3814)
!4859 = !DILocation(line: 363, column: 32, scope: !4855)
!4860 = !DILocation(line: 365, column: 2, scope: !4855)
!4861 = !DILocation(line: 365, column: 5, scope: !4855)
!4862 = !DILocation(line: 365, column: 12, scope: !4855)
!4863 = !DILocation(line: 365, column: 20, scope: !4855)
!4864 = !DILocation(line: 367, column: 2, scope: !4855)
!4865 = distinct !DISubprogram(name: "apci1500_di_cancel", scope: !3, file: !3, line: 256, type: !3928, scopeLine: 258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !230)
!4866 = !DILocalVariable(name: "dev", arg: 1, scope: !4865, file: !3, line: 256, type: !182)
!4867 = !DILocation(line: 256, column: 53, scope: !4865)
!4868 = !DILocalVariable(name: "s", arg: 2, scope: !4865, file: !3, line: 257, type: !3814)
!4869 = !DILocation(line: 257, column: 35, scope: !4865)
!4870 = !DILocation(line: 260, column: 14, scope: !4865)
!4871 = !DILocation(line: 260, column: 2, scope: !4865)
!4872 = !DILocation(line: 263, column: 23, scope: !4865)
!4873 = !DILocation(line: 263, column: 2, scope: !4865)
!4874 = !DILocation(line: 266, column: 19, scope: !4865)
!4875 = !DILocation(line: 266, column: 2, scope: !4865)
!4876 = !DILocation(line: 267, column: 19, scope: !4865)
!4877 = !DILocation(line: 267, column: 2, scope: !4865)
!4878 = !DILocation(line: 270, column: 14, scope: !4865)
!4879 = !DILocation(line: 270, column: 2, scope: !4865)
!4880 = !DILocation(line: 271, column: 14, scope: !4865)
!4881 = !DILocation(line: 271, column: 2, scope: !4865)
!4882 = !DILocation(line: 274, column: 23, scope: !4865)
!4883 = !DILocation(line: 274, column: 2, scope: !4865)
!4884 = !DILocation(line: 276, column: 2, scope: !4865)
!4885 = distinct !DISubprogram(name: "apci1500_do_insn_bits", scope: !3, file: !3, line: 571, type: !3911, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !230)
!4886 = !DILocalVariable(name: "dev", arg: 1, scope: !4885, file: !3, line: 571, type: !182)
!4887 = !DILocation(line: 571, column: 56, scope: !4885)
!4888 = !DILocalVariable(name: "s", arg: 2, scope: !4885, file: !3, line: 572, type: !3814)
!4889 = !DILocation(line: 572, column: 31, scope: !4885)
!4890 = !DILocalVariable(name: "insn", arg: 3, scope: !4885, file: !3, line: 573, type: !3913)
!4891 = !DILocation(line: 573, column: 26, scope: !4885)
!4892 = !DILocalVariable(name: "data", arg: 4, scope: !4885, file: !3, line: 574, type: !2666)
!4893 = !DILocation(line: 574, column: 20, scope: !4885)
!4894 = !DILocalVariable(name: "devpriv", scope: !4885, file: !3, line: 576, type: !4287)
!4895 = !DILocation(line: 576, column: 27, scope: !4885)
!4896 = !DILocation(line: 576, column: 37, scope: !4885)
!4897 = !DILocation(line: 576, column: 42, scope: !4885)
!4898 = !DILocation(line: 578, column: 30, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !4885, file: !3, line: 578, column: 6)
!4900 = !DILocation(line: 578, column: 33, scope: !4899)
!4901 = !DILocation(line: 578, column: 6, scope: !4899)
!4902 = !DILocation(line: 578, column: 6, scope: !4885)
!4903 = !DILocation(line: 579, column: 8, scope: !4899)
!4904 = !DILocation(line: 579, column: 11, scope: !4899)
!4905 = !DILocation(line: 579, column: 18, scope: !4899)
!4906 = !DILocation(line: 579, column: 27, scope: !4899)
!4907 = !DILocation(line: 579, column: 33, scope: !4899)
!4908 = !DILocation(line: 579, column: 3, scope: !4899)
!4909 = !DILocation(line: 581, column: 12, scope: !4885)
!4910 = !DILocation(line: 581, column: 15, scope: !4885)
!4911 = !DILocation(line: 581, column: 2, scope: !4885)
!4912 = !DILocation(line: 581, column: 10, scope: !4885)
!4913 = !DILocation(line: 583, column: 9, scope: !4885)
!4914 = !DILocation(line: 583, column: 15, scope: !4885)
!4915 = !DILocation(line: 583, column: 2, scope: !4885)
!4916 = distinct !DISubprogram(name: "outw", scope: !4512, file: !4512, line: 335, type: !4917, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !230)
!4917 = !DISubroutineType(types: !4918)
!4918 = !{null, !299, !181}
!4919 = !DILocalVariable(name: "value", arg: 1, scope: !4916, file: !4512, line: 335, type: !299)
!4920 = !DILocation(line: 335, column: 1, scope: !4916)
!4921 = !DILocalVariable(name: "port", arg: 2, scope: !4916, file: !4512, line: 335, type: !181)
!4922 = !{i32 -2143396085}
!4923 = distinct !DISubprogram(name: "apci1500_timer_insn_config", scope: !3, file: !3, line: 586, type: !3911, scopeLine: 590, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !230)
!4924 = !DILocalVariable(name: "dev", arg: 1, scope: !4923, file: !3, line: 586, type: !182)
!4925 = !DILocation(line: 586, column: 61, scope: !4923)
!4926 = !DILocalVariable(name: "s", arg: 2, scope: !4923, file: !3, line: 587, type: !3814)
!4927 = !DILocation(line: 587, column: 36, scope: !4923)
!4928 = !DILocalVariable(name: "insn", arg: 3, scope: !4923, file: !3, line: 588, type: !3913)
!4929 = !DILocation(line: 588, column: 31, scope: !4923)
!4930 = !DILocalVariable(name: "data", arg: 4, scope: !4923, file: !3, line: 589, type: !2666)
!4931 = !DILocation(line: 589, column: 25, scope: !4923)
!4932 = !DILocalVariable(name: "devpriv", scope: !4923, file: !3, line: 591, type: !4287)
!4933 = !DILocation(line: 591, column: 27, scope: !4923)
!4934 = !DILocation(line: 591, column: 37, scope: !4923)
!4935 = !DILocation(line: 591, column: 42, scope: !4923)
!4936 = !DILocalVariable(name: "chan", scope: !4923, file: !3, line: 592, type: !7)
!4937 = !DILocation(line: 592, column: 15, scope: !4923)
!4938 = !DILocation(line: 592, column: 22, scope: !4923)
!4939 = !DILocalVariable(name: "val", scope: !4923, file: !3, line: 593, type: !7)
!4940 = !DILocation(line: 593, column: 15, scope: !4923)
!4941 = !DILocation(line: 595, column: 10, scope: !4923)
!4942 = !DILocation(line: 595, column: 2, scope: !4923)
!4943 = !DILocation(line: 597, column: 9, scope: !4944)
!4944 = distinct !DILexicalBlock(scope: !4923, file: !3, line: 595, column: 19)
!4945 = !DILocation(line: 597, column: 19, scope: !4944)
!4946 = !DILocation(line: 597, column: 22, scope: !4944)
!4947 = !DILocation(line: 597, column: 17, scope: !4944)
!4948 = !DILocation(line: 597, column: 7, scope: !4944)
!4949 = !DILocation(line: 598, column: 15, scope: !4944)
!4950 = !DILocation(line: 598, column: 20, scope: !4944)
!4951 = !DILocation(line: 598, column: 24, scope: !4944)
!4952 = !DILocation(line: 598, column: 32, scope: !4944)
!4953 = !DILocation(line: 598, column: 3, scope: !4944)
!4954 = !DILocation(line: 599, column: 15, scope: !4944)
!4955 = !DILocation(line: 599, column: 21, scope: !4944)
!4956 = !DILocation(line: 599, column: 25, scope: !4944)
!4957 = !DILocation(line: 599, column: 31, scope: !4944)
!4958 = !DILocation(line: 600, column: 8, scope: !4944)
!4959 = !DILocation(line: 599, column: 3, scope: !4944)
!4960 = !DILocation(line: 602, column: 25, scope: !4944)
!4961 = !DILocation(line: 602, column: 30, scope: !4944)
!4962 = !DILocation(line: 602, column: 3, scope: !4944)
!4963 = !DILocation(line: 603, column: 15, scope: !4944)
!4964 = !DILocation(line: 604, column: 8, scope: !4944)
!4965 = !DILocation(line: 603, column: 3, scope: !4944)
!4966 = !DILocation(line: 605, column: 3, scope: !4944)
!4967 = !DILocation(line: 607, column: 25, scope: !4944)
!4968 = !DILocation(line: 607, column: 30, scope: !4944)
!4969 = !DILocation(line: 607, column: 3, scope: !4944)
!4970 = !DILocation(line: 608, column: 3, scope: !4944)
!4971 = !DILocation(line: 611, column: 3, scope: !4944)
!4972 = !DILocation(line: 611, column: 11, scope: !4944)
!4973 = !DILocation(line: 612, column: 20, scope: !4944)
!4974 = !DILocation(line: 612, column: 25, scope: !4944)
!4975 = !DILocation(line: 612, column: 9, scope: !4944)
!4976 = !DILocation(line: 612, column: 7, scope: !4944)
!4977 = !DILocation(line: 613, column: 7, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4944, file: !3, line: 613, column: 7)
!4979 = !DILocation(line: 613, column: 11, scope: !4978)
!4980 = !DILocation(line: 613, column: 7, scope: !4944)
!4981 = !DILocation(line: 614, column: 4, scope: !4978)
!4982 = !DILocation(line: 614, column: 12, scope: !4978)
!4983 = !DILocation(line: 615, column: 7, scope: !4984)
!4984 = distinct !DILexicalBlock(scope: !4944, file: !3, line: 615, column: 7)
!4985 = !DILocation(line: 615, column: 11, scope: !4984)
!4986 = !DILocation(line: 615, column: 7, scope: !4944)
!4987 = !DILocation(line: 616, column: 4, scope: !4984)
!4988 = !DILocation(line: 616, column: 12, scope: !4984)
!4989 = !DILocation(line: 617, column: 7, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4944, file: !3, line: 617, column: 7)
!4991 = !DILocation(line: 617, column: 11, scope: !4990)
!4992 = !DILocation(line: 617, column: 7, scope: !4944)
!4993 = !DILocation(line: 618, column: 4, scope: !4994)
!4994 = distinct !DILexicalBlock(scope: !4990, file: !3, line: 617, column: 28)
!4995 = !DILocation(line: 618, column: 12, scope: !4994)
!4996 = !DILocation(line: 619, column: 21, scope: !4994)
!4997 = !DILocation(line: 619, column: 26, scope: !4994)
!4998 = !DILocation(line: 619, column: 4, scope: !4994)
!4999 = !DILocation(line: 620, column: 3, scope: !4994)
!5000 = !DILocation(line: 621, column: 3, scope: !4944)
!5001 = !DILocation(line: 621, column: 11, scope: !4944)
!5002 = !DILocation(line: 623, column: 3, scope: !4944)
!5003 = !DILocation(line: 627, column: 11, scope: !4944)
!5004 = !DILocation(line: 627, column: 3, scope: !4944)
!5005 = !DILocation(line: 630, column: 8, scope: !5006)
!5006 = distinct !DILexicalBlock(scope: !4944, file: !3, line: 627, column: 20)
!5007 = !DILocation(line: 632, column: 4, scope: !5006)
!5008 = !DILocation(line: 635, column: 8, scope: !5006)
!5009 = !DILocation(line: 637, column: 4, scope: !5006)
!5010 = !DILocation(line: 640, column: 8, scope: !5006)
!5011 = !DILocation(line: 642, column: 4, scope: !5006)
!5012 = !DILocation(line: 645, column: 8, scope: !5006)
!5013 = !DILocation(line: 647, column: 4, scope: !5006)
!5014 = !DILocation(line: 650, column: 8, scope: !5006)
!5015 = !DILocation(line: 652, column: 4, scope: !5006)
!5016 = !DILocation(line: 655, column: 8, scope: !5006)
!5017 = !DILocation(line: 659, column: 4, scope: !5006)
!5018 = !DILocation(line: 661, column: 4, scope: !5006)
!5019 = !DILocation(line: 663, column: 25, scope: !4944)
!5020 = !DILocation(line: 663, column: 30, scope: !4944)
!5021 = !DILocation(line: 663, column: 3, scope: !4944)
!5022 = !DILocation(line: 664, column: 15, scope: !4944)
!5023 = !DILocation(line: 664, column: 20, scope: !4944)
!5024 = !DILocation(line: 664, column: 25, scope: !4944)
!5025 = !DILocation(line: 664, column: 3, scope: !4944)
!5026 = !DILocation(line: 665, column: 3, scope: !4944)
!5027 = !DILocation(line: 668, column: 7, scope: !5028)
!5028 = distinct !DILexicalBlock(scope: !4944, file: !3, line: 668, column: 7)
!5029 = !DILocation(line: 668, column: 15, scope: !5028)
!5030 = !DILocation(line: 668, column: 7, scope: !4944)
!5031 = !DILocation(line: 669, column: 4, scope: !5028)
!5032 = !DILocation(line: 670, column: 22, scope: !4944)
!5033 = !DILocation(line: 670, column: 3, scope: !4944)
!5034 = !DILocation(line: 670, column: 12, scope: !4944)
!5035 = !DILocation(line: 670, column: 20, scope: !4944)
!5036 = !DILocation(line: 671, column: 7, scope: !5037)
!5037 = distinct !DILexicalBlock(scope: !4944, file: !3, line: 671, column: 7)
!5038 = !DILocation(line: 671, column: 16, scope: !5037)
!5039 = !DILocation(line: 671, column: 24, scope: !5037)
!5040 = !DILocation(line: 671, column: 7, scope: !4944)
!5041 = !DILocation(line: 672, column: 4, scope: !5037)
!5042 = !DILocation(line: 672, column: 13, scope: !5037)
!5043 = !DILocation(line: 672, column: 21, scope: !5037)
!5044 = !DILocation(line: 673, column: 8, scope: !4944)
!5045 = !DILocation(line: 673, column: 17, scope: !4944)
!5046 = !DILocation(line: 673, column: 26, scope: !4944)
!5047 = !DILocation(line: 673, column: 35, scope: !4944)
!5048 = !DILocation(line: 673, column: 41, scope: !4944)
!5049 = !DILocation(line: 673, column: 3, scope: !4944)
!5050 = !DILocation(line: 674, column: 3, scope: !4944)
!5051 = !DILocation(line: 676, column: 11, scope: !4944)
!5052 = !DILocation(line: 676, column: 20, scope: !4944)
!5053 = !DILocation(line: 676, column: 3, scope: !4944)
!5054 = !DILocation(line: 678, column: 4, scope: !5055)
!5055 = distinct !DILexicalBlock(scope: !4944, file: !3, line: 676, column: 29)
!5056 = !DILocation(line: 678, column: 12, scope: !5055)
!5057 = !DILocation(line: 679, column: 4, scope: !5055)
!5058 = !DILocation(line: 679, column: 12, scope: !5055)
!5059 = !DILocation(line: 680, column: 4, scope: !5055)
!5060 = !DILocation(line: 682, column: 4, scope: !5055)
!5061 = !DILocation(line: 682, column: 12, scope: !5055)
!5062 = !DILocation(line: 683, column: 4, scope: !5055)
!5063 = !DILocation(line: 683, column: 12, scope: !5055)
!5064 = !DILocation(line: 684, column: 4, scope: !5055)
!5065 = !DILocation(line: 686, column: 4, scope: !5055)
!5066 = !DILocation(line: 686, column: 12, scope: !5055)
!5067 = !DILocation(line: 687, column: 4, scope: !5055)
!5068 = !DILocation(line: 687, column: 12, scope: !5055)
!5069 = !DILocation(line: 688, column: 4, scope: !5055)
!5070 = !DILocation(line: 690, column: 4, scope: !5055)
!5071 = !DILocation(line: 692, column: 3, scope: !4944)
!5072 = !DILocation(line: 695, column: 7, scope: !5073)
!5073 = distinct !DILexicalBlock(scope: !4944, file: !3, line: 695, column: 7)
!5074 = !DILocation(line: 695, column: 12, scope: !5073)
!5075 = !DILocation(line: 695, column: 7, scope: !4944)
!5076 = !DILocation(line: 696, column: 4, scope: !5073)
!5077 = !DILocation(line: 698, column: 20, scope: !4944)
!5078 = !DILocation(line: 698, column: 25, scope: !4944)
!5079 = !DILocation(line: 698, column: 9, scope: !4944)
!5080 = !DILocation(line: 698, column: 7, scope: !4944)
!5081 = !DILocation(line: 699, column: 7, scope: !4944)
!5082 = !DILocation(line: 700, column: 7, scope: !5083)
!5083 = distinct !DILexicalBlock(scope: !4944, file: !3, line: 700, column: 7)
!5084 = !DILocation(line: 700, column: 15, scope: !5083)
!5085 = !DILocation(line: 700, column: 7, scope: !4944)
!5086 = !DILocation(line: 701, column: 8, scope: !5083)
!5087 = !DILocation(line: 701, column: 4, scope: !5083)
!5088 = !DILocation(line: 702, column: 12, scope: !5089)
!5089 = distinct !DILexicalBlock(scope: !5083, file: !3, line: 702, column: 12)
!5090 = !DILocation(line: 702, column: 20, scope: !5089)
!5091 = !DILocation(line: 702, column: 12, scope: !5083)
!5092 = !DILocation(line: 703, column: 4, scope: !5089)
!5093 = !DILocation(line: 704, column: 15, scope: !4944)
!5094 = !DILocation(line: 704, column: 20, scope: !4944)
!5095 = !DILocation(line: 704, column: 25, scope: !4944)
!5096 = !DILocation(line: 704, column: 3, scope: !4944)
!5097 = !DILocation(line: 705, column: 3, scope: !4944)
!5098 = !DILocation(line: 707, column: 7, scope: !5099)
!5099 = distinct !DILexicalBlock(scope: !4944, file: !3, line: 707, column: 7)
!5100 = !DILocation(line: 707, column: 12, scope: !5099)
!5101 = !DILocation(line: 707, column: 7, scope: !4944)
!5102 = !DILocation(line: 708, column: 4, scope: !5099)
!5103 = !DILocation(line: 709, column: 3, scope: !4944)
!5104 = !DILocation(line: 712, column: 3, scope: !4944)
!5105 = !DILocation(line: 714, column: 9, scope: !4923)
!5106 = !DILocation(line: 714, column: 15, scope: !4923)
!5107 = !DILocation(line: 714, column: 2, scope: !4923)
!5108 = !DILocation(line: 715, column: 1, scope: !4923)
!5109 = distinct !DISubprogram(name: "apci1500_timer_insn_write", scope: !3, file: !3, line: 717, type: !3911, scopeLine: 721, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !230)
!5110 = !DILocalVariable(name: "dev", arg: 1, scope: !5109, file: !3, line: 717, type: !182)
!5111 = !DILocation(line: 717, column: 60, scope: !5109)
!5112 = !DILocalVariable(name: "s", arg: 2, scope: !5109, file: !3, line: 718, type: !3814)
!5113 = !DILocation(line: 718, column: 35, scope: !5109)
!5114 = !DILocalVariable(name: "insn", arg: 3, scope: !5109, file: !3, line: 719, type: !3913)
!5115 = !DILocation(line: 719, column: 30, scope: !5109)
!5116 = !DILocalVariable(name: "data", arg: 4, scope: !5109, file: !3, line: 720, type: !2666)
!5117 = !DILocation(line: 720, column: 24, scope: !5109)
!5118 = !DILocalVariable(name: "chan", scope: !5109, file: !3, line: 722, type: !7)
!5119 = !DILocation(line: 722, column: 15, scope: !5109)
!5120 = !DILocation(line: 722, column: 22, scope: !5109)
!5121 = !DILocalVariable(name: "cmd", scope: !5109, file: !3, line: 723, type: !7)
!5122 = !DILocation(line: 723, column: 15, scope: !5109)
!5123 = !DILocation(line: 725, column: 19, scope: !5109)
!5124 = !DILocation(line: 725, column: 24, scope: !5109)
!5125 = !DILocation(line: 725, column: 8, scope: !5109)
!5126 = !DILocation(line: 725, column: 6, scope: !5109)
!5127 = !DILocation(line: 726, column: 6, scope: !5109)
!5128 = !DILocation(line: 727, column: 6, scope: !5109)
!5129 = !DILocation(line: 730, column: 6, scope: !5130)
!5130 = distinct !DILexicalBlock(scope: !5109, file: !3, line: 730, column: 6)
!5131 = !DILocation(line: 730, column: 12, scope: !5130)
!5132 = !DILocation(line: 730, column: 6, scope: !5109)
!5133 = !DILocation(line: 731, column: 15, scope: !5130)
!5134 = !DILocation(line: 731, column: 20, scope: !5130)
!5135 = !DILocation(line: 731, column: 25, scope: !5130)
!5136 = !DILocation(line: 731, column: 3, scope: !5130)
!5137 = !DILocation(line: 733, column: 9, scope: !5109)
!5138 = !DILocation(line: 733, column: 15, scope: !5109)
!5139 = !DILocation(line: 733, column: 2, scope: !5109)
!5140 = distinct !DISubprogram(name: "apci1500_timer_insn_read", scope: !3, file: !3, line: 736, type: !3911, scopeLine: 740, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !230)
!5141 = !DILocalVariable(name: "dev", arg: 1, scope: !5140, file: !3, line: 736, type: !182)
!5142 = !DILocation(line: 736, column: 59, scope: !5140)
!5143 = !DILocalVariable(name: "s", arg: 2, scope: !5140, file: !3, line: 737, type: !3814)
!5144 = !DILocation(line: 737, column: 34, scope: !5140)
!5145 = !DILocalVariable(name: "insn", arg: 3, scope: !5140, file: !3, line: 738, type: !3913)
!5146 = !DILocation(line: 738, column: 29, scope: !5140)
!5147 = !DILocalVariable(name: "data", arg: 4, scope: !5140, file: !3, line: 739, type: !2666)
!5148 = !DILocation(line: 739, column: 23, scope: !5140)
!5149 = !DILocalVariable(name: "chan", scope: !5140, file: !3, line: 741, type: !7)
!5150 = !DILocation(line: 741, column: 15, scope: !5140)
!5151 = !DILocation(line: 741, column: 22, scope: !5140)
!5152 = !DILocalVariable(name: "cmd", scope: !5140, file: !3, line: 742, type: !7)
!5153 = !DILocation(line: 742, column: 15, scope: !5140)
!5154 = !DILocalVariable(name: "val", scope: !5140, file: !3, line: 743, type: !7)
!5155 = !DILocation(line: 743, column: 15, scope: !5140)
!5156 = !DILocalVariable(name: "i", scope: !5140, file: !3, line: 744, type: !181)
!5157 = !DILocation(line: 744, column: 6, scope: !5140)
!5158 = !DILocation(line: 746, column: 19, scope: !5140)
!5159 = !DILocation(line: 746, column: 24, scope: !5140)
!5160 = !DILocation(line: 746, column: 8, scope: !5140)
!5161 = !DILocation(line: 746, column: 6, scope: !5140)
!5162 = !DILocation(line: 747, column: 6, scope: !5140)
!5163 = !DILocation(line: 748, column: 6, scope: !5140)
!5164 = !DILocation(line: 750, column: 9, scope: !5165)
!5165 = distinct !DILexicalBlock(scope: !5140, file: !3, line: 750, column: 2)
!5166 = !DILocation(line: 750, column: 7, scope: !5165)
!5167 = !DILocation(line: 750, column: 14, scope: !5168)
!5168 = distinct !DILexicalBlock(scope: !5165, file: !3, line: 750, column: 2)
!5169 = !DILocation(line: 750, column: 18, scope: !5168)
!5170 = !DILocation(line: 750, column: 24, scope: !5168)
!5171 = !DILocation(line: 750, column: 16, scope: !5168)
!5172 = !DILocation(line: 750, column: 2, scope: !5165)
!5173 = !DILocation(line: 751, column: 15, scope: !5174)
!5174 = distinct !DILexicalBlock(scope: !5168, file: !3, line: 750, column: 32)
!5175 = !DILocation(line: 751, column: 20, scope: !5174)
!5176 = !DILocation(line: 751, column: 25, scope: !5174)
!5177 = !DILocation(line: 751, column: 3, scope: !5174)
!5178 = !DILocation(line: 753, column: 20, scope: !5174)
!5179 = !DILocation(line: 753, column: 25, scope: !5174)
!5180 = !DILocation(line: 753, column: 9, scope: !5174)
!5181 = !DILocation(line: 753, column: 53, scope: !5174)
!5182 = !DILocation(line: 753, column: 7, scope: !5174)
!5183 = !DILocation(line: 754, column: 21, scope: !5174)
!5184 = !DILocation(line: 754, column: 26, scope: !5174)
!5185 = !DILocation(line: 754, column: 10, scope: !5174)
!5186 = !DILocation(line: 754, column: 7, scope: !5174)
!5187 = !DILocation(line: 756, column: 13, scope: !5174)
!5188 = !DILocation(line: 756, column: 3, scope: !5174)
!5189 = !DILocation(line: 756, column: 8, scope: !5174)
!5190 = !DILocation(line: 756, column: 11, scope: !5174)
!5191 = !DILocation(line: 757, column: 2, scope: !5174)
!5192 = !DILocation(line: 750, column: 28, scope: !5168)
!5193 = !DILocation(line: 750, column: 2, scope: !5168)
!5194 = distinct !{!5194, !5172, !5195}
!5195 = !DILocation(line: 757, column: 2, scope: !5165)
!5196 = !DILocation(line: 759, column: 9, scope: !5140)
!5197 = !DILocation(line: 759, column: 15, scope: !5140)
!5198 = !DILocation(line: 759, column: 2, scope: !5140)
!5199 = distinct !DISubprogram(name: "inl", scope: !4512, file: !4512, line: 336, type: !5200, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !230)
!5200 = !DISubroutineType(types: !5201)
!5201 = !{!7, !181}
!5202 = !DILocalVariable(name: "port", arg: 1, scope: !5199, file: !4512, line: 336, type: !181)
!5203 = !DILocation(line: 336, column: 1, scope: !5199)
!5204 = !DILocalVariable(name: "value", scope: !5199, file: !4512, line: 336, type: !7)
!5205 = !{i32 -2143393130}
!5206 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !5207, file: !5207, line: 666, type: !5208, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !230)
!5207 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!5208 = !DISubroutineType(types: !132)
!5209 = !DILocalVariable(name: "f", scope: !5206, file: !5207, line: 668, type: !133)
!5210 = !DILocation(line: 668, column: 16, scope: !5206)
!5211 = !DILocation(line: 670, column: 6, scope: !5206)
!5212 = !DILocation(line: 670, column: 4, scope: !5206)
!5213 = !DILocation(line: 671, column: 2, scope: !5206)
!5214 = !DILocation(line: 672, column: 9, scope: !5206)
!5215 = !DILocation(line: 672, column: 2, scope: !5206)
!5216 = distinct !DISubprogram(name: "inb", scope: !4512, file: !4512, line: 334, type: !5217, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !230)
!5217 = !DISubroutineType(types: !5218)
!5218 = !{!409, !181}
!5219 = !DILocalVariable(name: "port", arg: 1, scope: !5216, file: !4512, line: 334, type: !181)
!5220 = !DILocation(line: 334, column: 1, scope: !5216)
!5221 = !DILocalVariable(name: "value", scope: !5216, file: !4512, line: 334, type: !409)
!5222 = !{i32 -2143398626}
!5223 = distinct !DISubprogram(name: "outb", scope: !4512, file: !4512, line: 334, type: !5224, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !230)
!5224 = !DISubroutineType(types: !5225)
!5225 = !{null, !409, !181}
!5226 = !DILocalVariable(name: "value", arg: 1, scope: !5223, file: !4512, line: 334, type: !409)
!5227 = !DILocation(line: 334, column: 1, scope: !5223)
!5228 = !DILocalVariable(name: "port", arg: 2, scope: !5223, file: !4512, line: 334, type: !181)
!5229 = !{i32 -2143398828}
!5230 = distinct !DISubprogram(name: "z8536_write", scope: !3, file: !3, line: 68, type: !5231, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !230)
!5231 = !DISubroutineType(types: !5232)
!5232 = !{null, !182, !7, !7}
!5233 = !DILocation(line: 407, column: 64, scope: !4521, inlinedAt: !5234)
!5234 = distinct !DILocation(line: 76, column: 2, scope: !5230)
!5235 = !DILocation(line: 407, column: 84, scope: !4521, inlinedAt: !5234)
!5236 = !DILocation(line: 327, column: 67, scope: !4530, inlinedAt: !5237)
!5237 = distinct !DILocation(line: 73, column: 2, scope: !5238)
!5238 = distinct !DILexicalBlock(scope: !5239, file: !3, line: 73, column: 2)
!5239 = distinct !DILexicalBlock(scope: !5240, file: !3, line: 73, column: 2)
!5240 = distinct !DILexicalBlock(scope: !5241, file: !3, line: 73, column: 2)
!5241 = distinct !DILexicalBlock(scope: !5242, file: !3, line: 73, column: 2)
!5242 = distinct !DILexicalBlock(scope: !5230, file: !3, line: 73, column: 2)
!5243 = !DILocalVariable(name: "dev", arg: 1, scope: !5230, file: !3, line: 68, type: !182)
!5244 = !DILocation(line: 68, column: 47, scope: !5230)
!5245 = !DILocalVariable(name: "val", arg: 2, scope: !5230, file: !3, line: 69, type: !7)
!5246 = !DILocation(line: 69, column: 17, scope: !5230)
!5247 = !DILocalVariable(name: "reg", arg: 3, scope: !5230, file: !3, line: 69, type: !7)
!5248 = !DILocation(line: 69, column: 35, scope: !5230)
!5249 = !DILocalVariable(name: "flags", scope: !5230, file: !3, line: 71, type: !133)
!5250 = !DILocation(line: 71, column: 16, scope: !5230)
!5251 = !DILocation(line: 73, column: 2, scope: !5230)
!5252 = !DILocation(line: 73, column: 2, scope: !5242)
!5253 = !DILocalVariable(name: "__dummy", scope: !5254, file: !3, line: 73, type: !133)
!5254 = distinct !DILexicalBlock(scope: !5241, file: !3, line: 73, column: 2)
!5255 = !DILocation(line: 73, column: 2, scope: !5254)
!5256 = !DILocalVariable(name: "__dummy2", scope: !5254, file: !3, line: 73, type: !133)
!5257 = !DILocation(line: 73, column: 2, scope: !5241)
!5258 = !DILocation(line: 73, column: 2, scope: !5240)
!5259 = !DILocation(line: 73, column: 2, scope: !5260)
!5260 = distinct !DILexicalBlock(scope: !5240, file: !3, line: 73, column: 2)
!5261 = !DILocalVariable(name: "__dummy", scope: !5262, file: !3, line: 73, type: !133)
!5262 = distinct !DILexicalBlock(scope: !5263, file: !3, line: 73, column: 2)
!5263 = distinct !DILexicalBlock(scope: !5260, file: !3, line: 73, column: 2)
!5264 = !DILocation(line: 73, column: 2, scope: !5262)
!5265 = !DILocalVariable(name: "__dummy2", scope: !5262, file: !3, line: 73, type: !133)
!5266 = !DILocation(line: 73, column: 2, scope: !5263)
!5267 = !DILocation(line: 73, column: 2, scope: !5239)
!5268 = !{i32 -2141609705}
!5269 = !DILocation(line: 73, column: 2, scope: !5238)
!5270 = !DILocation(line: 329, column: 10, scope: !4530, inlinedAt: !5237)
!5271 = !DILocation(line: 329, column: 16, scope: !4530, inlinedAt: !5237)
!5272 = !DILocation(line: 74, column: 7, scope: !5230)
!5273 = !DILocation(line: 74, column: 12, scope: !5230)
!5274 = !DILocation(line: 74, column: 17, scope: !5230)
!5275 = !DILocation(line: 74, column: 24, scope: !5230)
!5276 = !DILocation(line: 74, column: 2, scope: !5230)
!5277 = !DILocation(line: 75, column: 7, scope: !5230)
!5278 = !DILocation(line: 75, column: 12, scope: !5230)
!5279 = !DILocation(line: 75, column: 17, scope: !5230)
!5280 = !DILocation(line: 75, column: 24, scope: !5230)
!5281 = !DILocation(line: 75, column: 2, scope: !5230)
!5282 = !DILocation(line: 76, column: 26, scope: !5230)
!5283 = !DILocation(line: 76, column: 31, scope: !5230)
!5284 = !DILocation(line: 76, column: 41, scope: !5230)
!5285 = !DILocation(line: 409, column: 2, scope: !4594, inlinedAt: !5234)
!5286 = !DILocation(line: 409, column: 2, scope: !4599, inlinedAt: !5234)
!5287 = !DILocation(line: 409, column: 2, scope: !4600, inlinedAt: !5234)
!5288 = !DILocation(line: 409, column: 2, scope: !4607, inlinedAt: !5234)
!5289 = !DILocation(line: 409, column: 2, scope: !4610, inlinedAt: !5234)
!5290 = !DILocation(line: 77, column: 1, scope: !5230)
!5291 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !5207, file: !5207, line: 646, type: !5208, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !230)
!5292 = !DILocalVariable(name: "__ret", scope: !5293, file: !5207, line: 648, type: !133)
!5293 = distinct !DILexicalBlock(scope: !5291, file: !5207, line: 648, column: 9)
!5294 = !DILocation(line: 648, column: 9, scope: !5293)
!5295 = !DILocalVariable(name: "__edi", scope: !5293, file: !5207, line: 648, type: !133)
!5296 = !DILocalVariable(name: "__esi", scope: !5293, file: !5207, line: 648, type: !133)
!5297 = !DILocalVariable(name: "__edx", scope: !5293, file: !5207, line: 648, type: !133)
!5298 = !DILocalVariable(name: "__ecx", scope: !5293, file: !5207, line: 648, type: !133)
!5299 = !DILocalVariable(name: "__eax", scope: !5293, file: !5207, line: 648, type: !133)
!5300 = !DILocation(line: 648, column: 9, scope: !5301)
!5301 = distinct !DILexicalBlock(scope: !5302, file: !5207, line: 648, column: 9)
!5302 = distinct !DILexicalBlock(scope: !5293, file: !5207, line: 648, column: 9)
!5303 = !{i32 -2145767680, i32 -2145765365, i32 -2145765131, i32 -2145765080, i32 -2145765052, i32 -2145765027, i32 -2145765343, i32 -2145765330, i32 -2145764892, i32 -2145764773, i32 -2145765238, i32 -2145765211, i32 -2145765183, i32 -2145765153}
!5304 = !DILocalVariable(name: "__mask", scope: !5305, file: !5207, line: 648, type: !133)
!5305 = distinct !DILexicalBlock(scope: !5301, file: !5207, line: 648, column: 9)
!5306 = !DILocation(line: 648, column: 9, scope: !5305)
!5307 = !DILocation(line: 648, column: 9, scope: !5302)
!5308 = !DILocation(line: 648, column: 2, scope: !5291)
!5309 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !5207, file: !5207, line: 656, type: !140, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !230)
!5310 = !DILocalVariable(name: "__edi", scope: !5311, file: !5207, line: 658, type: !133)
!5311 = distinct !DILexicalBlock(scope: !5309, file: !5207, line: 658, column: 2)
!5312 = !DILocation(line: 658, column: 2, scope: !5311)
!5313 = !DILocalVariable(name: "__esi", scope: !5311, file: !5207, line: 658, type: !133)
!5314 = !DILocalVariable(name: "__edx", scope: !5311, file: !5207, line: 658, type: !133)
!5315 = !DILocalVariable(name: "__ecx", scope: !5311, file: !5207, line: 658, type: !133)
!5316 = !DILocalVariable(name: "__eax", scope: !5311, file: !5207, line: 658, type: !133)
!5317 = !{i32 -2145760586, i32 -2145759854, i32 -2145759620, i32 -2145759569, i32 -2145759541, i32 -2145759516, i32 -2145759832, i32 -2145759819, i32 -2145759381, i32 -2145759262, i32 -2145759727, i32 -2145759700, i32 -2145759672, i32 -2145759642}
!5318 = !DILocation(line: 659, column: 1, scope: !5309)
!5319 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !5207, file: !5207, line: 651, type: !5320, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !230)
!5320 = !DISubroutineType(types: !5321)
!5321 = !{null, !133}
!5322 = !DILocalVariable(name: "f", arg: 1, scope: !5319, file: !5207, line: 651, type: !133)
!5323 = !DILocation(line: 651, column: 65, scope: !5319)
!5324 = !DILocalVariable(name: "__edi", scope: !5325, file: !5207, line: 653, type: !133)
!5325 = distinct !DILexicalBlock(scope: !5319, file: !5207, line: 653, column: 2)
!5326 = !DILocation(line: 653, column: 2, scope: !5325)
!5327 = !DILocalVariable(name: "__esi", scope: !5325, file: !5207, line: 653, type: !133)
!5328 = !DILocalVariable(name: "__edx", scope: !5325, file: !5207, line: 653, type: !133)
!5329 = !DILocalVariable(name: "__ecx", scope: !5325, file: !5207, line: 653, type: !133)
!5330 = !DILocalVariable(name: "__eax", scope: !5325, file: !5207, line: 653, type: !133)
!5331 = !{i32 -2145763213, i32 -2145762463, i32 -2145762229, i32 -2145762178, i32 -2145762150, i32 -2145762125, i32 -2145762441, i32 -2145762428, i32 -2145761990, i32 -2145761871, i32 -2145762336, i32 -2145762309, i32 -2145762281, i32 -2145762251}
!5332 = !DILocation(line: 654, column: 1, scope: !5319)
!5333 = distinct !DISubprogram(name: "apci1500_ack_irq", scope: !3, file: !3, line: 190, type: !5334, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !230)
!5334 = !DISubroutineType(types: !5335)
!5335 = !{!472, !182, !7}
!5336 = !DILocalVariable(name: "dev", arg: 1, scope: !5333, file: !3, line: 190, type: !182)
!5337 = !DILocation(line: 190, column: 52, scope: !5333)
!5338 = !DILocalVariable(name: "reg", arg: 2, scope: !5333, file: !3, line: 191, type: !7)
!5339 = !DILocation(line: 191, column: 22, scope: !5333)
!5340 = !DILocalVariable(name: "val", scope: !5333, file: !3, line: 193, type: !7)
!5341 = !DILocation(line: 193, column: 15, scope: !5333)
!5342 = !DILocation(line: 195, column: 19, scope: !5333)
!5343 = !DILocation(line: 195, column: 24, scope: !5333)
!5344 = !DILocation(line: 195, column: 8, scope: !5333)
!5345 = !DILocation(line: 195, column: 6, scope: !5333)
!5346 = !DILocation(line: 196, column: 7, scope: !5347)
!5347 = distinct !DILexicalBlock(scope: !5333, file: !3, line: 196, column: 6)
!5348 = !DILocation(line: 196, column: 11, scope: !5347)
!5349 = !DILocation(line: 196, column: 31, scope: !5347)
!5350 = !DILocation(line: 196, column: 6, scope: !5333)
!5351 = !DILocation(line: 197, column: 7, scope: !5352)
!5352 = distinct !DILexicalBlock(scope: !5347, file: !3, line: 196, column: 52)
!5353 = !DILocation(line: 198, column: 7, scope: !5352)
!5354 = !DILocation(line: 199, column: 15, scope: !5352)
!5355 = !DILocation(line: 199, column: 20, scope: !5352)
!5356 = !DILocation(line: 199, column: 25, scope: !5352)
!5357 = !DILocation(line: 199, column: 3, scope: !5352)
!5358 = !DILocation(line: 201, column: 3, scope: !5352)
!5359 = !DILocation(line: 203, column: 2, scope: !5333)
!5360 = !DILocation(line: 204, column: 1, scope: !5333)
!5361 = distinct !DISubprogram(name: "z8536_read", scope: !3, file: !3, line: 55, type: !5362, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !230)
!5362 = !DISubroutineType(types: !5363)
!5363 = !{!7, !182, !7}
!5364 = !DILocation(line: 407, column: 64, scope: !4521, inlinedAt: !5365)
!5365 = distinct !DILocation(line: 63, column: 2, scope: !5361)
!5366 = !DILocation(line: 407, column: 84, scope: !4521, inlinedAt: !5365)
!5367 = !DILocation(line: 327, column: 67, scope: !4530, inlinedAt: !5368)
!5368 = distinct !DILocation(line: 60, column: 2, scope: !5369)
!5369 = distinct !DILexicalBlock(scope: !5370, file: !3, line: 60, column: 2)
!5370 = distinct !DILexicalBlock(scope: !5371, file: !3, line: 60, column: 2)
!5371 = distinct !DILexicalBlock(scope: !5372, file: !3, line: 60, column: 2)
!5372 = distinct !DILexicalBlock(scope: !5373, file: !3, line: 60, column: 2)
!5373 = distinct !DILexicalBlock(scope: !5361, file: !3, line: 60, column: 2)
!5374 = !DILocalVariable(name: "dev", arg: 1, scope: !5361, file: !3, line: 55, type: !182)
!5375 = !DILocation(line: 55, column: 54, scope: !5361)
!5376 = !DILocalVariable(name: "reg", arg: 2, scope: !5361, file: !3, line: 55, type: !7)
!5377 = !DILocation(line: 55, column: 72, scope: !5361)
!5378 = !DILocalVariable(name: "flags", scope: !5361, file: !3, line: 57, type: !133)
!5379 = !DILocation(line: 57, column: 16, scope: !5361)
!5380 = !DILocalVariable(name: "val", scope: !5361, file: !3, line: 58, type: !7)
!5381 = !DILocation(line: 58, column: 15, scope: !5361)
!5382 = !DILocation(line: 60, column: 2, scope: !5361)
!5383 = !DILocation(line: 60, column: 2, scope: !5373)
!5384 = !DILocalVariable(name: "__dummy", scope: !5385, file: !3, line: 60, type: !133)
!5385 = distinct !DILexicalBlock(scope: !5372, file: !3, line: 60, column: 2)
!5386 = !DILocation(line: 60, column: 2, scope: !5385)
!5387 = !DILocalVariable(name: "__dummy2", scope: !5385, file: !3, line: 60, type: !133)
!5388 = !DILocation(line: 60, column: 2, scope: !5372)
!5389 = !DILocation(line: 60, column: 2, scope: !5371)
!5390 = !DILocation(line: 60, column: 2, scope: !5391)
!5391 = distinct !DILexicalBlock(scope: !5371, file: !3, line: 60, column: 2)
!5392 = !DILocalVariable(name: "__dummy", scope: !5393, file: !3, line: 60, type: !133)
!5393 = distinct !DILexicalBlock(scope: !5394, file: !3, line: 60, column: 2)
!5394 = distinct !DILexicalBlock(scope: !5391, file: !3, line: 60, column: 2)
!5395 = !DILocation(line: 60, column: 2, scope: !5393)
!5396 = !DILocalVariable(name: "__dummy2", scope: !5393, file: !3, line: 60, type: !133)
!5397 = !DILocation(line: 60, column: 2, scope: !5394)
!5398 = !DILocation(line: 60, column: 2, scope: !5370)
!5399 = !{i32 -2141610764}
!5400 = !DILocation(line: 60, column: 2, scope: !5369)
!5401 = !DILocation(line: 329, column: 10, scope: !4530, inlinedAt: !5368)
!5402 = !DILocation(line: 329, column: 16, scope: !4530, inlinedAt: !5368)
!5403 = !DILocation(line: 61, column: 7, scope: !5361)
!5404 = !DILocation(line: 61, column: 12, scope: !5361)
!5405 = !DILocation(line: 61, column: 17, scope: !5361)
!5406 = !DILocation(line: 61, column: 24, scope: !5361)
!5407 = !DILocation(line: 61, column: 2, scope: !5361)
!5408 = !DILocation(line: 62, column: 12, scope: !5361)
!5409 = !DILocation(line: 62, column: 17, scope: !5361)
!5410 = !DILocation(line: 62, column: 24, scope: !5361)
!5411 = !DILocation(line: 62, column: 8, scope: !5361)
!5412 = !DILocation(line: 62, column: 6, scope: !5361)
!5413 = !DILocation(line: 63, column: 26, scope: !5361)
!5414 = !DILocation(line: 63, column: 31, scope: !5361)
!5415 = !DILocation(line: 63, column: 41, scope: !5361)
!5416 = !DILocation(line: 409, column: 2, scope: !4594, inlinedAt: !5365)
!5417 = !DILocation(line: 409, column: 2, scope: !4599, inlinedAt: !5365)
!5418 = !DILocation(line: 409, column: 2, scope: !4600, inlinedAt: !5365)
!5419 = !DILocation(line: 409, column: 2, scope: !4607, inlinedAt: !5365)
!5420 = !DILocation(line: 409, column: 2, scope: !4610, inlinedAt: !5365)
!5421 = !DILocation(line: 65, column: 9, scope: !5361)
!5422 = !DILocation(line: 65, column: 2, scope: !5361)
!5423 = distinct !DISubprogram(name: "inw", scope: !4512, file: !4512, line: 335, type: !5424, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !230)
!5424 = !DISubroutineType(types: !5425)
!5425 = !{!299, !181}
!5426 = !DILocalVariable(name: "port", arg: 1, scope: !5423, file: !4512, line: 335, type: !181)
!5427 = !DILocation(line: 335, column: 1, scope: !5423)
!5428 = !DILocalVariable(name: "value", scope: !5423, file: !4512, line: 335, type: !299)
!5429 = !{i32 -2143395883}
!5430 = distinct !DISubprogram(name: "apci1500_di_cfg_trig", scope: !3, file: !3, line: 447, type: !3911, scopeLine: 451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !230)
!5431 = !DILocalVariable(name: "dev", arg: 1, scope: !5430, file: !3, line: 447, type: !182)
!5432 = !DILocation(line: 447, column: 55, scope: !5430)
!5433 = !DILocalVariable(name: "s", arg: 2, scope: !5430, file: !3, line: 448, type: !3814)
!5434 = !DILocation(line: 448, column: 30, scope: !5430)
!5435 = !DILocalVariable(name: "insn", arg: 3, scope: !5430, file: !3, line: 449, type: !3913)
!5436 = !DILocation(line: 449, column: 25, scope: !5430)
!5437 = !DILocalVariable(name: "data", arg: 4, scope: !5430, file: !3, line: 450, type: !2666)
!5438 = !DILocation(line: 450, column: 19, scope: !5430)
!5439 = !DILocalVariable(name: "devpriv", scope: !5430, file: !3, line: 452, type: !4287)
!5440 = !DILocation(line: 452, column: 27, scope: !5430)
!5441 = !DILocation(line: 452, column: 37, scope: !5430)
!5442 = !DILocation(line: 452, column: 42, scope: !5430)
!5443 = !DILocalVariable(name: "trig", scope: !5430, file: !3, line: 453, type: !7)
!5444 = !DILocation(line: 453, column: 15, scope: !5430)
!5445 = !DILocation(line: 453, column: 22, scope: !5430)
!5446 = !DILocalVariable(name: "shift", scope: !5430, file: !3, line: 454, type: !7)
!5447 = !DILocation(line: 454, column: 15, scope: !5430)
!5448 = !DILocation(line: 454, column: 23, scope: !5430)
!5449 = !DILocalVariable(name: "hi_mask", scope: !5430, file: !3, line: 455, type: !7)
!5450 = !DILocation(line: 455, column: 15, scope: !5430)
!5451 = !DILocalVariable(name: "lo_mask", scope: !5430, file: !3, line: 456, type: !7)
!5452 = !DILocation(line: 456, column: 15, scope: !5430)
!5453 = !DILocalVariable(name: "chan_mask", scope: !5430, file: !3, line: 457, type: !7)
!5454 = !DILocation(line: 457, column: 15, scope: !5430)
!5455 = !DILocalVariable(name: "old_mask", scope: !5430, file: !3, line: 458, type: !7)
!5456 = !DILocation(line: 458, column: 15, scope: !5430)
!5457 = !DILocalVariable(name: "pm", scope: !5430, file: !3, line: 459, type: !7)
!5458 = !DILocation(line: 459, column: 15, scope: !5430)
!5459 = !DILocalVariable(name: "pt", scope: !5430, file: !3, line: 460, type: !7)
!5460 = !DILocation(line: 460, column: 15, scope: !5430)
!5461 = !DILocalVariable(name: "pp", scope: !5430, file: !3, line: 461, type: !7)
!5462 = !DILocation(line: 461, column: 15, scope: !5430)
!5463 = !DILocalVariable(name: "invalid_chan", scope: !5430, file: !3, line: 462, type: !7)
!5464 = !DILocation(line: 462, column: 15, scope: !5430)
!5465 = !DILocation(line: 464, column: 6, scope: !5466)
!5466 = distinct !DILexicalBlock(scope: !5430, file: !3, line: 464, column: 6)
!5467 = !DILocation(line: 464, column: 11, scope: !5466)
!5468 = !DILocation(line: 464, column: 6, scope: !5430)
!5469 = !DILocation(line: 467, column: 3, scope: !5470)
!5470 = distinct !DILexicalBlock(scope: !5466, file: !3, line: 464, column: 16)
!5471 = !DILocation(line: 470, column: 6, scope: !5472)
!5472 = distinct !DILexicalBlock(scope: !5430, file: !3, line: 470, column: 6)
!5473 = !DILocation(line: 470, column: 12, scope: !5472)
!5474 = !DILocation(line: 470, column: 6, scope: !5430)
!5475 = !DILocation(line: 471, column: 13, scope: !5476)
!5476 = distinct !DILexicalBlock(scope: !5472, file: !3, line: 470, column: 19)
!5477 = !DILocation(line: 471, column: 24, scope: !5476)
!5478 = !DILocation(line: 471, column: 21, scope: !5476)
!5479 = !DILocation(line: 471, column: 11, scope: !5476)
!5480 = !DILocation(line: 472, column: 13, scope: !5476)
!5481 = !DILocation(line: 472, column: 24, scope: !5476)
!5482 = !DILocation(line: 472, column: 21, scope: !5476)
!5483 = !DILocation(line: 472, column: 11, scope: !5476)
!5484 = !DILocation(line: 473, column: 21, scope: !5476)
!5485 = !DILocation(line: 473, column: 18, scope: !5476)
!5486 = !DILocation(line: 473, column: 28, scope: !5476)
!5487 = !DILocation(line: 473, column: 12, scope: !5476)
!5488 = !DILocation(line: 474, column: 19, scope: !5476)
!5489 = !DILocation(line: 474, column: 29, scope: !5476)
!5490 = !DILocation(line: 474, column: 27, scope: !5476)
!5491 = !DILocation(line: 474, column: 47, scope: !5476)
!5492 = !DILocation(line: 474, column: 45, scope: !5476)
!5493 = !DILocation(line: 474, column: 38, scope: !5476)
!5494 = !DILocation(line: 474, column: 16, scope: !5476)
!5495 = !DILocation(line: 475, column: 2, scope: !5476)
!5496 = !DILocation(line: 476, column: 11, scope: !5497)
!5497 = distinct !DILexicalBlock(scope: !5472, file: !3, line: 475, column: 9)
!5498 = !DILocation(line: 477, column: 11, scope: !5497)
!5499 = !DILocation(line: 478, column: 12, scope: !5497)
!5500 = !DILocation(line: 479, column: 18, scope: !5497)
!5501 = !DILocation(line: 479, column: 28, scope: !5497)
!5502 = !DILocation(line: 479, column: 26, scope: !5497)
!5503 = !DILocation(line: 479, column: 16, scope: !5497)
!5504 = !DILocation(line: 481, column: 14, scope: !5430)
!5505 = !DILocation(line: 481, column: 24, scope: !5430)
!5506 = !DILocation(line: 481, column: 22, scope: !5430)
!5507 = !DILocation(line: 481, column: 12, scope: !5430)
!5508 = !DILocation(line: 483, column: 6, scope: !5509)
!5509 = distinct !DILexicalBlock(scope: !5430, file: !3, line: 483, column: 6)
!5510 = !DILocation(line: 483, column: 6, scope: !5430)
!5511 = !DILocation(line: 485, column: 3, scope: !5512)
!5512 = distinct !DILexicalBlock(scope: !5509, file: !3, line: 483, column: 20)
!5513 = !DILocation(line: 488, column: 7, scope: !5430)
!5514 = !DILocation(line: 488, column: 16, scope: !5430)
!5515 = !DILocation(line: 488, column: 19, scope: !5430)
!5516 = !DILocation(line: 488, column: 27, scope: !5430)
!5517 = !DILocation(line: 488, column: 25, scope: !5430)
!5518 = !DILocation(line: 488, column: 5, scope: !5430)
!5519 = !DILocation(line: 489, column: 7, scope: !5430)
!5520 = !DILocation(line: 489, column: 16, scope: !5430)
!5521 = !DILocation(line: 489, column: 19, scope: !5430)
!5522 = !DILocation(line: 489, column: 27, scope: !5430)
!5523 = !DILocation(line: 489, column: 25, scope: !5430)
!5524 = !DILocation(line: 489, column: 5, scope: !5430)
!5525 = !DILocation(line: 490, column: 7, scope: !5430)
!5526 = !DILocation(line: 490, column: 16, scope: !5430)
!5527 = !DILocation(line: 490, column: 19, scope: !5430)
!5528 = !DILocation(line: 490, column: 27, scope: !5430)
!5529 = !DILocation(line: 490, column: 25, scope: !5430)
!5530 = !DILocation(line: 490, column: 5, scope: !5430)
!5531 = !DILocation(line: 492, column: 10, scope: !5430)
!5532 = !DILocation(line: 492, column: 2, scope: !5430)
!5533 = !DILocation(line: 495, column: 6, scope: !5534)
!5534 = distinct !DILexicalBlock(scope: !5430, file: !3, line: 492, column: 19)
!5535 = !DILocation(line: 496, column: 6, scope: !5534)
!5536 = !DILocation(line: 497, column: 6, scope: !5534)
!5537 = !DILocation(line: 498, column: 3, scope: !5534)
!5538 = !DILocation(line: 500, column: 9, scope: !5534)
!5539 = !DILocation(line: 500, column: 6, scope: !5534)
!5540 = !DILocation(line: 501, column: 9, scope: !5534)
!5541 = !DILocation(line: 501, column: 6, scope: !5534)
!5542 = !DILocation(line: 502, column: 9, scope: !5534)
!5543 = !DILocation(line: 502, column: 6, scope: !5534)
!5544 = !DILocation(line: 503, column: 10, scope: !5534)
!5545 = !DILocation(line: 503, column: 9, scope: !5534)
!5546 = !DILocation(line: 503, column: 6, scope: !5534)
!5547 = !DILocation(line: 504, column: 3, scope: !5534)
!5548 = !DILocation(line: 506, column: 9, scope: !5534)
!5549 = !DILocation(line: 506, column: 6, scope: !5534)
!5550 = !DILocation(line: 507, column: 10, scope: !5534)
!5551 = !DILocation(line: 507, column: 9, scope: !5534)
!5552 = !DILocation(line: 507, column: 6, scope: !5534)
!5553 = !DILocation(line: 508, column: 9, scope: !5534)
!5554 = !DILocation(line: 508, column: 6, scope: !5534)
!5555 = !DILocation(line: 509, column: 10, scope: !5534)
!5556 = !DILocation(line: 509, column: 9, scope: !5534)
!5557 = !DILocation(line: 509, column: 6, scope: !5534)
!5558 = !DILocation(line: 510, column: 3, scope: !5534)
!5559 = !DILocation(line: 512, column: 3, scope: !5534)
!5560 = !DILocation(line: 519, column: 6, scope: !5561)
!5561 = distinct !DILexicalBlock(scope: !5430, file: !3, line: 519, column: 6)
!5562 = !DILocation(line: 519, column: 11, scope: !5561)
!5563 = !DILocation(line: 519, column: 6, scope: !5430)
!5564 = !DILocalVariable(name: "ret", scope: !5565, file: !3, line: 520, type: !181)
!5565 = distinct !DILexicalBlock(scope: !5561, file: !3, line: 519, column: 17)
!5566 = !DILocation(line: 520, column: 7, scope: !5565)
!5567 = !DILocalVariable(name: "src", scope: !5565, file: !3, line: 521, type: !7)
!5568 = !DILocation(line: 521, column: 16, scope: !5565)
!5569 = !DILocation(line: 523, column: 9, scope: !5565)
!5570 = !DILocation(line: 523, column: 12, scope: !5565)
!5571 = !DILocation(line: 523, column: 7, scope: !5565)
!5572 = !DILocation(line: 524, column: 7, scope: !5573)
!5573 = distinct !DILexicalBlock(scope: !5565, file: !3, line: 524, column: 7)
!5574 = !DILocation(line: 524, column: 7, scope: !5565)
!5575 = !DILocation(line: 525, column: 42, scope: !5573)
!5576 = !DILocation(line: 525, column: 11, scope: !5573)
!5577 = !DILocation(line: 525, column: 8, scope: !5573)
!5578 = !DILocation(line: 525, column: 4, scope: !5573)
!5579 = !DILocation(line: 527, column: 10, scope: !5565)
!5580 = !DILocation(line: 527, column: 13, scope: !5565)
!5581 = !DILocation(line: 527, column: 19, scope: !5565)
!5582 = !DILocation(line: 527, column: 7, scope: !5565)
!5583 = !DILocation(line: 528, column: 7, scope: !5584)
!5584 = distinct !DILexicalBlock(scope: !5565, file: !3, line: 528, column: 7)
!5585 = !DILocation(line: 528, column: 7, scope: !5565)
!5586 = !DILocation(line: 529, column: 42, scope: !5584)
!5587 = !DILocation(line: 529, column: 11, scope: !5584)
!5588 = !DILocation(line: 529, column: 8, scope: !5584)
!5589 = !DILocation(line: 529, column: 4, scope: !5584)
!5590 = !DILocation(line: 531, column: 7, scope: !5591)
!5591 = distinct !DILexicalBlock(scope: !5565, file: !3, line: 531, column: 7)
!5592 = !DILocation(line: 531, column: 7, scope: !5565)
!5593 = !DILocation(line: 534, column: 11, scope: !5594)
!5594 = distinct !DILexicalBlock(scope: !5591, file: !3, line: 531, column: 12)
!5595 = !DILocation(line: 534, column: 4, scope: !5594)
!5596 = !DILocation(line: 536, column: 2, scope: !5565)
!5597 = !DILocation(line: 539, column: 22, scope: !5430)
!5598 = !DILocation(line: 539, column: 2, scope: !5430)
!5599 = !DILocation(line: 539, column: 11, scope: !5430)
!5600 = !DILocation(line: 539, column: 14, scope: !5430)
!5601 = !DILocation(line: 539, column: 20, scope: !5430)
!5602 = !DILocation(line: 540, column: 22, scope: !5430)
!5603 = !DILocation(line: 540, column: 2, scope: !5430)
!5604 = !DILocation(line: 540, column: 11, scope: !5430)
!5605 = !DILocation(line: 540, column: 14, scope: !5430)
!5606 = !DILocation(line: 540, column: 20, scope: !5430)
!5607 = !DILocation(line: 541, column: 22, scope: !5430)
!5608 = !DILocation(line: 541, column: 2, scope: !5430)
!5609 = !DILocation(line: 541, column: 11, scope: !5430)
!5610 = !DILocation(line: 541, column: 14, scope: !5430)
!5611 = !DILocation(line: 541, column: 20, scope: !5430)
!5612 = !DILocation(line: 543, column: 9, scope: !5430)
!5613 = !DILocation(line: 543, column: 15, scope: !5430)
!5614 = !DILocation(line: 543, column: 2, scope: !5430)
!5615 = !DILocation(line: 544, column: 1, scope: !5430)
!5616 = distinct !DISubprogram(name: "comedi_check_trigger_is_unique", scope: !167, file: !167, line: 878, type: !5617, scopeLine: 879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !230)
!5617 = !DISubroutineType(types: !5618)
!5618 = !{!181, !7}
!5619 = !DILocalVariable(name: "src", arg: 1, scope: !5616, file: !167, line: 878, type: !7)
!5620 = !DILocation(line: 878, column: 63, scope: !5616)
!5621 = !DILocation(line: 881, column: 7, scope: !5622)
!5622 = distinct !DILexicalBlock(scope: !5616, file: !167, line: 881, column: 6)
!5623 = !DILocation(line: 881, column: 14, scope: !5622)
!5624 = !DILocation(line: 881, column: 18, scope: !5622)
!5625 = !DILocation(line: 881, column: 11, scope: !5622)
!5626 = !DILocation(line: 881, column: 24, scope: !5622)
!5627 = !DILocation(line: 881, column: 6, scope: !5616)
!5628 = !DILocation(line: 882, column: 3, scope: !5622)
!5629 = !DILocation(line: 883, column: 2, scope: !5616)
!5630 = !DILocation(line: 884, column: 1, scope: !5616)
!5631 = distinct !DISubprogram(name: "comedi_check_trigger_src", scope: !167, file: !167, line: 859, type: !5632, scopeLine: 861, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !230)
!5632 = !DISubroutineType(types: !5633)
!5633 = !{!181, !2666, !7}
!5634 = !DILocalVariable(name: "src", arg: 1, scope: !5631, file: !167, line: 859, type: !2666)
!5635 = !DILocation(line: 859, column: 58, scope: !5631)
!5636 = !DILocalVariable(name: "flags", arg: 2, scope: !5631, file: !167, line: 860, type: !7)
!5637 = !DILocation(line: 860, column: 22, scope: !5631)
!5638 = !DILocalVariable(name: "orig_src", scope: !5631, file: !167, line: 862, type: !7)
!5639 = !DILocation(line: 862, column: 15, scope: !5631)
!5640 = !DILocation(line: 862, column: 27, scope: !5631)
!5641 = !DILocation(line: 862, column: 26, scope: !5631)
!5642 = !DILocation(line: 864, column: 9, scope: !5631)
!5643 = !DILocation(line: 864, column: 20, scope: !5631)
!5644 = !DILocation(line: 864, column: 18, scope: !5631)
!5645 = !DILocation(line: 864, column: 3, scope: !5631)
!5646 = !DILocation(line: 864, column: 7, scope: !5631)
!5647 = !DILocation(line: 865, column: 7, scope: !5648)
!5648 = distinct !DILexicalBlock(scope: !5631, file: !167, line: 865, column: 6)
!5649 = !DILocation(line: 865, column: 6, scope: !5648)
!5650 = !DILocation(line: 865, column: 11, scope: !5648)
!5651 = !DILocation(line: 865, column: 27, scope: !5648)
!5652 = !DILocation(line: 865, column: 31, scope: !5648)
!5653 = !DILocation(line: 865, column: 30, scope: !5648)
!5654 = !DILocation(line: 865, column: 38, scope: !5648)
!5655 = !DILocation(line: 865, column: 35, scope: !5648)
!5656 = !DILocation(line: 865, column: 6, scope: !5631)
!5657 = !DILocation(line: 866, column: 3, scope: !5648)
!5658 = !DILocation(line: 867, column: 2, scope: !5631)
!5659 = !DILocation(line: 868, column: 1, scope: !5631)
!5660 = distinct !DISubprogram(name: "comedi_check_trigger_arg_max", scope: !167, file: !167, line: 939, type: !5632, scopeLine: 941, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !230)
!5661 = !DILocalVariable(name: "arg", arg: 1, scope: !5660, file: !167, line: 939, type: !2666)
!5662 = !DILocation(line: 939, column: 62, scope: !5660)
!5663 = !DILocalVariable(name: "val", arg: 2, scope: !5660, file: !167, line: 940, type: !7)
!5664 = !DILocation(line: 940, column: 26, scope: !5660)
!5665 = !DILocation(line: 942, column: 7, scope: !5666)
!5666 = distinct !DILexicalBlock(scope: !5660, file: !167, line: 942, column: 6)
!5667 = !DILocation(line: 942, column: 6, scope: !5666)
!5668 = !DILocation(line: 942, column: 13, scope: !5666)
!5669 = !DILocation(line: 942, column: 11, scope: !5666)
!5670 = !DILocation(line: 942, column: 6, scope: !5660)
!5671 = !DILocation(line: 943, column: 10, scope: !5672)
!5672 = distinct !DILexicalBlock(scope: !5666, file: !167, line: 942, column: 18)
!5673 = !DILocation(line: 943, column: 4, scope: !5672)
!5674 = !DILocation(line: 943, column: 8, scope: !5672)
!5675 = !DILocation(line: 944, column: 3, scope: !5672)
!5676 = !DILocation(line: 946, column: 2, scope: !5660)
!5677 = !DILocation(line: 947, column: 1, scope: !5660)
!5678 = distinct !DISubprogram(name: "comedi_check_trigger_arg_is", scope: !167, file: !167, line: 897, type: !5632, scopeLine: 899, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !230)
!5679 = !DILocalVariable(name: "arg", arg: 1, scope: !5678, file: !167, line: 897, type: !2666)
!5680 = !DILocation(line: 897, column: 61, scope: !5678)
!5681 = !DILocalVariable(name: "val", arg: 2, scope: !5678, file: !167, line: 898, type: !7)
!5682 = !DILocation(line: 898, column: 25, scope: !5678)
!5683 = !DILocation(line: 900, column: 7, scope: !5684)
!5684 = distinct !DILexicalBlock(scope: !5678, file: !167, line: 900, column: 6)
!5685 = !DILocation(line: 900, column: 6, scope: !5684)
!5686 = !DILocation(line: 900, column: 14, scope: !5684)
!5687 = !DILocation(line: 900, column: 11, scope: !5684)
!5688 = !DILocation(line: 900, column: 6, scope: !5678)
!5689 = !DILocation(line: 901, column: 10, scope: !5690)
!5690 = distinct !DILexicalBlock(scope: !5684, file: !167, line: 900, column: 19)
!5691 = !DILocation(line: 901, column: 4, scope: !5690)
!5692 = !DILocation(line: 901, column: 8, scope: !5690)
!5693 = !DILocation(line: 902, column: 3, scope: !5690)
!5694 = !DILocation(line: 904, column: 2, scope: !5678)
!5695 = !DILocation(line: 905, column: 1, scope: !5678)
!5696 = distinct !DISubprogram(name: "apci1500_di_inttrig_start", scope: !3, file: !3, line: 279, type: !3882, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !230)
!5697 = !DILocalVariable(name: "dev", arg: 1, scope: !5696, file: !3, line: 279, type: !182)
!5698 = !DILocation(line: 279, column: 60, scope: !5696)
!5699 = !DILocalVariable(name: "s", arg: 2, scope: !5696, file: !3, line: 280, type: !3814)
!5700 = !DILocation(line: 280, column: 35, scope: !5696)
!5701 = !DILocalVariable(name: "trig_num", arg: 3, scope: !5696, file: !3, line: 281, type: !7)
!5702 = !DILocation(line: 281, column: 23, scope: !5696)
!5703 = !DILocalVariable(name: "devpriv", scope: !5696, file: !3, line: 283, type: !4287)
!5704 = !DILocation(line: 283, column: 27, scope: !5696)
!5705 = !DILocation(line: 283, column: 37, scope: !5696)
!5706 = !DILocation(line: 283, column: 42, scope: !5696)
!5707 = !DILocalVariable(name: "cmd", scope: !5696, file: !3, line: 284, type: !3934)
!5708 = !DILocation(line: 284, column: 21, scope: !5696)
!5709 = !DILocation(line: 284, column: 28, scope: !5696)
!5710 = !DILocation(line: 284, column: 31, scope: !5696)
!5711 = !DILocation(line: 284, column: 38, scope: !5696)
!5712 = !DILocalVariable(name: "pa_mode", scope: !5696, file: !3, line: 285, type: !7)
!5713 = !DILocation(line: 285, column: 15, scope: !5696)
!5714 = !DILocalVariable(name: "pb_mode", scope: !5696, file: !3, line: 286, type: !7)
!5715 = !DILocation(line: 286, column: 15, scope: !5696)
!5716 = !DILocalVariable(name: "pa_trig", scope: !5696, file: !3, line: 287, type: !7)
!5717 = !DILocation(line: 287, column: 15, scope: !5696)
!5718 = !DILocation(line: 287, column: 25, scope: !5696)
!5719 = !DILocation(line: 287, column: 34, scope: !5696)
!5720 = !DILocalVariable(name: "pb_trig", scope: !5696, file: !3, line: 288, type: !7)
!5721 = !DILocation(line: 288, column: 15, scope: !5696)
!5722 = !DILocation(line: 288, column: 26, scope: !5696)
!5723 = !DILocation(line: 288, column: 35, scope: !5696)
!5724 = !DILocation(line: 288, column: 41, scope: !5696)
!5725 = !DILocalVariable(name: "valid_trig", scope: !5696, file: !3, line: 289, type: !472)
!5726 = !DILocation(line: 289, column: 7, scope: !5696)
!5727 = !DILocalVariable(name: "val", scope: !5696, file: !3, line: 290, type: !7)
!5728 = !DILocation(line: 290, column: 15, scope: !5696)
!5729 = !DILocation(line: 292, column: 6, scope: !5730)
!5730 = distinct !DILexicalBlock(scope: !5696, file: !3, line: 292, column: 6)
!5731 = !DILocation(line: 292, column: 18, scope: !5730)
!5732 = !DILocation(line: 292, column: 23, scope: !5730)
!5733 = !DILocation(line: 292, column: 15, scope: !5730)
!5734 = !DILocation(line: 292, column: 6, scope: !5696)
!5735 = !DILocation(line: 293, column: 3, scope: !5730)
!5736 = !DILocation(line: 296, column: 23, scope: !5696)
!5737 = !DILocation(line: 296, column: 2, scope: !5696)
!5738 = !DILocation(line: 299, column: 14, scope: !5696)
!5739 = !DILocation(line: 299, column: 19, scope: !5696)
!5740 = !DILocation(line: 299, column: 28, scope: !5696)
!5741 = !DILocation(line: 299, column: 31, scope: !5696)
!5742 = !DILocation(line: 299, column: 40, scope: !5696)
!5743 = !DILocation(line: 299, column: 2, scope: !5696)
!5744 = !DILocation(line: 300, column: 14, scope: !5696)
!5745 = !DILocation(line: 300, column: 19, scope: !5696)
!5746 = !DILocation(line: 300, column: 28, scope: !5696)
!5747 = !DILocation(line: 300, column: 31, scope: !5696)
!5748 = !DILocation(line: 300, column: 40, scope: !5696)
!5749 = !DILocation(line: 300, column: 2, scope: !5696)
!5750 = !DILocation(line: 301, column: 14, scope: !5696)
!5751 = !DILocation(line: 301, column: 19, scope: !5696)
!5752 = !DILocation(line: 301, column: 28, scope: !5696)
!5753 = !DILocation(line: 301, column: 31, scope: !5696)
!5754 = !DILocation(line: 301, column: 40, scope: !5696)
!5755 = !DILocation(line: 301, column: 2, scope: !5696)
!5756 = !DILocation(line: 304, column: 14, scope: !5696)
!5757 = !DILocation(line: 304, column: 20, scope: !5696)
!5758 = !DILocation(line: 304, column: 29, scope: !5696)
!5759 = !DILocation(line: 304, column: 32, scope: !5696)
!5760 = !DILocation(line: 304, column: 41, scope: !5696)
!5761 = !DILocation(line: 304, column: 47, scope: !5696)
!5762 = !DILocation(line: 304, column: 2, scope: !5696)
!5763 = !DILocation(line: 305, column: 14, scope: !5696)
!5764 = !DILocation(line: 305, column: 20, scope: !5696)
!5765 = !DILocation(line: 305, column: 29, scope: !5696)
!5766 = !DILocation(line: 305, column: 32, scope: !5696)
!5767 = !DILocation(line: 305, column: 41, scope: !5696)
!5768 = !DILocation(line: 305, column: 47, scope: !5696)
!5769 = !DILocation(line: 305, column: 2, scope: !5696)
!5770 = !DILocation(line: 306, column: 14, scope: !5696)
!5771 = !DILocation(line: 306, column: 20, scope: !5696)
!5772 = !DILocation(line: 306, column: 29, scope: !5696)
!5773 = !DILocation(line: 306, column: 32, scope: !5696)
!5774 = !DILocation(line: 306, column: 41, scope: !5696)
!5775 = !DILocation(line: 306, column: 47, scope: !5696)
!5776 = !DILocation(line: 306, column: 2, scope: !5696)
!5777 = !DILocation(line: 309, column: 6, scope: !5778)
!5778 = distinct !DILexicalBlock(scope: !5696, file: !3, line: 309, column: 6)
!5779 = !DILocation(line: 309, column: 15, scope: !5778)
!5780 = !DILocation(line: 309, column: 18, scope: !5778)
!5781 = !DILocation(line: 309, column: 27, scope: !5778)
!5782 = !DILocation(line: 309, column: 6, scope: !5696)
!5783 = !DILocation(line: 310, column: 13, scope: !5784)
!5784 = distinct !DILexicalBlock(scope: !5778, file: !3, line: 309, column: 35)
!5785 = !DILocation(line: 310, column: 11, scope: !5784)
!5786 = !DILocation(line: 313, column: 20, scope: !5784)
!5787 = !DILocation(line: 313, column: 9, scope: !5784)
!5788 = !DILocation(line: 313, column: 7, scope: !5784)
!5789 = !DILocation(line: 314, column: 7, scope: !5784)
!5790 = !DILocation(line: 315, column: 11, scope: !5784)
!5791 = !DILocation(line: 315, column: 19, scope: !5784)
!5792 = !DILocation(line: 315, column: 7, scope: !5784)
!5793 = !DILocation(line: 316, column: 15, scope: !5784)
!5794 = !DILocation(line: 316, column: 20, scope: !5784)
!5795 = !DILocation(line: 316, column: 3, scope: !5784)
!5796 = !DILocation(line: 318, column: 15, scope: !5784)
!5797 = !DILocation(line: 318, column: 3, scope: !5784)
!5798 = !DILocation(line: 320, column: 14, scope: !5784)
!5799 = !DILocation(line: 325, column: 2, scope: !5784)
!5800 = !DILocation(line: 328, column: 6, scope: !5801)
!5801 = distinct !DILexicalBlock(scope: !5696, file: !3, line: 328, column: 6)
!5802 = !DILocation(line: 328, column: 15, scope: !5801)
!5803 = !DILocation(line: 328, column: 18, scope: !5801)
!5804 = !DILocation(line: 328, column: 27, scope: !5801)
!5805 = !DILocation(line: 328, column: 6, scope: !5696)
!5806 = !DILocation(line: 329, column: 13, scope: !5807)
!5807 = distinct !DILexicalBlock(scope: !5801, file: !3, line: 328, column: 37)
!5808 = !DILocation(line: 329, column: 11, scope: !5807)
!5809 = !DILocation(line: 332, column: 20, scope: !5807)
!5810 = !DILocation(line: 332, column: 9, scope: !5807)
!5811 = !DILocation(line: 332, column: 7, scope: !5807)
!5812 = !DILocation(line: 333, column: 7, scope: !5807)
!5813 = !DILocation(line: 334, column: 11, scope: !5807)
!5814 = !DILocation(line: 334, column: 19, scope: !5807)
!5815 = !DILocation(line: 334, column: 7, scope: !5807)
!5816 = !DILocation(line: 335, column: 15, scope: !5807)
!5817 = !DILocation(line: 335, column: 20, scope: !5807)
!5818 = !DILocation(line: 335, column: 3, scope: !5807)
!5819 = !DILocation(line: 337, column: 15, scope: !5807)
!5820 = !DILocation(line: 337, column: 3, scope: !5807)
!5821 = !DILocation(line: 339, column: 14, scope: !5807)
!5822 = !DILocation(line: 344, column: 2, scope: !5807)
!5823 = !DILocation(line: 347, column: 23, scope: !5696)
!5824 = !DILocation(line: 347, column: 2, scope: !5696)
!5825 = !DILocation(line: 349, column: 7, scope: !5826)
!5826 = distinct !DILexicalBlock(scope: !5696, file: !3, line: 349, column: 6)
!5827 = !DILocation(line: 349, column: 6, scope: !5696)
!5828 = !DILocation(line: 352, column: 3, scope: !5829)
!5829 = distinct !DILexicalBlock(scope: !5826, file: !3, line: 349, column: 19)
!5830 = !DILocation(line: 356, column: 14, scope: !5696)
!5831 = !DILocation(line: 356, column: 2, scope: !5696)
!5832 = !DILocation(line: 359, column: 2, scope: !5696)
!5833 = !DILocation(line: 360, column: 1, scope: !5696)
!5834 = distinct !DISubprogram(name: "apci1500_port_enable", scope: !3, file: !3, line: 155, type: !5835, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !230)
!5835 = !DISubroutineType(types: !5836)
!5836 = !{null, !182, !472}
!5837 = !DILocalVariable(name: "dev", arg: 1, scope: !5834, file: !3, line: 155, type: !182)
!5838 = !DILocation(line: 155, column: 56, scope: !5834)
!5839 = !DILocalVariable(name: "enable", arg: 2, scope: !5834, file: !3, line: 155, type: !472)
!5840 = !DILocation(line: 155, column: 66, scope: !5834)
!5841 = !DILocalVariable(name: "cfg", scope: !5834, file: !3, line: 157, type: !7)
!5842 = !DILocation(line: 157, column: 15, scope: !5834)
!5843 = !DILocation(line: 159, column: 19, scope: !5834)
!5844 = !DILocation(line: 159, column: 8, scope: !5834)
!5845 = !DILocation(line: 159, column: 6, scope: !5834)
!5846 = !DILocation(line: 160, column: 6, scope: !5847)
!5847 = distinct !DILexicalBlock(scope: !5834, file: !3, line: 160, column: 6)
!5848 = !DILocation(line: 160, column: 6, scope: !5834)
!5849 = !DILocation(line: 161, column: 7, scope: !5847)
!5850 = !DILocation(line: 161, column: 3, scope: !5847)
!5851 = !DILocation(line: 163, column: 7, scope: !5847)
!5852 = !DILocation(line: 164, column: 14, scope: !5834)
!5853 = !DILocation(line: 164, column: 19, scope: !5834)
!5854 = !DILocation(line: 164, column: 2, scope: !5834)
!5855 = !DILocation(line: 165, column: 1, scope: !5834)
!5856 = distinct !DISubprogram(name: "apci1500_timer_enable", scope: !3, file: !3, line: 167, type: !5857, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !230)
!5857 = !DISubroutineType(types: !5858)
!5858 = !{null, !182, !7, !472}
!5859 = !DILocalVariable(name: "dev", arg: 1, scope: !5856, file: !3, line: 167, type: !182)
!5860 = !DILocation(line: 167, column: 57, scope: !5856)
!5861 = !DILocalVariable(name: "chan", arg: 2, scope: !5856, file: !3, line: 168, type: !7)
!5862 = !DILocation(line: 168, column: 20, scope: !5856)
!5863 = !DILocalVariable(name: "enable", arg: 3, scope: !5856, file: !3, line: 168, type: !472)
!5864 = !DILocation(line: 168, column: 31, scope: !5856)
!5865 = !DILocalVariable(name: "bit", scope: !5856, file: !3, line: 170, type: !7)
!5866 = !DILocation(line: 170, column: 15, scope: !5856)
!5867 = !DILocalVariable(name: "cfg", scope: !5856, file: !3, line: 171, type: !7)
!5868 = !DILocation(line: 171, column: 15, scope: !5856)
!5869 = !DILocation(line: 173, column: 6, scope: !5870)
!5870 = distinct !DILexicalBlock(scope: !5856, file: !3, line: 173, column: 6)
!5871 = !DILocation(line: 173, column: 11, scope: !5870)
!5872 = !DILocation(line: 173, column: 6, scope: !5856)
!5873 = !DILocation(line: 174, column: 7, scope: !5870)
!5874 = !DILocation(line: 174, column: 3, scope: !5870)
!5875 = !DILocation(line: 175, column: 11, scope: !5876)
!5876 = distinct !DILexicalBlock(scope: !5870, file: !3, line: 175, column: 11)
!5877 = !DILocation(line: 175, column: 16, scope: !5876)
!5878 = !DILocation(line: 175, column: 11, scope: !5870)
!5879 = !DILocation(line: 176, column: 7, scope: !5876)
!5880 = !DILocation(line: 176, column: 3, scope: !5876)
!5881 = !DILocation(line: 178, column: 7, scope: !5876)
!5882 = !DILocation(line: 180, column: 19, scope: !5856)
!5883 = !DILocation(line: 180, column: 8, scope: !5856)
!5884 = !DILocation(line: 180, column: 6, scope: !5856)
!5885 = !DILocation(line: 181, column: 6, scope: !5886)
!5886 = distinct !DILexicalBlock(scope: !5856, file: !3, line: 181, column: 6)
!5887 = !DILocation(line: 181, column: 6, scope: !5856)
!5888 = !DILocation(line: 182, column: 10, scope: !5889)
!5889 = distinct !DILexicalBlock(scope: !5886, file: !3, line: 181, column: 14)
!5890 = !DILocation(line: 182, column: 7, scope: !5889)
!5891 = !DILocation(line: 183, column: 2, scope: !5889)
!5892 = !DILocation(line: 184, column: 11, scope: !5893)
!5893 = distinct !DILexicalBlock(scope: !5886, file: !3, line: 183, column: 9)
!5894 = !DILocation(line: 184, column: 10, scope: !5893)
!5895 = !DILocation(line: 184, column: 7, scope: !5893)
!5896 = !DILocation(line: 185, column: 15, scope: !5893)
!5897 = !DILocation(line: 185, column: 26, scope: !5893)
!5898 = !DILocation(line: 185, column: 3, scope: !5893)
!5899 = !DILocation(line: 187, column: 14, scope: !5856)
!5900 = !DILocation(line: 187, column: 19, scope: !5856)
!5901 = !DILocation(line: 187, column: 2, scope: !5856)
!5902 = !DILocation(line: 188, column: 1, scope: !5856)
!5903 = distinct !DISubprogram(name: "apci1500_pci_probe", scope: !3, file: !3, line: 865, type: !4008, scopeLine: 867, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !230)
!5904 = !DILocalVariable(name: "dev", arg: 1, scope: !5903, file: !3, line: 865, type: !4010)
!5905 = !DILocation(line: 865, column: 47, scope: !5903)
!5906 = !DILocalVariable(name: "id", arg: 2, scope: !5903, file: !3, line: 866, type: !3995)
!5907 = !DILocation(line: 866, column: 38, scope: !5903)
!5908 = !DILocation(line: 868, column: 32, scope: !5903)
!5909 = !DILocation(line: 868, column: 55, scope: !5903)
!5910 = !DILocation(line: 868, column: 59, scope: !5903)
!5911 = !DILocation(line: 868, column: 9, scope: !5903)
!5912 = !DILocation(line: 868, column: 2, scope: !5903)
