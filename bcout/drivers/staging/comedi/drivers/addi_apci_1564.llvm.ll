; ModuleID = '../bcout/drivers/staging/comedi/drivers/addi_apci_1564.llvm.bc'
source_filename = "drivers/staging/comedi/drivers/addi_apci_1564.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_apci1564_driver_init6:\09\09\09"
module asm ".long\09apci1564_driver_init - .\09\09\09"
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
%struct.apci1564_private = type { i64, i64, i64, i32, i32, i32 }

@__UNIQUE_ID___addressable_apci1564_driver_init234 = internal global i8* bitcast (i32 ()* @apci1564_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@apci1564_driver = internal global %struct.comedi_driver { %struct.comedi_driver* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), %struct.module* null, i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* null, void (%struct.comedi_device*)* @apci1564_detach, i32 (%struct.comedi_device*, i64)* @apci1564_auto_attach, i32 0, i8** null, i32 0 }, align 8, !dbg !157
@apci1564_pci_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), %struct.pci_device_id* getelementptr inbounds ([2 x %struct.pci_device_id], [2 x %struct.pci_device_id]* @apci1564_pci_table, i32 0, i32 0), i32 (%struct.pci_dev*, %struct.pci_device_id*)* @apci1564_pci_probe, void (%struct.pci_dev*)* @comedi_pci_auto_unconfig, i32 (%struct.pci_dev*, i32)* null, i32 (%struct.pci_dev*)* null, void (%struct.pci_dev*)* null, i32 (%struct.pci_dev*, i32)* null, %struct.pci_error_handlers* null, %struct.attribute_group** null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, align 8, !dbg !3981
@__exitcall_apci1564_driver_exit = internal global void ()* @apci1564_driver_exit, section ".exitcall.exit", align 8, !dbg !128
@__UNIQUE_ID_author235 = internal constant [52 x i8] c"addi_apci_1564.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1, !dbg !135
@__UNIQUE_ID_description236 = internal constant [85 x i8] c"addi_apci_1564.description=ADDI-DATA APCI-1564, 32 channel DI / 32 channel DO boards\00", section ".modinfo", align 1, !dbg !142
@__UNIQUE_ID_file237 = internal constant [66 x i8] c"addi_apci_1564.file=drivers/staging/comedi/drivers/addi_apci_1564\00", section ".modinfo", align 1, !dbg !147
@__UNIQUE_ID_license238 = internal constant [27 x i8] c"addi_apci_1564.license=GPL\00", section ".modinfo", align 1, !dbg !152
@.str = private unnamed_addr constant [15 x i8] c"addi_apci_1564\00", align 1
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Interrupts disabled due to mode configuration!\0A\00", align 1
@apci1564_pci_table = internal constant [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 5560, i32 4102, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id zeroinitializer], align 16, !dbg !4262
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_apci1564_driver_init234 to i8*), i8* bitcast (void ()* @apci1564_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_apci1564_driver_exit to i8*), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__UNIQUE_ID_author235, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @__UNIQUE_ID_description236, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @__UNIQUE_ID_file237, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__UNIQUE_ID_license238, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @apci1564_driver_init() #0 section ".init.text" !dbg !4270 {
entry:
  %call = call i32 @comedi_pci_driver_register(%struct.comedi_driver* @apci1564_driver, %struct.pci_driver* @apci1564_pci_driver) #5, !dbg !4273
  ret i32 %call, !dbg !4273
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @apci1564_driver_exit() #0 section ".exit.text" !dbg !4274 {
entry:
  call void @comedi_pci_driver_unregister(%struct.comedi_driver* @apci1564_driver, %struct.pci_driver* @apci1564_pci_driver) #5, !dbg !4275
  ret void, !dbg !4275
}

; Function Attrs: noredzone
declare dso_local void @comedi_pci_driver_unregister(%struct.comedi_driver*, %struct.pci_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_pci_driver_register(%struct.comedi_driver*, %struct.pci_driver*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @apci1564_detach(%struct.comedi_device* %dev) #2 !dbg !4276 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4277, metadata !DIExpression()), !dbg !4278
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4279
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 18, !dbg !4281
  %1 = load i64, i64* %iobase, align 8, !dbg !4281
  %tobool = icmp ne i64 %1, 0, !dbg !4279
  br i1 %tobool, label %if.then, label %if.end, !dbg !4282

if.then:                                          ; preds = %entry
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4283
  %call = call i32 @apci1564_reset(%struct.comedi_device* %2) #5, !dbg !4284
  br label %if.end, !dbg !4284

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4285
  call void @comedi_pci_detach(%struct.comedi_device* %3) #5, !dbg !4286
  ret void, !dbg !4287
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci1564_auto_attach(%struct.comedi_device* %dev, i64 %context_unused) #2 !dbg !4288 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %context_unused.addr = alloca i64, align 8
  %pcidev = alloca %struct.pci_dev*, align 8
  %devpriv = alloca %struct.apci1564_private*, align 8
  %s = alloca %struct.comedi_subdevice*, align 8
  %val = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4289, metadata !DIExpression()), !dbg !4290
  store i64 %context_unused, i64* %context_unused.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %context_unused.addr, metadata !4291, metadata !DIExpression()), !dbg !4292
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pcidev, metadata !4293, metadata !DIExpression()), !dbg !4294
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4295
  %call = call %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device* %0) #5, !dbg !4296
  store %struct.pci_dev* %call, %struct.pci_dev** %pcidev, align 8, !dbg !4294
  call void @llvm.dbg.declare(metadata %struct.apci1564_private** %devpriv, metadata !4297, metadata !DIExpression()), !dbg !4307
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s, metadata !4308, metadata !DIExpression()), !dbg !4309
  call void @llvm.dbg.declare(metadata i32* %val, metadata !4310, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4312, metadata !DIExpression()), !dbg !4313
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4314
  %call1 = call i8* @comedi_alloc_devpriv(%struct.comedi_device* %1, i64 40) #5, !dbg !4315
  %2 = bitcast i8* %call1 to %struct.apci1564_private*, !dbg !4315
  store %struct.apci1564_private* %2, %struct.apci1564_private** %devpriv, align 8, !dbg !4316
  %3 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !4317
  %tobool = icmp ne %struct.apci1564_private* %3, null, !dbg !4317
  br i1 %tobool, label %if.end, label %if.then, !dbg !4319

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !4320
  br label %return, !dbg !4320

if.end:                                           ; preds = %entry
  %4 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4321
  %call2 = call i32 @comedi_pci_enable(%struct.comedi_device* %4) #5, !dbg !4322
  store i32 %call2, i32* %ret, align 4, !dbg !4323
  %5 = load i32, i32* %ret, align 4, !dbg !4324
  %tobool3 = icmp ne i32 %5, 0, !dbg !4324
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4326

if.then4:                                         ; preds = %if.end
  %6 = load i32, i32* %ret, align 4, !dbg !4327
  store i32 %6, i32* %retval, align 4, !dbg !4328
  br label %return, !dbg !4328

if.end5:                                          ; preds = %if.end
  %7 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4329
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 44, !dbg !4329
  %arrayidx = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 0, !dbg !4329
  %start = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx, i32 0, i32 0, !dbg !4329
  %8 = load i64, i64* %start, align 8, !dbg !4329
  %9 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !4330
  %eeprom = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %9, i32 0, i32 0, !dbg !4331
  store i64 %8, i64* %eeprom, align 8, !dbg !4332
  %10 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !4333
  %eeprom6 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %10, i32 0, i32 0, !dbg !4334
  %11 = load i64, i64* %eeprom6, align 8, !dbg !4334
  %add = add i64 %11, 0, !dbg !4335
  %conv = trunc i64 %add to i32, !dbg !4333
  %call7 = call i32 @inl(i32 %conv) #5, !dbg !4336
  store i32 %call7, i32* %val, align 4, !dbg !4337
  %12 = load i32, i32* %val, align 4, !dbg !4338
  %shr = lshr i32 %12, 4, !dbg !4338
  %and = and i32 %shr, 15, !dbg !4338
  %cmp = icmp eq i32 %and, 0, !dbg !4340
  br i1 %cmp, label %if.then9, label %if.else, !dbg !4341

if.then9:                                         ; preds = %if.end5
  %13 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4342
  %resource10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 44, !dbg !4342
  %arrayidx11 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource10, i64 0, i64 1, !dbg !4342
  %start12 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx11, i32 0, i32 0, !dbg !4342
  %14 = load i64, i64* %start12, align 8, !dbg !4342
  %add13 = add i64 %14, 0, !dbg !4344
  %15 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4345
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 18, !dbg !4346
  store i64 %add13, i64* %iobase, align 8, !dbg !4347
  %16 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !4348
  %eeprom14 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %16, i32 0, i32 0, !dbg !4349
  %17 = load i64, i64* %eeprom14, align 8, !dbg !4349
  %add15 = add i64 %17, 4, !dbg !4350
  %18 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !4351
  %timer = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %18, i32 0, i32 1, !dbg !4352
  store i64 %add15, i64* %timer, align 8, !dbg !4353
  br label %if.end25, !dbg !4354

if.else:                                          ; preds = %if.end5
  %19 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !4355
  %eeprom16 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %19, i32 0, i32 0, !dbg !4357
  %20 = load i64, i64* %eeprom16, align 8, !dbg !4357
  %add17 = add i64 %20, 4, !dbg !4358
  %21 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4359
  %iobase18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %21, i32 0, i32 18, !dbg !4360
  store i64 %add17, i64* %iobase18, align 8, !dbg !4361
  %22 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !4362
  %eeprom19 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %22, i32 0, i32 0, !dbg !4363
  %23 = load i64, i64* %eeprom19, align 8, !dbg !4363
  %add20 = add i64 %23, 72, !dbg !4364
  %24 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !4365
  %timer21 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %24, i32 0, i32 1, !dbg !4366
  store i64 %add20, i64* %timer21, align 8, !dbg !4367
  %25 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4368
  %resource22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 44, !dbg !4368
  %arrayidx23 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource22, i64 0, i64 1, !dbg !4368
  %start24 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx23, i32 0, i32 0, !dbg !4368
  %26 = load i64, i64* %start24, align 8, !dbg !4368
  %27 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !4369
  %counters = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %27, i32 0, i32 2, !dbg !4370
  store i64 %26, i64* %counters, align 8, !dbg !4371
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then9
  %28 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4372
  %call26 = call i32 @apci1564_reset(%struct.comedi_device* %28) #5, !dbg !4373
  %29 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4374
  %irq = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 43, !dbg !4376
  %30 = load i32, i32* %irq, align 4, !dbg !4376
  %cmp27 = icmp ugt i32 %30, 0, !dbg !4377
  br i1 %cmp27, label %if.then29, label %if.end38, !dbg !4378

if.then29:                                        ; preds = %if.end25
  %31 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4379
  %irq30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 43, !dbg !4381
  %32 = load i32, i32* %irq30, align 4, !dbg !4381
  %33 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4382
  %board_name = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %33, i32 0, i32 8, !dbg !4383
  %34 = load i8*, i8** %board_name, align 8, !dbg !4383
  %35 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4384
  %36 = bitcast %struct.comedi_device* %35 to i8*, !dbg !4384
  %call31 = call i32 @request_irq(i32 %32, i32 (i32, i8*)* @apci1564_interrupt, i64 128, i8* %34, i8* %36) #5, !dbg !4385
  store i32 %call31, i32* %ret, align 4, !dbg !4386
  %37 = load i32, i32* %ret, align 4, !dbg !4387
  %cmp32 = icmp eq i32 %37, 0, !dbg !4389
  br i1 %cmp32, label %if.then34, label %if.end37, !dbg !4390

if.then34:                                        ; preds = %if.then29
  %38 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4391
  %irq35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 43, !dbg !4392
  %39 = load i32, i32* %irq35, align 4, !dbg !4392
  %40 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4393
  %irq36 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %40, i32 0, i32 20, !dbg !4394
  store i32 %39, i32* %irq36, align 8, !dbg !4395
  br label %if.end37, !dbg !4393

if.end37:                                         ; preds = %if.then34, %if.then29
  br label %if.end38, !dbg !4396

if.end38:                                         ; preds = %if.end37, %if.end25
  %41 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4397
  %call39 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %41, i32 7) #5, !dbg !4398
  store i32 %call39, i32* %ret, align 4, !dbg !4399
  %42 = load i32, i32* %ret, align 4, !dbg !4400
  %tobool40 = icmp ne i32 %42, 0, !dbg !4400
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !4402

if.then41:                                        ; preds = %if.end38
  %43 = load i32, i32* %ret, align 4, !dbg !4403
  store i32 %43, i32* %retval, align 4, !dbg !4404
  br label %return, !dbg !4404

if.end42:                                         ; preds = %if.end38
  %44 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4405
  %subdevices = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %44, i32 0, i32 16, !dbg !4406
  %45 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices, align 8, !dbg !4406
  %arrayidx43 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %45, i64 0, !dbg !4405
  store %struct.comedi_subdevice* %arrayidx43, %struct.comedi_subdevice** %s, align 8, !dbg !4407
  %46 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4408
  %type = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %46, i32 0, i32 2, !dbg !4409
  store i32 3, i32* %type, align 4, !dbg !4410
  %47 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4411
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %47, i32 0, i32 4, !dbg !4412
  store i32 65536, i32* %subdev_flags, align 4, !dbg !4413
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4414
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %48, i32 0, i32 3, !dbg !4415
  store i32 32, i32* %n_chan, align 8, !dbg !4416
  %49 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4417
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %49, i32 0, i32 13, !dbg !4418
  store i32 1, i32* %maxdata, align 8, !dbg !4419
  %50 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4420
  %range_table = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %50, i32 0, i32 15, !dbg !4421
  store %struct.comedi_lrange* @range_unipolar5, %struct.comedi_lrange** %range_table, align 8, !dbg !4422
  %51 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4423
  %insn_bits = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %51, i32 0, i32 20, !dbg !4424
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @apci1564_di_insn_bits, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_bits, align 8, !dbg !4425
  %52 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4426
  %subdevices44 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %52, i32 0, i32 16, !dbg !4427
  %53 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices44, align 8, !dbg !4427
  %arrayidx45 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %53, i64 1, !dbg !4426
  store %struct.comedi_subdevice* %arrayidx45, %struct.comedi_subdevice** %s, align 8, !dbg !4428
  %54 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4429
  %type46 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %54, i32 0, i32 2, !dbg !4430
  store i32 4, i32* %type46, align 4, !dbg !4431
  %55 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4432
  %subdev_flags47 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %55, i32 0, i32 4, !dbg !4433
  store i32 131072, i32* %subdev_flags47, align 4, !dbg !4434
  %56 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4435
  %n_chan48 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %56, i32 0, i32 3, !dbg !4436
  store i32 32, i32* %n_chan48, align 8, !dbg !4437
  %57 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4438
  %maxdata49 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %57, i32 0, i32 13, !dbg !4439
  store i32 1, i32* %maxdata49, align 8, !dbg !4440
  %58 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4441
  %range_table50 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %58, i32 0, i32 15, !dbg !4442
  store %struct.comedi_lrange* @range_unipolar5, %struct.comedi_lrange** %range_table50, align 8, !dbg !4443
  %59 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4444
  %insn_bits51 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %59, i32 0, i32 20, !dbg !4445
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @apci1564_do_insn_bits, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_bits51, align 8, !dbg !4446
  %60 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4447
  %subdevices52 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %60, i32 0, i32 16, !dbg !4448
  %61 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices52, align 8, !dbg !4448
  %arrayidx53 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %61, i64 2, !dbg !4447
  store %struct.comedi_subdevice* %arrayidx53, %struct.comedi_subdevice** %s, align 8, !dbg !4449
  %62 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4450
  %irq54 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %62, i32 0, i32 20, !dbg !4452
  %63 = load i32, i32* %irq54, align 8, !dbg !4452
  %tobool55 = icmp ne i32 %63, 0, !dbg !4450
  br i1 %tobool55, label %if.then56, label %if.else63, !dbg !4453

if.then56:                                        ; preds = %if.end42
  %64 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4454
  %65 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4456
  %read_subdev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %65, i32 0, i32 21, !dbg !4457
  store %struct.comedi_subdevice* %64, %struct.comedi_subdevice** %read_subdev, align 8, !dbg !4458
  %66 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4459
  %type57 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %66, i32 0, i32 2, !dbg !4460
  store i32 3, i32* %type57, align 4, !dbg !4461
  %67 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4462
  %subdev_flags58 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %67, i32 0, i32 4, !dbg !4463
  store i32 268533760, i32* %subdev_flags58, align 4, !dbg !4464
  %68 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4465
  %n_chan59 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %68, i32 0, i32 3, !dbg !4466
  store i32 1, i32* %n_chan59, align 8, !dbg !4467
  %69 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4468
  %maxdata60 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %69, i32 0, i32 13, !dbg !4469
  store i32 1, i32* %maxdata60, align 8, !dbg !4470
  %70 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4471
  %range_table61 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %70, i32 0, i32 15, !dbg !4472
  store %struct.comedi_lrange* @range_unipolar5, %struct.comedi_lrange** %range_table61, align 8, !dbg !4473
  %71 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4474
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %71, i32 0, i32 5, !dbg !4475
  store i32 1, i32* %len_chanlist, align 8, !dbg !4476
  %72 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4477
  %insn_config = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %72, i32 0, i32 21, !dbg !4478
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @apci1564_cos_insn_config, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_config, align 8, !dbg !4479
  %73 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4480
  %insn_bits62 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %73, i32 0, i32 20, !dbg !4481
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @apci1564_cos_insn_bits, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_bits62, align 8, !dbg !4482
  %74 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4483
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %74, i32 0, i32 23, !dbg !4484
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @apci1564_cos_cmdtest, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)** %do_cmdtest, align 8, !dbg !4485
  %75 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4486
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %75, i32 0, i32 22, !dbg !4487
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @apci1564_cos_cmd, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)** %do_cmd, align 8, !dbg !4488
  %76 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4489
  %cancel = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %76, i32 0, i32 25, !dbg !4490
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @apci1564_cos_cancel, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)** %cancel, align 8, !dbg !4491
  br label %if.end65, !dbg !4492

if.else63:                                        ; preds = %if.end42
  %77 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4493
  %type64 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %77, i32 0, i32 2, !dbg !4495
  store i32 0, i32* %type64, align 4, !dbg !4496
  br label %if.end65

if.end65:                                         ; preds = %if.else63, %if.then56
  %78 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4497
  %subdevices66 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %78, i32 0, i32 16, !dbg !4498
  %79 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices66, align 8, !dbg !4498
  %arrayidx67 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %79, i64 3, !dbg !4497
  store %struct.comedi_subdevice* %arrayidx67, %struct.comedi_subdevice** %s, align 8, !dbg !4499
  %80 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4500
  %type68 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %80, i32 0, i32 2, !dbg !4501
  store i32 7, i32* %type68, align 4, !dbg !4502
  %81 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4503
  %subdev_flags69 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %81, i32 0, i32 4, !dbg !4504
  store i32 196608, i32* %subdev_flags69, align 4, !dbg !4505
  %82 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4506
  %n_chan70 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %82, i32 0, i32 3, !dbg !4507
  store i32 1, i32* %n_chan70, align 8, !dbg !4508
  %83 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4509
  %maxdata71 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %83, i32 0, i32 13, !dbg !4510
  store i32 4095, i32* %maxdata71, align 8, !dbg !4511
  %84 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4512
  %range_table72 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %84, i32 0, i32 15, !dbg !4513
  store %struct.comedi_lrange* @range_unipolar5, %struct.comedi_lrange** %range_table72, align 8, !dbg !4514
  %85 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4515
  %insn_config73 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %85, i32 0, i32 21, !dbg !4516
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @apci1564_timer_insn_config, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_config73, align 8, !dbg !4517
  %86 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4518
  %insn_write = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %86, i32 0, i32 19, !dbg !4519
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @apci1564_timer_insn_write, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_write, align 8, !dbg !4520
  %87 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4521
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %87, i32 0, i32 18, !dbg !4522
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @apci1564_timer_insn_read, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_read, align 8, !dbg !4523
  %88 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4524
  %subdevices74 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %88, i32 0, i32 16, !dbg !4525
  %89 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices74, align 8, !dbg !4525
  %arrayidx75 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %89, i64 4, !dbg !4524
  store %struct.comedi_subdevice* %arrayidx75, %struct.comedi_subdevice** %s, align 8, !dbg !4526
  %90 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !4527
  %counters76 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %90, i32 0, i32 2, !dbg !4529
  %91 = load i64, i64* %counters76, align 8, !dbg !4529
  %tobool77 = icmp ne i64 %91, 0, !dbg !4527
  br i1 %tobool77, label %if.then78, label %if.else87, !dbg !4530

if.then78:                                        ; preds = %if.end65
  %92 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4531
  %type79 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %92, i32 0, i32 2, !dbg !4533
  store i32 6, i32* %type79, align 4, !dbg !4534
  %93 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4535
  %subdev_flags80 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %93, i32 0, i32 4, !dbg !4536
  store i32 268632064, i32* %subdev_flags80, align 4, !dbg !4537
  %94 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4538
  %n_chan81 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %94, i32 0, i32 3, !dbg !4539
  store i32 3, i32* %n_chan81, align 8, !dbg !4540
  %95 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4541
  %maxdata82 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %95, i32 0, i32 13, !dbg !4542
  store i32 -1, i32* %maxdata82, align 8, !dbg !4543
  %96 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4544
  %range_table83 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %96, i32 0, i32 15, !dbg !4545
  store %struct.comedi_lrange* @range_unipolar5, %struct.comedi_lrange** %range_table83, align 8, !dbg !4546
  %97 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4547
  %insn_config84 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %97, i32 0, i32 21, !dbg !4548
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @apci1564_counter_insn_config, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_config84, align 8, !dbg !4549
  %98 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4550
  %insn_write85 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %98, i32 0, i32 19, !dbg !4551
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @apci1564_counter_insn_write, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_write85, align 8, !dbg !4552
  %99 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4553
  %insn_read86 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %99, i32 0, i32 18, !dbg !4554
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @apci1564_counter_insn_read, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_read86, align 8, !dbg !4555
  br label %if.end89, !dbg !4556

if.else87:                                        ; preds = %if.end65
  %100 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4557
  %type88 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %100, i32 0, i32 2, !dbg !4559
  store i32 0, i32* %type88, align 4, !dbg !4560
  br label %if.end89

if.end89:                                         ; preds = %if.else87, %if.then78
  %101 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4561
  %subdevices90 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %101, i32 0, i32 16, !dbg !4562
  %102 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices90, align 8, !dbg !4562
  %arrayidx91 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %102, i64 5, !dbg !4561
  store %struct.comedi_subdevice* %arrayidx91, %struct.comedi_subdevice** %s, align 8, !dbg !4563
  %103 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4564
  %104 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4565
  %iobase92 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %104, i32 0, i32 18, !dbg !4566
  %105 = load i64, i64* %iobase92, align 8, !dbg !4566
  %add93 = add i64 %105, 36, !dbg !4567
  %call94 = call i32 @addi_watchdog_init(%struct.comedi_subdevice* %103, i64 %add93) #5, !dbg !4568
  store i32 %call94, i32* %ret, align 4, !dbg !4569
  %106 = load i32, i32* %ret, align 4, !dbg !4570
  %tobool95 = icmp ne i32 %106, 0, !dbg !4570
  br i1 %tobool95, label %if.then96, label %if.end97, !dbg !4572

if.then96:                                        ; preds = %if.end89
  %107 = load i32, i32* %ret, align 4, !dbg !4573
  store i32 %107, i32* %retval, align 4, !dbg !4574
  br label %return, !dbg !4574

if.end97:                                         ; preds = %if.end89
  %108 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4575
  %subdevices98 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %108, i32 0, i32 16, !dbg !4576
  %109 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices98, align 8, !dbg !4576
  %arrayidx99 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %109, i64 6, !dbg !4575
  store %struct.comedi_subdevice* %arrayidx99, %struct.comedi_subdevice** %s, align 8, !dbg !4577
  %110 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4578
  %type100 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %110, i32 0, i32 2, !dbg !4579
  store i32 3, i32* %type100, align 4, !dbg !4580
  %111 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4581
  %subdev_flags101 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %111, i32 0, i32 4, !dbg !4582
  store i32 65536, i32* %subdev_flags101, align 4, !dbg !4583
  %112 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4584
  %n_chan102 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %112, i32 0, i32 3, !dbg !4585
  store i32 2, i32* %n_chan102, align 8, !dbg !4586
  %113 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4587
  %maxdata103 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %113, i32 0, i32 13, !dbg !4588
  store i32 1, i32* %maxdata103, align 8, !dbg !4589
  %114 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4590
  %range_table104 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %114, i32 0, i32 15, !dbg !4591
  store %struct.comedi_lrange* @range_unipolar5, %struct.comedi_lrange** %range_table104, align 8, !dbg !4592
  %115 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4593
  %insn_bits105 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %115, i32 0, i32 20, !dbg !4594
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @apci1564_diag_insn_bits, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_bits105, align 8, !dbg !4595
  store i32 0, i32* %retval, align 4, !dbg !4596
  br label %return, !dbg !4596

return:                                           ; preds = %if.end97, %if.then96, %if.then41, %if.then4, %if.then
  %116 = load i32, i32* %retval, align 4, !dbg !4597
  ret i32 %116, !dbg !4597
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci1564_reset(%struct.comedi_device* %dev) #2 !dbg !4598 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %devpriv = alloca %struct.apci1564_private*, align 8
  %iobase23 = alloca i64, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4599, metadata !DIExpression()), !dbg !4600
  call void @llvm.dbg.declare(metadata %struct.apci1564_private** %devpriv, metadata !4601, metadata !DIExpression()), !dbg !4602
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4603
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !4604
  %1 = load i8*, i8** %private, align 8, !dbg !4604
  %2 = bitcast i8* %1 to %struct.apci1564_private*, !dbg !4603
  store %struct.apci1564_private* %2, %struct.apci1564_private** %devpriv, align 8, !dbg !4602
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4605
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %3, i32 0, i32 18, !dbg !4606
  %4 = load i64, i64* %iobase, align 8, !dbg !4606
  %add = add i64 %4, 16, !dbg !4607
  %conv = trunc i64 %add to i32, !dbg !4605
  call void @outl(i32 0, i32 %conv) #5, !dbg !4608
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4609
  %iobase1 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 18, !dbg !4610
  %6 = load i64, i64* %iobase1, align 8, !dbg !4610
  %add2 = add i64 %6, 12, !dbg !4611
  %conv3 = trunc i64 %add2 to i32, !dbg !4609
  %call = call i32 @inl(i32 %conv3) #5, !dbg !4612
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4613
  %iobase4 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 18, !dbg !4614
  %8 = load i64, i64* %iobase4, align 8, !dbg !4614
  %add5 = add i64 %8, 4, !dbg !4615
  %conv6 = trunc i64 %add5 to i32, !dbg !4613
  call void @outl(i32 0, i32 %conv6) #5, !dbg !4616
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4617
  %iobase7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 18, !dbg !4618
  %10 = load i64, i64* %iobase7, align 8, !dbg !4618
  %add8 = add i64 %10, 8, !dbg !4619
  %conv9 = trunc i64 %add8 to i32, !dbg !4617
  call void @outl(i32 0, i32 %conv9) #5, !dbg !4620
  %11 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4621
  %iobase10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 18, !dbg !4622
  %12 = load i64, i64* %iobase10, align 8, !dbg !4622
  %add11 = add i64 %12, 20, !dbg !4623
  %conv12 = trunc i64 %add11 to i32, !dbg !4621
  call void @outl(i32 0, i32 %conv12) #5, !dbg !4624
  %13 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4625
  %iobase13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 18, !dbg !4626
  %14 = load i64, i64* %iobase13, align 8, !dbg !4626
  %add14 = add i64 %14, 24, !dbg !4627
  %conv15 = trunc i64 %add14 to i32, !dbg !4625
  call void @outl(i32 0, i32 %conv15) #5, !dbg !4628
  %15 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4629
  %iobase16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 18, !dbg !4630
  %16 = load i64, i64* %iobase16, align 8, !dbg !4630
  %add17 = add i64 %16, 36, !dbg !4631
  call void @addi_watchdog_reset(i64 %add17) #5, !dbg !4632
  %17 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !4633
  %timer = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %17, i32 0, i32 1, !dbg !4634
  %18 = load i64, i64* %timer, align 8, !dbg !4634
  %add18 = add i64 %18, 12, !dbg !4635
  %conv19 = trunc i64 %add18 to i32, !dbg !4633
  call void @outl(i32 0, i32 %conv19) #5, !dbg !4636
  %19 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !4637
  %timer20 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %19, i32 0, i32 1, !dbg !4638
  %20 = load i64, i64* %timer20, align 8, !dbg !4638
  %add21 = add i64 %20, 4, !dbg !4639
  %conv22 = trunc i64 %add21 to i32, !dbg !4637
  call void @outl(i32 0, i32 %conv22) #5, !dbg !4640
  %21 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !4641
  %counters = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %21, i32 0, i32 2, !dbg !4643
  %22 = load i64, i64* %counters, align 8, !dbg !4643
  %tobool = icmp ne i64 %22, 0, !dbg !4641
  br i1 %tobool, label %if.then, label %if.end, !dbg !4644

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %iobase23, metadata !4645, metadata !DIExpression()), !dbg !4647
  %23 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !4648
  %counters24 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %23, i32 0, i32 2, !dbg !4649
  %24 = load i64, i64* %counters24, align 8, !dbg !4649
  %add25 = add i64 %24, 12, !dbg !4650
  store i64 %add25, i64* %iobase23, align 8, !dbg !4647
  %25 = load i64, i64* %iobase23, align 8, !dbg !4651
  %add26 = add i64 %25, 0, !dbg !4652
  %conv27 = trunc i64 %add26 to i32, !dbg !4651
  call void @outl(i32 0, i32 %conv27) #5, !dbg !4653
  %26 = load i64, i64* %iobase23, align 8, !dbg !4654
  %add28 = add i64 %26, 32, !dbg !4655
  %conv29 = trunc i64 %add28 to i32, !dbg !4654
  call void @outl(i32 0, i32 %conv29) #5, !dbg !4656
  %27 = load i64, i64* %iobase23, align 8, !dbg !4657
  %add30 = add i64 %27, 64, !dbg !4658
  %conv31 = trunc i64 %add30 to i32, !dbg !4657
  call void @outl(i32 0, i32 %conv31) #5, !dbg !4659
  br label %if.end, !dbg !4660

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !4661
}

; Function Attrs: noredzone
declare dso_local void @comedi_pci_detach(%struct.comedi_device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outl(i32 %value, i32 %port) #2 !dbg !4662 {
entry:
  %value.addr = alloca i32, align 4
  %port.addr = alloca i32, align 4
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !4666, metadata !DIExpression()), !dbg !4667
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !4668, metadata !DIExpression()), !dbg !4667
  %0 = load i32, i32* %value.addr, align 4, !dbg !4667
  %1 = load i32, i32* %port.addr, align 4, !dbg !4667
  call void asm sideeffect "outl $0, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 %1) #6, !dbg !4667, !srcloc !4669
  ret void, !dbg !4667
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @inl(i32 %port) #2 !dbg !4670 {
entry:
  %port.addr = alloca i32, align 4
  %value = alloca i32, align 4
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !4673, metadata !DIExpression()), !dbg !4674
  call void @llvm.dbg.declare(metadata i32* %value, metadata !4675, metadata !DIExpression()), !dbg !4674
  %0 = load i32, i32* %port.addr, align 4, !dbg !4674
  %1 = call i32 asm sideeffect "inl ${1:w}, $0", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #6, !dbg !4674, !srcloc !4676
  store i32 %1, i32* %value, align 4, !dbg !4674
  %2 = load i32, i32* %value, align 4, !dbg !4674
  ret i32 %2, !dbg !4674
}

; Function Attrs: noredzone
declare dso_local void @addi_watchdog_reset(i64) #1

; Function Attrs: noredzone
declare dso_local %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device*) #1

; Function Attrs: noredzone
declare dso_local i8* @comedi_alloc_devpriv(%struct.comedi_device*, i64) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_pci_enable(%struct.comedi_device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @request_irq(i32 %irq, i32 (i32, i8*)* %handler, i64 %flags, i8* %name, i8* %dev) #2 !dbg !4677 {
entry:
  %irq.addr = alloca i32, align 4
  %handler.addr = alloca i32 (i32, i8*)*, align 8
  %flags.addr = alloca i64, align 8
  %name.addr = alloca i8*, align 8
  %dev.addr = alloca i8*, align 8
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !4685, metadata !DIExpression()), !dbg !4686
  store i32 (i32, i8*)* %handler, i32 (i32, i8*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i32, i8*)** %handler.addr, metadata !4687, metadata !DIExpression()), !dbg !4688
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !4689, metadata !DIExpression()), !dbg !4690
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !4691, metadata !DIExpression()), !dbg !4692
  store i8* %dev, i8** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev.addr, metadata !4693, metadata !DIExpression()), !dbg !4694
  %0 = load i32, i32* %irq.addr, align 4, !dbg !4695
  %1 = load i32 (i32, i8*)*, i32 (i32, i8*)** %handler.addr, align 8, !dbg !4696
  %2 = load i64, i64* %flags.addr, align 8, !dbg !4697
  %3 = load i8*, i8** %name.addr, align 8, !dbg !4698
  %4 = load i8*, i8** %dev.addr, align 8, !dbg !4699
  %call = call i32 @request_threaded_irq(i32 %0, i32 (i32, i8*)* %1, i32 (i32, i8*)* null, i64 %2, i8* %3, i8* %4) #5, !dbg !4700
  ret i32 %call, !dbg !4701
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci1564_interrupt(i32 %irq, i8* %d) #2 !dbg !4702 {
entry:
  %irq.addr = alloca i32, align 4
  %d.addr = alloca i8*, align 8
  %dev = alloca %struct.comedi_device*, align 8
  %devpriv = alloca %struct.apci1564_private*, align 8
  %s = alloca %struct.comedi_subdevice*, align 8
  %status = alloca i32, align 4
  %ctrl = alloca i32, align 4
  %chan = alloca i32, align 4
  %iobase47 = alloca i64, align 8
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !4703, metadata !DIExpression()), !dbg !4704
  store i8* %d, i8** %d.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %d.addr, metadata !4705, metadata !DIExpression()), !dbg !4706
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev, metadata !4707, metadata !DIExpression()), !dbg !4708
  %0 = load i8*, i8** %d.addr, align 8, !dbg !4709
  %1 = bitcast i8* %0 to %struct.comedi_device*, !dbg !4709
  store %struct.comedi_device* %1, %struct.comedi_device** %dev, align 8, !dbg !4708
  call void @llvm.dbg.declare(metadata %struct.apci1564_private** %devpriv, metadata !4710, metadata !DIExpression()), !dbg !4711
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4712
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %2, i32 0, i32 3, !dbg !4713
  %3 = load i8*, i8** %private, align 8, !dbg !4713
  %4 = bitcast i8* %3 to %struct.apci1564_private*, !dbg !4712
  store %struct.apci1564_private* %4, %struct.apci1564_private** %devpriv, align 8, !dbg !4711
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s, metadata !4714, metadata !DIExpression()), !dbg !4715
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4716
  %read_subdev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 21, !dbg !4717
  %6 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %read_subdev, align 8, !dbg !4717
  store %struct.comedi_subdevice* %6, %struct.comedi_subdevice** %s, align 8, !dbg !4715
  call void @llvm.dbg.declare(metadata i32* %status, metadata !4718, metadata !DIExpression()), !dbg !4719
  call void @llvm.dbg.declare(metadata i32* %ctrl, metadata !4720, metadata !DIExpression()), !dbg !4721
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !4722, metadata !DIExpression()), !dbg !4723
  %7 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4724
  %state = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %7, i32 0, i32 29, !dbg !4725
  %8 = load i32, i32* %state, align 4, !dbg !4726
  %and = and i32 %8, 1048560, !dbg !4726
  store i32 %and, i32* %state, align 4, !dbg !4726
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4727
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 18, !dbg !4728
  %10 = load i64, i64* %iobase, align 8, !dbg !4728
  %add = add i64 %10, 16, !dbg !4729
  %conv = trunc i64 %add to i32, !dbg !4727
  %call = call i32 @inl(i32 %conv) #5, !dbg !4730
  store i32 %call, i32* %status, align 4, !dbg !4731
  %11 = load i32, i32* %status, align 4, !dbg !4732
  %conv1 = zext i32 %11 to i64, !dbg !4732
  %and2 = and i64 %conv1, 4, !dbg !4734
  %tobool = icmp ne i64 %and2, 0, !dbg !4734
  br i1 %tobool, label %if.then, label %if.end, !dbg !4735

if.then:                                          ; preds = %entry
  %12 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4736
  %iobase3 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 18, !dbg !4738
  %13 = load i64, i64* %iobase3, align 8, !dbg !4738
  %add4 = add i64 %13, 12, !dbg !4739
  %conv5 = trunc i64 %add4 to i32, !dbg !4736
  %call6 = call i32 @inl(i32 %conv5) #5, !dbg !4740
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4741
  %state7 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %14, i32 0, i32 29, !dbg !4742
  store i32 %call6, i32* %state7, align 4, !dbg !4743
  %15 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4744
  %state8 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %15, i32 0, i32 29, !dbg !4745
  %16 = load i32, i32* %state8, align 4, !dbg !4746
  %and9 = and i32 %16, 1048560, !dbg !4746
  store i32 %and9, i32* %state8, align 4, !dbg !4746
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4747
  %state10 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %17, i32 0, i32 29, !dbg !4748
  %18 = load i32, i32* %state10, align 4, !dbg !4749
  %conv11 = zext i32 %18 to i64, !dbg !4749
  %or = or i64 %conv11, 2147483648, !dbg !4749
  %conv12 = trunc i64 %or to i32, !dbg !4749
  store i32 %conv12, i32* %state10, align 4, !dbg !4749
  %19 = load i32, i32* %status, align 4, !dbg !4750
  %conv13 = zext i32 %19 to i64, !dbg !4750
  %and14 = and i64 %conv13, -5, !dbg !4751
  %conv15 = trunc i64 %and14 to i32, !dbg !4750
  %20 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4752
  %iobase16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 18, !dbg !4753
  %21 = load i64, i64* %iobase16, align 8, !dbg !4753
  %add17 = add i64 %21, 16, !dbg !4754
  %conv18 = trunc i64 %add17 to i32, !dbg !4752
  call void @outl(i32 %conv15, i32 %conv18) #5, !dbg !4755
  %22 = load i32, i32* %status, align 4, !dbg !4756
  %23 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4757
  %iobase19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %23, i32 0, i32 18, !dbg !4758
  %24 = load i64, i64* %iobase19, align 8, !dbg !4758
  %add20 = add i64 %24, 16, !dbg !4759
  %conv21 = trunc i64 %add20 to i32, !dbg !4757
  call void @outl(i32 %22, i32 %conv21) #5, !dbg !4760
  br label %if.end, !dbg !4761

if.end:                                           ; preds = %if.then, %entry
  %25 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !4762
  %timer = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %25, i32 0, i32 1, !dbg !4763
  %26 = load i64, i64* %timer, align 8, !dbg !4763
  %add22 = add i64 %26, 20, !dbg !4764
  %conv23 = trunc i64 %add22 to i32, !dbg !4762
  %call24 = call i32 @inl(i32 %conv23) #5, !dbg !4765
  store i32 %call24, i32* %status, align 4, !dbg !4766
  %27 = load i32, i32* %status, align 4, !dbg !4767
  %conv25 = zext i32 %27 to i64, !dbg !4767
  %and26 = and i64 %conv25, 1, !dbg !4769
  %tobool27 = icmp ne i64 %and26, 0, !dbg !4769
  br i1 %tobool27, label %if.then28, label %if.end43, !dbg !4770

if.then28:                                        ; preds = %if.end
  %28 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4771
  %state29 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %28, i32 0, i32 29, !dbg !4773
  %29 = load i32, i32* %state29, align 4, !dbg !4774
  %conv30 = zext i32 %29 to i64, !dbg !4774
  %or31 = or i64 %conv30, 1073741824, !dbg !4774
  %conv32 = trunc i64 %or31 to i32, !dbg !4774
  store i32 %conv32, i32* %state29, align 4, !dbg !4774
  %30 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !4775
  %timer33 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %30, i32 0, i32 1, !dbg !4776
  %31 = load i64, i64* %timer33, align 8, !dbg !4776
  %add34 = add i64 %31, 12, !dbg !4777
  %conv35 = trunc i64 %add34 to i32, !dbg !4775
  %call36 = call i32 @inl(i32 %conv35) #5, !dbg !4778
  store i32 %call36, i32* %ctrl, align 4, !dbg !4779
  %32 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !4780
  %timer37 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %32, i32 0, i32 1, !dbg !4781
  %33 = load i64, i64* %timer37, align 8, !dbg !4781
  %add38 = add i64 %33, 12, !dbg !4782
  %conv39 = trunc i64 %add38 to i32, !dbg !4780
  call void @outl(i32 0, i32 %conv39) #5, !dbg !4783
  %34 = load i32, i32* %ctrl, align 4, !dbg !4784
  %35 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !4785
  %timer40 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %35, i32 0, i32 1, !dbg !4786
  %36 = load i64, i64* %timer40, align 8, !dbg !4786
  %add41 = add i64 %36, 12, !dbg !4787
  %conv42 = trunc i64 %add41 to i32, !dbg !4785
  call void @outl(i32 %34, i32 %conv42) #5, !dbg !4788
  br label %if.end43, !dbg !4789

if.end43:                                         ; preds = %if.then28, %if.end
  %37 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !4790
  %counters = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %37, i32 0, i32 2, !dbg !4792
  %38 = load i64, i64* %counters, align 8, !dbg !4792
  %tobool44 = icmp ne i64 %38, 0, !dbg !4790
  br i1 %tobool44, label %if.then45, label %if.end71, !dbg !4793

if.then45:                                        ; preds = %if.end43
  store i32 0, i32* %chan, align 4, !dbg !4794
  br label %for.cond, !dbg !4797

for.cond:                                         ; preds = %for.inc, %if.then45
  %39 = load i32, i32* %chan, align 4, !dbg !4798
  %cmp = icmp ult i32 %39, 3, !dbg !4800
  br i1 %cmp, label %for.body, label %for.end, !dbg !4801

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %iobase47, metadata !4802, metadata !DIExpression()), !dbg !4804
  %40 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !4805
  %counters48 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %40, i32 0, i32 2, !dbg !4806
  %41 = load i64, i64* %counters48, align 8, !dbg !4806
  %42 = load i32, i32* %chan, align 4, !dbg !4807
  %mul = mul i32 %42, 32, !dbg !4807
  %conv49 = zext i32 %mul to i64, !dbg !4807
  %add50 = add i64 %41, %conv49, !dbg !4808
  store i64 %add50, i64* %iobase47, align 8, !dbg !4809
  %43 = load i64, i64* %iobase47, align 8, !dbg !4810
  %add51 = add i64 %43, 20, !dbg !4811
  %conv52 = trunc i64 %add51 to i32, !dbg !4810
  %call53 = call i32 @inl(i32 %conv52) #5, !dbg !4812
  store i32 %call53, i32* %status, align 4, !dbg !4813
  %44 = load i32, i32* %status, align 4, !dbg !4814
  %conv54 = zext i32 %44 to i64, !dbg !4814
  %and55 = and i64 %conv54, 1, !dbg !4816
  %tobool56 = icmp ne i64 %and55, 0, !dbg !4816
  br i1 %tobool56, label %if.then57, label %if.end70, !dbg !4817

if.then57:                                        ; preds = %for.body
  %45 = load i32, i32* %chan, align 4, !dbg !4818
  %add58 = add i32 27, %45, !dbg !4818
  %sh_prom = zext i32 %add58 to i64, !dbg !4818
  %shl = shl i64 1, %sh_prom, !dbg !4818
  %46 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4820
  %state59 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %46, i32 0, i32 29, !dbg !4821
  %47 = load i32, i32* %state59, align 4, !dbg !4822
  %conv60 = zext i32 %47 to i64, !dbg !4822
  %or61 = or i64 %conv60, %shl, !dbg !4822
  %conv62 = trunc i64 %or61 to i32, !dbg !4822
  store i32 %conv62, i32* %state59, align 4, !dbg !4822
  %48 = load i64, i64* %iobase47, align 8, !dbg !4823
  %add63 = add i64 %48, 12, !dbg !4824
  %conv64 = trunc i64 %add63 to i32, !dbg !4823
  %call65 = call i32 @inl(i32 %conv64) #5, !dbg !4825
  store i32 %call65, i32* %ctrl, align 4, !dbg !4826
  %49 = load i64, i64* %iobase47, align 8, !dbg !4827
  %add66 = add i64 %49, 12, !dbg !4828
  %conv67 = trunc i64 %add66 to i32, !dbg !4827
  call void @outl(i32 0, i32 %conv67) #5, !dbg !4829
  %50 = load i32, i32* %ctrl, align 4, !dbg !4830
  %51 = load i64, i64* %iobase47, align 8, !dbg !4831
  %add68 = add i64 %51, 12, !dbg !4832
  %conv69 = trunc i64 %add68 to i32, !dbg !4831
  call void @outl(i32 %50, i32 %conv69) #5, !dbg !4833
  br label %if.end70, !dbg !4834

if.end70:                                         ; preds = %if.then57, %for.body
  br label %for.inc, !dbg !4835

for.inc:                                          ; preds = %if.end70
  %52 = load i32, i32* %chan, align 4, !dbg !4836
  %inc = add i32 %52, 1, !dbg !4836
  store i32 %inc, i32* %chan, align 4, !dbg !4836
  br label %for.cond, !dbg !4837, !llvm.loop !4838

for.end:                                          ; preds = %for.cond
  br label %if.end71, !dbg !4840

if.end71:                                         ; preds = %for.end, %if.end43
  %53 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4841
  %state72 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %53, i32 0, i32 29, !dbg !4843
  %54 = load i32, i32* %state72, align 4, !dbg !4843
  %and73 = and i32 %54, -1048561, !dbg !4844
  %tobool74 = icmp ne i32 %and73, 0, !dbg !4844
  br i1 %tobool74, label %if.then75, label %if.end79, !dbg !4845

if.then75:                                        ; preds = %if.end71
  %55 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4846
  %56 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4848
  %state76 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %56, i32 0, i32 29, !dbg !4849
  %57 = bitcast i32* %state76 to i8*, !dbg !4850
  %call77 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %55, i8* %57, i32 1) #5, !dbg !4851
  %58 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4852
  %59 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4853
  %call78 = call i32 @comedi_handle_events(%struct.comedi_device* %58, %struct.comedi_subdevice* %59) #5, !dbg !4854
  br label %if.end79, !dbg !4855

if.end79:                                         ; preds = %if.then75, %if.end71
  ret i32 1, !dbg !4856
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci1564_di_insn_bits(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !4857 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4858, metadata !DIExpression()), !dbg !4859
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4860, metadata !DIExpression()), !dbg !4861
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !4862, metadata !DIExpression()), !dbg !4863
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !4864, metadata !DIExpression()), !dbg !4865
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4866
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 18, !dbg !4867
  %1 = load i64, i64* %iobase, align 8, !dbg !4867
  %add = add i64 %1, 0, !dbg !4868
  %conv = trunc i64 %add to i32, !dbg !4866
  %call = call i32 @inl(i32 %conv) #5, !dbg !4869
  %2 = load i32*, i32** %data.addr, align 8, !dbg !4870
  %arrayidx = getelementptr i32, i32* %2, i64 1, !dbg !4870
  store i32 %call, i32* %arrayidx, align 4, !dbg !4871
  %3 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4872
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %3, i32 0, i32 1, !dbg !4873
  %4 = load i32, i32* %n, align 4, !dbg !4873
  ret i32 %4, !dbg !4874
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci1564_do_insn_bits(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !4875 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4876, metadata !DIExpression()), !dbg !4877
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4878, metadata !DIExpression()), !dbg !4879
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !4880, metadata !DIExpression()), !dbg !4881
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !4882, metadata !DIExpression()), !dbg !4883
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4884
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 18, !dbg !4885
  %1 = load i64, i64* %iobase, align 8, !dbg !4885
  %add = add i64 %1, 20, !dbg !4886
  %conv = trunc i64 %add to i32, !dbg !4884
  %call = call i32 @inl(i32 %conv) #5, !dbg !4887
  %2 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4888
  %state = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %2, i32 0, i32 29, !dbg !4889
  store i32 %call, i32* %state, align 4, !dbg !4890
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4891
  %4 = load i32*, i32** %data.addr, align 8, !dbg !4893
  %call1 = call i32 @comedi_dio_update_state(%struct.comedi_subdevice* %3, i32* %4) #5, !dbg !4894
  %tobool = icmp ne i32 %call1, 0, !dbg !4894
  br i1 %tobool, label %if.then, label %if.end, !dbg !4895

if.then:                                          ; preds = %entry
  %5 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4896
  %state2 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %5, i32 0, i32 29, !dbg !4897
  %6 = load i32, i32* %state2, align 4, !dbg !4897
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4898
  %iobase3 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 18, !dbg !4899
  %8 = load i64, i64* %iobase3, align 8, !dbg !4899
  %add4 = add i64 %8, 20, !dbg !4900
  %conv5 = trunc i64 %add4 to i32, !dbg !4898
  call void @outl(i32 %6, i32 %conv5) #5, !dbg !4901
  br label %if.end, !dbg !4901

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4902
  %state6 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %9, i32 0, i32 29, !dbg !4903
  %10 = load i32, i32* %state6, align 4, !dbg !4903
  %11 = load i32*, i32** %data.addr, align 8, !dbg !4904
  %arrayidx = getelementptr i32, i32* %11, i64 1, !dbg !4904
  store i32 %10, i32* %arrayidx, align 4, !dbg !4905
  %12 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4906
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %12, i32 0, i32 1, !dbg !4907
  %13 = load i32, i32* %n, align 4, !dbg !4907
  ret i32 %13, !dbg !4908
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci1564_cos_insn_config(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !4909 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %devpriv = alloca %struct.apci1564_private*, align 8
  %shift = alloca i32, align 4
  %oldmask = alloca i32, align 4
  %himask = alloca i32, align 4
  %lomask = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4910, metadata !DIExpression()), !dbg !4911
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4912, metadata !DIExpression()), !dbg !4913
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !4914, metadata !DIExpression()), !dbg !4915
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !4916, metadata !DIExpression()), !dbg !4917
  call void @llvm.dbg.declare(metadata %struct.apci1564_private** %devpriv, metadata !4918, metadata !DIExpression()), !dbg !4919
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4920
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !4921
  %1 = load i8*, i8** %private, align 8, !dbg !4921
  %2 = bitcast i8* %1 to %struct.apci1564_private*, !dbg !4920
  store %struct.apci1564_private* %2, %struct.apci1564_private** %devpriv, align 8, !dbg !4919
  call void @llvm.dbg.declare(metadata i32* %shift, metadata !4922, metadata !DIExpression()), !dbg !4923
  call void @llvm.dbg.declare(metadata i32* %oldmask, metadata !4924, metadata !DIExpression()), !dbg !4925
  call void @llvm.dbg.declare(metadata i32* %himask, metadata !4926, metadata !DIExpression()), !dbg !4927
  call void @llvm.dbg.declare(metadata i32* %lomask, metadata !4928, metadata !DIExpression()), !dbg !4929
  %3 = load i32*, i32** %data.addr, align 8, !dbg !4930
  %arrayidx = getelementptr i32, i32* %3, i64 0, !dbg !4930
  %4 = load i32, i32* %arrayidx, align 4, !dbg !4930
  switch i32 %4, label %sw.default61 [
    i32 21, label %sw.bb
  ], !dbg !4931

sw.bb:                                            ; preds = %entry
  %5 = load i32*, i32** %data.addr, align 8, !dbg !4932
  %arrayidx1 = getelementptr i32, i32* %5, i64 1, !dbg !4932
  %6 = load i32, i32* %arrayidx1, align 4, !dbg !4932
  %cmp = icmp ne i32 %6, 0, !dbg !4935
  br i1 %cmp, label %if.then, label %if.end, !dbg !4936

if.then:                                          ; preds = %sw.bb
  store i32 -22, i32* %retval, align 4, !dbg !4937
  br label %return, !dbg !4937

if.end:                                           ; preds = %sw.bb
  %7 = load i32*, i32** %data.addr, align 8, !dbg !4938
  %arrayidx2 = getelementptr i32, i32* %7, i64 3, !dbg !4938
  %8 = load i32, i32* %arrayidx2, align 4, !dbg !4938
  store i32 %8, i32* %shift, align 4, !dbg !4939
  %9 = load i32, i32* %shift, align 4, !dbg !4940
  %cmp3 = icmp ult i32 %9, 32, !dbg !4942
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !4943

if.then4:                                         ; preds = %if.end
  %10 = load i32, i32* %shift, align 4, !dbg !4944
  %shl = shl i32 1, %10, !dbg !4946
  %sub = sub i32 %shl, 1, !dbg !4947
  store i32 %sub, i32* %oldmask, align 4, !dbg !4948
  %11 = load i32*, i32** %data.addr, align 8, !dbg !4949
  %arrayidx5 = getelementptr i32, i32* %11, i64 4, !dbg !4949
  %12 = load i32, i32* %arrayidx5, align 4, !dbg !4949
  %13 = load i32, i32* %shift, align 4, !dbg !4950
  %shl6 = shl i32 %12, %13, !dbg !4951
  store i32 %shl6, i32* %himask, align 4, !dbg !4952
  %14 = load i32*, i32** %data.addr, align 8, !dbg !4953
  %arrayidx7 = getelementptr i32, i32* %14, i64 5, !dbg !4953
  %15 = load i32, i32* %arrayidx7, align 4, !dbg !4953
  %16 = load i32, i32* %shift, align 4, !dbg !4954
  %shl8 = shl i32 %15, %16, !dbg !4955
  store i32 %shl8, i32* %lomask, align 4, !dbg !4956
  br label %if.end9, !dbg !4957

if.else:                                          ; preds = %if.end
  store i32 -1, i32* %oldmask, align 4, !dbg !4958
  store i32 0, i32* %himask, align 4, !dbg !4960
  store i32 0, i32* %lomask, align 4, !dbg !4961
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then4
  %17 = load i32*, i32** %data.addr, align 8, !dbg !4962
  %arrayidx10 = getelementptr i32, i32* %17, i64 2, !dbg !4962
  %18 = load i32, i32* %arrayidx10, align 4, !dbg !4962
  switch i32 %18, label %sw.default [
    i32 0, label %sw.bb11
    i32 1, label %sw.bb21
    i32 2, label %sw.bb38
  ], !dbg !4963

sw.bb11:                                          ; preds = %if.end9
  %19 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !4964
  %ctrl = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %19, i32 0, i32 5, !dbg !4966
  store i32 0, i32* %ctrl, align 8, !dbg !4967
  %20 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !4968
  %mode1 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %20, i32 0, i32 3, !dbg !4969
  store i32 0, i32* %mode1, align 8, !dbg !4970
  %21 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !4971
  %mode2 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %21, i32 0, i32 4, !dbg !4972
  store i32 0, i32* %mode2, align 4, !dbg !4973
  %22 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4974
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %22, i32 0, i32 18, !dbg !4975
  %23 = load i64, i64* %iobase, align 8, !dbg !4975
  %add = add i64 %23, 16, !dbg !4976
  %conv = trunc i64 %add to i32, !dbg !4974
  call void @outl(i32 0, i32 %conv) #5, !dbg !4977
  %24 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4978
  %iobase12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %24, i32 0, i32 18, !dbg !4979
  %25 = load i64, i64* %iobase12, align 8, !dbg !4979
  %add13 = add i64 %25, 12, !dbg !4980
  %conv14 = trunc i64 %add13 to i32, !dbg !4978
  %call = call i32 @inl(i32 %conv14) #5, !dbg !4981
  %26 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4982
  %iobase15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %26, i32 0, i32 18, !dbg !4983
  %27 = load i64, i64* %iobase15, align 8, !dbg !4983
  %add16 = add i64 %27, 4, !dbg !4984
  %conv17 = trunc i64 %add16 to i32, !dbg !4982
  call void @outl(i32 0, i32 %conv17) #5, !dbg !4985
  %28 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4986
  %iobase18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %28, i32 0, i32 18, !dbg !4987
  %29 = load i64, i64* %iobase18, align 8, !dbg !4987
  %add19 = add i64 %29, 8, !dbg !4988
  %conv20 = trunc i64 %add19 to i32, !dbg !4986
  call void @outl(i32 0, i32 %conv20) #5, !dbg !4989
  br label %sw.epilog, !dbg !4990

sw.bb21:                                          ; preds = %if.end9
  %30 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !4991
  %ctrl22 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %30, i32 0, i32 5, !dbg !4993
  %31 = load i32, i32* %ctrl22, align 8, !dbg !4993
  %conv23 = zext i32 %31 to i64, !dbg !4991
  %cmp24 = icmp ne i64 %conv23, 4, !dbg !4994
  br i1 %cmp24, label %if.then26, label %if.else30, !dbg !4995

if.then26:                                        ; preds = %sw.bb21
  %32 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !4996
  %ctrl27 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %32, i32 0, i32 5, !dbg !4998
  store i32 4, i32* %ctrl27, align 8, !dbg !4999
  %33 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !5000
  %mode128 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %33, i32 0, i32 3, !dbg !5001
  store i32 0, i32* %mode128, align 8, !dbg !5002
  %34 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !5003
  %mode229 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %34, i32 0, i32 4, !dbg !5004
  store i32 0, i32* %mode229, align 4, !dbg !5005
  br label %if.end34, !dbg !5006

if.else30:                                        ; preds = %sw.bb21
  %35 = load i32, i32* %oldmask, align 4, !dbg !5007
  %36 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !5009
  %mode131 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %36, i32 0, i32 3, !dbg !5010
  %37 = load i32, i32* %mode131, align 8, !dbg !5011
  %and = and i32 %37, %35, !dbg !5011
  store i32 %and, i32* %mode131, align 8, !dbg !5011
  %38 = load i32, i32* %oldmask, align 4, !dbg !5012
  %39 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !5013
  %mode232 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %39, i32 0, i32 4, !dbg !5014
  %40 = load i32, i32* %mode232, align 4, !dbg !5015
  %and33 = and i32 %40, %38, !dbg !5015
  store i32 %and33, i32* %mode232, align 4, !dbg !5015
  br label %if.end34

if.end34:                                         ; preds = %if.else30, %if.then26
  %41 = load i32, i32* %himask, align 4, !dbg !5016
  %42 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !5017
  %mode135 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %42, i32 0, i32 3, !dbg !5018
  %43 = load i32, i32* %mode135, align 8, !dbg !5019
  %or = or i32 %43, %41, !dbg !5019
  store i32 %or, i32* %mode135, align 8, !dbg !5019
  %44 = load i32, i32* %lomask, align 4, !dbg !5020
  %45 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !5021
  %mode236 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %45, i32 0, i32 4, !dbg !5022
  %46 = load i32, i32* %mode236, align 4, !dbg !5023
  %or37 = or i32 %46, %44, !dbg !5023
  store i32 %or37, i32* %mode236, align 4, !dbg !5023
  br label %sw.epilog, !dbg !5024

sw.bb38:                                          ; preds = %if.end9
  %47 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !5025
  %ctrl39 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %47, i32 0, i32 5, !dbg !5027
  %48 = load i32, i32* %ctrl39, align 8, !dbg !5027
  %conv40 = zext i32 %48 to i64, !dbg !5025
  %cmp41 = icmp ne i64 %conv40, 6, !dbg !5028
  br i1 %cmp41, label %if.then43, label %if.else47, !dbg !5029

if.then43:                                        ; preds = %sw.bb38
  %49 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !5030
  %ctrl44 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %49, i32 0, i32 5, !dbg !5032
  store i32 6, i32* %ctrl44, align 8, !dbg !5033
  %50 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !5034
  %mode145 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %50, i32 0, i32 3, !dbg !5035
  store i32 0, i32* %mode145, align 8, !dbg !5036
  %51 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !5037
  %mode246 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %51, i32 0, i32 4, !dbg !5038
  store i32 0, i32* %mode246, align 4, !dbg !5039
  br label %if.end52, !dbg !5040

if.else47:                                        ; preds = %sw.bb38
  %52 = load i32, i32* %oldmask, align 4, !dbg !5041
  %53 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !5043
  %mode148 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %53, i32 0, i32 3, !dbg !5044
  %54 = load i32, i32* %mode148, align 8, !dbg !5045
  %and49 = and i32 %54, %52, !dbg !5045
  store i32 %and49, i32* %mode148, align 8, !dbg !5045
  %55 = load i32, i32* %oldmask, align 4, !dbg !5046
  %56 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !5047
  %mode250 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %56, i32 0, i32 4, !dbg !5048
  %57 = load i32, i32* %mode250, align 4, !dbg !5049
  %and51 = and i32 %57, %55, !dbg !5049
  store i32 %and51, i32* %mode250, align 4, !dbg !5049
  br label %if.end52

if.end52:                                         ; preds = %if.else47, %if.then43
  %58 = load i32, i32* %himask, align 4, !dbg !5050
  %59 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !5051
  %mode153 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %59, i32 0, i32 3, !dbg !5052
  %60 = load i32, i32* %mode153, align 8, !dbg !5053
  %or54 = or i32 %60, %58, !dbg !5053
  store i32 %or54, i32* %mode153, align 8, !dbg !5053
  %61 = load i32, i32* %lomask, align 4, !dbg !5054
  %62 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !5055
  %mode255 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %62, i32 0, i32 4, !dbg !5056
  %63 = load i32, i32* %mode255, align 4, !dbg !5057
  %or56 = or i32 %63, %61, !dbg !5057
  store i32 %or56, i32* %mode255, align 4, !dbg !5057
  br label %sw.epilog, !dbg !5058

sw.default:                                       ; preds = %if.end9
  store i32 -22, i32* %retval, align 4, !dbg !5059
  br label %return, !dbg !5059

sw.epilog:                                        ; preds = %if.end52, %if.end34, %sw.bb11
  %64 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !5060
  %mode157 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %64, i32 0, i32 3, !dbg !5061
  %65 = load i32, i32* %mode157, align 8, !dbg !5062
  %and58 = and i32 %65, 1048560, !dbg !5062
  store i32 %and58, i32* %mode157, align 8, !dbg !5062
  %66 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !5063
  %mode259 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %66, i32 0, i32 4, !dbg !5064
  %67 = load i32, i32* %mode259, align 4, !dbg !5065
  %and60 = and i32 %67, 1048560, !dbg !5065
  store i32 %and60, i32* %mode259, align 4, !dbg !5065
  br label %sw.epilog62, !dbg !5066

sw.default61:                                     ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5067
  br label %return, !dbg !5067

sw.epilog62:                                      ; preds = %sw.epilog
  %68 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5068
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %68, i32 0, i32 1, !dbg !5069
  %69 = load i32, i32* %n, align 4, !dbg !5069
  store i32 %69, i32* %retval, align 4, !dbg !5070
  br label %return, !dbg !5070

return:                                           ; preds = %sw.epilog62, %sw.default61, %sw.default, %if.then
  %70 = load i32, i32* %retval, align 4, !dbg !5071
  ret i32 %70, !dbg !5071
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci1564_cos_insn_bits(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5072 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5073, metadata !DIExpression()), !dbg !5074
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5075, metadata !DIExpression()), !dbg !5076
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5077, metadata !DIExpression()), !dbg !5078
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5079, metadata !DIExpression()), !dbg !5080
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5081
  %state = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 29, !dbg !5082
  %1 = load i32, i32* %state, align 4, !dbg !5082
  %2 = load i32*, i32** %data.addr, align 8, !dbg !5083
  %arrayidx = getelementptr i32, i32* %2, i64 1, !dbg !5083
  store i32 %1, i32* %arrayidx, align 4, !dbg !5084
  ret i32 0, !dbg !5085
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci1564_cos_cmdtest(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_cmd* %cmd) #2 !dbg !5086 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %cmd.addr = alloca %struct.comedi_cmd*, align 8
  %err = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5087, metadata !DIExpression()), !dbg !5088
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5089, metadata !DIExpression()), !dbg !5090
  store %struct.comedi_cmd* %cmd, %struct.comedi_cmd** %cmd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd.addr, metadata !5091, metadata !DIExpression()), !dbg !5092
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5093, metadata !DIExpression()), !dbg !5094
  store i32 0, i32* %err, align 4, !dbg !5094
  %0 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5095
  %start_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %0, i32 0, i32 2, !dbg !5096
  %call = call i32 @comedi_check_trigger_src(i32* %start_src, i32 2) #5, !dbg !5097
  %1 = load i32, i32* %err, align 4, !dbg !5098
  %or = or i32 %1, %call, !dbg !5098
  store i32 %or, i32* %err, align 4, !dbg !5098
  %2 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5099
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %2, i32 0, i32 4, !dbg !5100
  %call1 = call i32 @comedi_check_trigger_src(i32* %scan_begin_src, i32 64) #5, !dbg !5101
  %3 = load i32, i32* %err, align 4, !dbg !5102
  %or2 = or i32 %3, %call1, !dbg !5102
  store i32 %or2, i32* %err, align 4, !dbg !5102
  %4 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5103
  %convert_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %4, i32 0, i32 6, !dbg !5104
  %call3 = call i32 @comedi_check_trigger_src(i32* %convert_src, i32 4) #5, !dbg !5105
  %5 = load i32, i32* %err, align 4, !dbg !5106
  %or4 = or i32 %5, %call3, !dbg !5106
  store i32 %or4, i32* %err, align 4, !dbg !5106
  %6 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5107
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %6, i32 0, i32 8, !dbg !5108
  %call5 = call i32 @comedi_check_trigger_src(i32* %scan_end_src, i32 32) #5, !dbg !5109
  %7 = load i32, i32* %err, align 4, !dbg !5110
  %or6 = or i32 %7, %call5, !dbg !5110
  store i32 %or6, i32* %err, align 4, !dbg !5110
  %8 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5111
  %stop_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %8, i32 0, i32 10, !dbg !5112
  %call7 = call i32 @comedi_check_trigger_src(i32* %stop_src, i32 1) #5, !dbg !5113
  %9 = load i32, i32* %err, align 4, !dbg !5114
  %or8 = or i32 %9, %call7, !dbg !5114
  store i32 %or8, i32* %err, align 4, !dbg !5114
  %10 = load i32, i32* %err, align 4, !dbg !5115
  %tobool = icmp ne i32 %10, 0, !dbg !5115
  br i1 %tobool, label %if.then, label %if.end, !dbg !5117

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !5118
  br label %return, !dbg !5118

if.end:                                           ; preds = %entry
  %11 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5119
  %start_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %11, i32 0, i32 3, !dbg !5120
  %call9 = call i32 @comedi_check_trigger_arg_is(i32* %start_arg, i32 0) #5, !dbg !5121
  %12 = load i32, i32* %err, align 4, !dbg !5122
  %or10 = or i32 %12, %call9, !dbg !5122
  store i32 %or10, i32* %err, align 4, !dbg !5122
  %13 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5123
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %13, i32 0, i32 5, !dbg !5124
  %call11 = call i32 @comedi_check_trigger_arg_is(i32* %scan_begin_arg, i32 0) #5, !dbg !5125
  %14 = load i32, i32* %err, align 4, !dbg !5126
  %or12 = or i32 %14, %call11, !dbg !5126
  store i32 %or12, i32* %err, align 4, !dbg !5126
  %15 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5127
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %15, i32 0, i32 7, !dbg !5128
  %call13 = call i32 @comedi_check_trigger_arg_is(i32* %convert_arg, i32 0) #5, !dbg !5129
  %16 = load i32, i32* %err, align 4, !dbg !5130
  %or14 = or i32 %16, %call13, !dbg !5130
  store i32 %or14, i32* %err, align 4, !dbg !5130
  %17 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5131
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %17, i32 0, i32 9, !dbg !5132
  %18 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5133
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %18, i32 0, i32 13, !dbg !5134
  %19 = load i32, i32* %chanlist_len, align 8, !dbg !5134
  %call15 = call i32 @comedi_check_trigger_arg_is(i32* %scan_end_arg, i32 %19) #5, !dbg !5135
  %20 = load i32, i32* %err, align 4, !dbg !5136
  %or16 = or i32 %20, %call15, !dbg !5136
  store i32 %or16, i32* %err, align 4, !dbg !5136
  %21 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5137
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %21, i32 0, i32 11, !dbg !5138
  %call17 = call i32 @comedi_check_trigger_arg_is(i32* %stop_arg, i32 0) #5, !dbg !5139
  %22 = load i32, i32* %err, align 4, !dbg !5140
  %or18 = or i32 %22, %call17, !dbg !5140
  store i32 %or18, i32* %err, align 4, !dbg !5140
  %23 = load i32, i32* %err, align 4, !dbg !5141
  %tobool19 = icmp ne i32 %23, 0, !dbg !5141
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !5143

if.then20:                                        ; preds = %if.end
  store i32 3, i32* %retval, align 4, !dbg !5144
  br label %return, !dbg !5144

if.end21:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5145
  br label %return, !dbg !5145

return:                                           ; preds = %if.end21, %if.then20, %if.then
  %24 = load i32, i32* %retval, align 4, !dbg !5146
  ret i32 %24, !dbg !5146
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci1564_cos_cmd(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #2 !dbg !5147 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %devpriv = alloca %struct.apci1564_private*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5148, metadata !DIExpression()), !dbg !5149
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5150, metadata !DIExpression()), !dbg !5151
  call void @llvm.dbg.declare(metadata %struct.apci1564_private** %devpriv, metadata !5152, metadata !DIExpression()), !dbg !5153
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5154
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5155
  %1 = load i8*, i8** %private, align 8, !dbg !5155
  %2 = bitcast i8* %1 to %struct.apci1564_private*, !dbg !5154
  store %struct.apci1564_private* %2, %struct.apci1564_private** %devpriv, align 8, !dbg !5153
  %3 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !5156
  %ctrl = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %3, i32 0, i32 5, !dbg !5158
  %4 = load i32, i32* %ctrl, align 8, !dbg !5158
  %tobool = icmp ne i32 %4, 0, !dbg !5156
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !5159

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !5160
  %mode1 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %5, i32 0, i32 3, !dbg !5161
  %6 = load i32, i32* %mode1, align 8, !dbg !5161
  %tobool1 = icmp ne i32 %6, 0, !dbg !5160
  br i1 %tobool1, label %if.end, label %lor.lhs.false, !dbg !5162

lor.lhs.false:                                    ; preds = %land.lhs.true
  %7 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !5163
  %mode2 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %7, i32 0, i32 4, !dbg !5164
  %8 = load i32, i32* %mode2, align 4, !dbg !5164
  %tobool2 = icmp ne i32 %8, 0, !dbg !5163
  br i1 %tobool2, label %if.end, label %if.then, !dbg !5165

if.then:                                          ; preds = %lor.lhs.false
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5166
  %class_dev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 4, !dbg !5166
  %10 = load %struct.device*, %struct.device** %class_dev, align 8, !dbg !5166
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %10, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !5166
  store i32 -22, i32* %retval, align 4, !dbg !5168
  br label %return, !dbg !5168

if.end:                                           ; preds = %lor.lhs.false, %land.lhs.true, %entry
  %11 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !5169
  %mode13 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %11, i32 0, i32 3, !dbg !5170
  %12 = load i32, i32* %mode13, align 8, !dbg !5170
  %13 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5171
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 18, !dbg !5172
  %14 = load i64, i64* %iobase, align 8, !dbg !5172
  %add = add i64 %14, 4, !dbg !5173
  %conv = trunc i64 %add to i32, !dbg !5171
  call void @outl(i32 %12, i32 %conv) #5, !dbg !5174
  %15 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !5175
  %mode24 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %15, i32 0, i32 4, !dbg !5176
  %16 = load i32, i32* %mode24, align 4, !dbg !5176
  %17 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5177
  %iobase5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 18, !dbg !5178
  %18 = load i64, i64* %iobase5, align 8, !dbg !5178
  %add6 = add i64 %18, 8, !dbg !5179
  %conv7 = trunc i64 %add6 to i32, !dbg !5177
  call void @outl(i32 %16, i32 %conv7) #5, !dbg !5180
  %19 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !5181
  %ctrl8 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %19, i32 0, i32 5, !dbg !5182
  %20 = load i32, i32* %ctrl8, align 8, !dbg !5182
  %21 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5183
  %iobase9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %21, i32 0, i32 18, !dbg !5184
  %22 = load i64, i64* %iobase9, align 8, !dbg !5184
  %add10 = add i64 %22, 16, !dbg !5185
  %conv11 = trunc i64 %add10 to i32, !dbg !5183
  call void @outl(i32 %20, i32 %conv11) #5, !dbg !5186
  store i32 0, i32* %retval, align 4, !dbg !5187
  br label %return, !dbg !5187

return:                                           ; preds = %if.end, %if.then
  %23 = load i32, i32* %retval, align 4, !dbg !5188
  ret i32 %23, !dbg !5188
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci1564_cos_cancel(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #2 !dbg !5189 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5190, metadata !DIExpression()), !dbg !5191
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5192, metadata !DIExpression()), !dbg !5193
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5194
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 18, !dbg !5195
  %1 = load i64, i64* %iobase, align 8, !dbg !5195
  %add = add i64 %1, 16, !dbg !5196
  %conv = trunc i64 %add to i32, !dbg !5194
  call void @outl(i32 0, i32 %conv) #5, !dbg !5197
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5198
  %iobase1 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %2, i32 0, i32 18, !dbg !5199
  %3 = load i64, i64* %iobase1, align 8, !dbg !5199
  %add2 = add i64 %3, 12, !dbg !5200
  %conv3 = trunc i64 %add2 to i32, !dbg !5198
  %call = call i32 @inl(i32 %conv3) #5, !dbg !5201
  %4 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5202
  %iobase4 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 18, !dbg !5203
  %5 = load i64, i64* %iobase4, align 8, !dbg !5203
  %add5 = add i64 %5, 4, !dbg !5204
  %conv6 = trunc i64 %add5 to i32, !dbg !5202
  call void @outl(i32 0, i32 %conv6) #5, !dbg !5205
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5206
  %iobase7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 18, !dbg !5207
  %7 = load i64, i64* %iobase7, align 8, !dbg !5207
  %add8 = add i64 %7, 8, !dbg !5208
  %conv9 = trunc i64 %add8 to i32, !dbg !5206
  call void @outl(i32 0, i32 %conv9) #5, !dbg !5209
  ret i32 0, !dbg !5210
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci1564_timer_insn_config(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5211 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %devpriv = alloca %struct.apci1564_private*, align 8
  %val = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5212, metadata !DIExpression()), !dbg !5213
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5214, metadata !DIExpression()), !dbg !5215
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5216, metadata !DIExpression()), !dbg !5217
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5218, metadata !DIExpression()), !dbg !5219
  call void @llvm.dbg.declare(metadata %struct.apci1564_private** %devpriv, metadata !5220, metadata !DIExpression()), !dbg !5221
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5222
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5223
  %1 = load i8*, i8** %private, align 8, !dbg !5223
  %2 = bitcast i8* %1 to %struct.apci1564_private*, !dbg !5222
  store %struct.apci1564_private* %2, %struct.apci1564_private** %devpriv, align 8, !dbg !5221
  call void @llvm.dbg.declare(metadata i32* %val, metadata !5224, metadata !DIExpression()), !dbg !5225
  %3 = load i32*, i32** %data.addr, align 8, !dbg !5226
  %arrayidx = getelementptr i32, i32* %3, i64 0, !dbg !5226
  %4 = load i32, i32* %arrayidx, align 4, !dbg !5226
  switch i32 %4, label %sw.default [
    i32 31, label %sw.bb
    i32 32, label %sw.bb6
    i32 33, label %sw.bb10
    i32 2003, label %sw.bb38
    i32 2004, label %sw.bb53
  ], !dbg !5227

sw.bb:                                            ; preds = %entry
  %5 = load i32*, i32** %data.addr, align 8, !dbg !5228
  %arrayidx1 = getelementptr i32, i32* %5, i64 1, !dbg !5228
  %6 = load i32, i32* %arrayidx1, align 4, !dbg !5228
  %7 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5231
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %7, i32 0, i32 13, !dbg !5232
  %8 = load i32, i32* %maxdata, align 8, !dbg !5232
  %cmp = icmp ugt i32 %6, %8, !dbg !5233
  br i1 %cmp, label %if.then, label %if.end, !dbg !5234

if.then:                                          ; preds = %sw.bb
  store i32 -22, i32* %retval, align 4, !dbg !5235
  br label %return, !dbg !5235

if.end:                                           ; preds = %sw.bb
  %9 = load i32*, i32** %data.addr, align 8, !dbg !5236
  %arrayidx2 = getelementptr i32, i32* %9, i64 1, !dbg !5236
  %10 = load i32, i32* %arrayidx2, align 4, !dbg !5236
  %11 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !5237
  %timer = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %11, i32 0, i32 1, !dbg !5238
  %12 = load i64, i64* %timer, align 8, !dbg !5238
  %add = add i64 %12, 4, !dbg !5239
  %conv = trunc i64 %add to i32, !dbg !5237
  call void @outl(i32 %10, i32 %conv) #5, !dbg !5240
  %13 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !5241
  %timer3 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %13, i32 0, i32 1, !dbg !5242
  %14 = load i64, i64* %timer3, align 8, !dbg !5242
  %add4 = add i64 %14, 12, !dbg !5243
  %conv5 = trunc i64 %add4 to i32, !dbg !5241
  call void @outl(i32 18, i32 %conv5) #5, !dbg !5244
  br label %sw.epilog, !dbg !5245

sw.bb6:                                           ; preds = %entry
  %15 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !5246
  %timer7 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %15, i32 0, i32 1, !dbg !5247
  %16 = load i64, i64* %timer7, align 8, !dbg !5247
  %add8 = add i64 %16, 12, !dbg !5248
  %conv9 = trunc i64 %add8 to i32, !dbg !5246
  call void @outl(i32 0, i32 %conv9) #5, !dbg !5249
  br label %sw.epilog, !dbg !5250

sw.bb10:                                          ; preds = %entry
  %17 = load i32*, i32** %data.addr, align 8, !dbg !5251
  %arrayidx11 = getelementptr i32, i32* %17, i64 1, !dbg !5251
  store i32 0, i32* %arrayidx11, align 4, !dbg !5252
  %18 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !5253
  %timer12 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %18, i32 0, i32 1, !dbg !5254
  %19 = load i64, i64* %timer12, align 8, !dbg !5254
  %add13 = add i64 %19, 12, !dbg !5255
  %conv14 = trunc i64 %add13 to i32, !dbg !5253
  %call = call i32 @inl(i32 %conv14) #5, !dbg !5256
  store i32 %call, i32* %val, align 4, !dbg !5257
  %20 = load i32, i32* %val, align 4, !dbg !5258
  %conv15 = zext i32 %20 to i64, !dbg !5258
  %and = and i64 %conv15, 2, !dbg !5260
  %tobool = icmp ne i64 %and, 0, !dbg !5260
  br i1 %tobool, label %if.then16, label %if.end18, !dbg !5261

if.then16:                                        ; preds = %sw.bb10
  %21 = load i32*, i32** %data.addr, align 8, !dbg !5262
  %arrayidx17 = getelementptr i32, i32* %21, i64 1, !dbg !5262
  %22 = load i32, i32* %arrayidx17, align 4, !dbg !5263
  %or = or i32 %22, 1, !dbg !5263
  store i32 %or, i32* %arrayidx17, align 4, !dbg !5263
  br label %if.end18, !dbg !5262

if.end18:                                         ; preds = %if.then16, %sw.bb10
  %23 = load i32, i32* %val, align 4, !dbg !5264
  %conv19 = zext i32 %23 to i64, !dbg !5264
  %and20 = and i64 %conv19, 16, !dbg !5266
  %tobool21 = icmp ne i64 %and20, 0, !dbg !5266
  br i1 %tobool21, label %if.then22, label %if.end25, !dbg !5267

if.then22:                                        ; preds = %if.end18
  %24 = load i32*, i32** %data.addr, align 8, !dbg !5268
  %arrayidx23 = getelementptr i32, i32* %24, i64 1, !dbg !5268
  %25 = load i32, i32* %arrayidx23, align 4, !dbg !5269
  %or24 = or i32 %25, 2, !dbg !5269
  store i32 %or24, i32* %arrayidx23, align 4, !dbg !5269
  br label %if.end25, !dbg !5268

if.end25:                                         ; preds = %if.then22, %if.end18
  %26 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !5270
  %timer26 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %26, i32 0, i32 1, !dbg !5271
  %27 = load i64, i64* %timer26, align 8, !dbg !5271
  %add27 = add i64 %27, 16, !dbg !5272
  %conv28 = trunc i64 %add27 to i32, !dbg !5270
  %call29 = call i32 @inl(i32 %conv28) #5, !dbg !5273
  store i32 %call29, i32* %val, align 4, !dbg !5274
  %28 = load i32, i32* %val, align 4, !dbg !5275
  %conv30 = zext i32 %28 to i64, !dbg !5275
  %and31 = and i64 %conv30, 1, !dbg !5277
  %tobool32 = icmp ne i64 %and31, 0, !dbg !5277
  br i1 %tobool32, label %if.then33, label %if.end36, !dbg !5278

if.then33:                                        ; preds = %if.end25
  %29 = load i32*, i32** %data.addr, align 8, !dbg !5279
  %arrayidx34 = getelementptr i32, i32* %29, i64 1, !dbg !5279
  %30 = load i32, i32* %arrayidx34, align 4, !dbg !5280
  %or35 = or i32 %30, 4, !dbg !5280
  store i32 %or35, i32* %arrayidx34, align 4, !dbg !5280
  br label %if.end36, !dbg !5279

if.end36:                                         ; preds = %if.then33, %if.end25
  %31 = load i32*, i32** %data.addr, align 8, !dbg !5281
  %arrayidx37 = getelementptr i32, i32* %31, i64 2, !dbg !5281
  store i32 7, i32* %arrayidx37, align 4, !dbg !5282
  br label %sw.epilog, !dbg !5283

sw.bb38:                                          ; preds = %entry
  %32 = load i32*, i32** %data.addr, align 8, !dbg !5284
  %arrayidx39 = getelementptr i32, i32* %32, i64 2, !dbg !5284
  %33 = load i32, i32* %arrayidx39, align 4, !dbg !5284
  %34 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5286
  %maxdata40 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %34, i32 0, i32 13, !dbg !5287
  %35 = load i32, i32* %maxdata40, align 8, !dbg !5287
  %cmp41 = icmp ugt i32 %33, %35, !dbg !5288
  br i1 %cmp41, label %if.then43, label %if.end44, !dbg !5289

if.then43:                                        ; preds = %sw.bb38
  store i32 -22, i32* %retval, align 4, !dbg !5290
  br label %return, !dbg !5290

if.end44:                                         ; preds = %sw.bb38
  %36 = load i32*, i32** %data.addr, align 8, !dbg !5291
  %arrayidx45 = getelementptr i32, i32* %36, i64 1, !dbg !5291
  %37 = load i32, i32* %arrayidx45, align 4, !dbg !5291
  %38 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !5292
  %timer46 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %38, i32 0, i32 1, !dbg !5293
  %39 = load i64, i64* %timer46, align 8, !dbg !5293
  %add47 = add i64 %39, 8, !dbg !5294
  %conv48 = trunc i64 %add47 to i32, !dbg !5292
  call void @outl(i32 %37, i32 %conv48) #5, !dbg !5295
  %40 = load i32*, i32** %data.addr, align 8, !dbg !5296
  %arrayidx49 = getelementptr i32, i32* %40, i64 2, !dbg !5296
  %41 = load i32, i32* %arrayidx49, align 4, !dbg !5296
  %42 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !5297
  %timer50 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %42, i32 0, i32 1, !dbg !5298
  %43 = load i64, i64* %timer50, align 8, !dbg !5298
  %add51 = add i64 %43, 4, !dbg !5299
  %conv52 = trunc i64 %add51 to i32, !dbg !5297
  call void @outl(i32 %41, i32 %conv52) #5, !dbg !5300
  br label %sw.epilog, !dbg !5301

sw.bb53:                                          ; preds = %entry
  %44 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !5302
  %timer54 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %44, i32 0, i32 1, !dbg !5303
  %45 = load i64, i64* %timer54, align 8, !dbg !5303
  %add55 = add i64 %45, 8, !dbg !5304
  %conv56 = trunc i64 %add55 to i32, !dbg !5302
  %call57 = call i32 @inl(i32 %conv56) #5, !dbg !5305
  %46 = load i32*, i32** %data.addr, align 8, !dbg !5306
  %arrayidx58 = getelementptr i32, i32* %46, i64 1, !dbg !5306
  store i32 %call57, i32* %arrayidx58, align 4, !dbg !5307
  %47 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !5308
  %timer59 = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %47, i32 0, i32 1, !dbg !5309
  %48 = load i64, i64* %timer59, align 8, !dbg !5309
  %add60 = add i64 %48, 4, !dbg !5310
  %conv61 = trunc i64 %add60 to i32, !dbg !5308
  %call62 = call i32 @inl(i32 %conv61) #5, !dbg !5311
  %49 = load i32*, i32** %data.addr, align 8, !dbg !5312
  %arrayidx63 = getelementptr i32, i32* %49, i64 2, !dbg !5312
  store i32 %call62, i32* %arrayidx63, align 4, !dbg !5313
  br label %sw.epilog, !dbg !5314

sw.default:                                       ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5315
  br label %return, !dbg !5315

sw.epilog:                                        ; preds = %sw.bb53, %if.end44, %if.end36, %sw.bb6, %if.end
  %50 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5316
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %50, i32 0, i32 1, !dbg !5317
  %51 = load i32, i32* %n, align 4, !dbg !5317
  store i32 %51, i32* %retval, align 4, !dbg !5318
  br label %return, !dbg !5318

return:                                           ; preds = %sw.epilog, %sw.default, %if.then43, %if.then
  %52 = load i32, i32* %retval, align 4, !dbg !5319
  ret i32 %52, !dbg !5319
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci1564_timer_insn_write(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5320 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %devpriv = alloca %struct.apci1564_private*, align 8
  %val = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5321, metadata !DIExpression()), !dbg !5322
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5323, metadata !DIExpression()), !dbg !5324
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5325, metadata !DIExpression()), !dbg !5326
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5327, metadata !DIExpression()), !dbg !5328
  call void @llvm.dbg.declare(metadata %struct.apci1564_private** %devpriv, metadata !5329, metadata !DIExpression()), !dbg !5330
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5331
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5332
  %1 = load i8*, i8** %private, align 8, !dbg !5332
  %2 = bitcast i8* %1 to %struct.apci1564_private*, !dbg !5331
  store %struct.apci1564_private* %2, %struct.apci1564_private** %devpriv, align 8, !dbg !5330
  %3 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5333
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %3, i32 0, i32 1, !dbg !5335
  %4 = load i32, i32* %n, align 4, !dbg !5335
  %tobool = icmp ne i32 %4, 0, !dbg !5333
  br i1 %tobool, label %if.then, label %if.end, !dbg !5336

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %val, metadata !5337, metadata !DIExpression()), !dbg !5339
  %5 = load i32*, i32** %data.addr, align 8, !dbg !5340
  %6 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5341
  %n1 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %6, i32 0, i32 1, !dbg !5342
  %7 = load i32, i32* %n1, align 4, !dbg !5342
  %sub = sub i32 %7, 1, !dbg !5343
  %idxprom = zext i32 %sub to i64, !dbg !5340
  %arrayidx = getelementptr i32, i32* %5, i64 %idxprom, !dbg !5340
  %8 = load i32, i32* %arrayidx, align 4, !dbg !5340
  store i32 %8, i32* %val, align 4, !dbg !5339
  %9 = load i32, i32* %val, align 4, !dbg !5344
  %10 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !5345
  %timer = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %10, i32 0, i32 1, !dbg !5346
  %11 = load i64, i64* %timer, align 8, !dbg !5346
  %add = add i64 %11, 4, !dbg !5347
  %conv = trunc i64 %add to i32, !dbg !5345
  call void @outl(i32 %9, i32 %conv) #5, !dbg !5348
  br label %if.end, !dbg !5349

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5350
  %n2 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %12, i32 0, i32 1, !dbg !5351
  %13 = load i32, i32* %n2, align 4, !dbg !5351
  ret i32 %13, !dbg !5352
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci1564_timer_insn_read(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5353 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %devpriv = alloca %struct.apci1564_private*, align 8
  %i = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5354, metadata !DIExpression()), !dbg !5355
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5356, metadata !DIExpression()), !dbg !5357
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5358, metadata !DIExpression()), !dbg !5359
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5360, metadata !DIExpression()), !dbg !5361
  call void @llvm.dbg.declare(metadata %struct.apci1564_private** %devpriv, metadata !5362, metadata !DIExpression()), !dbg !5363
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5364
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5365
  %1 = load i8*, i8** %private, align 8, !dbg !5365
  %2 = bitcast i8* %1 to %struct.apci1564_private*, !dbg !5364
  store %struct.apci1564_private* %2, %struct.apci1564_private** %devpriv, align 8, !dbg !5363
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5366, metadata !DIExpression()), !dbg !5367
  store i32 0, i32* %i, align 4, !dbg !5368
  br label %for.cond, !dbg !5370

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !dbg !5371
  %4 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5373
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %4, i32 0, i32 1, !dbg !5374
  %5 = load i32, i32* %n, align 4, !dbg !5374
  %cmp = icmp ult i32 %3, %5, !dbg !5375
  br i1 %cmp, label %for.body, label %for.end, !dbg !5376

for.body:                                         ; preds = %for.cond
  %6 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !5377
  %timer = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %6, i32 0, i32 1, !dbg !5378
  %7 = load i64, i64* %timer, align 8, !dbg !5378
  %add = add i64 %7, 0, !dbg !5379
  %conv = trunc i64 %add to i32, !dbg !5377
  %call = call i32 @inl(i32 %conv) #5, !dbg !5380
  %8 = load i32*, i32** %data.addr, align 8, !dbg !5381
  %9 = load i32, i32* %i, align 4, !dbg !5382
  %idxprom = sext i32 %9 to i64, !dbg !5381
  %arrayidx = getelementptr i32, i32* %8, i64 %idxprom, !dbg !5381
  store i32 %call, i32* %arrayidx, align 4, !dbg !5383
  br label %for.inc, !dbg !5381

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !dbg !5384
  %inc = add i32 %10, 1, !dbg !5384
  store i32 %inc, i32* %i, align 4, !dbg !5384
  br label %for.cond, !dbg !5385, !llvm.loop !5386

for.end:                                          ; preds = %for.cond
  %11 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5388
  %n1 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %11, i32 0, i32 1, !dbg !5389
  %12 = load i32, i32* %n1, align 4, !dbg !5389
  ret i32 %12, !dbg !5390
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci1564_counter_insn_config(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5391 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %devpriv = alloca %struct.apci1564_private*, align 8
  %chan = alloca i32, align 4
  %iobase = alloca i64, align 8
  %val = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5392, metadata !DIExpression()), !dbg !5393
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5394, metadata !DIExpression()), !dbg !5395
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5396, metadata !DIExpression()), !dbg !5397
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5398, metadata !DIExpression()), !dbg !5399
  call void @llvm.dbg.declare(metadata %struct.apci1564_private** %devpriv, metadata !5400, metadata !DIExpression()), !dbg !5401
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5402
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5403
  %1 = load i8*, i8** %private, align 8, !dbg !5403
  %2 = bitcast i8* %1 to %struct.apci1564_private*, !dbg !5402
  store %struct.apci1564_private* %2, %struct.apci1564_private** %devpriv, align 8, !dbg !5401
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !5404, metadata !DIExpression()), !dbg !5405
  %3 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5406
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %3, i32 0, i32 4, !dbg !5406
  %4 = load i32, i32* %chanspec, align 4, !dbg !5406
  %and = and i32 %4, 65535, !dbg !5406
  store i32 %and, i32* %chan, align 4, !dbg !5405
  call void @llvm.dbg.declare(metadata i64* %iobase, metadata !5407, metadata !DIExpression()), !dbg !5408
  %5 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !5409
  %counters = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %5, i32 0, i32 2, !dbg !5410
  %6 = load i64, i64* %counters, align 8, !dbg !5410
  %7 = load i32, i32* %chan, align 4, !dbg !5411
  %mul = mul i32 %7, 32, !dbg !5411
  %conv = zext i32 %mul to i64, !dbg !5411
  %add = add i64 %6, %conv, !dbg !5412
  store i64 %add, i64* %iobase, align 8, !dbg !5408
  call void @llvm.dbg.declare(metadata i32* %val, metadata !5413, metadata !DIExpression()), !dbg !5414
  %8 = load i32*, i32** %data.addr, align 8, !dbg !5415
  %arrayidx = getelementptr i32, i32* %8, i64 0, !dbg !5415
  %9 = load i32, i32* %arrayidx, align 4, !dbg !5415
  switch i32 %9, label %sw.default [
    i32 31, label %sw.bb
    i32 32, label %sw.bb10
    i32 4097, label %sw.bb19
    i32 33, label %sw.bb23
  ], !dbg !5416

sw.bb:                                            ; preds = %entry
  %10 = load i64, i64* %iobase, align 8, !dbg !5417
  %add1 = add i64 %10, 12, !dbg !5419
  %conv2 = trunc i64 %add1 to i32, !dbg !5417
  %call = call i32 @inl(i32 %conv2) #5, !dbg !5420
  store i32 %call, i32* %val, align 4, !dbg !5421
  %11 = load i32, i32* %val, align 4, !dbg !5422
  %conv3 = zext i32 %11 to i64, !dbg !5422
  %or = or i64 %conv3, 524290, !dbg !5422
  %conv4 = trunc i64 %or to i32, !dbg !5422
  store i32 %conv4, i32* %val, align 4, !dbg !5422
  %12 = load i32*, i32** %data.addr, align 8, !dbg !5423
  %arrayidx5 = getelementptr i32, i32* %12, i64 1, !dbg !5423
  %13 = load i32, i32* %arrayidx5, align 4, !dbg !5423
  %14 = load i64, i64* %iobase, align 8, !dbg !5424
  %add6 = add i64 %14, 4, !dbg !5425
  %conv7 = trunc i64 %add6 to i32, !dbg !5424
  call void @outl(i32 %13, i32 %conv7) #5, !dbg !5426
  %15 = load i32, i32* %val, align 4, !dbg !5427
  %16 = load i64, i64* %iobase, align 8, !dbg !5428
  %add8 = add i64 %16, 12, !dbg !5429
  %conv9 = trunc i64 %add8 to i32, !dbg !5428
  call void @outl(i32 %15, i32 %conv9) #5, !dbg !5430
  br label %sw.epilog, !dbg !5431

sw.bb10:                                          ; preds = %entry
  %17 = load i64, i64* %iobase, align 8, !dbg !5432
  %add11 = add i64 %17, 12, !dbg !5433
  %conv12 = trunc i64 %add11 to i32, !dbg !5432
  %call13 = call i32 @inl(i32 %conv12) #5, !dbg !5434
  store i32 %call13, i32* %val, align 4, !dbg !5435
  %18 = load i32, i32* %val, align 4, !dbg !5436
  %conv14 = zext i32 %18 to i64, !dbg !5436
  %and15 = and i64 %conv14, -524291, !dbg !5436
  %conv16 = trunc i64 %and15 to i32, !dbg !5436
  store i32 %conv16, i32* %val, align 4, !dbg !5436
  %19 = load i32, i32* %val, align 4, !dbg !5437
  %20 = load i64, i64* %iobase, align 8, !dbg !5438
  %add17 = add i64 %20, 12, !dbg !5439
  %conv18 = trunc i64 %add17 to i32, !dbg !5438
  call void @outl(i32 %19, i32 %conv18) #5, !dbg !5440
  br label %sw.epilog, !dbg !5441

sw.bb19:                                          ; preds = %entry
  %21 = load i32*, i32** %data.addr, align 8, !dbg !5442
  %arrayidx20 = getelementptr i32, i32* %21, i64 1, !dbg !5442
  %22 = load i32, i32* %arrayidx20, align 4, !dbg !5442
  %23 = load i64, i64* %iobase, align 8, !dbg !5443
  %add21 = add i64 %23, 12, !dbg !5444
  %conv22 = trunc i64 %add21 to i32, !dbg !5443
  call void @outl(i32 %22, i32 %conv22) #5, !dbg !5445
  br label %sw.epilog, !dbg !5446

sw.bb23:                                          ; preds = %entry
  %24 = load i32*, i32** %data.addr, align 8, !dbg !5447
  %arrayidx24 = getelementptr i32, i32* %24, i64 1, !dbg !5447
  store i32 0, i32* %arrayidx24, align 4, !dbg !5448
  %25 = load i64, i64* %iobase, align 8, !dbg !5449
  %add25 = add i64 %25, 12, !dbg !5450
  %conv26 = trunc i64 %add25 to i32, !dbg !5449
  %call27 = call i32 @inl(i32 %conv26) #5, !dbg !5451
  store i32 %call27, i32* %val, align 4, !dbg !5452
  %26 = load i32, i32* %val, align 4, !dbg !5453
  %conv28 = zext i32 %26 to i64, !dbg !5453
  %and29 = and i64 %conv28, 2, !dbg !5455
  %tobool = icmp ne i64 %and29, 0, !dbg !5455
  br i1 %tobool, label %if.then, label %if.end, !dbg !5456

if.then:                                          ; preds = %sw.bb23
  %27 = load i32*, i32** %data.addr, align 8, !dbg !5457
  %arrayidx30 = getelementptr i32, i32* %27, i64 1, !dbg !5457
  %28 = load i32, i32* %arrayidx30, align 4, !dbg !5458
  %or31 = or i32 %28, 1, !dbg !5458
  store i32 %or31, i32* %arrayidx30, align 4, !dbg !5458
  br label %if.end, !dbg !5457

if.end:                                           ; preds = %if.then, %sw.bb23
  %29 = load i32, i32* %val, align 4, !dbg !5459
  %conv32 = zext i32 %29 to i64, !dbg !5459
  %and33 = and i64 %conv32, 524288, !dbg !5461
  %tobool34 = icmp ne i64 %and33, 0, !dbg !5461
  br i1 %tobool34, label %if.then35, label %if.end38, !dbg !5462

if.then35:                                        ; preds = %if.end
  %30 = load i32*, i32** %data.addr, align 8, !dbg !5463
  %arrayidx36 = getelementptr i32, i32* %30, i64 1, !dbg !5463
  %31 = load i32, i32* %arrayidx36, align 4, !dbg !5464
  %or37 = or i32 %31, 2, !dbg !5464
  store i32 %or37, i32* %arrayidx36, align 4, !dbg !5464
  br label %if.end38, !dbg !5463

if.end38:                                         ; preds = %if.then35, %if.end
  %32 = load i64, i64* %iobase, align 8, !dbg !5465
  %add39 = add i64 %32, 16, !dbg !5466
  %conv40 = trunc i64 %add39 to i32, !dbg !5465
  %call41 = call i32 @inl(i32 %conv40) #5, !dbg !5467
  store i32 %call41, i32* %val, align 4, !dbg !5468
  %33 = load i32, i32* %val, align 4, !dbg !5469
  %conv42 = zext i32 %33 to i64, !dbg !5469
  %and43 = and i64 %conv42, 1, !dbg !5471
  %tobool44 = icmp ne i64 %and43, 0, !dbg !5471
  br i1 %tobool44, label %if.then45, label %if.end48, !dbg !5472

if.then45:                                        ; preds = %if.end38
  %34 = load i32*, i32** %data.addr, align 8, !dbg !5473
  %arrayidx46 = getelementptr i32, i32* %34, i64 1, !dbg !5473
  %35 = load i32, i32* %arrayidx46, align 4, !dbg !5474
  %or47 = or i32 %35, 4, !dbg !5474
  store i32 %or47, i32* %arrayidx46, align 4, !dbg !5474
  br label %if.end48, !dbg !5473

if.end48:                                         ; preds = %if.then45, %if.end38
  %36 = load i32*, i32** %data.addr, align 8, !dbg !5475
  %arrayidx49 = getelementptr i32, i32* %36, i64 2, !dbg !5475
  store i32 7, i32* %arrayidx49, align 4, !dbg !5476
  br label %sw.epilog, !dbg !5477

sw.default:                                       ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5478
  br label %return, !dbg !5478

sw.epilog:                                        ; preds = %if.end48, %sw.bb19, %sw.bb10, %sw.bb
  %37 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5479
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %37, i32 0, i32 1, !dbg !5480
  %38 = load i32, i32* %n, align 4, !dbg !5480
  store i32 %38, i32* %retval, align 4, !dbg !5481
  br label %return, !dbg !5481

return:                                           ; preds = %sw.epilog, %sw.default
  %39 = load i32, i32* %retval, align 4, !dbg !5482
  ret i32 %39, !dbg !5482
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci1564_counter_insn_write(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5483 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %devpriv = alloca %struct.apci1564_private*, align 8
  %chan = alloca i32, align 4
  %iobase = alloca i64, align 8
  %val = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5484, metadata !DIExpression()), !dbg !5485
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5486, metadata !DIExpression()), !dbg !5487
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5488, metadata !DIExpression()), !dbg !5489
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5490, metadata !DIExpression()), !dbg !5491
  call void @llvm.dbg.declare(metadata %struct.apci1564_private** %devpriv, metadata !5492, metadata !DIExpression()), !dbg !5493
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5494
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5495
  %1 = load i8*, i8** %private, align 8, !dbg !5495
  %2 = bitcast i8* %1 to %struct.apci1564_private*, !dbg !5494
  store %struct.apci1564_private* %2, %struct.apci1564_private** %devpriv, align 8, !dbg !5493
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !5496, metadata !DIExpression()), !dbg !5497
  %3 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5498
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %3, i32 0, i32 4, !dbg !5498
  %4 = load i32, i32* %chanspec, align 4, !dbg !5498
  %and = and i32 %4, 65535, !dbg !5498
  store i32 %and, i32* %chan, align 4, !dbg !5497
  call void @llvm.dbg.declare(metadata i64* %iobase, metadata !5499, metadata !DIExpression()), !dbg !5500
  %5 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !5501
  %counters = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %5, i32 0, i32 2, !dbg !5502
  %6 = load i64, i64* %counters, align 8, !dbg !5502
  %7 = load i32, i32* %chan, align 4, !dbg !5503
  %mul = mul i32 %7, 32, !dbg !5503
  %conv = zext i32 %mul to i64, !dbg !5503
  %add = add i64 %6, %conv, !dbg !5504
  store i64 %add, i64* %iobase, align 8, !dbg !5500
  %8 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5505
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %8, i32 0, i32 1, !dbg !5507
  %9 = load i32, i32* %n, align 4, !dbg !5507
  %tobool = icmp ne i32 %9, 0, !dbg !5505
  br i1 %tobool, label %if.then, label %if.end, !dbg !5508

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %val, metadata !5509, metadata !DIExpression()), !dbg !5511
  %10 = load i32*, i32** %data.addr, align 8, !dbg !5512
  %11 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5513
  %n1 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %11, i32 0, i32 1, !dbg !5514
  %12 = load i32, i32* %n1, align 4, !dbg !5514
  %sub = sub i32 %12, 1, !dbg !5515
  %idxprom = zext i32 %sub to i64, !dbg !5512
  %arrayidx = getelementptr i32, i32* %10, i64 %idxprom, !dbg !5512
  %13 = load i32, i32* %arrayidx, align 4, !dbg !5512
  store i32 %13, i32* %val, align 4, !dbg !5511
  %14 = load i32, i32* %val, align 4, !dbg !5516
  %15 = load i64, i64* %iobase, align 8, !dbg !5517
  %add2 = add i64 %15, 4, !dbg !5518
  %conv3 = trunc i64 %add2 to i32, !dbg !5517
  call void @outl(i32 %14, i32 %conv3) #5, !dbg !5519
  br label %if.end, !dbg !5520

if.end:                                           ; preds = %if.then, %entry
  %16 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5521
  %n4 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %16, i32 0, i32 1, !dbg !5522
  %17 = load i32, i32* %n4, align 4, !dbg !5522
  ret i32 %17, !dbg !5523
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci1564_counter_insn_read(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5524 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %devpriv = alloca %struct.apci1564_private*, align 8
  %chan = alloca i32, align 4
  %iobase = alloca i64, align 8
  %i = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5525, metadata !DIExpression()), !dbg !5526
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5527, metadata !DIExpression()), !dbg !5528
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5529, metadata !DIExpression()), !dbg !5530
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5531, metadata !DIExpression()), !dbg !5532
  call void @llvm.dbg.declare(metadata %struct.apci1564_private** %devpriv, metadata !5533, metadata !DIExpression()), !dbg !5534
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5535
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !5536
  %1 = load i8*, i8** %private, align 8, !dbg !5536
  %2 = bitcast i8* %1 to %struct.apci1564_private*, !dbg !5535
  store %struct.apci1564_private* %2, %struct.apci1564_private** %devpriv, align 8, !dbg !5534
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !5537, metadata !DIExpression()), !dbg !5538
  %3 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5539
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %3, i32 0, i32 4, !dbg !5539
  %4 = load i32, i32* %chanspec, align 4, !dbg !5539
  %and = and i32 %4, 65535, !dbg !5539
  store i32 %and, i32* %chan, align 4, !dbg !5538
  call void @llvm.dbg.declare(metadata i64* %iobase, metadata !5540, metadata !DIExpression()), !dbg !5541
  %5 = load %struct.apci1564_private*, %struct.apci1564_private** %devpriv, align 8, !dbg !5542
  %counters = getelementptr inbounds %struct.apci1564_private, %struct.apci1564_private* %5, i32 0, i32 2, !dbg !5543
  %6 = load i64, i64* %counters, align 8, !dbg !5543
  %7 = load i32, i32* %chan, align 4, !dbg !5544
  %mul = mul i32 %7, 32, !dbg !5544
  %conv = zext i32 %mul to i64, !dbg !5544
  %add = add i64 %6, %conv, !dbg !5545
  store i64 %add, i64* %iobase, align 8, !dbg !5541
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5546, metadata !DIExpression()), !dbg !5547
  store i32 0, i32* %i, align 4, !dbg !5548
  br label %for.cond, !dbg !5550

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4, !dbg !5551
  %9 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5553
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %9, i32 0, i32 1, !dbg !5554
  %10 = load i32, i32* %n, align 4, !dbg !5554
  %cmp = icmp ult i32 %8, %10, !dbg !5555
  br i1 %cmp, label %for.body, label %for.end, !dbg !5556

for.body:                                         ; preds = %for.cond
  %11 = load i64, i64* %iobase, align 8, !dbg !5557
  %add2 = add i64 %11, 0, !dbg !5558
  %conv3 = trunc i64 %add2 to i32, !dbg !5557
  %call = call i32 @inl(i32 %conv3) #5, !dbg !5559
  %12 = load i32*, i32** %data.addr, align 8, !dbg !5560
  %13 = load i32, i32* %i, align 4, !dbg !5561
  %idxprom = sext i32 %13 to i64, !dbg !5560
  %arrayidx = getelementptr i32, i32* %12, i64 %idxprom, !dbg !5560
  store i32 %call, i32* %arrayidx, align 4, !dbg !5562
  br label %for.inc, !dbg !5560

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !dbg !5563
  %inc = add i32 %14, 1, !dbg !5563
  store i32 %inc, i32* %i, align 4, !dbg !5563
  br label %for.cond, !dbg !5564, !llvm.loop !5565

for.end:                                          ; preds = %for.cond
  %15 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5567
  %n4 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %15, i32 0, i32 1, !dbg !5568
  %16 = load i32, i32* %n4, align 4, !dbg !5568
  ret i32 %16, !dbg !5569
}

; Function Attrs: noredzone
declare dso_local i32 @addi_watchdog_init(%struct.comedi_subdevice*, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci1564_diag_insn_bits(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5570 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5571, metadata !DIExpression()), !dbg !5572
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5573, metadata !DIExpression()), !dbg !5574
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5575, metadata !DIExpression()), !dbg !5576
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5577, metadata !DIExpression()), !dbg !5578
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5579
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 18, !dbg !5580
  %1 = load i64, i64* %iobase, align 8, !dbg !5580
  %add = add i64 %1, 28, !dbg !5581
  %conv = trunc i64 %add to i32, !dbg !5579
  %call = call i32 @inl(i32 %conv) #5, !dbg !5582
  %and = and i32 %call, 3, !dbg !5583
  %2 = load i32*, i32** %data.addr, align 8, !dbg !5584
  %arrayidx = getelementptr i32, i32* %2, i64 1, !dbg !5584
  store i32 %and, i32* %arrayidx, align 4, !dbg !5585
  %3 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5586
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %3, i32 0, i32 1, !dbg !5587
  %4 = load i32, i32* %n, align 4, !dbg !5587
  ret i32 %4, !dbg !5588
}

; Function Attrs: noredzone
declare dso_local i32 @request_threaded_irq(i32, i32 (i32, i8*)*, i32 (i32, i8*)*, i64, i8*, i8*) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i8*, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_dio_update_state(%struct.comedi_subdevice*, i32*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_src(i32* %src, i32 %flags) #2 !dbg !5589 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i32*, align 8
  %flags.addr = alloca i32, align 4
  %orig_src = alloca i32, align 4
  store i32* %src, i32** %src.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %src.addr, metadata !5592, metadata !DIExpression()), !dbg !5593
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5594, metadata !DIExpression()), !dbg !5595
  call void @llvm.dbg.declare(metadata i32* %orig_src, metadata !5596, metadata !DIExpression()), !dbg !5597
  %0 = load i32*, i32** %src.addr, align 8, !dbg !5598
  %1 = load i32, i32* %0, align 4, !dbg !5599
  store i32 %1, i32* %orig_src, align 4, !dbg !5597
  %2 = load i32, i32* %orig_src, align 4, !dbg !5600
  %3 = load i32, i32* %flags.addr, align 4, !dbg !5601
  %and = and i32 %2, %3, !dbg !5602
  %4 = load i32*, i32** %src.addr, align 8, !dbg !5603
  store i32 %and, i32* %4, align 4, !dbg !5604
  %5 = load i32*, i32** %src.addr, align 8, !dbg !5605
  %6 = load i32, i32* %5, align 4, !dbg !5607
  %cmp = icmp eq i32 %6, 0, !dbg !5608
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5609

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32*, i32** %src.addr, align 8, !dbg !5610
  %8 = load i32, i32* %7, align 4, !dbg !5611
  %9 = load i32, i32* %orig_src, align 4, !dbg !5612
  %cmp1 = icmp ne i32 %8, %9, !dbg !5613
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5614

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !5615
  br label %return, !dbg !5615

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %retval, align 4, !dbg !5616
  br label %return, !dbg !5616

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !5617
  ret i32 %10, !dbg !5617
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_arg_is(i32* %arg, i32 %val) #2 !dbg !5618 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i32*, align 8
  %val.addr = alloca i32, align 4
  store i32* %arg, i32** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %arg.addr, metadata !5619, metadata !DIExpression()), !dbg !5620
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5621, metadata !DIExpression()), !dbg !5622
  %0 = load i32*, i32** %arg.addr, align 8, !dbg !5623
  %1 = load i32, i32* %0, align 4, !dbg !5625
  %2 = load i32, i32* %val.addr, align 4, !dbg !5626
  %cmp = icmp ne i32 %1, %2, !dbg !5627
  br i1 %cmp, label %if.then, label %if.end, !dbg !5628

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %val.addr, align 4, !dbg !5629
  %4 = load i32*, i32** %arg.addr, align 8, !dbg !5631
  store i32 %3, i32* %4, align 4, !dbg !5632
  store i32 -22, i32* %retval, align 4, !dbg !5633
  br label %return, !dbg !5633

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5634
  br label %return, !dbg !5634

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !5635
  ret i32 %5, !dbg !5635
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci1564_pci_probe(%struct.pci_dev* %dev, %struct.pci_device_id* %id) #2 !dbg !5636 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %id.addr = alloca %struct.pci_device_id*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5637, metadata !DIExpression()), !dbg !5638
  store %struct.pci_device_id* %id, %struct.pci_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_device_id** %id.addr, metadata !5639, metadata !DIExpression()), !dbg !5640
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5641
  %1 = load %struct.pci_device_id*, %struct.pci_device_id** %id.addr, align 8, !dbg !5642
  %driver_data = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %1, i32 0, i32 6, !dbg !5643
  %2 = load i64, i64* %driver_data, align 8, !dbg !5643
  %call = call i32 @comedi_pci_auto_config(%struct.pci_dev* %0, %struct.comedi_driver* @apci1564_driver, i64 %2) #5, !dbg !5644
  ret i32 %call, !dbg !5645
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
!llvm.module.flags = !{!4265, !4266, !4267, !4268}
!llvm.ident = !{!4269}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_apci1564_driver_init234", scope: !2, file: !3, line: 816, type: !184, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !127, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/staging/comedi/drivers/addi_apci_1564.c", directory: "/home/lizy2001/genbc/linux")
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
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "comedi_counter_status_flags", file: !101, line: 448, baseType: !7, size: 32, elements: !123)
!123 = !{!124, !125, !126}
!124 = !DIEnumerator(name: "COMEDI_COUNTER_ARMED", value: 1, isUnsigned: true)
!125 = !DIEnumerator(name: "COMEDI_COUNTER_COUNTING", value: 2, isUnsigned: true)
!126 = !DIEnumerator(name: "COMEDI_COUNTER_TERMINAL_COUNT", value: 4, isUnsigned: true)
!127 = !{!0, !128, !135, !142, !147, !152, !157, !3981, !4262}
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(name: "__exitcall_apci1564_driver_exit", scope: !2, file: !3, line: 816, type: !130, isLocal: true, isDefinition: true)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !131, line: 117, baseType: !132)
!131 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{null}
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author235", scope: !2, file: !3, line: 818, type: !137, isLocal: true, isDefinition: true, align: 8)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 416, elements: !140)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!139 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!140 = !{!141}
!141 = !DISubrange(count: 52)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description236", scope: !2, file: !3, line: 819, type: !144, isLocal: true, isDefinition: true, align: 8)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 680, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 85)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file237", scope: !2, file: !3, line: 820, type: !149, isLocal: true, isDefinition: true, align: 8)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 528, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 66)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license238", scope: !2, file: !3, line: 820, type: !154, isLocal: true, isDefinition: true, align: 8)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 216, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 27)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(name: "apci1564_driver", scope: !2, file: !3, line: 791, type: !159, isLocal: true, isDefinition: true)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_driver", file: !160, line: 437, size: 576, elements: !161)
!160 = !DIFile(filename: "drivers/staging/comedi/drivers/../comedidev.h", directory: "/home/lizy2001/genbc/linux")
!161 = !{!162, !164, !166, !170, !3971, !3972, !3976, !3977, !3980}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !159, file: !160, line: 439, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !159, file: !160, line: 441, baseType: !165, size: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !159, file: !160, line: 442, baseType: !167, size: 64, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !169, line: 76, flags: DIFlagFwdDecl)
!169 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!170 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !159, file: !160, line: 443, baseType: !171, size: 64, offset: 192)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DISubroutineType(types: !173)
!173 = !{!174, !175, !3964}
!174 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_device", file: !160, line: 541, size: 1920, elements: !177)
!177 = !{!178, !179, !180, !183, !185, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3952, !3956, !3960}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !176, file: !160, line: 542, baseType: !174, size: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !176, file: !160, line: 543, baseType: !163, size: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "pacer", scope: !176, file: !160, line: 544, baseType: !181, size: 64, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_8254", file: !160, line: 544, flags: DIFlagFwdDecl)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !176, file: !160, line: 545, baseType: !184, size: 64, offset: 192)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !176, file: !160, line: 547, baseType: !186, size: 64, offset: 256)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !188)
!188 = !{!189, !3349, !3350, !3353, !3354, !3405, !3496, !3497, !3498, !3499, !3500, !3509, !3614, !3627, !3630, !3631, !3635, !3637, !3638, !3639, !3643, !3649, !3650, !3653, !3657, !3747, !3748, !3749, !3750, !3751, !3783, !3784, !3785, !3788, !3791, !3792, !3793, !3794}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !187, file: !73, line: 462, baseType: !190, size: 512)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !191, line: 64, size: 512, elements: !192)
!191 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!192 = !{!193, !194, !201, !203, !263, !3200, !3339, !3344, !3345, !3346, !3347, !3348}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !190, file: !191, line: 65, baseType: !165, size: 64)
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
!234 = !{!174, !204, !202}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !228, file: !191, line: 158, baseType: !236, size: 64, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!165, !204, !202}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !228, file: !191, line: 159, baseType: !241, size: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{!174, !204, !202, !245}
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !191, line: 148, size: 20736, elements: !247)
!247 = !{!248, !253, !257, !258, !262}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !246, file: !191, line: 149, baseType: !249, size: 192)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 192, elements: !251)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!251 = !{!252}
!252 = !DISubrange(count: 3)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !246, file: !191, line: 150, baseType: !254, size: 4096, offset: 192)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 4096, elements: !255)
!255 = !{!256}
!256 = !DISubrange(count: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !246, file: !191, line: 151, baseType: !174, size: 32, offset: 4288)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !246, file: !191, line: 152, baseType: !259, size: 16384, offset: 4320)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 16384, elements: !260)
!260 = !{!261}
!261 = !DISubrange(count: 2048)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !246, file: !191, line: 153, baseType: !174, size: 32, offset: 20704)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !190, file: !191, line: 69, baseType: !264, size: 64, offset: 320)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !191, line: 138, size: 448, elements: !266)
!266 = !{!267, !271, !301, !303, !3162, !3190, !3194}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !265, file: !191, line: 139, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{null, !202}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !265, file: !191, line: 140, baseType: !272, size: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !274)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !275, line: 230, size: 128, elements: !276)
!275 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!276 = !{!277, !293}
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
!289 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !287, file: !275, line: 31, baseType: !165, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !287, file: !275, line: 32, baseType: !291, size: 16, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !196, line: 19, baseType: !292)
!292 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !274, file: !275, line: 232, baseType: !294, size: 64, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!281, !202, !286, !165, !297}
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !196, line: 55, baseType: !298)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !283, line: 72, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !283, line: 16, baseType: !300)
!300 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !265, file: !191, line: 141, baseType: !302, size: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !265, file: !191, line: 142, baseType: !304, size: 64, offset: 192)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !307)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !275, line: 84, size: 320, elements: !308)
!308 = !{!309, !310, !314, !3159, !3160}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !307, file: !275, line: 85, baseType: !165, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !307, file: !275, line: 86, baseType: !311, size: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!291, !202, !286, !174}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !307, file: !275, line: 88, baseType: !315, size: 64, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{!291, !202, !318, !174}
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !275, line: 168, size: 448, elements: !320)
!320 = !{!321, !322, !323, !324, !3154, !3155}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !319, file: !275, line: 169, baseType: !287, size: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !319, file: !275, line: 170, baseType: !297, size: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !319, file: !275, line: 171, baseType: !184, size: 64, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !319, file: !275, line: 172, baseType: !325, size: 64, offset: 256)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!281, !328, !202, !318, !250, !507, !297}
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !330)
!330 = !{!331, !349, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3137, !3138, !3147, !3148, !3149, !3150, !3151, !3152, !3153}
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
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !196, line: 216, size: 128, align: 64, elements: !342)
!342 = !{!343, !345}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !341, file: !196, line: 217, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !341, file: !196, line: 218, baseType: !346, size: 64, offset: 64)
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
!360 = !{!361, !362, !372, !380, !381, !404, !3087, !3089, !3101, !3102, !3103, !3104, !3105, !3111, !3112, !3113}
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
!407 = !{!408, !409, !410, !418, !425, !426, !574, !2798, !2799, !2800, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !3063, !3071, !3072, !3073, !3083, !3084, !3085, !3086}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !406, file: !44, line: 611, baseType: !291, size: 16)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !406, file: !44, line: 612, baseType: !292, size: 16, offset: 16)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !406, file: !44, line: 613, baseType: !411, size: 32, offset: 32)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !412, line: 23, baseType: !413)
!412 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !412, line: 21, size: 32, elements: !414)
!414 = !{!415}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !413, file: !412, line: 22, baseType: !416, size: 32)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !196, line: 32, baseType: !417)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !283, line: 49, baseType: !7)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !406, file: !44, line: 614, baseType: !419, size: 32, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !412, line: 28, baseType: !420)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !412, line: 26, size: 32, elements: !421)
!421 = !{!422}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !420, file: !412, line: 27, baseType: !423, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !196, line: 33, baseType: !424)
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
!438 = !{!165, !358, !405, !439}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !441, line: 10, size: 128, elements: !442)
!441 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!442 = !{!443, !447}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !440, file: !441, line: 11, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{null, !184}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !440, file: !441, line: 12, baseType: !184, size: 64, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !429, file: !44, line: 1867, baseType: !449, size: 64, offset: 128)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{!174, !405, !174}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !429, file: !44, line: 1868, baseType: !453, size: 64, offset: 192)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DISubroutineType(types: !455)
!455 = !{!456, !405, !174}
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !429, file: !44, line: 1870, baseType: !459, size: 64, offset: 256)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!174, !358, !250, !174}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !429, file: !44, line: 1872, baseType: !463, size: 64, offset: 320)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!174, !405, !358, !291, !466}
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !196, line: 30, baseType: !467)
!467 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !429, file: !44, line: 1873, baseType: !469, size: 64, offset: 384)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{!174, !358, !405, !358}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !429, file: !44, line: 1874, baseType: !473, size: 64, offset: 448)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!174, !405, !358}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !429, file: !44, line: 1875, baseType: !477, size: 64, offset: 512)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{!174, !405, !358, !165}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !429, file: !44, line: 1876, baseType: !481, size: 64, offset: 576)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!174, !405, !358, !291}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !429, file: !44, line: 1877, baseType: !473, size: 64, offset: 640)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !429, file: !44, line: 1878, baseType: !486, size: 64, offset: 704)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!174, !405, !358, !291, !489}
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !196, line: 16, baseType: !490)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !196, line: 13, baseType: !391)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !429, file: !44, line: 1879, baseType: !492, size: 64, offset: 768)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{!174, !405, !358, !405, !358, !7}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !429, file: !44, line: 1881, baseType: !496, size: 64, offset: 832)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!174, !358, !499}
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !501)
!501 = !{!502, !503, !504, !505, !506, !510, !518, !519, !520}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !500, file: !44, line: 220, baseType: !7, size: 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !500, file: !44, line: 221, baseType: !291, size: 16, offset: 32)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !500, file: !44, line: 222, baseType: !411, size: 32, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !500, file: !44, line: 223, baseType: !419, size: 32, offset: 96)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !500, file: !44, line: 224, baseType: !507, size: 64, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !196, line: 46, baseType: !508)
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
!524 = !{!174, !525, !527, !391, !7}
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
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !196, line: 104, baseType: !391)
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
!557 = !{!174, !405, !558, !397, !397}
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !429, file: !44, line: 1886, baseType: !561, size: 64, offset: 1088)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{!174, !405, !564, !174}
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !429, file: !44, line: 1887, baseType: !566, size: 64, offset: 1152)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{!174, !405, !358, !328, !7, !291}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !429, file: !44, line: 1890, baseType: !481, size: 64, offset: 1216)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !429, file: !44, line: 1891, baseType: !571, size: 64, offset: 1280)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!174, !405, !456, !174}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !406, file: !44, line: 623, baseType: !575, size: 64, offset: 192)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !577)
!577 = !{!578, !579, !580, !581, !582, !583, !630, !2405, !2487, !2570, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2586, !2590, !2591, !2594, !2595, !2598, !2599, !2600, !2641, !2668, !2669, !2670, !2671, !2672, !2673, !2676, !2678, !2685, !2686, !2688, !2689, !2690, !2749, !2750, !2765, !2766, !2767, !2768, !2769, !2772, !2773, !2774, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !576, file: !44, line: 1417, baseType: !195, size: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !576, file: !44, line: 1418, baseType: !489, size: 32, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !576, file: !44, line: 1419, baseType: !403, size: 8, offset: 160)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !576, file: !44, line: 1420, baseType: !300, size: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !576, file: !44, line: 1421, baseType: !507, size: 64, offset: 256)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !576, file: !44, line: 1422, baseType: !584, size: 64, offset: 320)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !586)
!586 = !{!587, !588, !589, !596, !600, !604, !608, !609, !610, !620, !623, !624, !625, !627, !628, !629}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !585, file: !44, line: 2229, baseType: !165, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !585, file: !44, line: 2230, baseType: !174, size: 32, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !585, file: !44, line: 2238, baseType: !590, size: 64, offset: 128)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!174, !593}
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
!603 = !{!358, !584, !174, !165, !184}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !585, file: !44, line: 2242, baseType: !605, size: 64, offset: 320)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{null, !575}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !585, file: !44, line: 2243, baseType: !167, size: 64, offset: 384)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !585, file: !44, line: 2244, baseType: !584, size: 64, offset: 448)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !585, file: !44, line: 2245, baseType: !611, size: 64, offset: 512)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !196, line: 182, size: 64, elements: !612)
!612 = !{!613}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !611, file: !196, line: 183, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !196, line: 186, size: 128, elements: !616)
!616 = !{!617, !618}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !615, file: !196, line: 187, baseType: !614, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !615, file: !196, line: 187, baseType: !619, size: 64, offset: 64)
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
!634 = !{!635, !639, !643, !644, !648, !654, !658, !659, !660, !664, !668, !669, !670, !671, !677, !682, !683, !690, !691, !692, !693, !2389, !2404}
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
!647 = !{null, !405, !174}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !633, file: !44, line: 1941, baseType: !649, size: 64, offset: 256)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{!174, !405, !652}
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !633, file: !44, line: 1942, baseType: !655, size: 64, offset: 320)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{!174, !405}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !633, file: !44, line: 1943, baseType: !640, size: 64, offset: 384)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !633, file: !44, line: 1944, baseType: !605, size: 64, offset: 448)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !633, file: !44, line: 1945, baseType: !661, size: 64, offset: 512)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{!174, !575, !174}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !633, file: !44, line: 1946, baseType: !665, size: 64, offset: 576)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!174, !575}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !633, file: !44, line: 1947, baseType: !665, size: 64, offset: 640)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !633, file: !44, line: 1948, baseType: !665, size: 64, offset: 704)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !633, file: !44, line: 1949, baseType: !665, size: 64, offset: 768)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !633, file: !44, line: 1950, baseType: !672, size: 64, offset: 832)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{!174, !358, !675}
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !633, file: !44, line: 1951, baseType: !678, size: 64, offset: 896)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{!174, !575, !681, !250}
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !633, file: !44, line: 1952, baseType: !605, size: 64, offset: 960)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !633, file: !44, line: 1954, baseType: !684, size: 64, offset: 1024)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DISubroutineType(types: !686)
!686 = !{!174, !687, !358}
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !689, line: 539, flags: DIFlagFwdDecl)
!689 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!690 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !633, file: !44, line: 1955, baseType: !684, size: 64, offset: 1088)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !633, file: !44, line: 1956, baseType: !684, size: 64, offset: 1152)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !633, file: !44, line: 1957, baseType: !684, size: 64, offset: 1216)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !633, file: !44, line: 1963, baseType: !694, size: 64, offset: 1280)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{!174, !575, !697, !720}
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !699, line: 68, size: 512, align: 128, elements: !700)
!699 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!700 = !{!701, !702, !2381, !2388}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !698, file: !699, line: 69, baseType: !300, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, scope: !698, file: !699, line: 77, baseType: !703, size: 320, offset: 64)
!703 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !698, file: !699, line: 77, size: 320, elements: !704)
!704 = !{!705, !893, !898, !926, !934, !940, !2312, !2380}
!705 = !DIDerivedType(tag: DW_TAG_member, scope: !703, file: !699, line: 78, baseType: !706, size: 320)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !703, file: !699, line: 78, size: 320, elements: !707)
!707 = !{!708, !709, !891, !892}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !706, file: !699, line: 84, baseType: !195, size: 128)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !706, file: !699, line: 86, baseType: !710, size: 64, offset: 128)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !712)
!712 = !{!713, !714, !722, !723, !728, !743, !759, !760, !761, !762, !884, !885, !888, !889, !890}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !711, file: !44, line: 452, baseType: !405, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !711, file: !44, line: 453, baseType: !715, size: 128, offset: 64)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !716, line: 292, size: 128, elements: !717)
!716 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!717 = !{!718, !719, !721}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !715, file: !716, line: 293, baseType: !209)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !715, file: !716, line: 295, baseType: !720, size: 32)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !196, line: 148, baseType: !7)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !715, file: !716, line: 296, baseType: !184, size: 64, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !711, file: !44, line: 454, baseType: !720, size: 32, offset: 192)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !711, file: !44, line: 455, baseType: !724, size: 32, offset: 224)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !196, line: 168, baseType: !725)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !196, line: 166, size: 32, elements: !726)
!726 = !{!727}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !725, file: !196, line: 167, baseType: !174, size: 32)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !711, file: !44, line: 460, baseType: !729, size: 128, offset: 256)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !730, line: 125, size: 128, elements: !731)
!730 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!731 = !{!732, !742}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !729, file: !730, line: 126, baseType: !733, size: 64)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !730, line: 31, size: 64, elements: !734)
!734 = !{!735}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !733, file: !730, line: 32, baseType: !736, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !730, line: 24, size: 192, align: 64, elements: !738)
!738 = !{!739, !740, !741}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !737, file: !730, line: 25, baseType: !300, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !737, file: !730, line: 26, baseType: !736, size: 64, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !737, file: !730, line: 27, baseType: !736, size: 64, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !729, file: !730, line: 127, baseType: !736, size: 64, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !711, file: !44, line: 461, baseType: !744, size: 256, offset: 384)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !745, line: 35, size: 256, elements: !746)
!745 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!746 = !{!747, !755, !756, !758}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !744, file: !745, line: 36, baseType: !748, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !749, line: 13, baseType: !750)
!749 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !196, line: 175, baseType: !751)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !196, line: 173, size: 64, elements: !752)
!752 = !{!753}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !751, file: !196, line: 174, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !392, line: 22, baseType: !516)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !744, file: !745, line: 42, baseType: !748, size: 64, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !744, file: !745, line: 46, baseType: !757, offset: 128)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !210, line: 29, baseType: !217)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !744, file: !745, line: 47, baseType: !195, size: 128, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !711, file: !44, line: 462, baseType: !300, size: 64, offset: 640)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !711, file: !44, line: 463, baseType: !300, size: 64, offset: 704)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !711, file: !44, line: 464, baseType: !300, size: 64, offset: 768)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !711, file: !44, line: 465, baseType: !763, size: 64, offset: 832)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !765)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !766)
!766 = !{!767, !771, !775, !779, !783, !787, !793, !799, !803, !808, !812, !816, !820, !848, !852, !858, !859, !860, !864, !869, !873, !880}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !765, file: !44, line: 368, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{!174, !697, !652}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !765, file: !44, line: 369, baseType: !772, size: 64, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{!174, !328, !697}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !765, file: !44, line: 372, baseType: !776, size: 64, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{!174, !710, !652}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !765, file: !44, line: 375, baseType: !780, size: 64, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{!174, !697}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !765, file: !44, line: 381, baseType: !784, size: 64, offset: 256)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DISubroutineType(types: !786)
!786 = !{!174, !328, !710, !199, !7}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !765, file: !44, line: 383, baseType: !788, size: 64, offset: 320)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DISubroutineType(types: !790)
!790 = !{null, !791}
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !765, file: !44, line: 385, baseType: !794, size: 64, offset: 384)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DISubroutineType(types: !796)
!796 = !{!174, !328, !710, !507, !7, !7, !797, !798}
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !765, file: !44, line: 388, baseType: !800, size: 64, offset: 448)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{!174, !328, !710, !507, !7, !7, !697, !184}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !765, file: !44, line: 393, baseType: !804, size: 64, offset: 512)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DISubroutineType(types: !806)
!806 = !{!807, !710, !807}
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !196, line: 125, baseType: !397)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !765, file: !44, line: 394, baseType: !809, size: 64, offset: 576)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{null, !697, !7, !7}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !765, file: !44, line: 395, baseType: !813, size: 64, offset: 640)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{!174, !697, !720}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !765, file: !44, line: 396, baseType: !817, size: 64, offset: 704)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DISubroutineType(types: !819)
!819 = !{null, !697}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !765, file: !44, line: 397, baseType: !821, size: 64, offset: 768)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DISubroutineType(types: !823)
!823 = !{!281, !824, !846}
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !826)
!826 = !{!827, !828, !829, !833, !834, !835, !838, !839}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !825, file: !44, line: 321, baseType: !328, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !825, file: !44, line: 326, baseType: !507, size: 64, offset: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !825, file: !44, line: 327, baseType: !830, size: 64, offset: 128)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{null, !824, !285, !285}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !825, file: !44, line: 328, baseType: !184, size: 64, offset: 192)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !825, file: !44, line: 329, baseType: !174, size: 32, offset: 256)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !825, file: !44, line: 330, baseType: !836, size: 16, offset: 288)
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !392, line: 19, baseType: !837)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !394, line: 24, baseType: !292)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !825, file: !44, line: 331, baseType: !836, size: 16, offset: 304)
!839 = !DIDerivedType(tag: DW_TAG_member, scope: !825, file: !44, line: 332, baseType: !840, size: 64, offset: 320)
!840 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !825, file: !44, line: 332, size: 64, elements: !841)
!841 = !{!842, !843}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !840, file: !44, line: 333, baseType: !7, size: 32)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !840, file: !44, line: 334, baseType: !844, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !765, file: !44, line: 402, baseType: !849, size: 64, offset: 832)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{!174, !710, !697, !697, !5}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !765, file: !44, line: 404, baseType: !853, size: 64, offset: 896)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!466, !697, !856}
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !857, line: 305, baseType: !7)
!857 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!858 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !765, file: !44, line: 405, baseType: !817, size: 64, offset: 960)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !765, file: !44, line: 406, baseType: !780, size: 64, offset: 1024)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !765, file: !44, line: 407, baseType: !861, size: 64, offset: 1088)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{!174, !697, !300, !300}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !765, file: !44, line: 409, baseType: !865, size: 64, offset: 1152)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{null, !697, !868, !868}
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !765, file: !44, line: 410, baseType: !870, size: 64, offset: 1216)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{!174, !710, !697}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !765, file: !44, line: 413, baseType: !874, size: 64, offset: 1280)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DISubroutineType(types: !876)
!876 = !{!174, !877, !328, !879}
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !765, file: !44, line: 415, baseType: !881, size: 64, offset: 1344)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DISubroutineType(types: !883)
!883 = !{null, !328}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !711, file: !44, line: 466, baseType: !300, size: 64, offset: 896)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !711, file: !44, line: 467, baseType: !886, size: 32, offset: 960)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !887, line: 8, baseType: !391)
!887 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!888 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !711, file: !44, line: 468, baseType: !209, offset: 992)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !711, file: !44, line: 469, baseType: !195, size: 128, offset: 1024)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !711, file: !44, line: 470, baseType: !184, size: 64, offset: 1152)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !706, file: !699, line: 87, baseType: !300, size: 64, offset: 192)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !706, file: !699, line: 94, baseType: !300, size: 64, offset: 256)
!893 = !DIDerivedType(tag: DW_TAG_member, scope: !703, file: !699, line: 96, baseType: !894, size: 64)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !703, file: !699, line: 96, size: 64, elements: !895)
!895 = !{!896}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !894, file: !699, line: 101, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !196, line: 143, baseType: !397)
!898 = !DIDerivedType(tag: DW_TAG_member, scope: !703, file: !699, line: 103, baseType: !899, size: 320)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !703, file: !699, line: 103, size: 320, elements: !900)
!900 = !{!901, !911, !914, !915}
!901 = !DIDerivedType(tag: DW_TAG_member, scope: !899, file: !699, line: 104, baseType: !902, size: 128)
!902 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !899, file: !699, line: 104, size: 128, elements: !903)
!903 = !{!904, !905}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !902, file: !699, line: 105, baseType: !195, size: 128)
!905 = !DIDerivedType(tag: DW_TAG_member, scope: !902, file: !699, line: 106, baseType: !906, size: 128)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !902, file: !699, line: 106, size: 128, elements: !907)
!907 = !{!908, !909, !910}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !906, file: !699, line: 107, baseType: !697, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !906, file: !699, line: 109, baseType: !174, size: 32, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !906, file: !699, line: 110, baseType: !174, size: 32, offset: 96)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !899, file: !699, line: 117, baseType: !912, size: 64, offset: 128)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !699, line: 117, flags: DIFlagFwdDecl)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !899, file: !699, line: 119, baseType: !184, size: 64, offset: 192)
!915 = !DIDerivedType(tag: DW_TAG_member, scope: !899, file: !699, line: 120, baseType: !916, size: 64, offset: 256)
!916 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !899, file: !699, line: 120, size: 64, elements: !917)
!917 = !{!918, !919, !920}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !916, file: !699, line: 121, baseType: !184, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !916, file: !699, line: 122, baseType: !300, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, scope: !916, file: !699, line: 123, baseType: !921, size: 32)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !916, file: !699, line: 123, size: 32, elements: !922)
!922 = !{!923, !924, !925}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !921, file: !699, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !921, file: !699, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !921, file: !699, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!926 = !DIDerivedType(tag: DW_TAG_member, scope: !703, file: !699, line: 130, baseType: !927, size: 192)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !703, file: !699, line: 130, size: 192, elements: !928)
!928 = !{!929, !930, !931, !932, !933}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !927, file: !699, line: 131, baseType: !300, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !927, file: !699, line: 134, baseType: !403, size: 8, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !927, file: !699, line: 135, baseType: !403, size: 8, offset: 72)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !927, file: !699, line: 136, baseType: !724, size: 32, offset: 96)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !927, file: !699, line: 137, baseType: !7, size: 32, offset: 128)
!934 = !DIDerivedType(tag: DW_TAG_member, scope: !703, file: !699, line: 139, baseType: !935, size: 256)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !703, file: !699, line: 139, size: 256, elements: !936)
!936 = !{!937, !938, !939}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !935, file: !699, line: 140, baseType: !300, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !935, file: !699, line: 141, baseType: !724, size: 32, offset: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !935, file: !699, line: 143, baseType: !195, size: 128, offset: 128)
!940 = !DIDerivedType(tag: DW_TAG_member, scope: !703, file: !699, line: 145, baseType: !941, size: 256)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !703, file: !699, line: 145, size: 256, elements: !942)
!942 = !{!943, !944, !946, !947, !2311}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !941, file: !699, line: 146, baseType: !300, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !941, file: !699, line: 147, baseType: !945, size: 64, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !689, line: 509, baseType: !697)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !941, file: !699, line: 148, baseType: !300, size: 64, offset: 128)
!947 = !DIDerivedType(tag: DW_TAG_member, scope: !941, file: !699, line: 149, baseType: !948, size: 64, offset: 192)
!948 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !941, file: !699, line: 149, size: 64, elements: !949)
!949 = !{!950, !2310}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !948, file: !699, line: 150, baseType: !951, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !699, line: 388, size: 7296, elements: !953)
!953 = !{!954, !2306}
!954 = !DIDerivedType(tag: DW_TAG_member, scope: !952, file: !699, line: 389, baseType: !955, size: 7296)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !952, file: !699, line: 389, size: 7296, elements: !956)
!956 = !{!957, !1075, !1076, !1077, !1081, !1082, !1083, !1084, !1085, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1126, !1134, !1137, !1183, !1184, !2290, !2291, !2294, !2295, !2296, !2299, !2300, !2301, !2304, !2305}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !955, file: !699, line: 390, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !699, line: 305, size: 1472, elements: !960)
!960 = !{!961, !962, !963, !964, !965, !966, !967, !968, !975, !976, !981, !982, !985, !1069, !1070, !1071, !1072, !1073}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !959, file: !699, line: 308, baseType: !300, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !959, file: !699, line: 309, baseType: !300, size: 64, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !959, file: !699, line: 313, baseType: !958, size: 64, offset: 128)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !959, file: !699, line: 313, baseType: !958, size: 64, offset: 192)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !959, file: !699, line: 315, baseType: !737, size: 192, align: 64, offset: 256)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !959, file: !699, line: 323, baseType: !300, size: 64, offset: 448)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !959, file: !699, line: 327, baseType: !951, size: 64, offset: 512)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !959, file: !699, line: 333, baseType: !969, size: 64, offset: 576)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !689, line: 284, baseType: !970)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !689, line: 284, size: 64, elements: !971)
!971 = !{!972}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !970, file: !689, line: 284, baseType: !973, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !974, line: 19, baseType: !300)
!974 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!975 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !959, file: !699, line: 334, baseType: !300, size: 64, offset: 640)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !959, file: !699, line: 343, baseType: !977, size: 256, offset: 704)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !959, file: !699, line: 340, size: 256, elements: !978)
!978 = !{!979, !980}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !977, file: !699, line: 341, baseType: !737, size: 192, align: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !977, file: !699, line: 342, baseType: !300, size: 64, offset: 192)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !959, file: !699, line: 351, baseType: !195, size: 128, offset: 960)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !959, file: !699, line: 353, baseType: !983, size: 64, offset: 1088)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !699, line: 353, flags: DIFlagFwdDecl)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !959, file: !699, line: 356, baseType: !986, size: 64, offset: 1152)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !988)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !989)
!989 = !{!990, !994, !995, !999, !1003, !1043, !1047, !1051, !1055, !1056, !1057, !1061, !1065}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !988, file: !14, line: 558, baseType: !991, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DISubroutineType(types: !993)
!993 = !{null, !958}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !988, file: !14, line: 559, baseType: !991, size: 64, offset: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !988, file: !14, line: 560, baseType: !996, size: 64, offset: 128)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DISubroutineType(types: !998)
!998 = !{!174, !958, !300}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !988, file: !14, line: 561, baseType: !1000, size: 64, offset: 192)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!174, !958}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !988, file: !14, line: 562, baseType: !1004, size: 64, offset: 256)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!1007, !1008}
!1007 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !699, line: 682, baseType: !7)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1010)
!1010 = !{!1011, !1012, !1013, !1014, !1015, !1016, !1023, !1030, !1036, !1037, !1038, !1040, !1042}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1009, file: !14, line: 509, baseType: !958, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1009, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1009, file: !14, line: 511, baseType: !720, size: 32, offset: 96)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1009, file: !14, line: 512, baseType: !300, size: 64, offset: 128)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1009, file: !14, line: 513, baseType: !300, size: 64, offset: 192)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1009, file: !14, line: 514, baseType: !1017, size: 64, offset: 256)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !689, line: 385, baseType: !1019)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !689, line: 385, size: 64, elements: !1020)
!1020 = !{!1021}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1019, file: !689, line: 385, baseType: !1022, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !974, line: 15, baseType: !300)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1009, file: !14, line: 516, baseType: !1024, size: 64, offset: 320)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !689, line: 359, baseType: !1026)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !689, line: 359, size: 64, elements: !1027)
!1027 = !{!1028}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1026, file: !689, line: 359, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !974, line: 16, baseType: !300)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1009, file: !14, line: 519, baseType: !1031, size: 64, offset: 384)
!1031 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !974, line: 21, baseType: !1032)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !974, line: 21, size: 64, elements: !1033)
!1033 = !{!1034}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1032, file: !974, line: 21, baseType: !1035, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !974, line: 14, baseType: !300)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1009, file: !14, line: 521, baseType: !697, size: 64, offset: 448)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1009, file: !14, line: 522, baseType: !697, size: 64, offset: 512)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1009, file: !14, line: 528, baseType: !1039, size: 64, offset: 576)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1009, file: !14, line: 532, baseType: !1041, size: 64, offset: 640)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1009, file: !14, line: 536, baseType: !945, size: 64, offset: 704)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !988, file: !14, line: 563, baseType: !1044, size: 64, offset: 320)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!1007, !1008, !13}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !988, file: !14, line: 565, baseType: !1048, size: 64, offset: 384)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{null, !1008, !300, !300}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !988, file: !14, line: 567, baseType: !1052, size: 64, offset: 448)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!300, !958}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !988, file: !14, line: 571, baseType: !1004, size: 64, offset: 512)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !988, file: !14, line: 574, baseType: !1004, size: 64, offset: 576)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !988, file: !14, line: 579, baseType: !1058, size: 64, offset: 640)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!174, !958, !300, !184, !174, !174}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !988, file: !14, line: 585, baseType: !1062, size: 64, offset: 704)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!165, !958}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !988, file: !14, line: 615, baseType: !1066, size: 64, offset: 768)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!697, !958, !300}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !959, file: !699, line: 359, baseType: !300, size: 64, offset: 1216)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !959, file: !699, line: 361, baseType: !328, size: 64, offset: 1280)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !959, file: !699, line: 362, baseType: !184, size: 64, offset: 1344)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !959, file: !699, line: 365, baseType: !748, size: 64, offset: 1408)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !959, file: !699, line: 373, baseType: !1074, offset: 1472)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !699, line: 296, elements: !223)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !955, file: !699, line: 391, baseType: !733, size: 64, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !955, file: !699, line: 392, baseType: !397, size: 64, offset: 128)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !955, file: !699, line: 394, baseType: !1078, size: 64, offset: 192)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!300, !328, !300, !300, !300, !300}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !955, file: !699, line: 398, baseType: !300, size: 64, offset: 256)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !955, file: !699, line: 399, baseType: !300, size: 64, offset: 320)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !955, file: !699, line: 405, baseType: !300, size: 64, offset: 384)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !955, file: !699, line: 406, baseType: !300, size: 64, offset: 448)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !955, file: !699, line: 407, baseType: !1086, size: 64, offset: 512)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !689, line: 286, baseType: !1088)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !689, line: 286, size: 64, elements: !1089)
!1089 = !{!1090}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1088, file: !689, line: 286, baseType: !1091, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !974, line: 18, baseType: !300)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !955, file: !699, line: 416, baseType: !724, size: 32, offset: 576)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !955, file: !699, line: 428, baseType: !724, size: 32, offset: 608)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !955, file: !699, line: 437, baseType: !724, size: 32, offset: 640)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !955, file: !699, line: 447, baseType: !724, size: 32, offset: 672)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !955, file: !699, line: 450, baseType: !748, size: 64, offset: 704)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !955, file: !699, line: 452, baseType: !174, size: 32, offset: 768)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !955, file: !699, line: 454, baseType: !209, offset: 800)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !955, file: !699, line: 457, baseType: !744, size: 256, offset: 832)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !955, file: !699, line: 459, baseType: !195, size: 128, offset: 1088)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !955, file: !699, line: 466, baseType: !300, size: 64, offset: 1216)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !955, file: !699, line: 467, baseType: !300, size: 64, offset: 1280)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !955, file: !699, line: 469, baseType: !300, size: 64, offset: 1344)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !955, file: !699, line: 470, baseType: !300, size: 64, offset: 1408)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !955, file: !699, line: 471, baseType: !750, size: 64, offset: 1472)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !955, file: !699, line: 472, baseType: !300, size: 64, offset: 1536)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !955, file: !699, line: 473, baseType: !300, size: 64, offset: 1600)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !955, file: !699, line: 474, baseType: !300, size: 64, offset: 1664)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !955, file: !699, line: 475, baseType: !300, size: 64, offset: 1728)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !955, file: !699, line: 477, baseType: !209, offset: 1792)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !955, file: !699, line: 478, baseType: !300, size: 64, offset: 1792)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !955, file: !699, line: 478, baseType: !300, size: 64, offset: 1856)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !955, file: !699, line: 478, baseType: !300, size: 64, offset: 1920)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !955, file: !699, line: 478, baseType: !300, size: 64, offset: 1984)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !955, file: !699, line: 479, baseType: !300, size: 64, offset: 2048)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !955, file: !699, line: 479, baseType: !300, size: 64, offset: 2112)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !955, file: !699, line: 479, baseType: !300, size: 64, offset: 2176)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !955, file: !699, line: 480, baseType: !300, size: 64, offset: 2240)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !955, file: !699, line: 480, baseType: !300, size: 64, offset: 2304)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !955, file: !699, line: 480, baseType: !300, size: 64, offset: 2368)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !955, file: !699, line: 480, baseType: !300, size: 64, offset: 2432)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !955, file: !699, line: 482, baseType: !1123, size: 2816, offset: 2496)
!1123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 2816, elements: !1124)
!1124 = !{!1125}
!1125 = !DISubrange(count: 44)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !955, file: !699, line: 488, baseType: !1127, size: 256, offset: 5312)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1128, line: 60, size: 256, elements: !1129)
!1128 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1129 = !{!1130}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1127, file: !1128, line: 61, baseType: !1131, size: 256)
!1131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !748, size: 256, elements: !1132)
!1132 = !{!1133}
!1133 = !DISubrange(count: 4)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !955, file: !699, line: 490, baseType: !1135, size: 64, offset: 5568)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !699, line: 490, flags: DIFlagFwdDecl)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !955, file: !699, line: 493, baseType: !1138, size: 896, offset: 5632)
!1138 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1139, line: 53, baseType: !1140)
!1139 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1139, line: 13, size: 896, elements: !1141)
!1141 = !{!1142, !1143, !1144, !1145, !1148, !1149, !1156, !1157, !1177, !1178, !1179}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1140, file: !1139, line: 18, baseType: !397, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1140, file: !1139, line: 28, baseType: !750, size: 64, offset: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1140, file: !1139, line: 31, baseType: !744, size: 256, offset: 128)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1140, file: !1139, line: 32, baseType: !1146, size: 64, offset: 384)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1139, line: 32, flags: DIFlagFwdDecl)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1140, file: !1139, line: 37, baseType: !292, size: 16, offset: 448)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1140, file: !1139, line: 40, baseType: !1150, size: 192, offset: 512)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1151, line: 53, size: 192, elements: !1152)
!1151 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1152 = !{!1153, !1154, !1155}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1150, file: !1151, line: 54, baseType: !748, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1150, file: !1151, line: 55, baseType: !209, offset: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1150, file: !1151, line: 59, baseType: !195, size: 128, offset: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1140, file: !1139, line: 41, baseType: !184, size: 64, offset: 704)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1140, file: !1139, line: 42, baseType: !1158, size: 64, offset: 768)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1160)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1161, line: 13, size: 896, elements: !1162)
!1161 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1162 = !{!1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1160, file: !1161, line: 14, baseType: !184, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1160, file: !1161, line: 15, baseType: !300, size: 64, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1160, file: !1161, line: 17, baseType: !300, size: 64, offset: 128)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1160, file: !1161, line: 17, baseType: !300, size: 64, offset: 192)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1160, file: !1161, line: 19, baseType: !285, size: 64, offset: 256)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1160, file: !1161, line: 21, baseType: !285, size: 64, offset: 320)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1160, file: !1161, line: 22, baseType: !285, size: 64, offset: 384)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1160, file: !1161, line: 23, baseType: !285, size: 64, offset: 448)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1160, file: !1161, line: 24, baseType: !285, size: 64, offset: 512)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1160, file: !1161, line: 25, baseType: !285, size: 64, offset: 576)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1160, file: !1161, line: 26, baseType: !285, size: 64, offset: 640)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1160, file: !1161, line: 27, baseType: !285, size: 64, offset: 704)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1160, file: !1161, line: 28, baseType: !285, size: 64, offset: 768)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1160, file: !1161, line: 29, baseType: !285, size: 64, offset: 832)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1140, file: !1139, line: 44, baseType: !724, size: 32, offset: 832)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1140, file: !1139, line: 50, baseType: !836, size: 16, offset: 864)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1140, file: !1139, line: 51, baseType: !1180, size: 16, offset: 880)
!1180 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !392, line: 18, baseType: !1181)
!1181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !394, line: 23, baseType: !1182)
!1182 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !955, file: !699, line: 495, baseType: !300, size: 64, offset: 6528)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !955, file: !699, line: 497, baseType: !1185, size: 64, offset: 6592)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !699, line: 381, size: 384, elements: !1187)
!1187 = !{!1188, !1189, !2289}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1186, file: !699, line: 382, baseType: !724, size: 32)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1186, file: !699, line: 383, baseType: !1190, size: 128, offset: 64)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !699, line: 376, size: 128, elements: !1191)
!1191 = !{!1192, !2287}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1190, file: !699, line: 377, baseType: !1193, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1195, line: 640, size: 48640, elements: !1196)
!1195 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1196 = !{!1197, !1203, !1205, !1206, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1223, !1241, !1252, !1337, !1338, !1339, !1350, !1351, !1353, !1354, !1355, !1356, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1435, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1473, !1475, !1476, !1477, !1489, !1490, !1491, !1492, !1493, !1494, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1518, !1523, !1707, !1708, !1709, !1710, !1714, !1717, !1720, !1723, !1726, !1730, !1831, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1875, !1876, !1877, !1878, !1879, !1884, !1885, !1886, !1889, !1890, !1893, !1896, !1899, !1902, !1945, !1948, !1949, !2028, !2029, !2032, !2033, !2036, !2037, !2038, !2042, !2043, !2044, !2057, !2058, !2059, !2069, !2074, !2077, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1194, file: !1195, line: 646, baseType: !1198, size: 128)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1199, line: 56, size: 128, elements: !1200)
!1199 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1200 = !{!1201, !1202}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1198, file: !1199, line: 57, baseType: !300, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1198, file: !1199, line: 58, baseType: !391, size: 32, offset: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1194, file: !1195, line: 649, baseType: !1204, size: 64, offset: 128)
!1204 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !285)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1194, file: !1195, line: 657, baseType: !184, size: 64, offset: 192)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1194, file: !1195, line: 658, baseType: !1207, size: 32, offset: 256)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1208, line: 113, baseType: !1209)
!1208 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1208, line: 111, size: 32, elements: !1210)
!1210 = !{!1211}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1209, file: !1208, line: 112, baseType: !724, size: 32)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1194, file: !1195, line: 660, baseType: !7, size: 32, offset: 288)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1194, file: !1195, line: 661, baseType: !7, size: 32, offset: 320)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1194, file: !1195, line: 684, baseType: !174, size: 32, offset: 352)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1194, file: !1195, line: 686, baseType: !174, size: 32, offset: 384)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1194, file: !1195, line: 687, baseType: !174, size: 32, offset: 416)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1194, file: !1195, line: 688, baseType: !174, size: 32, offset: 448)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1194, file: !1195, line: 689, baseType: !7, size: 32, offset: 480)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1194, file: !1195, line: 691, baseType: !1220, size: 64, offset: 512)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1222)
!1222 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1195, line: 691, flags: DIFlagFwdDecl)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1194, file: !1195, line: 692, baseType: !1224, size: 832, offset: 576)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1195, line: 451, size: 832, elements: !1225)
!1225 = !{!1226, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1224, file: !1195, line: 453, baseType: !1227, size: 128)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1195, line: 325, size: 128, elements: !1228)
!1228 = !{!1229, !1230}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1227, file: !1195, line: 326, baseType: !300, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1227, file: !1195, line: 327, baseType: !391, size: 32, offset: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1224, file: !1195, line: 454, baseType: !737, size: 192, align: 64, offset: 128)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1224, file: !1195, line: 455, baseType: !195, size: 128, offset: 320)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1224, file: !1195, line: 456, baseType: !7, size: 32, offset: 448)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1224, file: !1195, line: 458, baseType: !397, size: 64, offset: 512)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1224, file: !1195, line: 459, baseType: !397, size: 64, offset: 576)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1224, file: !1195, line: 460, baseType: !397, size: 64, offset: 640)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1224, file: !1195, line: 461, baseType: !397, size: 64, offset: 704)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1224, file: !1195, line: 463, baseType: !397, size: 64, offset: 768)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1224, file: !1195, line: 465, baseType: !1240, offset: 832)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1195, line: 415, elements: !223)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1194, file: !1195, line: 693, baseType: !1242, size: 384, offset: 1408)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1195, line: 489, size: 384, elements: !1243)
!1243 = !{!1244, !1245, !1246, !1247, !1248, !1249, !1250}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1242, file: !1195, line: 490, baseType: !195, size: 128)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1242, file: !1195, line: 491, baseType: !300, size: 64, offset: 128)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1242, file: !1195, line: 492, baseType: !300, size: 64, offset: 192)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1242, file: !1195, line: 493, baseType: !7, size: 32, offset: 256)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1242, file: !1195, line: 494, baseType: !292, size: 16, offset: 288)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1242, file: !1195, line: 495, baseType: !292, size: 16, offset: 304)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1242, file: !1195, line: 497, baseType: !1251, size: 64, offset: 320)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1194, file: !1195, line: 697, baseType: !1253, size: 1792, offset: 1792)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1195, line: 507, size: 1792, elements: !1254)
!1254 = !{!1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1334, !1335}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1253, file: !1195, line: 508, baseType: !737, size: 192, align: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1253, file: !1195, line: 515, baseType: !397, size: 64, offset: 192)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1253, file: !1195, line: 516, baseType: !397, size: 64, offset: 256)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1253, file: !1195, line: 517, baseType: !397, size: 64, offset: 320)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1253, file: !1195, line: 518, baseType: !397, size: 64, offset: 384)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1253, file: !1195, line: 519, baseType: !397, size: 64, offset: 448)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1253, file: !1195, line: 526, baseType: !754, size: 64, offset: 512)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1253, file: !1195, line: 527, baseType: !397, size: 64, offset: 576)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1253, file: !1195, line: 528, baseType: !7, size: 32, offset: 640)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1253, file: !1195, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1253, file: !1195, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1253, file: !1195, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1253, file: !1195, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1253, file: !1195, line: 563, baseType: !1269, size: 512, offset: 704)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1270)
!1270 = !{!1271, !1279, !1280, !1285, !1328, !1331, !1332, !1333}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1269, file: !20, line: 119, baseType: !1272, size: 256)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1273, line: 9, size: 256, elements: !1274)
!1273 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1274 = !{!1275, !1276}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1272, file: !1273, line: 10, baseType: !737, size: 192, align: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1272, file: !1273, line: 11, baseType: !1277, size: 64, offset: 192)
!1277 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1278, line: 29, baseType: !754)
!1278 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1269, file: !20, line: 120, baseType: !1277, size: 64, offset: 256)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1269, file: !20, line: 121, baseType: !1281, size: 64, offset: 320)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!19, !1284}
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1269, file: !20, line: 122, baseType: !1286, size: 64, offset: 384)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1288)
!1288 = !{!1289, !1309, !1310, !1313, !1318, !1319, !1323, !1327}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1287, file: !20, line: 160, baseType: !1290, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1292)
!1292 = !{!1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1291, file: !20, line: 215, baseType: !757)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1291, file: !20, line: 216, baseType: !7, size: 32)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1291, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1291, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1291, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1291, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1291, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1291, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1291, file: !20, line: 233, baseType: !1277, size: 64, offset: 128)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1291, file: !20, line: 234, baseType: !1284, size: 64, offset: 192)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1291, file: !20, line: 235, baseType: !1277, size: 64, offset: 256)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1291, file: !20, line: 236, baseType: !1284, size: 64, offset: 320)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1291, file: !20, line: 237, baseType: !1306, size: 4096, offset: 512)
!1306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1287, size: 4096, elements: !1307)
!1307 = !{!1308}
!1308 = !DISubrange(count: 8)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1287, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1287, file: !20, line: 162, baseType: !1311, size: 32, offset: 96)
!1311 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !196, line: 27, baseType: !1312)
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !283, line: 96, baseType: !174)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1287, file: !20, line: 163, baseType: !1314, size: 32, offset: 128)
!1314 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !364, line: 276, baseType: !1315)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !364, line: 276, size: 32, elements: !1316)
!1316 = !{!1317}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1315, file: !364, line: 276, baseType: !368, size: 32)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1287, file: !20, line: 164, baseType: !1284, size: 64, offset: 192)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1287, file: !20, line: 165, baseType: !1320, size: 128, offset: 256)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1273, line: 14, size: 128, elements: !1321)
!1321 = !{!1322}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1320, file: !1273, line: 15, baseType: !729, size: 128)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1287, file: !20, line: 166, baseType: !1324, size: 64, offset: 384)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!1277}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1287, file: !20, line: 167, baseType: !1277, size: 64, offset: 448)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1269, file: !20, line: 123, baseType: !1329, size: 8, offset: 448)
!1329 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !392, line: 17, baseType: !1330)
!1330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !394, line: 21, baseType: !403)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1269, file: !20, line: 124, baseType: !1329, size: 8, offset: 456)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1269, file: !20, line: 125, baseType: !1329, size: 8, offset: 464)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1269, file: !20, line: 126, baseType: !1329, size: 8, offset: 472)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1253, file: !1195, line: 572, baseType: !1269, size: 512, offset: 1216)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1253, file: !1195, line: 580, baseType: !1336, size: 64, offset: 1728)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1194, file: !1195, line: 721, baseType: !7, size: 32, offset: 3584)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1194, file: !1195, line: 722, baseType: !174, size: 32, offset: 3616)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1194, file: !1195, line: 723, baseType: !1340, size: 64, offset: 3648)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1342)
!1342 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1343, line: 17, baseType: !1344)
!1343 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1343, line: 17, size: 64, elements: !1345)
!1345 = !{!1346}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1344, file: !1343, line: 17, baseType: !1347, size: 64)
!1347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 64, elements: !1348)
!1348 = !{!1349}
!1349 = !DISubrange(count: 1)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1194, file: !1195, line: 724, baseType: !1342, size: 64, offset: 3712)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1194, file: !1195, line: 749, baseType: !1352, offset: 3776)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1195, line: 290, elements: !223)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1194, file: !1195, line: 751, baseType: !195, size: 128, offset: 3776)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1194, file: !1195, line: 757, baseType: !951, size: 64, offset: 3904)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1194, file: !1195, line: 758, baseType: !951, size: 64, offset: 3968)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1194, file: !1195, line: 761, baseType: !1357, size: 320, offset: 4032)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1128, line: 34, size: 320, elements: !1358)
!1358 = !{!1359, !1360}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1357, file: !1128, line: 35, baseType: !397, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1357, file: !1128, line: 36, baseType: !1361, size: 256, offset: 64)
!1361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !958, size: 256, elements: !1132)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1194, file: !1195, line: 766, baseType: !174, size: 32, offset: 4352)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1194, file: !1195, line: 767, baseType: !174, size: 32, offset: 4384)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1194, file: !1195, line: 768, baseType: !174, size: 32, offset: 4416)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1194, file: !1195, line: 770, baseType: !174, size: 32, offset: 4448)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1194, file: !1195, line: 772, baseType: !300, size: 64, offset: 4480)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1194, file: !1195, line: 775, baseType: !7, size: 32, offset: 4544)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1194, file: !1195, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1194, file: !1195, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1194, file: !1195, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1194, file: !1195, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1194, file: !1195, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1194, file: !1195, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1194, file: !1195, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1194, file: !1195, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1194, file: !1195, line: 831, baseType: !300, size: 64, offset: 4672)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1194, file: !1195, line: 833, baseType: !1378, size: 384, offset: 4736)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1379)
!1379 = !{!1380, !1385}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1378, file: !25, line: 26, baseType: !1381, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!285, !1384}
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, scope: !1378, file: !25, line: 27, baseType: !1386, size: 320, offset: 64)
!1386 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1378, file: !25, line: 27, size: 320, elements: !1387)
!1387 = !{!1388, !1398, !1425}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1386, file: !25, line: 36, baseType: !1389, size: 320)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1386, file: !25, line: 29, size: 320, elements: !1390)
!1390 = !{!1391, !1393, !1394, !1395, !1396, !1397}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1389, file: !25, line: 30, baseType: !1392, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1389, file: !25, line: 31, baseType: !391, size: 32, offset: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1389, file: !25, line: 32, baseType: !391, size: 32, offset: 96)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1389, file: !25, line: 33, baseType: !391, size: 32, offset: 128)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1389, file: !25, line: 34, baseType: !397, size: 64, offset: 192)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1389, file: !25, line: 35, baseType: !1392, size: 64, offset: 256)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1386, file: !25, line: 46, baseType: !1399, size: 192)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1386, file: !25, line: 38, size: 192, elements: !1400)
!1400 = !{!1401, !1402, !1403, !1424}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1399, file: !25, line: 39, baseType: !1311, size: 32)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1399, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1403 = !DIDerivedType(tag: DW_TAG_member, scope: !1399, file: !25, line: 41, baseType: !1404, size: 64, offset: 64)
!1404 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1399, file: !25, line: 41, size: 64, elements: !1405)
!1405 = !{!1406, !1414}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1404, file: !25, line: 42, baseType: !1407, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1409, line: 7, size: 128, elements: !1410)
!1409 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1410 = !{!1411, !1413}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1408, file: !1409, line: 8, baseType: !1412, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !283, line: 93, baseType: !509)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1408, file: !1409, line: 9, baseType: !509, size: 64, offset: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1404, file: !25, line: 43, baseType: !1415, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1417, line: 7, size: 64, elements: !1418)
!1417 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1418 = !{!1419, !1423}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1416, file: !1417, line: 8, baseType: !1420, size: 32)
!1420 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1417, line: 5, baseType: !1421)
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !392, line: 20, baseType: !1422)
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !394, line: 26, baseType: !174)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1416, file: !1417, line: 9, baseType: !1421, size: 32, offset: 32)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1399, file: !25, line: 45, baseType: !397, size: 64, offset: 128)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1386, file: !25, line: 54, baseType: !1426, size: 256)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1386, file: !25, line: 48, size: 256, elements: !1427)
!1427 = !{!1428, !1431, !1432, !1433, !1434}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1426, file: !25, line: 49, baseType: !1429, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1426, file: !25, line: 50, baseType: !174, size: 32, offset: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1426, file: !25, line: 51, baseType: !174, size: 32, offset: 96)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1426, file: !25, line: 52, baseType: !300, size: 64, offset: 128)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1426, file: !25, line: 53, baseType: !300, size: 64, offset: 192)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1194, file: !1195, line: 835, baseType: !1436, size: 32, offset: 5120)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !196, line: 22, baseType: !1437)
!1437 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !283, line: 28, baseType: !174)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1194, file: !1195, line: 836, baseType: !1436, size: 32, offset: 5152)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1194, file: !1195, line: 840, baseType: !300, size: 64, offset: 5184)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1194, file: !1195, line: 849, baseType: !1193, size: 64, offset: 5248)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1194, file: !1195, line: 852, baseType: !1193, size: 64, offset: 5312)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1194, file: !1195, line: 857, baseType: !195, size: 128, offset: 5376)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1194, file: !1195, line: 858, baseType: !195, size: 128, offset: 5504)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1194, file: !1195, line: 859, baseType: !1193, size: 64, offset: 5632)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1194, file: !1195, line: 867, baseType: !195, size: 128, offset: 5696)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1194, file: !1195, line: 868, baseType: !195, size: 128, offset: 5824)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1194, file: !1195, line: 871, baseType: !1448, size: 64, offset: 5952)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1450)
!1450 = !{!1451, !1452, !1453, !1454, !1456, !1457, !1464, !1465}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1449, file: !53, line: 61, baseType: !1207, size: 32)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1449, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1449, file: !53, line: 63, baseType: !209, offset: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1449, file: !53, line: 65, baseType: !1455, size: 256, offset: 64)
!1455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !611, size: 256, elements: !1132)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1449, file: !53, line: 66, baseType: !611, size: 64, offset: 320)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1449, file: !53, line: 68, baseType: !1458, size: 128, offset: 384)
!1458 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1459, line: 40, baseType: !1460)
!1459 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1459, line: 36, size: 128, elements: !1461)
!1461 = !{!1462, !1463}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1460, file: !1459, line: 37, baseType: !209)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1460, file: !1459, line: 38, baseType: !195, size: 128)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1449, file: !53, line: 69, baseType: !341, size: 128, align: 64, offset: 512)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1449, file: !53, line: 70, baseType: !1466, size: 128, offset: 640)
!1466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1467, size: 128, elements: !1348)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1468)
!1468 = !{!1469, !1470}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1467, file: !53, line: 55, baseType: !174, size: 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1467, file: !53, line: 56, baseType: !1471, size: 64, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1194, file: !1195, line: 872, baseType: !1474, size: 512, offset: 6016)
!1474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !615, size: 512, elements: !1132)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1194, file: !1195, line: 873, baseType: !195, size: 128, offset: 6528)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1194, file: !1195, line: 874, baseType: !195, size: 128, offset: 6656)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1194, file: !1195, line: 876, baseType: !1478, size: 64, offset: 6784)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1480, line: 26, size: 192, elements: !1481)
!1480 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1481 = !{!1482, !1483}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1479, file: !1480, line: 27, baseType: !7, size: 32)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1479, file: !1480, line: 28, baseType: !1484, size: 128, offset: 64)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1485, line: 43, size: 128, elements: !1486)
!1485 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1486 = !{!1487, !1488}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1484, file: !1485, line: 44, baseType: !757)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1484, file: !1485, line: 45, baseType: !195, size: 128)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1194, file: !1195, line: 879, baseType: !681, size: 64, offset: 6848)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1194, file: !1195, line: 882, baseType: !681, size: 64, offset: 6912)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1194, file: !1195, line: 884, baseType: !397, size: 64, offset: 6976)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1194, file: !1195, line: 885, baseType: !397, size: 64, offset: 7040)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1194, file: !1195, line: 890, baseType: !397, size: 64, offset: 7104)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1194, file: !1195, line: 891, baseType: !1495, size: 128, offset: 7168)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1195, line: 242, size: 128, elements: !1496)
!1496 = !{!1497, !1498, !1499}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1495, file: !1195, line: 244, baseType: !397, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1495, file: !1195, line: 245, baseType: !397, size: 64, offset: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1495, file: !1195, line: 246, baseType: !757, offset: 128)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1194, file: !1195, line: 900, baseType: !300, size: 64, offset: 7296)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1194, file: !1195, line: 901, baseType: !300, size: 64, offset: 7360)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1194, file: !1195, line: 904, baseType: !397, size: 64, offset: 7424)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1194, file: !1195, line: 907, baseType: !397, size: 64, offset: 7488)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1194, file: !1195, line: 910, baseType: !300, size: 64, offset: 7552)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1194, file: !1195, line: 911, baseType: !300, size: 64, offset: 7616)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1194, file: !1195, line: 914, baseType: !1507, size: 640, offset: 7680)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1508, line: 123, size: 640, elements: !1509)
!1508 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1509 = !{!1510, !1516, !1517}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1507, file: !1508, line: 124, baseType: !1511, size: 576)
!1511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1512, size: 576, elements: !251)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1508, line: 108, size: 192, elements: !1513)
!1513 = !{!1514, !1515}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1512, file: !1508, line: 109, baseType: !397, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1512, file: !1508, line: 110, baseType: !1320, size: 128, offset: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1507, file: !1508, line: 125, baseType: !7, size: 32, offset: 576)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1507, file: !1508, line: 126, baseType: !7, size: 32, offset: 608)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1194, file: !1195, line: 917, baseType: !1519, size: 192, offset: 8320)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1508, line: 134, size: 192, elements: !1520)
!1520 = !{!1521, !1522}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1519, file: !1508, line: 135, baseType: !341, size: 128, align: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1519, file: !1508, line: 136, baseType: !7, size: 32, offset: 128)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1194, file: !1195, line: 923, baseType: !1524, size: 64, offset: 8512)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1526)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1527, line: 111, size: 1280, elements: !1528)
!1527 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1528 = !{!1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1548, !1549, !1550, !1551, !1552, !1553, !1660, !1661, !1662, !1663, !1689, !1692, !1702}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1526, file: !1527, line: 112, baseType: !724, size: 32)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1526, file: !1527, line: 120, baseType: !411, size: 32, offset: 32)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1526, file: !1527, line: 121, baseType: !419, size: 32, offset: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1526, file: !1527, line: 122, baseType: !411, size: 32, offset: 96)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1526, file: !1527, line: 123, baseType: !419, size: 32, offset: 128)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1526, file: !1527, line: 124, baseType: !411, size: 32, offset: 160)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1526, file: !1527, line: 125, baseType: !419, size: 32, offset: 192)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1526, file: !1527, line: 126, baseType: !411, size: 32, offset: 224)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1526, file: !1527, line: 127, baseType: !419, size: 32, offset: 256)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1526, file: !1527, line: 128, baseType: !7, size: 32, offset: 288)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1526, file: !1527, line: 129, baseType: !1540, size: 64, offset: 320)
!1540 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1541, line: 26, baseType: !1542)
!1541 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1541, line: 24, size: 64, elements: !1543)
!1543 = !{!1544}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1542, file: !1541, line: 25, baseType: !1545, size: 64)
!1545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 64, elements: !1546)
!1546 = !{!1547}
!1547 = !DISubrange(count: 2)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1526, file: !1527, line: 130, baseType: !1540, size: 64, offset: 384)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1526, file: !1527, line: 131, baseType: !1540, size: 64, offset: 448)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1526, file: !1527, line: 132, baseType: !1540, size: 64, offset: 512)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1526, file: !1527, line: 133, baseType: !1540, size: 64, offset: 576)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1526, file: !1527, line: 135, baseType: !403, size: 8, offset: 640)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1526, file: !1527, line: 137, baseType: !1554, size: 64, offset: 704)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1556, line: 189, size: 1664, elements: !1557)
!1556 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1557 = !{!1558, !1559, !1562, !1567, !1568, !1571, !1572, !1577, !1578, !1579, !1580, !1582, !1583, !1584, !1585, !1586, !1624, !1645}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1555, file: !1556, line: 190, baseType: !1207, size: 32)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1555, file: !1556, line: 191, baseType: !1560, size: 32, offset: 32)
!1560 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1556, line: 28, baseType: !1561)
!1561 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !196, line: 98, baseType: !1421)
!1562 = !DIDerivedType(tag: DW_TAG_member, scope: !1555, file: !1556, line: 192, baseType: !1563, size: 192, offset: 64)
!1563 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1555, file: !1556, line: 192, size: 192, elements: !1564)
!1564 = !{!1565, !1566}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1563, file: !1556, line: 193, baseType: !195, size: 128)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1563, file: !1556, line: 194, baseType: !737, size: 192, align: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1555, file: !1556, line: 199, baseType: !744, size: 256, offset: 256)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1555, file: !1556, line: 200, baseType: !1569, size: 64, offset: 512)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1556, line: 200, flags: DIFlagFwdDecl)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1555, file: !1556, line: 201, baseType: !184, size: 64, offset: 576)
!1572 = !DIDerivedType(tag: DW_TAG_member, scope: !1555, file: !1556, line: 202, baseType: !1573, size: 64, offset: 640)
!1573 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1555, file: !1556, line: 202, size: 64, elements: !1574)
!1574 = !{!1575, !1576}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1573, file: !1556, line: 203, baseType: !515, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1573, file: !1556, line: 204, baseType: !515, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1555, file: !1556, line: 206, baseType: !515, size: 64, offset: 704)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1555, file: !1556, line: 207, baseType: !411, size: 32, offset: 768)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1555, file: !1556, line: 208, baseType: !419, size: 32, offset: 800)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1555, file: !1556, line: 209, baseType: !1581, size: 32, offset: 832)
!1581 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1556, line: 31, baseType: !535)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1555, file: !1556, line: 210, baseType: !292, size: 16, offset: 864)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1555, file: !1556, line: 211, baseType: !292, size: 16, offset: 880)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1555, file: !1556, line: 215, baseType: !1182, size: 16, offset: 896)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1555, file: !1556, line: 222, baseType: !300, size: 64, offset: 960)
!1586 = !DIDerivedType(tag: DW_TAG_member, scope: !1555, file: !1556, line: 239, baseType: !1587, size: 320, offset: 1024)
!1587 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1555, file: !1556, line: 239, size: 320, elements: !1588)
!1588 = !{!1589, !1616}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1587, file: !1556, line: 240, baseType: !1590, size: 320)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1556, line: 108, size: 320, elements: !1591)
!1591 = !{!1592, !1593, !1605, !1608, !1615}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1590, file: !1556, line: 110, baseType: !300, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, scope: !1590, file: !1556, line: 111, baseType: !1594, size: 64, offset: 64)
!1594 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1590, file: !1556, line: 111, size: 64, elements: !1595)
!1595 = !{!1596, !1604}
!1596 = !DIDerivedType(tag: DW_TAG_member, scope: !1594, file: !1556, line: 112, baseType: !1597, size: 64)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1594, file: !1556, line: 112, size: 64, elements: !1598)
!1598 = !{!1599, !1600}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1597, file: !1556, line: 114, baseType: !836, size: 16)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1597, file: !1556, line: 115, baseType: !1601, size: 48, offset: 16)
!1601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 48, elements: !1602)
!1602 = !{!1603}
!1603 = !DISubrange(count: 6)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1594, file: !1556, line: 121, baseType: !300, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1590, file: !1556, line: 123, baseType: !1606, size: 64, offset: 128)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1556, line: 96, flags: DIFlagFwdDecl)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1590, file: !1556, line: 124, baseType: !1609, size: 64, offset: 192)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1556, line: 102, size: 192, elements: !1611)
!1611 = !{!1612, !1613, !1614}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1610, file: !1556, line: 103, baseType: !341, size: 128, align: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1610, file: !1556, line: 104, baseType: !1207, size: 32, offset: 128)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1610, file: !1556, line: 105, baseType: !466, size: 8, offset: 160)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1590, file: !1556, line: 125, baseType: !165, size: 64, offset: 256)
!1616 = !DIDerivedType(tag: DW_TAG_member, scope: !1587, file: !1556, line: 241, baseType: !1617, size: 320)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1587, file: !1556, line: 241, size: 320, elements: !1618)
!1618 = !{!1619, !1620, !1621, !1622, !1623}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1617, file: !1556, line: 242, baseType: !300, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1617, file: !1556, line: 243, baseType: !300, size: 64, offset: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1617, file: !1556, line: 244, baseType: !1606, size: 64, offset: 128)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1617, file: !1556, line: 245, baseType: !1609, size: 64, offset: 192)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1617, file: !1556, line: 246, baseType: !250, size: 64, offset: 256)
!1624 = !DIDerivedType(tag: DW_TAG_member, scope: !1555, file: !1556, line: 254, baseType: !1625, size: 256, offset: 1344)
!1625 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1555, file: !1556, line: 254, size: 256, elements: !1626)
!1626 = !{!1627, !1633}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1625, file: !1556, line: 255, baseType: !1628, size: 256)
!1628 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1556, line: 128, size: 256, elements: !1629)
!1629 = !{!1630, !1631}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1628, file: !1556, line: 129, baseType: !184, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1628, file: !1556, line: 130, baseType: !1632, size: 256)
!1632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 256, elements: !1132)
!1633 = !DIDerivedType(tag: DW_TAG_member, scope: !1625, file: !1556, line: 256, baseType: !1634, size: 256)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1625, file: !1556, line: 256, size: 256, elements: !1635)
!1635 = !{!1636, !1637}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1634, file: !1556, line: 258, baseType: !195, size: 128)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1634, file: !1556, line: 259, baseType: !1638, size: 128, offset: 128)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1639, line: 22, size: 128, elements: !1640)
!1639 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1640 = !{!1641, !1644}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1638, file: !1639, line: 23, baseType: !1642, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1639, line: 23, flags: DIFlagFwdDecl)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1638, file: !1639, line: 24, baseType: !300, size: 64, offset: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1555, file: !1556, line: 274, baseType: !1646, size: 64, offset: 1600)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1556, line: 170, size: 192, elements: !1648)
!1648 = !{!1649, !1658, !1659}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1647, file: !1556, line: 171, baseType: !1650, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1556, line: 165, baseType: !1651)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!174, !1554, !1654, !1656, !1554}
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1607)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1628)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1647, file: !1556, line: 172, baseType: !1554, size: 64, offset: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1647, file: !1556, line: 173, baseType: !1606, size: 64, offset: 128)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1526, file: !1527, line: 138, baseType: !1554, size: 64, offset: 768)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1526, file: !1527, line: 139, baseType: !1554, size: 64, offset: 832)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1526, file: !1527, line: 140, baseType: !1554, size: 64, offset: 896)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1526, file: !1527, line: 145, baseType: !1664, size: 64, offset: 960)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1666, line: 13, size: 896, elements: !1667)
!1666 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1667 = !{!1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1665, file: !1666, line: 14, baseType: !1207, size: 32)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1665, file: !1666, line: 15, baseType: !724, size: 32, offset: 32)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1665, file: !1666, line: 16, baseType: !724, size: 32, offset: 64)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1665, file: !1666, line: 21, baseType: !748, size: 64, offset: 128)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1665, file: !1666, line: 27, baseType: !300, size: 64, offset: 192)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1665, file: !1666, line: 28, baseType: !300, size: 64, offset: 256)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1665, file: !1666, line: 29, baseType: !748, size: 64, offset: 320)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1665, file: !1666, line: 32, baseType: !615, size: 128, offset: 384)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1665, file: !1666, line: 33, baseType: !411, size: 32, offset: 512)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1665, file: !1666, line: 37, baseType: !748, size: 64, offset: 576)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1665, file: !1666, line: 44, baseType: !1679, size: 256, offset: 640)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1680, line: 15, size: 256, elements: !1681)
!1680 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1681 = !{!1682, !1683, !1684, !1685, !1686, !1687, !1688}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1679, file: !1680, line: 16, baseType: !757)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1679, file: !1680, line: 18, baseType: !174, size: 32)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1679, file: !1680, line: 19, baseType: !174, size: 32, offset: 32)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1679, file: !1680, line: 20, baseType: !174, size: 32, offset: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1679, file: !1680, line: 21, baseType: !174, size: 32, offset: 96)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1679, file: !1680, line: 22, baseType: !300, size: 64, offset: 128)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1679, file: !1680, line: 23, baseType: !300, size: 64, offset: 192)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1526, file: !1527, line: 146, baseType: !1690, size: 64, offset: 1024)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !412, line: 18, flags: DIFlagFwdDecl)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1526, file: !1527, line: 147, baseType: !1693, size: 64, offset: 1088)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1527, line: 25, size: 64, elements: !1695)
!1695 = !{!1696, !1697, !1698}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1694, file: !1527, line: 26, baseType: !724, size: 32)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1694, file: !1527, line: 27, baseType: !174, size: 32, offset: 32)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1694, file: !1527, line: 28, baseType: !1699, offset: 64)
!1699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, elements: !1700)
!1700 = !{!1701}
!1701 = !DISubrange(count: 0)
!1702 = !DIDerivedType(tag: DW_TAG_member, scope: !1526, file: !1527, line: 149, baseType: !1703, size: 128, offset: 1152)
!1703 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1526, file: !1527, line: 149, size: 128, elements: !1704)
!1704 = !{!1705, !1706}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1703, file: !1527, line: 150, baseType: !174, size: 32)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1703, file: !1527, line: 151, baseType: !341, size: 128, align: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1194, file: !1195, line: 926, baseType: !1524, size: 64, offset: 8576)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1194, file: !1195, line: 929, baseType: !1524, size: 64, offset: 8640)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1194, file: !1195, line: 933, baseType: !1554, size: 64, offset: 8704)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1194, file: !1195, line: 943, baseType: !1711, size: 128, offset: 8768)
!1711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 128, elements: !1712)
!1712 = !{!1713}
!1713 = !DISubrange(count: 16)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1194, file: !1195, line: 945, baseType: !1715, size: 64, offset: 8896)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1195, line: 49, flags: DIFlagFwdDecl)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1194, file: !1195, line: 956, baseType: !1718, size: 64, offset: 8960)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1195, line: 45, flags: DIFlagFwdDecl)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1194, file: !1195, line: 959, baseType: !1721, size: 64, offset: 9024)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1195, line: 959, flags: DIFlagFwdDecl)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1194, file: !1195, line: 962, baseType: !1724, size: 64, offset: 9088)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1195, line: 66, flags: DIFlagFwdDecl)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1194, file: !1195, line: 966, baseType: !1727, size: 64, offset: 9152)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1729, line: 35, flags: DIFlagFwdDecl)
!1729 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1194, file: !1195, line: 969, baseType: !1731, size: 64, offset: 9216)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1733, line: 82, size: 7296, elements: !1734)
!1733 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1734 = !{!1735, !1736, !1737, !1738, !1739, !1740, !1741, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1770, !1779, !1780, !1782, !1783, !1784, !1787, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1817, !1818, !1825, !1826, !1827, !1828, !1829, !1830}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1732, file: !1733, line: 83, baseType: !1207, size: 32)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1732, file: !1733, line: 84, baseType: !724, size: 32, offset: 32)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1732, file: !1733, line: 85, baseType: !174, size: 32, offset: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1732, file: !1733, line: 86, baseType: !195, size: 128, offset: 128)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1732, file: !1733, line: 88, baseType: !1458, size: 128, offset: 256)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1732, file: !1733, line: 91, baseType: !1193, size: 64, offset: 384)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1732, file: !1733, line: 94, baseType: !1742, size: 192, offset: 448)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1743, line: 30, size: 192, elements: !1744)
!1743 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1744 = !{!1745, !1746}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1742, file: !1743, line: 31, baseType: !195, size: 128)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1742, file: !1743, line: 32, baseType: !1747, size: 64, offset: 128)
!1747 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1748, line: 25, baseType: !1749)
!1748 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1748, line: 23, size: 64, elements: !1750)
!1750 = !{!1751}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1749, file: !1748, line: 24, baseType: !1347, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1732, file: !1733, line: 97, baseType: !611, size: 64, offset: 640)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1732, file: !1733, line: 100, baseType: !174, size: 32, offset: 704)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1732, file: !1733, line: 106, baseType: !174, size: 32, offset: 736)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1732, file: !1733, line: 107, baseType: !1193, size: 64, offset: 768)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1732, file: !1733, line: 110, baseType: !174, size: 32, offset: 832)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1732, file: !1733, line: 111, baseType: !7, size: 32, offset: 864)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1732, file: !1733, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1732, file: !1733, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1732, file: !1733, line: 128, baseType: !174, size: 32, offset: 928)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1732, file: !1733, line: 129, baseType: !195, size: 128, offset: 960)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1732, file: !1733, line: 132, baseType: !1269, size: 512, offset: 1088)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1732, file: !1733, line: 133, baseType: !1277, size: 64, offset: 1600)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1732, file: !1733, line: 140, baseType: !1765, size: 256, offset: 1664)
!1765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1766, size: 256, elements: !1546)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1733, line: 38, size: 128, elements: !1767)
!1767 = !{!1768, !1769}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1766, file: !1733, line: 39, baseType: !397, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1766, file: !1733, line: 40, baseType: !397, size: 64, offset: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1732, file: !1733, line: 146, baseType: !1771, size: 192, offset: 1920)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1733, line: 66, size: 192, elements: !1772)
!1772 = !{!1773}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1771, file: !1733, line: 67, baseType: !1774, size: 192)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1733, line: 47, size: 192, elements: !1775)
!1775 = !{!1776, !1777, !1778}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1774, file: !1733, line: 48, baseType: !750, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1774, file: !1733, line: 49, baseType: !750, size: 64, offset: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1774, file: !1733, line: 50, baseType: !750, size: 64, offset: 128)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1732, file: !1733, line: 150, baseType: !1507, size: 640, offset: 2112)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1732, file: !1733, line: 153, baseType: !1781, size: 256, offset: 2752)
!1781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1448, size: 256, elements: !1132)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1732, file: !1733, line: 159, baseType: !1448, size: 64, offset: 3008)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1732, file: !1733, line: 162, baseType: !174, size: 32, offset: 3072)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1732, file: !1733, line: 164, baseType: !1785, size: 64, offset: 3136)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1733, line: 164, flags: DIFlagFwdDecl)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1732, file: !1733, line: 175, baseType: !1788, size: 32, offset: 3200)
!1788 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !364, line: 805, baseType: !1789)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !364, line: 798, size: 32, elements: !1790)
!1790 = !{!1791, !1792}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1789, file: !364, line: 803, baseType: !363, size: 32)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1789, file: !364, line: 804, baseType: !209, offset: 32)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1732, file: !1733, line: 176, baseType: !397, size: 64, offset: 3264)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1732, file: !1733, line: 176, baseType: !397, size: 64, offset: 3328)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1732, file: !1733, line: 176, baseType: !397, size: 64, offset: 3392)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1732, file: !1733, line: 176, baseType: !397, size: 64, offset: 3456)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1732, file: !1733, line: 177, baseType: !397, size: 64, offset: 3520)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1732, file: !1733, line: 178, baseType: !397, size: 64, offset: 3584)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1732, file: !1733, line: 179, baseType: !1495, size: 128, offset: 3648)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1732, file: !1733, line: 180, baseType: !300, size: 64, offset: 3776)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1732, file: !1733, line: 180, baseType: !300, size: 64, offset: 3840)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1732, file: !1733, line: 180, baseType: !300, size: 64, offset: 3904)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1732, file: !1733, line: 180, baseType: !300, size: 64, offset: 3968)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1732, file: !1733, line: 181, baseType: !300, size: 64, offset: 4032)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1732, file: !1733, line: 181, baseType: !300, size: 64, offset: 4096)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1732, file: !1733, line: 181, baseType: !300, size: 64, offset: 4160)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1732, file: !1733, line: 181, baseType: !300, size: 64, offset: 4224)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1732, file: !1733, line: 182, baseType: !300, size: 64, offset: 4288)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1732, file: !1733, line: 182, baseType: !300, size: 64, offset: 4352)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1732, file: !1733, line: 182, baseType: !300, size: 64, offset: 4416)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1732, file: !1733, line: 182, baseType: !300, size: 64, offset: 4480)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1732, file: !1733, line: 183, baseType: !300, size: 64, offset: 4544)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1732, file: !1733, line: 183, baseType: !300, size: 64, offset: 4608)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1732, file: !1733, line: 184, baseType: !1815, offset: 4672)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1816, line: 12, elements: !223)
!1816 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1732, file: !1733, line: 192, baseType: !399, size: 64, offset: 4672)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1732, file: !1733, line: 203, baseType: !1819, size: 2048, offset: 4736)
!1819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1820, size: 2048, elements: !1712)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1821, line: 43, size: 128, elements: !1822)
!1821 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1822 = !{!1823, !1824}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1820, file: !1821, line: 44, baseType: !299, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1820, file: !1821, line: 45, baseType: !299, size: 64, offset: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1732, file: !1733, line: 220, baseType: !466, size: 8, offset: 6784)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1732, file: !1733, line: 221, baseType: !1182, size: 16, offset: 6800)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1732, file: !1733, line: 222, baseType: !1182, size: 16, offset: 6816)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1732, file: !1733, line: 224, baseType: !951, size: 64, offset: 6848)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1732, file: !1733, line: 227, baseType: !1150, size: 192, offset: 6912)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1732, file: !1733, line: 233, baseType: !1150, size: 192, offset: 7104)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1194, file: !1195, line: 970, baseType: !1832, size: 64, offset: 9280)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1733, line: 20, size: 16576, elements: !1834)
!1834 = !{!1835, !1836, !1837, !1838}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1833, file: !1733, line: 21, baseType: !209)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1833, file: !1733, line: 22, baseType: !1207, size: 32)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1833, file: !1733, line: 23, baseType: !1458, size: 128, offset: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1833, file: !1733, line: 24, baseType: !1839, size: 16384, offset: 192)
!1839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1840, size: 16384, elements: !255)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1743, line: 49, size: 256, elements: !1841)
!1841 = !{!1842}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1840, file: !1743, line: 50, baseType: !1843, size: 256)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1743, line: 35, size: 256, elements: !1844)
!1844 = !{!1845, !1852, !1853, !1857}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1843, file: !1743, line: 37, baseType: !1846, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1847, line: 19, baseType: !1848)
!1847 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1847, line: 18, baseType: !1850)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{null, !174}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1843, file: !1743, line: 38, baseType: !300, size: 64, offset: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1843, file: !1743, line: 44, baseType: !1854, size: 64, offset: 128)
!1854 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1847, line: 22, baseType: !1855)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1847, line: 21, baseType: !133)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1843, file: !1743, line: 46, baseType: !1747, size: 64, offset: 192)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1194, file: !1195, line: 971, baseType: !1747, size: 64, offset: 9344)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1194, file: !1195, line: 972, baseType: !1747, size: 64, offset: 9408)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1194, file: !1195, line: 974, baseType: !1747, size: 64, offset: 9472)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1194, file: !1195, line: 975, baseType: !1742, size: 192, offset: 9536)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1194, file: !1195, line: 976, baseType: !300, size: 64, offset: 9728)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1194, file: !1195, line: 977, baseType: !297, size: 64, offset: 9792)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1194, file: !1195, line: 978, baseType: !7, size: 32, offset: 9856)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1194, file: !1195, line: 980, baseType: !344, size: 64, offset: 9920)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1194, file: !1195, line: 989, baseType: !1867, size: 128, offset: 9984)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1868, line: 35, size: 128, elements: !1869)
!1868 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1869 = !{!1870, !1871, !1872}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1867, file: !1868, line: 36, baseType: !174, size: 32)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1867, file: !1868, line: 37, baseType: !724, size: 32, offset: 32)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1867, file: !1868, line: 38, baseType: !1873, size: 64, offset: 64)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1868, line: 23, flags: DIFlagFwdDecl)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1194, file: !1195, line: 992, baseType: !397, size: 64, offset: 10112)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1194, file: !1195, line: 993, baseType: !397, size: 64, offset: 10176)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1194, file: !1195, line: 996, baseType: !209, offset: 10240)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1194, file: !1195, line: 999, baseType: !757, offset: 10240)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1194, file: !1195, line: 1001, baseType: !1880, size: 64, offset: 10240)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1195, line: 636, size: 64, elements: !1881)
!1881 = !{!1882}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1880, file: !1195, line: 637, baseType: !1883, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1194, file: !1195, line: 1005, baseType: !729, size: 128, offset: 10304)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1194, file: !1195, line: 1007, baseType: !1193, size: 64, offset: 10432)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1194, file: !1195, line: 1009, baseType: !1887, size: 64, offset: 10496)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1195, line: 1009, flags: DIFlagFwdDecl)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1194, file: !1195, line: 1043, baseType: !184, size: 64, offset: 10560)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1194, file: !1195, line: 1046, baseType: !1891, size: 64, offset: 10624)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1195, line: 41, flags: DIFlagFwdDecl)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1194, file: !1195, line: 1050, baseType: !1894, size: 64, offset: 10688)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1195, line: 42, flags: DIFlagFwdDecl)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1194, file: !1195, line: 1054, baseType: !1897, size: 64, offset: 10752)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1195, line: 55, flags: DIFlagFwdDecl)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1194, file: !1195, line: 1056, baseType: !1900, size: 64, offset: 10816)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1195, line: 40, flags: DIFlagFwdDecl)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1194, file: !1195, line: 1058, baseType: !1903, size: 64, offset: 10880)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1905, line: 99, size: 704, elements: !1906)
!1905 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1906 = !{!1907, !1908, !1909, !1910, !1911, !1912, !1913, !1932, !1933}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1904, file: !1905, line: 100, baseType: !748, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1904, file: !1905, line: 101, baseType: !724, size: 32, offset: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1904, file: !1905, line: 102, baseType: !724, size: 32, offset: 96)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1904, file: !1905, line: 105, baseType: !209, offset: 128)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1904, file: !1905, line: 107, baseType: !292, size: 16, offset: 128)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1904, file: !1905, line: 109, baseType: !715, size: 128, offset: 192)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1904, file: !1905, line: 110, baseType: !1914, size: 64, offset: 320)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1905, line: 73, size: 448, elements: !1916)
!1916 = !{!1917, !1920, !1921, !1926, !1931}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1915, file: !1905, line: 74, baseType: !1918, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1905, line: 74, flags: DIFlagFwdDecl)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1915, file: !1905, line: 75, baseType: !1903, size: 64, offset: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, scope: !1915, file: !1905, line: 83, baseType: !1922, size: 128, offset: 128)
!1922 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1915, file: !1905, line: 83, size: 128, elements: !1923)
!1923 = !{!1924, !1925}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1922, file: !1905, line: 84, baseType: !195, size: 128)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1922, file: !1905, line: 85, baseType: !912, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, scope: !1915, file: !1905, line: 87, baseType: !1927, size: 128, offset: 256)
!1927 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1915, file: !1905, line: 87, size: 128, elements: !1928)
!1928 = !{!1929, !1930}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1927, file: !1905, line: 88, baseType: !615, size: 128)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1927, file: !1905, line: 89, baseType: !341, size: 128, align: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1915, file: !1905, line: 92, baseType: !7, size: 32, offset: 384)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1904, file: !1905, line: 111, baseType: !611, size: 64, offset: 384)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1904, file: !1905, line: 113, baseType: !1934, size: 256, offset: 448)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1935, line: 102, size: 256, elements: !1936)
!1935 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1936 = !{!1937, !1938, !1939}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1934, file: !1935, line: 103, baseType: !748, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1934, file: !1935, line: 104, baseType: !195, size: 128, offset: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1934, file: !1935, line: 105, baseType: !1940, size: 64, offset: 192)
!1940 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1935, line: 21, baseType: !1941)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{null, !1944}
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1194, file: !1195, line: 1061, baseType: !1946, size: 64, offset: 10944)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1195, line: 43, flags: DIFlagFwdDecl)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1194, file: !1195, line: 1064, baseType: !300, size: 64, offset: 11008)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1194, file: !1195, line: 1065, baseType: !1950, size: 64, offset: 11072)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1743, line: 14, baseType: !1952)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1743, line: 12, size: 384, elements: !1953)
!1953 = !{!1954}
!1954 = !DIDerivedType(tag: DW_TAG_member, scope: !1952, file: !1743, line: 13, baseType: !1955, size: 384)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1952, file: !1743, line: 13, size: 384, elements: !1956)
!1956 = !{!1957, !1958, !1959, !1960}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1955, file: !1743, line: 13, baseType: !174, size: 32)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1955, file: !1743, line: 13, baseType: !174, size: 32, offset: 32)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1955, file: !1743, line: 13, baseType: !174, size: 32, offset: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1955, file: !1743, line: 13, baseType: !1961, size: 256, offset: 128)
!1961 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1962, line: 32, size: 256, elements: !1963)
!1962 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1963 = !{!1964, !1969, !1982, !1988, !1997, !2017, !2022}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1961, file: !1962, line: 37, baseType: !1965, size: 64)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1961, file: !1962, line: 34, size: 64, elements: !1966)
!1966 = !{!1967, !1968}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1965, file: !1962, line: 35, baseType: !1437, size: 32)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1965, file: !1962, line: 36, baseType: !417, size: 32, offset: 32)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1961, file: !1962, line: 45, baseType: !1970, size: 192)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1961, file: !1962, line: 40, size: 192, elements: !1971)
!1971 = !{!1972, !1974, !1975, !1981}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1970, file: !1962, line: 41, baseType: !1973, size: 32)
!1973 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !283, line: 95, baseType: !174)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1970, file: !1962, line: 42, baseType: !174, size: 32, offset: 32)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1970, file: !1962, line: 43, baseType: !1976, size: 64, offset: 64)
!1976 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1962, line: 11, baseType: !1977)
!1977 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1962, line: 8, size: 64, elements: !1978)
!1978 = !{!1979, !1980}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1977, file: !1962, line: 9, baseType: !174, size: 32)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1977, file: !1962, line: 10, baseType: !184, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1970, file: !1962, line: 44, baseType: !174, size: 32, offset: 128)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1961, file: !1962, line: 52, baseType: !1983, size: 128)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1961, file: !1962, line: 48, size: 128, elements: !1984)
!1984 = !{!1985, !1986, !1987}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1983, file: !1962, line: 49, baseType: !1437, size: 32)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1983, file: !1962, line: 50, baseType: !417, size: 32, offset: 32)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1983, file: !1962, line: 51, baseType: !1976, size: 64, offset: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1961, file: !1962, line: 61, baseType: !1989, size: 256)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1961, file: !1962, line: 55, size: 256, elements: !1990)
!1990 = !{!1991, !1992, !1993, !1994, !1996}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1989, file: !1962, line: 56, baseType: !1437, size: 32)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1989, file: !1962, line: 57, baseType: !417, size: 32, offset: 32)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1989, file: !1962, line: 58, baseType: !174, size: 32, offset: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1989, file: !1962, line: 59, baseType: !1995, size: 64, offset: 128)
!1995 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !283, line: 94, baseType: !284)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1989, file: !1962, line: 60, baseType: !1995, size: 64, offset: 192)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1961, file: !1962, line: 95, baseType: !1998, size: 256)
!1998 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1961, file: !1962, line: 64, size: 256, elements: !1999)
!1999 = !{!2000, !2001}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1998, file: !1962, line: 65, baseType: !184, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, scope: !1998, file: !1962, line: 77, baseType: !2002, size: 192, offset: 64)
!2002 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1998, file: !1962, line: 77, size: 192, elements: !2003)
!2003 = !{!2004, !2005, !2012}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2002, file: !1962, line: 82, baseType: !1182, size: 16)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2002, file: !1962, line: 88, baseType: !2006, size: 192)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2002, file: !1962, line: 84, size: 192, elements: !2007)
!2007 = !{!2008, !2010, !2011}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2006, file: !1962, line: 85, baseType: !2009, size: 64)
!2009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 64, elements: !1307)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2006, file: !1962, line: 86, baseType: !184, size: 64, offset: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2006, file: !1962, line: 87, baseType: !184, size: 64, offset: 128)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2002, file: !1962, line: 93, baseType: !2013, size: 96)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2002, file: !1962, line: 90, size: 96, elements: !2014)
!2014 = !{!2015, !2016}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2013, file: !1962, line: 91, baseType: !2009, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2013, file: !1962, line: 92, baseType: !393, size: 32, offset: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1961, file: !1962, line: 101, baseType: !2018, size: 128)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1961, file: !1962, line: 98, size: 128, elements: !2019)
!2019 = !{!2020, !2021}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2018, file: !1962, line: 99, baseType: !285, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2018, file: !1962, line: 100, baseType: !174, size: 32, offset: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1961, file: !1962, line: 108, baseType: !2023, size: 128)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1961, file: !1962, line: 104, size: 128, elements: !2024)
!2024 = !{!2025, !2026, !2027}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2023, file: !1962, line: 105, baseType: !184, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2023, file: !1962, line: 106, baseType: !174, size: 32, offset: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2023, file: !1962, line: 107, baseType: !7, size: 32, offset: 96)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1194, file: !1195, line: 1067, baseType: !1815, offset: 11136)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1194, file: !1195, line: 1099, baseType: !2030, size: 64, offset: 11136)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1195, line: 56, flags: DIFlagFwdDecl)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1194, file: !1195, line: 1103, baseType: !195, size: 128, offset: 11200)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1194, file: !1195, line: 1104, baseType: !2034, size: 64, offset: 11328)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1195, line: 46, flags: DIFlagFwdDecl)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1194, file: !1195, line: 1105, baseType: !1150, size: 192, offset: 11392)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1194, file: !1195, line: 1106, baseType: !7, size: 32, offset: 11584)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1194, file: !1195, line: 1109, baseType: !2039, size: 128, offset: 11648)
!2039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2040, size: 128, elements: !1546)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1195, line: 51, flags: DIFlagFwdDecl)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1194, file: !1195, line: 1110, baseType: !1150, size: 192, offset: 11776)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1194, file: !1195, line: 1111, baseType: !195, size: 128, offset: 11968)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1194, file: !1195, line: 1173, baseType: !2045, size: 64, offset: 12096)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2047, line: 62, size: 256, align: 256, elements: !2048)
!2047 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2048 = !{!2049, !2050, !2051, !2056}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2046, file: !2047, line: 75, baseType: !393, size: 32)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2046, file: !2047, line: 90, baseType: !393, size: 32, offset: 32)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2046, file: !2047, line: 124, baseType: !2052, size: 64, offset: 64)
!2052 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2046, file: !2047, line: 109, size: 64, elements: !2053)
!2053 = !{!2054, !2055}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2052, file: !2047, line: 110, baseType: !398, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2052, file: !2047, line: 112, baseType: !398, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2046, file: !2047, line: 144, baseType: !393, size: 32, offset: 128)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1194, file: !1195, line: 1174, baseType: !391, size: 32, offset: 12160)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1194, file: !1195, line: 1179, baseType: !300, size: 64, offset: 12224)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1194, file: !1195, line: 1182, baseType: !2060, size: 128, offset: 12288)
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1128, line: 76, size: 128, elements: !2061)
!2061 = !{!2062, !2067, !2068}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2060, file: !1128, line: 85, baseType: !2063, size: 64)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2064, line: 7, size: 64, elements: !2065)
!2064 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2065 = !{!2066}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2063, file: !2064, line: 12, baseType: !1344, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2060, file: !1128, line: 88, baseType: !466, size: 8, offset: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2060, file: !1128, line: 95, baseType: !466, size: 8, offset: 72)
!2069 = !DIDerivedType(tag: DW_TAG_member, scope: !1194, file: !1195, line: 1184, baseType: !2070, size: 128, offset: 12416)
!2070 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1194, file: !1195, line: 1184, size: 128, elements: !2071)
!2071 = !{!2072, !2073}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2070, file: !1195, line: 1185, baseType: !1207, size: 32)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2070, file: !1195, line: 1186, baseType: !341, size: 128, align: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1194, file: !1195, line: 1190, baseType: !2075, size: 64, offset: 12544)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1195, line: 53, flags: DIFlagFwdDecl)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1194, file: !1195, line: 1192, baseType: !2078, size: 128, offset: 12608)
!2078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1128, line: 64, size: 128, elements: !2079)
!2079 = !{!2080, !2081, !2082}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2078, file: !1128, line: 65, baseType: !697, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2078, file: !1128, line: 67, baseType: !393, size: 32, offset: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2078, file: !1128, line: 68, baseType: !393, size: 32, offset: 96)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1194, file: !1195, line: 1206, baseType: !174, size: 32, offset: 12736)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1194, file: !1195, line: 1207, baseType: !174, size: 32, offset: 12768)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1194, file: !1195, line: 1209, baseType: !300, size: 64, offset: 12800)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1194, file: !1195, line: 1219, baseType: !397, size: 64, offset: 12864)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1194, file: !1195, line: 1220, baseType: !397, size: 64, offset: 12928)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1194, file: !1195, line: 1317, baseType: !174, size: 32, offset: 12992)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1194, file: !1195, line: 1319, baseType: !1193, size: 64, offset: 13056)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1194, file: !1195, line: 1322, baseType: !2091, size: 64, offset: 13120)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2093, line: 56, size: 512, elements: !2094)
!2093 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2094 = !{!2095, !2096, !2097, !2098, !2099, !2100, !2101, !2103}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2092, file: !2093, line: 57, baseType: !2091, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2092, file: !2093, line: 58, baseType: !184, size: 64, offset: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2092, file: !2093, line: 59, baseType: !300, size: 64, offset: 128)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2092, file: !2093, line: 60, baseType: !300, size: 64, offset: 192)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2092, file: !2093, line: 61, baseType: !797, size: 64, offset: 256)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2092, file: !2093, line: 62, baseType: !7, size: 32, offset: 320)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2092, file: !2093, line: 63, baseType: !2102, size: 64, offset: 384)
!2102 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !196, line: 153, baseType: !397)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2092, file: !2093, line: 64, baseType: !2104, size: 64, offset: 448)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1194, file: !1195, line: 1326, baseType: !1207, size: 32, offset: 13184)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1194, file: !1195, line: 1342, baseType: !184, size: 64, offset: 13248)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1194, file: !1195, line: 1343, baseType: !398, size: 64, offset: 13312)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1194, file: !1195, line: 1344, baseType: !397, size: 64, offset: 13376)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1194, file: !1195, line: 1345, baseType: !398, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1194, file: !1195, line: 1346, baseType: !398, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1194, file: !1195, line: 1347, baseType: !398, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1194, file: !1195, line: 1348, baseType: !341, size: 128, align: 64, offset: 13504)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1194, file: !1195, line: 1358, baseType: !2115, size: 34816, offset: 13824)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2116, line: 485, size: 34816, elements: !2117)
!2116 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2117 = !{!2118, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2147, !2148, !2149, !2150, !2151, !2152, !2155, !2156, !2157}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2115, file: !2116, line: 487, baseType: !2119, size: 192)
!2119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2120, size: 192, elements: !251)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2121, line: 16, size: 64, elements: !2122)
!2121 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2122 = !{!2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2120, file: !2121, line: 17, baseType: !836, size: 16)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2120, file: !2121, line: 18, baseType: !836, size: 16, offset: 16)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2120, file: !2121, line: 19, baseType: !836, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2120, file: !2121, line: 19, baseType: !836, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2120, file: !2121, line: 19, baseType: !836, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2120, file: !2121, line: 19, baseType: !836, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2120, file: !2121, line: 19, baseType: !836, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2120, file: !2121, line: 20, baseType: !836, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2120, file: !2121, line: 20, baseType: !836, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2120, file: !2121, line: 20, baseType: !836, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2120, file: !2121, line: 20, baseType: !836, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2120, file: !2121, line: 20, baseType: !836, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2120, file: !2121, line: 20, baseType: !836, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2115, file: !2116, line: 491, baseType: !300, size: 64, offset: 192)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2115, file: !2116, line: 495, baseType: !292, size: 16, offset: 256)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2115, file: !2116, line: 496, baseType: !292, size: 16, offset: 272)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2115, file: !2116, line: 497, baseType: !292, size: 16, offset: 288)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2115, file: !2116, line: 498, baseType: !292, size: 16, offset: 304)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2115, file: !2116, line: 502, baseType: !300, size: 64, offset: 320)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2115, file: !2116, line: 503, baseType: !300, size: 64, offset: 384)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2115, file: !2116, line: 514, baseType: !2144, size: 256, offset: 448)
!2144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2145, size: 256, elements: !1132)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2116, line: 483, flags: DIFlagFwdDecl)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2115, file: !2116, line: 516, baseType: !300, size: 64, offset: 704)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2115, file: !2116, line: 518, baseType: !300, size: 64, offset: 768)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2115, file: !2116, line: 520, baseType: !300, size: 64, offset: 832)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2115, file: !2116, line: 521, baseType: !300, size: 64, offset: 896)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2115, file: !2116, line: 522, baseType: !300, size: 64, offset: 960)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2115, file: !2116, line: 528, baseType: !2153, size: 64, offset: 1024)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2116, line: 10, flags: DIFlagFwdDecl)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2115, file: !2116, line: 535, baseType: !300, size: 64, offset: 1088)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2115, file: !2116, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2115, file: !2116, line: 540, baseType: !2158, size: 33280, offset: 1536)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2159, line: 317, size: 33280, elements: !2160)
!2159 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2160 = !{!2161, !2162, !2163}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2158, file: !2159, line: 330, baseType: !7, size: 32)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2158, file: !2159, line: 337, baseType: !300, size: 64, offset: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2158, file: !2159, line: 348, baseType: !2164, size: 32768, offset: 512)
!2164 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2159, line: 304, size: 32768, elements: !2165)
!2165 = !{!2166, !2181, !2220, !2270, !2283}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2164, file: !2159, line: 305, baseType: !2167, size: 896)
!2167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2159, line: 12, size: 896, elements: !2168)
!2168 = !{!2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2180}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2167, file: !2159, line: 13, baseType: !391, size: 32)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2167, file: !2159, line: 14, baseType: !391, size: 32, offset: 32)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2167, file: !2159, line: 15, baseType: !391, size: 32, offset: 64)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2167, file: !2159, line: 16, baseType: !391, size: 32, offset: 96)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2167, file: !2159, line: 17, baseType: !391, size: 32, offset: 128)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2167, file: !2159, line: 18, baseType: !391, size: 32, offset: 160)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2167, file: !2159, line: 19, baseType: !391, size: 32, offset: 192)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2167, file: !2159, line: 22, baseType: !2177, size: 640, offset: 224)
!2177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 640, elements: !2178)
!2178 = !{!2179}
!2179 = !DISubrange(count: 20)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2167, file: !2159, line: 25, baseType: !391, size: 32, offset: 864)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2164, file: !2159, line: 306, baseType: !2182, size: 4096, align: 128)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2159, line: 34, size: 4096, align: 128, elements: !2183)
!2183 = !{!2184, !2185, !2186, !2187, !2188, !2203, !2204, !2205, !2209, !2211, !2215}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2182, file: !2159, line: 35, baseType: !836, size: 16)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2182, file: !2159, line: 36, baseType: !836, size: 16, offset: 16)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2182, file: !2159, line: 37, baseType: !836, size: 16, offset: 32)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2182, file: !2159, line: 38, baseType: !836, size: 16, offset: 48)
!2188 = !DIDerivedType(tag: DW_TAG_member, scope: !2182, file: !2159, line: 39, baseType: !2189, size: 128, offset: 64)
!2189 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2182, file: !2159, line: 39, size: 128, elements: !2190)
!2190 = !{!2191, !2196}
!2191 = !DIDerivedType(tag: DW_TAG_member, scope: !2189, file: !2159, line: 40, baseType: !2192, size: 128)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2189, file: !2159, line: 40, size: 128, elements: !2193)
!2193 = !{!2194, !2195}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2192, file: !2159, line: 41, baseType: !397, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2192, file: !2159, line: 42, baseType: !397, size: 64, offset: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, scope: !2189, file: !2159, line: 44, baseType: !2197, size: 128)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2189, file: !2159, line: 44, size: 128, elements: !2198)
!2198 = !{!2199, !2200, !2201, !2202}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2197, file: !2159, line: 45, baseType: !391, size: 32)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2197, file: !2159, line: 46, baseType: !391, size: 32, offset: 32)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2197, file: !2159, line: 47, baseType: !391, size: 32, offset: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2197, file: !2159, line: 48, baseType: !391, size: 32, offset: 96)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2182, file: !2159, line: 51, baseType: !391, size: 32, offset: 192)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2182, file: !2159, line: 52, baseType: !391, size: 32, offset: 224)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2182, file: !2159, line: 55, baseType: !2206, size: 1024, offset: 256)
!2206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 1024, elements: !2207)
!2207 = !{!2208}
!2208 = !DISubrange(count: 32)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2182, file: !2159, line: 58, baseType: !2210, size: 2048, offset: 1280)
!2210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 2048, elements: !255)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2182, file: !2159, line: 60, baseType: !2212, size: 384, offset: 3328)
!2212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 384, elements: !2213)
!2213 = !{!2214}
!2214 = !DISubrange(count: 12)
!2215 = !DIDerivedType(tag: DW_TAG_member, scope: !2182, file: !2159, line: 62, baseType: !2216, size: 384, offset: 3712)
!2216 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2182, file: !2159, line: 62, size: 384, elements: !2217)
!2217 = !{!2218, !2219}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2216, file: !2159, line: 63, baseType: !2212, size: 384)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2216, file: !2159, line: 64, baseType: !2212, size: 384)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2164, file: !2159, line: 307, baseType: !2221, size: 1088)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2159, line: 79, size: 1088, elements: !2222)
!2222 = !{!2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2269}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2221, file: !2159, line: 80, baseType: !391, size: 32)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2221, file: !2159, line: 81, baseType: !391, size: 32, offset: 32)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2221, file: !2159, line: 82, baseType: !391, size: 32, offset: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2221, file: !2159, line: 83, baseType: !391, size: 32, offset: 96)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2221, file: !2159, line: 84, baseType: !391, size: 32, offset: 128)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2221, file: !2159, line: 85, baseType: !391, size: 32, offset: 160)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2221, file: !2159, line: 86, baseType: !391, size: 32, offset: 192)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2221, file: !2159, line: 88, baseType: !2177, size: 640, offset: 224)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2221, file: !2159, line: 89, baseType: !1329, size: 8, offset: 864)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2221, file: !2159, line: 90, baseType: !1329, size: 8, offset: 872)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2221, file: !2159, line: 91, baseType: !1329, size: 8, offset: 880)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2221, file: !2159, line: 92, baseType: !1329, size: 8, offset: 888)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2221, file: !2159, line: 93, baseType: !1329, size: 8, offset: 896)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2221, file: !2159, line: 94, baseType: !1329, size: 8, offset: 904)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2221, file: !2159, line: 95, baseType: !2238, size: 64, offset: 960)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2240, line: 11, size: 128, elements: !2241)
!2240 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2241 = !{!2242, !2243}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2239, file: !2240, line: 12, baseType: !285, size: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2239, file: !2240, line: 13, baseType: !2244, size: 64, offset: 64)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2246, line: 56, size: 1344, elements: !2247)
!2246 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2247 = !{!2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2245, file: !2246, line: 61, baseType: !300, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2245, file: !2246, line: 62, baseType: !300, size: 64, offset: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2245, file: !2246, line: 63, baseType: !300, size: 64, offset: 128)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2245, file: !2246, line: 64, baseType: !300, size: 64, offset: 192)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2245, file: !2246, line: 65, baseType: !300, size: 64, offset: 256)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2245, file: !2246, line: 66, baseType: !300, size: 64, offset: 320)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2245, file: !2246, line: 68, baseType: !300, size: 64, offset: 384)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2245, file: !2246, line: 69, baseType: !300, size: 64, offset: 448)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2245, file: !2246, line: 70, baseType: !300, size: 64, offset: 512)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2245, file: !2246, line: 71, baseType: !300, size: 64, offset: 576)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2245, file: !2246, line: 72, baseType: !300, size: 64, offset: 640)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2245, file: !2246, line: 73, baseType: !300, size: 64, offset: 704)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2245, file: !2246, line: 74, baseType: !300, size: 64, offset: 768)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2245, file: !2246, line: 75, baseType: !300, size: 64, offset: 832)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2245, file: !2246, line: 76, baseType: !300, size: 64, offset: 896)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2245, file: !2246, line: 81, baseType: !300, size: 64, offset: 960)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2245, file: !2246, line: 83, baseType: !300, size: 64, offset: 1024)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2245, file: !2246, line: 84, baseType: !300, size: 64, offset: 1088)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2245, file: !2246, line: 85, baseType: !300, size: 64, offset: 1152)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2245, file: !2246, line: 86, baseType: !300, size: 64, offset: 1216)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2245, file: !2246, line: 87, baseType: !300, size: 64, offset: 1280)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2221, file: !2159, line: 96, baseType: !391, size: 32, offset: 1024)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2164, file: !2159, line: 308, baseType: !2271, size: 4608, align: 512)
!2271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2159, line: 289, size: 4608, align: 512, elements: !2272)
!2272 = !{!2273, !2274, !2281}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2271, file: !2159, line: 290, baseType: !2182, size: 4096, align: 128)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2271, file: !2159, line: 291, baseType: !2275, size: 512, offset: 4096)
!2275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2159, line: 268, size: 512, elements: !2276)
!2276 = !{!2277, !2278, !2279}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2275, file: !2159, line: 269, baseType: !397, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2275, file: !2159, line: 270, baseType: !397, size: 64, offset: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2275, file: !2159, line: 271, baseType: !2280, size: 384, offset: 128)
!2280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 384, elements: !1602)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2271, file: !2159, line: 292, baseType: !2282, offset: 4608)
!2282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1329, elements: !1700)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2164, file: !2159, line: 309, baseType: !2284, size: 32768)
!2284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1329, size: 32768, elements: !2285)
!2285 = !{!2286}
!2286 = !DISubrange(count: 4096)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1190, file: !699, line: 378, baseType: !2288, size: 64, offset: 64)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1186, file: !699, line: 384, baseType: !1479, size: 192, offset: 192)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !955, file: !699, line: 500, baseType: !209, offset: 6656)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !955, file: !699, line: 501, baseType: !2292, size: 64, offset: 6656)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !699, line: 387, flags: DIFlagFwdDecl)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !955, file: !699, line: 516, baseType: !1690, size: 64, offset: 6720)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !955, file: !699, line: 519, baseType: !328, size: 64, offset: 6784)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !955, file: !699, line: 521, baseType: !2297, size: 64, offset: 6848)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !699, line: 521, flags: DIFlagFwdDecl)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !955, file: !699, line: 545, baseType: !724, size: 32, offset: 6912)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !955, file: !699, line: 548, baseType: !466, size: 8, offset: 6944)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !955, file: !699, line: 550, baseType: !2302, offset: 6952)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2303, line: 142, elements: !223)
!2303 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !955, file: !699, line: 554, baseType: !1934, size: 256, offset: 6976)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !955, file: !699, line: 557, baseType: !391, size: 32, offset: 7232)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !952, file: !699, line: 565, baseType: !2307, offset: 7296)
!2307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, elements: !2308)
!2308 = !{!2309}
!2309 = !DISubrange(count: -1)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !948, file: !699, line: 151, baseType: !724, size: 32)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !941, file: !699, line: 156, baseType: !209, offset: 256)
!2312 = !DIDerivedType(tag: DW_TAG_member, scope: !703, file: !699, line: 159, baseType: !2313, size: 128)
!2313 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !703, file: !699, line: 159, size: 128, elements: !2314)
!2314 = !{!2315, !2379}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2313, file: !699, line: 161, baseType: !2316, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2318)
!2318 = !{!2319, !2329, !2350, !2351, !2352, !2353, !2354, !2366, !2367, !2368}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2317, file: !31, line: 111, baseType: !2320, size: 384)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2321)
!2321 = !{!2322, !2324, !2325, !2326, !2327, !2328}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2320, file: !31, line: 20, baseType: !2323, size: 64)
!2323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !300)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2320, file: !31, line: 21, baseType: !2323, size: 64, offset: 64)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2320, file: !31, line: 22, baseType: !2323, size: 64, offset: 128)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2320, file: !31, line: 23, baseType: !300, size: 64, offset: 192)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2320, file: !31, line: 24, baseType: !300, size: 64, offset: 256)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2320, file: !31, line: 25, baseType: !300, size: 64, offset: 320)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2317, file: !31, line: 112, baseType: !2330, size: 64, offset: 384)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2332, line: 105, size: 128, elements: !2333)
!2332 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2333 = !{!2334, !2335}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2331, file: !2332, line: 110, baseType: !300, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2331, file: !2332, line: 118, baseType: !2336, size: 64, offset: 64)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2332, line: 95, size: 448, elements: !2338)
!2338 = !{!2339, !2340, !2345, !2346, !2347, !2348, !2349}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2337, file: !2332, line: 96, baseType: !748, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2337, file: !2332, line: 97, baseType: !2341, size: 64, offset: 64)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2332, line: 60, baseType: !2343)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{null, !2330}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2337, file: !2332, line: 98, baseType: !2341, size: 64, offset: 128)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2337, file: !2332, line: 99, baseType: !466, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2337, file: !2332, line: 100, baseType: !466, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2337, file: !2332, line: 101, baseType: !341, size: 128, align: 64, offset: 256)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2337, file: !2332, line: 102, baseType: !2330, size: 64, offset: 384)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2317, file: !31, line: 113, baseType: !2331, size: 128, offset: 448)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2317, file: !31, line: 114, baseType: !1479, size: 192, offset: 576)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2317, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2317, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2317, file: !31, line: 117, baseType: !2355, size: 64, offset: 832)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2357)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2358)
!2358 = !{!2359, !2360, !2364, !2365}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2357, file: !31, line: 73, baseType: !817, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2357, file: !31, line: 78, baseType: !2361, size: 64, offset: 64)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{null, !2316}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2357, file: !31, line: 83, baseType: !2361, size: 64, offset: 128)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2357, file: !31, line: 89, baseType: !1004, size: 64, offset: 192)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2317, file: !31, line: 118, baseType: !184, size: 64, offset: 896)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2317, file: !31, line: 119, baseType: !174, size: 32, offset: 960)
!2368 = !DIDerivedType(tag: DW_TAG_member, scope: !2317, file: !31, line: 120, baseType: !2369, size: 128, offset: 1024)
!2369 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2317, file: !31, line: 120, size: 128, elements: !2370)
!2370 = !{!2371, !2377}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2369, file: !31, line: 121, baseType: !2372, size: 128)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2373, line: 6, size: 128, elements: !2374)
!2373 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2374 = !{!2375, !2376}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2372, file: !2373, line: 7, baseType: !397, size: 64)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2372, file: !2373, line: 8, baseType: !397, size: 64, offset: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2369, file: !31, line: 122, baseType: !2378)
!2378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2372, elements: !1700)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2313, file: !699, line: 162, baseType: !184, size: 64, offset: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !703, file: !699, line: 176, baseType: !341, size: 128, align: 64)
!2381 = !DIDerivedType(tag: DW_TAG_member, scope: !698, file: !699, line: 179, baseType: !2382, size: 32, offset: 384)
!2382 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !698, file: !699, line: 179, size: 32, elements: !2383)
!2383 = !{!2384, !2385, !2386, !2387}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2382, file: !699, line: 184, baseType: !724, size: 32)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2382, file: !699, line: 192, baseType: !7, size: 32)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2382, file: !699, line: 194, baseType: !7, size: 32)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2382, file: !699, line: 195, baseType: !174, size: 32)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !698, file: !699, line: 199, baseType: !724, size: 32, offset: 416)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !633, file: !44, line: 1964, baseType: !2390, size: 64, offset: 1344)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{!285, !575, !2393}
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2395, line: 12, size: 256, elements: !2396)
!2395 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2396 = !{!2397, !2398, !2399, !2400, !2401}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2394, file: !2395, line: 13, baseType: !720, size: 32)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2394, file: !2395, line: 16, baseType: !174, size: 32, offset: 32)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2394, file: !2395, line: 23, baseType: !300, size: 64, offset: 64)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2394, file: !2395, line: 30, baseType: !300, size: 64, offset: 128)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2394, file: !2395, line: 33, baseType: !2402, size: 64, offset: 192)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !699, line: 27, flags: DIFlagFwdDecl)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !633, file: !44, line: 1966, baseType: !2390, size: 64, offset: 1408)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !576, file: !44, line: 1424, baseType: !2406, size: 64, offset: 448)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2408)
!2408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2409)
!2409 = !{!2410, !2456, !2460, !2464, !2465, !2466, !2467, !2468, !2473, !2478, !2482}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2408, file: !38, line: 323, baseType: !2411, size: 64)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!174, !2414}
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2416)
!2416 = !{!2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2441, !2442, !2443}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2415, file: !38, line: 295, baseType: !615, size: 128)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2415, file: !38, line: 296, baseType: !195, size: 128, offset: 128)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2415, file: !38, line: 297, baseType: !195, size: 128, offset: 256)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2415, file: !38, line: 298, baseType: !195, size: 128, offset: 384)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2415, file: !38, line: 299, baseType: !1150, size: 192, offset: 512)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2415, file: !38, line: 300, baseType: !209, offset: 704)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2415, file: !38, line: 301, baseType: !724, size: 32, offset: 704)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2415, file: !38, line: 302, baseType: !575, size: 64, offset: 768)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2415, file: !38, line: 303, baseType: !2426, size: 64, offset: 832)
!2426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2427)
!2427 = !{!2428, !2440}
!2428 = !DIDerivedType(tag: DW_TAG_member, scope: !2426, file: !38, line: 69, baseType: !2429, size: 32)
!2429 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2426, file: !38, line: 69, size: 32, elements: !2430)
!2430 = !{!2431, !2432, !2433}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2429, file: !38, line: 70, baseType: !411, size: 32)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2429, file: !38, line: 71, baseType: !419, size: 32)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2429, file: !38, line: 72, baseType: !2434, size: 32)
!2434 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2435, line: 24, baseType: !2436)
!2435 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2436 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2435, line: 22, size: 32, elements: !2437)
!2437 = !{!2438}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2436, file: !2435, line: 23, baseType: !2439, size: 32)
!2439 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2435, line: 20, baseType: !417)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2426, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2415, file: !38, line: 304, baseType: !507, size: 64, offset: 896)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2415, file: !38, line: 305, baseType: !300, size: 64, offset: 960)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2415, file: !38, line: 306, baseType: !2444, size: 576, offset: 1024)
!2444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2445)
!2445 = !{!2446, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2444, file: !38, line: 206, baseType: !2447, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !509)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2444, file: !38, line: 207, baseType: !2447, size: 64, offset: 64)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2444, file: !38, line: 208, baseType: !2447, size: 64, offset: 128)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2444, file: !38, line: 209, baseType: !2447, size: 64, offset: 192)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2444, file: !38, line: 210, baseType: !2447, size: 64, offset: 256)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2444, file: !38, line: 211, baseType: !2447, size: 64, offset: 320)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2444, file: !38, line: 212, baseType: !2447, size: 64, offset: 384)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2444, file: !38, line: 213, baseType: !515, size: 64, offset: 448)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2444, file: !38, line: 214, baseType: !515, size: 64, offset: 512)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2408, file: !38, line: 324, baseType: !2457, size: 64, offset: 64)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!2414, !575, !174}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2408, file: !38, line: 325, baseType: !2461, size: 64, offset: 128)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{null, !2414}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2408, file: !38, line: 326, baseType: !2411, size: 64, offset: 192)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2408, file: !38, line: 327, baseType: !2411, size: 64, offset: 256)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2408, file: !38, line: 328, baseType: !2411, size: 64, offset: 320)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2408, file: !38, line: 329, baseType: !661, size: 64, offset: 384)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2408, file: !38, line: 332, baseType: !2469, size: 64, offset: 448)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{!2472, !405}
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2408, file: !38, line: 333, baseType: !2474, size: 64, offset: 512)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!174, !405, !2477}
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2408, file: !38, line: 335, baseType: !2479, size: 64, offset: 576)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DISubroutineType(types: !2481)
!2481 = !{!174, !405, !2472}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2408, file: !38, line: 337, baseType: !2483, size: 64, offset: 640)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{!174, !575, !2486}
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !576, file: !44, line: 1425, baseType: !2488, size: 64, offset: 512)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2490)
!2490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2491)
!2491 = !{!2492, !2496, !2497, !2501, !2502, !2503, !2518, !2541, !2545, !2546, !2569}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2490, file: !38, line: 429, baseType: !2493, size: 64)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{!174, !575, !174, !174, !525}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2490, file: !38, line: 430, baseType: !661, size: 64, offset: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2490, file: !38, line: 431, baseType: !2498, size: 64, offset: 128)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!174, !575, !7}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2490, file: !38, line: 432, baseType: !2498, size: 64, offset: 192)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2490, file: !38, line: 433, baseType: !661, size: 64, offset: 256)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2490, file: !38, line: 434, baseType: !2504, size: 64, offset: 320)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!174, !575, !174, !2507}
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2509)
!2509 = !{!2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2508, file: !38, line: 416, baseType: !174, size: 32)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2508, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2508, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2508, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2508, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2508, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2508, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2508, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2490, file: !38, line: 435, baseType: !2519, size: 64, offset: 384)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = !DISubroutineType(types: !2521)
!2521 = !{!174, !575, !2426, !2522}
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2524)
!2524 = !{!2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2523, file: !38, line: 344, baseType: !174, size: 32)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2523, file: !38, line: 345, baseType: !397, size: 64, offset: 64)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2523, file: !38, line: 346, baseType: !397, size: 64, offset: 128)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2523, file: !38, line: 347, baseType: !397, size: 64, offset: 192)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2523, file: !38, line: 348, baseType: !397, size: 64, offset: 256)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2523, file: !38, line: 349, baseType: !397, size: 64, offset: 320)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2523, file: !38, line: 350, baseType: !397, size: 64, offset: 384)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2523, file: !38, line: 351, baseType: !754, size: 64, offset: 448)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2523, file: !38, line: 353, baseType: !754, size: 64, offset: 512)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2523, file: !38, line: 354, baseType: !174, size: 32, offset: 576)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2523, file: !38, line: 355, baseType: !174, size: 32, offset: 608)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2523, file: !38, line: 356, baseType: !397, size: 64, offset: 640)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2523, file: !38, line: 357, baseType: !397, size: 64, offset: 704)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2523, file: !38, line: 358, baseType: !397, size: 64, offset: 768)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2523, file: !38, line: 359, baseType: !754, size: 64, offset: 832)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2523, file: !38, line: 360, baseType: !174, size: 32, offset: 896)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2490, file: !38, line: 436, baseType: !2542, size: 64, offset: 448)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{!174, !575, !2486, !2522}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2490, file: !38, line: 438, baseType: !2519, size: 64, offset: 512)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2490, file: !38, line: 439, baseType: !2547, size: 64, offset: 576)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!174, !575, !2550}
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2552)
!2552 = !{!2553, !2554}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2551, file: !38, line: 410, baseType: !7, size: 32)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2551, file: !38, line: 411, baseType: !2555, size: 1344, offset: 64)
!2555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2556, size: 1344, elements: !251)
!2556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2557)
!2557 = !{!2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2568}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2556, file: !38, line: 396, baseType: !7, size: 32)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2556, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2556, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2556, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2556, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2556, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2556, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2556, file: !38, line: 404, baseType: !399, size: 64, offset: 256)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2556, file: !38, line: 405, baseType: !2567, size: 64, offset: 320)
!2567 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !196, line: 126, baseType: !397)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2556, file: !38, line: 406, baseType: !2567, size: 64, offset: 384)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2490, file: !38, line: 440, baseType: !2498, size: 64, offset: 640)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !576, file: !44, line: 1426, baseType: !2571, size: 64, offset: 576)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2573)
!2573 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !576, file: !44, line: 1427, baseType: !300, size: 64, offset: 640)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !576, file: !44, line: 1428, baseType: !300, size: 64, offset: 704)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !576, file: !44, line: 1429, baseType: !300, size: 64, offset: 768)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !576, file: !44, line: 1430, baseType: !358, size: 64, offset: 832)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !576, file: !44, line: 1431, baseType: !744, size: 256, offset: 896)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !576, file: !44, line: 1432, baseType: !174, size: 32, offset: 1152)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !576, file: !44, line: 1433, baseType: !724, size: 32, offset: 1184)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !576, file: !44, line: 1437, baseType: !2582, size: 64, offset: 1216)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2585)
!2585 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !576, file: !44, line: 1449, baseType: !2587, size: 64, offset: 1280)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !374, line: 34, size: 64, elements: !2588)
!2588 = !{!2589}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2587, file: !374, line: 35, baseType: !377, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !576, file: !44, line: 1450, baseType: !195, size: 128, offset: 1344)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !576, file: !44, line: 1451, baseType: !2592, size: 64, offset: 1472)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !576, file: !44, line: 1452, baseType: !1900, size: 64, offset: 1536)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !576, file: !44, line: 1453, baseType: !2596, size: 64, offset: 1600)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !576, file: !44, line: 1454, baseType: !615, size: 128, offset: 1664)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !576, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !576, file: !44, line: 1456, baseType: !2601, size: 2432, offset: 1856)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2602)
!2602 = !{!2603, !2604, !2605, !2607, !2639}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2601, file: !38, line: 519, baseType: !7, size: 32)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2601, file: !38, line: 520, baseType: !744, size: 256, offset: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2601, file: !38, line: 521, baseType: !2606, size: 192, offset: 320)
!2606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 192, elements: !251)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2601, file: !38, line: 522, baseType: !2608, size: 1728, offset: 512)
!2608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2609, size: 1728, elements: !251)
!2609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2610)
!2610 = !{!2611, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2609, file: !38, line: 223, baseType: !2612, size: 64)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2614)
!2614 = !{!2615, !2616, !2629, !2630}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2613, file: !38, line: 444, baseType: !174, size: 32)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2613, file: !38, line: 445, baseType: !2617, size: 64, offset: 64)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2619)
!2619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2620)
!2620 = !{!2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2619, file: !38, line: 311, baseType: !661, size: 64)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2619, file: !38, line: 312, baseType: !661, size: 64, offset: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2619, file: !38, line: 313, baseType: !661, size: 64, offset: 128)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2619, file: !38, line: 314, baseType: !661, size: 64, offset: 192)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2619, file: !38, line: 315, baseType: !2411, size: 64, offset: 256)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2619, file: !38, line: 316, baseType: !2411, size: 64, offset: 320)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2619, file: !38, line: 317, baseType: !2411, size: 64, offset: 384)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2619, file: !38, line: 318, baseType: !2483, size: 64, offset: 448)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2613, file: !38, line: 446, baseType: !167, size: 64, offset: 128)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2613, file: !38, line: 447, baseType: !2612, size: 64, offset: 192)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2609, file: !38, line: 224, baseType: !174, size: 32, offset: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2609, file: !38, line: 226, baseType: !195, size: 128, offset: 128)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2609, file: !38, line: 227, baseType: !300, size: 64, offset: 256)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2609, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2609, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2609, file: !38, line: 230, baseType: !2447, size: 64, offset: 384)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2609, file: !38, line: 231, baseType: !2447, size: 64, offset: 448)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2609, file: !38, line: 232, baseType: !184, size: 64, offset: 512)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2601, file: !38, line: 523, baseType: !2640, size: 192, offset: 2240)
!2640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2617, size: 192, elements: !251)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !576, file: !44, line: 1458, baseType: !2642, size: 2112, offset: 4288)
!2642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2643)
!2643 = !{!2644, !2645, !2646}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2642, file: !44, line: 1411, baseType: !174, size: 32)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2642, file: !44, line: 1412, baseType: !1458, size: 128, offset: 64)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2642, file: !44, line: 1413, baseType: !2647, size: 1920, offset: 192)
!2647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2648, size: 1920, elements: !251)
!2648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2649, line: 12, size: 640, elements: !2650)
!2649 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2650 = !{!2651, !2659, !2661, !2666, !2667}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2648, file: !2649, line: 13, baseType: !2652, size: 320)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2653, line: 17, size: 320, elements: !2654)
!2653 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2654 = !{!2655, !2656, !2657, !2658}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2652, file: !2653, line: 18, baseType: !174, size: 32)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2652, file: !2653, line: 19, baseType: !174, size: 32, offset: 32)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2652, file: !2653, line: 20, baseType: !1458, size: 128, offset: 64)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2652, file: !2653, line: 22, baseType: !341, size: 128, align: 64, offset: 192)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2648, file: !2649, line: 14, baseType: !2660, size: 64, offset: 320)
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2648, file: !2649, line: 15, baseType: !2662, size: 64, offset: 384)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2663, line: 16, size: 64, elements: !2664)
!2663 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2664 = !{!2665}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2662, file: !2663, line: 17, baseType: !1193, size: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2648, file: !2649, line: 16, baseType: !1458, size: 128, offset: 448)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2648, file: !2649, line: 17, baseType: !724, size: 32, offset: 576)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !576, file: !44, line: 1465, baseType: !184, size: 64, offset: 6400)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !576, file: !44, line: 1468, baseType: !391, size: 32, offset: 6464)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !576, file: !44, line: 1470, baseType: !515, size: 64, offset: 6528)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !576, file: !44, line: 1471, baseType: !515, size: 64, offset: 6592)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !576, file: !44, line: 1473, baseType: !393, size: 32, offset: 6656)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !576, file: !44, line: 1474, baseType: !2674, size: 64, offset: 6720)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !576, file: !44, line: 1477, baseType: !2677, size: 256, offset: 6784)
!2677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 256, elements: !2207)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !576, file: !44, line: 1478, baseType: !2679, size: 128, offset: 7040)
!2679 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2680, line: 18, baseType: !2681)
!2680 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2681 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2680, line: 16, size: 128, elements: !2682)
!2682 = !{!2683}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2681, file: !2680, line: 17, baseType: !2684, size: 128)
!2684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1330, size: 128, elements: !1712)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !576, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !576, file: !44, line: 1481, baseType: !2687, size: 32, offset: 7200)
!2687 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !196, line: 150, baseType: !7)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !576, file: !44, line: 1487, baseType: !1150, size: 192, offset: 7232)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !576, file: !44, line: 1493, baseType: !165, size: 64, offset: 7424)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !576, file: !44, line: 1495, baseType: !2691, size: 64, offset: 7488)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2693)
!2693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !356, line: 135, size: 1024, align: 512, elements: !2694)
!2694 = !{!2695, !2699, !2700, !2707, !2713, !2717, !2721, !2725, !2726, !2730, !2734, !2739, !2743}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2693, file: !356, line: 136, baseType: !2696, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{!174, !358, !7}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2693, file: !356, line: 137, baseType: !2696, size: 64, offset: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2693, file: !356, line: 138, baseType: !2701, size: 64, offset: 128)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!174, !2704, !2706}
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !359)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2693, file: !356, line: 139, baseType: !2708, size: 64, offset: 192)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{!174, !2704, !7, !165, !2711}
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !382)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2693, file: !356, line: 141, baseType: !2714, size: 64, offset: 256)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = !DISubroutineType(types: !2716)
!2716 = !{!174, !2704}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2693, file: !356, line: 142, baseType: !2718, size: 64, offset: 320)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{!174, !358}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2693, file: !356, line: 143, baseType: !2722, size: 64, offset: 384)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{null, !358}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2693, file: !356, line: 144, baseType: !2722, size: 64, offset: 448)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2693, file: !356, line: 145, baseType: !2727, size: 64, offset: 512)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{null, !358, !405}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2693, file: !356, line: 146, baseType: !2731, size: 64, offset: 576)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!250, !358, !250, !174}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2693, file: !356, line: 147, baseType: !2735, size: 64, offset: 640)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!354, !2738}
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2693, file: !356, line: 148, baseType: !2740, size: 64, offset: 704)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = !DISubroutineType(types: !2742)
!2742 = !{!174, !525, !466}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2693, file: !356, line: 149, baseType: !2744, size: 64, offset: 768)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{!358, !358, !2747}
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !406)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !576, file: !44, line: 1500, baseType: !174, size: 32, offset: 7552)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !576, file: !44, line: 1502, baseType: !2751, size: 448, offset: 7616)
!2751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2395, line: 60, size: 448, elements: !2752)
!2752 = !{!2753, !2758, !2759, !2760, !2761, !2762, !2763}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2751, file: !2395, line: 61, baseType: !2754, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{!300, !2757, !2393}
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2751, file: !2395, line: 63, baseType: !2754, size: 64, offset: 64)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2751, file: !2395, line: 66, baseType: !285, size: 64, offset: 128)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2751, file: !2395, line: 67, baseType: !174, size: 32, offset: 192)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2751, file: !2395, line: 68, baseType: !7, size: 32, offset: 224)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2751, file: !2395, line: 71, baseType: !195, size: 128, offset: 256)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2751, file: !2395, line: 77, baseType: !2764, size: 64, offset: 384)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !576, file: !44, line: 1505, baseType: !748, size: 64, offset: 8064)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !576, file: !44, line: 1508, baseType: !748, size: 64, offset: 8128)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !576, file: !44, line: 1511, baseType: !174, size: 32, offset: 8192)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !576, file: !44, line: 1514, baseType: !886, size: 32, offset: 8224)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !576, file: !44, line: 1517, baseType: !2770, size: 64, offset: 8256)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1935, line: 18, flags: DIFlagFwdDecl)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !576, file: !44, line: 1518, baseType: !611, size: 64, offset: 8320)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !576, file: !44, line: 1525, baseType: !1690, size: 64, offset: 8384)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !576, file: !44, line: 1532, baseType: !2775, size: 64, offset: 8448)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2776, line: 52, size: 64, elements: !2777)
!2776 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2777 = !{!2778}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2775, file: !2776, line: 53, baseType: !2779, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2776, line: 40, size: 256, elements: !2781)
!2781 = !{!2782, !2783, !2788}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2780, file: !2776, line: 42, baseType: !209)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2780, file: !2776, line: 44, baseType: !2784, size: 192)
!2784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2776, line: 28, size: 192, elements: !2785)
!2785 = !{!2786, !2787}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2784, file: !2776, line: 29, baseType: !195, size: 128)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2784, file: !2776, line: 31, baseType: !285, size: 64, offset: 128)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2780, file: !2776, line: 49, baseType: !285, size: 64, offset: 192)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !576, file: !44, line: 1533, baseType: !2775, size: 64, offset: 8512)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !576, file: !44, line: 1534, baseType: !341, size: 128, align: 64, offset: 8576)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !576, file: !44, line: 1535, baseType: !1934, size: 256, offset: 8704)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !576, file: !44, line: 1537, baseType: !1150, size: 192, offset: 8960)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !576, file: !44, line: 1542, baseType: !174, size: 32, offset: 9152)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !576, file: !44, line: 1545, baseType: !209, offset: 9184)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !576, file: !44, line: 1546, baseType: !195, size: 128, offset: 9216)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !576, file: !44, line: 1548, baseType: !209, offset: 9344)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !576, file: !44, line: 1549, baseType: !195, size: 128, offset: 9344)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !406, file: !44, line: 624, baseType: !710, size: 64, offset: 256)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !406, file: !44, line: 631, baseType: !300, size: 64, offset: 320)
!2800 = !DIDerivedType(tag: DW_TAG_member, scope: !406, file: !44, line: 639, baseType: !2801, size: 32, offset: 384)
!2801 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !406, file: !44, line: 639, size: 32, elements: !2802)
!2802 = !{!2803, !2805}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2801, file: !44, line: 640, baseType: !2804, size: 32)
!2804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2801, file: !44, line: 641, baseType: !7, size: 32)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !406, file: !44, line: 643, baseType: !489, size: 32, offset: 416)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !406, file: !44, line: 644, baseType: !507, size: 64, offset: 448)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !406, file: !44, line: 645, baseType: !511, size: 128, offset: 512)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !406, file: !44, line: 646, baseType: !511, size: 128, offset: 640)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !406, file: !44, line: 647, baseType: !511, size: 128, offset: 768)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !406, file: !44, line: 648, baseType: !209, offset: 896)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !406, file: !44, line: 649, baseType: !292, size: 16, offset: 896)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !406, file: !44, line: 650, baseType: !1329, size: 8, offset: 912)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !406, file: !44, line: 651, baseType: !1329, size: 8, offset: 920)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !406, file: !44, line: 652, baseType: !2567, size: 64, offset: 960)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !406, file: !44, line: 659, baseType: !300, size: 64, offset: 1024)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !406, file: !44, line: 660, baseType: !744, size: 256, offset: 1088)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !406, file: !44, line: 662, baseType: !300, size: 64, offset: 1344)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !406, file: !44, line: 663, baseType: !300, size: 64, offset: 1408)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !406, file: !44, line: 665, baseType: !615, size: 128, offset: 1472)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !406, file: !44, line: 666, baseType: !195, size: 128, offset: 1600)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !406, file: !44, line: 675, baseType: !195, size: 128, offset: 1728)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !406, file: !44, line: 676, baseType: !195, size: 128, offset: 1856)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !406, file: !44, line: 677, baseType: !195, size: 128, offset: 1984)
!2825 = !DIDerivedType(tag: DW_TAG_member, scope: !406, file: !44, line: 678, baseType: !2826, size: 128, offset: 2112)
!2826 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !406, file: !44, line: 678, size: 128, elements: !2827)
!2827 = !{!2828, !2829}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2826, file: !44, line: 679, baseType: !611, size: 64)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2826, file: !44, line: 680, baseType: !341, size: 128, align: 64)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !406, file: !44, line: 682, baseType: !750, size: 64, offset: 2240)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !406, file: !44, line: 683, baseType: !750, size: 64, offset: 2304)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !406, file: !44, line: 684, baseType: !724, size: 32, offset: 2368)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !406, file: !44, line: 685, baseType: !724, size: 32, offset: 2400)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !406, file: !44, line: 686, baseType: !724, size: 32, offset: 2432)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !406, file: !44, line: 688, baseType: !724, size: 32, offset: 2464)
!2836 = !DIDerivedType(tag: DW_TAG_member, scope: !406, file: !44, line: 690, baseType: !2837, size: 64, offset: 2496)
!2837 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !406, file: !44, line: 690, size: 64, elements: !2838)
!2838 = !{!2839, !3062}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2837, file: !44, line: 691, baseType: !2840, size: 64)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2842)
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2843)
!2843 = !{!2844, !2845, !2849, !2854, !2858, !2859, !2860, !2864, !2877, !2878, !2886, !2890, !2891, !2895, !2896, !2900, !2905, !2906, !2910, !2914, !3022, !3026, !3027, !3031, !3032, !3036, !3040, !3045, !3049, !3053, !3057, !3061}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2842, file: !44, line: 1823, baseType: !167, size: 64)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2842, file: !44, line: 1824, baseType: !2846, size: 64, offset: 64)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{!507, !328, !507, !174}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2842, file: !44, line: 1825, baseType: !2850, size: 64, offset: 128)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!281, !328, !250, !297, !2853}
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2842, file: !44, line: 1826, baseType: !2855, size: 64, offset: 192)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!281, !328, !165, !297, !2853}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2842, file: !44, line: 1827, baseType: !821, size: 64, offset: 256)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2842, file: !44, line: 1828, baseType: !821, size: 64, offset: 320)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2842, file: !44, line: 1829, baseType: !2861, size: 64, offset: 384)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!174, !824, !466}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2842, file: !44, line: 1830, baseType: !2865, size: 64, offset: 448)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{!174, !328, !2868}
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2870)
!2870 = !{!2871, !2876}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2869, file: !44, line: 1777, baseType: !2872, size: 64)
!2872 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2873)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{!174, !2868, !165, !174, !507, !397, !7}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2869, file: !44, line: 1778, baseType: !507, size: 64, offset: 64)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2842, file: !44, line: 1831, baseType: !2865, size: 64, offset: 512)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2842, file: !44, line: 1832, baseType: !2879, size: 64, offset: 576)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!2882, !328, !2884}
!2882 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2883, line: 52, baseType: !7)
!2883 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !595, line: 27, flags: DIFlagFwdDecl)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2842, file: !44, line: 1833, baseType: !2887, size: 64, offset: 640)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = !DISubroutineType(types: !2889)
!2889 = !{!285, !328, !7, !300}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2842, file: !44, line: 1834, baseType: !2887, size: 64, offset: 704)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2842, file: !44, line: 1835, baseType: !2892, size: 64, offset: 768)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{!174, !328, !958}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2842, file: !44, line: 1836, baseType: !300, size: 64, offset: 832)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2842, file: !44, line: 1837, baseType: !2897, size: 64, offset: 896)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{!174, !405, !328}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2842, file: !44, line: 1838, baseType: !2901, size: 64, offset: 960)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = !DISubroutineType(types: !2903)
!2903 = !{!174, !328, !2904}
!2904 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !184)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2842, file: !44, line: 1839, baseType: !2897, size: 64, offset: 1024)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2842, file: !44, line: 1840, baseType: !2907, size: 64, offset: 1088)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!174, !328, !507, !507, !174}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2842, file: !44, line: 1841, baseType: !2911, size: 64, offset: 1152)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{!174, !174, !328, !174}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2842, file: !44, line: 1842, baseType: !2915, size: 64, offset: 1216)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{!174, !328, !174, !2918}
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2920)
!2920 = !{!2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2952, !2953, !2954, !2967, !2998}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2919, file: !44, line: 1063, baseType: !2918, size: 64)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2919, file: !44, line: 1064, baseType: !195, size: 128, offset: 64)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2919, file: !44, line: 1065, baseType: !615, size: 128, offset: 192)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2919, file: !44, line: 1066, baseType: !195, size: 128, offset: 320)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2919, file: !44, line: 1069, baseType: !195, size: 128, offset: 448)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2919, file: !44, line: 1072, baseType: !2904, size: 64, offset: 576)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2919, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2919, file: !44, line: 1074, baseType: !403, size: 8, offset: 672)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2919, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2919, file: !44, line: 1076, baseType: !174, size: 32, offset: 736)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2919, file: !44, line: 1077, baseType: !1458, size: 128, offset: 768)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2919, file: !44, line: 1078, baseType: !328, size: 64, offset: 896)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2919, file: !44, line: 1079, baseType: !507, size: 64, offset: 960)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2919, file: !44, line: 1080, baseType: !507, size: 64, offset: 1024)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2919, file: !44, line: 1082, baseType: !2936, size: 64, offset: 1088)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2938)
!2938 = !{!2939, !2947, !2948, !2949, !2950, !2951}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2937, file: !44, line: 1315, baseType: !2940)
!2940 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2941, line: 20, baseType: !2942)
!2941 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2942 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2941, line: 11, elements: !2943)
!2943 = !{!2944}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2942, file: !2941, line: 12, baseType: !2945)
!2945 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !221, line: 33, baseType: !2946)
!2946 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !221, line: 31, elements: !223)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2937, file: !44, line: 1316, baseType: !174, size: 32)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2937, file: !44, line: 1317, baseType: !174, size: 32, offset: 32)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2937, file: !44, line: 1318, baseType: !2936, size: 64, offset: 64)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2937, file: !44, line: 1319, baseType: !328, size: 64, offset: 128)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2937, file: !44, line: 1320, baseType: !341, size: 128, align: 64, offset: 192)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2919, file: !44, line: 1084, baseType: !300, size: 64, offset: 1152)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2919, file: !44, line: 1085, baseType: !300, size: 64, offset: 1216)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2919, file: !44, line: 1087, baseType: !2955, size: 64, offset: 1280)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2957)
!2957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !2958)
!2958 = !{!2959, !2963}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2957, file: !44, line: 1012, baseType: !2960, size: 64)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{null, !2918, !2918}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2957, file: !44, line: 1013, baseType: !2964, size: 64, offset: 64)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{null, !2918}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2919, file: !44, line: 1088, baseType: !2968, size: 64, offset: 1344)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2970)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !2971)
!2971 = !{!2972, !2976, !2980, !2981, !2985, !2989, !2993, !2997}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2970, file: !44, line: 1017, baseType: !2973, size: 64)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!2904, !2904}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2970, file: !44, line: 1018, baseType: !2977, size: 64, offset: 64)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{null, !2904}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2970, file: !44, line: 1019, baseType: !2964, size: 64, offset: 128)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2970, file: !44, line: 1020, baseType: !2982, size: 64, offset: 192)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{!174, !2918, !174}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2970, file: !44, line: 1021, baseType: !2986, size: 64, offset: 256)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!466, !2918}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2970, file: !44, line: 1022, baseType: !2990, size: 64, offset: 320)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!174, !2918, !174, !199}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2970, file: !44, line: 1023, baseType: !2994, size: 64, offset: 384)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{null, !2918, !798}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2970, file: !44, line: 1024, baseType: !2986, size: 64, offset: 448)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2919, file: !44, line: 1097, baseType: !2999, size: 256, offset: 1408)
!2999 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2919, file: !44, line: 1089, size: 256, elements: !3000)
!3000 = !{!3001, !3010, !3016}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2999, file: !44, line: 1090, baseType: !3002, size: 256)
!3002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3003, line: 10, size: 256, elements: !3004)
!3003 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3004 = !{!3005, !3006, !3009}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3002, file: !3003, line: 11, baseType: !391, size: 32)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3002, file: !3003, line: 12, baseType: !3007, size: 64, offset: 64)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3003, line: 5, flags: DIFlagFwdDecl)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3002, file: !3003, line: 13, baseType: !195, size: 128, offset: 128)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2999, file: !44, line: 1091, baseType: !3011, size: 64)
!3011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3003, line: 17, size: 64, elements: !3012)
!3012 = !{!3013}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3011, file: !3003, line: 18, baseType: !3014, size: 64)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3003, line: 16, flags: DIFlagFwdDecl)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2999, file: !44, line: 1096, baseType: !3017, size: 192)
!3017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2999, file: !44, line: 1092, size: 192, elements: !3018)
!3018 = !{!3019, !3020, !3021}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3017, file: !44, line: 1093, baseType: !195, size: 128)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3017, file: !44, line: 1094, baseType: !174, size: 32, offset: 128)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3017, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2842, file: !44, line: 1843, baseType: !3023, size: 64, offset: 1280)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!281, !328, !697, !174, !297, !2853, !174}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2842, file: !44, line: 1844, baseType: !1078, size: 64, offset: 1344)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2842, file: !44, line: 1845, baseType: !3028, size: 64, offset: 1408)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{!174, !174}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2842, file: !44, line: 1846, baseType: !2915, size: 64, offset: 1472)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2842, file: !44, line: 1847, baseType: !3033, size: 64, offset: 1536)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{!281, !2075, !328, !2853, !297, !7}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2842, file: !44, line: 1848, baseType: !3037, size: 64, offset: 1600)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DISubroutineType(types: !3039)
!3039 = !{!281, !328, !2853, !2075, !297, !7}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2842, file: !44, line: 1849, baseType: !3041, size: 64, offset: 1664)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!174, !328, !285, !3044, !798}
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2842, file: !44, line: 1850, baseType: !3046, size: 64, offset: 1728)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{!285, !328, !174, !507, !507}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2842, file: !44, line: 1852, baseType: !3050, size: 64, offset: 1792)
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!3051 = !DISubroutineType(types: !3052)
!3052 = !{null, !687, !328}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2842, file: !44, line: 1856, baseType: !3054, size: 64, offset: 1856)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{!281, !328, !507, !328, !507, !297, !7}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2842, file: !44, line: 1858, baseType: !3058, size: 64, offset: 1920)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!507, !328, !507, !328, !507, !507, !7}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2842, file: !44, line: 1861, baseType: !2907, size: 64, offset: 1984)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2837, file: !44, line: 692, baseType: !640, size: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !406, file: !44, line: 694, baseType: !3064, size: 64, offset: 2560)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3066)
!3066 = !{!3067, !3068, !3069, !3070}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3065, file: !44, line: 1101, baseType: !209)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3065, file: !44, line: 1102, baseType: !195, size: 128)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3065, file: !44, line: 1103, baseType: !195, size: 128, offset: 128)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3065, file: !44, line: 1104, baseType: !195, size: 128, offset: 256)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !406, file: !44, line: 695, baseType: !711, size: 1216, align: 64, offset: 2624)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !406, file: !44, line: 696, baseType: !195, size: 128, offset: 3840)
!3073 = !DIDerivedType(tag: DW_TAG_member, scope: !406, file: !44, line: 697, baseType: !3074, size: 64, offset: 3968)
!3074 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !406, file: !44, line: 697, size: 64, elements: !3075)
!3075 = !{!3076, !3077, !3078, !3081, !3082}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3074, file: !44, line: 698, baseType: !2075, size: 64)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3074, file: !44, line: 699, baseType: !2592, size: 64)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3074, file: !44, line: 700, baseType: !3079, size: 64)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3074, file: !44, line: 701, baseType: !250, size: 64)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3074, file: !44, line: 702, baseType: !7, size: 32)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !406, file: !44, line: 705, baseType: !393, size: 32, offset: 4032)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !406, file: !44, line: 708, baseType: !393, size: 32, offset: 4064)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !406, file: !44, line: 709, baseType: !2674, size: 64, offset: 4096)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !406, file: !44, line: 720, baseType: !184, size: 64, offset: 4160)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !359, file: !356, line: 98, baseType: !3088, size: 256, offset: 448)
!3088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !403, size: 256, elements: !2207)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !359, file: !356, line: 101, baseType: !3090, size: 32, offset: 704)
!3090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3091, line: 25, size: 32, elements: !3092)
!3091 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3092 = !{!3093}
!3093 = !DIDerivedType(tag: DW_TAG_member, scope: !3090, file: !3091, line: 26, baseType: !3094, size: 32)
!3094 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3090, file: !3091, line: 26, size: 32, elements: !3095)
!3095 = !{!3096}
!3096 = !DIDerivedType(tag: DW_TAG_member, scope: !3094, file: !3091, line: 30, baseType: !3097, size: 32)
!3097 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3094, file: !3091, line: 30, size: 32, elements: !3098)
!3098 = !{!3099, !3100}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3097, file: !3091, line: 31, baseType: !209)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3097, file: !3091, line: 32, baseType: !174, size: 32)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !359, file: !356, line: 102, baseType: !2691, size: 64, offset: 768)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !359, file: !356, line: 103, baseType: !575, size: 64, offset: 832)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !359, file: !356, line: 104, baseType: !300, size: 64, offset: 896)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !359, file: !356, line: 105, baseType: !184, size: 64, offset: 960)
!3105 = !DIDerivedType(tag: DW_TAG_member, scope: !359, file: !356, line: 107, baseType: !3106, size: 128, offset: 1024)
!3106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !359, file: !356, line: 107, size: 128, elements: !3107)
!3107 = !{!3108, !3109}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3106, file: !356, line: 108, baseType: !195, size: 128)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3106, file: !356, line: 109, baseType: !3110, size: 64)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !359, file: !356, line: 111, baseType: !195, size: 128, offset: 1152)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !359, file: !356, line: 112, baseType: !195, size: 128, offset: 1280)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !359, file: !356, line: 120, baseType: !3114, size: 128, offset: 1408)
!3114 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !359, file: !356, line: 116, size: 128, elements: !3115)
!3115 = !{!3116, !3117, !3118}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3114, file: !356, line: 117, baseType: !615, size: 128)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3114, file: !356, line: 118, baseType: !373, size: 128)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3114, file: !356, line: 119, baseType: !341, size: 128, align: 64)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !329, file: !44, line: 922, baseType: !405, size: 64, offset: 256)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !329, file: !44, line: 923, baseType: !2840, size: 64, offset: 320)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !329, file: !44, line: 929, baseType: !209, offset: 384)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !329, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !329, file: !44, line: 931, baseType: !748, size: 64, offset: 448)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !329, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !329, file: !44, line: 933, baseType: !2687, size: 32, offset: 544)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !329, file: !44, line: 934, baseType: !1150, size: 192, offset: 576)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !329, file: !44, line: 935, baseType: !507, size: 64, offset: 768)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !329, file: !44, line: 936, baseType: !3129, size: 192, offset: 832)
!3129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3130)
!3130 = !{!3131, !3132, !3133, !3134, !3135, !3136}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3129, file: !44, line: 886, baseType: !2940)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3129, file: !44, line: 887, baseType: !1448, size: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3129, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3129, file: !44, line: 889, baseType: !411, size: 32, offset: 96)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3129, file: !44, line: 889, baseType: !411, size: 32, offset: 128)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3129, file: !44, line: 890, baseType: !174, size: 32, offset: 160)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !329, file: !44, line: 937, baseType: !1524, size: 64, offset: 1024)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !329, file: !44, line: 938, baseType: !3139, size: 256, offset: 1088)
!3139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3140)
!3140 = !{!3141, !3142, !3143, !3144, !3145, !3146}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3139, file: !44, line: 897, baseType: !300, size: 64)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3139, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3139, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3139, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3139, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3139, file: !44, line: 904, baseType: !507, size: 64, offset: 192)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !329, file: !44, line: 940, baseType: !397, size: 64, offset: 1344)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !329, file: !44, line: 945, baseType: !184, size: 64, offset: 1408)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !329, file: !44, line: 949, baseType: !195, size: 128, offset: 1472)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !329, file: !44, line: 950, baseType: !195, size: 128, offset: 1600)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !329, file: !44, line: 952, baseType: !710, size: 64, offset: 1728)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !329, file: !44, line: 953, baseType: !886, size: 32, offset: 1792)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !329, file: !44, line: 954, baseType: !886, size: 32, offset: 1824)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !319, file: !275, line: 174, baseType: !325, size: 64, offset: 320)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !319, file: !275, line: 176, baseType: !3156, size: 64, offset: 384)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!174, !328, !202, !318, !958}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !307, file: !275, line: 90, baseType: !302, size: 64, offset: 192)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !307, file: !275, line: 91, baseType: !3161, size: 64, offset: 256)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !265, file: !191, line: 143, baseType: !3163, size: 64, offset: 256)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = !DISubroutineType(types: !3165)
!3165 = !{!3166, !202}
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3168)
!3168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3169)
!3169 = !{!3170, !3171, !3175, !3179, !3185, !3189}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3168, file: !61, line: 40, baseType: !60, size: 32)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3168, file: !61, line: 41, baseType: !3172, size: 64, offset: 64)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = !DISubroutineType(types: !3174)
!3174 = !{!466}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3168, file: !61, line: 42, baseType: !3176, size: 64, offset: 128)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DISubroutineType(types: !3178)
!3178 = !{!184}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3168, file: !61, line: 43, baseType: !3180, size: 64, offset: 192)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{!2104, !3183}
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3168, file: !61, line: 44, baseType: !3186, size: 64, offset: 256)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!2104}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3168, file: !61, line: 45, baseType: !444, size: 64, offset: 320)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !265, file: !191, line: 144, baseType: !3191, size: 64, offset: 320)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!2104, !202}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !265, file: !191, line: 145, baseType: !3195, size: 64, offset: 384)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{null, !202, !3198, !3199}
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !190, file: !191, line: 70, baseType: !3201, size: 64, offset: 384)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !595, line: 123, size: 1024, elements: !3203)
!3203 = !{!3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3332, !3333, !3334, !3335, !3336}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3202, file: !595, line: 124, baseType: !724, size: 32)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3202, file: !595, line: 125, baseType: !724, size: 32, offset: 32)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3202, file: !595, line: 135, baseType: !3201, size: 64, offset: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3202, file: !595, line: 136, baseType: !165, size: 64, offset: 128)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3202, file: !595, line: 138, baseType: !737, size: 192, align: 64, offset: 192)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3202, file: !595, line: 140, baseType: !2104, size: 64, offset: 384)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3202, file: !595, line: 141, baseType: !7, size: 32, offset: 448)
!3211 = !DIDerivedType(tag: DW_TAG_member, scope: !3202, file: !595, line: 142, baseType: !3212, size: 256, offset: 512)
!3212 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3202, file: !595, line: 142, size: 256, elements: !3213)
!3213 = !{!3214, !3260, !3264}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3212, file: !595, line: 143, baseType: !3215, size: 192)
!3215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !595, line: 91, size: 192, elements: !3216)
!3216 = !{!3217, !3218, !3219}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3215, file: !595, line: 92, baseType: !300, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3215, file: !595, line: 94, baseType: !733, size: 64, offset: 64)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3215, file: !595, line: 100, baseType: !3220, size: 64, offset: 128)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !595, line: 180, size: 704, elements: !3222)
!3222 = !{!3223, !3224, !3225, !3232, !3233, !3234, !3258, !3259}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3221, file: !595, line: 182, baseType: !3201, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3221, file: !595, line: 183, baseType: !7, size: 32, offset: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3221, file: !595, line: 186, baseType: !3226, size: 192, offset: 128)
!3226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3227, line: 19, size: 192, elements: !3228)
!3227 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3228 = !{!3229, !3230, !3231}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3226, file: !3227, line: 20, baseType: !715, size: 128)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3226, file: !3227, line: 21, baseType: !7, size: 32, offset: 128)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3226, file: !3227, line: 22, baseType: !7, size: 32, offset: 160)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3221, file: !595, line: 187, baseType: !391, size: 32, offset: 320)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3221, file: !595, line: 188, baseType: !391, size: 32, offset: 352)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3221, file: !595, line: 189, baseType: !3235, size: 64, offset: 384)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !595, line: 168, size: 320, elements: !3237)
!3237 = !{!3238, !3242, !3246, !3250, !3254}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3236, file: !595, line: 169, baseType: !3239, size: 64)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{!174, !687, !3220}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3236, file: !595, line: 171, baseType: !3243, size: 64, offset: 64)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = !DISubroutineType(types: !3245)
!3245 = !{!174, !3201, !165, !291}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3236, file: !595, line: 173, baseType: !3247, size: 64, offset: 128)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{!174, !3201}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3236, file: !595, line: 174, baseType: !3251, size: 64, offset: 192)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = !DISubroutineType(types: !3253)
!3253 = !{!174, !3201, !3201, !165}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3236, file: !595, line: 176, baseType: !3255, size: 64, offset: 256)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = !DISubroutineType(types: !3257)
!3257 = !{!174, !687, !3201, !3220}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3221, file: !595, line: 192, baseType: !195, size: 128, offset: 448)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3221, file: !595, line: 194, baseType: !1458, size: 128, offset: 576)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3212, file: !595, line: 144, baseType: !3261, size: 64)
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !595, line: 103, size: 64, elements: !3262)
!3262 = !{!3263}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3261, file: !595, line: 104, baseType: !3201, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3212, file: !595, line: 145, baseType: !3265, size: 256)
!3265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !595, line: 107, size: 256, elements: !3266)
!3266 = !{!3267, !3327, !3330, !3331}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3265, file: !595, line: 108, baseType: !3268, size: 64)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3270)
!3270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !595, line: 217, size: 768, elements: !3271)
!3271 = !{!3272, !3292, !3296, !3300, !3304, !3308, !3312, !3316, !3317, !3318, !3319, !3323}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3270, file: !595, line: 222, baseType: !3273, size: 64)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!174, !3276}
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !595, line: 197, size: 1088, elements: !3278)
!3278 = !{!3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3277, file: !595, line: 199, baseType: !3201, size: 64)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3277, file: !595, line: 200, baseType: !328, size: 64, offset: 64)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3277, file: !595, line: 201, baseType: !687, size: 64, offset: 128)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3277, file: !595, line: 202, baseType: !184, size: 64, offset: 192)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3277, file: !595, line: 205, baseType: !1150, size: 192, offset: 256)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3277, file: !595, line: 206, baseType: !1150, size: 192, offset: 448)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3277, file: !595, line: 207, baseType: !174, size: 32, offset: 640)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3277, file: !595, line: 208, baseType: !195, size: 128, offset: 704)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3277, file: !595, line: 209, baseType: !250, size: 64, offset: 832)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3277, file: !595, line: 211, baseType: !297, size: 64, offset: 896)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3277, file: !595, line: 212, baseType: !466, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3277, file: !595, line: 213, baseType: !466, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3277, file: !595, line: 214, baseType: !986, size: 64, offset: 1024)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3270, file: !595, line: 223, baseType: !3293, size: 64, offset: 64)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{null, !3276}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3270, file: !595, line: 236, baseType: !3297, size: 64, offset: 128)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{!174, !687, !184}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3270, file: !595, line: 238, baseType: !3301, size: 64, offset: 192)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!184, !687, !2853}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3270, file: !595, line: 239, baseType: !3305, size: 64, offset: 256)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!184, !687, !184, !2853}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3270, file: !595, line: 240, baseType: !3309, size: 64, offset: 320)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{null, !687, !184}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3270, file: !595, line: 242, baseType: !3313, size: 64, offset: 384)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{!281, !3276, !250, !297, !507}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3270, file: !595, line: 252, baseType: !297, size: 64, offset: 448)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3270, file: !595, line: 259, baseType: !466, size: 8, offset: 512)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3270, file: !595, line: 260, baseType: !3313, size: 64, offset: 576)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3270, file: !595, line: 263, baseType: !3320, size: 64, offset: 640)
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{!2882, !3276, !2884}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3270, file: !595, line: 266, baseType: !3324, size: 64, offset: 704)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!174, !3276, !958}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3265, file: !595, line: 109, baseType: !3328, size: 64, offset: 64)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !595, line: 31, flags: DIFlagFwdDecl)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3265, file: !595, line: 110, baseType: !507, size: 64, offset: 128)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3265, file: !595, line: 111, baseType: !3201, size: 64, offset: 192)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3202, file: !595, line: 148, baseType: !184, size: 64, offset: 768)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3202, file: !595, line: 154, baseType: !397, size: 64, offset: 832)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3202, file: !595, line: 156, baseType: !292, size: 16, offset: 896)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3202, file: !595, line: 157, baseType: !291, size: 16, offset: 912)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3202, file: !595, line: 158, baseType: !3337, size: 64, offset: 960)
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !595, line: 32, flags: DIFlagFwdDecl)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !190, file: !191, line: 71, baseType: !3340, size: 32, offset: 448)
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3341, line: 19, size: 32, elements: !3342)
!3341 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3342 = !{!3343}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3340, file: !3341, line: 20, baseType: !1207, size: 32)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !190, file: !191, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !190, file: !191, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !190, file: !191, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !190, file: !191, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !190, file: !191, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !187, file: !73, line: 463, baseType: !186, size: 64, offset: 512)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !187, file: !73, line: 465, baseType: !3351, size: 64, offset: 576)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !187, file: !73, line: 467, baseType: !165, size: 64, offset: 640)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !187, file: !73, line: 468, baseType: !3355, size: 64, offset: 704)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3357)
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3358)
!3358 = !{!3359, !3360, !3361, !3365, !3370, !3374}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3357, file: !73, line: 88, baseType: !165, size: 64)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3357, file: !73, line: 89, baseType: !304, size: 64, offset: 64)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3357, file: !73, line: 90, baseType: !3362, size: 64, offset: 128)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{!174, !186, !245}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3357, file: !73, line: 91, baseType: !3366, size: 64, offset: 192)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!250, !186, !3369, !3198, !3199}
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3357, file: !73, line: 93, baseType: !3371, size: 64, offset: 256)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{null, !186}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3357, file: !73, line: 95, baseType: !3375, size: 64, offset: 320)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3377)
!3377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3378)
!3378 = !{!3379, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3377, file: !80, line: 279, baseType: !3380, size: 64)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = !DISubroutineType(types: !3382)
!3382 = !{!174, !186}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3377, file: !80, line: 280, baseType: !3371, size: 64, offset: 64)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3377, file: !80, line: 281, baseType: !3380, size: 64, offset: 128)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3377, file: !80, line: 282, baseType: !3380, size: 64, offset: 192)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3377, file: !80, line: 283, baseType: !3380, size: 64, offset: 256)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3377, file: !80, line: 284, baseType: !3380, size: 64, offset: 320)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3377, file: !80, line: 285, baseType: !3380, size: 64, offset: 384)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3377, file: !80, line: 286, baseType: !3380, size: 64, offset: 448)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3377, file: !80, line: 287, baseType: !3380, size: 64, offset: 512)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3377, file: !80, line: 288, baseType: !3380, size: 64, offset: 576)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3377, file: !80, line: 289, baseType: !3380, size: 64, offset: 640)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3377, file: !80, line: 290, baseType: !3380, size: 64, offset: 704)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3377, file: !80, line: 291, baseType: !3380, size: 64, offset: 768)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3377, file: !80, line: 292, baseType: !3380, size: 64, offset: 832)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3377, file: !80, line: 293, baseType: !3380, size: 64, offset: 896)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3377, file: !80, line: 294, baseType: !3380, size: 64, offset: 960)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3377, file: !80, line: 295, baseType: !3380, size: 64, offset: 1024)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3377, file: !80, line: 296, baseType: !3380, size: 64, offset: 1088)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3377, file: !80, line: 297, baseType: !3380, size: 64, offset: 1152)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3377, file: !80, line: 298, baseType: !3380, size: 64, offset: 1216)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3377, file: !80, line: 299, baseType: !3380, size: 64, offset: 1280)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3377, file: !80, line: 300, baseType: !3380, size: 64, offset: 1344)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3377, file: !80, line: 301, baseType: !3380, size: 64, offset: 1408)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !187, file: !73, line: 470, baseType: !3406, size: 64, offset: 768)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3408, line: 82, size: 1408, elements: !3409)
!3408 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3409 = !{!3410, !3411, !3412, !3413, !3414, !3415, !3416, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3491, !3494, !3495}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3407, file: !3408, line: 83, baseType: !165, size: 64)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3407, file: !3408, line: 84, baseType: !165, size: 64, offset: 64)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3407, file: !3408, line: 85, baseType: !186, size: 64, offset: 128)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3407, file: !3408, line: 86, baseType: !304, size: 64, offset: 192)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3407, file: !3408, line: 87, baseType: !304, size: 64, offset: 256)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3407, file: !3408, line: 88, baseType: !304, size: 64, offset: 320)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3407, file: !3408, line: 90, baseType: !3417, size: 64, offset: 384)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DISubroutineType(types: !3419)
!3419 = !{!174, !186, !3420}
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3422)
!3422 = !{!3423, !3424, !3425, !3426, !3427, !3428, !3429, !3442, !3455, !3456, !3457, !3458, !3459, !3467, !3468, !3469, !3470, !3471, !3472}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3421, file: !67, line: 96, baseType: !165, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3421, file: !67, line: 97, baseType: !3406, size: 64, offset: 64)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3421, file: !67, line: 99, baseType: !167, size: 64, offset: 128)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3421, file: !67, line: 100, baseType: !165, size: 64, offset: 192)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3421, file: !67, line: 102, baseType: !466, size: 8, offset: 256)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3421, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3421, file: !67, line: 105, baseType: !3430, size: 64, offset: 320)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3432)
!3432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3433, line: 262, size: 1600, elements: !3434)
!3433 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3434 = !{!3435, !3436, !3437, !3441}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3432, file: !3433, line: 263, baseType: !2677, size: 256)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3432, file: !3433, line: 264, baseType: !2677, size: 256, offset: 256)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3432, file: !3433, line: 265, baseType: !3438, size: 1024, offset: 512)
!3438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 1024, elements: !3439)
!3439 = !{!3440}
!3440 = !DISubrange(count: 128)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3432, file: !3433, line: 266, baseType: !2104, size: 64, offset: 1536)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3421, file: !67, line: 106, baseType: !3443, size: 64, offset: 384)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3445)
!3445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3433, line: 210, size: 256, elements: !3446)
!3446 = !{!3447, !3451, !3453, !3454}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3445, file: !3433, line: 211, baseType: !3448, size: 72)
!3448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1330, size: 72, elements: !3449)
!3449 = !{!3450}
!3450 = !DISubrange(count: 9)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3445, file: !3433, line: 212, baseType: !3452, size: 64, offset: 128)
!3452 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3433, line: 14, baseType: !300)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3445, file: !3433, line: 213, baseType: !393, size: 32, offset: 192)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3445, file: !3433, line: 214, baseType: !393, size: 32, offset: 224)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3421, file: !67, line: 108, baseType: !3380, size: 64, offset: 448)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3421, file: !67, line: 109, baseType: !3371, size: 64, offset: 512)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3421, file: !67, line: 110, baseType: !3380, size: 64, offset: 576)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3421, file: !67, line: 111, baseType: !3371, size: 64, offset: 640)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3421, file: !67, line: 112, baseType: !3460, size: 64, offset: 704)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{!174, !186, !3463}
!3463 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3464)
!3464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3465)
!3465 = !{!3466}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3464, file: !80, line: 51, baseType: !174, size: 32)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3421, file: !67, line: 113, baseType: !3380, size: 64, offset: 768)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3421, file: !67, line: 114, baseType: !304, size: 64, offset: 832)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3421, file: !67, line: 115, baseType: !304, size: 64, offset: 896)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3421, file: !67, line: 117, baseType: !3375, size: 64, offset: 960)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3421, file: !67, line: 118, baseType: !3371, size: 64, offset: 1024)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3421, file: !67, line: 120, baseType: !3473, size: 64, offset: 1088)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3407, file: !3408, line: 91, baseType: !3362, size: 64, offset: 448)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3407, file: !3408, line: 92, baseType: !3380, size: 64, offset: 512)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3407, file: !3408, line: 93, baseType: !3371, size: 64, offset: 576)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3407, file: !3408, line: 94, baseType: !3380, size: 64, offset: 640)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3407, file: !3408, line: 95, baseType: !3371, size: 64, offset: 704)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3407, file: !3408, line: 97, baseType: !3380, size: 64, offset: 768)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3407, file: !3408, line: 98, baseType: !3380, size: 64, offset: 832)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3407, file: !3408, line: 100, baseType: !3460, size: 64, offset: 896)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3407, file: !3408, line: 101, baseType: !3380, size: 64, offset: 960)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3407, file: !3408, line: 103, baseType: !3380, size: 64, offset: 1024)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3407, file: !3408, line: 105, baseType: !3380, size: 64, offset: 1088)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3407, file: !3408, line: 107, baseType: !3375, size: 64, offset: 1152)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3407, file: !3408, line: 109, baseType: !3488, size: 64, offset: 1216)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3490)
!3490 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3408, line: 109, flags: DIFlagFwdDecl)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3407, file: !3408, line: 111, baseType: !3492, size: 64, offset: 1280)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3408, line: 111, flags: DIFlagFwdDecl)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3407, file: !3408, line: 112, baseType: !621, offset: 1344)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3407, file: !3408, line: 114, baseType: !466, size: 8, offset: 1344)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !187, file: !73, line: 471, baseType: !3420, size: 64, offset: 832)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !187, file: !73, line: 473, baseType: !184, size: 64, offset: 896)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !187, file: !73, line: 475, baseType: !184, size: 64, offset: 960)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !187, file: !73, line: 480, baseType: !1150, size: 192, offset: 1024)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !187, file: !73, line: 484, baseType: !3501, size: 576, offset: 1216)
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3502)
!3502 = !{!3503, !3504, !3505, !3506, !3507, !3508}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3501, file: !73, line: 362, baseType: !195, size: 128)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3501, file: !73, line: 363, baseType: !195, size: 128, offset: 128)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3501, file: !73, line: 364, baseType: !195, size: 128, offset: 256)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3501, file: !73, line: 365, baseType: !195, size: 128, offset: 384)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3501, file: !73, line: 366, baseType: !466, size: 8, offset: 512)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3501, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !187, file: !73, line: 485, baseType: !3510, size: 2304, offset: 1792)
!3510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3511)
!3511 = !{!3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3607, !3611}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3510, file: !80, line: 566, baseType: !3463, size: 32)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3510, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3510, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3510, file: !80, line: 569, baseType: !466, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3510, file: !80, line: 570, baseType: !466, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3510, file: !80, line: 571, baseType: !466, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3510, file: !80, line: 572, baseType: !466, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3510, file: !80, line: 573, baseType: !466, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3510, file: !80, line: 574, baseType: !466, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3510, file: !80, line: 575, baseType: !466, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3510, file: !80, line: 576, baseType: !466, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3510, file: !80, line: 577, baseType: !391, size: 32, offset: 64)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3510, file: !80, line: 578, baseType: !209, offset: 96)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3510, file: !80, line: 580, baseType: !195, size: 128, offset: 128)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3510, file: !80, line: 581, baseType: !1479, size: 192, offset: 256)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3510, file: !80, line: 582, baseType: !3528, size: 64, offset: 448)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3530, line: 43, size: 1472, elements: !3531)
!3530 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3531 = !{!3532, !3533, !3534, !3535, !3536, !3539, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3529, file: !3530, line: 44, baseType: !165, size: 64)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3529, file: !3530, line: 45, baseType: !174, size: 32, offset: 64)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3529, file: !3530, line: 46, baseType: !195, size: 128, offset: 128)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3529, file: !3530, line: 47, baseType: !209, offset: 256)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3529, file: !3530, line: 48, baseType: !3537, size: 64, offset: 256)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3529, file: !3530, line: 49, baseType: !3540, size: 320, offset: 320)
!3540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3541, line: 11, size: 320, elements: !3542)
!3541 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3542 = !{!3543, !3544, !3545, !3550}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3540, file: !3541, line: 16, baseType: !615, size: 128)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3540, file: !3541, line: 17, baseType: !300, size: 64, offset: 128)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3540, file: !3541, line: 18, baseType: !3546, size: 64, offset: 192)
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3547 = !DISubroutineType(types: !3548)
!3548 = !{null, !3549}
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3540, file: !3541, line: 19, baseType: !391, size: 32, offset: 256)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3529, file: !3530, line: 50, baseType: !300, size: 64, offset: 640)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3529, file: !3530, line: 51, baseType: !1277, size: 64, offset: 704)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3529, file: !3530, line: 52, baseType: !1277, size: 64, offset: 768)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3529, file: !3530, line: 53, baseType: !1277, size: 64, offset: 832)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3529, file: !3530, line: 54, baseType: !1277, size: 64, offset: 896)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3529, file: !3530, line: 55, baseType: !1277, size: 64, offset: 960)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3529, file: !3530, line: 56, baseType: !300, size: 64, offset: 1024)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3529, file: !3530, line: 57, baseType: !300, size: 64, offset: 1088)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3529, file: !3530, line: 58, baseType: !300, size: 64, offset: 1152)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3529, file: !3530, line: 59, baseType: !300, size: 64, offset: 1216)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3529, file: !3530, line: 60, baseType: !300, size: 64, offset: 1280)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3529, file: !3530, line: 61, baseType: !186, size: 64, offset: 1344)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3529, file: !3530, line: 62, baseType: !466, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3529, file: !3530, line: 63, baseType: !466, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3510, file: !80, line: 583, baseType: !466, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3510, file: !80, line: 584, baseType: !466, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3510, file: !80, line: 585, baseType: !466, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3510, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3510, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3510, file: !80, line: 592, baseType: !1269, size: 512, offset: 576)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3510, file: !80, line: 593, baseType: !397, size: 64, offset: 1088)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3510, file: !80, line: 594, baseType: !1934, size: 256, offset: 1152)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3510, file: !80, line: 595, baseType: !1458, size: 128, offset: 1408)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3510, file: !80, line: 596, baseType: !3537, size: 64, offset: 1536)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3510, file: !80, line: 597, baseType: !724, size: 32, offset: 1600)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3510, file: !80, line: 598, baseType: !724, size: 32, offset: 1632)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3510, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3510, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3510, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3510, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3510, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3510, file: !80, line: 604, baseType: !466, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3510, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3510, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3510, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3510, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3510, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3510, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3510, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3510, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3510, file: !80, line: 613, baseType: !174, size: 32, offset: 1792)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3510, file: !80, line: 614, baseType: !174, size: 32, offset: 1824)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3510, file: !80, line: 615, baseType: !397, size: 64, offset: 1856)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3510, file: !80, line: 616, baseType: !397, size: 64, offset: 1920)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3510, file: !80, line: 617, baseType: !397, size: 64, offset: 1984)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3510, file: !80, line: 618, baseType: !397, size: 64, offset: 2048)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3510, file: !80, line: 620, baseType: !3598, size: 64, offset: 2112)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3600)
!3600 = !{!3601, !3602, !3603, !3604}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3599, file: !80, line: 537, baseType: !209)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3599, file: !80, line: 538, baseType: !7, size: 32)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3599, file: !80, line: 540, baseType: !195, size: 128, offset: 64)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3599, file: !80, line: 543, baseType: !3605, size: 64, offset: 192)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3510, file: !80, line: 621, baseType: !3608, size: 64, offset: 2176)
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = !DISubroutineType(types: !3610)
!3610 = !{null, !186, !1421}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3510, file: !80, line: 622, baseType: !3612, size: 64, offset: 2240)
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3613, size: 64)
!3613 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !187, file: !73, line: 486, baseType: !3615, size: 64, offset: 4096)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3617)
!3617 = !{!3618, !3619, !3620, !3624, !3625, !3626}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3616, file: !80, line: 643, baseType: !3377, size: 1472)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3616, file: !80, line: 644, baseType: !3380, size: 64, offset: 1472)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3616, file: !80, line: 645, baseType: !3621, size: 64, offset: 1536)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = !DISubroutineType(types: !3623)
!3623 = !{null, !186, !466}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3616, file: !80, line: 646, baseType: !3380, size: 64, offset: 1600)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3616, file: !80, line: 647, baseType: !3371, size: 64, offset: 1664)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3616, file: !80, line: 648, baseType: !3371, size: 64, offset: 1728)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !187, file: !73, line: 493, baseType: !3628, size: 64, offset: 4160)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !73, line: 493, flags: DIFlagFwdDecl)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !187, file: !73, line: 499, baseType: !195, size: 128, offset: 4224)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !187, file: !73, line: 502, baseType: !3632, size: 64, offset: 4352)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3634)
!3634 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !187, file: !73, line: 504, baseType: !3636, size: 64, offset: 4416)
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !187, file: !73, line: 505, baseType: !397, size: 64, offset: 4480)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !187, file: !73, line: 510, baseType: !397, size: 64, offset: 4544)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !187, file: !73, line: 511, baseType: !3640, size: 64, offset: 4608)
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3642)
!3642 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !187, file: !73, line: 513, baseType: !3644, size: 64, offset: 4672)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3646)
!3646 = !{!3647, !3648}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3645, file: !73, line: 293, baseType: !7, size: 32)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3645, file: !73, line: 294, baseType: !300, size: 64, offset: 64)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !187, file: !73, line: 515, baseType: !195, size: 128, offset: 4736)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !187, file: !73, line: 526, baseType: !3651, offset: 4864)
!3651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3652, line: 5, elements: !223)
!3652 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !187, file: !73, line: 528, baseType: !3654, size: 64, offset: 4864)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3656, line: 14, flags: DIFlagFwdDecl)
!3656 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !187, file: !73, line: 529, baseType: !3658, size: 64, offset: 4928)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3660, line: 17, size: 192, elements: !3661)
!3660 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3661 = !{!3662, !3663, !3746}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3659, file: !3660, line: 18, baseType: !3658, size: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3659, file: !3660, line: 19, baseType: !3664, size: 64, offset: 64)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3666)
!3666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3660, line: 110, size: 1152, elements: !3667)
!3667 = !{!3668, !3672, !3676, !3682, !3688, !3692, !3696, !3701, !3705, !3706, !3710, !3714, !3718, !3729, !3730, !3731, !3732, !3742}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3666, file: !3660, line: 111, baseType: !3669, size: 64)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!3658, !3658}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3666, file: !3660, line: 112, baseType: !3673, size: 64, offset: 64)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{null, !3658}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3666, file: !3660, line: 113, baseType: !3677, size: 64, offset: 128)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{!466, !3680}
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3659)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3666, file: !3660, line: 114, baseType: !3683, size: 64, offset: 192)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{!2104, !3680, !3686}
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !187)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3666, file: !3660, line: 116, baseType: !3689, size: 64, offset: 256)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{!466, !3680, !165}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3666, file: !3660, line: 118, baseType: !3693, size: 64, offset: 320)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DISubroutineType(types: !3695)
!3695 = !{!174, !3680, !165, !7, !184, !297}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3666, file: !3660, line: 123, baseType: !3697, size: 64, offset: 384)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!174, !3680, !165, !3700, !297}
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3666, file: !3660, line: 126, baseType: !3702, size: 64, offset: 448)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{!165, !3680}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3666, file: !3660, line: 127, baseType: !3702, size: 64, offset: 512)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3666, file: !3660, line: 128, baseType: !3707, size: 64, offset: 576)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{!3658, !3680}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3666, file: !3660, line: 130, baseType: !3711, size: 64, offset: 640)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{!3658, !3680, !3658}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3666, file: !3660, line: 133, baseType: !3715, size: 64, offset: 704)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!3658, !3680, !165}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3666, file: !3660, line: 135, baseType: !3719, size: 64, offset: 768)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!174, !3680, !165, !165, !7, !7, !3722}
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3660, line: 43, size: 640, elements: !3724)
!3724 = !{!3725, !3726, !3727}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3723, file: !3660, line: 44, baseType: !3658, size: 64)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3723, file: !3660, line: 45, baseType: !7, size: 32, offset: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3723, file: !3660, line: 46, baseType: !3728, size: 512, offset: 128)
!3728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 512, elements: !1307)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3666, file: !3660, line: 140, baseType: !3711, size: 64, offset: 832)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3666, file: !3660, line: 143, baseType: !3707, size: 64, offset: 896)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3666, file: !3660, line: 145, baseType: !3669, size: 64, offset: 960)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3666, file: !3660, line: 146, baseType: !3733, size: 64, offset: 1024)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!174, !3680, !3736}
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3660, line: 29, size: 128, elements: !3738)
!3738 = !{!3739, !3740, !3741}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3737, file: !3660, line: 30, baseType: !7, size: 32)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3737, file: !3660, line: 31, baseType: !7, size: 32, offset: 32)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3737, file: !3660, line: 32, baseType: !3680, size: 64, offset: 64)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3666, file: !3660, line: 148, baseType: !3743, size: 64, offset: 1088)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{!174, !3680, !186}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3659, file: !3660, line: 20, baseType: !186, size: 64, offset: 128)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !187, file: !73, line: 534, baseType: !489, size: 32, offset: 4992)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !187, file: !73, line: 535, baseType: !391, size: 32, offset: 5024)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !187, file: !73, line: 537, baseType: !209, offset: 5056)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !187, file: !73, line: 538, baseType: !195, size: 128, offset: 5056)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !187, file: !73, line: 540, baseType: !3752, size: 64, offset: 5184)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3754, line: 54, size: 960, elements: !3755)
!3754 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3755 = !{!3756, !3757, !3758, !3759, !3760, !3761, !3762, !3766, !3770, !3771, !3772, !3773, !3777, !3781, !3782}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3753, file: !3754, line: 55, baseType: !165, size: 64)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3753, file: !3754, line: 56, baseType: !167, size: 64, offset: 64)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3753, file: !3754, line: 58, baseType: !304, size: 64, offset: 128)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3753, file: !3754, line: 59, baseType: !304, size: 64, offset: 192)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3753, file: !3754, line: 60, baseType: !202, size: 64, offset: 256)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3753, file: !3754, line: 62, baseType: !3362, size: 64, offset: 320)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3753, file: !3754, line: 63, baseType: !3763, size: 64, offset: 384)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!250, !186, !3369}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3753, file: !3754, line: 65, baseType: !3767, size: 64, offset: 448)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = !DISubroutineType(types: !3769)
!3769 = !{null, !3752}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3753, file: !3754, line: 66, baseType: !3371, size: 64, offset: 512)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3753, file: !3754, line: 68, baseType: !3380, size: 64, offset: 576)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3753, file: !3754, line: 70, baseType: !3166, size: 64, offset: 640)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3753, file: !3754, line: 71, baseType: !3774, size: 64, offset: 704)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DISubroutineType(types: !3776)
!3776 = !{!2104, !186}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3753, file: !3754, line: 73, baseType: !3778, size: 64, offset: 768)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DISubroutineType(types: !3780)
!3780 = !{null, !186, !3198, !3199}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3753, file: !3754, line: 75, baseType: !3375, size: 64, offset: 832)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3753, file: !3754, line: 77, baseType: !3492, size: 64, offset: 896)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !187, file: !73, line: 541, baseType: !304, size: 64, offset: 5248)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !187, file: !73, line: 543, baseType: !3371, size: 64, offset: 5312)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !187, file: !73, line: 544, baseType: !3786, size: 64, offset: 5376)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !187, file: !73, line: 545, baseType: !3789, size: 64, offset: 5440)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !187, file: !73, line: 547, baseType: !466, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !187, file: !73, line: 548, baseType: !466, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !187, file: !73, line: 549, baseType: !466, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !187, file: !73, line: 550, baseType: !466, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !176, file: !160, line: 548, baseType: !174, size: 32, offset: 320)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "detach_count", scope: !176, file: !160, line: 549, baseType: !7, size: 32, offset: 352)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "hw_dev", scope: !176, file: !160, line: 550, baseType: !186, size: 64, offset: 384)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !176, file: !160, line: 552, baseType: !165, size: 64, offset: 448)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "board_ptr", scope: !176, file: !160, line: 553, baseType: !2104, size: 64, offset: 512)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "attached", scope: !176, file: !160, line: 554, baseType: !7, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "ioenabled", scope: !176, file: !160, line: 555, baseType: !7, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "spinlock", scope: !176, file: !160, line: 556, baseType: !209, offset: 584)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !176, file: !160, line: 557, baseType: !1150, size: 192, offset: 640)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "attach_lock", scope: !176, file: !160, line: 558, baseType: !744, size: 256, offset: 832)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !176, file: !160, line: 559, baseType: !3340, size: 32, offset: 1088)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "n_subdevices", scope: !176, file: !160, line: 561, baseType: !174, size: 32, offset: 1120)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "subdevices", scope: !176, file: !160, line: 562, baseType: !3808, size: 64, offset: 1152)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_subdevice", file: !160, line: 153, size: 1792, elements: !3810)
!3810 = !{!3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3886, !3899, !3902, !3903, !3917, !3918, !3919, !3920, !3924, !3929, !3930, !3931, !3932, !3936, !3937, !3938, !3939, !3940}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3809, file: !160, line: 154, baseType: !175, size: 64)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3809, file: !160, line: 155, baseType: !174, size: 32, offset: 64)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3809, file: !160, line: 156, baseType: !174, size: 32, offset: 96)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "n_chan", scope: !3809, file: !160, line: 157, baseType: !174, size: 32, offset: 128)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "subdev_flags", scope: !3809, file: !160, line: 158, baseType: !174, size: 32, offset: 160)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "len_chanlist", scope: !3809, file: !160, line: 159, baseType: !174, size: 32, offset: 192)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3809, file: !160, line: 161, baseType: !184, size: 64, offset: 256)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "async", scope: !3809, file: !160, line: 163, baseType: !3819, size: 64, offset: 320)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_async", file: !160, line: 347, size: 1536, elements: !3821)
!3821 = !{!3822, !3823, !3824, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3872, !3873, !3874}
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3820, file: !160, line: 348, baseType: !184, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_bufsz", scope: !3820, file: !160, line: 349, baseType: !7, size: 32, offset: 64)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "buf_map", scope: !3820, file: !160, line: 350, baseType: !3825, size: 64, offset: 128)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_map", file: !160, line: 249, size: 256, elements: !3827)
!3827 = !{!3828, !3829, !3835, !3836, !3837}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "dma_hw_dev", scope: !3826, file: !160, line: 250, baseType: !186, size: 64)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "page_list", scope: !3826, file: !160, line: 251, baseType: !3830, size: 64, offset: 64)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_page", file: !160, line: 220, size: 128, elements: !3832)
!3832 = !{!3833, !3834}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "virt_addr", scope: !3831, file: !160, line: 221, baseType: !184, size: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3831, file: !160, line: 222, baseType: !897, size: 64, offset: 64)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "n_pages", scope: !3826, file: !160, line: 252, baseType: !7, size: 32, offset: 128)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "dma_dir", scope: !3826, file: !160, line: 253, baseType: !93, size: 32, offset: 160)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3826, file: !160, line: 254, baseType: !3340, size: 32, offset: 192)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "max_bufsize", scope: !3820, file: !160, line: 351, baseType: !7, size: 32, offset: 192)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_count", scope: !3820, file: !160, line: 352, baseType: !7, size: 32, offset: 224)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_alloc_count", scope: !3820, file: !160, line: 353, baseType: !7, size: 32, offset: 256)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_count", scope: !3820, file: !160, line: 354, baseType: !7, size: 32, offset: 288)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_alloc_count", scope: !3820, file: !160, line: 355, baseType: !7, size: 32, offset: 320)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_ptr", scope: !3820, file: !160, line: 356, baseType: !7, size: 32, offset: 352)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_ptr", scope: !3820, file: !160, line: 357, baseType: !7, size: 32, offset: 384)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "cur_chan", scope: !3820, file: !160, line: 358, baseType: !7, size: 32, offset: 416)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "scans_done", scope: !3820, file: !160, line: 359, baseType: !7, size: 32, offset: 448)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "scan_progress", scope: !3820, file: !160, line: 360, baseType: !7, size: 32, offset: 480)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "munge_chan", scope: !3820, file: !160, line: 361, baseType: !7, size: 32, offset: 512)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "munge_count", scope: !3820, file: !160, line: 362, baseType: !7, size: 32, offset: 544)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "munge_ptr", scope: !3820, file: !160, line: 363, baseType: !7, size: 32, offset: 576)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3820, file: !160, line: 364, baseType: !7, size: 32, offset: 608)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !3820, file: !160, line: 365, baseType: !3853, size: 640, offset: 640)
!3853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_cmd", file: !101, line: 589, size: 640, elements: !3854)
!3854 = !{!3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3871}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "subdev", scope: !3853, file: !101, line: 590, baseType: !7, size: 32)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3853, file: !101, line: 591, baseType: !7, size: 32, offset: 32)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "start_src", scope: !3853, file: !101, line: 593, baseType: !7, size: 32, offset: 64)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "start_arg", scope: !3853, file: !101, line: 594, baseType: !7, size: 32, offset: 96)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "scan_begin_src", scope: !3853, file: !101, line: 596, baseType: !7, size: 32, offset: 128)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "scan_begin_arg", scope: !3853, file: !101, line: 597, baseType: !7, size: 32, offset: 160)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "convert_src", scope: !3853, file: !101, line: 599, baseType: !7, size: 32, offset: 192)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "convert_arg", scope: !3853, file: !101, line: 600, baseType: !7, size: 32, offset: 224)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "scan_end_src", scope: !3853, file: !101, line: 602, baseType: !7, size: 32, offset: 256)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "scan_end_arg", scope: !3853, file: !101, line: 603, baseType: !7, size: 32, offset: 288)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "stop_src", scope: !3853, file: !101, line: 605, baseType: !7, size: 32, offset: 320)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "stop_arg", scope: !3853, file: !101, line: 606, baseType: !7, size: 32, offset: 352)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist", scope: !3853, file: !101, line: 608, baseType: !2660, size: 64, offset: 384)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist_len", scope: !3853, file: !101, line: 609, baseType: !7, size: 32, offset: 448)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3853, file: !101, line: 611, baseType: !3870, size: 64, offset: 512)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !3853, file: !101, line: 612, baseType: !7, size: 32, offset: 576)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "wait_head", scope: !3820, file: !160, line: 366, baseType: !1458, size: 128, offset: 1280)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "cb_mask", scope: !3820, file: !160, line: 367, baseType: !7, size: 32, offset: 1408)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "inttrig", scope: !3820, file: !160, line: 368, baseType: !3875, size: 64, offset: 1472)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{!174, !175, !3808, !7}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3809, file: !160, line: 165, baseType: !184, size: 64, offset: 384)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !3809, file: !160, line: 166, baseType: !184, size: 64, offset: 448)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "runflags", scope: !3809, file: !160, line: 167, baseType: !7, size: 32, offset: 512)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "spin_lock", scope: !3809, file: !160, line: 168, baseType: !209, offset: 544)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "io_bits", scope: !3809, file: !160, line: 170, baseType: !7, size: 32, offset: 544)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata", scope: !3809, file: !160, line: 172, baseType: !7, size: 32, offset: 576)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata_list", scope: !3809, file: !160, line: 173, baseType: !3885, size: 64, offset: 640)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "range_table", scope: !3809, file: !160, line: 175, baseType: !3887, size: 64, offset: 704)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3889)
!3889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_lrange", file: !160, line: 635, size: 32, elements: !3890)
!3890 = !{!3891, !3892}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3889, file: !160, line: 636, baseType: !174, size: 32)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3889, file: !160, line: 637, baseType: !3893, offset: 32)
!3893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3894, elements: !2308)
!3894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_krange", file: !101, line: 685, size: 96, elements: !3895)
!3895 = !{!3896, !3897, !3898}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !3894, file: !101, line: 686, baseType: !174, size: 32)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3894, file: !101, line: 687, baseType: !174, size: 32, offset: 32)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3894, file: !101, line: 688, baseType: !7, size: 32, offset: 64)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "range_table_list", scope: !3809, file: !160, line: 176, baseType: !3900, size: 64, offset: 768)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3887)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist", scope: !3809, file: !160, line: 178, baseType: !2660, size: 64, offset: 832)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "insn_read", scope: !3809, file: !160, line: 180, baseType: !3904, size: 64, offset: 896)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{!174, !175, !3808, !3907, !2660}
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_insn", file: !101, line: 491, size: 320, elements: !3909)
!3909 = !{!3910, !3911, !3912, !3913, !3914, !3915}
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3908, file: !101, line: 492, baseType: !7, size: 32)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !3908, file: !101, line: 493, baseType: !7, size: 32, offset: 32)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3908, file: !101, line: 494, baseType: !2660, size: 64, offset: 64)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "subdev", scope: !3908, file: !101, line: 495, baseType: !7, size: 32, offset: 128)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "chanspec", scope: !3908, file: !101, line: 496, baseType: !7, size: 32, offset: 160)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !3908, file: !101, line: 497, baseType: !3916, size: 96, offset: 192)
!3916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 96, elements: !251)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "insn_write", scope: !3809, file: !160, line: 182, baseType: !3904, size: 64, offset: 960)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "insn_bits", scope: !3809, file: !160, line: 184, baseType: !3904, size: 64, offset: 1024)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "insn_config", scope: !3809, file: !160, line: 186, baseType: !3904, size: 64, offset: 1088)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmd", scope: !3809, file: !160, line: 191, baseType: !3921, size: 64, offset: 1152)
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3922, size: 64)
!3922 = !DISubroutineType(types: !3923)
!3923 = !{!174, !175, !3808}
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmdtest", scope: !3809, file: !160, line: 192, baseType: !3925, size: 64, offset: 1216)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = !DISubroutineType(types: !3927)
!3927 = !{!174, !175, !3808, !3928}
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3809, file: !160, line: 195, baseType: !3921, size: 64, offset: 1280)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "cancel", scope: !3809, file: !160, line: 196, baseType: !3921, size: 64, offset: 1344)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "buf_change", scope: !3809, file: !160, line: 199, baseType: !3921, size: 64, offset: 1408)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "munge", scope: !3809, file: !160, line: 202, baseType: !3933, size: 64, offset: 1472)
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3934, size: 64)
!3934 = !DISubroutineType(types: !3935)
!3935 = !{null, !175, !3808, !184, !7, !7}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "async_dma_dir", scope: !3809, file: !160, line: 205, baseType: !93, size: 32, offset: 1536)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3809, file: !160, line: 207, baseType: !7, size: 32, offset: 1568)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !3809, file: !160, line: 209, baseType: !186, size: 64, offset: 1600)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3809, file: !160, line: 210, baseType: !174, size: 32, offset: 1664)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "readback", scope: !3809, file: !160, line: 212, baseType: !2660, size: 64, offset: 1728)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "mmio", scope: !176, file: !160, line: 565, baseType: !184, size: 64, offset: 1216)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "iobase", scope: !176, file: !160, line: 566, baseType: !300, size: 64, offset: 1280)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "iolen", scope: !176, file: !160, line: 567, baseType: !300, size: 64, offset: 1344)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !176, file: !160, line: 568, baseType: !7, size: 32, offset: 1408)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "read_subdev", scope: !176, file: !160, line: 570, baseType: !3808, size: 64, offset: 1472)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "write_subdev", scope: !176, file: !160, line: 571, baseType: !3808, size: 64, offset: 1536)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "async_queue", scope: !176, file: !160, line: 573, baseType: !2936, size: 64, offset: 1600)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !176, file: !160, line: 575, baseType: !3949, size: 64, offset: 1664)
!3949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3950, size: 64)
!3950 = !DISubroutineType(types: !3951)
!3951 = !{!174, !175}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !176, file: !160, line: 576, baseType: !3953, size: 64, offset: 1728)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DISubroutineType(types: !3955)
!3955 = !{null, !175}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "insn_device_config", scope: !176, file: !160, line: 577, baseType: !3957, size: 64, offset: 1792)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = !DISubroutineType(types: !3959)
!3959 = !{!174, !175, !3907, !2660}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "get_valid_routes", scope: !176, file: !160, line: 579, baseType: !3961, size: 64, offset: 1856)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{!7, !175, !7, !2660}
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_devconfig", file: !101, line: 834, size: 1184, elements: !3966)
!3966 = !{!3967, !3969}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !3965, file: !101, line: 835, baseType: !3968, size: 160)
!3968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 160, elements: !2178)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !3965, file: !101, line: 836, baseType: !3970, size: 1024, offset: 160)
!3970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 1024, elements: !2207)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !159, file: !160, line: 444, baseType: !3953, size: 64, offset: 256)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "auto_attach", scope: !159, file: !160, line: 445, baseType: !3973, size: 64, offset: 320)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = !DISubroutineType(types: !3975)
!3975 = !{!174, !175, !300}
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "num_names", scope: !159, file: !160, line: 446, baseType: !7, size: 32, offset: 384)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !159, file: !160, line: 447, baseType: !3978, size: 64, offset: 448)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !159, file: !160, line: 448, baseType: !174, size: 32, offset: 512)
!3981 = !DIGlobalVariableExpression(var: !3982, expr: !DIExpression())
!3982 = distinct !DIGlobalVariable(name: "apci1564_pci_driver", scope: !2, file: !3, line: 810, type: !3983, isLocal: true, isDefinition: true)
!3983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !3984, line: 858, size: 2048, elements: !3985)
!3984 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!3985 = !{!3986, !3987, !3988, !4000, !4220, !4224, !4228, !4232, !4233, !4237, !4255, !4256, !4257}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3983, file: !3984, line: 859, baseType: !195, size: 128)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3983, file: !3984, line: 860, baseType: !165, size: 64, offset: 128)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3983, file: !3984, line: 861, baseType: !3989, size: 64, offset: 192)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3991)
!3991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3433, line: 38, size: 256, elements: !3992)
!3992 = !{!3993, !3994, !3995, !3996, !3997, !3998, !3999}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3991, file: !3433, line: 39, baseType: !393, size: 32)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3991, file: !3433, line: 39, baseType: !393, size: 32, offset: 32)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !3991, file: !3433, line: 40, baseType: !393, size: 32, offset: 64)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !3991, file: !3433, line: 40, baseType: !393, size: 32, offset: 96)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3991, file: !3433, line: 41, baseType: !393, size: 32, offset: 128)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !3991, file: !3433, line: 41, baseType: !393, size: 32, offset: 160)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3991, file: !3433, line: 42, baseType: !3452, size: 64, offset: 192)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3983, file: !3984, line: 862, baseType: !4001, size: 64, offset: 256)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!174, !4004, !3989}
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !3984, line: 309, size: 19264, elements: !4006)
!4006 = !{!4007, !4008, !4083, !4084, !4085, !4086, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4114, !4116, !4117, !4118, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4142, !4143, !4144, !4145, !4147, !4148, !4149, !4150, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4193, !4194, !4196, !4197, !4198, !4199, !4201, !4202, !4203, !4206, !4213, !4214, !4215, !4216, !4217, !4218, !4219}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !4005, file: !3984, line: 310, baseType: !195, size: 128)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4005, file: !3984, line: 311, baseType: !4009, size: 64, offset: 128)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !3984, line: 605, size: 8064, elements: !4011)
!4011 = !{!4012, !4013, !4014, !4015, !4016, !4017, !4018, !4033, !4034, !4035, !4059, !4062, !4063, !4067, !4068, !4069, !4070, !4071, !4075, !4076, !4078, !4079, !4080, !4081, !4082}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4010, file: !3984, line: 606, baseType: !195, size: 128)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4010, file: !3984, line: 607, baseType: !4009, size: 64, offset: 128)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4010, file: !3984, line: 608, baseType: !195, size: 128, offset: 192)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4010, file: !3984, line: 609, baseType: !195, size: 128, offset: 320)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4010, file: !3984, line: 610, baseType: !4004, size: 64, offset: 448)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4010, file: !3984, line: 611, baseType: !195, size: 128, offset: 512)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4010, file: !3984, line: 613, baseType: !4019, size: 256, offset: 640)
!4019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4020, size: 256, elements: !1132)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4022, line: 20, size: 512, elements: !4023)
!4022 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!4023 = !{!4024, !4026, !4027, !4028, !4029, !4030, !4031, !4032}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4021, file: !4022, line: 21, baseType: !4025, size: 64)
!4025 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !196, line: 158, baseType: !2102)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4021, file: !4022, line: 22, baseType: !4025, size: 64, offset: 64)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4021, file: !4022, line: 23, baseType: !165, size: 64, offset: 128)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4021, file: !4022, line: 24, baseType: !300, size: 64, offset: 192)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4021, file: !4022, line: 25, baseType: !300, size: 64, offset: 256)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4021, file: !4022, line: 26, baseType: !4020, size: 64, offset: 320)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4021, file: !4022, line: 26, baseType: !4020, size: 64, offset: 384)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4021, file: !4022, line: 26, baseType: !4020, size: 64, offset: 448)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4010, file: !3984, line: 614, baseType: !195, size: 128, offset: 896)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !4010, file: !3984, line: 615, baseType: !4021, size: 512, offset: 1024)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4010, file: !3984, line: 617, baseType: !4036, size: 64, offset: 1536)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !3984, line: 731, size: 320, elements: !4038)
!4038 = !{!4039, !4043, !4047, !4051, !4055}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4037, file: !3984, line: 732, baseType: !4040, size: 64)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = !DISubroutineType(types: !4042)
!4042 = !{!174, !4009}
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4037, file: !3984, line: 733, baseType: !4044, size: 64, offset: 64)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{null, !4009}
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4037, file: !3984, line: 734, baseType: !4048, size: 64, offset: 128)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DISubroutineType(types: !4050)
!4050 = !{!184, !4009, !7, !174}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4037, file: !3984, line: 735, baseType: !4052, size: 64, offset: 192)
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = !DISubroutineType(types: !4054)
!4054 = !{!174, !4009, !7, !174, !174, !1392}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4037, file: !3984, line: 736, baseType: !4056, size: 64, offset: 256)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{!174, !4009, !7, !174, !174, !391}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4010, file: !3984, line: 618, baseType: !4060, size: 64, offset: 1600)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !3984, line: 537, flags: DIFlagFwdDecl)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4010, file: !3984, line: 619, baseType: !184, size: 64, offset: 1664)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !4010, file: !3984, line: 620, baseType: !4064, size: 64, offset: 1728)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4066, line: 123, flags: DIFlagFwdDecl)
!4066 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4010, file: !3984, line: 622, baseType: !403, size: 8, offset: 1792)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4010, file: !3984, line: 623, baseType: !403, size: 8, offset: 1800)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !4010, file: !3984, line: 624, baseType: !403, size: 8, offset: 1808)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !4010, file: !3984, line: 625, baseType: !403, size: 8, offset: 1816)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4010, file: !3984, line: 630, baseType: !4072, size: 384, offset: 1824)
!4072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 384, elements: !4073)
!4073 = !{!4074}
!4074 = !DISubrange(count: 48)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !4010, file: !3984, line: 632, baseType: !292, size: 16, offset: 2208)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !4010, file: !3984, line: 633, baseType: !4077, size: 16, offset: 2224)
!4077 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !3984, line: 237, baseType: !292)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !4010, file: !3984, line: 634, baseType: !186, size: 64, offset: 2240)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4010, file: !3984, line: 635, baseType: !187, size: 5568, offset: 2304)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !4010, file: !3984, line: 636, baseType: !318, size: 64, offset: 7872)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !4010, file: !3984, line: 637, baseType: !318, size: 64, offset: 7936)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !4010, file: !3984, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !4005, file: !3984, line: 312, baseType: !4009, size: 64, offset: 192)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4005, file: !3984, line: 314, baseType: !184, size: 64, offset: 256)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !4005, file: !3984, line: 315, baseType: !4064, size: 64, offset: 320)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4005, file: !3984, line: 316, baseType: !4087, size: 64, offset: 384)
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !3984, line: 69, size: 832, elements: !4089)
!4089 = !{!4090, !4091, !4092, !4095, !4096}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4088, file: !3984, line: 70, baseType: !4009, size: 64)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4088, file: !3984, line: 71, baseType: !195, size: 128, offset: 64)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4088, file: !3984, line: 72, baseType: !4093, size: 64, offset: 192)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !3984, line: 72, flags: DIFlagFwdDecl)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4088, file: !3984, line: 73, baseType: !403, size: 8, offset: 256)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4088, file: !3984, line: 74, baseType: !190, size: 512, offset: 320)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !4005, file: !3984, line: 318, baseType: !7, size: 32, offset: 448)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4005, file: !3984, line: 319, baseType: !292, size: 16, offset: 480)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4005, file: !3984, line: 320, baseType: !292, size: 16, offset: 496)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4005, file: !3984, line: 321, baseType: !292, size: 16, offset: 512)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4005, file: !3984, line: 322, baseType: !292, size: 16, offset: 528)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4005, file: !3984, line: 323, baseType: !7, size: 32, offset: 544)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4005, file: !3984, line: 324, baseType: !1329, size: 8, offset: 576)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4005, file: !3984, line: 325, baseType: !1329, size: 8, offset: 584)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !4005, file: !3984, line: 330, baseType: !1329, size: 8, offset: 592)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !4005, file: !3984, line: 331, baseType: !1329, size: 8, offset: 600)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !4005, file: !3984, line: 332, baseType: !1329, size: 8, offset: 608)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !4005, file: !3984, line: 333, baseType: !1329, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !4005, file: !3984, line: 334, baseType: !1329, size: 8, offset: 624)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4005, file: !3984, line: 335, baseType: !1329, size: 8, offset: 632)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !4005, file: !3984, line: 336, baseType: !836, size: 16, offset: 640)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !4005, file: !3984, line: 337, baseType: !4113, size: 64, offset: 704)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4005, file: !3984, line: 339, baseType: !4115, size: 64, offset: 768)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4005, file: !3984, line: 340, baseType: !397, size: 64, offset: 832)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4005, file: !3984, line: 346, baseType: !3645, size: 128, offset: 896)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !4005, file: !3984, line: 348, baseType: !4119, size: 32, offset: 1024)
!4119 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !3984, line: 155, baseType: !174)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !4005, file: !3984, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !4005, file: !3984, line: 352, baseType: !1329, size: 8, offset: 1064)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !4005, file: !3984, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !4005, file: !3984, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !4005, file: !3984, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !4005, file: !3984, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !4005, file: !3984, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !4005, file: !3984, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !4005, file: !3984, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !4005, file: !3984, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !4005, file: !3984, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !4005, file: !3984, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !4005, file: !3984, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !4005, file: !3984, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !4005, file: !3984, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !4005, file: !3984, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !4005, file: !3984, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !4005, file: !3984, line: 376, baseType: !7, size: 32, offset: 1120)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !4005, file: !3984, line: 377, baseType: !7, size: 32, offset: 1152)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !4005, file: !3984, line: 380, baseType: !4140, size: 64, offset: 1216)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !3984, line: 303, flags: DIFlagFwdDecl)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !4005, file: !3984, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !4005, file: !3984, line: 383, baseType: !174, size: 32, offset: 1312)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !4005, file: !3984, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !4005, file: !3984, line: 387, baseType: !4146, size: 32, offset: 1376)
!4146 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !3984, line: 180, baseType: !7)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4005, file: !3984, line: 388, baseType: !187, size: 5568, offset: 1408)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !4005, file: !3984, line: 390, baseType: !174, size: 32, offset: 6976)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4005, file: !3984, line: 396, baseType: !7, size: 32, offset: 7008)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4005, file: !3984, line: 397, baseType: !4151, size: 8704, offset: 7040)
!4151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4021, size: 8704, elements: !4152)
!4152 = !{!4153}
!4153 = !DISubrange(count: 17)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4005, file: !3984, line: 399, baseType: !466, size: 8, offset: 15744)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !4005, file: !3984, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !4005, file: !3984, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !4005, file: !3984, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !4005, file: !3984, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !4005, file: !3984, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !4005, file: !3984, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !4005, file: !3984, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !4005, file: !3984, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !4005, file: !3984, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !4005, file: !3984, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !4005, file: !3984, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !4005, file: !3984, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !4005, file: !3984, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !4005, file: !3984, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !4005, file: !3984, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !4005, file: !3984, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !4005, file: !3984, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !4005, file: !3984, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !4005, file: !3984, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !4005, file: !3984, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !4005, file: !3984, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !4005, file: !3984, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !4005, file: !3984, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !4005, file: !3984, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !4005, file: !3984, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !4005, file: !3984, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !4005, file: !3984, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !4005, file: !3984, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !4005, file: !3984, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !4005, file: !3984, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !4005, file: !3984, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !4005, file: !3984, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !4005, file: !3984, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !4005, file: !3984, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !4005, file: !3984, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !4005, file: !3984, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !4005, file: !3984, line: 450, baseType: !4192, size: 16, offset: 15792)
!4192 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !3984, line: 206, baseType: !292)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !4005, file: !3984, line: 451, baseType: !724, size: 32, offset: 15808)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !4005, file: !3984, line: 453, baseType: !4195, size: 512, offset: 15840)
!4195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 512, elements: !1712)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !4005, file: !3984, line: 454, baseType: !611, size: 64, offset: 16384)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !4005, file: !3984, line: 455, baseType: !318, size: 64, offset: 16448)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !4005, file: !3984, line: 456, baseType: !174, size: 32, offset: 16512)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !4005, file: !3984, line: 457, baseType: !4200, size: 1088, offset: 16576)
!4200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 1088, elements: !4152)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !4005, file: !3984, line: 458, baseType: !4200, size: 1088, offset: 17664)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !4005, file: !3984, line: 469, baseType: !304, size: 64, offset: 18752)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !4005, file: !3984, line: 471, baseType: !4204, size: 64, offset: 18816)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !3984, line: 304, flags: DIFlagFwdDecl)
!4206 = !DIDerivedType(tag: DW_TAG_member, scope: !4005, file: !3984, line: 478, baseType: !4207, size: 64, offset: 18880)
!4207 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4005, file: !3984, line: 478, size: 64, elements: !4208)
!4208 = !{!4209, !4212}
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4207, file: !3984, line: 479, baseType: !4210, size: 64)
!4210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4211, size: 64)
!4211 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !3984, line: 305, flags: DIFlagFwdDecl)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4207, file: !3984, line: 480, baseType: !4004, size: 64)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !4005, file: !3984, line: 482, baseType: !836, size: 16, offset: 18944)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !4005, file: !3984, line: 483, baseType: !1329, size: 8, offset: 18960)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !4005, file: !3984, line: 497, baseType: !836, size: 16, offset: 18976)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !4005, file: !3984, line: 498, baseType: !2102, size: 64, offset: 19008)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !4005, file: !3984, line: 499, baseType: !297, size: 64, offset: 19072)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !4005, file: !3984, line: 500, baseType: !250, size: 64, offset: 19136)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !4005, file: !3984, line: 502, baseType: !300, size: 64, offset: 19200)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3983, file: !3984, line: 863, baseType: !4221, size: 64, offset: 320)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = !DISubroutineType(types: !4223)
!4223 = !{null, !4004}
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3983, file: !3984, line: 864, baseType: !4225, size: 64, offset: 384)
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4226 = !DISubroutineType(types: !4227)
!4227 = !{!174, !4004, !3463}
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3983, file: !3984, line: 865, baseType: !4229, size: 64, offset: 448)
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4230 = !DISubroutineType(types: !4231)
!4231 = !{!174, !4004}
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3983, file: !3984, line: 866, baseType: !4221, size: 64, offset: 512)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !3983, file: !3984, line: 867, baseType: !4234, size: 64, offset: 576)
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = !DISubroutineType(types: !4236)
!4236 = !{!174, !4004, !174}
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !3983, file: !3984, line: 868, baseType: !4238, size: 64, offset: 640)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4240)
!4240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !3984, line: 795, size: 384, elements: !4241)
!4241 = !{!4242, !4247, !4251, !4252, !4253, !4254}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4240, file: !3984, line: 797, baseType: !4243, size: 64)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = !DISubroutineType(types: !4245)
!4245 = !{!4246, !4004, !4146}
!4246 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !3984, line: 772, baseType: !7)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4240, file: !3984, line: 801, baseType: !4248, size: 64, offset: 64)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DISubroutineType(types: !4250)
!4250 = !{!4246, !4004}
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4240, file: !3984, line: 804, baseType: !4248, size: 64, offset: 128)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4240, file: !3984, line: 807, baseType: !4221, size: 64, offset: 192)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4240, file: !3984, line: 808, baseType: !4221, size: 64, offset: 256)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4240, file: !3984, line: 811, baseType: !4221, size: 64, offset: 320)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3983, file: !3984, line: 869, baseType: !304, size: 64, offset: 704)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3983, file: !3984, line: 870, baseType: !3421, size: 1152, offset: 768)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !3983, file: !3984, line: 871, baseType: !4258, size: 128, offset: 1920)
!4258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !3984, line: 759, size: 128, elements: !4259)
!4259 = !{!4260, !4261}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4258, file: !3984, line: 760, baseType: !209)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4258, file: !3984, line: 761, baseType: !195, size: 128)
!4262 = !DIGlobalVariableExpression(var: !4263, expr: !DIExpression())
!4263 = distinct !DIGlobalVariable(name: "apci1564_pci_table", scope: !2, file: !3, line: 804, type: !4264, isLocal: true, isDefinition: true)
!4264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3990, size: 512, elements: !1546)
!4265 = !{i32 7, !"Dwarf Version", i32 4}
!4266 = !{i32 2, !"Debug Info Version", i32 3}
!4267 = !{i32 1, !"wchar_size", i32 2}
!4268 = !{i32 1, !"Code Model", i32 2}
!4269 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4270 = distinct !DISubprogram(name: "apci1564_driver_init", scope: !3, file: !3, line: 816, type: !4271, scopeLine: 816, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!4271 = !DISubroutineType(types: !4272)
!4272 = !{!174}
!4273 = !DILocation(line: 816, column: 1, scope: !4270)
!4274 = distinct !DISubprogram(name: "apci1564_driver_exit", scope: !3, file: !3, line: 816, type: !133, scopeLine: 816, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!4275 = !DILocation(line: 816, column: 1, scope: !4274)
!4276 = distinct !DISubprogram(name: "apci1564_detach", scope: !3, file: !3, line: 784, type: !3954, scopeLine: 785, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!4277 = !DILocalVariable(name: "dev", arg: 1, scope: !4276, file: !3, line: 784, type: !175)
!4278 = !DILocation(line: 784, column: 51, scope: !4276)
!4279 = !DILocation(line: 786, column: 6, scope: !4280)
!4280 = distinct !DILexicalBlock(scope: !4276, file: !3, line: 786, column: 6)
!4281 = !DILocation(line: 786, column: 11, scope: !4280)
!4282 = !DILocation(line: 786, column: 6, scope: !4276)
!4283 = !DILocation(line: 787, column: 18, scope: !4280)
!4284 = !DILocation(line: 787, column: 3, scope: !4280)
!4285 = !DILocation(line: 788, column: 20, scope: !4276)
!4286 = !DILocation(line: 788, column: 2, scope: !4276)
!4287 = !DILocation(line: 789, column: 1, scope: !4276)
!4288 = distinct !DISubprogram(name: "apci1564_auto_attach", scope: !3, file: !3, line: 658, type: !3974, scopeLine: 660, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!4289 = !DILocalVariable(name: "dev", arg: 1, scope: !4288, file: !3, line: 658, type: !175)
!4290 = !DILocation(line: 658, column: 55, scope: !4288)
!4291 = !DILocalVariable(name: "context_unused", arg: 2, scope: !4288, file: !3, line: 659, type: !300)
!4292 = !DILocation(line: 659, column: 19, scope: !4288)
!4293 = !DILocalVariable(name: "pcidev", scope: !4288, file: !3, line: 661, type: !4004)
!4294 = !DILocation(line: 661, column: 18, scope: !4288)
!4295 = !DILocation(line: 661, column: 45, scope: !4288)
!4296 = !DILocation(line: 661, column: 27, scope: !4288)
!4297 = !DILocalVariable(name: "devpriv", scope: !4288, file: !3, line: 662, type: !4298)
!4298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4299, size: 64)
!4299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apci1564_private", file: !3, line: 161, size: 320, elements: !4300)
!4300 = !{!4301, !4302, !4303, !4304, !4305, !4306}
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "eeprom", scope: !4299, file: !3, line: 162, baseType: !300, size: 64)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4299, file: !3, line: 163, baseType: !300, size: 64, offset: 64)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !4299, file: !3, line: 164, baseType: !300, size: 64, offset: 128)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "mode1", scope: !4299, file: !3, line: 165, baseType: !7, size: 32, offset: 192)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "mode2", scope: !4299, file: !3, line: 166, baseType: !7, size: 32, offset: 224)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !4299, file: !3, line: 167, baseType: !7, size: 32, offset: 256)
!4307 = !DILocation(line: 662, column: 27, scope: !4288)
!4308 = !DILocalVariable(name: "s", scope: !4288, file: !3, line: 663, type: !3808)
!4309 = !DILocation(line: 663, column: 27, scope: !4288)
!4310 = !DILocalVariable(name: "val", scope: !4288, file: !3, line: 664, type: !7)
!4311 = !DILocation(line: 664, column: 15, scope: !4288)
!4312 = !DILocalVariable(name: "ret", scope: !4288, file: !3, line: 665, type: !174)
!4313 = !DILocation(line: 665, column: 6, scope: !4288)
!4314 = !DILocation(line: 667, column: 33, scope: !4288)
!4315 = !DILocation(line: 667, column: 12, scope: !4288)
!4316 = !DILocation(line: 667, column: 10, scope: !4288)
!4317 = !DILocation(line: 668, column: 7, scope: !4318)
!4318 = distinct !DILexicalBlock(scope: !4288, file: !3, line: 668, column: 6)
!4319 = !DILocation(line: 668, column: 6, scope: !4288)
!4320 = !DILocation(line: 669, column: 3, scope: !4318)
!4321 = !DILocation(line: 671, column: 26, scope: !4288)
!4322 = !DILocation(line: 671, column: 8, scope: !4288)
!4323 = !DILocation(line: 671, column: 6, scope: !4288)
!4324 = !DILocation(line: 672, column: 6, scope: !4325)
!4325 = distinct !DILexicalBlock(scope: !4288, file: !3, line: 672, column: 6)
!4326 = !DILocation(line: 672, column: 6, scope: !4288)
!4327 = !DILocation(line: 673, column: 10, scope: !4325)
!4328 = !DILocation(line: 673, column: 3, scope: !4325)
!4329 = !DILocation(line: 676, column: 20, scope: !4288)
!4330 = !DILocation(line: 676, column: 2, scope: !4288)
!4331 = !DILocation(line: 676, column: 11, scope: !4288)
!4332 = !DILocation(line: 676, column: 18, scope: !4288)
!4333 = !DILocation(line: 677, column: 12, scope: !4288)
!4334 = !DILocation(line: 677, column: 21, scope: !4288)
!4335 = !DILocation(line: 677, column: 28, scope: !4288)
!4336 = !DILocation(line: 677, column: 8, scope: !4288)
!4337 = !DILocation(line: 677, column: 6, scope: !4288)
!4338 = !DILocation(line: 678, column: 6, scope: !4339)
!4339 = distinct !DILexicalBlock(scope: !4288, file: !3, line: 678, column: 6)
!4340 = !DILocation(line: 678, column: 34, scope: !4339)
!4341 = !DILocation(line: 678, column: 6, scope: !4288)
!4342 = !DILocation(line: 680, column: 17, scope: !4343)
!4343 = distinct !DILexicalBlock(scope: !4339, file: !3, line: 678, column: 40)
!4344 = !DILocation(line: 680, column: 47, scope: !4343)
!4345 = !DILocation(line: 680, column: 3, scope: !4343)
!4346 = !DILocation(line: 680, column: 8, scope: !4343)
!4347 = !DILocation(line: 680, column: 15, scope: !4343)
!4348 = !DILocation(line: 682, column: 20, scope: !4343)
!4349 = !DILocation(line: 682, column: 29, scope: !4343)
!4350 = !DILocation(line: 682, column: 36, scope: !4343)
!4351 = !DILocation(line: 682, column: 3, scope: !4343)
!4352 = !DILocation(line: 682, column: 12, scope: !4343)
!4353 = !DILocation(line: 682, column: 18, scope: !4343)
!4354 = !DILocation(line: 683, column: 2, scope: !4343)
!4355 = !DILocation(line: 685, column: 17, scope: !4356)
!4356 = distinct !DILexicalBlock(scope: !4339, file: !3, line: 683, column: 9)
!4357 = !DILocation(line: 685, column: 26, scope: !4356)
!4358 = !DILocation(line: 685, column: 33, scope: !4356)
!4359 = !DILocation(line: 685, column: 3, scope: !4356)
!4360 = !DILocation(line: 685, column: 8, scope: !4356)
!4361 = !DILocation(line: 685, column: 15, scope: !4356)
!4362 = !DILocation(line: 686, column: 20, scope: !4356)
!4363 = !DILocation(line: 686, column: 29, scope: !4356)
!4364 = !DILocation(line: 686, column: 36, scope: !4356)
!4365 = !DILocation(line: 686, column: 3, scope: !4356)
!4366 = !DILocation(line: 686, column: 12, scope: !4356)
!4367 = !DILocation(line: 686, column: 18, scope: !4356)
!4368 = !DILocation(line: 687, column: 23, scope: !4356)
!4369 = !DILocation(line: 687, column: 3, scope: !4356)
!4370 = !DILocation(line: 687, column: 12, scope: !4356)
!4371 = !DILocation(line: 687, column: 21, scope: !4356)
!4372 = !DILocation(line: 690, column: 17, scope: !4288)
!4373 = !DILocation(line: 690, column: 2, scope: !4288)
!4374 = !DILocation(line: 692, column: 6, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !4288, file: !3, line: 692, column: 6)
!4376 = !DILocation(line: 692, column: 14, scope: !4375)
!4377 = !DILocation(line: 692, column: 18, scope: !4375)
!4378 = !DILocation(line: 692, column: 6, scope: !4288)
!4379 = !DILocation(line: 693, column: 21, scope: !4380)
!4380 = distinct !DILexicalBlock(scope: !4375, file: !3, line: 692, column: 23)
!4381 = !DILocation(line: 693, column: 29, scope: !4380)
!4382 = !DILocation(line: 694, column: 7, scope: !4380)
!4383 = !DILocation(line: 694, column: 12, scope: !4380)
!4384 = !DILocation(line: 694, column: 24, scope: !4380)
!4385 = !DILocation(line: 693, column: 9, scope: !4380)
!4386 = !DILocation(line: 693, column: 7, scope: !4380)
!4387 = !DILocation(line: 695, column: 7, scope: !4388)
!4388 = distinct !DILexicalBlock(scope: !4380, file: !3, line: 695, column: 7)
!4389 = !DILocation(line: 695, column: 11, scope: !4388)
!4390 = !DILocation(line: 695, column: 7, scope: !4380)
!4391 = !DILocation(line: 696, column: 15, scope: !4388)
!4392 = !DILocation(line: 696, column: 23, scope: !4388)
!4393 = !DILocation(line: 696, column: 4, scope: !4388)
!4394 = !DILocation(line: 696, column: 9, scope: !4388)
!4395 = !DILocation(line: 696, column: 13, scope: !4388)
!4396 = !DILocation(line: 697, column: 2, scope: !4380)
!4397 = !DILocation(line: 699, column: 32, scope: !4288)
!4398 = !DILocation(line: 699, column: 8, scope: !4288)
!4399 = !DILocation(line: 699, column: 6, scope: !4288)
!4400 = !DILocation(line: 700, column: 6, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4288, file: !3, line: 700, column: 6)
!4402 = !DILocation(line: 700, column: 6, scope: !4288)
!4403 = !DILocation(line: 701, column: 10, scope: !4401)
!4404 = !DILocation(line: 701, column: 3, scope: !4401)
!4405 = !DILocation(line: 704, column: 7, scope: !4288)
!4406 = !DILocation(line: 704, column: 12, scope: !4288)
!4407 = !DILocation(line: 704, column: 4, scope: !4288)
!4408 = !DILocation(line: 705, column: 2, scope: !4288)
!4409 = !DILocation(line: 705, column: 5, scope: !4288)
!4410 = !DILocation(line: 705, column: 11, scope: !4288)
!4411 = !DILocation(line: 706, column: 2, scope: !4288)
!4412 = !DILocation(line: 706, column: 5, scope: !4288)
!4413 = !DILocation(line: 706, column: 18, scope: !4288)
!4414 = !DILocation(line: 707, column: 2, scope: !4288)
!4415 = !DILocation(line: 707, column: 5, scope: !4288)
!4416 = !DILocation(line: 707, column: 12, scope: !4288)
!4417 = !DILocation(line: 708, column: 2, scope: !4288)
!4418 = !DILocation(line: 708, column: 5, scope: !4288)
!4419 = !DILocation(line: 708, column: 13, scope: !4288)
!4420 = !DILocation(line: 709, column: 2, scope: !4288)
!4421 = !DILocation(line: 709, column: 5, scope: !4288)
!4422 = !DILocation(line: 709, column: 17, scope: !4288)
!4423 = !DILocation(line: 710, column: 2, scope: !4288)
!4424 = !DILocation(line: 710, column: 5, scope: !4288)
!4425 = !DILocation(line: 710, column: 15, scope: !4288)
!4426 = !DILocation(line: 713, column: 7, scope: !4288)
!4427 = !DILocation(line: 713, column: 12, scope: !4288)
!4428 = !DILocation(line: 713, column: 4, scope: !4288)
!4429 = !DILocation(line: 714, column: 2, scope: !4288)
!4430 = !DILocation(line: 714, column: 5, scope: !4288)
!4431 = !DILocation(line: 714, column: 11, scope: !4288)
!4432 = !DILocation(line: 715, column: 2, scope: !4288)
!4433 = !DILocation(line: 715, column: 5, scope: !4288)
!4434 = !DILocation(line: 715, column: 18, scope: !4288)
!4435 = !DILocation(line: 716, column: 2, scope: !4288)
!4436 = !DILocation(line: 716, column: 5, scope: !4288)
!4437 = !DILocation(line: 716, column: 12, scope: !4288)
!4438 = !DILocation(line: 717, column: 2, scope: !4288)
!4439 = !DILocation(line: 717, column: 5, scope: !4288)
!4440 = !DILocation(line: 717, column: 13, scope: !4288)
!4441 = !DILocation(line: 718, column: 2, scope: !4288)
!4442 = !DILocation(line: 718, column: 5, scope: !4288)
!4443 = !DILocation(line: 718, column: 17, scope: !4288)
!4444 = !DILocation(line: 719, column: 2, scope: !4288)
!4445 = !DILocation(line: 719, column: 5, scope: !4288)
!4446 = !DILocation(line: 719, column: 15, scope: !4288)
!4447 = !DILocation(line: 722, column: 7, scope: !4288)
!4448 = !DILocation(line: 722, column: 12, scope: !4288)
!4449 = !DILocation(line: 722, column: 4, scope: !4288)
!4450 = !DILocation(line: 723, column: 6, scope: !4451)
!4451 = distinct !DILexicalBlock(scope: !4288, file: !3, line: 723, column: 6)
!4452 = !DILocation(line: 723, column: 11, scope: !4451)
!4453 = !DILocation(line: 723, column: 6, scope: !4288)
!4454 = !DILocation(line: 724, column: 22, scope: !4455)
!4455 = distinct !DILexicalBlock(scope: !4451, file: !3, line: 723, column: 16)
!4456 = !DILocation(line: 724, column: 3, scope: !4455)
!4457 = !DILocation(line: 724, column: 8, scope: !4455)
!4458 = !DILocation(line: 724, column: 20, scope: !4455)
!4459 = !DILocation(line: 725, column: 3, scope: !4455)
!4460 = !DILocation(line: 725, column: 6, scope: !4455)
!4461 = !DILocation(line: 725, column: 12, scope: !4455)
!4462 = !DILocation(line: 726, column: 3, scope: !4455)
!4463 = !DILocation(line: 726, column: 6, scope: !4455)
!4464 = !DILocation(line: 726, column: 19, scope: !4455)
!4465 = !DILocation(line: 727, column: 3, scope: !4455)
!4466 = !DILocation(line: 727, column: 6, scope: !4455)
!4467 = !DILocation(line: 727, column: 13, scope: !4455)
!4468 = !DILocation(line: 728, column: 3, scope: !4455)
!4469 = !DILocation(line: 728, column: 6, scope: !4455)
!4470 = !DILocation(line: 728, column: 14, scope: !4455)
!4471 = !DILocation(line: 729, column: 3, scope: !4455)
!4472 = !DILocation(line: 729, column: 6, scope: !4455)
!4473 = !DILocation(line: 729, column: 18, scope: !4455)
!4474 = !DILocation(line: 730, column: 3, scope: !4455)
!4475 = !DILocation(line: 730, column: 6, scope: !4455)
!4476 = !DILocation(line: 730, column: 19, scope: !4455)
!4477 = !DILocation(line: 731, column: 3, scope: !4455)
!4478 = !DILocation(line: 731, column: 6, scope: !4455)
!4479 = !DILocation(line: 731, column: 18, scope: !4455)
!4480 = !DILocation(line: 732, column: 3, scope: !4455)
!4481 = !DILocation(line: 732, column: 6, scope: !4455)
!4482 = !DILocation(line: 732, column: 16, scope: !4455)
!4483 = !DILocation(line: 733, column: 3, scope: !4455)
!4484 = !DILocation(line: 733, column: 6, scope: !4455)
!4485 = !DILocation(line: 733, column: 17, scope: !4455)
!4486 = !DILocation(line: 734, column: 3, scope: !4455)
!4487 = !DILocation(line: 734, column: 6, scope: !4455)
!4488 = !DILocation(line: 734, column: 13, scope: !4455)
!4489 = !DILocation(line: 735, column: 3, scope: !4455)
!4490 = !DILocation(line: 735, column: 6, scope: !4455)
!4491 = !DILocation(line: 735, column: 13, scope: !4455)
!4492 = !DILocation(line: 736, column: 2, scope: !4455)
!4493 = !DILocation(line: 737, column: 3, scope: !4494)
!4494 = distinct !DILexicalBlock(scope: !4451, file: !3, line: 736, column: 9)
!4495 = !DILocation(line: 737, column: 6, scope: !4494)
!4496 = !DILocation(line: 737, column: 12, scope: !4494)
!4497 = !DILocation(line: 741, column: 7, scope: !4288)
!4498 = !DILocation(line: 741, column: 12, scope: !4288)
!4499 = !DILocation(line: 741, column: 4, scope: !4288)
!4500 = !DILocation(line: 742, column: 2, scope: !4288)
!4501 = !DILocation(line: 742, column: 5, scope: !4288)
!4502 = !DILocation(line: 742, column: 11, scope: !4288)
!4503 = !DILocation(line: 743, column: 2, scope: !4288)
!4504 = !DILocation(line: 743, column: 5, scope: !4288)
!4505 = !DILocation(line: 743, column: 18, scope: !4288)
!4506 = !DILocation(line: 744, column: 2, scope: !4288)
!4507 = !DILocation(line: 744, column: 5, scope: !4288)
!4508 = !DILocation(line: 744, column: 12, scope: !4288)
!4509 = !DILocation(line: 745, column: 2, scope: !4288)
!4510 = !DILocation(line: 745, column: 5, scope: !4288)
!4511 = !DILocation(line: 745, column: 13, scope: !4288)
!4512 = !DILocation(line: 746, column: 2, scope: !4288)
!4513 = !DILocation(line: 746, column: 5, scope: !4288)
!4514 = !DILocation(line: 746, column: 17, scope: !4288)
!4515 = !DILocation(line: 747, column: 2, scope: !4288)
!4516 = !DILocation(line: 747, column: 5, scope: !4288)
!4517 = !DILocation(line: 747, column: 17, scope: !4288)
!4518 = !DILocation(line: 748, column: 2, scope: !4288)
!4519 = !DILocation(line: 748, column: 5, scope: !4288)
!4520 = !DILocation(line: 748, column: 16, scope: !4288)
!4521 = !DILocation(line: 749, column: 2, scope: !4288)
!4522 = !DILocation(line: 749, column: 5, scope: !4288)
!4523 = !DILocation(line: 749, column: 15, scope: !4288)
!4524 = !DILocation(line: 752, column: 7, scope: !4288)
!4525 = !DILocation(line: 752, column: 12, scope: !4288)
!4526 = !DILocation(line: 752, column: 4, scope: !4288)
!4527 = !DILocation(line: 753, column: 6, scope: !4528)
!4528 = distinct !DILexicalBlock(scope: !4288, file: !3, line: 753, column: 6)
!4529 = !DILocation(line: 753, column: 15, scope: !4528)
!4530 = !DILocation(line: 753, column: 6, scope: !4288)
!4531 = !DILocation(line: 754, column: 3, scope: !4532)
!4532 = distinct !DILexicalBlock(scope: !4528, file: !3, line: 753, column: 25)
!4533 = !DILocation(line: 754, column: 6, scope: !4532)
!4534 = !DILocation(line: 754, column: 12, scope: !4532)
!4535 = !DILocation(line: 755, column: 3, scope: !4532)
!4536 = !DILocation(line: 755, column: 6, scope: !4532)
!4537 = !DILocation(line: 755, column: 19, scope: !4532)
!4538 = !DILocation(line: 756, column: 3, scope: !4532)
!4539 = !DILocation(line: 756, column: 6, scope: !4532)
!4540 = !DILocation(line: 756, column: 13, scope: !4532)
!4541 = !DILocation(line: 757, column: 3, scope: !4532)
!4542 = !DILocation(line: 757, column: 6, scope: !4532)
!4543 = !DILocation(line: 757, column: 14, scope: !4532)
!4544 = !DILocation(line: 758, column: 3, scope: !4532)
!4545 = !DILocation(line: 758, column: 6, scope: !4532)
!4546 = !DILocation(line: 758, column: 18, scope: !4532)
!4547 = !DILocation(line: 759, column: 3, scope: !4532)
!4548 = !DILocation(line: 759, column: 6, scope: !4532)
!4549 = !DILocation(line: 759, column: 18, scope: !4532)
!4550 = !DILocation(line: 760, column: 3, scope: !4532)
!4551 = !DILocation(line: 760, column: 6, scope: !4532)
!4552 = !DILocation(line: 760, column: 17, scope: !4532)
!4553 = !DILocation(line: 761, column: 3, scope: !4532)
!4554 = !DILocation(line: 761, column: 6, scope: !4532)
!4555 = !DILocation(line: 761, column: 16, scope: !4532)
!4556 = !DILocation(line: 762, column: 2, scope: !4532)
!4557 = !DILocation(line: 763, column: 3, scope: !4558)
!4558 = distinct !DILexicalBlock(scope: !4528, file: !3, line: 762, column: 9)
!4559 = !DILocation(line: 763, column: 6, scope: !4558)
!4560 = !DILocation(line: 763, column: 12, scope: !4558)
!4561 = !DILocation(line: 767, column: 7, scope: !4288)
!4562 = !DILocation(line: 767, column: 12, scope: !4288)
!4563 = !DILocation(line: 767, column: 4, scope: !4288)
!4564 = !DILocation(line: 768, column: 27, scope: !4288)
!4565 = !DILocation(line: 768, column: 30, scope: !4288)
!4566 = !DILocation(line: 768, column: 35, scope: !4288)
!4567 = !DILocation(line: 768, column: 42, scope: !4288)
!4568 = !DILocation(line: 768, column: 8, scope: !4288)
!4569 = !DILocation(line: 768, column: 6, scope: !4288)
!4570 = !DILocation(line: 769, column: 6, scope: !4571)
!4571 = distinct !DILexicalBlock(scope: !4288, file: !3, line: 769, column: 6)
!4572 = !DILocation(line: 769, column: 6, scope: !4288)
!4573 = !DILocation(line: 770, column: 10, scope: !4571)
!4574 = !DILocation(line: 770, column: 3, scope: !4571)
!4575 = !DILocation(line: 773, column: 7, scope: !4288)
!4576 = !DILocation(line: 773, column: 12, scope: !4288)
!4577 = !DILocation(line: 773, column: 4, scope: !4288)
!4578 = !DILocation(line: 774, column: 2, scope: !4288)
!4579 = !DILocation(line: 774, column: 5, scope: !4288)
!4580 = !DILocation(line: 774, column: 11, scope: !4288)
!4581 = !DILocation(line: 775, column: 2, scope: !4288)
!4582 = !DILocation(line: 775, column: 5, scope: !4288)
!4583 = !DILocation(line: 775, column: 18, scope: !4288)
!4584 = !DILocation(line: 776, column: 2, scope: !4288)
!4585 = !DILocation(line: 776, column: 5, scope: !4288)
!4586 = !DILocation(line: 776, column: 12, scope: !4288)
!4587 = !DILocation(line: 777, column: 2, scope: !4288)
!4588 = !DILocation(line: 777, column: 5, scope: !4288)
!4589 = !DILocation(line: 777, column: 13, scope: !4288)
!4590 = !DILocation(line: 778, column: 2, scope: !4288)
!4591 = !DILocation(line: 778, column: 5, scope: !4288)
!4592 = !DILocation(line: 778, column: 17, scope: !4288)
!4593 = !DILocation(line: 779, column: 2, scope: !4288)
!4594 = !DILocation(line: 779, column: 5, scope: !4288)
!4595 = !DILocation(line: 779, column: 15, scope: !4288)
!4596 = !DILocation(line: 781, column: 2, scope: !4288)
!4597 = !DILocation(line: 782, column: 1, scope: !4288)
!4598 = distinct !DISubprogram(name: "apci1564_reset", scope: !3, file: !3, line: 170, type: !3950, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!4599 = !DILocalVariable(name: "dev", arg: 1, scope: !4598, file: !3, line: 170, type: !175)
!4600 = !DILocation(line: 170, column: 49, scope: !4598)
!4601 = !DILocalVariable(name: "devpriv", scope: !4598, file: !3, line: 172, type: !4298)
!4602 = !DILocation(line: 172, column: 27, scope: !4598)
!4603 = !DILocation(line: 172, column: 37, scope: !4598)
!4604 = !DILocation(line: 172, column: 42, scope: !4598)
!4605 = !DILocation(line: 175, column: 12, scope: !4598)
!4606 = !DILocation(line: 175, column: 17, scope: !4598)
!4607 = !DILocation(line: 175, column: 24, scope: !4598)
!4608 = !DILocation(line: 175, column: 2, scope: !4598)
!4609 = !DILocation(line: 176, column: 6, scope: !4598)
!4610 = !DILocation(line: 176, column: 11, scope: !4598)
!4611 = !DILocation(line: 176, column: 18, scope: !4598)
!4612 = !DILocation(line: 176, column: 2, scope: !4598)
!4613 = !DILocation(line: 177, column: 12, scope: !4598)
!4614 = !DILocation(line: 177, column: 17, scope: !4598)
!4615 = !DILocation(line: 177, column: 24, scope: !4598)
!4616 = !DILocation(line: 177, column: 2, scope: !4598)
!4617 = !DILocation(line: 178, column: 12, scope: !4598)
!4618 = !DILocation(line: 178, column: 17, scope: !4598)
!4619 = !DILocation(line: 178, column: 24, scope: !4598)
!4620 = !DILocation(line: 178, column: 2, scope: !4598)
!4621 = !DILocation(line: 181, column: 12, scope: !4598)
!4622 = !DILocation(line: 181, column: 17, scope: !4598)
!4623 = !DILocation(line: 181, column: 24, scope: !4598)
!4624 = !DILocation(line: 181, column: 2, scope: !4598)
!4625 = !DILocation(line: 182, column: 12, scope: !4598)
!4626 = !DILocation(line: 182, column: 17, scope: !4598)
!4627 = !DILocation(line: 182, column: 24, scope: !4598)
!4628 = !DILocation(line: 182, column: 2, scope: !4598)
!4629 = !DILocation(line: 185, column: 22, scope: !4598)
!4630 = !DILocation(line: 185, column: 27, scope: !4598)
!4631 = !DILocation(line: 185, column: 34, scope: !4598)
!4632 = !DILocation(line: 185, column: 2, scope: !4598)
!4633 = !DILocation(line: 188, column: 12, scope: !4598)
!4634 = !DILocation(line: 188, column: 21, scope: !4598)
!4635 = !DILocation(line: 188, column: 27, scope: !4598)
!4636 = !DILocation(line: 188, column: 2, scope: !4598)
!4637 = !DILocation(line: 189, column: 12, scope: !4598)
!4638 = !DILocation(line: 189, column: 21, scope: !4598)
!4639 = !DILocation(line: 189, column: 27, scope: !4598)
!4640 = !DILocation(line: 189, column: 2, scope: !4598)
!4641 = !DILocation(line: 191, column: 6, scope: !4642)
!4642 = distinct !DILexicalBlock(scope: !4598, file: !3, line: 191, column: 6)
!4643 = !DILocation(line: 191, column: 15, scope: !4642)
!4644 = !DILocation(line: 191, column: 6, scope: !4598)
!4645 = !DILocalVariable(name: "iobase", scope: !4646, file: !3, line: 192, type: !300)
!4646 = distinct !DILexicalBlock(scope: !4642, file: !3, line: 191, column: 25)
!4647 = !DILocation(line: 192, column: 17, scope: !4646)
!4648 = !DILocation(line: 192, column: 26, scope: !4646)
!4649 = !DILocation(line: 192, column: 35, scope: !4646)
!4650 = !DILocation(line: 192, column: 44, scope: !4646)
!4651 = !DILocation(line: 195, column: 13, scope: !4646)
!4652 = !DILocation(line: 195, column: 20, scope: !4646)
!4653 = !DILocation(line: 195, column: 3, scope: !4646)
!4654 = !DILocation(line: 196, column: 13, scope: !4646)
!4655 = !DILocation(line: 196, column: 20, scope: !4646)
!4656 = !DILocation(line: 196, column: 3, scope: !4646)
!4657 = !DILocation(line: 197, column: 13, scope: !4646)
!4658 = !DILocation(line: 197, column: 20, scope: !4646)
!4659 = !DILocation(line: 197, column: 3, scope: !4646)
!4660 = !DILocation(line: 198, column: 2, scope: !4646)
!4661 = !DILocation(line: 200, column: 2, scope: !4598)
!4662 = distinct !DISubprogram(name: "outl", scope: !4663, file: !4663, line: 336, type: !4664, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!4663 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!4664 = !DISubroutineType(types: !4665)
!4665 = !{null, !7, !174}
!4666 = !DILocalVariable(name: "value", arg: 1, scope: !4662, file: !4663, line: 336, type: !7)
!4667 = !DILocation(line: 336, column: 1, scope: !4662)
!4668 = !DILocalVariable(name: "port", arg: 2, scope: !4662, file: !4663, line: 336, type: !174)
!4669 = !{i32 -2143393161}
!4670 = distinct !DISubprogram(name: "inl", scope: !4663, file: !4663, line: 336, type: !4671, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!4671 = !DISubroutineType(types: !4672)
!4672 = !{!7, !174}
!4673 = !DILocalVariable(name: "port", arg: 1, scope: !4670, file: !4663, line: 336, type: !174)
!4674 = !DILocation(line: 336, column: 1, scope: !4670)
!4675 = !DILocalVariable(name: "value", scope: !4670, file: !4663, line: 336, type: !7)
!4676 = !{i32 -2143392959}
!4677 = distinct !DISubprogram(name: "request_irq", scope: !4066, file: !4066, line: 157, type: !4678, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!4678 = !DISubroutineType(types: !4679)
!4679 = !{!174, !7, !4680, !300, !165, !184}
!4680 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !4066, line: 92, baseType: !4681)
!4681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4682, size: 64)
!4682 = !DISubroutineType(types: !4683)
!4683 = !{!4684, !174, !184}
!4684 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !117, line: 17, baseType: !116)
!4685 = !DILocalVariable(name: "irq", arg: 1, scope: !4677, file: !4066, line: 157, type: !7)
!4686 = !DILocation(line: 157, column: 26, scope: !4677)
!4687 = !DILocalVariable(name: "handler", arg: 2, scope: !4677, file: !4066, line: 157, type: !4680)
!4688 = !DILocation(line: 157, column: 45, scope: !4677)
!4689 = !DILocalVariable(name: "flags", arg: 3, scope: !4677, file: !4066, line: 157, type: !300)
!4690 = !DILocation(line: 157, column: 68, scope: !4677)
!4691 = !DILocalVariable(name: "name", arg: 4, scope: !4677, file: !4066, line: 158, type: !165)
!4692 = !DILocation(line: 158, column: 18, scope: !4677)
!4693 = !DILocalVariable(name: "dev", arg: 5, scope: !4677, file: !4066, line: 158, type: !184)
!4694 = !DILocation(line: 158, column: 30, scope: !4677)
!4695 = !DILocation(line: 160, column: 30, scope: !4677)
!4696 = !DILocation(line: 160, column: 35, scope: !4677)
!4697 = !DILocation(line: 160, column: 50, scope: !4677)
!4698 = !DILocation(line: 160, column: 57, scope: !4677)
!4699 = !DILocation(line: 160, column: 63, scope: !4677)
!4700 = !DILocation(line: 160, column: 9, scope: !4677)
!4701 = !DILocation(line: 160, column: 2, scope: !4677)
!4702 = distinct !DISubprogram(name: "apci1564_interrupt", scope: !3, file: !3, line: 203, type: !4682, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!4703 = !DILocalVariable(name: "irq", arg: 1, scope: !4702, file: !3, line: 203, type: !174)
!4704 = !DILocation(line: 203, column: 43, scope: !4702)
!4705 = !DILocalVariable(name: "d", arg: 2, scope: !4702, file: !3, line: 203, type: !184)
!4706 = !DILocation(line: 203, column: 54, scope: !4702)
!4707 = !DILocalVariable(name: "dev", scope: !4702, file: !3, line: 205, type: !175)
!4708 = !DILocation(line: 205, column: 24, scope: !4702)
!4709 = !DILocation(line: 205, column: 30, scope: !4702)
!4710 = !DILocalVariable(name: "devpriv", scope: !4702, file: !3, line: 206, type: !4298)
!4711 = !DILocation(line: 206, column: 27, scope: !4702)
!4712 = !DILocation(line: 206, column: 37, scope: !4702)
!4713 = !DILocation(line: 206, column: 42, scope: !4702)
!4714 = !DILocalVariable(name: "s", scope: !4702, file: !3, line: 207, type: !3808)
!4715 = !DILocation(line: 207, column: 27, scope: !4702)
!4716 = !DILocation(line: 207, column: 31, scope: !4702)
!4717 = !DILocation(line: 207, column: 36, scope: !4702)
!4718 = !DILocalVariable(name: "status", scope: !4702, file: !3, line: 208, type: !7)
!4719 = !DILocation(line: 208, column: 15, scope: !4702)
!4720 = !DILocalVariable(name: "ctrl", scope: !4702, file: !3, line: 209, type: !7)
!4721 = !DILocation(line: 209, column: 15, scope: !4702)
!4722 = !DILocalVariable(name: "chan", scope: !4702, file: !3, line: 210, type: !7)
!4723 = !DILocation(line: 210, column: 15, scope: !4702)
!4724 = !DILocation(line: 212, column: 2, scope: !4702)
!4725 = !DILocation(line: 212, column: 5, scope: !4702)
!4726 = !DILocation(line: 212, column: 11, scope: !4702)
!4727 = !DILocation(line: 214, column: 15, scope: !4702)
!4728 = !DILocation(line: 214, column: 20, scope: !4702)
!4729 = !DILocation(line: 214, column: 27, scope: !4702)
!4730 = !DILocation(line: 214, column: 11, scope: !4702)
!4731 = !DILocation(line: 214, column: 9, scope: !4702)
!4732 = !DILocation(line: 215, column: 6, scope: !4733)
!4733 = distinct !DILexicalBlock(scope: !4702, file: !3, line: 215, column: 6)
!4734 = !DILocation(line: 215, column: 13, scope: !4733)
!4735 = !DILocation(line: 215, column: 6, scope: !4702)
!4736 = !DILocation(line: 217, column: 18, scope: !4737)
!4737 = distinct !DILexicalBlock(scope: !4733, file: !3, line: 215, column: 36)
!4738 = !DILocation(line: 217, column: 23, scope: !4737)
!4739 = !DILocation(line: 217, column: 30, scope: !4737)
!4740 = !DILocation(line: 217, column: 14, scope: !4737)
!4741 = !DILocation(line: 217, column: 3, scope: !4737)
!4742 = !DILocation(line: 217, column: 6, scope: !4737)
!4743 = !DILocation(line: 217, column: 12, scope: !4737)
!4744 = !DILocation(line: 218, column: 3, scope: !4737)
!4745 = !DILocation(line: 218, column: 6, scope: !4737)
!4746 = !DILocation(line: 218, column: 12, scope: !4737)
!4747 = !DILocation(line: 219, column: 3, scope: !4737)
!4748 = !DILocation(line: 219, column: 6, scope: !4737)
!4749 = !DILocation(line: 219, column: 12, scope: !4737)
!4750 = !DILocation(line: 222, column: 8, scope: !4737)
!4751 = !DILocation(line: 222, column: 15, scope: !4737)
!4752 = !DILocation(line: 223, column: 8, scope: !4737)
!4753 = !DILocation(line: 223, column: 13, scope: !4737)
!4754 = !DILocation(line: 223, column: 20, scope: !4737)
!4755 = !DILocation(line: 222, column: 3, scope: !4737)
!4756 = !DILocation(line: 224, column: 8, scope: !4737)
!4757 = !DILocation(line: 224, column: 16, scope: !4737)
!4758 = !DILocation(line: 224, column: 21, scope: !4737)
!4759 = !DILocation(line: 224, column: 28, scope: !4737)
!4760 = !DILocation(line: 224, column: 3, scope: !4737)
!4761 = !DILocation(line: 225, column: 2, scope: !4737)
!4762 = !DILocation(line: 227, column: 15, scope: !4702)
!4763 = !DILocation(line: 227, column: 24, scope: !4702)
!4764 = !DILocation(line: 227, column: 30, scope: !4702)
!4765 = !DILocation(line: 227, column: 11, scope: !4702)
!4766 = !DILocation(line: 227, column: 9, scope: !4702)
!4767 = !DILocation(line: 228, column: 6, scope: !4768)
!4768 = distinct !DILexicalBlock(scope: !4702, file: !3, line: 228, column: 6)
!4769 = !DILocation(line: 228, column: 13, scope: !4768)
!4770 = !DILocation(line: 228, column: 6, scope: !4702)
!4771 = !DILocation(line: 229, column: 3, scope: !4772)
!4772 = distinct !DILexicalBlock(scope: !4768, file: !3, line: 228, column: 29)
!4773 = !DILocation(line: 229, column: 6, scope: !4772)
!4774 = !DILocation(line: 229, column: 12, scope: !4772)
!4775 = !DILocation(line: 232, column: 14, scope: !4772)
!4776 = !DILocation(line: 232, column: 23, scope: !4772)
!4777 = !DILocation(line: 232, column: 29, scope: !4772)
!4778 = !DILocation(line: 232, column: 10, scope: !4772)
!4779 = !DILocation(line: 232, column: 8, scope: !4772)
!4780 = !DILocation(line: 233, column: 13, scope: !4772)
!4781 = !DILocation(line: 233, column: 22, scope: !4772)
!4782 = !DILocation(line: 233, column: 28, scope: !4772)
!4783 = !DILocation(line: 233, column: 3, scope: !4772)
!4784 = !DILocation(line: 234, column: 8, scope: !4772)
!4785 = !DILocation(line: 234, column: 14, scope: !4772)
!4786 = !DILocation(line: 234, column: 23, scope: !4772)
!4787 = !DILocation(line: 234, column: 29, scope: !4772)
!4788 = !DILocation(line: 234, column: 3, scope: !4772)
!4789 = !DILocation(line: 235, column: 2, scope: !4772)
!4790 = !DILocation(line: 237, column: 6, scope: !4791)
!4791 = distinct !DILexicalBlock(scope: !4702, file: !3, line: 237, column: 6)
!4792 = !DILocation(line: 237, column: 15, scope: !4791)
!4793 = !DILocation(line: 237, column: 6, scope: !4702)
!4794 = !DILocation(line: 238, column: 13, scope: !4795)
!4795 = distinct !DILexicalBlock(scope: !4796, file: !3, line: 238, column: 3)
!4796 = distinct !DILexicalBlock(scope: !4791, file: !3, line: 237, column: 25)
!4797 = !DILocation(line: 238, column: 8, scope: !4795)
!4798 = !DILocation(line: 238, column: 18, scope: !4799)
!4799 = distinct !DILexicalBlock(scope: !4795, file: !3, line: 238, column: 3)
!4800 = !DILocation(line: 238, column: 23, scope: !4799)
!4801 = !DILocation(line: 238, column: 3, scope: !4795)
!4802 = !DILocalVariable(name: "iobase", scope: !4803, file: !3, line: 239, type: !300)
!4803 = distinct !DILexicalBlock(scope: !4799, file: !3, line: 238, column: 36)
!4804 = !DILocation(line: 239, column: 18, scope: !4803)
!4805 = !DILocation(line: 241, column: 13, scope: !4803)
!4806 = !DILocation(line: 241, column: 22, scope: !4803)
!4807 = !DILocation(line: 241, column: 33, scope: !4803)
!4808 = !DILocation(line: 241, column: 31, scope: !4803)
!4809 = !DILocation(line: 241, column: 11, scope: !4803)
!4810 = !DILocation(line: 243, column: 17, scope: !4803)
!4811 = !DILocation(line: 243, column: 24, scope: !4803)
!4812 = !DILocation(line: 243, column: 13, scope: !4803)
!4813 = !DILocation(line: 243, column: 11, scope: !4803)
!4814 = !DILocation(line: 244, column: 8, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !4803, file: !3, line: 244, column: 8)
!4816 = !DILocation(line: 244, column: 15, scope: !4815)
!4817 = !DILocation(line: 244, column: 8, scope: !4803)
!4818 = !DILocation(line: 245, column: 17, scope: !4819)
!4819 = distinct !DILexicalBlock(scope: !4815, file: !3, line: 244, column: 31)
!4820 = !DILocation(line: 245, column: 5, scope: !4819)
!4821 = !DILocation(line: 245, column: 8, scope: !4819)
!4822 = !DILocation(line: 245, column: 14, scope: !4819)
!4823 = !DILocation(line: 248, column: 16, scope: !4819)
!4824 = !DILocation(line: 248, column: 23, scope: !4819)
!4825 = !DILocation(line: 248, column: 12, scope: !4819)
!4826 = !DILocation(line: 248, column: 10, scope: !4819)
!4827 = !DILocation(line: 249, column: 15, scope: !4819)
!4828 = !DILocation(line: 249, column: 22, scope: !4819)
!4829 = !DILocation(line: 249, column: 5, scope: !4819)
!4830 = !DILocation(line: 250, column: 10, scope: !4819)
!4831 = !DILocation(line: 250, column: 16, scope: !4819)
!4832 = !DILocation(line: 250, column: 23, scope: !4819)
!4833 = !DILocation(line: 250, column: 5, scope: !4819)
!4834 = !DILocation(line: 251, column: 4, scope: !4819)
!4835 = !DILocation(line: 252, column: 3, scope: !4803)
!4836 = !DILocation(line: 238, column: 32, scope: !4799)
!4837 = !DILocation(line: 238, column: 3, scope: !4799)
!4838 = distinct !{!4838, !4801, !4839}
!4839 = !DILocation(line: 252, column: 3, scope: !4795)
!4840 = !DILocation(line: 253, column: 2, scope: !4796)
!4841 = !DILocation(line: 255, column: 6, scope: !4842)
!4842 = distinct !DILexicalBlock(scope: !4702, file: !3, line: 255, column: 6)
!4843 = !DILocation(line: 255, column: 9, scope: !4842)
!4844 = !DILocation(line: 255, column: 15, scope: !4842)
!4845 = !DILocation(line: 255, column: 6, scope: !4702)
!4846 = !DILocation(line: 256, column: 28, scope: !4847)
!4847 = distinct !DILexicalBlock(scope: !4842, file: !3, line: 255, column: 38)
!4848 = !DILocation(line: 256, column: 32, scope: !4847)
!4849 = !DILocation(line: 256, column: 35, scope: !4847)
!4850 = !DILocation(line: 256, column: 31, scope: !4847)
!4851 = !DILocation(line: 256, column: 3, scope: !4847)
!4852 = !DILocation(line: 257, column: 24, scope: !4847)
!4853 = !DILocation(line: 257, column: 29, scope: !4847)
!4854 = !DILocation(line: 257, column: 3, scope: !4847)
!4855 = !DILocation(line: 258, column: 2, scope: !4847)
!4856 = !DILocation(line: 260, column: 2, scope: !4702)
!4857 = distinct !DISubprogram(name: "apci1564_di_insn_bits", scope: !3, file: !3, line: 263, type: !3905, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!4858 = !DILocalVariable(name: "dev", arg: 1, scope: !4857, file: !3, line: 263, type: !175)
!4859 = !DILocation(line: 263, column: 56, scope: !4857)
!4860 = !DILocalVariable(name: "s", arg: 2, scope: !4857, file: !3, line: 264, type: !3808)
!4861 = !DILocation(line: 264, column: 31, scope: !4857)
!4862 = !DILocalVariable(name: "insn", arg: 3, scope: !4857, file: !3, line: 265, type: !3907)
!4863 = !DILocation(line: 265, column: 26, scope: !4857)
!4864 = !DILocalVariable(name: "data", arg: 4, scope: !4857, file: !3, line: 266, type: !2660)
!4865 = !DILocation(line: 266, column: 20, scope: !4857)
!4866 = !DILocation(line: 268, column: 16, scope: !4857)
!4867 = !DILocation(line: 268, column: 21, scope: !4857)
!4868 = !DILocation(line: 268, column: 28, scope: !4857)
!4869 = !DILocation(line: 268, column: 12, scope: !4857)
!4870 = !DILocation(line: 268, column: 2, scope: !4857)
!4871 = !DILocation(line: 268, column: 10, scope: !4857)
!4872 = !DILocation(line: 270, column: 9, scope: !4857)
!4873 = !DILocation(line: 270, column: 15, scope: !4857)
!4874 = !DILocation(line: 270, column: 2, scope: !4857)
!4875 = distinct !DISubprogram(name: "apci1564_do_insn_bits", scope: !3, file: !3, line: 273, type: !3905, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!4876 = !DILocalVariable(name: "dev", arg: 1, scope: !4875, file: !3, line: 273, type: !175)
!4877 = !DILocation(line: 273, column: 56, scope: !4875)
!4878 = !DILocalVariable(name: "s", arg: 2, scope: !4875, file: !3, line: 274, type: !3808)
!4879 = !DILocation(line: 274, column: 31, scope: !4875)
!4880 = !DILocalVariable(name: "insn", arg: 3, scope: !4875, file: !3, line: 275, type: !3907)
!4881 = !DILocation(line: 275, column: 26, scope: !4875)
!4882 = !DILocalVariable(name: "data", arg: 4, scope: !4875, file: !3, line: 276, type: !2660)
!4883 = !DILocation(line: 276, column: 20, scope: !4875)
!4884 = !DILocation(line: 278, column: 17, scope: !4875)
!4885 = !DILocation(line: 278, column: 22, scope: !4875)
!4886 = !DILocation(line: 278, column: 29, scope: !4875)
!4887 = !DILocation(line: 278, column: 13, scope: !4875)
!4888 = !DILocation(line: 278, column: 2, scope: !4875)
!4889 = !DILocation(line: 278, column: 5, scope: !4875)
!4890 = !DILocation(line: 278, column: 11, scope: !4875)
!4891 = !DILocation(line: 280, column: 30, scope: !4892)
!4892 = distinct !DILexicalBlock(scope: !4875, file: !3, line: 280, column: 6)
!4893 = !DILocation(line: 280, column: 33, scope: !4892)
!4894 = !DILocation(line: 280, column: 6, scope: !4892)
!4895 = !DILocation(line: 280, column: 6, scope: !4875)
!4896 = !DILocation(line: 281, column: 8, scope: !4892)
!4897 = !DILocation(line: 281, column: 11, scope: !4892)
!4898 = !DILocation(line: 281, column: 18, scope: !4892)
!4899 = !DILocation(line: 281, column: 23, scope: !4892)
!4900 = !DILocation(line: 281, column: 30, scope: !4892)
!4901 = !DILocation(line: 281, column: 3, scope: !4892)
!4902 = !DILocation(line: 283, column: 12, scope: !4875)
!4903 = !DILocation(line: 283, column: 15, scope: !4875)
!4904 = !DILocation(line: 283, column: 2, scope: !4875)
!4905 = !DILocation(line: 283, column: 10, scope: !4875)
!4906 = !DILocation(line: 285, column: 9, scope: !4875)
!4907 = !DILocation(line: 285, column: 15, scope: !4875)
!4908 = !DILocation(line: 285, column: 2, scope: !4875)
!4909 = distinct !DISubprogram(name: "apci1564_cos_insn_config", scope: !3, file: !3, line: 328, type: !3905, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!4910 = !DILocalVariable(name: "dev", arg: 1, scope: !4909, file: !3, line: 328, type: !175)
!4911 = !DILocation(line: 328, column: 59, scope: !4909)
!4912 = !DILocalVariable(name: "s", arg: 2, scope: !4909, file: !3, line: 329, type: !3808)
!4913 = !DILocation(line: 329, column: 34, scope: !4909)
!4914 = !DILocalVariable(name: "insn", arg: 3, scope: !4909, file: !3, line: 330, type: !3907)
!4915 = !DILocation(line: 330, column: 29, scope: !4909)
!4916 = !DILocalVariable(name: "data", arg: 4, scope: !4909, file: !3, line: 331, type: !2660)
!4917 = !DILocation(line: 331, column: 23, scope: !4909)
!4918 = !DILocalVariable(name: "devpriv", scope: !4909, file: !3, line: 333, type: !4298)
!4919 = !DILocation(line: 333, column: 27, scope: !4909)
!4920 = !DILocation(line: 333, column: 37, scope: !4909)
!4921 = !DILocation(line: 333, column: 42, scope: !4909)
!4922 = !DILocalVariable(name: "shift", scope: !4909, file: !3, line: 334, type: !7)
!4923 = !DILocation(line: 334, column: 15, scope: !4909)
!4924 = !DILocalVariable(name: "oldmask", scope: !4909, file: !3, line: 334, type: !7)
!4925 = !DILocation(line: 334, column: 22, scope: !4909)
!4926 = !DILocalVariable(name: "himask", scope: !4909, file: !3, line: 334, type: !7)
!4927 = !DILocation(line: 334, column: 31, scope: !4909)
!4928 = !DILocalVariable(name: "lomask", scope: !4909, file: !3, line: 334, type: !7)
!4929 = !DILocation(line: 334, column: 39, scope: !4909)
!4930 = !DILocation(line: 336, column: 10, scope: !4909)
!4931 = !DILocation(line: 336, column: 2, scope: !4909)
!4932 = !DILocation(line: 338, column: 7, scope: !4933)
!4933 = distinct !DILexicalBlock(scope: !4934, file: !3, line: 338, column: 7)
!4934 = distinct !DILexicalBlock(scope: !4909, file: !3, line: 336, column: 19)
!4935 = !DILocation(line: 338, column: 15, scope: !4933)
!4936 = !DILocation(line: 338, column: 7, scope: !4934)
!4937 = !DILocation(line: 339, column: 4, scope: !4933)
!4938 = !DILocation(line: 340, column: 11, scope: !4934)
!4939 = !DILocation(line: 340, column: 9, scope: !4934)
!4940 = !DILocation(line: 341, column: 7, scope: !4941)
!4941 = distinct !DILexicalBlock(scope: !4934, file: !3, line: 341, column: 7)
!4942 = !DILocation(line: 341, column: 13, scope: !4941)
!4943 = !DILocation(line: 341, column: 7, scope: !4934)
!4944 = !DILocation(line: 342, column: 21, scope: !4945)
!4945 = distinct !DILexicalBlock(scope: !4941, file: !3, line: 341, column: 19)
!4946 = !DILocation(line: 342, column: 18, scope: !4945)
!4947 = !DILocation(line: 342, column: 28, scope: !4945)
!4948 = !DILocation(line: 342, column: 12, scope: !4945)
!4949 = !DILocation(line: 343, column: 13, scope: !4945)
!4950 = !DILocation(line: 343, column: 24, scope: !4945)
!4951 = !DILocation(line: 343, column: 21, scope: !4945)
!4952 = !DILocation(line: 343, column: 11, scope: !4945)
!4953 = !DILocation(line: 344, column: 13, scope: !4945)
!4954 = !DILocation(line: 344, column: 24, scope: !4945)
!4955 = !DILocation(line: 344, column: 21, scope: !4945)
!4956 = !DILocation(line: 344, column: 11, scope: !4945)
!4957 = !DILocation(line: 345, column: 3, scope: !4945)
!4958 = !DILocation(line: 346, column: 12, scope: !4959)
!4959 = distinct !DILexicalBlock(scope: !4941, file: !3, line: 345, column: 10)
!4960 = !DILocation(line: 347, column: 11, scope: !4959)
!4961 = !DILocation(line: 348, column: 11, scope: !4959)
!4962 = !DILocation(line: 350, column: 11, scope: !4934)
!4963 = !DILocation(line: 350, column: 3, scope: !4934)
!4964 = !DILocation(line: 352, column: 4, scope: !4965)
!4965 = distinct !DILexicalBlock(scope: !4934, file: !3, line: 350, column: 20)
!4966 = !DILocation(line: 352, column: 13, scope: !4965)
!4967 = !DILocation(line: 352, column: 18, scope: !4965)
!4968 = !DILocation(line: 353, column: 4, scope: !4965)
!4969 = !DILocation(line: 353, column: 13, scope: !4965)
!4970 = !DILocation(line: 353, column: 19, scope: !4965)
!4971 = !DILocation(line: 354, column: 4, scope: !4965)
!4972 = !DILocation(line: 354, column: 13, scope: !4965)
!4973 = !DILocation(line: 354, column: 19, scope: !4965)
!4974 = !DILocation(line: 355, column: 14, scope: !4965)
!4975 = !DILocation(line: 355, column: 19, scope: !4965)
!4976 = !DILocation(line: 355, column: 26, scope: !4965)
!4977 = !DILocation(line: 355, column: 4, scope: !4965)
!4978 = !DILocation(line: 356, column: 8, scope: !4965)
!4979 = !DILocation(line: 356, column: 13, scope: !4965)
!4980 = !DILocation(line: 356, column: 20, scope: !4965)
!4981 = !DILocation(line: 356, column: 4, scope: !4965)
!4982 = !DILocation(line: 357, column: 14, scope: !4965)
!4983 = !DILocation(line: 357, column: 19, scope: !4965)
!4984 = !DILocation(line: 357, column: 26, scope: !4965)
!4985 = !DILocation(line: 357, column: 4, scope: !4965)
!4986 = !DILocation(line: 358, column: 14, scope: !4965)
!4987 = !DILocation(line: 358, column: 19, scope: !4965)
!4988 = !DILocation(line: 358, column: 26, scope: !4965)
!4989 = !DILocation(line: 358, column: 4, scope: !4965)
!4990 = !DILocation(line: 359, column: 4, scope: !4965)
!4991 = !DILocation(line: 361, column: 8, scope: !4992)
!4992 = distinct !DILexicalBlock(scope: !4965, file: !3, line: 361, column: 8)
!4993 = !DILocation(line: 361, column: 17, scope: !4992)
!4994 = !DILocation(line: 361, column: 22, scope: !4992)
!4995 = !DILocation(line: 361, column: 8, scope: !4965)
!4996 = !DILocation(line: 363, column: 5, scope: !4997)
!4997 = distinct !DILexicalBlock(scope: !4992, file: !3, line: 361, column: 46)
!4998 = !DILocation(line: 363, column: 14, scope: !4997)
!4999 = !DILocation(line: 363, column: 19, scope: !4997)
!5000 = !DILocation(line: 365, column: 5, scope: !4997)
!5001 = !DILocation(line: 365, column: 14, scope: !4997)
!5002 = !DILocation(line: 365, column: 20, scope: !4997)
!5003 = !DILocation(line: 366, column: 5, scope: !4997)
!5004 = !DILocation(line: 366, column: 14, scope: !4997)
!5005 = !DILocation(line: 366, column: 20, scope: !4997)
!5006 = !DILocation(line: 367, column: 4, scope: !4997)
!5007 = !DILocation(line: 369, column: 23, scope: !5008)
!5008 = distinct !DILexicalBlock(scope: !4992, file: !3, line: 367, column: 11)
!5009 = !DILocation(line: 369, column: 5, scope: !5008)
!5010 = !DILocation(line: 369, column: 14, scope: !5008)
!5011 = !DILocation(line: 369, column: 20, scope: !5008)
!5012 = !DILocation(line: 370, column: 23, scope: !5008)
!5013 = !DILocation(line: 370, column: 5, scope: !5008)
!5014 = !DILocation(line: 370, column: 14, scope: !5008)
!5015 = !DILocation(line: 370, column: 20, scope: !5008)
!5016 = !DILocation(line: 373, column: 22, scope: !4965)
!5017 = !DILocation(line: 373, column: 4, scope: !4965)
!5018 = !DILocation(line: 373, column: 13, scope: !4965)
!5019 = !DILocation(line: 373, column: 19, scope: !4965)
!5020 = !DILocation(line: 374, column: 22, scope: !4965)
!5021 = !DILocation(line: 374, column: 4, scope: !4965)
!5022 = !DILocation(line: 374, column: 13, scope: !4965)
!5023 = !DILocation(line: 374, column: 19, scope: !4965)
!5024 = !DILocation(line: 375, column: 4, scope: !4965)
!5025 = !DILocation(line: 377, column: 8, scope: !5026)
!5026 = distinct !DILexicalBlock(scope: !4965, file: !3, line: 377, column: 8)
!5027 = !DILocation(line: 377, column: 17, scope: !5026)
!5028 = !DILocation(line: 377, column: 22, scope: !5026)
!5029 = !DILocation(line: 377, column: 8, scope: !4965)
!5030 = !DILocation(line: 380, column: 5, scope: !5031)
!5031 = distinct !DILexicalBlock(scope: !5026, file: !3, line: 378, column: 35)
!5032 = !DILocation(line: 380, column: 14, scope: !5031)
!5033 = !DILocation(line: 380, column: 19, scope: !5031)
!5034 = !DILocation(line: 383, column: 5, scope: !5031)
!5035 = !DILocation(line: 383, column: 14, scope: !5031)
!5036 = !DILocation(line: 383, column: 20, scope: !5031)
!5037 = !DILocation(line: 384, column: 5, scope: !5031)
!5038 = !DILocation(line: 384, column: 14, scope: !5031)
!5039 = !DILocation(line: 384, column: 20, scope: !5031)
!5040 = !DILocation(line: 385, column: 4, scope: !5031)
!5041 = !DILocation(line: 387, column: 23, scope: !5042)
!5042 = distinct !DILexicalBlock(scope: !5026, file: !3, line: 385, column: 11)
!5043 = !DILocation(line: 387, column: 5, scope: !5042)
!5044 = !DILocation(line: 387, column: 14, scope: !5042)
!5045 = !DILocation(line: 387, column: 20, scope: !5042)
!5046 = !DILocation(line: 388, column: 23, scope: !5042)
!5047 = !DILocation(line: 388, column: 5, scope: !5042)
!5048 = !DILocation(line: 388, column: 14, scope: !5042)
!5049 = !DILocation(line: 388, column: 20, scope: !5042)
!5050 = !DILocation(line: 391, column: 22, scope: !4965)
!5051 = !DILocation(line: 391, column: 4, scope: !4965)
!5052 = !DILocation(line: 391, column: 13, scope: !4965)
!5053 = !DILocation(line: 391, column: 19, scope: !4965)
!5054 = !DILocation(line: 392, column: 22, scope: !4965)
!5055 = !DILocation(line: 392, column: 4, scope: !4965)
!5056 = !DILocation(line: 392, column: 13, scope: !4965)
!5057 = !DILocation(line: 392, column: 19, scope: !4965)
!5058 = !DILocation(line: 393, column: 4, scope: !4965)
!5059 = !DILocation(line: 395, column: 4, scope: !4965)
!5060 = !DILocation(line: 399, column: 3, scope: !4934)
!5061 = !DILocation(line: 399, column: 12, scope: !4934)
!5062 = !DILocation(line: 399, column: 18, scope: !4934)
!5063 = !DILocation(line: 400, column: 3, scope: !4934)
!5064 = !DILocation(line: 400, column: 12, scope: !4934)
!5065 = !DILocation(line: 400, column: 18, scope: !4934)
!5066 = !DILocation(line: 401, column: 3, scope: !4934)
!5067 = !DILocation(line: 403, column: 3, scope: !4934)
!5068 = !DILocation(line: 405, column: 9, scope: !4909)
!5069 = !DILocation(line: 405, column: 15, scope: !4909)
!5070 = !DILocation(line: 405, column: 2, scope: !4909)
!5071 = !DILocation(line: 406, column: 1, scope: !4909)
!5072 = distinct !DISubprogram(name: "apci1564_cos_insn_bits", scope: !3, file: !3, line: 408, type: !3905, scopeLine: 412, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!5073 = !DILocalVariable(name: "dev", arg: 1, scope: !5072, file: !3, line: 408, type: !175)
!5074 = !DILocation(line: 408, column: 57, scope: !5072)
!5075 = !DILocalVariable(name: "s", arg: 2, scope: !5072, file: !3, line: 409, type: !3808)
!5076 = !DILocation(line: 409, column: 32, scope: !5072)
!5077 = !DILocalVariable(name: "insn", arg: 3, scope: !5072, file: !3, line: 410, type: !3907)
!5078 = !DILocation(line: 410, column: 27, scope: !5072)
!5079 = !DILocalVariable(name: "data", arg: 4, scope: !5072, file: !3, line: 411, type: !2660)
!5080 = !DILocation(line: 411, column: 21, scope: !5072)
!5081 = !DILocation(line: 413, column: 12, scope: !5072)
!5082 = !DILocation(line: 413, column: 15, scope: !5072)
!5083 = !DILocation(line: 413, column: 2, scope: !5072)
!5084 = !DILocation(line: 413, column: 10, scope: !5072)
!5085 = !DILocation(line: 415, column: 2, scope: !5072)
!5086 = distinct !DISubprogram(name: "apci1564_cos_cmdtest", scope: !3, file: !3, line: 418, type: !3926, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!5087 = !DILocalVariable(name: "dev", arg: 1, scope: !5086, file: !3, line: 418, type: !175)
!5088 = !DILocation(line: 418, column: 55, scope: !5086)
!5089 = !DILocalVariable(name: "s", arg: 2, scope: !5086, file: !3, line: 419, type: !3808)
!5090 = !DILocation(line: 419, column: 30, scope: !5086)
!5091 = !DILocalVariable(name: "cmd", arg: 3, scope: !5086, file: !3, line: 420, type: !3928)
!5092 = !DILocation(line: 420, column: 24, scope: !5086)
!5093 = !DILocalVariable(name: "err", scope: !5086, file: !3, line: 422, type: !174)
!5094 = !DILocation(line: 422, column: 6, scope: !5086)
!5095 = !DILocation(line: 426, column: 35, scope: !5086)
!5096 = !DILocation(line: 426, column: 40, scope: !5086)
!5097 = !DILocation(line: 426, column: 9, scope: !5086)
!5098 = !DILocation(line: 426, column: 6, scope: !5086)
!5099 = !DILocation(line: 427, column: 35, scope: !5086)
!5100 = !DILocation(line: 427, column: 40, scope: !5086)
!5101 = !DILocation(line: 427, column: 9, scope: !5086)
!5102 = !DILocation(line: 427, column: 6, scope: !5086)
!5103 = !DILocation(line: 428, column: 35, scope: !5086)
!5104 = !DILocation(line: 428, column: 40, scope: !5086)
!5105 = !DILocation(line: 428, column: 9, scope: !5086)
!5106 = !DILocation(line: 428, column: 6, scope: !5086)
!5107 = !DILocation(line: 429, column: 35, scope: !5086)
!5108 = !DILocation(line: 429, column: 40, scope: !5086)
!5109 = !DILocation(line: 429, column: 9, scope: !5086)
!5110 = !DILocation(line: 429, column: 6, scope: !5086)
!5111 = !DILocation(line: 430, column: 35, scope: !5086)
!5112 = !DILocation(line: 430, column: 40, scope: !5086)
!5113 = !DILocation(line: 430, column: 9, scope: !5086)
!5114 = !DILocation(line: 430, column: 6, scope: !5086)
!5115 = !DILocation(line: 432, column: 6, scope: !5116)
!5116 = distinct !DILexicalBlock(scope: !5086, file: !3, line: 432, column: 6)
!5117 = !DILocation(line: 432, column: 6, scope: !5086)
!5118 = !DILocation(line: 433, column: 3, scope: !5116)
!5119 = !DILocation(line: 440, column: 38, scope: !5086)
!5120 = !DILocation(line: 440, column: 43, scope: !5086)
!5121 = !DILocation(line: 440, column: 9, scope: !5086)
!5122 = !DILocation(line: 440, column: 6, scope: !5086)
!5123 = !DILocation(line: 441, column: 38, scope: !5086)
!5124 = !DILocation(line: 441, column: 43, scope: !5086)
!5125 = !DILocation(line: 441, column: 9, scope: !5086)
!5126 = !DILocation(line: 441, column: 6, scope: !5086)
!5127 = !DILocation(line: 442, column: 38, scope: !5086)
!5128 = !DILocation(line: 442, column: 43, scope: !5086)
!5129 = !DILocation(line: 442, column: 9, scope: !5086)
!5130 = !DILocation(line: 442, column: 6, scope: !5086)
!5131 = !DILocation(line: 443, column: 38, scope: !5086)
!5132 = !DILocation(line: 443, column: 43, scope: !5086)
!5133 = !DILocation(line: 444, column: 9, scope: !5086)
!5134 = !DILocation(line: 444, column: 14, scope: !5086)
!5135 = !DILocation(line: 443, column: 9, scope: !5086)
!5136 = !DILocation(line: 443, column: 6, scope: !5086)
!5137 = !DILocation(line: 445, column: 38, scope: !5086)
!5138 = !DILocation(line: 445, column: 43, scope: !5086)
!5139 = !DILocation(line: 445, column: 9, scope: !5086)
!5140 = !DILocation(line: 445, column: 6, scope: !5086)
!5141 = !DILocation(line: 447, column: 6, scope: !5142)
!5142 = distinct !DILexicalBlock(scope: !5086, file: !3, line: 447, column: 6)
!5143 = !DILocation(line: 447, column: 6, scope: !5086)
!5144 = !DILocation(line: 448, column: 3, scope: !5142)
!5145 = !DILocation(line: 454, column: 2, scope: !5086)
!5146 = !DILocation(line: 455, column: 1, scope: !5086)
!5147 = distinct !DISubprogram(name: "apci1564_cos_cmd", scope: !3, file: !3, line: 462, type: !3922, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!5148 = !DILocalVariable(name: "dev", arg: 1, scope: !5147, file: !3, line: 462, type: !175)
!5149 = !DILocation(line: 462, column: 51, scope: !5147)
!5150 = !DILocalVariable(name: "s", arg: 2, scope: !5147, file: !3, line: 463, type: !3808)
!5151 = !DILocation(line: 463, column: 33, scope: !5147)
!5152 = !DILocalVariable(name: "devpriv", scope: !5147, file: !3, line: 465, type: !4298)
!5153 = !DILocation(line: 465, column: 27, scope: !5147)
!5154 = !DILocation(line: 465, column: 37, scope: !5147)
!5155 = !DILocation(line: 465, column: 42, scope: !5147)
!5156 = !DILocation(line: 467, column: 7, scope: !5157)
!5157 = distinct !DILexicalBlock(scope: !5147, file: !3, line: 467, column: 6)
!5158 = !DILocation(line: 467, column: 16, scope: !5157)
!5159 = !DILocation(line: 467, column: 21, scope: !5157)
!5160 = !DILocation(line: 467, column: 26, scope: !5157)
!5161 = !DILocation(line: 467, column: 35, scope: !5157)
!5162 = !DILocation(line: 467, column: 41, scope: !5157)
!5163 = !DILocation(line: 467, column: 44, scope: !5157)
!5164 = !DILocation(line: 467, column: 53, scope: !5157)
!5165 = !DILocation(line: 467, column: 6, scope: !5147)
!5166 = !DILocation(line: 468, column: 3, scope: !5167)
!5167 = distinct !DILexicalBlock(scope: !5157, file: !3, line: 467, column: 61)
!5168 = !DILocation(line: 470, column: 3, scope: !5167)
!5169 = !DILocation(line: 473, column: 7, scope: !5147)
!5170 = !DILocation(line: 473, column: 16, scope: !5147)
!5171 = !DILocation(line: 473, column: 23, scope: !5147)
!5172 = !DILocation(line: 473, column: 28, scope: !5147)
!5173 = !DILocation(line: 473, column: 35, scope: !5147)
!5174 = !DILocation(line: 473, column: 2, scope: !5147)
!5175 = !DILocation(line: 474, column: 7, scope: !5147)
!5176 = !DILocation(line: 474, column: 16, scope: !5147)
!5177 = !DILocation(line: 474, column: 23, scope: !5147)
!5178 = !DILocation(line: 474, column: 28, scope: !5147)
!5179 = !DILocation(line: 474, column: 35, scope: !5147)
!5180 = !DILocation(line: 474, column: 2, scope: !5147)
!5181 = !DILocation(line: 475, column: 7, scope: !5147)
!5182 = !DILocation(line: 475, column: 16, scope: !5147)
!5183 = !DILocation(line: 475, column: 22, scope: !5147)
!5184 = !DILocation(line: 475, column: 27, scope: !5147)
!5185 = !DILocation(line: 475, column: 34, scope: !5147)
!5186 = !DILocation(line: 475, column: 2, scope: !5147)
!5187 = !DILocation(line: 477, column: 2, scope: !5147)
!5188 = !DILocation(line: 478, column: 1, scope: !5147)
!5189 = distinct !DISubprogram(name: "apci1564_cos_cancel", scope: !3, file: !3, line: 480, type: !3922, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!5190 = !DILocalVariable(name: "dev", arg: 1, scope: !5189, file: !3, line: 480, type: !175)
!5191 = !DILocation(line: 480, column: 54, scope: !5189)
!5192 = !DILocalVariable(name: "s", arg: 2, scope: !5189, file: !3, line: 481, type: !3808)
!5193 = !DILocation(line: 481, column: 36, scope: !5189)
!5194 = !DILocation(line: 483, column: 12, scope: !5189)
!5195 = !DILocation(line: 483, column: 17, scope: !5189)
!5196 = !DILocation(line: 483, column: 24, scope: !5189)
!5197 = !DILocation(line: 483, column: 2, scope: !5189)
!5198 = !DILocation(line: 484, column: 6, scope: !5189)
!5199 = !DILocation(line: 484, column: 11, scope: !5189)
!5200 = !DILocation(line: 484, column: 18, scope: !5189)
!5201 = !DILocation(line: 484, column: 2, scope: !5189)
!5202 = !DILocation(line: 485, column: 12, scope: !5189)
!5203 = !DILocation(line: 485, column: 17, scope: !5189)
!5204 = !DILocation(line: 485, column: 24, scope: !5189)
!5205 = !DILocation(line: 485, column: 2, scope: !5189)
!5206 = !DILocation(line: 486, column: 12, scope: !5189)
!5207 = !DILocation(line: 486, column: 17, scope: !5189)
!5208 = !DILocation(line: 486, column: 24, scope: !5189)
!5209 = !DILocation(line: 486, column: 2, scope: !5189)
!5210 = !DILocation(line: 488, column: 2, scope: !5189)
!5211 = distinct !DISubprogram(name: "apci1564_timer_insn_config", scope: !3, file: !3, line: 491, type: !3905, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!5212 = !DILocalVariable(name: "dev", arg: 1, scope: !5211, file: !3, line: 491, type: !175)
!5213 = !DILocation(line: 491, column: 61, scope: !5211)
!5214 = !DILocalVariable(name: "s", arg: 2, scope: !5211, file: !3, line: 492, type: !3808)
!5215 = !DILocation(line: 492, column: 36, scope: !5211)
!5216 = !DILocalVariable(name: "insn", arg: 3, scope: !5211, file: !3, line: 493, type: !3907)
!5217 = !DILocation(line: 493, column: 31, scope: !5211)
!5218 = !DILocalVariable(name: "data", arg: 4, scope: !5211, file: !3, line: 494, type: !2660)
!5219 = !DILocation(line: 494, column: 25, scope: !5211)
!5220 = !DILocalVariable(name: "devpriv", scope: !5211, file: !3, line: 496, type: !4298)
!5221 = !DILocation(line: 496, column: 27, scope: !5211)
!5222 = !DILocation(line: 496, column: 37, scope: !5211)
!5223 = !DILocation(line: 496, column: 42, scope: !5211)
!5224 = !DILocalVariable(name: "val", scope: !5211, file: !3, line: 497, type: !7)
!5225 = !DILocation(line: 497, column: 15, scope: !5211)
!5226 = !DILocation(line: 499, column: 10, scope: !5211)
!5227 = !DILocation(line: 499, column: 2, scope: !5211)
!5228 = !DILocation(line: 501, column: 7, scope: !5229)
!5229 = distinct !DILexicalBlock(scope: !5230, file: !3, line: 501, column: 7)
!5230 = distinct !DILexicalBlock(scope: !5211, file: !3, line: 499, column: 19)
!5231 = !DILocation(line: 501, column: 17, scope: !5229)
!5232 = !DILocation(line: 501, column: 20, scope: !5229)
!5233 = !DILocation(line: 501, column: 15, scope: !5229)
!5234 = !DILocation(line: 501, column: 7, scope: !5230)
!5235 = !DILocation(line: 502, column: 4, scope: !5229)
!5236 = !DILocation(line: 503, column: 8, scope: !5230)
!5237 = !DILocation(line: 503, column: 17, scope: !5230)
!5238 = !DILocation(line: 503, column: 26, scope: !5230)
!5239 = !DILocation(line: 503, column: 32, scope: !5230)
!5240 = !DILocation(line: 503, column: 3, scope: !5230)
!5241 = !DILocation(line: 505, column: 8, scope: !5230)
!5242 = !DILocation(line: 505, column: 17, scope: !5230)
!5243 = !DILocation(line: 505, column: 23, scope: !5230)
!5244 = !DILocation(line: 504, column: 3, scope: !5230)
!5245 = !DILocation(line: 506, column: 3, scope: !5230)
!5246 = !DILocation(line: 508, column: 13, scope: !5230)
!5247 = !DILocation(line: 508, column: 22, scope: !5230)
!5248 = !DILocation(line: 508, column: 28, scope: !5230)
!5249 = !DILocation(line: 508, column: 3, scope: !5230)
!5250 = !DILocation(line: 509, column: 3, scope: !5230)
!5251 = !DILocation(line: 511, column: 3, scope: !5230)
!5252 = !DILocation(line: 511, column: 11, scope: !5230)
!5253 = !DILocation(line: 512, column: 13, scope: !5230)
!5254 = !DILocation(line: 512, column: 22, scope: !5230)
!5255 = !DILocation(line: 512, column: 28, scope: !5230)
!5256 = !DILocation(line: 512, column: 9, scope: !5230)
!5257 = !DILocation(line: 512, column: 7, scope: !5230)
!5258 = !DILocation(line: 513, column: 7, scope: !5259)
!5259 = distinct !DILexicalBlock(scope: !5230, file: !3, line: 513, column: 7)
!5260 = !DILocation(line: 513, column: 11, scope: !5259)
!5261 = !DILocation(line: 513, column: 7, scope: !5230)
!5262 = !DILocation(line: 514, column: 4, scope: !5259)
!5263 = !DILocation(line: 514, column: 12, scope: !5259)
!5264 = !DILocation(line: 515, column: 7, scope: !5265)
!5265 = distinct !DILexicalBlock(scope: !5230, file: !3, line: 515, column: 7)
!5266 = !DILocation(line: 515, column: 11, scope: !5265)
!5267 = !DILocation(line: 515, column: 7, scope: !5230)
!5268 = !DILocation(line: 516, column: 4, scope: !5265)
!5269 = !DILocation(line: 516, column: 12, scope: !5265)
!5270 = !DILocation(line: 517, column: 13, scope: !5230)
!5271 = !DILocation(line: 517, column: 22, scope: !5230)
!5272 = !DILocation(line: 517, column: 28, scope: !5230)
!5273 = !DILocation(line: 517, column: 9, scope: !5230)
!5274 = !DILocation(line: 517, column: 7, scope: !5230)
!5275 = !DILocation(line: 518, column: 7, scope: !5276)
!5276 = distinct !DILexicalBlock(scope: !5230, file: !3, line: 518, column: 7)
!5277 = !DILocation(line: 518, column: 11, scope: !5276)
!5278 = !DILocation(line: 518, column: 7, scope: !5230)
!5279 = !DILocation(line: 519, column: 4, scope: !5276)
!5280 = !DILocation(line: 519, column: 12, scope: !5276)
!5281 = !DILocation(line: 520, column: 3, scope: !5230)
!5282 = !DILocation(line: 520, column: 11, scope: !5230)
!5283 = !DILocation(line: 522, column: 3, scope: !5230)
!5284 = !DILocation(line: 524, column: 7, scope: !5285)
!5285 = distinct !DILexicalBlock(scope: !5230, file: !3, line: 524, column: 7)
!5286 = !DILocation(line: 524, column: 17, scope: !5285)
!5287 = !DILocation(line: 524, column: 20, scope: !5285)
!5288 = !DILocation(line: 524, column: 15, scope: !5285)
!5289 = !DILocation(line: 524, column: 7, scope: !5230)
!5290 = !DILocation(line: 525, column: 4, scope: !5285)
!5291 = !DILocation(line: 526, column: 8, scope: !5230)
!5292 = !DILocation(line: 526, column: 17, scope: !5230)
!5293 = !DILocation(line: 526, column: 26, scope: !5230)
!5294 = !DILocation(line: 526, column: 32, scope: !5230)
!5295 = !DILocation(line: 526, column: 3, scope: !5230)
!5296 = !DILocation(line: 527, column: 8, scope: !5230)
!5297 = !DILocation(line: 527, column: 17, scope: !5230)
!5298 = !DILocation(line: 527, column: 26, scope: !5230)
!5299 = !DILocation(line: 527, column: 32, scope: !5230)
!5300 = !DILocation(line: 527, column: 3, scope: !5230)
!5301 = !DILocation(line: 528, column: 3, scope: !5230)
!5302 = !DILocation(line: 530, column: 17, scope: !5230)
!5303 = !DILocation(line: 530, column: 26, scope: !5230)
!5304 = !DILocation(line: 530, column: 32, scope: !5230)
!5305 = !DILocation(line: 530, column: 13, scope: !5230)
!5306 = !DILocation(line: 530, column: 3, scope: !5230)
!5307 = !DILocation(line: 530, column: 11, scope: !5230)
!5308 = !DILocation(line: 531, column: 17, scope: !5230)
!5309 = !DILocation(line: 531, column: 26, scope: !5230)
!5310 = !DILocation(line: 531, column: 32, scope: !5230)
!5311 = !DILocation(line: 531, column: 13, scope: !5230)
!5312 = !DILocation(line: 531, column: 3, scope: !5230)
!5313 = !DILocation(line: 531, column: 11, scope: !5230)
!5314 = !DILocation(line: 532, column: 3, scope: !5230)
!5315 = !DILocation(line: 534, column: 3, scope: !5230)
!5316 = !DILocation(line: 537, column: 9, scope: !5211)
!5317 = !DILocation(line: 537, column: 15, scope: !5211)
!5318 = !DILocation(line: 537, column: 2, scope: !5211)
!5319 = !DILocation(line: 538, column: 1, scope: !5211)
!5320 = distinct !DISubprogram(name: "apci1564_timer_insn_write", scope: !3, file: !3, line: 540, type: !3905, scopeLine: 544, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!5321 = !DILocalVariable(name: "dev", arg: 1, scope: !5320, file: !3, line: 540, type: !175)
!5322 = !DILocation(line: 540, column: 60, scope: !5320)
!5323 = !DILocalVariable(name: "s", arg: 2, scope: !5320, file: !3, line: 541, type: !3808)
!5324 = !DILocation(line: 541, column: 35, scope: !5320)
!5325 = !DILocalVariable(name: "insn", arg: 3, scope: !5320, file: !3, line: 542, type: !3907)
!5326 = !DILocation(line: 542, column: 30, scope: !5320)
!5327 = !DILocalVariable(name: "data", arg: 4, scope: !5320, file: !3, line: 543, type: !2660)
!5328 = !DILocation(line: 543, column: 24, scope: !5320)
!5329 = !DILocalVariable(name: "devpriv", scope: !5320, file: !3, line: 545, type: !4298)
!5330 = !DILocation(line: 545, column: 27, scope: !5320)
!5331 = !DILocation(line: 545, column: 37, scope: !5320)
!5332 = !DILocation(line: 545, column: 42, scope: !5320)
!5333 = !DILocation(line: 548, column: 6, scope: !5334)
!5334 = distinct !DILexicalBlock(scope: !5320, file: !3, line: 548, column: 6)
!5335 = !DILocation(line: 548, column: 12, scope: !5334)
!5336 = !DILocation(line: 548, column: 6, scope: !5320)
!5337 = !DILocalVariable(name: "val", scope: !5338, file: !3, line: 549, type: !7)
!5338 = distinct !DILexicalBlock(scope: !5334, file: !3, line: 548, column: 15)
!5339 = !DILocation(line: 549, column: 16, scope: !5338)
!5340 = !DILocation(line: 549, column: 22, scope: !5338)
!5341 = !DILocation(line: 549, column: 27, scope: !5338)
!5342 = !DILocation(line: 549, column: 33, scope: !5338)
!5343 = !DILocation(line: 549, column: 35, scope: !5338)
!5344 = !DILocation(line: 551, column: 8, scope: !5338)
!5345 = !DILocation(line: 551, column: 13, scope: !5338)
!5346 = !DILocation(line: 551, column: 22, scope: !5338)
!5347 = !DILocation(line: 551, column: 28, scope: !5338)
!5348 = !DILocation(line: 551, column: 3, scope: !5338)
!5349 = !DILocation(line: 552, column: 2, scope: !5338)
!5350 = !DILocation(line: 554, column: 9, scope: !5320)
!5351 = !DILocation(line: 554, column: 15, scope: !5320)
!5352 = !DILocation(line: 554, column: 2, scope: !5320)
!5353 = distinct !DISubprogram(name: "apci1564_timer_insn_read", scope: !3, file: !3, line: 557, type: !3905, scopeLine: 561, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!5354 = !DILocalVariable(name: "dev", arg: 1, scope: !5353, file: !3, line: 557, type: !175)
!5355 = !DILocation(line: 557, column: 59, scope: !5353)
!5356 = !DILocalVariable(name: "s", arg: 2, scope: !5353, file: !3, line: 558, type: !3808)
!5357 = !DILocation(line: 558, column: 34, scope: !5353)
!5358 = !DILocalVariable(name: "insn", arg: 3, scope: !5353, file: !3, line: 559, type: !3907)
!5359 = !DILocation(line: 559, column: 29, scope: !5353)
!5360 = !DILocalVariable(name: "data", arg: 4, scope: !5353, file: !3, line: 560, type: !2660)
!5361 = !DILocation(line: 560, column: 23, scope: !5353)
!5362 = !DILocalVariable(name: "devpriv", scope: !5353, file: !3, line: 562, type: !4298)
!5363 = !DILocation(line: 562, column: 27, scope: !5353)
!5364 = !DILocation(line: 562, column: 37, scope: !5353)
!5365 = !DILocation(line: 562, column: 42, scope: !5353)
!5366 = !DILocalVariable(name: "i", scope: !5353, file: !3, line: 563, type: !174)
!5367 = !DILocation(line: 563, column: 6, scope: !5353)
!5368 = !DILocation(line: 566, column: 9, scope: !5369)
!5369 = distinct !DILexicalBlock(scope: !5353, file: !3, line: 566, column: 2)
!5370 = !DILocation(line: 566, column: 7, scope: !5369)
!5371 = !DILocation(line: 566, column: 14, scope: !5372)
!5372 = distinct !DILexicalBlock(scope: !5369, file: !3, line: 566, column: 2)
!5373 = !DILocation(line: 566, column: 18, scope: !5372)
!5374 = !DILocation(line: 566, column: 24, scope: !5372)
!5375 = !DILocation(line: 566, column: 16, scope: !5372)
!5376 = !DILocation(line: 566, column: 2, scope: !5369)
!5377 = !DILocation(line: 567, column: 17, scope: !5372)
!5378 = !DILocation(line: 567, column: 26, scope: !5372)
!5379 = !DILocation(line: 567, column: 32, scope: !5372)
!5380 = !DILocation(line: 567, column: 13, scope: !5372)
!5381 = !DILocation(line: 567, column: 3, scope: !5372)
!5382 = !DILocation(line: 567, column: 8, scope: !5372)
!5383 = !DILocation(line: 567, column: 11, scope: !5372)
!5384 = !DILocation(line: 566, column: 28, scope: !5372)
!5385 = !DILocation(line: 566, column: 2, scope: !5372)
!5386 = distinct !{!5386, !5376, !5387}
!5387 = !DILocation(line: 567, column: 50, scope: !5369)
!5388 = !DILocation(line: 569, column: 9, scope: !5353)
!5389 = !DILocation(line: 569, column: 15, scope: !5353)
!5390 = !DILocation(line: 569, column: 2, scope: !5353)
!5391 = distinct !DISubprogram(name: "apci1564_counter_insn_config", scope: !3, file: !3, line: 572, type: !3905, scopeLine: 576, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!5392 = !DILocalVariable(name: "dev", arg: 1, scope: !5391, file: !3, line: 572, type: !175)
!5393 = !DILocation(line: 572, column: 63, scope: !5391)
!5394 = !DILocalVariable(name: "s", arg: 2, scope: !5391, file: !3, line: 573, type: !3808)
!5395 = !DILocation(line: 573, column: 31, scope: !5391)
!5396 = !DILocalVariable(name: "insn", arg: 3, scope: !5391, file: !3, line: 574, type: !3907)
!5397 = !DILocation(line: 574, column: 26, scope: !5391)
!5398 = !DILocalVariable(name: "data", arg: 4, scope: !5391, file: !3, line: 575, type: !2660)
!5399 = !DILocation(line: 575, column: 20, scope: !5391)
!5400 = !DILocalVariable(name: "devpriv", scope: !5391, file: !3, line: 577, type: !4298)
!5401 = !DILocation(line: 577, column: 27, scope: !5391)
!5402 = !DILocation(line: 577, column: 37, scope: !5391)
!5403 = !DILocation(line: 577, column: 42, scope: !5391)
!5404 = !DILocalVariable(name: "chan", scope: !5391, file: !3, line: 578, type: !7)
!5405 = !DILocation(line: 578, column: 15, scope: !5391)
!5406 = !DILocation(line: 578, column: 22, scope: !5391)
!5407 = !DILocalVariable(name: "iobase", scope: !5391, file: !3, line: 579, type: !300)
!5408 = !DILocation(line: 579, column: 16, scope: !5391)
!5409 = !DILocation(line: 579, column: 25, scope: !5391)
!5410 = !DILocation(line: 579, column: 34, scope: !5391)
!5411 = !DILocation(line: 579, column: 45, scope: !5391)
!5412 = !DILocation(line: 579, column: 43, scope: !5391)
!5413 = !DILocalVariable(name: "val", scope: !5391, file: !3, line: 580, type: !7)
!5414 = !DILocation(line: 580, column: 15, scope: !5391)
!5415 = !DILocation(line: 582, column: 10, scope: !5391)
!5416 = !DILocation(line: 582, column: 2, scope: !5391)
!5417 = !DILocation(line: 584, column: 13, scope: !5418)
!5418 = distinct !DILexicalBlock(scope: !5391, file: !3, line: 582, column: 19)
!5419 = !DILocation(line: 584, column: 20, scope: !5418)
!5420 = !DILocation(line: 584, column: 9, scope: !5418)
!5421 = !DILocation(line: 584, column: 7, scope: !5418)
!5422 = !DILocation(line: 585, column: 7, scope: !5418)
!5423 = !DILocation(line: 586, column: 8, scope: !5418)
!5424 = !DILocation(line: 586, column: 17, scope: !5418)
!5425 = !DILocation(line: 586, column: 24, scope: !5418)
!5426 = !DILocation(line: 586, column: 3, scope: !5418)
!5427 = !DILocation(line: 587, column: 8, scope: !5418)
!5428 = !DILocation(line: 587, column: 13, scope: !5418)
!5429 = !DILocation(line: 587, column: 20, scope: !5418)
!5430 = !DILocation(line: 587, column: 3, scope: !5418)
!5431 = !DILocation(line: 588, column: 3, scope: !5418)
!5432 = !DILocation(line: 590, column: 13, scope: !5418)
!5433 = !DILocation(line: 590, column: 20, scope: !5418)
!5434 = !DILocation(line: 590, column: 9, scope: !5418)
!5435 = !DILocation(line: 590, column: 7, scope: !5418)
!5436 = !DILocation(line: 591, column: 7, scope: !5418)
!5437 = !DILocation(line: 592, column: 8, scope: !5418)
!5438 = !DILocation(line: 592, column: 13, scope: !5418)
!5439 = !DILocation(line: 592, column: 20, scope: !5418)
!5440 = !DILocation(line: 592, column: 3, scope: !5418)
!5441 = !DILocation(line: 593, column: 3, scope: !5418)
!5442 = !DILocation(line: 600, column: 8, scope: !5418)
!5443 = !DILocation(line: 600, column: 17, scope: !5418)
!5444 = !DILocation(line: 600, column: 24, scope: !5418)
!5445 = !DILocation(line: 600, column: 3, scope: !5418)
!5446 = !DILocation(line: 601, column: 3, scope: !5418)
!5447 = !DILocation(line: 603, column: 3, scope: !5418)
!5448 = !DILocation(line: 603, column: 11, scope: !5418)
!5449 = !DILocation(line: 604, column: 13, scope: !5418)
!5450 = !DILocation(line: 604, column: 20, scope: !5418)
!5451 = !DILocation(line: 604, column: 9, scope: !5418)
!5452 = !DILocation(line: 604, column: 7, scope: !5418)
!5453 = !DILocation(line: 605, column: 7, scope: !5454)
!5454 = distinct !DILexicalBlock(scope: !5418, file: !3, line: 605, column: 7)
!5455 = !DILocation(line: 605, column: 11, scope: !5454)
!5456 = !DILocation(line: 605, column: 7, scope: !5418)
!5457 = !DILocation(line: 606, column: 4, scope: !5454)
!5458 = !DILocation(line: 606, column: 12, scope: !5454)
!5459 = !DILocation(line: 607, column: 7, scope: !5460)
!5460 = distinct !DILexicalBlock(scope: !5418, file: !3, line: 607, column: 7)
!5461 = !DILocation(line: 607, column: 11, scope: !5460)
!5462 = !DILocation(line: 607, column: 7, scope: !5418)
!5463 = !DILocation(line: 608, column: 4, scope: !5460)
!5464 = !DILocation(line: 608, column: 12, scope: !5460)
!5465 = !DILocation(line: 609, column: 13, scope: !5418)
!5466 = !DILocation(line: 609, column: 20, scope: !5418)
!5467 = !DILocation(line: 609, column: 9, scope: !5418)
!5468 = !DILocation(line: 609, column: 7, scope: !5418)
!5469 = !DILocation(line: 610, column: 7, scope: !5470)
!5470 = distinct !DILexicalBlock(scope: !5418, file: !3, line: 610, column: 7)
!5471 = !DILocation(line: 610, column: 11, scope: !5470)
!5472 = !DILocation(line: 610, column: 7, scope: !5418)
!5473 = !DILocation(line: 611, column: 4, scope: !5470)
!5474 = !DILocation(line: 611, column: 12, scope: !5470)
!5475 = !DILocation(line: 612, column: 3, scope: !5418)
!5476 = !DILocation(line: 612, column: 11, scope: !5418)
!5477 = !DILocation(line: 614, column: 3, scope: !5418)
!5478 = !DILocation(line: 616, column: 3, scope: !5418)
!5479 = !DILocation(line: 619, column: 9, scope: !5391)
!5480 = !DILocation(line: 619, column: 15, scope: !5391)
!5481 = !DILocation(line: 619, column: 2, scope: !5391)
!5482 = !DILocation(line: 620, column: 1, scope: !5391)
!5483 = distinct !DISubprogram(name: "apci1564_counter_insn_write", scope: !3, file: !3, line: 622, type: !3905, scopeLine: 626, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!5484 = !DILocalVariable(name: "dev", arg: 1, scope: !5483, file: !3, line: 622, type: !175)
!5485 = !DILocation(line: 622, column: 62, scope: !5483)
!5486 = !DILocalVariable(name: "s", arg: 2, scope: !5483, file: !3, line: 623, type: !3808)
!5487 = !DILocation(line: 623, column: 37, scope: !5483)
!5488 = !DILocalVariable(name: "insn", arg: 3, scope: !5483, file: !3, line: 624, type: !3907)
!5489 = !DILocation(line: 624, column: 32, scope: !5483)
!5490 = !DILocalVariable(name: "data", arg: 4, scope: !5483, file: !3, line: 625, type: !2660)
!5491 = !DILocation(line: 625, column: 26, scope: !5483)
!5492 = !DILocalVariable(name: "devpriv", scope: !5483, file: !3, line: 627, type: !4298)
!5493 = !DILocation(line: 627, column: 27, scope: !5483)
!5494 = !DILocation(line: 627, column: 37, scope: !5483)
!5495 = !DILocation(line: 627, column: 42, scope: !5483)
!5496 = !DILocalVariable(name: "chan", scope: !5483, file: !3, line: 628, type: !7)
!5497 = !DILocation(line: 628, column: 15, scope: !5483)
!5498 = !DILocation(line: 628, column: 22, scope: !5483)
!5499 = !DILocalVariable(name: "iobase", scope: !5483, file: !3, line: 629, type: !300)
!5500 = !DILocation(line: 629, column: 16, scope: !5483)
!5501 = !DILocation(line: 629, column: 25, scope: !5483)
!5502 = !DILocation(line: 629, column: 34, scope: !5483)
!5503 = !DILocation(line: 629, column: 45, scope: !5483)
!5504 = !DILocation(line: 629, column: 43, scope: !5483)
!5505 = !DILocation(line: 632, column: 6, scope: !5506)
!5506 = distinct !DILexicalBlock(scope: !5483, file: !3, line: 632, column: 6)
!5507 = !DILocation(line: 632, column: 12, scope: !5506)
!5508 = !DILocation(line: 632, column: 6, scope: !5483)
!5509 = !DILocalVariable(name: "val", scope: !5510, file: !3, line: 633, type: !7)
!5510 = distinct !DILexicalBlock(scope: !5506, file: !3, line: 632, column: 15)
!5511 = !DILocation(line: 633, column: 16, scope: !5510)
!5512 = !DILocation(line: 633, column: 22, scope: !5510)
!5513 = !DILocation(line: 633, column: 27, scope: !5510)
!5514 = !DILocation(line: 633, column: 33, scope: !5510)
!5515 = !DILocation(line: 633, column: 35, scope: !5510)
!5516 = !DILocation(line: 635, column: 8, scope: !5510)
!5517 = !DILocation(line: 635, column: 13, scope: !5510)
!5518 = !DILocation(line: 635, column: 20, scope: !5510)
!5519 = !DILocation(line: 635, column: 3, scope: !5510)
!5520 = !DILocation(line: 636, column: 2, scope: !5510)
!5521 = !DILocation(line: 638, column: 9, scope: !5483)
!5522 = !DILocation(line: 638, column: 15, scope: !5483)
!5523 = !DILocation(line: 638, column: 2, scope: !5483)
!5524 = distinct !DISubprogram(name: "apci1564_counter_insn_read", scope: !3, file: !3, line: 641, type: !3905, scopeLine: 645, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!5525 = !DILocalVariable(name: "dev", arg: 1, scope: !5524, file: !3, line: 641, type: !175)
!5526 = !DILocation(line: 641, column: 61, scope: !5524)
!5527 = !DILocalVariable(name: "s", arg: 2, scope: !5524, file: !3, line: 642, type: !3808)
!5528 = !DILocation(line: 642, column: 36, scope: !5524)
!5529 = !DILocalVariable(name: "insn", arg: 3, scope: !5524, file: !3, line: 643, type: !3907)
!5530 = !DILocation(line: 643, column: 31, scope: !5524)
!5531 = !DILocalVariable(name: "data", arg: 4, scope: !5524, file: !3, line: 644, type: !2660)
!5532 = !DILocation(line: 644, column: 25, scope: !5524)
!5533 = !DILocalVariable(name: "devpriv", scope: !5524, file: !3, line: 646, type: !4298)
!5534 = !DILocation(line: 646, column: 27, scope: !5524)
!5535 = !DILocation(line: 646, column: 37, scope: !5524)
!5536 = !DILocation(line: 646, column: 42, scope: !5524)
!5537 = !DILocalVariable(name: "chan", scope: !5524, file: !3, line: 647, type: !7)
!5538 = !DILocation(line: 647, column: 15, scope: !5524)
!5539 = !DILocation(line: 647, column: 22, scope: !5524)
!5540 = !DILocalVariable(name: "iobase", scope: !5524, file: !3, line: 648, type: !300)
!5541 = !DILocation(line: 648, column: 16, scope: !5524)
!5542 = !DILocation(line: 648, column: 25, scope: !5524)
!5543 = !DILocation(line: 648, column: 34, scope: !5524)
!5544 = !DILocation(line: 648, column: 45, scope: !5524)
!5545 = !DILocation(line: 648, column: 43, scope: !5524)
!5546 = !DILocalVariable(name: "i", scope: !5524, file: !3, line: 649, type: !174)
!5547 = !DILocation(line: 649, column: 6, scope: !5524)
!5548 = !DILocation(line: 652, column: 9, scope: !5549)
!5549 = distinct !DILexicalBlock(scope: !5524, file: !3, line: 652, column: 2)
!5550 = !DILocation(line: 652, column: 7, scope: !5549)
!5551 = !DILocation(line: 652, column: 14, scope: !5552)
!5552 = distinct !DILexicalBlock(scope: !5549, file: !3, line: 652, column: 2)
!5553 = !DILocation(line: 652, column: 18, scope: !5552)
!5554 = !DILocation(line: 652, column: 24, scope: !5552)
!5555 = !DILocation(line: 652, column: 16, scope: !5552)
!5556 = !DILocation(line: 652, column: 2, scope: !5549)
!5557 = !DILocation(line: 653, column: 17, scope: !5552)
!5558 = !DILocation(line: 653, column: 24, scope: !5552)
!5559 = !DILocation(line: 653, column: 13, scope: !5552)
!5560 = !DILocation(line: 653, column: 3, scope: !5552)
!5561 = !DILocation(line: 653, column: 8, scope: !5552)
!5562 = !DILocation(line: 653, column: 11, scope: !5552)
!5563 = !DILocation(line: 652, column: 28, scope: !5552)
!5564 = !DILocation(line: 652, column: 2, scope: !5552)
!5565 = distinct !{!5565, !5556, !5566}
!5566 = !DILocation(line: 653, column: 42, scope: !5549)
!5567 = !DILocation(line: 655, column: 9, scope: !5524)
!5568 = !DILocation(line: 655, column: 15, scope: !5524)
!5569 = !DILocation(line: 655, column: 2, scope: !5524)
!5570 = distinct !DISubprogram(name: "apci1564_diag_insn_bits", scope: !3, file: !3, line: 288, type: !3905, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!5571 = !DILocalVariable(name: "dev", arg: 1, scope: !5570, file: !3, line: 288, type: !175)
!5572 = !DILocation(line: 288, column: 58, scope: !5570)
!5573 = !DILocalVariable(name: "s", arg: 2, scope: !5570, file: !3, line: 289, type: !3808)
!5574 = !DILocation(line: 289, column: 33, scope: !5570)
!5575 = !DILocalVariable(name: "insn", arg: 3, scope: !5570, file: !3, line: 290, type: !3907)
!5576 = !DILocation(line: 290, column: 28, scope: !5570)
!5577 = !DILocalVariable(name: "data", arg: 4, scope: !5570, file: !3, line: 291, type: !2660)
!5578 = !DILocation(line: 291, column: 22, scope: !5570)
!5579 = !DILocation(line: 293, column: 16, scope: !5570)
!5580 = !DILocation(line: 293, column: 21, scope: !5570)
!5581 = !DILocation(line: 293, column: 28, scope: !5570)
!5582 = !DILocation(line: 293, column: 12, scope: !5570)
!5583 = !DILocation(line: 293, column: 58, scope: !5570)
!5584 = !DILocation(line: 293, column: 2, scope: !5570)
!5585 = !DILocation(line: 293, column: 10, scope: !5570)
!5586 = !DILocation(line: 295, column: 9, scope: !5570)
!5587 = !DILocation(line: 295, column: 15, scope: !5570)
!5588 = !DILocation(line: 295, column: 2, scope: !5570)
!5589 = distinct !DISubprogram(name: "comedi_check_trigger_src", scope: !160, file: !160, line: 859, type: !5590, scopeLine: 861, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!5590 = !DISubroutineType(types: !5591)
!5591 = !{!174, !2660, !7}
!5592 = !DILocalVariable(name: "src", arg: 1, scope: !5589, file: !160, line: 859, type: !2660)
!5593 = !DILocation(line: 859, column: 58, scope: !5589)
!5594 = !DILocalVariable(name: "flags", arg: 2, scope: !5589, file: !160, line: 860, type: !7)
!5595 = !DILocation(line: 860, column: 22, scope: !5589)
!5596 = !DILocalVariable(name: "orig_src", scope: !5589, file: !160, line: 862, type: !7)
!5597 = !DILocation(line: 862, column: 15, scope: !5589)
!5598 = !DILocation(line: 862, column: 27, scope: !5589)
!5599 = !DILocation(line: 862, column: 26, scope: !5589)
!5600 = !DILocation(line: 864, column: 9, scope: !5589)
!5601 = !DILocation(line: 864, column: 20, scope: !5589)
!5602 = !DILocation(line: 864, column: 18, scope: !5589)
!5603 = !DILocation(line: 864, column: 3, scope: !5589)
!5604 = !DILocation(line: 864, column: 7, scope: !5589)
!5605 = !DILocation(line: 865, column: 7, scope: !5606)
!5606 = distinct !DILexicalBlock(scope: !5589, file: !160, line: 865, column: 6)
!5607 = !DILocation(line: 865, column: 6, scope: !5606)
!5608 = !DILocation(line: 865, column: 11, scope: !5606)
!5609 = !DILocation(line: 865, column: 27, scope: !5606)
!5610 = !DILocation(line: 865, column: 31, scope: !5606)
!5611 = !DILocation(line: 865, column: 30, scope: !5606)
!5612 = !DILocation(line: 865, column: 38, scope: !5606)
!5613 = !DILocation(line: 865, column: 35, scope: !5606)
!5614 = !DILocation(line: 865, column: 6, scope: !5589)
!5615 = !DILocation(line: 866, column: 3, scope: !5606)
!5616 = !DILocation(line: 867, column: 2, scope: !5589)
!5617 = !DILocation(line: 868, column: 1, scope: !5589)
!5618 = distinct !DISubprogram(name: "comedi_check_trigger_arg_is", scope: !160, file: !160, line: 897, type: !5590, scopeLine: 899, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!5619 = !DILocalVariable(name: "arg", arg: 1, scope: !5618, file: !160, line: 897, type: !2660)
!5620 = !DILocation(line: 897, column: 61, scope: !5618)
!5621 = !DILocalVariable(name: "val", arg: 2, scope: !5618, file: !160, line: 898, type: !7)
!5622 = !DILocation(line: 898, column: 25, scope: !5618)
!5623 = !DILocation(line: 900, column: 7, scope: !5624)
!5624 = distinct !DILexicalBlock(scope: !5618, file: !160, line: 900, column: 6)
!5625 = !DILocation(line: 900, column: 6, scope: !5624)
!5626 = !DILocation(line: 900, column: 14, scope: !5624)
!5627 = !DILocation(line: 900, column: 11, scope: !5624)
!5628 = !DILocation(line: 900, column: 6, scope: !5618)
!5629 = !DILocation(line: 901, column: 10, scope: !5630)
!5630 = distinct !DILexicalBlock(scope: !5624, file: !160, line: 900, column: 19)
!5631 = !DILocation(line: 901, column: 4, scope: !5630)
!5632 = !DILocation(line: 901, column: 8, scope: !5630)
!5633 = !DILocation(line: 902, column: 3, scope: !5630)
!5634 = !DILocation(line: 904, column: 2, scope: !5618)
!5635 = !DILocation(line: 905, column: 1, scope: !5618)
!5636 = distinct !DISubprogram(name: "apci1564_pci_probe", scope: !3, file: !3, line: 798, type: !4002, scopeLine: 800, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!5637 = !DILocalVariable(name: "dev", arg: 1, scope: !5636, file: !3, line: 798, type: !4004)
!5638 = !DILocation(line: 798, column: 47, scope: !5636)
!5639 = !DILocalVariable(name: "id", arg: 2, scope: !5636, file: !3, line: 799, type: !3989)
!5640 = !DILocation(line: 799, column: 38, scope: !5636)
!5641 = !DILocation(line: 801, column: 32, scope: !5636)
!5642 = !DILocation(line: 801, column: 55, scope: !5636)
!5643 = !DILocation(line: 801, column: 59, scope: !5636)
!5644 = !DILocation(line: 801, column: 9, scope: !5636)
!5645 = !DILocation(line: 801, column: 2, scope: !5636)
