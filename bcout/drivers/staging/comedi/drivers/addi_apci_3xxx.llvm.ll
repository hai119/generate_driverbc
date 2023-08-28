; ModuleID = '../bcout/drivers/staging/comedi/drivers/addi_apci_3xxx.llvm.bc'
source_filename = "drivers/staging/comedi/drivers/addi_apci_3xxx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_apci3xxx_driver_init6:\09\09\09"
module asm ".long\09apci3xxx_driver_init - .\09\09\09"
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
%struct.apci3xxx_boardinfo = type { i8*, i32, i32, i32, i8, i32, i8 }
%struct.apci3xxx_private = type { i32, i8 }

@__UNIQUE_ID___addressable_apci3xxx_driver_init234 = internal global i8* bitcast (i32 ()* @apci3xxx_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@apci3xxx_driver = internal global %struct.comedi_driver { %struct.comedi_driver* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), %struct.module* null, i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* null, void (%struct.comedi_device*)* @apci3xxx_detach, i32 (%struct.comedi_device*, i64)* @apci3xxx_auto_attach, i32 0, i8** null, i32 0 }, align 8, !dbg !208
@apci3xxx_pci_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), %struct.pci_device_id* getelementptr inbounds ([26 x %struct.pci_device_id], [26 x %struct.pci_device_id]* @apci3xxx_pci_table, i32 0, i32 0), i32 (%struct.pci_dev*, %struct.pci_device_id*)* @apci3xxx_pci_probe, void (%struct.pci_dev*)* @comedi_pci_auto_unconfig, i32 (%struct.pci_dev*, i32)* null, i32 (%struct.pci_dev*)* null, void (%struct.pci_dev*)* null, i32 (%struct.pci_dev*, i32)* null, %struct.pci_error_handlers* null, %struct.attribute_group** null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, align 8, !dbg !4052
@__exitcall_apci3xxx_driver_exit = internal global void ()* @apci3xxx_driver_exit, section ".exitcall.exit", align 8, !dbg !179
@__UNIQUE_ID_author235 = internal constant [52 x i8] c"addi_apci_3xxx.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1, !dbg !186
@__UNIQUE_ID_description236 = internal constant [51 x i8] c"addi_apci_3xxx.description=Comedi low-level driver\00", section ".modinfo", align 1, !dbg !193
@__UNIQUE_ID_file237 = internal constant [66 x i8] c"addi_apci_3xxx.file=drivers/staging/comedi/drivers/addi_apci_3xxx\00", section ".modinfo", align 1, !dbg !198
@__UNIQUE_ID_license238 = internal constant [27 x i8] c"addi_apci_3xxx.license=GPL\00", section ".modinfo", align 1, !dbg !203
@.str = private unnamed_addr constant [15 x i8] c"addi_apci_3xxx\00", align 1
@apci3xxx_boardtypes = internal constant [25 x %struct.apci3xxx_boardinfo] [%struct.apci3xxx_boardinfo { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 7340032, i32 16, i32 4095, i8 6, i32 10000, i8 8 }, %struct.apci3xxx_boardinfo { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 7340032, i32 8, i32 4095, i8 6, i32 10000, i8 8 }, %struct.apci3xxx_boardinfo { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 7340032, i32 4, i32 4095, i8 6, i32 10000, i8 8 }, %struct.apci3xxx_boardinfo { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i32 7340032, i32 16, i32 65535, i8 6, i32 10000, i8 8 }, %struct.apci3xxx_boardinfo { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 7340032, i32 8, i32 65535, i8 6, i32 10000, i8 8 }, %struct.apci3xxx_boardinfo { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i32 7340032, i32 4, i32 65535, i8 6, i32 10000, i8 8 }, %struct.apci3xxx_boardinfo { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i32 7340032, i32 16, i32 4095, i8 6, i32 5000, i8 14 }, %struct.apci3xxx_boardinfo { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i32 7340032, i32 8, i32 4095, i8 6, i32 5000, i8 14 }, %struct.apci3xxx_boardinfo { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i32 7340032, i32 4, i32 4095, i8 6, i32 5000, i8 14 }, %struct.apci3xxx_boardinfo { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i32 7340032, i32 16, i32 65535, i8 6, i32 5000, i8 14 }, %struct.apci3xxx_boardinfo { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32 7340032, i32 8, i32 65535, i8 6, i32 5000, i8 14 }, %struct.apci3xxx_boardinfo { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i32 7340032, i32 4, i32 65535, i8 6, i32 5000, i8 14 }, %struct.apci3xxx_boardinfo { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i32 7340032, i32 16, i32 4095, i8 6, i32 10000, i8 9 }, %struct.apci3xxx_boardinfo { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i32 7340032, i32 8, i32 4095, i8 6, i32 10000, i8 9 }, %struct.apci3xxx_boardinfo { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 7340032, i32 16, i32 65535, i8 6, i32 10000, i8 9 }, %struct.apci3xxx_boardinfo { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i32 7340032, i32 8, i32 65535, i8 6, i32 10000, i8 9 }, %struct.apci3xxx_boardinfo { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i32 7340032, i32 16, i32 4095, i8 6, i32 5000, i8 15 }, %struct.apci3xxx_boardinfo { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i32 7340032, i32 8, i32 4095, i8 6, i32 5000, i8 15 }, %struct.apci3xxx_boardinfo { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i32 7340032, i32 16, i32 65535, i8 6, i32 5000, i8 15 }, %struct.apci3xxx_boardinfo { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), i32 7340032, i32 8, i32 65535, i8 6, i32 5000, i8 15 }, %struct.apci3xxx_boardinfo { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32 4194304, i32 4, i32 65535, i8 7, i32 2500, i8 6 }, %struct.apci3xxx_boardinfo { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i32 4194304, i32 16, i32 65535, i8 6, i32 5000, i8 6 }, %struct.apci3xxx_boardinfo { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i32 4194304, i32 8, i32 65535, i8 6, i32 5000, i8 6 }, %struct.apci3xxx_boardinfo { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), i32 4194304, i32 4, i32 65535, i8 6, i32 5000, i8 6 }, %struct.apci3xxx_boardinfo { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i32 0, i32 0, i32 0, i8 0, i32 0, i8 9 }], align 16, !dbg !4030
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"apci3000-16\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"apci3000-8\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"apci3000-4\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"apci3006-16\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"apci3006-8\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"apci3006-4\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"apci3010-16\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"apci3010-8\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"apci3010-4\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"apci3016-16\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"apci3016-8\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"apci3016-4\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"apci3100-16-4\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"apci3100-8-4\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"apci3106-16-4\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"apci3106-8-4\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"apci3110-16-4\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"apci3110-8-4\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"apci3116-16-4\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"apci3116-8-4\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"apci3003\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"apci3002-16\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"apci3002-8\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"apci3002-4\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"apci3500\00", align 1
@apci3xxx_ai_range = internal constant { i32, [8 x %struct.comedi_krange] } { i32 8, [8 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2000000, i32 2000000, i32 0 }, %struct.comedi_krange { i32 -1000000, i32 1000000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 2000000, i32 0 }, %struct.comedi_krange { i32 0, i32 1000000, i32 0 }] }, align 4, !dbg !4048
@apci3xxx_ao_range = internal constant { i32, [2 x %struct.comedi_krange] } { i32 2, [2 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }] }, align 4, !dbg !4050
@apci3xxx_pci_table = internal constant [26 x %struct.pci_device_id] [%struct.pci_device_id { i32 5560, i32 12304, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 5560, i32 12303, i32 -1, i32 -1, i32 0, i32 0, i64 1 }, %struct.pci_device_id { i32 5560, i32 12302, i32 -1, i32 -1, i32 0, i32 0, i64 2 }, %struct.pci_device_id { i32 5560, i32 12307, i32 -1, i32 -1, i32 0, i32 0, i64 3 }, %struct.pci_device_id { i32 5560, i32 12308, i32 -1, i32 -1, i32 0, i32 0, i64 4 }, %struct.pci_device_id { i32 5560, i32 12309, i32 -1, i32 -1, i32 0, i32 0, i64 5 }, %struct.pci_device_id { i32 5560, i32 12310, i32 -1, i32 -1, i32 0, i32 0, i64 6 }, %struct.pci_device_id { i32 5560, i32 12311, i32 -1, i32 -1, i32 0, i32 0, i64 7 }, %struct.pci_device_id { i32 5560, i32 12312, i32 -1, i32 -1, i32 0, i32 0, i64 8 }, %struct.pci_device_id { i32 5560, i32 12313, i32 -1, i32 -1, i32 0, i32 0, i64 9 }, %struct.pci_device_id { i32 5560, i32 12314, i32 -1, i32 -1, i32 0, i32 0, i64 10 }, %struct.pci_device_id { i32 5560, i32 12315, i32 -1, i32 -1, i32 0, i32 0, i64 11 }, %struct.pci_device_id { i32 5560, i32 12316, i32 -1, i32 -1, i32 0, i32 0, i64 12 }, %struct.pci_device_id { i32 5560, i32 12317, i32 -1, i32 -1, i32 0, i32 0, i64 13 }, %struct.pci_device_id { i32 5560, i32 12318, i32 -1, i32 -1, i32 0, i32 0, i64 14 }, %struct.pci_device_id { i32 5560, i32 12319, i32 -1, i32 -1, i32 0, i32 0, i64 15 }, %struct.pci_device_id { i32 5560, i32 12320, i32 -1, i32 -1, i32 0, i32 0, i64 16 }, %struct.pci_device_id { i32 5560, i32 12321, i32 -1, i32 -1, i32 0, i32 0, i64 17 }, %struct.pci_device_id { i32 5560, i32 12322, i32 -1, i32 -1, i32 0, i32 0, i64 18 }, %struct.pci_device_id { i32 5560, i32 12323, i32 -1, i32 -1, i32 0, i32 0, i64 19 }, %struct.pci_device_id { i32 5560, i32 12299, i32 -1, i32 -1, i32 0, i32 0, i64 20 }, %struct.pci_device_id { i32 5560, i32 12290, i32 -1, i32 -1, i32 0, i32 0, i64 21 }, %struct.pci_device_id { i32 5560, i32 12291, i32 -1, i32 -1, i32 0, i32 0, i64 22 }, %struct.pci_device_id { i32 5560, i32 12292, i32 -1, i32 -1, i32 0, i32 0, i64 23 }, %struct.pci_device_id { i32 5560, i32 12324, i32 -1, i32 -1, i32 0, i32 0, i64 24 }, %struct.pci_device_id zeroinitializer], align 16, !dbg !4333
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_apci3xxx_driver_init234 to i8*), i8* bitcast (void ()* @apci3xxx_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_apci3xxx_driver_exit to i8*), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__UNIQUE_ID_author235, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__UNIQUE_ID_description236, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @__UNIQUE_ID_file237, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__UNIQUE_ID_license238, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @apci3xxx_driver_init() #0 section ".init.text" !dbg !4343 {
entry:
  %call = call i32 @comedi_pci_driver_register(%struct.comedi_driver* @apci3xxx_driver, %struct.pci_driver* @apci3xxx_pci_driver) #4, !dbg !4346
  ret i32 %call, !dbg !4346
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @apci3xxx_driver_exit() #0 section ".exit.text" !dbg !4347 {
entry:
  call void @comedi_pci_driver_unregister(%struct.comedi_driver* @apci3xxx_driver, %struct.pci_driver* @apci3xxx_pci_driver) #4, !dbg !4348
  ret void, !dbg !4348
}

; Function Attrs: noredzone
declare dso_local void @comedi_pci_driver_unregister(%struct.comedi_driver*, %struct.pci_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_pci_driver_register(%struct.comedi_driver*, %struct.pci_driver*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @apci3xxx_detach(%struct.comedi_device* %dev) #2 !dbg !4349 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4350, metadata !DIExpression()), !dbg !4351
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4352
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 18, !dbg !4354
  %1 = load i64, i64* %iobase, align 8, !dbg !4354
  %tobool = icmp ne i64 %1, 0, !dbg !4352
  br i1 %tobool, label %if.then, label %if.end, !dbg !4355

if.then:                                          ; preds = %entry
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4356
  %call = call i32 @apci3xxx_reset(%struct.comedi_device* %2) #4, !dbg !4357
  br label %if.end, !dbg !4357

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4358
  call void @comedi_pci_detach(%struct.comedi_device* %3) #4, !dbg !4359
  ret void, !dbg !4360
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci3xxx_auto_attach(%struct.comedi_device* %dev, i64 %context) #2 !dbg !4361 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %context.addr = alloca i64, align 8
  %pcidev = alloca %struct.pci_dev*, align 8
  %board = alloca %struct.apci3xxx_boardinfo*, align 8
  %devpriv = alloca %struct.apci3xxx_private*, align 8
  %s = alloca %struct.comedi_subdevice*, align 8
  %n_subdevices = alloca i32, align 4
  %subdev = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4362, metadata !DIExpression()), !dbg !4363
  store i64 %context, i64* %context.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %context.addr, metadata !4364, metadata !DIExpression()), !dbg !4365
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pcidev, metadata !4366, metadata !DIExpression()), !dbg !4367
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4368
  %call = call %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device* %0) #4, !dbg !4369
  store %struct.pci_dev* %call, %struct.pci_dev** %pcidev, align 8, !dbg !4367
  call void @llvm.dbg.declare(metadata %struct.apci3xxx_boardinfo** %board, metadata !4370, metadata !DIExpression()), !dbg !4372
  store %struct.apci3xxx_boardinfo* null, %struct.apci3xxx_boardinfo** %board, align 8, !dbg !4372
  call void @llvm.dbg.declare(metadata %struct.apci3xxx_private** %devpriv, metadata !4373, metadata !DIExpression()), !dbg !4379
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s, metadata !4380, metadata !DIExpression()), !dbg !4381
  call void @llvm.dbg.declare(metadata i32* %n_subdevices, metadata !4382, metadata !DIExpression()), !dbg !4383
  call void @llvm.dbg.declare(metadata i32* %subdev, metadata !4384, metadata !DIExpression()), !dbg !4385
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4386, metadata !DIExpression()), !dbg !4387
  %1 = load i64, i64* %context.addr, align 8, !dbg !4388
  %cmp = icmp ult i64 %1, 25, !dbg !4390
  br i1 %cmp, label %if.then, label %if.end, !dbg !4391

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %context.addr, align 8, !dbg !4392
  %arrayidx = getelementptr [25 x %struct.apci3xxx_boardinfo], [25 x %struct.apci3xxx_boardinfo]* @apci3xxx_boardtypes, i64 0, i64 %2, !dbg !4393
  store %struct.apci3xxx_boardinfo* %arrayidx, %struct.apci3xxx_boardinfo** %board, align 8, !dbg !4394
  br label %if.end, !dbg !4395

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.apci3xxx_boardinfo*, %struct.apci3xxx_boardinfo** %board, align 8, !dbg !4396
  %tobool = icmp ne %struct.apci3xxx_boardinfo* %3, null, !dbg !4396
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !4398

if.then1:                                         ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !4399
  br label %return, !dbg !4399

if.end2:                                          ; preds = %if.end
  %4 = load %struct.apci3xxx_boardinfo*, %struct.apci3xxx_boardinfo** %board, align 8, !dbg !4400
  %5 = bitcast %struct.apci3xxx_boardinfo* %4 to i8*, !dbg !4400
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4401
  %board_ptr = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 9, !dbg !4402
  store i8* %5, i8** %board_ptr, align 8, !dbg !4403
  %7 = load %struct.apci3xxx_boardinfo*, %struct.apci3xxx_boardinfo** %board, align 8, !dbg !4404
  %name = getelementptr inbounds %struct.apci3xxx_boardinfo, %struct.apci3xxx_boardinfo* %7, i32 0, i32 0, !dbg !4405
  %8 = load i8*, i8** %name, align 8, !dbg !4405
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4406
  %board_name = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 8, !dbg !4407
  store i8* %8, i8** %board_name, align 8, !dbg !4408
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4409
  %call3 = call i8* @comedi_alloc_devpriv(%struct.comedi_device* %10, i64 8) #4, !dbg !4410
  %11 = bitcast i8* %call3 to %struct.apci3xxx_private*, !dbg !4410
  store %struct.apci3xxx_private* %11, %struct.apci3xxx_private** %devpriv, align 8, !dbg !4411
  %12 = load %struct.apci3xxx_private*, %struct.apci3xxx_private** %devpriv, align 8, !dbg !4412
  %tobool4 = icmp ne %struct.apci3xxx_private* %12, null, !dbg !4412
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !4414

if.then5:                                         ; preds = %if.end2
  store i32 -12, i32* %retval, align 4, !dbg !4415
  br label %return, !dbg !4415

if.end6:                                          ; preds = %if.end2
  %13 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4416
  %call7 = call i32 @comedi_pci_enable(%struct.comedi_device* %13) #4, !dbg !4417
  store i32 %call7, i32* %ret, align 4, !dbg !4418
  %14 = load i32, i32* %ret, align 4, !dbg !4419
  %tobool8 = icmp ne i32 %14, 0, !dbg !4419
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !4421

if.then9:                                         ; preds = %if.end6
  %15 = load i32, i32* %ret, align 4, !dbg !4422
  store i32 %15, i32* %retval, align 4, !dbg !4423
  br label %return, !dbg !4423

if.end10:                                         ; preds = %if.end6
  %16 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4424
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 44, !dbg !4424
  %arrayidx11 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 2, !dbg !4424
  %start = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx11, i32 0, i32 0, !dbg !4424
  %17 = load i64, i64* %start, align 8, !dbg !4424
  %18 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4425
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 18, !dbg !4426
  store i64 %17, i64* %iobase, align 8, !dbg !4427
  %19 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4428
  %call12 = call i8* @pci_ioremap_bar(%struct.pci_dev* %19, i32 3) #4, !dbg !4429
  %20 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4430
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 17, !dbg !4431
  store i8* %call12, i8** %mmio, align 8, !dbg !4432
  %21 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4433
  %mmio13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %21, i32 0, i32 17, !dbg !4435
  %22 = load i8*, i8** %mmio13, align 8, !dbg !4435
  %tobool14 = icmp ne i8* %22, null, !dbg !4433
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !4436

if.then15:                                        ; preds = %if.end10
  store i32 -12, i32* %retval, align 4, !dbg !4437
  br label %return, !dbg !4437

if.end16:                                         ; preds = %if.end10
  %23 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4438
  %irq = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 43, !dbg !4440
  %24 = load i32, i32* %irq, align 4, !dbg !4440
  %cmp17 = icmp ugt i32 %24, 0, !dbg !4441
  br i1 %cmp17, label %if.then18, label %if.end27, !dbg !4442

if.then18:                                        ; preds = %if.end16
  %25 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4443
  %irq19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 43, !dbg !4445
  %26 = load i32, i32* %irq19, align 4, !dbg !4445
  %27 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4446
  %board_name20 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %27, i32 0, i32 8, !dbg !4447
  %28 = load i8*, i8** %board_name20, align 8, !dbg !4447
  %29 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4448
  %30 = bitcast %struct.comedi_device* %29 to i8*, !dbg !4448
  %call21 = call i32 @request_irq(i32 %26, i32 (i32, i8*)* @apci3xxx_irq_handler, i64 128, i8* %28, i8* %30) #4, !dbg !4449
  store i32 %call21, i32* %ret, align 4, !dbg !4450
  %31 = load i32, i32* %ret, align 4, !dbg !4451
  %cmp22 = icmp eq i32 %31, 0, !dbg !4453
  br i1 %cmp22, label %if.then23, label %if.end26, !dbg !4454

if.then23:                                        ; preds = %if.then18
  %32 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4455
  %irq24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 43, !dbg !4456
  %33 = load i32, i32* %irq24, align 4, !dbg !4456
  %34 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4457
  %irq25 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %34, i32 0, i32 20, !dbg !4458
  store i32 %33, i32* %irq25, align 8, !dbg !4459
  br label %if.end26, !dbg !4457

if.end26:                                         ; preds = %if.then23, %if.then18
  br label %if.end27, !dbg !4460

if.end27:                                         ; preds = %if.end26, %if.end16
  %35 = load %struct.apci3xxx_boardinfo*, %struct.apci3xxx_boardinfo** %board, align 8, !dbg !4461
  %ai_n_chan = getelementptr inbounds %struct.apci3xxx_boardinfo, %struct.apci3xxx_boardinfo* %35, i32 0, i32 2, !dbg !4462
  %36 = load i32, i32* %ai_n_chan, align 4, !dbg !4462
  %tobool28 = icmp ne i32 %36, 0, !dbg !4461
  %37 = zext i1 %tobool28 to i64, !dbg !4461
  %cond = select i1 %tobool28, i32 0, i32 1, !dbg !4461
  %38 = load %struct.apci3xxx_boardinfo*, %struct.apci3xxx_boardinfo** %board, align 8, !dbg !4463
  %has_ao = getelementptr inbounds %struct.apci3xxx_boardinfo, %struct.apci3xxx_boardinfo* %38, i32 0, i32 6, !dbg !4464
  %bf.load = load i8, i8* %has_ao, align 4, !dbg !4464
  %bf.clear = and i8 %bf.load, 1, !dbg !4464
  %bf.cast = zext i8 %bf.clear to i32, !dbg !4464
  %add = add i32 %cond, %bf.cast, !dbg !4465
  %39 = load %struct.apci3xxx_boardinfo*, %struct.apci3xxx_boardinfo** %board, align 8, !dbg !4466
  %has_dig_in = getelementptr inbounds %struct.apci3xxx_boardinfo, %struct.apci3xxx_boardinfo* %39, i32 0, i32 6, !dbg !4467
  %bf.load29 = load i8, i8* %has_dig_in, align 4, !dbg !4467
  %bf.lshr = lshr i8 %bf.load29, 1, !dbg !4467
  %bf.clear30 = and i8 %bf.lshr, 1, !dbg !4467
  %bf.cast31 = zext i8 %bf.clear30 to i32, !dbg !4467
  %add32 = add i32 %add, %bf.cast31, !dbg !4468
  %40 = load %struct.apci3xxx_boardinfo*, %struct.apci3xxx_boardinfo** %board, align 8, !dbg !4469
  %has_dig_out = getelementptr inbounds %struct.apci3xxx_boardinfo, %struct.apci3xxx_boardinfo* %40, i32 0, i32 6, !dbg !4470
  %bf.load33 = load i8, i8* %has_dig_out, align 4, !dbg !4470
  %bf.lshr34 = lshr i8 %bf.load33, 2, !dbg !4470
  %bf.clear35 = and i8 %bf.lshr34, 1, !dbg !4470
  %bf.cast36 = zext i8 %bf.clear35 to i32, !dbg !4470
  %add37 = add i32 %add32, %bf.cast36, !dbg !4471
  %41 = load %struct.apci3xxx_boardinfo*, %struct.apci3xxx_boardinfo** %board, align 8, !dbg !4472
  %has_ttl_io = getelementptr inbounds %struct.apci3xxx_boardinfo, %struct.apci3xxx_boardinfo* %41, i32 0, i32 6, !dbg !4473
  %bf.load38 = load i8, i8* %has_ttl_io, align 4, !dbg !4473
  %bf.lshr39 = lshr i8 %bf.load38, 3, !dbg !4473
  %bf.clear40 = and i8 %bf.lshr39, 1, !dbg !4473
  %bf.cast41 = zext i8 %bf.clear40 to i32, !dbg !4473
  %add42 = add i32 %add37, %bf.cast41, !dbg !4474
  store i32 %add42, i32* %n_subdevices, align 4, !dbg !4475
  %42 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4476
  %43 = load i32, i32* %n_subdevices, align 4, !dbg !4477
  %call43 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %42, i32 %43) #4, !dbg !4478
  store i32 %call43, i32* %ret, align 4, !dbg !4479
  %44 = load i32, i32* %ret, align 4, !dbg !4480
  %tobool44 = icmp ne i32 %44, 0, !dbg !4480
  br i1 %tobool44, label %if.then45, label %if.end46, !dbg !4482

if.then45:                                        ; preds = %if.end27
  %45 = load i32, i32* %ret, align 4, !dbg !4483
  store i32 %45, i32* %retval, align 4, !dbg !4484
  br label %return, !dbg !4484

if.end46:                                         ; preds = %if.end27
  store i32 0, i32* %subdev, align 4, !dbg !4485
  %46 = load %struct.apci3xxx_boardinfo*, %struct.apci3xxx_boardinfo** %board, align 8, !dbg !4486
  %ai_n_chan47 = getelementptr inbounds %struct.apci3xxx_boardinfo, %struct.apci3xxx_boardinfo* %46, i32 0, i32 2, !dbg !4488
  %47 = load i32, i32* %ai_n_chan47, align 4, !dbg !4488
  %tobool48 = icmp ne i32 %47, 0, !dbg !4486
  br i1 %tobool48, label %if.then49, label %if.end58, !dbg !4489

if.then49:                                        ; preds = %if.end46
  %48 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4490
  %subdevices = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %48, i32 0, i32 16, !dbg !4492
  %49 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices, align 8, !dbg !4492
  %50 = load i32, i32* %subdev, align 4, !dbg !4493
  %idxprom = sext i32 %50 to i64, !dbg !4490
  %arrayidx50 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %49, i64 %idxprom, !dbg !4490
  store %struct.comedi_subdevice* %arrayidx50, %struct.comedi_subdevice** %s, align 8, !dbg !4494
  %51 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4495
  %type = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %51, i32 0, i32 2, !dbg !4496
  store i32 1, i32* %type, align 4, !dbg !4497
  %52 = load %struct.apci3xxx_boardinfo*, %struct.apci3xxx_boardinfo** %board, align 8, !dbg !4498
  %ai_subdev_flags = getelementptr inbounds %struct.apci3xxx_boardinfo, %struct.apci3xxx_boardinfo* %52, i32 0, i32 1, !dbg !4499
  %53 = load i32, i32* %ai_subdev_flags, align 8, !dbg !4499
  %or = or i32 65536, %53, !dbg !4500
  %54 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4501
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %54, i32 0, i32 4, !dbg !4502
  store i32 %or, i32* %subdev_flags, align 4, !dbg !4503
  %55 = load %struct.apci3xxx_boardinfo*, %struct.apci3xxx_boardinfo** %board, align 8, !dbg !4504
  %ai_n_chan51 = getelementptr inbounds %struct.apci3xxx_boardinfo, %struct.apci3xxx_boardinfo* %55, i32 0, i32 2, !dbg !4505
  %56 = load i32, i32* %ai_n_chan51, align 4, !dbg !4505
  %57 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4506
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %57, i32 0, i32 3, !dbg !4507
  store i32 %56, i32* %n_chan, align 8, !dbg !4508
  %58 = load %struct.apci3xxx_boardinfo*, %struct.apci3xxx_boardinfo** %board, align 8, !dbg !4509
  %ai_maxdata = getelementptr inbounds %struct.apci3xxx_boardinfo, %struct.apci3xxx_boardinfo* %58, i32 0, i32 3, !dbg !4510
  %59 = load i32, i32* %ai_maxdata, align 8, !dbg !4510
  %60 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4511
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %60, i32 0, i32 13, !dbg !4512
  store i32 %59, i32* %maxdata, align 8, !dbg !4513
  %61 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4514
  %range_table = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %61, i32 0, i32 15, !dbg !4515
  store %struct.comedi_lrange* bitcast ({ i32, [8 x %struct.comedi_krange] }* @apci3xxx_ai_range to %struct.comedi_lrange*), %struct.comedi_lrange** %range_table, align 8, !dbg !4516
  %62 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4517
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %62, i32 0, i32 18, !dbg !4518
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @apci3xxx_ai_insn_read, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_read, align 8, !dbg !4519
  %63 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4520
  %irq52 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %63, i32 0, i32 20, !dbg !4522
  %64 = load i32, i32* %irq52, align 8, !dbg !4522
  %tobool53 = icmp ne i32 %64, 0, !dbg !4520
  br i1 %tobool53, label %if.then54, label %if.end57, !dbg !4523

if.then54:                                        ; preds = %if.then49
  %65 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4524
  %66 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4526
  %read_subdev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %66, i32 0, i32 21, !dbg !4527
  store %struct.comedi_subdevice* %65, %struct.comedi_subdevice** %read_subdev, align 8, !dbg !4528
  %67 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4529
  %subdev_flags55 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %67, i32 0, i32 4, !dbg !4530
  %68 = load i32, i32* %subdev_flags55, align 4, !dbg !4531
  %or56 = or i32 %68, 32768, !dbg !4531
  store i32 %or56, i32* %subdev_flags55, align 4, !dbg !4531
  %69 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4532
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %69, i32 0, i32 5, !dbg !4533
  store i32 1, i32* %len_chanlist, align 8, !dbg !4534
  %70 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4535
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %70, i32 0, i32 23, !dbg !4536
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @apci3xxx_ai_cmdtest, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)** %do_cmdtest, align 8, !dbg !4537
  %71 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4538
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %71, i32 0, i32 22, !dbg !4539
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @apci3xxx_ai_cmd, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)** %do_cmd, align 8, !dbg !4540
  %72 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4541
  %cancel = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %72, i32 0, i32 25, !dbg !4542
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @apci3xxx_ai_cancel, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)** %cancel, align 8, !dbg !4543
  br label %if.end57, !dbg !4544

if.end57:                                         ; preds = %if.then54, %if.then49
  %73 = load i32, i32* %subdev, align 4, !dbg !4545
  %inc = add i32 %73, 1, !dbg !4545
  store i32 %inc, i32* %subdev, align 4, !dbg !4545
  br label %if.end58, !dbg !4546

if.end58:                                         ; preds = %if.end57, %if.end46
  %74 = load %struct.apci3xxx_boardinfo*, %struct.apci3xxx_boardinfo** %board, align 8, !dbg !4547
  %has_ao59 = getelementptr inbounds %struct.apci3xxx_boardinfo, %struct.apci3xxx_boardinfo* %74, i32 0, i32 6, !dbg !4549
  %bf.load60 = load i8, i8* %has_ao59, align 4, !dbg !4549
  %bf.clear61 = and i8 %bf.load60, 1, !dbg !4549
  %bf.cast62 = zext i8 %bf.clear61 to i32, !dbg !4549
  %tobool63 = icmp ne i32 %bf.cast62, 0, !dbg !4547
  br i1 %tobool63, label %if.then64, label %if.end78, !dbg !4550

if.then64:                                        ; preds = %if.end58
  %75 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4551
  %subdevices65 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %75, i32 0, i32 16, !dbg !4553
  %76 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices65, align 8, !dbg !4553
  %77 = load i32, i32* %subdev, align 4, !dbg !4554
  %idxprom66 = sext i32 %77 to i64, !dbg !4551
  %arrayidx67 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %76, i64 %idxprom66, !dbg !4551
  store %struct.comedi_subdevice* %arrayidx67, %struct.comedi_subdevice** %s, align 8, !dbg !4555
  %78 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4556
  %type68 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %78, i32 0, i32 2, !dbg !4557
  store i32 2, i32* %type68, align 4, !dbg !4558
  %79 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4559
  %subdev_flags69 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %79, i32 0, i32 4, !dbg !4560
  store i32 3276800, i32* %subdev_flags69, align 4, !dbg !4561
  %80 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4562
  %n_chan70 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %80, i32 0, i32 3, !dbg !4563
  store i32 4, i32* %n_chan70, align 8, !dbg !4564
  %81 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4565
  %maxdata71 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %81, i32 0, i32 13, !dbg !4566
  store i32 4095, i32* %maxdata71, align 8, !dbg !4567
  %82 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4568
  %range_table72 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %82, i32 0, i32 15, !dbg !4569
  store %struct.comedi_lrange* bitcast ({ i32, [2 x %struct.comedi_krange] }* @apci3xxx_ao_range to %struct.comedi_lrange*), %struct.comedi_lrange** %range_table72, align 8, !dbg !4570
  %83 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4571
  %insn_write = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %83, i32 0, i32 19, !dbg !4572
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @apci3xxx_ao_insn_write, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_write, align 8, !dbg !4573
  %84 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4574
  %call73 = call i32 @comedi_alloc_subdev_readback(%struct.comedi_subdevice* %84) #4, !dbg !4575
  store i32 %call73, i32* %ret, align 4, !dbg !4576
  %85 = load i32, i32* %ret, align 4, !dbg !4577
  %tobool74 = icmp ne i32 %85, 0, !dbg !4577
  br i1 %tobool74, label %if.then75, label %if.end76, !dbg !4579

if.then75:                                        ; preds = %if.then64
  %86 = load i32, i32* %ret, align 4, !dbg !4580
  store i32 %86, i32* %retval, align 4, !dbg !4581
  br label %return, !dbg !4581

if.end76:                                         ; preds = %if.then64
  %87 = load i32, i32* %subdev, align 4, !dbg !4582
  %inc77 = add i32 %87, 1, !dbg !4582
  store i32 %inc77, i32* %subdev, align 4, !dbg !4582
  br label %if.end78, !dbg !4583

if.end78:                                         ; preds = %if.end76, %if.end58
  %88 = load %struct.apci3xxx_boardinfo*, %struct.apci3xxx_boardinfo** %board, align 8, !dbg !4584
  %has_dig_in79 = getelementptr inbounds %struct.apci3xxx_boardinfo, %struct.apci3xxx_boardinfo* %88, i32 0, i32 6, !dbg !4586
  %bf.load80 = load i8, i8* %has_dig_in79, align 4, !dbg !4586
  %bf.lshr81 = lshr i8 %bf.load80, 1, !dbg !4586
  %bf.clear82 = and i8 %bf.lshr81, 1, !dbg !4586
  %bf.cast83 = zext i8 %bf.clear82 to i32, !dbg !4586
  %tobool84 = icmp ne i32 %bf.cast83, 0, !dbg !4584
  br i1 %tobool84, label %if.then85, label %if.end95, !dbg !4587

if.then85:                                        ; preds = %if.end78
  %89 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4588
  %subdevices86 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %89, i32 0, i32 16, !dbg !4590
  %90 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices86, align 8, !dbg !4590
  %91 = load i32, i32* %subdev, align 4, !dbg !4591
  %idxprom87 = sext i32 %91 to i64, !dbg !4588
  %arrayidx88 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %90, i64 %idxprom87, !dbg !4588
  store %struct.comedi_subdevice* %arrayidx88, %struct.comedi_subdevice** %s, align 8, !dbg !4592
  %92 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4593
  %type89 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %92, i32 0, i32 2, !dbg !4594
  store i32 3, i32* %type89, align 4, !dbg !4595
  %93 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4596
  %subdev_flags90 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %93, i32 0, i32 4, !dbg !4597
  store i32 65536, i32* %subdev_flags90, align 4, !dbg !4598
  %94 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4599
  %n_chan91 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %94, i32 0, i32 3, !dbg !4600
  store i32 4, i32* %n_chan91, align 8, !dbg !4601
  %95 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4602
  %maxdata92 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %95, i32 0, i32 13, !dbg !4603
  store i32 1, i32* %maxdata92, align 8, !dbg !4604
  %96 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4605
  %range_table93 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %96, i32 0, i32 15, !dbg !4606
  store %struct.comedi_lrange* @range_unipolar5, %struct.comedi_lrange** %range_table93, align 8, !dbg !4607
  %97 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4608
  %insn_bits = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %97, i32 0, i32 20, !dbg !4609
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @apci3xxx_di_insn_bits, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_bits, align 8, !dbg !4610
  %98 = load i32, i32* %subdev, align 4, !dbg !4611
  %inc94 = add i32 %98, 1, !dbg !4611
  store i32 %inc94, i32* %subdev, align 4, !dbg !4611
  br label %if.end95, !dbg !4612

if.end95:                                         ; preds = %if.then85, %if.end78
  %99 = load %struct.apci3xxx_boardinfo*, %struct.apci3xxx_boardinfo** %board, align 8, !dbg !4613
  %has_dig_out96 = getelementptr inbounds %struct.apci3xxx_boardinfo, %struct.apci3xxx_boardinfo* %99, i32 0, i32 6, !dbg !4615
  %bf.load97 = load i8, i8* %has_dig_out96, align 4, !dbg !4615
  %bf.lshr98 = lshr i8 %bf.load97, 2, !dbg !4615
  %bf.clear99 = and i8 %bf.lshr98, 1, !dbg !4615
  %bf.cast100 = zext i8 %bf.clear99 to i32, !dbg !4615
  %tobool101 = icmp ne i32 %bf.cast100, 0, !dbg !4613
  br i1 %tobool101, label %if.then102, label %if.end113, !dbg !4616

if.then102:                                       ; preds = %if.end95
  %100 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4617
  %subdevices103 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %100, i32 0, i32 16, !dbg !4619
  %101 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices103, align 8, !dbg !4619
  %102 = load i32, i32* %subdev, align 4, !dbg !4620
  %idxprom104 = sext i32 %102 to i64, !dbg !4617
  %arrayidx105 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %101, i64 %idxprom104, !dbg !4617
  store %struct.comedi_subdevice* %arrayidx105, %struct.comedi_subdevice** %s, align 8, !dbg !4621
  %103 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4622
  %type106 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %103, i32 0, i32 2, !dbg !4623
  store i32 4, i32* %type106, align 4, !dbg !4624
  %104 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4625
  %subdev_flags107 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %104, i32 0, i32 4, !dbg !4626
  store i32 131072, i32* %subdev_flags107, align 4, !dbg !4627
  %105 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4628
  %n_chan108 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %105, i32 0, i32 3, !dbg !4629
  store i32 4, i32* %n_chan108, align 8, !dbg !4630
  %106 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4631
  %maxdata109 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %106, i32 0, i32 13, !dbg !4632
  store i32 1, i32* %maxdata109, align 8, !dbg !4633
  %107 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4634
  %range_table110 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %107, i32 0, i32 15, !dbg !4635
  store %struct.comedi_lrange* @range_unipolar5, %struct.comedi_lrange** %range_table110, align 8, !dbg !4636
  %108 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4637
  %insn_bits111 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %108, i32 0, i32 20, !dbg !4638
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @apci3xxx_do_insn_bits, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_bits111, align 8, !dbg !4639
  %109 = load i32, i32* %subdev, align 4, !dbg !4640
  %inc112 = add i32 %109, 1, !dbg !4640
  store i32 %inc112, i32* %subdev, align 4, !dbg !4640
  br label %if.end113, !dbg !4641

if.end113:                                        ; preds = %if.then102, %if.end95
  %110 = load %struct.apci3xxx_boardinfo*, %struct.apci3xxx_boardinfo** %board, align 8, !dbg !4642
  %has_ttl_io114 = getelementptr inbounds %struct.apci3xxx_boardinfo, %struct.apci3xxx_boardinfo* %110, i32 0, i32 6, !dbg !4644
  %bf.load115 = load i8, i8* %has_ttl_io114, align 4, !dbg !4644
  %bf.lshr116 = lshr i8 %bf.load115, 3, !dbg !4644
  %bf.clear117 = and i8 %bf.lshr116, 1, !dbg !4644
  %bf.cast118 = zext i8 %bf.clear117 to i32, !dbg !4644
  %tobool119 = icmp ne i32 %bf.cast118, 0, !dbg !4642
  br i1 %tobool119, label %if.then120, label %if.end131, !dbg !4645

if.then120:                                       ; preds = %if.end113
  %111 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4646
  %subdevices121 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %111, i32 0, i32 16, !dbg !4648
  %112 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices121, align 8, !dbg !4648
  %113 = load i32, i32* %subdev, align 4, !dbg !4649
  %idxprom122 = sext i32 %113 to i64, !dbg !4646
  %arrayidx123 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %112, i64 %idxprom122, !dbg !4646
  store %struct.comedi_subdevice* %arrayidx123, %struct.comedi_subdevice** %s, align 8, !dbg !4650
  %114 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4651
  %type124 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %114, i32 0, i32 2, !dbg !4652
  store i32 5, i32* %type124, align 4, !dbg !4653
  %115 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4654
  %subdev_flags125 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %115, i32 0, i32 4, !dbg !4655
  store i32 196608, i32* %subdev_flags125, align 4, !dbg !4656
  %116 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4657
  %n_chan126 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %116, i32 0, i32 3, !dbg !4658
  store i32 24, i32* %n_chan126, align 8, !dbg !4659
  %117 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4660
  %maxdata127 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %117, i32 0, i32 13, !dbg !4661
  store i32 1, i32* %maxdata127, align 8, !dbg !4662
  %118 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4663
  %io_bits = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %118, i32 0, i32 12, !dbg !4664
  store i32 255, i32* %io_bits, align 4, !dbg !4665
  %119 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4666
  %range_table128 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %119, i32 0, i32 15, !dbg !4667
  store %struct.comedi_lrange* @range_unipolar5, %struct.comedi_lrange** %range_table128, align 8, !dbg !4668
  %120 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4669
  %insn_config = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %120, i32 0, i32 21, !dbg !4670
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @apci3xxx_dio_insn_config, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_config, align 8, !dbg !4671
  %121 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4672
  %insn_bits129 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %121, i32 0, i32 20, !dbg !4673
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @apci3xxx_dio_insn_bits, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_bits129, align 8, !dbg !4674
  %122 = load i32, i32* %subdev, align 4, !dbg !4675
  %inc130 = add i32 %122, 1, !dbg !4675
  store i32 %inc130, i32* %subdev, align 4, !dbg !4675
  br label %if.end131, !dbg !4676

if.end131:                                        ; preds = %if.then120, %if.end113
  %123 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4677
  %call132 = call i32 @apci3xxx_reset(%struct.comedi_device* %123) #4, !dbg !4678
  store i32 0, i32* %retval, align 4, !dbg !4679
  br label %return, !dbg !4679

return:                                           ; preds = %if.end131, %if.then75, %if.then45, %if.then15, %if.then9, %if.then5, %if.then1
  %124 = load i32, i32* %retval, align 4, !dbg !4680
  ret i32 %124, !dbg !4680
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci3xxx_reset(%struct.comedi_device* %dev) #2 !dbg !4681 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %val = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4682, metadata !DIExpression()), !dbg !4683
  call void @llvm.dbg.declare(metadata i32* %val, metadata !4684, metadata !DIExpression()), !dbg !4685
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4686, metadata !DIExpression()), !dbg !4687
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4688
  %irq = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 20, !dbg !4689
  %1 = load i32, i32* %irq, align 8, !dbg !4689
  call void @disable_irq(i32 %1) #4, !dbg !4690
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4691
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %2, i32 0, i32 17, !dbg !4692
  %3 = load i8*, i8** %mmio, align 8, !dbg !4692
  %add.ptr = getelementptr i8, i8* %3, i64 8, !dbg !4693
  call void @writel(i32 0, i8* %add.ptr) #4, !dbg !4694
  %4 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4695
  %mmio1 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 17, !dbg !4696
  %5 = load i8*, i8** %mmio1, align 8, !dbg !4696
  %add.ptr2 = getelementptr i8, i8* %5, i64 16, !dbg !4697
  %call = call i32 @readl(i8* %add.ptr2) #4, !dbg !4698
  store i32 %call, i32* %val, align 4, !dbg !4699
  %6 = load i32, i32* %val, align 4, !dbg !4700
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4701
  %mmio3 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 17, !dbg !4702
  %8 = load i8*, i8** %mmio3, align 8, !dbg !4702
  %add.ptr4 = getelementptr i8, i8* %8, i64 16, !dbg !4703
  call void @writel(i32 %6, i8* %add.ptr4) #4, !dbg !4704
  %9 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4705
  %mmio5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 17, !dbg !4706
  %10 = load i8*, i8** %mmio5, align 8, !dbg !4706
  %add.ptr6 = getelementptr i8, i8* %10, i64 20, !dbg !4707
  %call7 = call i32 @readl(i8* %add.ptr6) #4, !dbg !4708
  store i32 0, i32* %i, align 4, !dbg !4709
  br label %for.cond, !dbg !4711

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %i, align 4, !dbg !4712
  %cmp = icmp slt i32 %11, 16, !dbg !4714
  br i1 %cmp, label %for.body, label %for.end, !dbg !4715

for.body:                                         ; preds = %for.cond
  %12 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4716
  %mmio8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 17, !dbg !4717
  %13 = load i8*, i8** %mmio8, align 8, !dbg !4717
  %add.ptr9 = getelementptr i8, i8* %13, i64 28, !dbg !4718
  %call10 = call i32 @readl(i8* %add.ptr9) #4, !dbg !4719
  store i32 %call10, i32* %val, align 4, !dbg !4720
  br label %for.inc, !dbg !4721

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !dbg !4722
  %inc = add i32 %14, 1, !dbg !4722
  store i32 %inc, i32* %i, align 4, !dbg !4722
  br label %for.cond, !dbg !4723, !llvm.loop !4724

for.end:                                          ; preds = %for.cond
  %15 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4726
  %irq11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 20, !dbg !4727
  %16 = load i32, i32* %irq11, align 8, !dbg !4727
  call void @enable_irq(i32 %16) #4, !dbg !4728
  ret i32 0, !dbg !4729
}

; Function Attrs: noredzone
declare dso_local void @comedi_pci_detach(%struct.comedi_device*) #1

; Function Attrs: noredzone
declare dso_local void @disable_irq(i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writel(i32 %val, i8* %addr) #2 !dbg !4730 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !4736, metadata !DIExpression()), !dbg !4737
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !4738, metadata !DIExpression()), !dbg !4737
  %0 = load i32, i32* %val.addr, align 4, !dbg !4737
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !4737
  %2 = bitcast i8* %1 to i32*, !dbg !4737
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #5, !dbg !4737, !srcloc !4739
  ret void, !dbg !4737
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readl(i8* %addr) #2 !dbg !4740 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !4745, metadata !DIExpression()), !dbg !4746
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4747, metadata !DIExpression()), !dbg !4746
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !4746
  %1 = bitcast i8* %0 to i32*, !dbg !4746
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #5, !dbg !4746, !srcloc !4748
  store i32 %2, i32* %ret, align 4, !dbg !4746
  %3 = load i32, i32* %ret, align 4, !dbg !4746
  ret i32 %3, !dbg !4746
}

; Function Attrs: noredzone
declare dso_local void @enable_irq(i32) #1

; Function Attrs: noredzone
declare dso_local %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device*) #1

; Function Attrs: noredzone
declare dso_local i8* @comedi_alloc_devpriv(%struct.comedi_device*, i64) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_pci_enable(%struct.comedi_device*) #1

; Function Attrs: noredzone
declare dso_local i8* @pci_ioremap_bar(%struct.pci_dev*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @request_irq(i32 %irq, i32 (i32, i8*)* %handler, i64 %flags, i8* %name, i8* %dev) #2 !dbg !4749 {
entry:
  %irq.addr = alloca i32, align 4
  %handler.addr = alloca i32 (i32, i8*)*, align 8
  %flags.addr = alloca i64, align 8
  %name.addr = alloca i8*, align 8
  %dev.addr = alloca i8*, align 8
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !4757, metadata !DIExpression()), !dbg !4758
  store i32 (i32, i8*)* %handler, i32 (i32, i8*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i32, i8*)** %handler.addr, metadata !4759, metadata !DIExpression()), !dbg !4760
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !4761, metadata !DIExpression()), !dbg !4762
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !4763, metadata !DIExpression()), !dbg !4764
  store i8* %dev, i8** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev.addr, metadata !4765, metadata !DIExpression()), !dbg !4766
  %0 = load i32, i32* %irq.addr, align 4, !dbg !4767
  %1 = load i32 (i32, i8*)*, i32 (i32, i8*)** %handler.addr, align 8, !dbg !4768
  %2 = load i64, i64* %flags.addr, align 8, !dbg !4769
  %3 = load i8*, i8** %name.addr, align 8, !dbg !4770
  %4 = load i8*, i8** %dev.addr, align 8, !dbg !4771
  %call = call i32 @request_threaded_irq(i32 %0, i32 (i32, i8*)* %1, i32 (i32, i8*)* null, i64 %2, i8* %3, i8* %4) #4, !dbg !4772
  ret i32 %call, !dbg !4773
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci3xxx_irq_handler(i32 %irq, i8* %d) #2 !dbg !4774 {
entry:
  %retval = alloca i32, align 4
  %irq.addr = alloca i32, align 4
  %d.addr = alloca i8*, align 8
  %dev = alloca %struct.comedi_device*, align 8
  %s = alloca %struct.comedi_subdevice*, align 8
  %status = alloca i32, align 4
  %val = alloca i32, align 4
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !4775, metadata !DIExpression()), !dbg !4776
  store i8* %d, i8** %d.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %d.addr, metadata !4777, metadata !DIExpression()), !dbg !4778
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev, metadata !4779, metadata !DIExpression()), !dbg !4780
  %0 = load i8*, i8** %d.addr, align 8, !dbg !4781
  %1 = bitcast i8* %0 to %struct.comedi_device*, !dbg !4781
  store %struct.comedi_device* %1, %struct.comedi_device** %dev, align 8, !dbg !4780
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s, metadata !4782, metadata !DIExpression()), !dbg !4783
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4784
  %read_subdev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %2, i32 0, i32 21, !dbg !4785
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %read_subdev, align 8, !dbg !4785
  store %struct.comedi_subdevice* %3, %struct.comedi_subdevice** %s, align 8, !dbg !4783
  call void @llvm.dbg.declare(metadata i32* %status, metadata !4786, metadata !DIExpression()), !dbg !4787
  call void @llvm.dbg.declare(metadata i32* %val, metadata !4788, metadata !DIExpression()), !dbg !4789
  %4 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4790
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 17, !dbg !4791
  %5 = load i8*, i8** %mmio, align 8, !dbg !4791
  %add.ptr = getelementptr i8, i8* %5, i64 16, !dbg !4792
  %call = call i32 @readl(i8* %add.ptr) #4, !dbg !4793
  store i32 %call, i32* %status, align 4, !dbg !4794
  %6 = load i32, i32* %status, align 4, !dbg !4795
  %and = and i32 %6, 2, !dbg !4797
  %cmp = icmp eq i32 %and, 2, !dbg !4798
  br i1 %cmp, label %if.then, label %if.end, !dbg !4799

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %status, align 4, !dbg !4800
  %8 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4802
  %mmio1 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 17, !dbg !4803
  %9 = load i8*, i8** %mmio1, align 8, !dbg !4803
  %add.ptr2 = getelementptr i8, i8* %9, i64 16, !dbg !4804
  call void @writel(i32 %7, i8* %add.ptr2) #4, !dbg !4805
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4806
  %mmio3 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 17, !dbg !4807
  %11 = load i8*, i8** %mmio3, align 8, !dbg !4807
  %add.ptr4 = getelementptr i8, i8* %11, i64 28, !dbg !4808
  %call5 = call i32 @readl(i8* %add.ptr4) #4, !dbg !4809
  store i32 %call5, i32* %val, align 4, !dbg !4810
  %12 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4811
  %13 = bitcast i32* %val to i8*, !dbg !4812
  %call6 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %12, i8* %13, i32 1) #4, !dbg !4813
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4814
  %async = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %14, i32 0, i32 7, !dbg !4815
  %15 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4815
  %events = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %15, i32 0, i32 16, !dbg !4816
  %16 = load i32, i32* %events, align 4, !dbg !4817
  %or = or i32 %16, 2, !dbg !4817
  store i32 %or, i32* %events, align 4, !dbg !4817
  %17 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4818
  %18 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4819
  %call7 = call i32 @comedi_handle_events(%struct.comedi_device* %17, %struct.comedi_subdevice* %18) #4, !dbg !4820
  store i32 1, i32* %retval, align 4, !dbg !4821
  br label %return, !dbg !4821

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4822
  br label %return, !dbg !4822

return:                                           ; preds = %if.end, %if.then
  %19 = load i32, i32* %retval, align 4, !dbg !4823
  ret i32 %19, !dbg !4823
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci3xxx_ai_insn_read(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !4824 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4825, metadata !DIExpression()), !dbg !4826
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4827, metadata !DIExpression()), !dbg !4828
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !4829, metadata !DIExpression()), !dbg !4830
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !4831, metadata !DIExpression()), !dbg !4832
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4833, metadata !DIExpression()), !dbg !4834
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4835, metadata !DIExpression()), !dbg !4836
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4837
  %1 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4838
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %1, i32 0, i32 4, !dbg !4839
  %2 = load i32, i32* %chanspec, align 4, !dbg !4839
  %call = call i32 @apci3xxx_ai_setup(%struct.comedi_device* %0, i32 %2) #4, !dbg !4840
  store i32 %call, i32* %ret, align 4, !dbg !4841
  %3 = load i32, i32* %ret, align 4, !dbg !4842
  %tobool = icmp ne i32 %3, 0, !dbg !4842
  br i1 %tobool, label %if.then, label %if.end, !dbg !4844

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %ret, align 4, !dbg !4845
  store i32 %4, i32* %retval, align 4, !dbg !4846
  br label %return, !dbg !4846

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !4847
  br label %for.cond, !dbg !4849

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4, !dbg !4850
  %6 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4852
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %6, i32 0, i32 1, !dbg !4853
  %7 = load i32, i32* %n, align 4, !dbg !4853
  %cmp = icmp ult i32 %5, %7, !dbg !4854
  br i1 %cmp, label %for.body, label %for.end, !dbg !4855

for.body:                                         ; preds = %for.cond
  %8 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4856
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 17, !dbg !4858
  %9 = load i8*, i8** %mmio, align 8, !dbg !4858
  %add.ptr = getelementptr i8, i8* %9, i64 8, !dbg !4859
  call void @writel(i32 524288, i8* %add.ptr) #4, !dbg !4860
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4861
  %11 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4862
  %12 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4863
  %call1 = call i32 @comedi_timeout(%struct.comedi_device* %10, %struct.comedi_subdevice* %11, %struct.comedi_insn* %12, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i64)* @apci3xxx_ai_eoc, i64 0) #4, !dbg !4864
  store i32 %call1, i32* %ret, align 4, !dbg !4865
  %13 = load i32, i32* %ret, align 4, !dbg !4866
  %tobool2 = icmp ne i32 %13, 0, !dbg !4866
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !4868

if.then3:                                         ; preds = %for.body
  %14 = load i32, i32* %ret, align 4, !dbg !4869
  store i32 %14, i32* %retval, align 4, !dbg !4870
  br label %return, !dbg !4870

if.end4:                                          ; preds = %for.body
  %15 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4871
  %mmio5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 17, !dbg !4872
  %16 = load i8*, i8** %mmio5, align 8, !dbg !4872
  %add.ptr6 = getelementptr i8, i8* %16, i64 28, !dbg !4873
  %call7 = call i32 @readl(i8* %add.ptr6) #4, !dbg !4874
  %17 = load i32*, i32** %data.addr, align 8, !dbg !4875
  %18 = load i32, i32* %i, align 4, !dbg !4876
  %idxprom = sext i32 %18 to i64, !dbg !4875
  %arrayidx = getelementptr i32, i32* %17, i64 %idxprom, !dbg !4875
  store i32 %call7, i32* %arrayidx, align 4, !dbg !4877
  br label %for.inc, !dbg !4878

for.inc:                                          ; preds = %if.end4
  %19 = load i32, i32* %i, align 4, !dbg !4879
  %inc = add i32 %19, 1, !dbg !4879
  store i32 %inc, i32* %i, align 4, !dbg !4879
  br label %for.cond, !dbg !4880, !llvm.loop !4881

for.end:                                          ; preds = %for.cond
  %20 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4883
  %n8 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %20, i32 0, i32 1, !dbg !4884
  %21 = load i32, i32* %n8, align 4, !dbg !4884
  store i32 %21, i32* %retval, align 4, !dbg !4885
  br label %return, !dbg !4885

return:                                           ; preds = %for.end, %if.then3, %if.then
  %22 = load i32, i32* %retval, align 4, !dbg !4886
  ret i32 %22, !dbg !4886
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci3xxx_ai_cmdtest(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_cmd* %cmd) #2 !dbg !4887 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %cmd.addr = alloca %struct.comedi_cmd*, align 8
  %board = alloca %struct.apci3xxx_boardinfo*, align 8
  %err = alloca i32, align 4
  %arg = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4888, metadata !DIExpression()), !dbg !4889
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4890, metadata !DIExpression()), !dbg !4891
  store %struct.comedi_cmd* %cmd, %struct.comedi_cmd** %cmd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd.addr, metadata !4892, metadata !DIExpression()), !dbg !4893
  call void @llvm.dbg.declare(metadata %struct.apci3xxx_boardinfo** %board, metadata !4894, metadata !DIExpression()), !dbg !4895
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4896
  %board_ptr = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 9, !dbg !4897
  %1 = load i8*, i8** %board_ptr, align 8, !dbg !4897
  %2 = bitcast i8* %1 to %struct.apci3xxx_boardinfo*, !dbg !4896
  store %struct.apci3xxx_boardinfo* %2, %struct.apci3xxx_boardinfo** %board, align 8, !dbg !4895
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4898, metadata !DIExpression()), !dbg !4899
  store i32 0, i32* %err, align 4, !dbg !4899
  call void @llvm.dbg.declare(metadata i32* %arg, metadata !4900, metadata !DIExpression()), !dbg !4901
  %3 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4902
  %start_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %3, i32 0, i32 2, !dbg !4903
  %call = call i32 @comedi_check_trigger_src(i32* %start_src, i32 2) #4, !dbg !4904
  %4 = load i32, i32* %err, align 4, !dbg !4905
  %or = or i32 %4, %call, !dbg !4905
  store i32 %or, i32* %err, align 4, !dbg !4905
  %5 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4906
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %5, i32 0, i32 4, !dbg !4907
  %call1 = call i32 @comedi_check_trigger_src(i32* %scan_begin_src, i32 4) #4, !dbg !4908
  %6 = load i32, i32* %err, align 4, !dbg !4909
  %or2 = or i32 %6, %call1, !dbg !4909
  store i32 %or2, i32* %err, align 4, !dbg !4909
  %7 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4910
  %convert_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %7, i32 0, i32 6, !dbg !4911
  %call3 = call i32 @comedi_check_trigger_src(i32* %convert_src, i32 16) #4, !dbg !4912
  %8 = load i32, i32* %err, align 4, !dbg !4913
  %or4 = or i32 %8, %call3, !dbg !4913
  store i32 %or4, i32* %err, align 4, !dbg !4913
  %9 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4914
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %9, i32 0, i32 8, !dbg !4915
  %call5 = call i32 @comedi_check_trigger_src(i32* %scan_end_src, i32 32) #4, !dbg !4916
  %10 = load i32, i32* %err, align 4, !dbg !4917
  %or6 = or i32 %10, %call5, !dbg !4917
  store i32 %or6, i32* %err, align 4, !dbg !4917
  %11 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4918
  %stop_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %11, i32 0, i32 10, !dbg !4919
  %call7 = call i32 @comedi_check_trigger_src(i32* %stop_src, i32 33) #4, !dbg !4920
  %12 = load i32, i32* %err, align 4, !dbg !4921
  %or8 = or i32 %12, %call7, !dbg !4921
  store i32 %or8, i32* %err, align 4, !dbg !4921
  %13 = load i32, i32* %err, align 4, !dbg !4922
  %tobool = icmp ne i32 %13, 0, !dbg !4922
  br i1 %tobool, label %if.then, label %if.end, !dbg !4924

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !4925
  br label %return, !dbg !4925

if.end:                                           ; preds = %entry
  %14 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4926
  %stop_src9 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %14, i32 0, i32 10, !dbg !4927
  %15 = load i32, i32* %stop_src9, align 8, !dbg !4927
  %call10 = call i32 @comedi_check_trigger_is_unique(i32 %15) #4, !dbg !4928
  %16 = load i32, i32* %err, align 4, !dbg !4929
  %or11 = or i32 %16, %call10, !dbg !4929
  store i32 %or11, i32* %err, align 4, !dbg !4929
  %17 = load i32, i32* %err, align 4, !dbg !4930
  %tobool12 = icmp ne i32 %17, 0, !dbg !4930
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !4932

if.then13:                                        ; preds = %if.end
  store i32 2, i32* %retval, align 4, !dbg !4933
  br label %return, !dbg !4933

if.end14:                                         ; preds = %if.end
  %18 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4934
  %start_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %18, i32 0, i32 3, !dbg !4935
  %call15 = call i32 @comedi_check_trigger_arg_is(i32* %start_arg, i32 0) #4, !dbg !4936
  %19 = load i32, i32* %err, align 4, !dbg !4937
  %or16 = or i32 %19, %call15, !dbg !4937
  store i32 %or16, i32* %err, align 4, !dbg !4937
  %20 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4938
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %20, i32 0, i32 5, !dbg !4939
  %call17 = call i32 @comedi_check_trigger_arg_is(i32* %scan_begin_arg, i32 0) #4, !dbg !4940
  %21 = load i32, i32* %err, align 4, !dbg !4941
  %or18 = or i32 %21, %call17, !dbg !4941
  store i32 %or18, i32* %err, align 4, !dbg !4941
  %22 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4942
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %22, i32 0, i32 7, !dbg !4943
  %23 = load %struct.apci3xxx_boardinfo*, %struct.apci3xxx_boardinfo** %board, align 8, !dbg !4944
  %ai_min_acq_ns = getelementptr inbounds %struct.apci3xxx_boardinfo, %struct.apci3xxx_boardinfo* %23, i32 0, i32 5, !dbg !4945
  %24 = load i32, i32* %ai_min_acq_ns, align 8, !dbg !4945
  %call19 = call i32 @comedi_check_trigger_arg_min(i32* %convert_arg, i32 %24) #4, !dbg !4946
  %25 = load i32, i32* %err, align 4, !dbg !4947
  %or20 = or i32 %25, %call19, !dbg !4947
  store i32 %or20, i32* %err, align 4, !dbg !4947
  %26 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4948
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %26, i32 0, i32 9, !dbg !4949
  %27 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4950
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %27, i32 0, i32 13, !dbg !4951
  %28 = load i32, i32* %chanlist_len, align 8, !dbg !4951
  %call21 = call i32 @comedi_check_trigger_arg_is(i32* %scan_end_arg, i32 %28) #4, !dbg !4952
  %29 = load i32, i32* %err, align 4, !dbg !4953
  %or22 = or i32 %29, %call21, !dbg !4953
  store i32 %or22, i32* %err, align 4, !dbg !4953
  %30 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4954
  %stop_src23 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %30, i32 0, i32 10, !dbg !4956
  %31 = load i32, i32* %stop_src23, align 8, !dbg !4956
  %cmp = icmp eq i32 %31, 32, !dbg !4957
  br i1 %cmp, label %if.then24, label %if.else, !dbg !4958

if.then24:                                        ; preds = %if.end14
  %32 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4959
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %32, i32 0, i32 11, !dbg !4960
  %call25 = call i32 @comedi_check_trigger_arg_min(i32* %stop_arg, i32 1) #4, !dbg !4961
  %33 = load i32, i32* %err, align 4, !dbg !4962
  %or26 = or i32 %33, %call25, !dbg !4962
  store i32 %or26, i32* %err, align 4, !dbg !4962
  br label %if.end30, !dbg !4963

if.else:                                          ; preds = %if.end14
  %34 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4964
  %stop_arg27 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %34, i32 0, i32 11, !dbg !4965
  %call28 = call i32 @comedi_check_trigger_arg_is(i32* %stop_arg27, i32 0) #4, !dbg !4966
  %35 = load i32, i32* %err, align 4, !dbg !4967
  %or29 = or i32 %35, %call28, !dbg !4967
  store i32 %or29, i32* %err, align 4, !dbg !4967
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then24
  %36 = load i32, i32* %err, align 4, !dbg !4968
  %tobool31 = icmp ne i32 %36, 0, !dbg !4968
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !4970

if.then32:                                        ; preds = %if.end30
  store i32 3, i32* %retval, align 4, !dbg !4971
  br label %return, !dbg !4971

if.end33:                                         ; preds = %if.end30
  %37 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4972
  %convert_arg34 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %37, i32 0, i32 7, !dbg !4973
  %38 = load i32, i32* %convert_arg34, align 4, !dbg !4973
  store i32 %38, i32* %arg, align 4, !dbg !4974
  %39 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4975
  %40 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4976
  %flags = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %40, i32 0, i32 1, !dbg !4977
  %41 = load i32, i32* %flags, align 4, !dbg !4977
  %call35 = call i32 @apci3xxx_ai_ns_to_timer(%struct.comedi_device* %39, i32* %arg, i32 %41) #4, !dbg !4978
  %42 = load i32, i32* %err, align 4, !dbg !4979
  %or36 = or i32 %42, %call35, !dbg !4979
  store i32 %or36, i32* %err, align 4, !dbg !4979
  %43 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !4980
  %convert_arg37 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %43, i32 0, i32 7, !dbg !4981
  %44 = load i32, i32* %arg, align 4, !dbg !4982
  %call38 = call i32 @comedi_check_trigger_arg_is(i32* %convert_arg37, i32 %44) #4, !dbg !4983
  %45 = load i32, i32* %err, align 4, !dbg !4984
  %or39 = or i32 %45, %call38, !dbg !4984
  store i32 %or39, i32* %err, align 4, !dbg !4984
  %46 = load i32, i32* %err, align 4, !dbg !4985
  %tobool40 = icmp ne i32 %46, 0, !dbg !4985
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !4987

if.then41:                                        ; preds = %if.end33
  store i32 4, i32* %retval, align 4, !dbg !4988
  br label %return, !dbg !4988

if.end42:                                         ; preds = %if.end33
  store i32 0, i32* %retval, align 4, !dbg !4989
  br label %return, !dbg !4989

return:                                           ; preds = %if.end42, %if.then41, %if.then32, %if.then13, %if.then
  %47 = load i32, i32* %retval, align 4, !dbg !4990
  ret i32 %47, !dbg !4990
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci3xxx_ai_cmd(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #2 !dbg !4991 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %devpriv = alloca %struct.apci3xxx_private*, align 8
  %cmd = alloca %struct.comedi_cmd*, align 8
  %ret = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4992, metadata !DIExpression()), !dbg !4993
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4994, metadata !DIExpression()), !dbg !4995
  call void @llvm.dbg.declare(metadata %struct.apci3xxx_private** %devpriv, metadata !4996, metadata !DIExpression()), !dbg !4997
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4998
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 3, !dbg !4999
  %1 = load i8*, i8** %private, align 8, !dbg !4999
  %2 = bitcast i8* %1 to %struct.apci3xxx_private*, !dbg !4998
  store %struct.apci3xxx_private* %2, %struct.apci3xxx_private** %devpriv, align 8, !dbg !4997
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd, metadata !5000, metadata !DIExpression()), !dbg !5001
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5002
  %async = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %3, i32 0, i32 7, !dbg !5003
  %4 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5003
  %cmd1 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %4, i32 0, i32 17, !dbg !5004
  store %struct.comedi_cmd* %cmd1, %struct.comedi_cmd** %cmd, align 8, !dbg !5001
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5005, metadata !DIExpression()), !dbg !5006
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5007
  %6 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5008
  %chanlist = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %6, i32 0, i32 12, !dbg !5009
  %7 = load i32*, i32** %chanlist, align 8, !dbg !5009
  %arrayidx = getelementptr i32, i32* %7, i64 0, !dbg !5008
  %8 = load i32, i32* %arrayidx, align 4, !dbg !5008
  %call = call i32 @apci3xxx_ai_setup(%struct.comedi_device* %5, i32 %8) #4, !dbg !5010
  store i32 %call, i32* %ret, align 4, !dbg !5011
  %9 = load i32, i32* %ret, align 4, !dbg !5012
  %tobool = icmp ne i32 %9, 0, !dbg !5012
  br i1 %tobool, label %if.then, label %if.end, !dbg !5014

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %ret, align 4, !dbg !5015
  store i32 %10, i32* %retval, align 4, !dbg !5016
  br label %return, !dbg !5016

if.end:                                           ; preds = %entry
  %11 = load %struct.apci3xxx_private*, %struct.apci3xxx_private** %devpriv, align 8, !dbg !5017
  %ai_time_base = getelementptr inbounds %struct.apci3xxx_private, %struct.apci3xxx_private* %11, i32 0, i32 1, !dbg !5018
  %12 = load i8, i8* %ai_time_base, align 4, !dbg !5018
  %conv = zext i8 %12 to i32, !dbg !5017
  %13 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5019
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 17, !dbg !5020
  %14 = load i8*, i8** %mmio, align 8, !dbg !5020
  %add.ptr = getelementptr i8, i8* %14, i64 36, !dbg !5021
  call void @writel(i32 %conv, i8* %add.ptr) #4, !dbg !5022
  %15 = load %struct.apci3xxx_private*, %struct.apci3xxx_private** %devpriv, align 8, !dbg !5023
  %ai_timer = getelementptr inbounds %struct.apci3xxx_private, %struct.apci3xxx_private* %15, i32 0, i32 0, !dbg !5024
  %16 = load i32, i32* %ai_timer, align 4, !dbg !5024
  %17 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5025
  %mmio2 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 17, !dbg !5026
  %18 = load i8*, i8** %mmio2, align 8, !dbg !5026
  %add.ptr3 = getelementptr i8, i8* %18, i64 32, !dbg !5027
  call void @writel(i32 %16, i8* %add.ptr3) #4, !dbg !5028
  %19 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5029
  %mmio4 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 17, !dbg !5030
  %20 = load i8*, i8** %mmio4, align 8, !dbg !5030
  %add.ptr5 = getelementptr i8, i8* %20, i64 8, !dbg !5031
  call void @writel(i32 1572864, i8* %add.ptr5) #4, !dbg !5032
  store i32 0, i32* %retval, align 4, !dbg !5033
  br label %return, !dbg !5033

return:                                           ; preds = %if.end, %if.then
  %21 = load i32, i32* %retval, align 4, !dbg !5034
  ret i32 %21, !dbg !5034
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci3xxx_ai_cancel(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #2 !dbg !5035 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5036, metadata !DIExpression()), !dbg !5037
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5038, metadata !DIExpression()), !dbg !5039
  ret i32 0, !dbg !5040
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci3xxx_ao_insn_write(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5041 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %chan = alloca i32, align 4
  %range = alloca i32, align 4
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %val = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5042, metadata !DIExpression()), !dbg !5043
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5044, metadata !DIExpression()), !dbg !5045
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5046, metadata !DIExpression()), !dbg !5047
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5048, metadata !DIExpression()), !dbg !5049
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !5050, metadata !DIExpression()), !dbg !5051
  %0 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5052
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %0, i32 0, i32 4, !dbg !5052
  %1 = load i32, i32* %chanspec, align 4, !dbg !5052
  %and = and i32 %1, 65535, !dbg !5052
  store i32 %and, i32* %chan, align 4, !dbg !5051
  call void @llvm.dbg.declare(metadata i32* %range, metadata !5053, metadata !DIExpression()), !dbg !5054
  %2 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5055
  %chanspec1 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %2, i32 0, i32 4, !dbg !5055
  %3 = load i32, i32* %chanspec1, align 4, !dbg !5055
  %shr = lshr i32 %3, 16, !dbg !5055
  %and2 = and i32 %shr, 255, !dbg !5055
  store i32 %and2, i32* %range, align 4, !dbg !5054
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5056, metadata !DIExpression()), !dbg !5057
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5058, metadata !DIExpression()), !dbg !5059
  store i32 0, i32* %i, align 4, !dbg !5060
  br label %for.cond, !dbg !5062

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !dbg !5063
  %5 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5065
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %5, i32 0, i32 1, !dbg !5066
  %6 = load i32, i32* %n, align 4, !dbg !5066
  %cmp = icmp ult i32 %4, %6, !dbg !5067
  br i1 %cmp, label %for.body, label %for.end, !dbg !5068

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %val, metadata !5069, metadata !DIExpression()), !dbg !5071
  %7 = load i32*, i32** %data.addr, align 8, !dbg !5072
  %8 = load i32, i32* %i, align 4, !dbg !5073
  %idxprom = sext i32 %8 to i64, !dbg !5072
  %arrayidx = getelementptr i32, i32* %7, i64 %idxprom, !dbg !5072
  %9 = load i32, i32* %arrayidx, align 4, !dbg !5072
  store i32 %9, i32* %val, align 4, !dbg !5071
  %10 = load i32, i32* %range, align 4, !dbg !5074
  %11 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5075
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 17, !dbg !5076
  %12 = load i8*, i8** %mmio, align 8, !dbg !5076
  %add.ptr = getelementptr i8, i8* %12, i64 96, !dbg !5077
  call void @writel(i32 %10, i8* %add.ptr) #4, !dbg !5078
  %13 = load i32, i32* %val, align 4, !dbg !5079
  %shl = shl i32 %13, 8, !dbg !5080
  %14 = load i32, i32* %chan, align 4, !dbg !5081
  %or = or i32 %shl, %14, !dbg !5082
  %15 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5083
  %mmio3 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 17, !dbg !5084
  %16 = load i8*, i8** %mmio3, align 8, !dbg !5084
  %add.ptr4 = getelementptr i8, i8* %16, i64 100, !dbg !5085
  call void @writel(i32 %or, i8* %add.ptr4) #4, !dbg !5086
  %17 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5087
  %18 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5088
  %19 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5089
  %call = call i32 @comedi_timeout(%struct.comedi_device* %17, %struct.comedi_subdevice* %18, %struct.comedi_insn* %19, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i64)* @apci3xxx_ao_eoc, i64 0) #4, !dbg !5090
  store i32 %call, i32* %ret, align 4, !dbg !5091
  %20 = load i32, i32* %ret, align 4, !dbg !5092
  %tobool = icmp ne i32 %20, 0, !dbg !5092
  br i1 %tobool, label %if.then, label %if.end, !dbg !5094

if.then:                                          ; preds = %for.body
  %21 = load i32, i32* %ret, align 4, !dbg !5095
  store i32 %21, i32* %retval, align 4, !dbg !5096
  br label %return, !dbg !5096

if.end:                                           ; preds = %for.body
  %22 = load i32, i32* %val, align 4, !dbg !5097
  %23 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5098
  %readback = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %23, i32 0, i32 32, !dbg !5099
  %24 = load i32*, i32** %readback, align 8, !dbg !5099
  %25 = load i32, i32* %chan, align 4, !dbg !5100
  %idxprom5 = zext i32 %25 to i64, !dbg !5098
  %arrayidx6 = getelementptr i32, i32* %24, i64 %idxprom5, !dbg !5098
  store i32 %22, i32* %arrayidx6, align 4, !dbg !5101
  br label %for.inc, !dbg !5102

for.inc:                                          ; preds = %if.end
  %26 = load i32, i32* %i, align 4, !dbg !5103
  %inc = add i32 %26, 1, !dbg !5103
  store i32 %inc, i32* %i, align 4, !dbg !5103
  br label %for.cond, !dbg !5104, !llvm.loop !5105

for.end:                                          ; preds = %for.cond
  %27 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5107
  %n7 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %27, i32 0, i32 1, !dbg !5108
  %28 = load i32, i32* %n7, align 4, !dbg !5108
  store i32 %28, i32* %retval, align 4, !dbg !5109
  br label %return, !dbg !5109

return:                                           ; preds = %for.end, %if.then
  %29 = load i32, i32* %retval, align 4, !dbg !5110
  ret i32 %29, !dbg !5110
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_alloc_subdev_readback(%struct.comedi_subdevice*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci3xxx_di_insn_bits(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5111 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5112, metadata !DIExpression()), !dbg !5113
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5114, metadata !DIExpression()), !dbg !5115
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5116, metadata !DIExpression()), !dbg !5117
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5118, metadata !DIExpression()), !dbg !5119
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5120
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 18, !dbg !5121
  %1 = load i64, i64* %iobase, align 8, !dbg !5121
  %add = add i64 %1, 32, !dbg !5122
  %conv = trunc i64 %add to i32, !dbg !5120
  %call = call i32 @inl(i32 %conv) #4, !dbg !5123
  %and = and i32 %call, 15, !dbg !5124
  %2 = load i32*, i32** %data.addr, align 8, !dbg !5125
  %arrayidx = getelementptr i32, i32* %2, i64 1, !dbg !5125
  store i32 %and, i32* %arrayidx, align 4, !dbg !5126
  %3 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5127
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %3, i32 0, i32 1, !dbg !5128
  %4 = load i32, i32* %n, align 4, !dbg !5128
  ret i32 %4, !dbg !5129
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci3xxx_do_insn_bits(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5130 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5131, metadata !DIExpression()), !dbg !5132
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5133, metadata !DIExpression()), !dbg !5134
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5135, metadata !DIExpression()), !dbg !5136
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5137, metadata !DIExpression()), !dbg !5138
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5139
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 18, !dbg !5140
  %1 = load i64, i64* %iobase, align 8, !dbg !5140
  %add = add i64 %1, 48, !dbg !5141
  %conv = trunc i64 %add to i32, !dbg !5139
  %call = call i32 @inl(i32 %conv) #4, !dbg !5142
  %and = and i32 %call, 15, !dbg !5143
  %2 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5144
  %state = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %2, i32 0, i32 29, !dbg !5145
  store i32 %and, i32* %state, align 4, !dbg !5146
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5147
  %4 = load i32*, i32** %data.addr, align 8, !dbg !5149
  %call1 = call i32 @comedi_dio_update_state(%struct.comedi_subdevice* %3, i32* %4) #4, !dbg !5150
  %tobool = icmp ne i32 %call1, 0, !dbg !5150
  br i1 %tobool, label %if.then, label %if.end, !dbg !5151

if.then:                                          ; preds = %entry
  %5 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5152
  %state2 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %5, i32 0, i32 29, !dbg !5153
  %6 = load i32, i32* %state2, align 4, !dbg !5153
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5154
  %iobase3 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 18, !dbg !5155
  %8 = load i64, i64* %iobase3, align 8, !dbg !5155
  %add4 = add i64 %8, 48, !dbg !5156
  %conv5 = trunc i64 %add4 to i32, !dbg !5154
  call void @outl(i32 %6, i32 %conv5) #4, !dbg !5157
  br label %if.end, !dbg !5157

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5158
  %state6 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %9, i32 0, i32 29, !dbg !5159
  %10 = load i32, i32* %state6, align 4, !dbg !5159
  %11 = load i32*, i32** %data.addr, align 8, !dbg !5160
  %arrayidx = getelementptr i32, i32* %11, i64 1, !dbg !5160
  store i32 %10, i32* %arrayidx, align 4, !dbg !5161
  %12 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5162
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %12, i32 0, i32 1, !dbg !5163
  %13 = load i32, i32* %n, align 4, !dbg !5163
  ret i32 %13, !dbg !5164
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci3xxx_dio_insn_config(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5165 {
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
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5166, metadata !DIExpression()), !dbg !5167
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5168, metadata !DIExpression()), !dbg !5169
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5170, metadata !DIExpression()), !dbg !5171
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5172, metadata !DIExpression()), !dbg !5173
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !5174, metadata !DIExpression()), !dbg !5175
  %0 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5176
  %chanspec = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %0, i32 0, i32 4, !dbg !5176
  %1 = load i32, i32* %chanspec, align 4, !dbg !5176
  %and = and i32 %1, 65535, !dbg !5176
  store i32 %and, i32* %chan, align 4, !dbg !5175
  call void @llvm.dbg.declare(metadata i32* %mask, metadata !5177, metadata !DIExpression()), !dbg !5178
  store i32 0, i32* %mask, align 4, !dbg !5178
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5179, metadata !DIExpression()), !dbg !5180
  %2 = load i32*, i32** %data.addr, align 8, !dbg !5181
  %arrayidx = getelementptr i32, i32* %2, i64 0, !dbg !5181
  %3 = load i32, i32* %arrayidx, align 4, !dbg !5181
  %cmp = icmp ne i32 %3, 28, !dbg !5183
  br i1 %cmp, label %if.then, label %if.end3, !dbg !5184

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %chan, align 4, !dbg !5185
  %cmp1 = icmp ult i32 %4, 16, !dbg !5188
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !5189

if.then2:                                         ; preds = %if.then
  store i32 -22, i32* %retval, align 4, !dbg !5190
  br label %return, !dbg !5190

if.end:                                           ; preds = %if.then
  store i32 16711680, i32* %mask, align 4, !dbg !5191
  br label %if.end3, !dbg !5192

if.end3:                                          ; preds = %if.end, %entry
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5193
  %6 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5194
  %7 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5195
  %8 = load i32*, i32** %data.addr, align 8, !dbg !5196
  %9 = load i32, i32* %mask, align 4, !dbg !5197
  %call = call i32 @comedi_dio_insn_config(%struct.comedi_device* %5, %struct.comedi_subdevice* %6, %struct.comedi_insn* %7, i32* %8, i32 %9) #4, !dbg !5198
  store i32 %call, i32* %ret, align 4, !dbg !5199
  %10 = load i32, i32* %ret, align 4, !dbg !5200
  %tobool = icmp ne i32 %10, 0, !dbg !5200
  br i1 %tobool, label %if.then4, label %if.end5, !dbg !5202

if.then4:                                         ; preds = %if.end3
  %11 = load i32, i32* %ret, align 4, !dbg !5203
  store i32 %11, i32* %retval, align 4, !dbg !5204
  br label %return, !dbg !5204

if.end5:                                          ; preds = %if.end3
  %12 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5205
  %io_bits = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %12, i32 0, i32 12, !dbg !5206
  %13 = load i32, i32* %io_bits, align 4, !dbg !5206
  %shr = lshr i32 %13, 24, !dbg !5207
  %and6 = and i32 %shr, 255, !dbg !5208
  %14 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5209
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 18, !dbg !5210
  %15 = load i64, i64* %iobase, align 8, !dbg !5210
  %add = add i64 %15, 224, !dbg !5211
  %conv = trunc i64 %add to i32, !dbg !5209
  call void @outl(i32 %and6, i32 %conv) #4, !dbg !5212
  %16 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5213
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %16, i32 0, i32 1, !dbg !5214
  %17 = load i32, i32* %n, align 4, !dbg !5214
  store i32 %17, i32* %retval, align 4, !dbg !5215
  br label %return, !dbg !5215

return:                                           ; preds = %if.end5, %if.then4, %if.then2
  %18 = load i32, i32* %retval, align 4, !dbg !5216
  ret i32 %18, !dbg !5216
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci3xxx_dio_insn_bits(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !5217 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  %mask = alloca i32, align 4
  %val = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5218, metadata !DIExpression()), !dbg !5219
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5220, metadata !DIExpression()), !dbg !5221
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5222, metadata !DIExpression()), !dbg !5223
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !5224, metadata !DIExpression()), !dbg !5225
  call void @llvm.dbg.declare(metadata i32* %mask, metadata !5226, metadata !DIExpression()), !dbg !5227
  call void @llvm.dbg.declare(metadata i32* %val, metadata !5228, metadata !DIExpression()), !dbg !5229
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5230
  %1 = load i32*, i32** %data.addr, align 8, !dbg !5231
  %call = call i32 @comedi_dio_update_state(%struct.comedi_subdevice* %0, i32* %1) #4, !dbg !5232
  store i32 %call, i32* %mask, align 4, !dbg !5233
  %2 = load i32, i32* %mask, align 4, !dbg !5234
  %tobool = icmp ne i32 %2, 0, !dbg !5234
  br i1 %tobool, label %if.then, label %if.end13, !dbg !5236

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %mask, align 4, !dbg !5237
  %and = and i32 %3, 255, !dbg !5240
  %tobool1 = icmp ne i32 %and, 0, !dbg !5240
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !5241

if.then2:                                         ; preds = %if.then
  %4 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5242
  %state = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %4, i32 0, i32 29, !dbg !5243
  %5 = load i32, i32* %state, align 4, !dbg !5243
  %and3 = and i32 %5, 255, !dbg !5244
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5245
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 18, !dbg !5246
  %7 = load i64, i64* %iobase, align 8, !dbg !5246
  %add = add i64 %7, 80, !dbg !5247
  %conv = trunc i64 %add to i32, !dbg !5245
  call void @outl(i32 %and3, i32 %conv) #4, !dbg !5248
  br label %if.end, !dbg !5248

if.end:                                           ; preds = %if.then2, %if.then
  %8 = load i32, i32* %mask, align 4, !dbg !5249
  %and4 = and i32 %8, 16711680, !dbg !5251
  %tobool5 = icmp ne i32 %and4, 0, !dbg !5251
  br i1 %tobool5, label %if.then6, label %if.end12, !dbg !5252

if.then6:                                         ; preds = %if.end
  %9 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5253
  %state7 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %9, i32 0, i32 29, !dbg !5254
  %10 = load i32, i32* %state7, align 4, !dbg !5254
  %shr = lshr i32 %10, 16, !dbg !5255
  %and8 = and i32 %shr, 255, !dbg !5256
  %11 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5257
  %iobase9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 18, !dbg !5258
  %12 = load i64, i64* %iobase9, align 8, !dbg !5258
  %add10 = add i64 %12, 112, !dbg !5259
  %conv11 = trunc i64 %add10 to i32, !dbg !5257
  call void @outl(i32 %and8, i32 %conv11) #4, !dbg !5260
  br label %if.end12, !dbg !5260

if.end12:                                         ; preds = %if.then6, %if.end
  br label %if.end13, !dbg !5261

if.end13:                                         ; preds = %if.end12, %entry
  %13 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5262
  %iobase14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 18, !dbg !5263
  %14 = load i64, i64* %iobase14, align 8, !dbg !5263
  %add15 = add i64 %14, 80, !dbg !5264
  %conv16 = trunc i64 %add15 to i32, !dbg !5262
  %call17 = call i32 @inl(i32 %conv16) #4, !dbg !5265
  store i32 %call17, i32* %val, align 4, !dbg !5266
  %15 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5267
  %iobase18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 18, !dbg !5268
  %16 = load i64, i64* %iobase18, align 8, !dbg !5268
  %add19 = add i64 %16, 64, !dbg !5269
  %conv20 = trunc i64 %add19 to i32, !dbg !5267
  %call21 = call i32 @inl(i32 %conv20) #4, !dbg !5270
  %shl = shl i32 %call21, 8, !dbg !5271
  %17 = load i32, i32* %val, align 4, !dbg !5272
  %or = or i32 %17, %shl, !dbg !5272
  store i32 %or, i32* %val, align 4, !dbg !5272
  %18 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5273
  %io_bits = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %18, i32 0, i32 12, !dbg !5275
  %19 = load i32, i32* %io_bits, align 4, !dbg !5275
  %and22 = and i32 %19, 16711680, !dbg !5276
  %tobool23 = icmp ne i32 %and22, 0, !dbg !5276
  br i1 %tobool23, label %if.then24, label %if.else, !dbg !5277

if.then24:                                        ; preds = %if.end13
  %20 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5278
  %iobase25 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 18, !dbg !5279
  %21 = load i64, i64* %iobase25, align 8, !dbg !5279
  %add26 = add i64 %21, 112, !dbg !5280
  %conv27 = trunc i64 %add26 to i32, !dbg !5278
  %call28 = call i32 @inl(i32 %conv27) #4, !dbg !5281
  %shl29 = shl i32 %call28, 16, !dbg !5282
  %22 = load i32, i32* %val, align 4, !dbg !5283
  %or30 = or i32 %22, %shl29, !dbg !5283
  store i32 %or30, i32* %val, align 4, !dbg !5283
  br label %if.end37, !dbg !5284

if.else:                                          ; preds = %if.end13
  %23 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5285
  %iobase31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %23, i32 0, i32 18, !dbg !5286
  %24 = load i64, i64* %iobase31, align 8, !dbg !5286
  %add32 = add i64 %24, 96, !dbg !5287
  %conv33 = trunc i64 %add32 to i32, !dbg !5285
  %call34 = call i32 @inl(i32 %conv33) #4, !dbg !5288
  %shl35 = shl i32 %call34, 16, !dbg !5289
  %25 = load i32, i32* %val, align 4, !dbg !5290
  %or36 = or i32 %25, %shl35, !dbg !5290
  store i32 %or36, i32* %val, align 4, !dbg !5290
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then24
  %26 = load i32, i32* %val, align 4, !dbg !5291
  %27 = load i32*, i32** %data.addr, align 8, !dbg !5292
  %arrayidx = getelementptr i32, i32* %27, i64 1, !dbg !5292
  store i32 %26, i32* %arrayidx, align 4, !dbg !5293
  %28 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !5294
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %28, i32 0, i32 1, !dbg !5295
  %29 = load i32, i32* %n, align 4, !dbg !5295
  ret i32 %29, !dbg !5296
}

; Function Attrs: noredzone
declare dso_local i32 @request_threaded_irq(i32, i32 (i32, i8*)*, i32 (i32, i8*)*, i64, i8*, i8*) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i8*, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci3xxx_ai_setup(%struct.comedi_device* %dev, i32 %chanspec) #2 !dbg !5297 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %chanspec.addr = alloca i32, align 4
  %chan = alloca i32, align 4
  %range = alloca i32, align 4
  %aref = alloca i32, align 4
  %delay_mode = alloca i32, align 4
  %val = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5300, metadata !DIExpression()), !dbg !5301
  store i32 %chanspec, i32* %chanspec.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chanspec.addr, metadata !5302, metadata !DIExpression()), !dbg !5303
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !5304, metadata !DIExpression()), !dbg !5305
  %0 = load i32, i32* %chanspec.addr, align 4, !dbg !5306
  %and = and i32 %0, 65535, !dbg !5306
  store i32 %and, i32* %chan, align 4, !dbg !5305
  call void @llvm.dbg.declare(metadata i32* %range, metadata !5307, metadata !DIExpression()), !dbg !5308
  %1 = load i32, i32* %chanspec.addr, align 4, !dbg !5309
  %shr = lshr i32 %1, 16, !dbg !5309
  %and1 = and i32 %shr, 255, !dbg !5309
  store i32 %and1, i32* %range, align 4, !dbg !5308
  call void @llvm.dbg.declare(metadata i32* %aref, metadata !5310, metadata !DIExpression()), !dbg !5311
  %2 = load i32, i32* %chanspec.addr, align 4, !dbg !5312
  %shr2 = lshr i32 %2, 24, !dbg !5312
  %and3 = and i32 %shr2, 3, !dbg !5312
  store i32 %and3, i32* %aref, align 4, !dbg !5311
  call void @llvm.dbg.declare(metadata i32* %delay_mode, metadata !5313, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.declare(metadata i32* %val, metadata !5315, metadata !DIExpression()), !dbg !5316
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5317
  %call = call i32 @apci3xxx_ai_started(%struct.comedi_device* %3) #4, !dbg !5319
  %tobool = icmp ne i32 %call, 0, !dbg !5319
  br i1 %tobool, label %if.then, label %if.end, !dbg !5320

if.then:                                          ; preds = %entry
  store i32 -16, i32* %retval, align 4, !dbg !5321
  br label %return, !dbg !5321

if.end:                                           ; preds = %entry
  %4 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5322
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 17, !dbg !5323
  %5 = load i8*, i8** %mmio, align 8, !dbg !5323
  %add.ptr = getelementptr i8, i8* %5, i64 12, !dbg !5324
  call void @writel(i32 65536, i8* %add.ptr) #4, !dbg !5325
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5326
  %mmio4 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 17, !dbg !5327
  %7 = load i8*, i8** %mmio4, align 8, !dbg !5327
  %add.ptr5 = getelementptr i8, i8* %7, i64 4, !dbg !5328
  %call6 = call i32 @readl(i8* %add.ptr5) #4, !dbg !5329
  store i32 %call6, i32* %delay_mode, align 4, !dbg !5330
  %8 = load i32, i32* %delay_mode, align 4, !dbg !5331
  %and7 = and i32 %8, -272, !dbg !5331
  store i32 %and7, i32* %delay_mode, align 4, !dbg !5331
  %9 = load i32, i32* %delay_mode, align 4, !dbg !5332
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5333
  %mmio8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 17, !dbg !5334
  %11 = load i8*, i8** %mmio8, align 8, !dbg !5334
  %add.ptr9 = getelementptr i8, i8* %11, i64 4, !dbg !5335
  call void @writel(i32 %9, i8* %add.ptr9) #4, !dbg !5336
  %12 = load i32, i32* %range, align 4, !dbg !5337
  %and10 = and i32 %12, 3, !dbg !5338
  %13 = load i32, i32* %range, align 4, !dbg !5339
  %shr11 = lshr i32 %13, 2, !dbg !5340
  %shl = shl i32 %shr11, 6, !dbg !5341
  %or = or i32 %and10, %shl, !dbg !5342
  %14 = load i32, i32* %aref, align 4, !dbg !5343
  %cmp = icmp eq i32 %14, 2, !dbg !5344
  %conv = zext i1 %cmp to i32, !dbg !5344
  %shl12 = shl i32 %conv, 7, !dbg !5345
  %or13 = or i32 %or, %shl12, !dbg !5346
  store i32 %or13, i32* %val, align 4, !dbg !5347
  %15 = load i32, i32* %val, align 4, !dbg !5348
  %16 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5349
  %mmio14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 17, !dbg !5350
  %17 = load i8*, i8** %mmio14, align 8, !dbg !5350
  %add.ptr15 = getelementptr i8, i8* %17, i64 0, !dbg !5351
  call void @writel(i32 %15, i8* %add.ptr15) #4, !dbg !5352
  %18 = load i32, i32* %delay_mode, align 4, !dbg !5353
  %or16 = or i32 %18, 256, !dbg !5354
  %19 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5355
  %mmio17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 17, !dbg !5356
  %20 = load i8*, i8** %mmio17, align 8, !dbg !5356
  %add.ptr18 = getelementptr i8, i8* %20, i64 4, !dbg !5357
  call void @writel(i32 %or16, i8* %add.ptr18) #4, !dbg !5358
  %21 = load i32, i32* %chan, align 4, !dbg !5359
  %22 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5360
  %mmio19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %22, i32 0, i32 17, !dbg !5361
  %23 = load i8*, i8** %mmio19, align 8, !dbg !5361
  %add.ptr20 = getelementptr i8, i8* %23, i64 0, !dbg !5362
  call void @writel(i32 %21, i8* %add.ptr20) #4, !dbg !5363
  %24 = load i32, i32* %delay_mode, align 4, !dbg !5364
  %25 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5365
  %mmio21 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 17, !dbg !5366
  %26 = load i8*, i8** %mmio21, align 8, !dbg !5366
  %add.ptr22 = getelementptr i8, i8* %26, i64 4, !dbg !5367
  call void @writel(i32 %24, i8* %add.ptr22) #4, !dbg !5368
  %27 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5369
  %mmio23 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %27, i32 0, i32 17, !dbg !5370
  %28 = load i8*, i8** %mmio23, align 8, !dbg !5370
  %add.ptr24 = getelementptr i8, i8* %28, i64 48, !dbg !5371
  call void @writel(i32 1, i8* %add.ptr24) #4, !dbg !5372
  store i32 0, i32* %retval, align 4, !dbg !5373
  br label %return, !dbg !5373

return:                                           ; preds = %if.end, %if.then
  %29 = load i32, i32* %retval, align 4, !dbg !5374
  ret i32 %29, !dbg !5374
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_timeout(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i64)*, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci3xxx_ai_eoc(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i64 %context) #2 !dbg !5375 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %context.addr = alloca i64, align 8
  %status = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5378, metadata !DIExpression()), !dbg !5379
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5380, metadata !DIExpression()), !dbg !5381
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5382, metadata !DIExpression()), !dbg !5383
  store i64 %context, i64* %context.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %context.addr, metadata !5384, metadata !DIExpression()), !dbg !5385
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5386, metadata !DIExpression()), !dbg !5387
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5388
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 17, !dbg !5389
  %1 = load i8*, i8** %mmio, align 8, !dbg !5389
  %add.ptr = getelementptr i8, i8* %1, i64 20, !dbg !5390
  %call = call i32 @readl(i8* %add.ptr) #4, !dbg !5391
  store i32 %call, i32* %status, align 4, !dbg !5392
  %2 = load i32, i32* %status, align 4, !dbg !5393
  %and = and i32 %2, 1, !dbg !5395
  %tobool = icmp ne i32 %and, 0, !dbg !5395
  br i1 %tobool, label %if.then, label %if.end, !dbg !5396

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5397
  br label %return, !dbg !5397

if.end:                                           ; preds = %entry
  store i32 -16, i32* %retval, align 4, !dbg !5398
  br label %return, !dbg !5398

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !5399
  ret i32 %3, !dbg !5399
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci3xxx_ai_started(%struct.comedi_device* %dev) #2 !dbg !5400 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5401, metadata !DIExpression()), !dbg !5402
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5403
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 17, !dbg !5405
  %1 = load i8*, i8** %mmio, align 8, !dbg !5405
  %add.ptr = getelementptr i8, i8* %1, i64 8, !dbg !5406
  %call = call i32 @readl(i8* %add.ptr) #4, !dbg !5407
  %and = and i32 %call, 524288, !dbg !5408
  %cmp = icmp eq i32 %and, 524288, !dbg !5409
  br i1 %cmp, label %if.then, label %if.end, !dbg !5410

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !5411
  br label %return, !dbg !5411

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5412
  br label %return, !dbg !5412

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !5413
  ret i32 %2, !dbg !5413
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_src(i32* %src, i32 %flags) #2 !dbg !5414 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i32*, align 8
  %flags.addr = alloca i32, align 4
  %orig_src = alloca i32, align 4
  store i32* %src, i32** %src.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %src.addr, metadata !5417, metadata !DIExpression()), !dbg !5418
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5419, metadata !DIExpression()), !dbg !5420
  call void @llvm.dbg.declare(metadata i32* %orig_src, metadata !5421, metadata !DIExpression()), !dbg !5422
  %0 = load i32*, i32** %src.addr, align 8, !dbg !5423
  %1 = load i32, i32* %0, align 4, !dbg !5424
  store i32 %1, i32* %orig_src, align 4, !dbg !5422
  %2 = load i32, i32* %orig_src, align 4, !dbg !5425
  %3 = load i32, i32* %flags.addr, align 4, !dbg !5426
  %and = and i32 %2, %3, !dbg !5427
  %4 = load i32*, i32** %src.addr, align 8, !dbg !5428
  store i32 %and, i32* %4, align 4, !dbg !5429
  %5 = load i32*, i32** %src.addr, align 8, !dbg !5430
  %6 = load i32, i32* %5, align 4, !dbg !5432
  %cmp = icmp eq i32 %6, 0, !dbg !5433
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5434

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32*, i32** %src.addr, align 8, !dbg !5435
  %8 = load i32, i32* %7, align 4, !dbg !5436
  %9 = load i32, i32* %orig_src, align 4, !dbg !5437
  %cmp1 = icmp ne i32 %8, %9, !dbg !5438
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5439

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !5440
  br label %return, !dbg !5440

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %retval, align 4, !dbg !5441
  br label %return, !dbg !5441

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !5442
  ret i32 %10, !dbg !5442
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_is_unique(i32 %src) #2 !dbg !5443 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i32, align 4
  store i32 %src, i32* %src.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %src.addr, metadata !5446, metadata !DIExpression()), !dbg !5447
  %0 = load i32, i32* %src.addr, align 4, !dbg !5448
  %1 = load i32, i32* %src.addr, align 4, !dbg !5450
  %sub = sub i32 %1, 1, !dbg !5451
  %and = and i32 %0, %sub, !dbg !5452
  %cmp = icmp ne i32 %and, 0, !dbg !5453
  br i1 %cmp, label %if.then, label %if.end, !dbg !5454

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5455
  br label %return, !dbg !5455

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5456
  br label %return, !dbg !5456

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !5457
  ret i32 %2, !dbg !5457
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_arg_is(i32* %arg, i32 %val) #2 !dbg !5458 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i32*, align 8
  %val.addr = alloca i32, align 4
  store i32* %arg, i32** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %arg.addr, metadata !5459, metadata !DIExpression()), !dbg !5460
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5461, metadata !DIExpression()), !dbg !5462
  %0 = load i32*, i32** %arg.addr, align 8, !dbg !5463
  %1 = load i32, i32* %0, align 4, !dbg !5465
  %2 = load i32, i32* %val.addr, align 4, !dbg !5466
  %cmp = icmp ne i32 %1, %2, !dbg !5467
  br i1 %cmp, label %if.then, label %if.end, !dbg !5468

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %val.addr, align 4, !dbg !5469
  %4 = load i32*, i32** %arg.addr, align 8, !dbg !5471
  store i32 %3, i32* %4, align 4, !dbg !5472
  store i32 -22, i32* %retval, align 4, !dbg !5473
  br label %return, !dbg !5473

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5474
  br label %return, !dbg !5474

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !5475
  ret i32 %5, !dbg !5475
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_arg_min(i32* %arg, i32 %val) #2 !dbg !5476 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i32*, align 8
  %val.addr = alloca i32, align 4
  store i32* %arg, i32** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %arg.addr, metadata !5477, metadata !DIExpression()), !dbg !5478
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5479, metadata !DIExpression()), !dbg !5480
  %0 = load i32*, i32** %arg.addr, align 8, !dbg !5481
  %1 = load i32, i32* %0, align 4, !dbg !5483
  %2 = load i32, i32* %val.addr, align 4, !dbg !5484
  %cmp = icmp ult i32 %1, %2, !dbg !5485
  br i1 %cmp, label %if.then, label %if.end, !dbg !5486

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %val.addr, align 4, !dbg !5487
  %4 = load i32*, i32** %arg.addr, align 8, !dbg !5489
  store i32 %3, i32* %4, align 4, !dbg !5490
  store i32 -22, i32* %retval, align 4, !dbg !5491
  br label %return, !dbg !5491

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5492
  br label %return, !dbg !5492

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !5493
  ret i32 %5, !dbg !5493
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci3xxx_ai_ns_to_timer(%struct.comedi_device* %dev, i32* %ns, i32 %flags) #2 !dbg !5494 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %ns.addr = alloca i32*, align 8
  %flags.addr = alloca i32, align 4
  %board = alloca %struct.apci3xxx_boardinfo*, align 8
  %devpriv = alloca %struct.apci3xxx_private*, align 8
  %base = alloca i32, align 4
  %timer = alloca i32, align 4
  %time_base = alloca i32, align 4
  %__x = alloca i32, align 4
  %__d = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5497, metadata !DIExpression()), !dbg !5498
  store i32* %ns, i32** %ns.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ns.addr, metadata !5499, metadata !DIExpression()), !dbg !5500
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5501, metadata !DIExpression()), !dbg !5502
  call void @llvm.dbg.declare(metadata %struct.apci3xxx_boardinfo** %board, metadata !5503, metadata !DIExpression()), !dbg !5504
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5505
  %board_ptr = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 9, !dbg !5506
  %1 = load i8*, i8** %board_ptr, align 8, !dbg !5506
  %2 = bitcast i8* %1 to %struct.apci3xxx_boardinfo*, !dbg !5505
  store %struct.apci3xxx_boardinfo* %2, %struct.apci3xxx_boardinfo** %board, align 8, !dbg !5504
  call void @llvm.dbg.declare(metadata %struct.apci3xxx_private** %devpriv, metadata !5507, metadata !DIExpression()), !dbg !5508
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5509
  %private = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %3, i32 0, i32 3, !dbg !5510
  %4 = load i8*, i8** %private, align 8, !dbg !5510
  %5 = bitcast i8* %4 to %struct.apci3xxx_private*, !dbg !5509
  store %struct.apci3xxx_private* %5, %struct.apci3xxx_private** %devpriv, align 8, !dbg !5508
  call void @llvm.dbg.declare(metadata i32* %base, metadata !5511, metadata !DIExpression()), !dbg !5512
  call void @llvm.dbg.declare(metadata i32* %timer, metadata !5513, metadata !DIExpression()), !dbg !5514
  call void @llvm.dbg.declare(metadata i32* %time_base, metadata !5515, metadata !DIExpression()), !dbg !5516
  store i32 0, i32* %time_base, align 4, !dbg !5517
  br label %for.cond, !dbg !5519

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %time_base, align 4, !dbg !5520
  %cmp = icmp slt i32 %6, 3, !dbg !5522
  br i1 %cmp, label %for.body, label %for.end, !dbg !5523

for.body:                                         ; preds = %for.cond
  %7 = load %struct.apci3xxx_boardinfo*, %struct.apci3xxx_boardinfo** %board, align 8, !dbg !5524
  %ai_conv_units = getelementptr inbounds %struct.apci3xxx_boardinfo, %struct.apci3xxx_boardinfo* %7, i32 0, i32 4, !dbg !5527
  %8 = load i8, i8* %ai_conv_units, align 4, !dbg !5527
  %conv = zext i8 %8 to i32, !dbg !5524
  %9 = load i32, i32* %time_base, align 4, !dbg !5528
  %shl = shl i32 1, %9, !dbg !5529
  %and = and i32 %conv, %shl, !dbg !5530
  %tobool = icmp ne i32 %and, 0, !dbg !5530
  br i1 %tobool, label %if.end, label %if.then, !dbg !5531

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !5532

if.end:                                           ; preds = %for.body
  %10 = load i32, i32* %time_base, align 4, !dbg !5533
  switch i32 %10, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
  ], !dbg !5534

sw.bb:                                            ; preds = %if.end
  store i32 1, i32* %base, align 4, !dbg !5535
  br label %sw.epilog, !dbg !5537

sw.bb1:                                           ; preds = %if.end
  store i32 1000, i32* %base, align 4, !dbg !5538
  br label %sw.epilog, !dbg !5539

sw.bb2:                                           ; preds = %if.end
  store i32 1000000, i32* %base, align 4, !dbg !5540
  br label %sw.epilog, !dbg !5541

sw.epilog:                                        ; preds = %if.end, %sw.bb2, %sw.bb1, %sw.bb
  %11 = load i32, i32* %flags.addr, align 4, !dbg !5542
  %and3 = and i32 %11, 196608, !dbg !5543
  switch i32 %and3, label %sw.default [
    i32 0, label %sw.bb4
    i32 65536, label %sw.bb6
    i32 131072, label %sw.bb8
  ], !dbg !5544

sw.bb4:                                           ; preds = %sw.epilog
  br label %sw.default, !dbg !5545

sw.default:                                       ; preds = %sw.epilog, %sw.bb4
  call void @llvm.dbg.declare(metadata i32* %__x, metadata !5546, metadata !DIExpression()), !dbg !5549
  %12 = load i32*, i32** %ns.addr, align 8, !dbg !5549
  %13 = load i32, i32* %12, align 4, !dbg !5549
  store i32 %13, i32* %__x, align 4, !dbg !5549
  call void @llvm.dbg.declare(metadata i32* %__d, metadata !5550, metadata !DIExpression()), !dbg !5549
  %14 = load i32, i32* %base, align 4, !dbg !5549
  store i32 %14, i32* %__d, align 4, !dbg !5549
  %15 = load i32, i32* %__x, align 4, !dbg !5549
  %16 = load i32, i32* %__d, align 4, !dbg !5549
  %div = udiv i32 %16, 2, !dbg !5549
  %add = add i32 %15, %div, !dbg !5549
  %17 = load i32, i32* %__d, align 4, !dbg !5549
  %div5 = udiv i32 %add, %17, !dbg !5549
  store i32 %div5, i32* %tmp, align 4, !dbg !5549
  %18 = load i32, i32* %tmp, align 4, !dbg !5549
  store i32 %18, i32* %timer, align 4, !dbg !5551
  br label %sw.epilog11, !dbg !5552

sw.bb6:                                           ; preds = %sw.epilog
  %19 = load i32*, i32** %ns.addr, align 8, !dbg !5553
  %20 = load i32, i32* %19, align 4, !dbg !5554
  %21 = load i32, i32* %base, align 4, !dbg !5555
  %div7 = udiv i32 %20, %21, !dbg !5556
  store i32 %div7, i32* %timer, align 4, !dbg !5557
  br label %sw.epilog11, !dbg !5558

sw.bb8:                                           ; preds = %sw.epilog
  %22 = load i32*, i32** %ns.addr, align 8, !dbg !5559
  %23 = load i32, i32* %22, align 4, !dbg !5559
  %24 = load i32, i32* %base, align 4, !dbg !5559
  %add9 = add i32 %23, %24, !dbg !5559
  %sub = sub i32 %add9, 1, !dbg !5559
  %25 = load i32, i32* %base, align 4, !dbg !5559
  %div10 = udiv i32 %sub, %25, !dbg !5559
  store i32 %div10, i32* %timer, align 4, !dbg !5560
  br label %sw.epilog11, !dbg !5561

sw.epilog11:                                      ; preds = %sw.bb8, %sw.bb6, %sw.default
  %26 = load i32, i32* %timer, align 4, !dbg !5562
  %cmp12 = icmp ult i32 %26, 65536, !dbg !5564
  br i1 %cmp12, label %if.then14, label %if.end16, !dbg !5565

if.then14:                                        ; preds = %sw.epilog11
  %27 = load i32, i32* %time_base, align 4, !dbg !5566
  %conv15 = trunc i32 %27 to i8, !dbg !5566
  %28 = load %struct.apci3xxx_private*, %struct.apci3xxx_private** %devpriv, align 8, !dbg !5568
  %ai_time_base = getelementptr inbounds %struct.apci3xxx_private, %struct.apci3xxx_private* %28, i32 0, i32 1, !dbg !5569
  store i8 %conv15, i8* %ai_time_base, align 4, !dbg !5570
  %29 = load i32, i32* %timer, align 4, !dbg !5571
  %30 = load %struct.apci3xxx_private*, %struct.apci3xxx_private** %devpriv, align 8, !dbg !5572
  %ai_timer = getelementptr inbounds %struct.apci3xxx_private, %struct.apci3xxx_private* %30, i32 0, i32 0, !dbg !5573
  store i32 %29, i32* %ai_timer, align 4, !dbg !5574
  %31 = load i32, i32* %timer, align 4, !dbg !5575
  %32 = load i32, i32* %time_base, align 4, !dbg !5576
  %mul = mul i32 %31, %32, !dbg !5577
  %33 = load i32*, i32** %ns.addr, align 8, !dbg !5578
  store i32 %mul, i32* %33, align 4, !dbg !5579
  store i32 0, i32* %retval, align 4, !dbg !5580
  br label %return, !dbg !5580

if.end16:                                         ; preds = %sw.epilog11
  br label %for.inc, !dbg !5581

for.inc:                                          ; preds = %if.end16, %if.then
  %34 = load i32, i32* %time_base, align 4, !dbg !5582
  %inc = add i32 %34, 1, !dbg !5582
  store i32 %inc, i32* %time_base, align 4, !dbg !5582
  br label %for.cond, !dbg !5583, !llvm.loop !5584

for.end:                                          ; preds = %for.cond
  store i32 -22, i32* %retval, align 4, !dbg !5586
  br label %return, !dbg !5586

return:                                           ; preds = %for.end, %if.then14
  %35 = load i32, i32* %retval, align 4, !dbg !5587
  ret i32 %35, !dbg !5587
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci3xxx_ao_eoc(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i64 %context) #2 !dbg !5588 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %context.addr = alloca i64, align 8
  %status = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5589, metadata !DIExpression()), !dbg !5590
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5591, metadata !DIExpression()), !dbg !5592
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !5593, metadata !DIExpression()), !dbg !5594
  store i64 %context, i64* %context.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %context.addr, metadata !5595, metadata !DIExpression()), !dbg !5596
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5597, metadata !DIExpression()), !dbg !5598
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5599
  %mmio = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 17, !dbg !5600
  %1 = load i8*, i8** %mmio, align 8, !dbg !5600
  %add.ptr = getelementptr i8, i8* %1, i64 96, !dbg !5601
  %call = call i32 @readl(i8* %add.ptr) #4, !dbg !5602
  store i32 %call, i32* %status, align 4, !dbg !5603
  %2 = load i32, i32* %status, align 4, !dbg !5604
  %and = and i32 %2, 256, !dbg !5606
  %tobool = icmp ne i32 %and, 0, !dbg !5606
  br i1 %tobool, label %if.then, label %if.end, !dbg !5607

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5608
  br label %return, !dbg !5608

if.end:                                           ; preds = %entry
  store i32 -16, i32* %retval, align 4, !dbg !5609
  br label %return, !dbg !5609

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !5610
  ret i32 %3, !dbg !5610
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @inl(i32 %port) #2 !dbg !5611 {
entry:
  %port.addr = alloca i32, align 4
  %value = alloca i32, align 4
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5614, metadata !DIExpression()), !dbg !5615
  call void @llvm.dbg.declare(metadata i32* %value, metadata !5616, metadata !DIExpression()), !dbg !5615
  %0 = load i32, i32* %port.addr, align 4, !dbg !5615
  %1 = call i32 asm sideeffect "inl ${1:w}, $0", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #5, !dbg !5615, !srcloc !5617
  store i32 %1, i32* %value, align 4, !dbg !5615
  %2 = load i32, i32* %value, align 4, !dbg !5615
  ret i32 %2, !dbg !5615
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_dio_update_state(%struct.comedi_subdevice*, i32*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outl(i32 %value, i32 %port) #2 !dbg !5618 {
entry:
  %value.addr = alloca i32, align 4
  %port.addr = alloca i32, align 4
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !5621, metadata !DIExpression()), !dbg !5622
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5623, metadata !DIExpression()), !dbg !5622
  %0 = load i32, i32* %value.addr, align 4, !dbg !5622
  %1 = load i32, i32* %port.addr, align 4, !dbg !5622
  call void asm sideeffect "outl $0, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 %1) #5, !dbg !5622, !srcloc !5624
  ret void, !dbg !5622
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_dio_insn_config(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci3xxx_pci_probe(%struct.pci_dev* %dev, %struct.pci_device_id* %id) #2 !dbg !5625 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %id.addr = alloca %struct.pci_device_id*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5626, metadata !DIExpression()), !dbg !5627
  store %struct.pci_device_id* %id, %struct.pci_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_device_id** %id.addr, metadata !5628, metadata !DIExpression()), !dbg !5629
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5630
  %1 = load %struct.pci_device_id*, %struct.pci_device_id** %id.addr, align 8, !dbg !5631
  %driver_data = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %1, i32 0, i32 6, !dbg !5632
  %2 = load i64, i64* %driver_data, align 8, !dbg !5632
  %call = call i32 @comedi_pci_auto_config(%struct.pci_dev* %0, %struct.comedi_driver* @apci3xxx_driver, i64 %2) #4, !dbg !5633
  ret i32 %call, !dbg !5634
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
!llvm.module.flags = !{!4338, !4339, !4340, !4341}
!llvm.ident = !{!4342}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_apci3xxx_driver_init234", scope: !2, file: !3, line: 957, type: !233, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !174, globals: !178, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/staging/comedi/drivers/addi_apci_3xxx.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !100, !116, !122, !133}
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
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "configuration_ids", file: !101, line: 308, baseType: !7, size: 32, elements: !134)
!134 = !{!135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173}
!135 = !DIEnumerator(name: "INSN_CONFIG_DIO_INPUT", value: 0, isUnsigned: true)
!136 = !DIEnumerator(name: "INSN_CONFIG_DIO_OUTPUT", value: 1, isUnsigned: true)
!137 = !DIEnumerator(name: "INSN_CONFIG_DIO_OPENDRAIN", value: 2, isUnsigned: true)
!138 = !DIEnumerator(name: "INSN_CONFIG_ANALOG_TRIG", value: 16, isUnsigned: true)
!139 = !DIEnumerator(name: "INSN_CONFIG_ALT_SOURCE", value: 20, isUnsigned: true)
!140 = !DIEnumerator(name: "INSN_CONFIG_DIGITAL_TRIG", value: 21, isUnsigned: true)
!141 = !DIEnumerator(name: "INSN_CONFIG_BLOCK_SIZE", value: 22, isUnsigned: true)
!142 = !DIEnumerator(name: "INSN_CONFIG_TIMER_1", value: 23, isUnsigned: true)
!143 = !DIEnumerator(name: "INSN_CONFIG_FILTER", value: 24, isUnsigned: true)
!144 = !DIEnumerator(name: "INSN_CONFIG_CHANGE_NOTIFY", value: 25, isUnsigned: true)
!145 = !DIEnumerator(name: "INSN_CONFIG_SERIAL_CLOCK", value: 26, isUnsigned: true)
!146 = !DIEnumerator(name: "INSN_CONFIG_BIDIRECTIONAL_DATA", value: 27, isUnsigned: true)
!147 = !DIEnumerator(name: "INSN_CONFIG_DIO_QUERY", value: 28, isUnsigned: true)
!148 = !DIEnumerator(name: "INSN_CONFIG_PWM_OUTPUT", value: 29, isUnsigned: true)
!149 = !DIEnumerator(name: "INSN_CONFIG_GET_PWM_OUTPUT", value: 30, isUnsigned: true)
!150 = !DIEnumerator(name: "INSN_CONFIG_ARM", value: 31, isUnsigned: true)
!151 = !DIEnumerator(name: "INSN_CONFIG_DISARM", value: 32, isUnsigned: true)
!152 = !DIEnumerator(name: "INSN_CONFIG_GET_COUNTER_STATUS", value: 33, isUnsigned: true)
!153 = !DIEnumerator(name: "INSN_CONFIG_RESET", value: 34, isUnsigned: true)
!154 = !DIEnumerator(name: "INSN_CONFIG_GPCT_SINGLE_PULSE_GENERATOR", value: 1001, isUnsigned: true)
!155 = !DIEnumerator(name: "INSN_CONFIG_GPCT_PULSE_TRAIN_GENERATOR", value: 1002, isUnsigned: true)
!156 = !DIEnumerator(name: "INSN_CONFIG_GPCT_QUADRATURE_ENCODER", value: 1003, isUnsigned: true)
!157 = !DIEnumerator(name: "INSN_CONFIG_SET_GATE_SRC", value: 2001, isUnsigned: true)
!158 = !DIEnumerator(name: "INSN_CONFIG_GET_GATE_SRC", value: 2002, isUnsigned: true)
!159 = !DIEnumerator(name: "INSN_CONFIG_SET_CLOCK_SRC", value: 2003, isUnsigned: true)
!160 = !DIEnumerator(name: "INSN_CONFIG_GET_CLOCK_SRC", value: 2004, isUnsigned: true)
!161 = !DIEnumerator(name: "INSN_CONFIG_SET_OTHER_SRC", value: 2005, isUnsigned: true)
!162 = !DIEnumerator(name: "INSN_CONFIG_GET_HARDWARE_BUFFER_SIZE", value: 2006, isUnsigned: true)
!163 = !DIEnumerator(name: "INSN_CONFIG_SET_COUNTER_MODE", value: 4097, isUnsigned: true)
!164 = !DIEnumerator(name: "INSN_CONFIG_8254_SET_MODE", value: 4097, isUnsigned: true)
!165 = !DIEnumerator(name: "INSN_CONFIG_8254_READ_STATUS", value: 4098, isUnsigned: true)
!166 = !DIEnumerator(name: "INSN_CONFIG_SET_ROUTING", value: 4099, isUnsigned: true)
!167 = !DIEnumerator(name: "INSN_CONFIG_GET_ROUTING", value: 4109, isUnsigned: true)
!168 = !DIEnumerator(name: "INSN_CONFIG_PWM_SET_PERIOD", value: 5000, isUnsigned: true)
!169 = !DIEnumerator(name: "INSN_CONFIG_PWM_GET_PERIOD", value: 5001, isUnsigned: true)
!170 = !DIEnumerator(name: "INSN_CONFIG_GET_PWM_STATUS", value: 5002, isUnsigned: true)
!171 = !DIEnumerator(name: "INSN_CONFIG_PWM_SET_H_BRIDGE", value: 5003, isUnsigned: true)
!172 = !DIEnumerator(name: "INSN_CONFIG_PWM_GET_H_BRIDGE", value: 5004, isUnsigned: true)
!173 = !DIEnumerator(name: "INSN_CONFIG_GET_CMD_TIMING_CONSTRAINTS", value: 5005, isUnsigned: true)
!174 = !{!175, !177}
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!177 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!178 = !{!0, !179, !186, !193, !198, !203, !208, !4030, !4048, !4050, !4052, !4333}
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(name: "__exitcall_apci3xxx_driver_exit", scope: !2, file: !3, line: 957, type: !181, isLocal: true, isDefinition: true)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !182, line: 117, baseType: !183)
!182 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{null}
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author235", scope: !2, file: !3, line: 959, type: !188, isLocal: true, isDefinition: true, align: 8)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 416, elements: !191)
!189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !190)
!190 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!191 = !{!192}
!192 = !DISubrange(count: 52)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description236", scope: !2, file: !3, line: 960, type: !195, isLocal: true, isDefinition: true, align: 8)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 408, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 51)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file237", scope: !2, file: !3, line: 961, type: !200, isLocal: true, isDefinition: true, align: 8)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 528, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 66)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license238", scope: !2, file: !3, line: 961, type: !205, isLocal: true, isDefinition: true, align: 8)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 216, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 27)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(name: "apci3xxx_driver", scope: !2, file: !3, line: 908, type: !210, isLocal: true, isDefinition: true)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_driver", file: !123, line: 437, size: 576, elements: !211)
!211 = !{!212, !214, !216, !220, !4020, !4021, !4025, !4026, !4029}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !210, file: !123, line: 439, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !210, file: !123, line: 441, baseType: !215, size: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !210, file: !123, line: 442, baseType: !217, size: 64, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !219, line: 76, flags: DIFlagFwdDecl)
!219 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!220 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !210, file: !123, line: 443, baseType: !221, size: 64, offset: 192)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!177, !224, !4013}
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_device", file: !123, line: 541, size: 1920, elements: !226)
!226 = !{!227, !228, !229, !232, !234, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !4001, !4005, !4009}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !225, file: !123, line: 542, baseType: !177, size: 32)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !225, file: !123, line: 543, baseType: !213, size: 64, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "pacer", scope: !225, file: !123, line: 544, baseType: !230, size: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_8254", file: !123, line: 544, flags: DIFlagFwdDecl)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !225, file: !123, line: 545, baseType: !233, size: 64, offset: 192)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !225, file: !123, line: 547, baseType: !235, size: 64, offset: 256)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !237)
!237 = !{!238, !3398, !3399, !3402, !3403, !3454, !3545, !3546, !3547, !3548, !3549, !3558, !3663, !3676, !3679, !3680, !3684, !3686, !3687, !3688, !3692, !3698, !3699, !3702, !3706, !3796, !3797, !3798, !3799, !3800, !3832, !3833, !3834, !3837, !3840, !3841, !3842, !3843}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !236, file: !73, line: 462, baseType: !239, size: 512)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !240, line: 64, size: 512, elements: !241)
!240 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!241 = !{!242, !243, !250, !252, !312, !3249, !3388, !3393, !3394, !3395, !3396, !3397}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !239, file: !240, line: 65, baseType: !215, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !239, file: !240, line: 66, baseType: !244, size: 128, offset: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !245, line: 178, size: 128, elements: !246)
!245 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!246 = !{!247, !249}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !244, file: !245, line: 179, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !244, file: !245, line: 179, baseType: !248, size: 64, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !239, file: !240, line: 67, baseType: !251, size: 64, offset: 192)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !239, file: !240, line: 68, baseType: !253, size: 64, offset: 256)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !240, line: 192, size: 704, elements: !255)
!255 = !{!256, !257, !273, !274}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !254, file: !240, line: 193, baseType: !244, size: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !254, file: !240, line: 194, baseType: !258, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !259, line: 83, baseType: !260)
!259 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !259, line: 71, elements: !261)
!261 = !{!262}
!262 = !DIDerivedType(tag: DW_TAG_member, scope: !260, file: !259, line: 72, baseType: !263)
!263 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !260, file: !259, line: 72, elements: !264)
!264 = !{!265}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !263, file: !259, line: 73, baseType: !266)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !259, line: 20, elements: !267)
!267 = !{!268}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !266, file: !259, line: 21, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !270, line: 25, baseType: !271)
!270 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !270, line: 25, elements: !272)
!272 = !{}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !254, file: !240, line: 195, baseType: !239, size: 512, offset: 128)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !254, file: !240, line: 196, baseType: !275, size: 64, offset: 640)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !277)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !240, line: 156, size: 192, elements: !278)
!278 = !{!279, !284, !289}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !277, file: !240, line: 157, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!177, !253, !251}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !277, file: !240, line: 158, baseType: !285, size: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !286)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{!215, !253, !251}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !277, file: !240, line: 159, baseType: !290, size: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!177, !253, !251, !294}
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !240, line: 148, size: 20736, elements: !296)
!296 = !{!297, !302, !306, !307, !311}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !295, file: !240, line: 149, baseType: !298, size: 192)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 192, elements: !300)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!300 = !{!301}
!301 = !DISubrange(count: 3)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !295, file: !240, line: 150, baseType: !303, size: 4096, offset: 192)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 4096, elements: !304)
!304 = !{!305}
!305 = !DISubrange(count: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !295, file: !240, line: 151, baseType: !177, size: 32, offset: 4288)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !295, file: !240, line: 152, baseType: !308, size: 16384, offset: 4320)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 16384, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 2048)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !295, file: !240, line: 153, baseType: !177, size: 32, offset: 20704)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !239, file: !240, line: 69, baseType: !313, size: 64, offset: 320)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !240, line: 138, size: 448, elements: !315)
!315 = !{!316, !320, !350, !352, !3211, !3239, !3243}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !314, file: !240, line: 139, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !251}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !314, file: !240, line: 140, baseType: !321, size: 64, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !323)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !324, line: 230, size: 128, elements: !325)
!324 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!325 = !{!326, !342}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !323, file: !324, line: 231, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!330, !251, !335, !299}
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !245, line: 60, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !332, line: 73, baseType: !333)
!332 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !332, line: 15, baseType: !334)
!334 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !324, line: 30, size: 128, elements: !337)
!337 = !{!338, !339}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !336, file: !324, line: 31, baseType: !215, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !336, file: !324, line: 32, baseType: !340, size: 16, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !245, line: 19, baseType: !341)
!341 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !323, file: !324, line: 232, baseType: !343, size: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{!330, !251, !335, !215, !346}
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !245, line: 55, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !332, line: 72, baseType: !348)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !332, line: 16, baseType: !349)
!349 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !314, file: !240, line: 141, baseType: !351, size: 64, offset: 128)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !314, file: !240, line: 142, baseType: !353, size: 64, offset: 192)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !356)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !324, line: 84, size: 320, elements: !357)
!357 = !{!358, !359, !363, !3208, !3209}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !356, file: !324, line: 85, baseType: !215, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !356, file: !324, line: 86, baseType: !360, size: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{!340, !251, !335, !177}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !356, file: !324, line: 88, baseType: !364, size: 64, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{!340, !251, !367, !177}
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !324, line: 168, size: 448, elements: !369)
!369 = !{!370, !371, !372, !373, !3203, !3204}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !368, file: !324, line: 169, baseType: !336, size: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !368, file: !324, line: 170, baseType: !346, size: 64, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !368, file: !324, line: 171, baseType: !233, size: 64, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !368, file: !324, line: 172, baseType: !374, size: 64, offset: 256)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DISubroutineType(types: !376)
!376 = !{!330, !377, !251, !367, !299, !556, !346}
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !379)
!379 = !{!380, !398, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3186, !3187, !3196, !3197, !3198, !3199, !3200, !3201, !3202}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !378, file: !44, line: 920, baseType: !381, size: 128)
!381 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !378, file: !44, line: 917, size: 128, elements: !382)
!382 = !{!383, !389}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !381, file: !44, line: 918, baseType: !384, size: 64)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !385, line: 58, size: 64, elements: !386)
!385 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!386 = !{!387}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !384, file: !385, line: 59, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !381, file: !44, line: 919, baseType: !390, size: 128, align: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !245, line: 216, size: 128, align: 64, elements: !391)
!391 = !{!392, !394}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !390, file: !245, line: 217, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !390, file: !245, line: 218, baseType: !395, size: 64, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{null, !393}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !378, file: !44, line: 921, baseType: !399, size: 128, offset: 128)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !400, line: 8, size: 128, elements: !401)
!400 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!401 = !{!402, !406}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !399, file: !400, line: 9, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !405, line: 18, flags: DIFlagFwdDecl)
!405 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!406 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !399, file: !400, line: 10, baseType: !407, size: 64, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !405, line: 89, size: 1536, elements: !409)
!409 = !{!410, !411, !421, !429, !430, !453, !3136, !3138, !3150, !3151, !3152, !3153, !3154, !3160, !3161, !3162}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !408, file: !405, line: 91, baseType: !7, size: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !408, file: !405, line: 92, baseType: !412, size: 32, offset: 32)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !413, line: 277, baseType: !414)
!413 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !413, line: 277, size: 32, elements: !415)
!415 = !{!416}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !414, file: !413, line: 277, baseType: !417, size: 32)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !413, line: 70, baseType: !418)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !413, line: 65, size: 32, elements: !419)
!419 = !{!420}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !418, file: !413, line: 66, baseType: !7, size: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !408, file: !405, line: 93, baseType: !422, size: 128, offset: 64)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !423, line: 38, size: 128, elements: !424)
!423 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!424 = !{!425, !427}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !422, file: !423, line: 39, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !422, file: !423, line: 39, baseType: !428, size: 64, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !408, file: !405, line: 94, baseType: !407, size: 64, offset: 192)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !408, file: !405, line: 95, baseType: !431, size: 128, offset: 256)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !405, line: 47, size: 128, elements: !432)
!432 = !{!433, !449}
!433 = !DIDerivedType(tag: DW_TAG_member, scope: !431, file: !405, line: 48, baseType: !434, size: 64)
!434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !431, file: !405, line: 48, size: 64, elements: !435)
!435 = !{!436, !445}
!436 = !DIDerivedType(tag: DW_TAG_member, scope: !434, file: !405, line: 49, baseType: !437, size: 64)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !434, file: !405, line: 49, size: 64, elements: !438)
!438 = !{!439, !444}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !437, file: !405, line: 50, baseType: !440, size: 32)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !441, line: 21, baseType: !442)
!441 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !443, line: 27, baseType: !7)
!443 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!444 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !437, file: !405, line: 50, baseType: !440, size: 32, offset: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !434, file: !405, line: 52, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !441, line: 23, baseType: !447)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !443, line: 31, baseType: !448)
!448 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !431, file: !405, line: 54, baseType: !450, size: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !452)
!452 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !408, file: !405, line: 96, baseType: !454, size: 64, offset: 384)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !456)
!456 = !{!457, !458, !459, !467, !474, !475, !623, !2847, !2848, !2849, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !3112, !3120, !3121, !3122, !3132, !3133, !3134, !3135}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !455, file: !44, line: 611, baseType: !340, size: 16)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !455, file: !44, line: 612, baseType: !341, size: 16, offset: 16)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !455, file: !44, line: 613, baseType: !460, size: 32, offset: 32)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !461, line: 23, baseType: !462)
!461 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !461, line: 21, size: 32, elements: !463)
!463 = !{!464}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !462, file: !461, line: 22, baseType: !465, size: 32)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !245, line: 32, baseType: !466)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !332, line: 49, baseType: !7)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !455, file: !44, line: 614, baseType: !468, size: 32, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !461, line: 28, baseType: !469)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !461, line: 26, size: 32, elements: !470)
!470 = !{!471}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !469, file: !461, line: 27, baseType: !472, size: 32)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !245, line: 33, baseType: !473)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !332, line: 50, baseType: !7)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !455, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !455, file: !44, line: 622, baseType: !476, size: 64, offset: 128)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !478)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !479)
!479 = !{!480, !484, !497, !501, !507, !511, !517, !521, !525, !529, !533, !534, !540, !544, !570, !599, !603, !609, !614, !618, !619}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !478, file: !44, line: 1865, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!407, !454, !407, !7}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !478, file: !44, line: 1866, baseType: !485, size: 64, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!215, !407, !454, !488}
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !490, line: 10, size: 128, elements: !491)
!490 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!491 = !{!492, !496}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !489, file: !490, line: 11, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{null, !233}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !489, file: !490, line: 12, baseType: !233, size: 64, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !478, file: !44, line: 1867, baseType: !498, size: 64, offset: 128)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!177, !454, !177}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !478, file: !44, line: 1868, baseType: !502, size: 64, offset: 192)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{!505, !454, !177}
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !478, file: !44, line: 1870, baseType: !508, size: 64, offset: 256)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!177, !407, !299, !177}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !478, file: !44, line: 1872, baseType: !512, size: 64, offset: 320)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!177, !454, !407, !340, !515}
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !245, line: 30, baseType: !516)
!516 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !478, file: !44, line: 1873, baseType: !518, size: 64, offset: 384)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!177, !407, !454, !407}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !478, file: !44, line: 1874, baseType: !522, size: 64, offset: 448)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{!177, !454, !407}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !478, file: !44, line: 1875, baseType: !526, size: 64, offset: 512)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DISubroutineType(types: !528)
!528 = !{!177, !454, !407, !215}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !478, file: !44, line: 1876, baseType: !530, size: 64, offset: 576)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DISubroutineType(types: !532)
!532 = !{!177, !454, !407, !340}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !478, file: !44, line: 1877, baseType: !522, size: 64, offset: 640)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !478, file: !44, line: 1878, baseType: !535, size: 64, offset: 704)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!177, !454, !407, !340, !538}
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !245, line: 16, baseType: !539)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !245, line: 13, baseType: !440)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !478, file: !44, line: 1879, baseType: !541, size: 64, offset: 768)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!177, !454, !407, !454, !407, !7}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !478, file: !44, line: 1881, baseType: !545, size: 64, offset: 832)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!177, !407, !548}
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !550)
!550 = !{!551, !552, !553, !554, !555, !559, !567, !568, !569}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !549, file: !44, line: 220, baseType: !7, size: 32)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !549, file: !44, line: 221, baseType: !340, size: 16, offset: 32)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !549, file: !44, line: 222, baseType: !460, size: 32, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !549, file: !44, line: 223, baseType: !468, size: 32, offset: 96)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !549, file: !44, line: 224, baseType: !556, size: 64, offset: 128)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !245, line: 46, baseType: !557)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !332, line: 88, baseType: !558)
!558 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !549, file: !44, line: 225, baseType: !560, size: 128, offset: 192)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !561, line: 13, size: 128, elements: !562)
!561 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!562 = !{!563, !566}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !560, file: !561, line: 14, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !561, line: 8, baseType: !565)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !443, line: 30, baseType: !558)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !560, file: !561, line: 15, baseType: !334, size: 64, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !549, file: !44, line: 226, baseType: !560, size: 128, offset: 320)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !549, file: !44, line: 227, baseType: !560, size: 128, offset: 448)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !549, file: !44, line: 234, baseType: !377, size: 64, offset: 576)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !478, file: !44, line: 1882, baseType: !571, size: 64, offset: 896)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!177, !574, !576, !440, !7}
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !399)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !578, line: 22, size: 1152, elements: !579)
!578 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!579 = !{!580, !581, !582, !583, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !577, file: !578, line: 23, baseType: !440, size: 32)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !577, file: !578, line: 24, baseType: !340, size: 16, offset: 32)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !577, file: !578, line: 25, baseType: !7, size: 32, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !577, file: !578, line: 26, baseType: !584, size: 32, offset: 96)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !245, line: 104, baseType: !440)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !577, file: !578, line: 27, baseType: !446, size: 64, offset: 128)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !577, file: !578, line: 28, baseType: !446, size: 64, offset: 192)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !577, file: !578, line: 37, baseType: !446, size: 64, offset: 256)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !577, file: !578, line: 38, baseType: !538, size: 32, offset: 320)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !577, file: !578, line: 39, baseType: !538, size: 32, offset: 352)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !577, file: !578, line: 40, baseType: !460, size: 32, offset: 384)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !577, file: !578, line: 41, baseType: !468, size: 32, offset: 416)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !577, file: !578, line: 42, baseType: !556, size: 64, offset: 448)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !577, file: !578, line: 43, baseType: !560, size: 128, offset: 512)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !577, file: !578, line: 44, baseType: !560, size: 128, offset: 640)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !577, file: !578, line: 45, baseType: !560, size: 128, offset: 768)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !577, file: !578, line: 46, baseType: !560, size: 128, offset: 896)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !577, file: !578, line: 47, baseType: !446, size: 64, offset: 1024)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !577, file: !578, line: 48, baseType: !446, size: 64, offset: 1088)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !478, file: !44, line: 1883, baseType: !600, size: 64, offset: 960)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{!330, !407, !299, !346}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !478, file: !44, line: 1884, baseType: !604, size: 64, offset: 1024)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{!177, !454, !607, !446, !446}
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !478, file: !44, line: 1886, baseType: !610, size: 64, offset: 1088)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DISubroutineType(types: !612)
!612 = !{!177, !454, !613, !177}
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !478, file: !44, line: 1887, baseType: !615, size: 64, offset: 1152)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!177, !454, !407, !377, !7, !340}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !478, file: !44, line: 1890, baseType: !530, size: 64, offset: 1216)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !478, file: !44, line: 1891, baseType: !620, size: 64, offset: 1280)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!177, !454, !505, !177}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !455, file: !44, line: 623, baseType: !624, size: 64, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !626)
!626 = !{!627, !628, !629, !630, !631, !632, !679, !2454, !2536, !2619, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2635, !2639, !2640, !2643, !2644, !2647, !2648, !2649, !2690, !2717, !2718, !2719, !2720, !2721, !2722, !2725, !2727, !2734, !2735, !2737, !2738, !2739, !2798, !2799, !2814, !2815, !2816, !2817, !2818, !2821, !2822, !2823, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !625, file: !44, line: 1417, baseType: !244, size: 128)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !625, file: !44, line: 1418, baseType: !538, size: 32, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !625, file: !44, line: 1419, baseType: !452, size: 8, offset: 160)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !625, file: !44, line: 1420, baseType: !349, size: 64, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !625, file: !44, line: 1421, baseType: !556, size: 64, offset: 256)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !625, file: !44, line: 1422, baseType: !633, size: 64, offset: 320)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !635)
!635 = !{!636, !637, !638, !645, !649, !653, !657, !658, !659, !669, !672, !673, !674, !676, !677, !678}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !634, file: !44, line: 2229, baseType: !215, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !634, file: !44, line: 2230, baseType: !177, size: 32, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !634, file: !44, line: 2238, baseType: !639, size: 64, offset: 128)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!177, !642}
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !644, line: 28, flags: DIFlagFwdDecl)
!644 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!645 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !634, file: !44, line: 2239, baseType: !646, size: 64, offset: 192)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !648)
!648 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !634, file: !44, line: 2240, baseType: !650, size: 64, offset: 256)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{!407, !633, !177, !215, !233}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !634, file: !44, line: 2242, baseType: !654, size: 64, offset: 320)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{null, !624}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !634, file: !44, line: 2243, baseType: !217, size: 64, offset: 384)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !634, file: !44, line: 2244, baseType: !633, size: 64, offset: 448)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !634, file: !44, line: 2245, baseType: !660, size: 64, offset: 512)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !245, line: 182, size: 64, elements: !661)
!661 = !{!662}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !660, file: !245, line: 183, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !245, line: 186, size: 128, elements: !665)
!665 = !{!666, !667}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !664, file: !245, line: 187, baseType: !663, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !664, file: !245, line: 187, baseType: !668, size: 64, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !634, file: !44, line: 2247, baseType: !670, offset: 576)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !671, line: 187, elements: !272)
!671 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!672 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !634, file: !44, line: 2248, baseType: !670, offset: 576)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !634, file: !44, line: 2249, baseType: !670, offset: 576)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !634, file: !44, line: 2250, baseType: !675, offset: 576)
!675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !670, elements: !300)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !634, file: !44, line: 2252, baseType: !670, offset: 576)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !634, file: !44, line: 2253, baseType: !670, offset: 576)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !634, file: !44, line: 2254, baseType: !670, offset: 576)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !625, file: !44, line: 1423, baseType: !680, size: 64, offset: 384)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !682)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !683)
!683 = !{!684, !688, !692, !693, !697, !703, !707, !708, !709, !713, !717, !718, !719, !720, !726, !731, !732, !739, !740, !741, !742, !2438, !2453}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !682, file: !44, line: 1936, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DISubroutineType(types: !687)
!687 = !{!454, !624}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !682, file: !44, line: 1937, baseType: !689, size: 64, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{null, !454}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !682, file: !44, line: 1938, baseType: !689, size: 64, offset: 128)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !682, file: !44, line: 1940, baseType: !694, size: 64, offset: 192)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{null, !454, !177}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !682, file: !44, line: 1941, baseType: !698, size: 64, offset: 256)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{!177, !454, !701}
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !682, file: !44, line: 1942, baseType: !704, size: 64, offset: 320)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{!177, !454}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !682, file: !44, line: 1943, baseType: !689, size: 64, offset: 384)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !682, file: !44, line: 1944, baseType: !654, size: 64, offset: 448)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !682, file: !44, line: 1945, baseType: !710, size: 64, offset: 512)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{!177, !624, !177}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !682, file: !44, line: 1946, baseType: !714, size: 64, offset: 576)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!177, !624}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !682, file: !44, line: 1947, baseType: !714, size: 64, offset: 640)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !682, file: !44, line: 1948, baseType: !714, size: 64, offset: 704)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !682, file: !44, line: 1949, baseType: !714, size: 64, offset: 768)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !682, file: !44, line: 1950, baseType: !721, size: 64, offset: 832)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{!177, !407, !724}
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !682, file: !44, line: 1951, baseType: !727, size: 64, offset: 896)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{!177, !624, !730, !299}
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !682, file: !44, line: 1952, baseType: !654, size: 64, offset: 960)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !682, file: !44, line: 1954, baseType: !733, size: 64, offset: 1024)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!177, !736, !407}
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !738, line: 539, flags: DIFlagFwdDecl)
!738 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!739 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !682, file: !44, line: 1955, baseType: !733, size: 64, offset: 1088)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !682, file: !44, line: 1956, baseType: !733, size: 64, offset: 1152)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !682, file: !44, line: 1957, baseType: !733, size: 64, offset: 1216)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !682, file: !44, line: 1963, baseType: !743, size: 64, offset: 1280)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!177, !624, !746, !769}
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !748, line: 68, size: 512, align: 128, elements: !749)
!748 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!749 = !{!750, !751, !2430, !2437}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !747, file: !748, line: 69, baseType: !349, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, scope: !747, file: !748, line: 77, baseType: !752, size: 320, offset: 64)
!752 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !747, file: !748, line: 77, size: 320, elements: !753)
!753 = !{!754, !942, !947, !975, !983, !989, !2361, !2429}
!754 = !DIDerivedType(tag: DW_TAG_member, scope: !752, file: !748, line: 78, baseType: !755, size: 320)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !752, file: !748, line: 78, size: 320, elements: !756)
!756 = !{!757, !758, !940, !941}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !755, file: !748, line: 84, baseType: !244, size: 128)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !755, file: !748, line: 86, baseType: !759, size: 64, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !761)
!761 = !{!762, !763, !771, !772, !777, !792, !808, !809, !810, !811, !933, !934, !937, !938, !939}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !760, file: !44, line: 452, baseType: !454, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !760, file: !44, line: 453, baseType: !764, size: 128, offset: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !765, line: 292, size: 128, elements: !766)
!765 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!766 = !{!767, !768, !770}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !764, file: !765, line: 293, baseType: !258)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !764, file: !765, line: 295, baseType: !769, size: 32)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !245, line: 148, baseType: !7)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !764, file: !765, line: 296, baseType: !233, size: 64, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !760, file: !44, line: 454, baseType: !769, size: 32, offset: 192)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !760, file: !44, line: 455, baseType: !773, size: 32, offset: 224)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !245, line: 168, baseType: !774)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !245, line: 166, size: 32, elements: !775)
!775 = !{!776}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !774, file: !245, line: 167, baseType: !177, size: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !760, file: !44, line: 460, baseType: !778, size: 128, offset: 256)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !779, line: 125, size: 128, elements: !780)
!779 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!780 = !{!781, !791}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !778, file: !779, line: 126, baseType: !782, size: 64)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !779, line: 31, size: 64, elements: !783)
!783 = !{!784}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !782, file: !779, line: 32, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !779, line: 24, size: 192, align: 64, elements: !787)
!787 = !{!788, !789, !790}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !786, file: !779, line: 25, baseType: !349, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !786, file: !779, line: 26, baseType: !785, size: 64, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !786, file: !779, line: 27, baseType: !785, size: 64, offset: 128)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !778, file: !779, line: 127, baseType: !785, size: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !760, file: !44, line: 461, baseType: !793, size: 256, offset: 384)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !794, line: 35, size: 256, elements: !795)
!794 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!795 = !{!796, !804, !805, !807}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !793, file: !794, line: 36, baseType: !797, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !798, line: 13, baseType: !799)
!798 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !245, line: 175, baseType: !800)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !245, line: 173, size: 64, elements: !801)
!801 = !{!802}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !800, file: !245, line: 174, baseType: !803, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !441, line: 22, baseType: !565)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !793, file: !794, line: 42, baseType: !797, size: 64, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !793, file: !794, line: 46, baseType: !806, offset: 128)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !259, line: 29, baseType: !266)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !793, file: !794, line: 47, baseType: !244, size: 128, offset: 128)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !760, file: !44, line: 462, baseType: !349, size: 64, offset: 640)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !760, file: !44, line: 463, baseType: !349, size: 64, offset: 704)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !760, file: !44, line: 464, baseType: !349, size: 64, offset: 768)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !760, file: !44, line: 465, baseType: !812, size: 64, offset: 832)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !814)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !815)
!815 = !{!816, !820, !824, !828, !832, !836, !842, !848, !852, !857, !861, !865, !869, !897, !901, !907, !908, !909, !913, !918, !922, !929}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !814, file: !44, line: 368, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DISubroutineType(types: !819)
!819 = !{!177, !746, !701}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !814, file: !44, line: 369, baseType: !821, size: 64, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DISubroutineType(types: !823)
!823 = !{!177, !377, !746}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !814, file: !44, line: 372, baseType: !825, size: 64, offset: 128)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{!177, !759, !701}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !814, file: !44, line: 375, baseType: !829, size: 64, offset: 192)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!177, !746}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !814, file: !44, line: 381, baseType: !833, size: 64, offset: 256)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{!177, !377, !759, !248, !7}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !814, file: !44, line: 383, baseType: !837, size: 64, offset: 320)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{null, !840}
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !814, file: !44, line: 385, baseType: !843, size: 64, offset: 384)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{!177, !377, !759, !556, !7, !7, !846, !847}
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !814, file: !44, line: 388, baseType: !849, size: 64, offset: 448)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{!177, !377, !759, !556, !7, !7, !746, !233}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !814, file: !44, line: 393, baseType: !853, size: 64, offset: 512)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!856, !759, !856}
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !245, line: 125, baseType: !446)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !814, file: !44, line: 394, baseType: !858, size: 64, offset: 576)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DISubroutineType(types: !860)
!860 = !{null, !746, !7, !7}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !814, file: !44, line: 395, baseType: !862, size: 64, offset: 640)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DISubroutineType(types: !864)
!864 = !{!177, !746, !769}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !814, file: !44, line: 396, baseType: !866, size: 64, offset: 704)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{null, !746}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !814, file: !44, line: 397, baseType: !870, size: 64, offset: 768)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{!330, !873, !895}
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !875)
!875 = !{!876, !877, !878, !882, !883, !884, !887, !888}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !874, file: !44, line: 321, baseType: !377, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !874, file: !44, line: 326, baseType: !556, size: 64, offset: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !874, file: !44, line: 327, baseType: !879, size: 64, offset: 128)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DISubroutineType(types: !881)
!881 = !{null, !873, !334, !334}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !874, file: !44, line: 328, baseType: !233, size: 64, offset: 192)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !874, file: !44, line: 329, baseType: !177, size: 32, offset: 256)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !874, file: !44, line: 330, baseType: !885, size: 16, offset: 288)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !441, line: 19, baseType: !886)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !443, line: 24, baseType: !341)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !874, file: !44, line: 331, baseType: !885, size: 16, offset: 304)
!888 = !DIDerivedType(tag: DW_TAG_member, scope: !874, file: !44, line: 332, baseType: !889, size: 64, offset: 320)
!889 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !874, file: !44, line: 332, size: 64, elements: !890)
!890 = !{!891, !892}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !889, file: !44, line: 333, baseType: !7, size: 32)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !889, file: !44, line: 334, baseType: !893, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !814, file: !44, line: 402, baseType: !898, size: 64, offset: 832)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DISubroutineType(types: !900)
!900 = !{!177, !759, !746, !746, !5}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !814, file: !44, line: 404, baseType: !902, size: 64, offset: 896)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DISubroutineType(types: !904)
!904 = !{!515, !746, !905}
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !906, line: 305, baseType: !7)
!906 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!907 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !814, file: !44, line: 405, baseType: !866, size: 64, offset: 960)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !814, file: !44, line: 406, baseType: !829, size: 64, offset: 1024)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !814, file: !44, line: 407, baseType: !910, size: 64, offset: 1088)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DISubroutineType(types: !912)
!912 = !{!177, !746, !349, !349}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !814, file: !44, line: 409, baseType: !914, size: 64, offset: 1152)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DISubroutineType(types: !916)
!916 = !{null, !746, !917, !917}
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !814, file: !44, line: 410, baseType: !919, size: 64, offset: 1216)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DISubroutineType(types: !921)
!921 = !{!177, !759, !746}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !814, file: !44, line: 413, baseType: !923, size: 64, offset: 1280)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{!177, !926, !377, !928}
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !814, file: !44, line: 415, baseType: !930, size: 64, offset: 1344)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DISubroutineType(types: !932)
!932 = !{null, !377}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !760, file: !44, line: 466, baseType: !349, size: 64, offset: 896)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !760, file: !44, line: 467, baseType: !935, size: 32, offset: 960)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !936, line: 8, baseType: !440)
!936 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!937 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !760, file: !44, line: 468, baseType: !258, offset: 992)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !760, file: !44, line: 469, baseType: !244, size: 128, offset: 1024)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !760, file: !44, line: 470, baseType: !233, size: 64, offset: 1152)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !755, file: !748, line: 87, baseType: !349, size: 64, offset: 192)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !755, file: !748, line: 94, baseType: !349, size: 64, offset: 256)
!942 = !DIDerivedType(tag: DW_TAG_member, scope: !752, file: !748, line: 96, baseType: !943, size: 64)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !752, file: !748, line: 96, size: 64, elements: !944)
!944 = !{!945}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !943, file: !748, line: 101, baseType: !946, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !245, line: 143, baseType: !446)
!947 = !DIDerivedType(tag: DW_TAG_member, scope: !752, file: !748, line: 103, baseType: !948, size: 320)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !752, file: !748, line: 103, size: 320, elements: !949)
!949 = !{!950, !960, !963, !964}
!950 = !DIDerivedType(tag: DW_TAG_member, scope: !948, file: !748, line: 104, baseType: !951, size: 128)
!951 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !948, file: !748, line: 104, size: 128, elements: !952)
!952 = !{!953, !954}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !951, file: !748, line: 105, baseType: !244, size: 128)
!954 = !DIDerivedType(tag: DW_TAG_member, scope: !951, file: !748, line: 106, baseType: !955, size: 128)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !951, file: !748, line: 106, size: 128, elements: !956)
!956 = !{!957, !958, !959}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !955, file: !748, line: 107, baseType: !746, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !955, file: !748, line: 109, baseType: !177, size: 32, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !955, file: !748, line: 110, baseType: !177, size: 32, offset: 96)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !948, file: !748, line: 117, baseType: !961, size: 64, offset: 128)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !748, line: 117, flags: DIFlagFwdDecl)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !948, file: !748, line: 119, baseType: !233, size: 64, offset: 192)
!964 = !DIDerivedType(tag: DW_TAG_member, scope: !948, file: !748, line: 120, baseType: !965, size: 64, offset: 256)
!965 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !948, file: !748, line: 120, size: 64, elements: !966)
!966 = !{!967, !968, !969}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !965, file: !748, line: 121, baseType: !233, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !965, file: !748, line: 122, baseType: !349, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, scope: !965, file: !748, line: 123, baseType: !970, size: 32)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !965, file: !748, line: 123, size: 32, elements: !971)
!971 = !{!972, !973, !974}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !970, file: !748, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !970, file: !748, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !970, file: !748, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!975 = !DIDerivedType(tag: DW_TAG_member, scope: !752, file: !748, line: 130, baseType: !976, size: 192)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !752, file: !748, line: 130, size: 192, elements: !977)
!977 = !{!978, !979, !980, !981, !982}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !976, file: !748, line: 131, baseType: !349, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !976, file: !748, line: 134, baseType: !452, size: 8, offset: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !976, file: !748, line: 135, baseType: !452, size: 8, offset: 72)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !976, file: !748, line: 136, baseType: !773, size: 32, offset: 96)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !976, file: !748, line: 137, baseType: !7, size: 32, offset: 128)
!983 = !DIDerivedType(tag: DW_TAG_member, scope: !752, file: !748, line: 139, baseType: !984, size: 256)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !752, file: !748, line: 139, size: 256, elements: !985)
!985 = !{!986, !987, !988}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !984, file: !748, line: 140, baseType: !349, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !984, file: !748, line: 141, baseType: !773, size: 32, offset: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !984, file: !748, line: 143, baseType: !244, size: 128, offset: 128)
!989 = !DIDerivedType(tag: DW_TAG_member, scope: !752, file: !748, line: 145, baseType: !990, size: 256)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !752, file: !748, line: 145, size: 256, elements: !991)
!991 = !{!992, !993, !995, !996, !2360}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !990, file: !748, line: 146, baseType: !349, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !990, file: !748, line: 147, baseType: !994, size: 64, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !738, line: 509, baseType: !746)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !990, file: !748, line: 148, baseType: !349, size: 64, offset: 128)
!996 = !DIDerivedType(tag: DW_TAG_member, scope: !990, file: !748, line: 149, baseType: !997, size: 64, offset: 192)
!997 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !990, file: !748, line: 149, size: 64, elements: !998)
!998 = !{!999, !2359}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !997, file: !748, line: 150, baseType: !1000, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !748, line: 388, size: 7296, elements: !1002)
!1002 = !{!1003, !2355}
!1003 = !DIDerivedType(tag: DW_TAG_member, scope: !1001, file: !748, line: 389, baseType: !1004, size: 7296)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1001, file: !748, line: 389, size: 7296, elements: !1005)
!1005 = !{!1006, !1124, !1125, !1126, !1130, !1131, !1132, !1133, !1134, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1175, !1183, !1186, !1232, !1233, !2339, !2340, !2343, !2344, !2345, !2348, !2349, !2350, !2353, !2354}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1004, file: !748, line: 390, baseType: !1007, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !748, line: 305, size: 1472, elements: !1009)
!1009 = !{!1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1024, !1025, !1030, !1031, !1034, !1118, !1119, !1120, !1121, !1122}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1008, file: !748, line: 308, baseType: !349, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1008, file: !748, line: 309, baseType: !349, size: 64, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1008, file: !748, line: 313, baseType: !1007, size: 64, offset: 128)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1008, file: !748, line: 313, baseType: !1007, size: 64, offset: 192)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1008, file: !748, line: 315, baseType: !786, size: 192, align: 64, offset: 256)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1008, file: !748, line: 323, baseType: !349, size: 64, offset: 448)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1008, file: !748, line: 327, baseType: !1000, size: 64, offset: 512)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1008, file: !748, line: 333, baseType: !1018, size: 64, offset: 576)
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !738, line: 284, baseType: !1019)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !738, line: 284, size: 64, elements: !1020)
!1020 = !{!1021}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1019, file: !738, line: 284, baseType: !1022, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1023, line: 19, baseType: !349)
!1023 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1008, file: !748, line: 334, baseType: !349, size: 64, offset: 640)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1008, file: !748, line: 343, baseType: !1026, size: 256, offset: 704)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1008, file: !748, line: 340, size: 256, elements: !1027)
!1027 = !{!1028, !1029}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1026, file: !748, line: 341, baseType: !786, size: 192, align: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1026, file: !748, line: 342, baseType: !349, size: 64, offset: 192)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1008, file: !748, line: 351, baseType: !244, size: 128, offset: 960)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1008, file: !748, line: 353, baseType: !1032, size: 64, offset: 1088)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !748, line: 353, flags: DIFlagFwdDecl)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1008, file: !748, line: 356, baseType: !1035, size: 64, offset: 1152)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1037)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1038)
!1038 = !{!1039, !1043, !1044, !1048, !1052, !1092, !1096, !1100, !1104, !1105, !1106, !1110, !1114}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1037, file: !14, line: 558, baseType: !1040, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{null, !1007}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1037, file: !14, line: 559, baseType: !1040, size: 64, offset: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1037, file: !14, line: 560, baseType: !1045, size: 64, offset: 128)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!177, !1007, !349}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1037, file: !14, line: 561, baseType: !1049, size: 64, offset: 192)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!177, !1007}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1037, file: !14, line: 562, baseType: !1053, size: 64, offset: 256)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!1056, !1057}
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !748, line: 682, baseType: !7)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1059)
!1059 = !{!1060, !1061, !1062, !1063, !1064, !1065, !1072, !1079, !1085, !1086, !1087, !1089, !1091}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1058, file: !14, line: 509, baseType: !1007, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1058, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1058, file: !14, line: 511, baseType: !769, size: 32, offset: 96)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1058, file: !14, line: 512, baseType: !349, size: 64, offset: 128)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1058, file: !14, line: 513, baseType: !349, size: 64, offset: 192)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1058, file: !14, line: 514, baseType: !1066, size: 64, offset: 256)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !738, line: 385, baseType: !1068)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !738, line: 385, size: 64, elements: !1069)
!1069 = !{!1070}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1068, file: !738, line: 385, baseType: !1071, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1023, line: 15, baseType: !349)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1058, file: !14, line: 516, baseType: !1073, size: 64, offset: 320)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !738, line: 359, baseType: !1075)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !738, line: 359, size: 64, elements: !1076)
!1076 = !{!1077}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1075, file: !738, line: 359, baseType: !1078, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1023, line: 16, baseType: !349)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1058, file: !14, line: 519, baseType: !1080, size: 64, offset: 384)
!1080 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1023, line: 21, baseType: !1081)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1023, line: 21, size: 64, elements: !1082)
!1082 = !{!1083}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1081, file: !1023, line: 21, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1023, line: 14, baseType: !349)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1058, file: !14, line: 521, baseType: !746, size: 64, offset: 448)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1058, file: !14, line: 522, baseType: !746, size: 64, offset: 512)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1058, file: !14, line: 528, baseType: !1088, size: 64, offset: 576)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1058, file: !14, line: 532, baseType: !1090, size: 64, offset: 640)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1058, file: !14, line: 536, baseType: !994, size: 64, offset: 704)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1037, file: !14, line: 563, baseType: !1093, size: 64, offset: 320)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!1056, !1057, !13}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1037, file: !14, line: 565, baseType: !1097, size: 64, offset: 384)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{null, !1057, !349, !349}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1037, file: !14, line: 567, baseType: !1101, size: 64, offset: 448)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!349, !1007}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1037, file: !14, line: 571, baseType: !1053, size: 64, offset: 512)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1037, file: !14, line: 574, baseType: !1053, size: 64, offset: 576)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1037, file: !14, line: 579, baseType: !1107, size: 64, offset: 640)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!177, !1007, !349, !233, !177, !177}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1037, file: !14, line: 585, baseType: !1111, size: 64, offset: 704)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!215, !1007}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1037, file: !14, line: 615, baseType: !1115, size: 64, offset: 768)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!746, !1007, !349}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1008, file: !748, line: 359, baseType: !349, size: 64, offset: 1216)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1008, file: !748, line: 361, baseType: !377, size: 64, offset: 1280)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1008, file: !748, line: 362, baseType: !233, size: 64, offset: 1344)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1008, file: !748, line: 365, baseType: !797, size: 64, offset: 1408)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1008, file: !748, line: 373, baseType: !1123, offset: 1472)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !748, line: 296, elements: !272)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1004, file: !748, line: 391, baseType: !782, size: 64, offset: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1004, file: !748, line: 392, baseType: !446, size: 64, offset: 128)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1004, file: !748, line: 394, baseType: !1127, size: 64, offset: 192)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!349, !377, !349, !349, !349, !349}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1004, file: !748, line: 398, baseType: !349, size: 64, offset: 256)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1004, file: !748, line: 399, baseType: !349, size: 64, offset: 320)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1004, file: !748, line: 405, baseType: !349, size: 64, offset: 384)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1004, file: !748, line: 406, baseType: !349, size: 64, offset: 448)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1004, file: !748, line: 407, baseType: !1135, size: 64, offset: 512)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !738, line: 286, baseType: !1137)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !738, line: 286, size: 64, elements: !1138)
!1138 = !{!1139}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1137, file: !738, line: 286, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1023, line: 18, baseType: !349)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1004, file: !748, line: 416, baseType: !773, size: 32, offset: 576)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1004, file: !748, line: 428, baseType: !773, size: 32, offset: 608)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1004, file: !748, line: 437, baseType: !773, size: 32, offset: 640)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1004, file: !748, line: 447, baseType: !773, size: 32, offset: 672)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1004, file: !748, line: 450, baseType: !797, size: 64, offset: 704)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1004, file: !748, line: 452, baseType: !177, size: 32, offset: 768)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1004, file: !748, line: 454, baseType: !258, offset: 800)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1004, file: !748, line: 457, baseType: !793, size: 256, offset: 832)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1004, file: !748, line: 459, baseType: !244, size: 128, offset: 1088)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1004, file: !748, line: 466, baseType: !349, size: 64, offset: 1216)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1004, file: !748, line: 467, baseType: !349, size: 64, offset: 1280)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1004, file: !748, line: 469, baseType: !349, size: 64, offset: 1344)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1004, file: !748, line: 470, baseType: !349, size: 64, offset: 1408)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1004, file: !748, line: 471, baseType: !799, size: 64, offset: 1472)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1004, file: !748, line: 472, baseType: !349, size: 64, offset: 1536)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1004, file: !748, line: 473, baseType: !349, size: 64, offset: 1600)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1004, file: !748, line: 474, baseType: !349, size: 64, offset: 1664)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1004, file: !748, line: 475, baseType: !349, size: 64, offset: 1728)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1004, file: !748, line: 477, baseType: !258, offset: 1792)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1004, file: !748, line: 478, baseType: !349, size: 64, offset: 1792)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1004, file: !748, line: 478, baseType: !349, size: 64, offset: 1856)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1004, file: !748, line: 478, baseType: !349, size: 64, offset: 1920)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1004, file: !748, line: 478, baseType: !349, size: 64, offset: 1984)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1004, file: !748, line: 479, baseType: !349, size: 64, offset: 2048)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1004, file: !748, line: 479, baseType: !349, size: 64, offset: 2112)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1004, file: !748, line: 479, baseType: !349, size: 64, offset: 2176)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1004, file: !748, line: 480, baseType: !349, size: 64, offset: 2240)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1004, file: !748, line: 480, baseType: !349, size: 64, offset: 2304)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1004, file: !748, line: 480, baseType: !349, size: 64, offset: 2368)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1004, file: !748, line: 480, baseType: !349, size: 64, offset: 2432)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1004, file: !748, line: 482, baseType: !1172, size: 2816, offset: 2496)
!1172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 2816, elements: !1173)
!1173 = !{!1174}
!1174 = !DISubrange(count: 44)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1004, file: !748, line: 488, baseType: !1176, size: 256, offset: 5312)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1177, line: 60, size: 256, elements: !1178)
!1177 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1178 = !{!1179}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1176, file: !1177, line: 61, baseType: !1180, size: 256)
!1180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !797, size: 256, elements: !1181)
!1181 = !{!1182}
!1182 = !DISubrange(count: 4)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1004, file: !748, line: 490, baseType: !1184, size: 64, offset: 5568)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !748, line: 490, flags: DIFlagFwdDecl)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1004, file: !748, line: 493, baseType: !1187, size: 896, offset: 5632)
!1187 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1188, line: 53, baseType: !1189)
!1188 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1188, line: 13, size: 896, elements: !1190)
!1190 = !{!1191, !1192, !1193, !1194, !1197, !1198, !1205, !1206, !1226, !1227, !1228}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1189, file: !1188, line: 18, baseType: !446, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1189, file: !1188, line: 28, baseType: !799, size: 64, offset: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1189, file: !1188, line: 31, baseType: !793, size: 256, offset: 128)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1189, file: !1188, line: 32, baseType: !1195, size: 64, offset: 384)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1188, line: 32, flags: DIFlagFwdDecl)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1189, file: !1188, line: 37, baseType: !341, size: 16, offset: 448)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1189, file: !1188, line: 40, baseType: !1199, size: 192, offset: 512)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1200, line: 53, size: 192, elements: !1201)
!1200 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1201 = !{!1202, !1203, !1204}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1199, file: !1200, line: 54, baseType: !797, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1199, file: !1200, line: 55, baseType: !258, offset: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1199, file: !1200, line: 59, baseType: !244, size: 128, offset: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1189, file: !1188, line: 41, baseType: !233, size: 64, offset: 704)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1189, file: !1188, line: 42, baseType: !1207, size: 64, offset: 768)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1209)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1210, line: 13, size: 896, elements: !1211)
!1210 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1211 = !{!1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1209, file: !1210, line: 14, baseType: !233, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1209, file: !1210, line: 15, baseType: !349, size: 64, offset: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1209, file: !1210, line: 17, baseType: !349, size: 64, offset: 128)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1209, file: !1210, line: 17, baseType: !349, size: 64, offset: 192)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1209, file: !1210, line: 19, baseType: !334, size: 64, offset: 256)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1209, file: !1210, line: 21, baseType: !334, size: 64, offset: 320)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1209, file: !1210, line: 22, baseType: !334, size: 64, offset: 384)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1209, file: !1210, line: 23, baseType: !334, size: 64, offset: 448)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1209, file: !1210, line: 24, baseType: !334, size: 64, offset: 512)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1209, file: !1210, line: 25, baseType: !334, size: 64, offset: 576)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1209, file: !1210, line: 26, baseType: !334, size: 64, offset: 640)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1209, file: !1210, line: 27, baseType: !334, size: 64, offset: 704)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1209, file: !1210, line: 28, baseType: !334, size: 64, offset: 768)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1209, file: !1210, line: 29, baseType: !334, size: 64, offset: 832)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1189, file: !1188, line: 44, baseType: !773, size: 32, offset: 832)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1189, file: !1188, line: 50, baseType: !885, size: 16, offset: 864)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1189, file: !1188, line: 51, baseType: !1229, size: 16, offset: 880)
!1229 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !441, line: 18, baseType: !1230)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !443, line: 23, baseType: !1231)
!1231 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1004, file: !748, line: 495, baseType: !349, size: 64, offset: 6528)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1004, file: !748, line: 497, baseType: !1234, size: 64, offset: 6592)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !748, line: 381, size: 384, elements: !1236)
!1236 = !{!1237, !1238, !2338}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1235, file: !748, line: 382, baseType: !773, size: 32)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1235, file: !748, line: 383, baseType: !1239, size: 128, offset: 64)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !748, line: 376, size: 128, elements: !1240)
!1240 = !{!1241, !2336}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1239, file: !748, line: 377, baseType: !1242, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1244, line: 640, size: 48640, elements: !1245)
!1244 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1245 = !{!1246, !1252, !1254, !1255, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1272, !1290, !1301, !1386, !1387, !1388, !1399, !1400, !1402, !1403, !1404, !1405, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1484, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1522, !1524, !1525, !1526, !1538, !1539, !1540, !1541, !1542, !1543, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1567, !1572, !1756, !1757, !1758, !1759, !1763, !1766, !1769, !1772, !1775, !1779, !1880, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1924, !1925, !1926, !1927, !1928, !1933, !1934, !1935, !1938, !1939, !1942, !1945, !1948, !1951, !1994, !1997, !1998, !2077, !2078, !2081, !2082, !2085, !2086, !2087, !2091, !2092, !2093, !2106, !2107, !2108, !2118, !2123, !2126, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1243, file: !1244, line: 646, baseType: !1247, size: 128)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1248, line: 56, size: 128, elements: !1249)
!1248 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1249 = !{!1250, !1251}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1247, file: !1248, line: 57, baseType: !349, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1247, file: !1248, line: 58, baseType: !440, size: 32, offset: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1243, file: !1244, line: 649, baseType: !1253, size: 64, offset: 128)
!1253 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !334)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1243, file: !1244, line: 657, baseType: !233, size: 64, offset: 192)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1243, file: !1244, line: 658, baseType: !1256, size: 32, offset: 256)
!1256 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1257, line: 113, baseType: !1258)
!1257 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1257, line: 111, size: 32, elements: !1259)
!1259 = !{!1260}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1258, file: !1257, line: 112, baseType: !773, size: 32)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1243, file: !1244, line: 660, baseType: !7, size: 32, offset: 288)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1243, file: !1244, line: 661, baseType: !7, size: 32, offset: 320)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1243, file: !1244, line: 684, baseType: !177, size: 32, offset: 352)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1243, file: !1244, line: 686, baseType: !177, size: 32, offset: 384)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1243, file: !1244, line: 687, baseType: !177, size: 32, offset: 416)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1243, file: !1244, line: 688, baseType: !177, size: 32, offset: 448)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1243, file: !1244, line: 689, baseType: !7, size: 32, offset: 480)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1243, file: !1244, line: 691, baseType: !1269, size: 64, offset: 512)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1271)
!1271 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1244, line: 691, flags: DIFlagFwdDecl)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1243, file: !1244, line: 692, baseType: !1273, size: 832, offset: 576)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1244, line: 451, size: 832, elements: !1274)
!1274 = !{!1275, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1273, file: !1244, line: 453, baseType: !1276, size: 128)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1244, line: 325, size: 128, elements: !1277)
!1277 = !{!1278, !1279}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1276, file: !1244, line: 326, baseType: !349, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1276, file: !1244, line: 327, baseType: !440, size: 32, offset: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1273, file: !1244, line: 454, baseType: !786, size: 192, align: 64, offset: 128)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1273, file: !1244, line: 455, baseType: !244, size: 128, offset: 320)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1273, file: !1244, line: 456, baseType: !7, size: 32, offset: 448)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1273, file: !1244, line: 458, baseType: !446, size: 64, offset: 512)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1273, file: !1244, line: 459, baseType: !446, size: 64, offset: 576)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1273, file: !1244, line: 460, baseType: !446, size: 64, offset: 640)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1273, file: !1244, line: 461, baseType: !446, size: 64, offset: 704)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1273, file: !1244, line: 463, baseType: !446, size: 64, offset: 768)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1273, file: !1244, line: 465, baseType: !1289, offset: 832)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1244, line: 415, elements: !272)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1243, file: !1244, line: 693, baseType: !1291, size: 384, offset: 1408)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1244, line: 489, size: 384, elements: !1292)
!1292 = !{!1293, !1294, !1295, !1296, !1297, !1298, !1299}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1291, file: !1244, line: 490, baseType: !244, size: 128)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1291, file: !1244, line: 491, baseType: !349, size: 64, offset: 128)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1291, file: !1244, line: 492, baseType: !349, size: 64, offset: 192)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1291, file: !1244, line: 493, baseType: !7, size: 32, offset: 256)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1291, file: !1244, line: 494, baseType: !341, size: 16, offset: 288)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1291, file: !1244, line: 495, baseType: !341, size: 16, offset: 304)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1291, file: !1244, line: 497, baseType: !1300, size: 64, offset: 320)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1243, file: !1244, line: 697, baseType: !1302, size: 1792, offset: 1792)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1244, line: 507, size: 1792, elements: !1303)
!1303 = !{!1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1383, !1384}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1302, file: !1244, line: 508, baseType: !786, size: 192, align: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1302, file: !1244, line: 515, baseType: !446, size: 64, offset: 192)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1302, file: !1244, line: 516, baseType: !446, size: 64, offset: 256)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1302, file: !1244, line: 517, baseType: !446, size: 64, offset: 320)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1302, file: !1244, line: 518, baseType: !446, size: 64, offset: 384)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1302, file: !1244, line: 519, baseType: !446, size: 64, offset: 448)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1302, file: !1244, line: 526, baseType: !803, size: 64, offset: 512)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1302, file: !1244, line: 527, baseType: !446, size: 64, offset: 576)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1302, file: !1244, line: 528, baseType: !7, size: 32, offset: 640)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1302, file: !1244, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1302, file: !1244, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1302, file: !1244, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1302, file: !1244, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1302, file: !1244, line: 563, baseType: !1318, size: 512, offset: 704)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1319)
!1319 = !{!1320, !1328, !1329, !1334, !1377, !1380, !1381, !1382}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1318, file: !20, line: 119, baseType: !1321, size: 256)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1322, line: 9, size: 256, elements: !1323)
!1322 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1323 = !{!1324, !1325}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1321, file: !1322, line: 10, baseType: !786, size: 192, align: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1321, file: !1322, line: 11, baseType: !1326, size: 64, offset: 192)
!1326 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1327, line: 29, baseType: !803)
!1327 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1318, file: !20, line: 120, baseType: !1326, size: 64, offset: 256)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1318, file: !20, line: 121, baseType: !1330, size: 64, offset: 320)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!19, !1333}
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1318, file: !20, line: 122, baseType: !1335, size: 64, offset: 384)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1337)
!1337 = !{!1338, !1358, !1359, !1362, !1367, !1368, !1372, !1376}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1336, file: !20, line: 160, baseType: !1339, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1341)
!1341 = !{!1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1340, file: !20, line: 215, baseType: !806)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1340, file: !20, line: 216, baseType: !7, size: 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1340, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1340, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1340, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1340, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1340, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1340, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1340, file: !20, line: 233, baseType: !1326, size: 64, offset: 128)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1340, file: !20, line: 234, baseType: !1333, size: 64, offset: 192)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1340, file: !20, line: 235, baseType: !1326, size: 64, offset: 256)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1340, file: !20, line: 236, baseType: !1333, size: 64, offset: 320)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1340, file: !20, line: 237, baseType: !1355, size: 4096, offset: 512)
!1355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1336, size: 4096, elements: !1356)
!1356 = !{!1357}
!1357 = !DISubrange(count: 8)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1336, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1336, file: !20, line: 162, baseType: !1360, size: 32, offset: 96)
!1360 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !245, line: 27, baseType: !1361)
!1361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !332, line: 96, baseType: !177)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1336, file: !20, line: 163, baseType: !1363, size: 32, offset: 128)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !413, line: 276, baseType: !1364)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !413, line: 276, size: 32, elements: !1365)
!1365 = !{!1366}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1364, file: !413, line: 276, baseType: !417, size: 32)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1336, file: !20, line: 164, baseType: !1333, size: 64, offset: 192)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1336, file: !20, line: 165, baseType: !1369, size: 128, offset: 256)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1322, line: 14, size: 128, elements: !1370)
!1370 = !{!1371}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1369, file: !1322, line: 15, baseType: !778, size: 128)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1336, file: !20, line: 166, baseType: !1373, size: 64, offset: 384)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!1326}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1336, file: !20, line: 167, baseType: !1326, size: 64, offset: 448)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1318, file: !20, line: 123, baseType: !1378, size: 8, offset: 448)
!1378 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !441, line: 17, baseType: !1379)
!1379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !443, line: 21, baseType: !452)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1318, file: !20, line: 124, baseType: !1378, size: 8, offset: 456)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1318, file: !20, line: 125, baseType: !1378, size: 8, offset: 464)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1318, file: !20, line: 126, baseType: !1378, size: 8, offset: 472)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1302, file: !1244, line: 572, baseType: !1318, size: 512, offset: 1216)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1302, file: !1244, line: 580, baseType: !1385, size: 64, offset: 1728)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1243, file: !1244, line: 721, baseType: !7, size: 32, offset: 3584)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1243, file: !1244, line: 722, baseType: !177, size: 32, offset: 3616)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1243, file: !1244, line: 723, baseType: !1389, size: 64, offset: 3648)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1391)
!1391 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1392, line: 17, baseType: !1393)
!1392 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1392, line: 17, size: 64, elements: !1394)
!1394 = !{!1395}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1393, file: !1392, line: 17, baseType: !1396, size: 64)
!1396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 64, elements: !1397)
!1397 = !{!1398}
!1398 = !DISubrange(count: 1)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1243, file: !1244, line: 724, baseType: !1391, size: 64, offset: 3712)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1243, file: !1244, line: 749, baseType: !1401, offset: 3776)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1244, line: 290, elements: !272)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1243, file: !1244, line: 751, baseType: !244, size: 128, offset: 3776)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1243, file: !1244, line: 757, baseType: !1000, size: 64, offset: 3904)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1243, file: !1244, line: 758, baseType: !1000, size: 64, offset: 3968)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1243, file: !1244, line: 761, baseType: !1406, size: 320, offset: 4032)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1177, line: 34, size: 320, elements: !1407)
!1407 = !{!1408, !1409}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1406, file: !1177, line: 35, baseType: !446, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1406, file: !1177, line: 36, baseType: !1410, size: 256, offset: 64)
!1410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1007, size: 256, elements: !1181)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1243, file: !1244, line: 766, baseType: !177, size: 32, offset: 4352)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1243, file: !1244, line: 767, baseType: !177, size: 32, offset: 4384)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1243, file: !1244, line: 768, baseType: !177, size: 32, offset: 4416)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1243, file: !1244, line: 770, baseType: !177, size: 32, offset: 4448)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1243, file: !1244, line: 772, baseType: !349, size: 64, offset: 4480)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1243, file: !1244, line: 775, baseType: !7, size: 32, offset: 4544)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1243, file: !1244, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1243, file: !1244, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1243, file: !1244, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1243, file: !1244, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1243, file: !1244, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1243, file: !1244, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1243, file: !1244, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1243, file: !1244, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1243, file: !1244, line: 831, baseType: !349, size: 64, offset: 4672)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1243, file: !1244, line: 833, baseType: !1427, size: 384, offset: 4736)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1428)
!1428 = !{!1429, !1434}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1427, file: !25, line: 26, baseType: !1430, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!334, !1433}
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, scope: !1427, file: !25, line: 27, baseType: !1435, size: 320, offset: 64)
!1435 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1427, file: !25, line: 27, size: 320, elements: !1436)
!1436 = !{!1437, !1447, !1474}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1435, file: !25, line: 36, baseType: !1438, size: 320)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1435, file: !25, line: 29, size: 320, elements: !1439)
!1439 = !{!1440, !1442, !1443, !1444, !1445, !1446}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1438, file: !25, line: 30, baseType: !1441, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1438, file: !25, line: 31, baseType: !440, size: 32, offset: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1438, file: !25, line: 32, baseType: !440, size: 32, offset: 96)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1438, file: !25, line: 33, baseType: !440, size: 32, offset: 128)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1438, file: !25, line: 34, baseType: !446, size: 64, offset: 192)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1438, file: !25, line: 35, baseType: !1441, size: 64, offset: 256)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1435, file: !25, line: 46, baseType: !1448, size: 192)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1435, file: !25, line: 38, size: 192, elements: !1449)
!1449 = !{!1450, !1451, !1452, !1473}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1448, file: !25, line: 39, baseType: !1360, size: 32)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1448, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1452 = !DIDerivedType(tag: DW_TAG_member, scope: !1448, file: !25, line: 41, baseType: !1453, size: 64, offset: 64)
!1453 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1448, file: !25, line: 41, size: 64, elements: !1454)
!1454 = !{!1455, !1463}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1453, file: !25, line: 42, baseType: !1456, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1458, line: 7, size: 128, elements: !1459)
!1458 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1459 = !{!1460, !1462}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1457, file: !1458, line: 8, baseType: !1461, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !332, line: 93, baseType: !558)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1457, file: !1458, line: 9, baseType: !558, size: 64, offset: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1453, file: !25, line: 43, baseType: !1464, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1466, line: 7, size: 64, elements: !1467)
!1466 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1467 = !{!1468, !1472}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1465, file: !1466, line: 8, baseType: !1469, size: 32)
!1469 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1466, line: 5, baseType: !1470)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !441, line: 20, baseType: !1471)
!1471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !443, line: 26, baseType: !177)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1465, file: !1466, line: 9, baseType: !1470, size: 32, offset: 32)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1448, file: !25, line: 45, baseType: !446, size: 64, offset: 128)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1435, file: !25, line: 54, baseType: !1475, size: 256)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1435, file: !25, line: 48, size: 256, elements: !1476)
!1476 = !{!1477, !1480, !1481, !1482, !1483}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1475, file: !25, line: 49, baseType: !1478, size: 64)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1475, file: !25, line: 50, baseType: !177, size: 32, offset: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1475, file: !25, line: 51, baseType: !177, size: 32, offset: 96)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1475, file: !25, line: 52, baseType: !349, size: 64, offset: 128)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1475, file: !25, line: 53, baseType: !349, size: 64, offset: 192)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1243, file: !1244, line: 835, baseType: !1485, size: 32, offset: 5120)
!1485 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !245, line: 22, baseType: !1486)
!1486 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !332, line: 28, baseType: !177)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1243, file: !1244, line: 836, baseType: !1485, size: 32, offset: 5152)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1243, file: !1244, line: 840, baseType: !349, size: 64, offset: 5184)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1243, file: !1244, line: 849, baseType: !1242, size: 64, offset: 5248)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1243, file: !1244, line: 852, baseType: !1242, size: 64, offset: 5312)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1243, file: !1244, line: 857, baseType: !244, size: 128, offset: 5376)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1243, file: !1244, line: 858, baseType: !244, size: 128, offset: 5504)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1243, file: !1244, line: 859, baseType: !1242, size: 64, offset: 5632)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1243, file: !1244, line: 867, baseType: !244, size: 128, offset: 5696)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1243, file: !1244, line: 868, baseType: !244, size: 128, offset: 5824)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1243, file: !1244, line: 871, baseType: !1497, size: 64, offset: 5952)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1499)
!1499 = !{!1500, !1501, !1502, !1503, !1505, !1506, !1513, !1514}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1498, file: !53, line: 61, baseType: !1256, size: 32)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1498, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1498, file: !53, line: 63, baseType: !258, offset: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1498, file: !53, line: 65, baseType: !1504, size: 256, offset: 64)
!1504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !660, size: 256, elements: !1181)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1498, file: !53, line: 66, baseType: !660, size: 64, offset: 320)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1498, file: !53, line: 68, baseType: !1507, size: 128, offset: 384)
!1507 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1508, line: 40, baseType: !1509)
!1508 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1508, line: 36, size: 128, elements: !1510)
!1510 = !{!1511, !1512}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1509, file: !1508, line: 37, baseType: !258)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1509, file: !1508, line: 38, baseType: !244, size: 128)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1498, file: !53, line: 69, baseType: !390, size: 128, align: 64, offset: 512)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1498, file: !53, line: 70, baseType: !1515, size: 128, offset: 640)
!1515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1516, size: 128, elements: !1397)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1517)
!1517 = !{!1518, !1519}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1516, file: !53, line: 55, baseType: !177, size: 32)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1516, file: !53, line: 56, baseType: !1520, size: 64, offset: 64)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1243, file: !1244, line: 872, baseType: !1523, size: 512, offset: 6016)
!1523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !664, size: 512, elements: !1181)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1243, file: !1244, line: 873, baseType: !244, size: 128, offset: 6528)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1243, file: !1244, line: 874, baseType: !244, size: 128, offset: 6656)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1243, file: !1244, line: 876, baseType: !1527, size: 64, offset: 6784)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1529, line: 26, size: 192, elements: !1530)
!1529 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1530 = !{!1531, !1532}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1528, file: !1529, line: 27, baseType: !7, size: 32)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1528, file: !1529, line: 28, baseType: !1533, size: 128, offset: 64)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1534, line: 43, size: 128, elements: !1535)
!1534 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1535 = !{!1536, !1537}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1533, file: !1534, line: 44, baseType: !806)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1533, file: !1534, line: 45, baseType: !244, size: 128)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1243, file: !1244, line: 879, baseType: !730, size: 64, offset: 6848)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1243, file: !1244, line: 882, baseType: !730, size: 64, offset: 6912)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1243, file: !1244, line: 884, baseType: !446, size: 64, offset: 6976)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1243, file: !1244, line: 885, baseType: !446, size: 64, offset: 7040)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1243, file: !1244, line: 890, baseType: !446, size: 64, offset: 7104)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1243, file: !1244, line: 891, baseType: !1544, size: 128, offset: 7168)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1244, line: 242, size: 128, elements: !1545)
!1545 = !{!1546, !1547, !1548}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1544, file: !1244, line: 244, baseType: !446, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1544, file: !1244, line: 245, baseType: !446, size: 64, offset: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1544, file: !1244, line: 246, baseType: !806, offset: 128)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1243, file: !1244, line: 900, baseType: !349, size: 64, offset: 7296)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1243, file: !1244, line: 901, baseType: !349, size: 64, offset: 7360)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1243, file: !1244, line: 904, baseType: !446, size: 64, offset: 7424)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1243, file: !1244, line: 907, baseType: !446, size: 64, offset: 7488)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1243, file: !1244, line: 910, baseType: !349, size: 64, offset: 7552)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1243, file: !1244, line: 911, baseType: !349, size: 64, offset: 7616)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1243, file: !1244, line: 914, baseType: !1556, size: 640, offset: 7680)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1557, line: 123, size: 640, elements: !1558)
!1557 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1558 = !{!1559, !1565, !1566}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1556, file: !1557, line: 124, baseType: !1560, size: 576)
!1560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1561, size: 576, elements: !300)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1557, line: 108, size: 192, elements: !1562)
!1562 = !{!1563, !1564}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1561, file: !1557, line: 109, baseType: !446, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1561, file: !1557, line: 110, baseType: !1369, size: 128, offset: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1556, file: !1557, line: 125, baseType: !7, size: 32, offset: 576)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1556, file: !1557, line: 126, baseType: !7, size: 32, offset: 608)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1243, file: !1244, line: 917, baseType: !1568, size: 192, offset: 8320)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1557, line: 134, size: 192, elements: !1569)
!1569 = !{!1570, !1571}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1568, file: !1557, line: 135, baseType: !390, size: 128, align: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1568, file: !1557, line: 136, baseType: !7, size: 32, offset: 128)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1243, file: !1244, line: 923, baseType: !1573, size: 64, offset: 8512)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1575)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1576, line: 111, size: 1280, elements: !1577)
!1576 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1577 = !{!1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1597, !1598, !1599, !1600, !1601, !1602, !1709, !1710, !1711, !1712, !1738, !1741, !1751}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1575, file: !1576, line: 112, baseType: !773, size: 32)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1575, file: !1576, line: 120, baseType: !460, size: 32, offset: 32)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1575, file: !1576, line: 121, baseType: !468, size: 32, offset: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1575, file: !1576, line: 122, baseType: !460, size: 32, offset: 96)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1575, file: !1576, line: 123, baseType: !468, size: 32, offset: 128)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1575, file: !1576, line: 124, baseType: !460, size: 32, offset: 160)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1575, file: !1576, line: 125, baseType: !468, size: 32, offset: 192)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1575, file: !1576, line: 126, baseType: !460, size: 32, offset: 224)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1575, file: !1576, line: 127, baseType: !468, size: 32, offset: 256)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1575, file: !1576, line: 128, baseType: !7, size: 32, offset: 288)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1575, file: !1576, line: 129, baseType: !1589, size: 64, offset: 320)
!1589 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1590, line: 26, baseType: !1591)
!1590 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1590, line: 24, size: 64, elements: !1592)
!1592 = !{!1593}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1591, file: !1590, line: 25, baseType: !1594, size: 64)
!1594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 64, elements: !1595)
!1595 = !{!1596}
!1596 = !DISubrange(count: 2)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1575, file: !1576, line: 130, baseType: !1589, size: 64, offset: 384)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1575, file: !1576, line: 131, baseType: !1589, size: 64, offset: 448)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1575, file: !1576, line: 132, baseType: !1589, size: 64, offset: 512)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1575, file: !1576, line: 133, baseType: !1589, size: 64, offset: 576)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1575, file: !1576, line: 135, baseType: !452, size: 8, offset: 640)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1575, file: !1576, line: 137, baseType: !1603, size: 64, offset: 704)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1605, line: 189, size: 1664, elements: !1606)
!1605 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1606 = !{!1607, !1608, !1611, !1616, !1617, !1620, !1621, !1626, !1627, !1628, !1629, !1631, !1632, !1633, !1634, !1635, !1673, !1694}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1604, file: !1605, line: 190, baseType: !1256, size: 32)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1604, file: !1605, line: 191, baseType: !1609, size: 32, offset: 32)
!1609 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1605, line: 28, baseType: !1610)
!1610 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !245, line: 98, baseType: !1470)
!1611 = !DIDerivedType(tag: DW_TAG_member, scope: !1604, file: !1605, line: 192, baseType: !1612, size: 192, offset: 64)
!1612 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1604, file: !1605, line: 192, size: 192, elements: !1613)
!1613 = !{!1614, !1615}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1612, file: !1605, line: 193, baseType: !244, size: 128)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1612, file: !1605, line: 194, baseType: !786, size: 192, align: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1604, file: !1605, line: 199, baseType: !793, size: 256, offset: 256)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1604, file: !1605, line: 200, baseType: !1618, size: 64, offset: 512)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1605, line: 200, flags: DIFlagFwdDecl)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1604, file: !1605, line: 201, baseType: !233, size: 64, offset: 576)
!1621 = !DIDerivedType(tag: DW_TAG_member, scope: !1604, file: !1605, line: 202, baseType: !1622, size: 64, offset: 640)
!1622 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1604, file: !1605, line: 202, size: 64, elements: !1623)
!1623 = !{!1624, !1625}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1622, file: !1605, line: 203, baseType: !564, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1622, file: !1605, line: 204, baseType: !564, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1604, file: !1605, line: 206, baseType: !564, size: 64, offset: 704)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1604, file: !1605, line: 207, baseType: !460, size: 32, offset: 768)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1604, file: !1605, line: 208, baseType: !468, size: 32, offset: 800)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1604, file: !1605, line: 209, baseType: !1630, size: 32, offset: 832)
!1630 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1605, line: 31, baseType: !584)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1604, file: !1605, line: 210, baseType: !341, size: 16, offset: 864)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1604, file: !1605, line: 211, baseType: !341, size: 16, offset: 880)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1604, file: !1605, line: 215, baseType: !1231, size: 16, offset: 896)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1604, file: !1605, line: 222, baseType: !349, size: 64, offset: 960)
!1635 = !DIDerivedType(tag: DW_TAG_member, scope: !1604, file: !1605, line: 239, baseType: !1636, size: 320, offset: 1024)
!1636 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1604, file: !1605, line: 239, size: 320, elements: !1637)
!1637 = !{!1638, !1665}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1636, file: !1605, line: 240, baseType: !1639, size: 320)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1605, line: 108, size: 320, elements: !1640)
!1640 = !{!1641, !1642, !1654, !1657, !1664}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1639, file: !1605, line: 110, baseType: !349, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, scope: !1639, file: !1605, line: 111, baseType: !1643, size: 64, offset: 64)
!1643 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1639, file: !1605, line: 111, size: 64, elements: !1644)
!1644 = !{!1645, !1653}
!1645 = !DIDerivedType(tag: DW_TAG_member, scope: !1643, file: !1605, line: 112, baseType: !1646, size: 64)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1643, file: !1605, line: 112, size: 64, elements: !1647)
!1647 = !{!1648, !1649}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1646, file: !1605, line: 114, baseType: !885, size: 16)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1646, file: !1605, line: 115, baseType: !1650, size: 48, offset: 16)
!1650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 48, elements: !1651)
!1651 = !{!1652}
!1652 = !DISubrange(count: 6)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1643, file: !1605, line: 121, baseType: !349, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1639, file: !1605, line: 123, baseType: !1655, size: 64, offset: 128)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1605, line: 96, flags: DIFlagFwdDecl)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1639, file: !1605, line: 124, baseType: !1658, size: 64, offset: 192)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1605, line: 102, size: 192, elements: !1660)
!1660 = !{!1661, !1662, !1663}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1659, file: !1605, line: 103, baseType: !390, size: 128, align: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1659, file: !1605, line: 104, baseType: !1256, size: 32, offset: 128)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1659, file: !1605, line: 105, baseType: !515, size: 8, offset: 160)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1639, file: !1605, line: 125, baseType: !215, size: 64, offset: 256)
!1665 = !DIDerivedType(tag: DW_TAG_member, scope: !1636, file: !1605, line: 241, baseType: !1666, size: 320)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1636, file: !1605, line: 241, size: 320, elements: !1667)
!1667 = !{!1668, !1669, !1670, !1671, !1672}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1666, file: !1605, line: 242, baseType: !349, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1666, file: !1605, line: 243, baseType: !349, size: 64, offset: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1666, file: !1605, line: 244, baseType: !1655, size: 64, offset: 128)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1666, file: !1605, line: 245, baseType: !1658, size: 64, offset: 192)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1666, file: !1605, line: 246, baseType: !299, size: 64, offset: 256)
!1673 = !DIDerivedType(tag: DW_TAG_member, scope: !1604, file: !1605, line: 254, baseType: !1674, size: 256, offset: 1344)
!1674 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1604, file: !1605, line: 254, size: 256, elements: !1675)
!1675 = !{!1676, !1682}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1674, file: !1605, line: 255, baseType: !1677, size: 256)
!1677 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1605, line: 128, size: 256, elements: !1678)
!1678 = !{!1679, !1680}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1677, file: !1605, line: 129, baseType: !233, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1677, file: !1605, line: 130, baseType: !1681, size: 256)
!1681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 256, elements: !1181)
!1682 = !DIDerivedType(tag: DW_TAG_member, scope: !1674, file: !1605, line: 256, baseType: !1683, size: 256)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1674, file: !1605, line: 256, size: 256, elements: !1684)
!1684 = !{!1685, !1686}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1683, file: !1605, line: 258, baseType: !244, size: 128)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1683, file: !1605, line: 259, baseType: !1687, size: 128, offset: 128)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1688, line: 22, size: 128, elements: !1689)
!1688 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1689 = !{!1690, !1693}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1687, file: !1688, line: 23, baseType: !1691, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1688, line: 23, flags: DIFlagFwdDecl)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1687, file: !1688, line: 24, baseType: !349, size: 64, offset: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1604, file: !1605, line: 274, baseType: !1695, size: 64, offset: 1600)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1605, line: 170, size: 192, elements: !1697)
!1697 = !{!1698, !1707, !1708}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1696, file: !1605, line: 171, baseType: !1699, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1605, line: 165, baseType: !1700)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!177, !1603, !1703, !1705, !1603}
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1656)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1677)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1696, file: !1605, line: 172, baseType: !1603, size: 64, offset: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1696, file: !1605, line: 173, baseType: !1655, size: 64, offset: 128)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1575, file: !1576, line: 138, baseType: !1603, size: 64, offset: 768)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1575, file: !1576, line: 139, baseType: !1603, size: 64, offset: 832)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1575, file: !1576, line: 140, baseType: !1603, size: 64, offset: 896)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1575, file: !1576, line: 145, baseType: !1713, size: 64, offset: 960)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1715, line: 13, size: 896, elements: !1716)
!1715 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1716 = !{!1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1714, file: !1715, line: 14, baseType: !1256, size: 32)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1714, file: !1715, line: 15, baseType: !773, size: 32, offset: 32)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1714, file: !1715, line: 16, baseType: !773, size: 32, offset: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1714, file: !1715, line: 21, baseType: !797, size: 64, offset: 128)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1714, file: !1715, line: 27, baseType: !349, size: 64, offset: 192)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1714, file: !1715, line: 28, baseType: !349, size: 64, offset: 256)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1714, file: !1715, line: 29, baseType: !797, size: 64, offset: 320)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1714, file: !1715, line: 32, baseType: !664, size: 128, offset: 384)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1714, file: !1715, line: 33, baseType: !460, size: 32, offset: 512)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1714, file: !1715, line: 37, baseType: !797, size: 64, offset: 576)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1714, file: !1715, line: 44, baseType: !1728, size: 256, offset: 640)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1729, line: 15, size: 256, elements: !1730)
!1729 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1730 = !{!1731, !1732, !1733, !1734, !1735, !1736, !1737}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1728, file: !1729, line: 16, baseType: !806)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1728, file: !1729, line: 18, baseType: !177, size: 32)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1728, file: !1729, line: 19, baseType: !177, size: 32, offset: 32)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1728, file: !1729, line: 20, baseType: !177, size: 32, offset: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1728, file: !1729, line: 21, baseType: !177, size: 32, offset: 96)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1728, file: !1729, line: 22, baseType: !349, size: 64, offset: 128)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1728, file: !1729, line: 23, baseType: !349, size: 64, offset: 192)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1575, file: !1576, line: 146, baseType: !1739, size: 64, offset: 1024)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !461, line: 18, flags: DIFlagFwdDecl)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1575, file: !1576, line: 147, baseType: !1742, size: 64, offset: 1088)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1576, line: 25, size: 64, elements: !1744)
!1744 = !{!1745, !1746, !1747}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1743, file: !1576, line: 26, baseType: !773, size: 32)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1743, file: !1576, line: 27, baseType: !177, size: 32, offset: 32)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1743, file: !1576, line: 28, baseType: !1748, offset: 64)
!1748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !468, elements: !1749)
!1749 = !{!1750}
!1750 = !DISubrange(count: 0)
!1751 = !DIDerivedType(tag: DW_TAG_member, scope: !1575, file: !1576, line: 149, baseType: !1752, size: 128, offset: 1152)
!1752 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1575, file: !1576, line: 149, size: 128, elements: !1753)
!1753 = !{!1754, !1755}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1752, file: !1576, line: 150, baseType: !177, size: 32)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1752, file: !1576, line: 151, baseType: !390, size: 128, align: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1243, file: !1244, line: 926, baseType: !1573, size: 64, offset: 8576)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1243, file: !1244, line: 929, baseType: !1573, size: 64, offset: 8640)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1243, file: !1244, line: 933, baseType: !1603, size: 64, offset: 8704)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1243, file: !1244, line: 943, baseType: !1760, size: 128, offset: 8768)
!1760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 128, elements: !1761)
!1761 = !{!1762}
!1762 = !DISubrange(count: 16)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1243, file: !1244, line: 945, baseType: !1764, size: 64, offset: 8896)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1244, line: 49, flags: DIFlagFwdDecl)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1243, file: !1244, line: 956, baseType: !1767, size: 64, offset: 8960)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1244, line: 45, flags: DIFlagFwdDecl)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1243, file: !1244, line: 959, baseType: !1770, size: 64, offset: 9024)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1244, line: 959, flags: DIFlagFwdDecl)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1243, file: !1244, line: 962, baseType: !1773, size: 64, offset: 9088)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1244, line: 66, flags: DIFlagFwdDecl)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1243, file: !1244, line: 966, baseType: !1776, size: 64, offset: 9152)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1778, line: 35, flags: DIFlagFwdDecl)
!1778 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1243, file: !1244, line: 969, baseType: !1780, size: 64, offset: 9216)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1782, line: 82, size: 7296, elements: !1783)
!1782 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1783 = !{!1784, !1785, !1786, !1787, !1788, !1789, !1790, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1819, !1828, !1829, !1831, !1832, !1833, !1836, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1866, !1867, !1874, !1875, !1876, !1877, !1878, !1879}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1781, file: !1782, line: 83, baseType: !1256, size: 32)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1781, file: !1782, line: 84, baseType: !773, size: 32, offset: 32)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1781, file: !1782, line: 85, baseType: !177, size: 32, offset: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1781, file: !1782, line: 86, baseType: !244, size: 128, offset: 128)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1781, file: !1782, line: 88, baseType: !1507, size: 128, offset: 256)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1781, file: !1782, line: 91, baseType: !1242, size: 64, offset: 384)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1781, file: !1782, line: 94, baseType: !1791, size: 192, offset: 448)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1792, line: 30, size: 192, elements: !1793)
!1792 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1793 = !{!1794, !1795}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1791, file: !1792, line: 31, baseType: !244, size: 128)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1791, file: !1792, line: 32, baseType: !1796, size: 64, offset: 128)
!1796 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1797, line: 25, baseType: !1798)
!1797 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1797, line: 23, size: 64, elements: !1799)
!1799 = !{!1800}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1798, file: !1797, line: 24, baseType: !1396, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1781, file: !1782, line: 97, baseType: !660, size: 64, offset: 640)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1781, file: !1782, line: 100, baseType: !177, size: 32, offset: 704)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1781, file: !1782, line: 106, baseType: !177, size: 32, offset: 736)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1781, file: !1782, line: 107, baseType: !1242, size: 64, offset: 768)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1781, file: !1782, line: 110, baseType: !177, size: 32, offset: 832)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1781, file: !1782, line: 111, baseType: !7, size: 32, offset: 864)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1781, file: !1782, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1781, file: !1782, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1781, file: !1782, line: 128, baseType: !177, size: 32, offset: 928)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1781, file: !1782, line: 129, baseType: !244, size: 128, offset: 960)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1781, file: !1782, line: 132, baseType: !1318, size: 512, offset: 1088)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1781, file: !1782, line: 133, baseType: !1326, size: 64, offset: 1600)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1781, file: !1782, line: 140, baseType: !1814, size: 256, offset: 1664)
!1814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1815, size: 256, elements: !1595)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1782, line: 38, size: 128, elements: !1816)
!1816 = !{!1817, !1818}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1815, file: !1782, line: 39, baseType: !446, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1815, file: !1782, line: 40, baseType: !446, size: 64, offset: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1781, file: !1782, line: 146, baseType: !1820, size: 192, offset: 1920)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1782, line: 66, size: 192, elements: !1821)
!1821 = !{!1822}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1820, file: !1782, line: 67, baseType: !1823, size: 192)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1782, line: 47, size: 192, elements: !1824)
!1824 = !{!1825, !1826, !1827}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1823, file: !1782, line: 48, baseType: !799, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1823, file: !1782, line: 49, baseType: !799, size: 64, offset: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1823, file: !1782, line: 50, baseType: !799, size: 64, offset: 128)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1781, file: !1782, line: 150, baseType: !1556, size: 640, offset: 2112)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1781, file: !1782, line: 153, baseType: !1830, size: 256, offset: 2752)
!1830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1497, size: 256, elements: !1181)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1781, file: !1782, line: 159, baseType: !1497, size: 64, offset: 3008)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1781, file: !1782, line: 162, baseType: !177, size: 32, offset: 3072)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1781, file: !1782, line: 164, baseType: !1834, size: 64, offset: 3136)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1782, line: 164, flags: DIFlagFwdDecl)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1781, file: !1782, line: 175, baseType: !1837, size: 32, offset: 3200)
!1837 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !413, line: 805, baseType: !1838)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !413, line: 798, size: 32, elements: !1839)
!1839 = !{!1840, !1841}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1838, file: !413, line: 803, baseType: !412, size: 32)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1838, file: !413, line: 804, baseType: !258, offset: 32)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1781, file: !1782, line: 176, baseType: !446, size: 64, offset: 3264)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1781, file: !1782, line: 176, baseType: !446, size: 64, offset: 3328)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1781, file: !1782, line: 176, baseType: !446, size: 64, offset: 3392)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1781, file: !1782, line: 176, baseType: !446, size: 64, offset: 3456)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1781, file: !1782, line: 177, baseType: !446, size: 64, offset: 3520)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1781, file: !1782, line: 178, baseType: !446, size: 64, offset: 3584)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1781, file: !1782, line: 179, baseType: !1544, size: 128, offset: 3648)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1781, file: !1782, line: 180, baseType: !349, size: 64, offset: 3776)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1781, file: !1782, line: 180, baseType: !349, size: 64, offset: 3840)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1781, file: !1782, line: 180, baseType: !349, size: 64, offset: 3904)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1781, file: !1782, line: 180, baseType: !349, size: 64, offset: 3968)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1781, file: !1782, line: 181, baseType: !349, size: 64, offset: 4032)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1781, file: !1782, line: 181, baseType: !349, size: 64, offset: 4096)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1781, file: !1782, line: 181, baseType: !349, size: 64, offset: 4160)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1781, file: !1782, line: 181, baseType: !349, size: 64, offset: 4224)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1781, file: !1782, line: 182, baseType: !349, size: 64, offset: 4288)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1781, file: !1782, line: 182, baseType: !349, size: 64, offset: 4352)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1781, file: !1782, line: 182, baseType: !349, size: 64, offset: 4416)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1781, file: !1782, line: 182, baseType: !349, size: 64, offset: 4480)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1781, file: !1782, line: 183, baseType: !349, size: 64, offset: 4544)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1781, file: !1782, line: 183, baseType: !349, size: 64, offset: 4608)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1781, file: !1782, line: 184, baseType: !1864, offset: 4672)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1865, line: 12, elements: !272)
!1865 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1781, file: !1782, line: 192, baseType: !448, size: 64, offset: 4672)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1781, file: !1782, line: 203, baseType: !1868, size: 2048, offset: 4736)
!1868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1869, size: 2048, elements: !1761)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1870, line: 43, size: 128, elements: !1871)
!1870 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1871 = !{!1872, !1873}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1869, file: !1870, line: 44, baseType: !348, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1869, file: !1870, line: 45, baseType: !348, size: 64, offset: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1781, file: !1782, line: 220, baseType: !515, size: 8, offset: 6784)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1781, file: !1782, line: 221, baseType: !1231, size: 16, offset: 6800)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1781, file: !1782, line: 222, baseType: !1231, size: 16, offset: 6816)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1781, file: !1782, line: 224, baseType: !1000, size: 64, offset: 6848)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1781, file: !1782, line: 227, baseType: !1199, size: 192, offset: 6912)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1781, file: !1782, line: 233, baseType: !1199, size: 192, offset: 7104)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1243, file: !1244, line: 970, baseType: !1881, size: 64, offset: 9280)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1782, line: 20, size: 16576, elements: !1883)
!1883 = !{!1884, !1885, !1886, !1887}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1882, file: !1782, line: 21, baseType: !258)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1882, file: !1782, line: 22, baseType: !1256, size: 32)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1882, file: !1782, line: 23, baseType: !1507, size: 128, offset: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1882, file: !1782, line: 24, baseType: !1888, size: 16384, offset: 192)
!1888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1889, size: 16384, elements: !304)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1792, line: 49, size: 256, elements: !1890)
!1890 = !{!1891}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1889, file: !1792, line: 50, baseType: !1892, size: 256)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1792, line: 35, size: 256, elements: !1893)
!1893 = !{!1894, !1901, !1902, !1906}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1892, file: !1792, line: 37, baseType: !1895, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1896, line: 19, baseType: !1897)
!1896 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1896, line: 18, baseType: !1899)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{null, !177}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1892, file: !1792, line: 38, baseType: !349, size: 64, offset: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1892, file: !1792, line: 44, baseType: !1903, size: 64, offset: 128)
!1903 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1896, line: 22, baseType: !1904)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1896, line: 21, baseType: !184)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1892, file: !1792, line: 46, baseType: !1796, size: 64, offset: 192)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1243, file: !1244, line: 971, baseType: !1796, size: 64, offset: 9344)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1243, file: !1244, line: 972, baseType: !1796, size: 64, offset: 9408)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1243, file: !1244, line: 974, baseType: !1796, size: 64, offset: 9472)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1243, file: !1244, line: 975, baseType: !1791, size: 192, offset: 9536)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1243, file: !1244, line: 976, baseType: !349, size: 64, offset: 9728)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1243, file: !1244, line: 977, baseType: !346, size: 64, offset: 9792)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1243, file: !1244, line: 978, baseType: !7, size: 32, offset: 9856)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1243, file: !1244, line: 980, baseType: !393, size: 64, offset: 9920)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1243, file: !1244, line: 989, baseType: !1916, size: 128, offset: 9984)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1917, line: 35, size: 128, elements: !1918)
!1917 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1918 = !{!1919, !1920, !1921}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1916, file: !1917, line: 36, baseType: !177, size: 32)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1916, file: !1917, line: 37, baseType: !773, size: 32, offset: 32)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1916, file: !1917, line: 38, baseType: !1922, size: 64, offset: 64)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1917, line: 23, flags: DIFlagFwdDecl)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1243, file: !1244, line: 992, baseType: !446, size: 64, offset: 10112)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1243, file: !1244, line: 993, baseType: !446, size: 64, offset: 10176)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1243, file: !1244, line: 996, baseType: !258, offset: 10240)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1243, file: !1244, line: 999, baseType: !806, offset: 10240)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1243, file: !1244, line: 1001, baseType: !1929, size: 64, offset: 10240)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1244, line: 636, size: 64, elements: !1930)
!1930 = !{!1931}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1929, file: !1244, line: 637, baseType: !1932, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1243, file: !1244, line: 1005, baseType: !778, size: 128, offset: 10304)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1243, file: !1244, line: 1007, baseType: !1242, size: 64, offset: 10432)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1243, file: !1244, line: 1009, baseType: !1936, size: 64, offset: 10496)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1244, line: 1009, flags: DIFlagFwdDecl)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1243, file: !1244, line: 1043, baseType: !233, size: 64, offset: 10560)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1243, file: !1244, line: 1046, baseType: !1940, size: 64, offset: 10624)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1244, line: 41, flags: DIFlagFwdDecl)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1243, file: !1244, line: 1050, baseType: !1943, size: 64, offset: 10688)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1244, line: 42, flags: DIFlagFwdDecl)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1243, file: !1244, line: 1054, baseType: !1946, size: 64, offset: 10752)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1244, line: 55, flags: DIFlagFwdDecl)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1243, file: !1244, line: 1056, baseType: !1949, size: 64, offset: 10816)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1244, line: 40, flags: DIFlagFwdDecl)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1243, file: !1244, line: 1058, baseType: !1952, size: 64, offset: 10880)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1954, line: 99, size: 704, elements: !1955)
!1954 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1955 = !{!1956, !1957, !1958, !1959, !1960, !1961, !1962, !1981, !1982}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1953, file: !1954, line: 100, baseType: !797, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1953, file: !1954, line: 101, baseType: !773, size: 32, offset: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1953, file: !1954, line: 102, baseType: !773, size: 32, offset: 96)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1953, file: !1954, line: 105, baseType: !258, offset: 128)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1953, file: !1954, line: 107, baseType: !341, size: 16, offset: 128)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1953, file: !1954, line: 109, baseType: !764, size: 128, offset: 192)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1953, file: !1954, line: 110, baseType: !1963, size: 64, offset: 320)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1954, line: 73, size: 448, elements: !1965)
!1965 = !{!1966, !1969, !1970, !1975, !1980}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1964, file: !1954, line: 74, baseType: !1967, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1954, line: 74, flags: DIFlagFwdDecl)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1964, file: !1954, line: 75, baseType: !1952, size: 64, offset: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, scope: !1964, file: !1954, line: 83, baseType: !1971, size: 128, offset: 128)
!1971 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1964, file: !1954, line: 83, size: 128, elements: !1972)
!1972 = !{!1973, !1974}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1971, file: !1954, line: 84, baseType: !244, size: 128)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1971, file: !1954, line: 85, baseType: !961, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, scope: !1964, file: !1954, line: 87, baseType: !1976, size: 128, offset: 256)
!1976 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1964, file: !1954, line: 87, size: 128, elements: !1977)
!1977 = !{!1978, !1979}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1976, file: !1954, line: 88, baseType: !664, size: 128)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1976, file: !1954, line: 89, baseType: !390, size: 128, align: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1964, file: !1954, line: 92, baseType: !7, size: 32, offset: 384)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1953, file: !1954, line: 111, baseType: !660, size: 64, offset: 384)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1953, file: !1954, line: 113, baseType: !1983, size: 256, offset: 448)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1984, line: 102, size: 256, elements: !1985)
!1984 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1985 = !{!1986, !1987, !1988}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1983, file: !1984, line: 103, baseType: !797, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1983, file: !1984, line: 104, baseType: !244, size: 128, offset: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1983, file: !1984, line: 105, baseType: !1989, size: 64, offset: 192)
!1989 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1984, line: 21, baseType: !1990)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{null, !1993}
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1243, file: !1244, line: 1061, baseType: !1995, size: 64, offset: 10944)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1244, line: 43, flags: DIFlagFwdDecl)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1243, file: !1244, line: 1064, baseType: !349, size: 64, offset: 11008)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1243, file: !1244, line: 1065, baseType: !1999, size: 64, offset: 11072)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1792, line: 14, baseType: !2001)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1792, line: 12, size: 384, elements: !2002)
!2002 = !{!2003}
!2003 = !DIDerivedType(tag: DW_TAG_member, scope: !2001, file: !1792, line: 13, baseType: !2004, size: 384)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2001, file: !1792, line: 13, size: 384, elements: !2005)
!2005 = !{!2006, !2007, !2008, !2009}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2004, file: !1792, line: 13, baseType: !177, size: 32)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2004, file: !1792, line: 13, baseType: !177, size: 32, offset: 32)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2004, file: !1792, line: 13, baseType: !177, size: 32, offset: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2004, file: !1792, line: 13, baseType: !2010, size: 256, offset: 128)
!2010 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2011, line: 32, size: 256, elements: !2012)
!2011 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2012 = !{!2013, !2018, !2031, !2037, !2046, !2066, !2071}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2010, file: !2011, line: 37, baseType: !2014, size: 64)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2010, file: !2011, line: 34, size: 64, elements: !2015)
!2015 = !{!2016, !2017}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2014, file: !2011, line: 35, baseType: !1486, size: 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2014, file: !2011, line: 36, baseType: !466, size: 32, offset: 32)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2010, file: !2011, line: 45, baseType: !2019, size: 192)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2010, file: !2011, line: 40, size: 192, elements: !2020)
!2020 = !{!2021, !2023, !2024, !2030}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2019, file: !2011, line: 41, baseType: !2022, size: 32)
!2022 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !332, line: 95, baseType: !177)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2019, file: !2011, line: 42, baseType: !177, size: 32, offset: 32)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2019, file: !2011, line: 43, baseType: !2025, size: 64, offset: 64)
!2025 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2011, line: 11, baseType: !2026)
!2026 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2011, line: 8, size: 64, elements: !2027)
!2027 = !{!2028, !2029}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2026, file: !2011, line: 9, baseType: !177, size: 32)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2026, file: !2011, line: 10, baseType: !233, size: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2019, file: !2011, line: 44, baseType: !177, size: 32, offset: 128)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2010, file: !2011, line: 52, baseType: !2032, size: 128)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2010, file: !2011, line: 48, size: 128, elements: !2033)
!2033 = !{!2034, !2035, !2036}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2032, file: !2011, line: 49, baseType: !1486, size: 32)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2032, file: !2011, line: 50, baseType: !466, size: 32, offset: 32)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2032, file: !2011, line: 51, baseType: !2025, size: 64, offset: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2010, file: !2011, line: 61, baseType: !2038, size: 256)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2010, file: !2011, line: 55, size: 256, elements: !2039)
!2039 = !{!2040, !2041, !2042, !2043, !2045}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2038, file: !2011, line: 56, baseType: !1486, size: 32)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2038, file: !2011, line: 57, baseType: !466, size: 32, offset: 32)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2038, file: !2011, line: 58, baseType: !177, size: 32, offset: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2038, file: !2011, line: 59, baseType: !2044, size: 64, offset: 128)
!2044 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !332, line: 94, baseType: !333)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2038, file: !2011, line: 60, baseType: !2044, size: 64, offset: 192)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2010, file: !2011, line: 95, baseType: !2047, size: 256)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2010, file: !2011, line: 64, size: 256, elements: !2048)
!2048 = !{!2049, !2050}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2047, file: !2011, line: 65, baseType: !233, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, scope: !2047, file: !2011, line: 77, baseType: !2051, size: 192, offset: 64)
!2051 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2047, file: !2011, line: 77, size: 192, elements: !2052)
!2052 = !{!2053, !2054, !2061}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2051, file: !2011, line: 82, baseType: !1231, size: 16)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2051, file: !2011, line: 88, baseType: !2055, size: 192)
!2055 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2051, file: !2011, line: 84, size: 192, elements: !2056)
!2056 = !{!2057, !2059, !2060}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2055, file: !2011, line: 85, baseType: !2058, size: 64)
!2058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 64, elements: !1356)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2055, file: !2011, line: 86, baseType: !233, size: 64, offset: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2055, file: !2011, line: 87, baseType: !233, size: 64, offset: 128)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2051, file: !2011, line: 93, baseType: !2062, size: 96)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2051, file: !2011, line: 90, size: 96, elements: !2063)
!2063 = !{!2064, !2065}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2062, file: !2011, line: 91, baseType: !2058, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2062, file: !2011, line: 92, baseType: !442, size: 32, offset: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2010, file: !2011, line: 101, baseType: !2067, size: 128)
!2067 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2010, file: !2011, line: 98, size: 128, elements: !2068)
!2068 = !{!2069, !2070}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2067, file: !2011, line: 99, baseType: !334, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2067, file: !2011, line: 100, baseType: !177, size: 32, offset: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2010, file: !2011, line: 108, baseType: !2072, size: 128)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2010, file: !2011, line: 104, size: 128, elements: !2073)
!2073 = !{!2074, !2075, !2076}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2072, file: !2011, line: 105, baseType: !233, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2072, file: !2011, line: 106, baseType: !177, size: 32, offset: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2072, file: !2011, line: 107, baseType: !7, size: 32, offset: 96)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1243, file: !1244, line: 1067, baseType: !1864, offset: 11136)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1243, file: !1244, line: 1099, baseType: !2079, size: 64, offset: 11136)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1244, line: 56, flags: DIFlagFwdDecl)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1243, file: !1244, line: 1103, baseType: !244, size: 128, offset: 11200)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1243, file: !1244, line: 1104, baseType: !2083, size: 64, offset: 11328)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1244, line: 46, flags: DIFlagFwdDecl)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1243, file: !1244, line: 1105, baseType: !1199, size: 192, offset: 11392)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1243, file: !1244, line: 1106, baseType: !7, size: 32, offset: 11584)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1243, file: !1244, line: 1109, baseType: !2088, size: 128, offset: 11648)
!2088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2089, size: 128, elements: !1595)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1244, line: 51, flags: DIFlagFwdDecl)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1243, file: !1244, line: 1110, baseType: !1199, size: 192, offset: 11776)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1243, file: !1244, line: 1111, baseType: !244, size: 128, offset: 11968)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1243, file: !1244, line: 1173, baseType: !2094, size: 64, offset: 12096)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2096, line: 62, size: 256, align: 256, elements: !2097)
!2096 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2097 = !{!2098, !2099, !2100, !2105}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2095, file: !2096, line: 75, baseType: !442, size: 32)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2095, file: !2096, line: 90, baseType: !442, size: 32, offset: 32)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2095, file: !2096, line: 124, baseType: !2101, size: 64, offset: 64)
!2101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2095, file: !2096, line: 109, size: 64, elements: !2102)
!2102 = !{!2103, !2104}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2101, file: !2096, line: 110, baseType: !447, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2101, file: !2096, line: 112, baseType: !447, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2095, file: !2096, line: 144, baseType: !442, size: 32, offset: 128)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1243, file: !1244, line: 1174, baseType: !440, size: 32, offset: 12160)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1243, file: !1244, line: 1179, baseType: !349, size: 64, offset: 12224)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1243, file: !1244, line: 1182, baseType: !2109, size: 128, offset: 12288)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1177, line: 76, size: 128, elements: !2110)
!2110 = !{!2111, !2116, !2117}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2109, file: !1177, line: 85, baseType: !2112, size: 64)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2113, line: 7, size: 64, elements: !2114)
!2113 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2114 = !{!2115}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2112, file: !2113, line: 12, baseType: !1393, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2109, file: !1177, line: 88, baseType: !515, size: 8, offset: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2109, file: !1177, line: 95, baseType: !515, size: 8, offset: 72)
!2118 = !DIDerivedType(tag: DW_TAG_member, scope: !1243, file: !1244, line: 1184, baseType: !2119, size: 128, offset: 12416)
!2119 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1243, file: !1244, line: 1184, size: 128, elements: !2120)
!2120 = !{!2121, !2122}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2119, file: !1244, line: 1185, baseType: !1256, size: 32)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2119, file: !1244, line: 1186, baseType: !390, size: 128, align: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1243, file: !1244, line: 1190, baseType: !2124, size: 64, offset: 12544)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1244, line: 53, flags: DIFlagFwdDecl)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1243, file: !1244, line: 1192, baseType: !2127, size: 128, offset: 12608)
!2127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1177, line: 64, size: 128, elements: !2128)
!2128 = !{!2129, !2130, !2131}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2127, file: !1177, line: 65, baseType: !746, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2127, file: !1177, line: 67, baseType: !442, size: 32, offset: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2127, file: !1177, line: 68, baseType: !442, size: 32, offset: 96)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1243, file: !1244, line: 1206, baseType: !177, size: 32, offset: 12736)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1243, file: !1244, line: 1207, baseType: !177, size: 32, offset: 12768)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1243, file: !1244, line: 1209, baseType: !349, size: 64, offset: 12800)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1243, file: !1244, line: 1219, baseType: !446, size: 64, offset: 12864)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1243, file: !1244, line: 1220, baseType: !446, size: 64, offset: 12928)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1243, file: !1244, line: 1317, baseType: !177, size: 32, offset: 12992)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1243, file: !1244, line: 1319, baseType: !1242, size: 64, offset: 13056)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1243, file: !1244, line: 1322, baseType: !2140, size: 64, offset: 13120)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2142, line: 56, size: 512, elements: !2143)
!2142 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2143 = !{!2144, !2145, !2146, !2147, !2148, !2149, !2150, !2152}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2141, file: !2142, line: 57, baseType: !2140, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2141, file: !2142, line: 58, baseType: !233, size: 64, offset: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2141, file: !2142, line: 59, baseType: !349, size: 64, offset: 128)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2141, file: !2142, line: 60, baseType: !349, size: 64, offset: 192)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2141, file: !2142, line: 61, baseType: !846, size: 64, offset: 256)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2141, file: !2142, line: 62, baseType: !7, size: 32, offset: 320)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2141, file: !2142, line: 63, baseType: !2151, size: 64, offset: 384)
!2151 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !245, line: 153, baseType: !446)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2141, file: !2142, line: 64, baseType: !2153, size: 64, offset: 448)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1243, file: !1244, line: 1326, baseType: !1256, size: 32, offset: 13184)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1243, file: !1244, line: 1342, baseType: !233, size: 64, offset: 13248)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1243, file: !1244, line: 1343, baseType: !447, size: 64, offset: 13312)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1243, file: !1244, line: 1344, baseType: !446, size: 64, offset: 13376)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1243, file: !1244, line: 1345, baseType: !447, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1243, file: !1244, line: 1346, baseType: !447, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1243, file: !1244, line: 1347, baseType: !447, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1243, file: !1244, line: 1348, baseType: !390, size: 128, align: 64, offset: 13504)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1243, file: !1244, line: 1358, baseType: !2164, size: 34816, offset: 13824)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2165, line: 485, size: 34816, elements: !2166)
!2165 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2166 = !{!2167, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2196, !2197, !2198, !2199, !2200, !2201, !2204, !2205, !2206}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2164, file: !2165, line: 487, baseType: !2168, size: 192)
!2168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2169, size: 192, elements: !300)
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2170, line: 16, size: 64, elements: !2171)
!2170 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2171 = !{!2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2169, file: !2170, line: 17, baseType: !885, size: 16)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2169, file: !2170, line: 18, baseType: !885, size: 16, offset: 16)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2169, file: !2170, line: 19, baseType: !885, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2169, file: !2170, line: 19, baseType: !885, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2169, file: !2170, line: 19, baseType: !885, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2169, file: !2170, line: 19, baseType: !885, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2169, file: !2170, line: 19, baseType: !885, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2169, file: !2170, line: 20, baseType: !885, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2169, file: !2170, line: 20, baseType: !885, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2169, file: !2170, line: 20, baseType: !885, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2169, file: !2170, line: 20, baseType: !885, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2169, file: !2170, line: 20, baseType: !885, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2169, file: !2170, line: 20, baseType: !885, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2164, file: !2165, line: 491, baseType: !349, size: 64, offset: 192)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2164, file: !2165, line: 495, baseType: !341, size: 16, offset: 256)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2164, file: !2165, line: 496, baseType: !341, size: 16, offset: 272)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2164, file: !2165, line: 497, baseType: !341, size: 16, offset: 288)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2164, file: !2165, line: 498, baseType: !341, size: 16, offset: 304)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2164, file: !2165, line: 502, baseType: !349, size: 64, offset: 320)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2164, file: !2165, line: 503, baseType: !349, size: 64, offset: 384)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2164, file: !2165, line: 514, baseType: !2193, size: 256, offset: 448)
!2193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2194, size: 256, elements: !1181)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2165, line: 483, flags: DIFlagFwdDecl)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2164, file: !2165, line: 516, baseType: !349, size: 64, offset: 704)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2164, file: !2165, line: 518, baseType: !349, size: 64, offset: 768)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2164, file: !2165, line: 520, baseType: !349, size: 64, offset: 832)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2164, file: !2165, line: 521, baseType: !349, size: 64, offset: 896)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2164, file: !2165, line: 522, baseType: !349, size: 64, offset: 960)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2164, file: !2165, line: 528, baseType: !2202, size: 64, offset: 1024)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2165, line: 10, flags: DIFlagFwdDecl)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2164, file: !2165, line: 535, baseType: !349, size: 64, offset: 1088)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2164, file: !2165, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2164, file: !2165, line: 540, baseType: !2207, size: 33280, offset: 1536)
!2207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2208, line: 317, size: 33280, elements: !2209)
!2208 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2209 = !{!2210, !2211, !2212}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2207, file: !2208, line: 330, baseType: !7, size: 32)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2207, file: !2208, line: 337, baseType: !349, size: 64, offset: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2207, file: !2208, line: 348, baseType: !2213, size: 32768, offset: 512)
!2213 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2208, line: 304, size: 32768, elements: !2214)
!2214 = !{!2215, !2230, !2269, !2319, !2332}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2213, file: !2208, line: 305, baseType: !2216, size: 896)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2208, line: 12, size: 896, elements: !2217)
!2217 = !{!2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2229}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2216, file: !2208, line: 13, baseType: !440, size: 32)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2216, file: !2208, line: 14, baseType: !440, size: 32, offset: 32)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2216, file: !2208, line: 15, baseType: !440, size: 32, offset: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2216, file: !2208, line: 16, baseType: !440, size: 32, offset: 96)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2216, file: !2208, line: 17, baseType: !440, size: 32, offset: 128)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2216, file: !2208, line: 18, baseType: !440, size: 32, offset: 160)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2216, file: !2208, line: 19, baseType: !440, size: 32, offset: 192)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2216, file: !2208, line: 22, baseType: !2226, size: 640, offset: 224)
!2226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, size: 640, elements: !2227)
!2227 = !{!2228}
!2228 = !DISubrange(count: 20)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2216, file: !2208, line: 25, baseType: !440, size: 32, offset: 864)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2213, file: !2208, line: 306, baseType: !2231, size: 4096, align: 128)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2208, line: 34, size: 4096, align: 128, elements: !2232)
!2232 = !{!2233, !2234, !2235, !2236, !2237, !2252, !2253, !2254, !2258, !2260, !2264}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2231, file: !2208, line: 35, baseType: !885, size: 16)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2231, file: !2208, line: 36, baseType: !885, size: 16, offset: 16)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2231, file: !2208, line: 37, baseType: !885, size: 16, offset: 32)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2231, file: !2208, line: 38, baseType: !885, size: 16, offset: 48)
!2237 = !DIDerivedType(tag: DW_TAG_member, scope: !2231, file: !2208, line: 39, baseType: !2238, size: 128, offset: 64)
!2238 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2231, file: !2208, line: 39, size: 128, elements: !2239)
!2239 = !{!2240, !2245}
!2240 = !DIDerivedType(tag: DW_TAG_member, scope: !2238, file: !2208, line: 40, baseType: !2241, size: 128)
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2238, file: !2208, line: 40, size: 128, elements: !2242)
!2242 = !{!2243, !2244}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2241, file: !2208, line: 41, baseType: !446, size: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2241, file: !2208, line: 42, baseType: !446, size: 64, offset: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, scope: !2238, file: !2208, line: 44, baseType: !2246, size: 128)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2238, file: !2208, line: 44, size: 128, elements: !2247)
!2247 = !{!2248, !2249, !2250, !2251}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2246, file: !2208, line: 45, baseType: !440, size: 32)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2246, file: !2208, line: 46, baseType: !440, size: 32, offset: 32)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2246, file: !2208, line: 47, baseType: !440, size: 32, offset: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2246, file: !2208, line: 48, baseType: !440, size: 32, offset: 96)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2231, file: !2208, line: 51, baseType: !440, size: 32, offset: 192)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2231, file: !2208, line: 52, baseType: !440, size: 32, offset: 224)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2231, file: !2208, line: 55, baseType: !2255, size: 1024, offset: 256)
!2255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, size: 1024, elements: !2256)
!2256 = !{!2257}
!2257 = !DISubrange(count: 32)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2231, file: !2208, line: 58, baseType: !2259, size: 2048, offset: 1280)
!2259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, size: 2048, elements: !304)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2231, file: !2208, line: 60, baseType: !2261, size: 384, offset: 3328)
!2261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, size: 384, elements: !2262)
!2262 = !{!2263}
!2263 = !DISubrange(count: 12)
!2264 = !DIDerivedType(tag: DW_TAG_member, scope: !2231, file: !2208, line: 62, baseType: !2265, size: 384, offset: 3712)
!2265 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2231, file: !2208, line: 62, size: 384, elements: !2266)
!2266 = !{!2267, !2268}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2265, file: !2208, line: 63, baseType: !2261, size: 384)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2265, file: !2208, line: 64, baseType: !2261, size: 384)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2213, file: !2208, line: 307, baseType: !2270, size: 1088)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2208, line: 79, size: 1088, elements: !2271)
!2271 = !{!2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2318}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2270, file: !2208, line: 80, baseType: !440, size: 32)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2270, file: !2208, line: 81, baseType: !440, size: 32, offset: 32)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2270, file: !2208, line: 82, baseType: !440, size: 32, offset: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2270, file: !2208, line: 83, baseType: !440, size: 32, offset: 96)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2270, file: !2208, line: 84, baseType: !440, size: 32, offset: 128)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2270, file: !2208, line: 85, baseType: !440, size: 32, offset: 160)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2270, file: !2208, line: 86, baseType: !440, size: 32, offset: 192)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2270, file: !2208, line: 88, baseType: !2226, size: 640, offset: 224)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2270, file: !2208, line: 89, baseType: !1378, size: 8, offset: 864)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2270, file: !2208, line: 90, baseType: !1378, size: 8, offset: 872)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2270, file: !2208, line: 91, baseType: !1378, size: 8, offset: 880)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2270, file: !2208, line: 92, baseType: !1378, size: 8, offset: 888)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2270, file: !2208, line: 93, baseType: !1378, size: 8, offset: 896)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2270, file: !2208, line: 94, baseType: !1378, size: 8, offset: 904)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2270, file: !2208, line: 95, baseType: !2287, size: 64, offset: 960)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2289, line: 11, size: 128, elements: !2290)
!2289 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2290 = !{!2291, !2292}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2288, file: !2289, line: 12, baseType: !334, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2288, file: !2289, line: 13, baseType: !2293, size: 64, offset: 64)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2295, line: 56, size: 1344, elements: !2296)
!2295 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2296 = !{!2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2294, file: !2295, line: 61, baseType: !349, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2294, file: !2295, line: 62, baseType: !349, size: 64, offset: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2294, file: !2295, line: 63, baseType: !349, size: 64, offset: 128)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2294, file: !2295, line: 64, baseType: !349, size: 64, offset: 192)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2294, file: !2295, line: 65, baseType: !349, size: 64, offset: 256)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2294, file: !2295, line: 66, baseType: !349, size: 64, offset: 320)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2294, file: !2295, line: 68, baseType: !349, size: 64, offset: 384)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2294, file: !2295, line: 69, baseType: !349, size: 64, offset: 448)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2294, file: !2295, line: 70, baseType: !349, size: 64, offset: 512)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2294, file: !2295, line: 71, baseType: !349, size: 64, offset: 576)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2294, file: !2295, line: 72, baseType: !349, size: 64, offset: 640)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2294, file: !2295, line: 73, baseType: !349, size: 64, offset: 704)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2294, file: !2295, line: 74, baseType: !349, size: 64, offset: 768)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2294, file: !2295, line: 75, baseType: !349, size: 64, offset: 832)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2294, file: !2295, line: 76, baseType: !349, size: 64, offset: 896)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2294, file: !2295, line: 81, baseType: !349, size: 64, offset: 960)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2294, file: !2295, line: 83, baseType: !349, size: 64, offset: 1024)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2294, file: !2295, line: 84, baseType: !349, size: 64, offset: 1088)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2294, file: !2295, line: 85, baseType: !349, size: 64, offset: 1152)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2294, file: !2295, line: 86, baseType: !349, size: 64, offset: 1216)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2294, file: !2295, line: 87, baseType: !349, size: 64, offset: 1280)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2270, file: !2208, line: 96, baseType: !440, size: 32, offset: 1024)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2213, file: !2208, line: 308, baseType: !2320, size: 4608, align: 512)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2208, line: 289, size: 4608, align: 512, elements: !2321)
!2321 = !{!2322, !2323, !2330}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2320, file: !2208, line: 290, baseType: !2231, size: 4096, align: 128)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2320, file: !2208, line: 291, baseType: !2324, size: 512, offset: 4096)
!2324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2208, line: 268, size: 512, elements: !2325)
!2325 = !{!2326, !2327, !2328}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2324, file: !2208, line: 269, baseType: !446, size: 64)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2324, file: !2208, line: 270, baseType: !446, size: 64, offset: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2324, file: !2208, line: 271, baseType: !2329, size: 384, offset: 128)
!2329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 384, elements: !1651)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2320, file: !2208, line: 292, baseType: !2331, offset: 4608)
!2331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1378, elements: !1749)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2213, file: !2208, line: 309, baseType: !2333, size: 32768)
!2333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1378, size: 32768, elements: !2334)
!2334 = !{!2335}
!2335 = !DISubrange(count: 4096)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1239, file: !748, line: 378, baseType: !2337, size: 64, offset: 64)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1235, file: !748, line: 384, baseType: !1528, size: 192, offset: 192)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1004, file: !748, line: 500, baseType: !258, offset: 6656)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1004, file: !748, line: 501, baseType: !2341, size: 64, offset: 6656)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !748, line: 387, flags: DIFlagFwdDecl)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1004, file: !748, line: 516, baseType: !1739, size: 64, offset: 6720)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1004, file: !748, line: 519, baseType: !377, size: 64, offset: 6784)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1004, file: !748, line: 521, baseType: !2346, size: 64, offset: 6848)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !748, line: 521, flags: DIFlagFwdDecl)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1004, file: !748, line: 545, baseType: !773, size: 32, offset: 6912)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1004, file: !748, line: 548, baseType: !515, size: 8, offset: 6944)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1004, file: !748, line: 550, baseType: !2351, offset: 6952)
!2351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2352, line: 142, elements: !272)
!2352 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1004, file: !748, line: 554, baseType: !1983, size: 256, offset: 6976)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1004, file: !748, line: 557, baseType: !440, size: 32, offset: 7232)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1001, file: !748, line: 565, baseType: !2356, offset: 7296)
!2356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, elements: !2357)
!2357 = !{!2358}
!2358 = !DISubrange(count: -1)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !997, file: !748, line: 151, baseType: !773, size: 32)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !990, file: !748, line: 156, baseType: !258, offset: 256)
!2361 = !DIDerivedType(tag: DW_TAG_member, scope: !752, file: !748, line: 159, baseType: !2362, size: 128)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !752, file: !748, line: 159, size: 128, elements: !2363)
!2363 = !{!2364, !2428}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2362, file: !748, line: 161, baseType: !2365, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2367)
!2367 = !{!2368, !2378, !2399, !2400, !2401, !2402, !2403, !2415, !2416, !2417}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2366, file: !31, line: 111, baseType: !2369, size: 384)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2370)
!2370 = !{!2371, !2373, !2374, !2375, !2376, !2377}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2369, file: !31, line: 20, baseType: !2372, size: 64)
!2372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !349)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2369, file: !31, line: 21, baseType: !2372, size: 64, offset: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2369, file: !31, line: 22, baseType: !2372, size: 64, offset: 128)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2369, file: !31, line: 23, baseType: !349, size: 64, offset: 192)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2369, file: !31, line: 24, baseType: !349, size: 64, offset: 256)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2369, file: !31, line: 25, baseType: !349, size: 64, offset: 320)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2366, file: !31, line: 112, baseType: !2379, size: 64, offset: 384)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2381, line: 105, size: 128, elements: !2382)
!2381 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2382 = !{!2383, !2384}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2380, file: !2381, line: 110, baseType: !349, size: 64)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2380, file: !2381, line: 118, baseType: !2385, size: 64, offset: 64)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2381, line: 95, size: 448, elements: !2387)
!2387 = !{!2388, !2389, !2394, !2395, !2396, !2397, !2398}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2386, file: !2381, line: 96, baseType: !797, size: 64)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2386, file: !2381, line: 97, baseType: !2390, size: 64, offset: 64)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2381, line: 60, baseType: !2392)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{null, !2379}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2386, file: !2381, line: 98, baseType: !2390, size: 64, offset: 128)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2386, file: !2381, line: 99, baseType: !515, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2386, file: !2381, line: 100, baseType: !515, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2386, file: !2381, line: 101, baseType: !390, size: 128, align: 64, offset: 256)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2386, file: !2381, line: 102, baseType: !2379, size: 64, offset: 384)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2366, file: !31, line: 113, baseType: !2380, size: 128, offset: 448)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2366, file: !31, line: 114, baseType: !1528, size: 192, offset: 576)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2366, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2366, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2366, file: !31, line: 117, baseType: !2404, size: 64, offset: 832)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2406)
!2406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2407)
!2407 = !{!2408, !2409, !2413, !2414}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2406, file: !31, line: 73, baseType: !866, size: 64)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2406, file: !31, line: 78, baseType: !2410, size: 64, offset: 64)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{null, !2365}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2406, file: !31, line: 83, baseType: !2410, size: 64, offset: 128)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2406, file: !31, line: 89, baseType: !1053, size: 64, offset: 192)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2366, file: !31, line: 118, baseType: !233, size: 64, offset: 896)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2366, file: !31, line: 119, baseType: !177, size: 32, offset: 960)
!2417 = !DIDerivedType(tag: DW_TAG_member, scope: !2366, file: !31, line: 120, baseType: !2418, size: 128, offset: 1024)
!2418 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2366, file: !31, line: 120, size: 128, elements: !2419)
!2419 = !{!2420, !2426}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2418, file: !31, line: 121, baseType: !2421, size: 128)
!2421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2422, line: 6, size: 128, elements: !2423)
!2422 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2423 = !{!2424, !2425}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2421, file: !2422, line: 7, baseType: !446, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2421, file: !2422, line: 8, baseType: !446, size: 64, offset: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2418, file: !31, line: 122, baseType: !2427)
!2427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2421, elements: !1749)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2362, file: !748, line: 162, baseType: !233, size: 64, offset: 64)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !752, file: !748, line: 176, baseType: !390, size: 128, align: 64)
!2430 = !DIDerivedType(tag: DW_TAG_member, scope: !747, file: !748, line: 179, baseType: !2431, size: 32, offset: 384)
!2431 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !747, file: !748, line: 179, size: 32, elements: !2432)
!2432 = !{!2433, !2434, !2435, !2436}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2431, file: !748, line: 184, baseType: !773, size: 32)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2431, file: !748, line: 192, baseType: !7, size: 32)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2431, file: !748, line: 194, baseType: !7, size: 32)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2431, file: !748, line: 195, baseType: !177, size: 32)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !747, file: !748, line: 199, baseType: !773, size: 32, offset: 416)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !682, file: !44, line: 1964, baseType: !2439, size: 64, offset: 1344)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{!334, !624, !2442}
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2444, line: 12, size: 256, elements: !2445)
!2444 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2445 = !{!2446, !2447, !2448, !2449, !2450}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2443, file: !2444, line: 13, baseType: !769, size: 32)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2443, file: !2444, line: 16, baseType: !177, size: 32, offset: 32)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2443, file: !2444, line: 23, baseType: !349, size: 64, offset: 64)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2443, file: !2444, line: 30, baseType: !349, size: 64, offset: 128)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2443, file: !2444, line: 33, baseType: !2451, size: 64, offset: 192)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !748, line: 27, flags: DIFlagFwdDecl)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !682, file: !44, line: 1966, baseType: !2439, size: 64, offset: 1408)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !625, file: !44, line: 1424, baseType: !2455, size: 64, offset: 448)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2457)
!2457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2458)
!2458 = !{!2459, !2505, !2509, !2513, !2514, !2515, !2516, !2517, !2522, !2527, !2531}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2457, file: !38, line: 323, baseType: !2460, size: 64)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{!177, !2463}
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2465)
!2465 = !{!2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2490, !2491, !2492}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2464, file: !38, line: 295, baseType: !664, size: 128)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2464, file: !38, line: 296, baseType: !244, size: 128, offset: 128)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2464, file: !38, line: 297, baseType: !244, size: 128, offset: 256)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2464, file: !38, line: 298, baseType: !244, size: 128, offset: 384)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2464, file: !38, line: 299, baseType: !1199, size: 192, offset: 512)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2464, file: !38, line: 300, baseType: !258, offset: 704)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2464, file: !38, line: 301, baseType: !773, size: 32, offset: 704)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2464, file: !38, line: 302, baseType: !624, size: 64, offset: 768)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2464, file: !38, line: 303, baseType: !2475, size: 64, offset: 832)
!2475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2476)
!2476 = !{!2477, !2489}
!2477 = !DIDerivedType(tag: DW_TAG_member, scope: !2475, file: !38, line: 69, baseType: !2478, size: 32)
!2478 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2475, file: !38, line: 69, size: 32, elements: !2479)
!2479 = !{!2480, !2481, !2482}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2478, file: !38, line: 70, baseType: !460, size: 32)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2478, file: !38, line: 71, baseType: !468, size: 32)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2478, file: !38, line: 72, baseType: !2483, size: 32)
!2483 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2484, line: 24, baseType: !2485)
!2484 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2484, line: 22, size: 32, elements: !2486)
!2486 = !{!2487}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2485, file: !2484, line: 23, baseType: !2488, size: 32)
!2488 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2484, line: 20, baseType: !466)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2475, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2464, file: !38, line: 304, baseType: !556, size: 64, offset: 896)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2464, file: !38, line: 305, baseType: !349, size: 64, offset: 960)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2464, file: !38, line: 306, baseType: !2493, size: 576, offset: 1024)
!2493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2494)
!2494 = !{!2495, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2493, file: !38, line: 206, baseType: !2496, size: 64)
!2496 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !558)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2493, file: !38, line: 207, baseType: !2496, size: 64, offset: 64)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2493, file: !38, line: 208, baseType: !2496, size: 64, offset: 128)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2493, file: !38, line: 209, baseType: !2496, size: 64, offset: 192)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2493, file: !38, line: 210, baseType: !2496, size: 64, offset: 256)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2493, file: !38, line: 211, baseType: !2496, size: 64, offset: 320)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2493, file: !38, line: 212, baseType: !2496, size: 64, offset: 384)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2493, file: !38, line: 213, baseType: !564, size: 64, offset: 448)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2493, file: !38, line: 214, baseType: !564, size: 64, offset: 512)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2457, file: !38, line: 324, baseType: !2506, size: 64, offset: 64)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{!2463, !624, !177}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2457, file: !38, line: 325, baseType: !2510, size: 64, offset: 128)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{null, !2463}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2457, file: !38, line: 326, baseType: !2460, size: 64, offset: 192)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2457, file: !38, line: 327, baseType: !2460, size: 64, offset: 256)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2457, file: !38, line: 328, baseType: !2460, size: 64, offset: 320)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2457, file: !38, line: 329, baseType: !710, size: 64, offset: 384)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2457, file: !38, line: 332, baseType: !2518, size: 64, offset: 448)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!2521, !454}
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2457, file: !38, line: 333, baseType: !2523, size: 64, offset: 512)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{!177, !454, !2526}
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2457, file: !38, line: 335, baseType: !2528, size: 64, offset: 576)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!177, !454, !2521}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2457, file: !38, line: 337, baseType: !2532, size: 64, offset: 640)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{!177, !624, !2535}
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !625, file: !44, line: 1425, baseType: !2537, size: 64, offset: 512)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2539)
!2539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2540)
!2540 = !{!2541, !2545, !2546, !2550, !2551, !2552, !2567, !2590, !2594, !2595, !2618}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2539, file: !38, line: 429, baseType: !2542, size: 64)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{!177, !624, !177, !177, !574}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2539, file: !38, line: 430, baseType: !710, size: 64, offset: 64)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2539, file: !38, line: 431, baseType: !2547, size: 64, offset: 128)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!177, !624, !7}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2539, file: !38, line: 432, baseType: !2547, size: 64, offset: 192)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2539, file: !38, line: 433, baseType: !710, size: 64, offset: 256)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2539, file: !38, line: 434, baseType: !2553, size: 64, offset: 320)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{!177, !624, !177, !2556}
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2558)
!2558 = !{!2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2557, file: !38, line: 416, baseType: !177, size: 32)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2557, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2557, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2557, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2557, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2557, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2557, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2557, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2539, file: !38, line: 435, baseType: !2568, size: 64, offset: 384)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{!177, !624, !2475, !2571}
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2573)
!2573 = !{!2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2572, file: !38, line: 344, baseType: !177, size: 32)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2572, file: !38, line: 345, baseType: !446, size: 64, offset: 64)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2572, file: !38, line: 346, baseType: !446, size: 64, offset: 128)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2572, file: !38, line: 347, baseType: !446, size: 64, offset: 192)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2572, file: !38, line: 348, baseType: !446, size: 64, offset: 256)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2572, file: !38, line: 349, baseType: !446, size: 64, offset: 320)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2572, file: !38, line: 350, baseType: !446, size: 64, offset: 384)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2572, file: !38, line: 351, baseType: !803, size: 64, offset: 448)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2572, file: !38, line: 353, baseType: !803, size: 64, offset: 512)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2572, file: !38, line: 354, baseType: !177, size: 32, offset: 576)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2572, file: !38, line: 355, baseType: !177, size: 32, offset: 608)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2572, file: !38, line: 356, baseType: !446, size: 64, offset: 640)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2572, file: !38, line: 357, baseType: !446, size: 64, offset: 704)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2572, file: !38, line: 358, baseType: !446, size: 64, offset: 768)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2572, file: !38, line: 359, baseType: !803, size: 64, offset: 832)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2572, file: !38, line: 360, baseType: !177, size: 32, offset: 896)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2539, file: !38, line: 436, baseType: !2591, size: 64, offset: 448)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!177, !624, !2535, !2571}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2539, file: !38, line: 438, baseType: !2568, size: 64, offset: 512)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2539, file: !38, line: 439, baseType: !2596, size: 64, offset: 576)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{!177, !624, !2599}
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2601)
!2601 = !{!2602, !2603}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2600, file: !38, line: 410, baseType: !7, size: 32)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2600, file: !38, line: 411, baseType: !2604, size: 1344, offset: 64)
!2604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2605, size: 1344, elements: !300)
!2605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2606)
!2606 = !{!2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2617}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2605, file: !38, line: 396, baseType: !7, size: 32)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2605, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2605, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2605, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2605, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2605, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2605, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2605, file: !38, line: 404, baseType: !448, size: 64, offset: 256)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2605, file: !38, line: 405, baseType: !2616, size: 64, offset: 320)
!2616 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !245, line: 126, baseType: !446)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2605, file: !38, line: 406, baseType: !2616, size: 64, offset: 384)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2539, file: !38, line: 440, baseType: !2547, size: 64, offset: 640)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !625, file: !44, line: 1426, baseType: !2620, size: 64, offset: 576)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2622)
!2622 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !625, file: !44, line: 1427, baseType: !349, size: 64, offset: 640)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !625, file: !44, line: 1428, baseType: !349, size: 64, offset: 704)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !625, file: !44, line: 1429, baseType: !349, size: 64, offset: 768)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !625, file: !44, line: 1430, baseType: !407, size: 64, offset: 832)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !625, file: !44, line: 1431, baseType: !793, size: 256, offset: 896)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !625, file: !44, line: 1432, baseType: !177, size: 32, offset: 1152)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !625, file: !44, line: 1433, baseType: !773, size: 32, offset: 1184)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !625, file: !44, line: 1437, baseType: !2631, size: 64, offset: 1216)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2634)
!2634 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !625, file: !44, line: 1449, baseType: !2636, size: 64, offset: 1280)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !423, line: 34, size: 64, elements: !2637)
!2637 = !{!2638}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2636, file: !423, line: 35, baseType: !426, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !625, file: !44, line: 1450, baseType: !244, size: 128, offset: 1344)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !625, file: !44, line: 1451, baseType: !2641, size: 64, offset: 1472)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !625, file: !44, line: 1452, baseType: !1949, size: 64, offset: 1536)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !625, file: !44, line: 1453, baseType: !2645, size: 64, offset: 1600)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !625, file: !44, line: 1454, baseType: !664, size: 128, offset: 1664)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !625, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !625, file: !44, line: 1456, baseType: !2650, size: 2432, offset: 1856)
!2650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2651)
!2651 = !{!2652, !2653, !2654, !2656, !2688}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2650, file: !38, line: 519, baseType: !7, size: 32)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2650, file: !38, line: 520, baseType: !793, size: 256, offset: 64)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2650, file: !38, line: 521, baseType: !2655, size: 192, offset: 320)
!2655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 192, elements: !300)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2650, file: !38, line: 522, baseType: !2657, size: 1728, offset: 512)
!2657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2658, size: 1728, elements: !300)
!2658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2659)
!2659 = !{!2660, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2658, file: !38, line: 223, baseType: !2661, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2663)
!2663 = !{!2664, !2665, !2678, !2679}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2662, file: !38, line: 444, baseType: !177, size: 32)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2662, file: !38, line: 445, baseType: !2666, size: 64, offset: 64)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2668)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2669)
!2669 = !{!2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2668, file: !38, line: 311, baseType: !710, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2668, file: !38, line: 312, baseType: !710, size: 64, offset: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2668, file: !38, line: 313, baseType: !710, size: 64, offset: 128)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2668, file: !38, line: 314, baseType: !710, size: 64, offset: 192)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2668, file: !38, line: 315, baseType: !2460, size: 64, offset: 256)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2668, file: !38, line: 316, baseType: !2460, size: 64, offset: 320)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2668, file: !38, line: 317, baseType: !2460, size: 64, offset: 384)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2668, file: !38, line: 318, baseType: !2532, size: 64, offset: 448)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2662, file: !38, line: 446, baseType: !217, size: 64, offset: 128)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2662, file: !38, line: 447, baseType: !2661, size: 64, offset: 192)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2658, file: !38, line: 224, baseType: !177, size: 32, offset: 64)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2658, file: !38, line: 226, baseType: !244, size: 128, offset: 128)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2658, file: !38, line: 227, baseType: !349, size: 64, offset: 256)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2658, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2658, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2658, file: !38, line: 230, baseType: !2496, size: 64, offset: 384)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2658, file: !38, line: 231, baseType: !2496, size: 64, offset: 448)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2658, file: !38, line: 232, baseType: !233, size: 64, offset: 512)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2650, file: !38, line: 523, baseType: !2689, size: 192, offset: 2240)
!2689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2666, size: 192, elements: !300)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !625, file: !44, line: 1458, baseType: !2691, size: 2112, offset: 4288)
!2691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2692)
!2692 = !{!2693, !2694, !2695}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2691, file: !44, line: 1411, baseType: !177, size: 32)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2691, file: !44, line: 1412, baseType: !1507, size: 128, offset: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2691, file: !44, line: 1413, baseType: !2696, size: 1920, offset: 192)
!2696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2697, size: 1920, elements: !300)
!2697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2698, line: 12, size: 640, elements: !2699)
!2698 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2699 = !{!2700, !2708, !2710, !2715, !2716}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2697, file: !2698, line: 13, baseType: !2701, size: 320)
!2701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2702, line: 17, size: 320, elements: !2703)
!2702 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2703 = !{!2704, !2705, !2706, !2707}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2701, file: !2702, line: 18, baseType: !177, size: 32)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2701, file: !2702, line: 19, baseType: !177, size: 32, offset: 32)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2701, file: !2702, line: 20, baseType: !1507, size: 128, offset: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2701, file: !2702, line: 22, baseType: !390, size: 128, align: 64, offset: 192)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2697, file: !2698, line: 14, baseType: !2709, size: 64, offset: 320)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2697, file: !2698, line: 15, baseType: !2711, size: 64, offset: 384)
!2711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2712, line: 16, size: 64, elements: !2713)
!2712 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2713 = !{!2714}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2711, file: !2712, line: 17, baseType: !1242, size: 64)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2697, file: !2698, line: 16, baseType: !1507, size: 128, offset: 448)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2697, file: !2698, line: 17, baseType: !773, size: 32, offset: 576)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !625, file: !44, line: 1465, baseType: !233, size: 64, offset: 6400)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !625, file: !44, line: 1468, baseType: !440, size: 32, offset: 6464)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !625, file: !44, line: 1470, baseType: !564, size: 64, offset: 6528)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !625, file: !44, line: 1471, baseType: !564, size: 64, offset: 6592)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !625, file: !44, line: 1473, baseType: !442, size: 32, offset: 6656)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !625, file: !44, line: 1474, baseType: !2723, size: 64, offset: 6720)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !625, file: !44, line: 1477, baseType: !2726, size: 256, offset: 6784)
!2726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 256, elements: !2256)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !625, file: !44, line: 1478, baseType: !2728, size: 128, offset: 7040)
!2728 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2729, line: 18, baseType: !2730)
!2729 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2729, line: 16, size: 128, elements: !2731)
!2731 = !{!2732}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2730, file: !2729, line: 17, baseType: !2733, size: 128)
!2733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1379, size: 128, elements: !1761)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !625, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !625, file: !44, line: 1481, baseType: !2736, size: 32, offset: 7200)
!2736 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !245, line: 150, baseType: !7)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !625, file: !44, line: 1487, baseType: !1199, size: 192, offset: 7232)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !625, file: !44, line: 1493, baseType: !215, size: 64, offset: 7424)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !625, file: !44, line: 1495, baseType: !2740, size: 64, offset: 7488)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2742)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !405, line: 135, size: 1024, align: 512, elements: !2743)
!2743 = !{!2744, !2748, !2749, !2756, !2762, !2766, !2770, !2774, !2775, !2779, !2783, !2788, !2792}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2742, file: !405, line: 136, baseType: !2745, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DISubroutineType(types: !2747)
!2747 = !{!177, !407, !7}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2742, file: !405, line: 137, baseType: !2745, size: 64, offset: 64)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2742, file: !405, line: 138, baseType: !2750, size: 64, offset: 128)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{!177, !2753, !2755}
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !408)
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2742, file: !405, line: 139, baseType: !2757, size: 64, offset: 192)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!177, !2753, !7, !215, !2760}
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !431)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2742, file: !405, line: 141, baseType: !2763, size: 64, offset: 256)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!177, !2753}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2742, file: !405, line: 142, baseType: !2767, size: 64, offset: 320)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{!177, !407}
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2742, file: !405, line: 143, baseType: !2771, size: 64, offset: 384)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{null, !407}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2742, file: !405, line: 144, baseType: !2771, size: 64, offset: 448)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2742, file: !405, line: 145, baseType: !2776, size: 64, offset: 512)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DISubroutineType(types: !2778)
!2778 = !{null, !407, !454}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2742, file: !405, line: 146, baseType: !2780, size: 64, offset: 576)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{!299, !407, !299, !177}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2742, file: !405, line: 147, baseType: !2784, size: 64, offset: 640)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DISubroutineType(types: !2786)
!2786 = !{!403, !2787}
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2742, file: !405, line: 148, baseType: !2789, size: 64, offset: 704)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{!177, !574, !515}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2742, file: !405, line: 149, baseType: !2793, size: 64, offset: 768)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{!407, !407, !2796}
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !455)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !625, file: !44, line: 1500, baseType: !177, size: 32, offset: 7552)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !625, file: !44, line: 1502, baseType: !2800, size: 448, offset: 7616)
!2800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2444, line: 60, size: 448, elements: !2801)
!2801 = !{!2802, !2807, !2808, !2809, !2810, !2811, !2812}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2800, file: !2444, line: 61, baseType: !2803, size: 64)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{!349, !2806, !2442}
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2800, file: !2444, line: 63, baseType: !2803, size: 64, offset: 64)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2800, file: !2444, line: 66, baseType: !334, size: 64, offset: 128)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2800, file: !2444, line: 67, baseType: !177, size: 32, offset: 192)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2800, file: !2444, line: 68, baseType: !7, size: 32, offset: 224)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2800, file: !2444, line: 71, baseType: !244, size: 128, offset: 256)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2800, file: !2444, line: 77, baseType: !2813, size: 64, offset: 384)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !625, file: !44, line: 1505, baseType: !797, size: 64, offset: 8064)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !625, file: !44, line: 1508, baseType: !797, size: 64, offset: 8128)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !625, file: !44, line: 1511, baseType: !177, size: 32, offset: 8192)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !625, file: !44, line: 1514, baseType: !935, size: 32, offset: 8224)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !625, file: !44, line: 1517, baseType: !2819, size: 64, offset: 8256)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1984, line: 18, flags: DIFlagFwdDecl)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !625, file: !44, line: 1518, baseType: !660, size: 64, offset: 8320)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !625, file: !44, line: 1525, baseType: !1739, size: 64, offset: 8384)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !625, file: !44, line: 1532, baseType: !2824, size: 64, offset: 8448)
!2824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2825, line: 52, size: 64, elements: !2826)
!2825 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2826 = !{!2827}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2824, file: !2825, line: 53, baseType: !2828, size: 64)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2825, line: 40, size: 256, elements: !2830)
!2830 = !{!2831, !2832, !2837}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2829, file: !2825, line: 42, baseType: !258)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2829, file: !2825, line: 44, baseType: !2833, size: 192)
!2833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2825, line: 28, size: 192, elements: !2834)
!2834 = !{!2835, !2836}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2833, file: !2825, line: 29, baseType: !244, size: 128)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2833, file: !2825, line: 31, baseType: !334, size: 64, offset: 128)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2829, file: !2825, line: 49, baseType: !334, size: 64, offset: 192)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !625, file: !44, line: 1533, baseType: !2824, size: 64, offset: 8512)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !625, file: !44, line: 1534, baseType: !390, size: 128, align: 64, offset: 8576)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !625, file: !44, line: 1535, baseType: !1983, size: 256, offset: 8704)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !625, file: !44, line: 1537, baseType: !1199, size: 192, offset: 8960)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !625, file: !44, line: 1542, baseType: !177, size: 32, offset: 9152)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !625, file: !44, line: 1545, baseType: !258, offset: 9184)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !625, file: !44, line: 1546, baseType: !244, size: 128, offset: 9216)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !625, file: !44, line: 1548, baseType: !258, offset: 9344)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !625, file: !44, line: 1549, baseType: !244, size: 128, offset: 9344)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !455, file: !44, line: 624, baseType: !759, size: 64, offset: 256)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !455, file: !44, line: 631, baseType: !349, size: 64, offset: 320)
!2849 = !DIDerivedType(tag: DW_TAG_member, scope: !455, file: !44, line: 639, baseType: !2850, size: 32, offset: 384)
!2850 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !455, file: !44, line: 639, size: 32, elements: !2851)
!2851 = !{!2852, !2854}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2850, file: !44, line: 640, baseType: !2853, size: 32)
!2853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2850, file: !44, line: 641, baseType: !7, size: 32)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !455, file: !44, line: 643, baseType: !538, size: 32, offset: 416)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !455, file: !44, line: 644, baseType: !556, size: 64, offset: 448)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !455, file: !44, line: 645, baseType: !560, size: 128, offset: 512)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !455, file: !44, line: 646, baseType: !560, size: 128, offset: 640)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !455, file: !44, line: 647, baseType: !560, size: 128, offset: 768)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !455, file: !44, line: 648, baseType: !258, offset: 896)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !455, file: !44, line: 649, baseType: !341, size: 16, offset: 896)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !455, file: !44, line: 650, baseType: !1378, size: 8, offset: 912)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !455, file: !44, line: 651, baseType: !1378, size: 8, offset: 920)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !455, file: !44, line: 652, baseType: !2616, size: 64, offset: 960)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !455, file: !44, line: 659, baseType: !349, size: 64, offset: 1024)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !455, file: !44, line: 660, baseType: !793, size: 256, offset: 1088)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !455, file: !44, line: 662, baseType: !349, size: 64, offset: 1344)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !455, file: !44, line: 663, baseType: !349, size: 64, offset: 1408)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !455, file: !44, line: 665, baseType: !664, size: 128, offset: 1472)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !455, file: !44, line: 666, baseType: !244, size: 128, offset: 1600)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !455, file: !44, line: 675, baseType: !244, size: 128, offset: 1728)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !455, file: !44, line: 676, baseType: !244, size: 128, offset: 1856)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !455, file: !44, line: 677, baseType: !244, size: 128, offset: 1984)
!2874 = !DIDerivedType(tag: DW_TAG_member, scope: !455, file: !44, line: 678, baseType: !2875, size: 128, offset: 2112)
!2875 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !455, file: !44, line: 678, size: 128, elements: !2876)
!2876 = !{!2877, !2878}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2875, file: !44, line: 679, baseType: !660, size: 64)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2875, file: !44, line: 680, baseType: !390, size: 128, align: 64)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !455, file: !44, line: 682, baseType: !799, size: 64, offset: 2240)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !455, file: !44, line: 683, baseType: !799, size: 64, offset: 2304)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !455, file: !44, line: 684, baseType: !773, size: 32, offset: 2368)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !455, file: !44, line: 685, baseType: !773, size: 32, offset: 2400)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !455, file: !44, line: 686, baseType: !773, size: 32, offset: 2432)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !455, file: !44, line: 688, baseType: !773, size: 32, offset: 2464)
!2885 = !DIDerivedType(tag: DW_TAG_member, scope: !455, file: !44, line: 690, baseType: !2886, size: 64, offset: 2496)
!2886 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !455, file: !44, line: 690, size: 64, elements: !2887)
!2887 = !{!2888, !3111}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2886, file: !44, line: 691, baseType: !2889, size: 64)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2891)
!2891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2892)
!2892 = !{!2893, !2894, !2898, !2903, !2907, !2908, !2909, !2913, !2926, !2927, !2935, !2939, !2940, !2944, !2945, !2949, !2954, !2955, !2959, !2963, !3071, !3075, !3076, !3080, !3081, !3085, !3089, !3094, !3098, !3102, !3106, !3110}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2891, file: !44, line: 1823, baseType: !217, size: 64)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2891, file: !44, line: 1824, baseType: !2895, size: 64, offset: 64)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{!556, !377, !556, !177}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2891, file: !44, line: 1825, baseType: !2899, size: 64, offset: 128)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{!330, !377, !299, !346, !2902}
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2891, file: !44, line: 1826, baseType: !2904, size: 64, offset: 192)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!330, !377, !215, !346, !2902}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2891, file: !44, line: 1827, baseType: !870, size: 64, offset: 256)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2891, file: !44, line: 1828, baseType: !870, size: 64, offset: 320)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2891, file: !44, line: 1829, baseType: !2910, size: 64, offset: 384)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = !DISubroutineType(types: !2912)
!2912 = !{!177, !873, !515}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2891, file: !44, line: 1830, baseType: !2914, size: 64, offset: 448)
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{!177, !377, !2917}
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2919)
!2919 = !{!2920, !2925}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2918, file: !44, line: 1777, baseType: !2921, size: 64)
!2921 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2922)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!177, !2917, !215, !177, !556, !446, !7}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2918, file: !44, line: 1778, baseType: !556, size: 64, offset: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2891, file: !44, line: 1831, baseType: !2914, size: 64, offset: 512)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2891, file: !44, line: 1832, baseType: !2928, size: 64, offset: 576)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!2931, !377, !2933}
!2931 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2932, line: 52, baseType: !7)
!2932 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !644, line: 27, flags: DIFlagFwdDecl)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2891, file: !44, line: 1833, baseType: !2936, size: 64, offset: 640)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{!334, !377, !7, !349}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2891, file: !44, line: 1834, baseType: !2936, size: 64, offset: 704)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2891, file: !44, line: 1835, baseType: !2941, size: 64, offset: 768)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!177, !377, !1007}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2891, file: !44, line: 1836, baseType: !349, size: 64, offset: 832)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2891, file: !44, line: 1837, baseType: !2946, size: 64, offset: 896)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{!177, !454, !377}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2891, file: !44, line: 1838, baseType: !2950, size: 64, offset: 960)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!177, !377, !2953}
!2953 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !233)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2891, file: !44, line: 1839, baseType: !2946, size: 64, offset: 1024)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2891, file: !44, line: 1840, baseType: !2956, size: 64, offset: 1088)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!177, !377, !556, !556, !177}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2891, file: !44, line: 1841, baseType: !2960, size: 64, offset: 1152)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!177, !177, !377, !177}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2891, file: !44, line: 1842, baseType: !2964, size: 64, offset: 1216)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{!177, !377, !177, !2967}
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2969)
!2969 = !{!2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !3001, !3002, !3003, !3016, !3047}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2968, file: !44, line: 1063, baseType: !2967, size: 64)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2968, file: !44, line: 1064, baseType: !244, size: 128, offset: 64)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2968, file: !44, line: 1065, baseType: !664, size: 128, offset: 192)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2968, file: !44, line: 1066, baseType: !244, size: 128, offset: 320)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2968, file: !44, line: 1069, baseType: !244, size: 128, offset: 448)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2968, file: !44, line: 1072, baseType: !2953, size: 64, offset: 576)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2968, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2968, file: !44, line: 1074, baseType: !452, size: 8, offset: 672)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2968, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2968, file: !44, line: 1076, baseType: !177, size: 32, offset: 736)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2968, file: !44, line: 1077, baseType: !1507, size: 128, offset: 768)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2968, file: !44, line: 1078, baseType: !377, size: 64, offset: 896)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2968, file: !44, line: 1079, baseType: !556, size: 64, offset: 960)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2968, file: !44, line: 1080, baseType: !556, size: 64, offset: 1024)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2968, file: !44, line: 1082, baseType: !2985, size: 64, offset: 1088)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2987)
!2987 = !{!2988, !2996, !2997, !2998, !2999, !3000}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2986, file: !44, line: 1315, baseType: !2989)
!2989 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2990, line: 20, baseType: !2991)
!2990 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2991 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2990, line: 11, elements: !2992)
!2992 = !{!2993}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2991, file: !2990, line: 12, baseType: !2994)
!2994 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !270, line: 33, baseType: !2995)
!2995 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !270, line: 31, elements: !272)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2986, file: !44, line: 1316, baseType: !177, size: 32)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2986, file: !44, line: 1317, baseType: !177, size: 32, offset: 32)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2986, file: !44, line: 1318, baseType: !2985, size: 64, offset: 64)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2986, file: !44, line: 1319, baseType: !377, size: 64, offset: 128)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2986, file: !44, line: 1320, baseType: !390, size: 128, align: 64, offset: 192)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2968, file: !44, line: 1084, baseType: !349, size: 64, offset: 1152)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2968, file: !44, line: 1085, baseType: !349, size: 64, offset: 1216)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2968, file: !44, line: 1087, baseType: !3004, size: 64, offset: 1280)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3006)
!3006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !3007)
!3007 = !{!3008, !3012}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3006, file: !44, line: 1012, baseType: !3009, size: 64)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{null, !2967, !2967}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3006, file: !44, line: 1013, baseType: !3013, size: 64, offset: 64)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{null, !2967}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2968, file: !44, line: 1088, baseType: !3017, size: 64, offset: 1344)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3019)
!3019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !3020)
!3020 = !{!3021, !3025, !3029, !3030, !3034, !3038, !3042, !3046}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3019, file: !44, line: 1017, baseType: !3022, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{!2953, !2953}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3019, file: !44, line: 1018, baseType: !3026, size: 64, offset: 64)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{null, !2953}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3019, file: !44, line: 1019, baseType: !3013, size: 64, offset: 128)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3019, file: !44, line: 1020, baseType: !3031, size: 64, offset: 192)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{!177, !2967, !177}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3019, file: !44, line: 1021, baseType: !3035, size: 64, offset: 256)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!515, !2967}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3019, file: !44, line: 1022, baseType: !3039, size: 64, offset: 320)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!177, !2967, !177, !248}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3019, file: !44, line: 1023, baseType: !3043, size: 64, offset: 384)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{null, !2967, !847}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3019, file: !44, line: 1024, baseType: !3035, size: 64, offset: 448)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2968, file: !44, line: 1097, baseType: !3048, size: 256, offset: 1408)
!3048 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2968, file: !44, line: 1089, size: 256, elements: !3049)
!3049 = !{!3050, !3059, !3065}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3048, file: !44, line: 1090, baseType: !3051, size: 256)
!3051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3052, line: 10, size: 256, elements: !3053)
!3052 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3053 = !{!3054, !3055, !3058}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3051, file: !3052, line: 11, baseType: !440, size: 32)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3051, file: !3052, line: 12, baseType: !3056, size: 64, offset: 64)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3052, line: 5, flags: DIFlagFwdDecl)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3051, file: !3052, line: 13, baseType: !244, size: 128, offset: 128)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3048, file: !44, line: 1091, baseType: !3060, size: 64)
!3060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3052, line: 17, size: 64, elements: !3061)
!3061 = !{!3062}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3060, file: !3052, line: 18, baseType: !3063, size: 64)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3052, line: 16, flags: DIFlagFwdDecl)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3048, file: !44, line: 1096, baseType: !3066, size: 192)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3048, file: !44, line: 1092, size: 192, elements: !3067)
!3067 = !{!3068, !3069, !3070}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3066, file: !44, line: 1093, baseType: !244, size: 128)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3066, file: !44, line: 1094, baseType: !177, size: 32, offset: 128)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3066, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2891, file: !44, line: 1843, baseType: !3072, size: 64, offset: 1280)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{!330, !377, !746, !177, !346, !2902, !177}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2891, file: !44, line: 1844, baseType: !1127, size: 64, offset: 1344)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2891, file: !44, line: 1845, baseType: !3077, size: 64, offset: 1408)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!177, !177}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2891, file: !44, line: 1846, baseType: !2964, size: 64, offset: 1472)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2891, file: !44, line: 1847, baseType: !3082, size: 64, offset: 1536)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{!330, !2124, !377, !2902, !346, !7}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2891, file: !44, line: 1848, baseType: !3086, size: 64, offset: 1600)
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3087 = !DISubroutineType(types: !3088)
!3088 = !{!330, !377, !2902, !2124, !346, !7}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2891, file: !44, line: 1849, baseType: !3090, size: 64, offset: 1664)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{!177, !377, !334, !3093, !847}
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2891, file: !44, line: 1850, baseType: !3095, size: 64, offset: 1728)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{!334, !377, !177, !556, !556}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2891, file: !44, line: 1852, baseType: !3099, size: 64, offset: 1792)
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3100, size: 64)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{null, !736, !377}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2891, file: !44, line: 1856, baseType: !3103, size: 64, offset: 1856)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{!330, !377, !556, !377, !556, !346, !7}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2891, file: !44, line: 1858, baseType: !3107, size: 64, offset: 1920)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!556, !377, !556, !377, !556, !556, !7}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2891, file: !44, line: 1861, baseType: !2956, size: 64, offset: 1984)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2886, file: !44, line: 692, baseType: !689, size: 64)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !455, file: !44, line: 694, baseType: !3113, size: 64, offset: 2560)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3115)
!3115 = !{!3116, !3117, !3118, !3119}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3114, file: !44, line: 1101, baseType: !258)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3114, file: !44, line: 1102, baseType: !244, size: 128)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3114, file: !44, line: 1103, baseType: !244, size: 128, offset: 128)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3114, file: !44, line: 1104, baseType: !244, size: 128, offset: 256)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !455, file: !44, line: 695, baseType: !760, size: 1216, align: 64, offset: 2624)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !455, file: !44, line: 696, baseType: !244, size: 128, offset: 3840)
!3122 = !DIDerivedType(tag: DW_TAG_member, scope: !455, file: !44, line: 697, baseType: !3123, size: 64, offset: 3968)
!3123 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !455, file: !44, line: 697, size: 64, elements: !3124)
!3124 = !{!3125, !3126, !3127, !3130, !3131}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3123, file: !44, line: 698, baseType: !2124, size: 64)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3123, file: !44, line: 699, baseType: !2641, size: 64)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3123, file: !44, line: 700, baseType: !3128, size: 64)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3123, file: !44, line: 701, baseType: !299, size: 64)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3123, file: !44, line: 702, baseType: !7, size: 32)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !455, file: !44, line: 705, baseType: !442, size: 32, offset: 4032)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !455, file: !44, line: 708, baseType: !442, size: 32, offset: 4064)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !455, file: !44, line: 709, baseType: !2723, size: 64, offset: 4096)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !455, file: !44, line: 720, baseType: !233, size: 64, offset: 4160)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !408, file: !405, line: 98, baseType: !3137, size: 256, offset: 448)
!3137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 256, elements: !2256)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !408, file: !405, line: 101, baseType: !3139, size: 32, offset: 704)
!3139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3140, line: 25, size: 32, elements: !3141)
!3140 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3141 = !{!3142}
!3142 = !DIDerivedType(tag: DW_TAG_member, scope: !3139, file: !3140, line: 26, baseType: !3143, size: 32)
!3143 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3139, file: !3140, line: 26, size: 32, elements: !3144)
!3144 = !{!3145}
!3145 = !DIDerivedType(tag: DW_TAG_member, scope: !3143, file: !3140, line: 30, baseType: !3146, size: 32)
!3146 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3143, file: !3140, line: 30, size: 32, elements: !3147)
!3147 = !{!3148, !3149}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3146, file: !3140, line: 31, baseType: !258)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3146, file: !3140, line: 32, baseType: !177, size: 32)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !408, file: !405, line: 102, baseType: !2740, size: 64, offset: 768)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !408, file: !405, line: 103, baseType: !624, size: 64, offset: 832)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !408, file: !405, line: 104, baseType: !349, size: 64, offset: 896)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !408, file: !405, line: 105, baseType: !233, size: 64, offset: 960)
!3154 = !DIDerivedType(tag: DW_TAG_member, scope: !408, file: !405, line: 107, baseType: !3155, size: 128, offset: 1024)
!3155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !408, file: !405, line: 107, size: 128, elements: !3156)
!3156 = !{!3157, !3158}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3155, file: !405, line: 108, baseType: !244, size: 128)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3155, file: !405, line: 109, baseType: !3159, size: 64)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !408, file: !405, line: 111, baseType: !244, size: 128, offset: 1152)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !408, file: !405, line: 112, baseType: !244, size: 128, offset: 1280)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !408, file: !405, line: 120, baseType: !3163, size: 128, offset: 1408)
!3163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !408, file: !405, line: 116, size: 128, elements: !3164)
!3164 = !{!3165, !3166, !3167}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3163, file: !405, line: 117, baseType: !664, size: 128)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3163, file: !405, line: 118, baseType: !422, size: 128)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3163, file: !405, line: 119, baseType: !390, size: 128, align: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !378, file: !44, line: 922, baseType: !454, size: 64, offset: 256)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !378, file: !44, line: 923, baseType: !2889, size: 64, offset: 320)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !378, file: !44, line: 929, baseType: !258, offset: 384)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !378, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !378, file: !44, line: 931, baseType: !797, size: 64, offset: 448)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !378, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !378, file: !44, line: 933, baseType: !2736, size: 32, offset: 544)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !378, file: !44, line: 934, baseType: !1199, size: 192, offset: 576)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !378, file: !44, line: 935, baseType: !556, size: 64, offset: 768)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !378, file: !44, line: 936, baseType: !3178, size: 192, offset: 832)
!3178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3179)
!3179 = !{!3180, !3181, !3182, !3183, !3184, !3185}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3178, file: !44, line: 886, baseType: !2989)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3178, file: !44, line: 887, baseType: !1497, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3178, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3178, file: !44, line: 889, baseType: !460, size: 32, offset: 96)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3178, file: !44, line: 889, baseType: !460, size: 32, offset: 128)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3178, file: !44, line: 890, baseType: !177, size: 32, offset: 160)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !378, file: !44, line: 937, baseType: !1573, size: 64, offset: 1024)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !378, file: !44, line: 938, baseType: !3188, size: 256, offset: 1088)
!3188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3189)
!3189 = !{!3190, !3191, !3192, !3193, !3194, !3195}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3188, file: !44, line: 897, baseType: !349, size: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3188, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3188, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3188, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3188, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3188, file: !44, line: 904, baseType: !556, size: 64, offset: 192)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !378, file: !44, line: 940, baseType: !446, size: 64, offset: 1344)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !378, file: !44, line: 945, baseType: !233, size: 64, offset: 1408)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !378, file: !44, line: 949, baseType: !244, size: 128, offset: 1472)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !378, file: !44, line: 950, baseType: !244, size: 128, offset: 1600)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !378, file: !44, line: 952, baseType: !759, size: 64, offset: 1728)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !378, file: !44, line: 953, baseType: !935, size: 32, offset: 1792)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !378, file: !44, line: 954, baseType: !935, size: 32, offset: 1824)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !368, file: !324, line: 174, baseType: !374, size: 64, offset: 320)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !368, file: !324, line: 176, baseType: !3205, size: 64, offset: 384)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!177, !377, !251, !367, !1007}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !356, file: !324, line: 90, baseType: !351, size: 64, offset: 192)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !356, file: !324, line: 91, baseType: !3210, size: 64, offset: 256)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !314, file: !240, line: 143, baseType: !3212, size: 64, offset: 256)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DISubroutineType(types: !3214)
!3214 = !{!3215, !251}
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3217)
!3217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3218)
!3218 = !{!3219, !3220, !3224, !3228, !3234, !3238}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3217, file: !61, line: 40, baseType: !60, size: 32)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3217, file: !61, line: 41, baseType: !3221, size: 64, offset: 64)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DISubroutineType(types: !3223)
!3223 = !{!515}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3217, file: !61, line: 42, baseType: !3225, size: 64, offset: 128)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DISubroutineType(types: !3227)
!3227 = !{!233}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3217, file: !61, line: 43, baseType: !3229, size: 64, offset: 192)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = !DISubroutineType(types: !3231)
!3231 = !{!2153, !3232}
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3217, file: !61, line: 44, baseType: !3235, size: 64, offset: 256)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{!2153}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3217, file: !61, line: 45, baseType: !493, size: 64, offset: 320)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !314, file: !240, line: 144, baseType: !3240, size: 64, offset: 320)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = !DISubroutineType(types: !3242)
!3242 = !{!2153, !251}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !314, file: !240, line: 145, baseType: !3244, size: 64, offset: 384)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = !DISubroutineType(types: !3246)
!3246 = !{null, !251, !3247, !3248}
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !239, file: !240, line: 70, baseType: !3250, size: 64, offset: 384)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !644, line: 123, size: 1024, elements: !3252)
!3252 = !{!3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3381, !3382, !3383, !3384, !3385}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3251, file: !644, line: 124, baseType: !773, size: 32)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3251, file: !644, line: 125, baseType: !773, size: 32, offset: 32)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3251, file: !644, line: 135, baseType: !3250, size: 64, offset: 64)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3251, file: !644, line: 136, baseType: !215, size: 64, offset: 128)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3251, file: !644, line: 138, baseType: !786, size: 192, align: 64, offset: 192)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3251, file: !644, line: 140, baseType: !2153, size: 64, offset: 384)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3251, file: !644, line: 141, baseType: !7, size: 32, offset: 448)
!3260 = !DIDerivedType(tag: DW_TAG_member, scope: !3251, file: !644, line: 142, baseType: !3261, size: 256, offset: 512)
!3261 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3251, file: !644, line: 142, size: 256, elements: !3262)
!3262 = !{!3263, !3309, !3313}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3261, file: !644, line: 143, baseType: !3264, size: 192)
!3264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !644, line: 91, size: 192, elements: !3265)
!3265 = !{!3266, !3267, !3268}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3264, file: !644, line: 92, baseType: !349, size: 64)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3264, file: !644, line: 94, baseType: !782, size: 64, offset: 64)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3264, file: !644, line: 100, baseType: !3269, size: 64, offset: 128)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !644, line: 180, size: 704, elements: !3271)
!3271 = !{!3272, !3273, !3274, !3281, !3282, !3283, !3307, !3308}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3270, file: !644, line: 182, baseType: !3250, size: 64)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3270, file: !644, line: 183, baseType: !7, size: 32, offset: 64)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3270, file: !644, line: 186, baseType: !3275, size: 192, offset: 128)
!3275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3276, line: 19, size: 192, elements: !3277)
!3276 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3277 = !{!3278, !3279, !3280}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3275, file: !3276, line: 20, baseType: !764, size: 128)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3275, file: !3276, line: 21, baseType: !7, size: 32, offset: 128)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3275, file: !3276, line: 22, baseType: !7, size: 32, offset: 160)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3270, file: !644, line: 187, baseType: !440, size: 32, offset: 320)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3270, file: !644, line: 188, baseType: !440, size: 32, offset: 352)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3270, file: !644, line: 189, baseType: !3284, size: 64, offset: 384)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !644, line: 168, size: 320, elements: !3286)
!3286 = !{!3287, !3291, !3295, !3299, !3303}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3285, file: !644, line: 169, baseType: !3288, size: 64)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DISubroutineType(types: !3290)
!3290 = !{!177, !736, !3269}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3285, file: !644, line: 171, baseType: !3292, size: 64, offset: 64)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{!177, !3250, !215, !340}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3285, file: !644, line: 173, baseType: !3296, size: 64, offset: 128)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{!177, !3250}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3285, file: !644, line: 174, baseType: !3300, size: 64, offset: 192)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!177, !3250, !3250, !215}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3285, file: !644, line: 176, baseType: !3304, size: 64, offset: 256)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{!177, !736, !3250, !3269}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3270, file: !644, line: 192, baseType: !244, size: 128, offset: 448)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3270, file: !644, line: 194, baseType: !1507, size: 128, offset: 576)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3261, file: !644, line: 144, baseType: !3310, size: 64)
!3310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !644, line: 103, size: 64, elements: !3311)
!3311 = !{!3312}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3310, file: !644, line: 104, baseType: !3250, size: 64)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3261, file: !644, line: 145, baseType: !3314, size: 256)
!3314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !644, line: 107, size: 256, elements: !3315)
!3315 = !{!3316, !3376, !3379, !3380}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3314, file: !644, line: 108, baseType: !3317, size: 64)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3319)
!3319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !644, line: 217, size: 768, elements: !3320)
!3320 = !{!3321, !3341, !3345, !3349, !3353, !3357, !3361, !3365, !3366, !3367, !3368, !3372}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3319, file: !644, line: 222, baseType: !3322, size: 64)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{!177, !3325}
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !644, line: 197, size: 1088, elements: !3327)
!3327 = !{!3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3326, file: !644, line: 199, baseType: !3250, size: 64)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3326, file: !644, line: 200, baseType: !377, size: 64, offset: 64)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3326, file: !644, line: 201, baseType: !736, size: 64, offset: 128)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3326, file: !644, line: 202, baseType: !233, size: 64, offset: 192)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3326, file: !644, line: 205, baseType: !1199, size: 192, offset: 256)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3326, file: !644, line: 206, baseType: !1199, size: 192, offset: 448)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3326, file: !644, line: 207, baseType: !177, size: 32, offset: 640)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3326, file: !644, line: 208, baseType: !244, size: 128, offset: 704)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3326, file: !644, line: 209, baseType: !299, size: 64, offset: 832)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3326, file: !644, line: 211, baseType: !346, size: 64, offset: 896)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3326, file: !644, line: 212, baseType: !515, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3326, file: !644, line: 213, baseType: !515, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3326, file: !644, line: 214, baseType: !1035, size: 64, offset: 1024)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3319, file: !644, line: 223, baseType: !3342, size: 64, offset: 64)
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = !DISubroutineType(types: !3344)
!3344 = !{null, !3325}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3319, file: !644, line: 236, baseType: !3346, size: 64, offset: 128)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = !DISubroutineType(types: !3348)
!3348 = !{!177, !736, !233}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3319, file: !644, line: 238, baseType: !3350, size: 64, offset: 192)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!233, !736, !2902}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3319, file: !644, line: 239, baseType: !3354, size: 64, offset: 256)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!233, !736, !233, !2902}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3319, file: !644, line: 240, baseType: !3358, size: 64, offset: 320)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{null, !736, !233}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3319, file: !644, line: 242, baseType: !3362, size: 64, offset: 384)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{!330, !3325, !299, !346, !556}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3319, file: !644, line: 252, baseType: !346, size: 64, offset: 448)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3319, file: !644, line: 259, baseType: !515, size: 8, offset: 512)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3319, file: !644, line: 260, baseType: !3362, size: 64, offset: 576)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3319, file: !644, line: 263, baseType: !3369, size: 64, offset: 640)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!2931, !3325, !2933}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3319, file: !644, line: 266, baseType: !3373, size: 64, offset: 704)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{!177, !3325, !1007}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3314, file: !644, line: 109, baseType: !3377, size: 64, offset: 64)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !644, line: 31, flags: DIFlagFwdDecl)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3314, file: !644, line: 110, baseType: !556, size: 64, offset: 128)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3314, file: !644, line: 111, baseType: !3250, size: 64, offset: 192)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3251, file: !644, line: 148, baseType: !233, size: 64, offset: 768)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3251, file: !644, line: 154, baseType: !446, size: 64, offset: 832)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3251, file: !644, line: 156, baseType: !341, size: 16, offset: 896)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3251, file: !644, line: 157, baseType: !340, size: 16, offset: 912)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3251, file: !644, line: 158, baseType: !3386, size: 64, offset: 960)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !644, line: 32, flags: DIFlagFwdDecl)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !239, file: !240, line: 71, baseType: !3389, size: 32, offset: 448)
!3389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3390, line: 19, size: 32, elements: !3391)
!3390 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3391 = !{!3392}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3389, file: !3390, line: 20, baseType: !1256, size: 32)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !239, file: !240, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !239, file: !240, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !239, file: !240, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !239, file: !240, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !239, file: !240, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !236, file: !73, line: 463, baseType: !235, size: 64, offset: 512)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !236, file: !73, line: 465, baseType: !3400, size: 64, offset: 576)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !236, file: !73, line: 467, baseType: !215, size: 64, offset: 640)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !236, file: !73, line: 468, baseType: !3404, size: 64, offset: 704)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3406)
!3406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3407)
!3407 = !{!3408, !3409, !3410, !3414, !3419, !3423}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3406, file: !73, line: 88, baseType: !215, size: 64)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3406, file: !73, line: 89, baseType: !353, size: 64, offset: 64)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3406, file: !73, line: 90, baseType: !3411, size: 64, offset: 128)
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3412 = !DISubroutineType(types: !3413)
!3413 = !{!177, !235, !294}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3406, file: !73, line: 91, baseType: !3415, size: 64, offset: 192)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{!299, !235, !3418, !3247, !3248}
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3406, file: !73, line: 93, baseType: !3420, size: 64, offset: 256)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{null, !235}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3406, file: !73, line: 95, baseType: !3424, size: 64, offset: 320)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3426)
!3426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3427)
!3427 = !{!3428, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3426, file: !80, line: 279, baseType: !3429, size: 64)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = !DISubroutineType(types: !3431)
!3431 = !{!177, !235}
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3426, file: !80, line: 280, baseType: !3420, size: 64, offset: 64)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3426, file: !80, line: 281, baseType: !3429, size: 64, offset: 128)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3426, file: !80, line: 282, baseType: !3429, size: 64, offset: 192)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3426, file: !80, line: 283, baseType: !3429, size: 64, offset: 256)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3426, file: !80, line: 284, baseType: !3429, size: 64, offset: 320)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3426, file: !80, line: 285, baseType: !3429, size: 64, offset: 384)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3426, file: !80, line: 286, baseType: !3429, size: 64, offset: 448)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3426, file: !80, line: 287, baseType: !3429, size: 64, offset: 512)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3426, file: !80, line: 288, baseType: !3429, size: 64, offset: 576)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3426, file: !80, line: 289, baseType: !3429, size: 64, offset: 640)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3426, file: !80, line: 290, baseType: !3429, size: 64, offset: 704)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3426, file: !80, line: 291, baseType: !3429, size: 64, offset: 768)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3426, file: !80, line: 292, baseType: !3429, size: 64, offset: 832)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3426, file: !80, line: 293, baseType: !3429, size: 64, offset: 896)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3426, file: !80, line: 294, baseType: !3429, size: 64, offset: 960)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3426, file: !80, line: 295, baseType: !3429, size: 64, offset: 1024)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3426, file: !80, line: 296, baseType: !3429, size: 64, offset: 1088)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3426, file: !80, line: 297, baseType: !3429, size: 64, offset: 1152)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3426, file: !80, line: 298, baseType: !3429, size: 64, offset: 1216)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3426, file: !80, line: 299, baseType: !3429, size: 64, offset: 1280)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3426, file: !80, line: 300, baseType: !3429, size: 64, offset: 1344)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3426, file: !80, line: 301, baseType: !3429, size: 64, offset: 1408)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !236, file: !73, line: 470, baseType: !3455, size: 64, offset: 768)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3457, line: 82, size: 1408, elements: !3458)
!3457 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3458 = !{!3459, !3460, !3461, !3462, !3463, !3464, !3465, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3540, !3543, !3544}
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3456, file: !3457, line: 83, baseType: !215, size: 64)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3456, file: !3457, line: 84, baseType: !215, size: 64, offset: 64)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3456, file: !3457, line: 85, baseType: !235, size: 64, offset: 128)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3456, file: !3457, line: 86, baseType: !353, size: 64, offset: 192)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3456, file: !3457, line: 87, baseType: !353, size: 64, offset: 256)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3456, file: !3457, line: 88, baseType: !353, size: 64, offset: 320)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3456, file: !3457, line: 90, baseType: !3466, size: 64, offset: 384)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{!177, !235, !3469}
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3471)
!3471 = !{!3472, !3473, !3474, !3475, !3476, !3477, !3478, !3491, !3504, !3505, !3506, !3507, !3508, !3516, !3517, !3518, !3519, !3520, !3521}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3470, file: !67, line: 96, baseType: !215, size: 64)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3470, file: !67, line: 97, baseType: !3455, size: 64, offset: 64)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3470, file: !67, line: 99, baseType: !217, size: 64, offset: 128)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3470, file: !67, line: 100, baseType: !215, size: 64, offset: 192)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3470, file: !67, line: 102, baseType: !515, size: 8, offset: 256)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3470, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3470, file: !67, line: 105, baseType: !3479, size: 64, offset: 320)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3481)
!3481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3482, line: 262, size: 1600, elements: !3483)
!3482 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3483 = !{!3484, !3485, !3486, !3490}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3481, file: !3482, line: 263, baseType: !2726, size: 256)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3481, file: !3482, line: 264, baseType: !2726, size: 256, offset: 256)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3481, file: !3482, line: 265, baseType: !3487, size: 1024, offset: 512)
!3487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 1024, elements: !3488)
!3488 = !{!3489}
!3489 = !DISubrange(count: 128)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3481, file: !3482, line: 266, baseType: !2153, size: 64, offset: 1536)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3470, file: !67, line: 106, baseType: !3492, size: 64, offset: 384)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3494)
!3494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3482, line: 210, size: 256, elements: !3495)
!3495 = !{!3496, !3500, !3502, !3503}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3494, file: !3482, line: 211, baseType: !3497, size: 72)
!3497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1379, size: 72, elements: !3498)
!3498 = !{!3499}
!3499 = !DISubrange(count: 9)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3494, file: !3482, line: 212, baseType: !3501, size: 64, offset: 128)
!3501 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3482, line: 14, baseType: !349)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3494, file: !3482, line: 213, baseType: !442, size: 32, offset: 192)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3494, file: !3482, line: 214, baseType: !442, size: 32, offset: 224)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3470, file: !67, line: 108, baseType: !3429, size: 64, offset: 448)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3470, file: !67, line: 109, baseType: !3420, size: 64, offset: 512)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3470, file: !67, line: 110, baseType: !3429, size: 64, offset: 576)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3470, file: !67, line: 111, baseType: !3420, size: 64, offset: 640)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3470, file: !67, line: 112, baseType: !3509, size: 64, offset: 704)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = !DISubroutineType(types: !3511)
!3511 = !{!177, !235, !3512}
!3512 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3513)
!3513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3514)
!3514 = !{!3515}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3513, file: !80, line: 51, baseType: !177, size: 32)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3470, file: !67, line: 113, baseType: !3429, size: 64, offset: 768)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3470, file: !67, line: 114, baseType: !353, size: 64, offset: 832)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3470, file: !67, line: 115, baseType: !353, size: 64, offset: 896)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3470, file: !67, line: 117, baseType: !3424, size: 64, offset: 960)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3470, file: !67, line: 118, baseType: !3420, size: 64, offset: 1024)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3470, file: !67, line: 120, baseType: !3522, size: 64, offset: 1088)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3456, file: !3457, line: 91, baseType: !3411, size: 64, offset: 448)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3456, file: !3457, line: 92, baseType: !3429, size: 64, offset: 512)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3456, file: !3457, line: 93, baseType: !3420, size: 64, offset: 576)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3456, file: !3457, line: 94, baseType: !3429, size: 64, offset: 640)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3456, file: !3457, line: 95, baseType: !3420, size: 64, offset: 704)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3456, file: !3457, line: 97, baseType: !3429, size: 64, offset: 768)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3456, file: !3457, line: 98, baseType: !3429, size: 64, offset: 832)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3456, file: !3457, line: 100, baseType: !3509, size: 64, offset: 896)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3456, file: !3457, line: 101, baseType: !3429, size: 64, offset: 960)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3456, file: !3457, line: 103, baseType: !3429, size: 64, offset: 1024)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3456, file: !3457, line: 105, baseType: !3429, size: 64, offset: 1088)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3456, file: !3457, line: 107, baseType: !3424, size: 64, offset: 1152)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3456, file: !3457, line: 109, baseType: !3537, size: 64, offset: 1216)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3539)
!3539 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3457, line: 109, flags: DIFlagFwdDecl)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3456, file: !3457, line: 111, baseType: !3541, size: 64, offset: 1280)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3457, line: 111, flags: DIFlagFwdDecl)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3456, file: !3457, line: 112, baseType: !670, offset: 1344)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3456, file: !3457, line: 114, baseType: !515, size: 8, offset: 1344)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !236, file: !73, line: 471, baseType: !3469, size: 64, offset: 832)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !236, file: !73, line: 473, baseType: !233, size: 64, offset: 896)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !236, file: !73, line: 475, baseType: !233, size: 64, offset: 960)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !236, file: !73, line: 480, baseType: !1199, size: 192, offset: 1024)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !236, file: !73, line: 484, baseType: !3550, size: 576, offset: 1216)
!3550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3551)
!3551 = !{!3552, !3553, !3554, !3555, !3556, !3557}
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3550, file: !73, line: 362, baseType: !244, size: 128)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3550, file: !73, line: 363, baseType: !244, size: 128, offset: 128)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3550, file: !73, line: 364, baseType: !244, size: 128, offset: 256)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3550, file: !73, line: 365, baseType: !244, size: 128, offset: 384)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3550, file: !73, line: 366, baseType: !515, size: 8, offset: 512)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3550, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !236, file: !73, line: 485, baseType: !3559, size: 2304, offset: 1792)
!3559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3560)
!3560 = !{!3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3656, !3660}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3559, file: !80, line: 566, baseType: !3512, size: 32)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3559, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3559, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3559, file: !80, line: 569, baseType: !515, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3559, file: !80, line: 570, baseType: !515, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3559, file: !80, line: 571, baseType: !515, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3559, file: !80, line: 572, baseType: !515, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3559, file: !80, line: 573, baseType: !515, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3559, file: !80, line: 574, baseType: !515, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3559, file: !80, line: 575, baseType: !515, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3559, file: !80, line: 576, baseType: !515, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3559, file: !80, line: 577, baseType: !440, size: 32, offset: 64)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3559, file: !80, line: 578, baseType: !258, offset: 96)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3559, file: !80, line: 580, baseType: !244, size: 128, offset: 128)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3559, file: !80, line: 581, baseType: !1528, size: 192, offset: 256)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3559, file: !80, line: 582, baseType: !3577, size: 64, offset: 448)
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3578, size: 64)
!3578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3579, line: 43, size: 1472, elements: !3580)
!3579 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3580 = !{!3581, !3582, !3583, !3584, !3585, !3588, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3578, file: !3579, line: 44, baseType: !215, size: 64)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3578, file: !3579, line: 45, baseType: !177, size: 32, offset: 64)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3578, file: !3579, line: 46, baseType: !244, size: 128, offset: 128)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3578, file: !3579, line: 47, baseType: !258, offset: 256)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3578, file: !3579, line: 48, baseType: !3586, size: 64, offset: 256)
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3587 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3578, file: !3579, line: 49, baseType: !3589, size: 320, offset: 320)
!3589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3590, line: 11, size: 320, elements: !3591)
!3590 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3591 = !{!3592, !3593, !3594, !3599}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3589, file: !3590, line: 16, baseType: !664, size: 128)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3589, file: !3590, line: 17, baseType: !349, size: 64, offset: 128)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3589, file: !3590, line: 18, baseType: !3595, size: 64, offset: 192)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{null, !3598}
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3589, file: !3590, line: 19, baseType: !440, size: 32, offset: 256)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3578, file: !3579, line: 50, baseType: !349, size: 64, offset: 640)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3578, file: !3579, line: 51, baseType: !1326, size: 64, offset: 704)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3578, file: !3579, line: 52, baseType: !1326, size: 64, offset: 768)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3578, file: !3579, line: 53, baseType: !1326, size: 64, offset: 832)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3578, file: !3579, line: 54, baseType: !1326, size: 64, offset: 896)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3578, file: !3579, line: 55, baseType: !1326, size: 64, offset: 960)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3578, file: !3579, line: 56, baseType: !349, size: 64, offset: 1024)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3578, file: !3579, line: 57, baseType: !349, size: 64, offset: 1088)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3578, file: !3579, line: 58, baseType: !349, size: 64, offset: 1152)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3578, file: !3579, line: 59, baseType: !349, size: 64, offset: 1216)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3578, file: !3579, line: 60, baseType: !349, size: 64, offset: 1280)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3578, file: !3579, line: 61, baseType: !235, size: 64, offset: 1344)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3578, file: !3579, line: 62, baseType: !515, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3578, file: !3579, line: 63, baseType: !515, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3559, file: !80, line: 583, baseType: !515, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3559, file: !80, line: 584, baseType: !515, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3559, file: !80, line: 585, baseType: !515, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3559, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3559, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3559, file: !80, line: 592, baseType: !1318, size: 512, offset: 576)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3559, file: !80, line: 593, baseType: !446, size: 64, offset: 1088)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3559, file: !80, line: 594, baseType: !1983, size: 256, offset: 1152)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3559, file: !80, line: 595, baseType: !1507, size: 128, offset: 1408)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3559, file: !80, line: 596, baseType: !3586, size: 64, offset: 1536)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3559, file: !80, line: 597, baseType: !773, size: 32, offset: 1600)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3559, file: !80, line: 598, baseType: !773, size: 32, offset: 1632)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3559, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3559, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3559, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3559, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3559, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3559, file: !80, line: 604, baseType: !515, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3559, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3559, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3559, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3559, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3559, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3559, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3559, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3559, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3559, file: !80, line: 613, baseType: !177, size: 32, offset: 1792)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3559, file: !80, line: 614, baseType: !177, size: 32, offset: 1824)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3559, file: !80, line: 615, baseType: !446, size: 64, offset: 1856)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3559, file: !80, line: 616, baseType: !446, size: 64, offset: 1920)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3559, file: !80, line: 617, baseType: !446, size: 64, offset: 1984)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3559, file: !80, line: 618, baseType: !446, size: 64, offset: 2048)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3559, file: !80, line: 620, baseType: !3647, size: 64, offset: 2112)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3649)
!3649 = !{!3650, !3651, !3652, !3653}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3648, file: !80, line: 537, baseType: !258)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3648, file: !80, line: 538, baseType: !7, size: 32)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3648, file: !80, line: 540, baseType: !244, size: 128, offset: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3648, file: !80, line: 543, baseType: !3654, size: 64, offset: 192)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3559, file: !80, line: 621, baseType: !3657, size: 64, offset: 2176)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DISubroutineType(types: !3659)
!3659 = !{null, !235, !1470}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3559, file: !80, line: 622, baseType: !3661, size: 64, offset: 2240)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !236, file: !73, line: 486, baseType: !3664, size: 64, offset: 4096)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3666)
!3666 = !{!3667, !3668, !3669, !3673, !3674, !3675}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3665, file: !80, line: 643, baseType: !3426, size: 1472)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3665, file: !80, line: 644, baseType: !3429, size: 64, offset: 1472)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3665, file: !80, line: 645, baseType: !3670, size: 64, offset: 1536)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{null, !235, !515}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3665, file: !80, line: 646, baseType: !3429, size: 64, offset: 1600)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3665, file: !80, line: 647, baseType: !3420, size: 64, offset: 1664)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3665, file: !80, line: 648, baseType: !3420, size: 64, offset: 1728)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !236, file: !73, line: 493, baseType: !3677, size: 64, offset: 4160)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !73, line: 493, flags: DIFlagFwdDecl)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !236, file: !73, line: 499, baseType: !244, size: 128, offset: 4224)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !236, file: !73, line: 502, baseType: !3681, size: 64, offset: 4352)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3683)
!3683 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !236, file: !73, line: 504, baseType: !3685, size: 64, offset: 4416)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !236, file: !73, line: 505, baseType: !446, size: 64, offset: 4480)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !236, file: !73, line: 510, baseType: !446, size: 64, offset: 4544)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !236, file: !73, line: 511, baseType: !3689, size: 64, offset: 4608)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3691)
!3691 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !236, file: !73, line: 513, baseType: !3693, size: 64, offset: 4672)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3695)
!3695 = !{!3696, !3697}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3694, file: !73, line: 293, baseType: !7, size: 32)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3694, file: !73, line: 294, baseType: !349, size: 64, offset: 64)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !236, file: !73, line: 515, baseType: !244, size: 128, offset: 4736)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !236, file: !73, line: 526, baseType: !3700, offset: 4864)
!3700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3701, line: 5, elements: !272)
!3701 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !236, file: !73, line: 528, baseType: !3703, size: 64, offset: 4864)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3705, line: 14, flags: DIFlagFwdDecl)
!3705 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !236, file: !73, line: 529, baseType: !3707, size: 64, offset: 4928)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3709, line: 17, size: 192, elements: !3710)
!3709 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3710 = !{!3711, !3712, !3795}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3708, file: !3709, line: 18, baseType: !3707, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3708, file: !3709, line: 19, baseType: !3713, size: 64, offset: 64)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3715)
!3715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3709, line: 110, size: 1152, elements: !3716)
!3716 = !{!3717, !3721, !3725, !3731, !3737, !3741, !3745, !3750, !3754, !3755, !3759, !3763, !3767, !3778, !3779, !3780, !3781, !3791}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3715, file: !3709, line: 111, baseType: !3718, size: 64)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!3707, !3707}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3715, file: !3709, line: 112, baseType: !3722, size: 64, offset: 64)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{null, !3707}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3715, file: !3709, line: 113, baseType: !3726, size: 64, offset: 128)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{!515, !3729}
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3708)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3715, file: !3709, line: 114, baseType: !3732, size: 64, offset: 192)
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{!2153, !3729, !3735}
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !236)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3715, file: !3709, line: 116, baseType: !3738, size: 64, offset: 256)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!515, !3729, !215}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3715, file: !3709, line: 118, baseType: !3742, size: 64, offset: 320)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{!177, !3729, !215, !7, !233, !346}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3715, file: !3709, line: 123, baseType: !3746, size: 64, offset: 384)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = !DISubroutineType(types: !3748)
!3748 = !{!177, !3729, !215, !3749, !346}
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3715, file: !3709, line: 126, baseType: !3751, size: 64, offset: 448)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{!215, !3729}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3715, file: !3709, line: 127, baseType: !3751, size: 64, offset: 512)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3715, file: !3709, line: 128, baseType: !3756, size: 64, offset: 576)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{!3707, !3729}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3715, file: !3709, line: 130, baseType: !3760, size: 64, offset: 640)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = !DISubroutineType(types: !3762)
!3762 = !{!3707, !3729, !3707}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3715, file: !3709, line: 133, baseType: !3764, size: 64, offset: 704)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!3707, !3729, !215}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3715, file: !3709, line: 135, baseType: !3768, size: 64, offset: 768)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!177, !3729, !215, !215, !7, !7, !3771}
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3709, line: 43, size: 640, elements: !3773)
!3773 = !{!3774, !3775, !3776}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3772, file: !3709, line: 44, baseType: !3707, size: 64)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3772, file: !3709, line: 45, baseType: !7, size: 32, offset: 64)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3772, file: !3709, line: 46, baseType: !3777, size: 512, offset: 128)
!3777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 512, elements: !1356)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3715, file: !3709, line: 140, baseType: !3760, size: 64, offset: 832)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3715, file: !3709, line: 143, baseType: !3756, size: 64, offset: 896)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3715, file: !3709, line: 145, baseType: !3718, size: 64, offset: 960)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3715, file: !3709, line: 146, baseType: !3782, size: 64, offset: 1024)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = !DISubroutineType(types: !3784)
!3784 = !{!177, !3729, !3785}
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3709, line: 29, size: 128, elements: !3787)
!3787 = !{!3788, !3789, !3790}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3786, file: !3709, line: 30, baseType: !7, size: 32)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3786, file: !3709, line: 31, baseType: !7, size: 32, offset: 32)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3786, file: !3709, line: 32, baseType: !3729, size: 64, offset: 64)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3715, file: !3709, line: 148, baseType: !3792, size: 64, offset: 1088)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DISubroutineType(types: !3794)
!3794 = !{!177, !3729, !235}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3708, file: !3709, line: 20, baseType: !235, size: 64, offset: 128)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !236, file: !73, line: 534, baseType: !538, size: 32, offset: 4992)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !236, file: !73, line: 535, baseType: !440, size: 32, offset: 5024)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !236, file: !73, line: 537, baseType: !258, offset: 5056)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !236, file: !73, line: 538, baseType: !244, size: 128, offset: 5056)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !236, file: !73, line: 540, baseType: !3801, size: 64, offset: 5184)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3803, line: 54, size: 960, elements: !3804)
!3803 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3804 = !{!3805, !3806, !3807, !3808, !3809, !3810, !3811, !3815, !3819, !3820, !3821, !3822, !3826, !3830, !3831}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3802, file: !3803, line: 55, baseType: !215, size: 64)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3802, file: !3803, line: 56, baseType: !217, size: 64, offset: 64)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3802, file: !3803, line: 58, baseType: !353, size: 64, offset: 128)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3802, file: !3803, line: 59, baseType: !353, size: 64, offset: 192)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3802, file: !3803, line: 60, baseType: !251, size: 64, offset: 256)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3802, file: !3803, line: 62, baseType: !3411, size: 64, offset: 320)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3802, file: !3803, line: 63, baseType: !3812, size: 64, offset: 384)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!299, !235, !3418}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3802, file: !3803, line: 65, baseType: !3816, size: 64, offset: 448)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{null, !3801}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3802, file: !3803, line: 66, baseType: !3420, size: 64, offset: 512)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3802, file: !3803, line: 68, baseType: !3429, size: 64, offset: 576)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3802, file: !3803, line: 70, baseType: !3215, size: 64, offset: 640)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3802, file: !3803, line: 71, baseType: !3823, size: 64, offset: 704)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = !DISubroutineType(types: !3825)
!3825 = !{!2153, !235}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3802, file: !3803, line: 73, baseType: !3827, size: 64, offset: 768)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DISubroutineType(types: !3829)
!3829 = !{null, !235, !3247, !3248}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3802, file: !3803, line: 75, baseType: !3424, size: 64, offset: 832)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3802, file: !3803, line: 77, baseType: !3541, size: 64, offset: 896)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !236, file: !73, line: 541, baseType: !353, size: 64, offset: 5248)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !236, file: !73, line: 543, baseType: !3420, size: 64, offset: 5312)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !236, file: !73, line: 544, baseType: !3835, size: 64, offset: 5376)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !236, file: !73, line: 545, baseType: !3838, size: 64, offset: 5440)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !236, file: !73, line: 547, baseType: !515, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !236, file: !73, line: 548, baseType: !515, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !236, file: !73, line: 549, baseType: !515, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !236, file: !73, line: 550, baseType: !515, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !225, file: !123, line: 548, baseType: !177, size: 32, offset: 320)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "detach_count", scope: !225, file: !123, line: 549, baseType: !7, size: 32, offset: 352)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "hw_dev", scope: !225, file: !123, line: 550, baseType: !235, size: 64, offset: 384)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !225, file: !123, line: 552, baseType: !215, size: 64, offset: 448)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "board_ptr", scope: !225, file: !123, line: 553, baseType: !2153, size: 64, offset: 512)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "attached", scope: !225, file: !123, line: 554, baseType: !7, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "ioenabled", scope: !225, file: !123, line: 555, baseType: !7, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "spinlock", scope: !225, file: !123, line: 556, baseType: !258, offset: 584)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !225, file: !123, line: 557, baseType: !1199, size: 192, offset: 640)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "attach_lock", scope: !225, file: !123, line: 558, baseType: !793, size: 256, offset: 832)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !225, file: !123, line: 559, baseType: !3389, size: 32, offset: 1088)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "n_subdevices", scope: !225, file: !123, line: 561, baseType: !177, size: 32, offset: 1120)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "subdevices", scope: !225, file: !123, line: 562, baseType: !3857, size: 64, offset: 1152)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_subdevice", file: !123, line: 153, size: 1792, elements: !3859)
!3859 = !{!3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3935, !3948, !3951, !3952, !3966, !3967, !3968, !3969, !3973, !3978, !3979, !3980, !3981, !3985, !3986, !3987, !3988, !3989}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3858, file: !123, line: 154, baseType: !224, size: 64)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3858, file: !123, line: 155, baseType: !177, size: 32, offset: 64)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3858, file: !123, line: 156, baseType: !177, size: 32, offset: 96)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "n_chan", scope: !3858, file: !123, line: 157, baseType: !177, size: 32, offset: 128)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "subdev_flags", scope: !3858, file: !123, line: 158, baseType: !177, size: 32, offset: 160)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "len_chanlist", scope: !3858, file: !123, line: 159, baseType: !177, size: 32, offset: 192)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3858, file: !123, line: 161, baseType: !233, size: 64, offset: 256)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "async", scope: !3858, file: !123, line: 163, baseType: !3868, size: 64, offset: 320)
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_async", file: !123, line: 347, size: 1536, elements: !3870)
!3870 = !{!3871, !3872, !3873, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3921, !3922, !3923}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3869, file: !123, line: 348, baseType: !233, size: 64)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_bufsz", scope: !3869, file: !123, line: 349, baseType: !7, size: 32, offset: 64)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "buf_map", scope: !3869, file: !123, line: 350, baseType: !3874, size: 64, offset: 128)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_map", file: !123, line: 249, size: 256, elements: !3876)
!3876 = !{!3877, !3878, !3884, !3885, !3886}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "dma_hw_dev", scope: !3875, file: !123, line: 250, baseType: !235, size: 64)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "page_list", scope: !3875, file: !123, line: 251, baseType: !3879, size: 64, offset: 64)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_page", file: !123, line: 220, size: 128, elements: !3881)
!3881 = !{!3882, !3883}
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "virt_addr", scope: !3880, file: !123, line: 221, baseType: !233, size: 64)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3880, file: !123, line: 222, baseType: !946, size: 64, offset: 64)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "n_pages", scope: !3875, file: !123, line: 252, baseType: !7, size: 32, offset: 128)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "dma_dir", scope: !3875, file: !123, line: 253, baseType: !93, size: 32, offset: 160)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3875, file: !123, line: 254, baseType: !3389, size: 32, offset: 192)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "max_bufsize", scope: !3869, file: !123, line: 351, baseType: !7, size: 32, offset: 192)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_count", scope: !3869, file: !123, line: 352, baseType: !7, size: 32, offset: 224)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_alloc_count", scope: !3869, file: !123, line: 353, baseType: !7, size: 32, offset: 256)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_count", scope: !3869, file: !123, line: 354, baseType: !7, size: 32, offset: 288)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_alloc_count", scope: !3869, file: !123, line: 355, baseType: !7, size: 32, offset: 320)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_ptr", scope: !3869, file: !123, line: 356, baseType: !7, size: 32, offset: 352)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_ptr", scope: !3869, file: !123, line: 357, baseType: !7, size: 32, offset: 384)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "cur_chan", scope: !3869, file: !123, line: 358, baseType: !7, size: 32, offset: 416)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "scans_done", scope: !3869, file: !123, line: 359, baseType: !7, size: 32, offset: 448)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "scan_progress", scope: !3869, file: !123, line: 360, baseType: !7, size: 32, offset: 480)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "munge_chan", scope: !3869, file: !123, line: 361, baseType: !7, size: 32, offset: 512)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "munge_count", scope: !3869, file: !123, line: 362, baseType: !7, size: 32, offset: 544)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "munge_ptr", scope: !3869, file: !123, line: 363, baseType: !7, size: 32, offset: 576)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3869, file: !123, line: 364, baseType: !7, size: 32, offset: 608)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !3869, file: !123, line: 365, baseType: !3902, size: 640, offset: 640)
!3902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_cmd", file: !101, line: 589, size: 640, elements: !3903)
!3903 = !{!3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3920}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "subdev", scope: !3902, file: !101, line: 590, baseType: !7, size: 32)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3902, file: !101, line: 591, baseType: !7, size: 32, offset: 32)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "start_src", scope: !3902, file: !101, line: 593, baseType: !7, size: 32, offset: 64)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "start_arg", scope: !3902, file: !101, line: 594, baseType: !7, size: 32, offset: 96)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "scan_begin_src", scope: !3902, file: !101, line: 596, baseType: !7, size: 32, offset: 128)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "scan_begin_arg", scope: !3902, file: !101, line: 597, baseType: !7, size: 32, offset: 160)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "convert_src", scope: !3902, file: !101, line: 599, baseType: !7, size: 32, offset: 192)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "convert_arg", scope: !3902, file: !101, line: 600, baseType: !7, size: 32, offset: 224)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "scan_end_src", scope: !3902, file: !101, line: 602, baseType: !7, size: 32, offset: 256)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "scan_end_arg", scope: !3902, file: !101, line: 603, baseType: !7, size: 32, offset: 288)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "stop_src", scope: !3902, file: !101, line: 605, baseType: !7, size: 32, offset: 320)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "stop_arg", scope: !3902, file: !101, line: 606, baseType: !7, size: 32, offset: 352)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist", scope: !3902, file: !101, line: 608, baseType: !2709, size: 64, offset: 384)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist_len", scope: !3902, file: !101, line: 609, baseType: !7, size: 32, offset: 448)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3902, file: !101, line: 611, baseType: !3919, size: 64, offset: 512)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !3902, file: !101, line: 612, baseType: !7, size: 32, offset: 576)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "wait_head", scope: !3869, file: !123, line: 366, baseType: !1507, size: 128, offset: 1280)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "cb_mask", scope: !3869, file: !123, line: 367, baseType: !7, size: 32, offset: 1408)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "inttrig", scope: !3869, file: !123, line: 368, baseType: !3924, size: 64, offset: 1472)
!3924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3925, size: 64)
!3925 = !DISubroutineType(types: !3926)
!3926 = !{!177, !224, !3857, !7}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3858, file: !123, line: 165, baseType: !233, size: 64, offset: 384)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !3858, file: !123, line: 166, baseType: !233, size: 64, offset: 448)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "runflags", scope: !3858, file: !123, line: 167, baseType: !7, size: 32, offset: 512)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "spin_lock", scope: !3858, file: !123, line: 168, baseType: !258, offset: 544)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "io_bits", scope: !3858, file: !123, line: 170, baseType: !7, size: 32, offset: 544)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata", scope: !3858, file: !123, line: 172, baseType: !7, size: 32, offset: 576)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata_list", scope: !3858, file: !123, line: 173, baseType: !3934, size: 64, offset: 640)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "range_table", scope: !3858, file: !123, line: 175, baseType: !3936, size: 64, offset: 704)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3938)
!3938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_lrange", file: !123, line: 635, size: 32, elements: !3939)
!3939 = !{!3940, !3941}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3938, file: !123, line: 636, baseType: !177, size: 32)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3938, file: !123, line: 637, baseType: !3942, offset: 32)
!3942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3943, elements: !2357)
!3943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_krange", file: !101, line: 685, size: 96, elements: !3944)
!3944 = !{!3945, !3946, !3947}
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !3943, file: !101, line: 686, baseType: !177, size: 32)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3943, file: !101, line: 687, baseType: !177, size: 32, offset: 32)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3943, file: !101, line: 688, baseType: !7, size: 32, offset: 64)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "range_table_list", scope: !3858, file: !123, line: 176, baseType: !3949, size: 64, offset: 768)
!3949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3950, size: 64)
!3950 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3936)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist", scope: !3858, file: !123, line: 178, baseType: !2709, size: 64, offset: 832)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "insn_read", scope: !3858, file: !123, line: 180, baseType: !3953, size: 64, offset: 896)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DISubroutineType(types: !3955)
!3955 = !{!177, !224, !3857, !3956, !2709}
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_insn", file: !101, line: 491, size: 320, elements: !3958)
!3958 = !{!3959, !3960, !3961, !3962, !3963, !3964}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3957, file: !101, line: 492, baseType: !7, size: 32)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !3957, file: !101, line: 493, baseType: !7, size: 32, offset: 32)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3957, file: !101, line: 494, baseType: !2709, size: 64, offset: 64)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "subdev", scope: !3957, file: !101, line: 495, baseType: !7, size: 32, offset: 128)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "chanspec", scope: !3957, file: !101, line: 496, baseType: !7, size: 32, offset: 160)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !3957, file: !101, line: 497, baseType: !3965, size: 96, offset: 192)
!3965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 96, elements: !300)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "insn_write", scope: !3858, file: !123, line: 182, baseType: !3953, size: 64, offset: 960)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "insn_bits", scope: !3858, file: !123, line: 184, baseType: !3953, size: 64, offset: 1024)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "insn_config", scope: !3858, file: !123, line: 186, baseType: !3953, size: 64, offset: 1088)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmd", scope: !3858, file: !123, line: 191, baseType: !3970, size: 64, offset: 1152)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!177, !224, !3857}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmdtest", scope: !3858, file: !123, line: 192, baseType: !3974, size: 64, offset: 1216)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DISubroutineType(types: !3976)
!3976 = !{!177, !224, !3857, !3977}
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3858, file: !123, line: 195, baseType: !3970, size: 64, offset: 1280)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "cancel", scope: !3858, file: !123, line: 196, baseType: !3970, size: 64, offset: 1344)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "buf_change", scope: !3858, file: !123, line: 199, baseType: !3970, size: 64, offset: 1408)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "munge", scope: !3858, file: !123, line: 202, baseType: !3982, size: 64, offset: 1472)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DISubroutineType(types: !3984)
!3984 = !{null, !224, !3857, !233, !7, !7}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "async_dma_dir", scope: !3858, file: !123, line: 205, baseType: !93, size: 32, offset: 1536)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3858, file: !123, line: 207, baseType: !7, size: 32, offset: 1568)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !3858, file: !123, line: 209, baseType: !235, size: 64, offset: 1600)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3858, file: !123, line: 210, baseType: !177, size: 32, offset: 1664)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "readback", scope: !3858, file: !123, line: 212, baseType: !2709, size: 64, offset: 1728)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "mmio", scope: !225, file: !123, line: 565, baseType: !233, size: 64, offset: 1216)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "iobase", scope: !225, file: !123, line: 566, baseType: !349, size: 64, offset: 1280)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "iolen", scope: !225, file: !123, line: 567, baseType: !349, size: 64, offset: 1344)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !225, file: !123, line: 568, baseType: !7, size: 32, offset: 1408)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "read_subdev", scope: !225, file: !123, line: 570, baseType: !3857, size: 64, offset: 1472)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "write_subdev", scope: !225, file: !123, line: 571, baseType: !3857, size: 64, offset: 1536)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "async_queue", scope: !225, file: !123, line: 573, baseType: !2985, size: 64, offset: 1600)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !225, file: !123, line: 575, baseType: !3998, size: 64, offset: 1664)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{!177, !224}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !225, file: !123, line: 576, baseType: !4002, size: 64, offset: 1728)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = !DISubroutineType(types: !4004)
!4004 = !{null, !224}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "insn_device_config", scope: !225, file: !123, line: 577, baseType: !4006, size: 64, offset: 1792)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DISubroutineType(types: !4008)
!4008 = !{!177, !224, !3956, !2709}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "get_valid_routes", scope: !225, file: !123, line: 579, baseType: !4010, size: 64, offset: 1856)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!7, !224, !7, !2709}
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_devconfig", file: !101, line: 834, size: 1184, elements: !4015)
!4015 = !{!4016, !4018}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !4014, file: !101, line: 835, baseType: !4017, size: 160)
!4017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 160, elements: !2227)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !4014, file: !101, line: 836, baseType: !4019, size: 1024, offset: 160)
!4019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 1024, elements: !2256)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !210, file: !123, line: 444, baseType: !4002, size: 64, offset: 256)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "auto_attach", scope: !210, file: !123, line: 445, baseType: !4022, size: 64, offset: 320)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = !DISubroutineType(types: !4024)
!4024 = !{!177, !224, !349}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "num_names", scope: !210, file: !123, line: 446, baseType: !7, size: 32, offset: 384)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !210, file: !123, line: 447, baseType: !4027, size: 64, offset: 448)
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !210, file: !123, line: 448, baseType: !177, size: 32, offset: 512)
!4030 = !DIGlobalVariableExpression(var: !4031, expr: !DIExpression())
!4031 = distinct !DIGlobalVariable(name: "apci3xxx_boardtypes", scope: !2, file: !3, line: 86, type: !4032, isLocal: true, isDefinition: true)
!4032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4033, size: 6400, elements: !4046)
!4033 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4034)
!4034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apci3xxx_boardinfo", file: !3, line: 73, size: 256, elements: !4035)
!4035 = !{!4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045}
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4034, file: !3, line: 74, baseType: !215, size: 64)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "ai_subdev_flags", scope: !4034, file: !3, line: 75, baseType: !177, size: 32, offset: 64)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "ai_n_chan", scope: !4034, file: !3, line: 76, baseType: !177, size: 32, offset: 96)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "ai_maxdata", scope: !4034, file: !3, line: 77, baseType: !7, size: 32, offset: 128)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "ai_conv_units", scope: !4034, file: !3, line: 78, baseType: !452, size: 8, offset: 160)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "ai_min_acq_ns", scope: !4034, file: !3, line: 79, baseType: !7, size: 32, offset: 192)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "has_ao", scope: !4034, file: !3, line: 80, baseType: !7, size: 1, offset: 224, flags: DIFlagBitField, extraData: i64 224)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "has_dig_in", scope: !4034, file: !3, line: 81, baseType: !7, size: 1, offset: 225, flags: DIFlagBitField, extraData: i64 224)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "has_dig_out", scope: !4034, file: !3, line: 82, baseType: !7, size: 1, offset: 226, flags: DIFlagBitField, extraData: i64 224)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "has_ttl_io", scope: !4034, file: !3, line: 83, baseType: !7, size: 1, offset: 227, flags: DIFlagBitField, extraData: i64 224)
!4046 = !{!4047}
!4047 = !DISubrange(count: 25)
!4048 = !DIGlobalVariableExpression(var: !4049, expr: !DIExpression())
!4049 = distinct !DIGlobalVariable(name: "apci3xxx_ai_range", scope: !2, file: !3, line: 25, type: !3937, isLocal: true, isDefinition: true)
!4050 = !DIGlobalVariableExpression(var: !4051, expr: !DIExpression())
!4051 = distinct !DIGlobalVariable(name: "apci3xxx_ao_range", scope: !2, file: !3, line: 38, type: !3937, isLocal: true, isDefinition: true)
!4052 = !DIGlobalVariableExpression(var: !4053, expr: !DIExpression())
!4053 = distinct !DIGlobalVariable(name: "apci3xxx_pci_driver", scope: !2, file: !3, line: 951, type: !4054, isLocal: true, isDefinition: true)
!4054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !4055, line: 858, size: 2048, elements: !4056)
!4055 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!4056 = !{!4057, !4058, !4059, !4071, !4291, !4295, !4299, !4303, !4304, !4308, !4326, !4327, !4328}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4054, file: !4055, line: 859, baseType: !244, size: 128)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4054, file: !4055, line: 860, baseType: !215, size: 64, offset: 128)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4054, file: !4055, line: 861, baseType: !4060, size: 64, offset: 192)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4062)
!4062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3482, line: 38, size: 256, elements: !4063)
!4063 = !{!4064, !4065, !4066, !4067, !4068, !4069, !4070}
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4062, file: !3482, line: 39, baseType: !442, size: 32)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4062, file: !3482, line: 39, baseType: !442, size: 32, offset: 32)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4062, file: !3482, line: 40, baseType: !442, size: 32, offset: 64)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4062, file: !3482, line: 40, baseType: !442, size: 32, offset: 96)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4062, file: !3482, line: 41, baseType: !442, size: 32, offset: 128)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4062, file: !3482, line: 41, baseType: !442, size: 32, offset: 160)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4062, file: !3482, line: 42, baseType: !3501, size: 64, offset: 192)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4054, file: !4055, line: 862, baseType: !4072, size: 64, offset: 256)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DISubroutineType(types: !4074)
!4074 = !{!177, !4075, !4060}
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !4055, line: 309, size: 19264, elements: !4077)
!4077 = !{!4078, !4079, !4154, !4155, !4156, !4157, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4185, !4187, !4188, !4189, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4213, !4214, !4215, !4216, !4218, !4219, !4220, !4221, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4264, !4265, !4267, !4268, !4269, !4270, !4272, !4273, !4274, !4277, !4284, !4285, !4286, !4287, !4288, !4289, !4290}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !4076, file: !4055, line: 310, baseType: !244, size: 128)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4076, file: !4055, line: 311, baseType: !4080, size: 64, offset: 128)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !4055, line: 605, size: 8064, elements: !4082)
!4082 = !{!4083, !4084, !4085, !4086, !4087, !4088, !4089, !4104, !4105, !4106, !4130, !4133, !4134, !4138, !4139, !4140, !4141, !4142, !4146, !4147, !4149, !4150, !4151, !4152, !4153}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4081, file: !4055, line: 606, baseType: !244, size: 128)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4081, file: !4055, line: 607, baseType: !4080, size: 64, offset: 128)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4081, file: !4055, line: 608, baseType: !244, size: 128, offset: 192)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4081, file: !4055, line: 609, baseType: !244, size: 128, offset: 320)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4081, file: !4055, line: 610, baseType: !4075, size: 64, offset: 448)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4081, file: !4055, line: 611, baseType: !244, size: 128, offset: 512)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4081, file: !4055, line: 613, baseType: !4090, size: 256, offset: 640)
!4090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4091, size: 256, elements: !1181)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4093, line: 20, size: 512, elements: !4094)
!4093 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!4094 = !{!4095, !4097, !4098, !4099, !4100, !4101, !4102, !4103}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4092, file: !4093, line: 21, baseType: !4096, size: 64)
!4096 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !245, line: 158, baseType: !2151)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4092, file: !4093, line: 22, baseType: !4096, size: 64, offset: 64)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4092, file: !4093, line: 23, baseType: !215, size: 64, offset: 128)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4092, file: !4093, line: 24, baseType: !349, size: 64, offset: 192)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4092, file: !4093, line: 25, baseType: !349, size: 64, offset: 256)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4092, file: !4093, line: 26, baseType: !4091, size: 64, offset: 320)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4092, file: !4093, line: 26, baseType: !4091, size: 64, offset: 384)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4092, file: !4093, line: 26, baseType: !4091, size: 64, offset: 448)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4081, file: !4055, line: 614, baseType: !244, size: 128, offset: 896)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !4081, file: !4055, line: 615, baseType: !4092, size: 512, offset: 1024)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4081, file: !4055, line: 617, baseType: !4107, size: 64, offset: 1536)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !4055, line: 731, size: 320, elements: !4109)
!4109 = !{!4110, !4114, !4118, !4122, !4126}
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4108, file: !4055, line: 732, baseType: !4111, size: 64)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4112 = !DISubroutineType(types: !4113)
!4113 = !{!177, !4080}
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4108, file: !4055, line: 733, baseType: !4115, size: 64, offset: 64)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4116 = !DISubroutineType(types: !4117)
!4117 = !{null, !4080}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4108, file: !4055, line: 734, baseType: !4119, size: 64, offset: 128)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{!233, !4080, !7, !177}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4108, file: !4055, line: 735, baseType: !4123, size: 64, offset: 192)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{!177, !4080, !7, !177, !177, !1441}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4108, file: !4055, line: 736, baseType: !4127, size: 64, offset: 256)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DISubroutineType(types: !4129)
!4129 = !{!177, !4080, !7, !177, !177, !440}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4081, file: !4055, line: 618, baseType: !4131, size: 64, offset: 1600)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !4055, line: 537, flags: DIFlagFwdDecl)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4081, file: !4055, line: 619, baseType: !233, size: 64, offset: 1664)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !4081, file: !4055, line: 620, baseType: !4135, size: 64, offset: 1728)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4137, line: 123, flags: DIFlagFwdDecl)
!4137 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4081, file: !4055, line: 622, baseType: !452, size: 8, offset: 1792)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4081, file: !4055, line: 623, baseType: !452, size: 8, offset: 1800)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !4081, file: !4055, line: 624, baseType: !452, size: 8, offset: 1808)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !4081, file: !4055, line: 625, baseType: !452, size: 8, offset: 1816)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4081, file: !4055, line: 630, baseType: !4143, size: 384, offset: 1824)
!4143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 384, elements: !4144)
!4144 = !{!4145}
!4145 = !DISubrange(count: 48)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !4081, file: !4055, line: 632, baseType: !341, size: 16, offset: 2208)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !4081, file: !4055, line: 633, baseType: !4148, size: 16, offset: 2224)
!4148 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !4055, line: 237, baseType: !341)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !4081, file: !4055, line: 634, baseType: !235, size: 64, offset: 2240)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4081, file: !4055, line: 635, baseType: !236, size: 5568, offset: 2304)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !4081, file: !4055, line: 636, baseType: !367, size: 64, offset: 7872)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !4081, file: !4055, line: 637, baseType: !367, size: 64, offset: 7936)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !4081, file: !4055, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !4076, file: !4055, line: 312, baseType: !4080, size: 64, offset: 192)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4076, file: !4055, line: 314, baseType: !233, size: 64, offset: 256)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !4076, file: !4055, line: 315, baseType: !4135, size: 64, offset: 320)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4076, file: !4055, line: 316, baseType: !4158, size: 64, offset: 384)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !4055, line: 69, size: 832, elements: !4160)
!4160 = !{!4161, !4162, !4163, !4166, !4167}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4159, file: !4055, line: 70, baseType: !4080, size: 64)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4159, file: !4055, line: 71, baseType: !244, size: 128, offset: 64)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4159, file: !4055, line: 72, baseType: !4164, size: 64, offset: 192)
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4165, size: 64)
!4165 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !4055, line: 72, flags: DIFlagFwdDecl)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4159, file: !4055, line: 73, baseType: !452, size: 8, offset: 256)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4159, file: !4055, line: 74, baseType: !239, size: 512, offset: 320)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !4076, file: !4055, line: 318, baseType: !7, size: 32, offset: 448)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4076, file: !4055, line: 319, baseType: !341, size: 16, offset: 480)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4076, file: !4055, line: 320, baseType: !341, size: 16, offset: 496)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4076, file: !4055, line: 321, baseType: !341, size: 16, offset: 512)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4076, file: !4055, line: 322, baseType: !341, size: 16, offset: 528)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4076, file: !4055, line: 323, baseType: !7, size: 32, offset: 544)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4076, file: !4055, line: 324, baseType: !1378, size: 8, offset: 576)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4076, file: !4055, line: 325, baseType: !1378, size: 8, offset: 584)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !4076, file: !4055, line: 330, baseType: !1378, size: 8, offset: 592)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !4076, file: !4055, line: 331, baseType: !1378, size: 8, offset: 600)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !4076, file: !4055, line: 332, baseType: !1378, size: 8, offset: 608)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !4076, file: !4055, line: 333, baseType: !1378, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !4076, file: !4055, line: 334, baseType: !1378, size: 8, offset: 624)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4076, file: !4055, line: 335, baseType: !1378, size: 8, offset: 632)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !4076, file: !4055, line: 336, baseType: !885, size: 16, offset: 640)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !4076, file: !4055, line: 337, baseType: !4184, size: 64, offset: 704)
!4184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4076, file: !4055, line: 339, baseType: !4186, size: 64, offset: 768)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4076, file: !4055, line: 340, baseType: !446, size: 64, offset: 832)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4076, file: !4055, line: 346, baseType: !3694, size: 128, offset: 896)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !4076, file: !4055, line: 348, baseType: !4190, size: 32, offset: 1024)
!4190 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !4055, line: 155, baseType: !177)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !4076, file: !4055, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !4076, file: !4055, line: 352, baseType: !1378, size: 8, offset: 1064)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !4076, file: !4055, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !4076, file: !4055, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !4076, file: !4055, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !4076, file: !4055, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !4076, file: !4055, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !4076, file: !4055, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !4076, file: !4055, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !4076, file: !4055, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !4076, file: !4055, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !4076, file: !4055, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !4076, file: !4055, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !4076, file: !4055, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !4076, file: !4055, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !4076, file: !4055, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !4076, file: !4055, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !4076, file: !4055, line: 376, baseType: !7, size: 32, offset: 1120)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !4076, file: !4055, line: 377, baseType: !7, size: 32, offset: 1152)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !4076, file: !4055, line: 380, baseType: !4211, size: 64, offset: 1216)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !4055, line: 303, flags: DIFlagFwdDecl)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !4076, file: !4055, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !4076, file: !4055, line: 383, baseType: !177, size: 32, offset: 1312)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !4076, file: !4055, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !4076, file: !4055, line: 387, baseType: !4217, size: 32, offset: 1376)
!4217 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !4055, line: 180, baseType: !7)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4076, file: !4055, line: 388, baseType: !236, size: 5568, offset: 1408)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !4076, file: !4055, line: 390, baseType: !177, size: 32, offset: 6976)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4076, file: !4055, line: 396, baseType: !7, size: 32, offset: 7008)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4076, file: !4055, line: 397, baseType: !4222, size: 8704, offset: 7040)
!4222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4092, size: 8704, elements: !4223)
!4223 = !{!4224}
!4224 = !DISubrange(count: 17)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4076, file: !4055, line: 399, baseType: !515, size: 8, offset: 15744)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !4076, file: !4055, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !4076, file: !4055, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !4076, file: !4055, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !4076, file: !4055, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !4076, file: !4055, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !4076, file: !4055, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !4076, file: !4055, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !4076, file: !4055, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !4076, file: !4055, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !4076, file: !4055, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !4076, file: !4055, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !4076, file: !4055, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !4076, file: !4055, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !4076, file: !4055, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !4076, file: !4055, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !4076, file: !4055, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !4076, file: !4055, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !4076, file: !4055, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !4076, file: !4055, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !4076, file: !4055, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !4076, file: !4055, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !4076, file: !4055, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !4076, file: !4055, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !4076, file: !4055, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !4076, file: !4055, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !4076, file: !4055, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !4076, file: !4055, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !4076, file: !4055, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !4076, file: !4055, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !4076, file: !4055, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !4076, file: !4055, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !4076, file: !4055, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !4076, file: !4055, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !4076, file: !4055, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !4076, file: !4055, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !4076, file: !4055, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !4076, file: !4055, line: 450, baseType: !4263, size: 16, offset: 15792)
!4263 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !4055, line: 206, baseType: !341)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !4076, file: !4055, line: 451, baseType: !773, size: 32, offset: 15808)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !4076, file: !4055, line: 453, baseType: !4266, size: 512, offset: 15840)
!4266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, size: 512, elements: !1761)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !4076, file: !4055, line: 454, baseType: !660, size: 64, offset: 16384)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !4076, file: !4055, line: 455, baseType: !367, size: 64, offset: 16448)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !4076, file: !4055, line: 456, baseType: !177, size: 32, offset: 16512)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !4076, file: !4055, line: 457, baseType: !4271, size: 1088, offset: 16576)
!4271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, size: 1088, elements: !4223)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !4076, file: !4055, line: 458, baseType: !4271, size: 1088, offset: 17664)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !4076, file: !4055, line: 469, baseType: !353, size: 64, offset: 18752)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !4076, file: !4055, line: 471, baseType: !4275, size: 64, offset: 18816)
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4276, size: 64)
!4276 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !4055, line: 304, flags: DIFlagFwdDecl)
!4277 = !DIDerivedType(tag: DW_TAG_member, scope: !4076, file: !4055, line: 478, baseType: !4278, size: 64, offset: 18880)
!4278 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4076, file: !4055, line: 478, size: 64, elements: !4279)
!4279 = !{!4280, !4283}
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4278, file: !4055, line: 479, baseType: !4281, size: 64)
!4281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4282, size: 64)
!4282 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !4055, line: 305, flags: DIFlagFwdDecl)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4278, file: !4055, line: 480, baseType: !4075, size: 64)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !4076, file: !4055, line: 482, baseType: !885, size: 16, offset: 18944)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !4076, file: !4055, line: 483, baseType: !1378, size: 8, offset: 18960)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !4076, file: !4055, line: 497, baseType: !885, size: 16, offset: 18976)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !4076, file: !4055, line: 498, baseType: !2151, size: 64, offset: 19008)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !4076, file: !4055, line: 499, baseType: !346, size: 64, offset: 19072)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !4076, file: !4055, line: 500, baseType: !299, size: 64, offset: 19136)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !4076, file: !4055, line: 502, baseType: !349, size: 64, offset: 19200)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4054, file: !4055, line: 863, baseType: !4292, size: 64, offset: 320)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = !DISubroutineType(types: !4294)
!4294 = !{null, !4075}
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4054, file: !4055, line: 864, baseType: !4296, size: 64, offset: 384)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = !DISubroutineType(types: !4298)
!4298 = !{!177, !4075, !3512}
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4054, file: !4055, line: 865, baseType: !4300, size: 64, offset: 448)
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = !DISubroutineType(types: !4302)
!4302 = !{!177, !4075}
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4054, file: !4055, line: 866, baseType: !4292, size: 64, offset: 512)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4054, file: !4055, line: 867, baseType: !4305, size: 64, offset: 576)
!4305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4306, size: 64)
!4306 = !DISubroutineType(types: !4307)
!4307 = !{!177, !4075, !177}
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4054, file: !4055, line: 868, baseType: !4309, size: 64, offset: 640)
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4311)
!4311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !4055, line: 795, size: 384, elements: !4312)
!4312 = !{!4313, !4318, !4322, !4323, !4324, !4325}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4311, file: !4055, line: 797, baseType: !4314, size: 64)
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = !DISubroutineType(types: !4316)
!4316 = !{!4317, !4075, !4217}
!4317 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !4055, line: 772, baseType: !7)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4311, file: !4055, line: 801, baseType: !4319, size: 64, offset: 64)
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4320, size: 64)
!4320 = !DISubroutineType(types: !4321)
!4321 = !{!4317, !4075}
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4311, file: !4055, line: 804, baseType: !4319, size: 64, offset: 128)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4311, file: !4055, line: 807, baseType: !4292, size: 64, offset: 192)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4311, file: !4055, line: 808, baseType: !4292, size: 64, offset: 256)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4311, file: !4055, line: 811, baseType: !4292, size: 64, offset: 320)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4054, file: !4055, line: 869, baseType: !353, size: 64, offset: 704)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4054, file: !4055, line: 870, baseType: !3470, size: 1152, offset: 768)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4054, file: !4055, line: 871, baseType: !4329, size: 128, offset: 1920)
!4329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !4055, line: 759, size: 128, elements: !4330)
!4330 = !{!4331, !4332}
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4329, file: !4055, line: 760, baseType: !258)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4329, file: !4055, line: 761, baseType: !244, size: 128)
!4333 = !DIGlobalVariableExpression(var: !4334, expr: !DIExpression())
!4334 = distinct !DIGlobalVariable(name: "apci3xxx_pci_table", scope: !2, file: !3, line: 921, type: !4335, isLocal: true, isDefinition: true)
!4335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4061, size: 6656, elements: !4336)
!4336 = !{!4337}
!4337 = !DISubrange(count: 26)
!4338 = !{i32 7, !"Dwarf Version", i32 4}
!4339 = !{i32 2, !"Debug Info Version", i32 3}
!4340 = !{i32 1, !"wchar_size", i32 2}
!4341 = !{i32 1, !"Code Model", i32 2}
!4342 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4343 = distinct !DISubprogram(name: "apci3xxx_driver_init", scope: !3, file: !3, line: 957, type: !4344, scopeLine: 957, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!4344 = !DISubroutineType(types: !4345)
!4345 = !{!177}
!4346 = !DILocation(line: 957, column: 1, scope: !4343)
!4347 = distinct !DISubprogram(name: "apci3xxx_driver_exit", scope: !3, file: !3, line: 957, type: !184, scopeLine: 957, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!4348 = !DILocation(line: 957, column: 1, scope: !4347)
!4349 = distinct !DISubprogram(name: "apci3xxx_detach", scope: !3, file: !3, line: 901, type: !4003, scopeLine: 902, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!4350 = !DILocalVariable(name: "dev", arg: 1, scope: !4349, file: !3, line: 901, type: !224)
!4351 = !DILocation(line: 901, column: 51, scope: !4349)
!4352 = !DILocation(line: 903, column: 6, scope: !4353)
!4353 = distinct !DILexicalBlock(scope: !4349, file: !3, line: 903, column: 6)
!4354 = !DILocation(line: 903, column: 11, scope: !4353)
!4355 = !DILocation(line: 903, column: 6, scope: !4349)
!4356 = !DILocation(line: 904, column: 18, scope: !4353)
!4357 = !DILocation(line: 904, column: 3, scope: !4353)
!4358 = !DILocation(line: 905, column: 20, scope: !4349)
!4359 = !DILocation(line: 905, column: 2, scope: !4349)
!4360 = !DILocation(line: 906, column: 1, scope: !4349)
!4361 = distinct !DISubprogram(name: "apci3xxx_auto_attach", scope: !3, file: !3, line: 753, type: !4023, scopeLine: 755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!4362 = !DILocalVariable(name: "dev", arg: 1, scope: !4361, file: !3, line: 753, type: !224)
!4363 = !DILocation(line: 753, column: 55, scope: !4361)
!4364 = !DILocalVariable(name: "context", arg: 2, scope: !4361, file: !3, line: 754, type: !349)
!4365 = !DILocation(line: 754, column: 19, scope: !4361)
!4366 = !DILocalVariable(name: "pcidev", scope: !4361, file: !3, line: 756, type: !4075)
!4367 = !DILocation(line: 756, column: 18, scope: !4361)
!4368 = !DILocation(line: 756, column: 45, scope: !4361)
!4369 = !DILocation(line: 756, column: 27, scope: !4361)
!4370 = !DILocalVariable(name: "board", scope: !4361, file: !3, line: 757, type: !4371)
!4371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4372 = !DILocation(line: 757, column: 35, scope: !4361)
!4373 = !DILocalVariable(name: "devpriv", scope: !4361, file: !3, line: 758, type: !4374)
!4374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4375, size: 64)
!4375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apci3xxx_private", file: !3, line: 343, size: 64, elements: !4376)
!4376 = !{!4377, !4378}
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "ai_timer", scope: !4375, file: !3, line: 344, baseType: !7, size: 32)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "ai_time_base", scope: !4375, file: !3, line: 345, baseType: !452, size: 8, offset: 32)
!4379 = !DILocation(line: 758, column: 27, scope: !4361)
!4380 = !DILocalVariable(name: "s", scope: !4361, file: !3, line: 759, type: !3857)
!4381 = !DILocation(line: 759, column: 27, scope: !4361)
!4382 = !DILocalVariable(name: "n_subdevices", scope: !4361, file: !3, line: 760, type: !177)
!4383 = !DILocation(line: 760, column: 6, scope: !4361)
!4384 = !DILocalVariable(name: "subdev", scope: !4361, file: !3, line: 761, type: !177)
!4385 = !DILocation(line: 761, column: 6, scope: !4361)
!4386 = !DILocalVariable(name: "ret", scope: !4361, file: !3, line: 762, type: !177)
!4387 = !DILocation(line: 762, column: 6, scope: !4361)
!4388 = !DILocation(line: 764, column: 6, scope: !4389)
!4389 = distinct !DILexicalBlock(scope: !4361, file: !3, line: 764, column: 6)
!4390 = !DILocation(line: 764, column: 14, scope: !4389)
!4391 = !DILocation(line: 764, column: 6, scope: !4361)
!4392 = !DILocation(line: 765, column: 32, scope: !4389)
!4393 = !DILocation(line: 765, column: 12, scope: !4389)
!4394 = !DILocation(line: 765, column: 9, scope: !4389)
!4395 = !DILocation(line: 765, column: 3, scope: !4389)
!4396 = !DILocation(line: 766, column: 7, scope: !4397)
!4397 = distinct !DILexicalBlock(scope: !4361, file: !3, line: 766, column: 6)
!4398 = !DILocation(line: 766, column: 6, scope: !4361)
!4399 = !DILocation(line: 767, column: 3, scope: !4397)
!4400 = !DILocation(line: 768, column: 19, scope: !4361)
!4401 = !DILocation(line: 768, column: 2, scope: !4361)
!4402 = !DILocation(line: 768, column: 7, scope: !4361)
!4403 = !DILocation(line: 768, column: 17, scope: !4361)
!4404 = !DILocation(line: 769, column: 20, scope: !4361)
!4405 = !DILocation(line: 769, column: 27, scope: !4361)
!4406 = !DILocation(line: 769, column: 2, scope: !4361)
!4407 = !DILocation(line: 769, column: 7, scope: !4361)
!4408 = !DILocation(line: 769, column: 18, scope: !4361)
!4409 = !DILocation(line: 771, column: 33, scope: !4361)
!4410 = !DILocation(line: 771, column: 12, scope: !4361)
!4411 = !DILocation(line: 771, column: 10, scope: !4361)
!4412 = !DILocation(line: 772, column: 7, scope: !4413)
!4413 = distinct !DILexicalBlock(scope: !4361, file: !3, line: 772, column: 6)
!4414 = !DILocation(line: 772, column: 6, scope: !4361)
!4415 = !DILocation(line: 773, column: 3, scope: !4413)
!4416 = !DILocation(line: 775, column: 26, scope: !4361)
!4417 = !DILocation(line: 775, column: 8, scope: !4361)
!4418 = !DILocation(line: 775, column: 6, scope: !4361)
!4419 = !DILocation(line: 776, column: 6, scope: !4420)
!4420 = distinct !DILexicalBlock(scope: !4361, file: !3, line: 776, column: 6)
!4421 = !DILocation(line: 776, column: 6, scope: !4361)
!4422 = !DILocation(line: 777, column: 10, scope: !4420)
!4423 = !DILocation(line: 777, column: 3, scope: !4420)
!4424 = !DILocation(line: 779, column: 16, scope: !4361)
!4425 = !DILocation(line: 779, column: 2, scope: !4361)
!4426 = !DILocation(line: 779, column: 7, scope: !4361)
!4427 = !DILocation(line: 779, column: 14, scope: !4361)
!4428 = !DILocation(line: 780, column: 30, scope: !4361)
!4429 = !DILocation(line: 780, column: 14, scope: !4361)
!4430 = !DILocation(line: 780, column: 2, scope: !4361)
!4431 = !DILocation(line: 780, column: 7, scope: !4361)
!4432 = !DILocation(line: 780, column: 12, scope: !4361)
!4433 = !DILocation(line: 781, column: 7, scope: !4434)
!4434 = distinct !DILexicalBlock(scope: !4361, file: !3, line: 781, column: 6)
!4435 = !DILocation(line: 781, column: 12, scope: !4434)
!4436 = !DILocation(line: 781, column: 6, scope: !4361)
!4437 = !DILocation(line: 782, column: 3, scope: !4434)
!4438 = !DILocation(line: 784, column: 6, scope: !4439)
!4439 = distinct !DILexicalBlock(scope: !4361, file: !3, line: 784, column: 6)
!4440 = !DILocation(line: 784, column: 14, scope: !4439)
!4441 = !DILocation(line: 784, column: 18, scope: !4439)
!4442 = !DILocation(line: 784, column: 6, scope: !4361)
!4443 = !DILocation(line: 785, column: 21, scope: !4444)
!4444 = distinct !DILexicalBlock(scope: !4439, file: !3, line: 784, column: 23)
!4445 = !DILocation(line: 785, column: 29, scope: !4444)
!4446 = !DILocation(line: 786, column: 20, scope: !4444)
!4447 = !DILocation(line: 786, column: 25, scope: !4444)
!4448 = !DILocation(line: 786, column: 37, scope: !4444)
!4449 = !DILocation(line: 785, column: 9, scope: !4444)
!4450 = !DILocation(line: 785, column: 7, scope: !4444)
!4451 = !DILocation(line: 787, column: 7, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4444, file: !3, line: 787, column: 7)
!4453 = !DILocation(line: 787, column: 11, scope: !4452)
!4454 = !DILocation(line: 787, column: 7, scope: !4444)
!4455 = !DILocation(line: 788, column: 15, scope: !4452)
!4456 = !DILocation(line: 788, column: 23, scope: !4452)
!4457 = !DILocation(line: 788, column: 4, scope: !4452)
!4458 = !DILocation(line: 788, column: 9, scope: !4452)
!4459 = !DILocation(line: 788, column: 13, scope: !4452)
!4460 = !DILocation(line: 789, column: 2, scope: !4444)
!4461 = !DILocation(line: 791, column: 18, scope: !4361)
!4462 = !DILocation(line: 791, column: 25, scope: !4361)
!4463 = !DILocation(line: 791, column: 46, scope: !4361)
!4464 = !DILocation(line: 791, column: 53, scope: !4361)
!4465 = !DILocation(line: 791, column: 44, scope: !4361)
!4466 = !DILocation(line: 792, column: 10, scope: !4361)
!4467 = !DILocation(line: 792, column: 17, scope: !4361)
!4468 = !DILocation(line: 791, column: 60, scope: !4361)
!4469 = !DILocation(line: 792, column: 30, scope: !4361)
!4470 = !DILocation(line: 792, column: 37, scope: !4361)
!4471 = !DILocation(line: 792, column: 28, scope: !4361)
!4472 = !DILocation(line: 793, column: 10, scope: !4361)
!4473 = !DILocation(line: 793, column: 17, scope: !4361)
!4474 = !DILocation(line: 792, column: 49, scope: !4361)
!4475 = !DILocation(line: 791, column: 15, scope: !4361)
!4476 = !DILocation(line: 794, column: 32, scope: !4361)
!4477 = !DILocation(line: 794, column: 37, scope: !4361)
!4478 = !DILocation(line: 794, column: 8, scope: !4361)
!4479 = !DILocation(line: 794, column: 6, scope: !4361)
!4480 = !DILocation(line: 795, column: 6, scope: !4481)
!4481 = distinct !DILexicalBlock(scope: !4361, file: !3, line: 795, column: 6)
!4482 = !DILocation(line: 795, column: 6, scope: !4361)
!4483 = !DILocation(line: 796, column: 10, scope: !4481)
!4484 = !DILocation(line: 796, column: 3, scope: !4481)
!4485 = !DILocation(line: 798, column: 9, scope: !4361)
!4486 = !DILocation(line: 801, column: 6, scope: !4487)
!4487 = distinct !DILexicalBlock(scope: !4361, file: !3, line: 801, column: 6)
!4488 = !DILocation(line: 801, column: 13, scope: !4487)
!4489 = !DILocation(line: 801, column: 6, scope: !4361)
!4490 = !DILocation(line: 802, column: 8, scope: !4491)
!4491 = distinct !DILexicalBlock(scope: !4487, file: !3, line: 801, column: 24)
!4492 = !DILocation(line: 802, column: 13, scope: !4491)
!4493 = !DILocation(line: 802, column: 24, scope: !4491)
!4494 = !DILocation(line: 802, column: 5, scope: !4491)
!4495 = !DILocation(line: 803, column: 3, scope: !4491)
!4496 = !DILocation(line: 803, column: 6, scope: !4491)
!4497 = !DILocation(line: 803, column: 12, scope: !4491)
!4498 = !DILocation(line: 804, column: 36, scope: !4491)
!4499 = !DILocation(line: 804, column: 43, scope: !4491)
!4500 = !DILocation(line: 804, column: 34, scope: !4491)
!4501 = !DILocation(line: 804, column: 3, scope: !4491)
!4502 = !DILocation(line: 804, column: 6, scope: !4491)
!4503 = !DILocation(line: 804, column: 19, scope: !4491)
!4504 = !DILocation(line: 805, column: 15, scope: !4491)
!4505 = !DILocation(line: 805, column: 22, scope: !4491)
!4506 = !DILocation(line: 805, column: 3, scope: !4491)
!4507 = !DILocation(line: 805, column: 6, scope: !4491)
!4508 = !DILocation(line: 805, column: 13, scope: !4491)
!4509 = !DILocation(line: 806, column: 16, scope: !4491)
!4510 = !DILocation(line: 806, column: 23, scope: !4491)
!4511 = !DILocation(line: 806, column: 3, scope: !4491)
!4512 = !DILocation(line: 806, column: 6, scope: !4491)
!4513 = !DILocation(line: 806, column: 14, scope: !4491)
!4514 = !DILocation(line: 807, column: 3, scope: !4491)
!4515 = !DILocation(line: 807, column: 6, scope: !4491)
!4516 = !DILocation(line: 807, column: 18, scope: !4491)
!4517 = !DILocation(line: 808, column: 3, scope: !4491)
!4518 = !DILocation(line: 808, column: 6, scope: !4491)
!4519 = !DILocation(line: 808, column: 16, scope: !4491)
!4520 = !DILocation(line: 809, column: 7, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4491, file: !3, line: 809, column: 7)
!4522 = !DILocation(line: 809, column: 12, scope: !4521)
!4523 = !DILocation(line: 809, column: 7, scope: !4491)
!4524 = !DILocation(line: 828, column: 23, scope: !4525)
!4525 = distinct !DILexicalBlock(scope: !4521, file: !3, line: 809, column: 17)
!4526 = !DILocation(line: 828, column: 4, scope: !4525)
!4527 = !DILocation(line: 828, column: 9, scope: !4525)
!4528 = !DILocation(line: 828, column: 21, scope: !4525)
!4529 = !DILocation(line: 829, column: 4, scope: !4525)
!4530 = !DILocation(line: 829, column: 7, scope: !4525)
!4531 = !DILocation(line: 829, column: 20, scope: !4525)
!4532 = !DILocation(line: 830, column: 4, scope: !4525)
!4533 = !DILocation(line: 830, column: 7, scope: !4525)
!4534 = !DILocation(line: 830, column: 20, scope: !4525)
!4535 = !DILocation(line: 831, column: 4, scope: !4525)
!4536 = !DILocation(line: 831, column: 7, scope: !4525)
!4537 = !DILocation(line: 831, column: 18, scope: !4525)
!4538 = !DILocation(line: 832, column: 4, scope: !4525)
!4539 = !DILocation(line: 832, column: 7, scope: !4525)
!4540 = !DILocation(line: 832, column: 14, scope: !4525)
!4541 = !DILocation(line: 833, column: 4, scope: !4525)
!4542 = !DILocation(line: 833, column: 7, scope: !4525)
!4543 = !DILocation(line: 833, column: 14, scope: !4525)
!4544 = !DILocation(line: 834, column: 3, scope: !4525)
!4545 = !DILocation(line: 836, column: 9, scope: !4491)
!4546 = !DILocation(line: 837, column: 2, scope: !4491)
!4547 = !DILocation(line: 840, column: 6, scope: !4548)
!4548 = distinct !DILexicalBlock(scope: !4361, file: !3, line: 840, column: 6)
!4549 = !DILocation(line: 840, column: 13, scope: !4548)
!4550 = !DILocation(line: 840, column: 6, scope: !4361)
!4551 = !DILocation(line: 841, column: 8, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !4548, file: !3, line: 840, column: 21)
!4553 = !DILocation(line: 841, column: 13, scope: !4552)
!4554 = !DILocation(line: 841, column: 24, scope: !4552)
!4555 = !DILocation(line: 841, column: 5, scope: !4552)
!4556 = !DILocation(line: 842, column: 3, scope: !4552)
!4557 = !DILocation(line: 842, column: 6, scope: !4552)
!4558 = !DILocation(line: 842, column: 12, scope: !4552)
!4559 = !DILocation(line: 843, column: 3, scope: !4552)
!4560 = !DILocation(line: 843, column: 6, scope: !4552)
!4561 = !DILocation(line: 843, column: 19, scope: !4552)
!4562 = !DILocation(line: 844, column: 3, scope: !4552)
!4563 = !DILocation(line: 844, column: 6, scope: !4552)
!4564 = !DILocation(line: 844, column: 13, scope: !4552)
!4565 = !DILocation(line: 845, column: 3, scope: !4552)
!4566 = !DILocation(line: 845, column: 6, scope: !4552)
!4567 = !DILocation(line: 845, column: 14, scope: !4552)
!4568 = !DILocation(line: 846, column: 3, scope: !4552)
!4569 = !DILocation(line: 846, column: 6, scope: !4552)
!4570 = !DILocation(line: 846, column: 18, scope: !4552)
!4571 = !DILocation(line: 847, column: 3, scope: !4552)
!4572 = !DILocation(line: 847, column: 6, scope: !4552)
!4573 = !DILocation(line: 847, column: 17, scope: !4552)
!4574 = !DILocation(line: 849, column: 38, scope: !4552)
!4575 = !DILocation(line: 849, column: 9, scope: !4552)
!4576 = !DILocation(line: 849, column: 7, scope: !4552)
!4577 = !DILocation(line: 850, column: 7, scope: !4578)
!4578 = distinct !DILexicalBlock(scope: !4552, file: !3, line: 850, column: 7)
!4579 = !DILocation(line: 850, column: 7, scope: !4552)
!4580 = !DILocation(line: 851, column: 11, scope: !4578)
!4581 = !DILocation(line: 851, column: 4, scope: !4578)
!4582 = !DILocation(line: 853, column: 9, scope: !4552)
!4583 = !DILocation(line: 854, column: 2, scope: !4552)
!4584 = !DILocation(line: 857, column: 6, scope: !4585)
!4585 = distinct !DILexicalBlock(scope: !4361, file: !3, line: 857, column: 6)
!4586 = !DILocation(line: 857, column: 13, scope: !4585)
!4587 = !DILocation(line: 857, column: 6, scope: !4361)
!4588 = !DILocation(line: 858, column: 8, scope: !4589)
!4589 = distinct !DILexicalBlock(scope: !4585, file: !3, line: 857, column: 25)
!4590 = !DILocation(line: 858, column: 13, scope: !4589)
!4591 = !DILocation(line: 858, column: 24, scope: !4589)
!4592 = !DILocation(line: 858, column: 5, scope: !4589)
!4593 = !DILocation(line: 859, column: 3, scope: !4589)
!4594 = !DILocation(line: 859, column: 6, scope: !4589)
!4595 = !DILocation(line: 859, column: 12, scope: !4589)
!4596 = !DILocation(line: 860, column: 3, scope: !4589)
!4597 = !DILocation(line: 860, column: 6, scope: !4589)
!4598 = !DILocation(line: 860, column: 19, scope: !4589)
!4599 = !DILocation(line: 861, column: 3, scope: !4589)
!4600 = !DILocation(line: 861, column: 6, scope: !4589)
!4601 = !DILocation(line: 861, column: 13, scope: !4589)
!4602 = !DILocation(line: 862, column: 3, scope: !4589)
!4603 = !DILocation(line: 862, column: 6, scope: !4589)
!4604 = !DILocation(line: 862, column: 14, scope: !4589)
!4605 = !DILocation(line: 863, column: 3, scope: !4589)
!4606 = !DILocation(line: 863, column: 6, scope: !4589)
!4607 = !DILocation(line: 863, column: 18, scope: !4589)
!4608 = !DILocation(line: 864, column: 3, scope: !4589)
!4609 = !DILocation(line: 864, column: 6, scope: !4589)
!4610 = !DILocation(line: 864, column: 16, scope: !4589)
!4611 = !DILocation(line: 866, column: 9, scope: !4589)
!4612 = !DILocation(line: 867, column: 2, scope: !4589)
!4613 = !DILocation(line: 870, column: 6, scope: !4614)
!4614 = distinct !DILexicalBlock(scope: !4361, file: !3, line: 870, column: 6)
!4615 = !DILocation(line: 870, column: 13, scope: !4614)
!4616 = !DILocation(line: 870, column: 6, scope: !4361)
!4617 = !DILocation(line: 871, column: 8, scope: !4618)
!4618 = distinct !DILexicalBlock(scope: !4614, file: !3, line: 870, column: 26)
!4619 = !DILocation(line: 871, column: 13, scope: !4618)
!4620 = !DILocation(line: 871, column: 24, scope: !4618)
!4621 = !DILocation(line: 871, column: 5, scope: !4618)
!4622 = !DILocation(line: 872, column: 3, scope: !4618)
!4623 = !DILocation(line: 872, column: 6, scope: !4618)
!4624 = !DILocation(line: 872, column: 12, scope: !4618)
!4625 = !DILocation(line: 873, column: 3, scope: !4618)
!4626 = !DILocation(line: 873, column: 6, scope: !4618)
!4627 = !DILocation(line: 873, column: 19, scope: !4618)
!4628 = !DILocation(line: 874, column: 3, scope: !4618)
!4629 = !DILocation(line: 874, column: 6, scope: !4618)
!4630 = !DILocation(line: 874, column: 13, scope: !4618)
!4631 = !DILocation(line: 875, column: 3, scope: !4618)
!4632 = !DILocation(line: 875, column: 6, scope: !4618)
!4633 = !DILocation(line: 875, column: 14, scope: !4618)
!4634 = !DILocation(line: 876, column: 3, scope: !4618)
!4635 = !DILocation(line: 876, column: 6, scope: !4618)
!4636 = !DILocation(line: 876, column: 18, scope: !4618)
!4637 = !DILocation(line: 877, column: 3, scope: !4618)
!4638 = !DILocation(line: 877, column: 6, scope: !4618)
!4639 = !DILocation(line: 877, column: 16, scope: !4618)
!4640 = !DILocation(line: 879, column: 9, scope: !4618)
!4641 = !DILocation(line: 880, column: 2, scope: !4618)
!4642 = !DILocation(line: 883, column: 6, scope: !4643)
!4643 = distinct !DILexicalBlock(scope: !4361, file: !3, line: 883, column: 6)
!4644 = !DILocation(line: 883, column: 13, scope: !4643)
!4645 = !DILocation(line: 883, column: 6, scope: !4361)
!4646 = !DILocation(line: 884, column: 8, scope: !4647)
!4647 = distinct !DILexicalBlock(scope: !4643, file: !3, line: 883, column: 25)
!4648 = !DILocation(line: 884, column: 13, scope: !4647)
!4649 = !DILocation(line: 884, column: 24, scope: !4647)
!4650 = !DILocation(line: 884, column: 5, scope: !4647)
!4651 = !DILocation(line: 885, column: 3, scope: !4647)
!4652 = !DILocation(line: 885, column: 6, scope: !4647)
!4653 = !DILocation(line: 885, column: 12, scope: !4647)
!4654 = !DILocation(line: 886, column: 3, scope: !4647)
!4655 = !DILocation(line: 886, column: 6, scope: !4647)
!4656 = !DILocation(line: 886, column: 19, scope: !4647)
!4657 = !DILocation(line: 887, column: 3, scope: !4647)
!4658 = !DILocation(line: 887, column: 6, scope: !4647)
!4659 = !DILocation(line: 887, column: 13, scope: !4647)
!4660 = !DILocation(line: 888, column: 3, scope: !4647)
!4661 = !DILocation(line: 888, column: 6, scope: !4647)
!4662 = !DILocation(line: 888, column: 14, scope: !4647)
!4663 = !DILocation(line: 889, column: 3, scope: !4647)
!4664 = !DILocation(line: 889, column: 6, scope: !4647)
!4665 = !DILocation(line: 889, column: 14, scope: !4647)
!4666 = !DILocation(line: 890, column: 3, scope: !4647)
!4667 = !DILocation(line: 890, column: 6, scope: !4647)
!4668 = !DILocation(line: 890, column: 18, scope: !4647)
!4669 = !DILocation(line: 891, column: 3, scope: !4647)
!4670 = !DILocation(line: 891, column: 6, scope: !4647)
!4671 = !DILocation(line: 891, column: 18, scope: !4647)
!4672 = !DILocation(line: 892, column: 3, scope: !4647)
!4673 = !DILocation(line: 892, column: 6, scope: !4647)
!4674 = !DILocation(line: 892, column: 16, scope: !4647)
!4675 = !DILocation(line: 894, column: 9, scope: !4647)
!4676 = !DILocation(line: 895, column: 2, scope: !4647)
!4677 = !DILocation(line: 897, column: 17, scope: !4361)
!4678 = !DILocation(line: 897, column: 2, scope: !4361)
!4679 = !DILocation(line: 898, column: 2, scope: !4361)
!4680 = !DILocation(line: 899, column: 1, scope: !4361)
!4681 = distinct !DISubprogram(name: "apci3xxx_reset", scope: !3, file: !3, line: 725, type: !3999, scopeLine: 726, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!4682 = !DILocalVariable(name: "dev", arg: 1, scope: !4681, file: !3, line: 725, type: !224)
!4683 = !DILocation(line: 725, column: 49, scope: !4681)
!4684 = !DILocalVariable(name: "val", scope: !4681, file: !3, line: 727, type: !7)
!4685 = !DILocation(line: 727, column: 15, scope: !4681)
!4686 = !DILocalVariable(name: "i", scope: !4681, file: !3, line: 728, type: !177)
!4687 = !DILocation(line: 728, column: 6, scope: !4681)
!4688 = !DILocation(line: 731, column: 14, scope: !4681)
!4689 = !DILocation(line: 731, column: 19, scope: !4681)
!4690 = !DILocation(line: 731, column: 2, scope: !4681)
!4691 = !DILocation(line: 734, column: 12, scope: !4681)
!4692 = !DILocation(line: 734, column: 17, scope: !4681)
!4693 = !DILocation(line: 734, column: 22, scope: !4681)
!4694 = !DILocation(line: 734, column: 2, scope: !4681)
!4695 = !DILocation(line: 737, column: 14, scope: !4681)
!4696 = !DILocation(line: 737, column: 19, scope: !4681)
!4697 = !DILocation(line: 737, column: 24, scope: !4681)
!4698 = !DILocation(line: 737, column: 8, scope: !4681)
!4699 = !DILocation(line: 737, column: 6, scope: !4681)
!4700 = !DILocation(line: 738, column: 9, scope: !4681)
!4701 = !DILocation(line: 738, column: 14, scope: !4681)
!4702 = !DILocation(line: 738, column: 19, scope: !4681)
!4703 = !DILocation(line: 738, column: 24, scope: !4681)
!4704 = !DILocation(line: 738, column: 2, scope: !4681)
!4705 = !DILocation(line: 741, column: 8, scope: !4681)
!4706 = !DILocation(line: 741, column: 13, scope: !4681)
!4707 = !DILocation(line: 741, column: 18, scope: !4681)
!4708 = !DILocation(line: 741, column: 2, scope: !4681)
!4709 = !DILocation(line: 744, column: 9, scope: !4710)
!4710 = distinct !DILexicalBlock(scope: !4681, file: !3, line: 744, column: 2)
!4711 = !DILocation(line: 744, column: 7, scope: !4710)
!4712 = !DILocation(line: 744, column: 14, scope: !4713)
!4713 = distinct !DILexicalBlock(scope: !4710, file: !3, line: 744, column: 2)
!4714 = !DILocation(line: 744, column: 16, scope: !4713)
!4715 = !DILocation(line: 744, column: 2, scope: !4710)
!4716 = !DILocation(line: 745, column: 15, scope: !4713)
!4717 = !DILocation(line: 745, column: 20, scope: !4713)
!4718 = !DILocation(line: 745, column: 25, scope: !4713)
!4719 = !DILocation(line: 745, column: 9, scope: !4713)
!4720 = !DILocation(line: 745, column: 7, scope: !4713)
!4721 = !DILocation(line: 745, column: 3, scope: !4713)
!4722 = !DILocation(line: 744, column: 23, scope: !4713)
!4723 = !DILocation(line: 744, column: 2, scope: !4713)
!4724 = distinct !{!4724, !4715, !4725}
!4725 = !DILocation(line: 745, column: 29, scope: !4710)
!4726 = !DILocation(line: 748, column: 13, scope: !4681)
!4727 = !DILocation(line: 748, column: 18, scope: !4681)
!4728 = !DILocation(line: 748, column: 2, scope: !4681)
!4729 = !DILocation(line: 750, column: 2, scope: !4681)
!4730 = distinct !DISubprogram(name: "writel", scope: !4731, file: !4731, line: 67, type: !4732, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!4731 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!4732 = !DISubroutineType(types: !4733)
!4733 = !{null, !7, !4734}
!4734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4735, size: 64)
!4735 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4736 = !DILocalVariable(name: "val", arg: 1, scope: !4730, file: !4731, line: 67, type: !7)
!4737 = !DILocation(line: 67, column: 1, scope: !4730)
!4738 = !DILocalVariable(name: "addr", arg: 2, scope: !4730, file: !4731, line: 67, type: !4734)
!4739 = !{i32 -2143408953}
!4740 = distinct !DISubprogram(name: "readl", scope: !4731, file: !4731, line: 59, type: !4741, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!4741 = !DISubroutineType(types: !4742)
!4742 = !{!7, !4743}
!4743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4744, size: 64)
!4744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4735)
!4745 = !DILocalVariable(name: "addr", arg: 1, scope: !4740, file: !4731, line: 59, type: !4743)
!4746 = !DILocation(line: 59, column: 1, scope: !4740)
!4747 = !DILocalVariable(name: "ret", scope: !4740, file: !4731, line: 59, type: !7)
!4748 = !{i32 -2143411346}
!4749 = distinct !DISubprogram(name: "request_irq", scope: !4137, file: !4137, line: 157, type: !4750, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!4750 = !DISubroutineType(types: !4751)
!4751 = !{!177, !7, !4752, !349, !215, !233}
!4752 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !4137, line: 92, baseType: !4753)
!4753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4754, size: 64)
!4754 = !DISubroutineType(types: !4755)
!4755 = !{!4756, !177, !233}
!4756 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !117, line: 17, baseType: !116)
!4757 = !DILocalVariable(name: "irq", arg: 1, scope: !4749, file: !4137, line: 157, type: !7)
!4758 = !DILocation(line: 157, column: 26, scope: !4749)
!4759 = !DILocalVariable(name: "handler", arg: 2, scope: !4749, file: !4137, line: 157, type: !4752)
!4760 = !DILocation(line: 157, column: 45, scope: !4749)
!4761 = !DILocalVariable(name: "flags", arg: 3, scope: !4749, file: !4137, line: 157, type: !349)
!4762 = !DILocation(line: 157, column: 68, scope: !4749)
!4763 = !DILocalVariable(name: "name", arg: 4, scope: !4749, file: !4137, line: 158, type: !215)
!4764 = !DILocation(line: 158, column: 18, scope: !4749)
!4765 = !DILocalVariable(name: "dev", arg: 5, scope: !4749, file: !4137, line: 158, type: !233)
!4766 = !DILocation(line: 158, column: 30, scope: !4749)
!4767 = !DILocation(line: 160, column: 30, scope: !4749)
!4768 = !DILocation(line: 160, column: 35, scope: !4749)
!4769 = !DILocation(line: 160, column: 50, scope: !4749)
!4770 = !DILocation(line: 160, column: 57, scope: !4749)
!4771 = !DILocation(line: 160, column: 63, scope: !4749)
!4772 = !DILocation(line: 160, column: 9, scope: !4749)
!4773 = !DILocation(line: 160, column: 2, scope: !4749)
!4774 = distinct !DISubprogram(name: "apci3xxx_irq_handler", scope: !3, file: !3, line: 348, type: !4754, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!4775 = !DILocalVariable(name: "irq", arg: 1, scope: !4774, file: !3, line: 348, type: !177)
!4776 = !DILocation(line: 348, column: 45, scope: !4774)
!4777 = !DILocalVariable(name: "d", arg: 2, scope: !4774, file: !3, line: 348, type: !233)
!4778 = !DILocation(line: 348, column: 56, scope: !4774)
!4779 = !DILocalVariable(name: "dev", scope: !4774, file: !3, line: 350, type: !224)
!4780 = !DILocation(line: 350, column: 24, scope: !4774)
!4781 = !DILocation(line: 350, column: 30, scope: !4774)
!4782 = !DILocalVariable(name: "s", scope: !4774, file: !3, line: 351, type: !3857)
!4783 = !DILocation(line: 351, column: 27, scope: !4774)
!4784 = !DILocation(line: 351, column: 31, scope: !4774)
!4785 = !DILocation(line: 351, column: 36, scope: !4774)
!4786 = !DILocalVariable(name: "status", scope: !4774, file: !3, line: 352, type: !7)
!4787 = !DILocation(line: 352, column: 15, scope: !4774)
!4788 = !DILocalVariable(name: "val", scope: !4774, file: !3, line: 353, type: !7)
!4789 = !DILocation(line: 353, column: 15, scope: !4774)
!4790 = !DILocation(line: 356, column: 17, scope: !4774)
!4791 = !DILocation(line: 356, column: 22, scope: !4774)
!4792 = !DILocation(line: 356, column: 27, scope: !4774)
!4793 = !DILocation(line: 356, column: 11, scope: !4774)
!4794 = !DILocation(line: 356, column: 9, scope: !4774)
!4795 = !DILocation(line: 357, column: 7, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4774, file: !3, line: 357, column: 6)
!4797 = !DILocation(line: 357, column: 14, scope: !4796)
!4798 = !DILocation(line: 357, column: 21, scope: !4796)
!4799 = !DILocation(line: 357, column: 6, scope: !4774)
!4800 = !DILocation(line: 359, column: 10, scope: !4801)
!4801 = distinct !DILexicalBlock(scope: !4796, file: !3, line: 357, column: 29)
!4802 = !DILocation(line: 359, column: 18, scope: !4801)
!4803 = !DILocation(line: 359, column: 23, scope: !4801)
!4804 = !DILocation(line: 359, column: 28, scope: !4801)
!4805 = !DILocation(line: 359, column: 3, scope: !4801)
!4806 = !DILocation(line: 361, column: 15, scope: !4801)
!4807 = !DILocation(line: 361, column: 20, scope: !4801)
!4808 = !DILocation(line: 361, column: 25, scope: !4801)
!4809 = !DILocation(line: 361, column: 9, scope: !4801)
!4810 = !DILocation(line: 361, column: 7, scope: !4801)
!4811 = !DILocation(line: 362, column: 28, scope: !4801)
!4812 = !DILocation(line: 362, column: 31, scope: !4801)
!4813 = !DILocation(line: 362, column: 3, scope: !4801)
!4814 = !DILocation(line: 364, column: 3, scope: !4801)
!4815 = !DILocation(line: 364, column: 6, scope: !4801)
!4816 = !DILocation(line: 364, column: 13, scope: !4801)
!4817 = !DILocation(line: 364, column: 20, scope: !4801)
!4818 = !DILocation(line: 365, column: 24, scope: !4801)
!4819 = !DILocation(line: 365, column: 29, scope: !4801)
!4820 = !DILocation(line: 365, column: 3, scope: !4801)
!4821 = !DILocation(line: 367, column: 3, scope: !4801)
!4822 = !DILocation(line: 369, column: 2, scope: !4774)
!4823 = !DILocation(line: 370, column: 1, scope: !4774)
!4824 = distinct !DISubprogram(name: "apci3xxx_ai_insn_read", scope: !3, file: !3, line: 432, type: !3954, scopeLine: 436, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!4825 = !DILocalVariable(name: "dev", arg: 1, scope: !4824, file: !3, line: 432, type: !224)
!4826 = !DILocation(line: 432, column: 56, scope: !4824)
!4827 = !DILocalVariable(name: "s", arg: 2, scope: !4824, file: !3, line: 433, type: !3857)
!4828 = !DILocation(line: 433, column: 31, scope: !4824)
!4829 = !DILocalVariable(name: "insn", arg: 3, scope: !4824, file: !3, line: 434, type: !3956)
!4830 = !DILocation(line: 434, column: 26, scope: !4824)
!4831 = !DILocalVariable(name: "data", arg: 4, scope: !4824, file: !3, line: 435, type: !2709)
!4832 = !DILocation(line: 435, column: 20, scope: !4824)
!4833 = !DILocalVariable(name: "ret", scope: !4824, file: !3, line: 437, type: !177)
!4834 = !DILocation(line: 437, column: 6, scope: !4824)
!4835 = !DILocalVariable(name: "i", scope: !4824, file: !3, line: 438, type: !177)
!4836 = !DILocation(line: 438, column: 6, scope: !4824)
!4837 = !DILocation(line: 440, column: 26, scope: !4824)
!4838 = !DILocation(line: 440, column: 31, scope: !4824)
!4839 = !DILocation(line: 440, column: 37, scope: !4824)
!4840 = !DILocation(line: 440, column: 8, scope: !4824)
!4841 = !DILocation(line: 440, column: 6, scope: !4824)
!4842 = !DILocation(line: 441, column: 6, scope: !4843)
!4843 = distinct !DILexicalBlock(scope: !4824, file: !3, line: 441, column: 6)
!4844 = !DILocation(line: 441, column: 6, scope: !4824)
!4845 = !DILocation(line: 442, column: 10, scope: !4843)
!4846 = !DILocation(line: 442, column: 3, scope: !4843)
!4847 = !DILocation(line: 444, column: 9, scope: !4848)
!4848 = distinct !DILexicalBlock(scope: !4824, file: !3, line: 444, column: 2)
!4849 = !DILocation(line: 444, column: 7, scope: !4848)
!4850 = !DILocation(line: 444, column: 14, scope: !4851)
!4851 = distinct !DILexicalBlock(scope: !4848, file: !3, line: 444, column: 2)
!4852 = !DILocation(line: 444, column: 18, scope: !4851)
!4853 = !DILocation(line: 444, column: 24, scope: !4851)
!4854 = !DILocation(line: 444, column: 16, scope: !4851)
!4855 = !DILocation(line: 444, column: 2, scope: !4848)
!4856 = !DILocation(line: 446, column: 19, scope: !4857)
!4857 = distinct !DILexicalBlock(scope: !4851, file: !3, line: 444, column: 32)
!4858 = !DILocation(line: 446, column: 24, scope: !4857)
!4859 = !DILocation(line: 446, column: 29, scope: !4857)
!4860 = !DILocation(line: 446, column: 3, scope: !4857)
!4861 = !DILocation(line: 449, column: 24, scope: !4857)
!4862 = !DILocation(line: 449, column: 29, scope: !4857)
!4863 = !DILocation(line: 449, column: 32, scope: !4857)
!4864 = !DILocation(line: 449, column: 9, scope: !4857)
!4865 = !DILocation(line: 449, column: 7, scope: !4857)
!4866 = !DILocation(line: 450, column: 7, scope: !4867)
!4867 = distinct !DILexicalBlock(scope: !4857, file: !3, line: 450, column: 7)
!4868 = !DILocation(line: 450, column: 7, scope: !4857)
!4869 = !DILocation(line: 451, column: 11, scope: !4867)
!4870 = !DILocation(line: 451, column: 4, scope: !4867)
!4871 = !DILocation(line: 454, column: 19, scope: !4857)
!4872 = !DILocation(line: 454, column: 24, scope: !4857)
!4873 = !DILocation(line: 454, column: 29, scope: !4857)
!4874 = !DILocation(line: 454, column: 13, scope: !4857)
!4875 = !DILocation(line: 454, column: 3, scope: !4857)
!4876 = !DILocation(line: 454, column: 8, scope: !4857)
!4877 = !DILocation(line: 454, column: 11, scope: !4857)
!4878 = !DILocation(line: 455, column: 2, scope: !4857)
!4879 = !DILocation(line: 444, column: 28, scope: !4851)
!4880 = !DILocation(line: 444, column: 2, scope: !4851)
!4881 = distinct !{!4881, !4855, !4882}
!4882 = !DILocation(line: 455, column: 2, scope: !4848)
!4883 = !DILocation(line: 457, column: 9, scope: !4824)
!4884 = !DILocation(line: 457, column: 15, scope: !4824)
!4885 = !DILocation(line: 457, column: 2, scope: !4824)
!4886 = !DILocation(line: 458, column: 1, scope: !4824)
!4887 = distinct !DISubprogram(name: "apci3xxx_ai_cmdtest", scope: !3, file: !3, line: 510, type: !3975, scopeLine: 513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!4888 = !DILocalVariable(name: "dev", arg: 1, scope: !4887, file: !3, line: 510, type: !224)
!4889 = !DILocation(line: 510, column: 54, scope: !4887)
!4890 = !DILocalVariable(name: "s", arg: 2, scope: !4887, file: !3, line: 511, type: !3857)
!4891 = !DILocation(line: 511, column: 36, scope: !4887)
!4892 = !DILocalVariable(name: "cmd", arg: 3, scope: !4887, file: !3, line: 512, type: !3977)
!4893 = !DILocation(line: 512, column: 30, scope: !4887)
!4894 = !DILocalVariable(name: "board", scope: !4887, file: !3, line: 514, type: !4371)
!4895 = !DILocation(line: 514, column: 35, scope: !4887)
!4896 = !DILocation(line: 514, column: 43, scope: !4887)
!4897 = !DILocation(line: 514, column: 48, scope: !4887)
!4898 = !DILocalVariable(name: "err", scope: !4887, file: !3, line: 515, type: !177)
!4899 = !DILocation(line: 515, column: 6, scope: !4887)
!4900 = !DILocalVariable(name: "arg", scope: !4887, file: !3, line: 516, type: !7)
!4901 = !DILocation(line: 516, column: 15, scope: !4887)
!4902 = !DILocation(line: 520, column: 35, scope: !4887)
!4903 = !DILocation(line: 520, column: 40, scope: !4887)
!4904 = !DILocation(line: 520, column: 9, scope: !4887)
!4905 = !DILocation(line: 520, column: 6, scope: !4887)
!4906 = !DILocation(line: 521, column: 35, scope: !4887)
!4907 = !DILocation(line: 521, column: 40, scope: !4887)
!4908 = !DILocation(line: 521, column: 9, scope: !4887)
!4909 = !DILocation(line: 521, column: 6, scope: !4887)
!4910 = !DILocation(line: 522, column: 35, scope: !4887)
!4911 = !DILocation(line: 522, column: 40, scope: !4887)
!4912 = !DILocation(line: 522, column: 9, scope: !4887)
!4913 = !DILocation(line: 522, column: 6, scope: !4887)
!4914 = !DILocation(line: 523, column: 35, scope: !4887)
!4915 = !DILocation(line: 523, column: 40, scope: !4887)
!4916 = !DILocation(line: 523, column: 9, scope: !4887)
!4917 = !DILocation(line: 523, column: 6, scope: !4887)
!4918 = !DILocation(line: 524, column: 35, scope: !4887)
!4919 = !DILocation(line: 524, column: 40, scope: !4887)
!4920 = !DILocation(line: 524, column: 9, scope: !4887)
!4921 = !DILocation(line: 524, column: 6, scope: !4887)
!4922 = !DILocation(line: 526, column: 6, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4887, file: !3, line: 526, column: 6)
!4924 = !DILocation(line: 526, column: 6, scope: !4887)
!4925 = !DILocation(line: 527, column: 3, scope: !4923)
!4926 = !DILocation(line: 531, column: 40, scope: !4887)
!4927 = !DILocation(line: 531, column: 45, scope: !4887)
!4928 = !DILocation(line: 531, column: 9, scope: !4887)
!4929 = !DILocation(line: 531, column: 6, scope: !4887)
!4930 = !DILocation(line: 535, column: 6, scope: !4931)
!4931 = distinct !DILexicalBlock(scope: !4887, file: !3, line: 535, column: 6)
!4932 = !DILocation(line: 535, column: 6, scope: !4887)
!4933 = !DILocation(line: 536, column: 3, scope: !4931)
!4934 = !DILocation(line: 540, column: 38, scope: !4887)
!4935 = !DILocation(line: 540, column: 43, scope: !4887)
!4936 = !DILocation(line: 540, column: 9, scope: !4887)
!4937 = !DILocation(line: 540, column: 6, scope: !4887)
!4938 = !DILocation(line: 541, column: 38, scope: !4887)
!4939 = !DILocation(line: 541, column: 43, scope: !4887)
!4940 = !DILocation(line: 541, column: 9, scope: !4887)
!4941 = !DILocation(line: 541, column: 6, scope: !4887)
!4942 = !DILocation(line: 542, column: 39, scope: !4887)
!4943 = !DILocation(line: 542, column: 44, scope: !4887)
!4944 = !DILocation(line: 543, column: 10, scope: !4887)
!4945 = !DILocation(line: 543, column: 17, scope: !4887)
!4946 = !DILocation(line: 542, column: 9, scope: !4887)
!4947 = !DILocation(line: 542, column: 6, scope: !4887)
!4948 = !DILocation(line: 544, column: 38, scope: !4887)
!4949 = !DILocation(line: 544, column: 43, scope: !4887)
!4950 = !DILocation(line: 545, column: 9, scope: !4887)
!4951 = !DILocation(line: 545, column: 14, scope: !4887)
!4952 = !DILocation(line: 544, column: 9, scope: !4887)
!4953 = !DILocation(line: 544, column: 6, scope: !4887)
!4954 = !DILocation(line: 547, column: 6, scope: !4955)
!4955 = distinct !DILexicalBlock(scope: !4887, file: !3, line: 547, column: 6)
!4956 = !DILocation(line: 547, column: 11, scope: !4955)
!4957 = !DILocation(line: 547, column: 20, scope: !4955)
!4958 = !DILocation(line: 547, column: 6, scope: !4887)
!4959 = !DILocation(line: 548, column: 40, scope: !4955)
!4960 = !DILocation(line: 548, column: 45, scope: !4955)
!4961 = !DILocation(line: 548, column: 10, scope: !4955)
!4962 = !DILocation(line: 548, column: 7, scope: !4955)
!4963 = !DILocation(line: 548, column: 3, scope: !4955)
!4964 = !DILocation(line: 550, column: 39, scope: !4955)
!4965 = !DILocation(line: 550, column: 44, scope: !4955)
!4966 = !DILocation(line: 550, column: 10, scope: !4955)
!4967 = !DILocation(line: 550, column: 7, scope: !4955)
!4968 = !DILocation(line: 552, column: 6, scope: !4969)
!4969 = distinct !DILexicalBlock(scope: !4887, file: !3, line: 552, column: 6)
!4970 = !DILocation(line: 552, column: 6, scope: !4887)
!4971 = !DILocation(line: 553, column: 3, scope: !4969)
!4972 = !DILocation(line: 557, column: 8, scope: !4887)
!4973 = !DILocation(line: 557, column: 13, scope: !4887)
!4974 = !DILocation(line: 557, column: 6, scope: !4887)
!4975 = !DILocation(line: 558, column: 33, scope: !4887)
!4976 = !DILocation(line: 558, column: 44, scope: !4887)
!4977 = !DILocation(line: 558, column: 49, scope: !4887)
!4978 = !DILocation(line: 558, column: 9, scope: !4887)
!4979 = !DILocation(line: 558, column: 6, scope: !4887)
!4980 = !DILocation(line: 559, column: 38, scope: !4887)
!4981 = !DILocation(line: 559, column: 43, scope: !4887)
!4982 = !DILocation(line: 559, column: 56, scope: !4887)
!4983 = !DILocation(line: 559, column: 9, scope: !4887)
!4984 = !DILocation(line: 559, column: 6, scope: !4887)
!4985 = !DILocation(line: 561, column: 6, scope: !4986)
!4986 = distinct !DILexicalBlock(scope: !4887, file: !3, line: 561, column: 6)
!4987 = !DILocation(line: 561, column: 6, scope: !4887)
!4988 = !DILocation(line: 562, column: 3, scope: !4986)
!4989 = !DILocation(line: 564, column: 2, scope: !4887)
!4990 = !DILocation(line: 565, column: 1, scope: !4887)
!4991 = distinct !DISubprogram(name: "apci3xxx_ai_cmd", scope: !3, file: !3, line: 567, type: !3971, scopeLine: 569, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!4992 = !DILocalVariable(name: "dev", arg: 1, scope: !4991, file: !3, line: 567, type: !224)
!4993 = !DILocation(line: 567, column: 50, scope: !4991)
!4994 = !DILocalVariable(name: "s", arg: 2, scope: !4991, file: !3, line: 568, type: !3857)
!4995 = !DILocation(line: 568, column: 32, scope: !4991)
!4996 = !DILocalVariable(name: "devpriv", scope: !4991, file: !3, line: 570, type: !4374)
!4997 = !DILocation(line: 570, column: 27, scope: !4991)
!4998 = !DILocation(line: 570, column: 37, scope: !4991)
!4999 = !DILocation(line: 570, column: 42, scope: !4991)
!5000 = !DILocalVariable(name: "cmd", scope: !4991, file: !3, line: 571, type: !3977)
!5001 = !DILocation(line: 571, column: 21, scope: !4991)
!5002 = !DILocation(line: 571, column: 28, scope: !4991)
!5003 = !DILocation(line: 571, column: 31, scope: !4991)
!5004 = !DILocation(line: 571, column: 38, scope: !4991)
!5005 = !DILocalVariable(name: "ret", scope: !4991, file: !3, line: 572, type: !177)
!5006 = !DILocation(line: 572, column: 6, scope: !4991)
!5007 = !DILocation(line: 574, column: 26, scope: !4991)
!5008 = !DILocation(line: 574, column: 31, scope: !4991)
!5009 = !DILocation(line: 574, column: 36, scope: !4991)
!5010 = !DILocation(line: 574, column: 8, scope: !4991)
!5011 = !DILocation(line: 574, column: 6, scope: !4991)
!5012 = !DILocation(line: 575, column: 6, scope: !5013)
!5013 = distinct !DILexicalBlock(scope: !4991, file: !3, line: 575, column: 6)
!5014 = !DILocation(line: 575, column: 6, scope: !4991)
!5015 = !DILocation(line: 576, column: 10, scope: !5013)
!5016 = !DILocation(line: 576, column: 3, scope: !5013)
!5017 = !DILocation(line: 579, column: 9, scope: !4991)
!5018 = !DILocation(line: 579, column: 18, scope: !4991)
!5019 = !DILocation(line: 579, column: 32, scope: !4991)
!5020 = !DILocation(line: 579, column: 37, scope: !4991)
!5021 = !DILocation(line: 579, column: 42, scope: !4991)
!5022 = !DILocation(line: 579, column: 2, scope: !4991)
!5023 = !DILocation(line: 582, column: 9, scope: !4991)
!5024 = !DILocation(line: 582, column: 18, scope: !4991)
!5025 = !DILocation(line: 582, column: 28, scope: !4991)
!5026 = !DILocation(line: 582, column: 33, scope: !4991)
!5027 = !DILocation(line: 582, column: 38, scope: !4991)
!5028 = !DILocation(line: 582, column: 2, scope: !4991)
!5029 = !DILocation(line: 585, column: 19, scope: !4991)
!5030 = !DILocation(line: 585, column: 24, scope: !4991)
!5031 = !DILocation(line: 585, column: 29, scope: !4991)
!5032 = !DILocation(line: 585, column: 2, scope: !4991)
!5033 = !DILocation(line: 587, column: 2, scope: !4991)
!5034 = !DILocation(line: 588, column: 1, scope: !4991)
!5035 = distinct !DISubprogram(name: "apci3xxx_ai_cancel", scope: !3, file: !3, line: 590, type: !3971, scopeLine: 592, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!5036 = !DILocalVariable(name: "dev", arg: 1, scope: !5035, file: !3, line: 590, type: !224)
!5037 = !DILocation(line: 590, column: 53, scope: !5035)
!5038 = !DILocalVariable(name: "s", arg: 2, scope: !5035, file: !3, line: 591, type: !3857)
!5039 = !DILocation(line: 591, column: 35, scope: !5035)
!5040 = !DILocation(line: 593, column: 2, scope: !5035)
!5041 = distinct !DISubprogram(name: "apci3xxx_ao_insn_write", scope: !3, file: !3, line: 609, type: !3954, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!5042 = !DILocalVariable(name: "dev", arg: 1, scope: !5041, file: !3, line: 609, type: !224)
!5043 = !DILocation(line: 609, column: 57, scope: !5041)
!5044 = !DILocalVariable(name: "s", arg: 2, scope: !5041, file: !3, line: 610, type: !3857)
!5045 = !DILocation(line: 610, column: 32, scope: !5041)
!5046 = !DILocalVariable(name: "insn", arg: 3, scope: !5041, file: !3, line: 611, type: !3956)
!5047 = !DILocation(line: 611, column: 27, scope: !5041)
!5048 = !DILocalVariable(name: "data", arg: 4, scope: !5041, file: !3, line: 612, type: !2709)
!5049 = !DILocation(line: 612, column: 21, scope: !5041)
!5050 = !DILocalVariable(name: "chan", scope: !5041, file: !3, line: 614, type: !7)
!5051 = !DILocation(line: 614, column: 15, scope: !5041)
!5052 = !DILocation(line: 614, column: 22, scope: !5041)
!5053 = !DILocalVariable(name: "range", scope: !5041, file: !3, line: 615, type: !7)
!5054 = !DILocation(line: 615, column: 15, scope: !5041)
!5055 = !DILocation(line: 615, column: 23, scope: !5041)
!5056 = !DILocalVariable(name: "ret", scope: !5041, file: !3, line: 616, type: !177)
!5057 = !DILocation(line: 616, column: 6, scope: !5041)
!5058 = !DILocalVariable(name: "i", scope: !5041, file: !3, line: 617, type: !177)
!5059 = !DILocation(line: 617, column: 6, scope: !5041)
!5060 = !DILocation(line: 619, column: 9, scope: !5061)
!5061 = distinct !DILexicalBlock(scope: !5041, file: !3, line: 619, column: 2)
!5062 = !DILocation(line: 619, column: 7, scope: !5061)
!5063 = !DILocation(line: 619, column: 14, scope: !5064)
!5064 = distinct !DILexicalBlock(scope: !5061, file: !3, line: 619, column: 2)
!5065 = !DILocation(line: 619, column: 18, scope: !5064)
!5066 = !DILocation(line: 619, column: 24, scope: !5064)
!5067 = !DILocation(line: 619, column: 16, scope: !5064)
!5068 = !DILocation(line: 619, column: 2, scope: !5061)
!5069 = !DILocalVariable(name: "val", scope: !5070, file: !3, line: 620, type: !7)
!5070 = distinct !DILexicalBlock(scope: !5064, file: !3, line: 619, column: 32)
!5071 = !DILocation(line: 620, column: 16, scope: !5070)
!5072 = !DILocation(line: 620, column: 22, scope: !5070)
!5073 = !DILocation(line: 620, column: 27, scope: !5070)
!5074 = !DILocation(line: 623, column: 10, scope: !5070)
!5075 = !DILocation(line: 623, column: 17, scope: !5070)
!5076 = !DILocation(line: 623, column: 22, scope: !5070)
!5077 = !DILocation(line: 623, column: 27, scope: !5070)
!5078 = !DILocation(line: 623, column: 3, scope: !5070)
!5079 = !DILocation(line: 626, column: 11, scope: !5070)
!5080 = !DILocation(line: 626, column: 15, scope: !5070)
!5081 = !DILocation(line: 626, column: 23, scope: !5070)
!5082 = !DILocation(line: 626, column: 21, scope: !5070)
!5083 = !DILocation(line: 626, column: 29, scope: !5070)
!5084 = !DILocation(line: 626, column: 34, scope: !5070)
!5085 = !DILocation(line: 626, column: 39, scope: !5070)
!5086 = !DILocation(line: 626, column: 3, scope: !5070)
!5087 = !DILocation(line: 629, column: 24, scope: !5070)
!5088 = !DILocation(line: 629, column: 29, scope: !5070)
!5089 = !DILocation(line: 629, column: 32, scope: !5070)
!5090 = !DILocation(line: 629, column: 9, scope: !5070)
!5091 = !DILocation(line: 629, column: 7, scope: !5070)
!5092 = !DILocation(line: 630, column: 7, scope: !5093)
!5093 = distinct !DILexicalBlock(scope: !5070, file: !3, line: 630, column: 7)
!5094 = !DILocation(line: 630, column: 7, scope: !5070)
!5095 = !DILocation(line: 631, column: 11, scope: !5093)
!5096 = !DILocation(line: 631, column: 4, scope: !5093)
!5097 = !DILocation(line: 633, column: 23, scope: !5070)
!5098 = !DILocation(line: 633, column: 3, scope: !5070)
!5099 = !DILocation(line: 633, column: 6, scope: !5070)
!5100 = !DILocation(line: 633, column: 15, scope: !5070)
!5101 = !DILocation(line: 633, column: 21, scope: !5070)
!5102 = !DILocation(line: 634, column: 2, scope: !5070)
!5103 = !DILocation(line: 619, column: 28, scope: !5064)
!5104 = !DILocation(line: 619, column: 2, scope: !5064)
!5105 = distinct !{!5105, !5068, !5106}
!5106 = !DILocation(line: 634, column: 2, scope: !5061)
!5107 = !DILocation(line: 636, column: 9, scope: !5041)
!5108 = !DILocation(line: 636, column: 15, scope: !5041)
!5109 = !DILocation(line: 636, column: 2, scope: !5041)
!5110 = !DILocation(line: 637, column: 1, scope: !5041)
!5111 = distinct !DISubprogram(name: "apci3xxx_di_insn_bits", scope: !3, file: !3, line: 639, type: !3954, scopeLine: 643, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!5112 = !DILocalVariable(name: "dev", arg: 1, scope: !5111, file: !3, line: 639, type: !224)
!5113 = !DILocation(line: 639, column: 56, scope: !5111)
!5114 = !DILocalVariable(name: "s", arg: 2, scope: !5111, file: !3, line: 640, type: !3857)
!5115 = !DILocation(line: 640, column: 31, scope: !5111)
!5116 = !DILocalVariable(name: "insn", arg: 3, scope: !5111, file: !3, line: 641, type: !3956)
!5117 = !DILocation(line: 641, column: 26, scope: !5111)
!5118 = !DILocalVariable(name: "data", arg: 4, scope: !5111, file: !3, line: 642, type: !2709)
!5119 = !DILocation(line: 642, column: 20, scope: !5111)
!5120 = !DILocation(line: 644, column: 16, scope: !5111)
!5121 = !DILocation(line: 644, column: 21, scope: !5111)
!5122 = !DILocation(line: 644, column: 28, scope: !5111)
!5123 = !DILocation(line: 644, column: 12, scope: !5111)
!5124 = !DILocation(line: 644, column: 34, scope: !5111)
!5125 = !DILocation(line: 644, column: 2, scope: !5111)
!5126 = !DILocation(line: 644, column: 10, scope: !5111)
!5127 = !DILocation(line: 646, column: 9, scope: !5111)
!5128 = !DILocation(line: 646, column: 15, scope: !5111)
!5129 = !DILocation(line: 646, column: 2, scope: !5111)
!5130 = distinct !DISubprogram(name: "apci3xxx_do_insn_bits", scope: !3, file: !3, line: 649, type: !3954, scopeLine: 653, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!5131 = !DILocalVariable(name: "dev", arg: 1, scope: !5130, file: !3, line: 649, type: !224)
!5132 = !DILocation(line: 649, column: 56, scope: !5130)
!5133 = !DILocalVariable(name: "s", arg: 2, scope: !5130, file: !3, line: 650, type: !3857)
!5134 = !DILocation(line: 650, column: 31, scope: !5130)
!5135 = !DILocalVariable(name: "insn", arg: 3, scope: !5130, file: !3, line: 651, type: !3956)
!5136 = !DILocation(line: 651, column: 26, scope: !5130)
!5137 = !DILocalVariable(name: "data", arg: 4, scope: !5130, file: !3, line: 652, type: !2709)
!5138 = !DILocation(line: 652, column: 20, scope: !5130)
!5139 = !DILocation(line: 654, column: 17, scope: !5130)
!5140 = !DILocation(line: 654, column: 22, scope: !5130)
!5141 = !DILocation(line: 654, column: 29, scope: !5130)
!5142 = !DILocation(line: 654, column: 13, scope: !5130)
!5143 = !DILocation(line: 654, column: 35, scope: !5130)
!5144 = !DILocation(line: 654, column: 2, scope: !5130)
!5145 = !DILocation(line: 654, column: 5, scope: !5130)
!5146 = !DILocation(line: 654, column: 11, scope: !5130)
!5147 = !DILocation(line: 656, column: 30, scope: !5148)
!5148 = distinct !DILexicalBlock(scope: !5130, file: !3, line: 656, column: 6)
!5149 = !DILocation(line: 656, column: 33, scope: !5148)
!5150 = !DILocation(line: 656, column: 6, scope: !5148)
!5151 = !DILocation(line: 656, column: 6, scope: !5130)
!5152 = !DILocation(line: 657, column: 8, scope: !5148)
!5153 = !DILocation(line: 657, column: 11, scope: !5148)
!5154 = !DILocation(line: 657, column: 18, scope: !5148)
!5155 = !DILocation(line: 657, column: 23, scope: !5148)
!5156 = !DILocation(line: 657, column: 30, scope: !5148)
!5157 = !DILocation(line: 657, column: 3, scope: !5148)
!5158 = !DILocation(line: 659, column: 12, scope: !5130)
!5159 = !DILocation(line: 659, column: 15, scope: !5130)
!5160 = !DILocation(line: 659, column: 2, scope: !5130)
!5161 = !DILocation(line: 659, column: 10, scope: !5130)
!5162 = !DILocation(line: 661, column: 9, scope: !5130)
!5163 = !DILocation(line: 661, column: 15, scope: !5130)
!5164 = !DILocation(line: 661, column: 2, scope: !5130)
!5165 = distinct !DISubprogram(name: "apci3xxx_dio_insn_config", scope: !3, file: !3, line: 664, type: !3954, scopeLine: 668, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!5166 = !DILocalVariable(name: "dev", arg: 1, scope: !5165, file: !3, line: 664, type: !224)
!5167 = !DILocation(line: 664, column: 59, scope: !5165)
!5168 = !DILocalVariable(name: "s", arg: 2, scope: !5165, file: !3, line: 665, type: !3857)
!5169 = !DILocation(line: 665, column: 34, scope: !5165)
!5170 = !DILocalVariable(name: "insn", arg: 3, scope: !5165, file: !3, line: 666, type: !3956)
!5171 = !DILocation(line: 666, column: 29, scope: !5165)
!5172 = !DILocalVariable(name: "data", arg: 4, scope: !5165, file: !3, line: 667, type: !2709)
!5173 = !DILocation(line: 667, column: 23, scope: !5165)
!5174 = !DILocalVariable(name: "chan", scope: !5165, file: !3, line: 669, type: !7)
!5175 = !DILocation(line: 669, column: 15, scope: !5165)
!5176 = !DILocation(line: 669, column: 22, scope: !5165)
!5177 = !DILocalVariable(name: "mask", scope: !5165, file: !3, line: 670, type: !7)
!5178 = !DILocation(line: 670, column: 15, scope: !5165)
!5179 = !DILocalVariable(name: "ret", scope: !5165, file: !3, line: 671, type: !177)
!5180 = !DILocation(line: 671, column: 6, scope: !5165)
!5181 = !DILocation(line: 678, column: 6, scope: !5182)
!5182 = distinct !DILexicalBlock(scope: !5165, file: !3, line: 678, column: 6)
!5183 = !DILocation(line: 678, column: 14, scope: !5182)
!5184 = !DILocation(line: 678, column: 6, scope: !5165)
!5185 = !DILocation(line: 680, column: 7, scope: !5186)
!5186 = distinct !DILexicalBlock(scope: !5187, file: !3, line: 680, column: 7)
!5187 = distinct !DILexicalBlock(scope: !5182, file: !3, line: 678, column: 40)
!5188 = !DILocation(line: 680, column: 12, scope: !5186)
!5189 = !DILocation(line: 680, column: 7, scope: !5187)
!5190 = !DILocation(line: 681, column: 4, scope: !5186)
!5191 = !DILocation(line: 684, column: 8, scope: !5187)
!5192 = !DILocation(line: 685, column: 2, scope: !5187)
!5193 = !DILocation(line: 687, column: 31, scope: !5165)
!5194 = !DILocation(line: 687, column: 36, scope: !5165)
!5195 = !DILocation(line: 687, column: 39, scope: !5165)
!5196 = !DILocation(line: 687, column: 45, scope: !5165)
!5197 = !DILocation(line: 687, column: 51, scope: !5165)
!5198 = !DILocation(line: 687, column: 8, scope: !5165)
!5199 = !DILocation(line: 687, column: 6, scope: !5165)
!5200 = !DILocation(line: 688, column: 6, scope: !5201)
!5201 = distinct !DILexicalBlock(scope: !5165, file: !3, line: 688, column: 6)
!5202 = !DILocation(line: 688, column: 6, scope: !5165)
!5203 = !DILocation(line: 689, column: 10, scope: !5201)
!5204 = !DILocation(line: 689, column: 3, scope: !5201)
!5205 = !DILocation(line: 692, column: 8, scope: !5165)
!5206 = !DILocation(line: 692, column: 11, scope: !5165)
!5207 = !DILocation(line: 692, column: 19, scope: !5165)
!5208 = !DILocation(line: 692, column: 26, scope: !5165)
!5209 = !DILocation(line: 692, column: 34, scope: !5165)
!5210 = !DILocation(line: 692, column: 39, scope: !5165)
!5211 = !DILocation(line: 692, column: 46, scope: !5165)
!5212 = !DILocation(line: 692, column: 2, scope: !5165)
!5213 = !DILocation(line: 694, column: 9, scope: !5165)
!5214 = !DILocation(line: 694, column: 15, scope: !5165)
!5215 = !DILocation(line: 694, column: 2, scope: !5165)
!5216 = !DILocation(line: 695, column: 1, scope: !5165)
!5217 = distinct !DISubprogram(name: "apci3xxx_dio_insn_bits", scope: !3, file: !3, line: 697, type: !3954, scopeLine: 701, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!5218 = !DILocalVariable(name: "dev", arg: 1, scope: !5217, file: !3, line: 697, type: !224)
!5219 = !DILocation(line: 697, column: 57, scope: !5217)
!5220 = !DILocalVariable(name: "s", arg: 2, scope: !5217, file: !3, line: 698, type: !3857)
!5221 = !DILocation(line: 698, column: 32, scope: !5217)
!5222 = !DILocalVariable(name: "insn", arg: 3, scope: !5217, file: !3, line: 699, type: !3956)
!5223 = !DILocation(line: 699, column: 27, scope: !5217)
!5224 = !DILocalVariable(name: "data", arg: 4, scope: !5217, file: !3, line: 700, type: !2709)
!5225 = !DILocation(line: 700, column: 21, scope: !5217)
!5226 = !DILocalVariable(name: "mask", scope: !5217, file: !3, line: 702, type: !7)
!5227 = !DILocation(line: 702, column: 15, scope: !5217)
!5228 = !DILocalVariable(name: "val", scope: !5217, file: !3, line: 703, type: !7)
!5229 = !DILocation(line: 703, column: 15, scope: !5217)
!5230 = !DILocation(line: 705, column: 33, scope: !5217)
!5231 = !DILocation(line: 705, column: 36, scope: !5217)
!5232 = !DILocation(line: 705, column: 9, scope: !5217)
!5233 = !DILocation(line: 705, column: 7, scope: !5217)
!5234 = !DILocation(line: 706, column: 6, scope: !5235)
!5235 = distinct !DILexicalBlock(scope: !5217, file: !3, line: 706, column: 6)
!5236 = !DILocation(line: 706, column: 6, scope: !5217)
!5237 = !DILocation(line: 707, column: 7, scope: !5238)
!5238 = distinct !DILexicalBlock(scope: !5239, file: !3, line: 707, column: 7)
!5239 = distinct !DILexicalBlock(scope: !5235, file: !3, line: 706, column: 12)
!5240 = !DILocation(line: 707, column: 12, scope: !5238)
!5241 = !DILocation(line: 707, column: 7, scope: !5239)
!5242 = !DILocation(line: 708, column: 9, scope: !5238)
!5243 = !DILocation(line: 708, column: 12, scope: !5238)
!5244 = !DILocation(line: 708, column: 18, scope: !5238)
!5245 = !DILocation(line: 708, column: 26, scope: !5238)
!5246 = !DILocation(line: 708, column: 31, scope: !5238)
!5247 = !DILocation(line: 708, column: 38, scope: !5238)
!5248 = !DILocation(line: 708, column: 4, scope: !5238)
!5249 = !DILocation(line: 709, column: 7, scope: !5250)
!5250 = distinct !DILexicalBlock(scope: !5239, file: !3, line: 709, column: 7)
!5251 = !DILocation(line: 709, column: 12, scope: !5250)
!5252 = !DILocation(line: 709, column: 7, scope: !5239)
!5253 = !DILocation(line: 710, column: 10, scope: !5250)
!5254 = !DILocation(line: 710, column: 13, scope: !5250)
!5255 = !DILocation(line: 710, column: 19, scope: !5250)
!5256 = !DILocation(line: 710, column: 26, scope: !5250)
!5257 = !DILocation(line: 710, column: 34, scope: !5250)
!5258 = !DILocation(line: 710, column: 39, scope: !5250)
!5259 = !DILocation(line: 710, column: 46, scope: !5250)
!5260 = !DILocation(line: 710, column: 4, scope: !5250)
!5261 = !DILocation(line: 711, column: 2, scope: !5239)
!5262 = !DILocation(line: 713, column: 12, scope: !5217)
!5263 = !DILocation(line: 713, column: 17, scope: !5217)
!5264 = !DILocation(line: 713, column: 24, scope: !5217)
!5265 = !DILocation(line: 713, column: 8, scope: !5217)
!5266 = !DILocation(line: 713, column: 6, scope: !5217)
!5267 = !DILocation(line: 714, column: 14, scope: !5217)
!5268 = !DILocation(line: 714, column: 19, scope: !5217)
!5269 = !DILocation(line: 714, column: 26, scope: !5217)
!5270 = !DILocation(line: 714, column: 10, scope: !5217)
!5271 = !DILocation(line: 714, column: 32, scope: !5217)
!5272 = !DILocation(line: 714, column: 6, scope: !5217)
!5273 = !DILocation(line: 715, column: 6, scope: !5274)
!5274 = distinct !DILexicalBlock(scope: !5217, file: !3, line: 715, column: 6)
!5275 = !DILocation(line: 715, column: 9, scope: !5274)
!5276 = !DILocation(line: 715, column: 17, scope: !5274)
!5277 = !DILocation(line: 715, column: 6, scope: !5217)
!5278 = !DILocation(line: 716, column: 15, scope: !5274)
!5279 = !DILocation(line: 716, column: 20, scope: !5274)
!5280 = !DILocation(line: 716, column: 27, scope: !5274)
!5281 = !DILocation(line: 716, column: 11, scope: !5274)
!5282 = !DILocation(line: 716, column: 34, scope: !5274)
!5283 = !DILocation(line: 716, column: 7, scope: !5274)
!5284 = !DILocation(line: 716, column: 3, scope: !5274)
!5285 = !DILocation(line: 718, column: 15, scope: !5274)
!5286 = !DILocation(line: 718, column: 20, scope: !5274)
!5287 = !DILocation(line: 718, column: 27, scope: !5274)
!5288 = !DILocation(line: 718, column: 11, scope: !5274)
!5289 = !DILocation(line: 718, column: 33, scope: !5274)
!5290 = !DILocation(line: 718, column: 7, scope: !5274)
!5291 = !DILocation(line: 720, column: 12, scope: !5217)
!5292 = !DILocation(line: 720, column: 2, scope: !5217)
!5293 = !DILocation(line: 720, column: 10, scope: !5217)
!5294 = !DILocation(line: 722, column: 9, scope: !5217)
!5295 = !DILocation(line: 722, column: 15, scope: !5217)
!5296 = !DILocation(line: 722, column: 2, scope: !5217)
!5297 = distinct !DISubprogram(name: "apci3xxx_ai_setup", scope: !3, file: !3, line: 380, type: !5298, scopeLine: 381, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!5298 = !DISubroutineType(types: !5299)
!5299 = !{!177, !224, !7}
!5300 = !DILocalVariable(name: "dev", arg: 1, scope: !5297, file: !3, line: 380, type: !224)
!5301 = !DILocation(line: 380, column: 52, scope: !5297)
!5302 = !DILocalVariable(name: "chanspec", arg: 2, scope: !5297, file: !3, line: 380, type: !7)
!5303 = !DILocation(line: 380, column: 70, scope: !5297)
!5304 = !DILocalVariable(name: "chan", scope: !5297, file: !3, line: 382, type: !7)
!5305 = !DILocation(line: 382, column: 15, scope: !5297)
!5306 = !DILocation(line: 382, column: 22, scope: !5297)
!5307 = !DILocalVariable(name: "range", scope: !5297, file: !3, line: 383, type: !7)
!5308 = !DILocation(line: 383, column: 15, scope: !5297)
!5309 = !DILocation(line: 383, column: 23, scope: !5297)
!5310 = !DILocalVariable(name: "aref", scope: !5297, file: !3, line: 384, type: !7)
!5311 = !DILocation(line: 384, column: 15, scope: !5297)
!5312 = !DILocation(line: 384, column: 22, scope: !5297)
!5313 = !DILocalVariable(name: "delay_mode", scope: !5297, file: !3, line: 385, type: !7)
!5314 = !DILocation(line: 385, column: 15, scope: !5297)
!5315 = !DILocalVariable(name: "val", scope: !5297, file: !3, line: 386, type: !7)
!5316 = !DILocation(line: 386, column: 15, scope: !5297)
!5317 = !DILocation(line: 388, column: 26, scope: !5318)
!5318 = distinct !DILexicalBlock(scope: !5297, file: !3, line: 388, column: 6)
!5319 = !DILocation(line: 388, column: 6, scope: !5318)
!5320 = !DILocation(line: 388, column: 6, scope: !5297)
!5321 = !DILocation(line: 389, column: 3, scope: !5318)
!5322 = !DILocation(line: 392, column: 18, scope: !5297)
!5323 = !DILocation(line: 392, column: 23, scope: !5297)
!5324 = !DILocation(line: 392, column: 28, scope: !5297)
!5325 = !DILocation(line: 392, column: 2, scope: !5297)
!5326 = !DILocation(line: 395, column: 21, scope: !5297)
!5327 = !DILocation(line: 395, column: 26, scope: !5297)
!5328 = !DILocation(line: 395, column: 31, scope: !5297)
!5329 = !DILocation(line: 395, column: 15, scope: !5297)
!5330 = !DILocation(line: 395, column: 13, scope: !5297)
!5331 = !DILocation(line: 396, column: 13, scope: !5297)
!5332 = !DILocation(line: 399, column: 9, scope: !5297)
!5333 = !DILocation(line: 399, column: 21, scope: !5297)
!5334 = !DILocation(line: 399, column: 26, scope: !5297)
!5335 = !DILocation(line: 399, column: 31, scope: !5297)
!5336 = !DILocation(line: 399, column: 2, scope: !5297)
!5337 = !DILocation(line: 402, column: 9, scope: !5297)
!5338 = !DILocation(line: 402, column: 15, scope: !5297)
!5339 = !DILocation(line: 402, column: 24, scope: !5297)
!5340 = !DILocation(line: 402, column: 30, scope: !5297)
!5341 = !DILocation(line: 402, column: 36, scope: !5297)
!5342 = !DILocation(line: 402, column: 20, scope: !5297)
!5343 = !DILocation(line: 403, column: 10, scope: !5297)
!5344 = !DILocation(line: 403, column: 15, scope: !5297)
!5345 = !DILocation(line: 403, column: 29, scope: !5297)
!5346 = !DILocation(line: 402, column: 42, scope: !5297)
!5347 = !DILocation(line: 402, column: 6, scope: !5297)
!5348 = !DILocation(line: 404, column: 9, scope: !5297)
!5349 = !DILocation(line: 404, column: 14, scope: !5297)
!5350 = !DILocation(line: 404, column: 19, scope: !5297)
!5351 = !DILocation(line: 404, column: 24, scope: !5297)
!5352 = !DILocation(line: 404, column: 2, scope: !5297)
!5353 = !DILocation(line: 407, column: 9, scope: !5297)
!5354 = !DILocation(line: 407, column: 20, scope: !5297)
!5355 = !DILocation(line: 407, column: 29, scope: !5297)
!5356 = !DILocation(line: 407, column: 34, scope: !5297)
!5357 = !DILocation(line: 407, column: 39, scope: !5297)
!5358 = !DILocation(line: 407, column: 2, scope: !5297)
!5359 = !DILocation(line: 408, column: 9, scope: !5297)
!5360 = !DILocation(line: 408, column: 15, scope: !5297)
!5361 = !DILocation(line: 408, column: 20, scope: !5297)
!5362 = !DILocation(line: 408, column: 25, scope: !5297)
!5363 = !DILocation(line: 408, column: 2, scope: !5297)
!5364 = !DILocation(line: 411, column: 9, scope: !5297)
!5365 = !DILocation(line: 411, column: 21, scope: !5297)
!5366 = !DILocation(line: 411, column: 26, scope: !5297)
!5367 = !DILocation(line: 411, column: 31, scope: !5297)
!5368 = !DILocation(line: 411, column: 2, scope: !5297)
!5369 = !DILocation(line: 414, column: 12, scope: !5297)
!5370 = !DILocation(line: 414, column: 17, scope: !5297)
!5371 = !DILocation(line: 414, column: 22, scope: !5297)
!5372 = !DILocation(line: 414, column: 2, scope: !5297)
!5373 = !DILocation(line: 416, column: 2, scope: !5297)
!5374 = !DILocation(line: 417, column: 1, scope: !5297)
!5375 = distinct !DISubprogram(name: "apci3xxx_ai_eoc", scope: !3, file: !3, line: 419, type: !5376, scopeLine: 423, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!5376 = !DISubroutineType(types: !5377)
!5377 = !{!177, !224, !3857, !3956, !349}
!5378 = !DILocalVariable(name: "dev", arg: 1, scope: !5375, file: !3, line: 419, type: !224)
!5379 = !DILocation(line: 419, column: 50, scope: !5375)
!5380 = !DILocalVariable(name: "s", arg: 2, scope: !5375, file: !3, line: 420, type: !3857)
!5381 = !DILocation(line: 420, column: 32, scope: !5375)
!5382 = !DILocalVariable(name: "insn", arg: 3, scope: !5375, file: !3, line: 421, type: !3956)
!5383 = !DILocation(line: 421, column: 27, scope: !5375)
!5384 = !DILocalVariable(name: "context", arg: 4, scope: !5375, file: !3, line: 422, type: !349)
!5385 = !DILocation(line: 422, column: 21, scope: !5375)
!5386 = !DILocalVariable(name: "status", scope: !5375, file: !3, line: 424, type: !7)
!5387 = !DILocation(line: 424, column: 15, scope: !5375)
!5388 = !DILocation(line: 426, column: 17, scope: !5375)
!5389 = !DILocation(line: 426, column: 22, scope: !5375)
!5390 = !DILocation(line: 426, column: 27, scope: !5375)
!5391 = !DILocation(line: 426, column: 11, scope: !5375)
!5392 = !DILocation(line: 426, column: 9, scope: !5375)
!5393 = !DILocation(line: 427, column: 6, scope: !5394)
!5394 = distinct !DILexicalBlock(scope: !5375, file: !3, line: 427, column: 6)
!5395 = !DILocation(line: 427, column: 13, scope: !5394)
!5396 = !DILocation(line: 427, column: 6, scope: !5375)
!5397 = !DILocation(line: 428, column: 3, scope: !5394)
!5398 = !DILocation(line: 429, column: 2, scope: !5375)
!5399 = !DILocation(line: 430, column: 1, scope: !5375)
!5400 = distinct !DISubprogram(name: "apci3xxx_ai_started", scope: !3, file: !3, line: 372, type: !3999, scopeLine: 373, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!5401 = !DILocalVariable(name: "dev", arg: 1, scope: !5400, file: !3, line: 372, type: !224)
!5402 = !DILocation(line: 372, column: 54, scope: !5400)
!5403 = !DILocation(line: 374, column: 13, scope: !5404)
!5404 = distinct !DILexicalBlock(scope: !5400, file: !3, line: 374, column: 6)
!5405 = !DILocation(line: 374, column: 18, scope: !5404)
!5406 = !DILocation(line: 374, column: 23, scope: !5404)
!5407 = !DILocation(line: 374, column: 7, scope: !5404)
!5408 = !DILocation(line: 374, column: 28, scope: !5404)
!5409 = !DILocation(line: 374, column: 39, scope: !5404)
!5410 = !DILocation(line: 374, column: 6, scope: !5400)
!5411 = !DILocation(line: 375, column: 3, scope: !5404)
!5412 = !DILocation(line: 377, column: 2, scope: !5400)
!5413 = !DILocation(line: 378, column: 1, scope: !5400)
!5414 = distinct !DISubprogram(name: "comedi_check_trigger_src", scope: !123, file: !123, line: 859, type: !5415, scopeLine: 861, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!5415 = !DISubroutineType(types: !5416)
!5416 = !{!177, !2709, !7}
!5417 = !DILocalVariable(name: "src", arg: 1, scope: !5414, file: !123, line: 859, type: !2709)
!5418 = !DILocation(line: 859, column: 58, scope: !5414)
!5419 = !DILocalVariable(name: "flags", arg: 2, scope: !5414, file: !123, line: 860, type: !7)
!5420 = !DILocation(line: 860, column: 22, scope: !5414)
!5421 = !DILocalVariable(name: "orig_src", scope: !5414, file: !123, line: 862, type: !7)
!5422 = !DILocation(line: 862, column: 15, scope: !5414)
!5423 = !DILocation(line: 862, column: 27, scope: !5414)
!5424 = !DILocation(line: 862, column: 26, scope: !5414)
!5425 = !DILocation(line: 864, column: 9, scope: !5414)
!5426 = !DILocation(line: 864, column: 20, scope: !5414)
!5427 = !DILocation(line: 864, column: 18, scope: !5414)
!5428 = !DILocation(line: 864, column: 3, scope: !5414)
!5429 = !DILocation(line: 864, column: 7, scope: !5414)
!5430 = !DILocation(line: 865, column: 7, scope: !5431)
!5431 = distinct !DILexicalBlock(scope: !5414, file: !123, line: 865, column: 6)
!5432 = !DILocation(line: 865, column: 6, scope: !5431)
!5433 = !DILocation(line: 865, column: 11, scope: !5431)
!5434 = !DILocation(line: 865, column: 27, scope: !5431)
!5435 = !DILocation(line: 865, column: 31, scope: !5431)
!5436 = !DILocation(line: 865, column: 30, scope: !5431)
!5437 = !DILocation(line: 865, column: 38, scope: !5431)
!5438 = !DILocation(line: 865, column: 35, scope: !5431)
!5439 = !DILocation(line: 865, column: 6, scope: !5414)
!5440 = !DILocation(line: 866, column: 3, scope: !5431)
!5441 = !DILocation(line: 867, column: 2, scope: !5414)
!5442 = !DILocation(line: 868, column: 1, scope: !5414)
!5443 = distinct !DISubprogram(name: "comedi_check_trigger_is_unique", scope: !123, file: !123, line: 878, type: !5444, scopeLine: 879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!5444 = !DISubroutineType(types: !5445)
!5445 = !{!177, !7}
!5446 = !DILocalVariable(name: "src", arg: 1, scope: !5443, file: !123, line: 878, type: !7)
!5447 = !DILocation(line: 878, column: 63, scope: !5443)
!5448 = !DILocation(line: 881, column: 7, scope: !5449)
!5449 = distinct !DILexicalBlock(scope: !5443, file: !123, line: 881, column: 6)
!5450 = !DILocation(line: 881, column: 14, scope: !5449)
!5451 = !DILocation(line: 881, column: 18, scope: !5449)
!5452 = !DILocation(line: 881, column: 11, scope: !5449)
!5453 = !DILocation(line: 881, column: 24, scope: !5449)
!5454 = !DILocation(line: 881, column: 6, scope: !5443)
!5455 = !DILocation(line: 882, column: 3, scope: !5449)
!5456 = !DILocation(line: 883, column: 2, scope: !5443)
!5457 = !DILocation(line: 884, column: 1, scope: !5443)
!5458 = distinct !DISubprogram(name: "comedi_check_trigger_arg_is", scope: !123, file: !123, line: 897, type: !5415, scopeLine: 899, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!5459 = !DILocalVariable(name: "arg", arg: 1, scope: !5458, file: !123, line: 897, type: !2709)
!5460 = !DILocation(line: 897, column: 61, scope: !5458)
!5461 = !DILocalVariable(name: "val", arg: 2, scope: !5458, file: !123, line: 898, type: !7)
!5462 = !DILocation(line: 898, column: 25, scope: !5458)
!5463 = !DILocation(line: 900, column: 7, scope: !5464)
!5464 = distinct !DILexicalBlock(scope: !5458, file: !123, line: 900, column: 6)
!5465 = !DILocation(line: 900, column: 6, scope: !5464)
!5466 = !DILocation(line: 900, column: 14, scope: !5464)
!5467 = !DILocation(line: 900, column: 11, scope: !5464)
!5468 = !DILocation(line: 900, column: 6, scope: !5458)
!5469 = !DILocation(line: 901, column: 10, scope: !5470)
!5470 = distinct !DILexicalBlock(scope: !5464, file: !123, line: 900, column: 19)
!5471 = !DILocation(line: 901, column: 4, scope: !5470)
!5472 = !DILocation(line: 901, column: 8, scope: !5470)
!5473 = !DILocation(line: 902, column: 3, scope: !5470)
!5474 = !DILocation(line: 904, column: 2, scope: !5458)
!5475 = !DILocation(line: 905, column: 1, scope: !5458)
!5476 = distinct !DISubprogram(name: "comedi_check_trigger_arg_min", scope: !123, file: !123, line: 918, type: !5415, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!5477 = !DILocalVariable(name: "arg", arg: 1, scope: !5476, file: !123, line: 918, type: !2709)
!5478 = !DILocation(line: 918, column: 62, scope: !5476)
!5479 = !DILocalVariable(name: "val", arg: 2, scope: !5476, file: !123, line: 919, type: !7)
!5480 = !DILocation(line: 919, column: 26, scope: !5476)
!5481 = !DILocation(line: 921, column: 7, scope: !5482)
!5482 = distinct !DILexicalBlock(scope: !5476, file: !123, line: 921, column: 6)
!5483 = !DILocation(line: 921, column: 6, scope: !5482)
!5484 = !DILocation(line: 921, column: 13, scope: !5482)
!5485 = !DILocation(line: 921, column: 11, scope: !5482)
!5486 = !DILocation(line: 921, column: 6, scope: !5476)
!5487 = !DILocation(line: 922, column: 10, scope: !5488)
!5488 = distinct !DILexicalBlock(scope: !5482, file: !123, line: 921, column: 18)
!5489 = !DILocation(line: 922, column: 4, scope: !5488)
!5490 = !DILocation(line: 922, column: 8, scope: !5488)
!5491 = !DILocation(line: 923, column: 3, scope: !5488)
!5492 = !DILocation(line: 925, column: 2, scope: !5476)
!5493 = !DILocation(line: 926, column: 1, scope: !5476)
!5494 = distinct !DISubprogram(name: "apci3xxx_ai_ns_to_timer", scope: !3, file: !3, line: 460, type: !5495, scopeLine: 462, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!5495 = !DISubroutineType(types: !5496)
!5496 = !{!177, !224, !2709, !7}
!5497 = !DILocalVariable(name: "dev", arg: 1, scope: !5494, file: !3, line: 460, type: !224)
!5498 = !DILocation(line: 460, column: 58, scope: !5494)
!5499 = !DILocalVariable(name: "ns", arg: 2, scope: !5494, file: !3, line: 461, type: !2709)
!5500 = !DILocation(line: 461, column: 22, scope: !5494)
!5501 = !DILocalVariable(name: "flags", arg: 3, scope: !5494, file: !3, line: 461, type: !7)
!5502 = !DILocation(line: 461, column: 39, scope: !5494)
!5503 = !DILocalVariable(name: "board", scope: !5494, file: !3, line: 463, type: !4371)
!5504 = !DILocation(line: 463, column: 35, scope: !5494)
!5505 = !DILocation(line: 463, column: 43, scope: !5494)
!5506 = !DILocation(line: 463, column: 48, scope: !5494)
!5507 = !DILocalVariable(name: "devpriv", scope: !5494, file: !3, line: 464, type: !4374)
!5508 = !DILocation(line: 464, column: 27, scope: !5494)
!5509 = !DILocation(line: 464, column: 37, scope: !5494)
!5510 = !DILocation(line: 464, column: 42, scope: !5494)
!5511 = !DILocalVariable(name: "base", scope: !5494, file: !3, line: 465, type: !7)
!5512 = !DILocation(line: 465, column: 15, scope: !5494)
!5513 = !DILocalVariable(name: "timer", scope: !5494, file: !3, line: 466, type: !7)
!5514 = !DILocation(line: 466, column: 15, scope: !5494)
!5515 = !DILocalVariable(name: "time_base", scope: !5494, file: !3, line: 467, type: !177)
!5516 = !DILocation(line: 467, column: 6, scope: !5494)
!5517 = !DILocation(line: 470, column: 17, scope: !5518)
!5518 = distinct !DILexicalBlock(scope: !5494, file: !3, line: 470, column: 2)
!5519 = !DILocation(line: 470, column: 7, scope: !5518)
!5520 = !DILocation(line: 470, column: 22, scope: !5521)
!5521 = distinct !DILexicalBlock(scope: !5518, file: !3, line: 470, column: 2)
!5522 = !DILocation(line: 470, column: 32, scope: !5521)
!5523 = !DILocation(line: 470, column: 2, scope: !5518)
!5524 = !DILocation(line: 472, column: 9, scope: !5525)
!5525 = distinct !DILexicalBlock(scope: !5526, file: !3, line: 472, column: 7)
!5526 = distinct !DILexicalBlock(scope: !5521, file: !3, line: 470, column: 50)
!5527 = !DILocation(line: 472, column: 16, scope: !5525)
!5528 = !DILocation(line: 472, column: 38, scope: !5525)
!5529 = !DILocation(line: 472, column: 35, scope: !5525)
!5530 = !DILocation(line: 472, column: 30, scope: !5525)
!5531 = !DILocation(line: 472, column: 7, scope: !5526)
!5532 = !DILocation(line: 473, column: 4, scope: !5525)
!5533 = !DILocation(line: 475, column: 11, scope: !5526)
!5534 = !DILocation(line: 475, column: 3, scope: !5526)
!5535 = !DILocation(line: 477, column: 9, scope: !5536)
!5536 = distinct !DILexicalBlock(scope: !5526, file: !3, line: 475, column: 22)
!5537 = !DILocation(line: 478, column: 4, scope: !5536)
!5538 = !DILocation(line: 480, column: 9, scope: !5536)
!5539 = !DILocation(line: 481, column: 4, scope: !5536)
!5540 = !DILocation(line: 483, column: 9, scope: !5536)
!5541 = !DILocation(line: 484, column: 4, scope: !5536)
!5542 = !DILocation(line: 487, column: 11, scope: !5526)
!5543 = !DILocation(line: 487, column: 17, scope: !5526)
!5544 = !DILocation(line: 487, column: 3, scope: !5526)
!5545 = !DILocation(line: 487, column: 36, scope: !5526)
!5546 = !DILocalVariable(name: "__x", scope: !5547, file: !3, line: 490, type: !7)
!5547 = distinct !DILexicalBlock(scope: !5548, file: !3, line: 490, column: 12)
!5548 = distinct !DILexicalBlock(scope: !5526, file: !3, line: 487, column: 36)
!5549 = !DILocation(line: 490, column: 12, scope: !5547)
!5550 = !DILocalVariable(name: "__d", scope: !5547, file: !3, line: 490, type: !7)
!5551 = !DILocation(line: 490, column: 10, scope: !5548)
!5552 = !DILocation(line: 491, column: 4, scope: !5548)
!5553 = !DILocation(line: 493, column: 13, scope: !5548)
!5554 = !DILocation(line: 493, column: 12, scope: !5548)
!5555 = !DILocation(line: 493, column: 18, scope: !5548)
!5556 = !DILocation(line: 493, column: 16, scope: !5548)
!5557 = !DILocation(line: 493, column: 10, scope: !5548)
!5558 = !DILocation(line: 494, column: 4, scope: !5548)
!5559 = !DILocation(line: 496, column: 12, scope: !5548)
!5560 = !DILocation(line: 496, column: 10, scope: !5548)
!5561 = !DILocation(line: 497, column: 4, scope: !5548)
!5562 = !DILocation(line: 500, column: 7, scope: !5563)
!5563 = distinct !DILexicalBlock(scope: !5526, file: !3, line: 500, column: 7)
!5564 = !DILocation(line: 500, column: 13, scope: !5563)
!5565 = !DILocation(line: 500, column: 7, scope: !5526)
!5566 = !DILocation(line: 501, column: 28, scope: !5567)
!5567 = distinct !DILexicalBlock(scope: !5563, file: !3, line: 500, column: 24)
!5568 = !DILocation(line: 501, column: 4, scope: !5567)
!5569 = !DILocation(line: 501, column: 13, scope: !5567)
!5570 = !DILocation(line: 501, column: 26, scope: !5567)
!5571 = !DILocation(line: 502, column: 24, scope: !5567)
!5572 = !DILocation(line: 502, column: 4, scope: !5567)
!5573 = !DILocation(line: 502, column: 13, scope: !5567)
!5574 = !DILocation(line: 502, column: 22, scope: !5567)
!5575 = !DILocation(line: 503, column: 10, scope: !5567)
!5576 = !DILocation(line: 503, column: 18, scope: !5567)
!5577 = !DILocation(line: 503, column: 16, scope: !5567)
!5578 = !DILocation(line: 503, column: 5, scope: !5567)
!5579 = !DILocation(line: 503, column: 8, scope: !5567)
!5580 = !DILocation(line: 504, column: 4, scope: !5567)
!5581 = !DILocation(line: 506, column: 2, scope: !5526)
!5582 = !DILocation(line: 470, column: 46, scope: !5521)
!5583 = !DILocation(line: 470, column: 2, scope: !5521)
!5584 = distinct !{!5584, !5523, !5585}
!5585 = !DILocation(line: 506, column: 2, scope: !5518)
!5586 = !DILocation(line: 507, column: 2, scope: !5494)
!5587 = !DILocation(line: 508, column: 1, scope: !5494)
!5588 = distinct !DISubprogram(name: "apci3xxx_ao_eoc", scope: !3, file: !3, line: 596, type: !5376, scopeLine: 600, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!5589 = !DILocalVariable(name: "dev", arg: 1, scope: !5588, file: !3, line: 596, type: !224)
!5590 = !DILocation(line: 596, column: 50, scope: !5588)
!5591 = !DILocalVariable(name: "s", arg: 2, scope: !5588, file: !3, line: 597, type: !3857)
!5592 = !DILocation(line: 597, column: 32, scope: !5588)
!5593 = !DILocalVariable(name: "insn", arg: 3, scope: !5588, file: !3, line: 598, type: !3956)
!5594 = !DILocation(line: 598, column: 27, scope: !5588)
!5595 = !DILocalVariable(name: "context", arg: 4, scope: !5588, file: !3, line: 599, type: !349)
!5596 = !DILocation(line: 599, column: 21, scope: !5588)
!5597 = !DILocalVariable(name: "status", scope: !5588, file: !3, line: 601, type: !7)
!5598 = !DILocation(line: 601, column: 15, scope: !5588)
!5599 = !DILocation(line: 603, column: 17, scope: !5588)
!5600 = !DILocation(line: 603, column: 22, scope: !5588)
!5601 = !DILocation(line: 603, column: 27, scope: !5588)
!5602 = !DILocation(line: 603, column: 11, scope: !5588)
!5603 = !DILocation(line: 603, column: 9, scope: !5588)
!5604 = !DILocation(line: 604, column: 6, scope: !5605)
!5605 = distinct !DILexicalBlock(scope: !5588, file: !3, line: 604, column: 6)
!5606 = !DILocation(line: 604, column: 13, scope: !5605)
!5607 = !DILocation(line: 604, column: 6, scope: !5588)
!5608 = !DILocation(line: 605, column: 3, scope: !5605)
!5609 = !DILocation(line: 606, column: 2, scope: !5588)
!5610 = !DILocation(line: 607, column: 1, scope: !5588)
!5611 = distinct !DISubprogram(name: "inl", scope: !4731, file: !4731, line: 336, type: !5612, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!5612 = !DISubroutineType(types: !5613)
!5613 = !{!7, !177}
!5614 = !DILocalVariable(name: "port", arg: 1, scope: !5611, file: !4731, line: 336, type: !177)
!5615 = !DILocation(line: 336, column: 1, scope: !5611)
!5616 = !DILocalVariable(name: "value", scope: !5611, file: !4731, line: 336, type: !7)
!5617 = !{i32 -2143393385}
!5618 = distinct !DISubprogram(name: "outl", scope: !4731, file: !4731, line: 336, type: !5619, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!5619 = !DISubroutineType(types: !5620)
!5620 = !{null, !7, !177}
!5621 = !DILocalVariable(name: "value", arg: 1, scope: !5618, file: !4731, line: 336, type: !7)
!5622 = !DILocation(line: 336, column: 1, scope: !5618)
!5623 = !DILocalVariable(name: "port", arg: 2, scope: !5618, file: !4731, line: 336, type: !177)
!5624 = !{i32 -2143393587}
!5625 = distinct !DISubprogram(name: "apci3xxx_pci_probe", scope: !3, file: !3, line: 915, type: !4073, scopeLine: 917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!5626 = !DILocalVariable(name: "dev", arg: 1, scope: !5625, file: !3, line: 915, type: !4075)
!5627 = !DILocation(line: 915, column: 47, scope: !5625)
!5628 = !DILocalVariable(name: "id", arg: 2, scope: !5625, file: !3, line: 916, type: !4060)
!5629 = !DILocation(line: 916, column: 38, scope: !5625)
!5630 = !DILocation(line: 918, column: 32, scope: !5625)
!5631 = !DILocation(line: 918, column: 55, scope: !5625)
!5632 = !DILocation(line: 918, column: 59, scope: !5625)
!5633 = !DILocation(line: 918, column: 9, scope: !5625)
!5634 = !DILocation(line: 918, column: 2, scope: !5625)
