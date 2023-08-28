; ModuleID = '../bcout/drivers/staging/comedi/drivers/addi_apci_2032.llvm.bc'
source_filename = "drivers/staging/comedi/drivers/addi_apci_2032.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_apci2032_driver_init6:\09\09\09"
module asm ".long\09apci2032_driver_init - .\09\09\09"
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
%struct.kmem_cache = type opaque
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
%struct.apci2032_int_private = type { %struct.spinlock, i8, i8 }

@__UNIQUE_ID___addressable_apci2032_driver_init234 = internal global i8* bitcast (i32 ()* @apci2032_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@apci2032_driver = internal global %struct.comedi_driver { %struct.comedi_driver* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), %struct.module* null, i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* null, void (%struct.comedi_device*)* @apci2032_detach, i32 (%struct.comedi_device*, i64)* @apci2032_auto_attach, i32 0, i8** null, i32 0 }, align 8, !dbg !180
@apci2032_pci_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), %struct.pci_device_id* getelementptr inbounds ([2 x %struct.pci_device_id], [2 x %struct.pci_device_id]* @apci2032_pci_table, i32 0, i32 0), i32 (%struct.pci_dev*, %struct.pci_device_id*)* @apci2032_pci_probe, void (%struct.pci_dev*)* @comedi_pci_auto_unconfig, i32 (%struct.pci_dev*, i32)* null, i32 (%struct.pci_dev*)* null, void (%struct.pci_dev*)* null, i32 (%struct.pci_dev*, i32)* null, %struct.pci_error_handlers* null, %struct.attribute_group** null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, align 8, !dbg !3999
@__exitcall_apci2032_driver_exit = internal global void ()* @apci2032_driver_exit, section ".exitcall.exit", align 8, !dbg !151
@__UNIQUE_ID_author235 = internal constant [52 x i8] c"addi_apci_2032.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1, !dbg !158
@__UNIQUE_ID_description236 = internal constant [69 x i8] c"addi_apci_2032.description=ADDI-DATA APCI-2032, 32 channel DO boards\00", section ".modinfo", align 1, !dbg !165
@__UNIQUE_ID_file237 = internal constant [66 x i8] c"addi_apci_2032.file=drivers/staging/comedi/drivers/addi_apci_2032\00", section ".modinfo", align 1, !dbg !170
@__UNIQUE_ID_license238 = internal constant [27 x i8] c"addi_apci_2032.license=GPL\00", section ".modinfo", align 1, !dbg !175
@.str = private unnamed_addr constant [15 x i8] c"addi_apci_2032\00", align 1
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@apci2032_pci_table = internal constant [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 5560, i32 4100, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id zeroinitializer], align 16, !dbg !4280
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_apci2032_driver_init234 to i8*), i8* bitcast (void ()* @apci2032_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_apci2032_driver_exit to i8*), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__UNIQUE_ID_author235, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @__UNIQUE_ID_description236, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @__UNIQUE_ID_file237, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__UNIQUE_ID_license238, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @apci2032_driver_init() #0 section ".init.text" !dbg !4289 {
entry:
  %call = call i32 @comedi_pci_driver_register(%struct.comedi_driver* @apci2032_driver, %struct.pci_driver* @apci2032_pci_driver) #10, !dbg !4292
  ret i32 %call, !dbg !4292
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @apci2032_driver_exit() #0 section ".exit.text" !dbg !4293 {
entry:
  call void @comedi_pci_driver_unregister(%struct.comedi_driver* @apci2032_driver, %struct.pci_driver* @apci2032_pci_driver) #10, !dbg !4294
  ret void, !dbg !4294
}

; Function Attrs: noredzone
declare dso_local void @comedi_pci_driver_unregister(%struct.comedi_driver*, %struct.pci_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_pci_driver_register(%struct.comedi_driver*, %struct.pci_driver*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @apci2032_detach(%struct.comedi_device* %dev) #2 !dbg !4295 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4296, metadata !DIExpression()), !dbg !4297
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4298
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 18, !dbg !4300
  %1 = load i64, i64* %iobase, align 8, !dbg !4300
  %tobool = icmp ne i64 %1, 0, !dbg !4298
  br i1 %tobool, label %if.then, label %if.end, !dbg !4301

if.then:                                          ; preds = %entry
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4302
  %call = call i32 @apci2032_reset(%struct.comedi_device* %2) #10, !dbg !4303
  br label %if.end, !dbg !4303

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4304
  call void @comedi_pci_detach(%struct.comedi_device* %3) #10, !dbg !4305
  %4 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4306
  %read_subdev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 21, !dbg !4308
  %5 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %read_subdev, align 8, !dbg !4308
  %tobool1 = icmp ne %struct.comedi_subdevice* %5, null, !dbg !4306
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !4309

if.then2:                                         ; preds = %if.end
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4310
  %read_subdev3 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 21, !dbg !4311
  %7 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %read_subdev3, align 8, !dbg !4311
  %private = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %7, i32 0, i32 6, !dbg !4312
  %8 = load i8*, i8** %private, align 8, !dbg !4312
  call void @kfree(i8* %8) #10, !dbg !4313
  br label %if.end4, !dbg !4313

if.end4:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !4314
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci2032_auto_attach(%struct.comedi_device* %dev, i64 %context_unused) #2 !dbg !4315 {
entry:
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4316, metadata !DIExpression()), !dbg !4322
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %context_unused.addr = alloca i64, align 8
  %pcidev = alloca %struct.pci_dev*, align 8
  %s = alloca %struct.comedi_subdevice*, align 8
  %ret = alloca i32, align 4
  %subpriv = alloca %struct.apci2032_int_private*, align 8
  %.compoundliteral = alloca %struct.spinlock, align 1
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4327, metadata !DIExpression()), !dbg !4328
  store i64 %context_unused, i64* %context_unused.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %context_unused.addr, metadata !4329, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pcidev, metadata !4331, metadata !DIExpression()), !dbg !4332
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4333
  %call = call %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device* %0) #10, !dbg !4334
  store %struct.pci_dev* %call, %struct.pci_dev** %pcidev, align 8, !dbg !4332
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s, metadata !4335, metadata !DIExpression()), !dbg !4336
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4337, metadata !DIExpression()), !dbg !4338
  %1 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4339
  %call1 = call i32 @comedi_pci_enable(%struct.comedi_device* %1) #10, !dbg !4340
  store i32 %call1, i32* %ret, align 4, !dbg !4341
  %2 = load i32, i32* %ret, align 4, !dbg !4342
  %tobool = icmp ne i32 %2, 0, !dbg !4342
  br i1 %tobool, label %if.then, label %if.end, !dbg !4344

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %ret, align 4, !dbg !4345
  store i32 %3, i32* %retval, align 4, !dbg !4346
  br label %return, !dbg !4346

if.end:                                           ; preds = %entry
  %4 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4347
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 44, !dbg !4347
  %arrayidx = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 1, !dbg !4347
  %start = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx, i32 0, i32 0, !dbg !4347
  %5 = load i64, i64* %start, align 8, !dbg !4347
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4348
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 18, !dbg !4349
  store i64 %5, i64* %iobase, align 8, !dbg !4350
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4351
  %call2 = call i32 @apci2032_reset(%struct.comedi_device* %7) #10, !dbg !4352
  %8 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4353
  %irq = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 43, !dbg !4355
  %9 = load i32, i32* %irq, align 4, !dbg !4355
  %cmp = icmp ugt i32 %9, 0, !dbg !4356
  br i1 %cmp, label %if.then3, label %if.end11, !dbg !4357

if.then3:                                         ; preds = %if.end
  %10 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4358
  %irq4 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 43, !dbg !4360
  %11 = load i32, i32* %irq4, align 4, !dbg !4360
  %12 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4361
  %board_name = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 8, !dbg !4362
  %13 = load i8*, i8** %board_name, align 8, !dbg !4362
  %14 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4363
  %15 = bitcast %struct.comedi_device* %14 to i8*, !dbg !4363
  %call5 = call i32 @request_irq(i32 %11, i32 (i32, i8*)* @apci2032_interrupt, i64 128, i8* %13, i8* %15) #10, !dbg !4364
  store i32 %call5, i32* %ret, align 4, !dbg !4365
  %16 = load i32, i32* %ret, align 4, !dbg !4366
  %cmp6 = icmp eq i32 %16, 0, !dbg !4368
  br i1 %cmp6, label %if.then7, label %if.end10, !dbg !4369

if.then7:                                         ; preds = %if.then3
  %17 = load %struct.pci_dev*, %struct.pci_dev** %pcidev, align 8, !dbg !4370
  %irq8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 43, !dbg !4371
  %18 = load i32, i32* %irq8, align 4, !dbg !4371
  %19 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4372
  %irq9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 20, !dbg !4373
  store i32 %18, i32* %irq9, align 8, !dbg !4374
  br label %if.end10, !dbg !4372

if.end10:                                         ; preds = %if.then7, %if.then3
  br label %if.end11, !dbg !4375

if.end11:                                         ; preds = %if.end10, %if.end
  %20 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4376
  %call12 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %20, i32 3) #10, !dbg !4377
  store i32 %call12, i32* %ret, align 4, !dbg !4378
  %21 = load i32, i32* %ret, align 4, !dbg !4379
  %tobool13 = icmp ne i32 %21, 0, !dbg !4379
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !4381

if.then14:                                        ; preds = %if.end11
  %22 = load i32, i32* %ret, align 4, !dbg !4382
  store i32 %22, i32* %retval, align 4, !dbg !4383
  br label %return, !dbg !4383

if.end15:                                         ; preds = %if.end11
  %23 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4384
  %subdevices = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %23, i32 0, i32 16, !dbg !4385
  %24 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices, align 8, !dbg !4385
  %arrayidx16 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %24, i64 0, !dbg !4384
  store %struct.comedi_subdevice* %arrayidx16, %struct.comedi_subdevice** %s, align 8, !dbg !4386
  %25 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4387
  %type = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %25, i32 0, i32 2, !dbg !4388
  store i32 4, i32* %type, align 4, !dbg !4389
  %26 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4390
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %26, i32 0, i32 4, !dbg !4391
  store i32 131072, i32* %subdev_flags, align 4, !dbg !4392
  %27 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4393
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %27, i32 0, i32 3, !dbg !4394
  store i32 32, i32* %n_chan, align 8, !dbg !4395
  %28 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4396
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %28, i32 0, i32 13, !dbg !4397
  store i32 1, i32* %maxdata, align 8, !dbg !4398
  %29 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4399
  %range_table = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %29, i32 0, i32 15, !dbg !4400
  store %struct.comedi_lrange* @range_unipolar5, %struct.comedi_lrange** %range_table, align 8, !dbg !4401
  %30 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4402
  %insn_bits = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %30, i32 0, i32 20, !dbg !4403
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @apci2032_do_insn_bits, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_bits, align 8, !dbg !4404
  %31 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4405
  %subdevices17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %31, i32 0, i32 16, !dbg !4406
  %32 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices17, align 8, !dbg !4406
  %arrayidx18 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %32, i64 1, !dbg !4405
  store %struct.comedi_subdevice* %arrayidx18, %struct.comedi_subdevice** %s, align 8, !dbg !4407
  %33 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4408
  %34 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4409
  %iobase19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %34, i32 0, i32 18, !dbg !4410
  %35 = load i64, i64* %iobase19, align 8, !dbg !4410
  %add = add i64 %35, 16, !dbg !4411
  %call20 = call i32 @addi_watchdog_init(%struct.comedi_subdevice* %33, i64 %add) #10, !dbg !4412
  store i32 %call20, i32* %ret, align 4, !dbg !4413
  %36 = load i32, i32* %ret, align 4, !dbg !4414
  %tobool21 = icmp ne i32 %36, 0, !dbg !4414
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !4416

if.then22:                                        ; preds = %if.end15
  %37 = load i32, i32* %ret, align 4, !dbg !4417
  store i32 %37, i32* %retval, align 4, !dbg !4418
  br label %return, !dbg !4418

if.end23:                                         ; preds = %if.end15
  %38 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4419
  %subdevices24 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %38, i32 0, i32 16, !dbg !4420
  %39 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %subdevices24, align 8, !dbg !4420
  %arrayidx25 = getelementptr %struct.comedi_subdevice, %struct.comedi_subdevice* %39, i64 2, !dbg !4419
  store %struct.comedi_subdevice* %arrayidx25, %struct.comedi_subdevice** %s, align 8, !dbg !4421
  %40 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4422
  %type26 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %40, i32 0, i32 2, !dbg !4423
  store i32 3, i32* %type26, align 4, !dbg !4424
  %41 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4425
  %subdev_flags27 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %41, i32 0, i32 4, !dbg !4426
  store i32 65536, i32* %subdev_flags27, align 4, !dbg !4427
  %42 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4428
  %n_chan28 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %42, i32 0, i32 3, !dbg !4429
  store i32 2, i32* %n_chan28, align 8, !dbg !4430
  %43 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4431
  %maxdata29 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %43, i32 0, i32 13, !dbg !4432
  store i32 1, i32* %maxdata29, align 8, !dbg !4433
  %44 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4434
  %range_table30 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %44, i32 0, i32 15, !dbg !4435
  store %struct.comedi_lrange* @range_unipolar5, %struct.comedi_lrange** %range_table30, align 8, !dbg !4436
  %45 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4437
  %insn_bits31 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %45, i32 0, i32 20, !dbg !4438
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @apci2032_int_insn_bits, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %insn_bits31, align 8, !dbg !4439
  %46 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4440
  %irq32 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %46, i32 0, i32 20, !dbg !4441
  %47 = load i32, i32* %irq32, align 8, !dbg !4441
  %tobool33 = icmp ne i32 %47, 0, !dbg !4440
  br i1 %tobool33, label %if.then34, label %if.end42, !dbg !4442

if.then34:                                        ; preds = %if.end23
  call void @llvm.dbg.declare(metadata %struct.apci2032_int_private** %subpriv, metadata !4443, metadata !DIExpression()), !dbg !4450
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4451
  %49 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4452
  %read_subdev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %49, i32 0, i32 21, !dbg !4453
  store %struct.comedi_subdevice* %48, %struct.comedi_subdevice** %read_subdev, align 8, !dbg !4454
  %call35 = call i8* @kzalloc(i64 2, i32 3264) #10, !dbg !4455
  %50 = bitcast i8* %call35 to %struct.apci2032_int_private*, !dbg !4455
  store %struct.apci2032_int_private* %50, %struct.apci2032_int_private** %subpriv, align 8, !dbg !4456
  %51 = load %struct.apci2032_int_private*, %struct.apci2032_int_private** %subpriv, align 8, !dbg !4457
  %tobool36 = icmp ne %struct.apci2032_int_private* %51, null, !dbg !4457
  br i1 %tobool36, label %if.end38, label %if.then37, !dbg !4459

if.then37:                                        ; preds = %if.then34
  store i32 -12, i32* %retval, align 4, !dbg !4460
  br label %return, !dbg !4460

if.end38:                                         ; preds = %if.then34
  br label %do.body, !dbg !4461

do.body:                                          ; preds = %if.end38
  %52 = load %struct.apci2032_int_private*, %struct.apci2032_int_private** %subpriv, align 8, !dbg !4462
  %spinlock = getelementptr inbounds %struct.apci2032_int_private, %struct.apci2032_int_private* %52, i32 0, i32 0, !dbg !4462
  store %struct.spinlock* %spinlock, %struct.spinlock** %lock.addr.i, align 8
  %53 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4463
  %54 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %53, i32 0, i32 0, !dbg !4464
  %rlock.i = bitcast %union.anon.3* %54 to %struct.raw_spinlock*, !dbg !4464
  %55 = load %struct.apci2032_int_private*, %struct.apci2032_int_private** %subpriv, align 8, !dbg !4462
  %spinlock40 = getelementptr inbounds %struct.apci2032_int_private, %struct.apci2032_int_private* %55, i32 0, i32 0, !dbg !4462
  %56 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %.compoundliteral, i32 0, i32 0, !dbg !4462
  %rlock = bitcast %union.anon.3* %56 to %struct.raw_spinlock*, !dbg !4462
  %57 = bitcast %struct.spinlock* %spinlock40 to i8*, !dbg !4462
  %58 = bitcast %struct.spinlock* %.compoundliteral to i8*, !dbg !4462
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %57, i8* align 1 %58, i64 0, i1 false), !dbg !4462
  br label %do.end, !dbg !4462

do.end:                                           ; preds = %do.body
  %59 = load %struct.apci2032_int_private*, %struct.apci2032_int_private** %subpriv, align 8, !dbg !4465
  %60 = bitcast %struct.apci2032_int_private* %59 to i8*, !dbg !4465
  %61 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4466
  %private = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %61, i32 0, i32 6, !dbg !4467
  store i8* %60, i8** %private, align 8, !dbg !4468
  %62 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4469
  %subdev_flags41 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %62, i32 0, i32 4, !dbg !4470
  store i32 536969216, i32* %subdev_flags41, align 4, !dbg !4471
  %63 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4472
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %63, i32 0, i32 5, !dbg !4473
  store i32 2, i32* %len_chanlist, align 8, !dbg !4474
  %64 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4475
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %64, i32 0, i32 23, !dbg !4476
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @apci2032_int_cmdtest, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)** %do_cmdtest, align 8, !dbg !4477
  %65 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4478
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %65, i32 0, i32 22, !dbg !4479
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @apci2032_int_cmd, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)** %do_cmd, align 8, !dbg !4480
  %66 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4481
  %cancel = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %66, i32 0, i32 25, !dbg !4482
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @apci2032_int_cancel, i32 (%struct.comedi_device*, %struct.comedi_subdevice*)** %cancel, align 8, !dbg !4483
  br label %if.end42, !dbg !4484

if.end42:                                         ; preds = %do.end, %if.end23
  store i32 0, i32* %retval, align 4, !dbg !4485
  br label %return, !dbg !4485

return:                                           ; preds = %if.end42, %if.then37, %if.then22, %if.then14, %if.then
  %67 = load i32, i32* %retval, align 4, !dbg !4486
  ret i32 %67, !dbg !4486
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci2032_reset(%struct.comedi_device* %dev) #2 !dbg !4487 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4488, metadata !DIExpression()), !dbg !4489
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4490
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 18, !dbg !4491
  %1 = load i64, i64* %iobase, align 8, !dbg !4491
  %add = add i64 %1, 0, !dbg !4492
  %conv = trunc i64 %add to i32, !dbg !4490
  call void @outl(i32 0, i32 %conv) #10, !dbg !4493
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4494
  %iobase1 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %2, i32 0, i32 18, !dbg !4495
  %3 = load i64, i64* %iobase1, align 8, !dbg !4495
  %add2 = add i64 %3, 4, !dbg !4496
  %conv3 = trunc i64 %add2 to i32, !dbg !4494
  call void @outl(i32 0, i32 %conv3) #10, !dbg !4497
  %4 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4498
  %iobase4 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 18, !dbg !4499
  %5 = load i64, i64* %iobase4, align 8, !dbg !4499
  %add5 = add i64 %5, 16, !dbg !4500
  call void @addi_watchdog_reset(i64 %add5) #10, !dbg !4501
  ret i32 0, !dbg !4502
}

; Function Attrs: noredzone
declare dso_local void @comedi_pci_detach(%struct.comedi_device*) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outl(i32 %value, i32 %port) #2 !dbg !4503 {
entry:
  %value.addr = alloca i32, align 4
  %port.addr = alloca i32, align 4
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !4507, metadata !DIExpression()), !dbg !4508
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !4509, metadata !DIExpression()), !dbg !4508
  %0 = load i32, i32* %value.addr, align 4, !dbg !4508
  %1 = load i32, i32* %port.addr, align 4, !dbg !4508
  call void asm sideeffect "outl $0, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 %1) #9, !dbg !4508, !srcloc !4510
  ret void, !dbg !4508
}

; Function Attrs: noredzone
declare dso_local void @addi_watchdog_reset(i64) #1

; Function Attrs: noredzone
declare dso_local %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device*) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_pci_enable(%struct.comedi_device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @request_irq(i32 %irq, i32 (i32, i8*)* %handler, i64 %flags, i8* %name, i8* %dev) #2 !dbg !4511 {
entry:
  %irq.addr = alloca i32, align 4
  %handler.addr = alloca i32 (i32, i8*)*, align 8
  %flags.addr = alloca i64, align 8
  %name.addr = alloca i8*, align 8
  %dev.addr = alloca i8*, align 8
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !4519, metadata !DIExpression()), !dbg !4520
  store i32 (i32, i8*)* %handler, i32 (i32, i8*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i32, i8*)** %handler.addr, metadata !4521, metadata !DIExpression()), !dbg !4522
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !4523, metadata !DIExpression()), !dbg !4524
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !4525, metadata !DIExpression()), !dbg !4526
  store i8* %dev, i8** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev.addr, metadata !4527, metadata !DIExpression()), !dbg !4528
  %0 = load i32, i32* %irq.addr, align 4, !dbg !4529
  %1 = load i32 (i32, i8*)*, i32 (i32, i8*)** %handler.addr, align 8, !dbg !4530
  %2 = load i64, i64* %flags.addr, align 8, !dbg !4531
  %3 = load i8*, i8** %name.addr, align 8, !dbg !4532
  %4 = load i8*, i8** %dev.addr, align 8, !dbg !4533
  %call = call i32 @request_threaded_irq(i32 %0, i32 (i32, i8*)* %1, i32 (i32, i8*)* null, i64 %2, i8* %3, i8* %4) #10, !dbg !4534
  ret i32 %call, !dbg !4535
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci2032_interrupt(i32 %irq, i8* %d) #2 !dbg !4536 {
entry:
  %lock.addr.i46 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i46, metadata !4537, metadata !DIExpression()), !dbg !4541
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4543, metadata !DIExpression()), !dbg !4545
  %retval = alloca i32, align 4
  %irq.addr = alloca i32, align 4
  %d.addr = alloca i8*, align 8
  %dev = alloca %struct.comedi_device*, align 8
  %s = alloca %struct.comedi_subdevice*, align 8
  %cmd = alloca %struct.comedi_cmd*, align 8
  %subpriv = alloca %struct.apci2032_int_private*, align 8
  %val = alloca i32, align 4
  %bits = alloca i16, align 2
  %i = alloca i32, align 4
  %chan = alloca i32, align 4
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !4547, metadata !DIExpression()), !dbg !4548
  store i8* %d, i8** %d.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %d.addr, metadata !4549, metadata !DIExpression()), !dbg !4550
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev, metadata !4551, metadata !DIExpression()), !dbg !4552
  %0 = load i8*, i8** %d.addr, align 8, !dbg !4553
  %1 = bitcast i8* %0 to %struct.comedi_device*, !dbg !4553
  store %struct.comedi_device* %1, %struct.comedi_device** %dev, align 8, !dbg !4552
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s, metadata !4554, metadata !DIExpression()), !dbg !4555
  %2 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4556
  %read_subdev = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %2, i32 0, i32 21, !dbg !4557
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %read_subdev, align 8, !dbg !4557
  store %struct.comedi_subdevice* %3, %struct.comedi_subdevice** %s, align 8, !dbg !4555
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd, metadata !4558, metadata !DIExpression()), !dbg !4559
  %4 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4560
  %async = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %4, i32 0, i32 7, !dbg !4561
  %5 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !4561
  %cmd1 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %5, i32 0, i32 17, !dbg !4562
  store %struct.comedi_cmd* %cmd1, %struct.comedi_cmd** %cmd, align 8, !dbg !4559
  call void @llvm.dbg.declare(metadata %struct.apci2032_int_private** %subpriv, metadata !4563, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.declare(metadata i32* %val, metadata !4565, metadata !DIExpression()), !dbg !4566
  %6 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4567
  %attached = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 10, !dbg !4569
  %bf.load = load i8, i8* %attached, align 8, !dbg !4569
  %bf.clear = and i8 %bf.load, 1, !dbg !4569
  %bf.cast = zext i8 %bf.clear to i32, !dbg !4569
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !4567
  br i1 %tobool, label %if.end, label %if.then, !dbg !4570

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4571
  br label %return, !dbg !4571

if.end:                                           ; preds = %entry
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4572
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 18, !dbg !4573
  %8 = load i64, i64* %iobase, align 8, !dbg !4573
  %add = add i64 %8, 12, !dbg !4574
  %conv = trunc i64 %add to i32, !dbg !4572
  %call = call i32 @inl(i32 %conv) #10, !dbg !4575
  %conv2 = zext i32 %call to i64, !dbg !4575
  %and = and i64 %conv2, 1, !dbg !4576
  %conv3 = trunc i64 %and to i32, !dbg !4575
  store i32 %conv3, i32* %val, align 4, !dbg !4577
  %9 = load i32, i32* %val, align 4, !dbg !4578
  %tobool4 = icmp ne i32 %9, 0, !dbg !4578
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !4580

if.then5:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4581
  br label %return, !dbg !4581

if.end6:                                          ; preds = %if.end
  %10 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4582
  %private = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %10, i32 0, i32 6, !dbg !4583
  %11 = load i8*, i8** %private, align 8, !dbg !4583
  %12 = bitcast i8* %11 to %struct.apci2032_int_private*, !dbg !4582
  store %struct.apci2032_int_private* %12, %struct.apci2032_int_private** %subpriv, align 8, !dbg !4584
  %13 = load %struct.apci2032_int_private*, %struct.apci2032_int_private** %subpriv, align 8, !dbg !4585
  %spinlock = getelementptr inbounds %struct.apci2032_int_private, %struct.apci2032_int_private* %13, i32 0, i32 0, !dbg !4586
  store %struct.spinlock* %spinlock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !4587, !srcloc !4589
  %14 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4590
  %15 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %14, i32 0, i32 0, !dbg !4590
  %rlock.i = bitcast %union.anon.3* %15 to %struct.raw_spinlock*, !dbg !4590
  %16 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4592
  %iobase7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 18, !dbg !4593
  %17 = load i64, i64* %iobase7, align 8, !dbg !4593
  %add8 = add i64 %17, 8, !dbg !4594
  %conv9 = trunc i64 %add8 to i32, !dbg !4592
  %call10 = call i32 @inl(i32 %conv9) #10, !dbg !4595
  %and11 = and i32 %call10, 3, !dbg !4596
  store i32 %and11, i32* %val, align 4, !dbg !4597
  %18 = load i32, i32* %val, align 4, !dbg !4598
  %neg = xor i32 %18, -1, !dbg !4599
  %and12 = and i32 %neg, 3, !dbg !4600
  %19 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4601
  %iobase13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 18, !dbg !4602
  %20 = load i64, i64* %iobase13, align 8, !dbg !4602
  %add14 = add i64 %20, 4, !dbg !4603
  %conv15 = trunc i64 %add14 to i32, !dbg !4601
  call void @outl(i32 %and12, i32 %conv15) #10, !dbg !4604
  %21 = load %struct.apci2032_int_private*, %struct.apci2032_int_private** %subpriv, align 8, !dbg !4605
  %active = getelementptr inbounds %struct.apci2032_int_private, %struct.apci2032_int_private* %21, i32 0, i32 1, !dbg !4607
  %22 = load i8, i8* %active, align 1, !dbg !4607
  %tobool16 = trunc i8 %22 to i1, !dbg !4607
  br i1 %tobool16, label %land.lhs.true, label %if.end43, !dbg !4608

land.lhs.true:                                    ; preds = %if.end6
  %23 = load i32, i32* %val, align 4, !dbg !4609
  %24 = load %struct.apci2032_int_private*, %struct.apci2032_int_private** %subpriv, align 8, !dbg !4610
  %enabled_isns = getelementptr inbounds %struct.apci2032_int_private, %struct.apci2032_int_private* %24, i32 0, i32 2, !dbg !4611
  %25 = load i8, i8* %enabled_isns, align 1, !dbg !4611
  %conv18 = zext i8 %25 to i32, !dbg !4610
  %and19 = and i32 %23, %conv18, !dbg !4612
  %cmp = icmp ne i32 %and19, 0, !dbg !4613
  br i1 %cmp, label %if.then21, label %if.end43, !dbg !4614

if.then21:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.declare(metadata i16* %bits, metadata !4615, metadata !DIExpression()), !dbg !4617
  store i16 0, i16* %bits, align 2, !dbg !4617
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4618, metadata !DIExpression()), !dbg !4619
  store i32 0, i32* %i, align 4, !dbg !4620
  br label %for.cond, !dbg !4622

for.cond:                                         ; preds = %for.inc, %if.then21
  %26 = load i32, i32* %i, align 4, !dbg !4623
  %27 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !4625
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %27, i32 0, i32 13, !dbg !4626
  %28 = load i32, i32* %chanlist_len, align 8, !dbg !4626
  %cmp22 = icmp ult i32 %26, %28, !dbg !4627
  br i1 %cmp22, label %for.body, label %for.end, !dbg !4628

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %chan, metadata !4629, metadata !DIExpression()), !dbg !4631
  %29 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !4632
  %chanlist = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %29, i32 0, i32 12, !dbg !4632
  %30 = load i32*, i32** %chanlist, align 8, !dbg !4632
  %31 = load i32, i32* %i, align 4, !dbg !4632
  %idxprom = sext i32 %31 to i64, !dbg !4632
  %arrayidx = getelementptr i32, i32* %30, i64 %idxprom, !dbg !4632
  %32 = load i32, i32* %arrayidx, align 4, !dbg !4632
  %and24 = and i32 %32, 65535, !dbg !4632
  store i32 %and24, i32* %chan, align 4, !dbg !4631
  %33 = load i32, i32* %val, align 4, !dbg !4633
  %34 = load i32, i32* %chan, align 4, !dbg !4635
  %shl = shl i32 1, %34, !dbg !4636
  %and25 = and i32 %33, %shl, !dbg !4637
  %tobool26 = icmp ne i32 %and25, 0, !dbg !4637
  br i1 %tobool26, label %if.then27, label %if.end31, !dbg !4638

if.then27:                                        ; preds = %for.body
  %35 = load i32, i32* %i, align 4, !dbg !4639
  %shl28 = shl i32 1, %35, !dbg !4640
  %36 = load i16, i16* %bits, align 2, !dbg !4641
  %conv29 = zext i16 %36 to i32, !dbg !4641
  %or = or i32 %conv29, %shl28, !dbg !4641
  %conv30 = trunc i32 %or to i16, !dbg !4641
  store i16 %conv30, i16* %bits, align 2, !dbg !4641
  br label %if.end31, !dbg !4642

if.end31:                                         ; preds = %if.then27, %for.body
  br label %for.inc, !dbg !4643

for.inc:                                          ; preds = %if.end31
  %37 = load i32, i32* %i, align 4, !dbg !4644
  %inc = add i32 %37, 1, !dbg !4644
  store i32 %inc, i32* %i, align 4, !dbg !4644
  br label %for.cond, !dbg !4645, !llvm.loop !4646

for.end:                                          ; preds = %for.cond
  %38 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4648
  %39 = bitcast i16* %bits to i8*, !dbg !4649
  %call32 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %38, i8* %39, i32 1) #10, !dbg !4650
  %40 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !4651
  %stop_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %40, i32 0, i32 10, !dbg !4653
  %41 = load i32, i32* %stop_src, align 8, !dbg !4653
  %cmp33 = icmp eq i32 %41, 32, !dbg !4654
  br i1 %cmp33, label %land.lhs.true35, label %if.end42, !dbg !4655

land.lhs.true35:                                  ; preds = %for.end
  %42 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4656
  %async36 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %42, i32 0, i32 7, !dbg !4657
  %43 = load %struct.comedi_async*, %struct.comedi_async** %async36, align 8, !dbg !4657
  %scans_done = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %43, i32 0, i32 11, !dbg !4658
  %44 = load i32, i32* %scans_done, align 8, !dbg !4658
  %45 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !4659
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %45, i32 0, i32 11, !dbg !4660
  %46 = load i32, i32* %stop_arg, align 4, !dbg !4660
  %cmp37 = icmp uge i32 %44, %46, !dbg !4661
  br i1 %cmp37, label %if.then39, label %if.end42, !dbg !4662

if.then39:                                        ; preds = %land.lhs.true35
  %47 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4663
  %async40 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %47, i32 0, i32 7, !dbg !4664
  %48 = load %struct.comedi_async*, %struct.comedi_async** %async40, align 8, !dbg !4664
  %events = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %48, i32 0, i32 16, !dbg !4665
  %49 = load i32, i32* %events, align 4, !dbg !4666
  %or41 = or i32 %49, 2, !dbg !4666
  store i32 %or41, i32* %events, align 4, !dbg !4666
  br label %if.end42, !dbg !4663

if.end42:                                         ; preds = %if.then39, %land.lhs.true35, %for.end
  br label %if.end43, !dbg !4667

if.end43:                                         ; preds = %if.end42, %land.lhs.true, %if.end6
  %50 = load %struct.apci2032_int_private*, %struct.apci2032_int_private** %subpriv, align 8, !dbg !4668
  %spinlock44 = getelementptr inbounds %struct.apci2032_int_private, %struct.apci2032_int_private* %50, i32 0, i32 0, !dbg !4669
  store %struct.spinlock* %spinlock44, %struct.spinlock** %lock.addr.i46, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !4670, !srcloc !4672
  %51 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i46, align 8, !dbg !4673
  %52 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %51, i32 0, i32 0, !dbg !4673
  %rlock.i47 = bitcast %union.anon.3* %52 to %struct.raw_spinlock*, !dbg !4673
  %53 = load %struct.comedi_device*, %struct.comedi_device** %dev, align 8, !dbg !4675
  %54 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s, align 8, !dbg !4676
  %call45 = call i32 @comedi_handle_events(%struct.comedi_device* %53, %struct.comedi_subdevice* %54) #10, !dbg !4677
  store i32 1, i32* %retval, align 4, !dbg !4678
  br label %return, !dbg !4678

return:                                           ; preds = %if.end43, %if.then5, %if.then
  %55 = load i32, i32* %retval, align 4, !dbg !4679
  ret i32 %55, !dbg !4679
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci2032_do_insn_bits(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !4680 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4681, metadata !DIExpression()), !dbg !4682
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4683, metadata !DIExpression()), !dbg !4684
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !4685, metadata !DIExpression()), !dbg !4686
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !4687, metadata !DIExpression()), !dbg !4688
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4689
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 18, !dbg !4690
  %1 = load i64, i64* %iobase, align 8, !dbg !4690
  %add = add i64 %1, 0, !dbg !4691
  %conv = trunc i64 %add to i32, !dbg !4689
  %call = call i32 @inl(i32 %conv) #10, !dbg !4692
  %2 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4693
  %state = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %2, i32 0, i32 29, !dbg !4694
  store i32 %call, i32* %state, align 4, !dbg !4695
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4696
  %4 = load i32*, i32** %data.addr, align 8, !dbg !4698
  %call1 = call i32 @comedi_dio_update_state(%struct.comedi_subdevice* %3, i32* %4) #10, !dbg !4699
  %tobool = icmp ne i32 %call1, 0, !dbg !4699
  br i1 %tobool, label %if.then, label %if.end, !dbg !4700

if.then:                                          ; preds = %entry
  %5 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4701
  %state2 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %5, i32 0, i32 29, !dbg !4702
  %6 = load i32, i32* %state2, align 4, !dbg !4702
  %7 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4703
  %iobase3 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 18, !dbg !4704
  %8 = load i64, i64* %iobase3, align 8, !dbg !4704
  %add4 = add i64 %8, 0, !dbg !4705
  %conv5 = trunc i64 %add4 to i32, !dbg !4703
  call void @outl(i32 %6, i32 %conv5) #10, !dbg !4706
  br label %if.end, !dbg !4706

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !4707
  %state6 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %9, i32 0, i32 29, !dbg !4708
  %10 = load i32, i32* %state6, align 4, !dbg !4708
  %11 = load i32*, i32** %data.addr, align 8, !dbg !4709
  %arrayidx = getelementptr i32, i32* %11, i64 1, !dbg !4709
  store i32 %10, i32* %arrayidx, align 4, !dbg !4710
  %12 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4711
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %12, i32 0, i32 1, !dbg !4712
  %13 = load i32, i32* %n, align 4, !dbg !4712
  ret i32 %13, !dbg !4713
}

; Function Attrs: noredzone
declare dso_local i32 @addi_watchdog_init(%struct.comedi_subdevice*, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci2032_int_insn_bits(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_insn* %insn, i32* %data) #2 !dbg !4714 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %insn.addr = alloca %struct.comedi_insn*, align 8
  %data.addr = alloca i32*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !4715, metadata !DIExpression()), !dbg !4716
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !4717, metadata !DIExpression()), !dbg !4718
  store %struct.comedi_insn* %insn, %struct.comedi_insn** %insn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_insn** %insn.addr, metadata !4719, metadata !DIExpression()), !dbg !4720
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !4721, metadata !DIExpression()), !dbg !4722
  %0 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !4723
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %0, i32 0, i32 18, !dbg !4724
  %1 = load i64, i64* %iobase, align 8, !dbg !4724
  %add = add i64 %1, 8, !dbg !4725
  %conv = trunc i64 %add to i32, !dbg !4723
  %call = call i32 @inl(i32 %conv) #10, !dbg !4726
  %and = and i32 %call, 3, !dbg !4727
  %2 = load i32*, i32** %data.addr, align 8, !dbg !4728
  %arrayidx = getelementptr i32, i32* %2, i64 1, !dbg !4728
  store i32 %and, i32* %arrayidx, align 4, !dbg !4729
  %3 = load %struct.comedi_insn*, %struct.comedi_insn** %insn.addr, align 8, !dbg !4730
  %n = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %3, i32 0, i32 1, !dbg !4731
  %4 = load i32, i32* %n, align 4, !dbg !4731
  ret i32 %4, !dbg !4732
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #2 !dbg !4733 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4736, metadata !DIExpression()), !dbg !4740
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4746, metadata !DIExpression()), !dbg !4747
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4748, metadata !DIExpression()), !dbg !4749
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4750, metadata !DIExpression()), !dbg !4751
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4752, metadata !DIExpression()), !dbg !4756
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4758, metadata !DIExpression()), !dbg !4762
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4764, metadata !DIExpression()), !dbg !4768
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4773, metadata !DIExpression()), !dbg !4774
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4775, metadata !DIExpression()), !dbg !4776
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4777, metadata !DIExpression()), !dbg !4778
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4779, metadata !DIExpression()), !dbg !4780
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4781, metadata !DIExpression()), !dbg !4782
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4783, metadata !DIExpression()), !dbg !4784
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4785, metadata !DIExpression()), !dbg !4786
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4787, metadata !DIExpression()), !dbg !4788
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4789, metadata !DIExpression()), !dbg !4790
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4791, metadata !DIExpression()), !dbg !4792
  %0 = load i64, i64* %size.addr, align 8, !dbg !4793
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4794
  %or = or i32 %1, 256, !dbg !4795
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4796
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !4797
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4798

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4799
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4800
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4801

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4802
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4803
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4804
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !4805
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4782
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4806
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4807
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4808
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4809
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4810
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4811
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !4812
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4812
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4812
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4812
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !4812
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4813
  br label %kmalloc.exit, !dbg !4813

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4814
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4815
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4815
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4817

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4818
  br label %kmalloc_index.exit.i, !dbg !4818

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4819
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4821
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4822

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4823
  br label %kmalloc_index.exit.i, !dbg !4823

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4824
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4826
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4827

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4828
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4829
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4830

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4831
  br label %kmalloc_index.exit.i, !dbg !4831

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4832
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4834
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4835

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4836
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4837
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4838

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4839
  br label %kmalloc_index.exit.i, !dbg !4839

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4840
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4842
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4843

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4844
  br label %kmalloc_index.exit.i, !dbg !4844

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4845
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4847
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4848

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4849
  br label %kmalloc_index.exit.i, !dbg !4849

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4850
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4852
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4853

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4854
  br label %kmalloc_index.exit.i, !dbg !4854

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4855
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4857
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4858

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4859
  br label %kmalloc_index.exit.i, !dbg !4859

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4860
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4862
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4863

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4864
  br label %kmalloc_index.exit.i, !dbg !4864

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4865
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4867
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4868

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4869
  br label %kmalloc_index.exit.i, !dbg !4869

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4870
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4872
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4873

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4874
  br label %kmalloc_index.exit.i, !dbg !4874

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4875
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4877
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4878

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4879
  br label %kmalloc_index.exit.i, !dbg !4879

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4880
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4882
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4883

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4884
  br label %kmalloc_index.exit.i, !dbg !4884

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4885
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4887
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4888

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4889
  br label %kmalloc_index.exit.i, !dbg !4889

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4890
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4892
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4893

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4894
  br label %kmalloc_index.exit.i, !dbg !4894

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4895
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4897
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4898

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4899
  br label %kmalloc_index.exit.i, !dbg !4899

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4900
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4902
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4903

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4904
  br label %kmalloc_index.exit.i, !dbg !4904

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4905
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4907
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4908

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4909
  br label %kmalloc_index.exit.i, !dbg !4909

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4910
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4912
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4913

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4914
  br label %kmalloc_index.exit.i, !dbg !4914

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4915
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4917
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4918

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4919
  br label %kmalloc_index.exit.i, !dbg !4919

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4920
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4922
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4923

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4924
  br label %kmalloc_index.exit.i, !dbg !4924

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4925
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4927
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4928

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4929
  br label %kmalloc_index.exit.i, !dbg !4929

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4930
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4932
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4933

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4934
  br label %kmalloc_index.exit.i, !dbg !4934

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4935
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4937
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4938

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4939
  br label %kmalloc_index.exit.i, !dbg !4939

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4940
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4942
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4943

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4944
  br label %kmalloc_index.exit.i, !dbg !4944

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4945
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4947
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4948

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4949
  br label %kmalloc_index.exit.i, !dbg !4949

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4950
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4952
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4953

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4954
  br label %kmalloc_index.exit.i, !dbg !4954

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4955
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4957
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4958

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4959
  br label %kmalloc_index.exit.i, !dbg !4959

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !4960, !srcloc !4963
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 107) #9, !dbg !4964, !srcloc !4967
  unreachable, !dbg !4968

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4969
  store i32 %45, i32* %index.i, align 4, !dbg !4970
  %46 = load i32, i32* %index.i, align 4, !dbg !4971
  %tobool.i = icmp ne i32 %46, 0, !dbg !4971
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4973

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4974
  br label %kmalloc.exit, !dbg !4974

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4975
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4976
  %and.i.i = and i32 %48, 17, !dbg !4976
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4976
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4976
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4976
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4976
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4978

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4979
  br label %kmalloc_type.exit.i, !dbg !4979

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4980
  %and2.i.i = and i32 %49, 1, !dbg !4981
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4980
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4980
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4980
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4982
  br label %kmalloc_type.exit.i, !dbg !4982

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4983
  %idxprom.i = zext i32 %51 to i64, !dbg !4984
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4984
  %52 = load i32, i32* %index.i, align 4, !dbg !4985
  %idxprom6.i = zext i32 %52 to i64, !dbg !4984
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4984
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4984
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4986
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4987
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4988
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4989
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !4990
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4990
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4990
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4990
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !4990
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4751
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4991
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4992
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4993
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4994
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !4995
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4996
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4997
  store i8* %62, i8** %retval.i, align 8, !dbg !4998
  br label %kmalloc.exit, !dbg !4998

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4999
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5000
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !5001
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5001
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5001
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5001
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !5001
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5002
  br label %kmalloc.exit, !dbg !5002

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5003
  ret i8* %65, !dbg !5004
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci2032_int_cmdtest(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s, %struct.comedi_cmd* %cmd) #2 !dbg !5005 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %cmd.addr = alloca %struct.comedi_cmd*, align 8
  %err = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5006, metadata !DIExpression()), !dbg !5007
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5008, metadata !DIExpression()), !dbg !5009
  store %struct.comedi_cmd* %cmd, %struct.comedi_cmd** %cmd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd.addr, metadata !5010, metadata !DIExpression()), !dbg !5011
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5012, metadata !DIExpression()), !dbg !5013
  store i32 0, i32* %err, align 4, !dbg !5013
  %0 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5014
  %start_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %0, i32 0, i32 2, !dbg !5015
  %call = call i32 @comedi_check_trigger_src(i32* %start_src, i32 2) #10, !dbg !5016
  %1 = load i32, i32* %err, align 4, !dbg !5017
  %or = or i32 %1, %call, !dbg !5017
  store i32 %or, i32* %err, align 4, !dbg !5017
  %2 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5018
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %2, i32 0, i32 4, !dbg !5019
  %call1 = call i32 @comedi_check_trigger_src(i32* %scan_begin_src, i32 64) #10, !dbg !5020
  %3 = load i32, i32* %err, align 4, !dbg !5021
  %or2 = or i32 %3, %call1, !dbg !5021
  store i32 %or2, i32* %err, align 4, !dbg !5021
  %4 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5022
  %convert_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %4, i32 0, i32 6, !dbg !5023
  %call3 = call i32 @comedi_check_trigger_src(i32* %convert_src, i32 2) #10, !dbg !5024
  %5 = load i32, i32* %err, align 4, !dbg !5025
  %or4 = or i32 %5, %call3, !dbg !5025
  store i32 %or4, i32* %err, align 4, !dbg !5025
  %6 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5026
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %6, i32 0, i32 8, !dbg !5027
  %call5 = call i32 @comedi_check_trigger_src(i32* %scan_end_src, i32 32) #10, !dbg !5028
  %7 = load i32, i32* %err, align 4, !dbg !5029
  %or6 = or i32 %7, %call5, !dbg !5029
  store i32 %or6, i32* %err, align 4, !dbg !5029
  %8 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5030
  %stop_src = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %8, i32 0, i32 10, !dbg !5031
  %call7 = call i32 @comedi_check_trigger_src(i32* %stop_src, i32 33) #10, !dbg !5032
  %9 = load i32, i32* %err, align 4, !dbg !5033
  %or8 = or i32 %9, %call7, !dbg !5033
  store i32 %or8, i32* %err, align 4, !dbg !5033
  %10 = load i32, i32* %err, align 4, !dbg !5034
  %tobool = icmp ne i32 %10, 0, !dbg !5034
  br i1 %tobool, label %if.then, label %if.end, !dbg !5036

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !5037
  br label %return, !dbg !5037

if.end:                                           ; preds = %entry
  %11 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5038
  %stop_src9 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %11, i32 0, i32 10, !dbg !5039
  %12 = load i32, i32* %stop_src9, align 8, !dbg !5039
  %call10 = call i32 @comedi_check_trigger_is_unique(i32 %12) #10, !dbg !5040
  %13 = load i32, i32* %err, align 4, !dbg !5041
  %or11 = or i32 %13, %call10, !dbg !5041
  store i32 %or11, i32* %err, align 4, !dbg !5041
  %14 = load i32, i32* %err, align 4, !dbg !5042
  %tobool12 = icmp ne i32 %14, 0, !dbg !5042
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !5044

if.then13:                                        ; preds = %if.end
  store i32 2, i32* %retval, align 4, !dbg !5045
  br label %return, !dbg !5045

if.end14:                                         ; preds = %if.end
  %15 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5046
  %start_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %15, i32 0, i32 3, !dbg !5047
  %call15 = call i32 @comedi_check_trigger_arg_is(i32* %start_arg, i32 0) #10, !dbg !5048
  %16 = load i32, i32* %err, align 4, !dbg !5049
  %or16 = or i32 %16, %call15, !dbg !5049
  store i32 %or16, i32* %err, align 4, !dbg !5049
  %17 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5050
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %17, i32 0, i32 5, !dbg !5051
  %call17 = call i32 @comedi_check_trigger_arg_is(i32* %scan_begin_arg, i32 0) #10, !dbg !5052
  %18 = load i32, i32* %err, align 4, !dbg !5053
  %or18 = or i32 %18, %call17, !dbg !5053
  store i32 %or18, i32* %err, align 4, !dbg !5053
  %19 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5054
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %19, i32 0, i32 7, !dbg !5055
  %call19 = call i32 @comedi_check_trigger_arg_is(i32* %convert_arg, i32 0) #10, !dbg !5056
  %20 = load i32, i32* %err, align 4, !dbg !5057
  %or20 = or i32 %20, %call19, !dbg !5057
  store i32 %or20, i32* %err, align 4, !dbg !5057
  %21 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5058
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %21, i32 0, i32 9, !dbg !5059
  %22 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5060
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %22, i32 0, i32 13, !dbg !5061
  %23 = load i32, i32* %chanlist_len, align 8, !dbg !5061
  %call21 = call i32 @comedi_check_trigger_arg_is(i32* %scan_end_arg, i32 %23) #10, !dbg !5062
  %24 = load i32, i32* %err, align 4, !dbg !5063
  %or22 = or i32 %24, %call21, !dbg !5063
  store i32 %or22, i32* %err, align 4, !dbg !5063
  %25 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5064
  %stop_src23 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %25, i32 0, i32 10, !dbg !5066
  %26 = load i32, i32* %stop_src23, align 8, !dbg !5066
  %cmp = icmp eq i32 %26, 32, !dbg !5067
  br i1 %cmp, label %if.then24, label %if.else, !dbg !5068

if.then24:                                        ; preds = %if.end14
  %27 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5069
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %27, i32 0, i32 11, !dbg !5070
  %call25 = call i32 @comedi_check_trigger_arg_min(i32* %stop_arg, i32 1) #10, !dbg !5071
  %28 = load i32, i32* %err, align 4, !dbg !5072
  %or26 = or i32 %28, %call25, !dbg !5072
  store i32 %or26, i32* %err, align 4, !dbg !5072
  br label %if.end30, !dbg !5073

if.else:                                          ; preds = %if.end14
  %29 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd.addr, align 8, !dbg !5074
  %stop_arg27 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %29, i32 0, i32 11, !dbg !5075
  %call28 = call i32 @comedi_check_trigger_arg_is(i32* %stop_arg27, i32 0) #10, !dbg !5076
  %30 = load i32, i32* %err, align 4, !dbg !5077
  %or29 = or i32 %30, %call28, !dbg !5077
  store i32 %or29, i32* %err, align 4, !dbg !5077
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then24
  %31 = load i32, i32* %err, align 4, !dbg !5078
  %tobool31 = icmp ne i32 %31, 0, !dbg !5078
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !5080

if.then32:                                        ; preds = %if.end30
  store i32 3, i32* %retval, align 4, !dbg !5081
  br label %return, !dbg !5081

if.end33:                                         ; preds = %if.end30
  store i32 0, i32* %retval, align 4, !dbg !5082
  br label %return, !dbg !5082

return:                                           ; preds = %if.end33, %if.then32, %if.then13, %if.then
  %32 = load i32, i32* %retval, align 4, !dbg !5083
  ret i32 %32, !dbg !5083
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci2032_int_cmd(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #2 !dbg !5084 {
entry:
  %lock.addr.i27 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i27, metadata !5085, metadata !DIExpression()), !dbg !5089
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !5091, metadata !DIExpression()), !dbg !5092
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4316, metadata !DIExpression()), !dbg !5093
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %cmd = alloca %struct.comedi_cmd*, align 8
  %subpriv = alloca %struct.apci2032_int_private*, align 8
  %enabled_isns = alloca i8, align 1
  %n = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy9 = alloca i64, align 8
  %__dummy210 = alloca i64, align 8
  %tmp13 = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5100, metadata !DIExpression()), !dbg !5101
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5102, metadata !DIExpression()), !dbg !5103
  call void @llvm.dbg.declare(metadata %struct.comedi_cmd** %cmd, metadata !5104, metadata !DIExpression()), !dbg !5105
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5106
  %async = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 7, !dbg !5107
  %1 = load %struct.comedi_async*, %struct.comedi_async** %async, align 8, !dbg !5107
  %cmd1 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %1, i32 0, i32 17, !dbg !5108
  store %struct.comedi_cmd* %cmd1, %struct.comedi_cmd** %cmd, align 8, !dbg !5105
  call void @llvm.dbg.declare(metadata %struct.apci2032_int_private** %subpriv, metadata !5109, metadata !DIExpression()), !dbg !5110
  %2 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5111
  %private = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %2, i32 0, i32 6, !dbg !5112
  %3 = load i8*, i8** %private, align 8, !dbg !5112
  %4 = bitcast i8* %3 to %struct.apci2032_int_private*, !dbg !5111
  store %struct.apci2032_int_private* %4, %struct.apci2032_int_private** %subpriv, align 8, !dbg !5110
  call void @llvm.dbg.declare(metadata i8* %enabled_isns, metadata !5113, metadata !DIExpression()), !dbg !5114
  call void @llvm.dbg.declare(metadata i32* %n, metadata !5115, metadata !DIExpression()), !dbg !5116
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5117, metadata !DIExpression()), !dbg !5118
  store i8 0, i8* %enabled_isns, align 1, !dbg !5119
  store i32 0, i32* %n, align 4, !dbg !5120
  br label %for.cond, !dbg !5122

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %n, align 4, !dbg !5123
  %6 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5125
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %6, i32 0, i32 13, !dbg !5126
  %7 = load i32, i32* %chanlist_len, align 8, !dbg !5126
  %cmp = icmp ult i32 %5, %7, !dbg !5127
  br i1 %cmp, label %for.body, label %for.end, !dbg !5128

for.body:                                         ; preds = %for.cond
  %8 = load %struct.comedi_cmd*, %struct.comedi_cmd** %cmd, align 8, !dbg !5129
  %chanlist = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %8, i32 0, i32 12, !dbg !5129
  %9 = load i32*, i32** %chanlist, align 8, !dbg !5129
  %10 = load i32, i32* %n, align 4, !dbg !5129
  %idxprom = zext i32 %10 to i64, !dbg !5129
  %arrayidx = getelementptr i32, i32* %9, i64 %idxprom, !dbg !5129
  %11 = load i32, i32* %arrayidx, align 4, !dbg !5129
  %and = and i32 %11, 65535, !dbg !5129
  %shl = shl i32 1, %and, !dbg !5130
  %12 = load i8, i8* %enabled_isns, align 1, !dbg !5131
  %conv = zext i8 %12 to i32, !dbg !5131
  %or = or i32 %conv, %shl, !dbg !5131
  %conv2 = trunc i32 %or to i8, !dbg !5131
  store i8 %conv2, i8* %enabled_isns, align 1, !dbg !5131
  br label %for.inc, !dbg !5132

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %n, align 4, !dbg !5133
  %inc = add i32 %13, 1, !dbg !5133
  store i32 %inc, i32* %n, align 4, !dbg !5133
  br label %for.cond, !dbg !5134, !llvm.loop !5135

for.end:                                          ; preds = %for.cond
  br label %do.body, !dbg !5137

do.body:                                          ; preds = %for.end
  br label %do.body3, !dbg !5138

do.body3:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5139, metadata !DIExpression()), !dbg !5141
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5142, metadata !DIExpression()), !dbg !5141
  %cmp4 = icmp eq i64* %__dummy, %__dummy2, !dbg !5141
  %conv5 = zext i1 %cmp4 to i32, !dbg !5141
  store i32 1, i32* %tmp, align 4, !dbg !5141
  %14 = load i32, i32* %tmp, align 4, !dbg !5141
  br label %do.body6, !dbg !5143

do.body6:                                         ; preds = %do.body3
  br label %do.body7, !dbg !5144

do.body7:                                         ; preds = %do.body6
  br label %do.body8, !dbg !5145

do.body8:                                         ; preds = %do.body7
  call void @llvm.dbg.declare(metadata i64* %__dummy9, metadata !5147, metadata !DIExpression()), !dbg !5150
  call void @llvm.dbg.declare(metadata i64* %__dummy210, metadata !5151, metadata !DIExpression()), !dbg !5150
  %cmp11 = icmp eq i64* %__dummy9, %__dummy210, !dbg !5150
  %conv12 = zext i1 %cmp11 to i32, !dbg !5150
  store i32 1, i32* %tmp13, align 4, !dbg !5150
  %15 = load i32, i32* %tmp13, align 4, !dbg !5150
  %call = call i64 @arch_local_irq_save() #10, !dbg !5152
  store i64 %call, i64* %flags, align 8, !dbg !5152
  br label %do.end, !dbg !5152

do.end:                                           ; preds = %do.body8
  br label %do.end14, !dbg !5145

do.end14:                                         ; preds = %do.end
  br label %do.body15, !dbg !5144

do.body15:                                        ; preds = %do.end14
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !5153, !srcloc !5154
  br label %do.body16, !dbg !5153

do.body16:                                        ; preds = %do.body15
  %16 = load %struct.apci2032_int_private*, %struct.apci2032_int_private** %subpriv, align 8, !dbg !5155
  %spinlock = getelementptr inbounds %struct.apci2032_int_private, %struct.apci2032_int_private* %16, i32 0, i32 0, !dbg !5155
  store %struct.spinlock* %spinlock, %struct.spinlock** %lock.addr.i, align 8
  %17 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5156
  %18 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %17, i32 0, i32 0, !dbg !5157
  %rlock.i = bitcast %union.anon.3* %18 to %struct.raw_spinlock*, !dbg !5157
  br label %do.end18, !dbg !5155

do.end18:                                         ; preds = %do.body16
  br label %do.end19, !dbg !5153

do.end19:                                         ; preds = %do.end18
  br label %do.end20, !dbg !5144

do.end20:                                         ; preds = %do.end19
  br label %do.end21, !dbg !5143

do.end21:                                         ; preds = %do.end20
  br label %do.end22, !dbg !5138

do.end22:                                         ; preds = %do.end21
  %19 = load i8, i8* %enabled_isns, align 1, !dbg !5158
  %20 = load %struct.apci2032_int_private*, %struct.apci2032_int_private** %subpriv, align 8, !dbg !5159
  %enabled_isns23 = getelementptr inbounds %struct.apci2032_int_private, %struct.apci2032_int_private* %20, i32 0, i32 2, !dbg !5160
  store i8 %19, i8* %enabled_isns23, align 1, !dbg !5161
  %21 = load %struct.apci2032_int_private*, %struct.apci2032_int_private** %subpriv, align 8, !dbg !5162
  %active = getelementptr inbounds %struct.apci2032_int_private, %struct.apci2032_int_private* %21, i32 0, i32 1, !dbg !5163
  store i8 1, i8* %active, align 1, !dbg !5164
  %22 = load i8, i8* %enabled_isns, align 1, !dbg !5165
  %conv24 = zext i8 %22 to i32, !dbg !5165
  %23 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5166
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %23, i32 0, i32 18, !dbg !5167
  %24 = load i64, i64* %iobase, align 8, !dbg !5167
  %add = add i64 %24, 4, !dbg !5168
  %conv25 = trunc i64 %add to i32, !dbg !5166
  call void @outl(i32 %conv24, i32 %conv25) #10, !dbg !5169
  %25 = load %struct.apci2032_int_private*, %struct.apci2032_int_private** %subpriv, align 8, !dbg !5170
  %spinlock26 = getelementptr inbounds %struct.apci2032_int_private, %struct.apci2032_int_private* %25, i32 0, i32 0, !dbg !5171
  %26 = load i64, i64* %flags, align 8, !dbg !5172
  store %struct.spinlock* %spinlock26, %struct.spinlock** %lock.addr.i27, align 8
  store i64 %26, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !243, metadata !5173, metadata !DIExpression()) #9, !dbg !5176
  call void @llvm.dbg.declare(metadata !243, metadata !5177, metadata !DIExpression()) #9, !dbg !5176
  store i32 1, i32* %tmp.i, align 4, !dbg !5176
  %27 = load i32, i32* %tmp.i, align 4, !dbg !5176
  call void @llvm.dbg.declare(metadata !243, metadata !5178, metadata !DIExpression()) #9, !dbg !5183
  call void @llvm.dbg.declare(metadata !243, metadata !5184, metadata !DIExpression()) #9, !dbg !5183
  store i32 1, i32* %tmp8.i, align 4, !dbg !5183
  %28 = load i32, i32* %tmp8.i, align 4, !dbg !5183
  %29 = load i64, i64* %flags.addr.i, align 8, !dbg !5185
  call void @arch_local_irq_restore(i64 %29) #12, !dbg !5185
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !5186, !srcloc !5188
  %30 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i27, align 8, !dbg !5189
  %31 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %30, i32 0, i32 0, !dbg !5189
  %rlock.i28 = bitcast %union.anon.3* %31 to %struct.raw_spinlock*, !dbg !5189
  ret i32 0, !dbg !5191
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci2032_int_cancel(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #2 !dbg !5192 {
entry:
  %lock.addr.i20 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i20, metadata !5085, metadata !DIExpression()), !dbg !5193
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !5091, metadata !DIExpression()), !dbg !5195
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4316, metadata !DIExpression()), !dbg !5196
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %subpriv = alloca %struct.apci2032_int_private*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5203, metadata !DIExpression()), !dbg !5204
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5205, metadata !DIExpression()), !dbg !5206
  call void @llvm.dbg.declare(metadata %struct.apci2032_int_private** %subpriv, metadata !5207, metadata !DIExpression()), !dbg !5208
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5209
  %private = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 6, !dbg !5210
  %1 = load i8*, i8** %private, align 8, !dbg !5210
  %2 = bitcast i8* %1 to %struct.apci2032_int_private*, !dbg !5209
  store %struct.apci2032_int_private* %2, %struct.apci2032_int_private** %subpriv, align 8, !dbg !5208
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5211, metadata !DIExpression()), !dbg !5212
  br label %do.body, !dbg !5213

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5214

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5215, metadata !DIExpression()), !dbg !5217
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5218, metadata !DIExpression()), !dbg !5217
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !5217
  %conv = zext i1 %cmp to i32, !dbg !5217
  store i32 1, i32* %tmp, align 4, !dbg !5217
  %3 = load i32, i32* %tmp, align 4, !dbg !5217
  br label %do.body2, !dbg !5219

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !5220

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !5221

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !5223, metadata !DIExpression()), !dbg !5226
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !5227, metadata !DIExpression()), !dbg !5226
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !5226
  %conv8 = zext i1 %cmp7 to i32, !dbg !5226
  store i32 1, i32* %tmp9, align 4, !dbg !5226
  %4 = load i32, i32* %tmp9, align 4, !dbg !5226
  %call = call i64 @arch_local_irq_save() #10, !dbg !5228
  store i64 %call, i64* %flags, align 8, !dbg !5228
  br label %do.end, !dbg !5228

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !5221

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !5220

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !5229, !srcloc !5230
  br label %do.body12, !dbg !5229

do.body12:                                        ; preds = %do.body11
  %5 = load %struct.apci2032_int_private*, %struct.apci2032_int_private** %subpriv, align 8, !dbg !5231
  %spinlock = getelementptr inbounds %struct.apci2032_int_private, %struct.apci2032_int_private* %5, i32 0, i32 0, !dbg !5231
  store %struct.spinlock* %spinlock, %struct.spinlock** %lock.addr.i, align 8
  %6 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5232
  %7 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %6, i32 0, i32 0, !dbg !5233
  %rlock.i = bitcast %union.anon.3* %7 to %struct.raw_spinlock*, !dbg !5233
  br label %do.end14, !dbg !5231

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !5229

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !5220

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !5219

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !5214

do.end18:                                         ; preds = %do.end17
  %8 = load %struct.apci2032_int_private*, %struct.apci2032_int_private** %subpriv, align 8, !dbg !5234
  %active = getelementptr inbounds %struct.apci2032_int_private, %struct.apci2032_int_private* %8, i32 0, i32 1, !dbg !5236
  %9 = load i8, i8* %active, align 1, !dbg !5236
  %tobool = trunc i8 %9 to i1, !dbg !5236
  br i1 %tobool, label %if.then, label %if.end, !dbg !5237

if.then:                                          ; preds = %do.end18
  %10 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5238
  %11 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5239
  call void @apci2032_int_stop(%struct.comedi_device* %10, %struct.comedi_subdevice* %11) #10, !dbg !5240
  br label %if.end, !dbg !5240

if.end:                                           ; preds = %if.then, %do.end18
  %12 = load %struct.apci2032_int_private*, %struct.apci2032_int_private** %subpriv, align 8, !dbg !5241
  %spinlock19 = getelementptr inbounds %struct.apci2032_int_private, %struct.apci2032_int_private* %12, i32 0, i32 0, !dbg !5242
  %13 = load i64, i64* %flags, align 8, !dbg !5243
  store %struct.spinlock* %spinlock19, %struct.spinlock** %lock.addr.i20, align 8
  store i64 %13, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !243, metadata !5173, metadata !DIExpression()) #9, !dbg !5244
  call void @llvm.dbg.declare(metadata !243, metadata !5177, metadata !DIExpression()) #9, !dbg !5244
  store i32 1, i32* %tmp.i, align 4, !dbg !5244
  %14 = load i32, i32* %tmp.i, align 4, !dbg !5244
  call void @llvm.dbg.declare(metadata !243, metadata !5178, metadata !DIExpression()) #9, !dbg !5245
  call void @llvm.dbg.declare(metadata !243, metadata !5184, metadata !DIExpression()) #9, !dbg !5245
  store i32 1, i32* %tmp8.i, align 4, !dbg !5245
  %15 = load i32, i32* %tmp8.i, align 4, !dbg !5245
  %16 = load i64, i64* %flags.addr.i, align 8, !dbg !5246
  call void @arch_local_irq_restore(i64 %16) #12, !dbg !5246
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !5247, !srcloc !5188
  %17 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i20, align 8, !dbg !5248
  %18 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %17, i32 0, i32 0, !dbg !5248
  %rlock.i21 = bitcast %union.anon.3* %18 to %struct.raw_spinlock*, !dbg !5248
  ret i32 0, !dbg !5249
}

; Function Attrs: noredzone
declare dso_local i32 @request_threaded_irq(i32, i32 (i32, i8*)*, i32 (i32, i8*)*, i64, i8*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @inl(i32 %port) #2 !dbg !5250 {
entry:
  %port.addr = alloca i32, align 4
  %value = alloca i32, align 4
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5253, metadata !DIExpression()), !dbg !5254
  call void @llvm.dbg.declare(metadata i32* %value, metadata !5255, metadata !DIExpression()), !dbg !5254
  %0 = load i32, i32* %port.addr, align 4, !dbg !5254
  %1 = call i32 asm sideeffect "inl ${1:w}, $0", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #9, !dbg !5254, !srcloc !5256
  store i32 %1, i32* %value, align 4, !dbg !5254
  %2 = load i32, i32* %value, align 4, !dbg !5254
  ret i32 %2, !dbg !5254
}

; Function Attrs: noredzone
declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i8*, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

; Function Attrs: noredzone
declare dso_local i32 @comedi_dio_update_state(%struct.comedi_subdevice*, i32*) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !5257 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5261, metadata !DIExpression()), !dbg !5266
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5268, metadata !DIExpression()), !dbg !5269
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5270, metadata !DIExpression()), !dbg !5271
  %0 = load i64, i64* %size.addr, align 8, !dbg !5272
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5274
  br i1 %1, label %if.then, label %if.end447, !dbg !5275

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5276
  %tobool = icmp ne i64 %2, 0, !dbg !5276
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5279

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5280
  br label %return, !dbg !5280

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5281
  %cmp = icmp ult i64 %3, 4096, !dbg !5283
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5284

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5285
  br label %return, !dbg !5285

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub = sub i64 %4, 1, !dbg !5286
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5286
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5286

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub4 = sub i64 %6, 1, !dbg !5286
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5286
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5286

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub6 = sub i64 %8, 1, !dbg !5286
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5286
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5286

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5286

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub9 = sub i64 %9, 1, !dbg !5286
  %and = and i64 %sub9, -9223372036854775808, !dbg !5286
  %tobool10 = icmp ne i64 %and, 0, !dbg !5286
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5286

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5286

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub13 = sub i64 %10, 1, !dbg !5286
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5286
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5286
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5286

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5286

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub18 = sub i64 %11, 1, !dbg !5286
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5286
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5286
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5286

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5286

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub23 = sub i64 %12, 1, !dbg !5286
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5286
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5286
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5286

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5286

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub28 = sub i64 %13, 1, !dbg !5286
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5286
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5286
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5286

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5286

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub33 = sub i64 %14, 1, !dbg !5286
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5286
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5286
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5286

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5286

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub38 = sub i64 %15, 1, !dbg !5286
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5286
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5286
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5286

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5286

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub43 = sub i64 %16, 1, !dbg !5286
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5286
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5286
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5286

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5286

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub48 = sub i64 %17, 1, !dbg !5286
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5286
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5286
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5286

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5286

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub53 = sub i64 %18, 1, !dbg !5286
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5286
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5286
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5286

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5286

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub58 = sub i64 %19, 1, !dbg !5286
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5286
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5286
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5286

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5286

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub63 = sub i64 %20, 1, !dbg !5286
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5286
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5286
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5286

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5286

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub68 = sub i64 %21, 1, !dbg !5286
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5286
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5286
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5286

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5286

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub73 = sub i64 %22, 1, !dbg !5286
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5286
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5286
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5286

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5286

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub78 = sub i64 %23, 1, !dbg !5286
  %and79 = and i64 %sub78, 562949953421312, !dbg !5286
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5286
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5286

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5286

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub83 = sub i64 %24, 1, !dbg !5286
  %and84 = and i64 %sub83, 281474976710656, !dbg !5286
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5286
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5286

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5286

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub88 = sub i64 %25, 1, !dbg !5286
  %and89 = and i64 %sub88, 140737488355328, !dbg !5286
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5286
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5286

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5286

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub93 = sub i64 %26, 1, !dbg !5286
  %and94 = and i64 %sub93, 70368744177664, !dbg !5286
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5286
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5286

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5286

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub98 = sub i64 %27, 1, !dbg !5286
  %and99 = and i64 %sub98, 35184372088832, !dbg !5286
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5286
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5286

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5286

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub103 = sub i64 %28, 1, !dbg !5286
  %and104 = and i64 %sub103, 17592186044416, !dbg !5286
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5286
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5286

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5286

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub108 = sub i64 %29, 1, !dbg !5286
  %and109 = and i64 %sub108, 8796093022208, !dbg !5286
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5286
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5286

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5286

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub113 = sub i64 %30, 1, !dbg !5286
  %and114 = and i64 %sub113, 4398046511104, !dbg !5286
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5286
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5286

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5286

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub118 = sub i64 %31, 1, !dbg !5286
  %and119 = and i64 %sub118, 2199023255552, !dbg !5286
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5286
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5286

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5286

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub123 = sub i64 %32, 1, !dbg !5286
  %and124 = and i64 %sub123, 1099511627776, !dbg !5286
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5286
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5286

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5286

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub128 = sub i64 %33, 1, !dbg !5286
  %and129 = and i64 %sub128, 549755813888, !dbg !5286
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5286
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5286

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5286

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub133 = sub i64 %34, 1, !dbg !5286
  %and134 = and i64 %sub133, 274877906944, !dbg !5286
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5286
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5286

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5286

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub138 = sub i64 %35, 1, !dbg !5286
  %and139 = and i64 %sub138, 137438953472, !dbg !5286
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5286
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5286

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5286

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub143 = sub i64 %36, 1, !dbg !5286
  %and144 = and i64 %sub143, 68719476736, !dbg !5286
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5286
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5286

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5286

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub148 = sub i64 %37, 1, !dbg !5286
  %and149 = and i64 %sub148, 34359738368, !dbg !5286
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5286
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5286

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5286

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub153 = sub i64 %38, 1, !dbg !5286
  %and154 = and i64 %sub153, 17179869184, !dbg !5286
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5286
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5286

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5286

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub158 = sub i64 %39, 1, !dbg !5286
  %and159 = and i64 %sub158, 8589934592, !dbg !5286
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5286
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5286

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5286

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub163 = sub i64 %40, 1, !dbg !5286
  %and164 = and i64 %sub163, 4294967296, !dbg !5286
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5286
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5286

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5286

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub168 = sub i64 %41, 1, !dbg !5286
  %and169 = and i64 %sub168, 2147483648, !dbg !5286
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5286
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5286

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5286

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub173 = sub i64 %42, 1, !dbg !5286
  %and174 = and i64 %sub173, 1073741824, !dbg !5286
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5286
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5286

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5286

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub178 = sub i64 %43, 1, !dbg !5286
  %and179 = and i64 %sub178, 536870912, !dbg !5286
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5286
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5286

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5286

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub183 = sub i64 %44, 1, !dbg !5286
  %and184 = and i64 %sub183, 268435456, !dbg !5286
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5286
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5286

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5286

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub188 = sub i64 %45, 1, !dbg !5286
  %and189 = and i64 %sub188, 134217728, !dbg !5286
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5286
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5286

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5286

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub193 = sub i64 %46, 1, !dbg !5286
  %and194 = and i64 %sub193, 67108864, !dbg !5286
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5286
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5286

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5286

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub198 = sub i64 %47, 1, !dbg !5286
  %and199 = and i64 %sub198, 33554432, !dbg !5286
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5286
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5286

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5286

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub203 = sub i64 %48, 1, !dbg !5286
  %and204 = and i64 %sub203, 16777216, !dbg !5286
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5286
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5286

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5286

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub208 = sub i64 %49, 1, !dbg !5286
  %and209 = and i64 %sub208, 8388608, !dbg !5286
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5286
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5286

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5286

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub213 = sub i64 %50, 1, !dbg !5286
  %and214 = and i64 %sub213, 4194304, !dbg !5286
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5286
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5286

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5286

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub218 = sub i64 %51, 1, !dbg !5286
  %and219 = and i64 %sub218, 2097152, !dbg !5286
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5286
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5286

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5286

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub223 = sub i64 %52, 1, !dbg !5286
  %and224 = and i64 %sub223, 1048576, !dbg !5286
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5286
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5286

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5286

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub228 = sub i64 %53, 1, !dbg !5286
  %and229 = and i64 %sub228, 524288, !dbg !5286
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5286
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5286

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5286

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub233 = sub i64 %54, 1, !dbg !5286
  %and234 = and i64 %sub233, 262144, !dbg !5286
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5286
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5286

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5286

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub238 = sub i64 %55, 1, !dbg !5286
  %and239 = and i64 %sub238, 131072, !dbg !5286
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5286
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5286

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5286

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub243 = sub i64 %56, 1, !dbg !5286
  %and244 = and i64 %sub243, 65536, !dbg !5286
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5286
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5286

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5286

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub248 = sub i64 %57, 1, !dbg !5286
  %and249 = and i64 %sub248, 32768, !dbg !5286
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5286
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5286

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5286

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub253 = sub i64 %58, 1, !dbg !5286
  %and254 = and i64 %sub253, 16384, !dbg !5286
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5286
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5286

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5286

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub258 = sub i64 %59, 1, !dbg !5286
  %and259 = and i64 %sub258, 8192, !dbg !5286
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5286
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5286

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5286

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub263 = sub i64 %60, 1, !dbg !5286
  %and264 = and i64 %sub263, 4096, !dbg !5286
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5286
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5286

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5286

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub268 = sub i64 %61, 1, !dbg !5286
  %and269 = and i64 %sub268, 2048, !dbg !5286
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5286
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5286

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5286

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub273 = sub i64 %62, 1, !dbg !5286
  %and274 = and i64 %sub273, 1024, !dbg !5286
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5286
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5286

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5286

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub278 = sub i64 %63, 1, !dbg !5286
  %and279 = and i64 %sub278, 512, !dbg !5286
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5286
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5286

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5286

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub283 = sub i64 %64, 1, !dbg !5286
  %and284 = and i64 %sub283, 256, !dbg !5286
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5286
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5286

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5286

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub288 = sub i64 %65, 1, !dbg !5286
  %and289 = and i64 %sub288, 128, !dbg !5286
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5286
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5286

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5286

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub293 = sub i64 %66, 1, !dbg !5286
  %and294 = and i64 %sub293, 64, !dbg !5286
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5286
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5286

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5286

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub298 = sub i64 %67, 1, !dbg !5286
  %and299 = and i64 %sub298, 32, !dbg !5286
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5286
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5286

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5286

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub303 = sub i64 %68, 1, !dbg !5286
  %and304 = and i64 %sub303, 16, !dbg !5286
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5286
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5286

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5286

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub308 = sub i64 %69, 1, !dbg !5286
  %and309 = and i64 %sub308, 8, !dbg !5286
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5286
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5286

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5286

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub313 = sub i64 %70, 1, !dbg !5286
  %and314 = and i64 %sub313, 4, !dbg !5286
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5286
  %71 = zext i1 %tobool315 to i64, !dbg !5286
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5286
  br label %cond.end, !dbg !5286

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5286
  br label %cond.end317, !dbg !5286

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5286
  br label %cond.end319, !dbg !5286

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5286
  br label %cond.end321, !dbg !5286

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5286
  br label %cond.end323, !dbg !5286

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5286
  br label %cond.end325, !dbg !5286

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5286
  br label %cond.end327, !dbg !5286

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5286
  br label %cond.end329, !dbg !5286

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5286
  br label %cond.end331, !dbg !5286

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5286
  br label %cond.end333, !dbg !5286

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5286
  br label %cond.end335, !dbg !5286

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5286
  br label %cond.end337, !dbg !5286

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5286
  br label %cond.end339, !dbg !5286

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5286
  br label %cond.end341, !dbg !5286

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5286
  br label %cond.end343, !dbg !5286

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5286
  br label %cond.end345, !dbg !5286

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5286
  br label %cond.end347, !dbg !5286

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5286
  br label %cond.end349, !dbg !5286

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5286
  br label %cond.end351, !dbg !5286

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5286
  br label %cond.end353, !dbg !5286

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5286
  br label %cond.end355, !dbg !5286

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5286
  br label %cond.end357, !dbg !5286

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5286
  br label %cond.end359, !dbg !5286

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5286
  br label %cond.end361, !dbg !5286

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5286
  br label %cond.end363, !dbg !5286

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5286
  br label %cond.end365, !dbg !5286

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5286
  br label %cond.end367, !dbg !5286

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5286
  br label %cond.end369, !dbg !5286

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5286
  br label %cond.end371, !dbg !5286

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5286
  br label %cond.end373, !dbg !5286

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5286
  br label %cond.end375, !dbg !5286

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5286
  br label %cond.end377, !dbg !5286

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5286
  br label %cond.end379, !dbg !5286

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5286
  br label %cond.end381, !dbg !5286

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5286
  br label %cond.end383, !dbg !5286

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5286
  br label %cond.end385, !dbg !5286

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5286
  br label %cond.end387, !dbg !5286

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5286
  br label %cond.end389, !dbg !5286

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5286
  br label %cond.end391, !dbg !5286

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5286
  br label %cond.end393, !dbg !5286

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5286
  br label %cond.end395, !dbg !5286

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5286
  br label %cond.end397, !dbg !5286

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5286
  br label %cond.end399, !dbg !5286

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5286
  br label %cond.end401, !dbg !5286

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5286
  br label %cond.end403, !dbg !5286

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5286
  br label %cond.end405, !dbg !5286

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5286
  br label %cond.end407, !dbg !5286

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5286
  br label %cond.end409, !dbg !5286

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5286
  br label %cond.end411, !dbg !5286

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5286
  br label %cond.end413, !dbg !5286

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5286
  br label %cond.end415, !dbg !5286

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5286
  br label %cond.end417, !dbg !5286

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5286
  br label %cond.end419, !dbg !5286

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5286
  br label %cond.end421, !dbg !5286

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5286
  br label %cond.end423, !dbg !5286

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5286
  br label %cond.end425, !dbg !5286

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5286
  br label %cond.end427, !dbg !5286

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5286
  br label %cond.end429, !dbg !5286

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5286
  br label %cond.end431, !dbg !5286

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5286
  br label %cond.end433, !dbg !5286

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5286
  br label %cond.end435, !dbg !5286

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5286
  br label %cond.end437, !dbg !5286

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5286
  br label %cond.end440, !dbg !5286

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5286

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5286
  br label %cond.end444, !dbg !5286

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5286
  %sub443 = sub i64 %72, 1, !dbg !5286
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !5286
  br label %cond.end444, !dbg !5286

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5286
  %sub446 = sub i32 %cond445, 12, !dbg !5287
  %add = add i32 %sub446, 1, !dbg !5288
  store i32 %add, i32* %retval, align 4, !dbg !5289
  br label %return, !dbg !5289

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5290
  %dec = add i64 %73, -1, !dbg !5290
  store i64 %dec, i64* %size.addr, align 8, !dbg !5290
  %74 = load i64, i64* %size.addr, align 8, !dbg !5291
  %shr = lshr i64 %74, 12, !dbg !5291
  store i64 %shr, i64* %size.addr, align 8, !dbg !5291
  %75 = load i64, i64* %size.addr, align 8, !dbg !5292
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5269
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5293
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5294
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #8, !dbg !5293, !srcloc !5295
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5293
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5296
  %add.i = add i32 %79, 1, !dbg !5297
  store i32 %add.i, i32* %retval, align 4, !dbg !5298
  br label %return, !dbg !5298

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5299
  ret i32 %80, !dbg !5299
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !5300 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5261, metadata !DIExpression()), !dbg !5304
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5268, metadata !DIExpression()), !dbg !5306
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5307, metadata !DIExpression()), !dbg !5308
  %0 = load i64, i64* %n.addr, align 8, !dbg !5309
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5306
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5310
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5311
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #8, !dbg !5310, !srcloc !5295
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5310
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5312
  %add.i = add i32 %4, 1, !dbg !5313
  %sub = sub i32 %add.i, 1, !dbg !5314
  ret i32 %sub, !dbg !5315
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !5316 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5320, metadata !DIExpression()), !dbg !5321
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5322, metadata !DIExpression()), !dbg !5323
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5324, metadata !DIExpression()), !dbg !5325
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5326, metadata !DIExpression()), !dbg !5327
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5328
  ret i8* %0, !dbg !5329
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_src(i32* %src, i32 %flags) #2 !dbg !5330 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i32*, align 8
  %flags.addr = alloca i32, align 4
  %orig_src = alloca i32, align 4
  store i32* %src, i32** %src.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %src.addr, metadata !5333, metadata !DIExpression()), !dbg !5334
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5335, metadata !DIExpression()), !dbg !5336
  call void @llvm.dbg.declare(metadata i32* %orig_src, metadata !5337, metadata !DIExpression()), !dbg !5338
  %0 = load i32*, i32** %src.addr, align 8, !dbg !5339
  %1 = load i32, i32* %0, align 4, !dbg !5340
  store i32 %1, i32* %orig_src, align 4, !dbg !5338
  %2 = load i32, i32* %orig_src, align 4, !dbg !5341
  %3 = load i32, i32* %flags.addr, align 4, !dbg !5342
  %and = and i32 %2, %3, !dbg !5343
  %4 = load i32*, i32** %src.addr, align 8, !dbg !5344
  store i32 %and, i32* %4, align 4, !dbg !5345
  %5 = load i32*, i32** %src.addr, align 8, !dbg !5346
  %6 = load i32, i32* %5, align 4, !dbg !5348
  %cmp = icmp eq i32 %6, 0, !dbg !5349
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5350

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32*, i32** %src.addr, align 8, !dbg !5351
  %8 = load i32, i32* %7, align 4, !dbg !5352
  %9 = load i32, i32* %orig_src, align 4, !dbg !5353
  %cmp1 = icmp ne i32 %8, %9, !dbg !5354
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5355

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !5356
  br label %return, !dbg !5356

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %retval, align 4, !dbg !5357
  br label %return, !dbg !5357

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !5358
  ret i32 %10, !dbg !5358
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_is_unique(i32 %src) #2 !dbg !5359 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i32, align 4
  store i32 %src, i32* %src.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %src.addr, metadata !5362, metadata !DIExpression()), !dbg !5363
  %0 = load i32, i32* %src.addr, align 4, !dbg !5364
  %1 = load i32, i32* %src.addr, align 4, !dbg !5366
  %sub = sub i32 %1, 1, !dbg !5367
  %and = and i32 %0, %sub, !dbg !5368
  %cmp = icmp ne i32 %and, 0, !dbg !5369
  br i1 %cmp, label %if.then, label %if.end, !dbg !5370

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5371
  br label %return, !dbg !5371

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5372
  br label %return, !dbg !5372

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !5373
  ret i32 %2, !dbg !5373
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_arg_is(i32* %arg, i32 %val) #2 !dbg !5374 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i32*, align 8
  %val.addr = alloca i32, align 4
  store i32* %arg, i32** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %arg.addr, metadata !5375, metadata !DIExpression()), !dbg !5376
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5377, metadata !DIExpression()), !dbg !5378
  %0 = load i32*, i32** %arg.addr, align 8, !dbg !5379
  %1 = load i32, i32* %0, align 4, !dbg !5381
  %2 = load i32, i32* %val.addr, align 4, !dbg !5382
  %cmp = icmp ne i32 %1, %2, !dbg !5383
  br i1 %cmp, label %if.then, label %if.end, !dbg !5384

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %val.addr, align 4, !dbg !5385
  %4 = load i32*, i32** %arg.addr, align 8, !dbg !5387
  store i32 %3, i32* %4, align 4, !dbg !5388
  store i32 -22, i32* %retval, align 4, !dbg !5389
  br label %return, !dbg !5389

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5390
  br label %return, !dbg !5390

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !5391
  ret i32 %5, !dbg !5391
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @comedi_check_trigger_arg_min(i32* %arg, i32 %val) #2 !dbg !5392 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i32*, align 8
  %val.addr = alloca i32, align 4
  store i32* %arg, i32** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %arg.addr, metadata !5393, metadata !DIExpression()), !dbg !5394
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5395, metadata !DIExpression()), !dbg !5396
  %0 = load i32*, i32** %arg.addr, align 8, !dbg !5397
  %1 = load i32, i32* %0, align 4, !dbg !5399
  %2 = load i32, i32* %val.addr, align 4, !dbg !5400
  %cmp = icmp ult i32 %1, %2, !dbg !5401
  br i1 %cmp, label %if.then, label %if.end, !dbg !5402

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %val.addr, align 4, !dbg !5403
  %4 = load i32*, i32** %arg.addr, align 8, !dbg !5405
  store i32 %3, i32* %4, align 4, !dbg !5406
  store i32 -22, i32* %retval, align 4, !dbg !5407
  br label %return, !dbg !5407

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5408
  br label %return, !dbg !5408

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !5409
  ret i32 %5, !dbg !5409
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #2 !dbg !5410 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !5414, metadata !DIExpression()), !dbg !5415
  %call = call i64 @arch_local_save_flags() #10, !dbg !5416
  store i64 %call, i64* %f, align 8, !dbg !5417
  call void @arch_local_irq_disable() #10, !dbg !5418
  %0 = load i64, i64* %f, align 8, !dbg !5419
  ret i64 %0, !dbg !5420
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #2 !dbg !5421 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !5422, metadata !DIExpression()), !dbg !5424
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5425, metadata !DIExpression()), !dbg !5424
  %0 = load i64, i64* %__edi, align 8, !dbg !5424
  store i64 %0, i64* %__edi, align 8, !dbg !5424
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5426, metadata !DIExpression()), !dbg !5424
  %1 = load i64, i64* %__esi, align 8, !dbg !5424
  store i64 %1, i64* %__esi, align 8, !dbg !5424
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5427, metadata !DIExpression()), !dbg !5424
  %2 = load i64, i64* %__edx, align 8, !dbg !5424
  store i64 %2, i64* %__edx, align 8, !dbg !5424
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5428, metadata !DIExpression()), !dbg !5424
  %3 = load i64, i64* %__ecx, align 8, !dbg !5424
  store i64 %3, i64* %__ecx, align 8, !dbg !5424
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5429, metadata !DIExpression()), !dbg !5424
  %4 = load i64, i64* %__eax, align 8, !dbg !5424
  store i64 %4, i64* %__eax, align 8, !dbg !5424
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !5424
  %6 = call i64 @llvm.read_register.i64(metadata !4283), !dbg !5430
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #9, !dbg !5430, !srcloc !5433
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5430
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5430
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5430
  call void @llvm.write_register.i64(metadata !4283, i64 %asmresult1), !dbg !5430
  %8 = load i64, i64* %__eax, align 8, !dbg !5430
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !5434, metadata !DIExpression()), !dbg !5436
  store i64 -1, i64* %__mask, align 8, !dbg !5436
  %9 = load i64, i64* %__mask, align 8, !dbg !5436
  store i64 %9, i64* %tmp, align 8, !dbg !5436
  %10 = load i64, i64* %tmp, align 8, !dbg !5436
  %and = and i64 %8, %10, !dbg !5430
  store i64 %and, i64* %__ret, align 8, !dbg !5430
  %11 = load i64, i64* %__ret, align 8, !dbg !5424
  store i64 %11, i64* %tmp2, align 8, !dbg !5437
  %12 = load i64, i64* %tmp2, align 8, !dbg !5424
  ret i64 %12, !dbg !5438
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #2 !dbg !5439 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5440, metadata !DIExpression()), !dbg !5442
  %0 = load i64, i64* %__edi, align 8, !dbg !5442
  store i64 %0, i64* %__edi, align 8, !dbg !5442
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5443, metadata !DIExpression()), !dbg !5442
  %1 = load i64, i64* %__esi, align 8, !dbg !5442
  store i64 %1, i64* %__esi, align 8, !dbg !5442
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5444, metadata !DIExpression()), !dbg !5442
  %2 = load i64, i64* %__edx, align 8, !dbg !5442
  store i64 %2, i64* %__edx, align 8, !dbg !5442
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5445, metadata !DIExpression()), !dbg !5442
  %3 = load i64, i64* %__ecx, align 8, !dbg !5442
  store i64 %3, i64* %__ecx, align 8, !dbg !5442
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5446, metadata !DIExpression()), !dbg !5442
  %4 = load i64, i64* %__eax, align 8, !dbg !5442
  store i64 %4, i64* %__eax, align 8, !dbg !5442
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !5442
  %6 = call i64 @llvm.read_register.i64(metadata !4283), !dbg !5442
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #9, !dbg !5442, !srcloc !5447
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5442
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5442
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5442
  call void @llvm.write_register.i64(metadata !4283, i64 %asmresult1), !dbg !5442
  ret void, !dbg !5448
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #8

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #9

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #2 !dbg !5449 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !5452, metadata !DIExpression()), !dbg !5453
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5454, metadata !DIExpression()), !dbg !5456
  %0 = load i64, i64* %__edi, align 8, !dbg !5456
  store i64 %0, i64* %__edi, align 8, !dbg !5456
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5457, metadata !DIExpression()), !dbg !5456
  %1 = load i64, i64* %__esi, align 8, !dbg !5456
  store i64 %1, i64* %__esi, align 8, !dbg !5456
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5458, metadata !DIExpression()), !dbg !5456
  %2 = load i64, i64* %__edx, align 8, !dbg !5456
  store i64 %2, i64* %__edx, align 8, !dbg !5456
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5459, metadata !DIExpression()), !dbg !5456
  %3 = load i64, i64* %__ecx, align 8, !dbg !5456
  store i64 %3, i64* %__ecx, align 8, !dbg !5456
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5460, metadata !DIExpression()), !dbg !5456
  %4 = load i64, i64* %__eax, align 8, !dbg !5456
  store i64 %4, i64* %__eax, align 8, !dbg !5456
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !5456
  %6 = call i64 @llvm.read_register.i64(metadata !4283), !dbg !5456
  %7 = load i64, i64* %f.addr, align 8, !dbg !5456
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #9, !dbg !5456, !srcloc !5461
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !5456
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !5456
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5456
  call void @llvm.write_register.i64(metadata !4283, i64 %asmresult1), !dbg !5456
  ret void, !dbg !5462
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @apci2032_int_stop(%struct.comedi_device* %dev, %struct.comedi_subdevice* %s) #2 !dbg !5463 {
entry:
  %dev.addr = alloca %struct.comedi_device*, align 8
  %s.addr = alloca %struct.comedi_subdevice*, align 8
  %subpriv = alloca %struct.apci2032_int_private*, align 8
  store %struct.comedi_device* %dev, %struct.comedi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_device** %dev.addr, metadata !5466, metadata !DIExpression()), !dbg !5467
  store %struct.comedi_subdevice* %s, %struct.comedi_subdevice** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.comedi_subdevice** %s.addr, metadata !5468, metadata !DIExpression()), !dbg !5469
  call void @llvm.dbg.declare(metadata %struct.apci2032_int_private** %subpriv, metadata !5470, metadata !DIExpression()), !dbg !5471
  %0 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %s.addr, align 8, !dbg !5472
  %private = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %0, i32 0, i32 6, !dbg !5473
  %1 = load i8*, i8** %private, align 8, !dbg !5473
  %2 = bitcast i8* %1 to %struct.apci2032_int_private*, !dbg !5472
  store %struct.apci2032_int_private* %2, %struct.apci2032_int_private** %subpriv, align 8, !dbg !5471
  %3 = load %struct.apci2032_int_private*, %struct.apci2032_int_private** %subpriv, align 8, !dbg !5474
  %active = getelementptr inbounds %struct.apci2032_int_private, %struct.apci2032_int_private* %3, i32 0, i32 1, !dbg !5475
  store i8 0, i8* %active, align 1, !dbg !5476
  %4 = load %struct.apci2032_int_private*, %struct.apci2032_int_private** %subpriv, align 8, !dbg !5477
  %enabled_isns = getelementptr inbounds %struct.apci2032_int_private, %struct.apci2032_int_private* %4, i32 0, i32 2, !dbg !5478
  store i8 0, i8* %enabled_isns, align 1, !dbg !5479
  %5 = load %struct.comedi_device*, %struct.comedi_device** %dev.addr, align 8, !dbg !5480
  %iobase = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 18, !dbg !5481
  %6 = load i64, i64* %iobase, align 8, !dbg !5481
  %add = add i64 %6, 4, !dbg !5482
  %conv = trunc i64 %add to i32, !dbg !5480
  call void @outl(i32 0, i32 %conv) #10, !dbg !5483
  ret void, !dbg !5484
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apci2032_pci_probe(%struct.pci_dev* %dev, %struct.pci_device_id* %id) #2 !dbg !5485 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %id.addr = alloca %struct.pci_device_id*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5486, metadata !DIExpression()), !dbg !5487
  store %struct.pci_device_id* %id, %struct.pci_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_device_id** %id.addr, metadata !5488, metadata !DIExpression()), !dbg !5489
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5490
  %1 = load %struct.pci_device_id*, %struct.pci_device_id** %id.addr, align 8, !dbg !5491
  %driver_data = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %1, i32 0, i32 6, !dbg !5492
  %2 = load i64, i64* %driver_data, align 8, !dbg !5492
  %call = call i32 @comedi_pci_auto_config(%struct.pci_dev* %0, %struct.comedi_driver* @apci2032_driver, i64 %2) #10, !dbg !5493
  ret i32 %call, !dbg !5494
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
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { noredzone }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4283}
!llvm.module.flags = !{!4284, !4285, !4286, !4287}
!llvm.ident = !{!4288}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_apci2032_driver_init234", scope: !2, file: !3, line: 326, type: !148, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !145, globals: !150, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/staging/comedi/drivers/addi_apci_2032.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !100, !116, !122, !133, !140}
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
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !134, line: 305, baseType: !7, size: 32, elements: !135)
!134 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!135 = !{!136, !137, !138, !139}
!136 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!137 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!138 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!139 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !141, line: 10, baseType: !7, size: 32, elements: !142)
!141 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!142 = !{!143, !144}
!143 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!144 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!145 = !{!146, !148, !149}
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !147, line: 148, baseType: !7)
!147 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!149 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!150 = !{!0, !151, !158, !165, !170, !175, !180, !3999, !4280}
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "__exitcall_apci2032_driver_exit", scope: !2, file: !3, line: 326, type: !153, isLocal: true, isDefinition: true)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !154, line: 117, baseType: !155)
!154 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{null}
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author235", scope: !2, file: !3, line: 328, type: !160, isLocal: true, isDefinition: true, align: 8)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 416, elements: !163)
!161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!162 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!163 = !{!164}
!164 = !DISubrange(count: 52)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description236", scope: !2, file: !3, line: 329, type: !167, isLocal: true, isDefinition: true, align: 8)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 552, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 69)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file237", scope: !2, file: !3, line: 330, type: !172, isLocal: true, isDefinition: true, align: 8)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 528, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 66)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license238", scope: !2, file: !3, line: 330, type: !177, isLocal: true, isDefinition: true, align: 8)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 216, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 27)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(name: "apci2032_driver", scope: !2, file: !3, line: 301, type: !182, isLocal: true, isDefinition: true)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_driver", file: !123, line: 437, size: 576, elements: !183)
!183 = !{!184, !186, !188, !192, !3989, !3990, !3994, !3995, !3998}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !182, file: !123, line: 439, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !182, file: !123, line: 441, baseType: !187, size: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !182, file: !123, line: 442, baseType: !189, size: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !191, line: 76, flags: DIFlagFwdDecl)
!191 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!192 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !182, file: !123, line: 443, baseType: !193, size: 64, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DISubroutineType(types: !195)
!195 = !{!196, !197, !3982}
!196 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_device", file: !123, line: 541, size: 1920, elements: !199)
!199 = !{!200, !201, !202, !205, !206, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3825, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3970, !3974, !3978}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !198, file: !123, line: 542, baseType: !196, size: 32)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !198, file: !123, line: 543, baseType: !185, size: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "pacer", scope: !198, file: !123, line: 544, baseType: !203, size: 64, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_8254", file: !123, line: 544, flags: DIFlagFwdDecl)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !198, file: !123, line: 545, baseType: !148, size: 64, offset: 192)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !198, file: !123, line: 547, baseType: !207, size: 64, offset: 256)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !209)
!209 = !{!210, !3367, !3368, !3371, !3372, !3423, !3514, !3515, !3516, !3517, !3518, !3527, !3632, !3645, !3648, !3649, !3653, !3655, !3656, !3657, !3661, !3667, !3668, !3671, !3675, !3765, !3766, !3767, !3768, !3769, !3801, !3802, !3803, !3806, !3809, !3810, !3811, !3812}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !208, file: !73, line: 462, baseType: !211, size: 512)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !212, line: 64, size: 512, elements: !213)
!212 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!213 = !{!214, !215, !221, !223, !283, !3218, !3357, !3362, !3363, !3364, !3365, !3366}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !211, file: !212, line: 65, baseType: !187, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !211, file: !212, line: 66, baseType: !216, size: 128, offset: 64)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !147, line: 178, size: 128, elements: !217)
!217 = !{!218, !220}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !216, file: !147, line: 179, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !216, file: !147, line: 179, baseType: !219, size: 64, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !211, file: !212, line: 67, baseType: !222, size: 64, offset: 192)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !211, file: !212, line: 68, baseType: !224, size: 64, offset: 256)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !212, line: 192, size: 704, elements: !226)
!226 = !{!227, !228, !244, !245}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !225, file: !212, line: 193, baseType: !216, size: 128)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !225, file: !212, line: 194, baseType: !229, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !230, line: 83, baseType: !231)
!230 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !230, line: 71, elements: !232)
!232 = !{!233}
!233 = !DIDerivedType(tag: DW_TAG_member, scope: !231, file: !230, line: 72, baseType: !234)
!234 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !231, file: !230, line: 72, elements: !235)
!235 = !{!236}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !234, file: !230, line: 73, baseType: !237)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !230, line: 20, elements: !238)
!238 = !{!239}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !237, file: !230, line: 21, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !241, line: 25, baseType: !242)
!241 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !241, line: 25, elements: !243)
!243 = !{}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !225, file: !212, line: 195, baseType: !211, size: 512, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !225, file: !212, line: 196, baseType: !246, size: 64, offset: 640)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !248)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !212, line: 156, size: 192, elements: !249)
!249 = !{!250, !255, !260}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !248, file: !212, line: 157, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !252)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{!196, !224, !222}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !248, file: !212, line: 158, baseType: !256, size: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{!187, !224, !222}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !248, file: !212, line: 159, baseType: !261, size: 64, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!196, !224, !222, !265}
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !212, line: 148, size: 20736, elements: !267)
!267 = !{!268, !273, !277, !278, !282}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !266, file: !212, line: 149, baseType: !269, size: 192)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 192, elements: !271)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!271 = !{!272}
!272 = !DISubrange(count: 3)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !266, file: !212, line: 150, baseType: !274, size: 4096, offset: 192)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 4096, elements: !275)
!275 = !{!276}
!276 = !DISubrange(count: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !266, file: !212, line: 151, baseType: !196, size: 32, offset: 4288)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !266, file: !212, line: 152, baseType: !279, size: 16384, offset: 4320)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 16384, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 2048)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !266, file: !212, line: 153, baseType: !196, size: 32, offset: 20704)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !211, file: !212, line: 69, baseType: !284, size: 64, offset: 320)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !212, line: 138, size: 448, elements: !286)
!286 = !{!287, !291, !320, !322, !3180, !3208, !3212}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !285, file: !212, line: 139, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{null, !222}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !285, file: !212, line: 140, baseType: !292, size: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !294)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !295, line: 230, size: 128, elements: !296)
!295 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!296 = !{!297, !313}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !294, file: !295, line: 231, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{!301, !222, !306, !270}
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !147, line: 60, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !303, line: 73, baseType: !304)
!303 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !303, line: 15, baseType: !305)
!305 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !295, line: 30, size: 128, elements: !308)
!308 = !{!309, !310}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !307, file: !295, line: 31, baseType: !187, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !307, file: !295, line: 32, baseType: !311, size: 16, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !147, line: 19, baseType: !312)
!312 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !294, file: !295, line: 232, baseType: !314, size: 64, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{!301, !222, !306, !187, !317}
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !147, line: 55, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !303, line: 72, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !303, line: 16, baseType: !149)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !285, file: !212, line: 141, baseType: !321, size: 64, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !285, file: !212, line: 142, baseType: !323, size: 64, offset: 192)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !326)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !295, line: 84, size: 320, elements: !327)
!327 = !{!328, !329, !333, !3177, !3178}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !326, file: !295, line: 85, baseType: !187, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !326, file: !295, line: 86, baseType: !330, size: 64, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{!311, !222, !306, !196}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !326, file: !295, line: 88, baseType: !334, size: 64, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{!311, !222, !337, !196}
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !295, line: 168, size: 448, elements: !339)
!339 = !{!340, !341, !342, !343, !3172, !3173}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !338, file: !295, line: 169, baseType: !307, size: 128)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !338, file: !295, line: 170, baseType: !317, size: 64, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !338, file: !295, line: 171, baseType: !148, size: 64, offset: 192)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !338, file: !295, line: 172, baseType: !344, size: 64, offset: 256)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{!301, !347, !222, !337, !270, !526, !317}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !349)
!349 = !{!350, !368, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3155, !3156, !3165, !3166, !3167, !3168, !3169, !3170, !3171}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !348, file: !44, line: 920, baseType: !351, size: 128)
!351 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !348, file: !44, line: 917, size: 128, elements: !352)
!352 = !{!353, !359}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !351, file: !44, line: 918, baseType: !354, size: 64)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !355, line: 58, size: 64, elements: !356)
!355 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!356 = !{!357}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !354, file: !355, line: 59, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !351, file: !44, line: 919, baseType: !360, size: 128, align: 64)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !147, line: 216, size: 128, align: 64, elements: !361)
!361 = !{!362, !364}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !360, file: !147, line: 217, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !360, file: !147, line: 218, baseType: !365, size: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{null, !363}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !348, file: !44, line: 921, baseType: !369, size: 128, offset: 128)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !370, line: 8, size: 128, elements: !371)
!370 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!371 = !{!372, !376}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !369, file: !370, line: 9, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !375, line: 18, flags: DIFlagFwdDecl)
!375 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!376 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !369, file: !370, line: 10, baseType: !377, size: 64, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !375, line: 89, size: 1536, elements: !379)
!379 = !{!380, !381, !391, !399, !400, !423, !3105, !3107, !3119, !3120, !3121, !3122, !3123, !3129, !3130, !3131}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !378, file: !375, line: 91, baseType: !7, size: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !378, file: !375, line: 92, baseType: !382, size: 32, offset: 32)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !383, line: 277, baseType: !384)
!383 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !383, line: 277, size: 32, elements: !385)
!385 = !{!386}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !384, file: !383, line: 277, baseType: !387, size: 32)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !383, line: 70, baseType: !388)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !383, line: 65, size: 32, elements: !389)
!389 = !{!390}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !388, file: !383, line: 66, baseType: !7, size: 32)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !378, file: !375, line: 93, baseType: !392, size: 128, offset: 64)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !393, line: 38, size: 128, elements: !394)
!393 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!394 = !{!395, !397}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !392, file: !393, line: 39, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !392, file: !393, line: 39, baseType: !398, size: 64, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !378, file: !375, line: 94, baseType: !377, size: 64, offset: 192)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !378, file: !375, line: 95, baseType: !401, size: 128, offset: 256)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !375, line: 47, size: 128, elements: !402)
!402 = !{!403, !419}
!403 = !DIDerivedType(tag: DW_TAG_member, scope: !401, file: !375, line: 48, baseType: !404, size: 64)
!404 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !401, file: !375, line: 48, size: 64, elements: !405)
!405 = !{!406, !415}
!406 = !DIDerivedType(tag: DW_TAG_member, scope: !404, file: !375, line: 49, baseType: !407, size: 64)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !404, file: !375, line: 49, size: 64, elements: !408)
!408 = !{!409, !414}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !407, file: !375, line: 50, baseType: !410, size: 32)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !411, line: 21, baseType: !412)
!411 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !413, line: 27, baseType: !7)
!413 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!414 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !407, file: !375, line: 50, baseType: !410, size: 32, offset: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !404, file: !375, line: 52, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !411, line: 23, baseType: !417)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !413, line: 31, baseType: !418)
!418 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !401, file: !375, line: 54, baseType: !420, size: 64, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!422 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !378, file: !375, line: 96, baseType: !424, size: 64, offset: 384)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !426)
!426 = !{!427, !428, !429, !437, !444, !445, !593, !2816, !2817, !2818, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !3081, !3089, !3090, !3091, !3101, !3102, !3103, !3104}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !425, file: !44, line: 611, baseType: !311, size: 16)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !425, file: !44, line: 612, baseType: !312, size: 16, offset: 16)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !425, file: !44, line: 613, baseType: !430, size: 32, offset: 32)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !431, line: 23, baseType: !432)
!431 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !431, line: 21, size: 32, elements: !433)
!433 = !{!434}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !432, file: !431, line: 22, baseType: !435, size: 32)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !147, line: 32, baseType: !436)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !303, line: 49, baseType: !7)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !425, file: !44, line: 614, baseType: !438, size: 32, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !431, line: 28, baseType: !439)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !431, line: 26, size: 32, elements: !440)
!440 = !{!441}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !439, file: !431, line: 27, baseType: !442, size: 32)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !147, line: 33, baseType: !443)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !303, line: 50, baseType: !7)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !425, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !425, file: !44, line: 622, baseType: !446, size: 64, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !448)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !449)
!449 = !{!450, !454, !467, !471, !477, !481, !487, !491, !495, !499, !503, !504, !510, !514, !540, !569, !573, !579, !584, !588, !589}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !448, file: !44, line: 1865, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!377, !424, !377, !7}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !448, file: !44, line: 1866, baseType: !455, size: 64, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{!187, !377, !424, !458}
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !460, line: 10, size: 128, elements: !461)
!460 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!461 = !{!462, !466}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !459, file: !460, line: 11, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{null, !148}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !459, file: !460, line: 12, baseType: !148, size: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !448, file: !44, line: 1867, baseType: !468, size: 64, offset: 128)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!196, !424, !196}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !448, file: !44, line: 1868, baseType: !472, size: 64, offset: 192)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!475, !424, !196}
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !448, file: !44, line: 1870, baseType: !478, size: 64, offset: 256)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{!196, !377, !270, !196}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !448, file: !44, line: 1872, baseType: !482, size: 64, offset: 320)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!196, !424, !377, !311, !485}
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !147, line: 30, baseType: !486)
!486 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !448, file: !44, line: 1873, baseType: !488, size: 64, offset: 384)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{!196, !377, !424, !377}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !448, file: !44, line: 1874, baseType: !492, size: 64, offset: 448)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{!196, !424, !377}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !448, file: !44, line: 1875, baseType: !496, size: 64, offset: 512)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!196, !424, !377, !187}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !448, file: !44, line: 1876, baseType: !500, size: 64, offset: 576)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!196, !424, !377, !311}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !448, file: !44, line: 1877, baseType: !492, size: 64, offset: 640)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !448, file: !44, line: 1878, baseType: !505, size: 64, offset: 704)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{!196, !424, !377, !311, !508}
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !147, line: 16, baseType: !509)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !147, line: 13, baseType: !410)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !448, file: !44, line: 1879, baseType: !511, size: 64, offset: 768)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{!196, !424, !377, !424, !377, !7}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !448, file: !44, line: 1881, baseType: !515, size: 64, offset: 832)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{!196, !377, !518}
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !520)
!520 = !{!521, !522, !523, !524, !525, !529, !537, !538, !539}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !519, file: !44, line: 220, baseType: !7, size: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !519, file: !44, line: 221, baseType: !311, size: 16, offset: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !519, file: !44, line: 222, baseType: !430, size: 32, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !519, file: !44, line: 223, baseType: !438, size: 32, offset: 96)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !519, file: !44, line: 224, baseType: !526, size: 64, offset: 128)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !147, line: 46, baseType: !527)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !303, line: 88, baseType: !528)
!528 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !519, file: !44, line: 225, baseType: !530, size: 128, offset: 192)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !531, line: 13, size: 128, elements: !532)
!531 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!532 = !{!533, !536}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !530, file: !531, line: 14, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !531, line: 8, baseType: !535)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !413, line: 30, baseType: !528)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !530, file: !531, line: 15, baseType: !305, size: 64, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !519, file: !44, line: 226, baseType: !530, size: 128, offset: 320)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !519, file: !44, line: 227, baseType: !530, size: 128, offset: 448)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !519, file: !44, line: 234, baseType: !347, size: 64, offset: 576)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !448, file: !44, line: 1882, baseType: !541, size: 64, offset: 896)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!196, !544, !546, !410, !7}
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !369)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !548, line: 22, size: 1152, elements: !549)
!548 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!549 = !{!550, !551, !552, !553, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !547, file: !548, line: 23, baseType: !410, size: 32)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !547, file: !548, line: 24, baseType: !311, size: 16, offset: 32)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !547, file: !548, line: 25, baseType: !7, size: 32, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !547, file: !548, line: 26, baseType: !554, size: 32, offset: 96)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !147, line: 104, baseType: !410)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !547, file: !548, line: 27, baseType: !416, size: 64, offset: 128)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !547, file: !548, line: 28, baseType: !416, size: 64, offset: 192)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !547, file: !548, line: 37, baseType: !416, size: 64, offset: 256)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !547, file: !548, line: 38, baseType: !508, size: 32, offset: 320)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !547, file: !548, line: 39, baseType: !508, size: 32, offset: 352)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !547, file: !548, line: 40, baseType: !430, size: 32, offset: 384)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !547, file: !548, line: 41, baseType: !438, size: 32, offset: 416)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !547, file: !548, line: 42, baseType: !526, size: 64, offset: 448)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !547, file: !548, line: 43, baseType: !530, size: 128, offset: 512)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !547, file: !548, line: 44, baseType: !530, size: 128, offset: 640)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !547, file: !548, line: 45, baseType: !530, size: 128, offset: 768)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !547, file: !548, line: 46, baseType: !530, size: 128, offset: 896)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !547, file: !548, line: 47, baseType: !416, size: 64, offset: 1024)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !547, file: !548, line: 48, baseType: !416, size: 64, offset: 1088)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !448, file: !44, line: 1883, baseType: !570, size: 64, offset: 960)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{!301, !377, !270, !317}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !448, file: !44, line: 1884, baseType: !574, size: 64, offset: 1024)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{!196, !424, !577, !416, !416}
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !448, file: !44, line: 1886, baseType: !580, size: 64, offset: 1088)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{!196, !424, !583, !196}
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !448, file: !44, line: 1887, baseType: !585, size: 64, offset: 1152)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{!196, !424, !377, !347, !7, !311}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !448, file: !44, line: 1890, baseType: !500, size: 64, offset: 1216)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !448, file: !44, line: 1891, baseType: !590, size: 64, offset: 1280)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!196, !424, !475, !196}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !425, file: !44, line: 623, baseType: !594, size: 64, offset: 192)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !596)
!596 = !{!597, !598, !599, !600, !601, !602, !649, !2423, !2505, !2588, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2604, !2608, !2609, !2612, !2613, !2616, !2617, !2618, !2659, !2686, !2687, !2688, !2689, !2690, !2691, !2694, !2696, !2703, !2704, !2706, !2707, !2708, !2767, !2768, !2783, !2784, !2785, !2786, !2787, !2790, !2791, !2792, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !595, file: !44, line: 1417, baseType: !216, size: 128)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !595, file: !44, line: 1418, baseType: !508, size: 32, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !595, file: !44, line: 1419, baseType: !422, size: 8, offset: 160)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !595, file: !44, line: 1420, baseType: !149, size: 64, offset: 192)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !595, file: !44, line: 1421, baseType: !526, size: 64, offset: 256)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !595, file: !44, line: 1422, baseType: !603, size: 64, offset: 320)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !605)
!605 = !{!606, !607, !608, !615, !619, !623, !627, !628, !629, !639, !642, !643, !644, !646, !647, !648}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !604, file: !44, line: 2229, baseType: !187, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !604, file: !44, line: 2230, baseType: !196, size: 32, offset: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !604, file: !44, line: 2238, baseType: !609, size: 64, offset: 128)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{!196, !612}
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !614, line: 28, flags: DIFlagFwdDecl)
!614 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!615 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !604, file: !44, line: 2239, baseType: !616, size: 64, offset: 192)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !618)
!618 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !604, file: !44, line: 2240, baseType: !620, size: 64, offset: 256)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!377, !603, !196, !187, !148}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !604, file: !44, line: 2242, baseType: !624, size: 64, offset: 320)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{null, !594}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !604, file: !44, line: 2243, baseType: !189, size: 64, offset: 384)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !604, file: !44, line: 2244, baseType: !603, size: 64, offset: 448)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !604, file: !44, line: 2245, baseType: !630, size: 64, offset: 512)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !147, line: 182, size: 64, elements: !631)
!631 = !{!632}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !630, file: !147, line: 183, baseType: !633, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !147, line: 186, size: 128, elements: !635)
!635 = !{!636, !637}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !634, file: !147, line: 187, baseType: !633, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !634, file: !147, line: 187, baseType: !638, size: 64, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !604, file: !44, line: 2247, baseType: !640, offset: 576)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !641, line: 187, elements: !243)
!641 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!642 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !604, file: !44, line: 2248, baseType: !640, offset: 576)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !604, file: !44, line: 2249, baseType: !640, offset: 576)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !604, file: !44, line: 2250, baseType: !645, offset: 576)
!645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !640, elements: !271)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !604, file: !44, line: 2252, baseType: !640, offset: 576)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !604, file: !44, line: 2253, baseType: !640, offset: 576)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !604, file: !44, line: 2254, baseType: !640, offset: 576)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !595, file: !44, line: 1423, baseType: !650, size: 64, offset: 384)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !652)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !653)
!653 = !{!654, !658, !662, !663, !667, !673, !677, !678, !679, !683, !687, !688, !689, !690, !696, !701, !702, !709, !710, !711, !712, !2407, !2422}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !652, file: !44, line: 1936, baseType: !655, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{!424, !594}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !652, file: !44, line: 1937, baseType: !659, size: 64, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{null, !424}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !652, file: !44, line: 1938, baseType: !659, size: 64, offset: 128)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !652, file: !44, line: 1940, baseType: !664, size: 64, offset: 192)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{null, !424, !196}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !652, file: !44, line: 1941, baseType: !668, size: 64, offset: 256)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DISubroutineType(types: !670)
!670 = !{!196, !424, !671}
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !652, file: !44, line: 1942, baseType: !674, size: 64, offset: 320)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{!196, !424}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !652, file: !44, line: 1943, baseType: !659, size: 64, offset: 384)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !652, file: !44, line: 1944, baseType: !624, size: 64, offset: 448)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !652, file: !44, line: 1945, baseType: !680, size: 64, offset: 512)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{!196, !594, !196}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !652, file: !44, line: 1946, baseType: !684, size: 64, offset: 576)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DISubroutineType(types: !686)
!686 = !{!196, !594}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !652, file: !44, line: 1947, baseType: !684, size: 64, offset: 640)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !652, file: !44, line: 1948, baseType: !684, size: 64, offset: 704)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !652, file: !44, line: 1949, baseType: !684, size: 64, offset: 768)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !652, file: !44, line: 1950, baseType: !691, size: 64, offset: 832)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DISubroutineType(types: !693)
!693 = !{!196, !377, !694}
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !652, file: !44, line: 1951, baseType: !697, size: 64, offset: 896)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DISubroutineType(types: !699)
!699 = !{!196, !594, !700, !270}
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !652, file: !44, line: 1952, baseType: !624, size: 64, offset: 960)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !652, file: !44, line: 1954, baseType: !703, size: 64, offset: 1024)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DISubroutineType(types: !705)
!705 = !{!196, !706, !377}
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !708, line: 539, flags: DIFlagFwdDecl)
!708 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!709 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !652, file: !44, line: 1955, baseType: !703, size: 64, offset: 1088)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !652, file: !44, line: 1956, baseType: !703, size: 64, offset: 1152)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !652, file: !44, line: 1957, baseType: !703, size: 64, offset: 1216)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !652, file: !44, line: 1963, baseType: !713, size: 64, offset: 1280)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{!196, !594, !716, !146}
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !718, line: 68, size: 512, align: 128, elements: !719)
!718 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!719 = !{!720, !721, !2399, !2406}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !717, file: !718, line: 69, baseType: !149, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, scope: !717, file: !718, line: 77, baseType: !722, size: 320, offset: 64)
!722 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !717, file: !718, line: 77, size: 320, elements: !723)
!723 = !{!724, !911, !916, !944, !952, !958, !2330, !2398}
!724 = !DIDerivedType(tag: DW_TAG_member, scope: !722, file: !718, line: 78, baseType: !725, size: 320)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !722, file: !718, line: 78, size: 320, elements: !726)
!726 = !{!727, !728, !909, !910}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !725, file: !718, line: 84, baseType: !216, size: 128)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !725, file: !718, line: 86, baseType: !729, size: 64, offset: 128)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !731)
!731 = !{!732, !733, !740, !741, !746, !761, !777, !778, !779, !780, !902, !903, !906, !907, !908}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !730, file: !44, line: 452, baseType: !424, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !730, file: !44, line: 453, baseType: !734, size: 128, offset: 64)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !735, line: 292, size: 128, elements: !736)
!735 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!736 = !{!737, !738, !739}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !734, file: !735, line: 293, baseType: !229)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !734, file: !735, line: 295, baseType: !146, size: 32)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !734, file: !735, line: 296, baseType: !148, size: 64, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !730, file: !44, line: 454, baseType: !146, size: 32, offset: 192)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !730, file: !44, line: 455, baseType: !742, size: 32, offset: 224)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !147, line: 168, baseType: !743)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !147, line: 166, size: 32, elements: !744)
!744 = !{!745}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !743, file: !147, line: 167, baseType: !196, size: 32)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !730, file: !44, line: 460, baseType: !747, size: 128, offset: 256)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !748, line: 125, size: 128, elements: !749)
!748 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!749 = !{!750, !760}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !747, file: !748, line: 126, baseType: !751, size: 64)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !748, line: 31, size: 64, elements: !752)
!752 = !{!753}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !751, file: !748, line: 32, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !748, line: 24, size: 192, align: 64, elements: !756)
!756 = !{!757, !758, !759}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !755, file: !748, line: 25, baseType: !149, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !755, file: !748, line: 26, baseType: !754, size: 64, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !755, file: !748, line: 27, baseType: !754, size: 64, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !747, file: !748, line: 127, baseType: !754, size: 64, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !730, file: !44, line: 461, baseType: !762, size: 256, offset: 384)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !763, line: 35, size: 256, elements: !764)
!763 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!764 = !{!765, !773, !774, !776}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !762, file: !763, line: 36, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !767, line: 13, baseType: !768)
!767 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !147, line: 175, baseType: !769)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !147, line: 173, size: 64, elements: !770)
!770 = !{!771}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !769, file: !147, line: 174, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !411, line: 22, baseType: !535)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !762, file: !763, line: 42, baseType: !766, size: 64, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !762, file: !763, line: 46, baseType: !775, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !230, line: 29, baseType: !237)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !762, file: !763, line: 47, baseType: !216, size: 128, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !730, file: !44, line: 462, baseType: !149, size: 64, offset: 640)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !730, file: !44, line: 463, baseType: !149, size: 64, offset: 704)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !730, file: !44, line: 464, baseType: !149, size: 64, offset: 768)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !730, file: !44, line: 465, baseType: !781, size: 64, offset: 832)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !783)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !784)
!784 = !{!785, !789, !793, !797, !801, !805, !811, !817, !821, !826, !830, !834, !838, !866, !870, !876, !877, !878, !882, !887, !891, !898}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !783, file: !44, line: 368, baseType: !786, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!196, !716, !671}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !783, file: !44, line: 369, baseType: !790, size: 64, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{!196, !347, !716}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !783, file: !44, line: 372, baseType: !794, size: 64, offset: 128)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DISubroutineType(types: !796)
!796 = !{!196, !729, !671}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !783, file: !44, line: 375, baseType: !798, size: 64, offset: 192)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{!196, !716}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !783, file: !44, line: 381, baseType: !802, size: 64, offset: 256)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{!196, !347, !729, !219, !7}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !783, file: !44, line: 383, baseType: !806, size: 64, offset: 320)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{null, !809}
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !783, file: !44, line: 385, baseType: !812, size: 64, offset: 384)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{!196, !347, !729, !526, !7, !7, !815, !816}
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !783, file: !44, line: 388, baseType: !818, size: 64, offset: 448)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DISubroutineType(types: !820)
!820 = !{!196, !347, !729, !526, !7, !7, !716, !148}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !783, file: !44, line: 393, baseType: !822, size: 64, offset: 512)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{!825, !729, !825}
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !147, line: 125, baseType: !416)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !783, file: !44, line: 394, baseType: !827, size: 64, offset: 576)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DISubroutineType(types: !829)
!829 = !{null, !716, !7, !7}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !783, file: !44, line: 395, baseType: !831, size: 64, offset: 640)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{!196, !716, !146}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !783, file: !44, line: 396, baseType: !835, size: 64, offset: 704)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DISubroutineType(types: !837)
!837 = !{null, !716}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !783, file: !44, line: 397, baseType: !839, size: 64, offset: 768)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!301, !842, !864}
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !844)
!844 = !{!845, !846, !847, !851, !852, !853, !856, !857}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !843, file: !44, line: 321, baseType: !347, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !843, file: !44, line: 326, baseType: !526, size: 64, offset: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !843, file: !44, line: 327, baseType: !848, size: 64, offset: 128)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{null, !842, !305, !305}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !843, file: !44, line: 328, baseType: !148, size: 64, offset: 192)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !843, file: !44, line: 329, baseType: !196, size: 32, offset: 256)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !843, file: !44, line: 330, baseType: !854, size: 16, offset: 288)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !411, line: 19, baseType: !855)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !413, line: 24, baseType: !312)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !843, file: !44, line: 331, baseType: !854, size: 16, offset: 304)
!857 = !DIDerivedType(tag: DW_TAG_member, scope: !843, file: !44, line: 332, baseType: !858, size: 64, offset: 320)
!858 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !843, file: !44, line: 332, size: 64, elements: !859)
!859 = !{!860, !861}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !858, file: !44, line: 333, baseType: !7, size: 32)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !858, file: !44, line: 334, baseType: !862, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !783, file: !44, line: 402, baseType: !867, size: 64, offset: 832)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DISubroutineType(types: !869)
!869 = !{!196, !729, !716, !716, !5}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !783, file: !44, line: 404, baseType: !871, size: 64, offset: 896)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DISubroutineType(types: !873)
!873 = !{!485, !716, !874}
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !875, line: 305, baseType: !7)
!875 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!876 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !783, file: !44, line: 405, baseType: !835, size: 64, offset: 960)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !783, file: !44, line: 406, baseType: !798, size: 64, offset: 1024)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !783, file: !44, line: 407, baseType: !879, size: 64, offset: 1088)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DISubroutineType(types: !881)
!881 = !{!196, !716, !149, !149}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !783, file: !44, line: 409, baseType: !883, size: 64, offset: 1152)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DISubroutineType(types: !885)
!885 = !{null, !716, !886, !886}
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !783, file: !44, line: 410, baseType: !888, size: 64, offset: 1216)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DISubroutineType(types: !890)
!890 = !{!196, !729, !716}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !783, file: !44, line: 413, baseType: !892, size: 64, offset: 1280)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DISubroutineType(types: !894)
!894 = !{!196, !895, !347, !897}
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !783, file: !44, line: 415, baseType: !899, size: 64, offset: 1344)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DISubroutineType(types: !901)
!901 = !{null, !347}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !730, file: !44, line: 466, baseType: !149, size: 64, offset: 896)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !730, file: !44, line: 467, baseType: !904, size: 32, offset: 960)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !905, line: 8, baseType: !410)
!905 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!906 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !730, file: !44, line: 468, baseType: !229, offset: 992)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !730, file: !44, line: 469, baseType: !216, size: 128, offset: 1024)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !730, file: !44, line: 470, baseType: !148, size: 64, offset: 1152)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !725, file: !718, line: 87, baseType: !149, size: 64, offset: 192)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !725, file: !718, line: 94, baseType: !149, size: 64, offset: 256)
!911 = !DIDerivedType(tag: DW_TAG_member, scope: !722, file: !718, line: 96, baseType: !912, size: 64)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !722, file: !718, line: 96, size: 64, elements: !913)
!913 = !{!914}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !912, file: !718, line: 101, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !147, line: 143, baseType: !416)
!916 = !DIDerivedType(tag: DW_TAG_member, scope: !722, file: !718, line: 103, baseType: !917, size: 320)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !722, file: !718, line: 103, size: 320, elements: !918)
!918 = !{!919, !929, !932, !933}
!919 = !DIDerivedType(tag: DW_TAG_member, scope: !917, file: !718, line: 104, baseType: !920, size: 128)
!920 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !917, file: !718, line: 104, size: 128, elements: !921)
!921 = !{!922, !923}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !920, file: !718, line: 105, baseType: !216, size: 128)
!923 = !DIDerivedType(tag: DW_TAG_member, scope: !920, file: !718, line: 106, baseType: !924, size: 128)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !920, file: !718, line: 106, size: 128, elements: !925)
!925 = !{!926, !927, !928}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !924, file: !718, line: 107, baseType: !716, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !924, file: !718, line: 109, baseType: !196, size: 32, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !924, file: !718, line: 110, baseType: !196, size: 32, offset: 96)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !917, file: !718, line: 117, baseType: !930, size: 64, offset: 128)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !718, line: 117, flags: DIFlagFwdDecl)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !917, file: !718, line: 119, baseType: !148, size: 64, offset: 192)
!933 = !DIDerivedType(tag: DW_TAG_member, scope: !917, file: !718, line: 120, baseType: !934, size: 64, offset: 256)
!934 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !917, file: !718, line: 120, size: 64, elements: !935)
!935 = !{!936, !937, !938}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !934, file: !718, line: 121, baseType: !148, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !934, file: !718, line: 122, baseType: !149, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, scope: !934, file: !718, line: 123, baseType: !939, size: 32)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !934, file: !718, line: 123, size: 32, elements: !940)
!940 = !{!941, !942, !943}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !939, file: !718, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !939, file: !718, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !939, file: !718, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!944 = !DIDerivedType(tag: DW_TAG_member, scope: !722, file: !718, line: 130, baseType: !945, size: 192)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !722, file: !718, line: 130, size: 192, elements: !946)
!946 = !{!947, !948, !949, !950, !951}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !945, file: !718, line: 131, baseType: !149, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !945, file: !718, line: 134, baseType: !422, size: 8, offset: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !945, file: !718, line: 135, baseType: !422, size: 8, offset: 72)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !945, file: !718, line: 136, baseType: !742, size: 32, offset: 96)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !945, file: !718, line: 137, baseType: !7, size: 32, offset: 128)
!952 = !DIDerivedType(tag: DW_TAG_member, scope: !722, file: !718, line: 139, baseType: !953, size: 256)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !722, file: !718, line: 139, size: 256, elements: !954)
!954 = !{!955, !956, !957}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !953, file: !718, line: 140, baseType: !149, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !953, file: !718, line: 141, baseType: !742, size: 32, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !953, file: !718, line: 143, baseType: !216, size: 128, offset: 128)
!958 = !DIDerivedType(tag: DW_TAG_member, scope: !722, file: !718, line: 145, baseType: !959, size: 256)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !722, file: !718, line: 145, size: 256, elements: !960)
!960 = !{!961, !962, !964, !965, !2329}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !959, file: !718, line: 146, baseType: !149, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !959, file: !718, line: 147, baseType: !963, size: 64, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !708, line: 509, baseType: !716)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !959, file: !718, line: 148, baseType: !149, size: 64, offset: 128)
!965 = !DIDerivedType(tag: DW_TAG_member, scope: !959, file: !718, line: 149, baseType: !966, size: 64, offset: 192)
!966 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !959, file: !718, line: 149, size: 64, elements: !967)
!967 = !{!968, !2328}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !966, file: !718, line: 150, baseType: !969, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !718, line: 388, size: 7296, elements: !971)
!971 = !{!972, !2324}
!972 = !DIDerivedType(tag: DW_TAG_member, scope: !970, file: !718, line: 389, baseType: !973, size: 7296)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !970, file: !718, line: 389, size: 7296, elements: !974)
!974 = !{!975, !1093, !1094, !1095, !1099, !1100, !1101, !1102, !1103, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1144, !1152, !1155, !1201, !1202, !2308, !2309, !2312, !2313, !2314, !2317, !2318, !2319, !2322, !2323}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !973, file: !718, line: 390, baseType: !976, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !718, line: 305, size: 1472, elements: !978)
!978 = !{!979, !980, !981, !982, !983, !984, !985, !986, !993, !994, !999, !1000, !1003, !1087, !1088, !1089, !1090, !1091}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !977, file: !718, line: 308, baseType: !149, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !977, file: !718, line: 309, baseType: !149, size: 64, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !977, file: !718, line: 313, baseType: !976, size: 64, offset: 128)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !977, file: !718, line: 313, baseType: !976, size: 64, offset: 192)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !977, file: !718, line: 315, baseType: !755, size: 192, align: 64, offset: 256)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !977, file: !718, line: 323, baseType: !149, size: 64, offset: 448)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !977, file: !718, line: 327, baseType: !969, size: 64, offset: 512)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !977, file: !718, line: 333, baseType: !987, size: 64, offset: 576)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !708, line: 284, baseType: !988)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !708, line: 284, size: 64, elements: !989)
!989 = !{!990}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !988, file: !708, line: 284, baseType: !991, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !992, line: 19, baseType: !149)
!992 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!993 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !977, file: !718, line: 334, baseType: !149, size: 64, offset: 640)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !977, file: !718, line: 343, baseType: !995, size: 256, offset: 704)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !977, file: !718, line: 340, size: 256, elements: !996)
!996 = !{!997, !998}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !995, file: !718, line: 341, baseType: !755, size: 192, align: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !995, file: !718, line: 342, baseType: !149, size: 64, offset: 192)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !977, file: !718, line: 351, baseType: !216, size: 128, offset: 960)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !977, file: !718, line: 353, baseType: !1001, size: 64, offset: 1088)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !718, line: 353, flags: DIFlagFwdDecl)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !977, file: !718, line: 356, baseType: !1004, size: 64, offset: 1152)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1006)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1007)
!1007 = !{!1008, !1012, !1013, !1017, !1021, !1061, !1065, !1069, !1073, !1074, !1075, !1079, !1083}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1006, file: !14, line: 558, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{null, !976}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1006, file: !14, line: 559, baseType: !1009, size: 64, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1006, file: !14, line: 560, baseType: !1014, size: 64, offset: 128)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!196, !976, !149}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1006, file: !14, line: 561, baseType: !1018, size: 64, offset: 192)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!196, !976}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1006, file: !14, line: 562, baseType: !1022, size: 64, offset: 256)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!1025, !1026}
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !718, line: 682, baseType: !7)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1028)
!1028 = !{!1029, !1030, !1031, !1032, !1033, !1034, !1041, !1048, !1054, !1055, !1056, !1058, !1060}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1027, file: !14, line: 509, baseType: !976, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1027, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1027, file: !14, line: 511, baseType: !146, size: 32, offset: 96)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1027, file: !14, line: 512, baseType: !149, size: 64, offset: 128)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1027, file: !14, line: 513, baseType: !149, size: 64, offset: 192)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1027, file: !14, line: 514, baseType: !1035, size: 64, offset: 256)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !708, line: 385, baseType: !1037)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !708, line: 385, size: 64, elements: !1038)
!1038 = !{!1039}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1037, file: !708, line: 385, baseType: !1040, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !992, line: 15, baseType: !149)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1027, file: !14, line: 516, baseType: !1042, size: 64, offset: 320)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !708, line: 359, baseType: !1044)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !708, line: 359, size: 64, elements: !1045)
!1045 = !{!1046}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1044, file: !708, line: 359, baseType: !1047, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !992, line: 16, baseType: !149)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1027, file: !14, line: 519, baseType: !1049, size: 64, offset: 384)
!1049 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !992, line: 21, baseType: !1050)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !992, line: 21, size: 64, elements: !1051)
!1051 = !{!1052}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1050, file: !992, line: 21, baseType: !1053, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !992, line: 14, baseType: !149)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1027, file: !14, line: 521, baseType: !716, size: 64, offset: 448)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1027, file: !14, line: 522, baseType: !716, size: 64, offset: 512)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1027, file: !14, line: 528, baseType: !1057, size: 64, offset: 576)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1027, file: !14, line: 532, baseType: !1059, size: 64, offset: 640)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1027, file: !14, line: 536, baseType: !963, size: 64, offset: 704)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1006, file: !14, line: 563, baseType: !1062, size: 64, offset: 320)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!1025, !1026, !13}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1006, file: !14, line: 565, baseType: !1066, size: 64, offset: 384)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{null, !1026, !149, !149}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1006, file: !14, line: 567, baseType: !1070, size: 64, offset: 448)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!149, !976}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1006, file: !14, line: 571, baseType: !1022, size: 64, offset: 512)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1006, file: !14, line: 574, baseType: !1022, size: 64, offset: 576)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1006, file: !14, line: 579, baseType: !1076, size: 64, offset: 640)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!196, !976, !149, !148, !196, !196}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1006, file: !14, line: 585, baseType: !1080, size: 64, offset: 704)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!187, !976}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1006, file: !14, line: 615, baseType: !1084, size: 64, offset: 768)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!716, !976, !149}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !977, file: !718, line: 359, baseType: !149, size: 64, offset: 1216)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !977, file: !718, line: 361, baseType: !347, size: 64, offset: 1280)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !977, file: !718, line: 362, baseType: !148, size: 64, offset: 1344)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !977, file: !718, line: 365, baseType: !766, size: 64, offset: 1408)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !977, file: !718, line: 373, baseType: !1092, offset: 1472)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !718, line: 296, elements: !243)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !973, file: !718, line: 391, baseType: !751, size: 64, offset: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !973, file: !718, line: 392, baseType: !416, size: 64, offset: 128)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !973, file: !718, line: 394, baseType: !1096, size: 64, offset: 192)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!149, !347, !149, !149, !149, !149}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !973, file: !718, line: 398, baseType: !149, size: 64, offset: 256)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !973, file: !718, line: 399, baseType: !149, size: 64, offset: 320)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !973, file: !718, line: 405, baseType: !149, size: 64, offset: 384)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !973, file: !718, line: 406, baseType: !149, size: 64, offset: 448)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !973, file: !718, line: 407, baseType: !1104, size: 64, offset: 512)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !708, line: 286, baseType: !1106)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !708, line: 286, size: 64, elements: !1107)
!1107 = !{!1108}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1106, file: !708, line: 286, baseType: !1109, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !992, line: 18, baseType: !149)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !973, file: !718, line: 416, baseType: !742, size: 32, offset: 576)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !973, file: !718, line: 428, baseType: !742, size: 32, offset: 608)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !973, file: !718, line: 437, baseType: !742, size: 32, offset: 640)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !973, file: !718, line: 447, baseType: !742, size: 32, offset: 672)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !973, file: !718, line: 450, baseType: !766, size: 64, offset: 704)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !973, file: !718, line: 452, baseType: !196, size: 32, offset: 768)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !973, file: !718, line: 454, baseType: !229, offset: 800)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !973, file: !718, line: 457, baseType: !762, size: 256, offset: 832)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !973, file: !718, line: 459, baseType: !216, size: 128, offset: 1088)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !973, file: !718, line: 466, baseType: !149, size: 64, offset: 1216)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !973, file: !718, line: 467, baseType: !149, size: 64, offset: 1280)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !973, file: !718, line: 469, baseType: !149, size: 64, offset: 1344)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !973, file: !718, line: 470, baseType: !149, size: 64, offset: 1408)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !973, file: !718, line: 471, baseType: !768, size: 64, offset: 1472)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !973, file: !718, line: 472, baseType: !149, size: 64, offset: 1536)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !973, file: !718, line: 473, baseType: !149, size: 64, offset: 1600)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !973, file: !718, line: 474, baseType: !149, size: 64, offset: 1664)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !973, file: !718, line: 475, baseType: !149, size: 64, offset: 1728)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !973, file: !718, line: 477, baseType: !229, offset: 1792)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !973, file: !718, line: 478, baseType: !149, size: 64, offset: 1792)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !973, file: !718, line: 478, baseType: !149, size: 64, offset: 1856)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !973, file: !718, line: 478, baseType: !149, size: 64, offset: 1920)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !973, file: !718, line: 478, baseType: !149, size: 64, offset: 1984)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !973, file: !718, line: 479, baseType: !149, size: 64, offset: 2048)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !973, file: !718, line: 479, baseType: !149, size: 64, offset: 2112)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !973, file: !718, line: 479, baseType: !149, size: 64, offset: 2176)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !973, file: !718, line: 480, baseType: !149, size: 64, offset: 2240)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !973, file: !718, line: 480, baseType: !149, size: 64, offset: 2304)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !973, file: !718, line: 480, baseType: !149, size: 64, offset: 2368)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !973, file: !718, line: 480, baseType: !149, size: 64, offset: 2432)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !973, file: !718, line: 482, baseType: !1141, size: 2816, offset: 2496)
!1141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 2816, elements: !1142)
!1142 = !{!1143}
!1143 = !DISubrange(count: 44)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !973, file: !718, line: 488, baseType: !1145, size: 256, offset: 5312)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1146, line: 60, size: 256, elements: !1147)
!1146 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1147 = !{!1148}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1145, file: !1146, line: 61, baseType: !1149, size: 256)
!1149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !766, size: 256, elements: !1150)
!1150 = !{!1151}
!1151 = !DISubrange(count: 4)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !973, file: !718, line: 490, baseType: !1153, size: 64, offset: 5568)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !718, line: 490, flags: DIFlagFwdDecl)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !973, file: !718, line: 493, baseType: !1156, size: 896, offset: 5632)
!1156 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1157, line: 53, baseType: !1158)
!1157 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1157, line: 13, size: 896, elements: !1159)
!1159 = !{!1160, !1161, !1162, !1163, !1166, !1167, !1174, !1175, !1195, !1196, !1197}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1158, file: !1157, line: 18, baseType: !416, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1158, file: !1157, line: 28, baseType: !768, size: 64, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1158, file: !1157, line: 31, baseType: !762, size: 256, offset: 128)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1158, file: !1157, line: 32, baseType: !1164, size: 64, offset: 384)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1157, line: 32, flags: DIFlagFwdDecl)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1158, file: !1157, line: 37, baseType: !312, size: 16, offset: 448)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1158, file: !1157, line: 40, baseType: !1168, size: 192, offset: 512)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1169, line: 53, size: 192, elements: !1170)
!1169 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1170 = !{!1171, !1172, !1173}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1168, file: !1169, line: 54, baseType: !766, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1168, file: !1169, line: 55, baseType: !229, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1168, file: !1169, line: 59, baseType: !216, size: 128, offset: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1158, file: !1157, line: 41, baseType: !148, size: 64, offset: 704)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1158, file: !1157, line: 42, baseType: !1176, size: 64, offset: 768)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1178)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1179, line: 13, size: 896, elements: !1180)
!1179 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1180 = !{!1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1178, file: !1179, line: 14, baseType: !148, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1178, file: !1179, line: 15, baseType: !149, size: 64, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1178, file: !1179, line: 17, baseType: !149, size: 64, offset: 128)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1178, file: !1179, line: 17, baseType: !149, size: 64, offset: 192)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1178, file: !1179, line: 19, baseType: !305, size: 64, offset: 256)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1178, file: !1179, line: 21, baseType: !305, size: 64, offset: 320)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1178, file: !1179, line: 22, baseType: !305, size: 64, offset: 384)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1178, file: !1179, line: 23, baseType: !305, size: 64, offset: 448)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1178, file: !1179, line: 24, baseType: !305, size: 64, offset: 512)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1178, file: !1179, line: 25, baseType: !305, size: 64, offset: 576)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1178, file: !1179, line: 26, baseType: !305, size: 64, offset: 640)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1178, file: !1179, line: 27, baseType: !305, size: 64, offset: 704)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1178, file: !1179, line: 28, baseType: !305, size: 64, offset: 768)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1178, file: !1179, line: 29, baseType: !305, size: 64, offset: 832)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1158, file: !1157, line: 44, baseType: !742, size: 32, offset: 832)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1158, file: !1157, line: 50, baseType: !854, size: 16, offset: 864)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1158, file: !1157, line: 51, baseType: !1198, size: 16, offset: 880)
!1198 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !411, line: 18, baseType: !1199)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !413, line: 23, baseType: !1200)
!1200 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !973, file: !718, line: 495, baseType: !149, size: 64, offset: 6528)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !973, file: !718, line: 497, baseType: !1203, size: 64, offset: 6592)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !718, line: 381, size: 384, elements: !1205)
!1205 = !{!1206, !1207, !2307}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1204, file: !718, line: 382, baseType: !742, size: 32)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1204, file: !718, line: 383, baseType: !1208, size: 128, offset: 64)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !718, line: 376, size: 128, elements: !1209)
!1209 = !{!1210, !2305}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1208, file: !718, line: 377, baseType: !1211, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1213, line: 640, size: 48640, elements: !1214)
!1213 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1214 = !{!1215, !1221, !1223, !1224, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1241, !1259, !1270, !1355, !1356, !1357, !1368, !1369, !1371, !1372, !1373, !1374, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1453, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1491, !1493, !1494, !1495, !1507, !1508, !1509, !1510, !1511, !1512, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1536, !1541, !1725, !1726, !1727, !1728, !1732, !1735, !1738, !1741, !1744, !1748, !1849, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1893, !1894, !1895, !1896, !1897, !1902, !1903, !1904, !1907, !1908, !1911, !1914, !1917, !1920, !1963, !1966, !1967, !2046, !2047, !2050, !2051, !2054, !2055, !2056, !2060, !2061, !2062, !2075, !2076, !2077, !2087, !2092, !2095, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1212, file: !1213, line: 646, baseType: !1216, size: 128)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1217, line: 56, size: 128, elements: !1218)
!1217 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1218 = !{!1219, !1220}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1216, file: !1217, line: 57, baseType: !149, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1216, file: !1217, line: 58, baseType: !410, size: 32, offset: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1212, file: !1213, line: 649, baseType: !1222, size: 64, offset: 128)
!1222 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !305)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1212, file: !1213, line: 657, baseType: !148, size: 64, offset: 192)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1212, file: !1213, line: 658, baseType: !1225, size: 32, offset: 256)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1226, line: 113, baseType: !1227)
!1226 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1226, line: 111, size: 32, elements: !1228)
!1228 = !{!1229}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1227, file: !1226, line: 112, baseType: !742, size: 32)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1212, file: !1213, line: 660, baseType: !7, size: 32, offset: 288)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1212, file: !1213, line: 661, baseType: !7, size: 32, offset: 320)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1212, file: !1213, line: 684, baseType: !196, size: 32, offset: 352)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1212, file: !1213, line: 686, baseType: !196, size: 32, offset: 384)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1212, file: !1213, line: 687, baseType: !196, size: 32, offset: 416)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1212, file: !1213, line: 688, baseType: !196, size: 32, offset: 448)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1212, file: !1213, line: 689, baseType: !7, size: 32, offset: 480)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1212, file: !1213, line: 691, baseType: !1238, size: 64, offset: 512)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1240)
!1240 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1213, line: 691, flags: DIFlagFwdDecl)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1212, file: !1213, line: 692, baseType: !1242, size: 832, offset: 576)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1213, line: 451, size: 832, elements: !1243)
!1243 = !{!1244, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1242, file: !1213, line: 453, baseType: !1245, size: 128)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1213, line: 325, size: 128, elements: !1246)
!1246 = !{!1247, !1248}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1245, file: !1213, line: 326, baseType: !149, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1245, file: !1213, line: 327, baseType: !410, size: 32, offset: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1242, file: !1213, line: 454, baseType: !755, size: 192, align: 64, offset: 128)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1242, file: !1213, line: 455, baseType: !216, size: 128, offset: 320)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1242, file: !1213, line: 456, baseType: !7, size: 32, offset: 448)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1242, file: !1213, line: 458, baseType: !416, size: 64, offset: 512)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1242, file: !1213, line: 459, baseType: !416, size: 64, offset: 576)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1242, file: !1213, line: 460, baseType: !416, size: 64, offset: 640)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1242, file: !1213, line: 461, baseType: !416, size: 64, offset: 704)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1242, file: !1213, line: 463, baseType: !416, size: 64, offset: 768)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1242, file: !1213, line: 465, baseType: !1258, offset: 832)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1213, line: 415, elements: !243)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1212, file: !1213, line: 693, baseType: !1260, size: 384, offset: 1408)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1213, line: 489, size: 384, elements: !1261)
!1261 = !{!1262, !1263, !1264, !1265, !1266, !1267, !1268}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1260, file: !1213, line: 490, baseType: !216, size: 128)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1260, file: !1213, line: 491, baseType: !149, size: 64, offset: 128)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1260, file: !1213, line: 492, baseType: !149, size: 64, offset: 192)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1260, file: !1213, line: 493, baseType: !7, size: 32, offset: 256)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1260, file: !1213, line: 494, baseType: !312, size: 16, offset: 288)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1260, file: !1213, line: 495, baseType: !312, size: 16, offset: 304)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1260, file: !1213, line: 497, baseType: !1269, size: 64, offset: 320)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1212, file: !1213, line: 697, baseType: !1271, size: 1792, offset: 1792)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1213, line: 507, size: 1792, elements: !1272)
!1272 = !{!1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1352, !1353}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1271, file: !1213, line: 508, baseType: !755, size: 192, align: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1271, file: !1213, line: 515, baseType: !416, size: 64, offset: 192)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1271, file: !1213, line: 516, baseType: !416, size: 64, offset: 256)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1271, file: !1213, line: 517, baseType: !416, size: 64, offset: 320)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1271, file: !1213, line: 518, baseType: !416, size: 64, offset: 384)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1271, file: !1213, line: 519, baseType: !416, size: 64, offset: 448)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1271, file: !1213, line: 526, baseType: !772, size: 64, offset: 512)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1271, file: !1213, line: 527, baseType: !416, size: 64, offset: 576)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1271, file: !1213, line: 528, baseType: !7, size: 32, offset: 640)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1271, file: !1213, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1271, file: !1213, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1271, file: !1213, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1271, file: !1213, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1271, file: !1213, line: 563, baseType: !1287, size: 512, offset: 704)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1288)
!1288 = !{!1289, !1297, !1298, !1303, !1346, !1349, !1350, !1351}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1287, file: !20, line: 119, baseType: !1290, size: 256)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1291, line: 9, size: 256, elements: !1292)
!1291 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1292 = !{!1293, !1294}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1290, file: !1291, line: 10, baseType: !755, size: 192, align: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1290, file: !1291, line: 11, baseType: !1295, size: 64, offset: 192)
!1295 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1296, line: 29, baseType: !772)
!1296 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1287, file: !20, line: 120, baseType: !1295, size: 64, offset: 256)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1287, file: !20, line: 121, baseType: !1299, size: 64, offset: 320)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!19, !1302}
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1287, file: !20, line: 122, baseType: !1304, size: 64, offset: 384)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1306)
!1306 = !{!1307, !1327, !1328, !1331, !1336, !1337, !1341, !1345}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1305, file: !20, line: 160, baseType: !1308, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1310)
!1310 = !{!1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1309, file: !20, line: 215, baseType: !775)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1309, file: !20, line: 216, baseType: !7, size: 32)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1309, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1309, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1309, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1309, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1309, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1309, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1309, file: !20, line: 233, baseType: !1295, size: 64, offset: 128)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1309, file: !20, line: 234, baseType: !1302, size: 64, offset: 192)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1309, file: !20, line: 235, baseType: !1295, size: 64, offset: 256)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1309, file: !20, line: 236, baseType: !1302, size: 64, offset: 320)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1309, file: !20, line: 237, baseType: !1324, size: 4096, offset: 512)
!1324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1305, size: 4096, elements: !1325)
!1325 = !{!1326}
!1326 = !DISubrange(count: 8)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1305, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1305, file: !20, line: 162, baseType: !1329, size: 32, offset: 96)
!1329 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !147, line: 27, baseType: !1330)
!1330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !303, line: 96, baseType: !196)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1305, file: !20, line: 163, baseType: !1332, size: 32, offset: 128)
!1332 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !383, line: 276, baseType: !1333)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !383, line: 276, size: 32, elements: !1334)
!1334 = !{!1335}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1333, file: !383, line: 276, baseType: !387, size: 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1305, file: !20, line: 164, baseType: !1302, size: 64, offset: 192)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1305, file: !20, line: 165, baseType: !1338, size: 128, offset: 256)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1291, line: 14, size: 128, elements: !1339)
!1339 = !{!1340}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1338, file: !1291, line: 15, baseType: !747, size: 128)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1305, file: !20, line: 166, baseType: !1342, size: 64, offset: 384)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!1295}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1305, file: !20, line: 167, baseType: !1295, size: 64, offset: 448)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1287, file: !20, line: 123, baseType: !1347, size: 8, offset: 448)
!1347 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !411, line: 17, baseType: !1348)
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !413, line: 21, baseType: !422)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1287, file: !20, line: 124, baseType: !1347, size: 8, offset: 456)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1287, file: !20, line: 125, baseType: !1347, size: 8, offset: 464)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1287, file: !20, line: 126, baseType: !1347, size: 8, offset: 472)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1271, file: !1213, line: 572, baseType: !1287, size: 512, offset: 1216)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1271, file: !1213, line: 580, baseType: !1354, size: 64, offset: 1728)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1212, file: !1213, line: 721, baseType: !7, size: 32, offset: 3584)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1212, file: !1213, line: 722, baseType: !196, size: 32, offset: 3616)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1212, file: !1213, line: 723, baseType: !1358, size: 64, offset: 3648)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1360)
!1360 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1361, line: 17, baseType: !1362)
!1361 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1361, line: 17, size: 64, elements: !1363)
!1363 = !{!1364}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1362, file: !1361, line: 17, baseType: !1365, size: 64)
!1365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 64, elements: !1366)
!1366 = !{!1367}
!1367 = !DISubrange(count: 1)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1212, file: !1213, line: 724, baseType: !1360, size: 64, offset: 3712)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1212, file: !1213, line: 749, baseType: !1370, offset: 3776)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1213, line: 290, elements: !243)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1212, file: !1213, line: 751, baseType: !216, size: 128, offset: 3776)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1212, file: !1213, line: 757, baseType: !969, size: 64, offset: 3904)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1212, file: !1213, line: 758, baseType: !969, size: 64, offset: 3968)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1212, file: !1213, line: 761, baseType: !1375, size: 320, offset: 4032)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1146, line: 34, size: 320, elements: !1376)
!1376 = !{!1377, !1378}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1375, file: !1146, line: 35, baseType: !416, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1375, file: !1146, line: 36, baseType: !1379, size: 256, offset: 64)
!1379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !976, size: 256, elements: !1150)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1212, file: !1213, line: 766, baseType: !196, size: 32, offset: 4352)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1212, file: !1213, line: 767, baseType: !196, size: 32, offset: 4384)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1212, file: !1213, line: 768, baseType: !196, size: 32, offset: 4416)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1212, file: !1213, line: 770, baseType: !196, size: 32, offset: 4448)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1212, file: !1213, line: 772, baseType: !149, size: 64, offset: 4480)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1212, file: !1213, line: 775, baseType: !7, size: 32, offset: 4544)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1212, file: !1213, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1212, file: !1213, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1212, file: !1213, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1212, file: !1213, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1212, file: !1213, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1212, file: !1213, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1212, file: !1213, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1212, file: !1213, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1212, file: !1213, line: 831, baseType: !149, size: 64, offset: 4672)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1212, file: !1213, line: 833, baseType: !1396, size: 384, offset: 4736)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1397)
!1397 = !{!1398, !1403}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1396, file: !25, line: 26, baseType: !1399, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!305, !1402}
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, scope: !1396, file: !25, line: 27, baseType: !1404, size: 320, offset: 64)
!1404 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1396, file: !25, line: 27, size: 320, elements: !1405)
!1405 = !{!1406, !1416, !1443}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1404, file: !25, line: 36, baseType: !1407, size: 320)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1404, file: !25, line: 29, size: 320, elements: !1408)
!1408 = !{!1409, !1411, !1412, !1413, !1414, !1415}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1407, file: !25, line: 30, baseType: !1410, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1407, file: !25, line: 31, baseType: !410, size: 32, offset: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1407, file: !25, line: 32, baseType: !410, size: 32, offset: 96)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1407, file: !25, line: 33, baseType: !410, size: 32, offset: 128)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1407, file: !25, line: 34, baseType: !416, size: 64, offset: 192)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1407, file: !25, line: 35, baseType: !1410, size: 64, offset: 256)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1404, file: !25, line: 46, baseType: !1417, size: 192)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1404, file: !25, line: 38, size: 192, elements: !1418)
!1418 = !{!1419, !1420, !1421, !1442}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1417, file: !25, line: 39, baseType: !1329, size: 32)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1417, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1421 = !DIDerivedType(tag: DW_TAG_member, scope: !1417, file: !25, line: 41, baseType: !1422, size: 64, offset: 64)
!1422 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1417, file: !25, line: 41, size: 64, elements: !1423)
!1423 = !{!1424, !1432}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1422, file: !25, line: 42, baseType: !1425, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1427, line: 7, size: 128, elements: !1428)
!1427 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1428 = !{!1429, !1431}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1426, file: !1427, line: 8, baseType: !1430, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !303, line: 93, baseType: !528)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1426, file: !1427, line: 9, baseType: !528, size: 64, offset: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1422, file: !25, line: 43, baseType: !1433, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1435, line: 7, size: 64, elements: !1436)
!1435 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1436 = !{!1437, !1441}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1434, file: !1435, line: 8, baseType: !1438, size: 32)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1435, line: 5, baseType: !1439)
!1439 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !411, line: 20, baseType: !1440)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !413, line: 26, baseType: !196)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1434, file: !1435, line: 9, baseType: !1439, size: 32, offset: 32)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1417, file: !25, line: 45, baseType: !416, size: 64, offset: 128)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1404, file: !25, line: 54, baseType: !1444, size: 256)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1404, file: !25, line: 48, size: 256, elements: !1445)
!1445 = !{!1446, !1449, !1450, !1451, !1452}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1444, file: !25, line: 49, baseType: !1447, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1444, file: !25, line: 50, baseType: !196, size: 32, offset: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1444, file: !25, line: 51, baseType: !196, size: 32, offset: 96)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1444, file: !25, line: 52, baseType: !149, size: 64, offset: 128)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1444, file: !25, line: 53, baseType: !149, size: 64, offset: 192)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1212, file: !1213, line: 835, baseType: !1454, size: 32, offset: 5120)
!1454 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !147, line: 22, baseType: !1455)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !303, line: 28, baseType: !196)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1212, file: !1213, line: 836, baseType: !1454, size: 32, offset: 5152)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1212, file: !1213, line: 840, baseType: !149, size: 64, offset: 5184)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1212, file: !1213, line: 849, baseType: !1211, size: 64, offset: 5248)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1212, file: !1213, line: 852, baseType: !1211, size: 64, offset: 5312)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1212, file: !1213, line: 857, baseType: !216, size: 128, offset: 5376)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1212, file: !1213, line: 858, baseType: !216, size: 128, offset: 5504)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1212, file: !1213, line: 859, baseType: !1211, size: 64, offset: 5632)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1212, file: !1213, line: 867, baseType: !216, size: 128, offset: 5696)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1212, file: !1213, line: 868, baseType: !216, size: 128, offset: 5824)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1212, file: !1213, line: 871, baseType: !1466, size: 64, offset: 5952)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1468)
!1468 = !{!1469, !1470, !1471, !1472, !1474, !1475, !1482, !1483}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1467, file: !53, line: 61, baseType: !1225, size: 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1467, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1467, file: !53, line: 63, baseType: !229, offset: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1467, file: !53, line: 65, baseType: !1473, size: 256, offset: 64)
!1473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !630, size: 256, elements: !1150)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1467, file: !53, line: 66, baseType: !630, size: 64, offset: 320)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1467, file: !53, line: 68, baseType: !1476, size: 128, offset: 384)
!1476 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1477, line: 40, baseType: !1478)
!1477 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1477, line: 36, size: 128, elements: !1479)
!1479 = !{!1480, !1481}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1478, file: !1477, line: 37, baseType: !229)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1478, file: !1477, line: 38, baseType: !216, size: 128)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1467, file: !53, line: 69, baseType: !360, size: 128, align: 64, offset: 512)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1467, file: !53, line: 70, baseType: !1484, size: 128, offset: 640)
!1484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1485, size: 128, elements: !1366)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1486)
!1486 = !{!1487, !1488}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1485, file: !53, line: 55, baseType: !196, size: 32)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1485, file: !53, line: 56, baseType: !1489, size: 64, offset: 64)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1212, file: !1213, line: 872, baseType: !1492, size: 512, offset: 6016)
!1492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !634, size: 512, elements: !1150)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1212, file: !1213, line: 873, baseType: !216, size: 128, offset: 6528)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1212, file: !1213, line: 874, baseType: !216, size: 128, offset: 6656)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1212, file: !1213, line: 876, baseType: !1496, size: 64, offset: 6784)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1498, line: 26, size: 192, elements: !1499)
!1498 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1499 = !{!1500, !1501}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1497, file: !1498, line: 27, baseType: !7, size: 32)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1497, file: !1498, line: 28, baseType: !1502, size: 128, offset: 64)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1503, line: 43, size: 128, elements: !1504)
!1503 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1504 = !{!1505, !1506}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1502, file: !1503, line: 44, baseType: !775)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1502, file: !1503, line: 45, baseType: !216, size: 128)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1212, file: !1213, line: 879, baseType: !700, size: 64, offset: 6848)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1212, file: !1213, line: 882, baseType: !700, size: 64, offset: 6912)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1212, file: !1213, line: 884, baseType: !416, size: 64, offset: 6976)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1212, file: !1213, line: 885, baseType: !416, size: 64, offset: 7040)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1212, file: !1213, line: 890, baseType: !416, size: 64, offset: 7104)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1212, file: !1213, line: 891, baseType: !1513, size: 128, offset: 7168)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1213, line: 242, size: 128, elements: !1514)
!1514 = !{!1515, !1516, !1517}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1513, file: !1213, line: 244, baseType: !416, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1513, file: !1213, line: 245, baseType: !416, size: 64, offset: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1513, file: !1213, line: 246, baseType: !775, offset: 128)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1212, file: !1213, line: 900, baseType: !149, size: 64, offset: 7296)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1212, file: !1213, line: 901, baseType: !149, size: 64, offset: 7360)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1212, file: !1213, line: 904, baseType: !416, size: 64, offset: 7424)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1212, file: !1213, line: 907, baseType: !416, size: 64, offset: 7488)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1212, file: !1213, line: 910, baseType: !149, size: 64, offset: 7552)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1212, file: !1213, line: 911, baseType: !149, size: 64, offset: 7616)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1212, file: !1213, line: 914, baseType: !1525, size: 640, offset: 7680)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1526, line: 123, size: 640, elements: !1527)
!1526 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1527 = !{!1528, !1534, !1535}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1525, file: !1526, line: 124, baseType: !1529, size: 576)
!1529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1530, size: 576, elements: !271)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1526, line: 108, size: 192, elements: !1531)
!1531 = !{!1532, !1533}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1530, file: !1526, line: 109, baseType: !416, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1530, file: !1526, line: 110, baseType: !1338, size: 128, offset: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1525, file: !1526, line: 125, baseType: !7, size: 32, offset: 576)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1525, file: !1526, line: 126, baseType: !7, size: 32, offset: 608)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1212, file: !1213, line: 917, baseType: !1537, size: 192, offset: 8320)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1526, line: 134, size: 192, elements: !1538)
!1538 = !{!1539, !1540}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1537, file: !1526, line: 135, baseType: !360, size: 128, align: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1537, file: !1526, line: 136, baseType: !7, size: 32, offset: 128)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1212, file: !1213, line: 923, baseType: !1542, size: 64, offset: 8512)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1544)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1545, line: 111, size: 1280, elements: !1546)
!1545 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1546 = !{!1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1566, !1567, !1568, !1569, !1570, !1571, !1678, !1679, !1680, !1681, !1707, !1710, !1720}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1544, file: !1545, line: 112, baseType: !742, size: 32)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1544, file: !1545, line: 120, baseType: !430, size: 32, offset: 32)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1544, file: !1545, line: 121, baseType: !438, size: 32, offset: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1544, file: !1545, line: 122, baseType: !430, size: 32, offset: 96)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1544, file: !1545, line: 123, baseType: !438, size: 32, offset: 128)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1544, file: !1545, line: 124, baseType: !430, size: 32, offset: 160)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1544, file: !1545, line: 125, baseType: !438, size: 32, offset: 192)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1544, file: !1545, line: 126, baseType: !430, size: 32, offset: 224)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1544, file: !1545, line: 127, baseType: !438, size: 32, offset: 256)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1544, file: !1545, line: 128, baseType: !7, size: 32, offset: 288)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1544, file: !1545, line: 129, baseType: !1558, size: 64, offset: 320)
!1558 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1559, line: 26, baseType: !1560)
!1559 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1559, line: 24, size: 64, elements: !1561)
!1561 = !{!1562}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1560, file: !1559, line: 25, baseType: !1563, size: 64)
!1563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 64, elements: !1564)
!1564 = !{!1565}
!1565 = !DISubrange(count: 2)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1544, file: !1545, line: 130, baseType: !1558, size: 64, offset: 384)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1544, file: !1545, line: 131, baseType: !1558, size: 64, offset: 448)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1544, file: !1545, line: 132, baseType: !1558, size: 64, offset: 512)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1544, file: !1545, line: 133, baseType: !1558, size: 64, offset: 576)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1544, file: !1545, line: 135, baseType: !422, size: 8, offset: 640)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1544, file: !1545, line: 137, baseType: !1572, size: 64, offset: 704)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1574, line: 189, size: 1664, elements: !1575)
!1574 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1575 = !{!1576, !1577, !1580, !1585, !1586, !1589, !1590, !1595, !1596, !1597, !1598, !1600, !1601, !1602, !1603, !1604, !1642, !1663}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1573, file: !1574, line: 190, baseType: !1225, size: 32)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1573, file: !1574, line: 191, baseType: !1578, size: 32, offset: 32)
!1578 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1574, line: 28, baseType: !1579)
!1579 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !147, line: 98, baseType: !1439)
!1580 = !DIDerivedType(tag: DW_TAG_member, scope: !1573, file: !1574, line: 192, baseType: !1581, size: 192, offset: 64)
!1581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1573, file: !1574, line: 192, size: 192, elements: !1582)
!1582 = !{!1583, !1584}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1581, file: !1574, line: 193, baseType: !216, size: 128)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1581, file: !1574, line: 194, baseType: !755, size: 192, align: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1573, file: !1574, line: 199, baseType: !762, size: 256, offset: 256)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1573, file: !1574, line: 200, baseType: !1587, size: 64, offset: 512)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1574, line: 200, flags: DIFlagFwdDecl)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1573, file: !1574, line: 201, baseType: !148, size: 64, offset: 576)
!1590 = !DIDerivedType(tag: DW_TAG_member, scope: !1573, file: !1574, line: 202, baseType: !1591, size: 64, offset: 640)
!1591 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1573, file: !1574, line: 202, size: 64, elements: !1592)
!1592 = !{!1593, !1594}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1591, file: !1574, line: 203, baseType: !534, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1591, file: !1574, line: 204, baseType: !534, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1573, file: !1574, line: 206, baseType: !534, size: 64, offset: 704)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1573, file: !1574, line: 207, baseType: !430, size: 32, offset: 768)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1573, file: !1574, line: 208, baseType: !438, size: 32, offset: 800)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1573, file: !1574, line: 209, baseType: !1599, size: 32, offset: 832)
!1599 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1574, line: 31, baseType: !554)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1573, file: !1574, line: 210, baseType: !312, size: 16, offset: 864)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1573, file: !1574, line: 211, baseType: !312, size: 16, offset: 880)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1573, file: !1574, line: 215, baseType: !1200, size: 16, offset: 896)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1573, file: !1574, line: 222, baseType: !149, size: 64, offset: 960)
!1604 = !DIDerivedType(tag: DW_TAG_member, scope: !1573, file: !1574, line: 239, baseType: !1605, size: 320, offset: 1024)
!1605 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1573, file: !1574, line: 239, size: 320, elements: !1606)
!1606 = !{!1607, !1634}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1605, file: !1574, line: 240, baseType: !1608, size: 320)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1574, line: 108, size: 320, elements: !1609)
!1609 = !{!1610, !1611, !1623, !1626, !1633}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1608, file: !1574, line: 110, baseType: !149, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, scope: !1608, file: !1574, line: 111, baseType: !1612, size: 64, offset: 64)
!1612 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1608, file: !1574, line: 111, size: 64, elements: !1613)
!1613 = !{!1614, !1622}
!1614 = !DIDerivedType(tag: DW_TAG_member, scope: !1612, file: !1574, line: 112, baseType: !1615, size: 64)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1612, file: !1574, line: 112, size: 64, elements: !1616)
!1616 = !{!1617, !1618}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1615, file: !1574, line: 114, baseType: !854, size: 16)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1615, file: !1574, line: 115, baseType: !1619, size: 48, offset: 16)
!1619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 48, elements: !1620)
!1620 = !{!1621}
!1621 = !DISubrange(count: 6)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1612, file: !1574, line: 121, baseType: !149, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1608, file: !1574, line: 123, baseType: !1624, size: 64, offset: 128)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1574, line: 96, flags: DIFlagFwdDecl)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1608, file: !1574, line: 124, baseType: !1627, size: 64, offset: 192)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1574, line: 102, size: 192, elements: !1629)
!1629 = !{!1630, !1631, !1632}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1628, file: !1574, line: 103, baseType: !360, size: 128, align: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1628, file: !1574, line: 104, baseType: !1225, size: 32, offset: 128)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1628, file: !1574, line: 105, baseType: !485, size: 8, offset: 160)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1608, file: !1574, line: 125, baseType: !187, size: 64, offset: 256)
!1634 = !DIDerivedType(tag: DW_TAG_member, scope: !1605, file: !1574, line: 241, baseType: !1635, size: 320)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1605, file: !1574, line: 241, size: 320, elements: !1636)
!1636 = !{!1637, !1638, !1639, !1640, !1641}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1635, file: !1574, line: 242, baseType: !149, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1635, file: !1574, line: 243, baseType: !149, size: 64, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1635, file: !1574, line: 244, baseType: !1624, size: 64, offset: 128)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1635, file: !1574, line: 245, baseType: !1627, size: 64, offset: 192)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1635, file: !1574, line: 246, baseType: !270, size: 64, offset: 256)
!1642 = !DIDerivedType(tag: DW_TAG_member, scope: !1573, file: !1574, line: 254, baseType: !1643, size: 256, offset: 1344)
!1643 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1573, file: !1574, line: 254, size: 256, elements: !1644)
!1644 = !{!1645, !1651}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1643, file: !1574, line: 255, baseType: !1646, size: 256)
!1646 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1574, line: 128, size: 256, elements: !1647)
!1647 = !{!1648, !1649}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1646, file: !1574, line: 129, baseType: !148, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1646, file: !1574, line: 130, baseType: !1650, size: 256)
!1650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 256, elements: !1150)
!1651 = !DIDerivedType(tag: DW_TAG_member, scope: !1643, file: !1574, line: 256, baseType: !1652, size: 256)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1643, file: !1574, line: 256, size: 256, elements: !1653)
!1653 = !{!1654, !1655}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1652, file: !1574, line: 258, baseType: !216, size: 128)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1652, file: !1574, line: 259, baseType: !1656, size: 128, offset: 128)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1657, line: 22, size: 128, elements: !1658)
!1657 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1658 = !{!1659, !1662}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1656, file: !1657, line: 23, baseType: !1660, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1657, line: 23, flags: DIFlagFwdDecl)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1656, file: !1657, line: 24, baseType: !149, size: 64, offset: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1573, file: !1574, line: 274, baseType: !1664, size: 64, offset: 1600)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1574, line: 170, size: 192, elements: !1666)
!1666 = !{!1667, !1676, !1677}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1665, file: !1574, line: 171, baseType: !1668, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1574, line: 165, baseType: !1669)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!196, !1572, !1672, !1674, !1572}
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1625)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1646)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1665, file: !1574, line: 172, baseType: !1572, size: 64, offset: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1665, file: !1574, line: 173, baseType: !1624, size: 64, offset: 128)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1544, file: !1545, line: 138, baseType: !1572, size: 64, offset: 768)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1544, file: !1545, line: 139, baseType: !1572, size: 64, offset: 832)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1544, file: !1545, line: 140, baseType: !1572, size: 64, offset: 896)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1544, file: !1545, line: 145, baseType: !1682, size: 64, offset: 960)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1684, line: 13, size: 896, elements: !1685)
!1684 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1685 = !{!1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1683, file: !1684, line: 14, baseType: !1225, size: 32)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1683, file: !1684, line: 15, baseType: !742, size: 32, offset: 32)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1683, file: !1684, line: 16, baseType: !742, size: 32, offset: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1683, file: !1684, line: 21, baseType: !766, size: 64, offset: 128)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1683, file: !1684, line: 27, baseType: !149, size: 64, offset: 192)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1683, file: !1684, line: 28, baseType: !149, size: 64, offset: 256)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1683, file: !1684, line: 29, baseType: !766, size: 64, offset: 320)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1683, file: !1684, line: 32, baseType: !634, size: 128, offset: 384)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1683, file: !1684, line: 33, baseType: !430, size: 32, offset: 512)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1683, file: !1684, line: 37, baseType: !766, size: 64, offset: 576)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1683, file: !1684, line: 44, baseType: !1697, size: 256, offset: 640)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1698, line: 15, size: 256, elements: !1699)
!1698 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1699 = !{!1700, !1701, !1702, !1703, !1704, !1705, !1706}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1697, file: !1698, line: 16, baseType: !775)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1697, file: !1698, line: 18, baseType: !196, size: 32)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1697, file: !1698, line: 19, baseType: !196, size: 32, offset: 32)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1697, file: !1698, line: 20, baseType: !196, size: 32, offset: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1697, file: !1698, line: 21, baseType: !196, size: 32, offset: 96)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1697, file: !1698, line: 22, baseType: !149, size: 64, offset: 128)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1697, file: !1698, line: 23, baseType: !149, size: 64, offset: 192)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1544, file: !1545, line: 146, baseType: !1708, size: 64, offset: 1024)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !431, line: 18, flags: DIFlagFwdDecl)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1544, file: !1545, line: 147, baseType: !1711, size: 64, offset: 1088)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1545, line: 25, size: 64, elements: !1713)
!1713 = !{!1714, !1715, !1716}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1712, file: !1545, line: 26, baseType: !742, size: 32)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1712, file: !1545, line: 27, baseType: !196, size: 32, offset: 32)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1712, file: !1545, line: 28, baseType: !1717, offset: 64)
!1717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, elements: !1718)
!1718 = !{!1719}
!1719 = !DISubrange(count: 0)
!1720 = !DIDerivedType(tag: DW_TAG_member, scope: !1544, file: !1545, line: 149, baseType: !1721, size: 128, offset: 1152)
!1721 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1544, file: !1545, line: 149, size: 128, elements: !1722)
!1722 = !{!1723, !1724}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1721, file: !1545, line: 150, baseType: !196, size: 32)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1721, file: !1545, line: 151, baseType: !360, size: 128, align: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1212, file: !1213, line: 926, baseType: !1542, size: 64, offset: 8576)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1212, file: !1213, line: 929, baseType: !1542, size: 64, offset: 8640)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1212, file: !1213, line: 933, baseType: !1572, size: 64, offset: 8704)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1212, file: !1213, line: 943, baseType: !1729, size: 128, offset: 8768)
!1729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 128, elements: !1730)
!1730 = !{!1731}
!1731 = !DISubrange(count: 16)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1212, file: !1213, line: 945, baseType: !1733, size: 64, offset: 8896)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1213, line: 49, flags: DIFlagFwdDecl)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1212, file: !1213, line: 956, baseType: !1736, size: 64, offset: 8960)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1213, line: 45, flags: DIFlagFwdDecl)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1212, file: !1213, line: 959, baseType: !1739, size: 64, offset: 9024)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1213, line: 959, flags: DIFlagFwdDecl)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1212, file: !1213, line: 962, baseType: !1742, size: 64, offset: 9088)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1213, line: 66, flags: DIFlagFwdDecl)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1212, file: !1213, line: 966, baseType: !1745, size: 64, offset: 9152)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1747, line: 35, flags: DIFlagFwdDecl)
!1747 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1212, file: !1213, line: 969, baseType: !1749, size: 64, offset: 9216)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1751, line: 82, size: 7296, elements: !1752)
!1751 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1752 = !{!1753, !1754, !1755, !1756, !1757, !1758, !1759, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1788, !1797, !1798, !1800, !1801, !1802, !1805, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1835, !1836, !1843, !1844, !1845, !1846, !1847, !1848}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1750, file: !1751, line: 83, baseType: !1225, size: 32)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1750, file: !1751, line: 84, baseType: !742, size: 32, offset: 32)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1750, file: !1751, line: 85, baseType: !196, size: 32, offset: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1750, file: !1751, line: 86, baseType: !216, size: 128, offset: 128)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1750, file: !1751, line: 88, baseType: !1476, size: 128, offset: 256)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1750, file: !1751, line: 91, baseType: !1211, size: 64, offset: 384)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1750, file: !1751, line: 94, baseType: !1760, size: 192, offset: 448)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1761, line: 30, size: 192, elements: !1762)
!1761 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1762 = !{!1763, !1764}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1760, file: !1761, line: 31, baseType: !216, size: 128)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1760, file: !1761, line: 32, baseType: !1765, size: 64, offset: 128)
!1765 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1766, line: 25, baseType: !1767)
!1766 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1766, line: 23, size: 64, elements: !1768)
!1768 = !{!1769}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1767, file: !1766, line: 24, baseType: !1365, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1750, file: !1751, line: 97, baseType: !630, size: 64, offset: 640)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1750, file: !1751, line: 100, baseType: !196, size: 32, offset: 704)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1750, file: !1751, line: 106, baseType: !196, size: 32, offset: 736)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1750, file: !1751, line: 107, baseType: !1211, size: 64, offset: 768)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1750, file: !1751, line: 110, baseType: !196, size: 32, offset: 832)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1750, file: !1751, line: 111, baseType: !7, size: 32, offset: 864)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1750, file: !1751, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1750, file: !1751, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1750, file: !1751, line: 128, baseType: !196, size: 32, offset: 928)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1750, file: !1751, line: 129, baseType: !216, size: 128, offset: 960)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1750, file: !1751, line: 132, baseType: !1287, size: 512, offset: 1088)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1750, file: !1751, line: 133, baseType: !1295, size: 64, offset: 1600)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1750, file: !1751, line: 140, baseType: !1783, size: 256, offset: 1664)
!1783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1784, size: 256, elements: !1564)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1751, line: 38, size: 128, elements: !1785)
!1785 = !{!1786, !1787}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1784, file: !1751, line: 39, baseType: !416, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1784, file: !1751, line: 40, baseType: !416, size: 64, offset: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1750, file: !1751, line: 146, baseType: !1789, size: 192, offset: 1920)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1751, line: 66, size: 192, elements: !1790)
!1790 = !{!1791}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1789, file: !1751, line: 67, baseType: !1792, size: 192)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1751, line: 47, size: 192, elements: !1793)
!1793 = !{!1794, !1795, !1796}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1792, file: !1751, line: 48, baseType: !768, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1792, file: !1751, line: 49, baseType: !768, size: 64, offset: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1792, file: !1751, line: 50, baseType: !768, size: 64, offset: 128)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1750, file: !1751, line: 150, baseType: !1525, size: 640, offset: 2112)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1750, file: !1751, line: 153, baseType: !1799, size: 256, offset: 2752)
!1799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1466, size: 256, elements: !1150)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1750, file: !1751, line: 159, baseType: !1466, size: 64, offset: 3008)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1750, file: !1751, line: 162, baseType: !196, size: 32, offset: 3072)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1750, file: !1751, line: 164, baseType: !1803, size: 64, offset: 3136)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1751, line: 164, flags: DIFlagFwdDecl)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1750, file: !1751, line: 175, baseType: !1806, size: 32, offset: 3200)
!1806 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !383, line: 805, baseType: !1807)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !383, line: 798, size: 32, elements: !1808)
!1808 = !{!1809, !1810}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1807, file: !383, line: 803, baseType: !382, size: 32)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1807, file: !383, line: 804, baseType: !229, offset: 32)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1750, file: !1751, line: 176, baseType: !416, size: 64, offset: 3264)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1750, file: !1751, line: 176, baseType: !416, size: 64, offset: 3328)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1750, file: !1751, line: 176, baseType: !416, size: 64, offset: 3392)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1750, file: !1751, line: 176, baseType: !416, size: 64, offset: 3456)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1750, file: !1751, line: 177, baseType: !416, size: 64, offset: 3520)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1750, file: !1751, line: 178, baseType: !416, size: 64, offset: 3584)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1750, file: !1751, line: 179, baseType: !1513, size: 128, offset: 3648)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1750, file: !1751, line: 180, baseType: !149, size: 64, offset: 3776)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1750, file: !1751, line: 180, baseType: !149, size: 64, offset: 3840)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1750, file: !1751, line: 180, baseType: !149, size: 64, offset: 3904)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1750, file: !1751, line: 180, baseType: !149, size: 64, offset: 3968)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1750, file: !1751, line: 181, baseType: !149, size: 64, offset: 4032)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1750, file: !1751, line: 181, baseType: !149, size: 64, offset: 4096)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1750, file: !1751, line: 181, baseType: !149, size: 64, offset: 4160)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1750, file: !1751, line: 181, baseType: !149, size: 64, offset: 4224)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1750, file: !1751, line: 182, baseType: !149, size: 64, offset: 4288)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1750, file: !1751, line: 182, baseType: !149, size: 64, offset: 4352)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1750, file: !1751, line: 182, baseType: !149, size: 64, offset: 4416)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1750, file: !1751, line: 182, baseType: !149, size: 64, offset: 4480)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1750, file: !1751, line: 183, baseType: !149, size: 64, offset: 4544)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1750, file: !1751, line: 183, baseType: !149, size: 64, offset: 4608)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1750, file: !1751, line: 184, baseType: !1833, offset: 4672)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1834, line: 12, elements: !243)
!1834 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1750, file: !1751, line: 192, baseType: !418, size: 64, offset: 4672)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1750, file: !1751, line: 203, baseType: !1837, size: 2048, offset: 4736)
!1837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1838, size: 2048, elements: !1730)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1839, line: 43, size: 128, elements: !1840)
!1839 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1840 = !{!1841, !1842}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1838, file: !1839, line: 44, baseType: !319, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1838, file: !1839, line: 45, baseType: !319, size: 64, offset: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1750, file: !1751, line: 220, baseType: !485, size: 8, offset: 6784)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1750, file: !1751, line: 221, baseType: !1200, size: 16, offset: 6800)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1750, file: !1751, line: 222, baseType: !1200, size: 16, offset: 6816)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1750, file: !1751, line: 224, baseType: !969, size: 64, offset: 6848)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1750, file: !1751, line: 227, baseType: !1168, size: 192, offset: 6912)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1750, file: !1751, line: 233, baseType: !1168, size: 192, offset: 7104)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1212, file: !1213, line: 970, baseType: !1850, size: 64, offset: 9280)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1751, line: 20, size: 16576, elements: !1852)
!1852 = !{!1853, !1854, !1855, !1856}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1851, file: !1751, line: 21, baseType: !229)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1851, file: !1751, line: 22, baseType: !1225, size: 32)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1851, file: !1751, line: 23, baseType: !1476, size: 128, offset: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1851, file: !1751, line: 24, baseType: !1857, size: 16384, offset: 192)
!1857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1858, size: 16384, elements: !275)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1761, line: 49, size: 256, elements: !1859)
!1859 = !{!1860}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1858, file: !1761, line: 50, baseType: !1861, size: 256)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1761, line: 35, size: 256, elements: !1862)
!1862 = !{!1863, !1870, !1871, !1875}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1861, file: !1761, line: 37, baseType: !1864, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1865, line: 19, baseType: !1866)
!1865 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1865, line: 18, baseType: !1868)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{null, !196}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1861, file: !1761, line: 38, baseType: !149, size: 64, offset: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1861, file: !1761, line: 44, baseType: !1872, size: 64, offset: 128)
!1872 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1865, line: 22, baseType: !1873)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1865, line: 21, baseType: !156)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1861, file: !1761, line: 46, baseType: !1765, size: 64, offset: 192)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1212, file: !1213, line: 971, baseType: !1765, size: 64, offset: 9344)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1212, file: !1213, line: 972, baseType: !1765, size: 64, offset: 9408)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1212, file: !1213, line: 974, baseType: !1765, size: 64, offset: 9472)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1212, file: !1213, line: 975, baseType: !1760, size: 192, offset: 9536)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1212, file: !1213, line: 976, baseType: !149, size: 64, offset: 9728)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1212, file: !1213, line: 977, baseType: !317, size: 64, offset: 9792)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1212, file: !1213, line: 978, baseType: !7, size: 32, offset: 9856)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1212, file: !1213, line: 980, baseType: !363, size: 64, offset: 9920)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1212, file: !1213, line: 989, baseType: !1885, size: 128, offset: 9984)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1886, line: 35, size: 128, elements: !1887)
!1886 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1887 = !{!1888, !1889, !1890}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1885, file: !1886, line: 36, baseType: !196, size: 32)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1885, file: !1886, line: 37, baseType: !742, size: 32, offset: 32)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1885, file: !1886, line: 38, baseType: !1891, size: 64, offset: 64)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1886, line: 23, flags: DIFlagFwdDecl)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1212, file: !1213, line: 992, baseType: !416, size: 64, offset: 10112)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1212, file: !1213, line: 993, baseType: !416, size: 64, offset: 10176)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1212, file: !1213, line: 996, baseType: !229, offset: 10240)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1212, file: !1213, line: 999, baseType: !775, offset: 10240)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1212, file: !1213, line: 1001, baseType: !1898, size: 64, offset: 10240)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1213, line: 636, size: 64, elements: !1899)
!1899 = !{!1900}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1898, file: !1213, line: 637, baseType: !1901, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1212, file: !1213, line: 1005, baseType: !747, size: 128, offset: 10304)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1212, file: !1213, line: 1007, baseType: !1211, size: 64, offset: 10432)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1212, file: !1213, line: 1009, baseType: !1905, size: 64, offset: 10496)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1213, line: 1009, flags: DIFlagFwdDecl)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1212, file: !1213, line: 1043, baseType: !148, size: 64, offset: 10560)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1212, file: !1213, line: 1046, baseType: !1909, size: 64, offset: 10624)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1213, line: 41, flags: DIFlagFwdDecl)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1212, file: !1213, line: 1050, baseType: !1912, size: 64, offset: 10688)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1213, line: 42, flags: DIFlagFwdDecl)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1212, file: !1213, line: 1054, baseType: !1915, size: 64, offset: 10752)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1213, line: 55, flags: DIFlagFwdDecl)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1212, file: !1213, line: 1056, baseType: !1918, size: 64, offset: 10816)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1213, line: 40, flags: DIFlagFwdDecl)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1212, file: !1213, line: 1058, baseType: !1921, size: 64, offset: 10880)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1923, line: 99, size: 704, elements: !1924)
!1923 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1924 = !{!1925, !1926, !1927, !1928, !1929, !1930, !1931, !1950, !1951}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1922, file: !1923, line: 100, baseType: !766, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1922, file: !1923, line: 101, baseType: !742, size: 32, offset: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1922, file: !1923, line: 102, baseType: !742, size: 32, offset: 96)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1922, file: !1923, line: 105, baseType: !229, offset: 128)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1922, file: !1923, line: 107, baseType: !312, size: 16, offset: 128)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1922, file: !1923, line: 109, baseType: !734, size: 128, offset: 192)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1922, file: !1923, line: 110, baseType: !1932, size: 64, offset: 320)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1923, line: 73, size: 448, elements: !1934)
!1934 = !{!1935, !1938, !1939, !1944, !1949}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1933, file: !1923, line: 74, baseType: !1936, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1923, line: 74, flags: DIFlagFwdDecl)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1933, file: !1923, line: 75, baseType: !1921, size: 64, offset: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, scope: !1933, file: !1923, line: 83, baseType: !1940, size: 128, offset: 128)
!1940 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1933, file: !1923, line: 83, size: 128, elements: !1941)
!1941 = !{!1942, !1943}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1940, file: !1923, line: 84, baseType: !216, size: 128)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1940, file: !1923, line: 85, baseType: !930, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, scope: !1933, file: !1923, line: 87, baseType: !1945, size: 128, offset: 256)
!1945 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1933, file: !1923, line: 87, size: 128, elements: !1946)
!1946 = !{!1947, !1948}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1945, file: !1923, line: 88, baseType: !634, size: 128)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1945, file: !1923, line: 89, baseType: !360, size: 128, align: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1933, file: !1923, line: 92, baseType: !7, size: 32, offset: 384)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1922, file: !1923, line: 111, baseType: !630, size: 64, offset: 384)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1922, file: !1923, line: 113, baseType: !1952, size: 256, offset: 448)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1953, line: 102, size: 256, elements: !1954)
!1953 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1954 = !{!1955, !1956, !1957}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1952, file: !1953, line: 103, baseType: !766, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1952, file: !1953, line: 104, baseType: !216, size: 128, offset: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1952, file: !1953, line: 105, baseType: !1958, size: 64, offset: 192)
!1958 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1953, line: 21, baseType: !1959)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{null, !1962}
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1212, file: !1213, line: 1061, baseType: !1964, size: 64, offset: 10944)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1213, line: 43, flags: DIFlagFwdDecl)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1212, file: !1213, line: 1064, baseType: !149, size: 64, offset: 11008)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1212, file: !1213, line: 1065, baseType: !1968, size: 64, offset: 11072)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1761, line: 14, baseType: !1970)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1761, line: 12, size: 384, elements: !1971)
!1971 = !{!1972}
!1972 = !DIDerivedType(tag: DW_TAG_member, scope: !1970, file: !1761, line: 13, baseType: !1973, size: 384)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1970, file: !1761, line: 13, size: 384, elements: !1974)
!1974 = !{!1975, !1976, !1977, !1978}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1973, file: !1761, line: 13, baseType: !196, size: 32)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1973, file: !1761, line: 13, baseType: !196, size: 32, offset: 32)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1973, file: !1761, line: 13, baseType: !196, size: 32, offset: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1973, file: !1761, line: 13, baseType: !1979, size: 256, offset: 128)
!1979 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1980, line: 32, size: 256, elements: !1981)
!1980 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1981 = !{!1982, !1987, !2000, !2006, !2015, !2035, !2040}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1979, file: !1980, line: 37, baseType: !1983, size: 64)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1979, file: !1980, line: 34, size: 64, elements: !1984)
!1984 = !{!1985, !1986}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1983, file: !1980, line: 35, baseType: !1455, size: 32)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1983, file: !1980, line: 36, baseType: !436, size: 32, offset: 32)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1979, file: !1980, line: 45, baseType: !1988, size: 192)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1979, file: !1980, line: 40, size: 192, elements: !1989)
!1989 = !{!1990, !1992, !1993, !1999}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1988, file: !1980, line: 41, baseType: !1991, size: 32)
!1991 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !303, line: 95, baseType: !196)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1988, file: !1980, line: 42, baseType: !196, size: 32, offset: 32)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1988, file: !1980, line: 43, baseType: !1994, size: 64, offset: 64)
!1994 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1980, line: 11, baseType: !1995)
!1995 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1980, line: 8, size: 64, elements: !1996)
!1996 = !{!1997, !1998}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1995, file: !1980, line: 9, baseType: !196, size: 32)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1995, file: !1980, line: 10, baseType: !148, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1988, file: !1980, line: 44, baseType: !196, size: 32, offset: 128)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1979, file: !1980, line: 52, baseType: !2001, size: 128)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1979, file: !1980, line: 48, size: 128, elements: !2002)
!2002 = !{!2003, !2004, !2005}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2001, file: !1980, line: 49, baseType: !1455, size: 32)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2001, file: !1980, line: 50, baseType: !436, size: 32, offset: 32)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2001, file: !1980, line: 51, baseType: !1994, size: 64, offset: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1979, file: !1980, line: 61, baseType: !2007, size: 256)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1979, file: !1980, line: 55, size: 256, elements: !2008)
!2008 = !{!2009, !2010, !2011, !2012, !2014}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2007, file: !1980, line: 56, baseType: !1455, size: 32)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2007, file: !1980, line: 57, baseType: !436, size: 32, offset: 32)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2007, file: !1980, line: 58, baseType: !196, size: 32, offset: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2007, file: !1980, line: 59, baseType: !2013, size: 64, offset: 128)
!2013 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !303, line: 94, baseType: !304)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2007, file: !1980, line: 60, baseType: !2013, size: 64, offset: 192)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1979, file: !1980, line: 95, baseType: !2016, size: 256)
!2016 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1979, file: !1980, line: 64, size: 256, elements: !2017)
!2017 = !{!2018, !2019}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2016, file: !1980, line: 65, baseType: !148, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, scope: !2016, file: !1980, line: 77, baseType: !2020, size: 192, offset: 64)
!2020 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2016, file: !1980, line: 77, size: 192, elements: !2021)
!2021 = !{!2022, !2023, !2030}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2020, file: !1980, line: 82, baseType: !1200, size: 16)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2020, file: !1980, line: 88, baseType: !2024, size: 192)
!2024 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2020, file: !1980, line: 84, size: 192, elements: !2025)
!2025 = !{!2026, !2028, !2029}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2024, file: !1980, line: 85, baseType: !2027, size: 64)
!2027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 64, elements: !1325)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2024, file: !1980, line: 86, baseType: !148, size: 64, offset: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2024, file: !1980, line: 87, baseType: !148, size: 64, offset: 128)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2020, file: !1980, line: 93, baseType: !2031, size: 96)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2020, file: !1980, line: 90, size: 96, elements: !2032)
!2032 = !{!2033, !2034}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2031, file: !1980, line: 91, baseType: !2027, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2031, file: !1980, line: 92, baseType: !412, size: 32, offset: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1979, file: !1980, line: 101, baseType: !2036, size: 128)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1979, file: !1980, line: 98, size: 128, elements: !2037)
!2037 = !{!2038, !2039}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2036, file: !1980, line: 99, baseType: !305, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2036, file: !1980, line: 100, baseType: !196, size: 32, offset: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1979, file: !1980, line: 108, baseType: !2041, size: 128)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1979, file: !1980, line: 104, size: 128, elements: !2042)
!2042 = !{!2043, !2044, !2045}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2041, file: !1980, line: 105, baseType: !148, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2041, file: !1980, line: 106, baseType: !196, size: 32, offset: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2041, file: !1980, line: 107, baseType: !7, size: 32, offset: 96)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1212, file: !1213, line: 1067, baseType: !1833, offset: 11136)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1212, file: !1213, line: 1099, baseType: !2048, size: 64, offset: 11136)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1213, line: 56, flags: DIFlagFwdDecl)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1212, file: !1213, line: 1103, baseType: !216, size: 128, offset: 11200)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1212, file: !1213, line: 1104, baseType: !2052, size: 64, offset: 11328)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1213, line: 46, flags: DIFlagFwdDecl)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1212, file: !1213, line: 1105, baseType: !1168, size: 192, offset: 11392)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1212, file: !1213, line: 1106, baseType: !7, size: 32, offset: 11584)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1212, file: !1213, line: 1109, baseType: !2057, size: 128, offset: 11648)
!2057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2058, size: 128, elements: !1564)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1213, line: 51, flags: DIFlagFwdDecl)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1212, file: !1213, line: 1110, baseType: !1168, size: 192, offset: 11776)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1212, file: !1213, line: 1111, baseType: !216, size: 128, offset: 11968)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1212, file: !1213, line: 1173, baseType: !2063, size: 64, offset: 12096)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2065, line: 62, size: 256, align: 256, elements: !2066)
!2065 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2066 = !{!2067, !2068, !2069, !2074}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2064, file: !2065, line: 75, baseType: !412, size: 32)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2064, file: !2065, line: 90, baseType: !412, size: 32, offset: 32)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2064, file: !2065, line: 124, baseType: !2070, size: 64, offset: 64)
!2070 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2064, file: !2065, line: 109, size: 64, elements: !2071)
!2071 = !{!2072, !2073}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2070, file: !2065, line: 110, baseType: !417, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2070, file: !2065, line: 112, baseType: !417, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2064, file: !2065, line: 144, baseType: !412, size: 32, offset: 128)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1212, file: !1213, line: 1174, baseType: !410, size: 32, offset: 12160)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1212, file: !1213, line: 1179, baseType: !149, size: 64, offset: 12224)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1212, file: !1213, line: 1182, baseType: !2078, size: 128, offset: 12288)
!2078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1146, line: 76, size: 128, elements: !2079)
!2079 = !{!2080, !2085, !2086}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2078, file: !1146, line: 85, baseType: !2081, size: 64)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2082, line: 7, size: 64, elements: !2083)
!2082 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2083 = !{!2084}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2081, file: !2082, line: 12, baseType: !1362, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2078, file: !1146, line: 88, baseType: !485, size: 8, offset: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2078, file: !1146, line: 95, baseType: !485, size: 8, offset: 72)
!2087 = !DIDerivedType(tag: DW_TAG_member, scope: !1212, file: !1213, line: 1184, baseType: !2088, size: 128, offset: 12416)
!2088 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1212, file: !1213, line: 1184, size: 128, elements: !2089)
!2089 = !{!2090, !2091}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2088, file: !1213, line: 1185, baseType: !1225, size: 32)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2088, file: !1213, line: 1186, baseType: !360, size: 128, align: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1212, file: !1213, line: 1190, baseType: !2093, size: 64, offset: 12544)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1213, line: 53, flags: DIFlagFwdDecl)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1212, file: !1213, line: 1192, baseType: !2096, size: 128, offset: 12608)
!2096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1146, line: 64, size: 128, elements: !2097)
!2097 = !{!2098, !2099, !2100}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2096, file: !1146, line: 65, baseType: !716, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2096, file: !1146, line: 67, baseType: !412, size: 32, offset: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2096, file: !1146, line: 68, baseType: !412, size: 32, offset: 96)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1212, file: !1213, line: 1206, baseType: !196, size: 32, offset: 12736)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1212, file: !1213, line: 1207, baseType: !196, size: 32, offset: 12768)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1212, file: !1213, line: 1209, baseType: !149, size: 64, offset: 12800)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1212, file: !1213, line: 1219, baseType: !416, size: 64, offset: 12864)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1212, file: !1213, line: 1220, baseType: !416, size: 64, offset: 12928)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1212, file: !1213, line: 1317, baseType: !196, size: 32, offset: 12992)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1212, file: !1213, line: 1319, baseType: !1211, size: 64, offset: 13056)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1212, file: !1213, line: 1322, baseType: !2109, size: 64, offset: 13120)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2111, line: 56, size: 512, elements: !2112)
!2111 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2112 = !{!2113, !2114, !2115, !2116, !2117, !2118, !2119, !2121}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2110, file: !2111, line: 57, baseType: !2109, size: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2110, file: !2111, line: 58, baseType: !148, size: 64, offset: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2110, file: !2111, line: 59, baseType: !149, size: 64, offset: 128)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2110, file: !2111, line: 60, baseType: !149, size: 64, offset: 192)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2110, file: !2111, line: 61, baseType: !815, size: 64, offset: 256)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2110, file: !2111, line: 62, baseType: !7, size: 32, offset: 320)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2110, file: !2111, line: 63, baseType: !2120, size: 64, offset: 384)
!2120 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !147, line: 153, baseType: !416)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2110, file: !2111, line: 64, baseType: !2122, size: 64, offset: 448)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1212, file: !1213, line: 1326, baseType: !1225, size: 32, offset: 13184)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1212, file: !1213, line: 1342, baseType: !148, size: 64, offset: 13248)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1212, file: !1213, line: 1343, baseType: !417, size: 64, offset: 13312)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1212, file: !1213, line: 1344, baseType: !416, size: 64, offset: 13376)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1212, file: !1213, line: 1345, baseType: !417, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1212, file: !1213, line: 1346, baseType: !417, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1212, file: !1213, line: 1347, baseType: !417, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1212, file: !1213, line: 1348, baseType: !360, size: 128, align: 64, offset: 13504)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1212, file: !1213, line: 1358, baseType: !2133, size: 34816, offset: 13824)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2134, line: 485, size: 34816, elements: !2135)
!2134 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2135 = !{!2136, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2165, !2166, !2167, !2168, !2169, !2170, !2173, !2174, !2175}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2133, file: !2134, line: 487, baseType: !2137, size: 192)
!2137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2138, size: 192, elements: !271)
!2138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2139, line: 16, size: 64, elements: !2140)
!2139 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2140 = !{!2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2138, file: !2139, line: 17, baseType: !854, size: 16)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2138, file: !2139, line: 18, baseType: !854, size: 16, offset: 16)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2138, file: !2139, line: 19, baseType: !854, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2138, file: !2139, line: 19, baseType: !854, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2138, file: !2139, line: 19, baseType: !854, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2138, file: !2139, line: 19, baseType: !854, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2138, file: !2139, line: 19, baseType: !854, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2138, file: !2139, line: 20, baseType: !854, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2138, file: !2139, line: 20, baseType: !854, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2138, file: !2139, line: 20, baseType: !854, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2138, file: !2139, line: 20, baseType: !854, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2138, file: !2139, line: 20, baseType: !854, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2138, file: !2139, line: 20, baseType: !854, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2133, file: !2134, line: 491, baseType: !149, size: 64, offset: 192)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2133, file: !2134, line: 495, baseType: !312, size: 16, offset: 256)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2133, file: !2134, line: 496, baseType: !312, size: 16, offset: 272)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2133, file: !2134, line: 497, baseType: !312, size: 16, offset: 288)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2133, file: !2134, line: 498, baseType: !312, size: 16, offset: 304)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2133, file: !2134, line: 502, baseType: !149, size: 64, offset: 320)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2133, file: !2134, line: 503, baseType: !149, size: 64, offset: 384)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2133, file: !2134, line: 514, baseType: !2162, size: 256, offset: 448)
!2162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2163, size: 256, elements: !1150)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2134, line: 483, flags: DIFlagFwdDecl)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2133, file: !2134, line: 516, baseType: !149, size: 64, offset: 704)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2133, file: !2134, line: 518, baseType: !149, size: 64, offset: 768)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2133, file: !2134, line: 520, baseType: !149, size: 64, offset: 832)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2133, file: !2134, line: 521, baseType: !149, size: 64, offset: 896)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2133, file: !2134, line: 522, baseType: !149, size: 64, offset: 960)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2133, file: !2134, line: 528, baseType: !2171, size: 64, offset: 1024)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2134, line: 10, flags: DIFlagFwdDecl)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2133, file: !2134, line: 535, baseType: !149, size: 64, offset: 1088)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2133, file: !2134, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2133, file: !2134, line: 540, baseType: !2176, size: 33280, offset: 1536)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2177, line: 317, size: 33280, elements: !2178)
!2177 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2178 = !{!2179, !2180, !2181}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2176, file: !2177, line: 330, baseType: !7, size: 32)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2176, file: !2177, line: 337, baseType: !149, size: 64, offset: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2176, file: !2177, line: 348, baseType: !2182, size: 32768, offset: 512)
!2182 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2177, line: 304, size: 32768, elements: !2183)
!2183 = !{!2184, !2199, !2238, !2288, !2301}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2182, file: !2177, line: 305, baseType: !2185, size: 896)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2177, line: 12, size: 896, elements: !2186)
!2186 = !{!2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2198}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2185, file: !2177, line: 13, baseType: !410, size: 32)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2185, file: !2177, line: 14, baseType: !410, size: 32, offset: 32)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2185, file: !2177, line: 15, baseType: !410, size: 32, offset: 64)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2185, file: !2177, line: 16, baseType: !410, size: 32, offset: 96)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2185, file: !2177, line: 17, baseType: !410, size: 32, offset: 128)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2185, file: !2177, line: 18, baseType: !410, size: 32, offset: 160)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2185, file: !2177, line: 19, baseType: !410, size: 32, offset: 192)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2185, file: !2177, line: 22, baseType: !2195, size: 640, offset: 224)
!2195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 640, elements: !2196)
!2196 = !{!2197}
!2197 = !DISubrange(count: 20)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2185, file: !2177, line: 25, baseType: !410, size: 32, offset: 864)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2182, file: !2177, line: 306, baseType: !2200, size: 4096, align: 128)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2177, line: 34, size: 4096, align: 128, elements: !2201)
!2201 = !{!2202, !2203, !2204, !2205, !2206, !2221, !2222, !2223, !2227, !2229, !2233}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2200, file: !2177, line: 35, baseType: !854, size: 16)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2200, file: !2177, line: 36, baseType: !854, size: 16, offset: 16)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2200, file: !2177, line: 37, baseType: !854, size: 16, offset: 32)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2200, file: !2177, line: 38, baseType: !854, size: 16, offset: 48)
!2206 = !DIDerivedType(tag: DW_TAG_member, scope: !2200, file: !2177, line: 39, baseType: !2207, size: 128, offset: 64)
!2207 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2200, file: !2177, line: 39, size: 128, elements: !2208)
!2208 = !{!2209, !2214}
!2209 = !DIDerivedType(tag: DW_TAG_member, scope: !2207, file: !2177, line: 40, baseType: !2210, size: 128)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2207, file: !2177, line: 40, size: 128, elements: !2211)
!2211 = !{!2212, !2213}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2210, file: !2177, line: 41, baseType: !416, size: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2210, file: !2177, line: 42, baseType: !416, size: 64, offset: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, scope: !2207, file: !2177, line: 44, baseType: !2215, size: 128)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2207, file: !2177, line: 44, size: 128, elements: !2216)
!2216 = !{!2217, !2218, !2219, !2220}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2215, file: !2177, line: 45, baseType: !410, size: 32)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2215, file: !2177, line: 46, baseType: !410, size: 32, offset: 32)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2215, file: !2177, line: 47, baseType: !410, size: 32, offset: 64)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2215, file: !2177, line: 48, baseType: !410, size: 32, offset: 96)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2200, file: !2177, line: 51, baseType: !410, size: 32, offset: 192)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2200, file: !2177, line: 52, baseType: !410, size: 32, offset: 224)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2200, file: !2177, line: 55, baseType: !2224, size: 1024, offset: 256)
!2224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 1024, elements: !2225)
!2225 = !{!2226}
!2226 = !DISubrange(count: 32)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2200, file: !2177, line: 58, baseType: !2228, size: 2048, offset: 1280)
!2228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 2048, elements: !275)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2200, file: !2177, line: 60, baseType: !2230, size: 384, offset: 3328)
!2230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 384, elements: !2231)
!2231 = !{!2232}
!2232 = !DISubrange(count: 12)
!2233 = !DIDerivedType(tag: DW_TAG_member, scope: !2200, file: !2177, line: 62, baseType: !2234, size: 384, offset: 3712)
!2234 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2200, file: !2177, line: 62, size: 384, elements: !2235)
!2235 = !{!2236, !2237}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2234, file: !2177, line: 63, baseType: !2230, size: 384)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2234, file: !2177, line: 64, baseType: !2230, size: 384)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2182, file: !2177, line: 307, baseType: !2239, size: 1088)
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2177, line: 79, size: 1088, elements: !2240)
!2240 = !{!2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2287}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2239, file: !2177, line: 80, baseType: !410, size: 32)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2239, file: !2177, line: 81, baseType: !410, size: 32, offset: 32)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2239, file: !2177, line: 82, baseType: !410, size: 32, offset: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2239, file: !2177, line: 83, baseType: !410, size: 32, offset: 96)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2239, file: !2177, line: 84, baseType: !410, size: 32, offset: 128)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2239, file: !2177, line: 85, baseType: !410, size: 32, offset: 160)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2239, file: !2177, line: 86, baseType: !410, size: 32, offset: 192)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2239, file: !2177, line: 88, baseType: !2195, size: 640, offset: 224)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2239, file: !2177, line: 89, baseType: !1347, size: 8, offset: 864)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2239, file: !2177, line: 90, baseType: !1347, size: 8, offset: 872)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2239, file: !2177, line: 91, baseType: !1347, size: 8, offset: 880)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2239, file: !2177, line: 92, baseType: !1347, size: 8, offset: 888)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2239, file: !2177, line: 93, baseType: !1347, size: 8, offset: 896)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2239, file: !2177, line: 94, baseType: !1347, size: 8, offset: 904)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2239, file: !2177, line: 95, baseType: !2256, size: 64, offset: 960)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2258, line: 11, size: 128, elements: !2259)
!2258 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2259 = !{!2260, !2261}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2257, file: !2258, line: 12, baseType: !305, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2257, file: !2258, line: 13, baseType: !2262, size: 64, offset: 64)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2264, line: 56, size: 1344, elements: !2265)
!2264 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2265 = !{!2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2263, file: !2264, line: 61, baseType: !149, size: 64)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2263, file: !2264, line: 62, baseType: !149, size: 64, offset: 64)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2263, file: !2264, line: 63, baseType: !149, size: 64, offset: 128)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2263, file: !2264, line: 64, baseType: !149, size: 64, offset: 192)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2263, file: !2264, line: 65, baseType: !149, size: 64, offset: 256)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2263, file: !2264, line: 66, baseType: !149, size: 64, offset: 320)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2263, file: !2264, line: 68, baseType: !149, size: 64, offset: 384)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2263, file: !2264, line: 69, baseType: !149, size: 64, offset: 448)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2263, file: !2264, line: 70, baseType: !149, size: 64, offset: 512)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2263, file: !2264, line: 71, baseType: !149, size: 64, offset: 576)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2263, file: !2264, line: 72, baseType: !149, size: 64, offset: 640)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2263, file: !2264, line: 73, baseType: !149, size: 64, offset: 704)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2263, file: !2264, line: 74, baseType: !149, size: 64, offset: 768)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2263, file: !2264, line: 75, baseType: !149, size: 64, offset: 832)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2263, file: !2264, line: 76, baseType: !149, size: 64, offset: 896)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2263, file: !2264, line: 81, baseType: !149, size: 64, offset: 960)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2263, file: !2264, line: 83, baseType: !149, size: 64, offset: 1024)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2263, file: !2264, line: 84, baseType: !149, size: 64, offset: 1088)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2263, file: !2264, line: 85, baseType: !149, size: 64, offset: 1152)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2263, file: !2264, line: 86, baseType: !149, size: 64, offset: 1216)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2263, file: !2264, line: 87, baseType: !149, size: 64, offset: 1280)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2239, file: !2177, line: 96, baseType: !410, size: 32, offset: 1024)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2182, file: !2177, line: 308, baseType: !2289, size: 4608, align: 512)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2177, line: 289, size: 4608, align: 512, elements: !2290)
!2290 = !{!2291, !2292, !2299}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2289, file: !2177, line: 290, baseType: !2200, size: 4096, align: 128)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2289, file: !2177, line: 291, baseType: !2293, size: 512, offset: 4096)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2177, line: 268, size: 512, elements: !2294)
!2294 = !{!2295, !2296, !2297}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2293, file: !2177, line: 269, baseType: !416, size: 64)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2293, file: !2177, line: 270, baseType: !416, size: 64, offset: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2293, file: !2177, line: 271, baseType: !2298, size: 384, offset: 128)
!2298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 384, elements: !1620)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2289, file: !2177, line: 292, baseType: !2300, offset: 4608)
!2300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1347, elements: !1718)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2182, file: !2177, line: 309, baseType: !2302, size: 32768)
!2302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1347, size: 32768, elements: !2303)
!2303 = !{!2304}
!2304 = !DISubrange(count: 4096)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1208, file: !718, line: 378, baseType: !2306, size: 64, offset: 64)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1204, file: !718, line: 384, baseType: !1497, size: 192, offset: 192)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !973, file: !718, line: 500, baseType: !229, offset: 6656)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !973, file: !718, line: 501, baseType: !2310, size: 64, offset: 6656)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !718, line: 387, flags: DIFlagFwdDecl)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !973, file: !718, line: 516, baseType: !1708, size: 64, offset: 6720)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !973, file: !718, line: 519, baseType: !347, size: 64, offset: 6784)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !973, file: !718, line: 521, baseType: !2315, size: 64, offset: 6848)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !718, line: 521, flags: DIFlagFwdDecl)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !973, file: !718, line: 545, baseType: !742, size: 32, offset: 6912)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !973, file: !718, line: 548, baseType: !485, size: 8, offset: 6944)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !973, file: !718, line: 550, baseType: !2320, offset: 6952)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2321, line: 142, elements: !243)
!2321 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !973, file: !718, line: 554, baseType: !1952, size: 256, offset: 6976)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !973, file: !718, line: 557, baseType: !410, size: 32, offset: 7232)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !970, file: !718, line: 565, baseType: !2325, offset: 7296)
!2325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, elements: !2326)
!2326 = !{!2327}
!2327 = !DISubrange(count: -1)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !966, file: !718, line: 151, baseType: !742, size: 32)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !959, file: !718, line: 156, baseType: !229, offset: 256)
!2330 = !DIDerivedType(tag: DW_TAG_member, scope: !722, file: !718, line: 159, baseType: !2331, size: 128)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !722, file: !718, line: 159, size: 128, elements: !2332)
!2332 = !{!2333, !2397}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2331, file: !718, line: 161, baseType: !2334, size: 64)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2336)
!2336 = !{!2337, !2347, !2368, !2369, !2370, !2371, !2372, !2384, !2385, !2386}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2335, file: !31, line: 111, baseType: !2338, size: 384)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2339)
!2339 = !{!2340, !2342, !2343, !2344, !2345, !2346}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2338, file: !31, line: 20, baseType: !2341, size: 64)
!2341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2338, file: !31, line: 21, baseType: !2341, size: 64, offset: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2338, file: !31, line: 22, baseType: !2341, size: 64, offset: 128)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2338, file: !31, line: 23, baseType: !149, size: 64, offset: 192)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2338, file: !31, line: 24, baseType: !149, size: 64, offset: 256)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2338, file: !31, line: 25, baseType: !149, size: 64, offset: 320)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2335, file: !31, line: 112, baseType: !2348, size: 64, offset: 384)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2350, line: 105, size: 128, elements: !2351)
!2350 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2351 = !{!2352, !2353}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2349, file: !2350, line: 110, baseType: !149, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2349, file: !2350, line: 118, baseType: !2354, size: 64, offset: 64)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2350, line: 95, size: 448, elements: !2356)
!2356 = !{!2357, !2358, !2363, !2364, !2365, !2366, !2367}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2355, file: !2350, line: 96, baseType: !766, size: 64)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2355, file: !2350, line: 97, baseType: !2359, size: 64, offset: 64)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2350, line: 60, baseType: !2361)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{null, !2348}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2355, file: !2350, line: 98, baseType: !2359, size: 64, offset: 128)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2355, file: !2350, line: 99, baseType: !485, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2355, file: !2350, line: 100, baseType: !485, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2355, file: !2350, line: 101, baseType: !360, size: 128, align: 64, offset: 256)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2355, file: !2350, line: 102, baseType: !2348, size: 64, offset: 384)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2335, file: !31, line: 113, baseType: !2349, size: 128, offset: 448)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2335, file: !31, line: 114, baseType: !1497, size: 192, offset: 576)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2335, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2335, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2335, file: !31, line: 117, baseType: !2373, size: 64, offset: 832)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2375)
!2375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2376)
!2376 = !{!2377, !2378, !2382, !2383}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2375, file: !31, line: 73, baseType: !835, size: 64)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2375, file: !31, line: 78, baseType: !2379, size: 64, offset: 64)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{null, !2334}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2375, file: !31, line: 83, baseType: !2379, size: 64, offset: 128)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2375, file: !31, line: 89, baseType: !1022, size: 64, offset: 192)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2335, file: !31, line: 118, baseType: !148, size: 64, offset: 896)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2335, file: !31, line: 119, baseType: !196, size: 32, offset: 960)
!2386 = !DIDerivedType(tag: DW_TAG_member, scope: !2335, file: !31, line: 120, baseType: !2387, size: 128, offset: 1024)
!2387 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2335, file: !31, line: 120, size: 128, elements: !2388)
!2388 = !{!2389, !2395}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2387, file: !31, line: 121, baseType: !2390, size: 128)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2391, line: 6, size: 128, elements: !2392)
!2391 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2392 = !{!2393, !2394}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2390, file: !2391, line: 7, baseType: !416, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2390, file: !2391, line: 8, baseType: !416, size: 64, offset: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2387, file: !31, line: 122, baseType: !2396)
!2396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2390, elements: !1718)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2331, file: !718, line: 162, baseType: !148, size: 64, offset: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !722, file: !718, line: 176, baseType: !360, size: 128, align: 64)
!2399 = !DIDerivedType(tag: DW_TAG_member, scope: !717, file: !718, line: 179, baseType: !2400, size: 32, offset: 384)
!2400 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !717, file: !718, line: 179, size: 32, elements: !2401)
!2401 = !{!2402, !2403, !2404, !2405}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2400, file: !718, line: 184, baseType: !742, size: 32)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2400, file: !718, line: 192, baseType: !7, size: 32)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2400, file: !718, line: 194, baseType: !7, size: 32)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2400, file: !718, line: 195, baseType: !196, size: 32)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !717, file: !718, line: 199, baseType: !742, size: 32, offset: 416)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !652, file: !44, line: 1964, baseType: !2408, size: 64, offset: 1344)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!305, !594, !2411}
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2413, line: 12, size: 256, elements: !2414)
!2413 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2414 = !{!2415, !2416, !2417, !2418, !2419}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2412, file: !2413, line: 13, baseType: !146, size: 32)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2412, file: !2413, line: 16, baseType: !196, size: 32, offset: 32)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2412, file: !2413, line: 23, baseType: !149, size: 64, offset: 64)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2412, file: !2413, line: 30, baseType: !149, size: 64, offset: 128)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2412, file: !2413, line: 33, baseType: !2420, size: 64, offset: 192)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !718, line: 27, flags: DIFlagFwdDecl)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !652, file: !44, line: 1966, baseType: !2408, size: 64, offset: 1408)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !595, file: !44, line: 1424, baseType: !2424, size: 64, offset: 448)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2426)
!2426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2427)
!2427 = !{!2428, !2474, !2478, !2482, !2483, !2484, !2485, !2486, !2491, !2496, !2500}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2426, file: !38, line: 323, baseType: !2429, size: 64)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = !DISubroutineType(types: !2431)
!2431 = !{!196, !2432}
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2434)
!2434 = !{!2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2459, !2460, !2461}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2433, file: !38, line: 295, baseType: !634, size: 128)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2433, file: !38, line: 296, baseType: !216, size: 128, offset: 128)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2433, file: !38, line: 297, baseType: !216, size: 128, offset: 256)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2433, file: !38, line: 298, baseType: !216, size: 128, offset: 384)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2433, file: !38, line: 299, baseType: !1168, size: 192, offset: 512)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2433, file: !38, line: 300, baseType: !229, offset: 704)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2433, file: !38, line: 301, baseType: !742, size: 32, offset: 704)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2433, file: !38, line: 302, baseType: !594, size: 64, offset: 768)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2433, file: !38, line: 303, baseType: !2444, size: 64, offset: 832)
!2444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2445)
!2445 = !{!2446, !2458}
!2446 = !DIDerivedType(tag: DW_TAG_member, scope: !2444, file: !38, line: 69, baseType: !2447, size: 32)
!2447 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2444, file: !38, line: 69, size: 32, elements: !2448)
!2448 = !{!2449, !2450, !2451}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2447, file: !38, line: 70, baseType: !430, size: 32)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2447, file: !38, line: 71, baseType: !438, size: 32)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2447, file: !38, line: 72, baseType: !2452, size: 32)
!2452 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2453, line: 24, baseType: !2454)
!2453 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2454 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2453, line: 22, size: 32, elements: !2455)
!2455 = !{!2456}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2454, file: !2453, line: 23, baseType: !2457, size: 32)
!2457 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2453, line: 20, baseType: !436)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2444, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2433, file: !38, line: 304, baseType: !526, size: 64, offset: 896)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2433, file: !38, line: 305, baseType: !149, size: 64, offset: 960)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2433, file: !38, line: 306, baseType: !2462, size: 576, offset: 1024)
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2463)
!2463 = !{!2464, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2462, file: !38, line: 206, baseType: !2465, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !528)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2462, file: !38, line: 207, baseType: !2465, size: 64, offset: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2462, file: !38, line: 208, baseType: !2465, size: 64, offset: 128)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2462, file: !38, line: 209, baseType: !2465, size: 64, offset: 192)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2462, file: !38, line: 210, baseType: !2465, size: 64, offset: 256)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2462, file: !38, line: 211, baseType: !2465, size: 64, offset: 320)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2462, file: !38, line: 212, baseType: !2465, size: 64, offset: 384)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2462, file: !38, line: 213, baseType: !534, size: 64, offset: 448)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2462, file: !38, line: 214, baseType: !534, size: 64, offset: 512)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2426, file: !38, line: 324, baseType: !2475, size: 64, offset: 64)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!2432, !594, !196}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2426, file: !38, line: 325, baseType: !2479, size: 64, offset: 128)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DISubroutineType(types: !2481)
!2481 = !{null, !2432}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2426, file: !38, line: 326, baseType: !2429, size: 64, offset: 192)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2426, file: !38, line: 327, baseType: !2429, size: 64, offset: 256)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2426, file: !38, line: 328, baseType: !2429, size: 64, offset: 320)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2426, file: !38, line: 329, baseType: !680, size: 64, offset: 384)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2426, file: !38, line: 332, baseType: !2487, size: 64, offset: 448)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{!2490, !424}
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2426, file: !38, line: 333, baseType: !2492, size: 64, offset: 512)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!196, !424, !2495}
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2426, file: !38, line: 335, baseType: !2497, size: 64, offset: 576)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!196, !424, !2490}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2426, file: !38, line: 337, baseType: !2501, size: 64, offset: 640)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!196, !594, !2504}
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !595, file: !44, line: 1425, baseType: !2506, size: 64, offset: 512)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2508)
!2508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2509)
!2509 = !{!2510, !2514, !2515, !2519, !2520, !2521, !2536, !2559, !2563, !2564, !2587}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2508, file: !38, line: 429, baseType: !2511, size: 64)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{!196, !594, !196, !196, !544}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2508, file: !38, line: 430, baseType: !680, size: 64, offset: 64)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2508, file: !38, line: 431, baseType: !2516, size: 64, offset: 128)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!196, !594, !7}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2508, file: !38, line: 432, baseType: !2516, size: 64, offset: 192)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2508, file: !38, line: 433, baseType: !680, size: 64, offset: 256)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2508, file: !38, line: 434, baseType: !2522, size: 64, offset: 320)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{!196, !594, !196, !2525}
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2527)
!2527 = !{!2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2526, file: !38, line: 416, baseType: !196, size: 32)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2526, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2526, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2526, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2526, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2526, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2526, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2526, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2508, file: !38, line: 435, baseType: !2537, size: 64, offset: 384)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!196, !594, !2444, !2540}
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2542)
!2542 = !{!2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2541, file: !38, line: 344, baseType: !196, size: 32)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2541, file: !38, line: 345, baseType: !416, size: 64, offset: 64)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2541, file: !38, line: 346, baseType: !416, size: 64, offset: 128)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2541, file: !38, line: 347, baseType: !416, size: 64, offset: 192)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2541, file: !38, line: 348, baseType: !416, size: 64, offset: 256)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2541, file: !38, line: 349, baseType: !416, size: 64, offset: 320)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2541, file: !38, line: 350, baseType: !416, size: 64, offset: 384)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2541, file: !38, line: 351, baseType: !772, size: 64, offset: 448)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2541, file: !38, line: 353, baseType: !772, size: 64, offset: 512)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2541, file: !38, line: 354, baseType: !196, size: 32, offset: 576)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2541, file: !38, line: 355, baseType: !196, size: 32, offset: 608)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2541, file: !38, line: 356, baseType: !416, size: 64, offset: 640)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2541, file: !38, line: 357, baseType: !416, size: 64, offset: 704)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2541, file: !38, line: 358, baseType: !416, size: 64, offset: 768)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2541, file: !38, line: 359, baseType: !772, size: 64, offset: 832)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2541, file: !38, line: 360, baseType: !196, size: 32, offset: 896)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2508, file: !38, line: 436, baseType: !2560, size: 64, offset: 448)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{!196, !594, !2504, !2540}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2508, file: !38, line: 438, baseType: !2537, size: 64, offset: 512)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2508, file: !38, line: 439, baseType: !2565, size: 64, offset: 576)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!196, !594, !2568}
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2570)
!2570 = !{!2571, !2572}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2569, file: !38, line: 410, baseType: !7, size: 32)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2569, file: !38, line: 411, baseType: !2573, size: 1344, offset: 64)
!2573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2574, size: 1344, elements: !271)
!2574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2575)
!2575 = !{!2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2586}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2574, file: !38, line: 396, baseType: !7, size: 32)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2574, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2574, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2574, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2574, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2574, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2574, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2574, file: !38, line: 404, baseType: !418, size: 64, offset: 256)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2574, file: !38, line: 405, baseType: !2585, size: 64, offset: 320)
!2585 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !147, line: 126, baseType: !416)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2574, file: !38, line: 406, baseType: !2585, size: 64, offset: 384)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2508, file: !38, line: 440, baseType: !2516, size: 64, offset: 640)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !595, file: !44, line: 1426, baseType: !2589, size: 64, offset: 576)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2591)
!2591 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !595, file: !44, line: 1427, baseType: !149, size: 64, offset: 640)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !595, file: !44, line: 1428, baseType: !149, size: 64, offset: 704)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !595, file: !44, line: 1429, baseType: !149, size: 64, offset: 768)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !595, file: !44, line: 1430, baseType: !377, size: 64, offset: 832)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !595, file: !44, line: 1431, baseType: !762, size: 256, offset: 896)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !595, file: !44, line: 1432, baseType: !196, size: 32, offset: 1152)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !595, file: !44, line: 1433, baseType: !742, size: 32, offset: 1184)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !595, file: !44, line: 1437, baseType: !2600, size: 64, offset: 1216)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2603)
!2603 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !595, file: !44, line: 1449, baseType: !2605, size: 64, offset: 1280)
!2605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !393, line: 34, size: 64, elements: !2606)
!2606 = !{!2607}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2605, file: !393, line: 35, baseType: !396, size: 64)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !595, file: !44, line: 1450, baseType: !216, size: 128, offset: 1344)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !595, file: !44, line: 1451, baseType: !2610, size: 64, offset: 1472)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !595, file: !44, line: 1452, baseType: !1918, size: 64, offset: 1536)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !595, file: !44, line: 1453, baseType: !2614, size: 64, offset: 1600)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !595, file: !44, line: 1454, baseType: !634, size: 128, offset: 1664)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !595, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !595, file: !44, line: 1456, baseType: !2619, size: 2432, offset: 1856)
!2619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2620)
!2620 = !{!2621, !2622, !2623, !2625, !2657}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2619, file: !38, line: 519, baseType: !7, size: 32)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2619, file: !38, line: 520, baseType: !762, size: 256, offset: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2619, file: !38, line: 521, baseType: !2624, size: 192, offset: 320)
!2624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 192, elements: !271)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2619, file: !38, line: 522, baseType: !2626, size: 1728, offset: 512)
!2626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2627, size: 1728, elements: !271)
!2627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2628)
!2628 = !{!2629, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2627, file: !38, line: 223, baseType: !2630, size: 64)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2632)
!2632 = !{!2633, !2634, !2647, !2648}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2631, file: !38, line: 444, baseType: !196, size: 32)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2631, file: !38, line: 445, baseType: !2635, size: 64, offset: 64)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2637)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2638)
!2638 = !{!2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2637, file: !38, line: 311, baseType: !680, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2637, file: !38, line: 312, baseType: !680, size: 64, offset: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2637, file: !38, line: 313, baseType: !680, size: 64, offset: 128)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2637, file: !38, line: 314, baseType: !680, size: 64, offset: 192)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2637, file: !38, line: 315, baseType: !2429, size: 64, offset: 256)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2637, file: !38, line: 316, baseType: !2429, size: 64, offset: 320)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2637, file: !38, line: 317, baseType: !2429, size: 64, offset: 384)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2637, file: !38, line: 318, baseType: !2501, size: 64, offset: 448)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2631, file: !38, line: 446, baseType: !189, size: 64, offset: 128)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2631, file: !38, line: 447, baseType: !2630, size: 64, offset: 192)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2627, file: !38, line: 224, baseType: !196, size: 32, offset: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2627, file: !38, line: 226, baseType: !216, size: 128, offset: 128)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2627, file: !38, line: 227, baseType: !149, size: 64, offset: 256)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2627, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2627, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2627, file: !38, line: 230, baseType: !2465, size: 64, offset: 384)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2627, file: !38, line: 231, baseType: !2465, size: 64, offset: 448)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2627, file: !38, line: 232, baseType: !148, size: 64, offset: 512)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2619, file: !38, line: 523, baseType: !2658, size: 192, offset: 2240)
!2658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2635, size: 192, elements: !271)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !595, file: !44, line: 1458, baseType: !2660, size: 2112, offset: 4288)
!2660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2661)
!2661 = !{!2662, !2663, !2664}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2660, file: !44, line: 1411, baseType: !196, size: 32)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2660, file: !44, line: 1412, baseType: !1476, size: 128, offset: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2660, file: !44, line: 1413, baseType: !2665, size: 1920, offset: 192)
!2665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2666, size: 1920, elements: !271)
!2666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2667, line: 12, size: 640, elements: !2668)
!2667 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2668 = !{!2669, !2677, !2679, !2684, !2685}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2666, file: !2667, line: 13, baseType: !2670, size: 320)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2671, line: 17, size: 320, elements: !2672)
!2671 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2672 = !{!2673, !2674, !2675, !2676}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2670, file: !2671, line: 18, baseType: !196, size: 32)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2670, file: !2671, line: 19, baseType: !196, size: 32, offset: 32)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2670, file: !2671, line: 20, baseType: !1476, size: 128, offset: 64)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2670, file: !2671, line: 22, baseType: !360, size: 128, align: 64, offset: 192)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2666, file: !2667, line: 14, baseType: !2678, size: 64, offset: 320)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2666, file: !2667, line: 15, baseType: !2680, size: 64, offset: 384)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2681, line: 16, size: 64, elements: !2682)
!2681 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2682 = !{!2683}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2680, file: !2681, line: 17, baseType: !1211, size: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2666, file: !2667, line: 16, baseType: !1476, size: 128, offset: 448)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2666, file: !2667, line: 17, baseType: !742, size: 32, offset: 576)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !595, file: !44, line: 1465, baseType: !148, size: 64, offset: 6400)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !595, file: !44, line: 1468, baseType: !410, size: 32, offset: 6464)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !595, file: !44, line: 1470, baseType: !534, size: 64, offset: 6528)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !595, file: !44, line: 1471, baseType: !534, size: 64, offset: 6592)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !595, file: !44, line: 1473, baseType: !412, size: 32, offset: 6656)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !595, file: !44, line: 1474, baseType: !2692, size: 64, offset: 6720)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !595, file: !44, line: 1477, baseType: !2695, size: 256, offset: 6784)
!2695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 256, elements: !2225)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !595, file: !44, line: 1478, baseType: !2697, size: 128, offset: 7040)
!2697 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2698, line: 18, baseType: !2699)
!2698 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2699 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2698, line: 16, size: 128, elements: !2700)
!2700 = !{!2701}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2699, file: !2698, line: 17, baseType: !2702, size: 128)
!2702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1348, size: 128, elements: !1730)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !595, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !595, file: !44, line: 1481, baseType: !2705, size: 32, offset: 7200)
!2705 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !147, line: 150, baseType: !7)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !595, file: !44, line: 1487, baseType: !1168, size: 192, offset: 7232)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !595, file: !44, line: 1493, baseType: !187, size: 64, offset: 7424)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !595, file: !44, line: 1495, baseType: !2709, size: 64, offset: 7488)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2711)
!2711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !375, line: 135, size: 1024, align: 512, elements: !2712)
!2712 = !{!2713, !2717, !2718, !2725, !2731, !2735, !2739, !2743, !2744, !2748, !2752, !2757, !2761}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2711, file: !375, line: 136, baseType: !2714, size: 64)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = !DISubroutineType(types: !2716)
!2716 = !{!196, !377, !7}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2711, file: !375, line: 137, baseType: !2714, size: 64, offset: 64)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2711, file: !375, line: 138, baseType: !2719, size: 64, offset: 128)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!196, !2722, !2724}
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !378)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2711, file: !375, line: 139, baseType: !2726, size: 64, offset: 192)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!196, !2722, !7, !187, !2729}
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !401)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2711, file: !375, line: 141, baseType: !2732, size: 64, offset: 256)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!196, !2722}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2711, file: !375, line: 142, baseType: !2736, size: 64, offset: 320)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!196, !377}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2711, file: !375, line: 143, baseType: !2740, size: 64, offset: 384)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = !DISubroutineType(types: !2742)
!2742 = !{null, !377}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2711, file: !375, line: 144, baseType: !2740, size: 64, offset: 448)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2711, file: !375, line: 145, baseType: !2745, size: 64, offset: 512)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DISubroutineType(types: !2747)
!2747 = !{null, !377, !424}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2711, file: !375, line: 146, baseType: !2749, size: 64, offset: 576)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DISubroutineType(types: !2751)
!2751 = !{!270, !377, !270, !196}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2711, file: !375, line: 147, baseType: !2753, size: 64, offset: 640)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{!373, !2756}
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2711, file: !375, line: 148, baseType: !2758, size: 64, offset: 704)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!196, !544, !485}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2711, file: !375, line: 149, baseType: !2762, size: 64, offset: 768)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!377, !377, !2765}
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !425)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !595, file: !44, line: 1500, baseType: !196, size: 32, offset: 7552)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !595, file: !44, line: 1502, baseType: !2769, size: 448, offset: 7616)
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2413, line: 60, size: 448, elements: !2770)
!2770 = !{!2771, !2776, !2777, !2778, !2779, !2780, !2781}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2769, file: !2413, line: 61, baseType: !2772, size: 64)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{!149, !2775, !2411}
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2769, file: !2413, line: 63, baseType: !2772, size: 64, offset: 64)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2769, file: !2413, line: 66, baseType: !305, size: 64, offset: 128)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2769, file: !2413, line: 67, baseType: !196, size: 32, offset: 192)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2769, file: !2413, line: 68, baseType: !7, size: 32, offset: 224)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2769, file: !2413, line: 71, baseType: !216, size: 128, offset: 256)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2769, file: !2413, line: 77, baseType: !2782, size: 64, offset: 384)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !595, file: !44, line: 1505, baseType: !766, size: 64, offset: 8064)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !595, file: !44, line: 1508, baseType: !766, size: 64, offset: 8128)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !595, file: !44, line: 1511, baseType: !196, size: 32, offset: 8192)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !595, file: !44, line: 1514, baseType: !904, size: 32, offset: 8224)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !595, file: !44, line: 1517, baseType: !2788, size: 64, offset: 8256)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1953, line: 18, flags: DIFlagFwdDecl)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !595, file: !44, line: 1518, baseType: !630, size: 64, offset: 8320)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !595, file: !44, line: 1525, baseType: !1708, size: 64, offset: 8384)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !595, file: !44, line: 1532, baseType: !2793, size: 64, offset: 8448)
!2793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2794, line: 52, size: 64, elements: !2795)
!2794 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2795 = !{!2796}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2793, file: !2794, line: 53, baseType: !2797, size: 64)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2794, line: 40, size: 256, elements: !2799)
!2799 = !{!2800, !2801, !2806}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2798, file: !2794, line: 42, baseType: !229)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2798, file: !2794, line: 44, baseType: !2802, size: 192)
!2802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2794, line: 28, size: 192, elements: !2803)
!2803 = !{!2804, !2805}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2802, file: !2794, line: 29, baseType: !216, size: 128)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2802, file: !2794, line: 31, baseType: !305, size: 64, offset: 128)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2798, file: !2794, line: 49, baseType: !305, size: 64, offset: 192)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !595, file: !44, line: 1533, baseType: !2793, size: 64, offset: 8512)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !595, file: !44, line: 1534, baseType: !360, size: 128, align: 64, offset: 8576)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !595, file: !44, line: 1535, baseType: !1952, size: 256, offset: 8704)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !595, file: !44, line: 1537, baseType: !1168, size: 192, offset: 8960)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !595, file: !44, line: 1542, baseType: !196, size: 32, offset: 9152)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !595, file: !44, line: 1545, baseType: !229, offset: 9184)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !595, file: !44, line: 1546, baseType: !216, size: 128, offset: 9216)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !595, file: !44, line: 1548, baseType: !229, offset: 9344)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !595, file: !44, line: 1549, baseType: !216, size: 128, offset: 9344)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !425, file: !44, line: 624, baseType: !729, size: 64, offset: 256)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !425, file: !44, line: 631, baseType: !149, size: 64, offset: 320)
!2818 = !DIDerivedType(tag: DW_TAG_member, scope: !425, file: !44, line: 639, baseType: !2819, size: 32, offset: 384)
!2819 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !425, file: !44, line: 639, size: 32, elements: !2820)
!2820 = !{!2821, !2823}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2819, file: !44, line: 640, baseType: !2822, size: 32)
!2822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2819, file: !44, line: 641, baseType: !7, size: 32)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !425, file: !44, line: 643, baseType: !508, size: 32, offset: 416)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !425, file: !44, line: 644, baseType: !526, size: 64, offset: 448)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !425, file: !44, line: 645, baseType: !530, size: 128, offset: 512)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !425, file: !44, line: 646, baseType: !530, size: 128, offset: 640)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !425, file: !44, line: 647, baseType: !530, size: 128, offset: 768)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !425, file: !44, line: 648, baseType: !229, offset: 896)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !425, file: !44, line: 649, baseType: !312, size: 16, offset: 896)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !425, file: !44, line: 650, baseType: !1347, size: 8, offset: 912)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !425, file: !44, line: 651, baseType: !1347, size: 8, offset: 920)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !425, file: !44, line: 652, baseType: !2585, size: 64, offset: 960)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !425, file: !44, line: 659, baseType: !149, size: 64, offset: 1024)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !425, file: !44, line: 660, baseType: !762, size: 256, offset: 1088)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !425, file: !44, line: 662, baseType: !149, size: 64, offset: 1344)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !425, file: !44, line: 663, baseType: !149, size: 64, offset: 1408)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !425, file: !44, line: 665, baseType: !634, size: 128, offset: 1472)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !425, file: !44, line: 666, baseType: !216, size: 128, offset: 1600)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !425, file: !44, line: 675, baseType: !216, size: 128, offset: 1728)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !425, file: !44, line: 676, baseType: !216, size: 128, offset: 1856)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !425, file: !44, line: 677, baseType: !216, size: 128, offset: 1984)
!2843 = !DIDerivedType(tag: DW_TAG_member, scope: !425, file: !44, line: 678, baseType: !2844, size: 128, offset: 2112)
!2844 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !425, file: !44, line: 678, size: 128, elements: !2845)
!2845 = !{!2846, !2847}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2844, file: !44, line: 679, baseType: !630, size: 64)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2844, file: !44, line: 680, baseType: !360, size: 128, align: 64)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !425, file: !44, line: 682, baseType: !768, size: 64, offset: 2240)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !425, file: !44, line: 683, baseType: !768, size: 64, offset: 2304)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !425, file: !44, line: 684, baseType: !742, size: 32, offset: 2368)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !425, file: !44, line: 685, baseType: !742, size: 32, offset: 2400)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !425, file: !44, line: 686, baseType: !742, size: 32, offset: 2432)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !425, file: !44, line: 688, baseType: !742, size: 32, offset: 2464)
!2854 = !DIDerivedType(tag: DW_TAG_member, scope: !425, file: !44, line: 690, baseType: !2855, size: 64, offset: 2496)
!2855 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !425, file: !44, line: 690, size: 64, elements: !2856)
!2856 = !{!2857, !3080}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2855, file: !44, line: 691, baseType: !2858, size: 64)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2860)
!2860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2861)
!2861 = !{!2862, !2863, !2867, !2872, !2876, !2877, !2878, !2882, !2895, !2896, !2904, !2908, !2909, !2913, !2914, !2918, !2923, !2924, !2928, !2932, !3040, !3044, !3045, !3049, !3050, !3054, !3058, !3063, !3067, !3071, !3075, !3079}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2860, file: !44, line: 1823, baseType: !189, size: 64)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2860, file: !44, line: 1824, baseType: !2864, size: 64, offset: 64)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!526, !347, !526, !196}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2860, file: !44, line: 1825, baseType: !2868, size: 64, offset: 128)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!301, !347, !270, !317, !2871}
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2860, file: !44, line: 1826, baseType: !2873, size: 64, offset: 192)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{!301, !347, !187, !317, !2871}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2860, file: !44, line: 1827, baseType: !839, size: 64, offset: 256)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2860, file: !44, line: 1828, baseType: !839, size: 64, offset: 320)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2860, file: !44, line: 1829, baseType: !2879, size: 64, offset: 384)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!196, !842, !485}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2860, file: !44, line: 1830, baseType: !2883, size: 64, offset: 448)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!196, !347, !2886}
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2888)
!2888 = !{!2889, !2894}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2887, file: !44, line: 1777, baseType: !2890, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2891)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{!196, !2886, !187, !196, !526, !416, !7}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2887, file: !44, line: 1778, baseType: !526, size: 64, offset: 64)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2860, file: !44, line: 1831, baseType: !2883, size: 64, offset: 512)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2860, file: !44, line: 1832, baseType: !2897, size: 64, offset: 576)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{!2900, !347, !2902}
!2900 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2901, line: 52, baseType: !7)
!2901 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !614, line: 27, flags: DIFlagFwdDecl)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2860, file: !44, line: 1833, baseType: !2905, size: 64, offset: 640)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{!305, !347, !7, !149}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2860, file: !44, line: 1834, baseType: !2905, size: 64, offset: 704)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2860, file: !44, line: 1835, baseType: !2910, size: 64, offset: 768)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = !DISubroutineType(types: !2912)
!2912 = !{!196, !347, !976}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2860, file: !44, line: 1836, baseType: !149, size: 64, offset: 832)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2860, file: !44, line: 1837, baseType: !2915, size: 64, offset: 896)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{!196, !424, !347}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2860, file: !44, line: 1838, baseType: !2919, size: 64, offset: 960)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{!196, !347, !2922}
!2922 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !148)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2860, file: !44, line: 1839, baseType: !2915, size: 64, offset: 1024)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2860, file: !44, line: 1840, baseType: !2925, size: 64, offset: 1088)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!196, !347, !526, !526, !196}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2860, file: !44, line: 1841, baseType: !2929, size: 64, offset: 1152)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!196, !196, !347, !196}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2860, file: !44, line: 1842, baseType: !2933, size: 64, offset: 1216)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{!196, !347, !196, !2936}
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2938)
!2938 = !{!2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2970, !2971, !2972, !2985, !3016}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2937, file: !44, line: 1063, baseType: !2936, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2937, file: !44, line: 1064, baseType: !216, size: 128, offset: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2937, file: !44, line: 1065, baseType: !634, size: 128, offset: 192)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2937, file: !44, line: 1066, baseType: !216, size: 128, offset: 320)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2937, file: !44, line: 1069, baseType: !216, size: 128, offset: 448)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2937, file: !44, line: 1072, baseType: !2922, size: 64, offset: 576)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2937, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2937, file: !44, line: 1074, baseType: !422, size: 8, offset: 672)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2937, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2937, file: !44, line: 1076, baseType: !196, size: 32, offset: 736)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2937, file: !44, line: 1077, baseType: !1476, size: 128, offset: 768)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2937, file: !44, line: 1078, baseType: !347, size: 64, offset: 896)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2937, file: !44, line: 1079, baseType: !526, size: 64, offset: 960)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2937, file: !44, line: 1080, baseType: !526, size: 64, offset: 1024)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2937, file: !44, line: 1082, baseType: !2954, size: 64, offset: 1088)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2956)
!2956 = !{!2957, !2965, !2966, !2967, !2968, !2969}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2955, file: !44, line: 1315, baseType: !2958)
!2958 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2959, line: 20, baseType: !2960)
!2959 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2960 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2959, line: 11, elements: !2961)
!2961 = !{!2962}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2960, file: !2959, line: 12, baseType: !2963)
!2963 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !241, line: 33, baseType: !2964)
!2964 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !241, line: 31, elements: !243)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2955, file: !44, line: 1316, baseType: !196, size: 32)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2955, file: !44, line: 1317, baseType: !196, size: 32, offset: 32)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2955, file: !44, line: 1318, baseType: !2954, size: 64, offset: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2955, file: !44, line: 1319, baseType: !347, size: 64, offset: 128)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2955, file: !44, line: 1320, baseType: !360, size: 128, align: 64, offset: 192)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2937, file: !44, line: 1084, baseType: !149, size: 64, offset: 1152)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2937, file: !44, line: 1085, baseType: !149, size: 64, offset: 1216)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2937, file: !44, line: 1087, baseType: !2973, size: 64, offset: 1280)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2975)
!2975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !2976)
!2976 = !{!2977, !2981}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2975, file: !44, line: 1012, baseType: !2978, size: 64)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{null, !2936, !2936}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2975, file: !44, line: 1013, baseType: !2982, size: 64, offset: 64)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{null, !2936}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2937, file: !44, line: 1088, baseType: !2986, size: 64, offset: 1344)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2988)
!2988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !2989)
!2989 = !{!2990, !2994, !2998, !2999, !3003, !3007, !3011, !3015}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2988, file: !44, line: 1017, baseType: !2991, size: 64)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{!2922, !2922}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2988, file: !44, line: 1018, baseType: !2995, size: 64, offset: 64)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{null, !2922}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2988, file: !44, line: 1019, baseType: !2982, size: 64, offset: 128)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2988, file: !44, line: 1020, baseType: !3000, size: 64, offset: 192)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!196, !2936, !196}
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2988, file: !44, line: 1021, baseType: !3004, size: 64, offset: 256)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{!485, !2936}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2988, file: !44, line: 1022, baseType: !3008, size: 64, offset: 320)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{!196, !2936, !196, !219}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2988, file: !44, line: 1023, baseType: !3012, size: 64, offset: 384)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{null, !2936, !816}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2988, file: !44, line: 1024, baseType: !3004, size: 64, offset: 448)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2937, file: !44, line: 1097, baseType: !3017, size: 256, offset: 1408)
!3017 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2937, file: !44, line: 1089, size: 256, elements: !3018)
!3018 = !{!3019, !3028, !3034}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3017, file: !44, line: 1090, baseType: !3020, size: 256)
!3020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3021, line: 10, size: 256, elements: !3022)
!3021 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3022 = !{!3023, !3024, !3027}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3020, file: !3021, line: 11, baseType: !410, size: 32)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3020, file: !3021, line: 12, baseType: !3025, size: 64, offset: 64)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3021, line: 5, flags: DIFlagFwdDecl)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3020, file: !3021, line: 13, baseType: !216, size: 128, offset: 128)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3017, file: !44, line: 1091, baseType: !3029, size: 64)
!3029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3021, line: 17, size: 64, elements: !3030)
!3030 = !{!3031}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3029, file: !3021, line: 18, baseType: !3032, size: 64)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3021, line: 16, flags: DIFlagFwdDecl)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3017, file: !44, line: 1096, baseType: !3035, size: 192)
!3035 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3017, file: !44, line: 1092, size: 192, elements: !3036)
!3036 = !{!3037, !3038, !3039}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3035, file: !44, line: 1093, baseType: !216, size: 128)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3035, file: !44, line: 1094, baseType: !196, size: 32, offset: 128)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3035, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2860, file: !44, line: 1843, baseType: !3041, size: 64, offset: 1280)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!301, !347, !716, !196, !317, !2871, !196}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2860, file: !44, line: 1844, baseType: !1096, size: 64, offset: 1344)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2860, file: !44, line: 1845, baseType: !3046, size: 64, offset: 1408)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{!196, !196}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2860, file: !44, line: 1846, baseType: !2933, size: 64, offset: 1472)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2860, file: !44, line: 1847, baseType: !3051, size: 64, offset: 1536)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{!301, !2093, !347, !2871, !317, !7}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2860, file: !44, line: 1848, baseType: !3055, size: 64, offset: 1600)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{!301, !347, !2871, !2093, !317, !7}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2860, file: !44, line: 1849, baseType: !3059, size: 64, offset: 1664)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{!196, !347, !305, !3062, !816}
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2860, file: !44, line: 1850, baseType: !3064, size: 64, offset: 1728)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!305, !347, !196, !526, !526}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2860, file: !44, line: 1852, baseType: !3068, size: 64, offset: 1792)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{null, !706, !347}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2860, file: !44, line: 1856, baseType: !3072, size: 64, offset: 1856)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{!301, !347, !526, !347, !526, !317, !7}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2860, file: !44, line: 1858, baseType: !3076, size: 64, offset: 1920)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!526, !347, !526, !347, !526, !526, !7}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2860, file: !44, line: 1861, baseType: !2925, size: 64, offset: 1984)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2855, file: !44, line: 692, baseType: !659, size: 64)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !425, file: !44, line: 694, baseType: !3082, size: 64, offset: 2560)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3084)
!3084 = !{!3085, !3086, !3087, !3088}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3083, file: !44, line: 1101, baseType: !229)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3083, file: !44, line: 1102, baseType: !216, size: 128)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3083, file: !44, line: 1103, baseType: !216, size: 128, offset: 128)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3083, file: !44, line: 1104, baseType: !216, size: 128, offset: 256)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !425, file: !44, line: 695, baseType: !730, size: 1216, align: 64, offset: 2624)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !425, file: !44, line: 696, baseType: !216, size: 128, offset: 3840)
!3091 = !DIDerivedType(tag: DW_TAG_member, scope: !425, file: !44, line: 697, baseType: !3092, size: 64, offset: 3968)
!3092 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !425, file: !44, line: 697, size: 64, elements: !3093)
!3093 = !{!3094, !3095, !3096, !3099, !3100}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3092, file: !44, line: 698, baseType: !2093, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3092, file: !44, line: 699, baseType: !2610, size: 64)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3092, file: !44, line: 700, baseType: !3097, size: 64)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3092, file: !44, line: 701, baseType: !270, size: 64)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3092, file: !44, line: 702, baseType: !7, size: 32)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !425, file: !44, line: 705, baseType: !412, size: 32, offset: 4032)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !425, file: !44, line: 708, baseType: !412, size: 32, offset: 4064)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !425, file: !44, line: 709, baseType: !2692, size: 64, offset: 4096)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !425, file: !44, line: 720, baseType: !148, size: 64, offset: 4160)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !378, file: !375, line: 98, baseType: !3106, size: 256, offset: 448)
!3106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !422, size: 256, elements: !2225)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !378, file: !375, line: 101, baseType: !3108, size: 32, offset: 704)
!3108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3109, line: 25, size: 32, elements: !3110)
!3109 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3110 = !{!3111}
!3111 = !DIDerivedType(tag: DW_TAG_member, scope: !3108, file: !3109, line: 26, baseType: !3112, size: 32)
!3112 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3108, file: !3109, line: 26, size: 32, elements: !3113)
!3113 = !{!3114}
!3114 = !DIDerivedType(tag: DW_TAG_member, scope: !3112, file: !3109, line: 30, baseType: !3115, size: 32)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3112, file: !3109, line: 30, size: 32, elements: !3116)
!3116 = !{!3117, !3118}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3115, file: !3109, line: 31, baseType: !229)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3115, file: !3109, line: 32, baseType: !196, size: 32)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !378, file: !375, line: 102, baseType: !2709, size: 64, offset: 768)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !378, file: !375, line: 103, baseType: !594, size: 64, offset: 832)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !378, file: !375, line: 104, baseType: !149, size: 64, offset: 896)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !378, file: !375, line: 105, baseType: !148, size: 64, offset: 960)
!3123 = !DIDerivedType(tag: DW_TAG_member, scope: !378, file: !375, line: 107, baseType: !3124, size: 128, offset: 1024)
!3124 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !378, file: !375, line: 107, size: 128, elements: !3125)
!3125 = !{!3126, !3127}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3124, file: !375, line: 108, baseType: !216, size: 128)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3124, file: !375, line: 109, baseType: !3128, size: 64)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !378, file: !375, line: 111, baseType: !216, size: 128, offset: 1152)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !378, file: !375, line: 112, baseType: !216, size: 128, offset: 1280)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !378, file: !375, line: 120, baseType: !3132, size: 128, offset: 1408)
!3132 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !378, file: !375, line: 116, size: 128, elements: !3133)
!3133 = !{!3134, !3135, !3136}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3132, file: !375, line: 117, baseType: !634, size: 128)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3132, file: !375, line: 118, baseType: !392, size: 128)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3132, file: !375, line: 119, baseType: !360, size: 128, align: 64)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !348, file: !44, line: 922, baseType: !424, size: 64, offset: 256)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !348, file: !44, line: 923, baseType: !2858, size: 64, offset: 320)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !348, file: !44, line: 929, baseType: !229, offset: 384)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !348, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !348, file: !44, line: 931, baseType: !766, size: 64, offset: 448)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !348, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !348, file: !44, line: 933, baseType: !2705, size: 32, offset: 544)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !348, file: !44, line: 934, baseType: !1168, size: 192, offset: 576)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !348, file: !44, line: 935, baseType: !526, size: 64, offset: 768)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !348, file: !44, line: 936, baseType: !3147, size: 192, offset: 832)
!3147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3148)
!3148 = !{!3149, !3150, !3151, !3152, !3153, !3154}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3147, file: !44, line: 886, baseType: !2958)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3147, file: !44, line: 887, baseType: !1466, size: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3147, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3147, file: !44, line: 889, baseType: !430, size: 32, offset: 96)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3147, file: !44, line: 889, baseType: !430, size: 32, offset: 128)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3147, file: !44, line: 890, baseType: !196, size: 32, offset: 160)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !348, file: !44, line: 937, baseType: !1542, size: 64, offset: 1024)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !348, file: !44, line: 938, baseType: !3157, size: 256, offset: 1088)
!3157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3158)
!3158 = !{!3159, !3160, !3161, !3162, !3163, !3164}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3157, file: !44, line: 897, baseType: !149, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3157, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3157, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3157, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3157, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3157, file: !44, line: 904, baseType: !526, size: 64, offset: 192)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !348, file: !44, line: 940, baseType: !416, size: 64, offset: 1344)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !348, file: !44, line: 945, baseType: !148, size: 64, offset: 1408)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !348, file: !44, line: 949, baseType: !216, size: 128, offset: 1472)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !348, file: !44, line: 950, baseType: !216, size: 128, offset: 1600)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !348, file: !44, line: 952, baseType: !729, size: 64, offset: 1728)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !348, file: !44, line: 953, baseType: !904, size: 32, offset: 1792)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !348, file: !44, line: 954, baseType: !904, size: 32, offset: 1824)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !338, file: !295, line: 174, baseType: !344, size: 64, offset: 320)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !338, file: !295, line: 176, baseType: !3174, size: 64, offset: 384)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{!196, !347, !222, !337, !976}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !326, file: !295, line: 90, baseType: !321, size: 64, offset: 192)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !326, file: !295, line: 91, baseType: !3179, size: 64, offset: 256)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !285, file: !212, line: 143, baseType: !3181, size: 64, offset: 256)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{!3184, !222}
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3186)
!3186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3187)
!3187 = !{!3188, !3189, !3193, !3197, !3203, !3207}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3186, file: !61, line: 40, baseType: !60, size: 32)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3186, file: !61, line: 41, baseType: !3190, size: 64, offset: 64)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!485}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3186, file: !61, line: 42, baseType: !3194, size: 64, offset: 128)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{!148}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3186, file: !61, line: 43, baseType: !3198, size: 64, offset: 192)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{!2122, !3201}
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3186, file: !61, line: 44, baseType: !3204, size: 64, offset: 256)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{!2122}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3186, file: !61, line: 45, baseType: !463, size: 64, offset: 320)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !285, file: !212, line: 144, baseType: !3209, size: 64, offset: 320)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!2122, !222}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !285, file: !212, line: 145, baseType: !3213, size: 64, offset: 384)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{null, !222, !3216, !3217}
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !211, file: !212, line: 70, baseType: !3219, size: 64, offset: 384)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !614, line: 123, size: 1024, elements: !3221)
!3221 = !{!3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3350, !3351, !3352, !3353, !3354}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3220, file: !614, line: 124, baseType: !742, size: 32)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3220, file: !614, line: 125, baseType: !742, size: 32, offset: 32)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3220, file: !614, line: 135, baseType: !3219, size: 64, offset: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3220, file: !614, line: 136, baseType: !187, size: 64, offset: 128)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3220, file: !614, line: 138, baseType: !755, size: 192, align: 64, offset: 192)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3220, file: !614, line: 140, baseType: !2122, size: 64, offset: 384)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3220, file: !614, line: 141, baseType: !7, size: 32, offset: 448)
!3229 = !DIDerivedType(tag: DW_TAG_member, scope: !3220, file: !614, line: 142, baseType: !3230, size: 256, offset: 512)
!3230 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3220, file: !614, line: 142, size: 256, elements: !3231)
!3231 = !{!3232, !3278, !3282}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3230, file: !614, line: 143, baseType: !3233, size: 192)
!3233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !614, line: 91, size: 192, elements: !3234)
!3234 = !{!3235, !3236, !3237}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3233, file: !614, line: 92, baseType: !149, size: 64)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3233, file: !614, line: 94, baseType: !751, size: 64, offset: 64)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3233, file: !614, line: 100, baseType: !3238, size: 64, offset: 128)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !614, line: 180, size: 704, elements: !3240)
!3240 = !{!3241, !3242, !3243, !3250, !3251, !3252, !3276, !3277}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3239, file: !614, line: 182, baseType: !3219, size: 64)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3239, file: !614, line: 183, baseType: !7, size: 32, offset: 64)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3239, file: !614, line: 186, baseType: !3244, size: 192, offset: 128)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3245, line: 19, size: 192, elements: !3246)
!3245 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3246 = !{!3247, !3248, !3249}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3244, file: !3245, line: 20, baseType: !734, size: 128)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3244, file: !3245, line: 21, baseType: !7, size: 32, offset: 128)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3244, file: !3245, line: 22, baseType: !7, size: 32, offset: 160)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3239, file: !614, line: 187, baseType: !410, size: 32, offset: 320)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3239, file: !614, line: 188, baseType: !410, size: 32, offset: 352)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3239, file: !614, line: 189, baseType: !3253, size: 64, offset: 384)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !614, line: 168, size: 320, elements: !3255)
!3255 = !{!3256, !3260, !3264, !3268, !3272}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3254, file: !614, line: 169, baseType: !3257, size: 64)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!196, !706, !3238}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3254, file: !614, line: 171, baseType: !3261, size: 64, offset: 64)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!196, !3219, !187, !311}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3254, file: !614, line: 173, baseType: !3265, size: 64, offset: 128)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!196, !3219}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3254, file: !614, line: 174, baseType: !3269, size: 64, offset: 192)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = !DISubroutineType(types: !3271)
!3271 = !{!196, !3219, !3219, !187}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3254, file: !614, line: 176, baseType: !3273, size: 64, offset: 256)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!196, !706, !3219, !3238}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3239, file: !614, line: 192, baseType: !216, size: 128, offset: 448)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3239, file: !614, line: 194, baseType: !1476, size: 128, offset: 576)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3230, file: !614, line: 144, baseType: !3279, size: 64)
!3279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !614, line: 103, size: 64, elements: !3280)
!3280 = !{!3281}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3279, file: !614, line: 104, baseType: !3219, size: 64)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3230, file: !614, line: 145, baseType: !3283, size: 256)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !614, line: 107, size: 256, elements: !3284)
!3284 = !{!3285, !3345, !3348, !3349}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3283, file: !614, line: 108, baseType: !3286, size: 64)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3288)
!3288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !614, line: 217, size: 768, elements: !3289)
!3289 = !{!3290, !3310, !3314, !3318, !3322, !3326, !3330, !3334, !3335, !3336, !3337, !3341}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3288, file: !614, line: 222, baseType: !3291, size: 64)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{!196, !3294}
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !614, line: 197, size: 1088, elements: !3296)
!3296 = !{!3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3295, file: !614, line: 199, baseType: !3219, size: 64)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3295, file: !614, line: 200, baseType: !347, size: 64, offset: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3295, file: !614, line: 201, baseType: !706, size: 64, offset: 128)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3295, file: !614, line: 202, baseType: !148, size: 64, offset: 192)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3295, file: !614, line: 205, baseType: !1168, size: 192, offset: 256)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3295, file: !614, line: 206, baseType: !1168, size: 192, offset: 448)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3295, file: !614, line: 207, baseType: !196, size: 32, offset: 640)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3295, file: !614, line: 208, baseType: !216, size: 128, offset: 704)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3295, file: !614, line: 209, baseType: !270, size: 64, offset: 832)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3295, file: !614, line: 211, baseType: !317, size: 64, offset: 896)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3295, file: !614, line: 212, baseType: !485, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3295, file: !614, line: 213, baseType: !485, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3295, file: !614, line: 214, baseType: !1004, size: 64, offset: 1024)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3288, file: !614, line: 223, baseType: !3311, size: 64, offset: 64)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{null, !3294}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3288, file: !614, line: 236, baseType: !3315, size: 64, offset: 128)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!196, !706, !148}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3288, file: !614, line: 238, baseType: !3319, size: 64, offset: 192)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!148, !706, !2871}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3288, file: !614, line: 239, baseType: !3323, size: 64, offset: 256)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{!148, !706, !148, !2871}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3288, file: !614, line: 240, baseType: !3327, size: 64, offset: 320)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{null, !706, !148}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3288, file: !614, line: 242, baseType: !3331, size: 64, offset: 384)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!301, !3294, !270, !317, !526}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3288, file: !614, line: 252, baseType: !317, size: 64, offset: 448)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3288, file: !614, line: 259, baseType: !485, size: 8, offset: 512)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3288, file: !614, line: 260, baseType: !3331, size: 64, offset: 576)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3288, file: !614, line: 263, baseType: !3338, size: 64, offset: 640)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DISubroutineType(types: !3340)
!3340 = !{!2900, !3294, !2902}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3288, file: !614, line: 266, baseType: !3342, size: 64, offset: 704)
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = !DISubroutineType(types: !3344)
!3344 = !{!196, !3294, !976}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3283, file: !614, line: 109, baseType: !3346, size: 64, offset: 64)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !614, line: 31, flags: DIFlagFwdDecl)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3283, file: !614, line: 110, baseType: !526, size: 64, offset: 128)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3283, file: !614, line: 111, baseType: !3219, size: 64, offset: 192)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3220, file: !614, line: 148, baseType: !148, size: 64, offset: 768)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3220, file: !614, line: 154, baseType: !416, size: 64, offset: 832)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3220, file: !614, line: 156, baseType: !312, size: 16, offset: 896)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3220, file: !614, line: 157, baseType: !311, size: 16, offset: 912)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3220, file: !614, line: 158, baseType: !3355, size: 64, offset: 960)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !614, line: 32, flags: DIFlagFwdDecl)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !211, file: !212, line: 71, baseType: !3358, size: 32, offset: 448)
!3358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3359, line: 19, size: 32, elements: !3360)
!3359 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3360 = !{!3361}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3358, file: !3359, line: 20, baseType: !1225, size: 32)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !211, file: !212, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !211, file: !212, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !211, file: !212, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !211, file: !212, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !211, file: !212, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !208, file: !73, line: 463, baseType: !207, size: 64, offset: 512)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !208, file: !73, line: 465, baseType: !3369, size: 64, offset: 576)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !208, file: !73, line: 467, baseType: !187, size: 64, offset: 640)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !208, file: !73, line: 468, baseType: !3373, size: 64, offset: 704)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3375)
!3375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3376)
!3376 = !{!3377, !3378, !3379, !3383, !3388, !3392}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3375, file: !73, line: 88, baseType: !187, size: 64)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3375, file: !73, line: 89, baseType: !323, size: 64, offset: 64)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3375, file: !73, line: 90, baseType: !3380, size: 64, offset: 128)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = !DISubroutineType(types: !3382)
!3382 = !{!196, !207, !265}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3375, file: !73, line: 91, baseType: !3384, size: 64, offset: 192)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{!270, !207, !3387, !3216, !3217}
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3375, file: !73, line: 93, baseType: !3389, size: 64, offset: 256)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{null, !207}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3375, file: !73, line: 95, baseType: !3393, size: 64, offset: 320)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3395)
!3395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3396)
!3396 = !{!3397, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3395, file: !80, line: 279, baseType: !3398, size: 64)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{!196, !207}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3395, file: !80, line: 280, baseType: !3389, size: 64, offset: 64)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3395, file: !80, line: 281, baseType: !3398, size: 64, offset: 128)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3395, file: !80, line: 282, baseType: !3398, size: 64, offset: 192)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3395, file: !80, line: 283, baseType: !3398, size: 64, offset: 256)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3395, file: !80, line: 284, baseType: !3398, size: 64, offset: 320)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3395, file: !80, line: 285, baseType: !3398, size: 64, offset: 384)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3395, file: !80, line: 286, baseType: !3398, size: 64, offset: 448)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3395, file: !80, line: 287, baseType: !3398, size: 64, offset: 512)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3395, file: !80, line: 288, baseType: !3398, size: 64, offset: 576)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3395, file: !80, line: 289, baseType: !3398, size: 64, offset: 640)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3395, file: !80, line: 290, baseType: !3398, size: 64, offset: 704)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3395, file: !80, line: 291, baseType: !3398, size: 64, offset: 768)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3395, file: !80, line: 292, baseType: !3398, size: 64, offset: 832)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3395, file: !80, line: 293, baseType: !3398, size: 64, offset: 896)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3395, file: !80, line: 294, baseType: !3398, size: 64, offset: 960)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3395, file: !80, line: 295, baseType: !3398, size: 64, offset: 1024)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3395, file: !80, line: 296, baseType: !3398, size: 64, offset: 1088)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3395, file: !80, line: 297, baseType: !3398, size: 64, offset: 1152)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3395, file: !80, line: 298, baseType: !3398, size: 64, offset: 1216)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3395, file: !80, line: 299, baseType: !3398, size: 64, offset: 1280)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3395, file: !80, line: 300, baseType: !3398, size: 64, offset: 1344)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3395, file: !80, line: 301, baseType: !3398, size: 64, offset: 1408)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !208, file: !73, line: 470, baseType: !3424, size: 64, offset: 768)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3426, line: 82, size: 1408, elements: !3427)
!3426 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3427 = !{!3428, !3429, !3430, !3431, !3432, !3433, !3434, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3509, !3512, !3513}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3425, file: !3426, line: 83, baseType: !187, size: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3425, file: !3426, line: 84, baseType: !187, size: 64, offset: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3425, file: !3426, line: 85, baseType: !207, size: 64, offset: 128)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3425, file: !3426, line: 86, baseType: !323, size: 64, offset: 192)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3425, file: !3426, line: 87, baseType: !323, size: 64, offset: 256)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3425, file: !3426, line: 88, baseType: !323, size: 64, offset: 320)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3425, file: !3426, line: 90, baseType: !3435, size: 64, offset: 384)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{!196, !207, !3438}
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3440)
!3440 = !{!3441, !3442, !3443, !3444, !3445, !3446, !3447, !3460, !3473, !3474, !3475, !3476, !3477, !3485, !3486, !3487, !3488, !3489, !3490}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3439, file: !67, line: 96, baseType: !187, size: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3439, file: !67, line: 97, baseType: !3424, size: 64, offset: 64)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3439, file: !67, line: 99, baseType: !189, size: 64, offset: 128)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3439, file: !67, line: 100, baseType: !187, size: 64, offset: 192)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3439, file: !67, line: 102, baseType: !485, size: 8, offset: 256)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3439, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3439, file: !67, line: 105, baseType: !3448, size: 64, offset: 320)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3450)
!3450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3451, line: 262, size: 1600, elements: !3452)
!3451 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3452 = !{!3453, !3454, !3455, !3459}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3450, file: !3451, line: 263, baseType: !2695, size: 256)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3450, file: !3451, line: 264, baseType: !2695, size: 256, offset: 256)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3450, file: !3451, line: 265, baseType: !3456, size: 1024, offset: 512)
!3456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 1024, elements: !3457)
!3457 = !{!3458}
!3458 = !DISubrange(count: 128)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3450, file: !3451, line: 266, baseType: !2122, size: 64, offset: 1536)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3439, file: !67, line: 106, baseType: !3461, size: 64, offset: 384)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3463)
!3463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3451, line: 210, size: 256, elements: !3464)
!3464 = !{!3465, !3469, !3471, !3472}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3463, file: !3451, line: 211, baseType: !3466, size: 72)
!3466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1348, size: 72, elements: !3467)
!3467 = !{!3468}
!3468 = !DISubrange(count: 9)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3463, file: !3451, line: 212, baseType: !3470, size: 64, offset: 128)
!3470 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3451, line: 14, baseType: !149)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3463, file: !3451, line: 213, baseType: !412, size: 32, offset: 192)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3463, file: !3451, line: 214, baseType: !412, size: 32, offset: 224)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3439, file: !67, line: 108, baseType: !3398, size: 64, offset: 448)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3439, file: !67, line: 109, baseType: !3389, size: 64, offset: 512)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3439, file: !67, line: 110, baseType: !3398, size: 64, offset: 576)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3439, file: !67, line: 111, baseType: !3389, size: 64, offset: 640)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3439, file: !67, line: 112, baseType: !3478, size: 64, offset: 704)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DISubroutineType(types: !3480)
!3480 = !{!196, !207, !3481}
!3481 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3482)
!3482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3483)
!3483 = !{!3484}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3482, file: !80, line: 51, baseType: !196, size: 32)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3439, file: !67, line: 113, baseType: !3398, size: 64, offset: 768)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3439, file: !67, line: 114, baseType: !323, size: 64, offset: 832)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3439, file: !67, line: 115, baseType: !323, size: 64, offset: 896)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3439, file: !67, line: 117, baseType: !3393, size: 64, offset: 960)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3439, file: !67, line: 118, baseType: !3389, size: 64, offset: 1024)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3439, file: !67, line: 120, baseType: !3491, size: 64, offset: 1088)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3425, file: !3426, line: 91, baseType: !3380, size: 64, offset: 448)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3425, file: !3426, line: 92, baseType: !3398, size: 64, offset: 512)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3425, file: !3426, line: 93, baseType: !3389, size: 64, offset: 576)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3425, file: !3426, line: 94, baseType: !3398, size: 64, offset: 640)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3425, file: !3426, line: 95, baseType: !3389, size: 64, offset: 704)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3425, file: !3426, line: 97, baseType: !3398, size: 64, offset: 768)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3425, file: !3426, line: 98, baseType: !3398, size: 64, offset: 832)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3425, file: !3426, line: 100, baseType: !3478, size: 64, offset: 896)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3425, file: !3426, line: 101, baseType: !3398, size: 64, offset: 960)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3425, file: !3426, line: 103, baseType: !3398, size: 64, offset: 1024)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3425, file: !3426, line: 105, baseType: !3398, size: 64, offset: 1088)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3425, file: !3426, line: 107, baseType: !3393, size: 64, offset: 1152)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3425, file: !3426, line: 109, baseType: !3506, size: 64, offset: 1216)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3508)
!3508 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3426, line: 109, flags: DIFlagFwdDecl)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3425, file: !3426, line: 111, baseType: !3510, size: 64, offset: 1280)
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3511 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3426, line: 111, flags: DIFlagFwdDecl)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3425, file: !3426, line: 112, baseType: !640, offset: 1344)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3425, file: !3426, line: 114, baseType: !485, size: 8, offset: 1344)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !208, file: !73, line: 471, baseType: !3438, size: 64, offset: 832)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !208, file: !73, line: 473, baseType: !148, size: 64, offset: 896)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !208, file: !73, line: 475, baseType: !148, size: 64, offset: 960)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !208, file: !73, line: 480, baseType: !1168, size: 192, offset: 1024)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !208, file: !73, line: 484, baseType: !3519, size: 576, offset: 1216)
!3519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3520)
!3520 = !{!3521, !3522, !3523, !3524, !3525, !3526}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3519, file: !73, line: 362, baseType: !216, size: 128)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3519, file: !73, line: 363, baseType: !216, size: 128, offset: 128)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3519, file: !73, line: 364, baseType: !216, size: 128, offset: 256)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3519, file: !73, line: 365, baseType: !216, size: 128, offset: 384)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3519, file: !73, line: 366, baseType: !485, size: 8, offset: 512)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3519, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !208, file: !73, line: 485, baseType: !3528, size: 2304, offset: 1792)
!3528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3529)
!3529 = !{!3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3625, !3629}
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3528, file: !80, line: 566, baseType: !3481, size: 32)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3528, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3528, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3528, file: !80, line: 569, baseType: !485, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3528, file: !80, line: 570, baseType: !485, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3528, file: !80, line: 571, baseType: !485, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3528, file: !80, line: 572, baseType: !485, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3528, file: !80, line: 573, baseType: !485, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3528, file: !80, line: 574, baseType: !485, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3528, file: !80, line: 575, baseType: !485, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3528, file: !80, line: 576, baseType: !485, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3528, file: !80, line: 577, baseType: !410, size: 32, offset: 64)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3528, file: !80, line: 578, baseType: !229, offset: 96)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3528, file: !80, line: 580, baseType: !216, size: 128, offset: 128)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3528, file: !80, line: 581, baseType: !1497, size: 192, offset: 256)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3528, file: !80, line: 582, baseType: !3546, size: 64, offset: 448)
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3548, line: 43, size: 1472, elements: !3549)
!3548 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3549 = !{!3550, !3551, !3552, !3553, !3554, !3557, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3547, file: !3548, line: 44, baseType: !187, size: 64)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3547, file: !3548, line: 45, baseType: !196, size: 32, offset: 64)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3547, file: !3548, line: 46, baseType: !216, size: 128, offset: 128)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3547, file: !3548, line: 47, baseType: !229, offset: 256)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3547, file: !3548, line: 48, baseType: !3555, size: 64, offset: 256)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3547, file: !3548, line: 49, baseType: !3558, size: 320, offset: 320)
!3558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3559, line: 11, size: 320, elements: !3560)
!3559 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3560 = !{!3561, !3562, !3563, !3568}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3558, file: !3559, line: 16, baseType: !634, size: 128)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3558, file: !3559, line: 17, baseType: !149, size: 64, offset: 128)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3558, file: !3559, line: 18, baseType: !3564, size: 64, offset: 192)
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = !DISubroutineType(types: !3566)
!3566 = !{null, !3567}
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3558, file: !3559, line: 19, baseType: !410, size: 32, offset: 256)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3547, file: !3548, line: 50, baseType: !149, size: 64, offset: 640)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3547, file: !3548, line: 51, baseType: !1295, size: 64, offset: 704)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3547, file: !3548, line: 52, baseType: !1295, size: 64, offset: 768)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3547, file: !3548, line: 53, baseType: !1295, size: 64, offset: 832)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3547, file: !3548, line: 54, baseType: !1295, size: 64, offset: 896)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3547, file: !3548, line: 55, baseType: !1295, size: 64, offset: 960)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3547, file: !3548, line: 56, baseType: !149, size: 64, offset: 1024)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3547, file: !3548, line: 57, baseType: !149, size: 64, offset: 1088)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3547, file: !3548, line: 58, baseType: !149, size: 64, offset: 1152)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3547, file: !3548, line: 59, baseType: !149, size: 64, offset: 1216)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3547, file: !3548, line: 60, baseType: !149, size: 64, offset: 1280)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3547, file: !3548, line: 61, baseType: !207, size: 64, offset: 1344)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3547, file: !3548, line: 62, baseType: !485, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3547, file: !3548, line: 63, baseType: !485, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3528, file: !80, line: 583, baseType: !485, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3528, file: !80, line: 584, baseType: !485, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3528, file: !80, line: 585, baseType: !485, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3528, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3528, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3528, file: !80, line: 592, baseType: !1287, size: 512, offset: 576)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3528, file: !80, line: 593, baseType: !416, size: 64, offset: 1088)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3528, file: !80, line: 594, baseType: !1952, size: 256, offset: 1152)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3528, file: !80, line: 595, baseType: !1476, size: 128, offset: 1408)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3528, file: !80, line: 596, baseType: !3555, size: 64, offset: 1536)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3528, file: !80, line: 597, baseType: !742, size: 32, offset: 1600)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3528, file: !80, line: 598, baseType: !742, size: 32, offset: 1632)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3528, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3528, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3528, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3528, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3528, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3528, file: !80, line: 604, baseType: !485, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3528, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3528, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3528, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3528, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3528, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3528, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3528, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3528, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3528, file: !80, line: 613, baseType: !196, size: 32, offset: 1792)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3528, file: !80, line: 614, baseType: !196, size: 32, offset: 1824)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3528, file: !80, line: 615, baseType: !416, size: 64, offset: 1856)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3528, file: !80, line: 616, baseType: !416, size: 64, offset: 1920)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3528, file: !80, line: 617, baseType: !416, size: 64, offset: 1984)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3528, file: !80, line: 618, baseType: !416, size: 64, offset: 2048)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3528, file: !80, line: 620, baseType: !3616, size: 64, offset: 2112)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3618)
!3618 = !{!3619, !3620, !3621, !3622}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3617, file: !80, line: 537, baseType: !229)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3617, file: !80, line: 538, baseType: !7, size: 32)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3617, file: !80, line: 540, baseType: !216, size: 128, offset: 64)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3617, file: !80, line: 543, baseType: !3623, size: 64, offset: 192)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3528, file: !80, line: 621, baseType: !3626, size: 64, offset: 2176)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = !DISubroutineType(types: !3628)
!3628 = !{null, !207, !1439}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3528, file: !80, line: 622, baseType: !3630, size: 64, offset: 2240)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !208, file: !73, line: 486, baseType: !3633, size: 64, offset: 4096)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3635)
!3635 = !{!3636, !3637, !3638, !3642, !3643, !3644}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3634, file: !80, line: 643, baseType: !3395, size: 1472)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3634, file: !80, line: 644, baseType: !3398, size: 64, offset: 1472)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3634, file: !80, line: 645, baseType: !3639, size: 64, offset: 1536)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{null, !207, !485}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3634, file: !80, line: 646, baseType: !3398, size: 64, offset: 1600)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3634, file: !80, line: 647, baseType: !3389, size: 64, offset: 1664)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3634, file: !80, line: 648, baseType: !3389, size: 64, offset: 1728)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !208, file: !73, line: 493, baseType: !3646, size: 64, offset: 4160)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !73, line: 493, flags: DIFlagFwdDecl)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !208, file: !73, line: 499, baseType: !216, size: 128, offset: 4224)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !208, file: !73, line: 502, baseType: !3650, size: 64, offset: 4352)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3652)
!3652 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !208, file: !73, line: 504, baseType: !3654, size: 64, offset: 4416)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !208, file: !73, line: 505, baseType: !416, size: 64, offset: 4480)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !208, file: !73, line: 510, baseType: !416, size: 64, offset: 4544)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !208, file: !73, line: 511, baseType: !3658, size: 64, offset: 4608)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3660)
!3660 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !208, file: !73, line: 513, baseType: !3662, size: 64, offset: 4672)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3664)
!3664 = !{!3665, !3666}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3663, file: !73, line: 293, baseType: !7, size: 32)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3663, file: !73, line: 294, baseType: !149, size: 64, offset: 64)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !208, file: !73, line: 515, baseType: !216, size: 128, offset: 4736)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !208, file: !73, line: 526, baseType: !3669, offset: 4864)
!3669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3670, line: 5, elements: !243)
!3670 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !208, file: !73, line: 528, baseType: !3672, size: 64, offset: 4864)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3674, line: 14, flags: DIFlagFwdDecl)
!3674 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !208, file: !73, line: 529, baseType: !3676, size: 64, offset: 4928)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3678, line: 17, size: 192, elements: !3679)
!3678 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3679 = !{!3680, !3681, !3764}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3677, file: !3678, line: 18, baseType: !3676, size: 64)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3677, file: !3678, line: 19, baseType: !3682, size: 64, offset: 64)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3684)
!3684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3678, line: 110, size: 1152, elements: !3685)
!3685 = !{!3686, !3690, !3694, !3700, !3706, !3710, !3714, !3719, !3723, !3724, !3728, !3732, !3736, !3747, !3748, !3749, !3750, !3760}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3684, file: !3678, line: 111, baseType: !3687, size: 64)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!3676, !3676}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3684, file: !3678, line: 112, baseType: !3691, size: 64, offset: 64)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{null, !3676}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3684, file: !3678, line: 113, baseType: !3695, size: 64, offset: 128)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{!485, !3698}
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3677)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3684, file: !3678, line: 114, baseType: !3701, size: 64, offset: 192)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!2122, !3698, !3704}
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !208)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3684, file: !3678, line: 116, baseType: !3707, size: 64, offset: 256)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{!485, !3698, !187}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3684, file: !3678, line: 118, baseType: !3711, size: 64, offset: 320)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{!196, !3698, !187, !7, !148, !317}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3684, file: !3678, line: 123, baseType: !3715, size: 64, offset: 384)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!196, !3698, !187, !3718, !317}
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3684, file: !3678, line: 126, baseType: !3720, size: 64, offset: 448)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!187, !3698}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3684, file: !3678, line: 127, baseType: !3720, size: 64, offset: 512)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3684, file: !3678, line: 128, baseType: !3725, size: 64, offset: 576)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{!3676, !3698}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3684, file: !3678, line: 130, baseType: !3729, size: 64, offset: 640)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!3676, !3698, !3676}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3684, file: !3678, line: 133, baseType: !3733, size: 64, offset: 704)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!3676, !3698, !187}
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3684, file: !3678, line: 135, baseType: !3737, size: 64, offset: 768)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{!196, !3698, !187, !187, !7, !7, !3740}
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3741, size: 64)
!3741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3678, line: 43, size: 640, elements: !3742)
!3742 = !{!3743, !3744, !3745}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3741, file: !3678, line: 44, baseType: !3676, size: 64)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3741, file: !3678, line: 45, baseType: !7, size: 32, offset: 64)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3741, file: !3678, line: 46, baseType: !3746, size: 512, offset: 128)
!3746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 512, elements: !1325)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3684, file: !3678, line: 140, baseType: !3729, size: 64, offset: 832)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3684, file: !3678, line: 143, baseType: !3725, size: 64, offset: 896)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3684, file: !3678, line: 145, baseType: !3687, size: 64, offset: 960)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3684, file: !3678, line: 146, baseType: !3751, size: 64, offset: 1024)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{!196, !3698, !3754}
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3678, line: 29, size: 128, elements: !3756)
!3756 = !{!3757, !3758, !3759}
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3755, file: !3678, line: 30, baseType: !7, size: 32)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3755, file: !3678, line: 31, baseType: !7, size: 32, offset: 32)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3755, file: !3678, line: 32, baseType: !3698, size: 64, offset: 64)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3684, file: !3678, line: 148, baseType: !3761, size: 64, offset: 1088)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = !DISubroutineType(types: !3763)
!3763 = !{!196, !3698, !207}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3677, file: !3678, line: 20, baseType: !207, size: 64, offset: 128)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !208, file: !73, line: 534, baseType: !508, size: 32, offset: 4992)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !208, file: !73, line: 535, baseType: !410, size: 32, offset: 5024)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !208, file: !73, line: 537, baseType: !229, offset: 5056)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !208, file: !73, line: 538, baseType: !216, size: 128, offset: 5056)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !208, file: !73, line: 540, baseType: !3770, size: 64, offset: 5184)
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3772, line: 54, size: 960, elements: !3773)
!3772 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3773 = !{!3774, !3775, !3776, !3777, !3778, !3779, !3780, !3784, !3788, !3789, !3790, !3791, !3795, !3799, !3800}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3771, file: !3772, line: 55, baseType: !187, size: 64)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3771, file: !3772, line: 56, baseType: !189, size: 64, offset: 64)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3771, file: !3772, line: 58, baseType: !323, size: 64, offset: 128)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3771, file: !3772, line: 59, baseType: !323, size: 64, offset: 192)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3771, file: !3772, line: 60, baseType: !222, size: 64, offset: 256)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3771, file: !3772, line: 62, baseType: !3380, size: 64, offset: 320)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3771, file: !3772, line: 63, baseType: !3781, size: 64, offset: 384)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!270, !207, !3387}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3771, file: !3772, line: 65, baseType: !3785, size: 64, offset: 448)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{null, !3770}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3771, file: !3772, line: 66, baseType: !3389, size: 64, offset: 512)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3771, file: !3772, line: 68, baseType: !3398, size: 64, offset: 576)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3771, file: !3772, line: 70, baseType: !3184, size: 64, offset: 640)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3771, file: !3772, line: 71, baseType: !3792, size: 64, offset: 704)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DISubroutineType(types: !3794)
!3794 = !{!2122, !207}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3771, file: !3772, line: 73, baseType: !3796, size: 64, offset: 768)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DISubroutineType(types: !3798)
!3798 = !{null, !207, !3216, !3217}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3771, file: !3772, line: 75, baseType: !3393, size: 64, offset: 832)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3771, file: !3772, line: 77, baseType: !3510, size: 64, offset: 896)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !208, file: !73, line: 541, baseType: !323, size: 64, offset: 5248)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !208, file: !73, line: 543, baseType: !3389, size: 64, offset: 5312)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !208, file: !73, line: 544, baseType: !3804, size: 64, offset: 5376)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !208, file: !73, line: 545, baseType: !3807, size: 64, offset: 5440)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !208, file: !73, line: 547, baseType: !485, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !208, file: !73, line: 548, baseType: !485, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !208, file: !73, line: 549, baseType: !485, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !208, file: !73, line: 550, baseType: !485, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !198, file: !123, line: 548, baseType: !196, size: 32, offset: 320)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "detach_count", scope: !198, file: !123, line: 549, baseType: !7, size: 32, offset: 352)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "hw_dev", scope: !198, file: !123, line: 550, baseType: !207, size: 64, offset: 384)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !198, file: !123, line: 552, baseType: !187, size: 64, offset: 448)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "board_ptr", scope: !198, file: !123, line: 553, baseType: !2122, size: 64, offset: 512)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "attached", scope: !198, file: !123, line: 554, baseType: !7, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "ioenabled", scope: !198, file: !123, line: 555, baseType: !7, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "spinlock", scope: !198, file: !123, line: 556, baseType: !229, offset: 584)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !198, file: !123, line: 557, baseType: !1168, size: 192, offset: 640)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "attach_lock", scope: !198, file: !123, line: 558, baseType: !762, size: 256, offset: 832)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !198, file: !123, line: 559, baseType: !3358, size: 32, offset: 1088)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "n_subdevices", scope: !198, file: !123, line: 561, baseType: !196, size: 32, offset: 1120)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "subdevices", scope: !198, file: !123, line: 562, baseType: !3826, size: 64, offset: 1152)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_subdevice", file: !123, line: 153, size: 1792, elements: !3828)
!3828 = !{!3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3904, !3917, !3920, !3921, !3935, !3936, !3937, !3938, !3942, !3947, !3948, !3949, !3950, !3954, !3955, !3956, !3957, !3958}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3827, file: !123, line: 154, baseType: !197, size: 64)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3827, file: !123, line: 155, baseType: !196, size: 32, offset: 64)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3827, file: !123, line: 156, baseType: !196, size: 32, offset: 96)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "n_chan", scope: !3827, file: !123, line: 157, baseType: !196, size: 32, offset: 128)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "subdev_flags", scope: !3827, file: !123, line: 158, baseType: !196, size: 32, offset: 160)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "len_chanlist", scope: !3827, file: !123, line: 159, baseType: !196, size: 32, offset: 192)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3827, file: !123, line: 161, baseType: !148, size: 64, offset: 256)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "async", scope: !3827, file: !123, line: 163, baseType: !3837, size: 64, offset: 320)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_async", file: !123, line: 347, size: 1536, elements: !3839)
!3839 = !{!3840, !3841, !3842, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3890, !3891, !3892}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3838, file: !123, line: 348, baseType: !148, size: 64)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_bufsz", scope: !3838, file: !123, line: 349, baseType: !7, size: 32, offset: 64)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "buf_map", scope: !3838, file: !123, line: 350, baseType: !3843, size: 64, offset: 128)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_map", file: !123, line: 249, size: 256, elements: !3845)
!3845 = !{!3846, !3847, !3853, !3854, !3855}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "dma_hw_dev", scope: !3844, file: !123, line: 250, baseType: !207, size: 64)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "page_list", scope: !3844, file: !123, line: 251, baseType: !3848, size: 64, offset: 64)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_buf_page", file: !123, line: 220, size: 128, elements: !3850)
!3850 = !{!3851, !3852}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "virt_addr", scope: !3849, file: !123, line: 221, baseType: !148, size: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3849, file: !123, line: 222, baseType: !915, size: 64, offset: 64)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "n_pages", scope: !3844, file: !123, line: 252, baseType: !7, size: 32, offset: 128)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "dma_dir", scope: !3844, file: !123, line: 253, baseType: !93, size: 32, offset: 160)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3844, file: !123, line: 254, baseType: !3358, size: 32, offset: 192)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "max_bufsize", scope: !3838, file: !123, line: 351, baseType: !7, size: 32, offset: 192)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_count", scope: !3838, file: !123, line: 352, baseType: !7, size: 32, offset: 224)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_alloc_count", scope: !3838, file: !123, line: 353, baseType: !7, size: 32, offset: 256)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_count", scope: !3838, file: !123, line: 354, baseType: !7, size: 32, offset: 288)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_alloc_count", scope: !3838, file: !123, line: 355, baseType: !7, size: 32, offset: 320)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "buf_write_ptr", scope: !3838, file: !123, line: 356, baseType: !7, size: 32, offset: 352)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "buf_read_ptr", scope: !3838, file: !123, line: 357, baseType: !7, size: 32, offset: 384)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "cur_chan", scope: !3838, file: !123, line: 358, baseType: !7, size: 32, offset: 416)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "scans_done", scope: !3838, file: !123, line: 359, baseType: !7, size: 32, offset: 448)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "scan_progress", scope: !3838, file: !123, line: 360, baseType: !7, size: 32, offset: 480)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "munge_chan", scope: !3838, file: !123, line: 361, baseType: !7, size: 32, offset: 512)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "munge_count", scope: !3838, file: !123, line: 362, baseType: !7, size: 32, offset: 544)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "munge_ptr", scope: !3838, file: !123, line: 363, baseType: !7, size: 32, offset: 576)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3838, file: !123, line: 364, baseType: !7, size: 32, offset: 608)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !3838, file: !123, line: 365, baseType: !3871, size: 640, offset: 640)
!3871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_cmd", file: !101, line: 589, size: 640, elements: !3872)
!3872 = !{!3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3889}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "subdev", scope: !3871, file: !101, line: 590, baseType: !7, size: 32)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3871, file: !101, line: 591, baseType: !7, size: 32, offset: 32)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "start_src", scope: !3871, file: !101, line: 593, baseType: !7, size: 32, offset: 64)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "start_arg", scope: !3871, file: !101, line: 594, baseType: !7, size: 32, offset: 96)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "scan_begin_src", scope: !3871, file: !101, line: 596, baseType: !7, size: 32, offset: 128)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "scan_begin_arg", scope: !3871, file: !101, line: 597, baseType: !7, size: 32, offset: 160)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "convert_src", scope: !3871, file: !101, line: 599, baseType: !7, size: 32, offset: 192)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "convert_arg", scope: !3871, file: !101, line: 600, baseType: !7, size: 32, offset: 224)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "scan_end_src", scope: !3871, file: !101, line: 602, baseType: !7, size: 32, offset: 256)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "scan_end_arg", scope: !3871, file: !101, line: 603, baseType: !7, size: 32, offset: 288)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "stop_src", scope: !3871, file: !101, line: 605, baseType: !7, size: 32, offset: 320)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "stop_arg", scope: !3871, file: !101, line: 606, baseType: !7, size: 32, offset: 352)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist", scope: !3871, file: !101, line: 608, baseType: !2678, size: 64, offset: 384)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist_len", scope: !3871, file: !101, line: 609, baseType: !7, size: 32, offset: 448)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3871, file: !101, line: 611, baseType: !3888, size: 64, offset: 512)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !3871, file: !101, line: 612, baseType: !7, size: 32, offset: 576)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "wait_head", scope: !3838, file: !123, line: 366, baseType: !1476, size: 128, offset: 1280)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "cb_mask", scope: !3838, file: !123, line: 367, baseType: !7, size: 32, offset: 1408)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "inttrig", scope: !3838, file: !123, line: 368, baseType: !3893, size: 64, offset: 1472)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DISubroutineType(types: !3895)
!3895 = !{!196, !197, !3826, !7}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3827, file: !123, line: 165, baseType: !148, size: 64, offset: 384)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !3827, file: !123, line: 166, baseType: !148, size: 64, offset: 448)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "runflags", scope: !3827, file: !123, line: 167, baseType: !7, size: 32, offset: 512)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "spin_lock", scope: !3827, file: !123, line: 168, baseType: !229, offset: 544)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "io_bits", scope: !3827, file: !123, line: 170, baseType: !7, size: 32, offset: 544)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata", scope: !3827, file: !123, line: 172, baseType: !7, size: 32, offset: 576)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "maxdata_list", scope: !3827, file: !123, line: 173, baseType: !3903, size: 64, offset: 640)
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "range_table", scope: !3827, file: !123, line: 175, baseType: !3905, size: 64, offset: 704)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3907)
!3907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_lrange", file: !123, line: 635, size: 32, elements: !3908)
!3908 = !{!3909, !3910}
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3907, file: !123, line: 636, baseType: !196, size: 32)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3907, file: !123, line: 637, baseType: !3911, offset: 32)
!3911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3912, elements: !2326)
!3912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_krange", file: !101, line: 685, size: 96, elements: !3913)
!3913 = !{!3914, !3915, !3916}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !3912, file: !101, line: 686, baseType: !196, size: 32)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3912, file: !101, line: 687, baseType: !196, size: 32, offset: 32)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3912, file: !101, line: 688, baseType: !7, size: 32, offset: 64)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "range_table_list", scope: !3827, file: !123, line: 176, baseType: !3918, size: 64, offset: 768)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3905)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "chanlist", scope: !3827, file: !123, line: 178, baseType: !2678, size: 64, offset: 832)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "insn_read", scope: !3827, file: !123, line: 180, baseType: !3922, size: 64, offset: 896)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{!196, !197, !3826, !3925, !2678}
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_insn", file: !101, line: 491, size: 320, elements: !3927)
!3927 = !{!3928, !3929, !3930, !3931, !3932, !3933}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3926, file: !101, line: 492, baseType: !7, size: 32)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !3926, file: !101, line: 493, baseType: !7, size: 32, offset: 32)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3926, file: !101, line: 494, baseType: !2678, size: 64, offset: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "subdev", scope: !3926, file: !101, line: 495, baseType: !7, size: 32, offset: 128)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "chanspec", scope: !3926, file: !101, line: 496, baseType: !7, size: 32, offset: 160)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !3926, file: !101, line: 497, baseType: !3934, size: 96, offset: 192)
!3934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 96, elements: !271)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "insn_write", scope: !3827, file: !123, line: 182, baseType: !3922, size: 64, offset: 960)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "insn_bits", scope: !3827, file: !123, line: 184, baseType: !3922, size: 64, offset: 1024)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "insn_config", scope: !3827, file: !123, line: 186, baseType: !3922, size: 64, offset: 1088)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmd", scope: !3827, file: !123, line: 191, baseType: !3939, size: 64, offset: 1152)
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = !DISubroutineType(types: !3941)
!3941 = !{!196, !197, !3826}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "do_cmdtest", scope: !3827, file: !123, line: 192, baseType: !3943, size: 64, offset: 1216)
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3944 = !DISubroutineType(types: !3945)
!3945 = !{!196, !197, !3826, !3946}
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3827, file: !123, line: 195, baseType: !3939, size: 64, offset: 1280)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "cancel", scope: !3827, file: !123, line: 196, baseType: !3939, size: 64, offset: 1344)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "buf_change", scope: !3827, file: !123, line: 199, baseType: !3939, size: 64, offset: 1408)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "munge", scope: !3827, file: !123, line: 202, baseType: !3951, size: 64, offset: 1472)
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = !DISubroutineType(types: !3953)
!3953 = !{null, !197, !3826, !148, !7, !7}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "async_dma_dir", scope: !3827, file: !123, line: 205, baseType: !93, size: 32, offset: 1536)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3827, file: !123, line: 207, baseType: !7, size: 32, offset: 1568)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !3827, file: !123, line: 209, baseType: !207, size: 64, offset: 1600)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3827, file: !123, line: 210, baseType: !196, size: 32, offset: 1664)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "readback", scope: !3827, file: !123, line: 212, baseType: !2678, size: 64, offset: 1728)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "mmio", scope: !198, file: !123, line: 565, baseType: !148, size: 64, offset: 1216)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "iobase", scope: !198, file: !123, line: 566, baseType: !149, size: 64, offset: 1280)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "iolen", scope: !198, file: !123, line: 567, baseType: !149, size: 64, offset: 1344)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !198, file: !123, line: 568, baseType: !7, size: 32, offset: 1408)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "read_subdev", scope: !198, file: !123, line: 570, baseType: !3826, size: 64, offset: 1472)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "write_subdev", scope: !198, file: !123, line: 571, baseType: !3826, size: 64, offset: 1536)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "async_queue", scope: !198, file: !123, line: 573, baseType: !2954, size: 64, offset: 1600)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !198, file: !123, line: 575, baseType: !3967, size: 64, offset: 1664)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = !DISubroutineType(types: !3969)
!3969 = !{!196, !197}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !198, file: !123, line: 576, baseType: !3971, size: 64, offset: 1728)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = !DISubroutineType(types: !3973)
!3973 = !{null, !197}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "insn_device_config", scope: !198, file: !123, line: 577, baseType: !3975, size: 64, offset: 1792)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = !DISubroutineType(types: !3977)
!3977 = !{!196, !197, !3925, !2678}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "get_valid_routes", scope: !198, file: !123, line: 579, baseType: !3979, size: 64, offset: 1856)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = !DISubroutineType(types: !3981)
!3981 = !{!7, !197, !7, !2678}
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comedi_devconfig", file: !101, line: 834, size: 1184, elements: !3984)
!3984 = !{!3985, !3987}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !3983, file: !101, line: 835, baseType: !3986, size: 160)
!3986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 160, elements: !2196)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !3983, file: !101, line: 836, baseType: !3988, size: 1024, offset: 160)
!3988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 1024, elements: !2225)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !182, file: !123, line: 444, baseType: !3971, size: 64, offset: 256)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "auto_attach", scope: !182, file: !123, line: 445, baseType: !3991, size: 64, offset: 320)
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3992, size: 64)
!3992 = !DISubroutineType(types: !3993)
!3993 = !{!196, !197, !149}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "num_names", scope: !182, file: !123, line: 446, baseType: !7, size: 32, offset: 384)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "board_name", scope: !182, file: !123, line: 447, baseType: !3996, size: 64, offset: 448)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !187)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !182, file: !123, line: 448, baseType: !196, size: 32, offset: 512)
!3999 = !DIGlobalVariableExpression(var: !4000, expr: !DIExpression())
!4000 = distinct !DIGlobalVariable(name: "apci2032_pci_driver", scope: !2, file: !3, line: 320, type: !4001, isLocal: true, isDefinition: true)
!4001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !4002, line: 858, size: 2048, elements: !4003)
!4002 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!4003 = !{!4004, !4005, !4006, !4018, !4238, !4242, !4246, !4250, !4251, !4255, !4273, !4274, !4275}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4001, file: !4002, line: 859, baseType: !216, size: 128)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4001, file: !4002, line: 860, baseType: !187, size: 64, offset: 128)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4001, file: !4002, line: 861, baseType: !4007, size: 64, offset: 192)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4009)
!4009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3451, line: 38, size: 256, elements: !4010)
!4010 = !{!4011, !4012, !4013, !4014, !4015, !4016, !4017}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4009, file: !3451, line: 39, baseType: !412, size: 32)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4009, file: !3451, line: 39, baseType: !412, size: 32, offset: 32)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4009, file: !3451, line: 40, baseType: !412, size: 32, offset: 64)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4009, file: !3451, line: 40, baseType: !412, size: 32, offset: 96)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4009, file: !3451, line: 41, baseType: !412, size: 32, offset: 128)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4009, file: !3451, line: 41, baseType: !412, size: 32, offset: 160)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4009, file: !3451, line: 42, baseType: !3470, size: 64, offset: 192)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4001, file: !4002, line: 862, baseType: !4019, size: 64, offset: 256)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{!196, !4022, !4007}
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !4002, line: 309, size: 19264, elements: !4024)
!4024 = !{!4025, !4026, !4101, !4102, !4103, !4104, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4132, !4134, !4135, !4136, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4160, !4161, !4162, !4163, !4165, !4166, !4167, !4168, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4211, !4212, !4214, !4215, !4216, !4217, !4219, !4220, !4221, !4224, !4231, !4232, !4233, !4234, !4235, !4236, !4237}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !4023, file: !4002, line: 310, baseType: !216, size: 128)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4023, file: !4002, line: 311, baseType: !4027, size: 64, offset: 128)
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !4002, line: 605, size: 8064, elements: !4029)
!4029 = !{!4030, !4031, !4032, !4033, !4034, !4035, !4036, !4051, !4052, !4053, !4077, !4080, !4081, !4085, !4086, !4087, !4088, !4089, !4093, !4094, !4096, !4097, !4098, !4099, !4100}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4028, file: !4002, line: 606, baseType: !216, size: 128)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4028, file: !4002, line: 607, baseType: !4027, size: 64, offset: 128)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4028, file: !4002, line: 608, baseType: !216, size: 128, offset: 192)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4028, file: !4002, line: 609, baseType: !216, size: 128, offset: 320)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4028, file: !4002, line: 610, baseType: !4022, size: 64, offset: 448)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4028, file: !4002, line: 611, baseType: !216, size: 128, offset: 512)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4028, file: !4002, line: 613, baseType: !4037, size: 256, offset: 640)
!4037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4038, size: 256, elements: !1150)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4040, line: 20, size: 512, elements: !4041)
!4040 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!4041 = !{!4042, !4044, !4045, !4046, !4047, !4048, !4049, !4050}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4039, file: !4040, line: 21, baseType: !4043, size: 64)
!4043 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !147, line: 158, baseType: !2120)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4039, file: !4040, line: 22, baseType: !4043, size: 64, offset: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4039, file: !4040, line: 23, baseType: !187, size: 64, offset: 128)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4039, file: !4040, line: 24, baseType: !149, size: 64, offset: 192)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4039, file: !4040, line: 25, baseType: !149, size: 64, offset: 256)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4039, file: !4040, line: 26, baseType: !4038, size: 64, offset: 320)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4039, file: !4040, line: 26, baseType: !4038, size: 64, offset: 384)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4039, file: !4040, line: 26, baseType: !4038, size: 64, offset: 448)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4028, file: !4002, line: 614, baseType: !216, size: 128, offset: 896)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !4028, file: !4002, line: 615, baseType: !4039, size: 512, offset: 1024)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4028, file: !4002, line: 617, baseType: !4054, size: 64, offset: 1536)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !4002, line: 731, size: 320, elements: !4056)
!4056 = !{!4057, !4061, !4065, !4069, !4073}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4055, file: !4002, line: 732, baseType: !4058, size: 64)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{!196, !4027}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4055, file: !4002, line: 733, baseType: !4062, size: 64, offset: 64)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{null, !4027}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4055, file: !4002, line: 734, baseType: !4066, size: 64, offset: 128)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4067 = !DISubroutineType(types: !4068)
!4068 = !{!148, !4027, !7, !196}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4055, file: !4002, line: 735, baseType: !4070, size: 64, offset: 192)
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4071, size: 64)
!4071 = !DISubroutineType(types: !4072)
!4072 = !{!196, !4027, !7, !196, !196, !1410}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4055, file: !4002, line: 736, baseType: !4074, size: 64, offset: 256)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = !DISubroutineType(types: !4076)
!4076 = !{!196, !4027, !7, !196, !196, !410}
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4028, file: !4002, line: 618, baseType: !4078, size: 64, offset: 1600)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !4002, line: 537, flags: DIFlagFwdDecl)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4028, file: !4002, line: 619, baseType: !148, size: 64, offset: 1664)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !4028, file: !4002, line: 620, baseType: !4082, size: 64, offset: 1728)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4084, line: 123, flags: DIFlagFwdDecl)
!4084 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4028, file: !4002, line: 622, baseType: !422, size: 8, offset: 1792)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4028, file: !4002, line: 623, baseType: !422, size: 8, offset: 1800)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !4028, file: !4002, line: 624, baseType: !422, size: 8, offset: 1808)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !4028, file: !4002, line: 625, baseType: !422, size: 8, offset: 1816)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4028, file: !4002, line: 630, baseType: !4090, size: 384, offset: 1824)
!4090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 384, elements: !4091)
!4091 = !{!4092}
!4092 = !DISubrange(count: 48)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !4028, file: !4002, line: 632, baseType: !312, size: 16, offset: 2208)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !4028, file: !4002, line: 633, baseType: !4095, size: 16, offset: 2224)
!4095 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !4002, line: 237, baseType: !312)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !4028, file: !4002, line: 634, baseType: !207, size: 64, offset: 2240)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4028, file: !4002, line: 635, baseType: !208, size: 5568, offset: 2304)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !4028, file: !4002, line: 636, baseType: !337, size: 64, offset: 7872)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !4028, file: !4002, line: 637, baseType: !337, size: 64, offset: 7936)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !4028, file: !4002, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !4023, file: !4002, line: 312, baseType: !4027, size: 64, offset: 192)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4023, file: !4002, line: 314, baseType: !148, size: 64, offset: 256)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !4023, file: !4002, line: 315, baseType: !4082, size: 64, offset: 320)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4023, file: !4002, line: 316, baseType: !4105, size: 64, offset: 384)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !4002, line: 69, size: 832, elements: !4107)
!4107 = !{!4108, !4109, !4110, !4113, !4114}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4106, file: !4002, line: 70, baseType: !4027, size: 64)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4106, file: !4002, line: 71, baseType: !216, size: 128, offset: 64)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4106, file: !4002, line: 72, baseType: !4111, size: 64, offset: 192)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4112 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !4002, line: 72, flags: DIFlagFwdDecl)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4106, file: !4002, line: 73, baseType: !422, size: 8, offset: 256)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4106, file: !4002, line: 74, baseType: !211, size: 512, offset: 320)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !4023, file: !4002, line: 318, baseType: !7, size: 32, offset: 448)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4023, file: !4002, line: 319, baseType: !312, size: 16, offset: 480)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4023, file: !4002, line: 320, baseType: !312, size: 16, offset: 496)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4023, file: !4002, line: 321, baseType: !312, size: 16, offset: 512)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4023, file: !4002, line: 322, baseType: !312, size: 16, offset: 528)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4023, file: !4002, line: 323, baseType: !7, size: 32, offset: 544)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4023, file: !4002, line: 324, baseType: !1347, size: 8, offset: 576)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4023, file: !4002, line: 325, baseType: !1347, size: 8, offset: 584)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !4023, file: !4002, line: 330, baseType: !1347, size: 8, offset: 592)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !4023, file: !4002, line: 331, baseType: !1347, size: 8, offset: 600)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !4023, file: !4002, line: 332, baseType: !1347, size: 8, offset: 608)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !4023, file: !4002, line: 333, baseType: !1347, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !4023, file: !4002, line: 334, baseType: !1347, size: 8, offset: 624)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4023, file: !4002, line: 335, baseType: !1347, size: 8, offset: 632)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !4023, file: !4002, line: 336, baseType: !854, size: 16, offset: 640)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !4023, file: !4002, line: 337, baseType: !4131, size: 64, offset: 704)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4023, file: !4002, line: 339, baseType: !4133, size: 64, offset: 768)
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4023, file: !4002, line: 340, baseType: !416, size: 64, offset: 832)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4023, file: !4002, line: 346, baseType: !3663, size: 128, offset: 896)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !4023, file: !4002, line: 348, baseType: !4137, size: 32, offset: 1024)
!4137 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !4002, line: 155, baseType: !196)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !4023, file: !4002, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !4023, file: !4002, line: 352, baseType: !1347, size: 8, offset: 1064)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !4023, file: !4002, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !4023, file: !4002, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !4023, file: !4002, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !4023, file: !4002, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !4023, file: !4002, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !4023, file: !4002, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !4023, file: !4002, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !4023, file: !4002, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !4023, file: !4002, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !4023, file: !4002, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !4023, file: !4002, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !4023, file: !4002, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !4023, file: !4002, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !4023, file: !4002, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !4023, file: !4002, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !4023, file: !4002, line: 376, baseType: !7, size: 32, offset: 1120)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !4023, file: !4002, line: 377, baseType: !7, size: 32, offset: 1152)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !4023, file: !4002, line: 380, baseType: !4158, size: 64, offset: 1216)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !4002, line: 303, flags: DIFlagFwdDecl)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !4023, file: !4002, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !4023, file: !4002, line: 383, baseType: !196, size: 32, offset: 1312)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !4023, file: !4002, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !4023, file: !4002, line: 387, baseType: !4164, size: 32, offset: 1376)
!4164 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !4002, line: 180, baseType: !7)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4023, file: !4002, line: 388, baseType: !208, size: 5568, offset: 1408)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !4023, file: !4002, line: 390, baseType: !196, size: 32, offset: 6976)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4023, file: !4002, line: 396, baseType: !7, size: 32, offset: 7008)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4023, file: !4002, line: 397, baseType: !4169, size: 8704, offset: 7040)
!4169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4039, size: 8704, elements: !4170)
!4170 = !{!4171}
!4171 = !DISubrange(count: 17)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4023, file: !4002, line: 399, baseType: !485, size: 8, offset: 15744)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !4023, file: !4002, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !4023, file: !4002, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !4023, file: !4002, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !4023, file: !4002, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !4023, file: !4002, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !4023, file: !4002, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !4023, file: !4002, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !4023, file: !4002, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !4023, file: !4002, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !4023, file: !4002, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !4023, file: !4002, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !4023, file: !4002, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !4023, file: !4002, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !4023, file: !4002, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !4023, file: !4002, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !4023, file: !4002, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !4023, file: !4002, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !4023, file: !4002, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !4023, file: !4002, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !4023, file: !4002, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !4023, file: !4002, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !4023, file: !4002, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !4023, file: !4002, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !4023, file: !4002, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !4023, file: !4002, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !4023, file: !4002, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !4023, file: !4002, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !4023, file: !4002, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !4023, file: !4002, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !4023, file: !4002, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !4023, file: !4002, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !4023, file: !4002, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !4023, file: !4002, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !4023, file: !4002, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !4023, file: !4002, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !4023, file: !4002, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !4023, file: !4002, line: 450, baseType: !4210, size: 16, offset: 15792)
!4210 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !4002, line: 206, baseType: !312)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !4023, file: !4002, line: 451, baseType: !742, size: 32, offset: 15808)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !4023, file: !4002, line: 453, baseType: !4213, size: 512, offset: 15840)
!4213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 512, elements: !1730)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !4023, file: !4002, line: 454, baseType: !630, size: 64, offset: 16384)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !4023, file: !4002, line: 455, baseType: !337, size: 64, offset: 16448)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !4023, file: !4002, line: 456, baseType: !196, size: 32, offset: 16512)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !4023, file: !4002, line: 457, baseType: !4218, size: 1088, offset: 16576)
!4218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 1088, elements: !4170)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !4023, file: !4002, line: 458, baseType: !4218, size: 1088, offset: 17664)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !4023, file: !4002, line: 469, baseType: !323, size: 64, offset: 18752)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !4023, file: !4002, line: 471, baseType: !4222, size: 64, offset: 18816)
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4223 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !4002, line: 304, flags: DIFlagFwdDecl)
!4224 = !DIDerivedType(tag: DW_TAG_member, scope: !4023, file: !4002, line: 478, baseType: !4225, size: 64, offset: 18880)
!4225 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4023, file: !4002, line: 478, size: 64, elements: !4226)
!4226 = !{!4227, !4230}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4225, file: !4002, line: 479, baseType: !4228, size: 64)
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4229, size: 64)
!4229 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !4002, line: 305, flags: DIFlagFwdDecl)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4225, file: !4002, line: 480, baseType: !4022, size: 64)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !4023, file: !4002, line: 482, baseType: !854, size: 16, offset: 18944)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !4023, file: !4002, line: 483, baseType: !1347, size: 8, offset: 18960)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !4023, file: !4002, line: 497, baseType: !854, size: 16, offset: 18976)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !4023, file: !4002, line: 498, baseType: !2120, size: 64, offset: 19008)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !4023, file: !4002, line: 499, baseType: !317, size: 64, offset: 19072)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !4023, file: !4002, line: 500, baseType: !270, size: 64, offset: 19136)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !4023, file: !4002, line: 502, baseType: !149, size: 64, offset: 19200)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4001, file: !4002, line: 863, baseType: !4239, size: 64, offset: 320)
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = !DISubroutineType(types: !4241)
!4241 = !{null, !4022}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4001, file: !4002, line: 864, baseType: !4243, size: 64, offset: 384)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = !DISubroutineType(types: !4245)
!4245 = !{!196, !4022, !3481}
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4001, file: !4002, line: 865, baseType: !4247, size: 64, offset: 448)
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4248, size: 64)
!4248 = !DISubroutineType(types: !4249)
!4249 = !{!196, !4022}
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4001, file: !4002, line: 866, baseType: !4239, size: 64, offset: 512)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4001, file: !4002, line: 867, baseType: !4252, size: 64, offset: 576)
!4252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4253, size: 64)
!4253 = !DISubroutineType(types: !4254)
!4254 = !{!196, !4022, !196}
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4001, file: !4002, line: 868, baseType: !4256, size: 64, offset: 640)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4258)
!4258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !4002, line: 795, size: 384, elements: !4259)
!4259 = !{!4260, !4265, !4269, !4270, !4271, !4272}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4258, file: !4002, line: 797, baseType: !4261, size: 64)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = !DISubroutineType(types: !4263)
!4263 = !{!4264, !4022, !4164}
!4264 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !4002, line: 772, baseType: !7)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4258, file: !4002, line: 801, baseType: !4266, size: 64, offset: 64)
!4266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4267, size: 64)
!4267 = !DISubroutineType(types: !4268)
!4268 = !{!4264, !4022}
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4258, file: !4002, line: 804, baseType: !4266, size: 64, offset: 128)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4258, file: !4002, line: 807, baseType: !4239, size: 64, offset: 192)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4258, file: !4002, line: 808, baseType: !4239, size: 64, offset: 256)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4258, file: !4002, line: 811, baseType: !4239, size: 64, offset: 320)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4001, file: !4002, line: 869, baseType: !323, size: 64, offset: 704)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4001, file: !4002, line: 870, baseType: !3439, size: 1152, offset: 768)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4001, file: !4002, line: 871, baseType: !4276, size: 128, offset: 1920)
!4276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !4002, line: 759, size: 128, elements: !4277)
!4277 = !{!4278, !4279}
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4276, file: !4002, line: 760, baseType: !229)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4276, file: !4002, line: 761, baseType: !216, size: 128)
!4280 = !DIGlobalVariableExpression(var: !4281, expr: !DIExpression())
!4281 = distinct !DIGlobalVariable(name: "apci2032_pci_table", scope: !2, file: !3, line: 314, type: !4282, isLocal: true, isDefinition: true)
!4282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4008, size: 512, elements: !1564)
!4283 = !{!"rsp"}
!4284 = !{i32 7, !"Dwarf Version", i32 4}
!4285 = !{i32 2, !"Debug Info Version", i32 3}
!4286 = !{i32 1, !"wchar_size", i32 2}
!4287 = !{i32 1, !"Code Model", i32 2}
!4288 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4289 = distinct !DISubprogram(name: "apci2032_driver_init", scope: !3, file: !3, line: 326, type: !4290, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!4290 = !DISubroutineType(types: !4291)
!4291 = !{!196}
!4292 = !DILocation(line: 326, column: 1, scope: !4289)
!4293 = distinct !DISubprogram(name: "apci2032_driver_exit", scope: !3, file: !3, line: 326, type: !156, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!4294 = !DILocation(line: 326, column: 1, scope: !4293)
!4295 = distinct !DISubprogram(name: "apci2032_detach", scope: !3, file: !3, line: 292, type: !3972, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!4296 = !DILocalVariable(name: "dev", arg: 1, scope: !4295, file: !3, line: 292, type: !197)
!4297 = !DILocation(line: 292, column: 51, scope: !4295)
!4298 = !DILocation(line: 294, column: 6, scope: !4299)
!4299 = distinct !DILexicalBlock(scope: !4295, file: !3, line: 294, column: 6)
!4300 = !DILocation(line: 294, column: 11, scope: !4299)
!4301 = !DILocation(line: 294, column: 6, scope: !4295)
!4302 = !DILocation(line: 295, column: 18, scope: !4299)
!4303 = !DILocation(line: 295, column: 3, scope: !4299)
!4304 = !DILocation(line: 296, column: 20, scope: !4295)
!4305 = !DILocation(line: 296, column: 2, scope: !4295)
!4306 = !DILocation(line: 297, column: 6, scope: !4307)
!4307 = distinct !DILexicalBlock(scope: !4295, file: !3, line: 297, column: 6)
!4308 = !DILocation(line: 297, column: 11, scope: !4307)
!4309 = !DILocation(line: 297, column: 6, scope: !4295)
!4310 = !DILocation(line: 298, column: 9, scope: !4307)
!4311 = !DILocation(line: 298, column: 14, scope: !4307)
!4312 = !DILocation(line: 298, column: 27, scope: !4307)
!4313 = !DILocation(line: 298, column: 3, scope: !4307)
!4314 = !DILocation(line: 299, column: 1, scope: !4295)
!4315 = distinct !DISubprogram(name: "apci2032_auto_attach", scope: !3, file: !3, line: 226, type: !3992, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!4316 = !DILocalVariable(name: "lock", arg: 1, scope: !4317, file: !4318, line: 327, type: !1059)
!4317 = distinct !DISubprogram(name: "spinlock_check", scope: !4318, file: !4318, line: 327, type: !4319, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!4318 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!4319 = !DISubroutineType(types: !4320)
!4320 = !{!4321, !1059}
!4321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!4322 = !DILocation(line: 327, column: 67, scope: !4317, inlinedAt: !4323)
!4323 = distinct !DILocation(line: 280, column: 3, scope: !4324)
!4324 = distinct !DILexicalBlock(scope: !4325, file: !3, line: 280, column: 3)
!4325 = distinct !DILexicalBlock(scope: !4326, file: !3, line: 273, column: 16)
!4326 = distinct !DILexicalBlock(scope: !4315, file: !3, line: 273, column: 6)
!4327 = !DILocalVariable(name: "dev", arg: 1, scope: !4315, file: !3, line: 226, type: !197)
!4328 = !DILocation(line: 226, column: 55, scope: !4315)
!4329 = !DILocalVariable(name: "context_unused", arg: 2, scope: !4315, file: !3, line: 227, type: !149)
!4330 = !DILocation(line: 227, column: 19, scope: !4315)
!4331 = !DILocalVariable(name: "pcidev", scope: !4315, file: !3, line: 229, type: !4022)
!4332 = !DILocation(line: 229, column: 18, scope: !4315)
!4333 = !DILocation(line: 229, column: 45, scope: !4315)
!4334 = !DILocation(line: 229, column: 27, scope: !4315)
!4335 = !DILocalVariable(name: "s", scope: !4315, file: !3, line: 230, type: !3826)
!4336 = !DILocation(line: 230, column: 27, scope: !4315)
!4337 = !DILocalVariable(name: "ret", scope: !4315, file: !3, line: 231, type: !196)
!4338 = !DILocation(line: 231, column: 6, scope: !4315)
!4339 = !DILocation(line: 233, column: 26, scope: !4315)
!4340 = !DILocation(line: 233, column: 8, scope: !4315)
!4341 = !DILocation(line: 233, column: 6, scope: !4315)
!4342 = !DILocation(line: 234, column: 6, scope: !4343)
!4343 = distinct !DILexicalBlock(scope: !4315, file: !3, line: 234, column: 6)
!4344 = !DILocation(line: 234, column: 6, scope: !4315)
!4345 = !DILocation(line: 235, column: 10, scope: !4343)
!4346 = !DILocation(line: 235, column: 3, scope: !4343)
!4347 = !DILocation(line: 236, column: 16, scope: !4315)
!4348 = !DILocation(line: 236, column: 2, scope: !4315)
!4349 = !DILocation(line: 236, column: 7, scope: !4315)
!4350 = !DILocation(line: 236, column: 14, scope: !4315)
!4351 = !DILocation(line: 237, column: 17, scope: !4315)
!4352 = !DILocation(line: 237, column: 2, scope: !4315)
!4353 = !DILocation(line: 239, column: 6, scope: !4354)
!4354 = distinct !DILexicalBlock(scope: !4315, file: !3, line: 239, column: 6)
!4355 = !DILocation(line: 239, column: 14, scope: !4354)
!4356 = !DILocation(line: 239, column: 18, scope: !4354)
!4357 = !DILocation(line: 239, column: 6, scope: !4315)
!4358 = !DILocation(line: 240, column: 21, scope: !4359)
!4359 = distinct !DILexicalBlock(scope: !4354, file: !3, line: 239, column: 23)
!4360 = !DILocation(line: 240, column: 29, scope: !4359)
!4361 = !DILocation(line: 241, column: 20, scope: !4359)
!4362 = !DILocation(line: 241, column: 25, scope: !4359)
!4363 = !DILocation(line: 241, column: 37, scope: !4359)
!4364 = !DILocation(line: 240, column: 9, scope: !4359)
!4365 = !DILocation(line: 240, column: 7, scope: !4359)
!4366 = !DILocation(line: 242, column: 7, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4359, file: !3, line: 242, column: 7)
!4368 = !DILocation(line: 242, column: 11, scope: !4367)
!4369 = !DILocation(line: 242, column: 7, scope: !4359)
!4370 = !DILocation(line: 243, column: 15, scope: !4367)
!4371 = !DILocation(line: 243, column: 23, scope: !4367)
!4372 = !DILocation(line: 243, column: 4, scope: !4367)
!4373 = !DILocation(line: 243, column: 9, scope: !4367)
!4374 = !DILocation(line: 243, column: 13, scope: !4367)
!4375 = !DILocation(line: 244, column: 2, scope: !4359)
!4376 = !DILocation(line: 246, column: 32, scope: !4315)
!4377 = !DILocation(line: 246, column: 8, scope: !4315)
!4378 = !DILocation(line: 246, column: 6, scope: !4315)
!4379 = !DILocation(line: 247, column: 6, scope: !4380)
!4380 = distinct !DILexicalBlock(scope: !4315, file: !3, line: 247, column: 6)
!4381 = !DILocation(line: 247, column: 6, scope: !4315)
!4382 = !DILocation(line: 248, column: 10, scope: !4380)
!4383 = !DILocation(line: 248, column: 3, scope: !4380)
!4384 = !DILocation(line: 251, column: 7, scope: !4315)
!4385 = !DILocation(line: 251, column: 12, scope: !4315)
!4386 = !DILocation(line: 251, column: 4, scope: !4315)
!4387 = !DILocation(line: 252, column: 2, scope: !4315)
!4388 = !DILocation(line: 252, column: 5, scope: !4315)
!4389 = !DILocation(line: 252, column: 11, scope: !4315)
!4390 = !DILocation(line: 253, column: 2, scope: !4315)
!4391 = !DILocation(line: 253, column: 5, scope: !4315)
!4392 = !DILocation(line: 253, column: 18, scope: !4315)
!4393 = !DILocation(line: 254, column: 2, scope: !4315)
!4394 = !DILocation(line: 254, column: 5, scope: !4315)
!4395 = !DILocation(line: 254, column: 12, scope: !4315)
!4396 = !DILocation(line: 255, column: 2, scope: !4315)
!4397 = !DILocation(line: 255, column: 5, scope: !4315)
!4398 = !DILocation(line: 255, column: 13, scope: !4315)
!4399 = !DILocation(line: 256, column: 2, scope: !4315)
!4400 = !DILocation(line: 256, column: 5, scope: !4315)
!4401 = !DILocation(line: 256, column: 17, scope: !4315)
!4402 = !DILocation(line: 257, column: 2, scope: !4315)
!4403 = !DILocation(line: 257, column: 5, scope: !4315)
!4404 = !DILocation(line: 257, column: 15, scope: !4315)
!4405 = !DILocation(line: 260, column: 7, scope: !4315)
!4406 = !DILocation(line: 260, column: 12, scope: !4315)
!4407 = !DILocation(line: 260, column: 4, scope: !4315)
!4408 = !DILocation(line: 261, column: 27, scope: !4315)
!4409 = !DILocation(line: 261, column: 30, scope: !4315)
!4410 = !DILocation(line: 261, column: 35, scope: !4315)
!4411 = !DILocation(line: 261, column: 42, scope: !4315)
!4412 = !DILocation(line: 261, column: 8, scope: !4315)
!4413 = !DILocation(line: 261, column: 6, scope: !4315)
!4414 = !DILocation(line: 262, column: 6, scope: !4415)
!4415 = distinct !DILexicalBlock(scope: !4315, file: !3, line: 262, column: 6)
!4416 = !DILocation(line: 262, column: 6, scope: !4315)
!4417 = !DILocation(line: 263, column: 10, scope: !4415)
!4418 = !DILocation(line: 263, column: 3, scope: !4415)
!4419 = !DILocation(line: 266, column: 7, scope: !4315)
!4420 = !DILocation(line: 266, column: 12, scope: !4315)
!4421 = !DILocation(line: 266, column: 4, scope: !4315)
!4422 = !DILocation(line: 267, column: 2, scope: !4315)
!4423 = !DILocation(line: 267, column: 5, scope: !4315)
!4424 = !DILocation(line: 267, column: 11, scope: !4315)
!4425 = !DILocation(line: 268, column: 2, scope: !4315)
!4426 = !DILocation(line: 268, column: 5, scope: !4315)
!4427 = !DILocation(line: 268, column: 18, scope: !4315)
!4428 = !DILocation(line: 269, column: 2, scope: !4315)
!4429 = !DILocation(line: 269, column: 5, scope: !4315)
!4430 = !DILocation(line: 269, column: 12, scope: !4315)
!4431 = !DILocation(line: 270, column: 2, scope: !4315)
!4432 = !DILocation(line: 270, column: 5, scope: !4315)
!4433 = !DILocation(line: 270, column: 13, scope: !4315)
!4434 = !DILocation(line: 271, column: 2, scope: !4315)
!4435 = !DILocation(line: 271, column: 5, scope: !4315)
!4436 = !DILocation(line: 271, column: 17, scope: !4315)
!4437 = !DILocation(line: 272, column: 2, scope: !4315)
!4438 = !DILocation(line: 272, column: 5, scope: !4315)
!4439 = !DILocation(line: 272, column: 15, scope: !4315)
!4440 = !DILocation(line: 273, column: 6, scope: !4326)
!4441 = !DILocation(line: 273, column: 11, scope: !4326)
!4442 = !DILocation(line: 273, column: 6, scope: !4315)
!4443 = !DILocalVariable(name: "subpriv", scope: !4325, file: !3, line: 274, type: !4444)
!4444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4445, size: 64)
!4445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apci2032_int_private", file: !3, line: 37, size: 16, elements: !4446)
!4446 = !{!4447, !4448, !4449}
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "spinlock", scope: !4445, file: !3, line: 38, baseType: !229)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4445, file: !3, line: 39, baseType: !485, size: 8)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "enabled_isns", scope: !4445, file: !3, line: 40, baseType: !422, size: 8, offset: 8)
!4450 = !DILocation(line: 274, column: 32, scope: !4325)
!4451 = !DILocation(line: 276, column: 22, scope: !4325)
!4452 = !DILocation(line: 276, column: 3, scope: !4325)
!4453 = !DILocation(line: 276, column: 8, scope: !4325)
!4454 = !DILocation(line: 276, column: 20, scope: !4325)
!4455 = !DILocation(line: 277, column: 13, scope: !4325)
!4456 = !DILocation(line: 277, column: 11, scope: !4325)
!4457 = !DILocation(line: 278, column: 8, scope: !4458)
!4458 = distinct !DILexicalBlock(scope: !4325, file: !3, line: 278, column: 7)
!4459 = !DILocation(line: 278, column: 7, scope: !4325)
!4460 = !DILocation(line: 279, column: 4, scope: !4458)
!4461 = !DILocation(line: 280, column: 3, scope: !4325)
!4462 = !DILocation(line: 280, column: 3, scope: !4324)
!4463 = !DILocation(line: 329, column: 10, scope: !4317, inlinedAt: !4323)
!4464 = !DILocation(line: 329, column: 16, scope: !4317, inlinedAt: !4323)
!4465 = !DILocation(line: 281, column: 16, scope: !4325)
!4466 = !DILocation(line: 281, column: 3, scope: !4325)
!4467 = !DILocation(line: 281, column: 6, scope: !4325)
!4468 = !DILocation(line: 281, column: 14, scope: !4325)
!4469 = !DILocation(line: 282, column: 3, scope: !4325)
!4470 = !DILocation(line: 282, column: 6, scope: !4325)
!4471 = !DILocation(line: 282, column: 19, scope: !4325)
!4472 = !DILocation(line: 283, column: 3, scope: !4325)
!4473 = !DILocation(line: 283, column: 6, scope: !4325)
!4474 = !DILocation(line: 283, column: 19, scope: !4325)
!4475 = !DILocation(line: 284, column: 3, scope: !4325)
!4476 = !DILocation(line: 284, column: 6, scope: !4325)
!4477 = !DILocation(line: 284, column: 17, scope: !4325)
!4478 = !DILocation(line: 285, column: 3, scope: !4325)
!4479 = !DILocation(line: 285, column: 6, scope: !4325)
!4480 = !DILocation(line: 285, column: 13, scope: !4325)
!4481 = !DILocation(line: 286, column: 3, scope: !4325)
!4482 = !DILocation(line: 286, column: 6, scope: !4325)
!4483 = !DILocation(line: 286, column: 13, scope: !4325)
!4484 = !DILocation(line: 287, column: 2, scope: !4325)
!4485 = !DILocation(line: 289, column: 2, scope: !4315)
!4486 = !DILocation(line: 290, column: 1, scope: !4315)
!4487 = distinct !DISubprogram(name: "apci2032_reset", scope: !3, file: !3, line: 216, type: !3968, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!4488 = !DILocalVariable(name: "dev", arg: 1, scope: !4487, file: !3, line: 216, type: !197)
!4489 = !DILocation(line: 216, column: 49, scope: !4487)
!4490 = !DILocation(line: 218, column: 12, scope: !4487)
!4491 = !DILocation(line: 218, column: 17, scope: !4487)
!4492 = !DILocation(line: 218, column: 24, scope: !4487)
!4493 = !DILocation(line: 218, column: 2, scope: !4487)
!4494 = !DILocation(line: 219, column: 12, scope: !4487)
!4495 = !DILocation(line: 219, column: 17, scope: !4487)
!4496 = !DILocation(line: 219, column: 24, scope: !4487)
!4497 = !DILocation(line: 219, column: 2, scope: !4487)
!4498 = !DILocation(line: 221, column: 22, scope: !4487)
!4499 = !DILocation(line: 221, column: 27, scope: !4487)
!4500 = !DILocation(line: 221, column: 34, scope: !4487)
!4501 = !DILocation(line: 221, column: 2, scope: !4487)
!4502 = !DILocation(line: 223, column: 2, scope: !4487)
!4503 = distinct !DISubprogram(name: "outl", scope: !4504, file: !4504, line: 336, type: !4505, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!4504 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!4505 = !DISubroutineType(types: !4506)
!4506 = !{null, !7, !196}
!4507 = !DILocalVariable(name: "value", arg: 1, scope: !4503, file: !4504, line: 336, type: !7)
!4508 = !DILocation(line: 336, column: 1, scope: !4503)
!4509 = !DILocalVariable(name: "port", arg: 2, scope: !4503, file: !4504, line: 336, type: !196)
!4510 = !{i32 -2143319594}
!4511 = distinct !DISubprogram(name: "request_irq", scope: !4084, file: !4084, line: 157, type: !4512, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!4512 = !DISubroutineType(types: !4513)
!4513 = !{!196, !7, !4514, !149, !187, !148}
!4514 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !4084, line: 92, baseType: !4515)
!4515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4516, size: 64)
!4516 = !DISubroutineType(types: !4517)
!4517 = !{!4518, !196, !148}
!4518 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !117, line: 17, baseType: !116)
!4519 = !DILocalVariable(name: "irq", arg: 1, scope: !4511, file: !4084, line: 157, type: !7)
!4520 = !DILocation(line: 157, column: 26, scope: !4511)
!4521 = !DILocalVariable(name: "handler", arg: 2, scope: !4511, file: !4084, line: 157, type: !4514)
!4522 = !DILocation(line: 157, column: 45, scope: !4511)
!4523 = !DILocalVariable(name: "flags", arg: 3, scope: !4511, file: !4084, line: 157, type: !149)
!4524 = !DILocation(line: 157, column: 68, scope: !4511)
!4525 = !DILocalVariable(name: "name", arg: 4, scope: !4511, file: !4084, line: 158, type: !187)
!4526 = !DILocation(line: 158, column: 18, scope: !4511)
!4527 = !DILocalVariable(name: "dev", arg: 5, scope: !4511, file: !4084, line: 158, type: !148)
!4528 = !DILocation(line: 158, column: 30, scope: !4511)
!4529 = !DILocation(line: 160, column: 30, scope: !4511)
!4530 = !DILocation(line: 160, column: 35, scope: !4511)
!4531 = !DILocation(line: 160, column: 50, scope: !4511)
!4532 = !DILocation(line: 160, column: 57, scope: !4511)
!4533 = !DILocation(line: 160, column: 63, scope: !4511)
!4534 = !DILocation(line: 160, column: 9, scope: !4511)
!4535 = !DILocation(line: 160, column: 2, scope: !4511)
!4536 = distinct !DISubprogram(name: "apci2032_interrupt", scope: !3, file: !3, line: 162, type: !4516, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!4537 = !DILocalVariable(name: "lock", arg: 1, scope: !4538, file: !4318, line: 392, type: !1059)
!4538 = distinct !DISubprogram(name: "spin_unlock", scope: !4318, file: !4318, line: 392, type: !4539, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!4539 = !DISubroutineType(types: !4540)
!4540 = !{null, !1059}
!4541 = !DILocation(line: 392, column: 53, scope: !4538, inlinedAt: !4542)
!4542 = distinct !DILocation(line: 209, column: 2, scope: !4536)
!4543 = !DILocalVariable(name: "lock", arg: 1, scope: !4544, file: !4318, line: 352, type: !1059)
!4544 = distinct !DISubprogram(name: "spin_lock", scope: !4318, file: !4318, line: 352, type: !4539, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!4545 = !DILocation(line: 352, column: 51, scope: !4544, inlinedAt: !4546)
!4546 = distinct !DILocation(line: 179, column: 2, scope: !4536)
!4547 = !DILocalVariable(name: "irq", arg: 1, scope: !4536, file: !3, line: 162, type: !196)
!4548 = !DILocation(line: 162, column: 43, scope: !4536)
!4549 = !DILocalVariable(name: "d", arg: 2, scope: !4536, file: !3, line: 162, type: !148)
!4550 = !DILocation(line: 162, column: 54, scope: !4536)
!4551 = !DILocalVariable(name: "dev", scope: !4536, file: !3, line: 164, type: !197)
!4552 = !DILocation(line: 164, column: 24, scope: !4536)
!4553 = !DILocation(line: 164, column: 30, scope: !4536)
!4554 = !DILocalVariable(name: "s", scope: !4536, file: !3, line: 165, type: !3826)
!4555 = !DILocation(line: 165, column: 27, scope: !4536)
!4556 = !DILocation(line: 165, column: 31, scope: !4536)
!4557 = !DILocation(line: 165, column: 36, scope: !4536)
!4558 = !DILocalVariable(name: "cmd", scope: !4536, file: !3, line: 166, type: !3946)
!4559 = !DILocation(line: 166, column: 21, scope: !4536)
!4560 = !DILocation(line: 166, column: 28, scope: !4536)
!4561 = !DILocation(line: 166, column: 31, scope: !4536)
!4562 = !DILocation(line: 166, column: 38, scope: !4536)
!4563 = !DILocalVariable(name: "subpriv", scope: !4536, file: !3, line: 167, type: !4444)
!4564 = !DILocation(line: 167, column: 31, scope: !4536)
!4565 = !DILocalVariable(name: "val", scope: !4536, file: !3, line: 168, type: !7)
!4566 = !DILocation(line: 168, column: 15, scope: !4536)
!4567 = !DILocation(line: 170, column: 7, scope: !4568)
!4568 = distinct !DILexicalBlock(scope: !4536, file: !3, line: 170, column: 6)
!4569 = !DILocation(line: 170, column: 12, scope: !4568)
!4570 = !DILocation(line: 170, column: 6, scope: !4536)
!4571 = !DILocation(line: 171, column: 3, scope: !4568)
!4572 = !DILocation(line: 174, column: 12, scope: !4536)
!4573 = !DILocation(line: 174, column: 17, scope: !4536)
!4574 = !DILocation(line: 174, column: 24, scope: !4536)
!4575 = !DILocation(line: 174, column: 8, scope: !4536)
!4576 = !DILocation(line: 174, column: 47, scope: !4536)
!4577 = !DILocation(line: 174, column: 6, scope: !4536)
!4578 = !DILocation(line: 175, column: 7, scope: !4579)
!4579 = distinct !DILexicalBlock(scope: !4536, file: !3, line: 175, column: 6)
!4580 = !DILocation(line: 175, column: 6, scope: !4536)
!4581 = !DILocation(line: 176, column: 3, scope: !4579)
!4582 = !DILocation(line: 178, column: 12, scope: !4536)
!4583 = !DILocation(line: 178, column: 15, scope: !4536)
!4584 = !DILocation(line: 178, column: 10, scope: !4536)
!4585 = !DILocation(line: 179, column: 13, scope: !4536)
!4586 = !DILocation(line: 179, column: 22, scope: !4536)
!4587 = !DILocation(line: 354, column: 2, scope: !4588, inlinedAt: !4546)
!4588 = distinct !DILexicalBlock(scope: !4544, file: !4318, line: 354, column: 2)
!4589 = !{i32 -2145473963}
!4590 = !DILocation(line: 354, column: 2, scope: !4591, inlinedAt: !4546)
!4591 = distinct !DILexicalBlock(scope: !4588, file: !4318, line: 354, column: 2)
!4592 = !DILocation(line: 181, column: 12, scope: !4536)
!4593 = !DILocation(line: 181, column: 17, scope: !4536)
!4594 = !DILocation(line: 181, column: 24, scope: !4536)
!4595 = !DILocation(line: 181, column: 8, scope: !4536)
!4596 = !DILocation(line: 181, column: 51, scope: !4536)
!4597 = !DILocation(line: 181, column: 6, scope: !4536)
!4598 = !DILocation(line: 183, column: 8, scope: !4536)
!4599 = !DILocation(line: 183, column: 7, scope: !4536)
!4600 = !DILocation(line: 183, column: 12, scope: !4536)
!4601 = !DILocation(line: 183, column: 17, scope: !4536)
!4602 = !DILocation(line: 183, column: 22, scope: !4536)
!4603 = !DILocation(line: 183, column: 29, scope: !4536)
!4604 = !DILocation(line: 183, column: 2, scope: !4536)
!4605 = !DILocation(line: 190, column: 6, scope: !4606)
!4606 = distinct !DILexicalBlock(scope: !4536, file: !3, line: 190, column: 6)
!4607 = !DILocation(line: 190, column: 15, scope: !4606)
!4608 = !DILocation(line: 190, column: 22, scope: !4606)
!4609 = !DILocation(line: 190, column: 26, scope: !4606)
!4610 = !DILocation(line: 190, column: 32, scope: !4606)
!4611 = !DILocation(line: 190, column: 41, scope: !4606)
!4612 = !DILocation(line: 190, column: 30, scope: !4606)
!4613 = !DILocation(line: 190, column: 55, scope: !4606)
!4614 = !DILocation(line: 190, column: 6, scope: !4536)
!4615 = !DILocalVariable(name: "bits", scope: !4616, file: !3, line: 191, type: !312)
!4616 = distinct !DILexicalBlock(scope: !4606, file: !3, line: 190, column: 61)
!4617 = !DILocation(line: 191, column: 18, scope: !4616)
!4618 = !DILocalVariable(name: "i", scope: !4616, file: !3, line: 192, type: !196)
!4619 = !DILocation(line: 192, column: 7, scope: !4616)
!4620 = !DILocation(line: 195, column: 10, scope: !4621)
!4621 = distinct !DILexicalBlock(scope: !4616, file: !3, line: 195, column: 3)
!4622 = !DILocation(line: 195, column: 8, scope: !4621)
!4623 = !DILocation(line: 195, column: 15, scope: !4624)
!4624 = distinct !DILexicalBlock(scope: !4621, file: !3, line: 195, column: 3)
!4625 = !DILocation(line: 195, column: 19, scope: !4624)
!4626 = !DILocation(line: 195, column: 24, scope: !4624)
!4627 = !DILocation(line: 195, column: 17, scope: !4624)
!4628 = !DILocation(line: 195, column: 3, scope: !4621)
!4629 = !DILocalVariable(name: "chan", scope: !4630, file: !3, line: 196, type: !7)
!4630 = distinct !DILexicalBlock(scope: !4624, file: !3, line: 195, column: 43)
!4631 = !DILocation(line: 196, column: 17, scope: !4630)
!4632 = !DILocation(line: 196, column: 24, scope: !4630)
!4633 = !DILocation(line: 198, column: 8, scope: !4634)
!4634 = distinct !DILexicalBlock(scope: !4630, file: !3, line: 198, column: 8)
!4635 = !DILocation(line: 198, column: 20, scope: !4634)
!4636 = !DILocation(line: 198, column: 17, scope: !4634)
!4637 = !DILocation(line: 198, column: 12, scope: !4634)
!4638 = !DILocation(line: 198, column: 8, scope: !4630)
!4639 = !DILocation(line: 199, column: 19, scope: !4634)
!4640 = !DILocation(line: 199, column: 16, scope: !4634)
!4641 = !DILocation(line: 199, column: 10, scope: !4634)
!4642 = !DILocation(line: 199, column: 5, scope: !4634)
!4643 = !DILocation(line: 200, column: 3, scope: !4630)
!4644 = !DILocation(line: 195, column: 39, scope: !4624)
!4645 = !DILocation(line: 195, column: 3, scope: !4624)
!4646 = distinct !{!4646, !4628, !4647}
!4647 = !DILocation(line: 200, column: 3, scope: !4621)
!4648 = !DILocation(line: 202, column: 28, scope: !4616)
!4649 = !DILocation(line: 202, column: 31, scope: !4616)
!4650 = !DILocation(line: 202, column: 3, scope: !4616)
!4651 = !DILocation(line: 204, column: 7, scope: !4652)
!4652 = distinct !DILexicalBlock(scope: !4616, file: !3, line: 204, column: 7)
!4653 = !DILocation(line: 204, column: 12, scope: !4652)
!4654 = !DILocation(line: 204, column: 21, scope: !4652)
!4655 = !DILocation(line: 204, column: 35, scope: !4652)
!4656 = !DILocation(line: 205, column: 7, scope: !4652)
!4657 = !DILocation(line: 205, column: 10, scope: !4652)
!4658 = !DILocation(line: 205, column: 17, scope: !4652)
!4659 = !DILocation(line: 205, column: 31, scope: !4652)
!4660 = !DILocation(line: 205, column: 36, scope: !4652)
!4661 = !DILocation(line: 205, column: 28, scope: !4652)
!4662 = !DILocation(line: 204, column: 7, scope: !4616)
!4663 = !DILocation(line: 206, column: 4, scope: !4652)
!4664 = !DILocation(line: 206, column: 7, scope: !4652)
!4665 = !DILocation(line: 206, column: 14, scope: !4652)
!4666 = !DILocation(line: 206, column: 21, scope: !4652)
!4667 = !DILocation(line: 207, column: 2, scope: !4616)
!4668 = !DILocation(line: 209, column: 15, scope: !4536)
!4669 = !DILocation(line: 209, column: 24, scope: !4536)
!4670 = !DILocation(line: 394, column: 2, scope: !4671, inlinedAt: !4542)
!4671 = distinct !DILexicalBlock(scope: !4538, file: !4318, line: 394, column: 2)
!4672 = !{i32 -2145471602}
!4673 = !DILocation(line: 394, column: 2, scope: !4674, inlinedAt: !4542)
!4674 = distinct !DILexicalBlock(scope: !4671, file: !4318, line: 394, column: 2)
!4675 = !DILocation(line: 211, column: 23, scope: !4536)
!4676 = !DILocation(line: 211, column: 28, scope: !4536)
!4677 = !DILocation(line: 211, column: 2, scope: !4536)
!4678 = !DILocation(line: 213, column: 2, scope: !4536)
!4679 = !DILocation(line: 214, column: 1, scope: !4536)
!4680 = distinct !DISubprogram(name: "apci2032_do_insn_bits", scope: !3, file: !3, line: 43, type: !3923, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!4681 = !DILocalVariable(name: "dev", arg: 1, scope: !4680, file: !3, line: 43, type: !197)
!4682 = !DILocation(line: 43, column: 56, scope: !4680)
!4683 = !DILocalVariable(name: "s", arg: 2, scope: !4680, file: !3, line: 44, type: !3826)
!4684 = !DILocation(line: 44, column: 31, scope: !4680)
!4685 = !DILocalVariable(name: "insn", arg: 3, scope: !4680, file: !3, line: 45, type: !3925)
!4686 = !DILocation(line: 45, column: 26, scope: !4680)
!4687 = !DILocalVariable(name: "data", arg: 4, scope: !4680, file: !3, line: 46, type: !2678)
!4688 = !DILocation(line: 46, column: 20, scope: !4680)
!4689 = !DILocation(line: 48, column: 17, scope: !4680)
!4690 = !DILocation(line: 48, column: 22, scope: !4680)
!4691 = !DILocation(line: 48, column: 29, scope: !4680)
!4692 = !DILocation(line: 48, column: 13, scope: !4680)
!4693 = !DILocation(line: 48, column: 2, scope: !4680)
!4694 = !DILocation(line: 48, column: 5, scope: !4680)
!4695 = !DILocation(line: 48, column: 11, scope: !4680)
!4696 = !DILocation(line: 50, column: 30, scope: !4697)
!4697 = distinct !DILexicalBlock(scope: !4680, file: !3, line: 50, column: 6)
!4698 = !DILocation(line: 50, column: 33, scope: !4697)
!4699 = !DILocation(line: 50, column: 6, scope: !4697)
!4700 = !DILocation(line: 50, column: 6, scope: !4680)
!4701 = !DILocation(line: 51, column: 8, scope: !4697)
!4702 = !DILocation(line: 51, column: 11, scope: !4697)
!4703 = !DILocation(line: 51, column: 18, scope: !4697)
!4704 = !DILocation(line: 51, column: 23, scope: !4697)
!4705 = !DILocation(line: 51, column: 30, scope: !4697)
!4706 = !DILocation(line: 51, column: 3, scope: !4697)
!4707 = !DILocation(line: 53, column: 12, scope: !4680)
!4708 = !DILocation(line: 53, column: 15, scope: !4680)
!4709 = !DILocation(line: 53, column: 2, scope: !4680)
!4710 = !DILocation(line: 53, column: 10, scope: !4680)
!4711 = !DILocation(line: 55, column: 9, scope: !4680)
!4712 = !DILocation(line: 55, column: 15, scope: !4680)
!4713 = !DILocation(line: 55, column: 2, scope: !4680)
!4714 = distinct !DISubprogram(name: "apci2032_int_insn_bits", scope: !3, file: !3, line: 58, type: !3923, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!4715 = !DILocalVariable(name: "dev", arg: 1, scope: !4714, file: !3, line: 58, type: !197)
!4716 = !DILocation(line: 58, column: 57, scope: !4714)
!4717 = !DILocalVariable(name: "s", arg: 2, scope: !4714, file: !3, line: 59, type: !3826)
!4718 = !DILocation(line: 59, column: 32, scope: !4714)
!4719 = !DILocalVariable(name: "insn", arg: 3, scope: !4714, file: !3, line: 60, type: !3925)
!4720 = !DILocation(line: 60, column: 27, scope: !4714)
!4721 = !DILocalVariable(name: "data", arg: 4, scope: !4714, file: !3, line: 61, type: !2678)
!4722 = !DILocation(line: 61, column: 21, scope: !4714)
!4723 = !DILocation(line: 63, column: 16, scope: !4714)
!4724 = !DILocation(line: 63, column: 21, scope: !4714)
!4725 = !DILocation(line: 63, column: 28, scope: !4714)
!4726 = !DILocation(line: 63, column: 12, scope: !4714)
!4727 = !DILocation(line: 63, column: 55, scope: !4714)
!4728 = !DILocation(line: 63, column: 2, scope: !4714)
!4729 = !DILocation(line: 63, column: 10, scope: !4714)
!4730 = !DILocation(line: 64, column: 9, scope: !4714)
!4731 = !DILocation(line: 64, column: 15, scope: !4714)
!4732 = !DILocation(line: 64, column: 2, scope: !4714)
!4733 = distinct !DISubprogram(name: "kzalloc", scope: !134, file: !134, line: 662, type: !4734, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!4734 = !DISubroutineType(types: !4735)
!4735 = !{!148, !317, !146}
!4736 = !DILocalVariable(name: "s", arg: 1, scope: !4737, file: !134, line: 445, type: !930)
!4737 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !134, file: !134, line: 445, type: !4738, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!4738 = !DISubroutineType(types: !4739)
!4739 = !{!148, !930, !146, !317}
!4740 = !DILocation(line: 445, column: 72, scope: !4737, inlinedAt: !4741)
!4741 = distinct !DILocation(line: 552, column: 10, scope: !4742, inlinedAt: !4745)
!4742 = distinct !DILexicalBlock(scope: !4743, file: !134, line: 540, column: 34)
!4743 = distinct !DILexicalBlock(scope: !4744, file: !134, line: 540, column: 6)
!4744 = distinct !DISubprogram(name: "kmalloc", scope: !134, file: !134, line: 538, type: !4734, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!4745 = distinct !DILocation(line: 664, column: 9, scope: !4733)
!4746 = !DILocalVariable(name: "flags", arg: 2, scope: !4737, file: !134, line: 446, type: !146)
!4747 = !DILocation(line: 446, column: 9, scope: !4737, inlinedAt: !4741)
!4748 = !DILocalVariable(name: "size", arg: 3, scope: !4737, file: !134, line: 446, type: !317)
!4749 = !DILocation(line: 446, column: 23, scope: !4737, inlinedAt: !4741)
!4750 = !DILocalVariable(name: "ret", scope: !4737, file: !134, line: 448, type: !148)
!4751 = !DILocation(line: 448, column: 8, scope: !4737, inlinedAt: !4741)
!4752 = !DILocalVariable(name: "flags", arg: 1, scope: !4753, file: !134, line: 318, type: !146)
!4753 = distinct !DISubprogram(name: "kmalloc_type", scope: !134, file: !134, line: 318, type: !4754, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!4754 = !DISubroutineType(types: !4755)
!4755 = !{!133, !146}
!4756 = !DILocation(line: 318, column: 67, scope: !4753, inlinedAt: !4757)
!4757 = distinct !DILocation(line: 553, column: 20, scope: !4742, inlinedAt: !4745)
!4758 = !DILocalVariable(name: "size", arg: 1, scope: !4759, file: !134, line: 346, type: !317)
!4759 = distinct !DISubprogram(name: "kmalloc_index", scope: !134, file: !134, line: 346, type: !4760, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!4760 = !DISubroutineType(types: !4761)
!4761 = !{!7, !317}
!4762 = !DILocation(line: 346, column: 58, scope: !4759, inlinedAt: !4763)
!4763 = distinct !DILocation(line: 547, column: 11, scope: !4742, inlinedAt: !4745)
!4764 = !DILocalVariable(name: "size", arg: 1, scope: !4765, file: !134, line: 472, type: !317)
!4765 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !134, file: !134, line: 472, type: !4766, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!4766 = !DISubroutineType(types: !4767)
!4767 = !{!148, !317, !146, !7}
!4768 = !DILocation(line: 472, column: 28, scope: !4765, inlinedAt: !4769)
!4769 = distinct !DILocation(line: 481, column: 9, scope: !4770, inlinedAt: !4771)
!4770 = distinct !DISubprogram(name: "kmalloc_large", scope: !134, file: !134, line: 478, type: !4734, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!4771 = distinct !DILocation(line: 545, column: 11, scope: !4772, inlinedAt: !4745)
!4772 = distinct !DILexicalBlock(scope: !4742, file: !134, line: 544, column: 7)
!4773 = !DILocalVariable(name: "flags", arg: 2, scope: !4765, file: !134, line: 472, type: !146)
!4774 = !DILocation(line: 472, column: 40, scope: !4765, inlinedAt: !4769)
!4775 = !DILocalVariable(name: "order", arg: 3, scope: !4765, file: !134, line: 472, type: !7)
!4776 = !DILocation(line: 472, column: 60, scope: !4765, inlinedAt: !4769)
!4777 = !DILocalVariable(name: "size", arg: 1, scope: !4770, file: !134, line: 478, type: !317)
!4778 = !DILocation(line: 478, column: 51, scope: !4770, inlinedAt: !4771)
!4779 = !DILocalVariable(name: "flags", arg: 2, scope: !4770, file: !134, line: 478, type: !146)
!4780 = !DILocation(line: 478, column: 63, scope: !4770, inlinedAt: !4771)
!4781 = !DILocalVariable(name: "order", scope: !4770, file: !134, line: 480, type: !7)
!4782 = !DILocation(line: 480, column: 15, scope: !4770, inlinedAt: !4771)
!4783 = !DILocalVariable(name: "size", arg: 1, scope: !4744, file: !134, line: 538, type: !317)
!4784 = !DILocation(line: 538, column: 45, scope: !4744, inlinedAt: !4745)
!4785 = !DILocalVariable(name: "flags", arg: 2, scope: !4744, file: !134, line: 538, type: !146)
!4786 = !DILocation(line: 538, column: 57, scope: !4744, inlinedAt: !4745)
!4787 = !DILocalVariable(name: "index", scope: !4742, file: !134, line: 542, type: !7)
!4788 = !DILocation(line: 542, column: 16, scope: !4742, inlinedAt: !4745)
!4789 = !DILocalVariable(name: "size", arg: 1, scope: !4733, file: !134, line: 662, type: !317)
!4790 = !DILocation(line: 662, column: 36, scope: !4733)
!4791 = !DILocalVariable(name: "flags", arg: 2, scope: !4733, file: !134, line: 662, type: !146)
!4792 = !DILocation(line: 662, column: 48, scope: !4733)
!4793 = !DILocation(line: 664, column: 17, scope: !4733)
!4794 = !DILocation(line: 664, column: 23, scope: !4733)
!4795 = !DILocation(line: 664, column: 29, scope: !4733)
!4796 = !DILocation(line: 540, column: 27, scope: !4743, inlinedAt: !4745)
!4797 = !DILocation(line: 540, column: 6, scope: !4743, inlinedAt: !4745)
!4798 = !DILocation(line: 540, column: 6, scope: !4744, inlinedAt: !4745)
!4799 = !DILocation(line: 544, column: 7, scope: !4772, inlinedAt: !4745)
!4800 = !DILocation(line: 544, column: 12, scope: !4772, inlinedAt: !4745)
!4801 = !DILocation(line: 544, column: 7, scope: !4742, inlinedAt: !4745)
!4802 = !DILocation(line: 545, column: 25, scope: !4772, inlinedAt: !4745)
!4803 = !DILocation(line: 545, column: 31, scope: !4772, inlinedAt: !4745)
!4804 = !DILocation(line: 480, column: 33, scope: !4770, inlinedAt: !4771)
!4805 = !DILocation(line: 480, column: 23, scope: !4770, inlinedAt: !4771)
!4806 = !DILocation(line: 481, column: 29, scope: !4770, inlinedAt: !4771)
!4807 = !DILocation(line: 481, column: 35, scope: !4770, inlinedAt: !4771)
!4808 = !DILocation(line: 481, column: 42, scope: !4770, inlinedAt: !4771)
!4809 = !DILocation(line: 474, column: 23, scope: !4765, inlinedAt: !4769)
!4810 = !DILocation(line: 474, column: 29, scope: !4765, inlinedAt: !4769)
!4811 = !DILocation(line: 474, column: 36, scope: !4765, inlinedAt: !4769)
!4812 = !DILocation(line: 474, column: 9, scope: !4765, inlinedAt: !4769)
!4813 = !DILocation(line: 545, column: 4, scope: !4772, inlinedAt: !4745)
!4814 = !DILocation(line: 547, column: 25, scope: !4742, inlinedAt: !4745)
!4815 = !DILocation(line: 348, column: 7, scope: !4816, inlinedAt: !4763)
!4816 = distinct !DILexicalBlock(scope: !4759, file: !134, line: 348, column: 6)
!4817 = !DILocation(line: 348, column: 6, scope: !4759, inlinedAt: !4763)
!4818 = !DILocation(line: 349, column: 3, scope: !4816, inlinedAt: !4763)
!4819 = !DILocation(line: 351, column: 6, scope: !4820, inlinedAt: !4763)
!4820 = distinct !DILexicalBlock(scope: !4759, file: !134, line: 351, column: 6)
!4821 = !DILocation(line: 351, column: 11, scope: !4820, inlinedAt: !4763)
!4822 = !DILocation(line: 351, column: 6, scope: !4759, inlinedAt: !4763)
!4823 = !DILocation(line: 352, column: 3, scope: !4820, inlinedAt: !4763)
!4824 = !DILocation(line: 354, column: 32, scope: !4825, inlinedAt: !4763)
!4825 = distinct !DILexicalBlock(scope: !4759, file: !134, line: 354, column: 6)
!4826 = !DILocation(line: 354, column: 37, scope: !4825, inlinedAt: !4763)
!4827 = !DILocation(line: 354, column: 42, scope: !4825, inlinedAt: !4763)
!4828 = !DILocation(line: 354, column: 45, scope: !4825, inlinedAt: !4763)
!4829 = !DILocation(line: 354, column: 50, scope: !4825, inlinedAt: !4763)
!4830 = !DILocation(line: 354, column: 6, scope: !4759, inlinedAt: !4763)
!4831 = !DILocation(line: 355, column: 3, scope: !4825, inlinedAt: !4763)
!4832 = !DILocation(line: 356, column: 32, scope: !4833, inlinedAt: !4763)
!4833 = distinct !DILexicalBlock(scope: !4759, file: !134, line: 356, column: 6)
!4834 = !DILocation(line: 356, column: 37, scope: !4833, inlinedAt: !4763)
!4835 = !DILocation(line: 356, column: 43, scope: !4833, inlinedAt: !4763)
!4836 = !DILocation(line: 356, column: 46, scope: !4833, inlinedAt: !4763)
!4837 = !DILocation(line: 356, column: 51, scope: !4833, inlinedAt: !4763)
!4838 = !DILocation(line: 356, column: 6, scope: !4759, inlinedAt: !4763)
!4839 = !DILocation(line: 357, column: 3, scope: !4833, inlinedAt: !4763)
!4840 = !DILocation(line: 358, column: 6, scope: !4841, inlinedAt: !4763)
!4841 = distinct !DILexicalBlock(scope: !4759, file: !134, line: 358, column: 6)
!4842 = !DILocation(line: 358, column: 11, scope: !4841, inlinedAt: !4763)
!4843 = !DILocation(line: 358, column: 6, scope: !4759, inlinedAt: !4763)
!4844 = !DILocation(line: 358, column: 26, scope: !4841, inlinedAt: !4763)
!4845 = !DILocation(line: 359, column: 6, scope: !4846, inlinedAt: !4763)
!4846 = distinct !DILexicalBlock(scope: !4759, file: !134, line: 359, column: 6)
!4847 = !DILocation(line: 359, column: 11, scope: !4846, inlinedAt: !4763)
!4848 = !DILocation(line: 359, column: 6, scope: !4759, inlinedAt: !4763)
!4849 = !DILocation(line: 359, column: 26, scope: !4846, inlinedAt: !4763)
!4850 = !DILocation(line: 360, column: 6, scope: !4851, inlinedAt: !4763)
!4851 = distinct !DILexicalBlock(scope: !4759, file: !134, line: 360, column: 6)
!4852 = !DILocation(line: 360, column: 11, scope: !4851, inlinedAt: !4763)
!4853 = !DILocation(line: 360, column: 6, scope: !4759, inlinedAt: !4763)
!4854 = !DILocation(line: 360, column: 26, scope: !4851, inlinedAt: !4763)
!4855 = !DILocation(line: 361, column: 6, scope: !4856, inlinedAt: !4763)
!4856 = distinct !DILexicalBlock(scope: !4759, file: !134, line: 361, column: 6)
!4857 = !DILocation(line: 361, column: 11, scope: !4856, inlinedAt: !4763)
!4858 = !DILocation(line: 361, column: 6, scope: !4759, inlinedAt: !4763)
!4859 = !DILocation(line: 361, column: 26, scope: !4856, inlinedAt: !4763)
!4860 = !DILocation(line: 362, column: 6, scope: !4861, inlinedAt: !4763)
!4861 = distinct !DILexicalBlock(scope: !4759, file: !134, line: 362, column: 6)
!4862 = !DILocation(line: 362, column: 11, scope: !4861, inlinedAt: !4763)
!4863 = !DILocation(line: 362, column: 6, scope: !4759, inlinedAt: !4763)
!4864 = !DILocation(line: 362, column: 26, scope: !4861, inlinedAt: !4763)
!4865 = !DILocation(line: 363, column: 6, scope: !4866, inlinedAt: !4763)
!4866 = distinct !DILexicalBlock(scope: !4759, file: !134, line: 363, column: 6)
!4867 = !DILocation(line: 363, column: 11, scope: !4866, inlinedAt: !4763)
!4868 = !DILocation(line: 363, column: 6, scope: !4759, inlinedAt: !4763)
!4869 = !DILocation(line: 363, column: 26, scope: !4866, inlinedAt: !4763)
!4870 = !DILocation(line: 364, column: 6, scope: !4871, inlinedAt: !4763)
!4871 = distinct !DILexicalBlock(scope: !4759, file: !134, line: 364, column: 6)
!4872 = !DILocation(line: 364, column: 11, scope: !4871, inlinedAt: !4763)
!4873 = !DILocation(line: 364, column: 6, scope: !4759, inlinedAt: !4763)
!4874 = !DILocation(line: 364, column: 26, scope: !4871, inlinedAt: !4763)
!4875 = !DILocation(line: 365, column: 6, scope: !4876, inlinedAt: !4763)
!4876 = distinct !DILexicalBlock(scope: !4759, file: !134, line: 365, column: 6)
!4877 = !DILocation(line: 365, column: 11, scope: !4876, inlinedAt: !4763)
!4878 = !DILocation(line: 365, column: 6, scope: !4759, inlinedAt: !4763)
!4879 = !DILocation(line: 365, column: 26, scope: !4876, inlinedAt: !4763)
!4880 = !DILocation(line: 366, column: 6, scope: !4881, inlinedAt: !4763)
!4881 = distinct !DILexicalBlock(scope: !4759, file: !134, line: 366, column: 6)
!4882 = !DILocation(line: 366, column: 11, scope: !4881, inlinedAt: !4763)
!4883 = !DILocation(line: 366, column: 6, scope: !4759, inlinedAt: !4763)
!4884 = !DILocation(line: 366, column: 26, scope: !4881, inlinedAt: !4763)
!4885 = !DILocation(line: 367, column: 6, scope: !4886, inlinedAt: !4763)
!4886 = distinct !DILexicalBlock(scope: !4759, file: !134, line: 367, column: 6)
!4887 = !DILocation(line: 367, column: 11, scope: !4886, inlinedAt: !4763)
!4888 = !DILocation(line: 367, column: 6, scope: !4759, inlinedAt: !4763)
!4889 = !DILocation(line: 367, column: 26, scope: !4886, inlinedAt: !4763)
!4890 = !DILocation(line: 368, column: 6, scope: !4891, inlinedAt: !4763)
!4891 = distinct !DILexicalBlock(scope: !4759, file: !134, line: 368, column: 6)
!4892 = !DILocation(line: 368, column: 11, scope: !4891, inlinedAt: !4763)
!4893 = !DILocation(line: 368, column: 6, scope: !4759, inlinedAt: !4763)
!4894 = !DILocation(line: 368, column: 26, scope: !4891, inlinedAt: !4763)
!4895 = !DILocation(line: 369, column: 6, scope: !4896, inlinedAt: !4763)
!4896 = distinct !DILexicalBlock(scope: !4759, file: !134, line: 369, column: 6)
!4897 = !DILocation(line: 369, column: 11, scope: !4896, inlinedAt: !4763)
!4898 = !DILocation(line: 369, column: 6, scope: !4759, inlinedAt: !4763)
!4899 = !DILocation(line: 369, column: 26, scope: !4896, inlinedAt: !4763)
!4900 = !DILocation(line: 370, column: 6, scope: !4901, inlinedAt: !4763)
!4901 = distinct !DILexicalBlock(scope: !4759, file: !134, line: 370, column: 6)
!4902 = !DILocation(line: 370, column: 11, scope: !4901, inlinedAt: !4763)
!4903 = !DILocation(line: 370, column: 6, scope: !4759, inlinedAt: !4763)
!4904 = !DILocation(line: 370, column: 26, scope: !4901, inlinedAt: !4763)
!4905 = !DILocation(line: 371, column: 6, scope: !4906, inlinedAt: !4763)
!4906 = distinct !DILexicalBlock(scope: !4759, file: !134, line: 371, column: 6)
!4907 = !DILocation(line: 371, column: 11, scope: !4906, inlinedAt: !4763)
!4908 = !DILocation(line: 371, column: 6, scope: !4759, inlinedAt: !4763)
!4909 = !DILocation(line: 371, column: 26, scope: !4906, inlinedAt: !4763)
!4910 = !DILocation(line: 372, column: 6, scope: !4911, inlinedAt: !4763)
!4911 = distinct !DILexicalBlock(scope: !4759, file: !134, line: 372, column: 6)
!4912 = !DILocation(line: 372, column: 11, scope: !4911, inlinedAt: !4763)
!4913 = !DILocation(line: 372, column: 6, scope: !4759, inlinedAt: !4763)
!4914 = !DILocation(line: 372, column: 26, scope: !4911, inlinedAt: !4763)
!4915 = !DILocation(line: 373, column: 6, scope: !4916, inlinedAt: !4763)
!4916 = distinct !DILexicalBlock(scope: !4759, file: !134, line: 373, column: 6)
!4917 = !DILocation(line: 373, column: 11, scope: !4916, inlinedAt: !4763)
!4918 = !DILocation(line: 373, column: 6, scope: !4759, inlinedAt: !4763)
!4919 = !DILocation(line: 373, column: 26, scope: !4916, inlinedAt: !4763)
!4920 = !DILocation(line: 374, column: 6, scope: !4921, inlinedAt: !4763)
!4921 = distinct !DILexicalBlock(scope: !4759, file: !134, line: 374, column: 6)
!4922 = !DILocation(line: 374, column: 11, scope: !4921, inlinedAt: !4763)
!4923 = !DILocation(line: 374, column: 6, scope: !4759, inlinedAt: !4763)
!4924 = !DILocation(line: 374, column: 26, scope: !4921, inlinedAt: !4763)
!4925 = !DILocation(line: 375, column: 6, scope: !4926, inlinedAt: !4763)
!4926 = distinct !DILexicalBlock(scope: !4759, file: !134, line: 375, column: 6)
!4927 = !DILocation(line: 375, column: 11, scope: !4926, inlinedAt: !4763)
!4928 = !DILocation(line: 375, column: 6, scope: !4759, inlinedAt: !4763)
!4929 = !DILocation(line: 375, column: 27, scope: !4926, inlinedAt: !4763)
!4930 = !DILocation(line: 376, column: 6, scope: !4931, inlinedAt: !4763)
!4931 = distinct !DILexicalBlock(scope: !4759, file: !134, line: 376, column: 6)
!4932 = !DILocation(line: 376, column: 11, scope: !4931, inlinedAt: !4763)
!4933 = !DILocation(line: 376, column: 6, scope: !4759, inlinedAt: !4763)
!4934 = !DILocation(line: 376, column: 32, scope: !4931, inlinedAt: !4763)
!4935 = !DILocation(line: 377, column: 6, scope: !4936, inlinedAt: !4763)
!4936 = distinct !DILexicalBlock(scope: !4759, file: !134, line: 377, column: 6)
!4937 = !DILocation(line: 377, column: 11, scope: !4936, inlinedAt: !4763)
!4938 = !DILocation(line: 377, column: 6, scope: !4759, inlinedAt: !4763)
!4939 = !DILocation(line: 377, column: 32, scope: !4936, inlinedAt: !4763)
!4940 = !DILocation(line: 378, column: 6, scope: !4941, inlinedAt: !4763)
!4941 = distinct !DILexicalBlock(scope: !4759, file: !134, line: 378, column: 6)
!4942 = !DILocation(line: 378, column: 11, scope: !4941, inlinedAt: !4763)
!4943 = !DILocation(line: 378, column: 6, scope: !4759, inlinedAt: !4763)
!4944 = !DILocation(line: 378, column: 32, scope: !4941, inlinedAt: !4763)
!4945 = !DILocation(line: 379, column: 6, scope: !4946, inlinedAt: !4763)
!4946 = distinct !DILexicalBlock(scope: !4759, file: !134, line: 379, column: 6)
!4947 = !DILocation(line: 379, column: 11, scope: !4946, inlinedAt: !4763)
!4948 = !DILocation(line: 379, column: 6, scope: !4759, inlinedAt: !4763)
!4949 = !DILocation(line: 379, column: 33, scope: !4946, inlinedAt: !4763)
!4950 = !DILocation(line: 380, column: 6, scope: !4951, inlinedAt: !4763)
!4951 = distinct !DILexicalBlock(scope: !4759, file: !134, line: 380, column: 6)
!4952 = !DILocation(line: 380, column: 11, scope: !4951, inlinedAt: !4763)
!4953 = !DILocation(line: 380, column: 6, scope: !4759, inlinedAt: !4763)
!4954 = !DILocation(line: 380, column: 33, scope: !4951, inlinedAt: !4763)
!4955 = !DILocation(line: 381, column: 6, scope: !4956, inlinedAt: !4763)
!4956 = distinct !DILexicalBlock(scope: !4759, file: !134, line: 381, column: 6)
!4957 = !DILocation(line: 381, column: 11, scope: !4956, inlinedAt: !4763)
!4958 = !DILocation(line: 381, column: 6, scope: !4759, inlinedAt: !4763)
!4959 = !DILocation(line: 381, column: 33, scope: !4956, inlinedAt: !4763)
!4960 = !DILocation(line: 382, column: 2, scope: !4961, inlinedAt: !4763)
!4961 = distinct !DILexicalBlock(scope: !4962, file: !134, line: 382, column: 2)
!4962 = distinct !DILexicalBlock(scope: !4759, file: !134, line: 382, column: 2)
!4963 = !{i32 -2144128349, i32 -2144128320, i32 -2144128274, i32 -2144128216, i32 -2144128162, i32 -2144128108, i32 -2144128053, i32 -2144128022}
!4964 = !DILocation(line: 382, column: 2, scope: !4965, inlinedAt: !4763)
!4965 = distinct !DILexicalBlock(scope: !4966, file: !134, line: 382, column: 2)
!4966 = distinct !DILexicalBlock(scope: !4962, file: !134, line: 382, column: 2)
!4967 = !{i32 -2144127579, i32 -2144127572, i32 -2144127518, i32 -2144127487, i32 -2144127457}
!4968 = !DILocation(line: 382, column: 2, scope: !4966, inlinedAt: !4763)
!4969 = !DILocation(line: 386, column: 1, scope: !4759, inlinedAt: !4763)
!4970 = !DILocation(line: 547, column: 9, scope: !4742, inlinedAt: !4745)
!4971 = !DILocation(line: 549, column: 8, scope: !4972, inlinedAt: !4745)
!4972 = distinct !DILexicalBlock(scope: !4742, file: !134, line: 549, column: 7)
!4973 = !DILocation(line: 549, column: 7, scope: !4742, inlinedAt: !4745)
!4974 = !DILocation(line: 550, column: 4, scope: !4972, inlinedAt: !4745)
!4975 = !DILocation(line: 553, column: 33, scope: !4742, inlinedAt: !4745)
!4976 = !DILocation(line: 325, column: 6, scope: !4977, inlinedAt: !4757)
!4977 = distinct !DILexicalBlock(scope: !4753, file: !134, line: 325, column: 6)
!4978 = !DILocation(line: 325, column: 6, scope: !4753, inlinedAt: !4757)
!4979 = !DILocation(line: 326, column: 3, scope: !4977, inlinedAt: !4757)
!4980 = !DILocation(line: 332, column: 9, scope: !4753, inlinedAt: !4757)
!4981 = !DILocation(line: 332, column: 15, scope: !4753, inlinedAt: !4757)
!4982 = !DILocation(line: 332, column: 2, scope: !4753, inlinedAt: !4757)
!4983 = !DILocation(line: 336, column: 1, scope: !4753, inlinedAt: !4757)
!4984 = !DILocation(line: 553, column: 5, scope: !4742, inlinedAt: !4745)
!4985 = !DILocation(line: 553, column: 41, scope: !4742, inlinedAt: !4745)
!4986 = !DILocation(line: 554, column: 5, scope: !4742, inlinedAt: !4745)
!4987 = !DILocation(line: 554, column: 12, scope: !4742, inlinedAt: !4745)
!4988 = !DILocation(line: 448, column: 31, scope: !4737, inlinedAt: !4741)
!4989 = !DILocation(line: 448, column: 34, scope: !4737, inlinedAt: !4741)
!4990 = !DILocation(line: 448, column: 14, scope: !4737, inlinedAt: !4741)
!4991 = !DILocation(line: 450, column: 22, scope: !4737, inlinedAt: !4741)
!4992 = !DILocation(line: 450, column: 25, scope: !4737, inlinedAt: !4741)
!4993 = !DILocation(line: 450, column: 30, scope: !4737, inlinedAt: !4741)
!4994 = !DILocation(line: 450, column: 36, scope: !4737, inlinedAt: !4741)
!4995 = !DILocation(line: 450, column: 8, scope: !4737, inlinedAt: !4741)
!4996 = !DILocation(line: 450, column: 6, scope: !4737, inlinedAt: !4741)
!4997 = !DILocation(line: 451, column: 9, scope: !4737, inlinedAt: !4741)
!4998 = !DILocation(line: 552, column: 3, scope: !4742, inlinedAt: !4745)
!4999 = !DILocation(line: 557, column: 19, scope: !4744, inlinedAt: !4745)
!5000 = !DILocation(line: 557, column: 25, scope: !4744, inlinedAt: !4745)
!5001 = !DILocation(line: 557, column: 9, scope: !4744, inlinedAt: !4745)
!5002 = !DILocation(line: 557, column: 2, scope: !4744, inlinedAt: !4745)
!5003 = !DILocation(line: 558, column: 1, scope: !4744, inlinedAt: !4745)
!5004 = !DILocation(line: 664, column: 2, scope: !4733)
!5005 = distinct !DISubprogram(name: "apci2032_int_cmdtest", scope: !3, file: !3, line: 77, type: !3944, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!5006 = !DILocalVariable(name: "dev", arg: 1, scope: !5005, file: !3, line: 77, type: !197)
!5007 = !DILocation(line: 77, column: 55, scope: !5005)
!5008 = !DILocalVariable(name: "s", arg: 2, scope: !5005, file: !3, line: 78, type: !3826)
!5009 = !DILocation(line: 78, column: 30, scope: !5005)
!5010 = !DILocalVariable(name: "cmd", arg: 3, scope: !5005, file: !3, line: 79, type: !3946)
!5011 = !DILocation(line: 79, column: 24, scope: !5005)
!5012 = !DILocalVariable(name: "err", scope: !5005, file: !3, line: 81, type: !196)
!5013 = !DILocation(line: 81, column: 6, scope: !5005)
!5014 = !DILocation(line: 85, column: 35, scope: !5005)
!5015 = !DILocation(line: 85, column: 40, scope: !5005)
!5016 = !DILocation(line: 85, column: 9, scope: !5005)
!5017 = !DILocation(line: 85, column: 6, scope: !5005)
!5018 = !DILocation(line: 86, column: 35, scope: !5005)
!5019 = !DILocation(line: 86, column: 40, scope: !5005)
!5020 = !DILocation(line: 86, column: 9, scope: !5005)
!5021 = !DILocation(line: 86, column: 6, scope: !5005)
!5022 = !DILocation(line: 87, column: 35, scope: !5005)
!5023 = !DILocation(line: 87, column: 40, scope: !5005)
!5024 = !DILocation(line: 87, column: 9, scope: !5005)
!5025 = !DILocation(line: 87, column: 6, scope: !5005)
!5026 = !DILocation(line: 88, column: 35, scope: !5005)
!5027 = !DILocation(line: 88, column: 40, scope: !5005)
!5028 = !DILocation(line: 88, column: 9, scope: !5005)
!5029 = !DILocation(line: 88, column: 6, scope: !5005)
!5030 = !DILocation(line: 89, column: 35, scope: !5005)
!5031 = !DILocation(line: 89, column: 40, scope: !5005)
!5032 = !DILocation(line: 89, column: 9, scope: !5005)
!5033 = !DILocation(line: 89, column: 6, scope: !5005)
!5034 = !DILocation(line: 91, column: 6, scope: !5035)
!5035 = distinct !DILexicalBlock(scope: !5005, file: !3, line: 91, column: 6)
!5036 = !DILocation(line: 91, column: 6, scope: !5005)
!5037 = !DILocation(line: 92, column: 3, scope: !5035)
!5038 = !DILocation(line: 95, column: 40, scope: !5005)
!5039 = !DILocation(line: 95, column: 45, scope: !5005)
!5040 = !DILocation(line: 95, column: 9, scope: !5005)
!5041 = !DILocation(line: 95, column: 6, scope: !5005)
!5042 = !DILocation(line: 99, column: 6, scope: !5043)
!5043 = distinct !DILexicalBlock(scope: !5005, file: !3, line: 99, column: 6)
!5044 = !DILocation(line: 99, column: 6, scope: !5005)
!5045 = !DILocation(line: 100, column: 3, scope: !5043)
!5046 = !DILocation(line: 104, column: 38, scope: !5005)
!5047 = !DILocation(line: 104, column: 43, scope: !5005)
!5048 = !DILocation(line: 104, column: 9, scope: !5005)
!5049 = !DILocation(line: 104, column: 6, scope: !5005)
!5050 = !DILocation(line: 105, column: 38, scope: !5005)
!5051 = !DILocation(line: 105, column: 43, scope: !5005)
!5052 = !DILocation(line: 105, column: 9, scope: !5005)
!5053 = !DILocation(line: 105, column: 6, scope: !5005)
!5054 = !DILocation(line: 106, column: 38, scope: !5005)
!5055 = !DILocation(line: 106, column: 43, scope: !5005)
!5056 = !DILocation(line: 106, column: 9, scope: !5005)
!5057 = !DILocation(line: 106, column: 6, scope: !5005)
!5058 = !DILocation(line: 107, column: 38, scope: !5005)
!5059 = !DILocation(line: 107, column: 43, scope: !5005)
!5060 = !DILocation(line: 108, column: 9, scope: !5005)
!5061 = !DILocation(line: 108, column: 14, scope: !5005)
!5062 = !DILocation(line: 107, column: 9, scope: !5005)
!5063 = !DILocation(line: 107, column: 6, scope: !5005)
!5064 = !DILocation(line: 109, column: 6, scope: !5065)
!5065 = distinct !DILexicalBlock(scope: !5005, file: !3, line: 109, column: 6)
!5066 = !DILocation(line: 109, column: 11, scope: !5065)
!5067 = !DILocation(line: 109, column: 20, scope: !5065)
!5068 = !DILocation(line: 109, column: 6, scope: !5005)
!5069 = !DILocation(line: 110, column: 40, scope: !5065)
!5070 = !DILocation(line: 110, column: 45, scope: !5065)
!5071 = !DILocation(line: 110, column: 10, scope: !5065)
!5072 = !DILocation(line: 110, column: 7, scope: !5065)
!5073 = !DILocation(line: 110, column: 3, scope: !5065)
!5074 = !DILocation(line: 112, column: 39, scope: !5065)
!5075 = !DILocation(line: 112, column: 44, scope: !5065)
!5076 = !DILocation(line: 112, column: 10, scope: !5065)
!5077 = !DILocation(line: 112, column: 7, scope: !5065)
!5078 = !DILocation(line: 114, column: 6, scope: !5079)
!5079 = distinct !DILexicalBlock(scope: !5005, file: !3, line: 114, column: 6)
!5080 = !DILocation(line: 114, column: 6, scope: !5005)
!5081 = !DILocation(line: 115, column: 3, scope: !5079)
!5082 = !DILocation(line: 121, column: 2, scope: !5005)
!5083 = !DILocation(line: 122, column: 1, scope: !5005)
!5084 = distinct !DISubprogram(name: "apci2032_int_cmd", scope: !3, file: !3, line: 124, type: !3940, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!5085 = !DILocalVariable(name: "lock", arg: 1, scope: !5086, file: !4318, line: 407, type: !1059)
!5086 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !4318, file: !4318, line: 407, type: !5087, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!5087 = !DISubroutineType(types: !5088)
!5088 = !{null, !1059, !149}
!5089 = !DILocation(line: 407, column: 64, scope: !5086, inlinedAt: !5090)
!5090 = distinct !DILocation(line: 143, column: 2, scope: !5084)
!5091 = !DILocalVariable(name: "flags", arg: 2, scope: !5086, file: !4318, line: 407, type: !149)
!5092 = !DILocation(line: 407, column: 84, scope: !5086, inlinedAt: !5090)
!5093 = !DILocation(line: 327, column: 67, scope: !4317, inlinedAt: !5094)
!5094 = distinct !DILocation(line: 137, column: 2, scope: !5095)
!5095 = distinct !DILexicalBlock(scope: !5096, file: !3, line: 137, column: 2)
!5096 = distinct !DILexicalBlock(scope: !5097, file: !3, line: 137, column: 2)
!5097 = distinct !DILexicalBlock(scope: !5098, file: !3, line: 137, column: 2)
!5098 = distinct !DILexicalBlock(scope: !5099, file: !3, line: 137, column: 2)
!5099 = distinct !DILexicalBlock(scope: !5084, file: !3, line: 137, column: 2)
!5100 = !DILocalVariable(name: "dev", arg: 1, scope: !5084, file: !3, line: 124, type: !197)
!5101 = !DILocation(line: 124, column: 51, scope: !5084)
!5102 = !DILocalVariable(name: "s", arg: 2, scope: !5084, file: !3, line: 125, type: !3826)
!5103 = !DILocation(line: 125, column: 33, scope: !5084)
!5104 = !DILocalVariable(name: "cmd", scope: !5084, file: !3, line: 127, type: !3946)
!5105 = !DILocation(line: 127, column: 21, scope: !5084)
!5106 = !DILocation(line: 127, column: 28, scope: !5084)
!5107 = !DILocation(line: 127, column: 31, scope: !5084)
!5108 = !DILocation(line: 127, column: 38, scope: !5084)
!5109 = !DILocalVariable(name: "subpriv", scope: !5084, file: !3, line: 128, type: !4444)
!5110 = !DILocation(line: 128, column: 31, scope: !5084)
!5111 = !DILocation(line: 128, column: 41, scope: !5084)
!5112 = !DILocation(line: 128, column: 44, scope: !5084)
!5113 = !DILocalVariable(name: "enabled_isns", scope: !5084, file: !3, line: 129, type: !422)
!5114 = !DILocation(line: 129, column: 16, scope: !5084)
!5115 = !DILocalVariable(name: "n", scope: !5084, file: !3, line: 130, type: !7)
!5116 = !DILocation(line: 130, column: 15, scope: !5084)
!5117 = !DILocalVariable(name: "flags", scope: !5084, file: !3, line: 131, type: !149)
!5118 = !DILocation(line: 131, column: 16, scope: !5084)
!5119 = !DILocation(line: 133, column: 15, scope: !5084)
!5120 = !DILocation(line: 134, column: 9, scope: !5121)
!5121 = distinct !DILexicalBlock(scope: !5084, file: !3, line: 134, column: 2)
!5122 = !DILocation(line: 134, column: 7, scope: !5121)
!5123 = !DILocation(line: 134, column: 14, scope: !5124)
!5124 = distinct !DILexicalBlock(scope: !5121, file: !3, line: 134, column: 2)
!5125 = !DILocation(line: 134, column: 18, scope: !5124)
!5126 = !DILocation(line: 134, column: 23, scope: !5124)
!5127 = !DILocation(line: 134, column: 16, scope: !5124)
!5128 = !DILocation(line: 134, column: 2, scope: !5121)
!5129 = !DILocation(line: 135, column: 24, scope: !5124)
!5130 = !DILocation(line: 135, column: 21, scope: !5124)
!5131 = !DILocation(line: 135, column: 16, scope: !5124)
!5132 = !DILocation(line: 135, column: 3, scope: !5124)
!5133 = !DILocation(line: 134, column: 38, scope: !5124)
!5134 = !DILocation(line: 134, column: 2, scope: !5124)
!5135 = distinct !{!5135, !5128, !5136}
!5136 = !DILocation(line: 135, column: 24, scope: !5121)
!5137 = !DILocation(line: 137, column: 2, scope: !5084)
!5138 = !DILocation(line: 137, column: 2, scope: !5099)
!5139 = !DILocalVariable(name: "__dummy", scope: !5140, file: !3, line: 137, type: !149)
!5140 = distinct !DILexicalBlock(scope: !5098, file: !3, line: 137, column: 2)
!5141 = !DILocation(line: 137, column: 2, scope: !5140)
!5142 = !DILocalVariable(name: "__dummy2", scope: !5140, file: !3, line: 137, type: !149)
!5143 = !DILocation(line: 137, column: 2, scope: !5098)
!5144 = !DILocation(line: 137, column: 2, scope: !5097)
!5145 = !DILocation(line: 137, column: 2, scope: !5146)
!5146 = distinct !DILexicalBlock(scope: !5097, file: !3, line: 137, column: 2)
!5147 = !DILocalVariable(name: "__dummy", scope: !5148, file: !3, line: 137, type: !149)
!5148 = distinct !DILexicalBlock(scope: !5149, file: !3, line: 137, column: 2)
!5149 = distinct !DILexicalBlock(scope: !5146, file: !3, line: 137, column: 2)
!5150 = !DILocation(line: 137, column: 2, scope: !5148)
!5151 = !DILocalVariable(name: "__dummy2", scope: !5148, file: !3, line: 137, type: !149)
!5152 = !DILocation(line: 137, column: 2, scope: !5149)
!5153 = !DILocation(line: 137, column: 2, scope: !5096)
!5154 = !{i32 -2141641000}
!5155 = !DILocation(line: 137, column: 2, scope: !5095)
!5156 = !DILocation(line: 329, column: 10, scope: !4317, inlinedAt: !5094)
!5157 = !DILocation(line: 329, column: 16, scope: !4317, inlinedAt: !5094)
!5158 = !DILocation(line: 139, column: 26, scope: !5084)
!5159 = !DILocation(line: 139, column: 2, scope: !5084)
!5160 = !DILocation(line: 139, column: 11, scope: !5084)
!5161 = !DILocation(line: 139, column: 24, scope: !5084)
!5162 = !DILocation(line: 140, column: 2, scope: !5084)
!5163 = !DILocation(line: 140, column: 11, scope: !5084)
!5164 = !DILocation(line: 140, column: 18, scope: !5084)
!5165 = !DILocation(line: 141, column: 7, scope: !5084)
!5166 = !DILocation(line: 141, column: 21, scope: !5084)
!5167 = !DILocation(line: 141, column: 26, scope: !5084)
!5168 = !DILocation(line: 141, column: 33, scope: !5084)
!5169 = !DILocation(line: 141, column: 2, scope: !5084)
!5170 = !DILocation(line: 143, column: 26, scope: !5084)
!5171 = !DILocation(line: 143, column: 35, scope: !5084)
!5172 = !DILocation(line: 143, column: 45, scope: !5084)
!5173 = !DILocalVariable(name: "__dummy", scope: !5174, file: !4318, line: 409, type: !149)
!5174 = distinct !DILexicalBlock(scope: !5175, file: !4318, line: 409, column: 2)
!5175 = distinct !DILexicalBlock(scope: !5086, file: !4318, line: 409, column: 2)
!5176 = !DILocation(line: 409, column: 2, scope: !5174, inlinedAt: !5090)
!5177 = !DILocalVariable(name: "__dummy2", scope: !5174, file: !4318, line: 409, type: !149)
!5178 = !DILocalVariable(name: "__dummy", scope: !5179, file: !4318, line: 409, type: !149)
!5179 = distinct !DILexicalBlock(scope: !5180, file: !4318, line: 409, column: 2)
!5180 = distinct !DILexicalBlock(scope: !5181, file: !4318, line: 409, column: 2)
!5181 = distinct !DILexicalBlock(scope: !5182, file: !4318, line: 409, column: 2)
!5182 = distinct !DILexicalBlock(scope: !5175, file: !4318, line: 409, column: 2)
!5183 = !DILocation(line: 409, column: 2, scope: !5179, inlinedAt: !5090)
!5184 = !DILocalVariable(name: "__dummy2", scope: !5179, file: !4318, line: 409, type: !149)
!5185 = !DILocation(line: 409, column: 2, scope: !5180, inlinedAt: !5090)
!5186 = !DILocation(line: 409, column: 2, scope: !5187, inlinedAt: !5090)
!5187 = distinct !DILexicalBlock(scope: !5182, file: !4318, line: 409, column: 2)
!5188 = !{i32 -2145469276}
!5189 = !DILocation(line: 409, column: 2, scope: !5190, inlinedAt: !5090)
!5190 = distinct !DILexicalBlock(scope: !5187, file: !4318, line: 409, column: 2)
!5191 = !DILocation(line: 145, column: 2, scope: !5084)
!5192 = distinct !DISubprogram(name: "apci2032_int_cancel", scope: !3, file: !3, line: 148, type: !3940, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!5193 = !DILocation(line: 407, column: 64, scope: !5086, inlinedAt: !5194)
!5194 = distinct !DILocation(line: 157, column: 2, scope: !5192)
!5195 = !DILocation(line: 407, column: 84, scope: !5086, inlinedAt: !5194)
!5196 = !DILocation(line: 327, column: 67, scope: !4317, inlinedAt: !5197)
!5197 = distinct !DILocation(line: 154, column: 2, scope: !5198)
!5198 = distinct !DILexicalBlock(scope: !5199, file: !3, line: 154, column: 2)
!5199 = distinct !DILexicalBlock(scope: !5200, file: !3, line: 154, column: 2)
!5200 = distinct !DILexicalBlock(scope: !5201, file: !3, line: 154, column: 2)
!5201 = distinct !DILexicalBlock(scope: !5202, file: !3, line: 154, column: 2)
!5202 = distinct !DILexicalBlock(scope: !5192, file: !3, line: 154, column: 2)
!5203 = !DILocalVariable(name: "dev", arg: 1, scope: !5192, file: !3, line: 148, type: !197)
!5204 = !DILocation(line: 148, column: 54, scope: !5192)
!5205 = !DILocalVariable(name: "s", arg: 2, scope: !5192, file: !3, line: 149, type: !3826)
!5206 = !DILocation(line: 149, column: 36, scope: !5192)
!5207 = !DILocalVariable(name: "subpriv", scope: !5192, file: !3, line: 151, type: !4444)
!5208 = !DILocation(line: 151, column: 31, scope: !5192)
!5209 = !DILocation(line: 151, column: 41, scope: !5192)
!5210 = !DILocation(line: 151, column: 44, scope: !5192)
!5211 = !DILocalVariable(name: "flags", scope: !5192, file: !3, line: 152, type: !149)
!5212 = !DILocation(line: 152, column: 16, scope: !5192)
!5213 = !DILocation(line: 154, column: 2, scope: !5192)
!5214 = !DILocation(line: 154, column: 2, scope: !5202)
!5215 = !DILocalVariable(name: "__dummy", scope: !5216, file: !3, line: 154, type: !149)
!5216 = distinct !DILexicalBlock(scope: !5201, file: !3, line: 154, column: 2)
!5217 = !DILocation(line: 154, column: 2, scope: !5216)
!5218 = !DILocalVariable(name: "__dummy2", scope: !5216, file: !3, line: 154, type: !149)
!5219 = !DILocation(line: 154, column: 2, scope: !5201)
!5220 = !DILocation(line: 154, column: 2, scope: !5200)
!5221 = !DILocation(line: 154, column: 2, scope: !5222)
!5222 = distinct !DILexicalBlock(scope: !5200, file: !3, line: 154, column: 2)
!5223 = !DILocalVariable(name: "__dummy", scope: !5224, file: !3, line: 154, type: !149)
!5224 = distinct !DILexicalBlock(scope: !5225, file: !3, line: 154, column: 2)
!5225 = distinct !DILexicalBlock(scope: !5222, file: !3, line: 154, column: 2)
!5226 = !DILocation(line: 154, column: 2, scope: !5224)
!5227 = !DILocalVariable(name: "__dummy2", scope: !5224, file: !3, line: 154, type: !149)
!5228 = !DILocation(line: 154, column: 2, scope: !5225)
!5229 = !DILocation(line: 154, column: 2, scope: !5199)
!5230 = !{i32 -2141639922}
!5231 = !DILocation(line: 154, column: 2, scope: !5198)
!5232 = !DILocation(line: 329, column: 10, scope: !4317, inlinedAt: !5197)
!5233 = !DILocation(line: 329, column: 16, scope: !4317, inlinedAt: !5197)
!5234 = !DILocation(line: 155, column: 6, scope: !5235)
!5235 = distinct !DILexicalBlock(scope: !5192, file: !3, line: 155, column: 6)
!5236 = !DILocation(line: 155, column: 15, scope: !5235)
!5237 = !DILocation(line: 155, column: 6, scope: !5192)
!5238 = !DILocation(line: 156, column: 21, scope: !5235)
!5239 = !DILocation(line: 156, column: 26, scope: !5235)
!5240 = !DILocation(line: 156, column: 3, scope: !5235)
!5241 = !DILocation(line: 157, column: 26, scope: !5192)
!5242 = !DILocation(line: 157, column: 35, scope: !5192)
!5243 = !DILocation(line: 157, column: 45, scope: !5192)
!5244 = !DILocation(line: 409, column: 2, scope: !5174, inlinedAt: !5194)
!5245 = !DILocation(line: 409, column: 2, scope: !5179, inlinedAt: !5194)
!5246 = !DILocation(line: 409, column: 2, scope: !5180, inlinedAt: !5194)
!5247 = !DILocation(line: 409, column: 2, scope: !5187, inlinedAt: !5194)
!5248 = !DILocation(line: 409, column: 2, scope: !5190, inlinedAt: !5194)
!5249 = !DILocation(line: 159, column: 2, scope: !5192)
!5250 = distinct !DISubprogram(name: "inl", scope: !4504, file: !4504, line: 336, type: !5251, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!5251 = !DISubroutineType(types: !5252)
!5252 = !{!7, !196}
!5253 = !DILocalVariable(name: "port", arg: 1, scope: !5250, file: !4504, line: 336, type: !196)
!5254 = !DILocation(line: 336, column: 1, scope: !5250)
!5255 = !DILocalVariable(name: "value", scope: !5250, file: !4504, line: 336, type: !7)
!5256 = !{i32 -2143319392}
!5257 = distinct !DISubprogram(name: "get_order", scope: !5258, file: !5258, line: 29, type: !5259, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!5258 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5259 = !DISubroutineType(types: !5260)
!5260 = !{!196, !149}
!5261 = !DILocalVariable(name: "x", arg: 1, scope: !5262, file: !5263, line: 366, type: !417)
!5262 = distinct !DISubprogram(name: "fls64", scope: !5263, file: !5263, line: 366, type: !5264, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!5263 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5264 = !DISubroutineType(types: !5265)
!5265 = !{!196, !417}
!5266 = !DILocation(line: 366, column: 40, scope: !5262, inlinedAt: !5267)
!5267 = distinct !DILocation(line: 46, column: 9, scope: !5257)
!5268 = !DILocalVariable(name: "bitpos", scope: !5262, file: !5263, line: 368, type: !196)
!5269 = !DILocation(line: 368, column: 6, scope: !5262, inlinedAt: !5267)
!5270 = !DILocalVariable(name: "size", arg: 1, scope: !5257, file: !5258, line: 29, type: !149)
!5271 = !DILocation(line: 29, column: 63, scope: !5257)
!5272 = !DILocation(line: 31, column: 27, scope: !5273)
!5273 = distinct !DILexicalBlock(scope: !5257, file: !5258, line: 31, column: 6)
!5274 = !DILocation(line: 31, column: 6, scope: !5273)
!5275 = !DILocation(line: 31, column: 6, scope: !5257)
!5276 = !DILocation(line: 32, column: 8, scope: !5277)
!5277 = distinct !DILexicalBlock(scope: !5278, file: !5258, line: 32, column: 7)
!5278 = distinct !DILexicalBlock(scope: !5273, file: !5258, line: 31, column: 34)
!5279 = !DILocation(line: 32, column: 7, scope: !5278)
!5280 = !DILocation(line: 33, column: 4, scope: !5277)
!5281 = !DILocation(line: 35, column: 7, scope: !5282)
!5282 = distinct !DILexicalBlock(scope: !5278, file: !5258, line: 35, column: 7)
!5283 = !DILocation(line: 35, column: 12, scope: !5282)
!5284 = !DILocation(line: 35, column: 7, scope: !5278)
!5285 = !DILocation(line: 36, column: 4, scope: !5282)
!5286 = !DILocation(line: 38, column: 10, scope: !5278)
!5287 = !DILocation(line: 38, column: 28, scope: !5278)
!5288 = !DILocation(line: 38, column: 41, scope: !5278)
!5289 = !DILocation(line: 38, column: 3, scope: !5278)
!5290 = !DILocation(line: 41, column: 6, scope: !5257)
!5291 = !DILocation(line: 42, column: 7, scope: !5257)
!5292 = !DILocation(line: 46, column: 15, scope: !5257)
!5293 = !DILocation(line: 374, column: 2, scope: !5262, inlinedAt: !5267)
!5294 = !DILocation(line: 376, column: 14, scope: !5262, inlinedAt: !5267)
!5295 = !{i32 305114}
!5296 = !DILocation(line: 377, column: 9, scope: !5262, inlinedAt: !5267)
!5297 = !DILocation(line: 377, column: 16, scope: !5262, inlinedAt: !5267)
!5298 = !DILocation(line: 46, column: 2, scope: !5257)
!5299 = !DILocation(line: 48, column: 1, scope: !5257)
!5300 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5301, file: !5301, line: 30, type: !5302, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!5301 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5302 = !DISubroutineType(types: !5303)
!5303 = !{!196, !416}
!5304 = !DILocation(line: 366, column: 40, scope: !5262, inlinedAt: !5305)
!5305 = distinct !DILocation(line: 32, column: 9, scope: !5300)
!5306 = !DILocation(line: 368, column: 6, scope: !5262, inlinedAt: !5305)
!5307 = !DILocalVariable(name: "n", arg: 1, scope: !5300, file: !5301, line: 30, type: !416)
!5308 = !DILocation(line: 30, column: 21, scope: !5300)
!5309 = !DILocation(line: 32, column: 15, scope: !5300)
!5310 = !DILocation(line: 374, column: 2, scope: !5262, inlinedAt: !5305)
!5311 = !DILocation(line: 376, column: 14, scope: !5262, inlinedAt: !5305)
!5312 = !DILocation(line: 377, column: 9, scope: !5262, inlinedAt: !5305)
!5313 = !DILocation(line: 377, column: 16, scope: !5262, inlinedAt: !5305)
!5314 = !DILocation(line: 32, column: 18, scope: !5300)
!5315 = !DILocation(line: 32, column: 2, scope: !5300)
!5316 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5317, file: !5317, line: 137, type: !5318, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!5317 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5318 = !DISubroutineType(types: !5319)
!5319 = !{!148, !930, !2122, !317, !146}
!5320 = !DILocalVariable(name: "s", arg: 1, scope: !5316, file: !5317, line: 137, type: !930)
!5321 = !DILocation(line: 137, column: 54, scope: !5316)
!5322 = !DILocalVariable(name: "object", arg: 2, scope: !5316, file: !5317, line: 137, type: !2122)
!5323 = !DILocation(line: 137, column: 69, scope: !5316)
!5324 = !DILocalVariable(name: "size", arg: 3, scope: !5316, file: !5317, line: 138, type: !317)
!5325 = !DILocation(line: 138, column: 12, scope: !5316)
!5326 = !DILocalVariable(name: "flags", arg: 4, scope: !5316, file: !5317, line: 138, type: !146)
!5327 = !DILocation(line: 138, column: 24, scope: !5316)
!5328 = !DILocation(line: 140, column: 17, scope: !5316)
!5329 = !DILocation(line: 140, column: 2, scope: !5316)
!5330 = distinct !DISubprogram(name: "comedi_check_trigger_src", scope: !123, file: !123, line: 859, type: !5331, scopeLine: 861, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!5331 = !DISubroutineType(types: !5332)
!5332 = !{!196, !2678, !7}
!5333 = !DILocalVariable(name: "src", arg: 1, scope: !5330, file: !123, line: 859, type: !2678)
!5334 = !DILocation(line: 859, column: 58, scope: !5330)
!5335 = !DILocalVariable(name: "flags", arg: 2, scope: !5330, file: !123, line: 860, type: !7)
!5336 = !DILocation(line: 860, column: 22, scope: !5330)
!5337 = !DILocalVariable(name: "orig_src", scope: !5330, file: !123, line: 862, type: !7)
!5338 = !DILocation(line: 862, column: 15, scope: !5330)
!5339 = !DILocation(line: 862, column: 27, scope: !5330)
!5340 = !DILocation(line: 862, column: 26, scope: !5330)
!5341 = !DILocation(line: 864, column: 9, scope: !5330)
!5342 = !DILocation(line: 864, column: 20, scope: !5330)
!5343 = !DILocation(line: 864, column: 18, scope: !5330)
!5344 = !DILocation(line: 864, column: 3, scope: !5330)
!5345 = !DILocation(line: 864, column: 7, scope: !5330)
!5346 = !DILocation(line: 865, column: 7, scope: !5347)
!5347 = distinct !DILexicalBlock(scope: !5330, file: !123, line: 865, column: 6)
!5348 = !DILocation(line: 865, column: 6, scope: !5347)
!5349 = !DILocation(line: 865, column: 11, scope: !5347)
!5350 = !DILocation(line: 865, column: 27, scope: !5347)
!5351 = !DILocation(line: 865, column: 31, scope: !5347)
!5352 = !DILocation(line: 865, column: 30, scope: !5347)
!5353 = !DILocation(line: 865, column: 38, scope: !5347)
!5354 = !DILocation(line: 865, column: 35, scope: !5347)
!5355 = !DILocation(line: 865, column: 6, scope: !5330)
!5356 = !DILocation(line: 866, column: 3, scope: !5347)
!5357 = !DILocation(line: 867, column: 2, scope: !5330)
!5358 = !DILocation(line: 868, column: 1, scope: !5330)
!5359 = distinct !DISubprogram(name: "comedi_check_trigger_is_unique", scope: !123, file: !123, line: 878, type: !5360, scopeLine: 879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!5360 = !DISubroutineType(types: !5361)
!5361 = !{!196, !7}
!5362 = !DILocalVariable(name: "src", arg: 1, scope: !5359, file: !123, line: 878, type: !7)
!5363 = !DILocation(line: 878, column: 63, scope: !5359)
!5364 = !DILocation(line: 881, column: 7, scope: !5365)
!5365 = distinct !DILexicalBlock(scope: !5359, file: !123, line: 881, column: 6)
!5366 = !DILocation(line: 881, column: 14, scope: !5365)
!5367 = !DILocation(line: 881, column: 18, scope: !5365)
!5368 = !DILocation(line: 881, column: 11, scope: !5365)
!5369 = !DILocation(line: 881, column: 24, scope: !5365)
!5370 = !DILocation(line: 881, column: 6, scope: !5359)
!5371 = !DILocation(line: 882, column: 3, scope: !5365)
!5372 = !DILocation(line: 883, column: 2, scope: !5359)
!5373 = !DILocation(line: 884, column: 1, scope: !5359)
!5374 = distinct !DISubprogram(name: "comedi_check_trigger_arg_is", scope: !123, file: !123, line: 897, type: !5331, scopeLine: 899, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!5375 = !DILocalVariable(name: "arg", arg: 1, scope: !5374, file: !123, line: 897, type: !2678)
!5376 = !DILocation(line: 897, column: 61, scope: !5374)
!5377 = !DILocalVariable(name: "val", arg: 2, scope: !5374, file: !123, line: 898, type: !7)
!5378 = !DILocation(line: 898, column: 25, scope: !5374)
!5379 = !DILocation(line: 900, column: 7, scope: !5380)
!5380 = distinct !DILexicalBlock(scope: !5374, file: !123, line: 900, column: 6)
!5381 = !DILocation(line: 900, column: 6, scope: !5380)
!5382 = !DILocation(line: 900, column: 14, scope: !5380)
!5383 = !DILocation(line: 900, column: 11, scope: !5380)
!5384 = !DILocation(line: 900, column: 6, scope: !5374)
!5385 = !DILocation(line: 901, column: 10, scope: !5386)
!5386 = distinct !DILexicalBlock(scope: !5380, file: !123, line: 900, column: 19)
!5387 = !DILocation(line: 901, column: 4, scope: !5386)
!5388 = !DILocation(line: 901, column: 8, scope: !5386)
!5389 = !DILocation(line: 902, column: 3, scope: !5386)
!5390 = !DILocation(line: 904, column: 2, scope: !5374)
!5391 = !DILocation(line: 905, column: 1, scope: !5374)
!5392 = distinct !DISubprogram(name: "comedi_check_trigger_arg_min", scope: !123, file: !123, line: 918, type: !5331, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!5393 = !DILocalVariable(name: "arg", arg: 1, scope: !5392, file: !123, line: 918, type: !2678)
!5394 = !DILocation(line: 918, column: 62, scope: !5392)
!5395 = !DILocalVariable(name: "val", arg: 2, scope: !5392, file: !123, line: 919, type: !7)
!5396 = !DILocation(line: 919, column: 26, scope: !5392)
!5397 = !DILocation(line: 921, column: 7, scope: !5398)
!5398 = distinct !DILexicalBlock(scope: !5392, file: !123, line: 921, column: 6)
!5399 = !DILocation(line: 921, column: 6, scope: !5398)
!5400 = !DILocation(line: 921, column: 13, scope: !5398)
!5401 = !DILocation(line: 921, column: 11, scope: !5398)
!5402 = !DILocation(line: 921, column: 6, scope: !5392)
!5403 = !DILocation(line: 922, column: 10, scope: !5404)
!5404 = distinct !DILexicalBlock(scope: !5398, file: !123, line: 921, column: 18)
!5405 = !DILocation(line: 922, column: 4, scope: !5404)
!5406 = !DILocation(line: 922, column: 8, scope: !5404)
!5407 = !DILocation(line: 923, column: 3, scope: !5404)
!5408 = !DILocation(line: 925, column: 2, scope: !5392)
!5409 = !DILocation(line: 926, column: 1, scope: !5392)
!5410 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !5411, file: !5411, line: 666, type: !5412, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!5411 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!5412 = !DISubroutineType(types: !5413)
!5413 = !{!149}
!5414 = !DILocalVariable(name: "f", scope: !5410, file: !5411, line: 668, type: !149)
!5415 = !DILocation(line: 668, column: 16, scope: !5410)
!5416 = !DILocation(line: 670, column: 6, scope: !5410)
!5417 = !DILocation(line: 670, column: 4, scope: !5410)
!5418 = !DILocation(line: 671, column: 2, scope: !5410)
!5419 = !DILocation(line: 672, column: 9, scope: !5410)
!5420 = !DILocation(line: 672, column: 2, scope: !5410)
!5421 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !5411, file: !5411, line: 646, type: !5412, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!5422 = !DILocalVariable(name: "__ret", scope: !5423, file: !5411, line: 648, type: !149)
!5423 = distinct !DILexicalBlock(scope: !5421, file: !5411, line: 648, column: 9)
!5424 = !DILocation(line: 648, column: 9, scope: !5423)
!5425 = !DILocalVariable(name: "__edi", scope: !5423, file: !5411, line: 648, type: !149)
!5426 = !DILocalVariable(name: "__esi", scope: !5423, file: !5411, line: 648, type: !149)
!5427 = !DILocalVariable(name: "__edx", scope: !5423, file: !5411, line: 648, type: !149)
!5428 = !DILocalVariable(name: "__ecx", scope: !5423, file: !5411, line: 648, type: !149)
!5429 = !DILocalVariable(name: "__eax", scope: !5423, file: !5411, line: 648, type: !149)
!5430 = !DILocation(line: 648, column: 9, scope: !5431)
!5431 = distinct !DILexicalBlock(scope: !5432, file: !5411, line: 648, column: 9)
!5432 = distinct !DILexicalBlock(scope: !5423, file: !5411, line: 648, column: 9)
!5433 = !{i32 -2145782845, i32 -2145780530, i32 -2145780296, i32 -2145780245, i32 -2145780217, i32 -2145780192, i32 -2145780508, i32 -2145780495, i32 -2145780057, i32 -2145779938, i32 -2145780403, i32 -2145780376, i32 -2145780348, i32 -2145780318}
!5434 = !DILocalVariable(name: "__mask", scope: !5435, file: !5411, line: 648, type: !149)
!5435 = distinct !DILexicalBlock(scope: !5431, file: !5411, line: 648, column: 9)
!5436 = !DILocation(line: 648, column: 9, scope: !5435)
!5437 = !DILocation(line: 648, column: 9, scope: !5432)
!5438 = !DILocation(line: 648, column: 2, scope: !5421)
!5439 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !5411, file: !5411, line: 656, type: !156, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!5440 = !DILocalVariable(name: "__edi", scope: !5441, file: !5411, line: 658, type: !149)
!5441 = distinct !DILexicalBlock(scope: !5439, file: !5411, line: 658, column: 2)
!5442 = !DILocation(line: 658, column: 2, scope: !5441)
!5443 = !DILocalVariable(name: "__esi", scope: !5441, file: !5411, line: 658, type: !149)
!5444 = !DILocalVariable(name: "__edx", scope: !5441, file: !5411, line: 658, type: !149)
!5445 = !DILocalVariable(name: "__ecx", scope: !5441, file: !5411, line: 658, type: !149)
!5446 = !DILocalVariable(name: "__eax", scope: !5441, file: !5411, line: 658, type: !149)
!5447 = !{i32 -2145775751, i32 -2145775019, i32 -2145774785, i32 -2145774734, i32 -2145774706, i32 -2145774681, i32 -2145774997, i32 -2145774984, i32 -2145774546, i32 -2145774427, i32 -2145774892, i32 -2145774865, i32 -2145774837, i32 -2145774807}
!5448 = !DILocation(line: 659, column: 1, scope: !5439)
!5449 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !5411, file: !5411, line: 651, type: !5450, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!5450 = !DISubroutineType(types: !5451)
!5451 = !{null, !149}
!5452 = !DILocalVariable(name: "f", arg: 1, scope: !5449, file: !5411, line: 651, type: !149)
!5453 = !DILocation(line: 651, column: 65, scope: !5449)
!5454 = !DILocalVariable(name: "__edi", scope: !5455, file: !5411, line: 653, type: !149)
!5455 = distinct !DILexicalBlock(scope: !5449, file: !5411, line: 653, column: 2)
!5456 = !DILocation(line: 653, column: 2, scope: !5455)
!5457 = !DILocalVariable(name: "__esi", scope: !5455, file: !5411, line: 653, type: !149)
!5458 = !DILocalVariable(name: "__edx", scope: !5455, file: !5411, line: 653, type: !149)
!5459 = !DILocalVariable(name: "__ecx", scope: !5455, file: !5411, line: 653, type: !149)
!5460 = !DILocalVariable(name: "__eax", scope: !5455, file: !5411, line: 653, type: !149)
!5461 = !{i32 -2145778378, i32 -2145777628, i32 -2145777394, i32 -2145777343, i32 -2145777315, i32 -2145777290, i32 -2145777606, i32 -2145777593, i32 -2145777155, i32 -2145777036, i32 -2145777501, i32 -2145777474, i32 -2145777446, i32 -2145777416}
!5462 = !DILocation(line: 654, column: 1, scope: !5449)
!5463 = distinct !DISubprogram(name: "apci2032_int_stop", scope: !3, file: !3, line: 67, type: !5464, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!5464 = !DISubroutineType(types: !5465)
!5465 = !{null, !197, !3826}
!5466 = !DILocalVariable(name: "dev", arg: 1, scope: !5463, file: !3, line: 67, type: !197)
!5467 = !DILocation(line: 67, column: 53, scope: !5463)
!5468 = !DILocalVariable(name: "s", arg: 2, scope: !5463, file: !3, line: 68, type: !3826)
!5469 = !DILocation(line: 68, column: 35, scope: !5463)
!5470 = !DILocalVariable(name: "subpriv", scope: !5463, file: !3, line: 70, type: !4444)
!5471 = !DILocation(line: 70, column: 31, scope: !5463)
!5472 = !DILocation(line: 70, column: 41, scope: !5463)
!5473 = !DILocation(line: 70, column: 44, scope: !5463)
!5474 = !DILocation(line: 72, column: 2, scope: !5463)
!5475 = !DILocation(line: 72, column: 11, scope: !5463)
!5476 = !DILocation(line: 72, column: 18, scope: !5463)
!5477 = !DILocation(line: 73, column: 2, scope: !5463)
!5478 = !DILocation(line: 73, column: 11, scope: !5463)
!5479 = !DILocation(line: 73, column: 24, scope: !5463)
!5480 = !DILocation(line: 74, column: 12, scope: !5463)
!5481 = !DILocation(line: 74, column: 17, scope: !5463)
!5482 = !DILocation(line: 74, column: 24, scope: !5463)
!5483 = !DILocation(line: 74, column: 2, scope: !5463)
!5484 = !DILocation(line: 75, column: 1, scope: !5463)
!5485 = distinct !DISubprogram(name: "apci2032_pci_probe", scope: !3, file: !3, line: 308, type: !4020, scopeLine: 310, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!5486 = !DILocalVariable(name: "dev", arg: 1, scope: !5485, file: !3, line: 308, type: !4022)
!5487 = !DILocation(line: 308, column: 47, scope: !5485)
!5488 = !DILocalVariable(name: "id", arg: 2, scope: !5485, file: !3, line: 309, type: !4007)
!5489 = !DILocation(line: 309, column: 38, scope: !5485)
!5490 = !DILocation(line: 311, column: 32, scope: !5485)
!5491 = !DILocation(line: 311, column: 55, scope: !5485)
!5492 = !DILocation(line: 311, column: 59, scope: !5485)
!5493 = !DILocation(line: 311, column: 9, scope: !5485)
!5494 = !DILocation(line: 311, column: 2, scope: !5485)
